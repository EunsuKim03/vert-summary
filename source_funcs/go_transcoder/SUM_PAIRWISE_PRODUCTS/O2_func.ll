define double @f_gold(i64 %n) local_unnamed_addr #11 !dbg !3021 {
entry:
    #dbg_value(i64 %n, !3026, !DIExpression(), !3030)
    #dbg_value(double 0.000000e+00, !3027, !DIExpression(), !3031)
    #dbg_value(i64 1, !3028, !DIExpression(), !3032)
  %.not6 = icmp slt i64 %n, 1, !dbg !3033
  br i1 %.not6, label %for.done3, label %for.loop1.preheader, !dbg !3034

for.loop1.preheader:                              ; preds = %entry, %for.done
  %0 = phi i64 [ %8, %for.done ], [ 1, %entry ]
  %1 = phi double [ %6, %for.done ], [ 0.000000e+00, %entry ]
    #dbg_value(i64 %0, !3028, !DIExpression(), !3035)
    #dbg_value(i64 %0, !3029, !DIExpression(), !3036)
    #dbg_value(i64 %n, !3026, !DIExpression(), !3037)
  br label %for.body2, !dbg !3034

for.body2:                                        ; preds = %for.loop1.preheader, %for.body2
  %2 = phi i64 [ %0, %for.loop1.preheader ], [ %7, %for.body2 ]
  %3 = phi double [ %1, %for.loop1.preheader ], [ %6, %for.body2 ]
    #dbg_value(double %3, !3027, !DIExpression(), !3038)
    #dbg_value(i64 %0, !3028, !DIExpression(), !3039)
    #dbg_value(i64 %2, !3029, !DIExpression(), !3040)
  %4 = mul i64 %2, %0, !dbg !3041
  %5 = sitofp i64 %4 to double, !dbg !3042
  %6 = fadd double %3, %5, !dbg !3043
    #dbg_value(double %6, !3027, !DIExpression(), !3044)
  %7 = add i64 %2, 1, !dbg !3045
    #dbg_value(i64 %7, !3029, !DIExpression(), !3036)
    #dbg_value(i64 %n, !3026, !DIExpression(), !3037)
  %.not2 = icmp sgt i64 %7, %n, !dbg !3046
  br i1 %.not2, label %for.done, label %for.body2, !dbg !3034

for.done:                                         ; preds = %for.body2
  %8 = add i64 %0, 1, !dbg !3047
    #dbg_value(i64 %8, !3028, !DIExpression(), !3035)
    #dbg_value(i64 %n, !3026, !DIExpression(), !3048)
  %.not = icmp sgt i64 %8, %n, !dbg !3033
  br i1 %.not, label %for.done3, label %for.loop1.preheader, !dbg !3034

for.done3:                                        ; preds = %for.done, %entry
  %.lcssa5 = phi double [ 0.000000e+00, %entry ], [ %6, %for.done ], !dbg !3031
    #dbg_value(double %.lcssa5, !3027, !DIExpression(), !3049)
  ret double %.lcssa5, !dbg !3050
}
