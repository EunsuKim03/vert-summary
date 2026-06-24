define void @f_gold(ptr noalias noundef nonnull align 4 captures(none) %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, i32 noundef %n) unnamed_addr #1 {
start:
  %_8 = sext i32 %n to i64
  %_7 = add nsw i64 %_8, -1
  %_10 = icmp ult i64 %_7, %arr.1
  br i1 %_10, label %bb1, label %panic

bb1:                                              ; preds = %start
  %0 = getelementptr inbounds nuw float, ptr %arr.0, i64 %_7
  %_6 = load float, ptr %0, align 4, !noundef !23
  %max_elem = fadd float %_6, 1.000000e+00
  %_3514 = icmp sgt i32 %n, 0
  br i1 %_3514, label %bb12.preheader, label %bb18

bb12.preheader:                                   ; preds = %bb1
  %1 = add nsw i32 %n, -1
  %wide.trip.count = zext nneg i32 %n to i64
  br label %bb12

panic:                                            ; preds = %start
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_7, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_c878219e4b64d59e8f074c32dbdd15ec) #18
  unreachable

bb17.preheader:                                   ; preds = %bb9
  %wide.trip.count28 = zext nneg i32 %n to i64
  %2 = add nsw i64 %wide.trip.count, -1
  %umin = tail call i64 @llvm.umin.i64(i64 %arr.1, i64 %2)
  %min.iters.check = icmp samesign ult i64 %umin, 4
  br i1 %min.iters.check, label %bb17.preheader43, label %vector.ph

bb17.preheader43:                                 ; preds = %vector.body, %bb17.preheader
  %indvars.iv24.ph = phi i64 [ 0, %bb17.preheader ], [ %n.vec, %vector.body ]
  br label %bb17

vector.ph:                                        ; preds = %bb17.preheader
  %3 = add nuw nsw i64 %umin, 1
  %n.mod.vf = and i64 %3, 3
  %4 = icmp eq i64 %n.mod.vf, 0
  %5 = select i1 %4, i64 4, i64 %n.mod.vf
  %n.vec = sub nsw i64 %3, %5
  %broadcast.splatinsert = insertelement <4 x float> poison, float %max_elem, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %6 = getelementptr inbounds nuw float, ptr %arr.0, i64 %index
  %wide.load = load <4 x float>, ptr %6, align 4
  %7 = fdiv <4 x float> %wide.load, %broadcast.splat
  store <4 x float> %7, ptr %6, align 4
  %index.next = add nuw i64 %index, 4
  %8 = icmp eq i64 %index.next, %n.vec
  br i1 %8, label %bb17.preheader43, label %vector.body, !llvm.loop !1031

bb12:                                             ; preds = %bb12.preheader, %bb9
  %indvars.iv = phi i64 [ 0, %bb12.preheader ], [ %indvars.iv.next, %bb9 ]
  %max_idx.sroa.0.017 = phi i32 [ %1, %bb12.preheader ], [ %max_idx.sroa.0.1, %bb9 ]
  %min_idx.sroa.0.016 = phi i32 [ 0, %bb12.preheader ], [ %min_idx.sroa.0.1, %bb9 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %_1430 = and i64 %indvars.iv, 1
  %_13 = icmp eq i64 %_1430, 0
  br i1 %_13, label %bb3, label %bb6

bb18:                                             ; preds = %bb11, %bb1
  ret void

bb17:                                             ; preds = %bb17.preheader43, %bb11
  %indvars.iv24 = phi i64 [ %indvars.iv.next25, %bb11 ], [ %indvars.iv24.ph, %bb17.preheader43 ]
  %exitcond27.not = icmp eq i64 %indvars.iv24, %arr.1
  br i1 %exitcond27.not, label %panic2, label %bb11

bb11:                                             ; preds = %bb17
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1
  %9 = getelementptr inbounds nuw float, ptr %arr.0, i64 %indvars.iv24
  %10 = load float, ptr %9, align 4, !noundef !23
  %11 = fdiv float %10, %max_elem
  store float %11, ptr %9, align 4
  %exitcond29.not = icmp eq i64 %indvars.iv.next25, %wide.trip.count28
  br i1 %exitcond29.not, label %bb18, label %bb17, !llvm.loop !1032

panic2:                                           ; preds = %bb17
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %arr.1, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_78971c8299811e8497a31d7c1e3814c9) #18
  unreachable

bb6:                                              ; preds = %bb12
  %_26 = sext i32 %min_idx.sroa.0.016 to i64
  %_28 = icmp ugt i64 %arr.1, %_26
  br i1 %_28, label %bb7, label %panic4

bb3:                                              ; preds = %bb12
  %_18 = sext i32 %max_idx.sroa.0.017 to i64
  %_20 = icmp ugt i64 %arr.1, %_18
  br i1 %_20, label %bb4, label %panic6

bb7:                                              ; preds = %bb6
  %_30 = icmp samesign ugt i64 %arr.1, %indvars.iv
  br i1 %_30, label %bb8, label %panic5

panic4:                                           ; preds = %bb6
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_26, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_cbdb2b5b85f68cfebc521c1440ce45c2) #18
  unreachable

bb8:                                              ; preds = %bb7
  %12 = getelementptr inbounds nuw float, ptr %arr.0, i64 %_26
  %_25 = load float, ptr %12, align 4, !noundef !23
  %_24 = frem float %_25, %max_elem
  %_23 = fmul float %max_elem, %_24
  %13 = getelementptr inbounds nuw float, ptr %arr.0, i64 %indvars.iv
  %14 = load float, ptr %13, align 4, !noundef !23
  %15 = fadd float %14, %_23
  store float %15, ptr %13, align 4
  %16 = add i32 %min_idx.sroa.0.016, 1
  br label %bb9

panic5:                                           ; preds = %bb7
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %indvars.iv, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_d43934b65f51a409ea39ebae56e95f93) #18
  unreachable

bb9:                                              ; preds = %bb5, %bb8
  %min_idx.sroa.0.1 = phi i32 [ %min_idx.sroa.0.016, %bb5 ], [ %16, %bb8 ]
  %max_idx.sroa.0.1 = phi i32 [ %21, %bb5 ], [ %max_idx.sroa.0.017, %bb8 ]
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb17.preheader, label %bb12

bb4:                                              ; preds = %bb3
  %_22 = icmp samesign ugt i64 %arr.1, %indvars.iv
  br i1 %_22, label %bb5, label %panic7

panic6:                                           ; preds = %bb3
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_18, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_5fc96a4e8f14193ef456abe8cb94283a) #18
  unreachable

bb5:                                              ; preds = %bb4
  %17 = getelementptr inbounds nuw float, ptr %arr.0, i64 %_18
  %_17 = load float, ptr %17, align 4, !noundef !23
  %_16 = frem float %_17, %max_elem
  %_15 = fmul float %max_elem, %_16
  %18 = getelementptr inbounds nuw float, ptr %arr.0, i64 %indvars.iv
  %19 = load float, ptr %18, align 4, !noundef !23
  %20 = fadd float %19, %_15
  store float %20, ptr %18, align 4
  %21 = add i32 %max_idx.sroa.0.017, -1
  br label %bb9

panic7:                                           ; preds = %bb4
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %indvars.iv, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_61a0728b366fb1116b23e4b3f2fbdcd0) #18
  unreachable
}
