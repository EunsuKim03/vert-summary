define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %dp = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %dp)
  %_4 = sext i32 %n to i64
  %_3 = add nsw i64 %_4, 1
  %_21.0.i.i.i = shl nsw i64 %_3, 2
  %_21.1.i.i.i = icmp ugt i64 %_3, 4611686018427387903
  %_26.i.i.i = icmp ugt i64 %_21.0.i.i.i, 9223372036854775804
  %or.cond.i.i.i = or i1 %_21.1.i.i.i, %_26.i.i.i
  br i1 %or.cond.i.i.i, label %bb3.i, label %bb17.i.i, !prof !339

bb17.i.i:                                         ; preds = %start
  %_8.i.i = icmp eq i64 %_3, 0
  br i1 %_8.i.i, label %bb1.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i": ; preds = %bb17.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !1040
; call __rustc::__rust_alloc
  %0 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #22, !noalias !1040
  %1 = icmp eq ptr %0, null
  br i1 %1, label %bb3.i, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hb1a4ed3844fdae00E.exit"

bb3.i:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i", %start
  %_4.sroa.4.0.ph.i = phi i64 [ 4, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i" ], [ 0, %start ]
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_4.sroa.4.0.ph.i, i64 %_21.0.i.i.i) #23
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hb1a4ed3844fdae00E.exit": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i"
  store i64 %_3, ptr %dp, align 8
  %2 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  store ptr %0, ptr %2, align 8
  %3 = getelementptr inbounds nuw i8, ptr %dp, i64 16
  store i64 0, ptr %3, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1043)
  br label %bb9

bb1.i:                                            ; preds = %bb17.i.i
  store i64 0, ptr %dp, align 8
  %4 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %4, align 8
  %5 = getelementptr inbounds nuw i8, ptr %dp, i64 16
  store i64 0, ptr %5, align 8
; invoke alloc::raw_vec::RawVec<T,A>::grow_one
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h39963d57aa4fc884E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %dp)
          to label %bb1.i.bb9_crit_edge unwind label %cleanup.loopexit.split-lp

bb1.i.bb9_crit_edge:                              ; preds = %bb1.i
  %_15.i.pre = load ptr, ptr %4, align 8, !alias.scope !1043
  %self1.i6.pre = load i64, ptr %dp, align 8, !range !1031, !alias.scope !1046
  br label %bb9

cleanup.loopexit:                                 ; preds = %bb1.i41
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %cleanup

cleanup.loopexit.split-lp:                        ; preds = %panic.invoke, %bb1.i, %bb1.i10, %bb1.i18, %bb1.i26
  %6 = phi ptr [ %4, %bb1.i ], [ %10, %bb1.i10 ], [ %10, %bb1.i18 ], [ %10, %bb1.i26 ], [ %10, %panic.invoke ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit.split-lp, %cleanup.loopexit
  %7 = phi ptr [ %10, %cleanup.loopexit ], [ %6, %cleanup.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %cleanup.loopexit ], [ %lpad.loopexit.split-lp, %cleanup.loopexit.split-lp ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1049)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1052)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1055)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1058)
  %self1.i.i.i.i1.i = load i64, ptr %dp, align 8, !range !1031, !alias.scope !1061, !noalias !1064, !noundef !23
  %_6.i.i.i.i2.i = icmp eq i64 %self1.i.i.i.i1.i, 0
  br i1 %_6.i.i.i.i2.i, label %bb7, label %bb2.i.i.i3.i

bb2.i.i.i3.i:                                     ; preds = %cleanup
  %8 = shl nuw i64 %self1.i.i.i.i1.i, 2
  %self3.i.i.i.i4.i = load ptr, ptr %7, align 8, !alias.scope !1061, !noalias !1064, !nonnull !23, !noundef !23
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i, i64 noundef %8, i64 noundef range(i64 1, -9223372036854775807) 4) #22, !noalias !1066
  br label %bb7

