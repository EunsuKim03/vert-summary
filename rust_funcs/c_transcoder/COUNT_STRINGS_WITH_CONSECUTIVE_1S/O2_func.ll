define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %b = alloca [24 x i8], align 8
  %a = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %a)
  %_3 = sext i32 %n to i64
  %_21.0.i.i.i = shl nsw i64 %_3, 2
  %_21.1.i.i.i = icmp slt i32 %n, 0
  %_26.i.i.i = icmp ugt i64 %_21.0.i.i.i, 9223372036854775804
  %or.cond.i.i.i = or i1 %_21.1.i.i.i, %_26.i.i.i
  br i1 %or.cond.i.i.i, label %bb3.i, label %bb17.i.i, !prof !339

bb17.i.i:                                         ; preds = %start
  %_8.i.i = icmp eq i32 %n, 0
  br i1 %_8.i.i, label %bb8.thread, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i"

bb8.thread:                                       ; preds = %bb17.i.i
  store i64 0, ptr %a, align 8
  %0 = getelementptr inbounds nuw i8, ptr %a, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %0, align 8
  %1 = getelementptr inbounds nuw i8, ptr %a, i64 16
  store i64 0, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %b)
  store i64 0, ptr %b, align 8
  %2 = getelementptr inbounds nuw i8, ptr %b, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %2, align 8
  %3 = getelementptr inbounds nuw i8, ptr %b, i64 16
  store i64 0, ptr %3, align 8
; invoke alloc::raw_vec::RawVec<T,A>::grow_one
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h6bb3fb2063f51f4fE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %a)
          to label %bb1.i33 unwind label %cleanup1.loopexit.split-lp

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i": ; preds = %bb17.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !1040
; call __rustc::__rust_alloc
  %4 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #22, !noalias !1040
  %5 = icmp eq ptr %4, null
  br i1 %5, label %bb3.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i14"

bb3.i:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i", %start
  %_4.sroa.4.0.ph.i = phi i64 [ 4, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i" ], [ 0, %start ]
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_4.sroa.4.0.ph.i, i64 %_21.0.i.i.i) #23
  unreachable

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i14": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i"
  store i64 %_3, ptr %a, align 8
  %6 = getelementptr inbounds nuw i8, ptr %a, i64 8
  store ptr %4, ptr %6, align 8
  %7 = getelementptr inbounds nuw i8, ptr %a, i64 16
  store i64 0, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %b)
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !1043
; call __rustc::__rust_alloc
  %8 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #22, !noalias !1043
  %9 = icmp eq ptr %8, null
  br i1 %9, label %bb3.i19, label %bb8

bb3.i19:                                          ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i14"
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef 4, i64 %_21.0.i.i.i) #23
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %bb3.i19
  unreachable

bb5:                                              ; preds = %bb2.i.i.i3.i25, %cleanup1, %cleanup
  %10 = phi ptr [ %6, %cleanup ], [ %18, %cleanup1 ], [ %18, %bb2.i.i.i3.i25 ]
  %.pn = phi { ptr, i32 } [ %12, %cleanup ], [ %lpad.phi, %cleanup1 ], [ %lpad.phi, %bb2.i.i.i3.i25 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1046)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1049)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1052)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1055)
  %self1.i.i.i.i1.i = load i64, ptr %a, align 8, !range !1031, !alias.scope !1058, !noalias !1061, !noundef !23
  %_6.i.i.i.i2.i = icmp eq i64 %self1.i.i.i.i1.i, 0
  br i1 %_6.i.i.i.i2.i, label %bb6, label %bb2.i.i.i3.i

bb2.i.i.i3.i:                                     ; preds = %bb5
  %11 = shl nuw i64 %self1.i.i.i.i1.i, 2
  %self3.i.i.i.i4.i = load ptr, ptr %10, align 8, !alias.scope !1058, !noalias !1061, !nonnull !23, !noundef !23
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i, i64 noundef %11, i64 noundef range(i64 1, -9223372036854775807) 4) #22, !noalias !1063
  br label %bb6

cleanup:                                          ; preds = %bb3.i19
  %12 = landingpad { ptr, i32 }
          cleanup
  br label %bb5

