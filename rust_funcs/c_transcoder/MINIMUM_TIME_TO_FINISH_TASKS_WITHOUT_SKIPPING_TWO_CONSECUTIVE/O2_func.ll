define noundef i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #1 {
start:
  %arr = alloca [8 x i8], align 8
  store i64 %0, ptr %arr, align 8
  %_3 = icmp slt i32 %n, 1
  br i1 %_3, label %bb5, label %bb2

bb2:                                              ; preds = %start
  %1 = trunc i64 %0 to i32
  %2 = sitofp i32 %1 to float
  switch i32 %n, label %panic [
    i32 1, label %bb7
    i32 2, label %bb6.preheader
  ]

bb6.preheader:                                    ; preds = %bb2
  %iter1 = zext nneg i32 %n to i64
  %3 = add nsw i64 %iter1, -1
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb7, label %bb6.epil

bb6.epil:                                         ; preds = %bb6.preheader
  %4 = getelementptr inbounds nuw i32, ptr %arr, i64 1
  %_12.epil = load i32, ptr %4, align 4, !noundef !23
  %_11.epil = sitofp i32 %_12.epil to float
  %5 = tail call float @llvm.minnum.f32(float %2, float 0.000000e+00)
  %incl_new.epil = fadd float %5, %_11.epil
  br label %bb7

bb7:                                              ; preds = %bb6.epil, %bb6.preheader, %bb2
  %excl.sroa.0.0.lcssa = phi float [ 0.000000e+00, %bb2 ], [ poison, %bb6.preheader ], [ %2, %bb6.epil ]
  %incl.sroa.0.0.lcssa = phi float [ %2, %bb2 ], [ poison, %bb6.preheader ], [ %incl_new.epil, %bb6.epil ]
  %6 = tail call float @llvm.minnum.f32(float %incl.sroa.0.0.lcssa, float %excl.sroa.0.0.lcssa)
  %7 = tail call i32 @llvm.fptosi.sat.i32.f32(float %6)
  br label %bb5

bb5:                                              ; preds = %start, %bb7
  %_0.sroa.0.0 = phi i32 [ %7, %bb7 ], [ 0, %start ]
  ret i32 %_0.sroa.0.0

panic:                                            ; preds = %bb2
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_6bdfd365fa4066ed1e4a854bc32d17ac) #18
  unreachable
}
