define double @f_gold(i64 %side) local_unnamed_addr #2 !dbg !3568 {
entry:
    #dbg_value(i64 %side, !3571, !DIExpression(), !3572)
    #dbg_value(i64 %side, !3571, !DIExpression(), !3573)
  %0 = sitofp i64 %side to double, !dbg !3574
  %1 = call fastcc double @math.Pow(double %0, double 3.000000e+00), !dbg !3575
  %2 = fmul double %1, 0x401EA708A824F613, !dbg !3576
  ret double %2, !dbg !3577
}
