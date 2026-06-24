define noundef i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %1 = lshr i64 %0, 32
  %2 = trunc nuw i64 %1 to i32
  %3 = trunc i64 %0 to i32
  %spec.select = tail call i32 @llvm.smax.i32(i32 %2, i32 %3)
  %spec.select37 = tail call i32 @llvm.smin.i32(i32 %2, i32 %3)
  %_209 = icmp sgt i32 %n, 0
  br i1 %_209, label %bb7.peel, label %bb9

bb7.peel:                                         ; preds = %start
  switch i32 %n, label %panic1 [
    i32 1, label %bb9.loopexit
    i32 2, label %bb9.loopexit.fold.split
  ]

bb9.loopexit.fold.split:                          ; preds = %bb7.peel
  br label %bb9.loopexit

bb9.loopexit:                                     ; preds = %bb7.peel, %bb9.loopexit.fold.split
  %b.sroa.0.1.lcssa = phi i32 [ 0, %bb7.peel ], [ %spec.select, %bb9.loopexit.fold.split ]
  %4 = add i32 %spec.select37, %b.sroa.0.1.lcssa
  br label %bb9

bb9:                                              ; preds = %bb9.loopexit, %start
  %_0 = phi i32 [ 0, %start ], [ %4, %bb9.loopexit ]
  ret i32 %_0

panic1:                                           ; preds = %bb7.peel
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_561a0737e47d1a51d16a536d95970f05) #18
  unreachable
}
