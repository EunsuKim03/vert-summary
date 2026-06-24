define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_4.i.i = alloca [24 x i8], align 8
  %table = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %table)
  %_4 = sext i32 %n to i64
  %_3 = add nsw i64 %_4, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1631)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4.i.i), !noalias !1631
; call alloc::raw_vec::RawVecInner<A>::try_allocate_in
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_4.i.i, i64 noundef range(i64 -2147483647, 2147483649) %_3, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4), !noalias !1631
  %_5.i.i = load i64, ptr %_4.i.i, align 8, !range !1031, !noalias !1631, !noundef !37
  %0 = trunc nuw i64 %_5.i.i to i1
  %1 = getelementptr inbounds nuw i8, ptr %_4.i.i, i64 8
  %err.0.i.i = load i64, ptr %1, align 8, !range !1032, !noalias !1631, !noundef !37
  %2 = getelementptr inbounds nuw i8, ptr %_4.i.i, i64 16
  br i1 %0, label %bb3.i.i, label %"_ZN5alloc3vec12Vec$LT$T$GT$13with_capacity17h926ce94022576084E.exit", !prof !1033

bb3.i.i:                                          ; preds = %start
  %err.1.i.i = load i64, ptr %2, align 8, !noalias !1631
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #25, !noalias !1631
  unreachable

"_ZN5alloc3vec12Vec$LT$T$GT$13with_capacity17h926ce94022576084E.exit": ; preds = %start
  %this.1.i.i = load ptr, ptr %2, align 8, !noalias !1631, !nonnull !37, !noundef !37
  %_7.i.i = icmp ule i64 %_3, %err.0.i.i
  tail call void @llvm.assume(i1 %_7.i.i)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4.i.i), !noalias !1631
  store i64 %err.0.i.i, ptr %table, align 8, !alias.scope !1631
  %3 = getelementptr inbounds nuw i8, ptr %table, i64 8
  store ptr %this.1.i.i, ptr %3, align 8, !alias.scope !1631
  %4 = getelementptr inbounds nuw i8, ptr %table, i64 16
  store i64 0, ptr %4, align 8
  %_0.i.not.i.i56 = icmp slt i32 %n, 0
  br i1 %_0.i.not.i.i56, label %bb13.preheader, label %bb7.lr.ph

bb7.lr.ph:                                        ; preds = %"_ZN5alloc3vec12Vec$LT$T$GT$13with_capacity17h926ce94022576084E.exit"
  %.not = icmp eq i32 %n, 0
  %iter.sroa.7.161 = zext i1 %.not to i8
  %_0.i3.i.i57 = icmp ne i32 %n, 0
  %spec.select60 = zext i1 %_0.i3.i.i57 to i32
  br label %bb7

cleanup.loopexit:                                 ; preds = %bb1.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %cleanup

cleanup.loopexit.split-lp:                        ; preds = %panic.i.i.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit.split-lp, %cleanup.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %cleanup.loopexit ], [ %lpad.loopexit.split-lp, %cleanup.loopexit.split-lp ]
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %table, i64 noundef 4, i64 noundef 4)
          to label %bb34 unwind label %terminate

bb13.preheader:                                   ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h63f09cb2323df1a3E.exit", %"_ZN5alloc3vec12Vec$LT$T$GT$13with_capacity17h926ce94022576084E.exit"
  %_0.i.not.i.i.i65 = icmp sgt i32 %n, 1
  br i1 %_0.i.not.i.i.i65, label %bb16, label %bb15.lr.ph

bb15.lr.ph:                                       ; preds = %bb13.preheader
  %.not75 = icmp eq i32 %n, 1
  %iter1.sroa.7.171 = zext i1 %.not75 to i8
  %_0.i3.i.i.i66 = icmp eq i32 %n, 1
  %iter1.sroa.4.170 = zext i1 %_0.i3.i.i.i66 to i32
  br label %bb15

