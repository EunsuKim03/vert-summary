define noundef i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_16.i.i = alloca [24 x i8], align 8
  %jumps = alloca [24 x i8], align 8
  %arr = alloca [8 x i8], align 8
  store i64 %0, ptr %arr, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %jumps)
  %_4 = sext i32 %n to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1638)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1641)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1644
; call alloc::raw_vec::RawVecInner<A>::try_allocate_in
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_16.i.i, i64 noundef %_4, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4), !noalias !1644
  %_17.i.i = load i64, ptr %_16.i.i, align 8, !range !1031, !noalias !1644, !noundef !37
  %1 = trunc nuw i64 %_17.i.i to i1
  %2 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 8
  %err.0.i.i = load i64, ptr %2, align 8, !range !1032, !noalias !1644, !noundef !37
  %3 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 16
  br i1 %1, label %bb14.i.i, label %_ZN5alloc3vec9from_elem17hf753d264234264a7E.exit, !prof !1033

bb14.i.i:                                         ; preds = %start
  %err.1.i.i = load i64, ptr %3, align 8, !noalias !1644
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #26, !noalias !1644
  unreachable

_ZN5alloc3vec9from_elem17hf753d264234264a7E.exit: ; preds = %start
  %res.1.i.i = load ptr, ptr %3, align 8, !noalias !1644, !nonnull !37, !noundef !37
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1644
  store i64 %err.0.i.i, ptr %jumps, align 8, !alias.scope !1644
  %4 = getelementptr inbounds nuw i8, ptr %jumps, i64 8
  store ptr %res.1.i.i, ptr %4, align 8, !alias.scope !1644
  %5 = getelementptr inbounds nuw i8, ptr %jumps, i64 16
  store i64 %_4, ptr %5, align 8, !alias.scope !1644
  %_7 = add nsw i64 %_4, -1
  %_4.i.i.not = icmp eq i32 %n, 0
  br i1 %_4.i.i.not, label %panic.i.i49.invoke, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h100204178fc99c57E.exit"

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h100204178fc99c57E.exit": ; preds = %_ZN5alloc3vec9from_elem17hf753d264234264a7E.exit
  %_0.i.i = getelementptr inbounds nuw i32, ptr %res.1.i.i, i64 %_7
  store i32 0, ptr %_0.i.i, align 4
  %_11 = add i32 %n, -1
  %_0.i.i.i.i74 = icmp sgt i32 %_11, 0
  br i1 %_0.i.i.i.i74, label %bb8.preheader, label %bb9

bb8.preheader:                                    ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h100204178fc99c57E.exit"
  %6 = add i32 %n, -2
  br label %bb8

cleanup:                                          ; preds = %panic.i.i49.invoke, %panic
  %7 = landingpad { ptr, i32 }
          cleanup
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %jumps, i64 noundef 4, i64 noundef 4)
          to label %bb40 unwind label %terminate

bb8:                                              ; preds = %bb8.preheader, %bb36
  %_0.sroa.3.0.i.i.i78 = phi i32 [ %_0.sroa.3.0.i.i.i, %bb36 ], [ %6, %bb8.preheader ]
  %iter.sroa.4.177 = phi i32 [ %iter.sroa.4.1, %bb36 ], [ %6, %bb8.preheader ]
  %_19 = sext i32 %_0.sroa.3.0.i.i.i78 to i64
  %_20 = icmp ult i32 %_0.sroa.3.0.i.i.i78, 2
  br i1 %_20, label %bb10, label %panic

bb9:                                              ; preds = %bb36, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h100204178fc99c57E.exit"
  %len.i11 = load i64, ptr %5, align 8, !alias.scope !1645, !noalias !1648, !noundef !37
  %_4.i.i12.not = icmp eq i64 %len.i11, 0
  br i1 %_4.i.i12.not, label %panic.i.i49.invoke, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hfaa8230883010c71E.exit"

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hfaa8230883010c71E.exit": ; preds = %bb9
  %_6.i14 = load ptr, ptr %4, align 8, !alias.scope !1645, !noalias !1648, !nonnull !37, !noundef !37
  %_0 = load i32, ptr %_6.i14, align 4, !noundef !37
; call alloc::raw_vec::RawVecInner<A>::deallocate
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %jumps, i64 noundef 4, i64 noundef 4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %jumps)
  ret i32 %_0

bb10:                                             ; preds = %bb8
  %8 = getelementptr inbounds nuw i32, ptr %arr, i64 %_19
  %_18 = load i32, ptr %8, align 4, !noundef !37
  %_17 = icmp eq i32 %_18, 0
  br i1 %_17, label %bb11, label %bb14

