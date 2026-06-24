define i64 @f_gold(i64 %n) local_unnamed_addr #12 !dbg !3021 {
entry:
    #dbg_value(i64 %n, !3026, !DIExpression(), !3030)
    #dbg_value(i64 0, !3027, !DIExpression(), !3031)
    #dbg_value(i64 1, !3028, !DIExpression(), !3032)
  %0 = sitofp i64 %n to double
  %1 = tail call double @llvm.sqrt.f64(double %0)
  %2 = fcmp ult double %1, 1.000000e+00, !dbg !3033
  br i1 %2, label %for.done3, label %for.loop1.preheader, !dbg !3034

for.loop1.preheader:                              ; preds = %entry, %for.done
  %3 = phi i64 [ %11, %for.done ], [ 1, %entry ]
  %4 = phi i64 [ %.lcssa, %for.done ], [ 0, %entry ]
    #dbg_value(i64 %3, !3029, !DIExpression(), !3035)
    #dbg_value(i64 %3, !3028, !DIExpression(), !3036)
  %5 = mul i64 %3, %3, !dbg !3037
  %.not2 = icmp sgt i64 %5, %n, !dbg !3038
  br i1 %.not2, label %for.done, label %for.body2, !dbg !3034

for.body2:                                        ; preds = %for.loop1.preheader, %for.body2
  %6 = phi i64 [ %9, %for.body2 ], [ %3, %for.loop1.preheader ]
  %7 = phi i64 [ %8, %for.body2 ], [ %4, %for.loop1.preheader ]
    #dbg_value(i64 %6, !3029, !DIExpression(), !3035)
    #dbg_value(i64 %6, !3028, !DIExpression(), !3036)
  %8 = add i64 %7, 1, !dbg !3039
    #dbg_value(i64 %8, !3027, !DIExpression(), !3039)
  %9 = add i64 %6, 1, !dbg !3040
    #dbg_value(i64 %9, !3029, !DIExpression(), !3035)
    #dbg_value(i64 %3, !3028, !DIExpression(), !3036)
  %10 = mul i64 %9, %3, !dbg !3037
    #dbg_value(i64 %n, !3026, !DIExpression(), !3041)
  %.not = icmp sgt i64 %10, %n, !dbg !3038
  br i1 %.not, label %for.done, label %for.body2, !dbg !3034

for.done:                                         ; preds = %for.body2, %for.loop1.preheader
  %.lcssa = phi i64 [ %4, %for.loop1.preheader ], [ %8, %for.body2 ], !dbg !3031
  %11 = add i64 %3, 1, !dbg !3042
    #dbg_value(i64 %11, !3028, !DIExpression(), !3043)
  %12 = sitofp i64 %11 to double, !dbg !3044
    #dbg_value(i64 %n, !3026, !DIExpression(), !3045)
  %13 = fcmp ult double %1, %12, !dbg !3033
  br i1 %13, label %for.done3, label %for.loop1.preheader, !dbg !3034

for.done3:                                        ; preds = %for.done, %entry
  %.lcssa1 = phi i64 [ 0, %entry ], [ %.lcssa, %for.done ], !dbg !3031
    #dbg_value(i64 %.lcssa1, !3027, !DIExpression(), !3046)
  ret i64 %.lcssa1, !dbg !3047
}
