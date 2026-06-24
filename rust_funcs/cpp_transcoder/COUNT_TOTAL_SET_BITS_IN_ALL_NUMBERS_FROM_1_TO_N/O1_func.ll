define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #12 {
start:
  %_3.not20 = icmp slt i32 %n, 1
  br i1 %_3.not20, label %bb13, label %bb5.preheader

bb5.preheader:                                    ; preds = %start, %bb9
  %_423 = phi i32 [ %_4, %bb9 ], [ 1, %start ]
  %ans.sroa.0.022 = phi i32 [ %0, %bb9 ], [ 0, %start ]
  %i.sroa.0.021 = phi i32 [ %4, %bb9 ], [ 0, %start ]
  br label %bb8

bb13:                                             ; preds = %bb9, %start
  %ans.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %0, %bb9 ]
  ret i32 %ans.sroa.0.0.lcssa

bb8:                                              ; preds = %bb5.preheader, %bb8
  %iter.sroa.7.119 = phi i8 [ %iter.sroa.7.1, %bb8 ], [ 0, %bb5.preheader ]
  %iter.sroa.0.118 = phi i32 [ %iter.sroa.0.1, %bb8 ], [ 1, %bb5.preheader ]
  %ans.sroa.0.117 = phi i32 [ %0, %bb8 ], [ %ans.sroa.0.022, %bb5.preheader ]
  %k.sroa.0.016 = phi i32 [ %k.sroa.0.1, %bb8 ], [ 0, %bb5.preheader ]
  %change.sroa.0.015 = phi i32 [ %change.sroa.0.1, %bb8 ], [ %_423, %bb5.preheader ]
  %0 = add i32 %ans.sroa.0.117, %k.sroa.0.016
  %_17 = icmp eq i32 %change.sroa.0.015, 1
  %1 = add i32 %change.sroa.0.015, -1
  %change.sroa.0.1 = select i1 %_17, i32 %_423, i32 %1
  %2 = sext i1 %_17 to i32
  %k.sroa.0.1 = xor i32 %k.sroa.0.016, %2
  %_10.i.i = trunc nuw i8 %iter.sroa.7.119 to i1
  %_0.i.not.i.i = icmp sgt i32 %iter.sroa.0.118, %n
  %or.cond = select i1 %_10.i.i, i1 true, i1 %_0.i.not.i.i
  %_0.i3.i.i = icmp slt i32 %iter.sroa.0.118, %n
  %not.or.cond = xor i1 %or.cond, true
  %narrow = select i1 %not.or.cond, i1 %_0.i3.i.i, i1 false
  %spec.select = zext i1 %narrow to i32
  %iter.sroa.0.1 = add nuw nsw i32 %iter.sroa.0.118, %spec.select
  %3 = select i1 %or.cond, i1 true, i1 %_0.i3.i.i
  %iter.sroa.7.1 = select i1 %3, i8 %iter.sroa.7.119, i8 1
  br i1 %or.cond, label %bb9, label %bb8

bb9:                                              ; preds = %bb8
  %4 = add i32 %i.sroa.0.021, 1
  %5 = and i32 %4, 31
  %_4 = shl nuw i32 1, %5
  %_3.not = icmp sgt i32 %_4, %n
  br i1 %_3.not, label %bb13, label %bb5.preheader
}
