define noundef range(i32 0, 2) i32 @f_gold(ptr dead_on_return noalias noundef readonly align 8 captures(none) dereferenceable(24) %str) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %v.i = alloca [24 x i8], align 8
  %0 = getelementptr inbounds nuw i8, ptr %str, i64 16
  %n = load i64, ptr %0, align 8, !noundef !6
  %_77 = icmp sgt i64 %n, -1
  tail call void @llvm.assume(i1 %_77)
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1071
; call __rustc::__rust_alloc_zeroed
  %1 = tail call noundef align 4 dereferenceable_or_null(40) ptr @_RNvCsdBezzDwma51_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) 40, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1071
  %2 = icmp eq ptr %1, null
  br i1 %2, label %bb14.i, label %bb31

bb14.i:                                           ; preds = %start
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef 4, i64 40) #21
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %bb14.i
  unreachable

bb29:                                             ; preds = %cleanup1.body.i, %bb2.i.i.i3.i.i52, %cleanup, %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hef1019e3ac01ef99E.exit"
  %.pn.pn = phi { ptr, i32 } [ %.pn, %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hef1019e3ac01ef99E.exit" ], [ %4, %cleanup ], [ %12, %cleanup1.body.i ], [ %13, %bb2.i.i.i3.i.i52 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1076)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1079)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1082)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1085)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1088)
  %self1.i.i.i.i1.i.i = load i64, ptr %str, align 8, !range !22, !alias.scope !1091, !noalias !1094, !noundef !6
  %_6.i.i.i.i2.i.i = icmp eq i64 %self1.i.i.i.i1.i.i, 0
  br i1 %_6.i.i.i.i2.i.i, label %bb30, label %bb2.i.i.i3.i.i

bb2.i.i.i3.i.i:                                   ; preds = %bb29
  %3 = getelementptr inbounds nuw i8, ptr %str, i64 8
  %self3.i.i.i.i4.i.i = load ptr, ptr %3, align 8, !alias.scope !1091, !noalias !1094, !nonnull !6, !noundef !6
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i, i64 noundef %self1.i.i.i.i1.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !1096
  br label %bb30

cleanup:                                          ; preds = %bb14.i
  %4 = landingpad { ptr, i32 }
          cleanup
  br label %bb29

bb31:                                             ; preds = %start
  %_5 = add nuw i64 %n, 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %v.i), !noalias !1097
  %_21.0.i.i.i.i = mul i64 %_5, 24
  %or.cond.i.i.i.i = icmp samesign ugt i64 %n, 384307168202282324
  br i1 %or.cond.i.i.i.i, label %bb3.i.i, label %bb17.i.i.i, !prof !379

bb17.i.i.i:                                       ; preds = %bb31
  %_8.i.i.i = icmp eq i64 %_21.0.i.i.i.i, 0
  br i1 %_8.i.i.i, label %bb1.i.i, label %bb3.i.i.i

bb3.i.i.i:                                        ; preds = %bb17.i.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1101
; call __rustc::__rust_alloc
  %5 = tail call noundef align 8 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i.i.i.i, i64 noundef range(i64 4, 9) 8) #19, !noalias !1101
  %6 = icmp eq ptr %5, null
  br i1 %6, label %bb3.i.i, label %bb1.i.i

bb3.i.i:                                          ; preds = %bb3.i.i.i, %bb31
  %_4.sroa.4.0.ph.i.i = phi i64 [ 8, %bb3.i.i.i ], [ 0, %bb31 ]
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_4.sroa.4.0.ph.i.i, i64 %_21.0.i.i.i.i) #21
          to label %.noexc.i unwind label %bb2.i.i.i3.i.i52, !noalias !1097

.noexc.i:                                         ; preds = %bb3.i.i
  unreachable

bb1.i.i:                                          ; preds = %bb3.i.i.i, %bb17.i.i.i
  %_4.sroa.4.0.i.i = phi i64 [ 0, %bb17.i.i.i ], [ %_5, %bb3.i.i.i ]
  %_4.sroa.10.0.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb17.i.i.i ], [ %5, %bb3.i.i.i ]
  %_7.i.i = icmp samesign ult i64 %n, %_4.sroa.4.0.i.i
  tail call void @llvm.assume(i1 %_7.i.i)
  store i64 %_4.sroa.4.0.i.i, ptr %v.i, align 8, !noalias !1097
  %7 = getelementptr inbounds nuw i8, ptr %v.i, i64 8
  store ptr %_4.sroa.10.0.i.i, ptr %7, align 8, !noalias !1097
  %8 = getelementptr inbounds nuw i8, ptr %v.i, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1104)
  %_2417.i.i.not = icmp eq i64 %n, 0
  br i1 %_2417.i.i.not, label %bb32, label %bb3.i.i.i.i.i.i

bb3.i.i.i.i.i.i:                                  ; preds = %bb1.i.i, %bb3.i3.i
  %ptr.sroa.0.020.i.i = phi ptr [ %_15.i.i, %bb3.i3.i ], [ %_4.sroa.10.0.i.i, %bb1.i.i ]
  %iter.sroa.0.019.i.i = phi i64 [ %_28.i.i, %bb3.i3.i ], [ 1, %bb1.i.i ]
  %storemerge18.i.i = phi i64 [ %11, %bb3.i3.i ], [ 0, %bb1.i.i ]
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1107
; call __rustc::__rust_alloc
  %9 = tail call noundef align 4 dereferenceable_or_null(40) ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 4, 9) 4) #19, !noalias !1107
  %10 = icmp eq ptr %9, null
  br i1 %10, label %bb3.i.i.i.i.i, label %bb3.i3.i

bb3.i.i.i.i.i:                                    ; preds = %bb3.i.i.i.i.i.i
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef 4, i64 40) #21
          to label %.noexc9.i.i unwind label %cleanup1.body.i, !noalias !1117

.noexc9.i.i:                                      ; preds = %bb3.i.i.i.i.i
  unreachable

