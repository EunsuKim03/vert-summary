define void @f_gold(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_0, ptr dead_on_return noalias noundef align 8 captures(address) dereferenceable(24) %str) unnamed_addr #4 personality ptr @rust_eh_personality {
start:
  %compare.i = alloca [0 x i8], align 1
  %is_less.i.i = alloca [8 x i8], align 8
  %_5 = alloca [24 x i8], align 8
  %arr = alloca [24 x i8], align 8
  %0 = getelementptr inbounds nuw i8, ptr %str, i64 16
  %n = load i64, ptr %0, align 8, !noundef !6
  %_18 = icmp sgt i64 %n, -1
  tail call void @llvm.assume(i1 %_18)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %arr)
  %_21.0.i.i.i = mul i64 %n, 24
  %or.cond.i.i.i = icmp samesign ugt i64 %n, 384307168202282325
  br i1 %or.cond.i.i.i, label %bb3.i, label %bb17.i.i, !prof !598

bb17.i.i:                                         ; preds = %start
  %_8.i.i = icmp eq i64 %_21.0.i.i.i, 0
  br i1 %_8.i.i, label %bb14, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i": ; preds = %bb17.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !1793
; call __rustc::__rust_alloc
  %1 = tail call noundef align 8 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, 9) 8) #25, !noalias !1793
  %2 = icmp eq ptr %1, null
  br i1 %2, label %bb3.i, label %bb14

bb3.i:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i", %start
  %_4.sroa.4.0.ph.i = phi i64 [ 8, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i" ], [ 0, %start ]
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_4.sroa.4.0.ph.i, i64 %_21.0.i.i.i) #27
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %bb3.i
  unreachable

bb12:                                             ; preds = %bb11, %cleanup
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb11 ], [ %4, %cleanup ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1796)
  call void @llvm.experimental.noalias.scope.decl(metadata !1799)
  call void @llvm.experimental.noalias.scope.decl(metadata !1802)
  call void @llvm.experimental.noalias.scope.decl(metadata !1805)
  call void @llvm.experimental.noalias.scope.decl(metadata !1808)
  %self1.i.i.i.i1.i.i = load i64, ptr %str, align 8, !range !25, !alias.scope !1811, !noalias !1814, !noundef !6
  %_6.i.i.i.i2.i.i = icmp eq i64 %self1.i.i.i.i1.i.i, 0
  br i1 %_6.i.i.i.i2.i.i, label %bb13, label %bb2.i.i.i3.i.i

bb2.i.i.i3.i.i:                                   ; preds = %bb12
  %3 = getelementptr inbounds nuw i8, ptr %str, i64 8
  %self3.i.i.i.i4.i.i = load ptr, ptr %3, align 8, !alias.scope !1811, !noalias !1814, !nonnull !6, !noundef !6
; call __rustc::__rust_dealloc
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i, i64 noundef %self1.i.i.i.i1.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !1816
  br label %bb13

cleanup:                                          ; preds = %bb3.i
  %4 = landingpad { ptr, i32 }
          cleanup
  br label %bb12

bb14:                                             ; preds = %bb17.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i"
  %_4.sroa.4.0.i = phi i64 [ 0, %bb17.i.i ], [ %n, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i" ]
  %_4.sroa.10.0.i = phi ptr [ inttoptr (i64 8 to ptr), %bb17.i.i ], [ %1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i" ]
  %_7.i = icmp samesign ule i64 %n, %_4.sroa.4.0.i
  tail call void @llvm.assume(i1 %_7.i)
  store i64 %_4.sroa.4.0.i, ptr %arr, align 8
  %5 = getelementptr inbounds nuw i8, ptr %arr, i64 8
  store ptr %_4.sroa.10.0.i, ptr %5, align 8
  %6 = getelementptr inbounds nuw i8, ptr %arr, i64 16
  store i64 0, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_5)
; invoke <alloc::string::String as core::clone::Clone>::clone
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h3201baa471bff1abE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_5, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %str)
          to label %bb1 unwind label %cleanup1

bb11:                                             ; preds = %bb2.i.i.i3.i.i13, %cleanup2.body, %cleanup.i, %bb2.i.i.i3.i.i.i, %cleanup1
  %.pn = phi { ptr, i32 } [ %7, %cleanup1 ], [ %10, %bb2.i.i.i3.i.i.i ], [ %10, %cleanup.i ], [ %eh.lpad-body33, %cleanup2.body ], [ %eh.lpad-body33, %bb2.i.i.i3.i.i13 ]
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::string::String>>
  call fastcc void @"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17ha5714b0b3d45e72aE"(ptr noalias noundef align 8 dereferenceable(24) %arr) #28
  br label %bb12

