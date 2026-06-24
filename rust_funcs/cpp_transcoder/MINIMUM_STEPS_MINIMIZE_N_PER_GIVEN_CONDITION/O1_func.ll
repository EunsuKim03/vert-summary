define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %table = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %table)
  %_4 = sext i32 %n to i64
  %_3 = add nsw i64 %_4, 1
; call alloc::vec::from_elem
  call void @_ZN5alloc3vec9from_elem17h1bafdc0210dc2419E(ptr noalias noundef sret([24 x i8]) align 8 captures(address) dereferenceable(24) %table, i32 noundef %n, i64 noundef %_3)
  %0 = getelementptr inbounds nuw i8, ptr %table, i64 16
  %1 = getelementptr inbounds nuw i8, ptr %table, i64 8
  %_0.i.not.i.i59 = icmp slt i32 %n, 1
  br i1 %_0.i.not.i.i59, label %bb13.preheader, label %bb7.lr.ph

bb7.lr.ph:                                        ; preds = %start
  %.not = icmp eq i32 %n, 1
  %iter.sroa.7.165 = zext i1 %.not to i8
  %_0.i3.i.i60.not = icmp eq i32 %n, 1
  %iter.sroa.0.164 = select i1 %_0.i3.i.i60.not, i32 1, i32 2
  br label %bb7

cleanup:                                          ; preds = %panic.i.i35.invoke
  %2 = landingpad { ptr, i32 }
          cleanup
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %table, i64 noundef 4, i64 noundef 4)
          to label %bb34 unwind label %terminate

bb13.preheader:                                   ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h5f669fdb464b0b42E.exit", %start
  %3 = getelementptr inbounds nuw i8, ptr %table, i64 16
  %4 = getelementptr inbounds nuw i8, ptr %table, i64 8
  %5 = getelementptr inbounds nuw i8, ptr %table, i64 16
  %6 = getelementptr inbounds nuw i8, ptr %table, i64 8
  %_0.i.not.i.i.i69 = icmp slt i32 %n, 1
  br i1 %_0.i.not.i.i.i69, label %bb16, label %bb15.lr.ph

bb15.lr.ph:                                       ; preds = %bb13.preheader
  %_0.i3.i.i.i.not70 = icmp eq i32 %n, 1
  %spec.select5772 = zext i1 %_0.i3.i.i.i.not70 to i8
  %7 = add nsw i32 %n, -1
  %spec.select5671 = select i1 %_0.i3.i.i.i.not70, i32 1, i32 %7
  br label %bb15

