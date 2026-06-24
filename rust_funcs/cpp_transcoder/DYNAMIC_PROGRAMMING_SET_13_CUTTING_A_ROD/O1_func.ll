define noundef i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_16.i.i = alloca [24 x i8], align 8
  %val = alloca [24 x i8], align 8
  %price.sroa.0.0.extract.trunc = trunc i64 %0 to i32
  %price.sroa.2.0.extract.shift = lshr i64 %0, 32
  %price.sroa.2.0.extract.trunc = trunc nuw i64 %price.sroa.2.0.extract.shift to i32
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %val)
  %_5 = sext i32 %n to i64
  %_4 = add nsw i64 %_5, 1
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
  br i1 %1, label %bb14.i.i, label %_ZN5alloc3vec9from_elem17h2fd7266c52310399E.exit, !prof !1033

bb14.i.i:                                         ; preds = %start
  %err.1.i.i = load i64, ptr %3, align 8, !noalias !1644
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #26, !noalias !1644
  unreachable

_ZN5alloc3vec9from_elem17h2fd7266c52310399E.exit: ; preds = %start
  %res.1.i.i = load ptr, ptr %3, align 8, !noalias !1644, !nonnull !37, !noundef !37
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1644
  store i64 %err.0.i.i, ptr %val, align 8, !alias.scope !1644
  %4 = getelementptr inbounds nuw i8, ptr %val, i64 8
  store ptr %res.1.i.i, ptr %4, align 8, !alias.scope !1644
  %5 = getelementptr inbounds nuw i8, ptr %val, i64 16
  store i64 %_4, ptr %5, align 8, !alias.scope !1644
  %_0.i.not.i.i46 = icmp slt i32 %n, 1
  br i1 %_0.i.not.i.i46, label %bb8, label %bb10.preheader.lr.ph

bb10.preheader.lr.ph:                             ; preds = %_ZN5alloc3vec9from_elem17h2fd7266c52310399E.exit
  %.not = icmp eq i32 %n, 1
  %iter.sroa.7.152 = zext i1 %.not to i8
  %_0.i3.i.i47.not = icmp eq i32 %n, 1
  %iter.sroa.0.151 = select i1 %_0.i3.i.i47.not, i32 1, i32 2
  br label %bb12.lr.ph

cleanup:                                          ; preds = %panic.i.i19.invoke, %panic
  %6 = landingpad { ptr, i32 }
          cleanup
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %val, i64 noundef 4, i64 noundef 4)
          to label %bb21 unwind label %terminate

