define noundef i32 @f_gold(i64 %0, i32 noundef %n, i32 noundef %x, i32 noundef %y) unnamed_addr #1 {
start:
  %arr = alloca [8 x i8], align 8
  store i64 %0, ptr %arr, align 8
  %exitcond.not = icmp slt i32 %n, 1
  %1 = lshr i64 %0, 32
  %2 = trunc nuw i64 %1 to i32
  br i1 %exitcond.not, label %bb7, label %bb22

bb22:                                             ; preds = %start
  %3 = trunc i64 %0 to i32
  %_8 = icmp eq i32 %x, %3
  %_12 = icmp eq i32 %y, %3
  %or.cond = or i1 %_8, %_12
  %exitcond.1.not = icmp eq i32 %n, 1
  %or.cond30 = or i1 %or.cond, %exitcond.1.not
  br i1 %or.cond30, label %bb7, label %bb22.1

bb7:                                              ; preds = %bb1.2, %bb22.1, %bb22, %start
  %exitcond27.not.2 = phi i1 [ true, %start ], [ true, %bb22 ], [ false, %bb22.1 ], [ true, %bb1.2 ]
  %prev.sroa.0.0 = phi i32 [ 0, %start ], [ 0, %bb22 ], [ 1, %bb22.1 ], [ 0, %bb1.2 ]
  %_3618 = icmp slt i32 %prev.sroa.0.0, %n
  br i1 %_3618, label %bb27.preheader, label %bb28

bb27.preheader:                                   ; preds = %bb7
  %4 = zext nneg i32 %prev.sroa.0.0 to i64
  %wide.trip.count28 = zext nneg i32 %n to i64
  %indvars.iv.next = add nuw nsw i64 %4, 1
  %5 = getelementptr inbounds nuw i32, ptr %arr, i64 %4
  %_16 = load i32, ptr %5, align 4, !noundef !23
  %_15 = icmp eq i32 %_16, %x
  %_19 = icmp eq i32 %_16, %y
  %or.cond14 = or i1 %_15, %_19
  br i1 %or.cond14, label %bb14, label %bb21

bb22.1:                                           ; preds = %bb22
  %_8.1 = icmp eq i32 %x, %2
  %_12.1 = icmp eq i32 %y, %2
  %or.cond.1 = or i1 %_8.1, %_12.1
  br i1 %or.cond.1, label %bb7, label %bb1.2

bb1.2:                                            ; preds = %bb22.1
  %exitcond.2.not = icmp eq i32 %n, 2
  br i1 %exitcond.2.not, label %bb7, label %panic

panic:                                            ; preds = %bb1.2
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_389a26be994414b0ad8da10b568ac2e8) #18
  unreachable

bb28:                                             ; preds = %bb9.2, %bb14.2, %bb15.2, %bb21, %bb21.1, %bb7
  %min_dist.sroa.0.0.lcssa = phi i32 [ 2147483647, %bb7 ], [ %min_dist.sroa.0.1, %bb21 ], [ %min_dist.sroa.0.1.1, %bb21.1 ], [ %min_dist.sroa.0.1.1, %bb9.2 ], [ %min_dist.sroa.0.1.1, %bb14.2 ], [ %spec.select.2, %bb15.2 ]
  ret i32 %min_dist.sroa.0.0.lcssa

panic4:                                           ; preds = %bb27.2, %bb27.1
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_d7544bbd56a92bb5b67d0540dcb25cbb) #18
  unreachable

bb21:                                             ; preds = %bb14, %bb27.preheader
  %min_dist.sroa.0.1 = phi i32 [ 2147483647, %bb27.preheader ], [ %spec.select, %bb14 ]
  %exitcond29.not = icmp eq i64 %indvars.iv.next, %wide.trip.count28
  br i1 %exitcond29.not, label %bb28, label %bb27.1

bb27.1:                                           ; preds = %bb21
  %indvars.iv.next.1 = or disjoint i64 %4, 2
  %exitcond27.not.1 = icmp eq i64 %indvars.iv.next, 2
  br i1 %exitcond27.not.1, label %panic4, label %bb9.1

