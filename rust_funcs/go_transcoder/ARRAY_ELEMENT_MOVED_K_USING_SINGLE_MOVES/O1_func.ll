define noundef i32 @f_gold(i64 %0, i32 noundef %n, i32 noundef %k) unnamed_addr #3 {
start:
  %a = alloca [8 x i8], align 8
  store i64 %0, ptr %a, align 8
  br label %bb2

bb2:                                              ; preds = %bb7, %start
  %iter.sroa.0.0 = phi i32 [ 0, %start ], [ %spec.select5, %bb7 ]
  %best.sroa.0.0 = phi float [ 0.000000e+00, %start ], [ %best.sroa.0.1, %bb7 ]
  %times.sroa.0.0 = phi i32 [ 0, %start ], [ %times.sroa.0.1, %bb7 ]
  %_0.i.i.i = icmp slt i32 %iter.sroa.0.0, %n
  %1 = zext i1 %_0.i.i.i to i32
  %spec.select5 = add nuw nsw i32 %iter.sroa.0.0, %1
  br i1 %_0.i.i.i, label %bb5, label %bb16

bb5:                                              ; preds = %bb2
  %_15 = zext nneg i32 %iter.sroa.0.0 to i64
  %_16 = icmp samesign ult i32 %iter.sroa.0.0, 2
  br i1 %_16, label %bb7, label %panic

bb16:                                             ; preds = %bb2, %bb7
  %best.sroa.0.1.sink = phi float [ %best.sroa.0.1, %bb7 ], [ %best.sroa.0.0, %bb2 ]
  %2 = tail call i32 @llvm.fptosi.sat.i32.f32(float %best.sroa.0.1.sink)
  ret i32 %2

bb7:                                              ; preds = %bb5
  %3 = getelementptr inbounds nuw float, ptr %a, i64 %_15
  %_14 = load float, ptr %3, align 4, !noundef !37
  %_13 = fcmp ogt float %_14, %best.sroa.0.0
  %4 = add i32 %times.sroa.0.0, 1
  %_18 = icmp eq i32 %iter.sroa.0.0, 1
  %spec.select = select i1 %_18, i32 1, i32 %times.sroa.0.0
  %best.sroa.0.1 = select i1 %_13, float %_14, float %best.sroa.0.0
  %times.sroa.0.1 = select i1 %_13, i32 %spec.select, i32 %4
  %_19.not = icmp slt i32 %times.sroa.0.1, %k
  br i1 %_19.not, label %bb2, label %bb16

panic:                                            ; preds = %bb5
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_15, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_e7b981c64d6df1060397150ea77bc64c) #24
  unreachable
}
