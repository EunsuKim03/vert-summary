define i64 @f_gold(ptr nocapture readonly %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n, i64 %idx) local_unnamed_addr #4 !dbg !3025 {
entry:
    #dbg_value(ptr %arr.data, !3034, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3039)
    #dbg_value(i64 %arr.len, !3034, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3039)
    #dbg_value(i64 %arr.cap, !3034, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3039)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3039)
    #dbg_value(i64 %idx, !3036, !DIExpression(), !3039)
    #dbg_value(i64 0, !3037, !DIExpression(), !3040)
    #dbg_value(i64 0, !3038, !DIExpression(), !3041)
  %0 = icmp sgt i64 %n, 0, !dbg !3042
  br i1 %0, label %for.body.lr.ph, label %for.done, !dbg !3043

for.body.lr.ph:                                   ; preds = %entry
  %.not1 = icmp ult i64 %idx, %arr.len
  %1 = getelementptr inbounds i64, ptr %arr.data, i64 %idx
  br label %for.body, !dbg !3043

for.body:                                         ; preds = %for.body.lr.ph, %lookup.next6
  %2 = phi i64 [ 0, %for.body.lr.ph ], [ %13, %lookup.next6 ]
  %3 = phi i64 [ 0, %for.body.lr.ph ], [ %12, %lookup.next6 ]
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3044)
    #dbg_value(i64 %2, !3038, !DIExpression(), !3045)
  %exitcond.not = icmp eq i64 %2, %arr.len, !dbg !3046
  br i1 %exitcond.not, label %lookup.throw, label %lookup.next, !dbg !3046

lookup.next:                                      ; preds = %for.body
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3047)
    #dbg_value(i64 %idx, !3036, !DIExpression(), !3048)
  br i1 %.not1, label %lookup.next6, label %lookup.throw5, !dbg !3049

lookup.next6:                                     ; preds = %lookup.next
  %4 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %2, !dbg !3046
  %5 = load i64, ptr %4, align 8, !dbg !3046
  %6 = load i64, ptr %1, align 8, !dbg !3049
  %7 = icmp slt i64 %5, %6, !dbg !3050
  %8 = zext i1 %7 to i64, !dbg !3043
  %spec.select = add i64 %3, %8, !dbg !3043
    #dbg_value(i64 %2, !3038, !DIExpression(), !3051)
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3052)
    #dbg_value(i64 %idx, !3036, !DIExpression(), !3053)
  %9 = icmp eq i64 %5, %6, !dbg !3054
  %10 = icmp slt i64 %2, %idx
  %or.cond = select i1 %9, i1 %10, i1 false, !dbg !3043
  %11 = zext i1 %or.cond to i64, !dbg !3043
  %12 = add i64 %spec.select, %11, !dbg !3043
  %13 = add nuw nsw i64 %2, 1, !dbg !3055
    #dbg_value(i64 %13, !3038, !DIExpression(), !3056)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3057)
  %exitcond7.not = icmp eq i64 %13, %n, !dbg !3042
  br i1 %exitcond7.not, label %for.done, label %for.body, !dbg !3043

for.done:                                         ; preds = %lookup.next6, %entry
  %.lcssa = phi i64 [ 0, %entry ], [ %12, %lookup.next6 ], !dbg !3040
    #dbg_value(i64 %.lcssa, !3037, !DIExpression(), !3058)
  ret i64 %.lcssa, !dbg !3059

lookup.throw:                                     ; preds = %for.body
  tail call fastcc void @runtime.lookupPanic(), !dbg !3046
  unreachable, !dbg !3046

lookup.throw5:                                    ; preds = %lookup.next
  tail call fastcc void @runtime.lookupPanic(), !dbg !3049
  unreachable, !dbg !3049
}
