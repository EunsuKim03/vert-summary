define range(i64 0, 10) i64 @f_gold(i64 %a, i64 %b, i64 %k) local_unnamed_addr #2 !dbg !3568 {
entry:
    #dbg_value(i64 %a, !3573, !DIExpression(), !3579)
    #dbg_value(i64 %b, !3574, !DIExpression(), !3579)
    #dbg_value(i64 %k, !3575, !DIExpression(), !3579)
    #dbg_value(i64 %a, !3573, !DIExpression(), !3580)
  %0 = sitofp i64 %a to double, !dbg !3581
    #dbg_value(i64 %b, !3574, !DIExpression(), !3582)
  %1 = sitofp i64 %b to double, !dbg !3583
  %2 = call fastcc double @math.Pow(double %0, double %1), !dbg !3584
  %abovemin = fcmp oge double %2, 0xC3E0000000000000, !dbg !3585
  %belowmax = fcmp ole double %2, 0x43DFFFFFFFFFFFFE, !dbg !3585
  %inbounds = and i1 %abovemin, %belowmax, !dbg !3585
  %saturated = select i1 %abovemin, i64 9223372036854775807, i64 -9223372036854775808, !dbg !3585
  %isnan = fcmp uno double %2, 0.000000e+00, !dbg !3585
  %remapped = select i1 %isnan, i64 0, i64 %saturated, !dbg !3585
  %normal = fptosi double %2 to i64, !dbg !3585
  %3 = select i1 %inbounds, i64 %normal, i64 %remapped, !dbg !3585
    #dbg_value(i64 %3, !3576, !DIExpression(), !3586)
    #dbg_value(i64 0, !3577, !DIExpression(), !3587)
  %4 = icmp sgt i64 %3, 0, !dbg !3588
  %5 = icmp sgt i64 %k, 0
  %or.cond8 = select i1 %4, i1 %5, i1 false, !dbg !3589
  br i1 %or.cond8, label %for.body, label %common.ret, !dbg !3589

for.body:                                         ; preds = %entry, %if.done
  %6 = phi i64 [ %8, %if.done ], [ 0, %entry ]
  %7 = phi i64 [ %11, %if.done ], [ %3, %entry ]
    #dbg_value(i64 %6, !3577, !DIExpression(), !3590)
    #dbg_value(i64 %7, !3576, !DIExpression(), !3591)
    #dbg_value(i64 %7, !3576, !DIExpression(), !3592)
    #dbg_value(i64 poison, !3578, !DIExpression(), !3593)
  %8 = add nuw nsw i64 %6, 1, !dbg !3594
    #dbg_value(i64 %8, !3577, !DIExpression(), !3594)
    #dbg_value(i64 %8, !3577, !DIExpression(), !3595)
    #dbg_value(i64 %k, !3575, !DIExpression(), !3596)
  %9 = icmp eq i64 %8, %k, !dbg !3597
  br i1 %9, label %if.then, label %if.done, !dbg !3589

common.ret:                                       ; preds = %if.done, %entry, %if.then
  %common.ret.op = phi i64 [ %10, %if.then ], [ 0, %entry ], [ 0, %if.done ]
  ret i64 %common.ret.op, !dbg !3589

if.then:                                          ; preds = %for.body
  %10 = urem i64 %7, 10, !dbg !3598
    #dbg_value(i64 %10, !3578, !DIExpression(), !3593)
    #dbg_value(i64 %10, !3578, !DIExpression(), !3599)
  br label %common.ret, !dbg !3600

if.done:                                          ; preds = %for.body
    #dbg_value(i64 %7, !3576, !DIExpression(), !3601)
  %11 = udiv i64 %7, 10, !dbg !3602
    #dbg_value(i64 %11, !3576, !DIExpression(), !3591)
  %12 = icmp ugt i64 %7, 9, !dbg !3588
    #dbg_value(i64 %8, !3577, !DIExpression(), !3590)
    #dbg_value(i64 %k, !3575, !DIExpression(), !3603)
  %13 = icmp slt i64 %8, %k
  %or.cond = select i1 %12, i1 %13, i1 false, !dbg !3589
  br i1 %or.cond, label %for.body, label %common.ret, !dbg !3589
}
