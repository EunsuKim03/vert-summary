define noundef i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #3 {
start:
  %arr = alloca [8 x i8], align 8
  store i64 %0, ptr %arr, align 8
  %_5 = add i32 %n, -2
  %_0.i.i.i50 = icmp sgt i32 %_5, 0
  br i1 %_0.i.i.i50, label %bb5.lr.ph, label %bb6

bb5.lr.ph:                                        ; preds = %start
  %_14 = add i32 %n, -1
  %1 = sext i32 %_14 to i64
  %wide.trip.count73 = zext nneg i32 %_5 to i64
  %_0.i.i.i1344.peel = icmp sgt i32 %_14, 1
  br i1 %_0.i.i.i1344.peel, label %bb13.peel, label %bb2.loopexit.peel

bb13.peel:                                        ; preds = %bb5.lr.ph
  %_21.peel = load float, ptr %arr, align 8, !noundef !37
  %2 = getelementptr inbounds nuw i8, ptr %arr, i64 4
  %_24.peel = load float, ptr %2, align 4, !noundef !37
  %_20.peel = fcmp ogt float %_21.peel, %_24.peel
  %_0.i.i.i2039.peel = icmp sgt i32 %n, 2
  %or.cond = and i1 %_20.peel, %_0.i.i.i2039.peel
  br i1 %or.cond, label %panic5, label %bb26.peel

bb26.peel:                                        ; preds = %bb13.peel
  %exitcond.not.peel = icmp eq i32 %_14, 2
  br i1 %exitcond.not.peel, label %bb2.loopexit.peel, label %panic3

bb2.loopexit.peel:                                ; preds = %bb26.peel, %bb5.lr.ph
  %exitcond74.not.peel = icmp eq i32 %_5, 1
  br i1 %exitcond74.not.peel, label %bb6, label %bb5.peel87

bb5.peel87:                                       ; preds = %bb2.loopexit.peel
  %_0.i.i.i1344.peel89 = icmp sgt i32 %_14, 2
  br i1 %_0.i.i.i1344.peel89, label %panic3, label %bb2.loopexit.peel115

bb2.loopexit.peel115:                             ; preds = %bb5.peel87
  %exitcond74.not.peel117 = icmp eq i32 %_5, 2
  br i1 %exitcond74.not.peel117, label %bb6, label %bb5

bb2.loopexit:                                     ; preds = %bb5
  %exitcond74.not = icmp eq i64 %indvars.iv.next70, %wide.trip.count73
  br i1 %exitcond74.not, label %bb6, label %bb5, !llvm.loop !1630

bb5:                                              ; preds = %bb2.loopexit.peel115, %bb2.loopexit
  %indvars.iv69 = phi i64 [ %indvars.iv.next70, %bb2.loopexit ], [ 2, %bb2.loopexit.peel115 ]
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1
  %_0.i.i.i1344 = icmp slt i64 %indvars.iv.next70, %1
  br i1 %_0.i.i.i1344, label %panic, label %bb2.loopexit

bb6:                                              ; preds = %bb2.loopexit.peel, %bb2.loopexit.peel115, %bb2.loopexit, %start
  ret i32 0

panic:                                            ; preds = %bb5
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %indvars.iv69, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_11dd47a96e861be4f3ab495e32141afd) #24
  unreachable

panic3:                                           ; preds = %bb5.peel87, %bb26.peel
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_6e0e2a0d775e12df61e55e1236401dc0) #24
  unreachable

panic5:                                           ; preds = %bb13.peel
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_ff104d2cabc2f2281a2c0ec473bceb92) #24
  unreachable
}
