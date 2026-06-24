define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %row = alloca [24 x i8], align 8
  %arr = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %arr)
  %_3 = sext i32 %n to i64
  %_21.0.i.i.i = mul nsw i64 %_3, 24
  %or.cond.i.i.i = icmp slt i32 %n, 0
  br i1 %or.cond.i.i.i, label %bb3.i, label %bb17.i.i, !prof !379

bb17.i.i:                                         ; preds = %start
  %_8.i.i = icmp eq i32 %n, 0
  br i1 %_8.i.i, label %bb28.thread, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i"

bb28.thread:                                      ; preds = %bb17.i.i
  store i64 0, ptr %arr, align 8
  br label %bb4.i

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i": ; preds = %bb17.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !1079
; call __rustc::__rust_alloc
  %0 = tail call noundef align 8 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i.i.i, i64 noundef range(i64 4, 9) 8) #21, !noalias !1079
  %1 = icmp eq ptr %0, null
  br i1 %1, label %bb3.i, label %bb11.lr.ph

bb3.i:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i", %start
  %_4.sroa.4.0.ph.i = phi i64 [ 8, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i" ], [ 0, %start ]
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_4.sroa.4.0.ph.i, i64 %_21.0.i.i.i) #23
  unreachable

bb11.lr.ph:                                       ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i"
  store i64 %_3, ptr %arr, align 8
  %2 = getelementptr inbounds nuw i8, ptr %arr, i64 8
  store ptr %0, ptr %2, align 8
  %3 = getelementptr inbounds nuw i8, ptr %arr, i64 16
  store i64 0, ptr %3, align 8
  %4 = shl nuw nsw i64 %_3, 2
  %5 = getelementptr inbounds nuw i8, ptr %row, i64 8
  %6 = getelementptr inbounds nuw i8, ptr %row, i64 16
  br label %bb11

bb27.lr.ph:                                       ; preds = %bb25
  %smax76 = tail call i32 @llvm.smax.i32(i32 %n, i32 1)
  %wide.trip.count81 = zext nneg i32 %smax76 to i64
  br label %bb31.lr.ph

bb11:                                             ; preds = %bb11.lr.ph, %bb25
  %iter.sroa.0.060 = phi i32 [ 0, %bb11.lr.ph ], [ %7, %bb25 ]
  %7 = add nuw nsw i32 %iter.sroa.0.060, 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %row)
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !1082
; call __rustc::__rust_alloc
  %8 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %4, i64 noundef range(i64 4, 9) 4) #21, !noalias !1082
  %9 = icmp eq ptr %8, null
  br i1 %9, label %bb3.i25, label %bb17.preheader

bb3.i25:                                          ; preds = %bb11
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef 4, i64 %4) #23
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %bb3.i25
  unreachable

bb3.loopexit:                                     ; preds = %bb36
  %exitcond82.not = icmp eq i64 %indvars.iv.next79, %wide.trip.count81
  br i1 %exitcond82.not, label %bb28, label %bb31.lr.ph

bb28:                                             ; preds = %bb3.loopexit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1085)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1088)
  br label %bb5.i.i.i

bb5.i.i.i:                                        ; preds = %bb28, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hdc688cb098de7683E.exit.i.i.i"
  %_3.sroa.0.012.i.i.i = phi i64 [ %10, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hdc688cb098de7683E.exit.i.i.i" ], [ 0, %bb28 ]
  %_6.i.i.i = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_15.i, i64 %_3.sroa.0.012.i.i.i
  %10 = add nuw i64 %_3.sroa.0.012.i.i.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1091)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1094)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1097)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1100)
  %self1.i.i.i.i1.i.i.i.i = load i64, ptr %_6.i.i.i, align 8, !range !22, !alias.scope !1103, !noalias !1106, !noundef !6
  %_6.i.i.i.i2.i.i.i.i = icmp eq i64 %self1.i.i.i.i1.i.i.i.i, 0
  br i1 %_6.i.i.i.i2.i.i.i.i, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hdc688cb098de7683E.exit.i.i.i", label %bb2.i.i.i3.i.i.i.i

