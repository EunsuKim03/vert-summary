define noundef i32 @f_gold(i64 %0, i32 noundef %n, i32 noundef %k) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %coin.sroa.0.0.extract.trunc = trunc i64 %0 to i32
  %coin.sroa.3.0.extract.shift = lshr i64 %0, 32
  %coin.sroa.3.0.extract.trunc = trunc nuw i64 %coin.sroa.3.0.extract.shift to i32
  %1 = lshr i64 %0, 32
  %2 = trunc nuw i64 %1 to i32
  %3 = trunc i64 %0 to i32
  %_0.i.i.i.i.i = icmp slt i32 %2, %3
  %spec.select = select i1 %_0.i.i.i.i.i, i32 %3, i32 %coin.sroa.3.0.extract.trunc
  %spec.select13 = select i1 %_0.i.i.i.i.i, i32 %2, i32 %coin.sroa.0.0.extract.trunc
  %_10 = sitofp i32 %n to float
  %_12 = add i32 %k, 1
  %_11 = sitofp i32 %_12 to float
  %_9 = fdiv float %_10, %_11
  %4 = tail call float @llvm.ceil.f32(float %_9)
  %coins_needed = tail call i32 @llvm.fptosi.sat.i32.f32(float %4)
  %_185 = icmp sgt i32 %coins_needed, 0
  br i1 %_185, label %bb5.preheader, label %bb6

bb5.preheader:                                    ; preds = %start
  %5 = add nsw i32 %coins_needed, -3
  %.not = icmp ult i32 %5, -2
  br i1 %.not, label %panic, label %bb5

bb6:                                              ; preds = %bb5, %start
  %ans.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %.lcssa, %bb5 ]
  ret i32 %ans.sroa.0.0.lcssa

bb5:                                              ; preds = %bb5.preheader
  %exitcond.not = icmp eq i32 %coins_needed, 1
  %6 = add i32 %spec.select, %spec.select13
  %.lcssa = select i1 %exitcond.not, i32 %spec.select13, i32 %6
  br label %bb6

panic:                                            ; preds = %bb5.preheader
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_90c20a7584e3eeca5917021248684521) #18
  unreachable
}
