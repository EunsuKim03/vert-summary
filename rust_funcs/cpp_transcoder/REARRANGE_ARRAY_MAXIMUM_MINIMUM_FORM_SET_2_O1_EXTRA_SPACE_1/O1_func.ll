define void @f_gold(ptr noalias noundef nonnull align 4 captures(address) %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, float noundef %n) unnamed_addr #3 {
start:
  %_3.not.i = icmp eq i64 %arr.1, 0
  %0 = getelementptr float, ptr %arr.0, i64 %arr.1
  %last.i = getelementptr i8, ptr %0, i64 -4
  %.not.i38 = icmp eq ptr %last.i, null
  %.not.i3 = or i1 %_3.not.i, %.not.i38
  br i1 %.not.i3, label %bb2.i4, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17h613ca36ca27ee72bE.exit", !prof !1033

bb2.i4:                                           ; preds = %start
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_6f534572397d4b9847128da29943f6db) #24, !noalias !1630
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17h613ca36ca27ee72bE.exit": ; preds = %start
  %_13 = tail call i64 @llvm.fptoui.sat.i64.f32(float %n)
  %_0.i.i.i11.not = icmp eq i64 %_13, 0
  br i1 %_0.i.i.i11.not, label %bb10, label %bb9.preheader

bb9.preheader:                                    ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h613ca36ca27ee72bE.exit"
  %1 = load float, ptr %arr.0, align 4, !noundef !37
  %2 = load float, ptr %last.i, align 4, !noundef !37
  br label %bb9

bb9:                                              ; preds = %bb9.preheader, %bb15
  %spec.select16 = phi i64 [ %spec.select, %bb15 ], [ 1, %bb9.preheader ]
  %max_ele.sroa.0.015 = phi float [ %max_ele.sroa.0.1, %bb15 ], [ %2, %bb9.preheader ]
  %min_ele.sroa.0.014 = phi float [ %min_ele.sroa.0.1, %bb15 ], [ %1, %bb9.preheader ]
  %iter.sroa.0.013 = phi i64 [ %spec.select16, %bb15 ], [ 0, %bb9.preheader ]
  %_20 = and i64 %iter.sroa.0.013, 1
  %_19 = icmp eq i64 %_20, 0
  %_23 = icmp ult i64 %iter.sroa.0.013, %arr.1
  br i1 %_19, label %bb11, label %bb13

bb10:                                             ; preds = %bb15, %"_ZN4core6option15Option$LT$T$GT$6unwrap17h613ca36ca27ee72bE.exit"
  ret void

bb13:                                             ; preds = %bb9
  br i1 %_23, label %bb14, label %panic

bb11:                                             ; preds = %bb9
  br i1 %_23, label %bb12, label %panic1

bb14:                                             ; preds = %bb13
  %3 = getelementptr inbounds nuw float, ptr %arr.0, i64 %iter.sroa.0.013
  store float %min_ele.sroa.0.014, ptr %3, align 4
  %4 = fadd float %min_ele.sroa.0.014, 1.000000e+00
  br label %bb15

panic:                                            ; preds = %bb13
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %iter.sroa.0.013, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_ddee183a7685b6485c6b77d2651c9d0f) #24
  unreachable

bb15:                                             ; preds = %bb12, %bb14
  %min_ele.sroa.0.1 = phi float [ %min_ele.sroa.0.014, %bb12 ], [ %4, %bb14 ]
  %max_ele.sroa.0.1 = phi float [ %6, %bb12 ], [ %max_ele.sroa.0.015, %bb14 ]
  %_0.i.i.i = icmp ult i64 %spec.select16, %_13
  %_0.i1.i.i = zext i1 %_0.i.i.i to i64
  %spec.select = add nuw i64 %spec.select16, %_0.i1.i.i
  br i1 %_0.i.i.i, label %bb9, label %bb10

bb12:                                             ; preds = %bb11
  %5 = getelementptr inbounds nuw float, ptr %arr.0, i64 %iter.sroa.0.013
  store float %max_ele.sroa.0.015, ptr %5, align 4
  %6 = fadd float %max_ele.sroa.0.015, -1.000000e+00
  br label %bb15

panic1:                                           ; preds = %bb11
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %iter.sroa.0.013, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_dc51205c9db4b3331cd1a90666556db1) #24
  unreachable
}
