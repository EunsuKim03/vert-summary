define noundef range(i32 -1, 536870912) i32 @f_gold(i32 noundef %n) unnamed_addr #6 {
start:
  %_2 = icmp slt i32 %n, 4
  br i1 %_2, label %bb17, label %bb2

bb2:                                              ; preds = %start
  %rem = and i32 %n, 3
  switch i32 %rem, label %default.unreachable3 [
    i32 0, label %bb3
    i32 1, label %bb5
    i32 2, label %bb9
    i32 3, label %bb11
  ]

bb3:                                              ; preds = %bb2
  %0 = lshr i32 %n, 2
  br label %bb17

bb5:                                              ; preds = %bb2
  %_6 = icmp slt i32 %n, 9
  br i1 %_6, label %bb17, label %bb8

bb9:                                              ; preds = %bb2
  %_11 = add nsw i32 %n, -6
  %_10 = sdiv i32 %_11, 4
  %1 = add nuw nsw i32 %_10, 1
  br label %bb17

default.unreachable3:                             ; preds = %bb2
  unreachable

bb11:                                             ; preds = %bb2
  %_13 = icmp slt i32 %n, 15
  br i1 %_13, label %bb17, label %bb14

bb17:                                             ; preds = %bb5, %bb11, %start, %bb8, %bb14, %bb3, %bb9
  %_0.sroa.0.0 = phi i32 [ %0, %bb3 ], [ %3, %bb8 ], [ %1, %bb9 ], [ %2, %bb14 ], [ -1, %start ], [ -1, %bb11 ], [ -1, %bb5 ]
  ret i32 %_0.sroa.0.0

bb14:                                             ; preds = %bb11
  %_15 = add nsw i32 %n, -15
  %_141 = lshr i32 %_15, 2
  %2 = add nuw nsw i32 %_141, 2
  br label %bb17

bb8:                                              ; preds = %bb5
  %_8 = add nsw i32 %n, -9
  %_72 = lshr i32 %_8, 2
  %3 = add nuw nsw i32 %_72, 1
  br label %bb17
}
