define noundef range(i32 0, 2) i32 @f_gold(ptr noundef readonly captures(none) %arr1, ptr noundef readonly captures(none) %arr2, i32 noundef %m, i32 noundef %n) unnamed_addr #12 {
start:
  %_710 = icmp sgt i32 %n, 0
  br i1 %_710, label %bb3.preheader.lr.ph, label %bb14

bb3.preheader.lr.ph:                              ; preds = %start
  %_97 = icmp sgt i32 %m, 0
  %wide.trip.count = zext nneg i32 %n to i64
  br label %bb3.preheader

bb1:                                              ; preds = %bb10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond15.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond15.not, label %bb14, label %bb3.preheader

bb3.preheader:                                    ; preds = %bb3.preheader.lr.ph, %bb1
  %indvars.iv = phi i64 [ 0, %bb3.preheader.lr.ph ], [ %indvars.iv.next, %bb1 ]
  br i1 %_97, label %bb4.lr.ph, label %bb10

bb4.lr.ph:                                        ; preds = %bb3.preheader
  %_0.i6 = getelementptr inbounds nuw i32, ptr %arr2, i64 %indvars.iv
  %_12 = load i32, ptr %_0.i6, align 4, !noundef !37
  br label %bb4

bb14:                                             ; preds = %bb1, %bb10, %start
  %_0.sroa.0.0 = phi i32 [ 1, %start ], [ 1, %bb1 ], [ 0, %bb10 ]
  ret i32 %_0.sroa.0.0

bb4:                                              ; preds = %bb4.lr.ph, %bb8
  %j.sroa.0.18 = phi i32 [ 0, %bb4.lr.ph ], [ %0, %bb8 ]
  %_18 = zext nneg i32 %j.sroa.0.18 to i64
  %_0.i = getelementptr inbounds nuw i32, ptr %arr1, i64 %_18
  %_16 = load i32, ptr %_0.i, align 4, !noundef !37
  %_11 = icmp eq i32 %_12, %_16
  br i1 %_11, label %bb10, label %bb8

bb10:                                             ; preds = %bb8, %bb4, %bb3.preheader
  %j.sroa.0.1.lcssa = phi i32 [ 0, %bb3.preheader ], [ %m, %bb8 ], [ %j.sroa.0.18, %bb4 ]
  %_20 = icmp eq i32 %j.sroa.0.1.lcssa, %m
  br i1 %_20, label %bb14, label %bb1

bb8:                                              ; preds = %bb4
  %0 = add nuw nsw i32 %j.sroa.0.18, 1
  %exitcond.not = icmp eq i32 %0, %m
  br i1 %exitcond.not, label %bb10, label %bb4
}