bb9.1:                                            ; preds = %bb27.1
  %6 = getelementptr inbounds nuw i32, ptr %arr, i64 %indvars.iv.next
  %_16.1 = load i32, ptr %6, align 4, !noundef !23
  %_15.1 = icmp eq i32 %_16.1, %x
  %_19.1 = icmp eq i32 %_16.1, %y
  %or.cond14.1 = or i1 %_15.1, %_19.1
  br i1 %or.cond14.1, label %bb14.1, label %bb21.1

bb14.1:                                           ; preds = %bb9.1
  %_22.1 = zext nneg i32 %prev.sroa.0.0 to i64
  %7 = getelementptr inbounds nuw i32, ptr %arr, i64 %_22.1
  %_21.1 = load i32, ptr %7, align 4, !noundef !23
  %_20.not.1 = icmp eq i32 %_21.1, %_16.1
  %8 = trunc nuw nsw i64 %indvars.iv.next to i32
  br i1 %_20.not.1, label %bb21.1, label %bb15.1

bb15.1:                                           ; preds = %bb14.1
  %_26.1 = sub nsw i32 %8, %prev.sroa.0.0
  %spec.select.1 = tail call i32 @llvm.smin.i32(i32 %_26.1, i32 %min_dist.sroa.0.1)
  br label %bb21.1

bb21.1:                                           ; preds = %bb15.1, %bb14.1, %bb9.1
  %prev.sroa.0.2.1 = phi i32 [ %prev.sroa.0.0, %bb9.1 ], [ %8, %bb14.1 ], [ %8, %bb15.1 ]
  %min_dist.sroa.0.1.1 = phi i32 [ %min_dist.sroa.0.1, %bb9.1 ], [ %min_dist.sroa.0.1, %bb14.1 ], [ %spec.select.1, %bb15.1 ]
  %exitcond29.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count28
  br i1 %exitcond29.not.1, label %bb28, label %bb27.2

bb27.2:                                           ; preds = %bb21.1
  br i1 %exitcond27.not.2, label %panic4, label %bb9.2

bb9.2:                                            ; preds = %bb27.2
  %9 = getelementptr inbounds nuw i32, ptr %arr, i64 %indvars.iv.next.1
  %_16.2 = load i32, ptr %9, align 4, !noundef !23
  %_15.2 = icmp eq i32 %_16.2, %x
  %_19.2 = icmp eq i32 %_16.2, %y
  %or.cond14.2 = or i1 %_15.2, %_19.2
  br i1 %or.cond14.2, label %bb12.2, label %bb28

bb12.2:                                           ; preds = %bb9.2
  %_22.2 = sext i32 %prev.sroa.0.2.1 to i64
  %_24.2 = icmp ult i32 %prev.sroa.0.2.1, 2
  br i1 %_24.2, label %bb14.2, label %panic6

bb14.2:                                           ; preds = %bb12.2
  %10 = getelementptr inbounds nuw i32, ptr %arr, i64 %_22.2
  %_21.2 = load i32, ptr %10, align 4, !noundef !23
  %_20.not.2 = icmp eq i32 %_21.2, %_16.2
  br i1 %_20.not.2, label %bb28, label %bb15.2

bb15.2:                                           ; preds = %bb14.2
  %11 = trunc nuw nsw i64 %indvars.iv.next.1 to i32
  %_26.2 = sub nuw nsw i32 %11, %prev.sroa.0.2.1
  %spec.select.2 = tail call i32 @llvm.smin.i32(i32 %_26.2, i32 %min_dist.sroa.0.1.1)
  br label %bb28

panic6:                                           ; preds = %bb12.2
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_22.2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_0ee009ebfb7a677a021f69142d62cd3f) #18
  unreachable

bb14:                                             ; preds = %bb27.preheader
  %_22 = zext nneg i32 %prev.sroa.0.0 to i64
  %12 = getelementptr inbounds nuw i32, ptr %arr, i64 %_22
  %_21 = load i32, ptr %12, align 4, !noundef !23
  %_20.not = icmp eq i32 %_21, %_16
  %spec.select = select i1 %_20.not, i32 2147483647, i32 0
  br label %bb21
}
