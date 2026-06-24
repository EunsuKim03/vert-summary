define noundef i32 @f_gold(i64 %0, i32 noundef %m, i32 noundef %V) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_16.i.i = alloca [24 x i8], align 8
  %table = alloca [24 x i8], align 8
  %coins = alloca [8 x i8], align 8
  store i64 %0, ptr %coins, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %table)
  %_6 = sext i32 %V to i64
  %_5 = add nsw i64 %_6, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1638)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1641)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1644
; call alloc::raw_vec::RawVecInner<A>::try_allocate_in
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_16.i.i, i64 noundef %_5, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4), !noalias !1644
  %_17.i.i = load i64, ptr %_16.i.i, align 8, !range !1031, !noalias !1644, !noundef !37
  %1 = trunc nuw i64 %_17.i.i to i1
  %2 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 8
  %err.0.i.i = load i64, ptr %2, align 8, !range !1032, !noalias !1644, !noundef !37
  %3 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 16
  br i1 %1, label %bb14.i.i, label %_ZN5alloc3vec9from_elem17h2f735ff09d10efcdE.exit, !prof !1033

bb14.i.i:                                         ; preds = %start
  %err.1.i.i = load i64, ptr %3, align 8, !noalias !1644
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #26, !noalias !1644
  unreachable

_ZN5alloc3vec9from_elem17h2f735ff09d10efcdE.exit: ; preds = %start
  %res.1.i.i = load ptr, ptr %3, align 8, !noalias !1644, !nonnull !37, !noundef !37
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1644
  store i64 %err.0.i.i, ptr %table, align 8, !alias.scope !1644
  %4 = getelementptr inbounds nuw i8, ptr %table, i64 8
  store ptr %res.1.i.i, ptr %4, align 8, !alias.scope !1644
  %5 = getelementptr inbounds nuw i8, ptr %table, i64 16
  store i64 %_5, ptr %5, align 8, !alias.scope !1644
  br label %bb4

cleanup:                                          ; preds = %panic.i.i42.invoke, %panic
  %6 = landingpad { ptr, i32 }
          cleanup
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %table, i64 noundef 4, i64 noundef 4)
          to label %bb35 unwind label %terminate

