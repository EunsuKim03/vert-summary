define noundef range(i32 0, 2) i32 @f_gold(i64 %0, i32 noundef %low, i32 noundef %high, i32 noundef %x) unnamed_addr #1 {
start:
  %arr = alloca [8 x i8], align 8
  store i64 %0, ptr %arr, align 8
  %_7 = sext i32 %low to i64
  %_8 = icmp ult i32 %low, 2
  %1 = lshr i64 %0, 32
  %2 = trunc nuw i64 %1 to i32
  br i1 %_8, label %bb1, label %panic

bb1:                                              ; preds = %start
  %3 = getelementptr inbounds nuw i32, ptr %arr, i64 %_7
  %_6 = load i32, ptr %3, align 4, !noundef !23
  %_5.not = icmp sgt i32 %x, %_6
  br i1 %_5.not, label %bb5.lr.ph, label %bb15

bb5.lr.ph:                                        ; preds = %bb1
  %_1111 = zext nneg i32 %low to i64
  %_19.not = icmp sgt i32 %x, %2
  %4 = getelementptr inbounds nuw i32, ptr %arr, i64 %_1111
  %_10.peel = load i32, ptr %4, align 4, !noundef !23
  %_9.peel = icmp eq i32 %_10.peel, %x
  br i1 %_9.peel, label %bb15, label %bb8.peel

bb8.peel:                                         ; preds = %bb5.lr.ph
  %_14.peel = icmp slt i32 %_10.peel, %x
  br i1 %_14.peel, label %bb9.peel, label %bb14.peel

bb9.peel:                                         ; preds = %bb8.peel
  %_24.peel = icmp eq i32 %low, 0
  br i1 %_24.peel, label %bb10.peel, label %panic3

bb10.peel:                                        ; preds = %bb9.peel
  br i1 %_19.not, label %bb14.peel, label %bb15

bb14.peel:                                        ; preds = %bb10.peel, %bb8.peel
  %_13.peel = icmp eq i32 %low, 0
  br i1 %_13.peel, label %bb5.lr.ph.peel.newph, label %panic1

bb5.lr.ph.peel.newph:                             ; preds = %bb14.peel
  %5 = getelementptr inbounds nuw i8, ptr %arr, i64 4
  %_10 = load i32, ptr %5, align 4, !noundef !23
  %_9 = icmp eq i32 %_10, %x
  %_14 = icmp slt i32 %_10, %x
  br i1 %_9, label %bb15, label %bb8

panic:                                            ; preds = %start
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_7, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_1e6051faa30cabfc26dd89fe9bfa09af) #18
  unreachable

panic1:                                           ; preds = %bb8, %bb14.peel
  %indvars.iv.lcssa25 = phi i64 [ %_1111, %bb14.peel ], [ 1, %bb8 ]
  %indvars.iv.next.le = add nuw nsw i64 %indvars.iv.lcssa25, 1
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %indvars.iv.next.le, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_106f89fae4dc4c430c9bac18f7dcfd4a) #18
  unreachable

bb8:                                              ; preds = %bb5.lr.ph.peel.newph
  br i1 %_14, label %panic3, label %panic1

panic3:                                           ; preds = %bb8, %bb9.peel
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_31f1b01dcf0f4bc0ca307b645ca760b1) #18
  unreachable

bb15:                                             ; preds = %bb10.peel, %bb5.lr.ph, %bb5.lr.ph.peel.newph, %bb1
  %i.sroa.0.1 = phi i32 [ %low, %bb1 ], [ %low, %bb5.lr.ph ], [ 1, %bb5.lr.ph.peel.newph ], [ 1, %bb10.peel ]
  ret i32 %i.sroa.0.1
}
