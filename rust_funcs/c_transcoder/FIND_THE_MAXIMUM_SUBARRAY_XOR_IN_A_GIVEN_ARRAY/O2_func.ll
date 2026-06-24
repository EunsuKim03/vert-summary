define noundef i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %arr.sroa.0.0.extract.trunc = trunc i64 %0 to i32
  %arr.sroa.2.0.extract.shift = lshr i64 %0, 32
  %arr.sroa.2.0.extract.trunc = trunc nuw i64 %arr.sroa.2.0.extract.shift to i32
  %_1310 = icmp sgt i32 %n, 0
  br i1 %_1310, label %bb3, label %bb6

bb1.loopexit:                                     ; preds = %bb3.1, %bb3
  %_0.sroa.0.0.i.lcssa = phi i32 [ %arr.sroa.0.0.extract.trunc, %bb3 ], [ %_0.sroa.0.0.i.1, %bb3.1 ]
  %exitcond19.not = icmp eq i32 %n, 1
  br i1 %exitcond19.not, label %bb6, label %bb3.129

bb3.129:                                          ; preds = %bb1.loopexit
  %_0.sroa.0.0.i.127 = tail call noundef i32 @llvm.smax.i32(i32 %arr.sroa.2.0.extract.trunc, i32 %_0.sroa.0.0.i.lcssa)
  %exitcond.not.128 = icmp eq i32 %n, 2
  br i1 %exitcond.not.128, label %bb6, label %panic

bb6:                                              ; preds = %bb1.loopexit, %bb3.129, %start
  %ans.sroa.0.0.lcssa = phi i32 [ -2147483648, %start ], [ %_0.sroa.0.0.i.lcssa, %bb1.loopexit ], [ %_0.sroa.0.0.i.127, %bb3.129 ]
  ret i32 %ans.sroa.0.0.lcssa

bb3:                                              ; preds = %start
  %exitcond.not = icmp eq i32 %n, 1
  br i1 %exitcond.not, label %bb1.loopexit, label %bb3.1

bb3.1:                                            ; preds = %bb3
  %1 = xor i32 %arr.sroa.2.0.extract.trunc, %arr.sroa.0.0.extract.trunc
  %_0.sroa.0.0.i.1 = tail call noundef i32 @llvm.smax.i32(i32 %1, i32 %arr.sroa.0.0.extract.trunc)
  %exitcond.not.1 = icmp eq i32 %n, 2
  br i1 %exitcond.not.1, label %bb1.loopexit, label %panic

panic:                                            ; preds = %bb3.1, %bb3.129
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_0c5c39a8ff54ba8e7d2d6c18fcfc5293) #18
  unreachable
}
