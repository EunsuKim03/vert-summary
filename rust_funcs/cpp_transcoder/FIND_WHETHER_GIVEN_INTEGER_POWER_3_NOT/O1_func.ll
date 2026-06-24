define noundef range(i32 0, 2) i32 @f_gold(i32 noundef %n) unnamed_addr #6 {
start:
  %b = sitofp i32 %n to float
  %c = frem float 0x41D151AD00000000, %b
  %d = tail call i32 @llvm.fptosi.sat.i32.f32(float %c)
  %_5 = icmp eq i32 %d, 0
  %. = zext i1 %_5 to i32
  ret i32 %.
}
