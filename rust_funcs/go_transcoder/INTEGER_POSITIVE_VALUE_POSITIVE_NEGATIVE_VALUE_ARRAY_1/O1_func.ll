define noundef i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #3 {
start:
  %arr = alloca [8 x i8], align 8
  store i64 %0, ptr %arr, align 8
  %_0.i.i.i13 = icmp sgt i32 %n, 0
  br i1 %_0.i.i.i13, label %bb7, label %bb6

bb6:                                              ; preds = %bb7, %bb7.1, %bb7.2, %start
  %pos.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %1, %bb7 ], [ %pos.sroa.0.1.1, %bb7.1 ], [ %pos.sroa.0.1.2, %bb7.2 ]
  %neg.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %2, %bb7 ], [ %neg.sroa.0.1.1, %bb7.1 ], [ %neg.sroa.0.1.2, %bb7.2 ]
  %sum.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %_13, %bb7 ], [ %4, %bb7.1 ], [ %8, %bb7.2 ]
  %_19 = icmp eq i32 %neg.sroa.0.0.lcssa, %pos.sroa.0.0.lcssa
  br i1 %_19, label %panic, label %bb14

panic:                                            ; preds = %bb6
; call core::panicking::panic_const::panic_const_div_by_zero
  tail call void @_ZN4core9panicking11panic_const23panic_const_div_by_zero17h9a45e37423e1c559E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_7d87ea604b0060abc8f3ab77f9cb596e) #24
  unreachable

bb14:                                             ; preds = %bb6
  %_18 = sub nsw i32 %neg.sroa.0.0.lcssa, %pos.sroa.0.0.lcssa
  %_0.sroa.0.0.i = tail call noundef range(i32 0, -2147483647) i32 @llvm.abs.i32(i32 %_18, i1 false)
  %_0 = sdiv i32 %sum.sroa.0.0.lcssa, %_0.sroa.0.0.i
  ret i32 %_0

bb7:                                              ; preds = %start
  %_13 = load i32, ptr %arr, align 8, !noundef !37
  %_16 = icmp sgt i32 %_13, -1
  %1 = zext i1 %_16 to i32
  %not._16 = xor i1 %_16, true
  %2 = zext i1 %not._16 to i32
  %_0.i.i.i.not = icmp eq i32 %n, 1
  %spec.select = select i1 %_0.i.i.i.not, i32 1, i32 2
  br i1 %_0.i.i.i.not, label %bb6, label %bb7.1

bb7.1:                                            ; preds = %bb7
  %3 = getelementptr inbounds nuw i8, ptr %arr, i64 4
  %_13.1 = load i32, ptr %3, align 4, !noundef !37
  %4 = add i32 %_13.1, %_13
  %_16.1 = icmp sgt i32 %_13.1, -1
  %5 = zext i1 %_16.1 to i32
  %pos.sroa.0.1.1 = add nuw nsw i32 %1, %5
  %not._16.1 = xor i1 %_16.1, true
  %6 = zext i1 %not._16.1 to i32
  %neg.sroa.0.1.1 = add nuw nsw i32 %2, %6
  %_0.i.i.i.1 = icmp slt i32 %spec.select, %n
  br i1 %_0.i.i.i.1, label %bb5.2, label %bb6

bb5.2:                                            ; preds = %bb7.1
  %_14.2 = zext nneg i32 %spec.select to i64
  br i1 %_0.i.i.i.not, label %bb7.2, label %panic2

bb7.2:                                            ; preds = %bb5.2
  %7 = getelementptr inbounds nuw i32, ptr %arr, i64 %_14.2
  %_13.2 = load i32, ptr %7, align 4, !noundef !37
  %8 = add i32 %_13.2, %4
  %_16.2 = icmp sgt i32 %_13.2, -1
  %9 = zext i1 %_16.2 to i32
  %pos.sroa.0.1.2 = add nuw nsw i32 %pos.sroa.0.1.1, %9
  %not._16.2 = xor i1 %_16.2, true
  %10 = zext i1 %not._16.2 to i32
  %neg.sroa.0.1.2 = add nuw nsw i32 %neg.sroa.0.1.1, %10
  br label %bb6

panic2:                                           ; preds = %bb5.2
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_14.2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_11ea925815217d24ca1e87e1c839890b) #24
  unreachable
}
