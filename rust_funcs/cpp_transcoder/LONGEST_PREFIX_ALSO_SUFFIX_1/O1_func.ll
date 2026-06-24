define noundef range(i32 -2147483648, 1073741824) i32 @f_gold(ptr dead_on_return noalias noundef align 8 captures(address) dereferenceable(24) %s) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_16.i.i = alloca [24 x i8], align 8
  %_24 = alloca [16 x i8], align 8
  %_16 = alloca [16 x i8], align 8
  %lps = alloca [24 x i8], align 8
  %0 = getelementptr inbounds nuw i8, ptr %s, i64 8
  %_6.i.i = load ptr, ptr %0, align 8, !alias.scope !1669, !nonnull !15, !noundef !15
  %1 = getelementptr inbounds nuw i8, ptr %s, i64 16
  %len.i.i = load i64, ptr %1, align 8, !alias.scope !1669, !noundef !15
  %_16.i = icmp ult i64 %len.i.i, 32
  br i1 %_16.i, label %bb5.i, label %bb6.i

bb31:                                             ; preds = %cleanup1, %cleanup
  %.pn = phi { ptr, i32 } [ %2, %cleanup ], [ %14, %cleanup1 ]
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h04bbe786de44b4f6E"(ptr noalias noundef align 8 dereferenceable(24) %s) #31
          to label %common.resume unwind label %terminate

cleanup:                                          ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc274b1cae9e1e76aE.exit", %bb14.i.i, %bb3, %bb5.i, %bb6.i
  %2 = landingpad { ptr, i32 }
          cleanup
  br label %bb31

bb6.i:                                            ; preds = %start
; invoke core::str::count::do_count_chars
  %3 = invoke noundef i64 @_ZN4core3str5count14do_count_chars17ha47530791183fc08E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %_6.i.i, i64 noundef %len.i.i)
          to label %bb3 unwind label %cleanup

bb5.i:                                            ; preds = %start
; invoke core::str::count::char_count_general_case
  %4 = invoke noundef i64 @_ZN4core3str5count23char_count_general_case17h450ebd30c3e2f550E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %_6.i.i, i64 noundef %len.i.i)
          to label %bb3 unwind label %cleanup

bb3:                                              ; preds = %bb6.i, %bb5.i
  %_0.sroa.0.0.i = phi i64 [ %3, %bb6.i ], [ %4, %bb5.i ]
  %n = trunc i64 %_0.sroa.0.0.i to i32
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %lps)
  %sext = shl i64 %_0.sroa.0.0.i, 32
  %_8 = ashr exact i64 %sext, 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1674)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1677)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1680
; invoke alloc::raw_vec::RawVecInner<A>::try_allocate_in
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_16.i.i, i64 noundef %_8, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4)
          to label %.noexc15 unwind label %cleanup

.noexc15:                                         ; preds = %bb3
  %_17.i.i = load i64, ptr %_16.i.i, align 8, !range !1062, !noalias !1680, !noundef !15
  %5 = trunc nuw i64 %_17.i.i to i1
  %6 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 8
  %err.0.i.i = load i64, ptr %6, align 8, !range !1063, !noalias !1680, !noundef !15
  %7 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 16
  br i1 %5, label %bb14.i.i, label %_ZN5alloc3vec9from_elem17h74113d229b6ff91dE.exit, !prof !1064

bb14.i.i:                                         ; preds = %.noexc15
  %err.1.i.i = load i64, ptr %7, align 8, !noalias !1680
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #29
          to label %.noexc16 unwind label %cleanup

.noexc16:                                         ; preds = %bb14.i.i
  unreachable

_ZN5alloc3vec9from_elem17h74113d229b6ff91dE.exit: ; preds = %.noexc15
  %res.1.i.i = load ptr, ptr %7, align 8, !noalias !1680, !nonnull !15, !noundef !15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1680
  store i64 %err.0.i.i, ptr %lps, align 8, !alias.scope !1680
  %8 = getelementptr inbounds nuw i8, ptr %lps, i64 8
  store ptr %res.1.i.i, ptr %8, align 8, !alias.scope !1680
  %9 = getelementptr inbounds nuw i8, ptr %lps, i64 16
  store i64 %_8, ptr %9, align 8, !alias.scope !1680
  %_1049 = icmp sgt i32 %n, 1
  br i1 %_1049, label %bb6.lr.ph, label %bb23

