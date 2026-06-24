define double @f_gold(i64 %side) #1 !dbg !5432 {
entry:
    #dbg_value(i64 %side, !5435, !DIExpression(), !5437)
    #dbg_value(i64 %side, !5435, !DIExpression(), !5438)
  %0 = sitofp i64 %side to double, !dbg !5439
  %1 = call double @math.Pow(double %0, double 3.000000e+00, ptr undef), !dbg !5440
  %2 = call double @math.Sqrt(double 2.000000e+00, ptr undef), !dbg !5441
  %3 = fmul double %2, 6.000000e+00, !dbg !5442
  %4 = fdiv double %1, %3, !dbg !5443
    #dbg_value(double %4, !5436, !DIExpression(), !5444)
    #dbg_value(double %4, !5436, !DIExpression(), !5445)
  ret double %4, !dbg !5446
}
