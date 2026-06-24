define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %B = alloca [24 x i8], align 8
  %A = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %A)
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22
; call __rustc::__rust_alloc
  %0 = tail call noundef align 4 dereferenceable_or_null(8) ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef 4) #22
  %1 = icmp eq ptr %0, null
  br i1 %1, label %bb10, label %bb16, !prof !909

bb10:                                             ; preds = %start
; call alloc::alloc::handle_alloc_error
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h96ccf7ea5a15db6bE(i64 noundef 4, i64 noundef 8) #23
  unreachable

bb8:                                              ; preds = %bb2.i.i.i3.i13, %cleanup1, %cleanup
  %.pn = phi { ptr, i32 } [ %3, %cleanup ], [ %lpad.phi, %cleanup1 ], [ %lpad.phi, %bb2.i.i.i3.i13 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1040)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1043)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1046)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1049)
  %self1.i.i.i.i1.i = load i64, ptr %A, align 8, !range !1031, !alias.scope !1052, !noalias !1055, !noundef !23
  %_6.i.i.i.i2.i = icmp eq i64 %self1.i.i.i.i1.i, 0
  br i1 %_6.i.i.i.i2.i, label %bb9, label %bb2.i.i.i3.i

bb2.i.i.i3.i:                                     ; preds = %bb8
  %2 = shl nuw i64 %self1.i.i.i.i1.i, 2
  %self3.i.i.i.i4.i = load ptr, ptr %5, align 8, !alias.scope !1052, !noalias !1055, !nonnull !23, !noundef !23
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i, i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) 4) #22, !noalias !1057
  br label %bb9

cleanup:                                          ; preds = %bb14
  %3 = landingpad { ptr, i32 }
          cleanup
  br label %bb8

bb16:                                             ; preds = %start
  store i32 1, ptr %0, align 4
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %4, align 4
  store i64 2, ptr %A, align 8, !alias.scope !1058
  %5 = getelementptr inbounds nuw i8, ptr %A, i64 8
  store ptr %0, ptr %5, align 8, !alias.scope !1058
  %6 = getelementptr inbounds nuw i8, ptr %A, i64 16
  store i64 2, ptr %6, align 8, !alias.scope !1058
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %B)
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22
; call __rustc::__rust_alloc
  %7 = tail call noundef align 4 dereferenceable_or_null(8) ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef 4) #22
  %8 = icmp eq ptr %7, null
  br i1 %8, label %bb14, label %bb17, !prof !909

bb14:                                             ; preds = %bb16
; invoke alloc::alloc::handle_alloc_error
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h96ccf7ea5a15db6bE(i64 noundef 4, i64 noundef 8) #23
          to label %unreachable unwind label %cleanup

bb17:                                             ; preds = %bb16
  store i32 0, ptr %7, align 4
  %9 = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 1, ptr %9, align 4
  store i64 2, ptr %B, align 8, !alias.scope !1061
  %10 = getelementptr inbounds nuw i8, ptr %B, i64 8
  store ptr %7, ptr %10, align 8, !alias.scope !1061
  %11 = getelementptr inbounds nuw i8, ptr %B, i64 16
  store i64 2, ptr %11, align 8, !alias.scope !1061
  %_9 = sext i32 %n to i64
  %_0.i.not.i61 = icmp ult i32 %n, 2
  br i1 %_0.i.not.i61, label %bb4, label %bb2.i

