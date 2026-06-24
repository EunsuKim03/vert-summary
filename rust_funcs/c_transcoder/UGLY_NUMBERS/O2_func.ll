define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %ugly = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ugly)
  %_3 = zext i32 %n to i64
  %_21.0.i.i.i = shl nuw nsw i64 %_3, 2
  %_8.i.i = icmp eq i32 %n, 0
  br i1 %_8.i.i, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h1f3f51cf4648e847E.exit.thread", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i"

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h1f3f51cf4648e847E.exit.thread": ; preds = %start
  store i64 0, ptr %ugly, align 8
  %0 = getelementptr inbounds nuw i8, ptr %ugly, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %0, align 8
  %1 = getelementptr inbounds nuw i8, ptr %ugly, i64 16
  store i64 0, ptr %1, align 8
; invoke alloc::raw_vec::RawVec<T,A>::grow_one
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h209b3437fd56ae74E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %ugly)
          to label %"bb1.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h3ac309ba2bcf2ceaE.exit_crit_edge" unwind label %cleanup.loopexit.split-lp

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i": ; preds = %start
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !1040
; call __rustc::__rust_alloc
  %2 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #21, !noalias !1040
  %3 = icmp eq ptr %2, null
  br i1 %3, label %bb3.i, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h1f3f51cf4648e847E.exit"

bb3.i:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i"
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef 4, i64 %_21.0.i.i.i) #22
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h1f3f51cf4648e847E.exit": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i"
  store i64 %_3, ptr %ugly, align 8
  %4 = getelementptr inbounds nuw i8, ptr %ugly, i64 8
  store ptr %2, ptr %4, align 8
  %5 = getelementptr inbounds nuw i8, ptr %ugly, i64 16
  store i64 0, ptr %5, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1043)
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h3ac309ba2bcf2ceaE.exit"

"bb1.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h3ac309ba2bcf2ceaE.exit_crit_edge": ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h1f3f51cf4648e847E.exit.thread"
  %_15.i.pre = load ptr, ptr %0, align 8, !alias.scope !1043
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h3ac309ba2bcf2ceaE.exit"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h3ac309ba2bcf2ceaE.exit": ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h1f3f51cf4648e847E.exit", %"bb1.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h3ac309ba2bcf2ceaE.exit_crit_edge"
  %6 = phi ptr [ %1, %"bb1.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h3ac309ba2bcf2ceaE.exit_crit_edge" ], [ %5, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h1f3f51cf4648e847E.exit" ]
  %7 = phi ptr [ %0, %"bb1.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h3ac309ba2bcf2ceaE.exit_crit_edge" ], [ %4, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h1f3f51cf4648e847E.exit" ]
  %_15.i = phi ptr [ %_15.i.pre, %"bb1.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h3ac309ba2bcf2ceaE.exit_crit_edge" ], [ %2, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h1f3f51cf4648e847E.exit" ]
  store i32 1, ptr %_15.i, align 4, !noalias !1043
  store i64 1, ptr %6, align 8, !alias.scope !1043
  %_4536 = icmp ugt i32 %n, 1
  br i1 %_4536, label %bb4, label %bb20

cleanup.loopexit:                                 ; preds = %bb1.i27
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %cleanup

cleanup.loopexit.split-lp:                        ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h1f3f51cf4648e847E.exit.thread"
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit.split-lp, %cleanup.loopexit
  %8 = phi ptr [ %7, %cleanup.loopexit ], [ %0, %cleanup.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %cleanup.loopexit ], [ %lpad.loopexit.split-lp, %cleanup.loopexit.split-lp ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1046)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1049)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1052)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1055)
  %self1.i.i.i.i1.i = load i64, ptr %ugly, align 8, !range !1031, !alias.scope !1058, !noalias !1061, !noundef !23
  %_6.i.i.i.i2.i = icmp eq i64 %self1.i.i.i.i1.i, 0
  br i1 %_6.i.i.i.i2.i, label %bb16, label %bb2.i.i.i3.i

