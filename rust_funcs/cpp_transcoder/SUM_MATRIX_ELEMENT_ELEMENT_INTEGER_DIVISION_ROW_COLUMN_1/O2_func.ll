define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #4 {
start:
  %_0.i.not.i23 = icmp slt i32 %n, 1
  br i1 %_0.i.not.i23, label %bb4, label %bb2.i

bb2.i:                                            ; preds = %start, %bb14
  %ans.sroa.0.026 = phi i32 [ %ans.sroa.0.1, %bb14 ], [ 0, %start ]
  %temp.sroa.0.025 = phi i32 [ %temp.sroa.0.1, %bb14 ], [ 0, %start ]
  %iter.sroa.0.024 = phi i32 [ %spec.select17, %bb14 ], [ 1, %start ]
  %_0.i3.i = icmp sge i32 %iter.sroa.0.024, %n
  %not._0.i3.i = xor i1 %_0.i3.i, true
  %0 = zext i1 %not._0.i3.i to i32
  %spec.select17 = add nuw nsw i32 %iter.sroa.0.024, %0
  %_11 = icmp slt i32 %temp.sroa.0.025, %n
  br i1 %_11, label %bb6, label %bb14

bb4:                                              ; preds = %bb14, %start
  %ans.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %ans.sroa.0.1, %bb14 ]
  ret i32 %ans.sroa.0.0.lcssa

bb14:                                             ; preds = %bb8, %bb6, %bb2.i
  %temp.sroa.0.1 = phi i32 [ %temp.sroa.0.025, %bb2.i ], [ %1, %bb6 ], [ %_16, %bb8 ]
  %ans.sroa.0.1 = phi i32 [ %ans.sroa.0.026, %bb2.i ], [ %ans.sroa.0.026, %bb6 ], [ %ans.sroa.0.3, %bb8 ]
  %_0.i.not.i = icmp sgt i32 %spec.select17, %n
  %or.cond = select i1 %_0.i3.i, i1 true, i1 %_0.i.not.i
  br i1 %or.cond, label %bb4, label %bb2.i

bb6:                                              ; preds = %bb2.i
  %1 = add nsw i32 %iter.sroa.0.024, -1
  %_1318.not = icmp sgt i32 %iter.sroa.0.024, %n
  br i1 %_1318.not, label %bb14, label %bb8

bb8:                                              ; preds = %bb6, %bb8
  %ans.sroa.0.221 = phi i32 [ %ans.sroa.0.3, %bb8 ], [ %ans.sroa.0.026, %bb6 ]
  %temp.sroa.0.220 = phi i32 [ %_16, %bb8 ], [ %1, %bb6 ]
  %num.sroa.0.019 = phi i32 [ %2, %bb8 ], [ 1, %bb6 ]
  %_16 = add i32 %temp.sroa.0.220, %iter.sroa.0.024
  %_15.not = icmp sgt i32 %_16, %n
  %_21 = sub i32 %n, %temp.sroa.0.220
  %.pn = select i1 %_15.not, i32 %_21, i32 %iter.sroa.0.024
  %_18.pn = mul i32 %.pn, %num.sroa.0.019
  %ans.sroa.0.3 = add i32 %_18.pn, %ans.sroa.0.221
  %2 = add i32 %num.sroa.0.019, 1
  %_13 = icmp slt i32 %_16, %n
  br i1 %_13, label %bb8, label %bb14
}