bb7:                                              ; preds = %bb7.lr.ph, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h5f669fdb464b0b42E.exit"
  %_0.sroa.3.0.i.i68 = phi i32 [ 1, %bb7.lr.ph ], [ %_0.sroa.3.0.i.i, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h5f669fdb464b0b42E.exit" ]
  %iter.sroa.7.167 = phi i8 [ %iter.sroa.7.165, %bb7.lr.ph ], [ %iter.sroa.7.1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h5f669fdb464b0b42E.exit" ]
  %iter.sroa.0.166 = phi i32 [ %iter.sroa.0.164, %bb7.lr.ph ], [ %iter.sroa.0.1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h5f669fdb464b0b42E.exit" ]
  %_14 = sext i32 %_0.sroa.3.0.i.i68 to i64
  %len.i = load i64, ptr %0, align 8, !alias.scope !1638, !noalias !1641, !noundef !37
  %_4.i.i = icmp ugt i64 %len.i, %_14
  br i1 %_4.i.i, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h5f669fdb464b0b42E.exit", label %panic.i.i35.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h5f669fdb464b0b42E.exit": ; preds = %bb7
  %_6.i = load ptr, ptr %1, align 8, !alias.scope !1638, !noalias !1641, !nonnull !37, !noundef !37
  %_0.i.i = getelementptr inbounds nuw i32, ptr %_6.i, i64 %_14
  %8 = sub i32 %n, %_0.sroa.3.0.i.i68
  store i32 %8, ptr %_0.i.i, align 4
  %_10.i.i = trunc nuw i8 %iter.sroa.7.167 to i1
  %_0.i.not.i.i = icmp sgt i32 %iter.sroa.0.166, %n
  %or.cond = select i1 %_10.i.i, i1 true, i1 %_0.i.not.i.i
  %_0.i3.i.i = icmp slt i32 %iter.sroa.0.166, %n
  %not.or.cond = xor i1 %or.cond, true
  %narrow = select i1 %not.or.cond, i1 %_0.i3.i.i, i1 false
  %spec.select = zext i1 %narrow to i32
  %iter.sroa.0.1 = add nuw nsw i32 %iter.sroa.0.166, %spec.select
  %9 = select i1 %or.cond, i1 true, i1 %_0.i3.i.i
  %iter.sroa.7.1 = select i1 %9, i8 %iter.sroa.7.167, i8 1
  %_0.sroa.3.0.i.i = select i1 %_10.i.i, i32 undef, i32 %iter.sroa.0.166
  br i1 %or.cond, label %bb13.preheader, label %bb7

bb15:                                             ; preds = %bb15.lr.ph, %bb30
  %_0.sroa.3.0.i.i.i77 = phi i32 [ %n, %bb15.lr.ph ], [ %_0.sroa.3.0.i.i.i, %bb30 ]
  %iter1.sroa.7.176 = phi i8 [ %spec.select5772, %bb15.lr.ph ], [ %iter1.sroa.7.1, %bb30 ]
  %iter1.sroa.4.175 = phi i32 [ %spec.select5671, %bb15.lr.ph ], [ %iter1.sroa.4.1, %bb30 ]
  %10 = and i32 %_0.sroa.3.0.i.i.i77, 1
  %_23 = icmp eq i32 %10, 0
  br i1 %_23, label %bb17, label %bb23

bb16:                                             ; preds = %bb30, %bb13.preheader
  %11 = getelementptr inbounds nuw i8, ptr %table, i64 16
  %len.i6 = load i64, ptr %11, align 8, !alias.scope !1643, !noalias !1646, !noundef !37
  %_4.i.i7 = icmp ugt i64 %len.i6, 1
  br i1 %_4.i.i7, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd79e9e87dff6a02cE.exit", label %panic.i.i35.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd79e9e87dff6a02cE.exit": ; preds = %bb16
  %12 = getelementptr inbounds nuw i8, ptr %table, i64 8
  %_6.i9 = load ptr, ptr %12, align 8, !alias.scope !1643, !noalias !1646, !nonnull !37, !noundef !37
  %_0.i.i10 = getelementptr inbounds nuw i8, ptr %_6.i9, i64 4
  %_0 = load i32, ptr %_0.i.i10, align 4, !noundef !37
; call alloc::raw_vec::RawVecInner<A>::deallocate
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %table, i64 noundef 4, i64 noundef 4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %table)
  ret i32 %_0

bb17:                                             ; preds = %bb15
  %_30 = sext i32 %_0.sroa.3.0.i.i.i77 to i64
  %len.i12 = load i64, ptr %3, align 8, !alias.scope !1648, !noalias !1651, !noundef !37
  %_4.i.i13 = icmp ugt i64 %len.i12, %_30
  br i1 %_4.i.i13, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd79e9e87dff6a02cE.exit18", label %panic.i.i35.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd79e9e87dff6a02cE.exit18": ; preds = %bb17
  %_6.i15 = load ptr, ptr %4, align 8, !alias.scope !1648, !noalias !1651, !nonnull !37, !noundef !37
  %_0.i.i16 = getelementptr inbounds nuw i32, ptr %_6.i15, i64 %_30
  %_27 = load i32, ptr %_0.i.i16, align 4, !noundef !37
  %_345 = lshr exact i64 %_30, 1
  %_0.i.i23 = getelementptr inbounds nuw i32, ptr %_6.i15, i64 %_345
  %_26 = add i32 %_27, 1
  %_31 = load i32, ptr %_0.i.i23, align 4, !noundef !37
  %x.y.i = tail call noundef i32 @llvm.smin.i32(i32 %_26, i32 %_31)
  store i32 %x.y.i, ptr %_0.i.i23, align 4
  br label %bb23

bb23:                                             ; preds = %bb15, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd79e9e87dff6a02cE.exit18"
  %_38 = srem i32 %_0.sroa.3.0.i.i.i77, 3
  %_37 = icmp eq i32 %_38, 0
  br i1 %_37, label %bb24, label %bb30

bb24:                                             ; preds = %bb23
  %_44 = sext i32 %_0.sroa.3.0.i.i.i77 to i64
  %len.i33 = load i64, ptr %5, align 8, !alias.scope !1653, !noalias !1656, !noundef !37
  %_4.i.i34 = icmp ugt i64 %len.i33, %_44
  br i1 %_4.i.i34, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd79e9e87dff6a02cE.exit39", label %panic.i.i35.invoke

panic.i.i35.invoke:                               ; preds = %bb7, %bb24, %bb17, %bb16
  %13 = phi i64 [ 1, %bb16 ], [ %_44, %bb24 ], [ %_30, %bb17 ], [ %_14, %bb7 ]
  %14 = phi i64 [ %len.i6, %bb16 ], [ %len.i33, %bb24 ], [ %len.i12, %bb17 ], [ %len.i, %bb7 ]
  %15 = phi ptr [ @alloc_d239e1cc66f8a03c032ab82ecf0773d2, %bb16 ], [ @alloc_f7df775103ba7d826e7788a8362f710c, %bb24 ], [ @alloc_95022116ad3bd7736275701fb5c7a7e1, %bb17 ], [ @alloc_1255b2f09a22a633bb178e46c4b0d9f9, %bb7 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef range(i64 -2147483648, -9223372036854775808) %13, i64 noundef range(i64 0, 2305843009213693952) %14, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %15) #25
          to label %panic.i.i35.cont unwind label %cleanup

panic.i.i35.cont:                                 ; preds = %panic.i.i35.invoke
  unreachable

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd79e9e87dff6a02cE.exit39": ; preds = %bb24
  %_6.i36 = load ptr, ptr %6, align 8, !alias.scope !1653, !noalias !1656, !nonnull !37, !noundef !37
  %_0.i.i37 = getelementptr inbounds nuw i32, ptr %_6.i36, i64 %_44
  %_41 = load i32, ptr %_0.i.i37, align 4, !noundef !37
  %_48 = udiv i64 %_44, 3
  %_0.i.i44 = getelementptr inbounds nuw i32, ptr %_6.i36, i64 %_48
  %_40 = add i32 %_41, 1
  %_45 = load i32, ptr %_0.i.i44, align 4, !noundef !37
  %x.y.i47 = tail call noundef i32 @llvm.smin.i32(i32 %_40, i32 %_45)
  store i32 %x.y.i47, ptr %_0.i.i44, align 4
  br label %bb30

bb30:                                             ; preds = %bb23, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd79e9e87dff6a02cE.exit39"
  %_10.i.i.i = trunc nuw i8 %iter1.sroa.7.176 to i1
  %_0.i.not.i.i.i = icmp slt i32 %iter1.sroa.4.175, 1
  %or.cond58 = select i1 %_10.i.i.i, i1 true, i1 %_0.i.not.i.i.i
  %_0.i3.i.i.i.not = icmp eq i32 %iter1.sroa.4.175, 1
  %16 = add nsw i32 %iter1.sroa.4.175, -1
  %spec.select56 = select i1 %_0.i3.i.i.i.not, i32 1, i32 %16
  %spec.select57 = select i1 %_0.i3.i.i.i.not, i8 1, i8 %iter1.sroa.7.176
  %iter1.sroa.4.1 = select i1 %or.cond58, i32 %iter1.sroa.4.175, i32 %spec.select56
  %iter1.sroa.7.1 = select i1 %or.cond58, i8 %iter1.sroa.7.176, i8 %spec.select57
  %_0.sroa.3.0.i.i.i = select i1 %_10.i.i.i, i32 undef, i32 %iter1.sroa.4.175
  br i1 %or.cond58, label %bb16, label %bb15

terminate:                                        ; preds = %cleanup
  %17 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #27
  unreachable

bb34:                                             ; preds = %cleanup
  resume { ptr, i32 } %2
}