bb3.i3.i:                                         ; preds = %bb3.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %9, ptr noundef nonnull readonly align 4 dereferenceable(40) %1, i64 40, i1 false), !noalias !1118
  %_28.i.i = add nuw i64 %iter.sroa.0.019.i.i, 1
  store i64 10, ptr %ptr.sroa.0.020.i.i, align 8, !noalias !1117
  %src.sroa.4.0.ptr.sroa.0.0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.020.i.i, i64 8
  store ptr %9, ptr %src.sroa.4.0.ptr.sroa.0.0.sroa_idx.i.i, align 8, !noalias !1117
  %src.sroa.5.0.ptr.sroa.0.0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.020.i.i, i64 16
  store i64 10, ptr %src.sroa.5.0.ptr.sroa.0.0.sroa_idx.i.i, align 8, !noalias !1117
  %_15.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.020.i.i, i64 24
  %11 = add nuw nsw i64 %storemerge18.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %iter.sroa.0.019.i.i, %n
  br i1 %exitcond.not.i.i, label %bb32, label %bb3.i.i.i.i.i.i

cleanup1.body.i:                                  ; preds = %bb3.i.i.i.i.i
  %12 = landingpad { ptr, i32 }
          cleanup
  store i64 %storemerge18.i.i, ptr %8, align 8, !alias.scope !1104, !noalias !1119
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1124
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hef1019e3ac01ef99E"(ptr noalias noundef align 8 dereferenceable(24) %v.i) #23, !noalias !1097
  br label %bb29

bb2.i.i.i3.i.i52:                                 ; preds = %bb3.i.i
  %13 = landingpad { ptr, i32 }
          cleanup
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1133
  br label %bb29

bb32:                                             ; preds = %bb3.i3.i, %bb1.i.i
  %ptr.sroa.0.0.lcssa.i.i = phi ptr [ %_4.sroa.10.0.i.i, %bb1.i.i ], [ %_15.i.i, %bb3.i3.i ]
  store i64 10, ptr %ptr.sroa.0.0.lcssa.i.i, align 8, !noalias !1142
  %_7.sroa.5.0.ptr.sroa.0.0.lcssa.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.0.lcssa.i.i, i64 8
  store ptr %1, ptr %_7.sroa.5.0.ptr.sroa.0.0.lcssa.i.sroa_idx.i, align 8, !noalias !1142
  %_7.sroa.7.0.ptr.sroa.0.0.lcssa.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.0.lcssa.i.i, i64 16
  store i64 10, ptr %_7.sroa.7.0.ptr.sroa.0.0.lcssa.i.sroa_idx.i, align 8, !noalias !1142
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %v.i), !noalias !1097
  %_21.0.i.i.i = shl nuw nsw i64 %_5, 3
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1143
; call __rustc::__rust_alloc_zeroed
  %14 = tail call noundef align 8 ptr @_RNvCsdBezzDwma51_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 8) #19, !noalias !1143
  %15 = icmp eq ptr %14, null
  br i1 %15, label %bb14.i55, label %bb1.preheader.split

bb1.preheader.split:                              ; preds = %bb32
  br i1 %_2417.i.i.not, label %bb17.preheader, label %bb2.i.lr.ph

bb17.preheader:                                   ; preds = %bb5.loopexit, %bb1.preheader.split
  br label %bb17

bb2.i.lr.ph:                                      ; preds = %bb1.preheader.split
  %16 = getelementptr inbounds nuw i8, ptr %str, i64 8
  %_81 = load ptr, ptr %16, align 8, !nonnull !6, !noundef !6
  %_88 = getelementptr i8, ptr %_81, i64 %n
  %17 = lshr i64 %n, 5
  %_65.i = getelementptr inbounds nuw [32 x i8], ptr %_81, i64 %17
  %18 = ptrtoint ptr %_88 to i64
  br label %bb2.i

bb14.i55:                                         ; preds = %bb32
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef 8, i64 %_21.0.i.i.i) #21
          to label %.noexc56 unwind label %cleanup4

.noexc56:                                         ; preds = %bb14.i55
  unreachable

bb28:                                             ; preds = %"_ZN4core3ptr49drop_in_place$LT$alloc..vec..Vec$LT$usize$GT$$GT$17h4959bfb8b537e796E.exit", %cleanup4
  %.pn = phi { ptr, i32 } [ %24, %"_ZN4core3ptr49drop_in_place$LT$alloc..vec..Vec$LT$usize$GT$$GT$17h4959bfb8b537e796E.exit" ], [ %23, %cleanup4 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1148)
  br label %bb5.i.i.i

bb5.i.i.i:                                        ; preds = %bb28, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17ha8d7684f3cca654fE.exit.i.i.i"
  %_3.sroa.0.012.i.i.i = phi i64 [ %19, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17ha8d7684f3cca654fE.exit.i.i.i" ], [ 0, %bb28 ]
  %_6.i.i.i = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_4.sroa.10.0.i.i, i64 %_3.sroa.0.012.i.i.i
  %19 = add nuw i64 %_3.sroa.0.012.i.i.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1151)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1154)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1157)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1160)
  %self1.i.i.i.i1.i.i.i.i = load i64, ptr %_6.i.i.i, align 8, !range !22, !alias.scope !1163, !noalias !1166, !noundef !6
  %_6.i.i.i.i2.i.i.i.i = icmp eq i64 %self1.i.i.i.i1.i.i.i.i, 0
  br i1 %_6.i.i.i.i2.i.i.i.i, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17ha8d7684f3cca654fE.exit.i.i.i", label %bb2.i.i.i3.i.i.i.i

bb2.i.i.i3.i.i.i.i:                               ; preds = %bb5.i.i.i
  %20 = shl nuw i64 %self1.i.i.i.i1.i.i.i.i, 2
  %21 = getelementptr inbounds nuw i8, ptr %_6.i.i.i, i64 8
  %self3.i.i.i.i4.i.i.i.i = load ptr, ptr %21, align 8, !alias.scope !1163, !noalias !1166, !nonnull !6, !noundef !6
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i.i.i, i64 noundef %20, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1172
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17ha8d7684f3cca654fE.exit.i.i.i"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17ha8d7684f3cca654fE.exit.i.i.i": ; preds = %bb2.i.i.i3.i.i.i.i, %bb5.i.i.i
  %_7.i.i.i = icmp eq i64 %_3.sroa.0.012.i.i.i, %n
  br i1 %_7.i.i.i, label %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hef1019e3ac01ef99E.exit", label %bb5.i.i.i

"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hef1019e3ac01ef99E.exit": ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17ha8d7684f3cca654fE.exit.i.i.i"
  %22 = mul nuw i64 %_4.sroa.4.0.i.i, 24
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_4.sroa.10.0.i.i, i64 noundef %22, i64 noundef range(i64 1, -9223372036854775807) 8) #19, !noalias !1173
  br label %bb29