bb6.lr.ph:                                        ; preds = %_ZN5alloc3vec9from_elem17h74113d229b6ff91dE.exit
  %10 = getelementptr inbounds nuw i8, ptr %_16, i64 8
  %11 = getelementptr inbounds nuw i8, ptr %_24, i64 8
  br label %bb6

bb23:                                             ; preds = %bb22, %_ZN5alloc3vec9from_elem17h74113d229b6ff91dE.exit
  %sext12 = add i64 %sext, -4294967296
  %_48 = ashr exact i64 %sext12, 32
  %len.i = load i64, ptr %9, align 8, !alias.scope !1681, !noalias !1684, !noundef !15
  %_4.i.i = icmp ult i64 %_48, %len.i
  br i1 %_4.i.i, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc274b1cae9e1e76aE.exit", label %panic.i.i42.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc274b1cae9e1e76aE.exit": ; preds = %bb23
  %_6.i = load ptr, ptr %8, align 8, !alias.scope !1681, !noalias !1684, !nonnull !15, !noundef !15
  %_0.i.i = getelementptr inbounds nuw i32, ptr %_6.i, i64 %_48
  %res = load i32, ptr %_0.i.i, align 4, !noundef !15
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %lps, i64 noundef 4, i64 noundef 4)
          to label %bb28 unwind label %cleanup

bb6:                                              ; preds = %bb6.lr.ph, %bb22
  %i.sroa.0.051 = phi i32 [ 1, %bb6.lr.ph ], [ %i.sroa.0.1, %bb22 ]
  %len.sroa.0.050 = phi i32 [ 0, %bb6.lr.ph ], [ %len.sroa.0.1, %bb22 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_16)
  %_6.i.i18 = load ptr, ptr %0, align 8, !alias.scope !1686, !nonnull !15, !noundef !15
  %len.i.i19 = load i64, ptr %1, align 8, !alias.scope !1686, !noundef !15
  %_7.i23 = getelementptr inbounds nuw i8, ptr %_6.i.i18, i64 %len.i.i19
  store ptr %_6.i.i18, ptr %_16, align 8
  store ptr %_7.i23, ptr %10, align 8
  %_19 = sext i32 %i.sroa.0.051 to i64
; call core::iter::traits::iterator::Iterator::nth
  %12 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17hb5e69be51cd83c91E(ptr noalias noundef align 8 dereferenceable(16) %_16, i64 noundef %_19)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_24)
  store ptr %_6.i.i18, ptr %_24, align 8
  store ptr %_7.i23, ptr %11, align 8
  %_27 = sext i32 %len.sroa.0.050 to i64
; call core::iter::traits::iterator::Iterator::nth
  %13 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17hb5e69be51cd83c91E(ptr noalias noundef align 8 dereferenceable(16) %_24, i64 noundef %_27)
  %_0.sroa.0.0.shrunk.i = icmp eq i32 %13, %12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_24)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_16)
  br i1 %_0.sroa.0.0.shrunk.i, label %bb14, label %bb16

cleanup1:                                         ; preds = %panic.i.i42.invoke
  %14 = landingpad { ptr, i32 }
          cleanup
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %lps, i64 noundef 4, i64 noundef 4)
          to label %bb31 unwind label %terminate

bb28:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc274b1cae9e1e76aE.exit"
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %lps)
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %s)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h04bbe786de44b4f6E.exit" unwind label %cleanup.i.i

cleanup.i.i:                                      ; preds = %bb28
  %15 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %s)
          to label %common.resume unwind label %terminate.i.i

terminate.i.i:                                    ; preds = %cleanup.i.i
  %16 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #27
  unreachable

common.resume:                                    ; preds = %bb31, %cleanup.i.i
  %common.resume.op = phi { ptr, i32 } [ %15, %cleanup.i.i ], [ %.pn, %bb31 ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h04bbe786de44b4f6E.exit": ; preds = %bb28
  %17 = sdiv i32 %n, 2
  %spec.store.select = call i32 @llvm.smin.i32(i32 %res, i32 %17)
; call <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %s)
  ret i32 %spec.store.select

bb16:                                             ; preds = %bb6
  %_34.not = icmp eq i32 %len.sroa.0.050, 0
  br i1 %_34.not, label %bb19, label %bb17

