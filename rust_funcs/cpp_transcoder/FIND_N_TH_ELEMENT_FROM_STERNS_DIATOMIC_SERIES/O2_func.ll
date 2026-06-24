define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %dp = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %dp)
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22
; call __rustc::__rust_alloc
  %0 = tail call noundef align 4 dereferenceable_or_null(8) ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef 4) #22
  %1 = icmp eq ptr %0, null
  br i1 %1, label %bb11, label %bb12, !prof !909

bb11:                                             ; preds = %start
; call alloc::alloc::handle_alloc_error
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h96ccf7ea5a15db6bE(i64 noundef 4, i64 noundef 8) #23
  unreachable

bb12:                                             ; preds = %start
  store i32 0, ptr %0, align 4
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %2, align 4
  store i64 2, ptr %dp, align 8, !alias.scope !1040
  %3 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  store ptr %0, ptr %3, align 8, !alias.scope !1040
  %4 = getelementptr inbounds nuw i8, ptr %dp, i64 16
  store i64 2, ptr %4, align 8
  %_0.i.not.i34 = icmp slt i32 %n, 2
  br i1 %_0.i.not.i34, label %bb4, label %bb2.i

bb2.i:                                            ; preds = %bb12, %bb7
  %_15.i41 = phi ptr [ %_15.i18.sink, %bb7 ], [ %0, %bb12 ]
  %_51 = phi i64 [ %storemerge, %bb7 ], [ 2, %bb12 ]
  %iter.sroa.0.035 = phi i32 [ %spec.select30, %bb7 ], [ 2, %bb12 ]
  %_0.i3.i = icmp sge i32 %iter.sroa.0.035, %n
  %not._0.i3.i = xor i1 %_0.i3.i, true
  %5 = zext i1 %not._0.i3.i to i32
  %spec.select30 = add nuw nsw i32 %iter.sroa.0.035, %5
  %6 = and i32 %iter.sroa.0.035, 1
  %_11 = icmp eq i32 %6, 0
  %_18 = uitofp nneg i32 %iter.sroa.0.035 to float
  %_17 = fmul float %_18, 5.000000e-01
  br i1 %_11, label %bb5, label %bb6

cleanup.loopexit:                                 ; preds = %bb1.i, %bb1.i20
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %cleanup

cleanup.loopexit.split-lp:                        ; preds = %panic.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit.split-lp, %cleanup.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %cleanup.loopexit ], [ %lpad.loopexit.split-lp, %cleanup.loopexit.split-lp ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1043)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1046)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1049)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1052)
  %self1.i.i.i.i1.i = load i64, ptr %dp, align 8, !range !1031, !alias.scope !1055, !noalias !1058, !noundef !23
  %_6.i.i.i.i2.i = icmp eq i64 %self1.i.i.i.i1.i, 0
  br i1 %_6.i.i.i.i2.i, label %bb10, label %bb2.i.i.i3.i

bb2.i.i.i3.i:                                     ; preds = %cleanup
  %7 = shl nuw i64 %self1.i.i.i.i1.i, 2
  %self3.i.i.i.i4.i = load ptr, ptr %3, align 8, !alias.scope !1055, !noalias !1058, !nonnull !23, !noundef !23
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i, i64 noundef %7, i64 noundef range(i64 1, -9223372036854775807) 4) #22, !noalias !1060
  br label %bb10

bb4:                                              ; preds = %bb7, %bb12
  %_46 = phi i64 [ 2, %bb12 ], [ %storemerge, %bb7 ]
  %_32 = sext i32 %n to i64
  %_49 = icmp ugt i64 %_46, %_32
  br i1 %_49, label %bb16, label %panic.invoke

bb16:                                             ; preds = %bb4
  %_47 = load ptr, ptr %3, align 8, !nonnull !23, !noundef !23
  %_31 = getelementptr inbounds nuw i32, ptr %_47, i64 %_32
  %_0 = load i32, ptr %_31, align 4, !noundef !23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1061)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1064)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1067)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1070)
  %self1.i.i.i.i1.i8 = load i64, ptr %dp, align 8, !range !1031, !alias.scope !1073, !noalias !1076, !noundef !23
  %_6.i.i.i.i2.i9 = icmp eq i64 %self1.i.i.i.i1.i8, 0
  br i1 %_6.i.i.i.i2.i9, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17he4f936260bcd5e4dE.exit12", label %bb2.i.i.i3.i10

bb2.i.i.i3.i10:                                   ; preds = %bb16
  %8 = shl nuw i64 %self1.i.i.i.i1.i8, 2
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_47, i64 noundef %8, i64 noundef range(i64 1, -9223372036854775807) 4) #22, !noalias !1078
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17he4f936260bcd5e4dE.exit12"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17he4f936260bcd5e4dE.exit12": ; preds = %bb16, %bb2.i.i.i3.i10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %dp)
  ret i32 %_0