bb4:                                              ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hef3e05d00f2c089dE.exit", %_ZN5alloc3vec9from_elem17h2f735ff09d10efcdE.exit
  %iter.sroa.0.0 = phi i32 [ 1, %_ZN5alloc3vec9from_elem17h2f735ff09d10efcdE.exit ], [ %iter.sroa.0.1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hef3e05d00f2c089dE.exit" ]
  %iter.sroa.7.0 = phi i8 [ 0, %_ZN5alloc3vec9from_elem17h2f735ff09d10efcdE.exit ], [ %iter.sroa.7.1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hef3e05d00f2c089dE.exit" ]
  %_10.i.i = trunc nuw i8 %iter.sroa.7.0 to i1
  %_0.i.not.i.i = icmp sgt i32 %iter.sroa.0.0, %V
  %or.cond = select i1 %_10.i.i, i1 true, i1 %_0.i.not.i.i
  br i1 %or.cond, label %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h1ed9843908831ec2E.exit", label %bb2.i.i

bb2.i.i:                                          ; preds = %bb4
  %_0.i3.i.i = icmp slt i32 %iter.sroa.0.0, %V
  %7 = zext i1 %_0.i3.i.i to i32
  %spec.select55 = add nsw i32 %iter.sroa.0.0, %7
  %spec.select56 = select i1 %_0.i3.i.i, i8 %iter.sroa.7.0, i8 1
  %8 = sext i32 %iter.sroa.0.0 to i64
  br label %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h1ed9843908831ec2E.exit"

"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h1ed9843908831ec2E.exit": ; preds = %bb2.i.i, %bb4
  %iter.sroa.0.1 = phi i32 [ %iter.sroa.0.0, %bb4 ], [ %spec.select55, %bb2.i.i ]
  %iter.sroa.7.1 = phi i8 [ %iter.sroa.7.0, %bb4 ], [ %spec.select56, %bb2.i.i ]
  %_0.sroa.3.0.i.i = phi i64 [ 0, %bb4 ], [ %8, %bb2.i.i ]
  br i1 %or.cond, label %bb12.preheader, label %bb7

bb12.preheader:                                   ; preds = %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h1ed9843908831ec2E.exit"
  %_0.i.i.i65 = icmp sgt i32 %m, 0
  %9 = zext i1 %_0.i.i.i65 to i32
  %_0.i.not.i.i1484 = icmp slt i32 %V, 1
  br i1 %_0.i.not.i.i1484, label %bb15, label %bb17.preheader.lr.ph

bb17.preheader.lr.ph:                             ; preds = %bb12.preheader
  %.not = icmp eq i32 %V, 1
  %iter1.sroa.7.190 = zext i1 %.not to i8
  %_0.i3.i.i1685.not = icmp eq i32 %V, 1
  %iter1.sroa.0.189 = select i1 %_0.i3.i.i1685.not, i32 1, i32 2
  br label %bb17.preheader

bb7:                                              ; preds = %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h1ed9843908831ec2E.exit"
  %len.i = load i64, ptr %5, align 8, !alias.scope !1645, !noalias !1648, !noundef !37
  %_4.i.i = icmp ult i64 %_0.sroa.3.0.i.i, %len.i
  br i1 %_4.i.i, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hef3e05d00f2c089dE.exit", label %panic.i.i42.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hef3e05d00f2c089dE.exit": ; preds = %bb7
  %_6.i = load ptr, ptr %4, align 8, !alias.scope !1645, !noalias !1648, !nonnull !37, !noundef !37
  %_0.i.i = getelementptr inbounds nuw i32, ptr %_6.i, i64 %_0.sroa.3.0.i.i
  store i32 2147483647, ptr %_0.i.i, align 4
  br label %bb4

bb12.loopexit:                                    ; preds = %bb31, %bb17.preheader
  %_10.i.i9 = trunc nuw i8 %iter1.sroa.7.192 to i1
  %_0.i.not.i.i14 = icmp sgt i32 %iter1.sroa.0.191, %V
  %or.cond59 = select i1 %_10.i.i9, i1 true, i1 %_0.i.not.i.i14
  %_0.i3.i.i16 = icmp slt i32 %iter1.sroa.0.191, %V
  %not.or.cond59 = xor i1 %or.cond59, true
  %narrow = select i1 %not.or.cond59, i1 %_0.i3.i.i16, i1 false
  %spec.select57 = zext i1 %narrow to i32
  %iter1.sroa.0.1 = add nuw nsw i32 %iter1.sroa.0.191, %spec.select57
  %10 = select i1 %or.cond59, i1 true, i1 %_0.i3.i.i16
  %iter1.sroa.7.1 = select i1 %10, i8 %iter1.sroa.7.192, i8 1
  %_0.sroa.3.0.i.i18 = select i1 %_10.i.i9, i32 undef, i32 %iter1.sroa.0.191
  br i1 %or.cond59, label %bb15, label %bb17.preheader

bb17.preheader:                                   ; preds = %bb17.preheader.lr.ph, %bb12.loopexit
  %_0.sroa.3.0.i.i1893 = phi i32 [ 1, %bb17.preheader.lr.ph ], [ %_0.sroa.3.0.i.i18, %bb12.loopexit ]
  %iter1.sroa.7.192 = phi i8 [ %iter1.sroa.7.190, %bb17.preheader.lr.ph ], [ %iter1.sroa.7.1, %bb12.loopexit ]
  %iter1.sroa.0.191 = phi i32 [ %iter1.sroa.0.189, %bb17.preheader.lr.ph ], [ %iter1.sroa.0.1, %bb12.loopexit ]
  br i1 %_0.i.i.i65, label %bb19.lr.ph, label %bb12.loopexit

bb19.lr.ph:                                       ; preds = %bb17.preheader
  %_46 = sext i32 %_0.sroa.3.0.i.i1893 to i64
  br label %bb19

bb15:                                             ; preds = %bb12.loopexit, %bb12.preheader
  %len.i22 = load i64, ptr %5, align 8, !alias.scope !1650, !noalias !1653, !noundef !37
  %_4.i.i23 = icmp ugt i64 %len.i22, %_6
  br i1 %_4.i.i23, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7cd84079ffc9f833E.exit", label %panic.i.i42.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7cd84079ffc9f833E.exit": ; preds = %bb15
  %_6.i25 = load ptr, ptr %4, align 8, !alias.scope !1650, !noalias !1653, !nonnull !37, !noundef !37
  %_0.i.i26 = getelementptr inbounds nuw i32, ptr %_6.i25, i64 %_6
  %_0 = load i32, ptr %_0.i.i26, align 4, !noundef !37
; call alloc::raw_vec::RawVecInner<A>::deallocate
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %table, i64 noundef 4, i64 noundef 4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %table)
  ret i32 %_0

bb19:                                             ; preds = %bb19.lr.ph, %bb31
  %spec.select67 = phi i32 [ %9, %bb19.lr.ph ], [ %spec.select, %bb31 ]
  %iter2.sroa.0.066 = phi i32 [ 0, %bb19.lr.ph ], [ %spec.select67, %bb31 ]
  %_33 = zext nneg i32 %iter2.sroa.0.066 to i64
  %_34 = icmp samesign ult i32 %iter2.sroa.0.066, 2
  br i1 %_34, label %bb21, label %panic

bb21:                                             ; preds = %bb19
  %11 = getelementptr inbounds nuw i32, ptr %coins, i64 %_33
  %_32 = load i32, ptr %11, align 4, !noundef !37
  %_31.not = icmp sgt i32 %_32, %_0.sroa.3.0.i.i1893
  br i1 %_31.not, label %bb31, label %bb23

panic:                                            ; preds = %bb19
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_33, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_210df7cf738538b79bc12815aefcc454) #26
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic
  unreachable

