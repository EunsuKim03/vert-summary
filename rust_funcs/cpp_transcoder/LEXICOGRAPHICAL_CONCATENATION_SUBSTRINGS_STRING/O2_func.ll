define void @f_gold(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_0, ptr dead_on_return noalias noundef readonly align 8 captures(none) dereferenceable(24) %s) unnamed_addr #4 personality ptr @rust_eh_personality {
start:
  %is_less.i = alloca [0 x i8], align 1
  %res = alloca [24 x i8], align 8
  %arr = alloca [24 x i8], align 8
  %0 = getelementptr inbounds nuw i8, ptr %s, i64 16
  %n = load i64, ptr %0, align 8, !noundef !6
  %_29 = icmp sgt i64 %n, -1
  tail call void @llvm.assume(i1 %_29)
  %_5 = add nuw i64 %n, 1
  %_4 = mul i64 %_5, %n
  %sub_count10 = lshr i64 %_4, 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %arr)
  %_21.0.i.i.i = mul i64 %sub_count10, 24
  %or.cond.i.i.i = icmp ugt i64 %_4, 768614336404564651
  br i1 %or.cond.i.i.i, label %bb3.i, label %bb17.i.i, !prof !674

bb17.i.i:                                         ; preds = %start
  %_8.i.i = icmp eq i64 %_21.0.i.i.i, 0
  br i1 %_8.i.i, label %bb13, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i": ; preds = %bb17.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !1989
; call __rustc::__rust_alloc
  %1 = tail call noundef align 8 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, 9) 8) #25, !noalias !1989
  %2 = icmp eq ptr %1, null
  br i1 %2, label %bb3.i, label %bb13

bb3.i:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i", %start
  %_4.sroa.4.0.ph.i = phi i64 [ 8, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i" ], [ 0, %start ]
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_4.sroa.4.0.ph.i, i64 %_21.0.i.i.i) #27
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %bb3.i
  unreachable

bb11:                                             ; preds = %bb2.i.i.i3.i, %bb4.i, %cleanup
  %.pn.pn = phi { ptr, i32 } [ %4, %cleanup ], [ %.pn, %bb4.i ], [ %.pn, %bb2.i.i.i3.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1992)
  call void @llvm.experimental.noalias.scope.decl(metadata !1995)
  call void @llvm.experimental.noalias.scope.decl(metadata !1998)
  call void @llvm.experimental.noalias.scope.decl(metadata !2001)
  call void @llvm.experimental.noalias.scope.decl(metadata !2004)
  %self1.i.i.i.i1.i.i = load i64, ptr %s, align 8, !range !25, !alias.scope !2007, !noalias !2010, !noundef !6
  %_6.i.i.i.i2.i.i = icmp eq i64 %self1.i.i.i.i1.i.i, 0
  br i1 %_6.i.i.i.i2.i.i, label %bb12, label %bb2.i.i.i3.i.i

bb2.i.i.i3.i.i:                                   ; preds = %bb11
  %3 = getelementptr inbounds nuw i8, ptr %s, i64 8
  %self3.i.i.i.i4.i.i = load ptr, ptr %3, align 8, !alias.scope !2007, !noalias !2010, !nonnull !6, !noundef !6
; call __rustc::__rust_dealloc
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i, i64 noundef %self1.i.i.i.i1.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !2012
  br label %bb12

cleanup:                                          ; preds = %bb3.i
  %4 = landingpad { ptr, i32 }
          cleanup
  br label %bb11

