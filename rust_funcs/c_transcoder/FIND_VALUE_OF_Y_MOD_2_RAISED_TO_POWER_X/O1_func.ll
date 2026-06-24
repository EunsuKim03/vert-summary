define noundef i32 @f_gold(i32 noundef %y, i32 noundef %x) unnamed_addr #6 {
start:
  %_5 = sitofp i32 %y to float
  %0 = tail call noundef float @llvm.log2.f32(float %_5)
  %_6 = sitofp i32 %x to float
  %_3 = fcmp olt float %0, %_6
  %_7 = icmp sgt i32 %x, 63
  %or.cond = or i1 %_7, %_3
  br i1 %or.cond, label %bb8, label %bb5

bb5:                                              ; preds = %start
  %1 = and i32 %x, 31
  %_8 = shl nuw i32 1, %1
  %2 = srem i32 %y, %_8
  br label %bb8

bb8:                                              ; preds = %start, %bb5
  %_0.sroa.0.0 = phi i32 [ %2, %bb5 ], [ %y, %start ]
  ret i32 %_0.sroa.0.0
}
