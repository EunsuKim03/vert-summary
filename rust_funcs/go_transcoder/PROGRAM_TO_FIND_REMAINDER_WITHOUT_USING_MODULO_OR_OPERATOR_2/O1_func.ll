define noundef i32 @f_gold(i32 noundef %0, i32 noundef %divisor) unnamed_addr #12 {
start:
  br label %bb1

bb1:                                              ; preds = %bb1, %start
  %num.sroa.0.0 = phi i32 [ %0, %start ], [ %1, %bb1 ]
  %_3.not = icmp slt i32 %num.sroa.0.0, %divisor
  %1 = sub i32 %num.sroa.0.0, %divisor
  br i1 %_3.not, label %bb3, label %bb1

bb3:                                              ; preds = %bb1
  ret i32 %num.sroa.0.0
}