bb12.lr.ph:                                       ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h28650b6844510c6eE.exit", %bb10.preheader.lr.ph
  %_0.sroa.3.0.i.i55 = phi i32 [ 1, %bb10.preheader.lr.ph ], [ %_0.sroa.3.0.i.i, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h28650b6844510c6eE.exit" ]
  %iter.sroa.7.154 = phi i8 [ %iter.sroa.7.152, %bb10.preheader.lr.ph ], [ %iter.sroa.7.1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h28650b6844510c6eE.exit" ]
  %iter.sroa.0.153 = phi i32 [ %iter.sroa.0.151, %bb10.preheader.lr.ph ], [ %iter.sroa.0.1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h28650b6844510c6eE.exit" ]
  %len.i17 = load i64, ptr %5, align 8, !alias.scope !1645, !noalias !1648, !noundef !37
  %_6.i20 = load ptr, ptr %4, align 8, !nonnull !37
  %7 = zext nneg i32 %_0.sroa.3.0.i.i55 to i64
  %8 = add nsw i64 %7, -1
  %_4.i.i18 = icmp ugt i64 %len.i17, %8
  br i1 %_4.i.i18, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h954da740c9960ee0E.exit23", label %panic.i.i19.invoke

bb8:                                              ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h28650b6844510c6eE.exit", %_ZN5alloc3vec9from_elem17h2fd7266c52310399E.exit
  %len.i = load i64, ptr %5, align 8, !alias.scope !1650, !noalias !1653, !noundef !37
  %_4.i.i = icmp ugt i64 %len.i, %_5
  br i1 %_4.i.i, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h954da740c9960ee0E.exit", label %panic.i.i19.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h954da740c9960ee0E.exit": ; preds = %bb8
  %_6.i = load ptr, ptr %4, align 8, !alias.scope !1650, !noalias !1653, !nonnull !37, !noundef !37
  %_0.i.i = getelementptr inbounds nuw i32, ptr %_6.i, i64 %_5
  %_0 = load i32, ptr %_0.i.i, align 4, !noundef !37
; call alloc::raw_vec::RawVecInner<A>::deallocate
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %val, i64 noundef 4, i64 noundef 4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %val)
  ret i32 %_0

bb13:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h954da740c9960ee0E.exit23", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h954da740c9960ee0E.exit23.1"
  %max_val.sroa.0.0.lcssa = phi i32 [ %_22, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h954da740c9960ee0E.exit23" ], [ %_0.sroa.0.0.i.1, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h954da740c9960ee0E.exit23.1" ]
  %_34 = sext i32 %_0.sroa.3.0.i.i55 to i64
  %len.i11 = load i64, ptr %5, align 8, !alias.scope !1655, !noundef !37
  %_4.i.i12 = icmp ugt i64 %len.i11, %_34
  br i1 %_4.i.i12, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h28650b6844510c6eE.exit", label %panic.i.i19.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h28650b6844510c6eE.exit": ; preds = %bb13
  %_6.i14 = load ptr, ptr %4, align 8, !alias.scope !1655, !nonnull !37, !noundef !37
  %_0.i.i15 = getelementptr inbounds nuw i32, ptr %_6.i14, i64 %_34
  store i32 %max_val.sroa.0.0.lcssa, ptr %_0.i.i15, align 4
  %_10.i.i = trunc nuw i8 %iter.sroa.7.154 to i1
  %_0.i.not.i.i = icmp sgt i32 %iter.sroa.0.153, %n
  %or.cond = select i1 %_10.i.i, i1 true, i1 %_0.i.not.i.i
  %_0.i3.i.i = icmp slt i32 %iter.sroa.0.153, %n
  %not.or.cond = xor i1 %or.cond, true
  %narrow = select i1 %not.or.cond, i1 %_0.i3.i.i, i1 false
  %spec.select25 = zext i1 %narrow to i32
  %iter.sroa.0.1 = add nuw nsw i32 %iter.sroa.0.153, %spec.select25
  %9 = select i1 %or.cond, i1 true, i1 %_0.i3.i.i
  %iter.sroa.7.1 = select i1 %9, i8 %iter.sroa.7.154, i8 1
  %_0.sroa.3.0.i.i = select i1 %_10.i.i, i32 undef, i32 %iter.sroa.0.153
  br i1 %or.cond, label %bb8, label %bb12.lr.ph

panic.i.i19.invoke:                               ; preds = %bb12.lr.ph, %bb14.1, %bb13, %bb8
  %10 = phi i64 [ %_5, %bb8 ], [ %13, %bb14.1 ], [ %8, %bb12.lr.ph ], [ %_34, %bb13 ]
  %11 = phi i64 [ %len.i, %bb8 ], [ %len.i17, %bb14.1 ], [ %len.i17, %bb12.lr.ph ], [ %len.i11, %bb13 ]
  %12 = phi ptr [ @alloc_05fc83869af20ca4ed9dd2e29b8401e3, %bb8 ], [ @alloc_c1b296a7a6c36c4ddc20db6e413f4188, %bb14.1 ], [ @alloc_c1b296a7a6c36c4ddc20db6e413f4188, %bb12.lr.ph ], [ @alloc_e7434a67513c3d4c5e0938bfcd75ae5a, %bb13 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef range(i64 -2147483648, 2147483648) %10, i64 noundef range(i64 0, 2305843009213693952) %11, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %12) #25
          to label %panic.i.i19.cont unwind label %cleanup

panic.i.i19.cont:                                 ; preds = %panic.i.i19.invoke
  unreachable

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h954da740c9960ee0E.exit23": ; preds = %bb12.lr.ph
  %_0.i.i21 = getelementptr inbounds nuw i32, ptr %_6.i20, i64 %8
  %_26 = load i32, ptr %_0.i.i21, align 4, !noundef !37
  %_22 = add i32 %_26, %price.sroa.0.0.extract.trunc
  %exitcond43.not = icmp eq i32 %_0.sroa.3.0.i.i55, 1
  br i1 %exitcond43.not, label %bb13, label %bb14.1

bb14.1:                                           ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h954da740c9960ee0E.exit23"
  %13 = add nsw i64 %7, -2
  %_4.i.i18.1 = icmp ugt i64 %len.i17, %13
  br i1 %_4.i.i18.1, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h954da740c9960ee0E.exit23.1", label %panic.i.i19.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h954da740c9960ee0E.exit23.1": ; preds = %bb14.1
  %_0.i.i21.1 = getelementptr inbounds nuw i32, ptr %_6.i20, i64 %13
  %_26.1 = load i32, ptr %_0.i.i21.1, align 4, !noundef !37
  %_22.1 = add i32 %_26.1, %price.sroa.2.0.extract.trunc
  %_0.sroa.0.0.i.1 = tail call noundef i32 @llvm.smax.i32(i32 %_22.1, i32 %_22)
  %exitcond43.1.not = icmp eq i32 %_0.sroa.3.0.i.i55, 2
  br i1 %exitcond43.1.not, label %bb13, label %panic

panic:                                            ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h954da740c9960ee0E.exit23.1"
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_ce2a01c253e942be7efc5c0d3deb76cf) #26
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic
  unreachable

terminate:                                        ; preds = %cleanup
  %14 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #27
  unreachable

bb21:                                             ; preds = %cleanup
  resume { ptr, i32 } %6
}
