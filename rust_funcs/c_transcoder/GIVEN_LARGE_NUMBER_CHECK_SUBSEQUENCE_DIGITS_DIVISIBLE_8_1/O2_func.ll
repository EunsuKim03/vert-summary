define noundef range(i32 0, 2) i32 @f_gold(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %str) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %v.i = alloca [24 x i8], align 8
  %dp = alloca [24 x i8], align 8
  %0 = getelementptr inbounds nuw i8, ptr %str, i64 16
  %n = load i64, ptr %0, align 8, !noundef !6
  %_75 = icmp ult i64 %n, 2305843009213693952
  tail call void @llvm.assume(i1 %_75)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %dp)
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1071
; call __rustc::__rust_alloc_zeroed
  %1 = tail call noundef align 4 dereferenceable_or_null(40) ptr @_RNvCsdBezzDwma51_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) 40, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1071
  %2 = icmp eq ptr %1, null
  br i1 %2, label %bb14.i, label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hc6bd789e93488f02E.exit"

bb14.i:                                           ; preds = %start
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef 4, i64 40) #21, !noalias !1076
  unreachable

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hc6bd789e93488f02E.exit": ; preds = %start
  %_5 = add nuw nsw i64 %n, 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %v.i), !noalias !1077
  %_21.0.i.i.i.i = mul i64 %_5, 24
  %or.cond.i.i.i.i = icmp samesign ugt i64 %n, 384307168202282324
  br i1 %or.cond.i.i.i.i, label %bb3.i.i, label %bb17.i.i.i, !prof !379

bb17.i.i.i:                                       ; preds = %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hc6bd789e93488f02E.exit"
  %_8.i.i.i = icmp eq i64 %_21.0.i.i.i.i, 0
  br i1 %_8.i.i.i, label %bb1.i.i, label %bb3.i.i.i

bb3.i.i.i:                                        ; preds = %bb17.i.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1081
; call __rustc::__rust_alloc
  %3 = tail call noundef align 8 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i.i.i.i, i64 noundef range(i64 4, 9) 8) #19, !noalias !1081
  %4 = icmp eq ptr %3, null
  br i1 %4, label %bb3.i.i, label %bb1.i.i

bb3.i.i:                                          ; preds = %bb3.i.i.i, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hc6bd789e93488f02E.exit"
  %_4.sroa.4.0.ph.i.i = phi i64 [ 8, %bb3.i.i.i ], [ 0, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hc6bd789e93488f02E.exit" ]
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_4.sroa.4.0.ph.i.i, i64 %_21.0.i.i.i.i) #21
          to label %.noexc.i unwind label %bb2.i.i.i3.i.i, !noalias !1077

.noexc.i:                                         ; preds = %bb3.i.i
  unreachable

bb1.i.i:                                          ; preds = %bb3.i.i.i, %bb17.i.i.i
  %_4.sroa.4.0.i.i = phi i64 [ 0, %bb17.i.i.i ], [ %_5, %bb3.i.i.i ]
  %_4.sroa.10.0.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb17.i.i.i ], [ %3, %bb3.i.i.i ]
  %_7.i.i = icmp samesign ult i64 %n, %_4.sroa.4.0.i.i
  tail call void @llvm.assume(i1 %_7.i.i)
  store i64 %_4.sroa.4.0.i.i, ptr %v.i, align 8, !noalias !1077
  %5 = getelementptr inbounds nuw i8, ptr %v.i, i64 8
  store ptr %_4.sroa.10.0.i.i, ptr %5, align 8, !noalias !1077
  %6 = getelementptr inbounds nuw i8, ptr %v.i, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1084)
  %_2417.i.i.not = icmp eq i64 %n, 0
  br i1 %_2417.i.i.not, label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17he2383270222322a8E.exit", label %bb3.i.i.i.i.i.i

