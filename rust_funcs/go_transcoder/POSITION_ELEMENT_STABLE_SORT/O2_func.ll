define noundef range(i32 0, 4) i32 @f_gold(i64 %0, i32 noundef %n, i32 noundef %idx) unnamed_addr #1 {
start:
  %arr = alloca [8 x i8], align 8
  store i64 %0, ptr %arr, align 8
  %_1510 = icmp sgt i32 %n, 0
  %1 = trunc i64 %0 to i32
  %2 = lshr i64 %0, 32
  %3 = trunc nuw i64 %2 to i32
  br i1 %_1510, label %bb11.lr.ph, label %bb12

bb11.lr.ph:                                       ; preds = %start
  %_11 = sext i32 %idx to i64
  %_12 = icmp ult i32 %idx, 2
  br i1 %_12, label %bb3, label %panic1

bb12:                                             ; preds = %bb3, %bb3.1, %start
  %result.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %result.sroa.0.2, %bb3 ], [ %spec.select.1, %bb3.1 ]
  ret i32 %result.sroa.0.0.lcssa

panic:                                            ; preds = %bb3.1
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_5f5b63ef31bc862f9d43e825c7b1569f) #18
  unreachable

bb3:                                              ; preds = %bb11.lr.ph
  %4 = getelementptr inbounds nuw i32, ptr %arr, i64 %_11
  %_10 = load i32, ptr %4, align 4, !noundef !23
  %_6 = icmp sgt i32 %_10, %1
  %5 = zext i1 %_6 to i32
  %_13 = icmp eq i32 %_10, %1
  %_14 = icmp ne i32 %idx, 0
  %or.cond = and i1 %_14, %_13
  %6 = zext i1 %or.cond to i32
  %result.sroa.0.2 = add nuw nsw i32 %5, %6
  %exitcond16.not = icmp eq i32 %n, 1
  br i1 %exitcond16.not, label %bb12, label %bb3.1

bb3.1:                                            ; preds = %bb3
  %_6.1 = icmp sgt i32 %_10, %3
  %7 = zext i1 %_6.1 to i32
  %spec.select.1 = add nuw nsw i32 %result.sroa.0.2, %7
  %exitcond16.1.not = icmp eq i32 %n, 2
  br i1 %exitcond16.1.not, label %bb12, label %panic

panic1:                                           ; preds = %bb11.lr.ph
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_11, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_6abd5e57878322b92015cbeb3a40ee02) #18
  unreachable
}
