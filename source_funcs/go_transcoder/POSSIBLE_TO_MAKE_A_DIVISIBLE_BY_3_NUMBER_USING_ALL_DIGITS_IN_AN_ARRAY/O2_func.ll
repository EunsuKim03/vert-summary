define i1 @f_gold(ptr nocapture readonly %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n) local_unnamed_addr #4 !dbg !3025 {
entry:
    #dbg_value(ptr %arr.data, !3034, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3038)
    #dbg_value(i64 %arr.len, !3034, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3038)
    #dbg_value(i64 %arr.cap, !3034, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3038)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3038)
    #dbg_value(i64 0, !3036, !DIExpression(), !3039)
    #dbg_value(i64 0, !3037, !DIExpression(), !3040)
  %0 = icmp sgt i64 %n, 0, !dbg !3041
  br i1 %0, label %for.body.preheader, label %for.done, !dbg !3042

for.body.preheader:                               ; preds = %entry
  %1 = add nsw i64 %n, -1, !dbg !3043
  %.not.not = icmp ugt i64 %arr.len, %1, !dbg !3043
  br i1 %.not.not, label %for.body, label %lookup.throw, !dbg !3043

for.body:                                         ; preds = %for.body.preheader, %for.body
  %2 = phi i64 [ %8, %for.body ], [ 0, %for.body.preheader ]
  %3 = phi i64 [ %7, %for.body ], [ 0, %for.body.preheader ]
    #dbg_value(i64 %2, !3037, !DIExpression(), !3044)
    #dbg_value(i64 %3, !3036, !DIExpression(), !3045)
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3046)
    #dbg_value(i64 %2, !3037, !DIExpression(), !3047)
  %4 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %2, !dbg !3043
  %5 = load i64, ptr %4, align 8, !dbg !3043
  %6 = add i64 %5, %3, !dbg !3048
  %7 = srem i64 %6, 3, !dbg !3049
    #dbg_value(i64 %7, !3036, !DIExpression(), !3050)
  %8 = add nuw nsw i64 %2, 1, !dbg !3051
    #dbg_value(i64 %8, !3037, !DIExpression(), !3044)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3052)
  %exitcond.not = icmp eq i64 %8, %n, !dbg !3041
  br i1 %exitcond.not, label %for.done.loopexit, label %for.body, !dbg !3042

for.done.loopexit:                                ; preds = %for.body
  %9 = icmp eq i64 %7, 0, !dbg !3053
  br label %for.done, !dbg !3053

for.done:                                         ; preds = %for.done.loopexit, %entry
  %.lcssa = phi i1 [ true, %entry ], [ %9, %for.done.loopexit ], !dbg !3039
    #dbg_value(i1 %.lcssa, !3036, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value), !3054)
  ret i1 %.lcssa, !dbg !3055

lookup.throw:                                     ; preds = %for.body.preheader
  tail call fastcc void @runtime.lookupPanic(), !dbg !3043
  unreachable, !dbg !3043
}
