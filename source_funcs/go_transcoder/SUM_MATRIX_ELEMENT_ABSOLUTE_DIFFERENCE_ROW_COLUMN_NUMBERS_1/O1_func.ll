define range(i64 0, -1) i64 @f_gold(i64 %n) local_unnamed_addr #9 !dbg !3105 {
entry:
    #dbg_value(i64 %n, !3110, !DIExpression(), !3113)
    #dbg_value(i64 0, !3111, !DIExpression(), !3114)
    #dbg_value(i64 0, !3112, !DIExpression(), !3115)
  %0 = icmp sgt i64 %n, 0, !dbg !3116
  br i1 %0, label %for.done.loopexit, label %for.done, !dbg !3117

for.done.loopexit:                                ; preds = %entry
  %1 = add nsw i64 %n, -1, !dbg !3117
  %2 = zext i64 %1 to i65, !dbg !3117
  %3 = add nsw i64 %n, -2, !dbg !3117
  %4 = zext i64 %3 to i65, !dbg !3117
  %5 = mul i65 %2, %4, !dbg !3117
  %6 = add nsw i64 %n, -3, !dbg !3117
  %7 = trunc i65 %5 to i64, !dbg !3117
  %8 = mul i64 %6, %7, !dbg !3117
  %9 = lshr i64 %8, 1, !dbg !3117
  %.neg = mul i64 %9, 3074457345618258602, !dbg !3117
  %10 = trunc i65 %5 to i64, !dbg !3117
  %11 = lshr i64 %10, 1, !dbg !3117
  %12 = mul i64 %6, %11, !dbg !3117
    #dbg_value(i64 %n, !3110, !DIExpression(), !3118)
    #dbg_value(i64 undef, !3112, !DIExpression(), !3119)
    #dbg_value(!DIArgList(i64 %n, i64 poison, i64 undef, i64 undef), !3111, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_minus, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !3120)
    #dbg_value(i64 undef, !3112, !DIExpression(), !3121)
  %13 = mul i64 %1, %1, !dbg !3117
  %14 = add i64 %13, %12, !dbg !3117
  %15 = add i64 %.neg, %14, !dbg !3117
  %16 = shl i64 %15, 1, !dbg !3122
  br label %for.done, !dbg !3122

for.done:                                         ; preds = %for.done.loopexit, %entry
  %.lcssa = phi i64 [ 0, %entry ], [ %16, %for.done.loopexit ], !dbg !3114
    #dbg_value(i64 %.lcssa, !3111, !DIExpression(), !3123)
  ret i64 %.lcssa, !dbg !3124
}
