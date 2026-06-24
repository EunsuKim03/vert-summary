define noundef range(i32 0, 2) i32 @f_gold(ptr noundef readonly captures(none) %arr1, ptr noundef readonly captures(none) %arr2, i32 noundef %m, i32 noundef %n) unnamed_addr #4 {
start:
  %_79 = icmp sgt i32 %n, 0
  br i1 %_79, label %bb3.preheader.lr.ph, label %bb12

bb3.preheader.lr.ph:                              ; preds = %start
  %_96 = icmp sgt i32 %m, 0
  %wide.trip.count17 = zext nneg i32 %n to i64
  %wide.trip.count = zext nneg i32 %m to i64
  br label %bb3.preheader

bb1:                                              ; preds = %bb8
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14, 1
  %exitcond18.not = icmp eq i64 %indvars.iv.next15, %wide.trip.count17
  br i1 %exitcond18.not, label %bb12, label %bb3.preheader

bb3.preheader:                                    ; preds = %bb3.preheader.lr.ph, %bb1
  %indvars.iv14 = phi i64 [ 0, %bb3.preheader.lr.ph ], [ %indvars.iv.next15, %bb1 ]
  br i1 %_96, label %bb4.lr.ph, label %bb8

bb4.lr.ph:                                        ; preds = %bb3.preheader
  %_13 = getelementptr inbounds nuw i32, ptr %arr2, i64 %indvars.iv14
  %_12 = load i32, ptr %_13, align 4, !noundef !23
  br label %bb4

bb12:                                             ; preds = %bb1, %bb8, %bb6, %start
  %_0.sroa.0.0 = phi i32 [ 1, %start ], [ 0, %bb6 ], [ 0, %bb8 ], [ 1, %bb1 ]
  ret i32 %_0.sroa.0.0

bb4:                                              ; preds = %bb4.lr.ph, %bb6
  %indvars.iv = phi i64 [ 0, %bb4.lr.ph ], [ %indvars.iv.next, %bb6 ]
  %_17 = getelementptr inbounds nuw i32, ptr %arr1, i64 %indvars.iv
  %_16 = load i32, ptr %_17, align 4, !noundef !23
  %_11 = icmp eq i32 %_12, %_16
  br i1 %_11, label %bb8.loopexit, label %bb6

bb8.loopexit:                                     ; preds = %bb4
  %0 = trunc nuw nsw i64 %indvars.iv to i32
  br label %bb8

bb8:                                              ; preds = %bb8.loopexit, %bb3.preheader
  %j.sroa.0.1.lcssa = phi i32 [ 0, %bb3.preheader ], [ %0, %bb8.loopexit ]
  %_20 = icmp eq i32 %j.sroa.0.1.lcssa, %m
  br i1 %_20, label %bb12, label %bb1

bb6:                                              ; preds = %bb4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb12, label %bb4
}