cleanup4:                                         ; preds = %bb14.i55
  %23 = landingpad { ptr, i32 }
          cleanup
  br label %bb28

bb2.i:                                            ; preds = %bb2.i.lr.ph, %bb44
  %iter.sroa.0.0245 = phi i64 [ 1, %bb2.i.lr.ph ], [ %spec.select, %bb44 ]
  %_0.i3.i = icmp samesign uge i64 %iter.sroa.0.0245, %n
  %not._0.i3.i = xor i1 %_0.i3.i, true
  %_0.i4.i = zext i1 %not._0.i3.i to i64
  %spec.select = add nuw nsw i64 %iter.sroa.0.0245, %_0.i4.i
  %_19 = add nsw i64 %iter.sroa.0.0245, -1
  %_3.i = icmp ugt i64 %_19, 31
  br i1 %_3.i, label %bb1.i, label %bb25.i

"_ZN4core3ptr49drop_in_place$LT$alloc..vec..Vec$LT$usize$GT$$GT$17h4959bfb8b537e796E.exit": ; preds = %panic24.invoke, %bb43
  %24 = landingpad { ptr, i32 }
          cleanup
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %14, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 8) #19, !noalias !1180
  br label %bb28

bb1.i:                                            ; preds = %bb2.i
  %_1042.not.i = icmp eq i64 %_19, 32
  br i1 %_1042.not.i, label %bb18.i.preheader, label %bb4.i63

bb25.i:                                           ; preds = %bb19.i, %bb18.i, %bb14.i66, %bb2.i
  %_17.sroa.0.0 = phi ptr [ %_19.i.i, %bb14.i66 ], [ %_81, %bb2.i ], [ %_17.sroa.0.2, %bb18.i ], [ %_88, %bb19.i ]
  %remainder.sroa.0.0.i = phi i64 [ %remainder.sroa.0.1.lcssa.i, %bb14.i66 ], [ %_19, %bb2.i ], [ %remainder.sroa.0.1.lcssa.i290, %bb18.i ], [ %remainder.sroa.0.1.lcssa.i290, %bb19.i ]
  %_39.not57.i = icmp eq i64 %remainder.sroa.0.0.i, 0
  br i1 %_39.not57.i, label %bb38, label %bb27.i

bb4.i63:                                          ; preds = %bb1.i, %bb5.i
  %remainder.sroa.0.145.i = phi i64 [ %31, %bb5.i ], [ %_19, %bb1.i ]
  %chunks.sroa.0.044.i = phi ptr [ %chunks.sroa.0.1.i, %bb5.i ], [ %_81, %bb1.i ]
  %bytes_skipped.sroa.0.043.i = phi i64 [ %30, %bb5.i ], [ 0, %bb1.i ]
  %_73.i = icmp eq ptr %chunks.sroa.0.044.i, %_65.i
  br i1 %_73.i, label %bb14.i66, label %bb5.i

bb14.i66:                                         ; preds = %bb5.i, %bb4.i63
  %bytes_skipped.sroa.0.0.lcssa.i = phi i64 [ %30, %bb5.i ], [ %bytes_skipped.sroa.0.043.i, %bb4.i63 ]
  %remainder.sroa.0.1.lcssa.i = phi i64 [ %31, %bb5.i ], [ %remainder.sroa.0.145.i, %bb4.i63 ]
  %_19.i.i = getelementptr inbounds nuw i8, ptr %_81, i64 %bytes_skipped.sroa.0.0.lcssa.i
  %.not27.i = icmp ule i64 %bytes_skipped.sroa.0.0.lcssa.i, %n
  tail call void @llvm.assume(i1 %.not27.i)
  %_30.not53.i = icmp samesign eq i64 %n, %bytes_skipped.sroa.0.0.lcssa.i
  br i1 %_30.not53.i, label %bb25.i, label %bb18.i.preheader

bb18.i.preheader:                                 ; preds = %bb1.i, %bb14.i66
  %_19.i.i291 = phi ptr [ %_19.i.i, %bb14.i66 ], [ %_81, %bb1.i ]
  %remainder.sroa.0.1.lcssa.i290 = phi i64 [ %remainder.sroa.0.1.lcssa.i, %bb14.i66 ], [ 32, %bb1.i ]
  br label %bb18.i

