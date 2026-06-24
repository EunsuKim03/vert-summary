define noundef i32 @f_gold(ptr noalias noundef nonnull readonly align 4 captures(none) %str.0, i64 noundef range(i64 0, 2305843009213693952) %str.1, i32 noundef %n) unnamed_addr #1 {
start:
  %_5 = sitofp i32 %n to float
  %_6 = fadd float %_5, 1.000000e+00
  %_4 = fmul float %_6, %_5
  %0 = fmul float %_4, 5.000000e-01
  %_3412 = icmp sgt i32 %n, 0
  br i1 %_3412, label %bb10.preheader, label %bb11

bb10.preheader:                                   ; preds = %start
  %1 = zext nneg i32 %n to i64
  %2 = add nsw i32 %n, -1
  %3 = zext nneg i32 %2 to i64
  %.not.not = icmp samesign ugt i64 %str.1, %3
  br i1 %.not.not, label %bb10, label %panic

bb11:                                             ; preds = %bb9, %start
  %ans.sroa.0.0.lcssa = phi float [ %0, %start ], [ %ans.sroa.0.1, %bb9 ]
  %_0 = tail call i32 @llvm.fptosi.sat.i32.f32(float %ans.sroa.0.0.lcssa)
  ret i32 %_0

bb10:                                             ; preds = %bb10.preheader, %bb9
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb9 ], [ 0, %bb10.preheader ]
  %ans.sroa.0.017 = phi float [ %ans.sroa.0.1, %bb9 ], [ %0, %bb10.preheader ]
  %a_index.sroa.0.016 = phi i32 [ %a_index.sroa.0.1, %bb9 ], [ 0, %bb10.preheader ]
  %b_index.sroa.0.015 = phi i32 [ %b_index.sroa.0.1, %bb9 ], [ 0, %bb10.preheader ]
  %c_index.sroa.0.014 = phi i32 [ %c_index.sroa.0.1, %bb9 ], [ 0, %bb10.preheader ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %4 = getelementptr inbounds nuw i32, ptr %str.0, i64 %indvars.iv
  %_13 = load i32, ptr %4, align 4, !range !1031, !noundef !23
  %5 = trunc nuw nsw i64 %indvars.iv.next to i32
  switch i32 %_13, label %bb7 [
    i32 97, label %bb9
    i32 98, label %bb6
  ]

panic:                                            ; preds = %bb10.preheader
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %str.1, i64 noundef %str.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_a0377b3051ebee8df156892e4e61526e) #18
  unreachable

bb7:                                              ; preds = %bb10
  br label %bb9

bb6:                                              ; preds = %bb10
  br label %bb9

bb9:                                              ; preds = %bb10, %bb7, %bb6
  %a_index.sroa.0.016.sink = phi i32 [ %a_index.sroa.0.016, %bb7 ], [ %a_index.sroa.0.016, %bb6 ], [ %b_index.sroa.0.015, %bb10 ]
  %b_index.sroa.0.015.sink = phi i32 [ %b_index.sroa.0.015, %bb7 ], [ %c_index.sroa.0.014, %bb6 ], [ %c_index.sroa.0.014, %bb10 ]
  %c_index.sroa.0.1 = phi i32 [ %5, %bb7 ], [ %c_index.sroa.0.014, %bb6 ], [ %c_index.sroa.0.014, %bb10 ]
  %b_index.sroa.0.1 = phi i32 [ %b_index.sroa.0.015, %bb7 ], [ %5, %bb6 ], [ %b_index.sroa.0.015, %bb10 ]
  %a_index.sroa.0.1 = phi i32 [ %a_index.sroa.0.016, %bb7 ], [ %a_index.sroa.0.016, %bb6 ], [ %5, %bb10 ]
  %_30 = sitofp i32 %a_index.sroa.0.016.sink to float
  %_32 = sitofp i32 %b_index.sroa.0.015.sink to float
  %6 = tail call float @llvm.minnum.f32(float %_30, float %_32)
  %ans.sroa.0.1 = fsub float %ans.sroa.0.017, %6
  %exitcond.not = icmp eq i64 %indvars.iv.next, %1
  br i1 %exitcond.not, label %bb11, label %bb10
}
