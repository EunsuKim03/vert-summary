define double @f_gold(i64 %a, i64 %b) local_unnamed_addr #10 !dbg !3021 {
entry:
    #dbg_value(i64 %a, !3026, !DIExpression(), !3031)
    #dbg_value(i64 %b, !3027, !DIExpression(), !3031)
    #dbg_value(double 0.000000e+00, !3028, !DIExpression(), !3032)
    #dbg_value(double 0.000000e+00, !3029, !DIExpression(), !3033)
    #dbg_value(double 0.000000e+00, !3030, !DIExpression(), !3034)
    #dbg_value(i64 %a, !3026, !DIExpression(), !3035)
    #dbg_value(i64 %b, !3027, !DIExpression(), !3036)
  %0 = add i64 %b, %a, !dbg !3037
  %1 = sdiv i64 %0, 2, !dbg !3038
  %2 = sitofp i64 %1 to double, !dbg !3039
    #dbg_value(double %2, !3028, !DIExpression(), !3040)
    #dbg_value(i64 %a, !3026, !DIExpression(), !3041)
    #dbg_value(i64 %b, !3027, !DIExpression(), !3042)
  %3 = mul i64 %b, %a, !dbg !3043
  %4 = sitofp i64 %3 to double, !dbg !3044
    #dbg_value(double %4, !3045, !DIExpression(), !3051)
  %5 = tail call double @llvm.sqrt.f64(double %4), !dbg !3051
    #dbg_value(double %5, !3029, !DIExpression(), !3053)
    #dbg_value(double %5, !3029, !DIExpression(), !3054)
    #dbg_value(double %5, !3029, !DIExpression(), !3055)
  %6 = fmul double %5, %5, !dbg !3056
    #dbg_value(double %2, !3028, !DIExpression(), !3057)
  %7 = fdiv double %6, %2, !dbg !3058
    #dbg_value(double %7, !3030, !DIExpression(), !3059)
    #dbg_value(double %7, !3030, !DIExpression(), !3060)
  ret double %7, !dbg !3061
}
