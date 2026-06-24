define noundef i32 @f_gold(i32 noundef %n, i32 noundef %k) unnamed_addr #6 {
start:
  %_3 = icmp slt i32 %k, 1
  br i1 %_3, label %bb3, label %bb2

bb2:                                              ; preds = %start
  %_6 = add nuw i32 %k, 31
  %0 = and i32 %_6, 31
  %_5 = shl nuw i32 1, %0
  %_4 = xor i32 %_5, -1
  %1 = and i32 %n, %_4
  br label %bb3

bb3:                                              ; preds = %start, %bb2
  %_0.sroa.0.0 = phi i32 [ %1, %bb2 ], [ %n, %start ]
  ret i32 %_0.sroa.0.0
}
