define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %dp = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %dp)
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22
; call __rustc::__rust_alloc
  %0 = tail call noundef align 4 dereferenceable_or_null(8) ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef 4) #22
  %1 = icmp eq ptr %0, null
  br i1 %1, label %bb9, label %bb1, !prof !909

bb9:                                              ; preds = %start
; call alloc::alloc::handle_alloc_error
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h96ccf7ea5a15db6bE(i64 noundef 4, i64 noundef 8) #23
  unreachable

cleanup.loopexit:                                 ; preds = %bb1.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %cleanup

cleanup.loopexit.split-lp:                        ; preds = %panic.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit.split-lp, %cleanup.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %cleanup.loopexit ], [ %lpad.loopexit.split-lp, %cleanup.loopexit.split-lp ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1040)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1043)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1046)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1049)
  %self1.i.i.i.i1.i = load i64, ptr %dp, align 8, !range !1031, !alias.scope !1052, !noalias !1055, !noundef !23
  %_6.i.i.i.i2.i = icmp eq i64 %self1.i.i.i.i1.i, 0
  br i1 %_6.i.i.i.i2.i, label %bb8, label %bb2.i.i.i3.i

bb2.i.i.i3.i:                                     ; preds = %cleanup
  %2 = shl nuw i64 %self1.i.i.i.i1.i, 2
  %self3.i.i.i.i4.i = load ptr, ptr %4, align 8, !alias.scope !1052, !noalias !1055, !nonnull !23, !noundef !23
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i, i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) 4) #22, !noalias !1057
  br label %bb8

bb1:                                              ; preds = %start
  store float 0.000000e+00, ptr %0, align 4
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float 1.000000e+00, ptr %3, align 4
  store i64 2, ptr %dp, align 8, !alias.scope !1058
  %4 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  store ptr %0, ptr %4, align 8, !alias.scope !1058
  %5 = getelementptr inbounds nuw i8, ptr %dp, i64 16
  store i64 2, ptr %5, align 8
  %_0.i.not.i34 = icmp slt i32 %n, 2
  br i1 %_0.i.not.i34, label %bb5, label %bb2.i

bb2.i:                                            ; preds = %bb1, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17he3c897709f33c03cE.exit"
  %_15.i51 = phi ptr [ %_15.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17he3c897709f33c03cE.exit" ], [ %0, %bb1 ]
  %_54 = phi i64 [ %15, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17he3c897709f33c03cE.exit" ], [ 2, %bb1 ]
  %iter.sroa.0.035 = phi i32 [ %spec.select24, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17he3c897709f33c03cE.exit" ], [ 2, %bb1 ]
  %_0.i3.i = icmp sge i32 %iter.sroa.0.035, %n
  %not._0.i3.i = xor i1 %_0.i3.i, true
  %6 = zext i1 %not._0.i3.i to i32
  %spec.select24 = add nuw nsw i32 %iter.sroa.0.035, %6
  %_21 = uitofp nneg i32 %iter.sroa.0.035 to float
  %_20 = fmul float %_21, 5.000000e-01
  %7 = tail call float @llvm.floor.f32(float %_20)
  %_18 = tail call i64 @llvm.fptoui.sat.i64.f32(float %7)
  %_57 = icmp ult i64 %_18, %_54
  br i1 %_57, label %bb16, label %panic.invoke

bb5:                                              ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17he3c897709f33c03cE.exit", %bb1
  %_49 = phi i64 [ 2, %bb1 ], [ %15, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17he3c897709f33c03cE.exit" ]
  %_35 = sext i32 %n to i64
  %_52 = icmp ugt i64 %_49, %_35
  br i1 %_52, label %bb15, label %panic.invoke

bb15:                                             ; preds = %bb5
  %_50 = load ptr, ptr %4, align 8, !nonnull !23, !noundef !23
  %_34 = getelementptr inbounds nuw float, ptr %_50, i64 %_35
  %_33 = load float, ptr %_34, align 4, !noundef !23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1061)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1064)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1067)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1070)
  %self1.i.i.i.i1.i11 = load i64, ptr %dp, align 8, !range !1031, !alias.scope !1073, !noalias !1076, !noundef !23
  %_6.i.i.i.i2.i12 = icmp eq i64 %self1.i.i.i.i1.i11, 0
  br i1 %_6.i.i.i.i2.i12, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17h102558e7599b4bcbE.exit15", label %bb2.i.i.i3.i13

