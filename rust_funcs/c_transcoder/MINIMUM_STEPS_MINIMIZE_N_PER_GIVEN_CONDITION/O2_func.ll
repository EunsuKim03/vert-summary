define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %table = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %table)
  %_4 = sext i32 %n to i64
  %_3 = add nsw i64 %_4, 1
  %_21.0.i.i.i = shl nsw i64 %_3, 2
  %_21.1.i.i.i = icmp ugt i64 %_3, 4611686018427387903
  %_26.i.i.i = icmp ugt i64 %_21.0.i.i.i, 9223372036854775804
  %or.cond.i.i.i = or i1 %_21.1.i.i.i, %_26.i.i.i
  br i1 %or.cond.i.i.i, label %bb3.i, label %bb17.i.i, !prof !339

bb17.i.i:                                         ; preds = %start
  %_8.i.i = icmp eq i64 %_3, 0
  br i1 %_8.i.i, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h2af41702acbb92fcE.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i": ; preds = %bb17.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !1040
; call __rustc::__rust_alloc
  %0 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #22, !noalias !1040
  %1 = icmp eq ptr %0, null
  br i1 %1, label %bb3.i, label %bb10.i.i

bb10.i.i:                                         ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i"
  %2 = ptrtoint ptr %0 to i64
  br label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h2af41702acbb92fcE.exit"

bb3.i:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i", %start
  %_4.sroa.4.0.ph.i = phi i64 [ 4, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i" ], [ 0, %start ]
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_4.sroa.4.0.ph.i, i64 %_21.0.i.i.i) #23
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h2af41702acbb92fcE.exit": ; preds = %bb17.i.i, %bb10.i.i
  %_4.sroa.10.0.i = phi i64 [ %2, %bb10.i.i ], [ 4, %bb17.i.i ]
  %3 = inttoptr i64 %_4.sroa.10.0.i to ptr
  store i64 %_3, ptr %table, align 8
  %4 = getelementptr inbounds nuw i8, ptr %table, i64 8
  store ptr %3, ptr %4, align 8
  %5 = getelementptr inbounds nuw i8, ptr %table, i64 16
  store i64 0, ptr %5, align 8
  %_0.i.not.i51 = icmp slt i32 %n, 0
  br i1 %_0.i.not.i51, label %bb2.i20.lr.ph, label %bb2.i

bb5.preheader:                                    ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h5918dbf78e11af2aE.exit"
  %_0.i.not.i1953 = icmp sgt i32 %n, 1
  br i1 %_0.i.not.i1953, label %bb7, label %bb2.i20.lr.ph

bb2.i20.lr.ph:                                    ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h2af41702acbb92fcE.exit", %bb5.preheader
  %_4761 = phi i64 [ %8, %bb5.preheader ], [ 0, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h2af41702acbb92fcE.exit" ]
  %_53 = load ptr, ptr %4, align 8, !nonnull !23
  br label %bb2.i20

bb2.i:                                            ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h2af41702acbb92fcE.exit", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h5918dbf78e11af2aE.exit"
  %_15.i56 = phi ptr [ %_15.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h5918dbf78e11af2aE.exit" ], [ %3, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h2af41702acbb92fcE.exit" ]
  %len.i = phi i64 [ %8, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h5918dbf78e11af2aE.exit" ], [ 0, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h2af41702acbb92fcE.exit" ]
  %iter.sroa.0.052 = phi i32 [ %spec.select47, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h5918dbf78e11af2aE.exit" ], [ 0, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h2af41702acbb92fcE.exit" ]
  %_0.i3.i = icmp sge i32 %iter.sroa.0.052, %n
  %not._0.i3.i = xor i1 %_0.i3.i, true
  %6 = zext i1 %not._0.i3.i to i32
  %spec.select47 = add nuw nsw i32 %iter.sroa.0.052, %6
  %_12 = sub nsw i32 %n, %iter.sroa.0.052
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1043)
  %self1.i = load i64, ptr %table, align 8, !range !1031, !alias.scope !1043, !noundef !23
  %_4.i = icmp eq i64 %len.i, %self1.i
  br i1 %_4.i, label %bb1.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h5918dbf78e11af2aE.exit"

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1046)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1049)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1052)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1055)
  %self1.i.i.i.i1.i = load i64, ptr %table, align 8, !range !1031, !alias.scope !1058, !noalias !1061, !noundef !23
  %_6.i.i.i.i2.i = icmp eq i64 %self1.i.i.i.i1.i, 0
  br i1 %_6.i.i.i.i2.i, label %bb18, label %bb2.i.i.i3.i