bb13:                                             ; preds = %bb17.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i"
  %_4.sroa.4.0.i = phi i64 [ 0, %bb17.i.i ], [ %sub_count10, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i" ]
  %_4.sroa.10.0.i = phi ptr [ inttoptr (i64 8 to ptr), %bb17.i.i ], [ %1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i" ]
  %_7.i = icmp samesign ule i64 %sub_count10, %_4.sroa.4.0.i
  tail call void @llvm.assume(i1 %_7.i)
  store i64 %_4.sroa.4.0.i, ptr %arr, align 8
  %5 = getelementptr inbounds nuw i8, ptr %arr, i64 8
  store ptr %_4.sroa.10.0.i, ptr %5, align 8
  %6 = getelementptr inbounds nuw i8, ptr %arr, i64 16
  store i64 0, ptr %6, align 8
  %_3288.not = icmp eq i64 %n, 0
  br i1 %_3288.not, label %bb15.thread, label %bb14.lr.ph

bb15.thread:                                      ; preds = %bb13
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %is_less.i)
  br label %bb22

bb14.lr.ph:                                       ; preds = %bb13
  %7 = getelementptr inbounds nuw i8, ptr %s, i64 8
  %_44 = load ptr, ptr %7, align 8, !nonnull !6
  br label %bb2.i.lr.ph

bb1.loopexit:                                     ; preds = %bb21
  %exitcond.not = icmp eq i64 %8, %n
  br i1 %exitcond.not, label %bb15, label %bb2.i.lr.ph

bb15:                                             ; preds = %bb1.loopexit
  %_38.pre = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %is_less.i)
  %b.i = icmp samesign ult i64 %29, 2
  br i1 %b.i, label %bb22, label %bb7.i, !prof !2013

bb7.i:                                            ; preds = %bb15
  %b1.i = icmp samesign ult i64 %29, 21
  br i1 %b1.i, label %bb9.i, label %bb10.i, !prof !2014

bb10.i:                                           ; preds = %bb7.i
; invoke core::slice::sort::stable::driftsort_main
  invoke void @_ZN4core5slice4sort6stable14driftsort_main17had053cf2c77a0b49E(ptr noalias noundef nonnull align 8 %_38.pre, i64 noundef range(i64 0, 384307168202282326) %29, ptr noalias noundef nonnull align 1 %is_less.i)
          to label %bb22 unwind label %cleanup3

bb9.i:                                            ; preds = %bb7.i
; call core::slice::sort::shared::smallsort::insertion_sort_shift_left
  call fastcc void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h5881bc39b88732acE(ptr noalias noundef nonnull align 8 %_38.pre, i64 noundef range(i64 0, 384307168202282326) %29)
  br label %bb22

bb2.i.lr.ph:                                      ; preds = %bb1.loopexit, %bb14.lr.ph
  %iter1.sroa.0.089 = phi i64 [ 0, %bb14.lr.ph ], [ %8, %bb1.loopexit ]
  %8 = add nuw nsw i64 %iter1.sroa.0.089, 1
  %_11 = sub nuw nsw i64 %n, %iter1.sroa.0.089
  %_11.i = icmp eq i64 %iter1.sroa.0.089, 0
  %9 = getelementptr inbounds nuw i8, ptr %_44, i64 %iter1.sroa.0.089
  br label %bb2.i

bb10:                                             ; preds = %cleanup.i, %bb2.i.i.i3.i.i41, %cleanup4, %cleanup3
  %.pn = phi { ptr, i32 } [ %13, %cleanup3 ], [ %lpad.phi, %cleanup4 ], [ %lpad.phi, %bb2.i.i.i3.i.i41 ], [ %28, %cleanup.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !2015)
  call void @llvm.experimental.noalias.scope.decl(metadata !2018)
  %_5.i.i = load ptr, ptr %5, align 8, !alias.scope !2021, !nonnull !6, !noundef !6
  %len.i.i = load i64, ptr %6, align 8, !alias.scope !2021, !noundef !6
  call void @llvm.experimental.noalias.scope.decl(metadata !2022)
  %_711.i.i.i = icmp eq i64 %len.i.i, 0
  br i1 %_711.i.i.i, label %bb4.i, label %bb5.i.i.i