bb2.i.i.i3.i:                                     ; preds = %cleanup
  %9 = shl nuw i64 %self1.i.i.i.i1.i, 2
  %self3.i.i.i.i4.i = load ptr, ptr %8, align 8, !alias.scope !1058, !noalias !1061, !nonnull !23, !noundef !23
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i, i64 noundef %9, i64 noundef range(i64 1, -9223372036854775807) 4) #21, !noalias !1063
  br label %bb16

bb20:                                             ; preds = %bb13, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h3ac309ba2bcf2ceaE.exit"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1064)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1067)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1070)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1073)
  %self1.i.i.i.i1.i15 = load i64, ptr %ugly, align 8, !range !1031, !alias.scope !1076, !noalias !1079, !noundef !23
  %_6.i.i.i.i2.i16 = icmp eq i64 %self1.i.i.i.i1.i15, 0
  br i1 %_6.i.i.i.i2.i16, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u32$GT$$GT$17h0521b490a325493dE.exit19", label %bb2.i.i.i3.i17

bb2.i.i.i3.i17:                                   ; preds = %bb20
  %10 = shl nuw i64 %self1.i.i.i.i1.i15, 2
  %self3.i.i.i.i4.i18 = load ptr, ptr %7, align 8, !alias.scope !1076, !noalias !1079, !nonnull !23, !noundef !23
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i18, i64 noundef %10, i64 noundef range(i64 1, -9223372036854775807) 4) #21, !noalias !1081
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u32$GT$$GT$17h0521b490a325493dE.exit19"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u32$GT$$GT$17h0521b490a325493dE.exit19": ; preds = %bb20, %bb2.i.i.i3.i17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ugly)
  ret i32 1

bb4:                                              ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h3ac309ba2bcf2ceaE.exit", %bb13
  %_15.i2554 = phi ptr [ %_15.i25, %bb13 ], [ %_15.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h3ac309ba2bcf2ceaE.exit" ]
  %len.i22 = phi i64 [ %12, %bb13 ], [ 1, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h3ac309ba2bcf2ceaE.exit" ]
  %iter.sroa.0.037 = phi i32 [ %11, %bb13 ], [ 1, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h3ac309ba2bcf2ceaE.exit" ]
  %11 = add nuw i32 %iter.sroa.0.037, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1082)
  %self1.i23 = load i64, ptr %ugly, align 8, !range !1031, !alias.scope !1082, !noundef !23
  %_4.i24 = icmp eq i64 %len.i22, %self1.i23
  br i1 %_4.i24, label %bb1.i27, label %bb13

bb1.i27:                                          ; preds = %bb4
; invoke alloc::raw_vec::RawVec<T,A>::grow_one
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h209b3437fd56ae74E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %ugly)
          to label %bb1.i27.bb21_crit_edge unwind label %cleanup.loopexit

bb1.i27.bb21_crit_edge:                           ; preds = %bb1.i27
  %_15.i25.pre = load ptr, ptr %7, align 8, !alias.scope !1082
  br label %bb13

bb13:                                             ; preds = %bb4, %bb1.i27.bb21_crit_edge
  %_15.i25 = phi ptr [ %_15.i25.pre, %bb1.i27.bb21_crit_edge ], [ %_15.i2554, %bb4 ]
  %end.i26 = getelementptr inbounds nuw i32, ptr %_15.i25, i64 %len.i22
  store i32 1, ptr %end.i26, align 4, !noalias !1082
  %12 = add i64 %len.i22, 1
  store i64 %12, ptr %6, align 8, !alias.scope !1082
  %exitcond.not = icmp eq i32 %11, %n
  br i1 %exitcond.not, label %bb20, label %bb4

bb16:                                             ; preds = %bb2.i.i.i3.i, %cleanup
  resume { ptr, i32 } %lpad.phi
}
