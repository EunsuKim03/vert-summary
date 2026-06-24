define noundef range(i32 0, -2147483648) i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %arr.sroa.0.0.extract.trunc = trunc i64 %0 to i32
  %1 = bitcast i32 %arr.sroa.0.0.extract.trunc to float
  %arr.sroa.2.0.extract.shift = lshr i64 %0, 32
  %arr.sroa.2.0.extract.trunc = trunc nuw i64 %arr.sroa.2.0.extract.shift to i32
  %2 = bitcast i32 %arr.sroa.2.0.extract.trunc to float
  %_1610 = icmp sgt i32 %n, 0
  br i1 %_1610, label %bb3, label %bb9

bb1.loopexit:                                     ; preds = %bb3.1, %bb3
  %max_len.sroa.0.2.lcssa = phi i32 [ %max_len.sroa.0.2, %bb3 ], [ %max_len.sroa.0.2.1, %bb3.1 ]
  %exitcond21.not = icmp eq i32 %n, 1
  br i1 %exitcond21.not, label %bb9, label %bb3.133

bb3.133:                                          ; preds = %bb1.loopexit
  %_11.129 = fcmp oeq float %2, 0.000000e+00
  %_0.sroa.0.0.i.130 = tail call i32 @llvm.smax.i32(i32 %max_len.sroa.0.2.lcssa, i32 1)
  %max_len.sroa.0.2.131 = select i1 %_11.129, i32 %_0.sroa.0.0.i.130, i32 %max_len.sroa.0.2.lcssa
  %exitcond.not.132 = icmp eq i32 %n, 2
  br i1 %exitcond.not.132, label %bb9, label %panic

bb9:                                              ; preds = %bb1.loopexit, %bb3.133, %start
  %max_len.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %max_len.sroa.0.2.lcssa, %bb1.loopexit ], [ %max_len.sroa.0.2.131, %bb3.133 ]
  ret i32 %max_len.sroa.0.0.lcssa

bb3:                                              ; preds = %start
  %3 = fadd float %1, 0.000000e+00
  %_11 = fcmp oeq float %1, 0.000000e+00
  %max_len.sroa.0.2 = zext i1 %_11 to i32
  %exitcond.not = icmp eq i32 %n, 1
  br i1 %exitcond.not, label %bb1.loopexit, label %bb3.1

bb3.1:                                            ; preds = %bb3
  %4 = fadd float %3, %2
  %_11.1 = fcmp oeq float %4, 0.000000e+00
  %max_len.sroa.0.2.1 = select i1 %_11.1, i32 2, i32 %max_len.sroa.0.2
  %exitcond.not.1 = icmp eq i32 %n, 2
  br i1 %exitcond.not.1, label %bb1.loopexit, label %panic

panic:                                            ; preds = %bb3.1, %bb3.133
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_5f86f6e9dcadb26fa650756119ae211b) #18
  unreachable
}
