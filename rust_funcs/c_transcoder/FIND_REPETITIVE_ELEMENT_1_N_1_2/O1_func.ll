define noundef i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #3 {
start:
  %arr = alloca [8 x i8], align 8
  store i64 %0, ptr %arr, align 8
  %_5 = add i32 %n, -1
  %_0.i.i.i7 = icmp sgt i32 %_5, 0
  br i1 %_0.i.i.i7, label %bb7, label %bb6

bb6:                                              ; preds = %bb7, %bb7.1, %bb7.2, %start
  %res.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %3, %bb7 ], [ %6, %bb7.1 ], [ %9, %bb7.2 ]
  %_18 = sext i32 %_5 to i64
  %_19 = icmp ult i32 %_5, 2
  br i1 %_19, label %bb8, label %panic

bb8:                                              ; preds = %bb6
  %1 = getelementptr inbounds nuw i32, ptr %arr, i64 %_18
  %_17 = load i32, ptr %1, align 4, !noundef !37
  %2 = xor i32 %_17, %res.sroa.0.0.lcssa
  ret i32 %2

panic:                                            ; preds = %bb6
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_18, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_1128674d6bf983d99d95a26391eb9c29) #24
  unreachable

bb7:                                              ; preds = %start
  %_13 = load i32, ptr %arr, align 8, !noundef !37
  %3 = xor i32 %_13, 1
  %_0.i.i.i.not = icmp eq i32 %_5, 1
  %spec.select = select i1 %_0.i.i.i.not, i32 1, i32 2
  br i1 %_0.i.i.i.not, label %bb6, label %bb7.1

bb7.1:                                            ; preds = %bb7
  %4 = getelementptr inbounds nuw i8, ptr %arr, i64 4
  %_13.1 = load i32, ptr %4, align 4, !noundef !37
  %5 = xor i32 %_13, %_13.1
  %6 = xor i32 %5, 3
  %_0.i.i.i.1 = icmp slt i32 %spec.select, %_5
  br i1 %_0.i.i.i.1, label %bb5.2, label %bb6

bb5.2:                                            ; preds = %bb7.1
  %_14.2 = zext nneg i32 %spec.select to i64
  br i1 %_0.i.i.i.not, label %bb7.2, label %panic1

bb7.2:                                            ; preds = %bb5.2
  %_12.2 = add nuw nsw i32 %spec.select, 1
  %7 = getelementptr inbounds nuw i32, ptr %arr, i64 %_14.2
  %_13.2 = load i32, ptr %7, align 4, !noundef !37
  %8 = xor i32 %_12.2, %_13.2
  %9 = xor i32 %8, %6
  br label %bb6

panic1:                                           ; preds = %bb5.2
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_14.2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_8550347c37730dd3c06070de84d15373) #24
  unreachable
}
