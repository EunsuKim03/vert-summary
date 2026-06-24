define noundef range(i32 -1, 1073741824) i32 @f_gold(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, i32 noundef %low, i32 noundef %high) unnamed_addr #3 {
start:
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb3, %bb10, %start
  %low.tr = phi i32 [ %low, %start ], [ %low.tr, %bb10 ], [ %_12, %bb3 ]
  %high.tr = phi i32 [ %high, %start ], [ %_19, %bb10 ], [ %high.tr, %bb3 ]
  %_4 = icmp sgt i32 %low.tr, %high.tr
  br i1 %_4, label %bb14, label %bb2

bb2:                                              ; preds = %tailrecurse
  %_5 = add i32 %high.tr, %low.tr
  %0 = sdiv i32 %_5, 2
  %_8 = sext i32 %0 to i64
  %_10 = icmp ugt i64 %arr.1, %_8
  br i1 %_10, label %bb3, label %panic

bb3:                                              ; preds = %bb2
  %1 = getelementptr inbounds nuw float, ptr %arr.0, i64 %_8
  %_7 = load float, ptr %1, align 4, !noundef !37
  %_12 = add nsw i32 %0, 1
  %_11 = sitofp i32 %_12 to float
  %_6 = fcmp une float %_7, %_11
  br i1 %_6, label %bb4, label %tailrecurse

panic:                                            ; preds = %bb2
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_8, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_2f5945c67bfb085bbe416be19a574413) #24
  unreachable

bb4:                                              ; preds = %bb3
  %_13 = icmp sgt i32 %_5, 1
  br i1 %_13, label %bb5, label %bb10

bb14:                                             ; preds = %tailrecurse, %bb7
  %mid.sroa.0.0 = phi i32 [ %0, %bb7 ], [ -1, %tailrecurse ]
  ret i32 %mid.sroa.0.0

bb10:                                             ; preds = %bb7, %bb4
  %_19 = add nsw i32 %0, -1
  br label %tailrecurse

bb5:                                              ; preds = %bb4
  %_16 = add nsw i64 %_8, -1
  %_17 = icmp ult i64 %_16, %arr.1
  br i1 %_17, label %bb7, label %panic1

panic1:                                           ; preds = %bb5
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_16, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_ba21a861607d779f91722041fe7bd89e) #24
  unreachable

bb7:                                              ; preds = %bb5
  %2 = getelementptr inbounds nuw float, ptr %arr.0, i64 %_16
  %_15 = load float, ptr %2, align 4, !noundef !37
  %_14 = fcmp oeq float %_15, %_7
  br i1 %_14, label %bb14, label %bb10
}
