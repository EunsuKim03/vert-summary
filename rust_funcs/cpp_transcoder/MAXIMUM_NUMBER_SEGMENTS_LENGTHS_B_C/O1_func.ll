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
          to label %bb34 unwind label %terminate

bb2:                                              ; preds = %_ZN5alloc3vec9from_elem17h7aa882fae2c1aec5E.exit
  store i32 0, ptr %this.1.i.i.i, align 4
  %_0.i.i.i95 = icmp sgt i32 %n, 0
  br i1 %_0.i.i.i95, label %bb7, label %bb8

bb7:                                              ; preds = %bb2, %bb30
  %spec.select97 = phi i32 [ %spec.select, %bb30 ], [ 1, %bb2 ]
  %iter.sroa.0.096 = phi i32 [ %spec.select97, %bb30 ], [ 0, %bb2 ]
  %_21 = zext nneg i32 %iter.sroa.0.096 to i64
  %len.i5 = load i64, ptr %v.sroa.5.0._0.sroa_idx.i.i, align 8, !alias.scope !1645, !noalias !1648, !noundef !37
  %_4.i.i6 = icmp ugt i64 %len.i5, %_21
  br i1 %_4.i.i6, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7d9cdd7f424c2681E.exit", label %panic.i.i69.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7d9cdd7f424c2681E.exit": ; preds = %bb7
  %_6.i8 = load ptr, ptr %v.sroa.4.0._0.sroa_idx.i.i, align 8, !alias.scope !1645, !noalias !1648, !nonnull !37, !noundef !37
  %_0.i.i = getelementptr inbounds nuw i32, ptr %_6.i8, i64 %_21
  %_18 = load i32, ptr %_0.i.i, align 4, !noundef !37
  %_17.not = icmp eq i32 %_18, -1
  br i1 %_17.not, label %bb30, label %bb10

bb8:                                              ; preds = %bb30, %bb2
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
  %_23 = add i32 %iter.sroa.0.096, %a
  %_22.not = icmp sgt i32 %_23, %n
  br i1 %_22.not, label %bb16, label %bb11

bb30:                                             ; preds = %bb22, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7d9cdd7f424c2681E.exit73", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7d9cdd7f424c2681E.exit"
  %_0.i.i.i = icmp slt i32 %spec.select97, %n
  %7 = zext i1 %_0.i.i.i to i32
  %spec.select = add nuw nsw i32 %spec.select97, %7
  br i1 %_0.i.i.i, label %bb7, label %bb8

bb16:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7d9cdd7f424c2681E.exit30", %bb10
  %_36 = add i32 %iter.sroa.0.096, %b
  %_35.not = icmp sgt i32 %_36, %n
  br i1 %_35.not, label %bb22, label %bb17

bb11:                                             ; preds = %bb10
  %_32 = sext i32 %_23 to i64
  %_4.i.i25 = icmp ugt i64 %len.i5, %_32
  br i1 %_4.i.i25, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7d9cdd7f424c2681E.exit30", label %panic.i.i69.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7d9cdd7f424c2681E.exit30": ; preds = %bb11
  %_0.i.i28 = getelementptr inbounds nuw i32, ptr %_6.i8, i64 %_32
  %_29 = load i32, ptr %_0.i.i28, align 4, !noundef !37
  %_28 = add i32 %_29, 1
  %_0.sroa.0.0.i = tail call noundef i32 @llvm.smax.i32(i32 %_28, i32 %_18)
  store i32 %_0.sroa.0.0.i, ptr %_0.i.i28, align 4
  br label %bb16

bb22:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7d9cdd7f424c2681E.exit51", %bb16
  %_49 = add i32 %iter.sroa.0.096, %c
  %_48.not = icmp sgt i32 %_49, %n
  br i1 %_48.not, label %bb30, label %bb23

bb17:                                             ; preds = %bb16
  %len.i38 = load i64, ptr %v.sroa.5.0._0.sroa_idx.i.i, align 8, !alias.scope !1655, !noalias !1658, !noundef !37
  %_4.i.i39 = icmp ugt i64 %len.i38, %_21
  br i1 %_4.i.i39, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7d9cdd7f424c2681E.exit44", label %panic.i.i69.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7d9cdd7f424c2681E.exit44": ; preds = %bb17
  %_45 = sext i32 %_36 to i64
  %_4.i.i46 = icmp ugt i64 %len.i38, %_45
  br i1 %_4.i.i46, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7d9cdd7f424c2681E.exit51", label %panic.i.i69.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7d9cdd7f424c2681E.exit51": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7d9cdd7f424c2681E.exit44"
  %_6.i41 = load ptr, ptr %v.sroa.4.0._0.sroa_idx.i.i, align 8, !alias.scope !1655, !noalias !1658, !nonnull !37, !noundef !37
  %_0.i.i42 = getelementptr inbounds nuw i32, ptr %_6.i41, i64 %_21
  %_38 = load i32, ptr %_0.i.i42, align 4, !noundef !37
  %_0.i.i49 = getelementptr inbounds nuw i32, ptr %_6.i41, i64 %_45
  %_42 = load i32, ptr %_0.i.i49, align 4, !noundef !37
  %_41 = add i32 %_42, 1
  %_0.sroa.0.0.i52 = tail call noundef i32 @llvm.smax.i32(i32 %_41, i32 %_38)
  store i32 %_0.sroa.0.0.i52, ptr %_0.i.i49, align 4
  br label %bb22