bb7:                                              ; preds = %bb7.lr.ph, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h63f09cb2323df1a3E.exit"
  %iter.sroa.7.164 = phi i8 [ %iter.sroa.7.161, %bb7.lr.ph ], [ %iter.sroa.7.1, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h63f09cb2323df1a3E.exit" ]
  %iter.sroa.0.163 = phi i32 [ %spec.select60, %bb7.lr.ph ], [ %iter.sroa.0.1, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h63f09cb2323df1a3E.exit" ]
  %iter.sroa.0.062 = phi i32 [ 0, %bb7.lr.ph ], [ %iter.sroa.0.163, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h63f09cb2323df1a3E.exit" ]
  %_14 = sub i32 %n, %iter.sroa.0.062
  %len.i.i = load i64, ptr %4, align 8, !alias.scope !1634, !noundef !37
  %self1.i.i = load i64, ptr %table, align 8, !range !1624, !alias.scope !1634, !noundef !37
  %_4.i.i6 = icmp eq i64 %len.i.i, %self1.i.i
  br i1 %_4.i.i6, label %bb1.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h63f09cb2323df1a3E.exit"

bb1.i.i:                                          ; preds = %bb7
; invoke alloc::raw_vec::RawVec<T,A>::grow_one
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h14a1daf2bb4a4a81E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %table)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h63f09cb2323df1a3E.exit" unwind label %cleanup.loopexit

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h63f09cb2323df1a3E.exit": ; preds = %bb1.i.i, %bb7
  %_15.i.i = load ptr, ptr %3, align 8, !alias.scope !1634, !nonnull !37, !noundef !37
  %end.i.i = getelementptr inbounds nuw i32, ptr %_15.i.i, i64 %len.i.i
  store i32 %_14, ptr %end.i.i, align 4
  %5 = add i64 %len.i.i, 1
  store i64 %5, ptr %4, align 8
  %_10.i.i = trunc nuw i8 %iter.sroa.7.164 to i1
  %_0.i.not.i.i = icmp sgt i32 %iter.sroa.0.163, %n
  %or.cond = select i1 %_10.i.i, i1 true, i1 %_0.i.not.i.i
  %_0.i3.i.i = icmp slt i32 %iter.sroa.0.163, %n
  %not.or.cond = xor i1 %or.cond, true
  %narrow = select i1 %not.or.cond, i1 %_0.i3.i.i, i1 false
  %spec.select = zext i1 %narrow to i32
  %iter.sroa.0.1 = add nuw nsw i32 %iter.sroa.0.163, %spec.select
  %6 = select i1 %or.cond, i1 true, i1 %_0.i3.i.i
  %iter.sroa.7.1 = select i1 %6, i8 %iter.sroa.7.164, i8 1
  br i1 %or.cond, label %bb13.preheader, label %bb7

bb15:                                             ; preds = %bb15.lr.ph, %bb30
  %_0.sroa.3.0.i.i.i74 = phi i32 [ 1, %bb15.lr.ph ], [ %_0.sroa.3.0.i.i.i, %bb30 ]
  %iter1.sroa.7.173 = phi i8 [ %iter1.sroa.7.171, %bb15.lr.ph ], [ %iter1.sroa.7.1, %bb30 ]
  %iter1.sroa.4.172 = phi i32 [ %iter1.sroa.4.170, %bb15.lr.ph ], [ %iter1.sroa.4.1, %bb30 ]
  %7 = and i32 %_0.sroa.3.0.i.i.i74, 1
  %_23 = icmp eq i32 %7, 0
  br i1 %_23, label %bb17, label %bb23

bb16:                                             ; preds = %bb30, %bb13.preheader
  %len.i = load i64, ptr %4, align 8, !alias.scope !1639, !noalias !1642, !noundef !37
  %_4.i.i7 = icmp ugt i64 %len.i, 1
  br i1 %_4.i.i7, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd79e9e87dff6a02cE.exit", label %panic.i.i.invoke

panic.i.i.invoke:                                 ; preds = %bb24, %bb17, %bb16
  %8 = phi i64 [ 1, %bb16 ], [ %_44, %bb24 ], [ %_30, %bb17 ]
  %9 = phi i64 [ %len.i, %bb16 ], [ %len.i29, %bb24 ], [ %len.i9, %bb17 ]
  %10 = phi ptr [ @alloc_8bdf5789f33bb978cfe120becd3cf96f, %bb16 ], [ @alloc_9af1ec02315128134e8a0329054695a4, %bb24 ], [ @alloc_0d22174e785c8269e60d09f6e28a69e7, %bb17 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef range(i64 -2147483648, -9223372036854775808) %8, i64 noundef range(i64 0, 2305843009213693952) %9, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %10) #24
          to label %panic.i.i.cont unwind label %cleanup.loopexit.split-lp

panic.i.i.cont:                                   ; preds = %panic.i.i.invoke
  unreachable

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd79e9e87dff6a02cE.exit": ; preds = %bb16
  %_6.i = load ptr, ptr %3, align 8, !alias.scope !1639, !noalias !1642, !nonnull !37, !noundef !37
  %_0.i.i = getelementptr inbounds nuw i8, ptr %_6.i, i64 4
  %_0 = load i32, ptr %_0.i.i, align 4, !noundef !37
; call alloc::raw_vec::RawVecInner<A>::deallocate
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %table, i64 noundef 4, i64 noundef 4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %table)
  ret i32 %_0

bb17:                                             ; preds = %bb15
  %_30 = sext i32 %_0.sroa.3.0.i.i.i74 to i64
  %len.i9 = load i64, ptr %4, align 8, !alias.scope !1644, !noalias !1647, !noundef !37
  %_4.i.i10 = icmp ugt i64 %len.i9, %_30
  br i1 %_4.i.i10, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd79e9e87dff6a02cE.exit15", label %panic.i.i.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd79e9e87dff6a02cE.exit15": ; preds = %bb17
  %_6.i12 = load ptr, ptr %3, align 8, !alias.scope !1644, !noalias !1647, !nonnull !37, !noundef !37
  %_0.i.i13 = getelementptr inbounds nuw i32, ptr %_6.i12, i64 %_30
  %_27 = load i32, ptr %_0.i.i13, align 4, !noundef !37
  %_345 = lshr exact i64 %_30, 1
  %_0.i.i20 = getelementptr inbounds nuw i32, ptr %_6.i12, i64 %_345
  %_26 = add i32 %_27, 1
  %_31 = load i32, ptr %_0.i.i20, align 4, !noundef !37
  %x.y.i = call noundef i32 @llvm.smin.i32(i32 %_26, i32 %_31)
  store i32 %x.y.i, ptr %_0.i.i20, align 4
  br label %bb23

bb23:                                             ; preds = %bb15, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd79e9e87dff6a02cE.exit15"
  %_38 = srem i32 %_0.sroa.3.0.i.i.i74, 3
  %_37 = icmp eq i32 %_38, 0
  br i1 %_37, label %bb24, label %bb30

bb24:                                             ; preds = %bb23
  %_44 = sext i32 %_0.sroa.3.0.i.i.i74 to i64
  %len.i29 = load i64, ptr %4, align 8, !alias.scope !1649, !noalias !1652, !noundef !37
  %_4.i.i30 = icmp ugt i64 %len.i29, %_44
  br i1 %_4.i.i30, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd79e9e87dff6a02cE.exit35", label %panic.i.i.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd79e9e87dff6a02cE.exit35": ; preds = %bb24
  %_6.i32 = load ptr, ptr %3, align 8, !alias.scope !1649, !noalias !1652, !nonnull !37, !noundef !37
  %_0.i.i33 = getelementptr inbounds nuw i32, ptr %_6.i32, i64 %_44
  %_41 = load i32, ptr %_0.i.i33, align 4, !noundef !37
  %_48 = udiv i64 %_44, 3
  %_0.i.i40 = getelementptr inbounds nuw i32, ptr %_6.i32, i64 %_48
  %_40 = add i32 %_41, 1
  %_45 = load i32, ptr %_0.i.i40, align 4, !noundef !37
  %x.y.i43 = call noundef i32 @llvm.smin.i32(i32 %_40, i32 %_45)
  store i32 %x.y.i43, ptr %_0.i.i40, align 4
  br label %bb30

bb30:                                             ; preds = %bb23, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd79e9e87dff6a02cE.exit35"
  %_10.i.i.i = trunc nuw i8 %iter1.sroa.7.173 to i1
  %_0.i.not.i.i.i = icmp sgt i32 %n, %iter1.sroa.4.172
  %or.cond54 = select i1 %_10.i.i.i, i1 true, i1 %_0.i.not.i.i.i
  %_0.i3.i.i.i = icmp slt i32 %n, %iter1.sroa.4.172
  %not.or.cond54 = xor i1 %or.cond54, true
  %narrow55 = select i1 %not.or.cond54, i1 %_0.i3.i.i.i, i1 false
  %spec.select52 = sext i1 %narrow55 to i32
  %iter1.sroa.4.1 = add nsw i32 %iter1.sroa.4.172, %spec.select52
  %11 = select i1 %or.cond54, i1 true, i1 %_0.i3.i.i.i
  %iter1.sroa.7.1 = select i1 %11, i8 %iter1.sroa.7.173, i8 1
  %_0.sroa.3.0.i.i.i = select i1 %_10.i.i.i, i32 undef, i32 %iter1.sroa.4.172
  br i1 %or.cond54, label %bb16, label %bb15

terminate:                                        ; preds = %cleanup
  %12 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #26
  unreachable

bb34:                                             ; preds = %cleanup
  resume { ptr, i32 } %lpad.phi
}
