define double @f_gold(i64 %side) #1 !dbg !5432 {
entry:
    #dbg_value(i64 %side, !5435, !DIExpression(), !5436)
  %0 = call double @math.Sqrt(double 5.000000e+00, ptr undef), !dbg !5437
  %1 = fmul double %0, 7.000000e+00, !dbg !5438
  %2 = fadd double %1, 1.500000e+01, !dbg !5439
  %3 = fdiv double %2, 4.000000e+00, !dbg !5440
    #dbg_value(i64 %side, !5435, !DIExpression(), !5441)
  %4 = sitofp i64 %side to double, !dbg !5442
  %5 = call double @math.Pow(double %4, double 3.000000e+00, ptr undef), !dbg !5443
  %6 = fmul double %3, %5, !dbg !5444
  ret double %6, !dbg !5445
}