bb2.i:                                            ; preds = %bb17, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h7a68bc3a9e0bd5f7E.exit37"
  %_15.i87 = phi ptr [ %_15.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h7a68bc3a9e0bd5f7E.exit37" ], [ %0, %bb17 ]
  %_67 = phi ptr [ %_15.i33, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h7a68bc3a9e0bd5f7E.exit37" ], [ %7, %bb17 ]
  %_66 = phi i64 [ %19, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h7a68bc3a9e0bd5f7E.exit37" ], [ 2, %bb17 ]
  %_56 = phi i64 [ %18, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h7a68bc3a9e0bd5f7E.exit37" ], [ 2, %bb17 ]
  %iter.sroa.0.062 = phi i64 [ %spec.select45, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h7a68bc3a9e0bd5f7E.exit37" ], [ 2, %bb17 ]
  %_0.i3.i = icmp uge i64 %iter.sroa.0.062, %_9
  %not._0.i3.i = xor i1 %_0.i3.i, true
  %_0.i4.i = zext i1 %not._0.i3.i to i64
  %spec.select45 = add nuw i64 %iter.sroa.0.062, %_0.i4.i
  %_19 = add i64 %iter.sroa.0.062, -2
  %_59 = icmp ult i64 %_19, %_56
  br i1 %_59, label %bb19, label %panic.invoke

cleanup1.loopexit:                                ; preds = %bb1.i, %bb1.i35
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %cleanup1

cleanup1.loopexit.split-lp:                       ; preds = %panic.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %cleanup1

cleanup1:                                         ; preds = %cleanup1.loopexit.split-lp, %cleanup1.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %cleanup1.loopexit ], [ %lpad.loopexit.split-lp, %cleanup1.loopexit.split-lp ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1064)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1067)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1070)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1073)
  %self1.i.i.i.i1.i11 = load i64, ptr %B, align 8, !range !1031, !alias.scope !1076, !noalias !1079, !noundef !23
  %_6.i.i.i.i2.i12 = icmp eq i64 %self1.i.i.i.i1.i11, 0
  br i1 %_6.i.i.i.i2.i12, label %bb8, label %bb2.i.i.i3.i13

bb2.i.i.i3.i13:                                   ; preds = %cleanup1
  %12 = shl nuw i64 %self1.i.i.i.i1.i11, 2
  %self3.i.i.i.i4.i14 = load ptr, ptr %10, align 8, !alias.scope !1076, !noalias !1079, !nonnull !23, !noundef !23
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i14, i64 noundef %12, i64 noundef range(i64 1, -9223372036854775807) 4) #22, !noalias !1081
  br label %bb8

bb4:                                              ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h7a68bc3a9e0bd5f7E.exit37", %bb17
  %self3.i.i.i.i4.i20 = phi ptr [ %7, %bb17 ], [ %_15.i33, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h7a68bc3a9e0bd5f7E.exit37" ]
  %_61 = phi i64 [ 2, %bb17 ], [ %18, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h7a68bc3a9e0bd5f7E.exit37" ]
  %_64 = icmp ugt i64 %_61, %_9
  br i1 %_64, label %bb20, label %panic.invoke

bb20:                                             ; preds = %bb4
  %_62 = load ptr, ptr %5, align 8, !nonnull !23, !noundef !23
  %_30 = getelementptr inbounds nuw i32, ptr %_62, i64 %_9
  %_0 = load i32, ptr %_30, align 4, !noundef !23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1082)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1085)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1088)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1091)
  %self1.i.i.i.i1.i17 = load i64, ptr %B, align 8, !range !1031, !alias.scope !1094, !noalias !1097, !noundef !23
  %_6.i.i.i.i2.i18 = icmp eq i64 %self1.i.i.i.i1.i17, 0
  br i1 %_6.i.i.i.i2.i18, label %bb5, label %bb2.i.i.i3.i19

bb2.i.i.i3.i19:                                   ; preds = %bb20
  %13 = shl nuw i64 %self1.i.i.i.i1.i17, 2
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i20, i64 noundef %13, i64 noundef range(i64 1, -9223372036854775807) 4) #22, !noalias !1099
  br label %bb5

panic.invoke:                                     ; preds = %bb23, %bb22, %bb19, %bb2.i, %bb4
  %14 = phi i64 [ %_9, %bb4 ], [ %_19, %bb2.i ], [ %_23, %bb19 ], [ %_23, %bb22 ], [ %_19, %bb23 ]
  %15 = phi i64 [ %_61, %bb4 ], [ %_56, %bb2.i ], [ %_66, %bb19 ], [ %18, %bb22 ], [ %_66, %bb23 ]
  %16 = phi ptr [ @alloc_3b2adde7ba7c927fedf44ad2772e2806, %bb4 ], [ @alloc_5c563d70d9c334b0b632db6864d95601, %bb2.i ], [ @alloc_ff77d958a88ca136ed2d9d1df5b7ab4d, %bb19 ], [ @alloc_84f267ff97c4de85f1cb3249b3557348, %bb22 ], [ @alloc_4912eabb5c77cbcee982caf5685e3fb1, %bb23 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %14, i64 noundef %15, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %16) #23
          to label %panic.cont unwind label %cleanup1.loopexit.split-lp

panic.cont:                                       ; preds = %panic.invoke
  unreachable

unreachable:                                      ; preds = %bb14
  unreachable

bb5:                                              ; preds = %bb2.i.i.i3.i19, %bb20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %B)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1100)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1103)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1106)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1109)
  %self1.i.i.i.i1.i23 = load i64, ptr %A, align 8, !range !1031, !alias.scope !1112, !noalias !1115, !noundef !23
  %_6.i.i.i.i2.i24 = icmp eq i64 %self1.i.i.i.i1.i23, 0
  br i1 %_6.i.i.i.i2.i24, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h21c65b8fc66c27adE.exit27", label %bb2.i.i.i3.i25

