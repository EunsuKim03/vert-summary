define noundef range(i32 0, 2) i32 @f_gold(i32 noundef %num) unnamed_addr #12 {
start:
  %_2 = icmp slt i32 %num, 0
  br i1 %_2, label %bb8, label %bb4

bb3:                                              ; preds = %bb4
  %0 = add i32 %n.sroa.0.04, 1
  %_5.not = icmp sgt i32 %1, %num
  br i1 %_5.not, label %bb8, label %bb4

bb4:                                              ; preds = %start, %bb3
  %sum.sroa.0.05 = phi i32 [ %1, %bb3 ], [ 0, %start ]
  %n.sroa.0.04 = phi i32 [ %0, %bb3 ], [ 1, %start ]
  %1 = add i32 %sum.sroa.0.05, %n.sroa.0.04
  %_8 = icmp eq i32 %1, %num
  br i1 %_8, label %bb8, label %bb3

bb8:                                              ; preds = %bb4, %bb3, %start
  %_0.sroa.0.0 = phi i32 [ 0, %start ], [ 0, %bb3 ], [ 1, %bb4 ]
  ret i32 %_0.sroa.0.0
}
