define double @f_gold(i64 %n) local_unnamed_addr #11 !dbg !3021 {
entry:
    #dbg_value(i64 %n, !3026, !DIExpression(), !3030)
    #dbg_value(i64 10, !3027, !DIExpression(), !3031)
    #dbg_value(double 1.000000e+00, !3028, !DIExpression(), !3032)
    #dbg_value(i64 1, !3029, !DIExpression(), !3033)
  %.not1 = icmp slt i64 %n, 1, !dbg !3034
  br i1 %.not1, label %for.done, label %for.body, !dbg !3035

for.body:                                         ; preds = %entry, %for.body
  %0 = phi i64 [ %7, %for.body ], [ 1, %entry ]
  %1 = phi double [ %6, %for.body ], [ 1.000000e+00, %entry ]
    #dbg_value(i64 10, !3027, !DIExpression(), !3036)
    #dbg_value(i64 %0, !3029, !DIExpression(), !3037)
  %2 = add i64 %0, 9, !dbg !3038
  %3 = sitofp i64 %2 to double, !dbg !3039
  %4 = fmul double %1, %3, !dbg !3040
    #dbg_value(double %4, !3028, !DIExpression(), !3040)
  %5 = sitofp i64 %0 to double, !dbg !3041
  %6 = fdiv double %4, %5, !dbg !3042
    #dbg_value(double %6, !3028, !DIExpression(), !3042)
  %7 = add i64 %0, 1, !dbg !3043
    #dbg_value(i64 %7, !3029, !DIExpression(), !3044)
    #dbg_value(i64 %n, !3026, !DIExpression(), !3045)
  %.not = icmp sgt i64 %7, %n, !dbg !3034
  br i1 %.not, label %for.done, label %for.body, !dbg !3035

for.done:                                         ; preds = %for.body, %entry
  %.lcssa = phi double [ 1.000000e+00, %entry ], [ %6, %for.body ], !dbg !3032
    #dbg_value(double %.lcssa, !3028, !DIExpression(), !3046)
  ret double %.lcssa, !dbg !3047
}