bb5.i.i.i:                                        ; preds = %bb10, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hde14ea688b292269E.exit.i.i.i"
  %_3.sroa.0.012.i.i.i = phi i64 [ %10, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hde14ea688b292269E.exit.i.i.i" ], [ 0, %bb10 ]
  %_6.i.i.i = getelementptr inbounds nuw %"alloc::string::String", ptr %_5.i.i, i64 %_3.sroa.0.012.i.i.i
  %10 = add nuw i64 %_3.sroa.0.012.i.i.i, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !2025)
  call void @llvm.experimental.noalias.scope.decl(metadata !2028)
  call void @llvm.experimental.noalias.scope.decl(metadata !2031)
  call void @llvm.experimental.noalias.scope.decl(metadata !2034)
  call void @llvm.experimental.noalias.scope.decl(metadata !2037)
  %self1.i.i.i.i1.i.i.i.i.i = load i64, ptr %_6.i.i.i, align 8, !range !25, !alias.scope !2040, !noalias !2043, !noundef !6
  %_6.i.i.i.i2.i.i.i.i.i = icmp eq i64 %self1.i.i.i.i1.i.i.i.i.i, 0
  br i1 %_6.i.i.i.i2.i.i.i.i.i, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hde14ea688b292269E.exit.i.i.i", label %bb2.i.i.i3.i.i.i.i.i

bb2.i.i.i3.i.i.i.i.i:                             ; preds = %bb5.i.i.i
  %11 = getelementptr inbounds nuw i8, ptr %_6.i.i.i, i64 8
  %self3.i.i.i.i4.i.i.i.i.i = load ptr, ptr %11, align 8, !alias.scope !2040, !noalias !2043, !nonnull !6, !noundef !6
; call __rustc::__rust_dealloc
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i.i.i.i, i64 noundef %self1.i.i.i.i1.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !2045
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hde14ea688b292269E.exit.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hde14ea688b292269E.exit.i.i.i": ; preds = %bb2.i.i.i3.i.i.i.i.i, %bb5.i.i.i
  %_7.i.i.i = icmp eq i64 %10, %len.i.i
  br i1 %_7.i.i.i, label %bb4.i, label %bb5.i.i.i

bb4.i:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hde14ea688b292269E.exit.i.i.i", %bb10
  call void @llvm.experimental.noalias.scope.decl(metadata !2046)
  call void @llvm.experimental.noalias.scope.decl(metadata !2049)
  call void @llvm.experimental.noalias.scope.decl(metadata !2052)
  %self1.i.i.i.i1.i = load i64, ptr %arr, align 8, !range !25, !alias.scope !2055, !noalias !2058, !noundef !6
  %_6.i.i.i.i2.i = icmp eq i64 %self1.i.i.i.i1.i, 0
  br i1 %_6.i.i.i.i2.i, label %bb11, label %bb2.i.i.i3.i

bb2.i.i.i3.i:                                     ; preds = %bb4.i
  %12 = mul nuw i64 %self1.i.i.i.i1.i, 24
; call __rustc::__rust_dealloc
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_5.i.i, i64 noundef %12, i64 noundef range(i64 1, -9223372036854775807) 8) #25, !noalias !2060
  br label %bb11

cleanup3:                                         ; preds = %bb3.i.i, %bb10.i, %bb18
  %13 = landingpad { ptr, i32 }
          cleanup
  br label %bb10

bb22:                                             ; preds = %bb15.thread, %bb9.i, %bb15, %bb10.i
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %is_less.i)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %res)
  store i64 0, ptr %res, align 8
  %_53.sroa.4.0.res.sroa_idx = getelementptr inbounds nuw i8, ptr %res, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %_53.sroa.4.0.res.sroa_idx, align 8
  %_53.sroa.5.0.res.sroa_idx = getelementptr inbounds nuw i8, ptr %res, i64 16
  store i64 0, ptr %_53.sroa.5.0.res.sroa_idx, align 8
  %_5491.not = icmp ult i64 %_4, 2
  br i1 %_5491.not, label %bb24, label %bb23.preheader

bb23.preheader:                                   ; preds = %bb22
  %umax = call i64 @llvm.umax.i64(i64 %sub_count10, i64 1)
  br label %bb23

bb24:                                             ; preds = %"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17hb310ef864bb1eccdE.exit", %bb22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_0, ptr noundef nonnull align 8 dereferenceable(24) %res, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %res)
  call void @llvm.experimental.noalias.scope.decl(metadata !2061)
  call void @llvm.experimental.noalias.scope.decl(metadata !2064)
  %_5.i.i14 = load ptr, ptr %5, align 8, !alias.scope !2067, !nonnull !6, !noundef !6
  %len.i.i15 = load i64, ptr %6, align 8, !alias.scope !2067, !noundef !6
  call void @llvm.experimental.noalias.scope.decl(metadata !2068)
  %_711.i.i.i16 = icmp eq i64 %len.i.i15, 0
  br i1 %_711.i.i.i16, label %bb4.i26, label %bb5.i.i.i17

