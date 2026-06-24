define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #4 {
start:
  %_3.not6 = icmp eq i32 %n, 0
  br i1 %_3.not6, label %bb3.thread, label %bb2.preheader

bb2.preheader:                                    ; preds = %start
  %0 = sext i32 %n to i64
  br label %bb2

bb3:                                              ; preds = %bb2
  %_8 = icmp eq i32 %2, 1
  %spec.select = select i1 %_8, i32 10, i32 %2
  br label %bb3.thread

bb3.thread:                                       ; preds = %bb3, %start
  %1 = phi i32 [ 0, %start ], [ %spec.select, %bb3 ]
  ret i32 %1

bb2:                                              ; preds = %bb2.preheader, %bb2
  %sum.sroa.0.08 = phi i32 [ %2, %bb2 ], [ 0, %bb2.preheader ]
  %n1.sroa.0.07 = phi i64 [ %3, %bb2 ], [ %0, %bb2.preheader ]
  %_6 = urem i64 %n1.sroa.0.07, 10
  %_5 = trunc nuw nsw i64 %_6 to i32
  %2 = add i32 %sum.sroa.0.08, %_5
  %3 = udiv i64 %n1.sroa.0.07, 10
  %_3.not = icmp ult i64 %n1.sroa.0.07, 10
  br i1 %_3.not, label %bb3, label %bb2
}
