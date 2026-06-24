define noundef i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #12 {
start:
  %_15 = sitofp i32 %n to float
  %_0.i.not.i.i3 = icmp slt i32 %n, 1
  br i1 %_0.i.not.i.i3, label %bb9, label %bb6

bb3:                                              ; preds = %bb6
  %_0.i3.i.i = icmp slt i32 %iter.sroa.0.04, %n
  %spec.select2 = select i1 %_0.i3.i.i, i8 %iter.sroa.7.05, i8 1
  %1 = zext i1 %_0.i3.i.i to i32
  %spec.select = add nuw nsw i32 %iter.sroa.0.04, %1
  %_10.i.i = trunc nuw i8 %spec.select2 to i1
  %_0.i.not.i.i = icmp sgt i32 %spec.select, %n
  %or.cond = select i1 %_10.i.i, i1 true, i1 %_0.i.not.i.i
  br i1 %or.cond, label %bb9, label %bb6

bb6:                                              ; preds = %start, %bb3
  %result.sroa.0.06 = phi i32 [ %iter.sroa.0.04, %bb3 ], [ 1, %start ]
  %iter.sroa.7.05 = phi i8 [ %spec.select2, %bb3 ], [ 0, %start ]
  %iter.sroa.0.04 = phi i32 [ %spec.select, %bb3 ], [ 1, %start ]
  %_13 = add nuw i32 %iter.sroa.0.04, 1
  %_12 = mul i32 %_13, %iter.sroa.0.04
  %_11 = sitofp i32 %_12 to float
  %y = fmul float %_11, 5.000000e-01
  %_14 = fcmp olt float %y, %_15
  br i1 %_14, label %bb3, label %bb9

bb9:                                              ; preds = %bb3, %bb6, %start
  %result.sroa.0.0.lcssa = phi i32 [ 1, %start ], [ %iter.sroa.0.04, %bb3 ], [ %result.sroa.0.06, %bb6 ]
  ret i32 %result.sroa.0.0.lcssa
}
