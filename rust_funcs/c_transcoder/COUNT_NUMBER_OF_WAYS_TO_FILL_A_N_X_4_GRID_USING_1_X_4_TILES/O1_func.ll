define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_16.i.i = alloca [24 x i8], align 8
  %dp = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %dp)
  %_4 = sext i32 %n to i64
  %_3 = add nsw i64 %_4, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1638)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1641)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1644
; call alloc::raw_vec::RawVecInner<A>::try_allocate_in
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_16.i.i, i64 noundef %_3, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4), !noalias !1644
  %_17.i.i = load i64, ptr %_16.i.i, align 8, !range !1031, !noalias !1644, !noundef !37
  %0 = trunc nuw i64 %_17.i.i to i1
  %1 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 8
  %err.0.i.i = load i64, ptr %1, align 8, !range !1032, !noalias !1644, !noundef !37
  %2 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 16
  br i1 %0, label %bb14.i.i, label %_ZN5alloc3vec9from_elem17hfb3bb23a0bd14b2cE.exit, !prof !1033

bb14.i.i:                                         ; preds = %start
  %err.1.i.i = load i64, ptr %2, align 8, !noalias !1644
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #26, !noalias !1644
  unreachable

_ZN5alloc3vec9from_elem17hfb3bb23a0bd14b2cE.exit: ; preds = %start
  %res.1.i.i = load ptr, ptr %2, align 8, !noalias !1644, !nonnull !37, !noundef !37
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1644
  store i64 %err.0.i.i, ptr %dp, align 8, !alias.scope !1644
  %3 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  store ptr %res.1.i.i, ptr %3, align 8, !alias.scope !1644
  %4 = getelementptr inbounds nuw i8, ptr %dp, i64 16
  store i64 %_3, ptr %4, align 8, !alias.scope !1644
  %_4.i.i.not = icmp eq i64 %_3, 0
  br i1 %_4.i.i.not, label %panic.i.i38.invoke, label %bb2

cleanup:                                          ; preds = %panic.i.i38.invoke
  %5 = landingpad { ptr, i32 }
          cleanup
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %dp, i64 noundef 4, i64 noundef 4)
          to label %bb25 unwind label %terminate

bb2:                                              ; preds = %_ZN5alloc3vec9from_elem17hfb3bb23a0bd14b2cE.exit
  store i32 0, ptr %res.1.i.i, align 4
  %_0.i.not.i.i60 = icmp slt i32 %n, 1
  br i1 %_0.i.not.i.i60, label %bb9, label %bb8.lr.ph

bb8.lr.ph:                                        ; preds = %bb2
  %.not = icmp eq i32 %n, 1
  %iter.sroa.7.166 = zext i1 %.not to i8
  %_0.i3.i.i61.not = icmp eq i32 %n, 1
  %iter.sroa.0.165 = select i1 %_0.i3.i.i61.not, i32 1, i32 2
  br label %bb8

bb8:                                              ; preds = %bb8.lr.ph, %bb21
  %_0.sroa.3.0.i.i69 = phi i32 [ 1, %bb8.lr.ph ], [ %_0.sroa.3.0.i.i, %bb21 ]
  %iter.sroa.7.168 = phi i8 [ %iter.sroa.7.166, %bb8.lr.ph ], [ %iter.sroa.7.1, %bb21 ]
  %iter.sroa.0.167 = phi i32 [ %iter.sroa.0.165, %bb8.lr.ph ], [ %iter.sroa.0.1, %bb21 ]
  %6 = add i32 %_0.sroa.3.0.i.i69, -1
  %or.cond = icmp ult i32 %6, 3
  br i1 %or.cond, label %bb11, label %bb13

