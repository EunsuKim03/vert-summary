define noundef i32 @f_gold(i64 %0, float noundef %n, float noundef %x) unnamed_addr #1 {
start:
  %arr = alloca [8 x i8], align 8
  store i64 %0, ptr %arr, align 8
  %iter1 = tail call i64 @llvm.fptoui.sat.i64.f32(float %n)
  %_6 = add i64 %iter1, -1
  %_8 = icmp ult i64 %_6, 2
  %1 = trunc i64 %0 to i32
  %2 = bitcast i32 %1 to float
  %3 = lshr i64 %0, 32
  %4 = trunc nuw i64 %3 to i32
  %5 = bitcast i32 %4 to float
  br i1 %_8, label %bb1, label %panic

bb1:                                              ; preds = %start
  %6 = getelementptr inbounds nuw float, ptr %arr, i64 %_6
  %_5 = load float, ptr %6, align 4, !noundef !23
  %_4 = fcmp ult float %x, %_5
  br i1 %_4, label %bb3, label %bb2

panic:                                            ; preds = %start
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_6, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_ddddc5236d579213af3d11c3e4609488) #18
  unreachable

bb3:                                              ; preds = %bb1
  %_10 = fcmp olt float %x, %2
  %exitcond.not = icmp eq i64 %iter1, 1
  %or.cond.not10.not11 = or i1 %_10, %exitcond.not
  %_14 = fcmp uge float %x, %5
  %or.cond9.not = select i1 %or.cond.not10.not11, i1 true, i1 %_14
  %spec.select = sext i1 %or.cond9.not to i32
  br label %bb10

bb2:                                              ; preds = %bb1
  %_9 = fadd float %n, -1.000000e+00
  %7 = tail call i32 @llvm.fptosi.sat.i32.f32(float %_9)
  br label %bb10

bb10:                                             ; preds = %bb3, %bb2
  %_0.sroa.0.0 = phi i32 [ %7, %bb2 ], [ %spec.select, %bb3 ]
  ret i32 %_0.sroa.0.0
}
