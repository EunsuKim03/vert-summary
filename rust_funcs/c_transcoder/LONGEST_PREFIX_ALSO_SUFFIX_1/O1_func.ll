define noundef range(i32 -2147483648, 1073741824) i32 @f_gold(ptr dead_on_return noalias noundef align 8 captures(address) dereferenceable(24) %s) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_16.i.i = alloca [24 x i8], align 8
  %_22 = alloca [16 x i8], align 8
  %_14 = alloca [16 x i8], align 8
  %lps = alloca [24 x i8], align 8
  %0 = getelementptr inbounds nuw i8, ptr %s, i64 16
  %_0.i = load i64, ptr %0, align 8, !alias.scope !1669, !noundef !15
  %_2.i = icmp sgt i64 %_0.i, -1
  tail call void @llvm.assume(i1 %_2.i)
  %n = trunc i64 %_0.i to i32
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %lps)
  %sext = shl i64 %_0.i, 32
  %_6 = ashr exact i64 %sext, 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1672)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1675)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1678
; invoke alloc::raw_vec::RawVecInner<A>::try_allocate_in
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_16.i.i, i64 noundef %_6, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4)
          to label %.noexc unwind label %cleanup

bb29:                                             ; preds = %cleanup1, %cleanup
  %.pn = phi { ptr, i32 } [ %1, %cleanup ], [ %12, %cleanup1 ]
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h04bbe786de44b4f6E"(ptr noalias noundef align 8 dereferenceable(24) %s) #31
          to label %common.resume unwind label %terminate

cleanup:                                          ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc274b1cae9e1e76aE.exit", %bb14.i.i, %start
  %1 = landingpad { ptr, i32 }
          cleanup
  br label %bb29

.noexc:                                           ; preds = %start
  %_17.i.i = load i64, ptr %_16.i.i, align 8, !range !1062, !noalias !1678, !noundef !15
  %2 = trunc nuw i64 %_17.i.i to i1
  %3 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 8
  %err.0.i.i = load i64, ptr %3, align 8, !range !1063, !noalias !1678, !noundef !15
  %4 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 16
  br i1 %2, label %bb14.i.i, label %_ZN5alloc3vec9from_elem17h74113d229b6ff91dE.exit, !prof !1064

bb14.i.i:                                         ; preds = %.noexc
  %err.1.i.i = load i64, ptr %4, align 8, !noalias !1678
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #29
          to label %.noexc14 unwind label %cleanup

.noexc14:                                         ; preds = %bb14.i.i
  unreachable

_ZN5alloc3vec9from_elem17h74113d229b6ff91dE.exit: ; preds = %.noexc
  %res.1.i.i = load ptr, ptr %4, align 8, !noalias !1678, !nonnull !15, !noundef !15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1678
  store i64 %err.0.i.i, ptr %lps, align 8, !alias.scope !1678
  %5 = getelementptr inbounds nuw i8, ptr %lps, i64 8
  store ptr %res.1.i.i, ptr %5, align 8, !alias.scope !1678
  %6 = getelementptr inbounds nuw i8, ptr %lps, i64 16
  store i64 %_6, ptr %6, align 8, !alias.scope !1678
  %_844 = icmp sgt i32 %n, 1
  br i1 %_844, label %bb4.lr.ph, label %bb21

bb4.lr.ph:                                        ; preds = %_ZN5alloc3vec9from_elem17h74113d229b6ff91dE.exit
  %7 = getelementptr inbounds nuw i8, ptr %s, i64 8
  %8 = getelementptr inbounds nuw i8, ptr %_14, i64 8
  %9 = getelementptr inbounds nuw i8, ptr %_22, i64 8
  br label %bb4

