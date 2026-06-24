define noundef i32 @f_gold(i64 %0, i32 noundef %low, i32 noundef %high, i32 noundef %x) unnamed_addr #3 {
start:
  %arr = alloca [8 x i8], align 8
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb16, %bb17, %start
  %low.tr = phi i32 [ %low, %start ], [ %low.tr, %bb17 ], [ %_20, %bb16 ]
  %high.tr = phi i32 [ %high, %start ], [ %_26, %bb17 ], [ %high.tr, %bb16 ]
  store i64 %0, ptr %arr, align 8
  %_7 = sext i32 %low.tr to i64
  %_8 = icmp ult i32 %low.tr, 2
  br i1 %_8, label %bb1, label %panic

bb1:                                              ; preds = %tailrecurse
  %1 = getelementptr inbounds nuw i32, ptr %arr, i64 %_7
  %_6 = load i32, ptr %1, align 4, !noundef !37
  %_5.not = icmp sgt i32 %x, %_6
  br i1 %_5.not, label %bb3, label %bb27

panic:                                            ; preds = %tailrecurse
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_7, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_1828efba8b859b079e1827ec7329c7e8) #24
  unreachable

bb3:                                              ; preds = %bb1
  %_11 = sext i32 %high.tr to i64
  %_12 = icmp ult i32 %high.tr, 2
  br i1 %_12, label %bb4, label %panic1

bb4:                                              ; preds = %bb3
  %2 = getelementptr inbounds nuw i32, ptr %arr, i64 %_11
  %_10 = load i32, ptr %2, align 4, !noundef !37
  %_9 = icmp sgt i32 %x, %_10
  br i1 %_9, label %bb27, label %bb6

panic1:                                           ; preds = %bb3
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_11, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_0888e9ada2e3d2f61519887a64831764) #24
  unreachable

bb6:                                              ; preds = %bb4
  %3 = and i32 %high.tr, %low.tr
  %_16 = zext nneg i32 %3 to i64
  %_17 = icmp ult i32 %3, 2
  br i1 %_17, label %bb7, label %panic2

bb7:                                              ; preds = %bb6
  %4 = getelementptr inbounds nuw i32, ptr %arr, i64 %_16
  %_15 = load i32, ptr %4, align 4, !noundef !37
  %_14 = icmp eq i32 %_15, %x
  br i1 %_14, label %bb27, label %bb10

panic2:                                           ; preds = %bb6
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_16, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_cd6b779b75eb92aa6c9a654d56f6a170) #24
  unreachable

bb10:                                             ; preds = %bb7
  %_18 = icmp slt i32 %_15, %x
  br i1 %_18, label %bb11, label %bb17

bb17:                                             ; preds = %bb10
  %_26 = add nsw i32 %3, -1
  br label %tailrecurse

bb11:                                             ; preds = %bb10
  %_20 = add nuw nsw i32 %3, 1
  %_19.not.not = icmp slt i32 %3, %high.tr
  br i1 %_19.not.not, label %bb12, label %bb16

bb16:                                             ; preds = %bb13, %bb11
  br label %tailrecurse

bb12:                                             ; preds = %bb11
  %_23 = zext nneg i32 %_20 to i64
  %_24 = icmp eq i32 %3, 0
  br i1 %_24, label %bb13, label %panic5

bb13:                                             ; preds = %bb12
  %5 = getelementptr inbounds nuw i32, ptr %arr, i64 %_23
  %_22 = load i32, ptr %5, align 4, !noundef !37
  %_21.not = icmp sgt i32 %x, %_22
  br i1 %_21.not, label %bb16, label %bb27

panic5:                                           ; preds = %bb12
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_23, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_e8200c23653251dab36e15c038449549) #24
  unreachable

bb27:                                             ; preds = %bb13, %bb4, %bb1, %bb7
  %mid.sroa.0.0 = phi i32 [ %3, %bb7 ], [ %low.tr, %bb1 ], [ -1, %bb4 ], [ %_20, %bb13 ]
  ret i32 %mid.sroa.0.0
}
