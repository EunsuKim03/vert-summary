define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_16.i.i = alloca [24 x i8], align 8
  %der = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %der)
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
  br i1 %0, label %bb14.i.i, label %_ZN5alloc3vec9from_elem17h617c04d3052ebf4bE.exit, !prof !1033

bb14.i.i:                                         ; preds = %start
  %err.1.i.i = load i64, ptr %2, align 8, !noalias !1644
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #26, !noalias !1644
  unreachable

_ZN5alloc3vec9from_elem17h617c04d3052ebf4bE.exit: ; preds = %start
  %res.1.i.i = load ptr, ptr %2, align 8, !noalias !1644, !nonnull !37, !noundef !37
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1644
  store i64 %err.0.i.i, ptr %der, align 8, !alias.scope !1644
  %3 = getelementptr inbounds nuw i8, ptr %der, i64 8
  store ptr %res.1.i.i, ptr %3, align 8, !alias.scope !1644
  %4 = getelementptr inbounds nuw i8, ptr %der, i64 16
  store i64 %_3, ptr %4, align 8, !alias.scope !1644
  %_4.i.i.not = icmp eq i64 %_3, 0
  br i1 %_4.i.i.not, label %panic.i.i38.invoke, label %bb2

cleanup:                                          ; preds = %panic.i.i38.invoke
  %5 = landingpad { ptr, i32 }
          cleanup
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %der, i64 noundef 4, i64 noundef 4)
          to label %bb18 unwind label %terminate

bb2:                                              ; preds = %_ZN5alloc3vec9from_elem17h617c04d3052ebf4bE.exit
  store i32 1, ptr %res.1.i.i, align 4
  %len.i3 = load i64, ptr %4, align 8, !alias.scope !1645, !noalias !1648, !noundef !37
  %_4.i.i4 = icmp ugt i64 %len.i3, 1
  br i1 %_4.i.i4, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17haf59c2a9ca362bfcE.exit8", label %panic.i.i38.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17haf59c2a9ca362bfcE.exit8": ; preds = %bb2
  %_6.i6 = load ptr, ptr %3, align 8, !alias.scope !1645, !noalias !1648, !nonnull !37, !noundef !37
  %_0.i.i = getelementptr inbounds nuw i8, ptr %_6.i6, i64 4
  store i32 0, ptr %_0.i.i, align 4
  %len.i9 = load i64, ptr %4, align 8, !alias.scope !1650, !noalias !1653, !noundef !37
  %_4.i.i10 = icmp ugt i64 %len.i9, 2
  br i1 %_4.i.i10, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17haf59c2a9ca362bfcE.exit15", label %panic.i.i38.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17haf59c2a9ca362bfcE.exit15": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17haf59c2a9ca362bfcE.exit8"
  %_6.i12 = load ptr, ptr %3, align 8, !alias.scope !1650, !noalias !1653, !nonnull !37, !noundef !37
  %_0.i.i13 = getelementptr inbounds nuw i8, ptr %_6.i12, i64 8
  store i32 1, ptr %_0.i.i13, align 4
  %_0.i.not.i.i59 = icmp slt i32 %n, 3
  br i1 %_0.i.not.i.i59, label %bb11, label %bb10.lr.ph

bb10.lr.ph:                                       ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17haf59c2a9ca362bfcE.exit15"
  %.not = icmp eq i32 %n, 3
  %iter.sroa.7.165 = zext i1 %.not to i8
  %_0.i3.i.i60.not = icmp eq i32 %n, 3
  %iter.sroa.0.164 = select i1 %_0.i3.i.i60.not, i32 3, i32 4
  br label %bb10