bb21:                                             ; preds = %bb20, %_ZN5alloc3vec9from_elem17h74113d229b6ff91dE.exit
  %sext12 = add i64 %sext, -4294967296
  %_46 = ashr exact i64 %sext12, 32
  %len.i = load i64, ptr %6, align 8, !alias.scope !1679, !noalias !1682, !noundef !15
  %_4.i.i = icmp ult i64 %_46, %len.i
  br i1 %_4.i.i, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc274b1cae9e1e76aE.exit", label %panic.i.i37.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc274b1cae9e1e76aE.exit": ; preds = %bb21
  %_6.i = load ptr, ptr %5, align 8, !alias.scope !1679, !noalias !1682, !nonnull !15, !noundef !15
  %_0.i.i = getelementptr inbounds nuw i32, ptr %_6.i, i64 %_46
  %res = load i32, ptr %_0.i.i, align 4, !noundef !15
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %lps, i64 noundef 4, i64 noundef 4)
          to label %bb26 unwind label %cleanup

bb4:                                              ; preds = %bb4.lr.ph, %bb20
  %i.sroa.0.046 = phi i32 [ 1, %bb4.lr.ph ], [ %i.sroa.0.1, %bb20 ]
  %len.sroa.0.045 = phi i32 [ 0, %bb4.lr.ph ], [ %len.sroa.0.1, %bb20 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_14)
  %_6.i.i = load ptr, ptr %7, align 8, !alias.scope !1684, !nonnull !15, !noundef !15
  %len.i.i = load i64, ptr %0, align 8, !alias.scope !1684, !noundef !15
  %_7.i = getelementptr inbounds nuw i8, ptr %_6.i.i, i64 %len.i.i
  store ptr %_6.i.i, ptr %_14, align 8
  store ptr %_7.i, ptr %8, align 8
  %_17 = sext i32 %i.sroa.0.046 to i64
; call core::iter::traits::iterator::Iterator::nth
  %10 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17hb5e69be51cd83c91E(ptr noalias noundef align 8 dereferenceable(16) %_14, i64 noundef %_17)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_22)
  store ptr %_6.i.i, ptr %_22, align 8
  store ptr %_7.i, ptr %9, align 8
  %_25 = sext i32 %len.sroa.0.045 to i64
; call core::iter::traits::iterator::Iterator::nth
  %11 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17hb5e69be51cd83c91E(ptr noalias noundef align 8 dereferenceable(16) %_22, i64 noundef %_25)
  %_0.sroa.0.0.shrunk.i = icmp eq i32 %11, %10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_22)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_14)
  br i1 %_0.sroa.0.0.shrunk.i, label %bb12, label %bb14

cleanup1:                                         ; preds = %panic.i.i37.invoke
  %12 = landingpad { ptr, i32 }
          cleanup
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %lps, i64 noundef 4, i64 noundef 4)
          to label %bb29 unwind label %terminate

bb26:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc274b1cae9e1e76aE.exit"
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %lps)
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %s)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h04bbe786de44b4f6E.exit" unwind label %cleanup.i.i

cleanup.i.i:                                      ; preds = %bb26
  %13 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %s)
          to label %common.resume unwind label %terminate.i.i

terminate.i.i:                                    ; preds = %cleanup.i.i
  %14 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #27
  unreachable

common.resume:                                    ; preds = %bb29, %cleanup.i.i
  %common.resume.op = phi { ptr, i32 } [ %13, %cleanup.i.i ], [ %.pn, %bb29 ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h04bbe786de44b4f6E.exit": ; preds = %bb26
  %15 = sdiv i32 %n, 2
  %spec.store.select = call i32 @llvm.smin.i32(i32 %res, i32 %15)
; call <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %s)
  ret i32 %spec.store.select

bb14:                                             ; preds = %bb4
  %_32.not = icmp eq i32 %len.sroa.0.045, 0
  br i1 %_32.not, label %bb17, label %bb15

bb12:                                             ; preds = %bb4
  %len.i22 = load i64, ptr %6, align 8, !alias.scope !1689, !noalias !1692, !noundef !15
  %_4.i.i23 = icmp ugt i64 %len.i22, %_17
  br i1 %_4.i.i23, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfeb0a21c955991c8E.exit", label %panic.i.i37.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfeb0a21c955991c8E.exit": ; preds = %bb12
  %_6.i25 = load ptr, ptr %5, align 8, !alias.scope !1689, !noalias !1692, !nonnull !15, !noundef !15
  %_0.i.i26 = getelementptr inbounds nuw i32, ptr %_6.i25, i64 %_17
  %16 = add i32 %len.sroa.0.045, 1
  store i32 %16, ptr %_0.i.i26, align 4
  %17 = add i32 %i.sroa.0.046, 1
  br label %bb20

