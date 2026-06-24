define noundef i32 @f_gold(i32 noundef %a, i32 noundef %b) unnamed_addr #4 {
start:
  %_0.i.not.i40 = icmp sgt i32 %a, %b
  br i1 %_0.i.not.i40, label %bb4, label %bb2.i

bb1.loopexit:                                     ; preds = %bb2.i11, %bb2.i
  %cnt.sroa.0.1.lcssa = phi i32 [ %cnt.sroa.0.042, %bb2.i ], [ %spec.select, %bb2.i11 ]
  %_0.i.not.i = icmp sgt i32 %spec.select33, %b
  %or.cond = select i1 %_0.i3.i, i1 true, i1 %_0.i.not.i
  br i1 %or.cond, label %bb4, label %bb2.i

bb2.i:                                            ; preds = %start, %bb1.loopexit
  %cnt.sroa.0.042 = phi i32 [ %cnt.sroa.0.1.lcssa, %bb1.loopexit ], [ 0, %start ]
  %iter.sroa.0.041 = phi i32 [ %spec.select33, %bb1.loopexit ], [ %a, %start ]
  %_0.i3.i = icmp sge i32 %iter.sroa.0.041, %b
  %not._0.i3.i = xor i1 %_0.i3.i, true
  %0 = zext i1 %not._0.i3.i to i32
  %spec.select33 = add nsw i32 %iter.sroa.0.041, %0
  %_12 = sitofp i32 %iter.sroa.0.041 to float
  %1 = tail call float @llvm.sqrt.f32(float %_12)
  %_10 = tail call i32 @llvm.fptosi.sat.i32.f32(float %1)
  %_0.i.not.i1037 = icmp slt i32 %_10, 1
  br i1 %_0.i.not.i1037, label %bb1.loopexit, label %bb2.i11

bb4:                                              ; preds = %bb1.loopexit, %start
  %cnt.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %cnt.sroa.0.1.lcssa, %bb1.loopexit ]
  ret i32 %cnt.sroa.0.0.lcssa

bb2.i11:                                          ; preds = %bb2.i, %bb2.i11
  %cnt.sroa.0.139 = phi i32 [ %spec.select, %bb2.i11 ], [ %cnt.sroa.0.042, %bb2.i ]
  %iter1.sroa.0.038 = phi i32 [ %spec.select34, %bb2.i11 ], [ 1, %bb2.i ]
  %_0.i3.i12 = icmp sge i32 %iter1.sroa.0.038, %_10
  %not._0.i3.i12 = xor i1 %_0.i3.i12, true
  %2 = zext i1 %not._0.i3.i12 to i32
  %spec.select34 = add nuw nsw i32 %iter1.sroa.0.038, %2
  %_19 = mul i32 %iter1.sroa.0.038, %iter1.sroa.0.038
  %_18 = icmp eq i32 %_19, %iter.sroa.0.041
  %3 = zext i1 %_18 to i32
  %spec.select = add i32 %cnt.sroa.0.139, %3
  %_0.i.not.i10 = icmp sgt i32 %spec.select34, %_10
  %or.cond36 = select i1 %_0.i3.i12, i1 true, i1 %_0.i.not.i10
  br i1 %or.cond36, label %bb1.loopexit, label %bb2.i11
}
