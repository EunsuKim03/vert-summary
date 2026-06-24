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
  %_0.i.not.i.i53 = icmp slt i32 %n, 1
  br i1 %_0.i.not.i.i53, label %bb8, label %bb7.lr.ph

bb7.lr.ph:                                        ; preds = %_ZN5alloc3vec9from_elem17hfb3bb23a0bd14b2cE.exit
  %.not = icmp eq i32 %n, 1
  %iter.sroa.7.159 = zext i1 %.not to i8
  %_0.i3.i.i54.not = icmp eq i32 %n, 1
  %iter.sroa.0.158 = select i1 %_0.i3.i.i54.not, i32 1, i32 2
  br label %bb7

cleanup:                                          ; preds = %panic.i.i31.invoke
  %5 = landingpad { ptr, i32 }
          cleanup
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %dp, i64 noundef 4, i64 noundef 4)
          to label %bb24 unwind label %terminate

bb7:                                              ; preds = %bb7.lr.ph, %bb20
  %_0.sroa.3.0.i.i62 = phi i32 [ 1, %bb7.lr.ph ], [ %_0.sroa.3.0.i.i, %bb20 ]
  %iter.sroa.7.161 = phi i8 [ %iter.sroa.7.159, %bb7.lr.ph ], [ %iter.sroa.7.1, %bb20 ]
  %iter.sroa.0.160 = phi i32 [ %iter.sroa.0.158, %bb7.lr.ph ], [ %iter.sroa.0.1, %bb20 ]
  %6 = add i32 %_0.sroa.3.0.i.i62, -1
  %or.cond = icmp ult i32 %6, 3
  br i1 %or.cond, label %bb10, label %bb12

bb8:                                              ; preds = %bb20, %_ZN5alloc3vec9from_elem17hfb3bb23a0bd14b2cE.exit
  %len.i = load i64, ptr %4, align 8, !alias.scope !1645, !noalias !1648, !noundef !37
  %_4.i.i = icmp ugt i64 %len.i, %_4
  br i1 %_4.i.i, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h548f64bde542527eE.exit", label %panic.i.i31.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h548f64bde542527eE.exit": ; preds = %bb8
  %_6.i = load ptr, ptr %3, align 8, !alias.scope !1645, !noalias !1648, !nonnull !37, !noundef !37
  %_0.i.i = getelementptr inbounds nuw i32, ptr %_6.i, i64 %_4
  %_0 = load i32, ptr %_0.i.i, align 4, !noundef !37
; call alloc::raw_vec::RawVecInner<A>::deallocate
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %dp, i64 noundef 4, i64 noundef 4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %dp)
  ret i32 %_0

bb12:                                             ; preds = %bb7
  %_17 = icmp eq i32 %_0.sroa.3.0.i.i62, 4
  br i1 %_17, label %bb13, label %bb15

bb10:                                             ; preds = %bb7
  %_16 = zext nneg i32 %_0.sroa.3.0.i.i62 to i64
  %len.i2 = load i64, ptr %4, align 8, !alias.scope !1650, !noalias !1653, !noundef !37
  %_4.i.i3 = icmp ugt i64 %len.i2, %_16
  br i1 %_4.i.i3, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h42c784ee944673c1E.exit", label %panic.i.i31.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h42c784ee944673c1E.exit": ; preds = %bb10
  %_6.i5 = load ptr, ptr %3, align 8, !alias.scope !1650, !noalias !1653, !nonnull !37, !noundef !37
  %_0.i.i6 = getelementptr inbounds nuw i32, ptr %_6.i5, i64 %_16
  store i32 1, ptr %_0.i.i6, align 4
  br label %bb20

bb15:                                             ; preds = %bb12
  %_24 = sext i32 %6 to i64
  %len.i8 = load i64, ptr %4, align 8, !alias.scope !1655, !noalias !1658, !noundef !37
  %_4.i.i9 = icmp ugt i64 %len.i8, %_24
  br i1 %_4.i.i9, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h548f64bde542527eE.exit14", label %panic.i.i31.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h548f64bde542527eE.exit14": ; preds = %bb15
  %_6.i11 = load ptr, ptr %3, align 8, !alias.scope !1655, !noalias !1658, !nonnull !37, !noundef !37
  %_0.i.i12 = getelementptr inbounds nuw i32, ptr %_6.i11, i64 %_24
  %_21 = load i32, ptr %_0.i.i12, align 4, !noundef !37
  %_30 = add i32 %_0.sroa.3.0.i.i62, -4
  %_29 = sext i32 %_30 to i64
  %_4.i.i23 = icmp ugt i64 %len.i8, %_29
  br i1 %_4.i.i23, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h548f64bde542527eE.exit28", label %panic.i.i31.invoke

