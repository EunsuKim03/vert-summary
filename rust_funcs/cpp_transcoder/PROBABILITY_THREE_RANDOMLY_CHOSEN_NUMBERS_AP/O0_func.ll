define float @f_gold(i32 %n) unnamed_addr #3 {
start:
  %_3 = sitofp i32 %n to float
  %_2 = fmul float 3.000000e+00, %_3
  %_7 = sitofp i32 %n to float
  %_8 = sitofp i32 %n to float
  %_6 = fmul float %_7, %_8
  %_5 = fmul float 4.000000e+00, %_6
  %_4 = fsub float %_5, 1.000000e+00
  %_0 = fdiv float %_2, %_4
  ret float %_0
}
