define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #12 {
start:
  %_3.not4 = icmp ult i32 %n, 2
  br i1 %_3.not4, label %bb3, label %bb2

bb3:                                              ; preds = %bb2, %start
  %res.sroa.0.0.lcssa = phi i32 [ 1, %start ], [ %0, %bb2 ]
  ret i32 %res.sroa.0.0.lcssa

bb2:                                              ; preds = %start, %bb2
  %res.sroa.0.06 = phi i32 [ %0, %bb2 ], [ 1, %start ]
  %i.sroa.0.05 = phi i32 [ %1, %bb2 ], [ 2, %start ]
  %0 = mul i32 %res.sroa.0.06, %i.sroa.0.05
  %1 = add i32 %i.sroa.0.05, 1
  %_3.not = icmp ugt i32 %1, %n
  br i1 %_3.not, label %bb3, label %bb2
}