bb9:                                              ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hb1a4ed3844fdae00E.exit", %bb1.i.bb9_crit_edge
  %9 = phi ptr [ %5, %bb1.i.bb9_crit_edge ], [ %3, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hb1a4ed3844fdae00E.exit" ]
  %10 = phi ptr [ %4, %bb1.i.bb9_crit_edge ], [ %2, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hb1a4ed3844fdae00E.exit" ]
  %self1.i6 = phi i64 [ %self1.i6.pre, %bb1.i.bb9_crit_edge ], [ %_3, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hb1a4ed3844fdae00E.exit" ]
  %_15.i = phi ptr [ %_15.i.pre, %bb1.i.bb9_crit_edge ], [ %0, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hb1a4ed3844fdae00E.exit" ]
  store i32 1, ptr %_15.i, align 4, !noalias !1043
  store i64 1, ptr %9, align 8, !alias.scope !1043
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1046)
  %_4.i7 = icmp eq i64 %self1.i6, 1
  br i1 %_4.i7, label %bb1.i10, label %bb10

bb1.i10:                                          ; preds = %bb9
; invoke alloc::raw_vec::RawVec<T,A>::grow_one
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h39963d57aa4fc884E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %dp)
          to label %bb1.i10.bb10_crit_edge unwind label %cleanup.loopexit.split-lp

bb1.i10.bb10_crit_edge:                           ; preds = %bb1.i10
  %_15.i8.pre = load ptr, ptr %10, align 8, !alias.scope !1046
  br label %bb10

bb10:                                             ; preds = %bb1.i10.bb10_crit_edge, %bb9
  %_15.i8 = phi ptr [ %_15.i8.pre, %bb1.i10.bb10_crit_edge ], [ %_15.i, %bb9 ]
  %end.i9 = getelementptr inbounds nuw i8, ptr %_15.i8, i64 4
  store i32 1, ptr %end.i9, align 4, !noalias !1046
  store i64 2, ptr %9, align 8, !alias.scope !1046
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1067)
  %self1.i14 = load i64, ptr %dp, align 8, !range !1031, !alias.scope !1067, !noundef !23
  %_4.i15 = icmp eq i64 %self1.i14, 2
  br i1 %_4.i15, label %bb1.i18, label %bb11

bb1.i18:                                          ; preds = %bb10
; invoke alloc::raw_vec::RawVec<T,A>::grow_one
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h39963d57aa4fc884E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %dp)
          to label %bb1.i18.bb11_crit_edge unwind label %cleanup.loopexit.split-lp

bb1.i18.bb11_crit_edge:                           ; preds = %bb1.i18
  %self1.i22.pre = load i64, ptr %dp, align 8, !range !1031, !alias.scope !1070
  br label %bb11

bb11:                                             ; preds = %bb1.i18.bb11_crit_edge, %bb10
  %self1.i22 = phi i64 [ %self1.i22.pre, %bb1.i18.bb11_crit_edge ], [ %self1.i14, %bb10 ]
  %_15.i16 = load ptr, ptr %10, align 8, !alias.scope !1067, !nonnull !23, !noundef !23
  %end.i17 = getelementptr inbounds nuw i8, ptr %_15.i16, i64 8
  store i32 1, ptr %end.i17, align 4, !noalias !1067
  store i64 3, ptr %9, align 8, !alias.scope !1067
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1070)
  %_4.i23 = icmp eq i64 %self1.i22, 3
  br i1 %_4.i23, label %bb1.i26, label %bb12

bb1.i26:                                          ; preds = %bb11
; invoke alloc::raw_vec::RawVec<T,A>::grow_one
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h39963d57aa4fc884E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %dp)
          to label %bb1.i26.bb12_crit_edge unwind label %cleanup.loopexit.split-lp

bb1.i26.bb12_crit_edge:                           ; preds = %bb1.i26
  %_15.i24.pre = load ptr, ptr %10, align 8, !alias.scope !1070
  br label %bb12

bb12:                                             ; preds = %bb1.i26.bb12_crit_edge, %bb11
  %_15.i24 = phi ptr [ %_15.i24.pre, %bb1.i26.bb12_crit_edge ], [ %_15.i16, %bb11 ]
  %end.i25 = getelementptr inbounds nuw i8, ptr %_15.i24, i64 12
  store i32 2, ptr %end.i25, align 4, !noalias !1070
  store i64 4, ptr %9, align 8
  %_0.i.not.i61 = icmp slt i32 %n, 4
  br i1 %_0.i.not.i61, label %bb4, label %bb2.i

bb2.i:                                            ; preds = %bb12, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h5f869a05c976df28E.exit43"
  %_15.i3983 = phi ptr [ %_15.i39, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h5f869a05c976df28E.exit43" ], [ %_15.i24, %bb12 ]
  %_36 = phi i64 [ %16, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h5f869a05c976df28E.exit43" ], [ 4, %bb12 ]
  %iter.sroa.0.062 = phi i32 [ %spec.select51, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h5f869a05c976df28E.exit43" ], [ 4, %bb12 ]
  %_0.i3.i = icmp sge i32 %iter.sroa.0.062, %n
  %not._0.i3.i = xor i1 %_0.i3.i, true
  %11 = zext i1 %not._0.i3.i to i32
  %spec.select51 = add nuw nsw i32 %iter.sroa.0.062, %11
  %_21 = zext nneg i32 %iter.sroa.0.062 to i64
  %_20 = add nsw i64 %_21, -1
  %_39 = icmp ult i64 %_20, %_36
  br i1 %_39, label %bb14, label %panic.invoke

bb4:                                              ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h5f869a05c976df28E.exit43", %bb12
  %_41 = phi i64 [ 4, %bb12 ], [ %16, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h5f869a05c976df28E.exit43" ]
  %_44 = icmp ugt i64 %_41, %_4
  br i1 %_44, label %bb15, label %panic.invoke

bb15:                                             ; preds = %bb4
  %_42 = load ptr, ptr %10, align 8, !nonnull !23, !noundef !23
  %_28 = getelementptr inbounds nuw i32, ptr %_42, i64 %_4
  %_0 = load i32, ptr %_28, align 4, !noundef !23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1073)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1076)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1079)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1082)
  %self1.i.i.i.i1.i30 = load i64, ptr %dp, align 8, !range !1031, !alias.scope !1085, !noalias !1088, !noundef !23
  %_6.i.i.i.i2.i31 = icmp eq i64 %self1.i.i.i.i1.i30, 0
  br i1 %_6.i.i.i.i2.i31, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h5a73d4b1d587d495E.exit34", label %bb2.i.i.i3.i32

