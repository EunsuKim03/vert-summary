define noundef i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #1 {
start:
  %_2328 = icmp sgt i32 %n, 0
  %1 = trunc i64 %0 to i32
  %2 = bitcast i32 %1 to float
  %3 = lshr i64 %0, 32
  %4 = trunc nuw i64 %3 to i32
  %5 = bitcast i32 %4 to float
  br i1 %_2328, label %bb21, label %bb12

bb12:                                             ; preds = %bb21, %bb21.1, %start
  %res.sroa.0.0.lcssa = phi float [ 0xFFF0000000000000, %start ], [ %res.sroa.0.1, %bb21 ], [ %res.sroa.0.1.1, %bb21.1 ]
  %_0 = tail call i32 @llvm.fptosi.sat.i32.f32(float %res.sroa.0.0.lcssa)
  ret i32 %_0

panic:                                            ; preds = %bb21.1
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_9719c09cff388b717c2fe55a18896cd3) #18
  unreachable

bb21:                                             ; preds = %start
  %_20 = fcmp ord float %2, 0.000000e+00
  %6 = tail call float @llvm.maxnum.f32(float %2, float 0xFFF0000000000000)
  %res.sroa.0.1 = select i1 %_20, float %6, float 0xFFF0000000000000
  %exitcond42.not = icmp eq i32 %n, 1
  br i1 %exitcond42.not, label %bb12, label %bb21.1

bb21.1:                                           ; preds = %bb21
  %7 = fadd float %5, %2
  %_20.1 = fcmp oeq float %7, %5
  %8 = tail call float @llvm.maxnum.f32(float %res.sroa.0.1, float %7)
  %res.sroa.0.1.1 = select i1 %_20.1, float %8, float %res.sroa.0.1
  %exitcond42.1.not = icmp eq i32 %n, 2
  br i1 %exitcond42.1.not, label %bb12, label %panic
}
