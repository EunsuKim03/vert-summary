define noundef i32 @f_gold(i64 %0, i32 noundef %n, i32 noundef %c) unnamed_addr #1 {
start:
  %weight.sroa.0.0.extract.trunc = trunc i64 %0 to i32
  %1 = bitcast i32 %weight.sroa.0.0.extract.trunc to float
  %weight.sroa.2.0.extract.shift = lshr i64 %0, 32
  %weight.sroa.2.0.extract.trunc = trunc nuw i64 %weight.sroa.2.0.extract.shift to i32
  %2 = bitcast i32 %weight.sroa.2.0.extract.trunc to float
  %3 = sitofp i32 %c to float
  %_136 = icmp sgt i32 %n, 0
  br i1 %_136, label %bb8.preheader, label %bb9

bb8.preheader:                                    ; preds = %start
  %4 = add nsw i32 %n, -3
  %.not = icmp ult i32 %4, -2
  br i1 %.not, label %panic, label %bb8

bb9:                                              ; preds = %bb8, %start
  %res.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %res.sroa.0.1.lcssa, %bb8 ]
  ret i32 %res.sroa.0.0.lcssa

bb8:                                              ; preds = %bb8.preheader
  %_7 = fcmp ogt float %1, %3
  %5 = zext i1 %_7 to i32
  %exitcond.not = icmp eq i32 %n, 1
  %bin_rem.sroa.0.1 = fsub float %3, %1
  %_7.1 = fcmp olt float %bin_rem.sroa.0.1, %2
  %6 = zext i1 %_7.1 to i32
  %res.sroa.0.1.1 = add nuw nsw i32 %5, %6
  %res.sroa.0.1.lcssa = select i1 %exitcond.not, i32 %5, i32 %res.sroa.0.1.1
  br label %bb9

panic:                                            ; preds = %bb8.preheader
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_97224dbd534be392badc5cb6e49a382e) #18
  unreachable
}