cleanup1:                                         ; preds = %bb14
  %7 = landingpad { ptr, i32 }
          cleanup
  br label %bb11

bb1:                                              ; preds = %bb14
  %8 = getelementptr inbounds nuw i8, ptr %str, i64 8
  %_24 = load ptr, ptr %8, align 8, !nonnull !6, !noundef !6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1817)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1820)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1822)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1825)
  %9 = getelementptr inbounds nuw i8, ptr %_5, i64 16
  %len.i.i.i.i = load i64, ptr %9, align 8, !alias.scope !1828, !noalias !1831, !noundef !6
  %self2.i.i.i.i = load i64, ptr %_5, align 8, !range !25, !alias.scope !1828, !noalias !1831, !noundef !6
  %_9.i.i.i.i = sub i64 %self2.i.i.i.i, %len.i.i.i.i
  %_7.i.i.i.i = icmp ugt i64 %n, %_9.i.i.i.i
  br i1 %_7.i.i.i.i, label %bb1.i.i.i.i, label %bb2, !prof !1346

bb1.i.i.i.i:                                      ; preds = %bb1
; invoke alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h564a5fae3007f3f8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %_5, i64 noundef %len.i.i.i.i, i64 noundef %n)
          to label %.noexc.i unwind label %cleanup.i

.noexc.i:                                         ; preds = %bb1.i.i.i.i
  %len.pre.i.i.i = load i64, ptr %9, align 8, !alias.scope !1833, !noalias !1831
  %concat.sroa.0.0.copyload.pre = load i64, ptr %_5, align 8, !alias.scope !1834, !noalias !1835
  br label %bb2

cleanup.i:                                        ; preds = %bb1.i.i.i.i
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1836)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1839)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1842)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1845)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1848)
  %self1.i.i.i.i1.i.i.i = load i64, ptr %_5, align 8, !range !25, !alias.scope !1851, !noalias !1854, !noundef !6
  %_6.i.i.i.i2.i.i.i = icmp eq i64 %self1.i.i.i.i1.i.i.i, 0
  br i1 %_6.i.i.i.i2.i.i.i, label %bb11, label %bb2.i.i.i3.i.i.i

bb2.i.i.i3.i.i.i:                                 ; preds = %cleanup.i
  %11 = getelementptr inbounds nuw i8, ptr %_5, i64 8
  %self3.i.i.i.i4.i.i.i = load ptr, ptr %11, align 8, !alias.scope !1851, !noalias !1854, !nonnull !6, !noundef !6
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i.i, i64 noundef %self1.i.i.i.i1.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !1856
  br label %bb11

bb2:                                              ; preds = %.noexc.i, %bb1
  %concat.sroa.0.0.copyload = phi i64 [ %self2.i.i.i.i, %bb1 ], [ %concat.sroa.0.0.copyload.pre, %.noexc.i ]
  %len.i.i.i = phi i64 [ %len.i.i.i.i, %bb1 ], [ %len.pre.i.i.i, %.noexc.i ]
  %_9.i.i.i = icmp sgt i64 %len.i.i.i, -1
  tail call void @llvm.assume(i1 %_9.i.i.i)
  %12 = getelementptr inbounds nuw i8, ptr %_5, i64 8
  %_10.i.i.i = load ptr, ptr %12, align 8, !alias.scope !1833, !noalias !1831, !nonnull !6, !noundef !6
  %dst.i.i.i = getelementptr inbounds nuw i8, ptr %_10.i.i.i, i64 %len.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %dst.i.i.i, ptr nonnull readonly align 1 %_24, i64 %n, i1 false), !noalias !1857
  %13 = add nuw i64 %len.i.i.i, %n
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_5)
  %_2645.not = icmp eq i64 %n, 0
  br i1 %_2645.not, label %bb2.bb16_crit_edge, label %bb15.i.peel

bb2.bb16_crit_edge:                               ; preds = %bb2
  %_40.pre = load i64, ptr %6, align 8
  br label %bb16

bb15.i.peel:                                      ; preds = %bb2
  %_19.not.i.peel.not = icmp eq i64 %len.i.i.i, 0
  br i1 %_19.not.i.peel.not, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i.i.peel", label %bb19.i.peel

