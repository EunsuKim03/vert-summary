define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #4 {
start:
  %_3.not20 = icmp slt i32 %n, 1
  br i1 %_3.not20, label %bb10, label %bb2.i.preheader

bb2.i.preheader:                                  ; preds = %start, %bb6
  %_423 = phi i32 [ %_4, %bb6 ], [ 1, %start ]
  %ans.sroa.0.022 = phi i32 [ %1, %bb6 ], [ 0, %start ]
  %i.sroa.0.021 = phi i32 [ %4, %bb6 ], [ 0, %start ]
  br label %bb2.i

bb10:                                             ; preds = %bb6, %start
  %ans.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %1, %bb6 ]
  ret i32 %ans.sroa.0.0.lcssa

bb2.i:                                            ; preds = %bb2.i.preheader, %bb2.i
  %ans.sroa.0.119 = phi i32 [ %1, %bb2.i ], [ %ans.sroa.0.022, %bb2.i.preheader ]
  %k.sroa.0.018 = phi i32 [ %k.sroa.0.1, %bb2.i ], [ 0, %bb2.i.preheader ]
  %change.sroa.0.017 = phi i32 [ %change.sroa.0.1, %bb2.i ], [ %_423, %bb2.i.preheader ]
  %iter.sroa.0.016 = phi i32 [ %spec.select14, %bb2.i ], [ 0, %bb2.i.preheader ]
  %_0.i3.i = icmp sge i32 %iter.sroa.0.016, %n
  %not._0.i3.i = xor i1 %_0.i3.i, true
  %0 = zext i1 %not._0.i3.i to i32
  %spec.select14 = add nuw nsw i32 %iter.sroa.0.016, %0
  %1 = add i32 %ans.sroa.0.119, %k.sroa.0.018
  %_16 = icmp eq i32 %change.sroa.0.017, 1
  %2 = add i32 %change.sroa.0.017, -1
  %change.sroa.0.1 = select i1 %_16, i32 %_423, i32 %2
  %3 = sext i1 %_16 to i32
  %k.sroa.0.1 = xor i32 %k.sroa.0.018, %3
  %_0.i.not.i = icmp sgt i32 %spec.select14, %n
  %or.cond = select i1 %_0.i3.i, i1 true, i1 %_0.i.not.i
  br i1 %or.cond, label %bb6, label %bb2.i

bb6:                                              ; preds = %bb2.i
  %4 = add i32 %i.sroa.0.021, 1
  %5 = and i32 %4, 31
  %_4 = shl nuw i32 1, %5
  %_3.not = icmp sgt i32 %_4, %n
  br i1 %_3.not, label %bb10, label %bb2.i.preheader
}