bb5.i:                                            ; preds = %bb4.i63
  %chunks.sroa.0.1.i = getelementptr inbounds nuw i8, ptr %chunks.sroa.0.044.i, i64 32
  %25 = getelementptr inbounds nuw i8, ptr %chunks.sroa.0.044.i, i64 16
  %wide.load = load <16 x i8>, ptr %chunks.sroa.0.044.i, align 1, !noalias !1189
  %wide.load335 = load <16 x i8>, ptr %25, align 1, !noalias !1189
  %26 = icmp sgt <16 x i8> %wide.load, splat (i8 -65)
  %27 = icmp sgt <16 x i8> %wide.load335, splat (i8 -65)
  %28 = zext <16 x i1> %26 to <16 x i8>
  %29 = zext <16 x i1> %27 to <16 x i8>
  %start_bytes.i.sroa.0.0.vec.extract = extractelement <16 x i8> %28, i64 0
  %start_bytes.i.sroa.0.1.vec.extract = extractelement <16 x i8> %28, i64 1
  %start_bytes.i.sroa.0.2.vec.extract = extractelement <16 x i8> %28, i64 2
  %start_bytes.i.sroa.0.3.vec.extract = extractelement <16 x i8> %28, i64 3
  %start_bytes.i.sroa.0.4.vec.extract = extractelement <16 x i8> %28, i64 4
  %start_bytes.i.sroa.0.5.vec.extract = extractelement <16 x i8> %28, i64 5
  %start_bytes.i.sroa.0.6.vec.extract = extractelement <16 x i8> %28, i64 6
  %start_bytes.i.sroa.0.7.vec.extract = extractelement <16 x i8> %28, i64 7
  %start_bytes.i.sroa.0.8.vec.extract = extractelement <16 x i8> %28, i64 8
  %start_bytes.i.sroa.0.9.vec.extract = extractelement <16 x i8> %28, i64 9
  %start_bytes.i.sroa.0.10.vec.extract = extractelement <16 x i8> %28, i64 10
  %start_bytes.i.sroa.0.11.vec.extract = extractelement <16 x i8> %28, i64 11
  %start_bytes.i.sroa.0.12.vec.extract = extractelement <16 x i8> %28, i64 12
  %start_bytes.i.sroa.0.13.vec.extract = extractelement <16 x i8> %28, i64 13
  %start_bytes.i.sroa.0.14.vec.extract = extractelement <16 x i8> %28, i64 14
  %start_bytes.i.sroa.0.15.vec.extract = extractelement <16 x i8> %28, i64 15
  %start_bytes.i.sroa.21.16.vec.extract = extractelement <16 x i8> %29, i64 0
  %start_bytes.i.sroa.21.17.vec.extract = extractelement <16 x i8> %29, i64 1
  %start_bytes.i.sroa.21.18.vec.extract = extractelement <16 x i8> %29, i64 2
  %start_bytes.i.sroa.21.19.vec.extract = extractelement <16 x i8> %29, i64 3
  %start_bytes.i.sroa.21.20.vec.extract = extractelement <16 x i8> %29, i64 4
  %start_bytes.i.sroa.21.21.vec.extract = extractelement <16 x i8> %29, i64 5
  %start_bytes.i.sroa.21.22.vec.extract = extractelement <16 x i8> %29, i64 6
  %start_bytes.i.sroa.21.23.vec.extract = extractelement <16 x i8> %29, i64 7
  %start_bytes.i.sroa.21.24.vec.extract = extractelement <16 x i8> %29, i64 8
  %start_bytes.i.sroa.21.25.vec.extract = extractelement <16 x i8> %29, i64 9
  %start_bytes.i.sroa.21.26.vec.extract = extractelement <16 x i8> %29, i64 10
  %start_bytes.i.sroa.21.27.vec.extract = extractelement <16 x i8> %29, i64 11
  %start_bytes.i.sroa.21.28.vec.extract = extractelement <16 x i8> %29, i64 12
  %start_bytes.i.sroa.21.29.vec.extract = extractelement <16 x i8> %29, i64 13
  %start_bytes.i.sroa.21.30.vec.extract = extractelement <16 x i8> %29, i64 14
  %start_bytes.i.sroa.21.31.vec.extract = extractelement <16 x i8> %29, i64 15
  %_4.0.i.i.i.i.i.i.1.i = add nuw nsw i8 %start_bytes.i.sroa.0.1.vec.extract, %start_bytes.i.sroa.0.0.vec.extract
  %_4.0.i.i.i.i.i.i.2.i = add nuw nsw i8 %_4.0.i.i.i.i.i.i.1.i, %start_bytes.i.sroa.0.2.vec.extract
  %_4.0.i.i.i.i.i.i.3.i = add nuw nsw i8 %_4.0.i.i.i.i.i.i.2.i, %start_bytes.i.sroa.0.3.vec.extract
  %_4.0.i.i.i.i.i.i.4.i = add nuw nsw i8 %_4.0.i.i.i.i.i.i.3.i, %start_bytes.i.sroa.0.4.vec.extract
  %_4.0.i.i.i.i.i.i.5.i = add nuw nsw i8 %_4.0.i.i.i.i.i.i.4.i, %start_bytes.i.sroa.0.5.vec.extract
  %_4.0.i.i.i.i.i.i.6.i = add i8 %_4.0.i.i.i.i.i.i.5.i, %start_bytes.i.sroa.0.6.vec.extract
  %_4.0.i.i.i.i.i.i.7.i = add i8 %_4.0.i.i.i.i.i.i.6.i, %start_bytes.i.sroa.0.7.vec.extract
  %_4.0.i.i.i.i.i.i.8.i = add i8 %_4.0.i.i.i.i.i.i.7.i, %start_bytes.i.sroa.0.8.vec.extract
  %_4.0.i.i.i.i.i.i.9.i = add i8 %_4.0.i.i.i.i.i.i.8.i, %start_bytes.i.sroa.0.9.vec.extract
  %_4.0.i.i.i.i.i.i.10.i = add i8 %_4.0.i.i.i.i.i.i.9.i, %start_bytes.i.sroa.0.10.vec.extract
  %_4.0.i.i.i.i.i.i.11.i = add i8 %_4.0.i.i.i.i.i.i.10.i, %start_bytes.i.sroa.0.11.vec.extract
  %_4.0.i.i.i.i.i.i.12.i = add i8 %_4.0.i.i.i.i.i.i.11.i, %start_bytes.i.sroa.0.12.vec.extract
  %_4.0.i.i.i.i.i.i.13.i = add i8 %_4.0.i.i.i.i.i.i.12.i, %start_bytes.i.sroa.0.13.vec.extract
  %_4.0.i.i.i.i.i.i.14.i = add i8 %_4.0.i.i.i.i.i.i.13.i, %start_bytes.i.sroa.0.14.vec.extract
  %_4.0.i.i.i.i.i.i.15.i = add i8 %_4.0.i.i.i.i.i.i.14.i, %start_bytes.i.sroa.0.15.vec.extract
  %_4.0.i.i.i.i.i.i.16.i = add i8 %_4.0.i.i.i.i.i.i.15.i, %start_bytes.i.sroa.21.16.vec.extract
  %_4.0.i.i.i.i.i.i.17.i = add i8 %_4.0.i.i.i.i.i.i.16.i, %start_bytes.i.sroa.21.17.vec.extract
  %_4.0.i.i.i.i.i.i.18.i = add i8 %_4.0.i.i.i.i.i.i.17.i, %start_bytes.i.sroa.21.18.vec.extract
  %_4.0.i.i.i.i.i.i.19.i = add i8 %_4.0.i.i.i.i.i.i.18.i, %start_bytes.i.sroa.21.19.vec.extract
  %_4.0.i.i.i.i.i.i.20.i = add i8 %_4.0.i.i.i.i.i.i.19.i, %start_bytes.i.sroa.21.20.vec.extract
  %_4.0.i.i.i.i.i.i.21.i = add i8 %_4.0.i.i.i.i.i.i.20.i, %start_bytes.i.sroa.21.21.vec.extract
  %_4.0.i.i.i.i.i.i.22.i = add i8 %_4.0.i.i.i.i.i.i.21.i, %start_bytes.i.sroa.21.22.vec.extract
  %_4.0.i.i.i.i.i.i.23.i = add i8 %_4.0.i.i.i.i.i.i.22.i, %start_bytes.i.sroa.21.23.vec.extract
  %_4.0.i.i.i.i.i.i.24.i = add i8 %_4.0.i.i.i.i.i.i.23.i, %start_bytes.i.sroa.21.24.vec.extract
  %_4.0.i.i.i.i.i.i.25.i = add i8 %_4.0.i.i.i.i.i.i.24.i, %start_bytes.i.sroa.21.25.vec.extract
  %_4.0.i.i.i.i.i.i.26.i = add i8 %_4.0.i.i.i.i.i.i.25.i, %start_bytes.i.sroa.21.26.vec.extract
  %_4.0.i.i.i.i.i.i.27.i = add i8 %_4.0.i.i.i.i.i.i.26.i, %start_bytes.i.sroa.21.27.vec.extract
  %_4.0.i.i.i.i.i.i.28.i = add i8 %_4.0.i.i.i.i.i.i.27.i, %start_bytes.i.sroa.21.28.vec.extract
  %_4.0.i.i.i.i.i.i.29.i = add i8 %_4.0.i.i.i.i.i.i.28.i, %start_bytes.i.sroa.21.29.vec.extract
  %_4.0.i.i.i.i.i.i.30.i = add i8 %_4.0.i.i.i.i.i.i.29.i, %start_bytes.i.sroa.21.30.vec.extract
  %_4.0.i.i.i.i.i.i.31.i = add i8 %_4.0.i.i.i.i.i.i.30.i, %start_bytes.i.sroa.21.31.vec.extract
  %30 = add i64 %bytes_skipped.sroa.0.043.i, 32
  %_25.i = zext i8 %_4.0.i.i.i.i.i.i.31.i to i64
  %31 = sub i64 %remainder.sroa.0.145.i, %_25.i
  %_10.i65 = icmp ugt i64 %31, 32
  br i1 %_10.i65, label %bb4.i63, label %bb14.i66