bb10:                                             ; preds = %bb10.lr.ph, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17haf59c2a9ca362bfcE.exit42"
  %_0.sroa.3.0.i.i68 = phi i32 [ 3, %bb10.lr.ph ], [ %_0.sroa.3.0.i.i, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17haf59c2a9ca362bfcE.exit42" ]
  %iter.sroa.7.167 = phi i8 [ %iter.sroa.7.165, %bb10.lr.ph ], [ %iter.sroa.7.1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17haf59c2a9ca362bfcE.exit42" ]
  %iter.sroa.0.166 = phi i32 [ %iter.sroa.0.164, %bb10.lr.ph ], [ %iter.sroa.0.1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17haf59c2a9ca362bfcE.exit42" ]
  %_18 = add i32 %_0.sroa.3.0.i.i68, -1
  %_23 = sext i32 %_18 to i64
  %len.i16 = load i64, ptr %4, align 8, !alias.scope !1655, !noalias !1658, !noundef !37
  %_4.i.i17 = icmp ugt i64 %len.i16, %_23
  br i1 %_4.i.i17, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hba2f695d3d9f186cE.exit", label %panic.i.i38.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hba2f695d3d9f186cE.exit": ; preds = %bb10
  %_6.i19 = load ptr, ptr %3, align 8, !alias.scope !1655, !noalias !1658, !nonnull !37, !noundef !37
  %_0.i.i20 = getelementptr inbounds nuw i32, ptr %_6.i19, i64 %_23
  %_20 = load i32, ptr %_0.i.i20, align 4, !noundef !37
  %_28 = add i32 %_0.sroa.3.0.i.i68, -2
  %_27 = sext i32 %_28 to i64
  %_4.i.i30 = icmp ugt i64 %len.i16, %_27
  br i1 %_4.i.i30, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hba2f695d3d9f186cE.exit35", label %panic.i.i38.invoke

bb11:                                             ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17haf59c2a9ca362bfcE.exit42", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17haf59c2a9ca362bfcE.exit15"
  %len.i22 = load i64, ptr %4, align 8, !alias.scope !1660, !noalias !1663, !noundef !37
  %_4.i.i23 = icmp ugt i64 %len.i22, %_4
  br i1 %_4.i.i23, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hba2f695d3d9f186cE.exit28", label %panic.i.i38.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hba2f695d3d9f186cE.exit28": ; preds = %bb11
  %_6.i25 = load ptr, ptr %3, align 8, !alias.scope !1660, !noalias !1663, !nonnull !37, !noundef !37
  %_0.i.i26 = getelementptr inbounds nuw i32, ptr %_6.i25, i64 %_4
  %_0 = load i32, ptr %_0.i.i26, align 4, !noundef !37
; call alloc::raw_vec::RawVecInner<A>::deallocate
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %der, i64 noundef 4, i64 noundef 4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %der)
  ret i32 %_0

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hba2f695d3d9f186cE.exit35": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hba2f695d3d9f186cE.exit"
  %_31 = sext i32 %_0.sroa.3.0.i.i68 to i64
  %_4.i.i37 = icmp ugt i64 %len.i16, %_31
  br i1 %_4.i.i37, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17haf59c2a9ca362bfcE.exit42", label %panic.i.i38.invoke

panic.i.i38.invoke:                               ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hba2f695d3d9f186cE.exit35", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hba2f695d3d9f186cE.exit", %bb10, %_ZN5alloc3vec9from_elem17h617c04d3052ebf4bE.exit, %bb11, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17haf59c2a9ca362bfcE.exit8", %bb2
  %6 = phi i64 [ 1, %bb2 ], [ 2, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17haf59c2a9ca362bfcE.exit8" ], [ %_4, %bb11 ], [ 0, %_ZN5alloc3vec9from_elem17h617c04d3052ebf4bE.exit ], [ %_31, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hba2f695d3d9f186cE.exit35" ], [ %_27, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hba2f695d3d9f186cE.exit" ], [ %_23, %bb10 ]
  %7 = phi i64 [ %len.i3, %bb2 ], [ %len.i9, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17haf59c2a9ca362bfcE.exit8" ], [ %len.i22, %bb11 ], [ %_3, %_ZN5alloc3vec9from_elem17h617c04d3052ebf4bE.exit ], [ %len.i16, %bb10 ], [ %len.i16, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hba2f695d3d9f186cE.exit" ], [ %len.i16, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hba2f695d3d9f186cE.exit35" ]
  %8 = phi ptr [ @alloc_0e569becd73c94f81f1277866df9536c, %bb2 ], [ @alloc_70d7ec2340ec83a39789ef56a9a9baa3, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17haf59c2a9ca362bfcE.exit8" ], [ @alloc_feff2813e9e56e89886e9ff0bc362d3c, %bb11 ], [ @alloc_8f94c27f837441fa3f63a9d395061f67, %_ZN5alloc3vec9from_elem17h617c04d3052ebf4bE.exit ], [ @alloc_658d7a56aaec0bbd5158c30b231d0fe9, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hba2f695d3d9f186cE.exit35" ], [ @alloc_ebde3b36a21fe66e03216df603447c2f, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hba2f695d3d9f186cE.exit" ], [ @alloc_cb84948e34d76abf68f270f0d0485026, %bb10 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef range(i64 -2147483648, 2147483648) %6, i64 noundef range(i64 0, 2305843009213693952) %7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %8) #25
          to label %panic.i.i38.cont unwind label %cleanup

panic.i.i38.cont:                                 ; preds = %panic.i.i38.invoke
  unreachable

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17haf59c2a9ca362bfcE.exit42": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hba2f695d3d9f186cE.exit35"
  %_0.i.i33 = getelementptr inbounds nuw i32, ptr %_6.i19, i64 %_27
  %_24 = load i32, ptr %_0.i.i33, align 4, !noundef !37
  %_0.i.i40 = getelementptr inbounds nuw i32, ptr %_6.i19, i64 %_31
  %_19 = add i32 %_24, %_20
  %9 = mul i32 %_19, %_18
  store i32 %9, ptr %_0.i.i40, align 4
  %_10.i.i = trunc nuw i8 %iter.sroa.7.167 to i1
  %_0.i.not.i.i = icmp sgt i32 %iter.sroa.0.166, %n
  %or.cond = select i1 %_10.i.i, i1 true, i1 %_0.i.not.i.i
  %_0.i3.i.i = icmp slt i32 %iter.sroa.0.166, %n
  %not.or.cond = xor i1 %or.cond, true
  %narrow = select i1 %not.or.cond, i1 %_0.i3.i.i, i1 false
  %spec.select = zext i1 %narrow to i32
  %iter.sroa.0.1 = add nuw nsw i32 %iter.sroa.0.166, %spec.select
  %10 = select i1 %or.cond, i1 true, i1 %_0.i3.i.i
  %iter.sroa.7.1 = select i1 %10, i8 %iter.sroa.7.167, i8 1
  %_0.sroa.3.0.i.i = select i1 %_10.i.i, i32 undef, i32 %iter.sroa.0.166
  br i1 %or.cond, label %bb11, label %bb10

terminate:                                        ; preds = %cleanup
  %11 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #27
  unreachable

bb18:                                             ; preds = %cleanup
  resume { ptr, i32 } %5
}