bb3.i.i.i.i.i.i:                                  ; preds = %bb1.i.i, %bb3.i3.i
  %ptr.sroa.0.020.i.i = phi ptr [ %_15.i.i, %bb3.i3.i ], [ %_4.sroa.10.0.i.i, %bb1.i.i ]
  %iter.sroa.0.019.i.i = phi i64 [ %_28.i.i, %bb3.i3.i ], [ 1, %bb1.i.i ]
  %storemerge18.i.i = phi i64 [ %9, %bb3.i3.i ], [ 0, %bb1.i.i ]
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1087
; call __rustc::__rust_alloc
  %7 = tail call noundef align 4 dereferenceable_or_null(40) ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 4, 9) 4) #19, !noalias !1087
  %8 = icmp eq ptr %7, null
  br i1 %8, label %bb3.i.i.i.i.i, label %bb3.i3.i

bb3.i.i.i.i.i:                                    ; preds = %bb3.i.i.i.i.i.i
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef 4, i64 40) #21
          to label %.noexc9.i.i unwind label %cleanup1.body.i, !noalias !1097

.noexc9.i.i:                                      ; preds = %bb3.i.i.i.i.i
  unreachable

bb3.i3.i:                                         ; preds = %bb3.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %7, ptr noundef nonnull readonly align 4 dereferenceable(40) %1, i64 40, i1 false), !noalias !1098
  %_28.i.i = add nuw nsw i64 %iter.sroa.0.019.i.i, 1
  store i64 10, ptr %ptr.sroa.0.020.i.i, align 8, !noalias !1097
  %src.sroa.4.0.ptr.sroa.0.0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.020.i.i, i64 8
  store ptr %7, ptr %src.sroa.4.0.ptr.sroa.0.0.sroa_idx.i.i, align 8, !noalias !1097
  %src.sroa.5.0.ptr.sroa.0.0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.020.i.i, i64 16
  store i64 10, ptr %src.sroa.5.0.ptr.sroa.0.0.sroa_idx.i.i, align 8, !noalias !1097
  %_15.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.020.i.i, i64 24
  %9 = add nuw nsw i64 %storemerge18.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %iter.sroa.0.019.i.i, %n
  br i1 %exitcond.not.i.i, label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17he2383270222322a8E.exit", label %bb3.i.i.i.i.i.i

cleanup1.body.i:                                  ; preds = %bb3.i.i.i.i.i
  %10 = landingpad { ptr, i32 }
          cleanup
  store i64 %storemerge18.i.i, ptr %6, align 8, !alias.scope !1084, !noalias !1099
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1104
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hef1019e3ac01ef99E"(ptr noalias noundef align 8 dereferenceable(24) %v.i) #23, !noalias !1077
  br label %common.resume

common.resume:                                    ; preds = %cleanup1.body.i, %bb2.i.i.i3.i.i, %bb28
  %common.resume.op = phi { ptr, i32 } [ %.pn, %bb28 ], [ %10, %cleanup1.body.i ], [ %11, %bb2.i.i.i3.i.i ]
  resume { ptr, i32 } %common.resume.op

bb2.i.i.i3.i.i:                                   ; preds = %bb3.i.i
  %11 = landingpad { ptr, i32 }
          cleanup
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1113
  br label %common.resume

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17he2383270222322a8E.exit": ; preds = %bb3.i3.i, %bb1.i.i
  %ptr.sroa.0.0.lcssa.i.i = phi ptr [ %_4.sroa.10.0.i.i, %bb1.i.i ], [ %_15.i.i, %bb3.i3.i ]
  store i64 10, ptr %ptr.sroa.0.0.lcssa.i.i, align 8, !noalias !1122
  %_7.sroa.5.0.ptr.sroa.0.0.lcssa.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.0.lcssa.i.i, i64 8
  store ptr %1, ptr %_7.sroa.5.0.ptr.sroa.0.0.lcssa.i.sroa_idx.i, align 8, !noalias !1122
  %_7.sroa.7.0.ptr.sroa.0.0.lcssa.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.0.lcssa.i.i, i64 16
  store i64 10, ptr %_7.sroa.7.0.ptr.sroa.0.0.lcssa.i.sroa_idx.i, align 8, !noalias !1122
  store i64 %_5, ptr %6, align 8, !alias.scope !1084, !noalias !1123
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %dp, ptr noundef nonnull align 8 dereferenceable(24) %v.i, i64 24, i1 false), !noalias !1128
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %v.i), !noalias !1077
  %_21.0.i.i.i = shl nuw nsw i64 %_5, 3
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1129
; call __rustc::__rust_alloc_zeroed
  %12 = tail call noundef align 8 ptr @_RNvCsdBezzDwma51_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 8) #19, !noalias !1129
  %13 = icmp eq ptr %12, null
  br i1 %13, label %bb14.i47, label %bb1.preheader.split