bb5.i.i.i17:                                      ; preds = %bb24, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hde14ea688b292269E.exit.i.i.i24"
  %_3.sroa.0.012.i.i.i18 = phi i64 [ %14, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hde14ea688b292269E.exit.i.i.i24" ], [ 0, %bb24 ]
  %_6.i.i.i19 = getelementptr inbounds nuw %"alloc::string::String", ptr %_5.i.i14, i64 %_3.sroa.0.012.i.i.i18
  %14 = add nuw i64 %_3.sroa.0.012.i.i.i18, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !2071)
  call void @llvm.experimental.noalias.scope.decl(metadata !2074)
  call void @llvm.experimental.noalias.scope.decl(metadata !2077)
  call void @llvm.experimental.noalias.scope.decl(metadata !2080)
  call void @llvm.experimental.noalias.scope.decl(metadata !2083)
  %self1.i.i.i.i1.i.i.i.i.i20 = load i64, ptr %_6.i.i.i19, align 8, !range !25, !alias.scope !2086, !noalias !2089, !noundef !6
  %_6.i.i.i.i2.i.i.i.i.i21 = icmp eq i64 %self1.i.i.i.i1.i.i.i.i.i20, 0
  br i1 %_6.i.i.i.i2.i.i.i.i.i21, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hde14ea688b292269E.exit.i.i.i24", label %bb2.i.i.i3.i.i.i.i.i22

bb2.i.i.i3.i.i.i.i.i22:                           ; preds = %bb5.i.i.i17
  %15 = getelementptr inbounds nuw i8, ptr %_6.i.i.i19, i64 8
  %self3.i.i.i.i4.i.i.i.i.i23 = load ptr, ptr %15, align 8, !alias.scope !2086, !noalias !2089, !nonnull !6, !noundef !6
; call __rustc::__rust_dealloc
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i.i.i.i23, i64 noundef %self1.i.i.i.i1.i.i.i.i.i20, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !2091
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hde14ea688b292269E.exit.i.i.i24"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hde14ea688b292269E.exit.i.i.i24": ; preds = %bb2.i.i.i3.i.i.i.i.i22, %bb5.i.i.i17
  %_7.i.i.i25 = icmp eq i64 %14, %len.i.i15
  br i1 %_7.i.i.i25, label %bb4.i26, label %bb5.i.i.i17

bb4.i26:                                          ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hde14ea688b292269E.exit.i.i.i24", %bb24
  call void @llvm.experimental.noalias.scope.decl(metadata !2092)
  call void @llvm.experimental.noalias.scope.decl(metadata !2095)
  call void @llvm.experimental.noalias.scope.decl(metadata !2098)
  %self1.i.i.i.i1.i27 = load i64, ptr %arr, align 8, !range !25, !alias.scope !2101, !noalias !2104, !noundef !6
  %_6.i.i.i.i2.i28 = icmp eq i64 %self1.i.i.i.i1.i27, 0
  br i1 %_6.i.i.i.i2.i28, label %bb7, label %bb2.i.i.i3.i29

bb2.i.i.i3.i29:                                   ; preds = %bb4.i26
  %16 = mul nuw i64 %self1.i.i.i.i1.i27, 24
; call __rustc::__rust_dealloc
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_5.i.i14, i64 noundef %16, i64 noundef range(i64 1, -9223372036854775807) 8) #25, !noalias !2106
  br label %bb7

