define noundef range(i32 0, -2147483648) i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #1 {
start:
  %arr.sroa.0.0.extract.trunc = trunc i64 %0 to i32
  %arr.sroa.2.0.extract.shift = lshr i64 %0, 32
  %arr.sroa.2.0.extract.trunc = trunc nuw i64 %arr.sroa.2.0.extract.shift to i32
  %_1611 = icmp sgt i32 %n, 0
  br i1 %_1611, label %bb3, label %bb9

bb1.loopexit:                                     ; preds = %bb3.1, %bb3
  %max_len.sroa.0.2.lcssa = phi i32 [ %max_len.sroa.0.2, %bb3 ], [ %max_len.sroa.0.2.1, %bb3.1 ]
  %exitcond22.not = icmp eq i32 %n, 1
  br i1 %exitcond22.not, label %bb9, label %bb3.134

bb3.134:                                          ; preds = %bb1.loopexit
  %_11.130 = icmp ult i64 %0, 4294967296
  %x.y.i.131 = tail call i32 @llvm.smax.i32(i32 %max_len.sroa.0.2.lcssa, i32 1)
  %max_len.sroa.0.2.132 = select i1 %_11.130, i32 %x.y.i.131, i32 %max_len.sroa.0.2.lcssa
  %exitcond.not.133 = icmp eq i32 %n, 2
  br i1 %exitcond.not.133, label %bb9, label %panic

bb9:                                              ; preds = %bb1.loopexit, %bb3.134, %start
  %max_len.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %max_len.sroa.0.2.lcssa, %bb1.loopexit ], [ %max_len.sroa.0.2.132, %bb3.134 ]
  ret i32 %max_len.sroa.0.0.lcssa

bb3:                                              ; preds = %start
  %_11 = icmp eq i32 %arr.sroa.0.0.extract.trunc, 0
  %max_len.sroa.0.2 = zext i1 %_11 to i32
  %exitcond.not = icmp eq i32 %n, 1
  br i1 %exitcond.not, label %bb1.loopexit, label %bb3.1

bb3.1:                                            ; preds = %bb3
  %1 = sub i32 0, %arr.sroa.0.0.extract.trunc
  %_11.1 = icmp eq i32 %arr.sroa.2.0.extract.trunc, %1
  %max_len.sroa.0.2.1 = select i1 %_11.1, i32 2, i32 %max_len.sroa.0.2
  %exitcond.not.1 = icmp eq i32 %n, 2
  br i1 %exitcond.not.1, label %bb1.loopexit, label %panic

panic:                                            ; preds = %bb3.1, %bb3.134
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_c71c100be295babb1c35a2f1e6e8180f) #18
  unreachable
}
