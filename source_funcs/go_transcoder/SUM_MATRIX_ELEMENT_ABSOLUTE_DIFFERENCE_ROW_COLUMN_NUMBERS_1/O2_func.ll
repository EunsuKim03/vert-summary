define range(i64 0, -1) i64 @f_gold(i64 %n) local_unnamed_addr #9 !dbg !3021 {
entry:
    #dbg_value(i64 %n, !3026, !DIExpression(), !3029)
    #dbg_value(i64 0, !3027, !DIExpression(), !3030)
    #dbg_value(i64 0, !3028, !DIExpression(), !3031)
  %0 = icmp sgt i64 %n, 0, !dbg !3032
  br i1 %0, label %for.body.preheader, label %for.done, !dbg !3033

for.body.preheader:                               ; preds = %entry
  %1 = add nsw i64 %n, -1, !dbg !3033
  %2 = add nsw i64 %n, -3, !dbg !3033
  %3 = zext nneg i64 %1 to i65, !dbg !3033
  %4 = add nsw i64 %n, -2, !dbg !3033
  %5 = zext i64 %4 to i65, !dbg !3033
  %6 = mul i65 %3, %5, !dbg !3033
  %7 = trunc i65 %6 to i64, !dbg !3033
  %8 = lshr i64 %7, 1, !dbg !3033
  %9 = mul i64 %2, %8, !dbg !3033
  %10 = trunc i65 %6 to i64, !dbg !3033
  %11 = mul i64 %2, %10, !dbg !3033
  %12 = lshr i64 %11, 1, !dbg !3033
  %.neg = mul i64 %12, 3074457345618258602, !dbg !3033
    #dbg_value(i64 %n, !3026, !DIExpression(), !3034)
    #dbg_value(i64 undef, !3028, !DIExpression(), !3035)
    #dbg_value(!DIArgList(i64 %n, i64 poison, i64 undef, i64 undef), !3027, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_minus, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !3036)
    #dbg_value(i64 undef, !3028, !DIExpression(), !3037)
  %13 = mul i64 %1, %1, !dbg !3033
  %14 = add i64 %13, %9, !dbg !3033
  %15 = add i64 %.neg, %14, !dbg !3033
  %16 = shl i64 %15, 1, !dbg !3038
  br label %for.done, !dbg !3038

for.done:                                         ; preds = %for.body.preheader, %entry
  %.lcssa = phi i64 [ 0, %entry ], [ %16, %for.body.preheader ], !dbg !3030
    #dbg_value(i64 %.lcssa, !3027, !DIExpression(), !3039)
  ret i64 %.lcssa, !dbg !3040
}
