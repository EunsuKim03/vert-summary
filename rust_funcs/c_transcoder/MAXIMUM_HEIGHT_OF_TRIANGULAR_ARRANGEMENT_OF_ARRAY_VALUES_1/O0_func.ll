define i32 @f_gold(i64 %0, i32 %n) unnamed_addr #3 {
start:
  %1 = alloca [8 x i8], align 8
  %a = alloca [8 x i8], align 4
  store i64 %0, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %a, ptr align 8 %1, i64 8, i1 false)
  %_9 = sitofp i32 %n to float
  %_8 = fmul float 8.000000e+00, %_9
  %_7 = fadd float 1.000000e+00, %_8
; call std::f32::<impl f32>::sqrt
  %_6 = call float @"_ZN3std3f3221_$LT$impl$u20$f32$GT$4sqrt17ha3c741b232ff1162E"(float %_7) #20
  %_5 = fadd float -1.000000e+00, %_6
; call std::f32::<impl f32>::floor
  %_4 = call float @"_ZN3std3f3221_$LT$impl$u20$f32$GT$5floor17h001c9775d2a8d2c5E"(float %_5) #20
  %_3 = fdiv float %_4, 2.000000e+00
  %_0 = call i32 @llvm.fptosi.sat.i32.f32(float %_3)
  ret i32 %_0
}