panic:                                            ; preds = %bb8
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_19, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_e87b4aa6c1a014a5b27ea247b003662c) #26
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic
  unreachable

bb11:                                             ; preds = %bb10
  %len.i17 = load i64, ptr %5, align 8, !alias.scope !1650, !noalias !1653, !noundef !37
  %_4.i.i18 = icmp ugt i64 %len.i17, %_19
  br i1 %_4.i.i18, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h100204178fc99c57E.exit23", label %panic.i.i49.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h100204178fc99c57E.exit23": ; preds = %bb11
  %_6.i20 = load ptr, ptr %4, align 8, !alias.scope !1650, !noalias !1653, !nonnull !37, !noundef !37
  %_0.i.i21 = getelementptr inbounds nuw i32, ptr %_6.i20, i64 %_19
  store i32 2147483647, ptr %_0.i.i21, align 4
  br label %bb36

bb14:                                             ; preds = %bb10
  %9 = xor i32 %_0.sroa.3.0.i.i.i78, -1
  %_24 = add i32 %n, %9
  %_23.not = icmp slt i32 %_18, %_24
  br i1 %_23.not, label %bb17, label %bb15

bb17:                                             ; preds = %bb14
  %_30 = add nuw nsw i32 %_0.sroa.3.0.i.i.i78, 1
  %reass.add = shl nuw nsw i32 %_0.sroa.3.0.i.i.i78, 1
  %_32 = add i32 %_18, %reass.add
  %_0.sroa.0.0.i = tail call noundef i32 @llvm.smin.i32(i32 %_32, i32 %n)
  %_0.i.i.i69 = icmp slt i32 %_30, %_0.sroa.0.0.i
  br i1 %_0.i.i.i69, label %bb23.lr.ph, label %bb24

bb23.lr.ph:                                       ; preds = %bb17
  %len.i33 = load i64, ptr %5, align 8, !alias.scope !1655, !noalias !1658, !noundef !37
  %_6.i36 = load ptr, ptr %4, align 8, !nonnull !37
  %10 = or disjoint i32 %_0.sroa.3.0.i.i.i78, 2
  %11 = zext nneg i32 %10 to i64
  br label %bb23

bb15:                                             ; preds = %bb14
  %len.i24 = load i64, ptr %5, align 8, !alias.scope !1660, !noalias !1663, !noundef !37
  %_4.i.i25 = icmp ugt i64 %len.i24, %_19
  br i1 %_4.i.i25, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h100204178fc99c57E.exit30", label %panic.i.i49.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h100204178fc99c57E.exit30": ; preds = %bb15
  %_6.i27 = load ptr, ptr %4, align 8, !alias.scope !1660, !noalias !1663, !nonnull !37, !noundef !37
  %_0.i.i28 = getelementptr inbounds nuw i32, ptr %_6.i27, i64 %_19
  store i32 1, ptr %_0.i.i28, align 4
  br label %bb36