bb9:                                              ; preds = %bb21, %bb2
  %len.i3 = load i64, ptr %4, align 8, !alias.scope !1645, !noalias !1648, !noundef !37
  %_4.i.i4 = icmp ugt i64 %len.i3, %_4
  br i1 %_4.i.i4, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h548f64bde542527eE.exit", label %panic.i.i38.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h548f64bde542527eE.exit": ; preds = %bb9
  %_6.i6 = load ptr, ptr %3, align 8, !alias.scope !1645, !noalias !1648, !nonnull !37, !noundef !37
  %_0.i.i = getelementptr inbounds nuw i32, ptr %_6.i6, i64 %_4
  %_0 = load i32, ptr %_0.i.i, align 4, !noundef !37
; call alloc::raw_vec::RawVecInner<A>::deallocate
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %dp, i64 noundef 4, i64 noundef 4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %dp)
  ret i32 %_0

bb13:                                             ; preds = %bb8
  %_19 = icmp eq i32 %_0.sroa.3.0.i.i69, 4
  br i1 %_19, label %bb14, label %bb16

bb11:                                             ; preds = %bb8
  %_18 = zext nneg i32 %_0.sroa.3.0.i.i69 to i64
  %len.i8 = load i64, ptr %4, align 8, !alias.scope !1650, !noalias !1653, !noundef !37
  %_4.i.i9 = icmp ugt i64 %len.i8, %_18
  br i1 %_4.i.i9, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h42c784ee944673c1E.exit14", label %panic.i.i38.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h42c784ee944673c1E.exit14": ; preds = %bb11
  %_6.i11 = load ptr, ptr %3, align 8, !alias.scope !1650, !noalias !1653, !nonnull !37, !noundef !37
  %_0.i.i12 = getelementptr inbounds nuw i32, ptr %_6.i11, i64 %_18
  store i32 1, ptr %_0.i.i12, align 4
  br label %bb21

bb16:                                             ; preds = %bb13
  %_26 = sext i32 %6 to i64
  %len.i15 = load i64, ptr %4, align 8, !alias.scope !1655, !noalias !1658, !noundef !37
  %_4.i.i16 = icmp ugt i64 %len.i15, %_26
  br i1 %_4.i.i16, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h548f64bde542527eE.exit21", label %panic.i.i38.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h548f64bde542527eE.exit21": ; preds = %bb16
  %_6.i18 = load ptr, ptr %3, align 8, !alias.scope !1655, !noalias !1658, !nonnull !37, !noundef !37
  %_0.i.i19 = getelementptr inbounds nuw i32, ptr %_6.i18, i64 %_26
  %_23 = load i32, ptr %_0.i.i19, align 4, !noundef !37
  %_32 = add i32 %_0.sroa.3.0.i.i69, -4
  %_31 = sext i32 %_32 to i64
  %_4.i.i30 = icmp ugt i64 %len.i15, %_31
  br i1 %_4.i.i30, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h548f64bde542527eE.exit35", label %panic.i.i38.invoke

bb14:                                             ; preds = %bb13
  %len.i22 = load i64, ptr %4, align 8, !alias.scope !1660, !noalias !1663, !noundef !37
  %_4.i.i23 = icmp ugt i64 %len.i22, 4
  br i1 %_4.i.i23, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h42c784ee944673c1E.exit28", label %panic.i.i38.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h42c784ee944673c1E.exit28": ; preds = %bb14
  %_6.i25 = load ptr, ptr %3, align 8, !alias.scope !1660, !noalias !1663, !nonnull !37, !noundef !37
  %_0.i.i26 = getelementptr inbounds nuw i8, ptr %_6.i25, i64 16
  store i32 2, ptr %_0.i.i26, align 4
  br label %bb21

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h548f64bde542527eE.exit35": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h548f64bde542527eE.exit21"
  %_35 = sext i32 %_0.sroa.3.0.i.i69 to i64
  %_4.i.i37 = icmp ugt i64 %len.i15, %_35
  br i1 %_4.i.i37, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h42c784ee944673c1E.exit42", label %panic.i.i38.invoke