bb8:                                              ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i14"
  store i64 %_3, ptr %b, align 8
  %13 = getelementptr inbounds nuw i8, ptr %b, i64 8
  store ptr %8, ptr %13, align 8
  %14 = getelementptr inbounds nuw i8, ptr %b, i64 16
  store i64 0, ptr %14, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1064)
  store i32 1, ptr %4, align 4, !noalias !1064
  store i64 1, ptr %7, align 8, !alias.scope !1064
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1067)
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hf22ca943a2df9eabE.exit35"

cleanup1.loopexit:                                ; preds = %bb1.i51, %bb1.i59
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %cleanup1

cleanup1.loopexit.split-lp:                       ; preds = %panic.invoke, %bb8.thread, %bb1.i33
  %15 = phi ptr [ %2, %bb8.thread ], [ %2, %bb1.i33 ], [ %22, %panic.invoke ]
  %16 = phi ptr [ %0, %bb8.thread ], [ %0, %bb1.i33 ], [ %21, %panic.invoke ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %cleanup1

cleanup1:                                         ; preds = %cleanup1.loopexit.split-lp, %cleanup1.loopexit
  %17 = phi ptr [ %22, %cleanup1.loopexit ], [ %15, %cleanup1.loopexit.split-lp ]
  %18 = phi ptr [ %21, %cleanup1.loopexit ], [ %16, %cleanup1.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %cleanup1.loopexit ], [ %lpad.loopexit.split-lp, %cleanup1.loopexit.split-lp ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1070)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1073)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1076)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1079)
  %self1.i.i.i.i1.i23 = load i64, ptr %b, align 8, !range !1031, !alias.scope !1082, !noalias !1085, !noundef !23
  %_6.i.i.i.i2.i24 = icmp eq i64 %self1.i.i.i.i1.i23, 0
  br i1 %_6.i.i.i.i2.i24, label %bb5, label %bb2.i.i.i3.i25

bb2.i.i.i3.i25:                                   ; preds = %cleanup1
  %19 = shl nuw i64 %self1.i.i.i.i1.i23, 2
  %self3.i.i.i.i4.i26 = load ptr, ptr %17, align 8, !alias.scope !1082, !noalias !1085, !nonnull !23, !noundef !23
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i26, i64 noundef %19, i64 noundef range(i64 1, -9223372036854775807) 4) #22, !noalias !1087
  br label %bb5

bb1.i33:                                          ; preds = %bb8.thread
  %_15.i.pre = load ptr, ptr %0, align 8, !alias.scope !1064
  store i32 1, ptr %_15.i.pre, align 4, !noalias !1064
  store i64 1, ptr %1, align 8, !alias.scope !1064
; invoke alloc::raw_vec::RawVec<T,A>::grow_one
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h6bb3fb2063f51f4fE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %b)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hf22ca943a2df9eabE.exit35" unwind label %cleanup1.loopexit.split-lp

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hf22ca943a2df9eabE.exit35": ; preds = %bb8, %bb1.i33
  %20 = phi ptr [ %1, %bb1.i33 ], [ %7, %bb8 ]
  %21 = phi ptr [ %0, %bb1.i33 ], [ %6, %bb8 ]
  %22 = phi ptr [ %2, %bb1.i33 ], [ %13, %bb8 ]
  %23 = phi ptr [ %3, %bb1.i33 ], [ %14, %bb8 ]
  %_15.i31 = load ptr, ptr %22, align 8, !alias.scope !1067, !nonnull !23, !noundef !23
  store i32 1, ptr %_15.i31, align 4, !noalias !1067
  store i64 1, ptr %23, align 8
  %_3374 = icmp samesign ugt i32 %n, 1
  br i1 %_3374, label %bb11.preheader, label %bb12

bb11.preheader:                                   ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hf22ca943a2df9eabE.exit35"
  %wide.trip.count = zext nneg i32 %n to i64
  br label %bb11

bb12:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hf22ca943a2df9eabE.exit61", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hf22ca943a2df9eabE.exit35"
  %_63 = phi i64 [ 1, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hf22ca943a2df9eabE.exit35" ], [ %32, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hf22ca943a2df9eabE.exit61" ]
  %_24 = add nsw i64 %_3, -1
  %_46 = load i64, ptr %20, align 8, !noundef !23
  %_49 = icmp ult i64 %_24, %_46
  br i1 %_49, label %bb17, label %panic.invoke

