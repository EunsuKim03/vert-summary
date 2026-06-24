define noundef range(i32 0, 2) i32 @f_gold(ptr dead_on_return noalias noundef align 8 captures(address) dereferenceable(24) %str1, ptr dead_on_return noalias noundef align 8 captures(address) dereferenceable(24) %str2) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %anticlock_rot = alloca [24 x i8], align 8
  %clock_rot = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %clock_rot)
  store i64 0, ptr %clock_rot, align 8, !alias.scope !1630
  %_1.sroa.4.0._0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %clock_rot, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %_1.sroa.4.0._0.sroa_idx.i, align 8, !alias.scope !1630
  %_1.sroa.5.0._0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %clock_rot, i64 16
  store i64 0, ptr %_1.sroa.5.0._0.sroa_idx.i, align 8, !alias.scope !1630
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %anticlock_rot)
  store i64 0, ptr %anticlock_rot, align 8, !alias.scope !1633
  %_1.sroa.4.0._0.sroa_idx.i9 = getelementptr inbounds nuw i8, ptr %anticlock_rot, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %_1.sroa.4.0._0.sroa_idx.i9, align 8, !alias.scope !1633
  %_1.sroa.5.0._0.sroa_idx.i10 = getelementptr inbounds nuw i8, ptr %anticlock_rot, i64 16
  store i64 0, ptr %_1.sroa.5.0._0.sroa_idx.i10, align 8, !alias.scope !1633
  %0 = getelementptr inbounds nuw i8, ptr %str2, i64 16
  %_0.i = load i64, ptr %0, align 8, !alias.scope !1636, !noundef !37
  %_2.i = icmp sgt i64 %_0.i, -1
  tail call void @llvm.assume(i1 %_2.i)
  %_12 = add nsw i64 %_0.i, -2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1639)
  %1 = getelementptr inbounds nuw i8, ptr %str2, i64 8
  %_8.i = load ptr, ptr %1, align 8, !alias.scope !1639, !noalias !1642, !nonnull !37, !noundef !37
  %_3.not.i.i.i = icmp samesign ult i64 %_0.i, 2
  br i1 %_3.not.i.i.i, label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i", label %bb1.i.i.i

bb26:                                             ; preds = %cleanup.i.i103, %cleanup, %bb25
  %.pn5 = phi { ptr, i32 } [ %.pn, %bb25 ], [ %2, %cleanup ], [ %33, %cleanup.i.i103 ]
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h89223ae69590377bE"(ptr noalias noundef align 8 dereferenceable(24) %str2) #28
          to label %bb27 unwind label %terminate

cleanup:                                          ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17he335b8374d097a57E.exit.i106"
  %2 = landingpad { ptr, i32 }
          cleanup
  br label %bb26

bb25:                                             ; preds = %cleanup.i.i, %cleanup1, %cleanup2
  %.pn = phi { ptr, i32 } [ %4, %cleanup2 ], [ %3, %cleanup1 ], [ %31, %cleanup.i.i ]
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h89223ae69590377bE"(ptr noalias noundef align 8 dereferenceable(24) %clock_rot) #28
          to label %bb26 unwind label %terminate

cleanup1:                                         ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17he335b8374d097a57E.exit.i"
  %3 = landingpad { ptr, i32 }
          cleanup
  br label %bb25

cleanup2:                                         ; preds = %bb3.i.i81.invoke, %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h8f10742b627d7901E.exit87", %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h8f10742b627d7901E.exit64", %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h8f10742b627d7901E.exit32", %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h8f10742b627d7901E.exit"
  %4 = landingpad { ptr, i32 }
          cleanup
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h89223ae69590377bE"(ptr noalias noundef align 8 dereferenceable(24) %anticlock_rot) #28
          to label %bb25 unwind label %terminate

bb1.i.i.i:                                        ; preds = %start
  %_11.i.i.i = icmp eq i64 %_12, 0
  br i1 %_11.i.i.i, label %bb2.i.i.i, label %bb12.i.i.i

