define noundef i32 @f_gold(i32 noundef %n, i32 noundef %a, i32 noundef %b, i32 noundef %c) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_4.i.i.i = alloca [24 x i8], align 8
  %dp = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %dp)
  %_7 = sext i32 %n to i64
  %_6 = add nsw i64 %_7, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1638)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1641)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4.i.i.i), !noalias !1644
; call alloc::raw_vec::RawVecInner<A>::try_allocate_in
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_4.i.i.i, i64 noundef %_6, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4), !noalias !1644
  %_5.i.i.i = load i64, ptr %_4.i.i.i, align 8, !range !1031, !noalias !1644, !noundef !37
  %0 = trunc nuw i64 %_5.i.i.i to i1
  %1 = getelementptr inbounds nuw i8, ptr %_4.i.i.i, i64 8
  %err.0.i.i.i = load i64, ptr %1, align 8, !range !1032, !noalias !1644, !noundef !37
  %2 = getelementptr inbounds nuw i8, ptr %_4.i.i.i, i64 16
  br i1 %0, label %bb3.i.i.i, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h34b65d3c7b3e1c1dE.exit.i.i", !prof !1033

bb3.i.i.i:                                        ; preds = %start
  %err.1.i.i.i = load i64, ptr %2, align 8, !noalias !1644
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i.i, i64 %err.1.i.i.i) #27, !noalias !1644
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h34b65d3c7b3e1c1dE.exit.i.i": ; preds = %start
  %this.1.i.i.i = load ptr, ptr %2, align 8, !noalias !1644, !nonnull !37, !noundef !37
  %_7.i.i.i = icmp ule i64 %_6, %err.0.i.i.i
  tail call void @llvm.assume(i1 %_7.i.i.i)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4.i.i.i), !noalias !1644
  %_2415.i.i.i = icmp ugt i64 %_6, 1
  br i1 %_2415.i.i.i, label %bb13.i.i.i.preheader, label %bb14.i.i.i

bb13.i.i.i.preheader:                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h34b65d3c7b3e1c1dE.exit.i.i"
  %3 = shl nuw nsw i64 %_7, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %this.1.i.i.i, i8 -1, i64 %3, i1 false), !noalias !1644
  %4 = shl nuw nsw i64 %_7, 2
  %scevgep = getelementptr i8, ptr %this.1.i.i.i, i64 %4
  br label %bb14.i.i.i

bb14.i.i.i:                                       ; preds = %bb13.i.i.i.preheader, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h34b65d3c7b3e1c1dE.exit.i.i"
  %storemerge.lcssa.i.i.i = phi i64 [ 0, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h34b65d3c7b3e1c1dE.exit.i.i" ], [ %_7, %bb13.i.i.i.preheader ]
  %ptr.sroa.0.0.lcssa.i.i.i = phi ptr [ %this.1.i.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h34b65d3c7b3e1c1dE.exit.i.i" ], [ %scevgep, %bb13.i.i.i.preheader ]
  %_17.not.i.i.i = icmp eq i64 %_6, 0
  br i1 %_17.not.i.i.i, label %_ZN5alloc3vec9from_elem17h7aa882fae2c1aec5E.exit, label %bb4.i.i.i

bb4.i.i.i:                                        ; preds = %bb14.i.i.i
  store i32 -1, ptr %ptr.sroa.0.0.lcssa.i.i.i, align 4, !noalias !1644
  %5 = add nsw i64 %storemerge.lcssa.i.i.i, 1
  br label %_ZN5alloc3vec9from_elem17h7aa882fae2c1aec5E.exit

_ZN5alloc3vec9from_elem17h7aa882fae2c1aec5E.exit: ; preds = %bb14.i.i.i, %bb4.i.i.i
  %storemerge14.i.i.i = phi i64 [ %5, %bb4.i.i.i ], [ %storemerge.lcssa.i.i.i, %bb14.i.i.i ]
  store i64 %err.0.i.i.i, ptr %dp, align 8, !alias.scope !1644
  %v.sroa.4.0._0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %dp, i64 8
  store ptr %this.1.i.i.i, ptr %v.sroa.4.0._0.sroa_idx.i.i, align 8, !alias.scope !1644
  %v.sroa.5.0._0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %dp, i64 16
  store i64 %storemerge14.i.i.i, ptr %v.sroa.5.0._0.sroa_idx.i.i, align 8, !alias.scope !1644
  %_4.i.i.not = icmp eq i64 %storemerge14.i.i.i, 0
  br i1 %_4.i.i.not, label %panic.i.i69.invoke, label %bb2

cleanup:                                          ; preds = %panic.i.i69.invoke
  %6 = landingpad { ptr, i32 }
          cleanup
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %dp, i64 noundef 4, i64 noundef 4)
          to label %bb28 unwind label %terminate

bb2:                                              ; preds = %_ZN5alloc3vec9from_elem17h7aa882fae2c1aec5E.exit
  store i32 0, ptr %this.1.i.i.i, align 4
  %_0.i.i.i103 = icmp sgt i32 %n, 0
  br i1 %_0.i.i.i103, label %bb7, label %bb8

bb7:                                              ; preds = %bb2, %bb24
  %spec.select105 = phi i32 [ %spec.select, %bb24 ], [ 1, %bb2 ]
  %iter.sroa.0.0104 = phi i32 [ %spec.select105, %bb24 ], [ 0, %bb2 ]
  %_21 = zext nneg i32 %iter.sroa.0.0104 to i64
  %len.i5 = load i64, ptr %v.sroa.5.0._0.sroa_idx.i.i, align 8, !alias.scope !1645, !noalias !1648, !noundef !37
  %_4.i.i6 = icmp ugt i64 %len.i5, %_21
  br i1 %_4.i.i6, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7d9cdd7f424c2681E.exit", label %panic.i.i69.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7d9cdd7f424c2681E.exit": ; preds = %bb7
  %_6.i8 = load ptr, ptr %v.sroa.4.0._0.sroa_idx.i.i, align 8, !alias.scope !1645, !noalias !1648, !nonnull !37, !noundef !37
  %_0.i.i = getelementptr inbounds nuw i32, ptr %_6.i8, i64 %_21
  %_18 = load i32, ptr %_0.i.i, align 4, !noundef !37
  %_17.not = icmp eq i32 %_18, -1
  br i1 %_17.not, label %bb24, label %bb10

bb8:                                              ; preds = %bb24, %bb2
  %len.i10 = load i64, ptr %v.sroa.5.0._0.sroa_idx.i.i, align 8, !alias.scope !1650, !noalias !1653, !noundef !37
  %_4.i.i11 = icmp ugt i64 %len.i10, %_7
  br i1 %_4.i.i11, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7d9cdd7f424c2681E.exit16", label %panic.i.i69.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7d9cdd7f424c2681E.exit16": ; preds = %bb8
  %_6.i13 = load ptr, ptr %v.sroa.4.0._0.sroa_idx.i.i, align 8, !alias.scope !1650, !noalias !1653, !nonnull !37, !noundef !37
  %_0.i.i14 = getelementptr inbounds nuw i32, ptr %_6.i13, i64 %_7
  %_0 = load i32, ptr %_0.i.i14, align 4, !noundef !37
; call alloc::raw_vec::RawVecInner<A>::deallocate
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %dp, i64 noundef 4, i64 noundef 4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %dp)
  ret i32 %_0

