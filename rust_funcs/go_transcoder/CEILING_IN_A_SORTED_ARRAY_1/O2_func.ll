define noundef i32 @f_gold(i64 %0, i32 noundef %low, i32 noundef %high, i32 noundef %x) unnamed_addr #1 {
start:
  %arr = alloca [8 x i8], align 8
  %_721 = sext i32 %low to i64
  %_822 = icmp ult i32 %low, 2
  store i64 %0, ptr %arr, align 8
  br i1 %_822, label %bb1.lr.ph, label %panic

bb1.lr.ph:                                        ; preds = %start, %bb16
  %_725 = phi i64 [ %.pre, %bb16 ], [ %_721, %start ]
  %high.tr.ph24 = phi i32 [ %high.tr1948, %bb16 ], [ %high, %start ]
  %low.tr.ph23 = phi i32 [ 1, %bb16 ], [ %low, %start ]
  %1 = getelementptr inbounds nuw i32, ptr %arr, i64 %_725
  %_646 = load i32, ptr %1, align 4, !noundef !23
  %_5.not47 = icmp sgt i32 %x, %_646
  br i1 %_5.not47, label %bb3, label %bb27

panic:                                            ; preds = %bb16, %start
  %_7.lcssa = phi i64 [ %_721, %start ], [ %.pre, %bb16 ]
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_7.lcssa, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_1828efba8b859b079e1827ec7329c7e8) #18
  unreachable

bb3:                                              ; preds = %bb1.lr.ph, %bb17
  %high.tr1948 = phi i32 [ %_26, %bb17 ], [ %high.tr.ph24, %bb1.lr.ph ]
  %_11 = sext i32 %high.tr1948 to i64
  %_12 = icmp ult i32 %high.tr1948, 2
  br i1 %_12, label %bb4, label %panic1

bb4:                                              ; preds = %bb3
  %2 = getelementptr inbounds nuw i32, ptr %arr, i64 %_11
  %_10 = load i32, ptr %2, align 4, !noundef !23
  %_9 = icmp sgt i32 %x, %_10
  br i1 %_9, label %bb27, label %bb7

panic1:                                           ; preds = %bb3
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_11, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_0888e9ada2e3d2f61519887a64831764) #18
  unreachable

bb7:                                              ; preds = %bb4
  %3 = and i32 %high.tr1948, %low.tr.ph23
  %_16 = zext nneg i32 %3 to i64
  %4 = getelementptr inbounds nuw i32, ptr %arr, i64 %_16
  %_15 = load i32, ptr %4, align 4, !noundef !23
  %_14 = icmp eq i32 %_15, %x
  br i1 %_14, label %bb27, label %bb10

bb10:                                             ; preds = %bb7
  %_18 = icmp slt i32 %_15, %x
  br i1 %_18, label %bb11, label %bb17

bb17:                                             ; preds = %bb10
  %_26 = add nsw i32 %3, -1
  store i64 %0, ptr %arr, align 8
  %_6 = load i32, ptr %1, align 4, !noundef !23
  %_5.not = icmp sgt i32 %x, %_6
  br i1 %_5.not, label %bb3, label %bb27

bb11:                                             ; preds = %bb10
  %_20 = add nuw nsw i32 %3, 1
  %_19.not.not.not = icmp eq i32 %3, %high.tr1948
  %.pre = zext nneg i32 %_20 to i64
  br i1 %_19.not.not.not, label %bb16, label %bb13

bb16:                                             ; preds = %bb11, %bb13
  %_8 = icmp eq i32 %3, 0
  store i64 %0, ptr %arr, align 8
  br i1 %_8, label %bb1.lr.ph, label %panic

bb13:                                             ; preds = %bb11
  %5 = getelementptr inbounds nuw i32, ptr %arr, i64 %.pre
  %_22 = load i32, ptr %5, align 4, !noundef !23
  %_21.not = icmp sgt i32 %x, %_22
  br i1 %_21.not, label %bb16, label %bb27

bb27:                                             ; preds = %bb13, %bb1.lr.ph, %bb7, %bb17, %bb4
  %mid.sroa.0.0 = phi i32 [ -1, %bb4 ], [ %low.tr.ph23, %bb17 ], [ %3, %bb7 ], [ 1, %bb13 ], [ %low.tr.ph23, %bb1.lr.ph ]
  ret i32 %mid.sroa.0.0
}