bb19.i.peel:                                      ; preds = %bb15.i.peel
  %14 = getelementptr inbounds nuw i8, ptr %_10.i.i.i, i64 %n
  %self2.i.peel = load i8, ptr %14, align 1, !alias.scope !1858, !noundef !6
  %15 = icmp sgt i8 %self2.i.peel, -65
  br i1 %15, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i.i.peel", label %bb18

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i.i.peel": ; preds = %bb15.i.peel, %bb19.i.peel
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !1861
; call __rustc::__rust_alloc
  %16 = tail call noundef ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %n, i64 noundef range(i64 1, 9) 1) #25, !noalias !1861
  %17 = icmp eq ptr %16, null
  br i1 %17, label %bb3.i.i, label %bb20.peel

bb20.peel:                                        ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i.i.peel"
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %16, ptr nonnull readonly align 1 %_10.i.i.i, i64 range(i64 0, -9223372036854775808) %n, i1 false), !noalias !1867
  %len.i.peel = load i64, ptr %6, align 8, !alias.scope !1868, !noalias !1871, !noundef !6
  %self1.i.peel = load i64, ptr %arr, align 8, !range !25, !alias.scope !1868, !noalias !1871, !noundef !6
  %_4.i.peel = icmp eq i64 %len.i.peel, %self1.i.peel
  br i1 %_4.i.peel, label %bb1.i.peel, label %bb21.peel

bb1.i.peel:                                       ; preds = %bb20.peel
; invoke alloc::raw_vec::RawVec<T,A>::grow_one
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17he6449fc15ab6cfeaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %arr)
          to label %bb21.peel unwind label %bb5.i.loopexit.split-lp, !noalias !1871

bb21.peel:                                        ; preds = %bb1.i.peel, %bb20.peel
  %_15.i.peel = load ptr, ptr %5, align 8, !alias.scope !1868, !noalias !1871, !nonnull !6, !noundef !6
  %end.i.peel = getelementptr inbounds nuw %"alloc::string::String", ptr %_15.i.peel, i64 %len.i.peel
  store i64 %n, ptr %end.i.peel, align 8
  %_11.sroa.5.0.end.i.sroa_idx.peel = getelementptr inbounds nuw i8, ptr %end.i.peel, i64 8
  store ptr %16, ptr %_11.sroa.5.0.end.i.sroa_idx.peel, align 8
  %_11.sroa.6.0.end.i.sroa_idx.peel = getelementptr inbounds nuw i8, ptr %end.i.peel, i64 16
  store i64 %n, ptr %_11.sroa.6.0.end.i.sroa_idx.peel, align 8
  %18 = add i64 %len.i.peel, 1
  store i64 %18, ptr %6, align 8, !alias.scope !1868, !noalias !1871
  %exitcond.peel.not = icmp eq i64 %n, 1
  br i1 %exitcond.peel.not, label %bb16, label %bb9.i

bb16:                                             ; preds = %bb21, %bb21.peel, %bb2.bb16_crit_edge
  %_40 = phi i64 [ %_40.pre, %bb2.bb16_crit_edge ], [ %18, %bb21.peel ], [ %31, %bb21 ]
  %_41 = load ptr, ptr %5, align 8, !nonnull !6, !noundef !6
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %compare.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !1873
  store ptr %compare.i, ptr %is_less.i.i, align 8, !noalias !1876
  %b.i.i = icmp samesign ult i64 %_40, 2
  br i1 %b.i.i, label %bb5, label %bb7.i.i, !prof !1880

bb7.i.i:                                          ; preds = %bb16
  %b1.i.i = icmp samesign ult i64 %_40, 21
  br i1 %b1.i.i, label %bb9.i.i, label %bb10.i.i8, !prof !1880

bb10.i.i8:                                        ; preds = %bb7.i.i
; invoke core::slice::sort::stable::driftsort_main
  invoke void @_ZN4core5slice4sort6stable14driftsort_main17hb21a17c31e7d60c9E(ptr noalias noundef nonnull align 8 %_41, i64 noundef range(i64 0, 384307168202282326) %_40, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less.i.i)
          to label %bb5 unwind label %cleanup2

bb9.i.i:                                          ; preds = %bb7.i.i
; call core::slice::sort::shared::smallsort::insertion_sort_shift_left
  call fastcc void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17hd9613328857599b6E(ptr noalias noundef nonnull align 8 %_41, i64 noundef range(i64 0, 384307168202282326) %_40)
  br label %bb5