bb11:                                             ; preds = %bb11.preheader, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hf22ca943a2df9eabE.exit61"
  %_15.i5794 = phi ptr [ %_15.i31, %bb11.preheader ], [ %_15.i57, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hf22ca943a2df9eabE.exit61" ]
  %_51 = phi i64 [ 1, %bb11.preheader ], [ %32, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hf22ca943a2df9eabE.exit61" ]
  %indvars.iv = phi i64 [ 1, %bb11.preheader ], [ %indvars.iv.next, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hf22ca943a2df9eabE.exit61" ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %_13 = add nsw i64 %indvars.iv, -1
  %_41 = load i64, ptr %20, align 8, !noundef !23
  %_44 = icmp ult i64 %_13, %_41
  br i1 %_44, label %bb16, label %panic.invoke

bb17:                                             ; preds = %bb12
  %_66 = icmp ult i64 %_24, %_63
  br i1 %_66, label %bb22, label %panic.invoke

panic.invoke:                                     ; preds = %bb19, %bb16, %bb11, %bb17, %bb12
  %24 = phi i64 [ %_24, %bb12 ], [ %_24, %bb17 ], [ %_13, %bb11 ], [ %_13, %bb16 ], [ %_13, %bb19 ]
  %25 = phi i64 [ %_46, %bb12 ], [ %_63, %bb17 ], [ %31, %bb19 ], [ %_51, %bb16 ], [ %_41, %bb11 ]
  %26 = phi ptr [ @alloc_8da7ed78b47668010ac132c295ad368f, %bb12 ], [ @alloc_af8779130104ef431c52fdc6ad763c28, %bb17 ], [ @alloc_19d423c5f455a2a32b72c302d84dfa49, %bb19 ], [ @alloc_38b0b17ba1f3330981922b59f2c97714, %bb16 ], [ @alloc_dfee6f6e8b405d26a17ddd473edd47ac, %bb11 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %24, i64 noundef %25, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %26) #23
          to label %panic.cont unwind label %cleanup1.loopexit.split-lp

panic.cont:                                       ; preds = %panic.invoke
  unreachable

bb22:                                             ; preds = %bb17
  %_64 = load ptr, ptr %22, align 8, !nonnull !23, !noundef !23
  %_47 = load ptr, ptr %21, align 8, !nonnull !23, !noundef !23
  %_23 = getelementptr inbounds nuw i32, ptr %_47, i64 %_24
  %_22 = load i32, ptr %_23, align 4, !noundef !23
  %_26 = getelementptr inbounds nuw i32, ptr %_64, i64 %_24
  %_25 = load i32, ptr %_26, align 4, !noundef !23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1088)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1091)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1094)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1097)
  %self1.i.i.i.i1.i36 = load i64, ptr %b, align 8, !range !1031, !alias.scope !1100, !noalias !1103, !noundef !23
  %_6.i.i.i.i2.i37 = icmp eq i64 %self1.i.i.i.i1.i36, 0
  br i1 %_6.i.i.i.i2.i37, label %bb2, label %bb2.i.i.i3.i38

bb2.i.i.i3.i38:                                   ; preds = %bb22
  %27 = shl nuw i64 %self1.i.i.i.i1.i36, 2
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_64, i64 noundef %27, i64 noundef range(i64 1, -9223372036854775807) 4) #22, !noalias !1105
  br label %bb2

bb2:                                              ; preds = %bb2.i.i.i3.i38, %bb22
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1106)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1109)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1112)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1115)
  %self1.i.i.i.i1.i41 = load i64, ptr %a, align 8, !range !1031, !alias.scope !1118, !noalias !1121, !noundef !23
  %_6.i.i.i.i2.i42 = icmp eq i64 %self1.i.i.i.i1.i41, 0
  br i1 %_6.i.i.i.i2.i42, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h07d6c17debd4df80E.exit45", label %bb2.i.i.i3.i43

