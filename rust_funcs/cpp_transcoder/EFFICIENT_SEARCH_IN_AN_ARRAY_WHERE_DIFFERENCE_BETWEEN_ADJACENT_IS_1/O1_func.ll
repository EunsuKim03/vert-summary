define noundef i32 @f_gold(i64 %0, i32 noundef %n, i32 noundef %x) unnamed_addr #3 {
start:
  %arr = alloca [8 x i8], align 8
  store i64 %0, ptr %arr, align 8
  %_6 = add i32 %n, -1
  %_4.not6 = icmp slt i32 %_6, 0
  br i1 %_4.not6, label %bb9, label %bb2

bb2:                                              ; preds = %start, %bb6
  %i.sroa.0.07 = phi i32 [ %2, %bb6 ], [ 0, %start ]
  %_9 = sext i32 %i.sroa.0.07 to i64
  %_11 = icmp ult i32 %i.sroa.0.07, 2
  br i1 %_11, label %bb3, label %panic

bb9:                                              ; preds = %bb3, %bb6, %start
  %i.sroa.0.1 = phi i32 [ -1, %start ], [ %i.sroa.0.07, %bb3 ], [ -1, %bb6 ]
  ret i32 %i.sroa.0.1

bb3:                                              ; preds = %bb2
  %1 = getelementptr inbounds nuw i32, ptr %arr, i64 %_9
  %_8 = load i32, ptr %1, align 4, !noundef !37
  %_7 = icmp eq i32 %_8, %x
  br i1 %_7, label %bb9, label %bb6

panic:                                            ; preds = %bb2
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_9, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_33ef3150d7ff5be1f13c9b6e82fdb289) #24
  unreachable

bb6:                                              ; preds = %bb3
  %_13 = sub i32 %_8, %x
  %_0.sroa.0.0.i = tail call noundef range(i32 0, -2147483647) i32 @llvm.abs.i32(i32 %_13, i1 false)
  %2 = add nuw i32 %_0.sroa.0.0.i, %i.sroa.0.07
  %_4.not = icmp sgt i32 %2, %_6
  br i1 %_4.not, label %bb9, label %bb2
}