bb12.i.i.i:                                       ; preds = %bb1.i.i.i
  %5 = getelementptr inbounds nuw i8, ptr %_8.i, i64 %_12
  %self.i.i.i = load i8, ptr %5, align 1, !alias.scope !1644, !noalias !1649, !noundef !37
  %6 = icmp sgt i8 %self.i.i.i, -65
  br i1 %6, label %bb2.i.i.i, label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i"

bb2.i.i.i:                                        ; preds = %bb12.i.i.i, %bb1.i.i.i
  %data.i.i.i = getelementptr inbounds nuw i8, ptr %_8.i, i64 %_12
  br label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i"

"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i": ; preds = %bb2.i.i.i, %bb12.i.i.i, %start
  %_0.sroa.0.0.i.i.i = phi ptr [ %data.i.i.i, %bb2.i.i.i ], [ null, %bb12.i.i.i ], [ null, %start ]
  %.not.i.i = icmp eq ptr %_0.sroa.0.0.i.i.i, null
  br i1 %.not.i.i, label %bb3.i.i81.invoke, label %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h8f10742b627d7901E.exit", !prof !1033

"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h8f10742b627d7901E.exit": ; preds = %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i"
  %_9.i = getelementptr inbounds nuw i8, ptr %_0.sroa.0.0.i.i.i, i64 2
; invoke <alloc::vec::Vec<T,A> as alloc::vec::spec_extend::SpecExtend<&T,core::slice::iter::Iter<T>>>::spec_extend
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h50a987f7cf4aec42E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %anticlock_rot, ptr noundef nonnull readonly align 1 %_0.sroa.0.0.i.i.i, ptr noundef nonnull readonly %_9.i)
          to label %bb5 unwind label %cleanup2

bb5:                                              ; preds = %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h8f10742b627d7901E.exit"
  call void @llvm.experimental.noalias.scope.decl(metadata !1651)
  %_8.i12 = load ptr, ptr %1, align 8, !alias.scope !1651, !noalias !1654, !nonnull !37, !noundef !37
  %len.i13 = load i64, ptr %0, align 8, !alias.scope !1651, !noalias !1654, !noundef !37
  %_18.i.i.i17 = icmp eq i64 %_12, 0
  br i1 %_18.i.i.i17, label %bb22.i.i.i27, label %bb15.i.i.i18

bb15.i.i.i18:                                     ; preds = %bb5
  %_19.not.i.i.i19 = icmp ult i64 %_12, %len.i13
  br i1 %_19.not.i.i.i19, label %bb18.i.i.i29, label %bb16.i.i.i20

bb16.i.i.i20:                                     ; preds = %bb15.i.i.i18
  %7 = icmp eq i64 %_12, %len.i13
  br label %bb19.i.i.i21

bb18.i.i.i29:                                     ; preds = %bb15.i.i.i18
  %8 = getelementptr inbounds nuw i8, ptr %_8.i12, i64 %_12
  %self2.i.i.i30 = load i8, ptr %8, align 1, !alias.scope !1656, !noalias !1661, !noundef !37
  %9 = icmp sgt i8 %self2.i.i.i30, -65
  br label %bb19.i.i.i21

bb19.i.i.i21:                                     ; preds = %bb18.i.i.i29, %bb16.i.i.i20
  %_7.sroa.0.0.in.i.i.i22 = phi i1 [ %7, %bb16.i.i.i20 ], [ %9, %bb18.i.i.i29 ]
  br i1 %_7.sroa.0.0.in.i.i.i22, label %bb22.i.i.i27, label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i23"

bb22.i.i.i27:                                     ; preds = %bb19.i.i.i21, %bb5
  br label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i23"

"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i23": ; preds = %bb22.i.i.i27, %bb19.i.i.i21
  %_0.sroa.0.0.i.i.i24 = phi ptr [ %_8.i12, %bb22.i.i.i27 ], [ null, %bb19.i.i.i21 ]
  %.not.i.i25 = icmp eq ptr %_0.sroa.0.0.i.i.i24, null
  br i1 %.not.i.i25, label %bb3.i.i81.invoke, label %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h8f10742b627d7901E.exit32", !prof !1033

