define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #4 {
start:
  %_6 = uitofp i32 %n to float
  %_5 = fadd float %_6, -2.000000e+00
  %0 = tail call float @llvm.floor.f32(float %_5)
  %_3 = tail call i32 @llvm.fptoui.sat.i32.f32(float %0)
  %_0.i.not.i12 = icmp ugt i32 %_3, %n
  %switch13 = icmp ult i32 %_3, 2
  %or.cond1114 = or i1 %_0.i.not.i12, %switch13
  br i1 %or.cond1114, label %bb8, label %bb7

bb8:                                              ; preds = %bb7, %start
  %res.sroa.0.0.lcssa = phi i32 [ 1, %start ], [ %1, %bb7 ]
  ret i32 %res.sroa.0.0.lcssa

bb7:                                              ; preds = %start, %bb7
  %res.sroa.0.016 = phi i32 [ %1, %bb7 ], [ 1, %start ]
  %iter.sroa.0.015 = phi i32 [ %spec.select10, %bb7 ], [ %_3, %start ]
  %_0.i3.i = icmp uge i32 %iter.sroa.0.015, %n
  %not._0.i3.i = xor i1 %_0.i3.i, true
  %_0.i4.i = zext i1 %not._0.i3.i to i32
  %spec.select10 = add nuw i32 %iter.sroa.0.015, %_0.i4.i
  %1 = mul i32 %res.sroa.0.016, %iter.sroa.0.015
  %_0.i.not.i = icmp ugt i32 %spec.select10, %n
  %switch = icmp ult i32 %spec.select10, 2
  %2 = or i1 %_0.i.not.i, %switch
  %or.cond11 = select i1 %_0.i3.i, i1 true, i1 %2
  br i1 %or.cond11, label %bb8, label %bb7
}
