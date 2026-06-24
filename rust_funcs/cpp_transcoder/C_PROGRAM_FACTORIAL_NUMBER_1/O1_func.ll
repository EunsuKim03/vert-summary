define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #12 {
start:
  %_0.i.not.i.i4 = icmp ult i32 %n, 2
  br i1 %_0.i.not.i.i4, label %bb7, label %bb6

bb6:                                              ; preds = %start, %bb6
  %res.sroa.0.07 = phi i32 [ %0, %bb6 ], [ 1, %start ]
  %iter.sroa.7.06 = phi i8 [ %spec.select3, %bb6 ], [ 0, %start ]
  %iter.sroa.0.05 = phi i32 [ %spec.select, %bb6 ], [ 2, %start ]
  %_0.i3.i.i = icmp ult i32 %iter.sroa.0.05, %n
  %spec.select3 = select i1 %_0.i3.i.i, i8 %iter.sroa.7.06, i8 1
  %_0.i4.i.i = zext i1 %_0.i3.i.i to i32
  %spec.select = add nuw i32 %iter.sroa.0.05, %_0.i4.i.i
  %0 = mul i32 %iter.sroa.0.05, %res.sroa.0.07
  %_10.i.i = trunc nuw i8 %spec.select3 to i1
  %_0.i.not.i.i = icmp ugt i32 %spec.select, %n
  %or.cond = select i1 %_10.i.i, i1 true, i1 %_0.i.not.i.i
  br i1 %or.cond, label %bb7, label %bb6

bb7:                                              ; preds = %bb6, %start
  %res.sroa.0.0.lcssa = phi i32 [ 1, %start ], [ %0, %bb6 ]
  ret i32 %res.sroa.0.0.lcssa
}
