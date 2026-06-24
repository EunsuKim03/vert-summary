define noundef range(i32 0, 4) i32 @f_gold(i64 %0, i32 noundef %n, i32 noundef %idx) unnamed_addr #1 {
start:
  %arr = alloca [8 x i8], align 8
  store i64 %0, ptr %arr, align 8
  %_1510 = icmp sgt i32 %n, 0
  %1 = trunc i64 %0 to i32
  %2 = bitcast i32 %1 to float
  %3 = lshr i64 %0, 32
  %4 = trunc nuw i64 %3 to i32
  %5 = bitcast i32 %4 to float
  br i1 %_1510, label %bb11.lr.ph, label %bb12

bb11.lr.ph:                                       ; preds = %start
  %_11 = sext i32 %idx to i64
  %_12 = icmp ult i32 %idx, 2
  br i1 %_12, label %bb3, label %panic1

bb12:                                             ; preds = %bb3, %bb3.1, %start
  %result.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %result.sroa.0.2, %bb3 ], [ %result.sroa.0.1.1, %bb3.1 ]
  ret i32 %result.sroa.0.0.lcssa

panic:                                            ; preds = %bb3.1
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_d9395a7850936590b8cf33bd88bb8161) #18
  unreachable

bb3:                                              ; preds = %bb11.lr.ph
  %6 = getelementptr inbounds nuw float, ptr %arr, i64 %_11
  %_10 = load float, ptr %6, align 4, !noundef !23
  %_6 = fcmp ogt float %_10, %2
  %7 = zext i1 %_6 to i32
  %_13 = fcmp oeq float %_10, %2
  %_14 = icmp ne i32 %idx, 0
  %or.cond = and i1 %_14, %_13
  %8 = zext i1 %or.cond to i32
  %result.sroa.0.2 = add nuw nsw i32 %7, %8
  %exitcond16.not = icmp eq i32 %n, 1
  br i1 %exitcond16.not, label %bb12, label %bb3.1

bb3.1:                                            ; preds = %bb3
  %_6.1 = fcmp ogt float %_10, %5
  %9 = zext i1 %_6.1 to i32
  %result.sroa.0.1.1 = add nuw nsw i32 %result.sroa.0.2, %9
  %exitcond16.1.not = icmp eq i32 %n, 2
  br i1 %exitcond16.1.not, label %bb12, label %panic

panic1:                                           ; preds = %bb11.lr.ph
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_11, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_56e99ec8006f6049799e4d5e1afb8718) #18
  unreachable
}