bb1.preheader.split:                              ; preds = %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17he2383270222322a8E.exit"
  br i1 %_2417.i.i.not, label %bb5.preheader.split.bb17.preheader_crit_edge, label %bb2.i.lr.ph

bb2.i.lr.ph:                                      ; preds = %bb1.preheader.split
  %14 = getelementptr inbounds nuw i8, ptr %str, i64 8
  %_78 = load ptr, ptr %14, align 8, !nonnull !6
  br label %bb2.i

bb14.i47:                                         ; preds = %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17he2383270222322a8E.exit"
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef 8, i64 %_21.0.i.i.i) #21
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %bb14.i47
  unreachable

bb28:                                             ; preds = %"_ZN4core3ptr49drop_in_place$LT$alloc..vec..Vec$LT$usize$GT$$GT$17h4959bfb8b537e796E.exit", %cleanup
  %.pn = phi { ptr, i32 } [ %18, %"_ZN4core3ptr49drop_in_place$LT$alloc..vec..Vec$LT$usize$GT$$GT$17h4959bfb8b537e796E.exit" ], [ %15, %cleanup ]
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hef1019e3ac01ef99E"(ptr noalias noundef align 8 dereferenceable(24) %dp) #23
  br label %common.resume

cleanup:                                          ; preds = %bb14.i47
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %bb28

bb5.preheader.split.bb17.preheader_crit_edge:     ; preds = %bb1.preheader.split
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %dp, i64 16
  %_203.pre = load i64, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert249 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  %_204.pre = load ptr, ptr %.phi.trans.insert249, align 8
  br label %bb17.preheader

bb2.i56.lr.ph:                                    ; preds = %bb34
  %16 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  %17 = getelementptr inbounds nuw i8, ptr %dp, i64 16
  %_89 = load i64, ptr %17, align 8, !noundef !6
  %_90 = load ptr, ptr %16, align 8, !nonnull !6
  br label %bb2.i56

bb2.i:                                            ; preds = %bb2.i.lr.ph, %bb34
  %iter.sroa.0.0197 = phi i64 [ 1, %bb2.i.lr.ph ], [ %spec.select, %bb34 ]
  %_17 = add nsw i64 %iter.sroa.0.0197, -1
  %_80 = icmp ult i64 %_17, %n
  br i1 %_80, label %bb34, label %panic29.invoke

"_ZN4core3ptr49drop_in_place$LT$alloc..vec..Vec$LT$usize$GT$$GT$17h4959bfb8b537e796E.exit": ; preds = %panic29.invoke
  %18 = landingpad { ptr, i32 }
          cleanup
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %12, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 8) #19, !noalias !1134
  br label %bb28

bb5.loopexit:                                     ; preds = %bb16
  %_0.i.not.i55 = icmp samesign ugt i64 %spec.select138, %n
  %or.cond142 = select i1 %_0.i3.i57, i1 true, i1 %_0.i.not.i55
  br i1 %or.cond142, label %bb17.preheader, label %bb2.i56

bb17.preheader:                                   ; preds = %bb5.loopexit, %bb5.preheader.split.bb17.preheader_crit_edge
  %_5.i.i = phi ptr [ %_204.pre, %bb5.preheader.split.bb17.preheader_crit_edge ], [ %_90, %bb5.loopexit ]
  %len.i.i = phi i64 [ %_203.pre, %bb5.preheader.split.bb17.preheader_crit_edge ], [ %_89, %bb5.loopexit ]
  br label %bb17

bb2.i56:                                          ; preds = %bb2.i56.lr.ph, %bb5.loopexit
  %iter1.sroa.0.0200 = phi i64 [ 1, %bb2.i56.lr.ph ], [ %spec.select138, %bb5.loopexit ]
  %_0.i3.i57 = icmp samesign uge i64 %iter1.sroa.0.0200, %n
  %not._0.i3.i57 = xor i1 %_0.i3.i57, true
  %_0.i4.i62 = zext i1 %not._0.i3.i57 to i64
  %spec.select138 = add nuw nsw i64 %iter1.sroa.0.0200, %_0.i4.i62
  %_92 = icmp ult i64 %iter1.sroa.0.0200, %_89
  br i1 %_92, label %bb37, label %panic29.invoke

