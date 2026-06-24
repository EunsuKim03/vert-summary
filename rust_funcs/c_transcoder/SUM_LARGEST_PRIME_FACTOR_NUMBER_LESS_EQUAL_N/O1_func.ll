define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_16.i.i = alloca [24 x i8], align 8
  %prime = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %prime)
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
  br i1 %0, label %bb14.i.i, label %_ZN5alloc3vec9from_elem17h4e100b76871d0d17E.exit, !prof !1033

bb14.i.i:                                         ; preds = %start
  %err.1.i.i = load i64, ptr %2, align 8, !noalias !1644
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #26, !noalias !1644
  unreachable

_ZN5alloc3vec9from_elem17h4e100b76871d0d17E.exit: ; preds = %start
  %res.1.i.i = load ptr, ptr %2, align 8, !noalias !1644, !nonnull !37, !noundef !37
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1644
  store i64 %err.0.i.i, ptr %prime, align 8, !alias.scope !1644
  %3 = getelementptr inbounds nuw i8, ptr %prime, i64 8
  store ptr %res.1.i.i, ptr %3, align 8, !alias.scope !1644
  %4 = getelementptr inbounds nuw i8, ptr %prime, i64 16
  store i64 %_3, ptr %4, align 8, !alias.scope !1644
  %max = sdiv i32 %n, 2
  %_0.i.not.i.i76 = icmp slt i32 %n, 4
  br i1 %_0.i.not.i.i76, label %bb22.preheader, label %bb7.lr.ph

bb7.lr.ph:                                        ; preds = %_ZN5alloc3vec9from_elem17h4e100b76871d0d17E.exit
  %5 = and i32 %n, 2147483646
  %6 = icmp eq i32 %5, 4
  %iter.sroa.7.182 = zext i1 %6 to i8
  %_0.i3.i.i77 = icmp sgt i32 %n, 5
  %iter.sroa.0.181 = select i1 %_0.i3.i.i77, i32 3, i32 2
  br label %bb7

cleanup:                                          ; preds = %panic.i.i51.invoke
  %7 = landingpad { ptr, i32 }
          cleanup
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %prime, i64 noundef 4, i64 noundef 4)
          to label %bb33 unwind label %terminate

bb22.preheader:                                   ; preds = %bb19, %_ZN5alloc3vec9from_elem17h4e100b76871d0d17E.exit
  %len.i22 = load i64, ptr %4, align 8
  %_6.i25 = load ptr, ptr %3, align 8, !nonnull !37
  %_0.i.not.i.i1486 = icmp slt i32 %n, 2
  br i1 %_0.i.not.i.i1486, label %bb25, label %bb24.lr.ph

bb24.lr.ph:                                       ; preds = %bb22.preheader
  %.not = icmp eq i32 %n, 2
  %iter2.sroa.7.192 = zext i1 %.not to i8
  %_0.i3.i.i1687.not = icmp eq i32 %n, 2
  %iter2.sroa.0.191 = select i1 %_0.i3.i.i1687.not, i32 2, i32 3
  br label %bb24

bb7:                                              ; preds = %bb7.lr.ph, %bb19
  %_0.sroa.3.0.i.i85 = phi i32 [ 2, %bb7.lr.ph ], [ %_0.sroa.3.0.i.i, %bb19 ]
  %iter.sroa.7.184 = phi i8 [ %iter.sroa.7.182, %bb7.lr.ph ], [ %iter.sroa.7.1, %bb19 ]
  %iter.sroa.0.183 = phi i32 [ %iter.sroa.0.181, %bb7.lr.ph ], [ %iter.sroa.0.1, %bb19 ]
  %_17 = sext i32 %_0.sroa.3.0.i.i85 to i64
  %len.i = load i64, ptr %4, align 8, !alias.scope !1645, !noalias !1648, !noundef !37
  %_4.i.i = icmp ugt i64 %len.i, %_17
  br i1 %_4.i.i, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hcdb50729093d0f7dE.exit", label %panic.i.i51.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hcdb50729093d0f7dE.exit": ; preds = %bb7
  %_6.i = load ptr, ptr %3, align 8, !alias.scope !1645, !noalias !1648, !nonnull !37, !noundef !37
  %_0.i.i = getelementptr inbounds nuw i32, ptr %_6.i, i64 %_17
  %_14 = load i32, ptr %_0.i.i, align 4, !noundef !37
  %_13 = icmp eq i32 %_14, 0
  br i1 %_13, label %bb10, label %bb19