bb2.i.i.i3.i13:                                   ; preds = %bb15
  %8 = shl nuw i64 %self1.i.i.i.i1.i11, 2
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_50, i64 noundef %8, i64 noundef range(i64 1, -9223372036854775807) 4) #22, !noalias !1078
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17h102558e7599b4bcbE.exit15"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17h102558e7599b4bcbE.exit15": ; preds = %bb15, %bb2.i.i.i3.i13
  %_0 = tail call i32 @llvm.fptosi.sat.i32.f32(float %_33)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %dp)
  ret i32 %_0

panic.invoke:                                     ; preds = %bb18, %bb16, %bb2.i, %bb5
  %9 = phi i64 [ %_35, %bb5 ], [ %_18, %bb2.i ], [ %_24, %bb16 ], [ %_30, %bb18 ]
  %10 = phi i64 [ %_49, %bb5 ], [ %_54, %bb2.i ], [ %_54, %bb16 ], [ %_54, %bb18 ]
  %11 = phi ptr [ @alloc_626fdc5c4c8d27a3ca377302f8847dbe, %bb5 ], [ @alloc_1bb020318762953f473ae120b591a00f, %bb2.i ], [ @alloc_a313795edd89d24c5704cd5708731bbb, %bb16 ], [ @alloc_d241ec6b437c7a259dabe209df6e203c, %bb18 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %9, i64 noundef %10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %11) #23
          to label %panic.cont unwind label %cleanup.loopexit.split-lp

panic.cont:                                       ; preds = %panic.invoke
  unreachable

bb16:                                             ; preds = %bb2.i
  %_26 = fdiv float %_21, 3.000000e+00
  %12 = tail call float @llvm.floor.f32(float %_26)
  %_24 = tail call i64 @llvm.fptoui.sat.i64.f32(float %12)
  %_62 = icmp ult i64 %_24, %_54
  br i1 %_62, label %bb18, label %panic.invoke

bb18:                                             ; preds = %bb16
  %_32 = fmul float %_21, 2.500000e-01
  %13 = tail call float @llvm.floor.f32(float %_32)
  %_30 = tail call i64 @llvm.fptoui.sat.i64.f32(float %13)
  %_67 = icmp ult i64 %_30, %_54
  br i1 %_67, label %bb20, label %panic.invoke

bb20:                                             ; preds = %bb18
  %_17 = getelementptr inbounds nuw float, ptr %_15.i51, i64 %_18
  %_16 = load float, ptr %_17, align 4, !noundef !23
  %_23 = getelementptr inbounds nuw float, ptr %_15.i51, i64 %_24
  %_22 = load float, ptr %_23, align 4, !noundef !23
  %_15 = fadd float %_16, %_22
  %_29 = getelementptr inbounds nuw float, ptr %_15.i51, i64 %_30
  %_28 = load float, ptr %_29, align 4, !noundef !23
  %14 = tail call float @llvm.maxnum.f32(float %_28, float %_21)
  %_14 = fadd float %_15, %14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1079)
  %self1.i = load i64, ptr %dp, align 8, !range !1031, !alias.scope !1079, !noundef !23
  %_4.i = icmp eq i64 %_54, %self1.i
  br i1 %_4.i, label %bb1.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17he3c897709f33c03cE.exit"

bb1.i:                                            ; preds = %bb20
; invoke alloc::raw_vec::RawVec<T,A>::grow_one
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h168f96f4e2ae8849E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %dp)
          to label %"bb1.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17he3c897709f33c03cE.exit_crit_edge" unwind label %cleanup.loopexit

"bb1.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17he3c897709f33c03cE.exit_crit_edge": ; preds = %bb1.i
  %_15.i.pre = load ptr, ptr %4, align 8, !alias.scope !1079
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17he3c897709f33c03cE.exit"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17he3c897709f33c03cE.exit": ; preds = %"bb1.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17he3c897709f33c03cE.exit_crit_edge", %bb20
  %_15.i = phi ptr [ %_15.i.pre, %"bb1.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17he3c897709f33c03cE.exit_crit_edge" ], [ %_15.i51, %bb20 ]
  %end.i = getelementptr inbounds nuw float, ptr %_15.i, i64 %_54
  store float %_14, ptr %end.i, align 4, !noalias !1079
  %15 = add i64 %_54, 1
  store i64 %15, ptr %5, align 8
  %_0.i.not.i = icmp sgt i32 %spec.select24, %n
  %or.cond = select i1 %_0.i3.i, i1 true, i1 %_0.i.not.i
  br i1 %or.cond, label %bb5, label %bb2.i

bb8:                                              ; preds = %bb2.i.i.i3.i, %cleanup
  resume { ptr, i32 } %lpad.phi
}