bb9.i:                                            ; preds = %bb21.peel, %bb21
  %iter.sroa.0.046 = phi i64 [ %19, %bb21 ], [ 1, %bb21.peel ]
  %19 = add nuw nsw i64 %iter.sroa.0.046, 1
  %_14 = add nuw i64 %iter.sroa.0.046, %n
  %20 = getelementptr inbounds nuw i8, ptr %_10.i.i.i, i64 %iter.sroa.0.046
  %self.i = load i8, ptr %20, align 1, !alias.scope !1858, !noundef !6
  %21 = icmp sgt i8 %self.i, -65
  br i1 %21, label %bb15.i, label %bb18

bb15.i:                                           ; preds = %bb9.i
  %_19.not.i = icmp samesign ult i64 %iter.sroa.0.046, %len.i.i.i
  br i1 %_19.not.i, label %bb19.i, label %bb16.i

bb16.i:                                           ; preds = %bb15.i
  %22 = icmp eq i64 %iter.sroa.0.046, %len.i.i.i
  br i1 %22, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i.i", label %bb18

bb19.i:                                           ; preds = %bb15.i
  %23 = getelementptr inbounds nuw i8, ptr %_10.i.i.i, i64 %_14
  %self2.i = load i8, ptr %23, align 1, !alias.scope !1858, !noundef !6
  %24 = icmp sgt i8 %self2.i, -65
  br i1 %24, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i.i", label %bb18

cleanup2:                                         ; preds = %bb3.i.i, %bb10.i.i8, %bb18, %bb22, %panic
  %25 = landingpad { ptr, i32 }
          cleanup
  br label %cleanup2.body

cleanup2.body:                                    ; preds = %bb5.i, %cleanup2
  %eh.lpad-body33 = phi { ptr, i32 } [ %25, %cleanup2 ], [ %lpad.phi, %bb5.i ]
  %_6.i.i.i.i2.i.i12 = icmp eq i64 %concat.sroa.0.0.copyload, 0
  br i1 %_6.i.i.i.i2.i.i12, label %bb11, label %bb2.i.i.i3.i.i13

bb2.i.i.i3.i.i13:                                 ; preds = %cleanup2.body
; call __rustc::__rust_dealloc
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_10.i.i.i, i64 noundef %concat.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !1881
  br label %bb11

bb5:                                              ; preds = %bb9.i.i, %bb16, %bb10.i.i8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !1873
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %compare.i)
  %_47 = load i64, ptr %6, align 8, !noundef !6
  %_50.not = icmp eq i64 %_47, 0
  br i1 %_50.not, label %panic, label %bb22

bb22:                                             ; preds = %bb5
  %_48 = load ptr, ptr %5, align 8, !nonnull !6, !noundef !6
; invoke <alloc::string::String as core::clone::Clone>::clone
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h3201baa471bff1abE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %_48)
          to label %bb6 unwind label %cleanup2

panic:                                            ; preds = %bb5
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_731aaa3b1d0e174abb75650cf8233bd4) #27
          to label %unreachable unwind label %cleanup2

unreachable:                                      ; preds = %bb18, %panic
  unreachable

bb6:                                              ; preds = %bb22
  %_6.i.i.i.i2.i.i17 = icmp eq i64 %concat.sroa.0.0.copyload, 0
  br i1 %_6.i.i.i.i2.i.i17, label %bb7, label %bb2.i.i.i3.i.i18

bb2.i.i.i3.i.i18:                                 ; preds = %bb6
; call __rustc::__rust_dealloc
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_10.i.i.i, i64 noundef %concat.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !1892
  br label %bb7

bb7:                                              ; preds = %bb2.i.i.i3.i.i18, %bb6
  call void @llvm.experimental.noalias.scope.decl(metadata !1903)
  call void @llvm.experimental.noalias.scope.decl(metadata !1906)
  %_5.i.i = load ptr, ptr %5, align 8, !alias.scope !1909, !nonnull !6, !noundef !6
  %len.i.i = load i64, ptr %6, align 8, !alias.scope !1909, !noundef !6
  call void @llvm.experimental.noalias.scope.decl(metadata !1910)
  %_711.i.i.i = icmp eq i64 %len.i.i, 0
  br i1 %_711.i.i.i, label %bb4.i, label %bb5.i.i.i

