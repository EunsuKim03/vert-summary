define noundef i1 @f_gold(ptr nocapture readonly %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n) local_unnamed_addr #4 !dbg !3025 {
entry:
    #dbg_value(ptr %arr.data, !3034, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3037)
    #dbg_value(i64 %arr.len, !3034, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3037)
    #dbg_value(i64 %arr.cap, !3034, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3037)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3037)
    #dbg_value(i64 0, !3036, !DIExpression(), !3038)
  %0 = add i64 %n, -2
  %.not15 = icmp slt i64 %0, -1, !dbg !3039
  br i1 %.not15, label %common.ret, label %for.body.preheader, !dbg !3040

for.body.preheader:                               ; preds = %entry
  %1 = sdiv i64 %0, 2
  br label %for.body, !dbg !3041

for.body:                                         ; preds = %for.body.preheader, %if.done2
  %2 = phi i64 [ %15, %if.done2 ], [ 0, %for.body.preheader ]
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3042)
    #dbg_value(i64 %2, !3036, !DIExpression(), !3043)
  %3 = shl nuw i64 %2, 1, !dbg !3044
  %4 = or disjoint i64 %3, 1, !dbg !3045
  %.not3 = icmp ult i64 %4, %arr.len, !dbg !3041
  br i1 %.not3, label %lookup.next, label %lookup.throw, !dbg !3041

lookup.next:                                      ; preds = %for.body
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3046)
    #dbg_value(i64 %2, !3036, !DIExpression(), !3047)
  %5 = getelementptr inbounds i64, ptr %arr.data, i64 %4, !dbg !3041
  %6 = load i64, ptr %5, align 8, !dbg !3041
  %7 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %2, !dbg !3048
  %8 = load i64, ptr %7, align 8, !dbg !3048
  %9 = icmp sgt i64 %6, %8, !dbg !3049
  br i1 %9, label %common.ret, label %if.done, !dbg !3040

common.ret:                                       ; preds = %lookup.next, %lookup.next14, %if.done2, %entry
  %.not.lcssa = phi i1 [ true, %entry ], [ true, %if.done2 ], [ false, %lookup.next14 ], [ false, %lookup.next ], !dbg !3039
  ret i1 %.not.lcssa, !dbg !3040

if.done:                                          ; preds = %lookup.next
    #dbg_value(i64 %2, !3036, !DIExpression(), !3050)
  %10 = add nuw i64 %3, 2, !dbg !3051
    #dbg_value(i64 %n, !3035, !DIExpression(), !3052)
  %11 = icmp slt i64 %10, %n, !dbg !3053
  br i1 %11, label %cond.true, label %if.done2, !dbg !3040

cond.true:                                        ; preds = %if.done
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3054)
    #dbg_value(i64 %2, !3036, !DIExpression(), !3055)
  %.not5 = icmp ult i64 %10, %arr.len, !dbg !3056
  br i1 %.not5, label %lookup.next14, label %lookup.throw9, !dbg !3056

lookup.next14:                                    ; preds = %cond.true
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3057)
    #dbg_value(i64 %2, !3036, !DIExpression(), !3058)
  %12 = getelementptr inbounds i64, ptr %arr.data, i64 %10, !dbg !3056
  %13 = load i64, ptr %12, align 8, !dbg !3056
  %14 = icmp sgt i64 %13, %8, !dbg !3059
  br i1 %14, label %common.ret, label %if.done2, !dbg !3040

if.done2:                                         ; preds = %lookup.next14, %if.done
  %15 = add nuw nsw i64 %2, 1, !dbg !3060
    #dbg_value(i64 %15, !3036, !DIExpression(), !3061)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3062)
  %exitcond.not = icmp eq i64 %2, %1, !dbg !3039
  br i1 %exitcond.not, label %common.ret, label %for.body, !dbg !3040

lookup.throw:                                     ; preds = %for.body
  tail call fastcc void @runtime.lookupPanic(), !dbg !3041
  unreachable, !dbg !3041

lookup.throw9:                                    ; preds = %cond.true
  tail call fastcc void @runtime.lookupPanic(), !dbg !3056
  unreachable, !dbg !3056
}