bb23:                                             ; preds = %bb23.preheader, %"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17hb310ef864bb1eccdE.exit"
  %_10.i.i115 = phi ptr [ %_10.i.i, %"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17hb310ef864bb1eccdE.exit" ], [ inttoptr (i64 1 to ptr), %bb23.preheader ]
  %len.i.i.i = phi i64 [ %21, %"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17hb310ef864bb1eccdE.exit" ], [ 0, %bb23.preheader ]
  %iter2.sroa.0.092 = phi i64 [ %17, %"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17hb310ef864bb1eccdE.exit" ], [ 0, %bb23.preheader ]
  %17 = add nuw nsw i64 %iter2.sroa.0.092, 1
  %_59 = load i64, ptr %6, align 8, !noundef !6
  %_62 = icmp ult i64 %iter2.sroa.0.092, %_59
  br i1 %_62, label %bb25, label %panic

bb7:                                              ; preds = %bb2.i.i.i3.i29, %bb4.i26
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %arr)
  call void @llvm.experimental.noalias.scope.decl(metadata !2107)
  call void @llvm.experimental.noalias.scope.decl(metadata !2110)
  call void @llvm.experimental.noalias.scope.decl(metadata !2113)
  call void @llvm.experimental.noalias.scope.decl(metadata !2116)
  call void @llvm.experimental.noalias.scope.decl(metadata !2119)
  %self1.i.i.i.i1.i.i31 = load i64, ptr %s, align 8, !range !25, !alias.scope !2122, !noalias !2125, !noundef !6
  %_6.i.i.i.i2.i.i32 = icmp eq i64 %self1.i.i.i.i1.i.i31, 0
  br i1 %_6.i.i.i.i2.i.i32, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hde14ea688b292269E.exit35", label %bb2.i.i.i3.i.i33

bb2.i.i.i3.i.i33:                                 ; preds = %bb7
  %18 = getelementptr inbounds nuw i8, ptr %s, i64 8
  %self3.i.i.i.i4.i.i34 = load ptr, ptr %18, align 8, !alias.scope !2122, !noalias !2125, !nonnull !6, !noundef !6
; call __rustc::__rust_dealloc
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i34, i64 noundef %self1.i.i.i.i1.i.i31, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !2127
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hde14ea688b292269E.exit35"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hde14ea688b292269E.exit35": ; preds = %bb7, %bb2.i.i.i3.i.i33
  ret void

bb25:                                             ; preds = %bb23
  %_60 = load ptr, ptr %5, align 8, !nonnull !6, !noundef !6
  %_28 = getelementptr inbounds nuw %"alloc::string::String", ptr %_60, i64 %iter2.sroa.0.092
  %19 = getelementptr inbounds nuw i8, ptr %_28, i64 8
  %_66 = load ptr, ptr %19, align 8, !nonnull !6, !noundef !6
  %20 = getelementptr inbounds nuw i8, ptr %_28, i64 16
  %_65 = load i64, ptr %20, align 8, !noundef !6
  call void @llvm.experimental.noalias.scope.decl(metadata !2128)
  call void @llvm.experimental.noalias.scope.decl(metadata !2131)
  %self2.i.i.i = load i64, ptr %res, align 8, !range !25, !alias.scope !2134, !noundef !6
  %_9.i.i.i = sub i64 %self2.i.i.i, %len.i.i.i
  %_7.i.i.i36 = icmp ugt i64 %_65, %_9.i.i.i
  br i1 %_7.i.i.i36, label %bb1.i.i.i, label %"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17hb310ef864bb1eccdE.exit", !prof !1374

bb1.i.i.i:                                        ; preds = %bb25
; invoke alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h04c59fec06b0f096E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %res, i64 noundef %len.i.i.i, i64 noundef %_65)
          to label %.noexc38 unwind label %cleanup4.loopexit

.noexc38:                                         ; preds = %bb1.i.i.i
  %len.pre.i.i = load i64, ptr %_53.sroa.5.0.res.sroa_idx, align 8, !alias.scope !2137
  %_10.i.i.pre = load ptr, ptr %_53.sroa.4.0.res.sroa_idx, align 8, !alias.scope !2137
  br label %"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17hb310ef864bb1eccdE.exit"

