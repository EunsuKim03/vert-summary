define noundef i32 @f_gold(i32 noundef %0) unnamed_addr #4 {
start:
  %_35 = icmp sgt i32 %0, 0
  br i1 %_35, label %bb2, label %bb3

bb3:                                              ; preds = %bb2, %start
  %dec_value.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %2, %bb2 ]
  ret i32 %dec_value.sroa.0.0.lcssa

bb2:                                              ; preds = %start, %bb2
  %n.sroa.0.08 = phi i32 [ %1, %bb2 ], [ %0, %start ]
  %dec_value.sroa.0.07 = phi i32 [ %2, %bb2 ], [ 0, %start ]
  %base.sroa.0.06 = phi i32 [ %3, %bb2 ], [ 1, %start ]
  %last_digit = urem i32 %n.sroa.0.08, 10
  %1 = udiv i32 %n.sroa.0.08, 10
  %_8 = mul i32 %last_digit, %base.sroa.0.06
  %2 = add i32 %_8, %dec_value.sroa.0.07
  %3 = shl i32 %base.sroa.0.06, 3
  %_3.not = icmp samesign ult i32 %n.sroa.0.08, 10
  br i1 %_3.not, label %bb3, label %bb2
}
