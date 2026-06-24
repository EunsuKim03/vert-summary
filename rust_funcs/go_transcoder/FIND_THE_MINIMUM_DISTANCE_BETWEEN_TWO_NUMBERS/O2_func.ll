define noundef i32 @f_gold(i64 %0, i32 noundef %n, i32 noundef %x, i32 noundef %y) unnamed_addr #1 {
start:
  %arr = alloca [8 x i8], align 8
  store i64 %0, ptr %arr, align 8
  %_2623 = icmp sgt i32 %n, 0
  br i1 %_2623, label %bb17.preheader, label %bb18

bb17.preheader:                                   ; preds = %start
  %1 = zext nneg i32 %n to i64
  %wide.trip.count36 = zext nneg i32 %n to i64
  br label %bb17

bb1.loopexit:                                     ; preds = %bb16, %bb17
  %min_dist.sroa.0.1.lcssa = phi i32 [ %min_dist.sroa.0.025, %bb17 ], [ %min_dist.sroa.0.2, %bb16 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond37.not = icmp eq i64 %indvars.iv.next34, %wide.trip.count36
  br i1 %exitcond37.not, label %bb18, label %bb17

bb18:                                             ; preds = %bb1.loopexit, %start
  %min_dist.sroa.0.0.lcssa = phi i32 [ 2147483647, %start ], [ %min_dist.sroa.0.1.lcssa, %bb1.loopexit ]
  ret i32 %min_dist.sroa.0.0.lcssa

bb17:                                             ; preds = %bb17.preheader, %bb1.loopexit
  %indvars.iv33 = phi i64 [ 0, %bb17.preheader ], [ %indvars.iv.next34, %bb1.loopexit ]
  %indvars.iv = phi i64 [ 1, %bb17.preheader ], [ %indvars.iv.next, %bb1.loopexit ]
  %min_dist.sroa.0.025 = phi i32 [ 2147483647, %bb17.preheader ], [ %min_dist.sroa.0.1.lcssa, %bb1.loopexit ]
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1
  %_3320 = icmp samesign ult i64 %indvars.iv.next34, %1
  br i1 %_3320, label %bb22.lr.ph, label %bb1.loopexit

bb22.lr.ph:                                       ; preds = %bb17
  %_12 = icmp samesign ult i64 %indvars.iv33, 2
  br i1 %_12, label %bb22.lr.ph.split, label %panic

bb22.lr.ph.split:                                 ; preds = %bb22.lr.ph
  %2 = getelementptr inbounds nuw i32, ptr %arr, i64 %indvars.iv33
  %_10 = load i32, ptr %2, align 4, !noundef !23
  %_9 = icmp eq i32 %x, %_10
  %_17 = icmp eq i32 %y, %_10
  br label %bb22

bb22:                                             ; preds = %bb22.lr.ph.split, %bb16
  %indvars.iv29 = phi i64 [ %indvars.iv, %bb22.lr.ph.split ], [ %indvars.iv.next30, %bb16 ]
  %min_dist.sroa.0.121 = phi i32 [ %min_dist.sroa.0.025, %bb22.lr.ph.split ], [ %min_dist.sroa.0.2, %bb16 ]
  br i1 %_9, label %bb4, label %bb9

panic:                                            ; preds = %bb22.lr.ph
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %indvars.iv33, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_c2071aa1ff9f1b838d988e4a0052691f) #18
  unreachable

bb4:                                              ; preds = %bb22
  %_16 = icmp samesign ult i64 %indvars.iv29, 2
  br i1 %_16, label %bb5, label %panic2

bb5:                                              ; preds = %bb4
  %3 = getelementptr inbounds nuw i32, ptr %arr, i64 %indvars.iv29
  %_14 = load i32, ptr %3, align 4, !noundef !23
  %_13 = icmp eq i32 %y, %_14
  br i1 %_13, label %bb26, label %bb9

panic2:                                           ; preds = %bb4
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %indvars.iv29, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_8798bd57826b2339a64ed5e5ec322066) #18
  unreachable

bb9:                                              ; preds = %bb22, %bb5
  br i1 %_17, label %bb10, label %bb16

bb16:                                             ; preds = %bb26, %bb11, %bb9
  %min_dist.sroa.0.2 = phi i32 [ %min_dist.sroa.0.121, %bb11 ], [ %min_dist.sroa.0.121, %bb9 ], [ %spec.select10, %bb26 ]
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next30, %wide.trip.count36
  br i1 %exitcond.not, label %bb1.loopexit, label %bb22

bb10:                                             ; preds = %bb9
  %_21 = icmp samesign ult i64 %indvars.iv29, 2
  br i1 %_21, label %bb11, label %panic4

bb11:                                             ; preds = %bb10
  %4 = getelementptr inbounds nuw i32, ptr %arr, i64 %indvars.iv29
  %_19 = load i32, ptr %4, align 4, !noundef !23
  %_18 = icmp eq i32 %x, %_19
  br i1 %_18, label %bb26, label %bb16

panic4:                                           ; preds = %bb10
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %indvars.iv29, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_9d5f5848fc9fa2fa67f68fd8e589b28f) #18
  unreachable

bb26:                                             ; preds = %bb5, %bb11
  %.neg = sub nsw i64 %indvars.iv29, %indvars.iv33
  %5 = trunc nsw i64 %.neg to i32
  %spec.select10 = tail call i32 @llvm.smin.i32(i32 %min_dist.sroa.0.121, i32 %5)
  br label %bb16
}
