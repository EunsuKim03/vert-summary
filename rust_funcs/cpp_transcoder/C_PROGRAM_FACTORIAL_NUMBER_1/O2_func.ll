define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #4 {
start:
  %_0.i.not.i11 = icmp ult i32 %n, 2
  br i1 %_0.i.not.i11, label %bb4, label %bb2.i

bb2.i:                                            ; preds = %start, %bb2.i
  %res.sroa.0.013 = phi i32 [ %0, %bb2.i ], [ 1, %start ]
  %iter.sroa.0.012 = phi i32 [ %spec.select10, %bb2.i ], [ 2, %start ]
  %_0.i3.i = icmp uge i32 %iter.sroa.0.012, %n
  %not._0.i3.i = xor i1 %_0.i3.i, true
  %_0.i4.i = zext i1 %not._0.i3.i to i32
  %spec.select10 = add nuw i32 %iter.sroa.0.012, %_0.i4.i
  %0 = mul i32 %res.sroa.0.013, %iter.sroa.0.012
  %_0.i.not.i = icmp ugt i32 %spec.select10, %n
  %or.cond = select i1 %_0.i3.i, i1 true, i1 %_0.i.not.i
  br i1 %or.cond, label %bb4, label %bb2.i

bb4:                                              ; preds = %bb2.i, %start
  %res.sroa.0.0.lcssa = phi i32 [ 1, %start ], [ %0, %bb2.i ]
  ret i32 %res.sroa.0.0.lcssa
}