bb18.i:                                           ; preds = %bb18.i.preheader, %bb19.i
  %_17.sroa.0.2 = phi ptr [ %_19.i33.i, %bb19.i ], [ %_19.i.i291, %bb18.i.preheader ]
  %b.i = load i8, ptr %_17.sroa.0.2, align 1, !noalias !1189, !noundef !6
  %_36.i = icmp slt i8 %b.i, -64
  br i1 %_36.i, label %bb19.i, label %bb25.i

bb19.i:                                           ; preds = %bb18.i
  %_19.i33.i = getelementptr inbounds nuw i8, ptr %_17.sroa.0.2, i64 1
  %_30.not.i = icmp eq ptr %_88, %_19.i33.i
  br i1 %_30.not.i, label %bb25.i, label %bb18.i

bb27.i:                                           ; preds = %bb25.i, %bb62.i
  %_17.sroa.0.1 = phi ptr [ %_19.i38.i, %bb62.i ], [ %_17.sroa.0.0, %bb25.i ]
  %remainder.sroa.0.259.i = phi i64 [ %34, %bb62.i ], [ %remainder.sroa.0.0.i, %bb25.i ]
  %_41.not.i = icmp eq ptr %_88, %_17.sroa.0.1
  br i1 %_41.not.i, label %bb43, label %bb62.i

bb62.i:                                           ; preds = %bb27.i
  %32 = ptrtoint ptr %_17.sroa.0.1 to i64
  %33 = sub nuw i64 %18, %32
  %34 = add i64 %remainder.sroa.0.259.i, -1
  %b15.i = load i8, ptr %_17.sroa.0.1, align 1, !noalias !1189, !noundef !6
  %_130.i = zext i8 %b15.i to i64
  %35 = getelementptr inbounds nuw i8, ptr @alloc_db51a71a1b6b25b4224d4dc5277f93e7, i64 %_130.i
  %_128.i = load i8, ptr %35, align 1, !noalias !1189, !noundef !6
  %slurp.i = zext i8 %_128.i to i64
  %_19.i38.i = getelementptr inbounds nuw i8, ptr %_17.sroa.0.1, i64 %slurp.i
  %.not28.i = icmp uge i64 %33, %slurp.i
  tail call void @llvm.assume(i1 %.not28.i)
  %_39.not.i = icmp eq i64 %34, 0
  br i1 %_39.not.i, label %bb38, label %bb27.i

bb5.loopexit:                                     ; preds = %bb16
  %_0.i.not.i72 = icmp samesign ugt i64 %spec.select207, %n
  %or.cond211 = select i1 %_0.i3.i74, i1 true, i1 %_0.i.not.i72
  br i1 %or.cond211, label %bb17.preheader, label %bb2.i73

bb2.i73:                                          ; preds = %bb44, %bb5.loopexit
  %iter1.sroa.0.0248 = phi i64 [ %spec.select207, %bb5.loopexit ], [ 1, %bb44 ]
  %_0.i3.i74 = icmp samesign uge i64 %iter1.sroa.0.0248, %n
  %not._0.i3.i74 = xor i1 %_0.i3.i74, true
  %_0.i4.i79 = zext i1 %not._0.i3.i74 to i64
  %spec.select207 = add nuw nsw i64 %iter1.sroa.0.0248, %_0.i4.i79
  %_27 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_4.sroa.10.0.i.i, i64 %iter1.sroa.0.0248
  %_30 = getelementptr inbounds nuw i64, ptr %14, i64 %iter1.sroa.0.0248
  %_29 = load i64, ptr %_30, align 8, !noundef !6
  %_28 = and i64 %_29, 7
  %36 = getelementptr inbounds nuw i8, ptr %_27, i64 16
  %_120 = load i64, ptr %36, align 8, !noundef !6
  %_123 = icmp ult i64 %_28, %_120
  br i1 %_123, label %bb49, label %panic24.invoke

bb17:                                             ; preds = %bb17.preheader, %bb73
  %iter2.sroa.0.0 = phi i64 [ %spec.select209, %bb73 ], [ 1, %bb17.preheader ]
  %iter2.sroa.8.0 = phi i1 [ %_0.i3.i88, %bb73 ], [ false, %bb17.preheader ]
  %_0.i.not.i86 = icmp ugt i64 %iter2.sroa.0.0, %n
  %or.cond212 = select i1 %iter2.sroa.8.0, i1 true, i1 %_0.i.not.i86
  br i1 %or.cond212, label %bb22, label %bb2.i87

