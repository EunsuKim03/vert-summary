define float @f_gold(i64 %n) #1 !dbg !5432 {
entry:
    #dbg_value(i64 %n, !5435, !DIExpression(), !5436)
    #dbg_value(i64 %n, !5435, !DIExpression(), !5437)
  %0 = sitofp i64 %n to double, !dbg !5438
  %1 = call double @math.Pow(double 1.000000e+01, double %0, ptr undef), !dbg !5439
  %2 = fdiv double 1.000000e+00, %1, !dbg !5440
  %3 = fsub double 1.000000e+00, %2, !dbg !5441
  %4 = fmul double %3, 6.660000e-01, !dbg !5442
  %5 = fptrunc double %4 to float, !dbg !5443
  ret float %5, !dbg !5444
}