bb13:                                             ; preds = %bb12
  %len.i15 = load i64, ptr %4, align 8, !alias.scope !1660, !noalias !1663, !noundef !37
  %_4.i.i16 = icmp ugt i64 %len.i15, 4
  br i1 %_4.i.i16, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h42c784ee944673c1E.exit21", label %panic.i.i31.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h42c784ee944673c1E.exit21": ; preds = %bb13
  %_6.i18 = load ptr, ptr %3, align 8, !alias.scope !1660, !noalias !1663, !nonnull !37, !noundef !37
  %_0.i.i19 = getelementptr inbounds nuw i8, ptr %_6.i18, i64 16
  store i32 2, ptr %_0.i.i19, align 4
  br label %bb20

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h548f64bde542527eE.exit28": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h548f64bde542527eE.exit14"
  %_33 = sext i32 %_0.sroa.3.0.i.i62 to i64
  %_4.i.i30 = icmp ugt i64 %len.i8, %_33
  br i1 %_4.i.i30, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h42c784ee944673c1E.exit35", label %panic.i.i31.invoke

panic.i.i31.invoke:                               ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h548f64bde542527eE.exit28", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h548f64bde542527eE.exit14", %bb13, %bb15, %bb10, %bb8
  %7 = phi i64 [ %_4, %bb8 ], [ %_33, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h548f64bde542527eE.exit28" ], [ %_29, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h548f64bde542527eE.exit14" ], [ 4, %bb13 ], [ %_24, %bb15 ], [ %_16, %bb10 ]
  %8 = phi i64 [ %len.i, %bb8 ], [ %len.i8, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h548f64bde542527eE.exit28" ], [ %len.i8, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h548f64bde542527eE.exit14" ], [ %len.i15, %bb13 ], [ %len.i8, %bb15 ], [ %len.i2, %bb10 ]
  %9 = phi ptr [ @alloc_535b3c74b292a8e2ed5eb5291fef264d, %bb8 ], [ @alloc_326f159265fc5336de78a9ec999f12d7, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h548f64bde542527eE.exit28" ], [ @alloc_e74c771acfd85448820d7f271a98fe9e, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h548f64bde542527eE.exit14" ], [ @alloc_f76119ecaba7716a6f14ef84b0e2959b, %bb13 ], [ @alloc_10881ccc859e3258de391539356f325e, %bb15 ], [ @alloc_b63afc33637afac3089a2315695067c0, %bb10 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef range(i64 -2147483648, 2147483648) %7, i64 noundef range(i64 0, 2305843009213693952) %8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %9) #25
          to label %panic.i.i31.cont unwind label %cleanup

panic.i.i31.cont:                                 ; preds = %panic.i.i31.invoke
  unreachable

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h42c784ee944673c1E.exit35": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h548f64bde542527eE.exit28"
  %_0.i.i26 = getelementptr inbounds nuw i32, ptr %_6.i11, i64 %_29
  %_26 = load i32, ptr %_0.i.i26, align 4, !noundef !37
  %_0.i.i33 = getelementptr inbounds nuw i32, ptr %_6.i11, i64 %_33
  %10 = add i32 %_26, %_21
  store i32 %10, ptr %_0.i.i33, align 4
  br label %bb20

bb20:                                             ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h42c784ee944673c1E.exit35", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h42c784ee944673c1E.exit21", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h42c784ee944673c1E.exit"
  %_10.i.i = trunc nuw i8 %iter.sroa.7.161 to i1
  %_0.i.not.i.i = icmp sgt i32 %iter.sroa.0.160, %n
  %or.cond37 = select i1 %_10.i.i, i1 true, i1 %_0.i.not.i.i
  %_0.i3.i.i = icmp slt i32 %iter.sroa.0.160, %n
  %not.or.cond37 = xor i1 %or.cond37, true
  %narrow = select i1 %not.or.cond37, i1 %_0.i3.i.i, i1 false
  %spec.select = zext i1 %narrow to i32
  %iter.sroa.0.1 = add nuw nsw i32 %iter.sroa.0.160, %spec.select
  %11 = select i1 %or.cond37, i1 true, i1 %_0.i3.i.i
  %iter.sroa.7.1 = select i1 %11, i8 %iter.sroa.7.161, i8 1
  %_0.sroa.3.0.i.i = select i1 %_10.i.i, i32 undef, i32 %iter.sroa.0.160
  br i1 %or.cond37, label %bb8, label %bb7

terminate:                                        ; preds = %cleanup
  %12 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #27
  unreachable

bb24:                                             ; preds = %cleanup
  resume { ptr, i32 } %5
}