bb17:                                             ; preds = %bb17.preheader, %bb63
  %iter2.sroa.0.0 = phi i64 [ %spec.select140, %bb63 ], [ 1, %bb17.preheader ]
  %iter2.sroa.8.0 = phi i1 [ %_0.i3.i71, %bb63 ], [ false, %bb17.preheader ]
  %_0.i.not.i69 = icmp samesign ugt i64 %iter2.sroa.0.0, %n
  %or.cond143 = select i1 %iter2.sroa.8.0, i1 true, i1 %_0.i.not.i69
  br i1 %or.cond143, label %bb22, label %bb2.i70

bb2.i70:                                          ; preds = %bb17
  %_0.i3.i71 = icmp samesign uge i64 %iter2.sroa.0.0, %n
  %not._0.i3.i71 = xor i1 %_0.i3.i71, true
  %_0.i4.i76 = zext i1 %not._0.i3.i71 to i64
  %spec.select140 = add nuw nsw i64 %iter2.sroa.0.0, %_0.i4.i76
  %_206 = icmp ult i64 %iter2.sroa.0.0, %len.i.i
  br i1 %_206, label %bb62, label %panic29.invoke

bb22:                                             ; preds = %bb17
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %12, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 8) #19, !noalias !1143
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1152)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1155)
  %_711.i.i.i = icmp eq i64 %len.i.i, 0
  br i1 %_711.i.i.i, label %bb4.i84, label %bb5.i.i.i

bb5.i.i.i:                                        ; preds = %bb22, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17ha8d7684f3cca654fE.exit.i.i.i"
  %_3.sroa.0.012.i.i.i = phi i64 [ %19, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17ha8d7684f3cca654fE.exit.i.i.i" ], [ 0, %bb22 ]
  %_6.i.i.i = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_5.i.i, i64 %_3.sroa.0.012.i.i.i
  %19 = add nuw i64 %_3.sroa.0.012.i.i.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1158)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1161)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1164)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1167)
  %self1.i.i.i.i1.i.i.i.i = load i64, ptr %_6.i.i.i, align 8, !range !22, !alias.scope !1170, !noalias !1173, !noundef !6
  %_6.i.i.i.i2.i.i.i.i = icmp eq i64 %self1.i.i.i.i1.i.i.i.i, 0
  br i1 %_6.i.i.i.i2.i.i.i.i, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17ha8d7684f3cca654fE.exit.i.i.i", label %bb2.i.i.i3.i.i.i.i

bb2.i.i.i3.i.i.i.i:                               ; preds = %bb5.i.i.i
  %20 = shl nuw i64 %self1.i.i.i.i1.i.i.i.i, 2
  %21 = getelementptr inbounds nuw i8, ptr %_6.i.i.i, i64 8
  %self3.i.i.i.i4.i.i.i.i = load ptr, ptr %21, align 8, !alias.scope !1170, !noalias !1173, !nonnull !6, !noundef !6
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i.i.i, i64 noundef %20, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1177
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17ha8d7684f3cca654fE.exit.i.i.i"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17ha8d7684f3cca654fE.exit.i.i.i": ; preds = %bb2.i.i.i3.i.i.i.i, %bb5.i.i.i
  %_7.i.i.i = icmp eq i64 %19, %len.i.i
  br i1 %_7.i.i.i, label %bb4.i84, label %bb5.i.i.i

bb4.i84:                                          ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17ha8d7684f3cca654fE.exit.i.i.i", %bb22
  %self1.i.i.i.i1.i85 = load i64, ptr %dp, align 8, !range !22, !alias.scope !1178, !noalias !1187, !noundef !6
  %_6.i.i.i.i2.i86 = icmp eq i64 %self1.i.i.i.i1.i85, 0
  br i1 %_6.i.i.i.i2.i86, label %bb26, label %bb26.sink.split

