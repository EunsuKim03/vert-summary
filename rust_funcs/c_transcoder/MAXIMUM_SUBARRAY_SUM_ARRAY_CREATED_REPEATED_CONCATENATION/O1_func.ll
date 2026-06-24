define noundef i32 @f_gold(i64 %0, i32 noundef %n, i32 noundef %k) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %a = alloca [8 x i8], align 8
  store i64 %0, ptr %a, align 8
  %_7 = mul i32 %k, %n
  %_0.i.i.i9 = icmp sgt i32 %_7, 0
  br i1 %_0.i.i.i9, label %bb5.lr.ph, label %bb6

bb5.lr.ph:                                        ; preds = %start
  %_18 = icmp eq i32 %n, 0
  %_17 = sext i32 %n to i64
  br i1 %_18, label %panic, label %bb5.preheader

bb5.preheader:                                    ; preds = %bb5.lr.ph
  %wide.trip.count = zext nneg i32 %_7 to i64
  br label %bb5

bb5:                                              ; preds = %bb5.preheader, %bb8
  %indvars.iv15 = phi i64 [ 0, %bb5.preheader ], [ %indvars.iv.next16, %bb8 ]
  %max_ending_here.sroa.0.012 = phi i32 [ 0, %bb5.preheader ], [ %spec.store.select, %bb8 ]
  %max_so_far.sroa.0.011 = phi i32 [ -2147483648, %bb5.preheader ], [ %_0.sroa.0.0.i, %bb8 ]
  %_15 = urem i64 %indvars.iv15, %_17
  %_19 = icmp samesign ult i64 %_15, 2
  br i1 %_19, label %bb8, label %panic1

bb6:                                              ; preds = %bb8, %start
  %max_so_far.sroa.0.0.lcssa = phi i32 [ -2147483648, %start ], [ %_0.sroa.0.0.i, %bb8 ]
  ret i32 %max_so_far.sroa.0.0.lcssa

panic:                                            ; preds = %bb5.lr.ph
; call core::panicking::panic_const::panic_const_rem_by_zero
  tail call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_b83fbbd01d250872c36186f354e5ffd8) #24
  unreachable

bb8:                                              ; preds = %bb5
  %1 = getelementptr inbounds nuw i32, ptr %a, i64 %_15
  %_14 = load i32, ptr %1, align 4, !noundef !37
  %2 = add i32 %_14, %max_ending_here.sroa.0.012
  %_0.sroa.0.0.i = tail call noundef i32 @llvm.smax.i32(i32 %2, i32 %max_so_far.sroa.0.011)
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %2, i32 0)
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv15, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next16, %wide.trip.count
  br i1 %exitcond.not, label %bb6, label %bb5

panic1:                                           ; preds = %bb5
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_15, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_fb8c3508cba01c1ede35104eaf311709) #24
  unreachable
}
