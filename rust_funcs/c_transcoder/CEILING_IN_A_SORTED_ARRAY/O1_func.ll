define noundef i32 @f_gold(i64 %0, i32 noundef %low, i32 noundef %high, i32 noundef %x) unnamed_addr #3 {
start:
  %arr = alloca [8 x i8], align 8
  store i64 %0, ptr %arr, align 8
  %_7 = sext i32 %low to i64
  %_8 = icmp ult i32 %low, 2
  br i1 %_8, label %bb1, label %panic

bb1:                                              ; preds = %start
  %1 = getelementptr inbounds nuw i32, ptr %arr, i64 %_7
  %_6 = load i32, ptr %1, align 4, !noundef !37
  %_5.not = icmp sgt i32 %x, %_6
  br i1 %_5.not, label %bb5.lr.ph, label %bb15

bb5.lr.ph:                                        ; preds = %bb1
  %_1111 = zext nneg i32 %low to i64
  %2 = getelementptr inbounds nuw i8, ptr %arr, i64 4
  %_20 = load i32, ptr %2, align 4
  %_19.not = icmp slt i32 %_20, %x
  br label %bb5

panic:                                            ; preds = %start
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_7, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_1e6051faa30cabfc26dd89fe9bfa09af) #24
  unreachable

bb5:                                              ; preds = %bb5.lr.ph, %bb14
  %indvars.iv = phi i64 [ %_1111, %bb5.lr.ph ], [ %indvars.iv.next, %bb14 ]
  %3 = getelementptr inbounds nuw i32, ptr %arr, i64 %indvars.iv
  %_10 = load i32, ptr %3, align 4, !noundef !37
  %_9 = icmp eq i32 %_10, %x
  br i1 %_9, label %bb15.loopexit.split.loop.exit, label %bb8

panic1:                                           ; preds = %bb14
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %indvars.iv.next, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_106f89fae4dc4c430c9bac18f7dcfd4a) #24
  unreachable

bb8:                                              ; preds = %bb5
  %_14 = icmp slt i32 %_10, %x
  br i1 %_14, label %bb9, label %bb14

bb9:                                              ; preds = %bb8
  %_24 = icmp eq i64 %indvars.iv, 0
  br i1 %_24, label %bb10, label %panic3

bb14:                                             ; preds = %bb10, %bb8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %_13 = icmp eq i64 %indvars.iv, 0
  br i1 %_13, label %bb5, label %panic1

bb10:                                             ; preds = %bb9
  br i1 %_19.not, label %bb14, label %bb15

panic3:                                           ; preds = %bb9
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_31f1b01dcf0f4bc0ca307b645ca760b1) #24
  unreachable

bb15.loopexit.split.loop.exit:                    ; preds = %bb5
  %4 = trunc nuw nsw i64 %indvars.iv to i32
  br label %bb15

bb15:                                             ; preds = %bb15.loopexit.split.loop.exit, %bb10, %bb1
  %i.sroa.0.1 = phi i32 [ %low, %bb1 ], [ %4, %bb15.loopexit.split.loop.exit ], [ 1, %bb10 ]
  ret i32 %i.sroa.0.1
}