bb2.i.i.i3.i:                                     ; preds = %cleanup
  %7 = shl nuw i64 %self1.i.i.i.i1.i, 2
  %self3.i.i.i.i4.i = load ptr, ptr %4, align 8, !alias.scope !1058, !noalias !1061, !nonnull !23, !noundef !23
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i, i64 noundef %7, i64 noundef range(i64 1, -9223372036854775807) 4) #22, !noalias !1063
  br label %bb18

bb1.i:                                            ; preds = %bb2.i
; invoke alloc::raw_vec::RawVec<T,A>::grow_one
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h14a1daf2bb4a4a81E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %table)
          to label %"bb1.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h5918dbf78e11af2aE.exit_crit_edge" unwind label %cleanup.loopexit

"bb1.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h5918dbf78e11af2aE.exit_crit_edge": ; preds = %bb1.i
  %_15.i.pre = load ptr, ptr %4, align 8, !alias.scope !1043
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h5918dbf78e11af2aE.exit"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h5918dbf78e11af2aE.exit": ; preds = %"bb1.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h5918dbf78e11af2aE.exit_crit_edge", %bb2.i
  %_15.i = phi ptr [ %_15.i.pre, %"bb1.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h5918dbf78e11af2aE.exit_crit_edge" ], [ %_15.i56, %bb2.i ]
  %end.i = getelementptr inbounds nuw i32, ptr %_15.i, i64 %len.i
  store i32 %_12, ptr %end.i, align 4, !noalias !1043
  %8 = add i64 %len.i, 1
  store i64 %8, ptr %5, align 8
  %_0.i.not.i = icmp sgt i32 %spec.select47, %n
  %or.cond = select i1 %_0.i3.i, i1 true, i1 %_0.i.not.i
  br i1 %or.cond, label %bb5.preheader, label %bb2.i

bb2.i20:                                          ; preds = %bb2.i20.lr.ph, %bb15
  %iter1.sroa.4.054 = phi i32 [ 1, %bb2.i20.lr.ph ], [ %spec.select48, %bb15 ]
  %_0.i3.i21 = icmp sge i32 %n, %iter1.sroa.4.054
  %not._0.i3.i21 = xor i1 %_0.i3.i21, true
  %9 = sext i1 %not._0.i3.i21 to i32
  %spec.select48 = add nsw i32 %iter1.sroa.4.054, %9
  %10 = and i32 %iter1.sroa.4.054, 1
  %_19 = icmp eq i32 %10, 0
  br i1 %_19, label %bb8, label %bb11

bb7:                                              ; preds = %bb15, %bb5.preheader
  %_4762 = phi i64 [ %8, %bb5.preheader ], [ %_4761, %bb15 ]
  %_50 = icmp ugt i64 %_4762, 1
  br i1 %_50, label %bb23, label %panic.invoke

bb23:                                             ; preds = %bb7
  %_48 = load ptr, ptr %4, align 8, !nonnull !23, !noundef !23
  %_41 = getelementptr inbounds nuw i8, ptr %_48, i64 4
  %_0 = load i32, ptr %_41, align 4, !noundef !23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1064)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1067)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1070)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1073)
  %self1.i.i.i.i1.i27 = load i64, ptr %table, align 8, !range !1031, !alias.scope !1076, !noalias !1079, !noundef !23
  %_6.i.i.i.i2.i28 = icmp eq i64 %self1.i.i.i.i1.i27, 0
  br i1 %_6.i.i.i.i2.i28, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h18f2e057463ede02E.exit31", label %bb2.i.i.i3.i29

