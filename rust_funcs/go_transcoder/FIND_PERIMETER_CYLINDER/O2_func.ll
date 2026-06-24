define noundef range(i32 0, -1) i32 @f_gold(i32 noundef %diameter, i32 noundef %height) unnamed_addr #4 {
start:
  %diameter1 = sitofp i32 %diameter to float
  %height2 = sitofp i32 %height to float
  %_6 = fadd float %diameter1, %height2
  %_5 = tail call i32 @llvm.fptosi.sat.i32.f32(float %_6)
  %_0 = shl i32 %_5, 1
  ret i32 %_0
}