"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h8f10742b627d7901E.exit32": ; preds = %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i23"
  %_9.i33 = getelementptr inbounds nuw i8, ptr %_0.sroa.0.0.i.i.i24, i64 %_12
; invoke <alloc::vec::Vec<T,A> as alloc::vec::spec_extend::SpecExtend<&T,core::slice::iter::Iter<T>>>::spec_extend
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h50a987f7cf4aec42E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %anticlock_rot, ptr noundef nonnull readonly align 1 %_0.sroa.0.0.i.i.i24, ptr noundef nonnull readonly %_9.i33)
          to label %bb7 unwind label %cleanup2

bb7:                                              ; preds = %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h8f10742b627d7901E.exit32"
  call void @llvm.experimental.noalias.scope.decl(metadata !1663)
  %_8.i36 = load ptr, ptr %1, align 8, !alias.scope !1663, !noalias !1666, !nonnull !37, !noundef !37
  %len.i37 = load i64, ptr %0, align 8, !alias.scope !1663, !noalias !1666, !noundef !37
  %_3.not.i.i.i38 = icmp samesign ult i64 %_0.i, 2
  br i1 %_3.not.i.i.i38, label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i45", label %bb1.i.i.i39

bb1.i.i.i39:                                      ; preds = %bb7
  %_12.not.i.i.i41 = icmp ugt i64 %len.i37, 2
  br i1 %_12.not.i.i.i41, label %bb12.i.i.i61, label %bb10.i.i.i42

bb10.i.i.i42:                                     ; preds = %bb1.i.i.i39
  %10 = icmp eq i64 %len.i37, 2
  br label %bb13.i.i.i43

bb12.i.i.i61:                                     ; preds = %bb1.i.i.i39
  %11 = getelementptr inbounds nuw i8, ptr %_8.i36, i64 2
  %self.i.i.i62 = load i8, ptr %11, align 1, !alias.scope !1668, !noalias !1673, !noundef !37
  %12 = icmp sgt i8 %self.i.i.i62, -65
  br label %bb13.i.i.i43

bb13.i.i.i43:                                     ; preds = %bb12.i.i.i61, %bb10.i.i.i42
  %_6.sroa.0.0.in.i.i.i44 = phi i1 [ %10, %bb10.i.i.i42 ], [ %12, %bb12.i.i.i61 ]
  br i1 %_6.sroa.0.0.in.i.i.i44, label %bb15.i.i.i52, label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i45"

bb15.i.i.i52:                                     ; preds = %bb13.i.i.i43
  %_19.not.i.i.i53 = icmp ult i64 %_0.i, %len.i37
  br i1 %_19.not.i.i.i53, label %bb18.i.i.i59, label %bb16.i.i.i54

bb16.i.i.i54:                                     ; preds = %bb15.i.i.i52
  %13 = icmp eq i64 %_0.i, %len.i37
  br label %bb19.i.i.i55

bb18.i.i.i59:                                     ; preds = %bb15.i.i.i52
  %14 = getelementptr inbounds nuw i8, ptr %_8.i36, i64 %_0.i
  %self2.i.i.i60 = load i8, ptr %14, align 1, !alias.scope !1668, !noalias !1673, !noundef !37
  %15 = icmp sgt i8 %self2.i.i.i60, -65
  br label %bb19.i.i.i55

bb19.i.i.i55:                                     ; preds = %bb18.i.i.i59, %bb16.i.i.i54
  %_7.sroa.0.0.in.i.i.i56 = phi i1 [ %13, %bb16.i.i.i54 ], [ %15, %bb18.i.i.i59 ]
  br i1 %_7.sroa.0.0.in.i.i.i56, label %bb22.i.i.i57, label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i45"

bb22.i.i.i57:                                     ; preds = %bb19.i.i.i55
  %new_len.i.i.i = add nsw i64 %_0.i, -2
  %data.i.i.i58 = getelementptr inbounds nuw i8, ptr %_8.i36, i64 2
  br label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i45"

