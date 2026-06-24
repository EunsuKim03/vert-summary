define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #4 {
start:
  %_2 = icmp eq i32 %n, 1
  br i1 %_2, label %bb7, label %bb3.preheader

bb3.preheader:                                    ; preds = %start
  %_0.i.not.i11 = icmp slt i32 %n, 2
  br i1 %_0.i.not.i11, label %bb6, label %bb2.i

bb2.i:                                            ; preds = %bb3.preheader, %bb2.i
  %count_b.sroa.0.014 = phi i32 [ %count_s.sroa.0.013, %bb2.i ], [ 1, %bb3.preheader ]
  %count_s.sroa.0.013 = phi i32 [ %1, %bb2.i ], [ 1, %bb3.preheader ]
  %iter.sroa.0.012 = phi i32 [ %spec.select10, %bb2.i ], [ 2, %bb3.preheader ]
  %_0.i3.i = icmp sge i32 %iter.sroa.0.012, %n
  %not._0.i3.i = xor i1 %_0.i3.i, true
  %0 = zext i1 %not._0.i3.i to i32
  %spec.select10 = add nuw nsw i32 %iter.sroa.0.012, %0
  %1 = add i32 %count_b.sroa.0.014, %count_s.sroa.0.013
  %_0.i.not.i = icmp sgt i32 %spec.select10, %n
  %or.cond = select i1 %_0.i3.i, i1 true, i1 %_0.i.not.i
  br i1 %or.cond, label %bb6.loopexit, label %bb2.i

bb6.loopexit:                                     ; preds = %bb2.i
  %2 = add i32 %count_s.sroa.0.013, %1
  br label %bb6

bb6:                                              ; preds = %bb6.loopexit, %bb3.preheader
  %result = phi i32 [ 2, %bb3.preheader ], [ %2, %bb6.loopexit ]
  %3 = mul i32 %result, %result
  br label %bb7

bb7:                                              ; preds = %start, %bb6
  %_0.sroa.0.0 = phi i32 [ %3, %bb6 ], [ 4, %start ]
  ret i32 %_0.sroa.0.0
}
