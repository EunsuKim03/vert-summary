define range(i64 -9, 10) i64 @f_gold(i64 %x, i64 %y) local_unnamed_addr #2 !dbg !3568 {
entry:
    #dbg_value(i64 %x, !3573, !DIExpression(), !3575)
    #dbg_value(i64 %y, !3574, !DIExpression(), !3575)
    #dbg_value(i64 %x, !3573, !DIExpression(), !3576)
    #dbg_value(i64 %x, !3573, !DIExpression(DW_OP_constu, 10, DW_OP_mod, DW_OP_stack_value), !3577)
    #dbg_value(i64 %y, !3574, !DIExpression(), !3578)
  %.not = icmp eq i64 %y, 0, !dbg !3579
  br i1 %.not, label %if.done, label %if.then, !dbg !3580

if.then:                                          ; preds = %entry
    #dbg_value(i64 %y, !3574, !DIExpression(), !3581)
  %0 = srem i64 %y, 4, !dbg !3582
  %1 = add nsw i64 %0, 4, !dbg !3583
    #dbg_value(i64 %1, !3574, !DIExpression(), !3584)
  %2 = uitofp nneg i64 %1 to double, !dbg !3585
  br label %if.done, !dbg !3580

if.done:                                          ; preds = %if.then, %entry
  %3 = phi double [ 0.000000e+00, %entry ], [ %2, %if.then ], !dbg !3586
  %4 = srem i64 %x, 10, !dbg !3587
    #dbg_value(i64 %4, !3573, !DIExpression(), !3577)
    #dbg_value(i64 %4, !3573, !DIExpression(), !3588)
  %5 = sitofp i64 %4 to double, !dbg !3589
    #dbg_value(i64 poison, !3574, !DIExpression(), !3590)
  %6 = call fastcc double @math.Pow(double %5, double %3), !dbg !3591
  %abovemin = fcmp oge double %6, 0xC3E0000000000000, !dbg !3592
  %belowmax = fcmp ole double %6, 0x43DFFFFFFFFFFFFE, !dbg !3592
  %inbounds = and i1 %abovemin, %belowmax, !dbg !3592
  %saturated = select i1 %abovemin, i64 9223372036854775807, i64 -9223372036854775808, !dbg !3592
  %isnan = fcmp uno double %6, 0.000000e+00, !dbg !3592
  %remapped = select i1 %isnan, i64 0, i64 %saturated, !dbg !3592
  %normal = fptosi double %6 to i64, !dbg !3592
  %7 = select i1 %inbounds, i64 %normal, i64 %remapped, !dbg !3592
  %8 = srem i64 %7, 10, !dbg !3593
  ret i64 %8, !dbg !3594
}