bb31:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7cd84079ffc9f833E.exit46", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7cd84079ffc9f833E.exit39", %bb27, %bb21
  %_0.i.i.i = icmp slt i32 %spec.select67, %m
  %12 = zext i1 %_0.i.i.i to i32
  %spec.select = add nuw nsw i32 %spec.select67, %12
  br i1 %_0.i.i.i, label %bb19, label %bb12.loopexit

bb23:                                             ; preds = %bb21
  %_39 = sub i32 %_0.sroa.3.0.i.i1893, %_32
  %_38 = sext i32 %_39 to i64
  %len.i33 = load i64, ptr %5, align 8, !alias.scope !1655, !noalias !1658, !noundef !37
  %_4.i.i34 = icmp ugt i64 %len.i33, %_38
  br i1 %_4.i.i34, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7cd84079ffc9f833E.exit39", label %panic.i.i42.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7cd84079ffc9f833E.exit39": ; preds = %bb23
  %_6.i36 = load ptr, ptr %4, align 8, !alias.scope !1655, !noalias !1658, !nonnull !37, !noundef !37
  %_0.i.i37 = getelementptr inbounds nuw i32, ptr %_6.i36, i64 %_38
  %sub_res = load i32, ptr %_0.i.i37, align 4, !noundef !37
  %_40.not = icmp eq i32 %sub_res, 2147483647
  br i1 %_40.not, label %bb31, label %bb25

bb25:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7cd84079ffc9f833E.exit39"
  %_42 = add nsw i32 %sub_res, 1
  %_4.i.i41 = icmp ugt i64 %len.i33, %_46
  br i1 %_4.i.i41, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7cd84079ffc9f833E.exit46", label %panic.i.i42.invoke

panic.i.i42.invoke:                               ; preds = %bb7, %bb25, %bb23, %bb15
  %13 = phi i64 [ %_6, %bb15 ], [ %_46, %bb25 ], [ %_38, %bb23 ], [ %_0.sroa.3.0.i.i, %bb7 ]
  %14 = phi i64 [ %len.i22, %bb15 ], [ %len.i33, %bb23 ], [ %len.i33, %bb25 ], [ %len.i, %bb7 ]
  %15 = phi ptr [ @alloc_edd0abb6fcee20cf645a55f252d196fb, %bb15 ], [ @alloc_ba638a3eb0bf7360db8cdc92d41d286d, %bb25 ], [ @alloc_8b236df2beaaa4f5209675f8b86b7f52, %bb23 ], [ @alloc_9126f822d285be0a815dad23e324d9d0, %bb7 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef range(i64 -2147483648, 2147483648) %13, i64 noundef range(i64 0, 2305843009213693952) %14, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %15) #25
          to label %panic.i.i42.cont unwind label %cleanup

panic.i.i42.cont:                                 ; preds = %panic.i.i42.invoke
  unreachable

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7cd84079ffc9f833E.exit46": ; preds = %bb25
  %_0.i.i44 = getelementptr inbounds nuw i32, ptr %_6.i36, i64 %_46
  %_43 = load i32, ptr %_0.i.i44, align 4, !noundef !37
  %_41 = icmp slt i32 %_42, %_43
  br i1 %_41, label %bb27, label %bb31

bb27:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7cd84079ffc9f833E.exit46"
  store i32 %_42, ptr %_0.i.i44, align 4
  br label %bb31

terminate:                                        ; preds = %cleanup
  %16 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #27
  unreachable

bb35:                                             ; preds = %cleanup
  resume { ptr, i32 } %6
}
