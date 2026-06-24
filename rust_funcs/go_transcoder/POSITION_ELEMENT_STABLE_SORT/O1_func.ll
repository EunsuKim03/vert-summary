define noundef range(i32 0, 4) i32 @f_gold(i64 %0, i32 noundef %n, i32 noundef %idx) unnamed_addr #3 {
start:
  %arr = alloca [8 x i8], align 8
  store i64 %0, ptr %arr, align 8
  %_0.i.i.i12 = icmp sgt i32 %n, 0
  br i1 %_0.i.i.i12, label %bb5.lr.ph, label %bb6

bb5.lr.ph:                                        ; preds = %start
  %_16 = sext i32 %idx to i64
  %_17 = icmp ult i32 %idx, 2
  %1 = getelementptr inbounds nuw i32, ptr %arr, i64 %_16
  br i1 %_17, label %bb8, label %panic1

bb6:                                              ; preds = %bb8, %bb8.1, %start
  %result.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %result.sroa.0.2, %bb8 ], [ %spec.select.1, %bb8.1 ]
  ret i32 %result.sroa.0.0.lcssa

bb8:                                              ; preds = %bb5.lr.ph
  %_12 = load i32, ptr %arr, align 8, !noundef !37
  %_15 = load i32, ptr %1, align 4, !noundef !37
  %_11 = icmp slt i32 %_12, %_15
  %2 = zext i1 %_11 to i32
  %_18 = icmp eq i32 %_12, %_15
  %_19 = icmp eq i32 %idx, 1
  %or.cond = and i1 %_19, %_18
  %3 = zext i1 %or.cond to i32
  %result.sroa.0.2 = add nuw nsw i32 %2, %3
  %exitcond22.not = icmp eq i32 %n, 1
  br i1 %exitcond22.not, label %bb6, label %bb8.1

bb8.1:                                            ; preds = %bb8
  %4 = getelementptr inbounds nuw i8, ptr %arr, i64 4
  %_12.1 = load i32, ptr %4, align 4, !noundef !37
  %_15.1 = load i32, ptr %1, align 4, !noundef !37
  %_11.1 = icmp slt i32 %_12.1, %_15.1
  %5 = zext i1 %_11.1 to i32
  %spec.select.1 = add nuw nsw i32 %result.sroa.0.2, %5
  %exitcond22.1.not = icmp eq i32 %n, 2
  br i1 %exitcond22.1.not, label %bb6, label %bb5.2

bb5.2:                                            ; preds = %bb8.1
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_5f5b63ef31bc862f9d43e825c7b1569f) #24
  unreachable

panic1:                                           ; preds = %bb5.lr.ph
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_16, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_6abd5e57878322b92015cbeb3a40ee02) #24
  unreachable
}