"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i45": ; preds = %bb22.i.i.i57, %bb19.i.i.i55, %bb13.i.i.i43, %bb7
  %_0.sroa.3.0.i.i.i46 = phi i64 [ %new_len.i.i.i, %bb22.i.i.i57 ], [ undef, %bb19.i.i.i55 ], [ undef, %bb13.i.i.i43 ], [ undef, %bb7 ]
  %_0.sroa.0.0.i.i.i47 = phi ptr [ %data.i.i.i58, %bb22.i.i.i57 ], [ null, %bb19.i.i.i55 ], [ null, %bb13.i.i.i43 ], [ null, %bb7 ]
  %.not.i.i48 = icmp eq ptr %_0.sroa.0.0.i.i.i47, null
  br i1 %.not.i.i48, label %bb3.i.i81.invoke, label %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h8f10742b627d7901E.exit64", !prof !1033

"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h8f10742b627d7901E.exit64": ; preds = %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i45"
  %_9.i65 = getelementptr inbounds nuw i8, ptr %_0.sroa.0.0.i.i.i47, i64 %_0.sroa.3.0.i.i.i46
; invoke <alloc::vec::Vec<T,A> as alloc::vec::spec_extend::SpecExtend<&T,core::slice::iter::Iter<T>>>::spec_extend
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h50a987f7cf4aec42E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %clock_rot, ptr noundef nonnull readonly align 1 %_0.sroa.0.0.i.i.i47, ptr noundef nonnull readonly %_9.i65)
          to label %bb9 unwind label %cleanup2

bb9:                                              ; preds = %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h8f10742b627d7901E.exit64"
  call void @llvm.experimental.noalias.scope.decl(metadata !1675)
  %_8.i68 = load ptr, ptr %1, align 8, !alias.scope !1675, !noalias !1678, !nonnull !37, !noundef !37
  %len.i69 = load i64, ptr %0, align 8, !alias.scope !1675, !noalias !1678, !noundef !37
  %_19.not.i.i.i73 = icmp ugt i64 %len.i69, 2
  br i1 %_19.not.i.i.i73, label %bb18.i.i.i84, label %bb16.i.i.i74

bb16.i.i.i74:                                     ; preds = %bb9
  %16 = icmp eq i64 %len.i69, 2
  br label %bb19.i.i.i75

bb18.i.i.i84:                                     ; preds = %bb9
  %17 = getelementptr inbounds nuw i8, ptr %_8.i68, i64 2
  %self2.i.i.i85 = load i8, ptr %17, align 1, !alias.scope !1680, !noalias !1685, !noundef !37
  %18 = icmp sgt i8 %self2.i.i.i85, -65
  br label %bb19.i.i.i75

bb19.i.i.i75:                                     ; preds = %bb18.i.i.i84, %bb16.i.i.i74
  %_7.sroa.0.0.in.i.i.i76 = phi i1 [ %16, %bb16.i.i.i74 ], [ %18, %bb18.i.i.i84 ]
  br i1 %_7.sroa.0.0.in.i.i.i76, label %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h8f10742b627d7901E.exit87", label %bb3.i.i81.invoke, !prof !1687