bb2.i87:                                          ; preds = %bb17
  %_76 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_4.sroa.10.0.i.i, i64 %iter2.sroa.0.0
  %37 = getelementptr inbounds nuw i8, ptr %_76, i64 16
  %_228 = load i64, ptr %37, align 8, !noundef !6
  %_231.not = icmp eq i64 %_228, 0
  br i1 %_231.not, label %panic24.invoke, label %bb73

bb22:                                             ; preds = %bb17
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %14, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 8) #19, !noalias !1192
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1201)
  br label %bb5.i.i.i104

bb5.i.i.i104:                                     ; preds = %bb22, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17ha8d7684f3cca654fE.exit.i.i.i111"
  %_3.sroa.0.012.i.i.i105 = phi i64 [ %38, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17ha8d7684f3cca654fE.exit.i.i.i111" ], [ 0, %bb22 ]
  %_6.i.i.i106 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_4.sroa.10.0.i.i, i64 %_3.sroa.0.012.i.i.i105
  %38 = add nuw i64 %_3.sroa.0.012.i.i.i105, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1204)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1207)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1210)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1213)
  %self1.i.i.i.i1.i.i.i.i107 = load i64, ptr %_6.i.i.i106, align 8, !range !22, !alias.scope !1216, !noalias !1219, !noundef !6
  %_6.i.i.i.i2.i.i.i.i108 = icmp eq i64 %self1.i.i.i.i1.i.i.i.i107, 0
  br i1 %_6.i.i.i.i2.i.i.i.i108, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17ha8d7684f3cca654fE.exit.i.i.i111", label %bb2.i.i.i3.i.i.i.i109

bb2.i.i.i3.i.i.i.i109:                            ; preds = %bb5.i.i.i104
  %39 = shl nuw i64 %self1.i.i.i.i1.i.i.i.i107, 2
  %40 = getelementptr inbounds nuw i8, ptr %_6.i.i.i106, i64 8
  %self3.i.i.i.i4.i.i.i.i110 = load ptr, ptr %40, align 8, !alias.scope !1216, !noalias !1219, !nonnull !6, !noundef !6
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i.i.i110, i64 noundef %39, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1225
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17ha8d7684f3cca654fE.exit.i.i.i111"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17ha8d7684f3cca654fE.exit.i.i.i111": ; preds = %bb2.i.i.i3.i.i.i.i109, %bb5.i.i.i104
  %_7.i.i.i112 = icmp eq i64 %_3.sroa.0.012.i.i.i105, %n
  br i1 %_7.i.i.i112, label %bb23, label %bb5.i.i.i104

bb23:                                             ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17ha8d7684f3cca654fE.exit.i.i.i111"
  %41 = mul nuw i64 %_4.sroa.4.0.i.i, 24
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_4.sroa.10.0.i.i, i64 noundef %41, i64 noundef range(i64 1, -9223372036854775807) 8) #19, !noalias !1226
  %self1.i.i.i.i1.i.i118 = load i64, ptr %str, align 8, !range !22, !alias.scope !1233, !noalias !1246, !noundef !6
  %_6.i.i.i.i2.i.i119 = icmp eq i64 %self1.i.i.i.i1.i.i118, 0
  br i1 %_6.i.i.i.i2.i.i119, label %bb26, label %bb26.sink.split

bb26.sink.split:                                  ; preds = %bb23, %bb25
  %self1.i.i.i.i1.i.i146.sink = phi i64 [ %self1.i.i.i.i1.i.i146, %bb25 ], [ %self1.i.i.i.i1.i.i118, %bb23 ]
  %_0.sroa.0.0.ph = phi i32 [ 1, %bb25 ], [ 0, %bb23 ]
  %42 = getelementptr inbounds nuw i8, ptr %str, i64 8
  %self3.i.i.i.i4.i.i149 = load ptr, ptr %42, align 8, !noalias !6, !nonnull !6, !noundef !6
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i149, i64 noundef %self1.i.i.i.i1.i.i146.sink, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !6
  br label %bb26

bb26:                                             ; preds = %bb26.sink.split, %bb25, %bb23
  %_0.sroa.0.0 = phi i32 [ 0, %bb23 ], [ 1, %bb25 ], [ %_0.sroa.0.0.ph, %bb26.sink.split ]
  ret i32 %_0.sroa.0.0

unreachable:                                      ; preds = %bb43
  unreachable

bb73:                                             ; preds = %bb2.i87
  %_0.i3.i88 = icmp samesign uge i64 %iter2.sroa.0.0, %n
  %not._0.i3.i88 = xor i1 %_0.i3.i88, true
  %_0.i4.i93 = zext i1 %not._0.i3.i88 to i64
  %spec.select209 = add nuw i64 %iter2.sroa.0.0, %_0.i4.i93
  %43 = getelementptr inbounds nuw i8, ptr %_76, i64 8
  %_229 = load ptr, ptr %43, align 8, !nonnull !6, !noundef !6
  %_74 = load i32, ptr %_229, align 4, !noundef !6
  %_73 = icmp eq i32 %_74, 1
  br i1 %_73, label %bb24, label %bb17

bb24:                                             ; preds = %bb73
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %14, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 8) #19, !noalias !1248
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1257)
  br label %bb5.i.i.i132

bb5.i.i.i132:                                     ; preds = %bb24, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17ha8d7684f3cca654fE.exit.i.i.i139"
  %_3.sroa.0.012.i.i.i133 = phi i64 [ %44, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17ha8d7684f3cca654fE.exit.i.i.i139" ], [ 0, %bb24 ]
  %_6.i.i.i134 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_4.sroa.10.0.i.i, i64 %_3.sroa.0.012.i.i.i133
  %44 = add nuw i64 %_3.sroa.0.012.i.i.i133, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1260)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1263)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1266)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1269)
  %self1.i.i.i.i1.i.i.i.i135 = load i64, ptr %_6.i.i.i134, align 8, !range !22, !alias.scope !1272, !noalias !1275, !noundef !6
  %_6.i.i.i.i2.i.i.i.i136 = icmp eq i64 %self1.i.i.i.i1.i.i.i.i135, 0
  br i1 %_6.i.i.i.i2.i.i.i.i136, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17ha8d7684f3cca654fE.exit.i.i.i139", label %bb2.i.i.i3.i.i.i.i137

