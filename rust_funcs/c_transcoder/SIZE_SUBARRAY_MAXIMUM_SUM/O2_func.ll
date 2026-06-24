define noundef i32 @f_gold(i64 %0, i32 noundef %size) unnamed_addr #1 {
start:
  %a.sroa.0.0.extract.trunc = trunc i64 %0 to i32
  %1 = bitcast i32 %a.sroa.0.0.extract.trunc to float
  %a.sroa.2.0.extract.shift = lshr i64 %0, 32
  %a.sroa.2.0.extract.trunc = trunc nuw i64 %a.sroa.2.0.extract.shift to i32
  %2 = bitcast i32 %a.sroa.2.0.extract.trunc to float
  %_196 = icmp sgt i32 %size, 0
  br i1 %_196, label %bb9.preheader, label %bb10

bb9.preheader:                                    ; preds = %start
  %3 = add nsw i32 %size, -3
  %.not = icmp ult i32 %3, -2
  br i1 %.not, label %panic, label %bb9

bb10:                                             ; preds = %bb9, %bb9.1, %start
  %reass.sub = phi i32 [ 1, %start ], [ 1, %bb9 ], [ %7, %bb9.1 ]
  ret i32 %reass.sub

bb9:                                              ; preds = %bb9.preheader
  %exitcond.not = icmp eq i32 %size, 1
  br i1 %exitcond.not, label %bb10, label %bb9.1

bb9.1:                                            ; preds = %bb9
  %_16 = fcmp olt float %1, 0.000000e+00
  %4 = fadd float %1, 0.000000e+00
  %max_ending_here.sroa.0.1 = select i1 %_16, float 0.000000e+00, float %4
  %_11 = fcmp ogt float %4, 0xFFF0000000000000
  %max_so_far.sroa.0.1 = select i1 %_11, float %4, float 0xFFF0000000000000
  %5 = fadd float %max_ending_here.sroa.0.1, %2
  %_11.1 = fcmp olt float %max_so_far.sroa.0.1, %5
  %narrow = select i1 %_11.1, i1 %_16, i1 false
  %start1.sroa.0.1.1.neg = sext i1 %narrow to i32
  %end.sroa.0.1.1 = zext i1 %_11.1 to i32
  %6 = add nsw i32 %start1.sroa.0.1.1.neg, %end.sroa.0.1.1
  %7 = add nsw i32 %6, 1
  br label %bb10

panic:                                            ; preds = %bb9.preheader
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_e7281b3c6a3fe3dc4ced0f5af2ae6db2) #18
  unreachable
}