bb2.i.i.i3.i43:                                   ; preds = %bb2
  %28 = shl nuw i64 %self1.i.i.i.i1.i41, 2
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_47, i64 noundef %28, i64 noundef range(i64 1, -9223372036854775807) 4) #22, !noalias !1123
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h07d6c17debd4df80E.exit45"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h07d6c17debd4df80E.exit45": ; preds = %bb2, %bb2.i.i.i3.i43
  %29 = and i32 %n, 31
  %_21 = shl nuw i32 1, %29
  %30 = add i32 %_22, %_25
  %_0 = sub i32 %_21, %30
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %a)
  ret i32 %_0

bb16:                                             ; preds = %bb11
  %_54 = icmp ult i64 %_13, %_51
  br i1 %_54, label %bb18, label %panic.invoke

bb18:                                             ; preds = %bb16
  %_42 = load ptr, ptr %21, align 8, !nonnull !23, !noundef !23
  %_12 = getelementptr inbounds nuw i32, ptr %_42, i64 %_13
  %_11 = load i32, ptr %_12, align 4, !noundef !23
  %_16 = getelementptr inbounds nuw i32, ptr %_15.i5794, i64 %_13
  %_15 = load i32, ptr %_16, align 4, !noundef !23
  %_10 = add i32 %_15, %_11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1124)
  %self1.i47 = load i64, ptr %a, align 8, !range !1031, !alias.scope !1124, !noundef !23
  %_4.i48 = icmp eq i64 %_41, %self1.i47
  br i1 %_4.i48, label %bb1.i51, label %bb19

bb1.i51:                                          ; preds = %bb18
; invoke alloc::raw_vec::RawVec<T,A>::grow_one
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h6bb3fb2063f51f4fE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %a)
          to label %bb1.i51.bb19_crit_edge unwind label %cleanup1.loopexit

bb1.i51.bb19_crit_edge:                           ; preds = %bb1.i51
  %_15.i49.pre = load ptr, ptr %21, align 8, !alias.scope !1124
  br label %bb19

bb19:                                             ; preds = %bb1.i51.bb19_crit_edge, %bb18
  %_15.i49 = phi ptr [ %_15.i49.pre, %bb1.i51.bb19_crit_edge ], [ %_42, %bb18 ]
  %end.i50 = getelementptr inbounds nuw i32, ptr %_15.i49, i64 %_41
  store i32 %_10, ptr %end.i50, align 4, !noalias !1124
  %31 = add i64 %_41, 1
  store i64 %31, ptr %20, align 8, !alias.scope !1124
  %_60 = icmp ult i64 %_13, %31
  br i1 %_60, label %bb20, label %panic.invoke

bb20:                                             ; preds = %bb19
  %_19 = getelementptr inbounds nuw i32, ptr %_15.i49, i64 %_13
  %_18 = load i32, ptr %_19, align 4, !noundef !23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1127)
  %self1.i55 = load i64, ptr %b, align 8, !range !1031, !alias.scope !1127, !noundef !23
  %_4.i56 = icmp eq i64 %_51, %self1.i55
  br i1 %_4.i56, label %bb1.i59, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hf22ca943a2df9eabE.exit61"

bb1.i59:                                          ; preds = %bb20
; invoke alloc::raw_vec::RawVec<T,A>::grow_one
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h6bb3fb2063f51f4fE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %b)
          to label %"bb1.i59._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hf22ca943a2df9eabE.exit61_crit_edge" unwind label %cleanup1.loopexit

"bb1.i59._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hf22ca943a2df9eabE.exit61_crit_edge": ; preds = %bb1.i59
  %_15.i57.pre = load ptr, ptr %22, align 8, !alias.scope !1127
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hf22ca943a2df9eabE.exit61"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hf22ca943a2df9eabE.exit61": ; preds = %"bb1.i59._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hf22ca943a2df9eabE.exit61_crit_edge", %bb20
  %_15.i57 = phi ptr [ %_15.i57.pre, %"bb1.i59._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hf22ca943a2df9eabE.exit61_crit_edge" ], [ %_15.i5794, %bb20 ]
  %end.i58 = getelementptr inbounds nuw i32, ptr %_15.i57, i64 %_51
  store i32 %_18, ptr %end.i58, align 4, !noalias !1127
  %32 = add i64 %_51, 1
  store i64 %32, ptr %23, align 8
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb12, label %bb11

bb6:                                              ; preds = %bb2.i.i.i3.i, %bb5
  resume { ptr, i32 } %.pn
}
