define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #12 {
start:
  %_3.not6 = icmp eq i32 %n, 0
  br i1 %_3.not6, label %bb3, label %bb2.preheader

bb2.preheader:                                    ; preds = %start
  %0 = sext i32 %n to i64
  br label %bb2

bb3:                                              ; preds = %bb2, %start
  %sum.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %1, %bb2 ]
  %_8 = icmp eq i32 %sum.sroa.0.0.lcssa, 1
  %spec.store.select = select i1 %_8, i32 10, i32 %sum.sroa.0.0.lcssa
  ret i32 %spec.store.select

bb2:                                              ; preds = %bb2.preheader, %bb2
  %sum.sroa.0.08 = phi i32 [ %1, %bb2 ], [ 0, %bb2.preheader ]
  %n1.sroa.0.07 = phi i64 [ %2, %bb2 ], [ %0, %bb2.preheader ]
  %_6 = urem i64 %n1.sroa.0.07, 10
  %_5 = trunc nuw nsw i64 %_6 to i32
  %1 = add i32 %sum.sroa.0.08, %_5
  %2 = udiv i64 %n1.sroa.0.07, 10
  %_3.not = icmp ult i64 %n1.sroa.0.07, 10
  br i1 %_3.not, label %bb3, label %bb2
}