bb5.i.i.i:                                        ; preds = %bb7, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17heba7bfbe8384b04bE.exit.i.i.i"
  %_3.sroa.0.012.i.i.i = phi i64 [ %26, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17heba7bfbe8384b04bE.exit.i.i.i" ], [ 0, %bb7 ]
  %_6.i.i.i = getelementptr inbounds nuw %"alloc::string::String", ptr %_5.i.i, i64 %_3.sroa.0.012.i.i.i
  %26 = add nuw i64 %_3.sroa.0.012.i.i.i, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !1913)
  call void @llvm.experimental.noalias.scope.decl(metadata !1916)
  call void @llvm.experimental.noalias.scope.decl(metadata !1919)
  call void @llvm.experimental.noalias.scope.decl(metadata !1922)
  call void @llvm.experimental.noalias.scope.decl(metadata !1925)
  %self1.i.i.i.i1.i.i.i.i.i = load i64, ptr %_6.i.i.i, align 8, !range !25, !alias.scope !1928, !noalias !1931, !noundef !6
  %_6.i.i.i.i2.i.i.i.i.i = icmp eq i64 %self1.i.i.i.i1.i.i.i.i.i, 0
  br i1 %_6.i.i.i.i2.i.i.i.i.i, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17heba7bfbe8384b04bE.exit.i.i.i", label %bb2.i.i.i3.i.i.i.i.i

bb2.i.i.i3.i.i.i.i.i:                             ; preds = %bb5.i.i.i
  %27 = getelementptr inbounds nuw i8, ptr %_6.i.i.i, i64 8
  %self3.i.i.i.i4.i.i.i.i.i = load ptr, ptr %27, align 8, !alias.scope !1928, !noalias !1931, !nonnull !6, !noundef !6
; call __rustc::__rust_dealloc
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i.i.i.i, i64 noundef %self1.i.i.i.i1.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !1933
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17heba7bfbe8384b04bE.exit.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17heba7bfbe8384b04bE.exit.i.i.i": ; preds = %bb2.i.i.i3.i.i.i.i.i, %bb5.i.i.i
  %_7.i.i.i = icmp eq i64 %26, %len.i.i
  br i1 %_7.i.i.i, label %bb4.i, label %bb5.i.i.i

bb4.i:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17heba7bfbe8384b04bE.exit.i.i.i", %bb7
  call void @llvm.experimental.noalias.scope.decl(metadata !1934)
  call void @llvm.experimental.noalias.scope.decl(metadata !1937)
  call void @llvm.experimental.noalias.scope.decl(metadata !1940)
  %self1.i.i.i.i1.i = load i64, ptr %arr, align 8, !range !25, !alias.scope !1943, !noalias !1946, !noundef !6
  %_6.i.i.i.i2.i = icmp eq i64 %self1.i.i.i.i1.i, 0
  br i1 %_6.i.i.i.i2.i, label %bb8, label %bb2.i.i.i3.i

bb2.i.i.i3.i:                                     ; preds = %bb4.i
  %28 = mul nuw i64 %self1.i.i.i.i1.i, 24
; call __rustc::__rust_dealloc
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_5.i.i, i64 noundef %28, i64 noundef range(i64 1, -9223372036854775807) 8) #25, !noalias !1948
  br label %bb8

bb8:                                              ; preds = %bb2.i.i.i3.i, %bb4.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %arr)
  call void @llvm.experimental.noalias.scope.decl(metadata !1949)
  call void @llvm.experimental.noalias.scope.decl(metadata !1952)
  call void @llvm.experimental.noalias.scope.decl(metadata !1955)
  call void @llvm.experimental.noalias.scope.decl(metadata !1958)
  call void @llvm.experimental.noalias.scope.decl(metadata !1961)
  %self1.i.i.i.i1.i.i21 = load i64, ptr %str, align 8, !range !25, !alias.scope !1964, !noalias !1967, !noundef !6
  %_6.i.i.i.i2.i.i22 = icmp eq i64 %self1.i.i.i.i1.i.i21, 0
  br i1 %_6.i.i.i.i2.i.i22, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17heba7bfbe8384b04bE.exit25", label %bb2.i.i.i3.i.i23

bb2.i.i.i3.i.i23:                                 ; preds = %bb8
  %self3.i.i.i.i4.i.i24 = load ptr, ptr %8, align 8, !alias.scope !1964, !noalias !1967, !nonnull !6, !noundef !6