bb17:                                             ; preds = %bb14
  %len.i28 = load i64, ptr %6, align 8, !alias.scope !1694, !noalias !1697, !noundef !15
  %_4.i.i29 = icmp ugt i64 %len.i28, %_17
  br i1 %_4.i.i29, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfeb0a21c955991c8E.exit34", label %panic.i.i37.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfeb0a21c955991c8E.exit34": ; preds = %bb17
  %_6.i31 = load ptr, ptr %5, align 8, !alias.scope !1694, !noalias !1697, !nonnull !15, !noundef !15
  %_0.i.i32 = getelementptr inbounds nuw i32, ptr %_6.i31, i64 %_17
  store i32 0, ptr %_0.i.i32, align 4
  %18 = add i32 %i.sroa.0.046, 1
  br label %bb20

bb15:                                             ; preds = %bb14
  %_38 = add i32 %len.sroa.0.045, -1
  %_37 = sext i32 %_38 to i64
  %len.i35 = load i64, ptr %6, align 8, !alias.scope !1699, !noalias !1702, !noundef !15
  %_4.i.i36 = icmp ugt i64 %len.i35, %_37
  br i1 %_4.i.i36, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc274b1cae9e1e76aE.exit41", label %panic.i.i37.invoke

panic.i.i37.invoke:                               ; preds = %bb15, %bb17, %bb12, %bb21
  %19 = phi i64 [ %_46, %bb21 ], [ %_37, %bb15 ], [ %_17, %bb17 ], [ %_17, %bb12 ]
  %20 = phi i64 [ %len.i, %bb21 ], [ %len.i35, %bb15 ], [ %len.i28, %bb17 ], [ %len.i22, %bb12 ]
  %21 = phi ptr [ @alloc_fd2faa64d19adc0e884b8094fad42c07, %bb21 ], [ @alloc_72ab731c9e7f3bca5a87868e9a8591c3, %bb15 ], [ @alloc_ed5c9eb177a539d661a7c5b60c424303, %bb17 ], [ @alloc_b0665e2c652c126cce50a4f75b1f7667, %bb12 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef range(i64 -2147483648, 2147483648) %19, i64 noundef range(i64 0, 2305843009213693952) %20, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %21) #28
          to label %panic.i.i37.cont unwind label %cleanup1

panic.i.i37.cont:                                 ; preds = %panic.i.i37.invoke
  unreachable

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc274b1cae9e1e76aE.exit41": ; preds = %bb15
  %_6.i38 = load ptr, ptr %5, align 8, !alias.scope !1699, !noalias !1702, !nonnull !15, !noundef !15
  %_0.i.i39 = getelementptr inbounds nuw i32, ptr %_6.i38, i64 %_37
  %22 = load i32, ptr %_0.i.i39, align 4, !noundef !15
  br label %bb20

bb20:                                             ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfeb0a21c955991c8E.exit34", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc274b1cae9e1e76aE.exit41", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfeb0a21c955991c8E.exit"
  %len.sroa.0.1 = phi i32 [ %16, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfeb0a21c955991c8E.exit" ], [ %22, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc274b1cae9e1e76aE.exit41" ], [ 0, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfeb0a21c955991c8E.exit34" ]
  %i.sroa.0.1 = phi i32 [ %17, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfeb0a21c955991c8E.exit" ], [ %i.sroa.0.046, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc274b1cae9e1e76aE.exit41" ], [ %18, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfeb0a21c955991c8E.exit34" ]
  %_8 = icmp slt i32 %i.sroa.0.1, %n
  br i1 %_8, label %bb4, label %bb21

terminate:                                        ; preds = %cleanup1, %bb29
  %23 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #27
  unreachable
}