bb2.i.i.i3.i.i.i.i:                               ; preds = %bb5.i.i.i
  %11 = shl nuw i64 %self1.i.i.i.i1.i.i.i.i, 2
  %12 = getelementptr inbounds nuw i8, ptr %_6.i.i.i, i64 8
  %self3.i.i.i.i4.i.i.i.i = load ptr, ptr %12, align 8, !alias.scope !1103, !noalias !1106, !nonnull !6, !noundef !6
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i.i.i, i64 noundef %11, i64 noundef range(i64 1, -9223372036854775807) 4) #21, !noalias !1110
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hdc688cb098de7683E.exit.i.i.i"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hdc688cb098de7683E.exit.i.i.i": ; preds = %bb2.i.i.i3.i.i.i.i, %bb5.i.i.i
  %_7.i.i.i = icmp eq i64 %_3.sroa.0.012.i.i.i, %len.i.pre
  br i1 %_7.i.i.i, label %bb4.i, label %bb5.i.i.i

bb4.i:                                            ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hdc688cb098de7683E.exit.i.i.i", %bb28.thread
  %sum.sroa.0.0.lcssa105 = phi i32 [ 0, %bb28.thread ], [ %17, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hdc688cb098de7683E.exit.i.i.i" ]
  %_5.i.i98104 = phi ptr [ inttoptr (i64 8 to ptr), %bb28.thread ], [ %_15.i, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hdc688cb098de7683E.exit.i.i.i" ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1111)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1114)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1117)
  %self1.i.i.i.i1.i = load i64, ptr %arr, align 8, !range !22, !alias.scope !1120, !noalias !1123, !noundef !6
  %_6.i.i.i.i2.i = icmp eq i64 %self1.i.i.i.i1.i, 0
  br i1 %_6.i.i.i.i2.i, label %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h1912aa497468fe80E.exit", label %bb2.i.i.i3.i

bb2.i.i.i3.i:                                     ; preds = %bb4.i
  %13 = mul nuw i64 %self1.i.i.i.i1.i, 24
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_5.i.i98104, i64 noundef %13, i64 noundef range(i64 1, -9223372036854775807) 8) #21, !noalias !1125
  br label %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h1912aa497468fe80E.exit"

"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h1912aa497468fe80E.exit": ; preds = %bb4.i, %bb2.i.i.i3.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %arr)
  ret i32 %sum.sroa.0.0.lcssa105

bb31.lr.ph:                                       ; preds = %bb3.loopexit, %bb27.lr.ph
  %indvars.iv78 = phi i64 [ 0, %bb27.lr.ph ], [ %indvars.iv.next79, %bb3.loopexit ]
  %sum.sroa.0.066 = phi i32 [ 0, %bb27.lr.ph ], [ %17, %bb3.loopexit ]
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1
  %_64 = icmp ugt i64 %26, %indvars.iv78
  %_20 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_15.i, i64 %indvars.iv78
  %14 = getelementptr inbounds nuw i8, ptr %_20, i64 8
  br i1 %_64, label %bb31.lr.ph.split, label %panic4.invoke

bb31.lr.ph.split:                                 ; preds = %bb31.lr.ph
  %15 = getelementptr inbounds nuw i8, ptr %_20, i64 16
  %_66 = load i64, ptr %15, align 8, !noundef !6
  br label %bb31

bb31:                                             ; preds = %bb31.lr.ph.split, %bb36
  %indvars.iv = phi i64 [ 0, %bb31.lr.ph.split ], [ %indvars.iv.next, %bb36 ]
  %sum.sroa.0.163 = phi i32 [ %sum.sroa.0.066, %bb31.lr.ph.split ], [ %17, %bb36 ]
  %exitcond75.not = icmp eq i64 %indvars.iv, %_66
  br i1 %exitcond75.not, label %panic4.invoke, label %bb36

