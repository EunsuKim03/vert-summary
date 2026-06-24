define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #4 {
start:
  %_2 = icmp slt i32 %n, 0
  br i1 %_2, label %bb5, label %bb2

bb2:                                              ; preds = %start
  %_3 = icmp samesign ult i32 %n, 2
  br i1 %_3, label %bb5, label %bb4

bb4:                                              ; preds = %bb2
  %_6 = uitofp nneg i32 %n to float
  %_8 = fdiv float %_6, 0x4005BF0A80000000
  %0 = tail call float @llvm.log.f32(float %_8)
  %_5 = fmul float %0, %_6
  %_11 = fmul float %_6, 0x401921FB60000000
  %1 = tail call float @llvm.log.f32(float %_11)
  %_9 = fmul float %1, 5.000000e-01
  %_4 = fadd float %_5, %_9
  %2 = tail call i32 @llvm.fptosi.sat.i32.f32(float %_4)
  %3 = add i32 %2, 1
  br label %bb5

bb5:                                              ; preds = %bb2, %start, %bb4
  %x.sroa.0.0 = phi i32 [ %3, %bb4 ], [ 0, %start ], [ 1, %bb2 ]
  ret i32 %x.sroa.0.0
}
