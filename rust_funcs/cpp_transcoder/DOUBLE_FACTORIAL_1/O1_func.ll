define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #12 {
start:
  %_7 = uitofp i32 %n to float
  %_6 = fadd float %_7, -2.000000e+00
  %0 = tail call noundef float @llvm.floor.f32(float %_6)
  %_4 = tail call i32 @llvm.fptoui.sat.i32.f32(float %0)
  %_0.i.not.i.i5 = icmp ugt i32 %_4, %n
  %switch6 = icmp ult i32 %_4, 2
  %or.cond47 = or i1 %_0.i.not.i.i5, %switch6
  br i1 %or.cond47, label %bb12, label %bb11

bb12:                                             ; preds = %bb11, %start
  %res.sroa.0.0.lcssa = phi i32 [ 1, %start ], [ %1, %bb11 ]
  ret i32 %res.sroa.0.0.lcssa

bb11:                                             ; preds = %start, %bb11
  %_0.sroa.3.0.i.i12 = phi i32 [ %_0.sroa.3.0.i.i, %bb11 ], [ %_4, %start ]
  %or.cond11 = phi i1 [ %or.cond, %bb11 ], [ %_0.i.not.i.i5, %start ]
  %res.sroa.0.010 = phi i32 [ %1, %bb11 ], [ 1, %start ]
  %iter.sroa.8.09 = phi i8 [ %iter.sroa.8.1, %bb11 ], [ 0, %start ]
  %iter.sroa.0.08 = phi i32 [ %iter.sroa.0.1, %bb11 ], [ %_4, %start ]
  %_0.i3.i.i = icmp ult i32 %iter.sroa.0.08, %n
  %iter.sroa.8.1 = select i1 %_0.i3.i.i, i8 %iter.sroa.8.09, i8 1
  %not.or.cond = xor i1 %or.cond11, true
  %narrow = and i1 %_0.i3.i.i, %not.or.cond
  %spec.select = zext i1 %narrow to i32
  %iter.sroa.0.1 = add nuw i32 %iter.sroa.0.08, %spec.select
  %1 = mul i32 %_0.sroa.3.0.i.i12, %res.sroa.0.010
  %_10.i.i = trunc nuw i8 %iter.sroa.8.1 to i1
  %_0.i.not.i.i = icmp ugt i32 %iter.sroa.0.1, %n
  %or.cond = select i1 %_10.i.i, i1 true, i1 %_0.i.not.i.i
  %_0.sroa.3.0.i.i = select i1 %_10.i.i, i32 undef, i32 %iter.sroa.0.1
  %switch = icmp ult i32 %_0.sroa.3.0.i.i, 2
  %or.cond4 = select i1 %or.cond, i1 true, i1 %switch
  br i1 %or.cond4, label %bb12, label %bb11
}
