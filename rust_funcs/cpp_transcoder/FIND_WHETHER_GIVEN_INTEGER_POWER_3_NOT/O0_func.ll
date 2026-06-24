define i32 @f_gold(i32 %n) unnamed_addr #3 {
start:
  %_0 = alloca [4 x i8], align 4
  %b = sitofp i32 %n to float
  %c = frem float 0x41D151AD00000000, %b
  %d = call i32 @llvm.fptosi.sat.i32.f32(float %c)
  %_6 = icmp eq i32 %d, 0
  br i1 %_6, label %bb1, label %bb2

bb2:                                              ; preds = %start
  store i32 0, ptr %_0, align 4
  br label %bb3

bb1:                                              ; preds = %start
  store i32 1, ptr %_0, align 4
  br label %bb3

bb3:                                              ; preds = %bb1, %bb2
  %0 = load i32, ptr %_0, align 4
  ret i32 %0
}