bb6:                                              ; preds = %bb2.i.i.i3.i.i, %cleanup.i, %bb2.i.i.i3.i42, %bb8, %cleanup
  %.pn = phi { ptr, i32 } [ %16, %cleanup ], [ %27, %bb8 ], [ %27, %bb2.i.i.i3.i42 ], [ %21, %cleanup.i ], [ %21, %bb2.i.i.i3.i.i ]
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h1912aa497468fe80E"(ptr noalias noundef align 8 dereferenceable(24) %arr) #25
  resume { ptr, i32 } %.pn

cleanup:                                          ; preds = %panic4.invoke, %bb3.i25
  %16 = landingpad { ptr, i32 }
          cleanup
  br label %bb6

bb36:                                             ; preds = %bb31
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %_67 = load ptr, ptr %14, align 8, !nonnull !6, !noundef !6
  %_19 = getelementptr inbounds nuw i32, ptr %_67, i64 %indvars.iv
  %_18 = load i32, ptr %_19, align 4, !noundef !6
  %17 = add i32 %_18, %sum.sroa.0.163
  %exitcond77.not = icmp eq i64 %indvars.iv.next, %wide.trip.count81
  br i1 %exitcond77.not, label %bb3.loopexit, label %bb31

panic4.invoke:                                    ; preds = %bb31.lr.ph, %bb31
  %18 = phi i64 [ %_66, %bb31 ], [ %indvars.iv78, %bb31.lr.ph ]
  %19 = phi i64 [ %_66, %bb31 ], [ %26, %bb31.lr.ph ]
  %20 = phi ptr [ @alloc_cc79363378052d3c2573ff697b4cc814, %bb31 ], [ @alloc_f53795b692da2a7ae349a135c9914431, %bb31.lr.ph ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %18, i64 noundef %19, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %20) #23
          to label %panic4.cont unwind label %cleanup

panic4.cont:                                      ; preds = %panic4.invoke
  unreachable

bb17.preheader:                                   ; preds = %bb11
  store i64 %_3, ptr %row, align 8
  store ptr %8, ptr %5, align 8
  store i64 0, ptr %6, align 8
  br label %bb17

bb18:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hc311ae09766f6553E.exit"
  %_13.sroa.0.0.copyload.pre = load i64, ptr %row, align 8
  %_13.sroa.5.0.copyload.pre = load ptr, ptr %5, align 8
  %len.i.pre = load i64, ptr %3, align 8, !alias.scope !1126, !noalias !1129
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1126)
  %self1.i = load i64, ptr %arr, align 8, !range !22, !alias.scope !1126, !noalias !1129, !noundef !6
  %_4.i = icmp eq i64 %len.i.pre, %self1.i
  br i1 %_4.i, label %bb1.i, label %bb25

bb1.i:                                            ; preds = %bb18
; invoke alloc::raw_vec::RawVec<T,A>::grow_one
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hc9609b01acf3ae0dE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %arr)
          to label %bb25 unwind label %cleanup.i, !noalias !1129

cleanup.i:                                        ; preds = %bb1.i
  %21 = landingpad { ptr, i32 }
          cleanup
  %_6.i.i.i.i2.i.i = icmp eq i64 %_13.sroa.0.0.copyload.pre, 0
  br i1 %_6.i.i.i.i2.i.i, label %bb6, label %bb2.i.i.i3.i.i

bb2.i.i.i3.i.i:                                   ; preds = %cleanup.i
  %22 = shl nuw i64 %_13.sroa.0.0.copyload.pre, 2
  %23 = icmp ne ptr %_13.sroa.5.0.copyload.pre, null
  tail call void @llvm.assume(i1 %23)
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_13.sroa.5.0.copyload.pre, i64 noundef %22, i64 noundef range(i64 1, -9223372036854775807) 4) #21, !noalias !1131
  br label %bb6