bb2.i.i.i3.i32:                                   ; preds = %bb15
  %12 = shl nuw i64 %self1.i.i.i.i1.i30, 2
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_42, i64 noundef %12, i64 noundef range(i64 1, -9223372036854775807) 4) #22, !noalias !1090
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h5a73d4b1d587d495E.exit34"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h5a73d4b1d587d495E.exit34": ; preds = %bb15, %bb2.i.i.i3.i32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %dp)
  ret i32 %_0

panic.invoke:                                     ; preds = %bb16, %bb14, %bb2.i, %bb4
  %13 = phi i64 [ %_4, %bb4 ], [ %_20, %bb2.i ], [ %_24, %bb14 ], [ %_27, %bb16 ]
  %14 = phi i64 [ %_41, %bb4 ], [ %_36, %bb2.i ], [ %_36, %bb14 ], [ %_36, %bb16 ]
  %15 = phi ptr [ @alloc_a4382073e4b3b81fe497466a41567024, %bb4 ], [ @alloc_9b3bf443d4edb47bc1e1a0d5db0e2aea, %bb2.i ], [ @alloc_7461fe806288c95339fe9466ff2bc776, %bb14 ], [ @alloc_48c57c3c186518a791aaa56691556a05, %bb16 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %13, i64 noundef %14, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %15) #23
          to label %panic.cont unwind label %cleanup.loopexit.split-lp

panic.cont:                                       ; preds = %panic.invoke
  unreachable

bb14:                                             ; preds = %bb2.i
  %_24 = add nsw i64 %_21, -3
  %_49 = icmp ult i64 %_24, %_36
  br i1 %_49, label %bb16, label %panic.invoke

bb16:                                             ; preds = %bb14
  %_27 = add nsw i64 %_21, -4
  %_54 = icmp ult i64 %_27, %_36
  br i1 %_54, label %bb17, label %panic.invoke

bb17:                                             ; preds = %bb16
  %_19 = getelementptr inbounds nuw i32, ptr %_15.i3983, i64 %_20
  %_18 = load i32, ptr %_19, align 4, !noundef !23
  %_23 = getelementptr inbounds nuw i32, ptr %_15.i3983, i64 %_24
  %_22 = load i32, ptr %_23, align 4, !noundef !23
  %_17 = add i32 %_22, %_18
  %_26 = getelementptr inbounds nuw i32, ptr %_15.i3983, i64 %_27
  %_25 = load i32, ptr %_26, align 4, !noundef !23
  %_16 = add i32 %_17, %_25
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1091)
  %self1.i36 = load i64, ptr %dp, align 8, !range !1031, !alias.scope !1091, !noundef !23
  %_4.i37 = icmp eq i64 %_36, %self1.i36
  br i1 %_4.i37, label %bb1.i41, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h5f869a05c976df28E.exit43"

bb1.i41:                                          ; preds = %bb17
; invoke alloc::raw_vec::RawVec<T,A>::grow_one
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h39963d57aa4fc884E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %dp)
          to label %"bb1.i41._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h5f869a05c976df28E.exit43_crit_edge" unwind label %cleanup.loopexit

"bb1.i41._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h5f869a05c976df28E.exit43_crit_edge": ; preds = %bb1.i41
  %_15.i39.pre = load ptr, ptr %10, align 8, !alias.scope !1091
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h5f869a05c976df28E.exit43"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h5f869a05c976df28E.exit43": ; preds = %"bb1.i41._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h5f869a05c976df28E.exit43_crit_edge", %bb17
  %_15.i39 = phi ptr [ %_15.i39.pre, %"bb1.i41._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h5f869a05c976df28E.exit43_crit_edge" ], [ %_15.i3983, %bb17 ]
  %end.i40 = getelementptr inbounds nuw i32, ptr %_15.i39, i64 %_36
  store i32 %_16, ptr %end.i40, align 4, !noalias !1091
  %16 = add i64 %_36, 1
  store i64 %16, ptr %9, align 8
  %_0.i.not.i = icmp sgt i32 %spec.select51, %n
  %or.cond = select i1 %_0.i3.i, i1 true, i1 %_0.i.not.i
  br i1 %or.cond, label %bb4, label %bb2.i

bb7:                                              ; preds = %bb2.i.i.i3.i, %cleanup
  resume { ptr, i32 } %lpad.phi
}
