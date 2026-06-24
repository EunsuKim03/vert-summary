define noundef i32 @f_gold(i64 %0, i32 noundef %n, i32 noundef %k) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %a = alloca [8 x i8], align 8
  store i64 %0, ptr %a, align 8
  %iter1 = mul i32 %k, %n
  %_199 = icmp sgt i32 %iter1, 0
  br i1 %_199, label %bb8.lr.ph, label %bb9

bb8.lr.ph:                                        ; preds = %start
  %_13 = icmp eq i32 %n, 0
  %_12 = sext i32 %n to i64
  br i1 %_13, label %panic, label %bb8.preheader

bb8.preheader:                                    ; preds = %bb8.lr.ph
  %wide.trip.count = zext nneg i32 %iter1 to i64
  br label %bb8

bb9:                                              ; preds = %bb3, %start
  %max_so_far.sroa.0.0.lcssa = phi i32 [ -2147483648, %start ], [ %_0.sroa.0.0.i, %bb3 ]
  ret i32 %max_so_far.sroa.0.0.lcssa

bb8:                                              ; preds = %bb8.preheader, %bb3
  %indvars.iv = phi i64 [ 0, %bb8.preheader ], [ %indvars.iv.next, %bb3 ]
  %max_so_far.sroa.0.011 = phi i32 [ -2147483648, %bb8.preheader ], [ %_0.sroa.0.0.i, %bb3 ]
  %max_ending_here.sroa.0.010 = phi i32 [ 0, %bb8.preheader ], [ %spec.store.select, %bb3 ]
  %_10 = urem i64 %indvars.iv, %_12
  %_14 = icmp samesign ult i64 %_10, 2
  br i1 %_14, label %bb3, label %panic2

panic:                                            ; preds = %bb8.lr.ph
; call core::panicking::panic_const::panic_const_rem_by_zero
  tail call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_b83fbbd01d250872c36186f354e5ffd8) #18
  unreachable

bb3:                                              ; preds = %bb8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %1 = getelementptr inbounds nuw i32, ptr %a, i64 %_10
  %_9 = load i32, ptr %1, align 4, !noundef !23
  %2 = add i32 %_9, %max_ending_here.sroa.0.010
  %_0.sroa.0.0.i = tail call noundef i32 @llvm.smax.i32(i32 %2, i32 %max_so_far.sroa.0.011)
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %2, i32 0)
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb9, label %bb8

panic2:                                           ; preds = %bb8
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_10, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_fb8c3508cba01c1ede35104eaf311709) #18
  unreachable
}
