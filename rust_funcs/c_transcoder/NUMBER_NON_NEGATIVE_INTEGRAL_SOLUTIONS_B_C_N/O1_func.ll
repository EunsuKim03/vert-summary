define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #12 {
start:
  %_0.i.not.i.i57 = icmp slt i32 %n, 0
  br i1 %_0.i.not.i.i57, label %bb7, label %bb6.lr.ph

bb6.lr.ph:                                        ; preds = %start
  %.not = icmp eq i32 %n, 0
  %iter.sroa.7.162 = zext i1 %.not to i8
  %_0.i3.i.i58 = icmp ne i32 %n, 0
  %spec.select3361 = zext i1 %_0.i3.i.i58 to i32
  br label %bb6

bb3.loopexit:                                     ; preds = %bb10.loopexit, %bb6
  %result.sroa.0.1.lcssa = phi i32 [ %result.sroa.0.063, %bb6 ], [ %result.sroa.0.2.lcssa, %bb10.loopexit ]
  %_10.i.i = trunc nuw i8 %iter.sroa.7.165 to i1
  %_0.i.not.i.i = icmp sgt i32 %iter.sroa.0.164, %n
  %or.cond = select i1 %_10.i.i, i1 true, i1 %_0.i.not.i.i
  %_0.i3.i.i = icmp slt i32 %iter.sroa.0.164, %n
  %not.or.cond = xor i1 %or.cond, true
  %narrow = select i1 %not.or.cond, i1 %_0.i3.i.i, i1 false
  %spec.select33 = zext i1 %narrow to i32
  %iter.sroa.0.1 = add nuw nsw i32 %iter.sroa.0.164, %spec.select33
  %0 = select i1 %or.cond, i1 true, i1 %_0.i3.i.i
  %iter.sroa.7.1 = select i1 %0, i8 %iter.sroa.7.165, i8 1
  %_0.sroa.3.0.i.i = select i1 %_10.i.i, i32 undef, i32 %iter.sroa.0.164
  br i1 %or.cond, label %bb7, label %bb6

bb6:                                              ; preds = %bb6.lr.ph, %bb3.loopexit
  %_0.sroa.3.0.i.i66 = phi i32 [ 0, %bb6.lr.ph ], [ %_0.sroa.3.0.i.i, %bb3.loopexit ]
  %iter.sroa.7.165 = phi i8 [ %iter.sroa.7.162, %bb6.lr.ph ], [ %iter.sroa.7.1, %bb3.loopexit ]
  %iter.sroa.0.164 = phi i32 [ %spec.select3361, %bb6.lr.ph ], [ %iter.sroa.0.1, %bb3.loopexit ]
  %result.sroa.0.063 = phi i32 [ 0, %bb6.lr.ph ], [ %result.sroa.0.1.lcssa, %bb3.loopexit ]
  %_11 = sub i32 %n, %_0.sroa.3.0.i.i66
  %_0.i.not.i.i1246 = icmp slt i32 %_11, 0
  br i1 %_0.i.not.i.i1246, label %bb3.loopexit, label %bb12.lr.ph

bb12.lr.ph:                                       ; preds = %bb6
  %.not68 = icmp eq i32 %n, %_0.sroa.3.0.i.i66
  %iter1.sroa.7.151 = zext i1 %.not68 to i8
  %_0.i3.i.i1447 = icmp ne i32 %n, %_0.sroa.3.0.i.i66
  %spec.select3550 = zext i1 %_0.i3.i.i1447 to i32
  br label %bb12

bb7:                                              ; preds = %bb3.loopexit, %start
  %result.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %result.sroa.0.1.lcssa, %bb3.loopexit ]
  ret i32 %result.sroa.0.0.lcssa

bb10.loopexit:                                    ; preds = %bb18, %bb12
  %result.sroa.0.2.lcssa = phi i32 [ %result.sroa.0.153, %bb12 ], [ %spec.select, %bb18 ]
  %_10.i.i7 = trunc nuw i8 %iter1.sroa.7.155 to i1
  %_0.i.not.i.i12 = icmp sgt i32 %iter1.sroa.0.154, %_11
  %or.cond39 = select i1 %_10.i.i7, i1 true, i1 %_0.i.not.i.i12
  %_0.i3.i.i14 = icmp slt i32 %iter1.sroa.0.154, %_11
  %not.or.cond39 = xor i1 %or.cond39, true
  %narrow41 = select i1 %not.or.cond39, i1 %_0.i3.i.i14, i1 false
  %spec.select35 = zext i1 %narrow41 to i32
  %iter1.sroa.0.1 = add nuw nsw i32 %iter1.sroa.0.154, %spec.select35
  %1 = select i1 %or.cond39, i1 true, i1 %_0.i3.i.i14
  %iter1.sroa.7.1 = select i1 %1, i8 %iter1.sroa.7.155, i8 1
  br i1 %or.cond39, label %bb3.loopexit, label %bb12

bb12:                                             ; preds = %bb12.lr.ph, %bb10.loopexit
  %iter1.sroa.7.155 = phi i8 [ %iter1.sroa.7.151, %bb12.lr.ph ], [ %iter1.sroa.7.1, %bb10.loopexit ]
  %iter1.sroa.0.154 = phi i32 [ %spec.select3550, %bb12.lr.ph ], [ %iter1.sroa.0.1, %bb10.loopexit ]
  %result.sroa.0.153 = phi i32 [ %result.sroa.0.063, %bb12.lr.ph ], [ %result.sroa.0.2.lcssa, %bb10.loopexit ]
  %iter1.sroa.0.052 = phi i32 [ 0, %bb12.lr.ph ], [ %iter1.sroa.0.154, %bb10.loopexit ]
  %_19 = sub i32 %_11, %iter1.sroa.0.052
  %_27 = add i32 %iter1.sroa.0.052, %_0.sroa.3.0.i.i66
  %_0.i.not.i.i2542 = icmp slt i32 %_19, 0
  br i1 %_0.i.not.i.i2542, label %bb10.loopexit, label %bb18

bb18:                                             ; preds = %bb12, %bb18
  %result.sroa.0.245 = phi i32 [ %spec.select, %bb18 ], [ %result.sroa.0.153, %bb12 ]
  %iter2.sroa.7.044 = phi i8 [ %spec.select38, %bb18 ], [ 0, %bb12 ]
  %iter2.sroa.0.043 = phi i32 [ %spec.select37, %bb18 ], [ 0, %bb12 ]
  %_0.i3.i.i27 = icmp slt i32 %iter2.sroa.0.043, %_19
  %spec.select38 = select i1 %_0.i3.i.i27, i8 %iter2.sroa.7.044, i8 1
  %2 = zext i1 %_0.i3.i.i27 to i32
  %spec.select37 = add nuw nsw i32 %iter2.sroa.0.043, %2
  %_26 = add i32 %_27, %iter2.sroa.0.043
  %_25 = icmp eq i32 %_26, %n
  %3 = zext i1 %_25 to i32
  %spec.select = add i32 %result.sroa.0.245, %3
  %_10.i.i20 = trunc nuw i8 %spec.select38 to i1
  %_0.i.not.i.i25 = icmp sgt i32 %spec.select37, %_19
  %or.cond40 = select i1 %_10.i.i20, i1 true, i1 %_0.i.not.i.i25
  br i1 %or.cond40, label %bb10.loopexit, label %bb18
}