bb3.i.i81.invoke:                                 ; preds = %bb19.i.i.i75, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i45", %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i23", %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i"
  %19 = phi ptr [ %_8.i, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i" ], [ %_8.i12, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i23" ], [ %_8.i36, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i45" ], [ %_8.i68, %bb19.i.i.i75 ]
  %20 = phi i64 [ %_0.i, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i" ], [ %len.i13, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i23" ], [ %len.i37, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i45" ], [ %len.i69, %bb19.i.i.i75 ]
  %21 = phi i64 [ %_12, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i" ], [ 0, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i23" ], [ 2, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i45" ], [ 0, %bb19.i.i.i75 ]
  %22 = phi i64 [ %_0.i, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i" ], [ %_12, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i23" ], [ %_0.i, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i45" ], [ 2, %bb19.i.i.i75 ]
  %23 = phi ptr [ @alloc_c8270cce062007783179b63036de03d7, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i" ], [ @alloc_2bcc43f06b47b13f4322c35062bc9814, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i23" ], [ @alloc_9a1ce75ec7b40457b1872c2279b3cfff, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i45" ], [ @alloc_0dcff3af21340686aedebe730c08cf7a, %bb19.i.i.i75 ]
; invoke core::str::slice_error_fail
  invoke void @_ZN4core3str16slice_error_fail17h4678567854dd8858E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %19, i64 noundef %20, i64 noundef range(i64 -2, 9223372036854775806) %21, i64 noundef range(i64 -2, -9223372036854775808) %22, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %23) #25
          to label %bb3.i.i81.cont unwind label %cleanup2

bb3.i.i81.cont:                                   ; preds = %bb3.i.i81.invoke
  unreachable

"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h8f10742b627d7901E.exit87": ; preds = %bb19.i.i.i75
  %_9.i88 = getelementptr inbounds nuw i8, ptr %_8.i68, i64 2
; invoke <alloc::vec::Vec<T,A> as alloc::vec::spec_extend::SpecExtend<&T,core::slice::iter::Iter<T>>>::spec_extend
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h50a987f7cf4aec42E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %clock_rot, ptr noundef nonnull readonly align 1 %_8.i68, ptr noundef nonnull readonly %_9.i88)
          to label %bb11 unwind label %cleanup2

bb11:                                             ; preds = %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h8f10742b627d7901E.exit87"
  call void @llvm.experimental.noalias.scope.decl(metadata !1688)
  call void @llvm.experimental.noalias.scope.decl(metadata !1691)
  call void @llvm.experimental.noalias.scope.decl(metadata !1693)
  call void @llvm.experimental.noalias.scope.decl(metadata !1696)
  %24 = getelementptr inbounds nuw i8, ptr %str1, i64 16
  %len1.i.i = load i64, ptr %24, align 8, !alias.scope !1698, !noalias !1699, !noundef !37
  %25 = load i64, ptr %_1.sroa.5.0._0.sroa_idx.i, align 8, !alias.scope !1699, !noalias !1698, !noundef !37
  %_3.not.i.i.i91 = icmp eq i64 %len1.i.i, %25
  br i1 %_3.not.i.i.i91, label %bb2.i.i.i93, label %bb14

bb2.i.i.i93:                                      ; preds = %bb11
  %_14.i.i = load ptr, ptr %_1.sroa.4.0._0.sroa_idx.i, align 8, !alias.scope !1699, !noalias !1698, !nonnull !37, !noundef !37
  %26 = getelementptr inbounds nuw i8, ptr %str1, i64 8
  %_6.i.i = load ptr, ptr %26, align 8, !alias.scope !1698, !noalias !1699, !nonnull !37, !noundef !37
  %bcmp.i.i.i = call i32 @bcmp(ptr nonnull readonly align 1 %_6.i.i, ptr nonnull readonly align 1 %_14.i.i, i64 range(i64 0, -9223372036854775808) %len1.i.i), !alias.scope !1700, !noalias !1704
  %27 = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %27, label %bb17, label %bb14

bb14:                                             ; preds = %bb11, %bb2.i.i.i93
  call void @llvm.experimental.noalias.scope.decl(metadata !1705)
  call void @llvm.experimental.noalias.scope.decl(metadata !1708)
  call void @llvm.experimental.noalias.scope.decl(metadata !1710)
  call void @llvm.experimental.noalias.scope.decl(metadata !1713)
  %28 = load i64, ptr %_1.sroa.5.0._0.sroa_idx.i10, align 8, !alias.scope !1715, !noalias !1716, !noundef !37
  %_3.not.i.i.i95 = icmp eq i64 %len1.i.i, %28
  br i1 %_3.not.i.i.i95, label %bb2.i.i.i97, label %bb19

bb2.i.i.i97:                                      ; preds = %bb14
  %_14.i.i98 = load ptr, ptr %_1.sroa.4.0._0.sroa_idx.i9, align 8, !alias.scope !1715, !noalias !1716, !nonnull !37, !noundef !37
  %29 = getelementptr inbounds nuw i8, ptr %str1, i64 8
  %_6.i.i99 = load ptr, ptr %29, align 8, !alias.scope !1716, !noalias !1715, !nonnull !37, !noundef !37
  %bcmp.i.i.i100 = call i32 @bcmp(ptr nonnull readonly align 1 %_6.i.i99, ptr nonnull readonly align 1 %_14.i.i98, i64 range(i64 0, -9223372036854775808) %len1.i.i), !alias.scope !1717, !noalias !1721
  %30 = icmp eq i32 %bcmp.i.i.i100, 0
  br i1 %30, label %bb17, label %bb19

bb19:                                             ; preds = %bb14, %bb2.i.i.i97, %bb17
  %_0.sroa.0.0 = phi i32 [ 1, %bb17 ], [ 0, %bb2.i.i.i97 ], [ 0, %bb14 ]
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %anticlock_rot)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17he335b8374d097a57E.exit.i" unwind label %cleanup.i.i

cleanup.i.i:                                      ; preds = %bb19
  %31 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %anticlock_rot)
          to label %bb25 unwind label %terminate.i.i

terminate.i.i:                                    ; preds = %cleanup.i.i
  %32 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #24
  unreachable

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17he335b8374d097a57E.exit.i": ; preds = %bb19
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %anticlock_rot)
          to label %bb20 unwind label %cleanup1

