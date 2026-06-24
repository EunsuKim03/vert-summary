define noundef i32 @f_gold(i64 %0, i32 noundef %n, i32 noundef %k) unnamed_addr #1 {
start:
  %a.sroa.2.0.extract.shift = lshr i64 %0, 32
  %a.sroa.2.0.extract.trunc = trunc nuw i64 %a.sroa.2.0.extract.shift to i32
  %1 = bitcast i32 %a.sroa.2.0.extract.trunc to float
  %exitcond.not = icmp slt i32 %n, 1
  br i1 %exitcond.not, label %bb11, label %bb12

bb12:                                             ; preds = %start
  %a.sroa.0.0.extract.trunc = trunc i64 %0 to i32
  %2 = bitcast i32 %a.sroa.0.0.extract.trunc to float
  %_8 = fcmp ule float %2, 0.000000e+00
  %times.sroa.0.1 = zext i1 %_8 to i32
  %best.sroa.0.1 = select i1 %_8, float 0.000000e+00, float %2
  %_14.not = icmp sle i32 %k, %times.sroa.0.1
  %exitcond.1.not = icmp eq i32 %n, 1
  %or.cond = or i1 %_14.not, %exitcond.1.not
  br i1 %or.cond, label %bb11, label %bb12.1

bb11:                                             ; preds = %start, %bb12, %bb12.1
  %best.sroa.0.1.lcssa.sink = phi float [ %best.sroa.0.1, %bb12 ], [ %best.sroa.0.1.1, %bb12.1 ], [ 0.000000e+00, %start ]
  %3 = tail call i32 @llvm.fptosi.sat.i32.f32(float %best.sroa.0.1.lcssa.sink)
  ret i32 %3

bb12.1:                                           ; preds = %bb12
  %_8.1 = fcmp olt float %best.sroa.0.1, %1
  %4 = select i1 %_8, i32 2, i32 1
  %times.sroa.0.1.1 = select i1 %_8.1, i32 1, i32 %4
  %best.sroa.0.1.1 = select i1 %_8.1, float %1, float %best.sroa.0.1
  %_14.not.1 = icmp samesign uge i32 %times.sroa.0.1.1, %k
  %exitcond.2.not = icmp eq i32 %n, 2
  %or.cond13 = or i1 %_14.not.1, %exitcond.2.not
  br i1 %or.cond13, label %bb11, label %panic

panic:                                            ; preds = %bb12.1
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_464df6cbf6850b8b33851421cdde3d88) #18
  unreachable
}