bb26.sink.split:                                  ; preds = %bb4.i84, %bb4.i106
  %self1.i.i.i.i1.i85.sink = phi i64 [ %self1.i.i.i.i1.i107, %bb4.i106 ], [ %self1.i.i.i.i1.i85, %bb4.i84 ]
  %_0.sroa.0.0.ph = phi i32 [ 1, %bb4.i106 ], [ 0, %bb4.i84 ]
  %22 = mul nuw i64 %self1.i.i.i.i1.i85.sink, 24
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_5.i.i, i64 noundef %22, i64 noundef range(i64 1, -9223372036854775807) 8) #19, !noalias !6
  br label %bb26

bb26:                                             ; preds = %bb26.sink.split, %bb4.i84, %bb4.i106
  %_0.sroa.0.0 = phi i32 [ 1, %bb4.i106 ], [ 0, %bb4.i84 ], [ %_0.sroa.0.0.ph, %bb26.sink.split ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %dp)
  ret i32 %_0.sroa.0.0

bb62:                                             ; preds = %bb2.i70
  %_74 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_5.i.i, i64 %iter2.sroa.0.0
  %23 = getelementptr inbounds nuw i8, ptr %_74, i64 16
  %_208 = load i64, ptr %23, align 8, !noundef !6
  %_211.not = icmp eq i64 %_208, 0
  br i1 %_211.not, label %panic29.invoke, label %bb63

bb63:                                             ; preds = %bb62
  %24 = getelementptr inbounds nuw i8, ptr %_74, i64 8
  %_209 = load ptr, ptr %24, align 8, !nonnull !6, !noundef !6
  %_72 = load i32, ptr %_209, align 4, !noundef !6
  %_71 = icmp eq i32 %_72, 1
  br i1 %_71, label %bb24, label %bb17

bb24:                                             ; preds = %bb63
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %12, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 8) #19, !noalias !1189
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1198)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1201)
  br label %bb5.i.i.i97

bb5.i.i.i97:                                      ; preds = %bb24, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17ha8d7684f3cca654fE.exit.i.i.i104"
  %_3.sroa.0.012.i.i.i98 = phi i64 [ %25, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17ha8d7684f3cca654fE.exit.i.i.i104" ], [ 0, %bb24 ]
  %_6.i.i.i99 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_5.i.i, i64 %_3.sroa.0.012.i.i.i98
  %25 = add nuw i64 %_3.sroa.0.012.i.i.i98, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1204)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1207)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1210)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1213)
  %self1.i.i.i.i1.i.i.i.i100 = load i64, ptr %_6.i.i.i99, align 8, !range !22, !alias.scope !1216, !noalias !1219, !noundef !6
  %_6.i.i.i.i2.i.i.i.i101 = icmp eq i64 %self1.i.i.i.i1.i.i.i.i100, 0
  br i1 %_6.i.i.i.i2.i.i.i.i101, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17ha8d7684f3cca654fE.exit.i.i.i104", label %bb2.i.i.i3.i.i.i.i102

bb2.i.i.i3.i.i.i.i102:                            ; preds = %bb5.i.i.i97
  %26 = shl nuw i64 %self1.i.i.i.i1.i.i.i.i100, 2
  %27 = getelementptr inbounds nuw i8, ptr %_6.i.i.i99, i64 8
  %self3.i.i.i.i4.i.i.i.i103 = load ptr, ptr %27, align 8, !alias.scope !1216, !noalias !1219, !nonnull !6, !noundef !6
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i.i.i103, i64 noundef %26, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1223
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17ha8d7684f3cca654fE.exit.i.i.i104"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17ha8d7684f3cca654fE.exit.i.i.i104": ; preds = %bb2.i.i.i3.i.i.i.i102, %bb5.i.i.i97
  %_7.i.i.i105 = icmp eq i64 %25, %len.i.i
  br i1 %_7.i.i.i105, label %bb4.i106, label %bb5.i.i.i97

bb4.i106:                                         ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17ha8d7684f3cca654fE.exit.i.i.i104"
  %self1.i.i.i.i1.i107 = load i64, ptr %dp, align 8, !range !22, !alias.scope !1224, !noalias !1233, !noundef !6
  %_6.i.i.i.i2.i108 = icmp eq i64 %self1.i.i.i.i1.i107, 0
  br i1 %_6.i.i.i.i2.i108, label %bb26, label %bb26.sink.split

