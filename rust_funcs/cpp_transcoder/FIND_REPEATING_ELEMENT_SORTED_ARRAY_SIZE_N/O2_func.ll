define noundef range(i32 -1, 1073741824) i32 @f_gold(ptr noalias noundef nonnull readonly align 4 captures(none) %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, i32 noundef %low, i32 noundef %high) unnamed_addr #1 {
start:
  %_41317 = icmp sgt i32 %low, %high
  br i1 %_41317, label %bb14, label %bb2.lr.ph

tailrecurse.outer.loopexit:                       ; preds = %bb3
  %_413.not = icmp slt i32 %0, %high.tr14
  br i1 %_413.not, label %bb2.lr.ph, label %bb14

bb2.lr.ph:                                        ; preds = %start, %tailrecurse.outer.loopexit
  %high.tr.ph19 = phi i32 [ %high.tr14, %tailrecurse.outer.loopexit ], [ %high, %start ]
  %low.tr.ph18 = phi i32 [ %_12, %tailrecurse.outer.loopexit ], [ %low, %start ]
  br label %bb2

bb2:                                              ; preds = %bb2.lr.ph, %bb10
  %high.tr14 = phi i32 [ %high.tr.ph19, %bb2.lr.ph ], [ %_19, %bb10 ]
  %_5 = add i32 %high.tr14, %low.tr.ph18
  %0 = sdiv i32 %_5, 2
  %_8 = sext i32 %0 to i64
  %_10 = icmp ugt i64 %arr.1, %_8
  br i1 %_10, label %bb3, label %panic

bb3:                                              ; preds = %bb2
  %1 = getelementptr inbounds nuw float, ptr %arr.0, i64 %_8
  %_7 = load float, ptr %1, align 4, !noundef !23
  %_12 = add nsw i32 %0, 1
  %_11 = sitofp i32 %_12 to float
  %_6 = fcmp une float %_7, %_11
  br i1 %_6, label %bb4, label %tailrecurse.outer.loopexit

panic:                                            ; preds = %bb2
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_8, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_2f5945c67bfb085bbe416be19a574413) #18
  unreachable

bb4:                                              ; preds = %bb3
  %_13 = icmp sgt i32 %_5, 1
  br i1 %_13, label %bb5, label %bb10

bb14:                                             ; preds = %tailrecurse.outer.loopexit, %bb7, %bb10, %start
  %mid.sroa.0.0 = phi i32 [ -1, %start ], [ -1, %bb10 ], [ %0, %bb7 ], [ -1, %tailrecurse.outer.loopexit ]
  ret i32 %mid.sroa.0.0

bb10:                                             ; preds = %bb7, %bb4
  %_19 = add nsw i32 %0, -1
  %_4.not = icmp slt i32 %low.tr.ph18, %0
  br i1 %_4.not, label %bb2, label %bb14

bb5:                                              ; preds = %bb4
  %_16 = add nsw i64 %_8, -1
  %_17 = icmp ult i64 %_16, %arr.1
  br i1 %_17, label %bb7, label %panic1

panic1:                                           ; preds = %bb5
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_16, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_ba21a861607d779f91722041fe7bd89e) #18
  unreachable

bb7:                                              ; preds = %bb5
  %2 = getelementptr inbounds nuw float, ptr %arr.0, i64 %_16
  %_15 = load float, ptr %2, align 4, !noundef !23
  %_14 = fcmp oeq float %_15, %_7
  br i1 %_14, label %bb14, label %bb10
}
