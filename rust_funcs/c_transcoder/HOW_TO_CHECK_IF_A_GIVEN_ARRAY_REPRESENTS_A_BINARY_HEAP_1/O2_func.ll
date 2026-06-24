define noundef range(i32 0, 2) i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #1 {
start:
  %n1 = sext i32 %n to i64
  %_5 = add nsw i64 %n1, -2
  %_15 = icmp ugt i32 %n, 2
  %_20.not = icmp ult i64 %_5, 2
  br i1 %_20.not, label %bb13, label %bb14

bb14:                                             ; preds = %start
  %arr.sroa.2.0.extract.shift = lshr i64 %0, 32
  %arr.sroa.2.0.extract.trunc = trunc nuw i64 %arr.sroa.2.0.extract.shift to i32
  %arr.sroa.0.0.extract.trunc = trunc i64 %0 to i32
  %_8 = icmp sgt i32 %arr.sroa.2.0.extract.trunc, %arr.sroa.0.0.extract.trunc
  br i1 %_8, label %bb13, label %bb5

bb13:                                             ; preds = %bb1.1, %bb14, %start
  %_0.sroa.0.0 = phi i32 [ 1, %start ], [ 0, %bb14 ], [ 1, %bb1.1 ]
  ret i32 %_0.sroa.0.0

panic:                                            ; preds = %bb1.1
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 3, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_803520d081f3a498bb23584d0ae5c4e7) #18
  unreachable

bb5:                                              ; preds = %bb14
  br i1 %_15, label %panic4, label %bb1.1

bb1.1:                                            ; preds = %bb5
  %_20.1 = icmp ugt i64 %_5, 3
  br i1 %_20.1, label %panic, label %bb13

panic4:                                           ; preds = %bb5
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_8d98252c80e7a33808f83bbc778b7f7a) #18
  unreachable
}
