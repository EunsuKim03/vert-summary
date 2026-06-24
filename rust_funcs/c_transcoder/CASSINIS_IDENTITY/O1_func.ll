define noundef range(i32 -1, 2) i32 @f_gold(i32 noundef %n) unnamed_addr #6 {
start:
  %n1 = sitofp i32 %n to float
  %_4 = frem float %n1, 2.000000e+00
  %_3 = fcmp oeq float %_4, 1.000000e+00
  %. = select i1 %_3, i32 -1, i32 1
  ret i32 %.
}
