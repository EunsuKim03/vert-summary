define noundef i32 @f_gold(ptr noalias noundef nonnull readonly align 4 captures(none) %str.0, i64 noundef range(i64 0, 2305843009213693952) %str.1, i32 noundef %n) unnamed_addr #3 {
start:
  %_5 = sitofp i32 %n to float
  %_6 = fadd float %_5, 1.000000e+00
  %_4 = fmul float %_6, %_5
  %0 = fmul float %_4, 5.000000e-01
  %_0.i.i.i11 = icmp sgt i32 %n, 0
  br i1 %_0.i.i.i11, label %bb5, label %bb6

bb5:                                              ; preds = %start, %bb17
  %spec.select17 = phi i32 [ %spec.select, %bb17 ], [ 1, %start ]
  %ans.sroa.0.016 = phi float [ %ans.sroa.0.1, %bb17 ], [ %0, %start ]
  %a_index.sroa.0.015 = phi i32 [ %a_index.sroa.0.1, %bb17 ], [ 0, %start ]
  %b_index.sroa.0.014 = phi i32 [ %b_index.sroa.0.1, %bb17 ], [ 0, %start ]
  %c_index.sroa.0.013 = phi i32 [ %c_index.sroa.0.1, %bb17 ], [ 0, %start ]
  %iter.sroa.0.012 = phi i32 [ %spec.select17, %bb17 ], [ 0, %start ]
  %_19 = zext nneg i32 %iter.sroa.0.012 to i64
  %_21 = icmp samesign ugt i64 %str.1, %_19
  br i1 %_21, label %bb7, label %panic

bb6:                                              ; preds = %bb17, %start
  %ans.sroa.0.0.lcssa = phi float [ %0, %start ], [ %ans.sroa.0.1, %bb17 ]
  %_0 = tail call i32 @llvm.fptosi.sat.i32.f32(float %ans.sroa.0.0.lcssa)
  ret i32 %_0

bb7:                                              ; preds = %bb5
  %1 = getelementptr inbounds nuw i32, ptr %str.0, i64 %_19
  %_18 = load i32, ptr %1, align 4, !range !1630, !noundef !37
  %2 = add nuw i32 %iter.sroa.0.012, 1
  switch i32 %_18, label %bb14 [
    i32 97, label %bb17
    i32 98, label %bb12
  ]

panic:                                            ; preds = %bb5
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_19, i64 noundef %str.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_a0377b3051ebee8df156892e4e61526e) #24
  unreachable

bb14:                                             ; preds = %bb7
  br label %bb17

bb12:                                             ; preds = %bb7
  br label %bb17

bb17:                                             ; preds = %bb7, %bb14, %bb12
  %a_index.sroa.0.015.sink = phi i32 [ %a_index.sroa.0.015, %bb14 ], [ %a_index.sroa.0.015, %bb12 ], [ %b_index.sroa.0.014, %bb7 ]
  %b_index.sroa.0.014.sink = phi i32 [ %b_index.sroa.0.014, %bb14 ], [ %c_index.sroa.0.013, %bb12 ], [ %c_index.sroa.0.013, %bb7 ]
  %c_index.sroa.0.1 = phi i32 [ %2, %bb14 ], [ %c_index.sroa.0.013, %bb12 ], [ %c_index.sroa.0.013, %bb7 ]
  %b_index.sroa.0.1 = phi i32 [ %b_index.sroa.0.014, %bb14 ], [ %2, %bb12 ], [ %b_index.sroa.0.014, %bb7 ]
  %a_index.sroa.0.1 = phi i32 [ %a_index.sroa.0.015, %bb14 ], [ %a_index.sroa.0.015, %bb12 ], [ %2, %bb7 ]
  %_35 = sitofp i32 %a_index.sroa.0.015.sink to float
  %_37 = sitofp i32 %b_index.sroa.0.014.sink to float
  %3 = tail call noundef float @llvm.minnum.f32(float %_35, float %_37)
  %ans.sroa.0.1 = fsub float %ans.sroa.0.016, %3
  %_0.i.i.i = icmp slt i32 %spec.select17, %n
  %4 = zext i1 %_0.i.i.i to i32
  %spec.select = add nuw nsw i32 %spec.select17, %4
  br i1 %_0.i.i.i, label %bb5, label %bb6
}
