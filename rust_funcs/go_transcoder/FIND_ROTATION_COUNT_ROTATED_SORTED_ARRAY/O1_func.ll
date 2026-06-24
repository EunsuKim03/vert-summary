define noundef range(i32 0, 2) i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #3 {
start:
  %arr = alloca [8 x i8], align 8
  store i64 %0, ptr %arr, align 8
  %_7 = sext i32 %n to i64
  %_0.i.i.i6.not = icmp eq i32 %n, 0
  br i1 %_0.i.i.i6.not, label %bb6, label %bb5.preheader

bb5.preheader:                                    ; preds = %start
  %_4 = load i32, ptr %arr, align 8, !noundef !37
  %1 = sitofp i32 %_4 to float
  %_16 = load i32, ptr %arr, align 8, !noundef !37
  %_15 = sitofp i32 %_16 to float
  %_13 = fcmp ogt float %1, %_15
  %min.sroa.0.1 = select i1 %_13, float %_15, float %1
  %_0.i.i.i.not = icmp eq i32 %n, 1
  %spec.select = select i1 %_0.i.i.i.not, i64 1, i64 2
  br i1 %_0.i.i.i.not, label %bb6, label %bb7.1

bb6:                                              ; preds = %bb5.preheader, %bb7.1, %bb7.2, %start
  %min_index.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ 0, %bb5.preheader ], [ %min_index.sroa.0.1.1, %bb7.1 ], [ %min_index.sroa.0.1.2, %bb7.2 ]
  ret i32 %min_index.sroa.0.0.lcssa

bb7.1:                                            ; preds = %bb5.preheader
  %2 = getelementptr inbounds nuw i8, ptr %arr, i64 4
  %_16.1 = load i32, ptr %2, align 4, !noundef !37
  %_15.1 = sitofp i32 %_16.1 to float
  %_13.1 = fcmp ogt float %min.sroa.0.1, %_15.1
  %min_index.sroa.0.1.1 = zext i1 %_13.1 to i32
  %min.sroa.0.1.1 = select i1 %_13.1, float %_15.1, float %min.sroa.0.1
  %_0.i.i.i.1 = icmp ult i64 %spec.select, %_7
  br i1 %_0.i.i.i.1, label %bb5.2, label %bb6

bb5.2:                                            ; preds = %bb7.1
  br i1 %_0.i.i.i.not, label %bb7.2, label %panic

bb7.2:                                            ; preds = %bb5.2
  %3 = getelementptr inbounds nuw i32, ptr %arr, i64 %spec.select
  %_16.2 = load i32, ptr %3, align 4, !noundef !37
  %_15.2 = sitofp i32 %_16.2 to float
  %_13.2 = fcmp ogt float %min.sroa.0.1.1, %_15.2
  %4 = trunc nuw nsw i64 %spec.select to i32
  %min_index.sroa.0.1.2 = select i1 %_13.2, i32 %4, i32 %min_index.sroa.0.1.1
  br label %bb6

panic:                                            ; preds = %bb5.2
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %spec.select, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_5d92c5a971cfec81e96183ea68862ccf) #24
  unreachable
}
