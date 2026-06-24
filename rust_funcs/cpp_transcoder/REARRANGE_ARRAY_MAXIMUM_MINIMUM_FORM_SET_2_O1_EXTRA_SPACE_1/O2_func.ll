define void @f_gold(ptr noalias noundef nonnull align 4 captures(none) %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, float noundef %n) unnamed_addr #1 {
start:
  %_19.not = icmp eq i64 %arr.1, 0
  br i1 %_19.not, label %bb8, label %bb7, !prof !909

bb8:                                              ; preds = %start
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_6f534572397d4b9847128da29943f6db) #18
  unreachable

bb7:                                              ; preds = %start
  %iter1 = tail call i64 @llvm.fptoui.sat.i64.f32(float %n)
  %_236.not = icmp eq i64 %iter1, 0
  br i1 %_236.not, label %bb10, label %bb9.preheader

bb9.preheader:                                    ; preds = %bb7
  %0 = load float, ptr %arr.0, align 4, !noundef !23
  %1 = getelementptr float, ptr %arr.0, i64 %arr.1
  %_20 = getelementptr i8, ptr %1, i64 -4
  %2 = load float, ptr %_20, align 4, !noundef !23
  br label %bb9

bb10:                                             ; preds = %bb6, %bb7
  ret void

bb9:                                              ; preds = %bb9.preheader, %bb6
  %max_ele.sroa.0.09 = phi float [ %max_ele.sroa.0.1, %bb6 ], [ %2, %bb9.preheader ]
  %iter.sroa.0.08 = phi i64 [ %3, %bb6 ], [ 0, %bb9.preheader ]
  %min_ele.sroa.0.07 = phi float [ %min_ele.sroa.0.1, %bb6 ], [ %0, %bb9.preheader ]
  %3 = add nuw i64 %iter.sroa.0.08, 1
  %_13 = and i64 %iter.sroa.0.08, 1
  %_12 = icmp eq i64 %_13, 0
  %_15 = icmp ult i64 %iter.sroa.0.08, %arr.1
  br i1 %_12, label %bb2, label %bb4

bb4:                                              ; preds = %bb9
  br i1 %_15, label %bb5, label %panic

bb2:                                              ; preds = %bb9
  br i1 %_15, label %bb3, label %panic2

bb5:                                              ; preds = %bb4
  %4 = getelementptr inbounds nuw float, ptr %arr.0, i64 %iter.sroa.0.08
  store float %min_ele.sroa.0.07, ptr %4, align 4
  %5 = fadd float %min_ele.sroa.0.07, 1.000000e+00
  br label %bb6

panic:                                            ; preds = %bb4
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %iter.sroa.0.08, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_ddee183a7685b6485c6b77d2651c9d0f) #18
  unreachable

bb6:                                              ; preds = %bb3, %bb5
  %min_ele.sroa.0.1 = phi float [ %min_ele.sroa.0.07, %bb3 ], [ %5, %bb5 ]
  %max_ele.sroa.0.1 = phi float [ %7, %bb3 ], [ %max_ele.sroa.0.09, %bb5 ]
  %exitcond.not = icmp eq i64 %3, %iter1
  br i1 %exitcond.not, label %bb10, label %bb9

bb3:                                              ; preds = %bb2
  %6 = getelementptr inbounds nuw float, ptr %arr.0, i64 %iter.sroa.0.08
  store float %max_ele.sroa.0.09, ptr %6, align 4
  %7 = fadd float %max_ele.sroa.0.09, -1.000000e+00
  br label %bb6

panic2:                                           ; preds = %bb2
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %iter.sroa.0.08, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_dc51205c9db4b3331cd1a90666556db1) #18
  unreachable
}
