define i1 @f_gold(i64 %x) local_unnamed_addr #2 !dbg !3568 {
entry:
    #dbg_value(i64 %x, !3571, !DIExpression(), !3575)
    #dbg_value(i64 %x, !3571, !DIExpression(), !3576)
    #dbg_value(i64 %x, !3572, !DIExpression(), !3577)
    #dbg_value(i64 0, !3573, !DIExpression(), !3578)
  %.not6 = icmp eq i64 %x, 0, !dbg !3579
  br i1 %.not6, label %for.loop1.preheader, label %for.body, !dbg !3580

for.loop1.preheader.loopexit:                     ; preds = %for.body
  %0 = sitofp i64 %4 to double
  br label %for.loop1.preheader, !dbg !3581

for.loop1.preheader:                              ; preds = %for.loop1.preheader.loopexit, %entry
  %.lcssa5 = phi double [ 0.000000e+00, %entry ], [ %0, %for.loop1.preheader.loopexit ], !dbg !3578
    #dbg_value(i64 %x, !3571, !DIExpression(), !3582)
  %.not27 = icmp eq i64 %x, 0, !dbg !3581
  br i1 %.not27, label %for.done3, label %for.body2, !dbg !3580

for.body:                                         ; preds = %entry, %for.body
  %1 = phi i64 [ %4, %for.body ], [ 0, %entry ]
  %2 = phi i64 [ %3, %for.body ], [ %x, %entry ]
    #dbg_value(i64 %2, !3571, !DIExpression(), !3583)
  %3 = sdiv i64 %2, 10, !dbg !3584
    #dbg_value(i64 %3, !3571, !DIExpression(), !3584)
  %4 = add i64 %1, 1, !dbg !3585
    #dbg_value(i64 %4, !3573, !DIExpression(), !3585)
  %.off = add i64 %2, 9, !dbg !3579
  %.not = icmp ult i64 %.off, 19, !dbg !3579
  br i1 %.not, label %for.loop1.preheader.loopexit, label %for.body, !dbg !3580

for.body2:                                        ; preds = %for.loop1.preheader, %for.body2
  %5 = phi i64 [ %11, %for.body2 ], [ 0, %for.loop1.preheader ]
  %6 = phi i64 [ %12, %for.body2 ], [ %x, %for.loop1.preheader ]
    #dbg_value(i64 %6, !3571, !DIExpression(), !3586)
  %7 = srem i64 %6, 10, !dbg !3587
  %8 = sitofp i64 %7 to double, !dbg !3588
    #dbg_value(i64 poison, !3573, !DIExpression(), !3589)
  %9 = call fastcc double @math.Pow(double %8, double %.lcssa5), !dbg !3590
  %abovemin = fcmp oge double %9, 0xC3E0000000000000, !dbg !3591
  %belowmax = fcmp ole double %9, 0x43DFFFFFFFFFFFFE, !dbg !3591
  %inbounds = and i1 %abovemin, %belowmax, !dbg !3591
  %saturated = select i1 %abovemin, i64 9223372036854775807, i64 -9223372036854775808, !dbg !3591
  %isnan = fcmp uno double %9, 0.000000e+00, !dbg !3591
  %remapped = select i1 %isnan, i64 0, i64 %saturated, !dbg !3591
  %normal = fptosi double %9 to i64, !dbg !3591
  %10 = select i1 %inbounds, i64 %normal, i64 %remapped, !dbg !3591
  %11 = add i64 %10, %5, !dbg !3592
    #dbg_value(i64 %11, !3574, !DIExpression(), !3592)
  %12 = sdiv i64 %6, 10, !dbg !3593
    #dbg_value(i64 %12, !3571, !DIExpression(), !3582)
  %.off9 = add i64 %6, 9, !dbg !3581
  %.not2 = icmp ult i64 %.off9, 19, !dbg !3581
  br i1 %.not2, label %for.done3, label %for.body2, !dbg !3580

for.done3:                                        ; preds = %for.body2, %for.loop1.preheader
  %.lcssa = phi i64 [ 0, %for.loop1.preheader ], [ %11, %for.body2 ], !dbg !3594
    #dbg_value(i64 %.lcssa, !3574, !DIExpression(), !3595)
    #dbg_value(i64 %x, !3572, !DIExpression(), !3596)
  %13 = icmp eq i64 %.lcssa, %x, !dbg !3597
  ret i1 %13, !dbg !3598
}