bb17:                                             ; preds = %bb2.i.i.i97, %bb2.i.i.i93
  br label %bb19

bb20:                                             ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17he335b8374d097a57E.exit.i"
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %anticlock_rot)
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %clock_rot)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17he335b8374d097a57E.exit.i106" unwind label %cleanup.i.i103

cleanup.i.i103:                                   ; preds = %bb20
  %33 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %clock_rot)
          to label %bb26 unwind label %terminate.i.i104

terminate.i.i104:                                 ; preds = %cleanup.i.i103
  %34 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #24
  unreachable

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17he335b8374d097a57E.exit.i106": ; preds = %bb20
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %clock_rot)
          to label %bb21 unwind label %cleanup

bb21:                                             ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17he335b8374d097a57E.exit.i106"
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %clock_rot)
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str2)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17he335b8374d097a57E.exit.i113" unwind label %cleanup.i.i110

cleanup.i.i110:                                   ; preds = %bb21
  %35 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str2)
          to label %bb27 unwind label %terminate.i.i111

terminate.i.i111:                                 ; preds = %cleanup.i.i110
  %36 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #24
  unreachable

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17he335b8374d097a57E.exit.i113": ; preds = %bb21
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str2)
          to label %bb22 unwind label %cleanup3

bb27:                                             ; preds = %cleanup3, %cleanup.i.i110, %bb26
  %.pn7 = phi { ptr, i32 } [ %.pn5, %bb26 ], [ %37, %cleanup3 ], [ %35, %cleanup.i.i110 ]
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h89223ae69590377bE"(ptr noalias noundef align 8 dereferenceable(24) %str1) #28
          to label %common.resume unwind label %terminate

cleanup3:                                         ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17he335b8374d097a57E.exit.i113"
  %37 = landingpad { ptr, i32 }
          cleanup
  br label %bb27

bb22:                                             ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17he335b8374d097a57E.exit.i113"
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str1)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h89223ae69590377bE.exit121" unwind label %cleanup.i.i117

cleanup.i.i117:                                   ; preds = %bb22
  %38 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str1)
          to label %common.resume unwind label %terminate.i.i118

terminate.i.i118:                                 ; preds = %cleanup.i.i117
  %39 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #24
  unreachable

common.resume:                                    ; preds = %bb27, %cleanup.i.i117
  %common.resume.op = phi { ptr, i32 } [ %38, %cleanup.i.i117 ], [ %.pn7, %bb27 ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h89223ae69590377bE.exit121": ; preds = %bb22
; call <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str1)
  ret i32 %_0.sroa.0.0

terminate:                                        ; preds = %bb27, %bb26, %bb25, %cleanup2
  %40 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #24
  unreachable
}