bb24:                                             ; preds = %bb24.lr.ph, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hcdb50729093d0f7dE.exit28"
  %_0.sroa.3.0.i.i1896 = phi i32 [ 2, %bb24.lr.ph ], [ %_0.sroa.3.0.i.i18, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hcdb50729093d0f7dE.exit28" ]
  %iter2.sroa.7.195 = phi i8 [ %iter2.sroa.7.192, %bb24.lr.ph ], [ %iter2.sroa.7.1, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hcdb50729093d0f7dE.exit28" ]
  %iter2.sroa.0.194 = phi i32 [ %iter2.sroa.0.191, %bb24.lr.ph ], [ %iter2.sroa.0.1, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hcdb50729093d0f7dE.exit28" ]
  %sum.sroa.0.093 = phi i32 [ 0, %bb24.lr.ph ], [ %sum.sroa.0.1, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hcdb50729093d0f7dE.exit28" ]
  %_40 = sext i32 %_0.sroa.3.0.i.i1896 to i64
  %_4.i.i23 = icmp ugt i64 %len.i22, %_40
  br i1 %_4.i.i23, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hcdb50729093d0f7dE.exit28", label %panic.i.i51.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hcdb50729093d0f7dE.exit28": ; preds = %bb24
  %_0.i.i26 = getelementptr inbounds nuw i32, ptr %_6.i25, i64 %_40
  %_37 = load i32, ptr %_0.i.i26, align 4, !noundef !37
  %_36 = icmp sgt i32 %_37, 0
  %spec.select61 = select i1 %_36, i32 %_37, i32 %_0.sroa.3.0.i.i1896
  %sum.sroa.0.1 = add i32 %spec.select61, %sum.sroa.0.093
  %_10.i.i9 = trunc nuw i8 %iter2.sroa.7.195 to i1
  %_0.i.not.i.i14 = icmp sgt i32 %iter2.sroa.0.194, %n
  %or.cond60 = select i1 %_10.i.i9, i1 true, i1 %_0.i.not.i.i14
  %_0.i3.i.i16 = icmp slt i32 %iter2.sroa.0.194, %n
  %not.or.cond60 = xor i1 %or.cond60, true
  %narrow71 = select i1 %not.or.cond60, i1 %_0.i3.i.i16, i1 false
  %spec.select56 = zext i1 %narrow71 to i32
  %iter2.sroa.0.1 = add nuw nsw i32 %iter2.sroa.0.194, %spec.select56
  %8 = select i1 %or.cond60, i1 true, i1 %_0.i3.i.i16
  %iter2.sroa.7.1 = select i1 %8, i8 %iter2.sroa.7.195, i8 1
  %_0.sroa.3.0.i.i18 = select i1 %_10.i.i9, i32 undef, i32 %iter2.sroa.0.194
  br i1 %or.cond60, label %bb25, label %bb24

bb25:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hcdb50729093d0f7dE.exit28", %bb22.preheader
  %sum.sroa.0.0.lcssa = phi i32 [ 0, %bb22.preheader ], [ %sum.sroa.0.1, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hcdb50729093d0f7dE.exit28" ]
; call alloc::raw_vec::RawVecInner<A>::deallocate
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %prime, i64 noundef 4, i64 noundef 4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %prime)
  ret i32 %sum.sroa.0.0.lcssa

bb10:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hcdb50729093d0f7dE.exit"
  %_20 = shl i32 %_0.sroa.3.0.i.i85, 1
  br label %bb13

bb19:                                             ; preds = %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h46f7c08cad1b0915E.exit48", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hcdb50729093d0f7dE.exit"
  %_10.i.i = trunc nuw i8 %iter.sroa.7.184 to i1
  %_0.i.not.i.i = icmp sgt i32 %iter.sroa.0.183, %max
  %or.cond = select i1 %_10.i.i, i1 true, i1 %_0.i.not.i.i
  %_0.i3.i.i = icmp slt i32 %iter.sroa.0.183, %max
  %not.or.cond = xor i1 %or.cond, true
  %narrow = select i1 %not.or.cond, i1 %_0.i3.i.i, i1 false
  %spec.select = zext i1 %narrow to i32
  %iter.sroa.0.1 = add nuw nsw i32 %iter.sroa.0.183, %spec.select
  %9 = select i1 %or.cond, i1 true, i1 %_0.i3.i.i
  %iter.sroa.7.1 = select i1 %9, i8 %iter.sroa.7.184, i8 1
  %_0.sroa.3.0.i.i = select i1 %_10.i.i, i32 undef, i32 %iter.sroa.0.183
  br i1 %or.cond, label %bb22.preheader, label %bb7

bb13:                                             ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h420a255dad9bd33fE.exit", %bb10
  %iter1.sroa.0.0 = phi i32 [ %_20, %bb10 ], [ %iter1.sroa.0.1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h420a255dad9bd33fE.exit" ]
  %iter1.sroa.7.0 = phi i8 [ 0, %bb10 ], [ %iter1.sroa.7.1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h420a255dad9bd33fE.exit" ]
  %_10.i.i36 = trunc nuw i8 %iter1.sroa.7.0 to i1
  %_0.i.not.i.i41 = icmp sgt i32 %iter1.sroa.0.0, %n
  %or.cond62 = select i1 %_10.i.i36, i1 true, i1 %_0.i.not.i.i41
  br i1 %or.cond62, label %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h46f7c08cad1b0915E.exit48", label %bb2.i.i42

bb2.i.i42:                                        ; preds = %bb13
  %_0.i3.i.i43 = icmp slt i32 %iter1.sroa.0.0, %n
  %10 = zext i1 %_0.i3.i.i43 to i32
  %spec.select58 = add nsw i32 %iter1.sroa.0.0, %10
  %spec.select59 = select i1 %_0.i3.i.i43, i8 %iter1.sroa.7.0, i8 1
  %11 = sext i32 %iter1.sroa.0.0 to i64
  br label %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h46f7c08cad1b0915E.exit48"

"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h46f7c08cad1b0915E.exit48": ; preds = %bb2.i.i42, %bb13
  %iter1.sroa.0.1 = phi i32 [ %iter1.sroa.0.0, %bb13 ], [ %spec.select58, %bb2.i.i42 ]
  %iter1.sroa.7.1 = phi i8 [ %iter1.sroa.7.0, %bb13 ], [ %spec.select59, %bb2.i.i42 ]
  %_0.sroa.3.0.i.i45 = phi i64 [ 0, %bb13 ], [ %11, %bb2.i.i42 ]
  br i1 %or.cond62, label %bb19, label %bb15

bb15:                                             ; preds = %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h46f7c08cad1b0915E.exit48"
  %len.i49 = load i64, ptr %4, align 8, !alias.scope !1650, !noundef !37
  %_4.i.i50 = icmp ult i64 %_0.sroa.3.0.i.i45, %len.i49
  br i1 %_4.i.i50, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h420a255dad9bd33fE.exit", label %panic.i.i51.invoke

panic.i.i51.invoke:                               ; preds = %bb7, %bb15, %bb24
  %12 = phi i64 [ %_40, %bb24 ], [ %_0.sroa.3.0.i.i45, %bb15 ], [ %_17, %bb7 ]
  %13 = phi i64 [ %len.i22, %bb24 ], [ %len.i49, %bb15 ], [ %len.i, %bb7 ]
  %14 = phi ptr [ @alloc_ea520f35a032612a4e0cbf3cb361d233, %bb24 ], [ @alloc_b4e92e8535cd8a33f2889c60c723be63, %bb15 ], [ @alloc_25b2de8a79f2816955d11c4f7175923c, %bb7 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef range(i64 -2147483648, 2147483648) %12, i64 noundef range(i64 0, 2305843009213693952) %13, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %14) #25
          to label %panic.i.i51.cont unwind label %cleanup

panic.i.i51.cont:                                 ; preds = %panic.i.i51.invoke
  unreachable

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h420a255dad9bd33fE.exit": ; preds = %bb15
  %_6.i52 = load ptr, ptr %3, align 8, !alias.scope !1650, !nonnull !37, !noundef !37
  %_0.i.i53 = getelementptr inbounds nuw i32, ptr %_6.i52, i64 %_0.sroa.3.0.i.i45
  store i32 %_0.sroa.3.0.i.i85, ptr %_0.i.i53, align 4
  br label %bb13

terminate:                                        ; preds = %cleanup
  %15 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #27
  unreachable

bb33:                                             ; preds = %cleanup
  resume { ptr, i32 } %7
}
