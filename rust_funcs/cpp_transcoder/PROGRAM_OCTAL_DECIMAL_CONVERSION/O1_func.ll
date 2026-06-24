define noundef i32 @f_gold(i32 noundef %0) unnamed_addr #12 {
start:
  %_3.not5 = icmp eq i32 %0, 0
  br i1 %_3.not5, label %bb3, label %bb2

bb3:                                              ; preds = %bb2, %start
  %dec_value.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %2, %bb2 ]
  ret i32 %dec_value.sroa.0.0.lcssa

bb2:                                              ; preds = %start, %bb2
  %n.sroa.0.08 = phi i32 [ %1, %bb2 ], [ %0, %start ]
  %dec_value.sroa.0.07 = phi i32 [ %2, %bb2 ], [ 0, %start ]
  %base.sroa.0.06 = phi i32 [ %3, %bb2 ], [ 1, %start ]
  %last_digit = srem i32 %n.sroa.0.08, 10
  %1 = sdiv i32 %n.sroa.0.08, 10
  %_7 = mul i32 %last_digit, %base.sroa.0.06
  %2 = add i32 %_7, %dec_value.sroa.0.07
  %3 = shl i32 %base.sroa.0.06, 3
  %n.sroa.0.08.off = add i32 %n.sroa.0.08, 9
  %_3.not = icmp ult i32 %n.sroa.0.08.off, 19
  br i1 %_3.not, label %bb3, label %bb2
}
