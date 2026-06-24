define i64 @f_gold(i64 %n) local_unnamed_addr #2 !dbg !3568 {
entry:
    #dbg_value(i64 %n, !3571, !DIExpression(), !3574)
    #dbg_value(i64 %n, !3571, !DIExpression(), !3575)
  %0 = icmp eq i64 %n, 1, !dbg !3576
  br i1 %0, label %common.ret, label %if.done, !dbg !3577

common.ret:                                       ; preds = %entry, %if.done
  %common.ret.op = phi i64 [ %9, %if.done ], [ 1, %entry ]
  ret i64 %common.ret.op, !dbg !3577

if.done:                                          ; preds = %entry
    #dbg_value(i64 0, !3572, !DIExpression(), !3578)
    #dbg_value(float 0x4005AE1480000000, !3573, !DIExpression(), !3579)
    #dbg_value(i64 %n, !3571, !DIExpression(), !3580)
  %1 = sitofp i64 %n to double, !dbg !3581
  %2 = fmul double %1, 6.280000e+00, !dbg !3582
    #dbg_value(double %2, !2188, !DIExpression(), !3583)
  %3 = call double @llvm.sqrt.f64(double %2), !dbg !3583
    #dbg_value(i64 %n, !3571, !DIExpression(), !3585)
  %4 = sitofp i64 %n to float, !dbg !3586
    #dbg_value(float 0x4005AE1480000000, !3573, !DIExpression(), !3587)
  %5 = fdiv float %4, 0x4005AE1480000000, !dbg !3588
  %6 = fpext float %5 to double, !dbg !3589
    #dbg_value(i64 %n, !3571, !DIExpression(), !3590)
  %7 = call fastcc double @math.Pow(double %6, double %1), !dbg !3591
  %8 = fmul double %3, %7, !dbg !3592
  %abovemin = fcmp oge double %8, 0xC3E0000000000000, !dbg !3593
  %belowmax = fcmp ole double %8, 0x43DFFFFFFFFFFFFE, !dbg !3593
  %inbounds = and i1 %abovemin, %belowmax, !dbg !3593
  %saturated = select i1 %abovemin, i64 9223372036854775807, i64 -9223372036854775808, !dbg !3593
  %isnan = fcmp uno double %8, 0.000000e+00, !dbg !3593
  %remapped = select i1 %isnan, i64 0, i64 %saturated, !dbg !3593
  %normal = fptosi double %8 to i64, !dbg !3593
  %9 = select i1 %inbounds, i64 %normal, i64 %remapped, !dbg !3593
    #dbg_value(i64 %9, !3572, !DIExpression(), !3594)
    #dbg_value(i64 %9, !3572, !DIExpression(), !3595)
  br label %common.ret, !dbg !3596
}