panic.i.i38.invoke:                               ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h548f64bde542527eE.exit35", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h548f64bde542527eE.exit21", %bb14, %bb16, %bb11, %_ZN5alloc3vec9from_elem17hfb3bb23a0bd14b2cE.exit, %bb9
  %7 = phi i64 [ %_4, %bb9 ], [ 0, %_ZN5alloc3vec9from_elem17hfb3bb23a0bd14b2cE.exit ], [ %_35, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h548f64bde542527eE.exit35" ], [ %_31, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h548f64bde542527eE.exit21" ], [ 4, %bb14 ], [ %_26, %bb16 ], [ %_18, %bb11 ]
  %8 = phi i64 [ %len.i3, %bb9 ], [ %_3, %_ZN5alloc3vec9from_elem17hfb3bb23a0bd14b2cE.exit ], [ %len.i15, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h548f64bde542527eE.exit35" ], [ %len.i15, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h548f64bde542527eE.exit21" ], [ %len.i22, %bb14 ], [ %len.i15, %bb16 ], [ %len.i8, %bb11 ]
  %9 = phi ptr [ @alloc_fda3d9cbb8bb275936aa2e1b81db3d92, %bb9 ], [ @alloc_108377a31224447ec9268c23b428d60d, %_ZN5alloc3vec9from_elem17hfb3bb23a0bd14b2cE.exit ], [ @alloc_78b764300c18f028af5e4e4c6f887669, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h548f64bde542527eE.exit35" ], [ @alloc_68698a9431718c3fcf4c37a542c60448, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h548f64bde542527eE.exit21" ], [ @alloc_73f8f07d6cb4b4e0584e91af0bdd7734, %bb14 ], [ @alloc_58bb8a434aae181adef8df54f7964574, %bb16 ], [ @alloc_80feb50537df9cc89364164642b2cbb6, %bb11 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef range(i64 -2147483648, 2147483648) %7, i64 noundef range(i64 0, 2305843009213693952) %8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %9) #25
          to label %panic.i.i38.cont unwind label %cleanup

panic.i.i38.cont:                                 ; preds = %panic.i.i38.invoke
  unreachable

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h42c784ee944673c1E.exit42": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h548f64bde542527eE.exit35"
  %_0.i.i33 = getelementptr inbounds nuw i32, ptr %_6.i18, i64 %_31
  %_28 = load i32, ptr %_0.i.i33, align 4, !noundef !37
  %_0.i.i40 = getelementptr inbounds nuw i32, ptr %_6.i18, i64 %_35
  %10 = add i32 %_28, %_23
  store i32 %10, ptr %_0.i.i40, align 4
  br label %bb21

bb21:                                             ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h42c784ee944673c1E.exit42", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h42c784ee944673c1E.exit28", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h42c784ee944673c1E.exit14"
  %_10.i.i = trunc nuw i8 %iter.sroa.7.168 to i1
  %_0.i.not.i.i = icmp sgt i32 %iter.sroa.0.167, %n
  %or.cond44 = select i1 %_10.i.i, i1 true, i1 %_0.i.not.i.i
  %_0.i3.i.i = icmp slt i32 %iter.sroa.0.167, %n
  %not.or.cond44 = xor i1 %or.cond44, true
  %narrow = select i1 %not.or.cond44, i1 %_0.i3.i.i, i1 false
  %spec.select = zext i1 %narrow to i32
  %iter.sroa.0.1 = add nuw nsw i32 %iter.sroa.0.167, %spec.select
  %11 = select i1 %or.cond44, i1 true, i1 %_0.i3.i.i
  %iter.sroa.7.1 = select i1 %11, i8 %iter.sroa.7.168, i8 1
  %_0.sroa.3.0.i.i = select i1 %_10.i.i, i32 undef, i32 %iter.sroa.0.167
  br i1 %or.cond44, label %bb9, label %bb8

terminate:                                        ; preds = %cleanup
  %12 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #27
  unreachable

bb25:                                             ; preds = %cleanup
  resume { ptr, i32 } %5
}
