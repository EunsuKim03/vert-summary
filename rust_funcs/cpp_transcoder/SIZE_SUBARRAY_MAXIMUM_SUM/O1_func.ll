define noundef i32 @f_gold(i64 %0, i32 noundef %size) unnamed_addr #3 {
start:
  %a = alloca [8 x i8], align 8
  store i64 %0, ptr %a, align 8
  %_0.i.i.i7 = icmp sgt i32 %size, 0
  br i1 %_0.i.i.i7, label %bb7, label %bb6

bb6.loopexit:                                     ; preds = %bb7.2, %bb7.1, %bb7
  %end.sroa.0.1.lcssa = phi i32 [ 0, %bb7 ], [ %end.sroa.0.1.1, %bb7.1 ], [ %end.sroa.0.1.2, %bb7.2 ]
  %start1.sroa.0.1.lcssa = phi i32 [ 0, %bb7 ], [ %start1.sroa.0.1.1, %bb7.1 ], [ %start1.sroa.0.1.2, %bb7.2 ]
  %1 = add nuw nsw i32 %end.sroa.0.1.lcssa, 1
  %2 = sub nsw i32 %1, %start1.sroa.0.1.lcssa
  br label %bb6

bb6:                                              ; preds = %bb6.loopexit, %start
  %_0 = phi i32 [ 1, %start ], [ %2, %bb6.loopexit ]
  ret i32 %_0

bb7:                                              ; preds = %start
  %_13 = load float, ptr %a, align 8, !noundef !37
  %3 = fadd float %_13, 0.000000e+00
  %_16 = fcmp ogt float %3, 0xC7EFFFFFE0000000
  %max_so_far.sroa.0.1 = select i1 %_16, float %3, float 0xC7EFFFFFE0000000
  %_21 = fcmp olt float %_13, 0.000000e+00
  %s.sroa.0.1 = zext i1 %_21 to i32
  %max_ending_here.sroa.0.1 = select i1 %_21, float 0.000000e+00, float %3
  %_0.i.i.i.not = icmp eq i32 %size, 1
  %spec.select = select i1 %_0.i.i.i.not, i32 1, i32 2
  br i1 %_0.i.i.i.not, label %bb6.loopexit, label %bb7.1

bb7.1:                                            ; preds = %bb7
  %4 = getelementptr inbounds nuw i8, ptr %a, i64 4
  %_13.1 = load float, ptr %4, align 4, !noundef !37
  %5 = fadd float %max_ending_here.sroa.0.1, %_13.1
  %_16.1 = fcmp olt float %max_so_far.sroa.0.1, %5
  %max_so_far.sroa.0.1.1 = select i1 %_16.1, float %5, float %max_so_far.sroa.0.1
  %end.sroa.0.1.1 = zext i1 %_16.1 to i32
  %start1.sroa.0.1.1 = select i1 %_16.1, i32 %s.sroa.0.1, i32 0
  %_21.1 = fcmp olt float %5, 0.000000e+00
  %s.sroa.0.1.1 = select i1 %_21.1, i32 2, i32 %s.sroa.0.1
  %max_ending_here.sroa.0.1.1 = select i1 %_21.1, float 0.000000e+00, float %5
  %_0.i.i.i.1 = icmp slt i32 %spec.select, %size
  br i1 %_0.i.i.i.1, label %bb5.2, label %bb6.loopexit

bb5.2:                                            ; preds = %bb7.1
  %_14.2 = zext nneg i32 %spec.select to i64
  br i1 %_0.i.i.i.not, label %bb7.2, label %panic

bb7.2:                                            ; preds = %bb5.2
  %6 = getelementptr inbounds nuw float, ptr %a, i64 %_14.2
  %_13.2 = load float, ptr %6, align 4, !noundef !37
  %7 = fadd float %max_ending_here.sroa.0.1.1, %_13.2
  %_16.2 = fcmp olt float %max_so_far.sroa.0.1.1, %7
  %end.sroa.0.1.2 = select i1 %_16.2, i32 %spec.select, i32 %end.sroa.0.1.1
  %start1.sroa.0.1.2 = select i1 %_16.2, i32 %s.sroa.0.1.1, i32 %start1.sroa.0.1.1
  br label %bb6.loopexit

panic:                                            ; preds = %bb5.2
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_14.2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_0f58a0199443c31e08dd98b2f6e344f5) #24
  unreachable
}
