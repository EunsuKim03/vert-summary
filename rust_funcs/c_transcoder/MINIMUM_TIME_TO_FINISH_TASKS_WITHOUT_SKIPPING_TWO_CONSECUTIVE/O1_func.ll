define noundef i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #3 {
start:
  %arr.sroa.2.0.extract.shift = lshr i64 %0, 32
  %arr.sroa.2.0.extract.trunc = trunc nuw i64 %arr.sroa.2.0.extract.shift to i32
  %_3 = icmp slt i32 %n, 1
  br i1 %_3, label %bb12, label %bb2

bb2:                                              ; preds = %start
  %arr.sroa.0.0.extract.trunc = trunc i64 %0 to i32
  %1 = sitofp i32 %arr.sroa.0.0.extract.trunc to float
  %_0.i.i.i8.not = icmp eq i32 %n, 1
  br i1 %_0.i.i.i8.not, label %bb8, label %bb9

bb8:                                              ; preds = %bb9, %bb2
  %incl.sroa.0.0.lcssa = phi float [ %1, %bb2 ], [ %incl_new, %bb9 ]
  %excl.sroa.0.0.lcssa = phi float [ 0.000000e+00, %bb2 ], [ %1, %bb9 ]
  %2 = tail call noundef float @llvm.minnum.f32(float %incl.sroa.0.0.lcssa, float %excl.sroa.0.0.lcssa)
  %3 = tail call i32 @llvm.fptosi.sat.i32.f32(float %2)
  br label %bb12

bb12:                                             ; preds = %start, %bb8
  %_0.sroa.0.0 = phi i32 [ %3, %bb8 ], [ 0, %start ]
  ret i32 %_0.sroa.0.0

bb9:                                              ; preds = %bb2
  %_16 = sitofp i32 %arr.sroa.2.0.extract.trunc to float
  %4 = tail call noundef float @llvm.minnum.f32(float %1, float 0.000000e+00)
  %incl_new = fadd float %4, %_16
  %_0.i.i.i = icmp ugt i32 %n, 2
  br i1 %_0.i.i.i, label %panic, label %bb8

panic:                                            ; preds = %bb9
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_6bdfd365fa4066ed1e4a854bc32d17ac) #24
  unreachable
}