bb2.i.i.i3.i25:                                   ; preds = %bb5
  %17 = shl nuw i64 %self1.i.i.i.i1.i23, 2
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_62, i64 noundef %17, i64 noundef range(i64 1, -9223372036854775807) 4) #22, !noalias !1117
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h21c65b8fc66c27adE.exit27"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h21c65b8fc66c27adE.exit27": ; preds = %bb5, %bb2.i.i.i3.i25
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %A)
  ret i32 %_0

bb19:                                             ; preds = %bb2.i
  %_23 = add i64 %iter.sroa.0.062, -1
  %_69 = icmp ult i64 %_23, %_66
  br i1 %_69, label %bb21, label %panic.invoke

bb21:                                             ; preds = %bb19
  %_18 = getelementptr inbounds nuw i32, ptr %_15.i87, i64 %_19
  %_17 = load i32, ptr %_18, align 4, !noundef !23
  %_22 = getelementptr inbounds nuw i32, ptr %_67, i64 %_23
  %_21 = load i32, ptr %_22, align 4, !noundef !23
  %_20 = shl i32 %_21, 1
  %_16 = add i32 %_20, %_17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1118)
  %self1.i = load i64, ptr %A, align 8, !range !1031, !alias.scope !1118, !noundef !23
  %_4.i = icmp eq i64 %_56, %self1.i
  br i1 %_4.i, label %bb1.i, label %bb22

bb1.i:                                            ; preds = %bb21
; invoke alloc::raw_vec::RawVec<T,A>::grow_one
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hbb69aa6c0e64d68fE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %A)
          to label %bb1.i.bb22_crit_edge unwind label %cleanup1.loopexit

bb1.i.bb22_crit_edge:                             ; preds = %bb1.i
  %_15.i.pre = load ptr, ptr %5, align 8, !alias.scope !1118
  br label %bb22

bb22:                                             ; preds = %bb1.i.bb22_crit_edge, %bb21
  %_15.i = phi ptr [ %_15.i.pre, %bb1.i.bb22_crit_edge ], [ %_15.i87, %bb21 ]
  %end.i = getelementptr inbounds nuw i32, ptr %_15.i, i64 %_56
  store i32 %_16, ptr %end.i, align 4, !noalias !1118
  %18 = add i64 %_56, 1
  store i64 %18, ptr %6, align 8, !alias.scope !1118
  %_75 = icmp ult i64 %_23, %18
  br i1 %_75, label %bb23, label %panic.invoke

bb23:                                             ; preds = %bb22
  %_80 = icmp ult i64 %_19, %_66
  br i1 %_80, label %bb24, label %panic.invoke

bb24:                                             ; preds = %bb23
  %_27 = getelementptr inbounds nuw i32, ptr %_15.i, i64 %_23
  %_26 = load i32, ptr %_27, align 4, !noundef !23
  %_29 = getelementptr inbounds nuw i32, ptr %_67, i64 %_19
  %_28 = load i32, ptr %_29, align 4, !noundef !23
  %_25 = add i32 %_28, %_26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1121)
  %self1.i30 = load i64, ptr %B, align 8, !range !1031, !alias.scope !1121, !noundef !23
  %_4.i31 = icmp eq i64 %_66, %self1.i30
  br i1 %_4.i31, label %bb1.i35, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h7a68bc3a9e0bd5f7E.exit37"

bb1.i35:                                          ; preds = %bb24
; invoke alloc::raw_vec::RawVec<T,A>::grow_one
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hbb69aa6c0e64d68fE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %B)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h7a68bc3a9e0bd5f7E.exit37" unwind label %cleanup1.loopexit

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h7a68bc3a9e0bd5f7E.exit37": ; preds = %bb1.i35, %bb24
  %_15.i33 = load ptr, ptr %10, align 8, !alias.scope !1121, !nonnull !23, !noundef !23
  %end.i34 = getelementptr inbounds nuw i32, ptr %_15.i33, i64 %_66
  store i32 %_25, ptr %end.i34, align 4, !noalias !1121
  %19 = add i64 %_66, 1
  store i64 %19, ptr %11, align 8, !alias.scope !1121
  %_0.i.not.i = icmp ugt i64 %spec.select45, %_9
  %or.cond = select i1 %_0.i3.i, i1 true, i1 %_0.i.not.i
  br i1 %or.cond, label %bb4, label %bb2.i

bb9:                                              ; preds = %bb2.i.i.i3.i, %bb8
  resume { ptr, i32 } %.pn
}
