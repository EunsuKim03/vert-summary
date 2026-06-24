define noundef i1 @f_gold(ptr nocapture readonly %a.data, i64 %a.len, i64 %a.cap, i64 %n) local_unnamed_addr #4 !dbg !3025 {
entry:
    #dbg_value(ptr %a.data, !3034, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3039)
    #dbg_value(i64 %a.len, !3034, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3039)
    #dbg_value(i64 %a.cap, !3034, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3039)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3039)
    #dbg_value(i64 0, !3036, !DIExpression(), !3040)
    #dbg_value(i64 0, !3037, !DIExpression(), !3041)
    #dbg_value(i64 0, !3038, !DIExpression(), !3042)
  %0 = icmp sgt i64 %n, 0, !dbg !3043
  br i1 %0, label %for.body.preheader, label %for.done, !dbg !3044

for.body.preheader:                               ; preds = %entry
  %1 = add nsw i64 %n, -1, !dbg !3045
  %.not10.not = icmp ugt i64 %a.len, %1, !dbg !3045
  br i1 %.not10.not, label %for.body, label %lookup.throw, !dbg !3045

for.body:                                         ; preds = %for.body.preheader, %for.body
  %2 = phi i64 [ %10, %for.body ], [ 0, %for.body.preheader ]
  %3 = phi i64 [ %9, %for.body ], [ 0, %for.body.preheader ]
  %4 = phi i64 [ %7, %for.body ], [ 0, %for.body.preheader ]
    #dbg_value(i64 %2, !3038, !DIExpression(), !3046)
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3047)
    #dbg_value(i64 %2, !3038, !DIExpression(), !3048)
  %5 = getelementptr inbounds nuw i64, ptr %a.data, i64 %2, !dbg !3045
  %6 = load i64, ptr %5, align 8, !dbg !3045
  %7 = add i64 %6, %4, !dbg !3044
  %8 = xor i64 %6, 1, !dbg !3044
  %9 = add i64 %8, %3, !dbg !3044
  %10 = add nuw nsw i64 %2, 1, !dbg !3049
    #dbg_value(i64 %10, !3038, !DIExpression(), !3046)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3050)
  %exitcond.not = icmp eq i64 %10, %n, !dbg !3043
  br i1 %exitcond.not, label %for.done.loopexit, label %for.body, !dbg !3044

for.done.loopexit:                                ; preds = %for.body
  %11 = and i64 %7, 1, !dbg !3051
  %12 = icmp eq i64 %11, 0, !dbg !3051
  %13 = and i64 %9, 1
  %14 = icmp eq i64 %13, 0
  %15 = select i1 %12, i1 true, i1 %14, !dbg !3044
  br label %for.done, !dbg !3051

for.done:                                         ; preds = %for.done.loopexit, %entry
  %.lcssa5 = phi i1 [ true, %entry ], [ %15, %for.done.loopexit ], !dbg !3040
    #dbg_value(i1 %.lcssa5, !3036, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value), !3052)
    #dbg_value(i1 poison, !3037, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value), !3053)
  ret i1 %.lcssa5, !dbg !3044

lookup.throw:                                     ; preds = %for.body.preheader
  tail call fastcc void @runtime.lookupPanic(), !dbg !3045
  unreachable, !dbg !3045
}