bb37:                                             ; preds = %bb2.i56
  %_25 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_90, i64 %iter1.sroa.0.0200
  %_28 = getelementptr inbounds nuw i64, ptr %12, i64 %iter1.sroa.0.0200
  %_27 = load i64, ptr %_28, align 8, !noundef !6
  %_26 = and i64 %_27, 7
  %28 = getelementptr inbounds nuw i8, ptr %_25, i64 16
  %_100 = load i64, ptr %28, align 8, !noundef !6
  %_103 = icmp ult i64 %_26, %_100
  br i1 %_103, label %bb39, label %panic29.invoke

bb39:                                             ; preds = %bb37
  %29 = getelementptr inbounds nuw i8, ptr %_25, i64 8
  %_101 = load ptr, ptr %29, align 8, !nonnull !6, !noundef !6
  %_24 = getelementptr inbounds nuw i32, ptr %_101, i64 %_26
  store i32 1, ptr %_24, align 4
  %_36 = add nsw i64 %iter1.sroa.0.0200, -1
  %_112 = icmp ult i64 %_36, %_89
  %_35 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_90, i64 %_36
  %30 = getelementptr inbounds nuw i8, ptr %_35, i64 16
  %31 = getelementptr inbounds nuw i8, ptr %_35, i64 8
  br i1 %_112, label %bb9, label %panic29.invoke

bb9:                                              ; preds = %bb39, %bb16
  %32 = phi i64 [ %33, %bb16 ], [ 1, %bb39 ]
  %iter3.sroa.0.0198 = phi i64 [ %32, %bb16 ], [ 0, %bb39 ]
  %_114 = load i64, ptr %30, align 8, !noundef !6
  %_117 = icmp ult i64 %iter3.sroa.0.0198, %_114
  br i1 %_117, label %bb46, label %panic29.invoke

bb46:                                             ; preds = %bb9
  %_115 = load ptr, ptr %31, align 8, !nonnull !6, !noundef !6
  %_34 = getelementptr inbounds nuw i32, ptr %_115, i64 %iter3.sroa.0.0198
  %_33 = load i32, ptr %_34, align 4, !noundef !6
  %_42 = shl nuw nsw i64 %iter3.sroa.0.0198, 1
  %_43 = load i64, ptr %_28, align 8, !noundef !6
  %_41 = add i64 %_43, %_42
  %_40 = and i64 %_41, 7
  %_129 = load i64, ptr %28, align 8, !noundef !6
  %_132 = icmp ult i64 %_40, %_129
  br i1 %_132, label %bb47, label %panic29.invoke

bb47:                                             ; preds = %bb46
  %_130 = load ptr, ptr %29, align 8, !nonnull !6, !noundef !6
  %_38 = getelementptr inbounds nuw i32, ptr %_130, i64 %_40
  %_37 = load i32, ptr %_38, align 4, !noundef !6
  %_32 = icmp sgt i32 %_33, %_37
  br i1 %_32, label %bb52, label %bb53

bb52:                                             ; preds = %bb47
  store i32 %_33, ptr %_38, align 4
  %_166.pre = load i64, ptr %30, align 8
  br label %bb53

bb53:                                             ; preds = %bb52, %bb47
  %_166 = phi i64 [ %_166.pre, %bb52 ], [ %_114, %bb47 ]
  %_169 = icmp ult i64 %iter3.sroa.0.0198, %_166
  br i1 %_169, label %bb55, label %panic29.invoke

bb55:                                             ; preds = %bb53
  %_167 = load ptr, ptr %31, align 8, !nonnull !6, !noundef !6
  %_56 = getelementptr inbounds nuw i32, ptr %_167, i64 %iter3.sroa.0.0198
  %_55 = load i32, ptr %_56, align 4, !noundef !6
  %_176 = load i64, ptr %28, align 8, !noundef !6
  %_179 = icmp ult i64 %iter3.sroa.0.0198, %_176
  br i1 %_179, label %bb56, label %panic29.invoke