bb14:                                             ; preds = %bb6
  %len.i27 = load i64, ptr %9, align 8, !alias.scope !1691, !noalias !1694, !noundef !15
  %_4.i.i28 = icmp ugt i64 %len.i27, %_19
  br i1 %_4.i.i28, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfeb0a21c955991c8E.exit", label %panic.i.i42.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfeb0a21c955991c8E.exit": ; preds = %bb14
  %_6.i30 = load ptr, ptr %8, align 8, !alias.scope !1691, !noalias !1694, !nonnull !15, !noundef !15
  %_0.i.i31 = getelementptr inbounds nuw i32, ptr %_6.i30, i64 %_19
  %18 = add i32 %len.sroa.0.050, 1
  store i32 %18, ptr %_0.i.i31, align 4
  %19 = add i32 %i.sroa.0.051, 1
  br label %bb22

bb19:                                             ; preds = %bb16
  %len.i33 = load i64, ptr %9, align 8, !alias.scope !1696, !noalias !1699, !noundef !15
  %_4.i.i34 = icmp ugt i64 %len.i33, %_19
  br i1 %_4.i.i34, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfeb0a21c955991c8E.exit39", label %panic.i.i42.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfeb0a21c955991c8E.exit39": ; preds = %bb19
  %_6.i36 = load ptr, ptr %8, align 8, !alias.scope !1696, !noalias !1699, !nonnull !15, !noundef !15
  %_0.i.i37 = getelementptr inbounds nuw i32, ptr %_6.i36, i64 %_19
  store i32 0, ptr %_0.i.i37, align 4
  %20 = add i32 %i.sroa.0.051, 1
  br label %bb22

bb17:                                             ; preds = %bb16
  %_40 = add i32 %len.sroa.0.050, -1
  %_39 = sext i32 %_40 to i64
  %len.i40 = load i64, ptr %9, align 8, !alias.scope !1701, !noalias !1704, !noundef !15
  %_4.i.i41 = icmp ugt i64 %len.i40, %_39
  br i1 %_4.i.i41, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc274b1cae9e1e76aE.exit46", label %panic.i.i42.invoke

panic.i.i42.invoke:                               ; preds = %bb17, %bb19, %bb14, %bb23
  %21 = phi i64 [ %_48, %bb23 ], [ %_39, %bb17 ], [ %_19, %bb19 ], [ %_19, %bb14 ]
  %22 = phi i64 [ %len.i, %bb23 ], [ %len.i40, %bb17 ], [ %len.i33, %bb19 ], [ %len.i27, %bb14 ]
  %23 = phi ptr [ @alloc_c0d73be9ff781baefb2ac78c1a1f8d54, %bb23 ], [ @alloc_15f87202fcb13c9640047ed6616b0f07, %bb17 ], [ @alloc_1fa378cb2577a50d99a25942c8b308ad, %bb19 ], [ @alloc_a9c1e9623626a70b25051ffee6ac9148, %bb14 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef range(i64 -2147483648, 2147483648) %21, i64 noundef range(i64 0, 2305843009213693952) %22, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %23) #28
          to label %panic.i.i42.cont unwind label %cleanup1

panic.i.i42.cont:                                 ; preds = %panic.i.i42.invoke
  unreachable

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc274b1cae9e1e76aE.exit46": ; preds = %bb17
  %_6.i43 = load ptr, ptr %8, align 8, !alias.scope !1701, !noalias !1704, !nonnull !15, !noundef !15
  %_0.i.i44 = getelementptr inbounds nuw i32, ptr %_6.i43, i64 %_39
  %24 = load i32, ptr %_0.i.i44, align 4, !noundef !15
  br label %bb22

bb22:                                             ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfeb0a21c955991c8E.exit39", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc274b1cae9e1e76aE.exit46", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfeb0a21c955991c8E.exit"
  %len.sroa.0.1 = phi i32 [ %18, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfeb0a21c955991c8E.exit" ], [ %24, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc274b1cae9e1e76aE.exit46" ], [ 0, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfeb0a21c955991c8E.exit39" ]
  %i.sroa.0.1 = phi i32 [ %19, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfeb0a21c955991c8E.exit" ], [ %i.sroa.0.051, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc274b1cae9e1e76aE.exit46" ], [ %20, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfeb0a21c955991c8E.exit39" ]
  %_10 = icmp slt i32 %i.sroa.0.1, %n
  br i1 %_10, label %bb6, label %bb23

terminate:                                        ; preds = %cleanup1, %bb31
  %25 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #27
  unreachable
}
