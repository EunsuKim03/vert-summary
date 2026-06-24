define noundef i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #1 {
start:
  %arr = alloca [8 x i8], align 8
  store i64 %0, ptr %arr, align 8
  %_1415 = icmp sgt i32 %n, 0
  br i1 %_1415, label %bb8.preheader, label %bb9

bb8.preheader:                                    ; preds = %start
  %1 = zext nneg i32 %n to i64
  %wide.trip.count28 = zext nneg i32 %n to i64
  %2 = add nsw i64 %wide.trip.count28, -2
  br label %bb8

bb1.loopexit:                                     ; preds = %bb4, %bb8
  %ans.sroa.0.1.lcssa = phi i32 [ %ans.sroa.0.017, %bb8 ], [ %spec.select, %bb4 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond29.not = icmp eq i64 %indvars.iv.next26, %wide.trip.count28
  br i1 %exitcond29.not, label %bb9, label %bb8

bb9:                                              ; preds = %bb1.loopexit, %start
  %ans.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %ans.sroa.0.1.lcssa, %bb1.loopexit ]
  ret i32 %ans.sroa.0.0.lcssa

bb8:                                              ; preds = %bb8.preheader, %bb1.loopexit
  %indvars.iv25 = phi i64 [ 0, %bb8.preheader ], [ %indvars.iv.next26, %bb1.loopexit ]
  %indvars.iv = phi i64 [ 1, %bb8.preheader ], [ %indvars.iv.next, %bb1.loopexit ]
  %ans.sroa.0.017 = phi i32 [ 0, %bb8.preheader ], [ %ans.sroa.0.1.lcssa, %bb1.loopexit ]
  %3 = sub i64 %2, %indvars.iv25
  %4 = sub nsw i64 1, %indvars.iv25
  %umin = tail call i64 @llvm.umin.i64(i64 %3, i64 %4)
  %5 = add nsw i64 %umin, 1
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1
  %_2112 = icmp samesign ult i64 %indvars.iv.next26, %1
  br i1 %_2112, label %bb13.lr.ph, label %bb1.loopexit

bb13.lr.ph:                                       ; preds = %bb8
  %_10 = icmp samesign ult i64 %indvars.iv25, 2
  %6 = getelementptr inbounds nuw i32, ptr %arr, i64 %indvars.iv25
  br i1 %_10, label %bb13.preheader, label %panic

bb13.preheader:                                   ; preds = %bb13.lr.ph
  %min.iters.check = icmp samesign ult i64 %5, 9
  br i1 %min.iters.check, label %bb13, label %vector.body

vector.body:                                      ; preds = %bb13.preheader, %vector.body
  br label %vector.body, !llvm.loop !1031

bb13:                                             ; preds = %bb13.preheader, %bb4
  %indvars.iv21 = phi i64 [ %indvars.iv.next22, %bb4 ], [ %indvars.iv, %bb13.preheader ]
  %ans.sroa.0.113 = phi i32 [ %spec.select, %bb4 ], [ %ans.sroa.0.017, %bb13.preheader ]
  %exitcond.not = icmp eq i64 %indvars.iv21, 2
  br i1 %exitcond.not, label %panic2, label %bb4

panic:                                            ; preds = %bb13.lr.ph
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %indvars.iv25, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_6e0629d51fff75651f5197888da6593c) #18
  unreachable

bb4:                                              ; preds = %bb13
  %_8 = load i32, ptr %6, align 4, !noundef !23
  %7 = getelementptr inbounds nuw i32, ptr %arr, i64 %indvars.iv21
  %_11 = load i32, ptr %7, align 4, !noundef !23
  %_7 = icmp eq i32 %_8, %_11
  %8 = zext i1 %_7 to i32
  %spec.select = add i32 %ans.sroa.0.113, %8
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1
  %exitcond24.not = icmp eq i64 %indvars.iv.next22, %wide.trip.count28
  br i1 %exitcond24.not, label %bb1.loopexit, label %bb13, !llvm.loop !1032

panic2:                                           ; preds = %bb13
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_b8c5cec56222a5c67ed2a4a314465a63) #18
  unreachable
}