bb56:                                             ; preds = %bb55
  %_177 = load ptr, ptr %29, align 8, !nonnull !6, !noundef !6
  %_59 = getelementptr inbounds nuw i32, ptr %_177, i64 %iter3.sroa.0.0198
  %_58 = load i32, ptr %_59, align 4, !noundef !6
  %_54 = icmp sgt i32 %_55, %_58
  br i1 %_54, label %bb60, label %bb16

bb16:                                             ; preds = %bb56, %bb60
  %33 = add nuw nsw i64 %32, 1
  %exitcond.not = icmp eq i64 %33, 9
  br i1 %exitcond.not, label %bb5.loopexit, label %bb9

bb60:                                             ; preds = %bb56
  store i32 %_55, ptr %_59, align 4
  br label %bb16

bb34:                                             ; preds = %bb2.i
  %_0.i3.i = icmp samesign uge i64 %iter.sroa.0.0197, %n
  %not._0.i3.i = xor i1 %_0.i3.i, true
  %_0.i4.i = zext i1 %not._0.i3.i to i64
  %spec.select = add nuw nsw i64 %iter.sroa.0.0197, %_0.i4.i
  %_16 = getelementptr inbounds nuw i32, ptr %_78, i64 %_17
  %_15 = load i32, ptr %_16, align 4, !range !1235, !noundef !6
  %narrow = add nuw nsw i32 %_15, 208
  %_18 = getelementptr inbounds nuw i64, ptr %12, i64 %iter.sroa.0.0197
  %34 = and i32 %narrow, 255
  %35 = zext nneg i32 %34 to i64
  store i64 %35, ptr %_18, align 8
  %_0.i.not.i = icmp samesign ugt i64 %spec.select, %n
  %or.cond = select i1 %_0.i3.i, i1 true, i1 %_0.i.not.i
  br i1 %or.cond, label %bb2.i56.lr.ph, label %bb2.i

panic29.invoke:                                   ; preds = %bb2.i, %bb39, %bb37, %bb2.i56, %bb55, %bb53, %bb46, %bb9, %bb62, %bb2.i70
  %36 = phi i64 [ %iter2.sroa.0.0, %bb2.i70 ], [ 0, %bb62 ], [ %iter3.sroa.0.0198, %bb9 ], [ %_40, %bb46 ], [ %iter3.sroa.0.0198, %bb53 ], [ %iter3.sroa.0.0198, %bb55 ], [ %iter1.sroa.0.0200, %bb2.i56 ], [ %_26, %bb37 ], [ %_36, %bb39 ], [ %_17, %bb2.i ]
  %37 = phi i64 [ %len.i.i, %bb2.i70 ], [ 0, %bb62 ], [ %_114, %bb9 ], [ %_129, %bb46 ], [ %_166, %bb53 ], [ %_176, %bb55 ], [ %_89, %bb2.i56 ], [ %_100, %bb37 ], [ %_89, %bb39 ], [ %n, %bb2.i ]
  %38 = phi ptr [ @alloc_68915adc29673af60cd1b7c232cd0c53, %bb2.i70 ], [ @alloc_0247985fb93dcac774066f58ab497f53, %bb62 ], [ @alloc_e600f6843e939b10d87254da1c0ab437, %bb9 ], [ @alloc_b40cba54fe857c28368b061b9248cff0, %bb46 ], [ @alloc_94b87e038c1507b36f8ac030892fac14, %bb53 ], [ @alloc_ecffea89b770956640c1726c41ca734c, %bb55 ], [ @alloc_c5ab3d61f63e18c03ee982f52b98d981, %bb2.i56 ], [ @alloc_c01585be3ddb7e9645f35c751a7dd173, %bb37 ], [ @alloc_afbc525cd8f46a2cfd07f14ac35c3a07, %bb39 ], [ @alloc_7ebeeaa4972a12ddf9f14e5f75c343ce, %bb2.i ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %36, i64 noundef %37, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %38) #21
          to label %panic29.cont unwind label %"_ZN4core3ptr49drop_in_place$LT$alloc..vec..Vec$LT$usize$GT$$GT$17h4959bfb8b537e796E.exit"

panic29.cont:                                     ; preds = %panic29.invoke
  unreachable
}
