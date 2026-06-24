define noundef i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #3 {
start:
  %arr.sroa.0.0.extract.trunc = trunc i64 %0 to i32
  %1 = bitcast i32 %arr.sroa.0.0.extract.trunc to float
  %arr.sroa.5.0.extract.shift = lshr i64 %0, 32
  %arr.sroa.5.0.extract.trunc = trunc nuw i64 %arr.sroa.5.0.extract.shift to i32
  %2 = bitcast i32 %arr.sroa.5.0.extract.trunc to float
  %_0.i.i.i49 = icmp sgt i32 %n, 0
  br i1 %_0.i.i.i49, label %bb19, label %bb6

bb6:                                              ; preds = %bb19, %bb13.172, %start
  %res.sroa.0.0.lcssa = phi float [ 0xFFF0000000000000, %start ], [ %res.sroa.0.1, %bb19 ], [ %res.sroa.0.1.1, %bb13.172 ]
  %_0 = tail call i32 @llvm.fptosi.sat.i32.f32(float %res.sroa.0.0.lcssa)
  ret i32 %_0

bb19:                                             ; preds = %start
  %_36 = fcmp ord float %1, 0.000000e+00
  %3 = tail call float @llvm.maxnum.f32(float %1, float 0xFFF0000000000000)
  %res.sroa.0.1 = select i1 %_36, float %3, float 0xFFF0000000000000
  %exitcond.not = icmp eq i32 %n, 1
  br i1 %exitcond.not, label %bb6, label %bb13.172

bb13.172:                                         ; preds = %bb19
  %4 = fadd float %2, %1
  %_36.1 = fcmp oeq float %4, %2
  %5 = tail call float @llvm.maxnum.f32(float %res.sroa.0.1, float %4)
  %res.sroa.0.1.1 = select i1 %_36.1, float %5, float %res.sroa.0.1
  %exitcond.not.1 = icmp eq i32 %n, 2
  br i1 %exitcond.not.1, label %bb6, label %bb5.2

bb5.2:                                            ; preds = %bb13.172
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_9719c09cff388b717c2fe55a18896cd3) #24
  unreachable
}
