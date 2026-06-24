define noundef i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #1 {
start:
  %arr = alloca [8 x i8], align 8
  store i64 %0, ptr %arr, align 8
  %iter3 = add i32 %n, -2
  %_2231 = icmp sgt i32 %iter3, 0
  br i1 %_2231, label %bb14.lr.ph, label %bb15

bb14.lr.ph:                                       ; preds = %start
  %iter4 = add i32 %n, -1
  %_3622 = icmp slt i32 %n, 3
  %1 = sext i32 %iter4 to i64
  %wide.trip.count51 = zext nneg i32 %iter3 to i64
  %_2926.peel = icmp sgt i32 %iter4, 1
  br i1 %_2926.peel, label %bb4.peel.peel, label %bb1.loopexit.peel

bb4.peel.peel:                                    ; preds = %bb14.lr.ph
  %_10.peel.peel = load float, ptr %arr, align 8, !noundef !23
  %2 = getelementptr inbounds nuw i8, ptr %arr, i64 4
  %_13.peel.peel = load float, ptr %2, align 4, !noundef !23
  %_9.peel.peel = fcmp ule float %_10.peel.peel, %_13.peel.peel
  %brmerge.peel.peel = or i1 %_9.peel.peel, %_3622
  br i1 %brmerge.peel.peel, label %bb13.peel.peel, label %panic7

bb13.peel.peel:                                   ; preds = %bb4.peel.peel
  %exitcond.peel.not.peel = icmp eq i32 %iter4, 2
  br i1 %exitcond.peel.not.peel, label %bb1.loopexit.peel, label %panic5

bb1.loopexit.peel:                                ; preds = %bb14.lr.ph, %bb13.peel.peel
  %exitcond52.not.peel = icmp eq i32 %iter3, 1
  br i1 %exitcond52.not.peel, label %bb15, label %bb14.peel63

bb14.peel63:                                      ; preds = %bb1.loopexit.peel
  %_2926.peel65 = icmp sgt i32 %iter4, 2
  br i1 %_2926.peel65, label %panic5, label %bb1.loopexit.peel80

bb1.loopexit.peel80:                              ; preds = %bb14.peel63
  %exitcond52.not.peel82 = icmp eq i32 %iter3, 2
  br i1 %exitcond52.not.peel82, label %bb15, label %bb14

bb15:                                             ; preds = %bb1.loopexit.peel, %bb1.loopexit.peel80, %bb14.bb1.loopexit_crit_edge, %start
  ret i32 0

bb14:                                             ; preds = %bb1.loopexit.peel80, %bb14.bb1.loopexit_crit_edge
  %indvars.iv48 = phi i64 [ %indvars.iv.next49, %bb14.bb1.loopexit_crit_edge ], [ 2, %bb1.loopexit.peel80 ]
  %indvars.iv = phi i64 [ %.pre, %bb14.bb1.loopexit_crit_edge ], [ 3, %bb1.loopexit.peel80 ]
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1
  %_2926 = icmp slt i64 %indvars.iv.next49, %1
  br i1 %_2926, label %panic, label %bb14.bb1.loopexit_crit_edge

bb14.bb1.loopexit_crit_edge:                      ; preds = %bb14
  %.pre = add nuw nsw i64 %indvars.iv, 1
  %exitcond52.not = icmp eq i64 %indvars.iv.next49, %wide.trip.count51
  br i1 %exitcond52.not, label %bb15, label %bb14, !llvm.loop !1031

panic:                                            ; preds = %bb14
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %indvars.iv48, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_96ba764cd5d28bf0e79a8bea8f77f700) #18
  unreachable

panic5:                                           ; preds = %bb14.peel63, %bb13.peel.peel
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_e9c245163841a269a683b2c5ccf9e242) #18
  unreachable

panic7:                                           ; preds = %bb4.peel.peel
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_45a463a0be75034b5e1eb77ae000a273) #18
  unreachable
}