bb2.i.i.i3.i.i.i.i137:                            ; preds = %bb5.i.i.i132
  %45 = shl nuw i64 %self1.i.i.i.i1.i.i.i.i135, 2
  %46 = getelementptr inbounds nuw i8, ptr %_6.i.i.i134, i64 8
  %self3.i.i.i.i4.i.i.i.i138 = load ptr, ptr %46, align 8, !alias.scope !1272, !noalias !1275, !nonnull !6, !noundef !6
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i.i.i138, i64 noundef %45, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1281
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17ha8d7684f3cca654fE.exit.i.i.i139"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17ha8d7684f3cca654fE.exit.i.i.i139": ; preds = %bb2.i.i.i3.i.i.i.i137, %bb5.i.i.i132
  %_7.i.i.i140 = icmp eq i64 %_3.sroa.0.012.i.i.i133, %n
  br i1 %_7.i.i.i140, label %bb25, label %bb5.i.i.i132

bb25:                                             ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17ha8d7684f3cca654fE.exit.i.i.i139"
  %47 = mul nuw i64 %_4.sroa.4.0.i.i, 24
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_4.sroa.10.0.i.i, i64 noundef %47, i64 noundef range(i64 1, -9223372036854775807) 8) #19, !noalias !1282
  %self1.i.i.i.i1.i.i146 = load i64, ptr %str, align 8, !range !22, !alias.scope !1289, !noalias !1302, !noundef !6
  %_6.i.i.i.i2.i.i147 = icmp eq i64 %self1.i.i.i.i1.i.i146, 0
  br i1 %_6.i.i.i.i2.i.i147, label %bb26, label %bb26.sink.split

bb49:                                             ; preds = %bb2.i73
  %48 = getelementptr inbounds nuw i8, ptr %_27, i64 8
  %_121 = load ptr, ptr %48, align 8, !nonnull !6, !noundef !6
  %_26 = getelementptr inbounds nuw i32, ptr %_121, i64 %_28
  store i32 1, ptr %_26, align 4
  %_38 = add nsw i64 %iter1.sroa.0.0248, -1
  %_132.not = icmp ugt i64 %_38, %n
  %_37 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_4.sroa.10.0.i.i, i64 %_38
  %49 = getelementptr inbounds nuw i8, ptr %_37, i64 16
  %50 = getelementptr inbounds nuw i8, ptr %_37, i64 8
  br i1 %_132.not, label %panic24.invoke, label %bb9

bb9:                                              ; preds = %bb49, %bb16
  %51 = phi i64 [ %55, %bb16 ], [ 1, %bb49 ]
  %iter3.sroa.0.0246 = phi i64 [ %51, %bb16 ], [ 0, %bb49 ]
  %_134 = load i64, ptr %49, align 8, !noundef !6
  %_137 = icmp ult i64 %iter3.sroa.0.0246, %_134
  br i1 %_137, label %bb56, label %panic24.invoke

bb56:                                             ; preds = %bb9
  %_135 = load ptr, ptr %50, align 8, !nonnull !6, !noundef !6
  %_36 = getelementptr inbounds nuw i32, ptr %_135, i64 %iter3.sroa.0.0246
  %_35 = load i32, ptr %_36, align 4, !noundef !6
  %_44 = shl nuw nsw i64 %iter3.sroa.0.0246, 1
  %_45 = load i64, ptr %_30, align 8, !noundef !6
  %_43 = add i64 %_45, %_44
  %_42 = and i64 %_43, 7
  %_149 = load i64, ptr %36, align 8, !noundef !6
  %_152 = icmp ult i64 %_42, %_149
  br i1 %_152, label %bb57, label %panic24.invoke

bb57:                                             ; preds = %bb56
  %_150 = load ptr, ptr %48, align 8, !nonnull !6, !noundef !6
  %_40 = getelementptr inbounds nuw i32, ptr %_150, i64 %_42
  %_39 = load i32, ptr %_40, align 4, !noundef !6
  %_34 = icmp sgt i32 %_35, %_39
  br i1 %_34, label %bb62, label %bb63

bb62:                                             ; preds = %bb57
  store i32 %_35, ptr %_40, align 4
  %_186.pre = load i64, ptr %49, align 8
  br label %bb63

bb63:                                             ; preds = %bb62, %bb57
  %_186 = phi i64 [ %_186.pre, %bb62 ], [ %_134, %bb57 ]
  %_189 = icmp ult i64 %iter3.sroa.0.0246, %_186
  br i1 %_189, label %bb65, label %panic24.invoke

bb65:                                             ; preds = %bb63
  %_187 = load ptr, ptr %50, align 8, !nonnull !6, !noundef !6
  %_58 = getelementptr inbounds nuw i32, ptr %_187, i64 %iter3.sroa.0.0246
  %_57 = load i32, ptr %_58, align 4, !noundef !6
  %_196 = load i64, ptr %36, align 8, !noundef !6
  %_199 = icmp ult i64 %iter3.sroa.0.0246, %_196
  br i1 %_199, label %bb66, label %panic24.invoke

bb66:                                             ; preds = %bb65
  %_197 = load ptr, ptr %48, align 8, !nonnull !6, !noundef !6
  %_61 = getelementptr inbounds nuw i32, ptr %_197, i64 %iter3.sroa.0.0246
  %_60 = load i32, ptr %_61, align 4, !noundef !6
  %_56 = icmp sgt i32 %_57, %_60
  br i1 %_56, label %bb70, label %bb16

panic24.invoke:                                   ; preds = %bb49, %bb2.i73, %bb65, %bb63, %bb56, %bb9, %bb2.i87
  %52 = phi i64 [ 0, %bb2.i87 ], [ %iter3.sroa.0.0246, %bb9 ], [ %_42, %bb56 ], [ %iter3.sroa.0.0246, %bb63 ], [ %iter3.sroa.0.0246, %bb65 ], [ %_28, %bb2.i73 ], [ %_38, %bb49 ]
  %53 = phi i64 [ 0, %bb2.i87 ], [ %_134, %bb9 ], [ %_149, %bb56 ], [ %_186, %bb63 ], [ %_196, %bb65 ], [ %_120, %bb2.i73 ], [ %_5, %bb49 ]
  %54 = phi ptr [ @alloc_0c361921c4326690b9ce93226779b33f, %bb2.i87 ], [ @alloc_3c6ad4a88b5ba7760ae5440133276ee4, %bb9 ], [ @alloc_b793e588748ec2f321b609fee2f396d6, %bb56 ], [ @alloc_833de4ab19c33bc49b75250c28b0bd80, %bb63 ], [ @alloc_9eabe4c02e806b4c4a49072500e10a60, %bb65 ], [ @alloc_3151f122888d7b272b923b118ae66145, %bb2.i73 ], [ @alloc_fe0b3e2f5d0159a1579c4a392d739c31, %bb49 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %52, i64 noundef %53, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %54) #21
          to label %panic24.cont unwind label %"_ZN4core3ptr49drop_in_place$LT$alloc..vec..Vec$LT$usize$GT$$GT$17h4959bfb8b537e796E.exit"

