define i64 @f_gold(ptr nocapture readonly %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n) local_unnamed_addr #4 !dbg !3025 {
entry:
    #dbg_value(ptr %arr.data, !3034, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3038)
    #dbg_value(i64 %arr.len, !3034, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3038)
    #dbg_value(i64 %arr.cap, !3034, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3038)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3038)
    #dbg_value(i64 0, !3036, !DIExpression(), !3039)
    #dbg_value(i64 0, !3037, !DIExpression(), !3040)
  %0 = add i64 %n, -1
  %1 = icmp sgt i64 %0, 0, !dbg !3041
  br i1 %1, label %for.body.preheader, label %for.done, !dbg !3042

for.body.preheader:                               ; preds = %entry
  %2 = add i64 %n, -2, !dbg !3043
  %.not9.not = icmp ugt i64 %arr.len, %2, !dbg !3043
  br i1 %.not9.not, label %for.body, label %lookup.throw, !dbg !3043

for.body:                                         ; preds = %for.body.preheader, %for.body
  %3 = phi i64 [ %5, %for.body ], [ 0, %for.body.preheader ]
  %4 = phi i64 [ %9, %for.body ], [ 0, %for.body.preheader ]
    #dbg_value(i64 %4, !3036, !DIExpression(), !3044)
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3045)
    #dbg_value(i64 %3, !3037, !DIExpression(), !3046)
  %5 = add nuw nsw i64 %3, 1, !dbg !3047
  %6 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %3, !dbg !3043
  %7 = load i64, ptr %6, align 8, !dbg !3043
  %8 = xor i64 %4, %7, !dbg !3048
  %9 = xor i64 %8, %5, !dbg !3048
    #dbg_value(i64 %9, !3036, !DIExpression(), !3049)
    #dbg_value(i64 %5, !3037, !DIExpression(), !3050)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3051)
  %exitcond.not = icmp eq i64 %5, %0, !dbg !3041
  br i1 %exitcond.not, label %for.done, label %for.body, !dbg !3042

for.done:                                         ; preds = %for.body, %entry
  %.lcssa6 = phi i64 [ 0, %entry ], [ %9, %for.body ], !dbg !3039
    #dbg_value(i64 %.lcssa6, !3036, !DIExpression(), !3052)
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3053)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3054)
  %.not = icmp ult i64 %0, %arr.len, !dbg !3055
  br i1 %.not, label %lookup.next4, label %lookup.throw3, !dbg !3055

lookup.next4:                                     ; preds = %for.done
  %10 = getelementptr inbounds i64, ptr %arr.data, i64 %0, !dbg !3055
  %11 = load i64, ptr %10, align 8, !dbg !3055
  %12 = xor i64 %11, %.lcssa6, !dbg !3056
    #dbg_value(i64 %12, !3036, !DIExpression(), !3057)
  ret i64 %12, !dbg !3058

lookup.throw:                                     ; preds = %for.body.preheader
  tail call fastcc void @runtime.lookupPanic(), !dbg !3043
  unreachable, !dbg !3043

lookup.throw3:                                    ; preds = %for.done
  tail call fastcc void @runtime.lookupPanic(), !dbg !3055
  unreachable, !dbg !3055
}
