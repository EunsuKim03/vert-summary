define double @f_gold(i64 %n) local_unnamed_addr #11 !dbg !3021 {
entry:
    #dbg_value(i64 %n, !3026, !DIExpression(), !3030)
  %0 = add i64 %n, 1, !dbg !3031
  %1 = mul i64 %0, %n, !dbg !3032
  %2 = sdiv i64 %1, 2, !dbg !3033
  %3 = sitofp i64 %2 to double, !dbg !3034
    #dbg_value(double %3, !3027, !DIExpression(), !3035)
    #dbg_value(double %3, !3028, !DIExpression(), !3036)
    #dbg_value(i64 2, !3029, !DIExpression(), !3037)
  %.not1 = icmp slt i64 %n, 2, !dbg !3038
  br i1 %.not1, label %for.done, label %for.body, !dbg !3039

for.body:                                         ; preds = %entry, %for.body
  %4 = phi i64 [ %13, %for.body ], [ 2, %entry ]
  %5 = phi double [ %12, %for.body ], [ %3, %entry ]
  %6 = phi double [ %9, %for.body ], [ %3, %entry ]
    #dbg_value(double %6, !3027, !DIExpression(), !3040)
    #dbg_value(i64 %4, !3029, !DIExpression(), !3041)
  %7 = add i64 %4, -1, !dbg !3042
  %8 = sitofp i64 %7 to double, !dbg !3043
  %9 = fsub double %6, %8, !dbg !3044
    #dbg_value(double %5, !3028, !DIExpression(), !3045)
    #dbg_value(double %9, !3027, !DIExpression(), !3046)
  %10 = sitofp i64 %4 to double, !dbg !3047
  %11 = fmul double %9, %10, !dbg !3048
  %12 = fadd double %5, %11, !dbg !3049
    #dbg_value(double %12, !3028, !DIExpression(), !3050)
  %13 = add i64 %4, 1, !dbg !3051
    #dbg_value(i64 %13, !3029, !DIExpression(), !3052)
    #dbg_value(i64 %n, !3026, !DIExpression(), !3053)
  %.not = icmp sgt i64 %13, %n, !dbg !3038
  br i1 %.not, label %for.done, label %for.body, !dbg !3039

for.done:                                         ; preds = %for.body, %entry
  %.lcssa = phi double [ %3, %entry ], [ %12, %for.body ], !dbg !3036
    #dbg_value(double %.lcssa, !3028, !DIExpression(), !3054)
  ret double %.lcssa, !dbg !3055
}
