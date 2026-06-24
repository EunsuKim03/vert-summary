define i64 @f_gold(ptr nocapture readonly %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n) local_unnamed_addr #4 !dbg !3025 {
entry:
    #dbg_value(ptr %arr.data, !3034, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3038)
    #dbg_value(i64 %arr.len, !3034, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3038)
    #dbg_value(i64 %arr.cap, !3034, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3038)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3038)
    #dbg_value(i64 1, !3036, !DIExpression(), !3039)
    #dbg_value(i64 0, !3037, !DIExpression(), !3040)
  %0 = icmp sgt i64 %n, 0, !dbg !3041
  br i1 %0, label %cond.true, label %for.done, !dbg !3042

cond.true:                                        ; preds = %entry, %lookup.next4
  %1 = phi i64 [ %6, %lookup.next4 ], [ 0, %entry ]
  %2 = phi i64 [ %5, %lookup.next4 ], [ 1, %entry ]
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3043)
    #dbg_value(i64 %1, !3037, !DIExpression(), !3044)
  %exitcond.not = icmp eq i64 %1, %arr.len, !dbg !3045
  br i1 %exitcond.not, label %lookup.throw, label %lookup.next, !dbg !3045

lookup.next:                                      ; preds = %cond.true
  %3 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %1, !dbg !3045
  %4 = load i64, ptr %3, align 8, !dbg !3045
    #dbg_value(i64 %2, !3036, !DIExpression(), !3046)
  %.not2 = icmp sgt i64 %4, %2, !dbg !3047
  br i1 %.not2, label %for.done, label %lookup.next4, !dbg !3042

lookup.next4:                                     ; preds = %lookup.next
    #dbg_value(i64 %2, !3036, !DIExpression(), !3048)
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3049)
    #dbg_value(i64 %1, !3037, !DIExpression(), !3050)
  %5 = add i64 %4, %2, !dbg !3051
    #dbg_value(i64 %5, !3036, !DIExpression(), !3052)
  %6 = add nuw nsw i64 %1, 1, !dbg !3053
    #dbg_value(i64 %6, !3037, !DIExpression(), !3054)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3055)
  %exitcond9.not = icmp eq i64 %6, %n, !dbg !3041
  br i1 %exitcond9.not, label %for.done, label %cond.true, !dbg !3042

for.done:                                         ; preds = %lookup.next4, %lookup.next, %entry
  %.lcssa = phi i64 [ 1, %entry ], [ %2, %lookup.next ], [ %5, %lookup.next4 ], !dbg !3039
    #dbg_value(i64 %.lcssa, !3036, !DIExpression(), !3056)
  ret i64 %.lcssa, !dbg !3057

lookup.throw:                                     ; preds = %cond.true
  tail call fastcc void @runtime.lookupPanic(), !dbg !3045
  unreachable, !dbg !3045
}