bb23:                                             ; preds = %bb23.lr.ph, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hfaa8230883010c71E.exit39"
  %indvars.iv = phi i64 [ %11, %bb23.lr.ph ], [ %indvars.iv.next, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hfaa8230883010c71E.exit39" ]
  %min.sroa.0.072 = phi i32 [ 2147483647, %bb23.lr.ph ], [ %spec.select62, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hfaa8230883010c71E.exit39" ]
  %iter1.sroa.0.071 = phi i32 [ %_30, %bb23.lr.ph ], [ %13, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hfaa8230883010c71E.exit39" ]
  %_44 = zext nneg i32 %iter1.sroa.0.071 to i64
  %_4.i.i34 = icmp ugt i64 %len.i33, %_44
  br i1 %_4.i.i34, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hfaa8230883010c71E.exit39", label %panic.i.i49.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hfaa8230883010c71E.exit39": ; preds = %bb23
  %_0.i.i37 = getelementptr inbounds nuw i32, ptr %_6.i36, i64 %_44
  %_41 = load i32, ptr %_0.i.i37, align 4, !noundef !37
  %spec.select62 = tail call i32 @llvm.smin.i32(i32 %min.sroa.0.072, i32 %_41)
  %12 = trunc nuw i64 %indvars.iv to i32
  %_0.i.i.i = icmp sgt i32 %_0.sroa.0.0.i, %12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %13 = trunc nuw i64 %indvars.iv to i32
  br i1 %_0.i.i.i, label %bb23, label %bb24

bb24:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hfaa8230883010c71E.exit39", %bb17
  %min.sroa.0.0.lcssa = phi i32 [ 2147483647, %bb17 ], [ %spec.select62, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hfaa8230883010c71E.exit39" ]
  %_48.not = icmp eq i32 %min.sroa.0.0.lcssa, 2147483647
  %len.i40 = load i64, ptr %5, align 8, !noalias !37, !noundef !37
  %_4.i.i41 = icmp ugt i64 %len.i40, %_19
  br i1 %_48.not, label %bb31, label %bb30

bb31:                                             ; preds = %bb24
  br i1 %_4.i.i41, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h100204178fc99c57E.exit46", label %panic.i.i49.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h100204178fc99c57E.exit46": ; preds = %bb31
  %_6.i43 = load ptr, ptr %4, align 8, !alias.scope !1665, !noalias !1668, !nonnull !37, !noundef !37
  %_0.i.i44 = getelementptr inbounds nuw i32, ptr %_6.i43, i64 %_19
  store i32 2147483647, ptr %_0.i.i44, align 4
  br label %bb36

bb30:                                             ; preds = %bb24
  br i1 %_4.i.i41, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h100204178fc99c57E.exit53", label %panic.i.i49.invoke

panic.i.i49.invoke:                               ; preds = %bb30, %bb31, %bb15, %bb11, %bb23, %_ZN5alloc3vec9from_elem17hf753d264234264a7E.exit, %bb9
  %14 = phi i64 [ 0, %bb9 ], [ %_7, %_ZN5alloc3vec9from_elem17hf753d264234264a7E.exit ], [ %_44, %bb23 ], [ %_19, %bb11 ], [ %_19, %bb15 ], [ %_19, %bb31 ], [ %_19, %bb30 ]
  %15 = phi i64 [ %len.i11, %bb9 ], [ %_4, %_ZN5alloc3vec9from_elem17hf753d264234264a7E.exit ], [ %len.i33, %bb23 ], [ %len.i40, %bb30 ], [ %len.i40, %bb31 ], [ %len.i24, %bb15 ], [ %len.i17, %bb11 ]
  %16 = phi ptr [ @alloc_860983f6b6fe46b5a79cf87bc55cf544, %bb9 ], [ @alloc_02c8a5bbb45a7759b873788dabc04fe1, %_ZN5alloc3vec9from_elem17hf753d264234264a7E.exit ], [ @alloc_ef0edacf03aaa8c94e576a24ec1a90ea, %bb23 ], [ @alloc_de6d0e5aa5b4d63b62e4eada8b0f727c, %bb30 ], [ @alloc_23cbb11e7242fcd05b4b16eab77c1b8f, %bb31 ], [ @alloc_8a99b88fe17d73a2021cbfc79d72a2de, %bb15 ], [ @alloc_27cf2f929f48d3e6c610894ac0f2af30, %bb11 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef range(i64 -2147483649, 2147483648) %14, i64 noundef range(i64 0, 2305843009213693952) %15, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %16) #25
          to label %panic.i.i49.cont unwind label %cleanup

panic.i.i49.cont:                                 ; preds = %panic.i.i49.invoke
  unreachable

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h100204178fc99c57E.exit53": ; preds = %bb30
  %_6.i50 = load ptr, ptr %4, align 8, !alias.scope !1670, !noalias !1673, !nonnull !37, !noundef !37
  %_0.i.i51 = getelementptr inbounds nuw i32, ptr %_6.i50, i64 %_19
  %17 = add nsw i32 %min.sroa.0.0.lcssa, 1
  store i32 %17, ptr %_0.i.i51, align 4
  br label %bb36

bb36:                                             ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h100204178fc99c57E.exit30", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h100204178fc99c57E.exit53", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h100204178fc99c57E.exit46", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h100204178fc99c57E.exit23"
  %_0.i.i.i.i = icmp sgt i32 %iter.sroa.4.177, 0
  %18 = add nsw i32 %iter.sroa.4.177, -1
  %iter.sroa.4.1 = select i1 %_0.i.i.i.i, i32 %18, i32 %iter.sroa.4.177
  %_0.sroa.3.0.i.i.i = select i1 %_0.i.i.i.i, i32 %18, i32 undef
  br i1 %_0.i.i.i.i, label %bb8, label %bb9

terminate:                                        ; preds = %cleanup
  %19 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #27
  unreachable

bb40:                                             ; preds = %cleanup
  resume { ptr, i32 } %7
}