bb10:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7d9cdd7f424c2681E.exit"
  %_31 = add i32 %iter.sroa.0.0104, %a
  %_30 = sext i32 %_31 to i64
  %_4.i.i25 = icmp ugt i64 %len.i5, %_30
  br i1 %_4.i.i25, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7d9cdd7f424c2681E.exit30", label %panic.i.i69.invoke

bb24:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7d9cdd7f424c2681E.exit", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7d9cdd7f424c2681E.exit73"
  %_0.i.i.i = icmp slt i32 %spec.select105, %n
  %7 = zext i1 %_0.i.i.i to i32
  %spec.select = add nuw nsw i32 %spec.select105, %7
  br i1 %_0.i.i.i, label %bb7, label %bb8

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7d9cdd7f424c2681E.exit30": ; preds = %bb10
  %_0.i.i28 = getelementptr inbounds nuw i32, ptr %_6.i8, i64 %_30
  %_27 = load i32, ptr %_0.i.i28, align 4, !noundef !37
  %_26 = add i32 %_27, 1
  %_0.sroa.0.0.i = tail call noundef i32 @llvm.smax.i32(i32 %_26, i32 %_18)
  store i32 %_0.sroa.0.0.i, ptr %_0.i.i28, align 4
  %len.i38 = load i64, ptr %v.sroa.5.0._0.sroa_idx.i.i, align 8, !alias.scope !1655, !noalias !1658, !noundef !37
  %_4.i.i39 = icmp ugt i64 %len.i38, %_21
  br i1 %_4.i.i39, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7d9cdd7f424c2681E.exit44", label %panic.i.i69.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7d9cdd7f424c2681E.exit44": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7d9cdd7f424c2681E.exit30"
  %_43 = add i32 %iter.sroa.0.0104, %b
  %_42 = sext i32 %_43 to i64
  %_4.i.i46 = icmp ugt i64 %len.i38, %_42
  br i1 %_4.i.i46, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7d9cdd7f424c2681E.exit51", label %panic.i.i69.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7d9cdd7f424c2681E.exit51": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7d9cdd7f424c2681E.exit44"
  %_6.i41 = load ptr, ptr %v.sroa.4.0._0.sroa_idx.i.i, align 8, !alias.scope !1655, !noalias !1658, !nonnull !37, !noundef !37
  %_0.i.i42 = getelementptr inbounds nuw i32, ptr %_6.i41, i64 %_21
  %_35 = load i32, ptr %_0.i.i42, align 4, !noundef !37
  %_0.i.i49 = getelementptr inbounds nuw i32, ptr %_6.i41, i64 %_42
  %_39 = load i32, ptr %_0.i.i49, align 4, !noundef !37
  %_38 = add i32 %_39, 1
  %_0.sroa.0.0.i52 = tail call noundef i32 @llvm.smax.i32(i32 %_38, i32 %_35)
  store i32 %_0.sroa.0.0.i52, ptr %_0.i.i49, align 4
  %len.i60 = load i64, ptr %v.sroa.5.0._0.sroa_idx.i.i, align 8, !alias.scope !1660, !noalias !1663, !noundef !37
  %_4.i.i61 = icmp ugt i64 %len.i60, %_21
  br i1 %_4.i.i61, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7d9cdd7f424c2681E.exit66", label %panic.i.i69.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7d9cdd7f424c2681E.exit66": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7d9cdd7f424c2681E.exit51"
  %_55 = add i32 %iter.sroa.0.0104, %c
  %_54 = sext i32 %_55 to i64
  %_4.i.i68 = icmp ugt i64 %len.i60, %_54
  br i1 %_4.i.i68, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7d9cdd7f424c2681E.exit73", label %panic.i.i69.invoke