bb2.i.i.i3.i29:                                   ; preds = %bb23
  %11 = shl nuw i64 %self1.i.i.i.i1.i27, 2
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_48, i64 noundef %11, i64 noundef range(i64 1, -9223372036854775807) 4) #22, !noalias !1081
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h18f2e057463ede02E.exit31"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h18f2e057463ede02E.exit31": ; preds = %bb23, %bb2.i.i.i3.i29
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %table)
  ret i32 %_0

panic.invoke:                                     ; preds = %bb12, %bb8, %bb7
  %12 = phi i64 [ 1, %bb7 ], [ %_25, %bb8 ], [ %_36, %bb12 ]
  %13 = phi i64 [ %_4762, %bb7 ], [ %_4761, %bb8 ], [ %_4761, %bb12 ]
  %14 = phi ptr [ @alloc_8bdf5789f33bb978cfe120becd3cf96f, %bb7 ], [ @alloc_0d22174e785c8269e60d09f6e28a69e7, %bb8 ], [ @alloc_9af1ec02315128134e8a0329054695a4, %bb12 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %12, i64 noundef %13, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %14) #23
          to label %panic.cont unwind label %cleanup.loopexit.split-lp

panic.cont:                                       ; preds = %panic.invoke
  unreachable

bb8:                                              ; preds = %bb2.i20
  %_25 = sext i32 %iter1.sroa.4.054 to i64
  %_55 = icmp ugt i64 %_4761, %_25
  br i1 %_55, label %bb26, label %panic.invoke

bb11:                                             ; preds = %bb2.i20, %bb26
  %_31 = srem i32 %iter1.sroa.4.054, 3
  %_30 = icmp eq i32 %_31, 0
  br i1 %_30, label %bb12, label %bb15

bb26:                                             ; preds = %bb8
  %_2811 = lshr exact i64 %_25, 1
  %_24 = getelementptr inbounds nuw i32, ptr %_53, i64 %_25
  %_23 = load i32, ptr %_24, align 4, !noundef !23
  %_22 = add i32 %_23, 1
  %_27 = getelementptr inbounds nuw i32, ptr %_53, i64 %_2811
  %_26 = load i32, ptr %_27, align 4, !noundef !23
  %x.y.i = tail call noundef i32 @llvm.smin.i32(i32 %_22, i32 %_26)
  store i32 %x.y.i, ptr %_27, align 4
  br label %bb11

bb12:                                             ; preds = %bb11
  %_36 = sext i32 %iter1.sroa.4.054 to i64
  %_71 = icmp ugt i64 %_4761, %_36
  br i1 %_71, label %bb29, label %panic.invoke

bb15:                                             ; preds = %bb11, %bb29
  %_0.i.not.i19 = icmp sgt i32 %n, %spec.select48
  %or.cond50 = select i1 %_0.i3.i21, i1 true, i1 %_0.i.not.i19
  br i1 %or.cond50, label %bb7, label %bb2.i20

bb29:                                             ; preds = %bb12
  %_39 = udiv i64 %_36, 3
  %_35 = getelementptr inbounds nuw i32, ptr %_53, i64 %_36
  %_34 = load i32, ptr %_35, align 4, !noundef !23
  %_33 = add i32 %_34, 1
  %_38 = getelementptr inbounds nuw i32, ptr %_53, i64 %_39
  %_37 = load i32, ptr %_38, align 4, !noundef !23
  %x.y.i32 = tail call noundef i32 @llvm.smin.i32(i32 %_33, i32 %_37)
  store i32 %x.y.i32, ptr %_38, align 4
  br label %bb15

bb18:                                             ; preds = %bb2.i.i.i3.i, %cleanup
  resume { ptr, i32 } %lpad.phi
}
