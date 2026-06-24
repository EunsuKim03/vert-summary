define noundef range(i32 -1, -2147483648) i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %arr = alloca [8 x i8], align 8
  store i64 %0, ptr %arr, align 8
  %iter3 = sext i32 %n to i64
  %_2337.not = icmp eq i32 %n, 0
  br i1 %_2337.not, label %bb13, label %bb12.lr.ph

bb12.lr.ph:                                       ; preds = %start
  %iter4 = add nsw i64 %iter3, -1
  %_2733.not = icmp eq i64 %iter4, 0
  br label %bb12

bb1.loopexit:                                     ; preds = %bb2.loopexit, %bb12
  %result.sroa.0.1.lcssa = phi i32 [ %result.sroa.0.039, %bb12 ], [ %result.sroa.0.2.lcssa, %bb2.loopexit ]
  %exitcond51.not = icmp eq i64 %1, %iter3
  br i1 %exitcond51.not, label %bb13, label %bb12

bb13:                                             ; preds = %bb1.loopexit, %start
  %result.sroa.0.0.lcssa = phi i32 [ -1, %start ], [ %result.sroa.0.1.lcssa, %bb1.loopexit ]
  ret i32 %result.sroa.0.0.lcssa

bb12:                                             ; preds = %bb12.lr.ph, %bb1.loopexit
  %result.sroa.0.039 = phi i32 [ -1, %bb12.lr.ph ], [ %result.sroa.0.1.lcssa, %bb1.loopexit ]
  %iter.sroa.0.038 = phi i64 [ 0, %bb12.lr.ph ], [ %1, %bb1.loopexit ]
  %1 = add nuw i64 %iter.sroa.0.038, 1
  br i1 %_2733.not, label %bb1.loopexit, label %bb14.lr.ph

bb14.lr.ph:                                       ; preds = %bb12
  %_21 = icmp ult i64 %iter.sroa.0.038, 2
  %2 = getelementptr inbounds nuw i32, ptr %arr, i64 %iter.sroa.0.038
  br label %bb14

bb2.loopexit:                                     ; preds = %bb6, %bb14
  %result.sroa.0.2.lcssa = phi i32 [ %result.sroa.0.135, %bb14 ], [ %result.sroa.0.3, %bb6 ]
  %exitcond50.not = icmp eq i64 %3, %iter4
  br i1 %exitcond50.not, label %bb1.loopexit, label %bb14

bb14:                                             ; preds = %bb14.lr.ph, %bb2.loopexit
  %result.sroa.0.135 = phi i32 [ %result.sroa.0.039, %bb14.lr.ph ], [ %result.sroa.0.2.lcssa, %bb2.loopexit ]
  %iter1.sroa.0.034 = phi i64 [ 0, %bb14.lr.ph ], [ %3, %bb2.loopexit ]
  %3 = add nuw i64 %iter1.sroa.0.034, 1
  %_3130 = icmp ult i64 %3, %iter3
  br i1 %_3130, label %bb16.lr.ph, label %bb2.loopexit

bb16.lr.ph:                                       ; preds = %bb14
  %_15 = icmp ult i64 %iter1.sroa.0.034, 2
  %4 = getelementptr inbounds nuw i32, ptr %arr, i64 %iter1.sroa.0.034
  br i1 %_15, label %bb16, label %panic

bb16:                                             ; preds = %bb16.lr.ph, %bb6
  %iter2.sroa.0.032 = phi i64 [ %5, %bb6 ], [ %3, %bb16.lr.ph ]
  %result.sroa.0.231 = phi i32 [ %result.sroa.0.3, %bb6 ], [ %result.sroa.0.135, %bb16.lr.ph ]
  %5 = add nuw nsw i64 %iter2.sroa.0.032, 1
  %exitcond.not = icmp eq i64 %iter2.sroa.0.032, 2
  br i1 %exitcond.not, label %panic5, label %bb5

panic:                                            ; preds = %bb16.lr.ph
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %iter1.sroa.0.034, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_56ab95d094517ed169eca5a58aff51a6) #18
  unreachable

bb5:                                              ; preds = %bb16
  br i1 %_21, label %bb6, label %panic6

panic5:                                           ; preds = %bb16
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_807f1422a766a986fbd4cfdbee0da579) #18
  unreachable

bb6:                                              ; preds = %bb5
  %_14 = load i32, ptr %4, align 4, !noundef !23
  %_13 = sitofp i32 %_14 to float
  %6 = getelementptr inbounds nuw i32, ptr %arr, i64 %iter2.sroa.0.032
  %_17 = load i32, ptr %6, align 4, !noundef !23
  %_16 = sitofp i32 %_17 to float
  %_12 = fmul float %_13, %_16
  %_20 = load i32, ptr %2, align 4, !noundef !23
  %_19 = sitofp i32 %_20 to float
  %_11 = fcmp oeq float %_12, %_19
  %_0.sroa.0.0.i = tail call i32 @llvm.smax.i32(i32 %_20, i32 %result.sroa.0.231)
  %result.sroa.0.3 = select i1 %_11, i32 %_0.sroa.0.0.i, i32 %result.sroa.0.231
  %exitcond49.not = icmp eq i64 %5, %iter3
  br i1 %exitcond49.not, label %bb2.loopexit, label %bb16

panic6:                                           ; preds = %bb5
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %iter.sroa.0.038, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_3847d7f470fbf7506b20dd52b15e2108) #18
  unreachable
}