bb17:                                             ; preds = %bb17.preheader, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hc311ae09766f6553E.exit"
  %_15.i3584 = phi ptr [ %_15.i35, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hc311ae09766f6553E.exit" ], [ %8, %bb17.preheader ]
  %len.i31 = phi i64 [ %25, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hc311ae09766f6553E.exit" ], [ 0, %bb17.preheader ]
  %iter1.sroa.0.058 = phi i32 [ %24, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hc311ae09766f6553E.exit" ], [ 0, %bb17.preheader ]
  %24 = add nuw nsw i32 %iter1.sroa.0.058, 1
  %_11 = sub nsw i32 %iter.sroa.0.060, %iter1.sroa.0.058
  %_10.sroa.0.0 = tail call i32 @llvm.abs.i32(i32 %_11, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1140)
  %self1.i32 = load i64, ptr %row, align 8, !range !22, !alias.scope !1140, !noundef !6
  %_4.i33 = icmp eq i64 %len.i31, %self1.i32
  br i1 %_4.i33, label %bb1.i37, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hc311ae09766f6553E.exit"

bb1.i37:                                          ; preds = %bb17
; invoke alloc::raw_vec::RawVec<T,A>::grow_one
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hd53b1d73d5642b33E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %row)
          to label %"bb1.i37._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hc311ae09766f6553E.exit_crit_edge" unwind label %bb8

"bb1.i37._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hc311ae09766f6553E.exit_crit_edge": ; preds = %bb1.i37
  %_15.i35.pre = load ptr, ptr %5, align 8, !alias.scope !1140
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hc311ae09766f6553E.exit"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hc311ae09766f6553E.exit": ; preds = %"bb1.i37._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hc311ae09766f6553E.exit_crit_edge", %bb17
  %_15.i35 = phi ptr [ %_15.i35.pre, %"bb1.i37._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hc311ae09766f6553E.exit_crit_edge" ], [ %_15.i3584, %bb17 ]
  %end.i36 = getelementptr inbounds nuw i32, ptr %_15.i35, i64 %len.i31
  store i32 %_10.sroa.0.0, ptr %end.i36, align 4, !noalias !1140
  %25 = add i64 %len.i31, 1
  store i64 %25, ptr %6, align 8
  %exitcond.not = icmp eq i32 %24, %n
  br i1 %exitcond.not, label %bb18, label %bb17

bb25:                                             ; preds = %bb1.i, %bb18
  %_15.i = load ptr, ptr %2, align 8, !alias.scope !1126, !noalias !1129, !nonnull !6, !noundef !6
  %end.i = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_15.i, i64 %len.i.pre
  store i64 %_13.sroa.0.0.copyload.pre, ptr %end.i, align 8, !noalias !1126
  %_13.sroa.5.0.end.i.sroa_idx = getelementptr inbounds nuw i8, ptr %end.i, i64 8
  store ptr %_13.sroa.5.0.copyload.pre, ptr %_13.sroa.5.0.end.i.sroa_idx, align 8, !noalias !1126
  %_13.sroa.6.0.end.i.sroa_idx = getelementptr inbounds nuw i8, ptr %end.i, i64 16
  store i64 %25, ptr %_13.sroa.6.0.end.i.sroa_idx, align 8, !noalias !1126
  %26 = add i64 %len.i.pre, 1
  store i64 %26, ptr %3, align 8, !alias.scope !1126, !noalias !1129
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %row)
  %exitcond73.not = icmp eq i32 %7, %n
  br i1 %exitcond73.not, label %bb27.lr.ph, label %bb11

bb8:                                              ; preds = %bb1.i37
  %27 = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1143)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1146)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1149)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1152)
  %self1.i.i.i.i1.i40 = load i64, ptr %row, align 8, !range !22, !alias.scope !1155, !noalias !1158, !noundef !6
  %_6.i.i.i.i2.i41 = icmp eq i64 %self1.i.i.i.i1.i40, 0
  br i1 %_6.i.i.i.i2.i41, label %bb6, label %bb2.i.i.i3.i42

bb2.i.i.i3.i42:                                   ; preds = %bb8
  %28 = shl nuw i64 %self1.i.i.i.i1.i40, 2
  %self3.i.i.i.i4.i = load ptr, ptr %5, align 8, !alias.scope !1155, !noalias !1158, !nonnull !6, !noundef !6
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i, i64 noundef %28, i64 noundef range(i64 1, -9223372036854775807) 4) #21, !noalias !1160
  br label %bb6
}