panic.i.i69.invoke:                               ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7d9cdd7f424c2681E.exit66", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7d9cdd7f424c2681E.exit51", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7d9cdd7f424c2681E.exit44", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7d9cdd7f424c2681E.exit30", %bb10, %bb7, %_ZN5alloc3vec9from_elem17h7aa882fae2c1aec5E.exit, %bb8
  %8 = phi i64 [ %_7, %bb8 ], [ 0, %_ZN5alloc3vec9from_elem17h7aa882fae2c1aec5E.exit ], [ %_54, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7d9cdd7f424c2681E.exit66" ], [ %_21, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7d9cdd7f424c2681E.exit51" ], [ %_42, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7d9cdd7f424c2681E.exit44" ], [ %_21, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7d9cdd7f424c2681E.exit30" ], [ %_30, %bb10 ], [ %_21, %bb7 ]
  %9 = phi i64 [ %len.i10, %bb8 ], [ %storemerge14.i.i.i, %_ZN5alloc3vec9from_elem17h7aa882fae2c1aec5E.exit ], [ %len.i60, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7d9cdd7f424c2681E.exit66" ], [ %len.i60, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7d9cdd7f424c2681E.exit51" ], [ %len.i38, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7d9cdd7f424c2681E.exit44" ], [ %len.i38, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7d9cdd7f424c2681E.exit30" ], [ %len.i5, %bb10 ], [ %len.i5, %bb7 ]
  %10 = phi ptr [ @alloc_fe1a27f7b4eaca354eb9ac3f4f408432, %bb8 ], [ @alloc_2003974181c9866eeed3c1787bc30a41, %_ZN5alloc3vec9from_elem17h7aa882fae2c1aec5E.exit ], [ @alloc_efc831102a8895606078422a5b1c4e03, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7d9cdd7f424c2681E.exit66" ], [ @alloc_cb3df49b9860cd89125e3d3d9e9789cc, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7d9cdd7f424c2681E.exit51" ], [ @alloc_2a761fed099a947291cab6730ee7b80e, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7d9cdd7f424c2681E.exit44" ], [ @alloc_369644180f04f774b2372828e58e0415, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7d9cdd7f424c2681E.exit30" ], [ @alloc_c12d4808943bee0749b5f51b9dc956d0, %bb10 ], [ @alloc_6034a038965d58ecb9ca78594a09c562, %bb7 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef range(i64 -2147483648, 2147483648) %8, i64 noundef range(i64 0, 2305843009213693952) %9, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %10) #26
          to label %panic.i.i69.cont unwind label %cleanup

panic.i.i69.cont:                                 ; preds = %panic.i.i69.invoke
  unreachable

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7d9cdd7f424c2681E.exit73": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7d9cdd7f424c2681E.exit66"
  %_6.i63 = load ptr, ptr %v.sroa.4.0._0.sroa_idx.i.i, align 8, !alias.scope !1660, !noalias !1663, !nonnull !37, !noundef !37
  %_0.i.i64 = getelementptr inbounds nuw i32, ptr %_6.i63, i64 %_21
  %_47 = load i32, ptr %_0.i.i64, align 4, !noundef !37
  %_0.i.i71 = getelementptr inbounds nuw i32, ptr %_6.i63, i64 %_54
  %_51 = load i32, ptr %_0.i.i71, align 4, !noundef !37
  %_50 = add i32 %_51, 1
  %_0.sroa.0.0.i74 = tail call noundef i32 @llvm.smax.i32(i32 %_50, i32 %_47)
  store i32 %_0.sroa.0.0.i74, ptr %_0.i.i71, align 4
  br label %bb24

terminate:                                        ; preds = %cleanup
  %11 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #28
  unreachable

bb28:                                             ; preds = %cleanup
  resume { ptr, i32 } %6
}
