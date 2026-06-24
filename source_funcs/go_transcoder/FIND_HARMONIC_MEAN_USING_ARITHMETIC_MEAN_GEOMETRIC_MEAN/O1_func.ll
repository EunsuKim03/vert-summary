define double @f_gold(i64 %a, i64 %b) local_unnamed_addr #10 !dbg !3105 {
entry:
    #dbg_value(i64 %a, !3110, !DIExpression(), !3115)
    #dbg_value(i64 %b, !3111, !DIExpression(), !3115)
    #dbg_value(double 0.000000e+00, !3112, !DIExpression(), !3116)
    #dbg_value(double 0.000000e+00, !3113, !DIExpression(), !3117)
    #dbg_value(double 0.000000e+00, !3114, !DIExpression(), !3118)
    #dbg_value(i64 %a, !3110, !DIExpression(), !3119)
    #dbg_value(i64 %b, !3111, !DIExpression(), !3120)
  %0 = add i64 %b, %a, !dbg !3121
  %1 = sdiv i64 %0, 2, !dbg !3122
  %2 = sitofp i64 %1 to double, !dbg !3123
    #dbg_value(double %2, !3112, !DIExpression(), !3124)
    #dbg_value(i64 %a, !3110, !DIExpression(), !3125)
    #dbg_value(i64 %b, !3111, !DIExpression(), !3126)
  %3 = mul i64 %b, %a, !dbg !3127
  %4 = sitofp i64 %3 to double, !dbg !3128
    #dbg_value(double %4, !3129, !DIExpression(), !3135)
  %5 = call double @llvm.sqrt.f64(double %4), !dbg !3135
    #dbg_value(double %5, !3113, !DIExpression(), !3137)
    #dbg_value(double %5, !3113, !DIExpression(), !3138)
    #dbg_value(double %5, !3113, !DIExpression(), !3139)
  %6 = fmul double %5, %5, !dbg !3140
    #dbg_value(double %2, !3112, !DIExpression(), !3141)
  %7 = fdiv double %6, %2, !dbg !3142
    #dbg_value(double %7, !3114, !DIExpression(), !3143)
    #dbg_value(double %7, !3114, !DIExpression(), !3144)
  ret double %7, !dbg !3145
}