panic24.cont:                                     ; preds = %panic24.invoke
  unreachable

bb16:                                             ; preds = %bb66, %bb70
  %55 = add nuw nsw i64 %51, 1
  %exitcond.not = icmp eq i64 %55, 9
  br i1 %exitcond.not, label %bb5.loopexit, label %bb9

bb70:                                             ; preds = %bb66
  store i32 %_57, ptr %_61, align 4
  br label %bb16

bb38:                                             ; preds = %bb62.i, %bb25.i
  %_17.sroa.0.3.ph = phi ptr [ %_17.sroa.0.0, %bb25.i ], [ %_19.i38.i, %bb62.i ]
  %_7.i.i151 = icmp eq ptr %_17.sroa.0.3.ph, %_88
  br i1 %_7.i.i151, label %bb43, label %bb14.i152

bb14.i152:                                        ; preds = %bb38
  %x.i = load i8, ptr %_17.sroa.0.3.ph, align 1, !noalias !1304, !noundef !6
  %_6.i = icmp sgt i8 %x.i, -1
  br i1 %_6.i, label %bb3.i159, label %bb4.i153

bb4.i153:                                         ; preds = %bb14.i152
  %_18.i.i = getelementptr inbounds nuw i8, ptr %_17.sroa.0.3.ph, i64 1
  %_30.i = and i8 %x.i, 31
  %init.i = zext nneg i8 %_30.i to i32
  %_7.i10.i = icmp ne ptr %_18.i.i, %_88
  tail call void @llvm.assume(i1 %_7.i10.i)
  %y.i = load i8, ptr %_18.i.i, align 1, !noalias !1304, !noundef !6
  %_34.i = shl nuw nsw i32 %init.i, 6
  %_36.i154 = and i8 %y.i, 63
  %_35.i = zext nneg i8 %_36.i154 to i32
  %56 = or disjoint i32 %_34.i, %_35.i
  %_13.i155 = icmp samesign ugt i8 %x.i, -33
  br i1 %_13.i155, label %bb6.i157, label %bb44

bb3.i159:                                         ; preds = %bb14.i152
  %_7.i = zext nneg i8 %x.i to i32
  br label %bb44

bb6.i157:                                         ; preds = %bb4.i153
  %_18.i12.i = getelementptr inbounds nuw i8, ptr %_17.sroa.0.3.ph, i64 2
  %_7.i17.i = icmp ne ptr %_18.i12.i, %_88
  tail call void @llvm.assume(i1 %_7.i17.i)
  %z.i = load i8, ptr %_18.i12.i, align 1, !noalias !1304, !noundef !6
  %_40.i = shl nuw nsw i32 %_35.i, 6
  %_42.i = and i8 %z.i, 63
  %_41.i = zext nneg i8 %_42.i to i32
  %y_z.i = or disjoint i32 %_40.i, %_41.i
  %_20.i = shl nuw nsw i32 %init.i, 12
  %57 = or disjoint i32 %y_z.i, %_20.i
  %_21.i = icmp samesign ugt i8 %x.i, -17
  br i1 %_21.i, label %bb36, label %bb44

bb36:                                             ; preds = %bb6.i157
  %_18.i19.i = getelementptr inbounds nuw i8, ptr %_17.sroa.0.3.ph, i64 3
  %_7.i24.i = icmp ne ptr %_18.i19.i, %_88
  tail call void @llvm.assume(i1 %_7.i24.i)
  %w.i = load i8, ptr %_18.i19.i, align 1, !noalias !1304, !noundef !6
  %_26.i = shl nuw nsw i32 %init.i, 18
  %_25.i158 = and i32 %_26.i, 1835008
  %_46.i = shl nuw nsw i32 %y_z.i, 6
  %_48.i = and i8 %w.i, 63
  %_47.i = zext nneg i8 %_48.i to i32
  %_27.i = or disjoint i32 %_46.i, %_47.i
  %58 = or disjoint i32 %_27.i, %_25.i158
  %.not47 = icmp eq i32 %58, 1114112
  br i1 %.not47, label %bb43, label %bb44, !prof !1307

bb44:                                             ; preds = %bb3.i159, %bb6.i157, %bb4.i153, %bb36
  %_0.sroa.4.0.i.ph205 = phi i32 [ %58, %bb36 ], [ %_7.i, %bb3.i159 ], [ %57, %bb6.i157 ], [ %56, %bb4.i153 ]
  %59 = icmp samesign ult i32 %_0.sroa.4.0.i.ph205, 1114112
  tail call void @llvm.assume(i1 %59)
  %_13 = zext nneg i32 %_0.sroa.4.0.i.ph205 to i64
  %_20 = getelementptr inbounds nuw i64, ptr %14, i64 %iter.sroa.0.0245
  %60 = add nsw i64 %_13, -48
  store i64 %60, ptr %_20, align 8
  %_0.i.not.i = icmp samesign ugt i64 %spec.select, %n
  %or.cond = select i1 %_0.i3.i, i1 true, i1 %_0.i.not.i
  br i1 %or.cond, label %bb2.i73, label %bb2.i

bb43:                                             ; preds = %bb38, %bb36, %bb27.i
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_52e9db55f758a9fd0ea560e0e1ed1b0c) #21
          to label %unreachable unwind label %"_ZN4core3ptr49drop_in_place$LT$alloc..vec..Vec$LT$usize$GT$$GT$17h4959bfb8b537e796E.exit"

bb30:                                             ; preds = %bb2.i.i.i3.i.i, %bb29
  resume { ptr, i32 } %.pn.pn
}
