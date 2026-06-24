define noundef range(i32 -9, 10) i32 @f_gold(i32 noundef %A, i32 noundef %B) unnamed_addr #4 {
start:
  %_4 = icmp eq i32 %A, %B
  br i1 %_4, label %bb10, label %bb2

bb2:                                              ; preds = %start
  %_6 = sub i32 %B, %A
  %_5 = icmp sgt i32 %_6, 4
  br i1 %_5, label %bb10, label %bb4

bb4:                                              ; preds = %bb2
  %_8 = add i32 %A, 1
  %_0.i.not.i11 = icmp sgt i32 %_8, %B
  br i1 %_0.i.not.i11, label %bb10, label %bb2.i

bb2.i:                                            ; preds = %bb4, %bb2.i
  %variable.sroa.0.013 = phi i32 [ %1, %bb2.i ], [ 1, %bb4 ]
  %iter.sroa.0.012 = phi i32 [ %spec.select10, %bb2.i ], [ %_8, %bb4 ]
  %_0.i3.i = icmp sge i32 %iter.sroa.0.012, %B
  %not._0.i3.i = xor i1 %_0.i3.i, true
  %0 = zext i1 %not._0.i3.i to i32
  %spec.select10 = add nsw i32 %iter.sroa.0.012, %0
  %_17 = sitofp i32 %iter.sroa.0.012 to float
  %_16 = frem float %_17, 1.000000e+01
  %_15 = tail call i32 @llvm.fptosi.sat.i32.f32(float %_16)
  %_14 = mul i32 %_15, %variable.sroa.0.013
  %1 = srem i32 %_14, 10
  %_0.i.not.i = icmp sgt i32 %spec.select10, %B
  %or.cond = select i1 %_0.i3.i, i1 true, i1 %_0.i.not.i
  br i1 %or.cond, label %bb10, label %bb2.i

bb10:                                             ; preds = %bb2.i, %bb4, %bb2, %start
  %_0.sroa.0.0 = phi i32 [ 1, %start ], [ 0, %bb2 ], [ 1, %bb4 ], [ %1, %bb2.i ]
  ret i32 %_0.sroa.0.0
}