"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17hb310ef864bb1eccdE.exit": ; preds = %bb25, %.noexc38
  %_10.i.i = phi ptr [ %_10.i.i115, %bb25 ], [ %_10.i.i.pre, %.noexc38 ]
  %len.i.i37 = phi i64 [ %len.i.i.i, %bb25 ], [ %len.pre.i.i, %.noexc38 ]
  %_9.i.i = icmp sgt i64 %len.i.i37, -1
  call void @llvm.assume(i1 %_9.i.i)
  %dst.i.i = getelementptr inbounds nuw i8, ptr %_10.i.i, i64 %len.i.i37
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %dst.i.i, ptr nonnull readonly align 1 %_66, i64 %_65, i1 false), !noalias !2137
  %21 = add i64 %len.i.i37, %_65
  store i64 %21, ptr %_53.sroa.5.0.res.sroa_idx, align 8
  %exitcond109.not = icmp eq i64 %17, %umax
  br i1 %exitcond109.not, label %bb24, label %bb23

panic:                                            ; preds = %bb23
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %iter2.sroa.0.092, i64 noundef %_59, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_4cce44244d9639ad41a74bd16b875a27) #27
          to label %unreachable unwind label %cleanup4.loopexit.split-lp

cleanup4.loopexit:                                ; preds = %bb1.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %cleanup4

cleanup4.loopexit.split-lp:                       ; preds = %panic
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %cleanup4

cleanup4:                                         ; preds = %cleanup4.loopexit.split-lp, %cleanup4.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %cleanup4.loopexit ], [ %lpad.loopexit.split-lp, %cleanup4.loopexit.split-lp ]
  call void @llvm.experimental.noalias.scope.decl(metadata !2138)
  call void @llvm.experimental.noalias.scope.decl(metadata !2141)
  call void @llvm.experimental.noalias.scope.decl(metadata !2144)
  call void @llvm.experimental.noalias.scope.decl(metadata !2147)
  call void @llvm.experimental.noalias.scope.decl(metadata !2150)
  %self1.i.i.i.i1.i.i39 = load i64, ptr %res, align 8, !range !25, !alias.scope !2153, !noalias !2156, !noundef !6
  %_6.i.i.i.i2.i.i40 = icmp eq i64 %self1.i.i.i.i1.i.i39, 0
  br i1 %_6.i.i.i.i2.i.i40, label %bb10, label %bb2.i.i.i3.i.i41

bb2.i.i.i3.i.i41:                                 ; preds = %cleanup4
  %self3.i.i.i.i4.i.i42 = load ptr, ptr %_53.sroa.4.0.res.sroa_idx, align 8, !alias.scope !2153, !noalias !2156, !nonnull !6, !noundef !6
; call __rustc::__rust_dealloc
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i42, i64 noundef %self1.i.i.i.i1.i.i39, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !2158
  br label %bb10

unreachable:                                      ; preds = %bb18, %panic
  unreachable

bb2.i:                                            ; preds = %bb2.i.lr.ph, %bb21
  %iter.sroa.0.086 = phi i64 [ 1, %bb2.i.lr.ph ], [ %spec.select67, %bb21 ]
  %_0.i3.i = icmp uge i64 %iter.sroa.0.086, %_11
  %not._0.i3.i = xor i1 %_0.i3.i, true
  %_0.i4.i = zext i1 %not._0.i3.i to i64
  %spec.select67 = add nuw i64 %iter.sroa.0.086, %_0.i4.i
  %_21 = add i64 %iter.sroa.0.086, %iter1.sroa.0.089
  %_3.not.i = icmp ugt i64 %iter1.sroa.0.089, %_21
  br i1 %_3.not.i, label %bb18, label %bb1.i

bb1.i:                                            ; preds = %bb2.i
  br i1 %_11.i, label %bb2.i51, label %bb13.i

bb13.i:                                           ; preds = %bb1.i
  %self.i = load i8, ptr %9, align 1, !alias.scope !2159, !noundef !6
  %22 = icmp sgt i8 %self.i, -65
  br i1 %22, label %bb2.i51, label %bb18

bb2.i51:                                          ; preds = %bb13.i, %bb1.i
  %_18.i = icmp eq i64 %_21, 0
  br i1 %_18.i, label %bb19, label %bb15.i

bb15.i:                                           ; preds = %bb2.i51
  %_19.not.i = icmp ult i64 %_21, %n
  br i1 %_19.not.i, label %bb19.i, label %bb16.i