panic.invoke:                                     ; preds = %bb5, %bb19, %bb6, %bb4
  %9 = phi i64 [ %_32, %bb4 ], [ %_23, %bb6 ], [ %_29, %bb19 ], [ %_16, %bb5 ]
  %10 = phi i64 [ %_46, %bb4 ], [ %_51, %bb6 ], [ %_51, %bb19 ], [ %_51, %bb5 ]
  %11 = phi ptr [ @alloc_2f41ec99b906a95f9058e1b844b8e870, %bb4 ], [ @alloc_c301f9b6f03be3d4ffeb15e607c0fb6e, %bb6 ], [ @alloc_71493d6e530f88bf9949cac6ee384d8c, %bb19 ], [ @alloc_2382a59604f45caf8e93f98b255a9ee0, %bb5 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %9, i64 noundef %10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %11) #23
          to label %panic.cont unwind label %cleanup.loopexit.split-lp

panic.cont:                                       ; preds = %panic.invoke
  unreachable

bb6:                                              ; preds = %bb2.i
  %_24 = fadd float %_17, -1.000000e+00
  %_23 = tail call i64 @llvm.fptoui.sat.i64.f32(float %_24)
  %_60 = icmp ult i64 %_23, %_51
  br i1 %_60, label %bb19, label %panic.invoke

bb5:                                              ; preds = %bb2.i
  %_16 = tail call i64 @llvm.fptoui.sat.i64.f32(float %_17)
  %_54 = icmp ult i64 %_16, %_51
  br i1 %_54, label %bb17, label %panic.invoke

bb19:                                             ; preds = %bb6
  %_30 = fadd float %_17, 1.000000e+00
  %_29 = tail call i64 @llvm.fptoui.sat.i64.f32(float %_30)
  %_65 = icmp ult i64 %_29, %_51
  br i1 %_65, label %bb20, label %panic.invoke

bb20:                                             ; preds = %bb19
  %_22 = getelementptr inbounds nuw i32, ptr %_15.i41, i64 %_23
  %_21 = load i32, ptr %_22, align 4, !noundef !23
  %_28 = getelementptr inbounds nuw i32, ptr %_15.i41, i64 %_29
  %_27 = load i32, ptr %_28, align 4, !noundef !23
  %_20 = add i32 %_27, %_21
  %self1.i = load i64, ptr %dp, align 8, !range !1031, !alias.scope !1079, !noundef !23
  %_4.i = icmp eq i64 %_51, %self1.i
  br i1 %_4.i, label %bb1.i, label %bb7

bb1.i:                                            ; preds = %bb20
; invoke alloc::raw_vec::RawVec<T,A>::grow_one
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h08ced0ac2cad1f44E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %dp)
          to label %"bb1.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h64a2662f198f0dd6E.exit_crit_edge" unwind label %cleanup.loopexit

"bb1.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h64a2662f198f0dd6E.exit_crit_edge": ; preds = %bb1.i
  %_15.i.pre = load ptr, ptr %3, align 8, !alias.scope !1079
  br label %bb7

bb7:                                              ; preds = %bb20, %"bb1.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h64a2662f198f0dd6E.exit_crit_edge", %bb17, %"bb1.i20._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h64a2662f198f0dd6E.exit22_crit_edge"
  %_15.i18.sink = phi ptr [ %_15.i18.pre, %"bb1.i20._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h64a2662f198f0dd6E.exit22_crit_edge" ], [ %_52, %bb17 ], [ %_15.i.pre, %"bb1.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h64a2662f198f0dd6E.exit_crit_edge" ], [ %_15.i41, %bb20 ]
  %_14.sink = phi i32 [ %_14, %"bb1.i20._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h64a2662f198f0dd6E.exit22_crit_edge" ], [ %_14, %bb17 ], [ %_20, %"bb1.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h64a2662f198f0dd6E.exit_crit_edge" ], [ %_20, %bb20 ]
  %end.i19 = getelementptr inbounds nuw i32, ptr %_15.i18.sink, i64 %_51
  store i32 %_14.sink, ptr %end.i19, align 4, !noalias !23
  %storemerge = add i64 %_51, 1
  store i64 %storemerge, ptr %4, align 8
  %_0.i.not.i = icmp sgt i32 %spec.select30, %n
  %or.cond = select i1 %_0.i3.i, i1 true, i1 %_0.i.not.i
  br i1 %or.cond, label %bb4, label %bb2.i

bb17:                                             ; preds = %bb5
  %_52 = load ptr, ptr %3, align 8, !nonnull !23, !noundef !23
  %_15 = getelementptr inbounds nuw i32, ptr %_52, i64 %_16
  %_14 = load i32, ptr %_15, align 4, !noundef !23
  %self1.i15 = load i64, ptr %dp, align 8, !range !1031, !alias.scope !1082, !noundef !23
  %_4.i16 = icmp eq i64 %_51, %self1.i15
  br i1 %_4.i16, label %bb1.i20, label %bb7

bb1.i20:                                          ; preds = %bb17
; invoke alloc::raw_vec::RawVec<T,A>::grow_one
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h08ced0ac2cad1f44E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %dp)
          to label %"bb1.i20._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h64a2662f198f0dd6E.exit22_crit_edge" unwind label %cleanup.loopexit

"bb1.i20._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h64a2662f198f0dd6E.exit22_crit_edge": ; preds = %bb1.i20
  %_15.i18.pre = load ptr, ptr %3, align 8, !alias.scope !1082
  br label %bb7

bb10:                                             ; preds = %bb2.i.i.i3.i, %cleanup
  resume { ptr, i32 } %lpad.phi
}
