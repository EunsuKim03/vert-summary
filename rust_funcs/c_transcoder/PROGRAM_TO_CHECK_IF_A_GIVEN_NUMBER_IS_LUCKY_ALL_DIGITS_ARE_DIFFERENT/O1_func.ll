define noundef range(i32 0, 2) i32 @f_gold(i32 noundef %n) unnamed_addr #3 {
start:
  %arr = alloca [40 x i8], align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %arr)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %arr, i8 0, i64 40, i1 false)
  %_44 = icmp sgt i32 %n, 0
  br i1 %_44, label %bb2.preheader, label %bb8

bb2.preheader:                                    ; preds = %start
  %0 = sitofp i32 %n to float
  br label %bb2

bb2:                                              ; preds = %bb2.preheader, %bb6
  %n1.sroa.0.05 = phi float [ %3, %bb6 ], [ %0, %bb2.preheader ]
  %_7 = frem float %n1.sroa.0.05, 1.000000e+01
  %digit = tail call i64 @llvm.fptoui.sat.i64.f32(float %_7)
  %_11 = icmp ult i64 %digit, 10
  br i1 %_11, label %bb3, label %panic

bb8:                                              ; preds = %bb6, %bb3, %start
  %_0.sroa.0.0 = phi i32 [ 1, %start ], [ 1, %bb6 ], [ 0, %bb3 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %arr)
  ret i32 %_0.sroa.0.0

bb3:                                              ; preds = %bb2
  %1 = getelementptr inbounds nuw i32, ptr %arr, i64 %digit
  %_10 = load i32, ptr %1, align 4, !noundef !37
  %_9 = icmp sgt i32 %_10, 0
  br i1 %_9, label %bb8, label %bb6

panic:                                            ; preds = %bb2
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %digit, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_006ede1deb6f58bff687c655ab2532ac) #25
  unreachable

bb6:                                              ; preds = %bb3
  %2 = add nsw i32 %_10, 1
  store i32 %2, ptr %1, align 4
  %3 = fdiv float %n1.sroa.0.05, 1.000000e+01
  %_4 = fcmp ogt float %3, 0.000000e+00
  br i1 %_4, label %bb2, label %bb8
}