bb16.i:                                           ; preds = %bb15.i
  %23 = icmp eq i64 %_21, %n
  br i1 %23, label %bb19, label %bb18

bb19.i:                                           ; preds = %bb15.i
  %24 = getelementptr inbounds nuw i8, ptr %_44, i64 %_21
  %self2.i = load i8, ptr %24, align 1, !alias.scope !2159, !noundef !6
  %25 = icmp sgt i8 %self2.i, -65
  br i1 %25, label %bb19, label %bb18

bb19:                                             ; preds = %bb19.i, %bb16.i, %bb2.i51
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !2162
; call __rustc::__rust_alloc
  %26 = call noundef ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %iter.sroa.0.086, i64 noundef range(i64 1, 9) 1) #25, !noalias !2162
  %27 = icmp eq ptr %26, null
  br i1 %27, label %bb3.i.i, label %bb20

bb3.i.i:                                          ; preds = %bb19
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %iter.sroa.0.086) #27
          to label %.noexc52 unwind label %cleanup3

.noexc52:                                         ; preds = %bb3.i.i
  unreachable

bb18:                                             ; preds = %bb19.i, %bb13.i, %bb2.i, %bb16.i
; invoke core::str::slice_error_fail
  invoke void @_ZN4core3str16slice_error_fail17h4678567854dd8858E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %_44, i64 noundef %n, i64 noundef %iter1.sroa.0.089, i64 noundef %_21, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_04774e36529a2f0ec64e4c14b859aaab) #27
          to label %unreachable unwind label %cleanup3

bb20:                                             ; preds = %bb19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %26, ptr noundef nonnull readonly align 1 dereferenceable(1) %9, i64 range(i64 0, -9223372036854775808) %iter.sroa.0.086, i1 false), !noalias !2168
  %len.i = load i64, ptr %6, align 8, !alias.scope !2169, !noalias !2172, !noundef !6
  %self1.i = load i64, ptr %arr, align 8, !range !25, !alias.scope !2169, !noalias !2172, !noundef !6
  %_4.i = icmp eq i64 %len.i, %self1.i
  br i1 %_4.i, label %bb1.i54, label %bb21

bb1.i54:                                          ; preds = %bb20
; invoke alloc::raw_vec::RawVec<T,A>::grow_one
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17he6449fc15ab6cfeaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %arr)
          to label %bb21 unwind label %cleanup.i, !noalias !2172

cleanup.i:                                        ; preds = %bb1.i54
  %28 = landingpad { ptr, i32 }
          cleanup
; call __rustc::__rust_dealloc
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %26, i64 noundef %iter.sroa.0.086, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !2174
  br label %bb10

bb21:                                             ; preds = %bb1.i54, %bb20
  %_15.i = load ptr, ptr %5, align 8, !alias.scope !2169, !noalias !2172, !nonnull !6, !noundef !6
  %end.i = getelementptr inbounds nuw %"alloc::string::String", ptr %_15.i, i64 %len.i
  store i64 %iter.sroa.0.086, ptr %end.i, align 8
  %_18.sroa.5.0.end.i.sroa_idx = getelementptr inbounds nuw i8, ptr %end.i, i64 8
  store ptr %26, ptr %_18.sroa.5.0.end.i.sroa_idx, align 8
  %_18.sroa.6.0.end.i.sroa_idx = getelementptr inbounds nuw i8, ptr %end.i, i64 16
  store i64 %iter.sroa.0.086, ptr %_18.sroa.6.0.end.i.sroa_idx, align 8
  %29 = add i64 %len.i, 1
  store i64 %29, ptr %6, align 8, !alias.scope !2169, !noalias !2172
  %_0.i.not.i = icmp ugt i64 %spec.select67, %_11
  %or.cond = select i1 %_0.i3.i, i1 true, i1 %_0.i.not.i
  br i1 %or.cond, label %bb1.loopexit, label %bb2.i

bb12:                                             ; preds = %bb2.i.i.i3.i.i, %bb11
  resume { ptr, i32 } %.pn.pn
}
