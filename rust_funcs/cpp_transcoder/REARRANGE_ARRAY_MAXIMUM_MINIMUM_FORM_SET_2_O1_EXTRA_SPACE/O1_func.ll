define void @f_gold(ptr noalias noundef nonnull align 4 captures(none) %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, i32 noundef %n) unnamed_addr #3 {
start:
  %_8 = sext i32 %n to i64
  %_7 = add nsw i64 %_8, -1
  %_10 = icmp ult i64 %_7, %arr.1
  br i1 %_10, label %bb1, label %panic

bb1:                                              ; preds = %start
  %0 = getelementptr inbounds nuw float, ptr %arr.0, i64 %_7
  %_6 = load float, ptr %0, align 4, !noundef !37
  %max_elem = fadd float %_6, 1.000000e+00
  %_0.i.i.i24 = icmp sgt i32 %n, 0
  br i1 %_0.i.i.i24, label %bb6.preheader, label %bb16.preheader

bb6.preheader:                                    ; preds = %bb1
  %1 = add nsw i32 %n, -1
  br label %bb6

panic:                                            ; preds = %start
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_7, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_c878219e4b64d59e8f074c32dbdd15ec) #24
  unreachable

bb16.preheader:                                   ; preds = %bb14, %bb1
  %_0.i.i.i1529 = icmp sgt i32 %n, 0
  br i1 %_0.i.i.i1529, label %bb18, label %bb19

bb6:                                              ; preds = %bb6.preheader, %bb14
  %spec.select28 = phi i32 [ %spec.select, %bb14 ], [ 1, %bb6.preheader ]
  %max_idx.sroa.0.027 = phi i32 [ %max_idx.sroa.0.1, %bb14 ], [ %1, %bb6.preheader ]
  %min_idx.sroa.0.026 = phi i32 [ %min_idx.sroa.0.1, %bb14 ], [ 0, %bb6.preheader ]
  %iter.sroa.0.025 = phi i32 [ %spec.select28, %bb14 ], [ 0, %bb6.preheader ]
  %2 = and i32 %iter.sroa.0.025, 1
  %_18 = icmp eq i32 %2, 0
  br i1 %_18, label %bb8, label %bb11

bb18:                                             ; preds = %bb16.preheader, %bb20
  %spec.select2031 = phi i32 [ %spec.select20, %bb20 ], [ 1, %bb16.preheader ]
  %iter1.sroa.0.030 = phi i32 [ %spec.select2031, %bb20 ], [ 0, %bb16.preheader ]
  %_42 = zext nneg i32 %iter1.sroa.0.030 to i64
  %_43 = icmp samesign ugt i64 %arr.1, %_42
  br i1 %_43, label %bb20, label %panic2

bb19:                                             ; preds = %bb20, %bb16.preheader
  ret void

bb20:                                             ; preds = %bb18
  %3 = getelementptr inbounds nuw float, ptr %arr.0, i64 %_42
  %4 = load float, ptr %3, align 4, !noundef !37
  %5 = fdiv float %4, %max_elem
  store float %5, ptr %3, align 4
  %_0.i.i.i15 = icmp slt i32 %spec.select2031, %n
  %6 = zext i1 %_0.i.i.i15 to i32
  %spec.select20 = add nuw nsw i32 %spec.select2031, %6
  br i1 %_0.i.i.i15, label %bb18, label %bb19

panic2:                                           ; preds = %bb18
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_42, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_78971c8299811e8497a31d7c1e3814c9) #24
  unreachable

bb11:                                             ; preds = %bb6
  %_31 = sext i32 %min_idx.sroa.0.026 to i64
  %_33 = icmp ugt i64 %arr.1, %_31
  br i1 %_33, label %bb12, label %panic4

bb8:                                              ; preds = %bb6
  %_23 = sext i32 %max_idx.sroa.0.027 to i64
  %_25 = icmp ugt i64 %arr.1, %_23
  br i1 %_25, label %bb9, label %panic6

bb12:                                             ; preds = %bb11
  %_34 = zext nneg i32 %iter.sroa.0.025 to i64
  %_35 = icmp samesign ugt i64 %arr.1, %_34
  br i1 %_35, label %bb13, label %panic5

panic4:                                           ; preds = %bb11
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_31, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_cbdb2b5b85f68cfebc521c1440ce45c2) #24
  unreachable

bb13:                                             ; preds = %bb12
  %7 = getelementptr inbounds nuw float, ptr %arr.0, i64 %_31
  %_30 = load float, ptr %7, align 4, !noundef !37
  %_29 = frem float %_30, %max_elem
  %_28 = fmul float %max_elem, %_29
  %8 = getelementptr inbounds nuw float, ptr %arr.0, i64 %_34
  %9 = load float, ptr %8, align 4, !noundef !37
  %10 = fadd float %9, %_28
  store float %10, ptr %8, align 4
  %11 = add i32 %min_idx.sroa.0.026, 1
  br label %bb14

panic5:                                           ; preds = %bb12
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_34, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_d43934b65f51a409ea39ebae56e95f93) #24
  unreachable

bb14:                                             ; preds = %bb10, %bb13
  %min_idx.sroa.0.1 = phi i32 [ %min_idx.sroa.0.026, %bb10 ], [ %11, %bb13 ]
  %max_idx.sroa.0.1 = phi i32 [ %17, %bb10 ], [ %max_idx.sroa.0.027, %bb13 ]
  %_0.i.i.i = icmp slt i32 %spec.select28, %n
  %12 = zext i1 %_0.i.i.i to i32
  %spec.select = add nuw nsw i32 %spec.select28, %12
  br i1 %_0.i.i.i, label %bb6, label %bb16.preheader

bb9:                                              ; preds = %bb8
  %_26 = zext nneg i32 %iter.sroa.0.025 to i64
  %_27 = icmp samesign ugt i64 %arr.1, %_26
  br i1 %_27, label %bb10, label %panic7

panic6:                                           ; preds = %bb8
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_23, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_5fc96a4e8f14193ef456abe8cb94283a) #24
  unreachable

bb10:                                             ; preds = %bb9
  %13 = getelementptr inbounds nuw float, ptr %arr.0, i64 %_23
  %_22 = load float, ptr %13, align 4, !noundef !37
  %_21 = frem float %_22, %max_elem
  %_20 = fmul float %max_elem, %_21
  %14 = getelementptr inbounds nuw float, ptr %arr.0, i64 %_26
  %15 = load float, ptr %14, align 4, !noundef !37
  %16 = fadd float %15, %_20
  store float %16, ptr %14, align 4
  %17 = add i32 %max_idx.sroa.0.027, -1
  br label %bb14

panic7:                                           ; preds = %bb9
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_26, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_61a0728b366fb1116b23e4b3f2fbdcd0) #24
  unreachable
}
