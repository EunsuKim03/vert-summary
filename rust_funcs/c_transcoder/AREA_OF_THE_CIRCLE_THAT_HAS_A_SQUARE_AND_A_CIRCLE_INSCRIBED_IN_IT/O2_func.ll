define noundef float @f_gold(i32 noundef %a) unnamed_addr #4 {
start:
  %_3 = sitofp i32 %a to float
  %_2 = fmul float %_3, 0x400921FB60000000
  %0 = fmul float %_2, %_3
  %1 = fmul float %0, 2.500000e-01
  ret float %1
}