bb23:                                             ; preds = %bb22
  %len.i60 = load i64, ptr %v.sroa.5.0._0.sroa_idx.i.i, align 8, !alias.scope !1660, !noalias !1663, !noundef !37
  %_4.i.i61 = icmp ugt i64 %len.i60, %_21
  br i1 %_4.i.i61, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7d9cdd7f424c2681E.exit66", label %panic.i.i69.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7d9cdd7f424c2681E.exit66": ; preds = %bb23
  %_58 = sext i32 %_49 to i64
  %_4.i.i68 = icmp ugt i64 %len.i60, %_58
  br i1 %_4.i.i68, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7d9cdd7f424c2681E.exit73", label %panic.i.i69.invoke

panic.i.i69.invoke:                               ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7d9cdd7f424c2681E.exit66", %bb23, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7d9cdd7f424c2681E.exit44", %bb17, %bb11, %bb7, %_ZN5alloc3vec9from_elem17h7aa882fae2c1aec5E.exit, %bb8
  %8 = phi i64 [ %_7, %bb8 ], [ 0, %_ZN5alloc3vec9from_elem17h7aa882fae2c1aec5E.exit ], [ %_58, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7d9cdd7f424c2681E.exit66" ], [ %_21, %bb23 ], [ %_45, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7d9cdd7f424c2681E.exit44" ], [ %_21, %bb17 ], [ %_32, %bb11 ], [ %_21, %bb7 ]
  %9 = phi i64 [ %len.i10, %bb8 ], [ %storemerge14.i.i.i, %_ZN5alloc3vec9from_elem17h7aa882fae2c1aec5E.exit ], [ %len.i60, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7d9cdd7f424c2681E.exit66" ], [ %len.i60, %bb23 ], [ %len.i38, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7d9cdd7f424c2681E.exit44" ], [ %len.i38, %bb17 ], [ %len.i5, %bb11 ], [ %len.i5, %bb7 ]
  %10 = phi ptr [ @alloc_c0110d6db079ccfb04fdb0b06ed027a7, %bb8 ], [ @alloc_21cb9bc060c1f7c0a586c6e938d052a8, %_ZN5alloc3vec9from_elem17h7aa882fae2c1aec5E.exit ], [ @alloc_2ce06a65bc2092a38a7af927201bc2ae, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7d9cdd7f424c2681E.exit66" ], [ @alloc_60273c1cb7671d9f448df947ded8d8f4, %bb23 ], [ @alloc_879de453d19057933db2bb8482a867d0, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7d9cdd7f424c2681E.exit44" ], [ @alloc_31b710564fd53fa57e039806c7174bb9, %bb17 ], [ @alloc_3b92100d882032e2737b8dc64db839ad, %bb11 ], [ @alloc_2f2fdb8d9b83b737fb3bab9ff0755ce7, %bb7 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef range(i64 -2147483648, 2147483648) %8, i64 noundef range(i64 0, 2305843009213693952) %9, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %10) #26
          to label %panic.i.i69.cont unwind label %cleanup

panic.i.i69.cont:                                 ; preds = %panic.i.i69.invoke
  unreachable

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7d9cdd7f424c2681E.exit73": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7d9cdd7f424c2681E.exit66"
  %_6.i63 = load ptr, ptr %v.sroa.4.0._0.sroa_idx.i.i, align 8, !alias.scope !1660, !noalias !1663, !nonnull !37, !noundef !37
  %_0.i.i64 = getelementptr inbounds nuw i32, ptr %_6.i63, i64 %_21
  %_51 = load i32, ptr %_0.i.i64, align 4, !noundef !37
  %_0.i.i71 = getelementptr inbounds nuw i32, ptr %_6.i63, i64 %_58
  %_55 = load i32, ptr %_0.i.i71, align 4, !noundef !37
  %_54 = add i32 %_55, 1
  %_0.sroa.0.0.i74 = tail call noundef i32 @llvm.smax.i32(i32 %_54, i32 %_51)
  store i32 %_0.sroa.0.0.i74, ptr %_0.i.i71, align 4
  br label %bb30

terminate:                                        ; preds = %cleanup
  %11 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #28
  unreachable

bb34:                                             ; preds = %cleanup
  resume { ptr, i32 } %6
}