; call __rustc::__rust_dealloc
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i24, i64 noundef %self1.i.i.i.i1.i.i21, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !1969
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17heba7bfbe8384b04bE.exit25"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17heba7bfbe8384b04bE.exit25": ; preds = %bb8, %bb2.i.i.i3.i.i23
  ret void

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i.i": ; preds = %bb16.i, %bb19.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !1861
; call __rustc::__rust_alloc
  %29 = call noundef ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %n, i64 noundef range(i64 1, 9) 1) #25, !noalias !1861
  %30 = icmp eq ptr %29, null
  br i1 %30, label %bb3.i.i, label %bb20

bb3.i.i:                                          ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i.i", %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i.i.peel"
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %n) #27
          to label %.noexc26 unwind label %cleanup2

.noexc26:                                         ; preds = %bb3.i.i
  unreachable

bb18:                                             ; preds = %bb19.i, %bb9.i, %bb16.i, %bb19.i.peel
  %iter.sroa.0.046.lcssa = phi i64 [ 0, %bb19.i.peel ], [ %iter.sroa.0.046, %bb16.i ], [ %iter.sroa.0.046, %bb9.i ], [ %iter.sroa.0.046, %bb19.i ]
  %_14.lcssa = phi i64 [ %n, %bb19.i.peel ], [ %_14, %bb16.i ], [ %_14, %bb9.i ], [ %_14, %bb19.i ]
; invoke core::str::slice_error_fail
  invoke void @_ZN4core3str16slice_error_fail17h4678567854dd8858E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %_10.i.i.i, i64 noundef %13, i64 noundef %iter.sroa.0.046.lcssa, i64 noundef %_14.lcssa, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_ca685516a45432c9ecfc325128ac9b4c) #27
          to label %unreachable unwind label %cleanup2

bb20:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i.i"
  %data.i = getelementptr inbounds nuw i8, ptr %_10.i.i.i, i64 %iter.sroa.0.046
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %29, ptr nonnull readonly align 1 %data.i, i64 range(i64 0, -9223372036854775808) %n, i1 false), !noalias !1867
  %len.i = load i64, ptr %6, align 8, !alias.scope !1868, !noalias !1871, !noundef !6
  %self1.i = load i64, ptr %arr, align 8, !range !25, !alias.scope !1868, !noalias !1871, !noundef !6
  %_4.i = icmp eq i64 %len.i, %self1.i
  br i1 %_4.i, label %bb1.i, label %bb21

bb1.i:                                            ; preds = %bb20
; invoke alloc::raw_vec::RawVec<T,A>::grow_one
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17he6449fc15ab6cfeaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %arr)
          to label %bb21 unwind label %bb5.i.loopexit, !noalias !1871

bb5.i.loopexit:                                   ; preds = %bb1.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb5.i

bb5.i.loopexit.split-lp:                          ; preds = %bb1.i.peel
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb5.i

bb5.i:                                            ; preds = %bb5.i.loopexit.split-lp, %bb5.i.loopexit
  %.lcssa53 = phi ptr [ %29, %bb5.i.loopexit ], [ %16, %bb5.i.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %bb5.i.loopexit ], [ %lpad.loopexit.split-lp, %bb5.i.loopexit.split-lp ]
; call __rustc::__rust_dealloc
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %.lcssa53, i64 noundef %n, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !1970
  br label %cleanup2.body

bb21:                                             ; preds = %bb1.i, %bb20
  %_15.i = load ptr, ptr %5, align 8, !alias.scope !1868, !noalias !1871, !nonnull !6, !noundef !6
  %end.i = getelementptr inbounds nuw %"alloc::string::String", ptr %_15.i, i64 %len.i
  store i64 %n, ptr %end.i, align 8
  %_11.sroa.5.0.end.i.sroa_idx = getelementptr inbounds nuw i8, ptr %end.i, i64 8
  store ptr %29, ptr %_11.sroa.5.0.end.i.sroa_idx, align 8
  %_11.sroa.6.0.end.i.sroa_idx = getelementptr inbounds nuw i8, ptr %end.i, i64 16
  store i64 %n, ptr %_11.sroa.6.0.end.i.sroa_idx, align 8
  %31 = add i64 %len.i, 1
  store i64 %31, ptr %6, align 8, !alias.scope !1868, !noalias !1871
  %exitcond.not = icmp eq i64 %19, %n
  br i1 %exitcond.not, label %bb16, label %bb9.i, !llvm.loop !1981

bb13:                                             ; preds = %bb2.i.i.i3.i.i, %bb12
  resume { ptr, i32 } %.pn.pn
}
