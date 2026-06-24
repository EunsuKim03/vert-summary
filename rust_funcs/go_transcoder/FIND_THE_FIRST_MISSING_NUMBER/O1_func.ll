define noundef i32 @f_gold(i64 %0, i32 noundef %start1, i32 noundef %end) unnamed_addr #3 {
start:
  %array = alloca [8 x i8], align 8
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb6, %start
  %start1.tr = phi i32 [ %start1, %start ], [ %spec.select, %bb6 ]
  %end.tr = phi i32 [ %end, %start ], [ %spec.select5, %bb6 ]
  store i64 %0, ptr %array, align 8
  %_4 = icmp sgt i32 %start1.tr, %end.tr
  br i1 %_4, label %bb1, label %bb2

bb2:                                              ; preds = %tailrecurse
  %_7 = sext i32 %start1.tr to i64
  %_8 = icmp ult i32 %start1.tr, 2
  br i1 %_8, label %bb3, label %panic

bb1:                                              ; preds = %tailrecurse
  %1 = add i32 %end.tr, 1
  br label %bb11

bb3:                                              ; preds = %bb2
  %2 = getelementptr inbounds nuw i32, ptr %array, i64 %_7
  %_6 = load i32, ptr %2, align 4, !noundef !37
  %_5.not = icmp eq i32 %start1.tr, %_6
  br i1 %_5.not, label %bb5, label %bb11

panic:                                            ; preds = %bb2
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_7, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_a56c3ae2c8720567901f8c6a6bd168f9) #24
  unreachable

bb5:                                              ; preds = %bb3
  %_11 = add i32 %end.tr, %start1.tr
  %_10 = sitofp i32 %_11 to float
  %mid = fmul float %_10, 5.000000e-01
  %_14 = tail call i64 @llvm.fptoui.sat.i64.f32(float %mid)
  %_15 = icmp ult i64 %_14, 2
  br i1 %_15, label %bb6, label %panic2

bb6:                                              ; preds = %bb5
  %3 = getelementptr inbounds nuw i32, ptr %array, i64 %_14
  %_13 = load i32, ptr %3, align 4, !noundef !37
  %_16 = tail call i32 @llvm.fptosi.sat.i32.f32(float %mid)
  %_12 = icmp eq i32 %_13, %_16
  %_17 = add i32 %_16, 1
  %spec.select = select i1 %_12, i32 %_17, i32 %start1.tr
  %spec.select5 = select i1 %_12, i32 %end.tr, i32 %_16
  br label %tailrecurse

panic2:                                           ; preds = %bb5
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_14, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_231b40b605c5224069c6c989caaa70a9) #24
  unreachable

bb11:                                             ; preds = %bb3, %bb1
  %_0.sroa.0.0 = phi i32 [ %1, %bb1 ], [ %start1.tr, %bb3 ]
  ret i32 %_0.sroa.0.0
}
