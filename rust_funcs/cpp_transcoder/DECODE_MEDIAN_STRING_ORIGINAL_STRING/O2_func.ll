define void @f_gold(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_0, ptr dead_on_return noalias noundef readonly align 8 captures(none) dereferenceable(24) %s) unnamed_addr #1 personality ptr @rust_eh_personality {
bb20:
  %_48 = alloca [16 x i8], align 8
  %_40 = alloca [16 x i8], align 8
  %_33 = alloca [16 x i8], align 8
  %_23 = alloca [16 x i8], align 8
  %_16 = alloca [16 x i8], align 8
  %s1 = alloca [24 x i8], align 8
  %0 = getelementptr inbounds nuw i8, ptr %s, i64 16
  %l = load i64, ptr %0, align 8, !noundef !23
  %_50 = icmp sgt i64 %l, -1
  tail call void @llvm.assume(i1 %_50)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %s1)
  store i64 0, ptr %s1, align 8
  %_51.sroa.4.0.s1.sroa_idx = getelementptr inbounds nuw i8, ptr %s1, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %_51.sroa.4.0.s1.sroa_idx, align 8
  %_51.sroa.5.0.s1.sroa_idx = getelementptr inbounds nuw i8, ptr %s1, i64 16
  store i64 0, ptr %_51.sroa.5.0.s1.sroa_idx, align 8
  %_5 = and i64 %l, 1
  %is_even = icmp eq i64 %_5, 0
  %_55.not.not480 = icmp eq i64 %l, 0
  br i1 %_55.not.not480, label %bb4, label %bb3.lr.ph

bb3.lr.ph:                                        ; preds = %bb20
  %d9.i.i = lshr i64 %l, 1
  %1 = xor i64 %d9.i.i, -1
  %2 = add nsw i64 %l, %1
  %3 = getelementptr inbounds nuw i8, ptr %s, i64 8
  %_156 = load ptr, ptr %3, align 8, !nonnull !23
  %_163 = getelementptr inbounds nuw i8, ptr %_156, i64 %l
  %4 = getelementptr inbounds nuw i8, ptr %_48, i64 8
  %5 = getelementptr inbounds nuw i8, ptr %_33, i64 8
  %6 = getelementptr inbounds nuw i8, ptr %_40, i64 8
  %7 = getelementptr inbounds nuw i8, ptr %_16, i64 8
  %8 = getelementptr inbounds nuw i8, ptr %_23, i64 8
  br label %bb3

cleanup.loopexit:                                 ; preds = %bb1.i.i, %bb1.i.i126, %bb1.i.i206, %bb1.i.i295, %bb1.i.i386
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %cleanup

cleanup.loopexit.split-lp:                        ; preds = %bb73.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit.split-lp, %cleanup.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %cleanup.loopexit ], [ %lpad.loopexit.split-lp, %cleanup.loopexit.split-lp ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1051)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1054)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1057)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1060)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1063)
  %self1.i.i.i.i1.i.i = load i64, ptr %s1, align 8, !range !1031, !alias.scope !1066, !noalias !1069, !noundef !23
  %_6.i.i.i.i2.i.i = icmp eq i64 %self1.i.i.i.i1.i.i, 0
  br i1 %_6.i.i.i.i2.i.i, label %bb18, label %bb2.i.i.i3.i.i

bb2.i.i.i3.i.i:                                   ; preds = %cleanup
  %self3.i.i.i.i4.i.i = load ptr, ptr %_51.sroa.4.0.s1.sroa_idx, align 8, !alias.scope !1066, !noalias !1069, !nonnull !23, !noundef !23
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i, i64 noundef %self1.i.i.i.i1.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !1071
  br label %bb18

bb3:                                              ; preds = %bb3.lr.ph, %bb15
  %_20.i37484 = phi ptr [ inttoptr (i64 1 to ptr), %bb3.lr.ph ], [ %_20.i37485, %bb15 ]
  %len.i251469 = phi i64 [ 0, %bb3.lr.ph ], [ %len.i483, %bb15 ]
  %9 = phi i64 [ %2, %bb3.lr.ph ], [ %42, %bb15 ]
  %10 = phi i64 [ 2, %bb3.lr.ph ], [ %41, %bb15 ]
  %iter.sroa.0.0481 = phi i64 [ 0, %bb3.lr.ph ], [ %10, %bb15 ]
  br i1 %is_even, label %bb5, label %bb8

bb4:                                              ; preds = %bb15, %bb20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_0, ptr noundef nonnull align 8 dereferenceable(24) %s1, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %s1)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1072)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1075)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1078)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1081)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1084)
  %self1.i.i.i.i1.i.i29 = load i64, ptr %s, align 8, !range !1031, !alias.scope !1087, !noalias !1090, !noundef !23
  %_6.i.i.i.i2.i.i30 = icmp eq i64 %self1.i.i.i.i1.i.i29, 0
  br i1 %_6.i.i.i.i2.i.i30, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h0b30c459e27b6674E.exit33", label %bb2.i.i.i3.i.i31

bb2.i.i.i3.i.i31:                                 ; preds = %bb4
  %11 = getelementptr inbounds nuw i8, ptr %s, i64 8
  %self3.i.i.i.i4.i.i32 = load ptr, ptr %11, align 8, !alias.scope !1087, !noalias !1090, !nonnull !23, !noundef !23
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i32, i64 noundef %self1.i.i.i.i1.i.i29, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !1092
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h0b30c459e27b6674E.exit33"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h0b30c459e27b6674E.exit33": ; preds = %bb4, %bb2.i.i.i3.i.i31
  ret void

bb8:                                              ; preds = %bb3
  %_27 = sub i64 %l, %iter.sroa.0.0481
  %_26 = icmp ugt i64 %_27, 1
  br i1 %_26, label %bb9, label %bb12

bb5:                                              ; preds = %bb3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_16)
  store ptr %_156, ptr %_16, align 8
  store ptr %_163, ptr %7, align 8
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_75 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_16, i64 noundef %iter.sroa.0.0481)
  %.not21 = icmp eq i64 %_75, 0
  br i1 %.not21, label %bb28, label %bb73.invoke

bb12:                                             ; preds = %bb8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_48)
  store ptr %_156, ptr %_48, align 8
  store ptr %_163, ptr %4, align 8
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_167 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_48, i64 noundef %iter.sroa.0.0481)
  %.not = icmp eq i64 %_167, 0
  br i1 %.not, label %bb68, label %bb73.invoke

bb9:                                              ; preds = %bb8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_33)
  store ptr %_156, ptr %_33, align 8
  store ptr %_163, ptr %5, align 8
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_121 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_33, i64 noundef %iter.sroa.0.0481)
  %.not17 = icmp eq i64 %_121, 0
  br i1 %.not17, label %bb48, label %bb73.invoke

bb68:                                             ; preds = %bb12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1093)
  %ptr.i.i = load ptr, ptr %_48, align 8, !alias.scope !1096, !nonnull !23, !noundef !23
  %end_or_len.i.i = load ptr, ptr %4, align 8, !alias.scope !1096, !nonnull !23, !noundef !23
  %_7.i.i = icmp eq ptr %ptr.i.i, %end_or_len.i.i
  br i1 %_7.i.i, label %bb73.invoke, label %bb14.i

bb14.i:                                           ; preds = %bb68
  %x.i = load i8, ptr %ptr.i.i, align 1, !noalias !1093, !noundef !23
  %_6.i = icmp sgt i8 %x.i, -1
  br i1 %_6.i, label %bb74.thread, label %bb4.i

bb4.i:                                            ; preds = %bb14.i
  %_18.i.i = getelementptr inbounds nuw i8, ptr %ptr.i.i, i64 1
  %_30.i = and i8 %x.i, 31
  %init.i = zext nneg i8 %_30.i to i32
  %_7.i10.i = icmp ne ptr %_18.i.i, %end_or_len.i.i
  tail call void @llvm.assume(i1 %_7.i10.i)
  %y.i = load i8, ptr %_18.i.i, align 1, !noalias !1093, !noundef !23
  %_34.i = shl nuw nsw i32 %init.i, 6
  %_36.i = and i8 %y.i, 63
  %_35.i = zext nneg i8 %_36.i to i32
  %12 = or disjoint i32 %_34.i, %_35.i
  %_13.i = icmp samesign ugt i8 %x.i, -33
  br i1 %_13.i, label %bb6.i, label %bb74

bb74.thread:                                      ; preds = %bb14.i
  %_7.i = zext nneg i8 %x.i to i32
  %_14.i451 = icmp sgt i64 %len.i251469, -1
  tail call void @llvm.assume(i1 %_14.i451)
  br label %bb2.i

bb6.i:                                            ; preds = %bb4.i
  %_18.i12.i = getelementptr inbounds nuw i8, ptr %ptr.i.i, i64 2
  %_7.i17.i = icmp ne ptr %_18.i12.i, %end_or_len.i.i
  tail call void @llvm.assume(i1 %_7.i17.i)
  %z.i = load i8, ptr %_18.i12.i, align 1, !noalias !1093, !noundef !23
  %_40.i = shl nuw nsw i32 %_35.i, 6
  %_42.i = and i8 %z.i, 63
  %_41.i = zext nneg i8 %_42.i to i32
  %y_z.i = or disjoint i32 %_40.i, %_41.i
  %_20.i = shl nuw nsw i32 %init.i, 12
  %13 = or disjoint i32 %y_z.i, %_20.i
  %_21.i = icmp samesign ugt i8 %x.i, -17
  br i1 %_21.i, label %bb66, label %bb74

bb66:                                             ; preds = %bb6.i
  %_18.i19.i = getelementptr inbounds nuw i8, ptr %ptr.i.i, i64 3
  %_7.i24.i = icmp ne ptr %_18.i19.i, %end_or_len.i.i
  tail call void @llvm.assume(i1 %_7.i24.i)
  %_18.i26.i = getelementptr inbounds nuw i8, ptr %ptr.i.i, i64 4
  store ptr %_18.i26.i, ptr %_48, align 8, !alias.scope !1099
  %w.i = load i8, ptr %_18.i19.i, align 1, !noalias !1093, !noundef !23
  %_26.i = shl nuw nsw i32 %init.i, 18
  %_25.i = and i32 %_26.i, 1835008
  %_46.i = shl nuw nsw i32 %y_z.i, 6
  %_48.i = and i8 %w.i, 63
  %_47.i = zext nneg i8 %_48.i to i32
  %_27.i = or disjoint i32 %_46.i, %_47.i
  %14 = or disjoint i32 %_27.i, %_25.i
  %.not16 = icmp eq i32 %14, 1114112
  br i1 %.not16, label %bb73.invoke, label %bb74, !prof !1102

bb74:                                             ; preds = %bb6.i, %bb4.i, %bb66
  %_0.sroa.4.0.i.ph416 = phi i32 [ %14, %bb66 ], [ %13, %bb6.i ], [ %12, %bb4.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1103)
  %_14.i = icmp sgt i64 %len.i251469, -1
  tail call void @llvm.assume(i1 %_14.i)
  %_16.i = icmp samesign ult i32 %_0.sroa.4.0.i.ph416, 128
  br i1 %_16.i, label %bb2.i, label %bb3.i34

bb3.i34:                                          ; preds = %bb74
  %_17.i = icmp samesign ult i32 %_0.sroa.4.0.i.ph416, 2048
  br i1 %_17.i, label %bb2.i, label %bb4.i35

bb4.i35:                                          ; preds = %bb3.i34
  %_18.i = icmp samesign ult i32 %_0.sroa.4.0.i.ph416, 65536
  %..i = select i1 %_18.i, i64 3, i64 4
  br label %bb2.i

bb2.i:                                            ; preds = %bb74.thread, %bb4.i35, %bb3.i34, %bb74
  %_16.i455 = phi i1 [ true, %bb74 ], [ false, %bb4.i35 ], [ false, %bb3.i34 ], [ true, %bb74.thread ]
  %_0.sroa.4.0.i.ph416453 = phi i32 [ %_0.sroa.4.0.i.ph416, %bb74 ], [ %_0.sroa.4.0.i.ph416, %bb4.i35 ], [ %_0.sroa.4.0.i.ph416, %bb3.i34 ], [ %_7.i, %bb74.thread ]
  %ch_len.sroa.0.0.i = phi i64 [ 1, %bb74 ], [ %..i, %bb4.i35 ], [ 2, %bb3.i34 ], [ 1, %bb74.thread ]
  %self2.i.i = load i64, ptr %s1, align 8, !range !1031, !alias.scope !1106, !noundef !23
  %_9.i.i = sub nsw i64 %self2.i.i, %len.i251469
  %_7.i.i36 = icmp ugt i64 %ch_len.sroa.0.0.i, %_9.i.i
  br i1 %_7.i.i36, label %bb1.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h9a269ef57aaab35bE.exit.i", !prof !909

bb1.i.i:                                          ; preds = %bb2.i
; invoke alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hfeafb344f88c6c7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %s1, i64 noundef %len.i251469, i64 noundef range(i64 1, 5) %ch_len.sroa.0.0.i)
          to label %.noexc unwind label %cleanup.loopexit

.noexc:                                           ; preds = %bb1.i.i
  %count.pre.i = load i64, ptr %_51.sroa.5.0.s1.sroa_idx, align 8, !alias.scope !1103
  %_20.i37.pre = load ptr, ptr %_51.sroa.4.0.s1.sroa_idx, align 8, !alias.scope !1103
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h9a269ef57aaab35bE.exit.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h9a269ef57aaab35bE.exit.i": ; preds = %.noexc, %bb2.i
  %_20.i37 = phi ptr [ %_20.i37484, %bb2.i ], [ %_20.i37.pre, %.noexc ]
  %count.i = phi i64 [ %len.i251469, %bb2.i ], [ %count.pre.i, %.noexc ]
  %_21.i38 = icmp sgt i64 %count.i, -1
  tail call void @llvm.assume(i1 %_21.i38)
  %_8.i = getelementptr inbounds nuw i8, ptr %_20.i37, i64 %count.i
  br i1 %_16.i455, label %bb12.i.i, label %bb7.i.i

bb7.i.i:                                          ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h9a269ef57aaab35bE.exit.i"
  %_29.i.i = icmp samesign ult i32 %_0.sroa.4.0.i.ph416453, 2048
  %15 = trunc i32 %_0.sroa.4.0.i.ph416453 to i8
  %_5.i.i = and i8 %15, 63
  %last1.i.i = or disjoint i8 %_5.i.i, -128
  %_10.i.i = lshr i32 %_0.sroa.4.0.i.ph416453, 6
  %16 = trunc i32 %_10.i.i to i8
  %_8.i.i = and i8 %16, 63
  %last2.i.i = or disjoint i8 %_8.i.i, -128
  %_14.i.i = lshr i32 %_0.sroa.4.0.i.ph416453, 12
  %17 = trunc i32 %_14.i.i to i8
  %_12.i.i = and i8 %17, 63
  %last3.i.i = or disjoint i8 %_12.i.i, -128
  %_18.i.i39 = lshr i32 %_0.sroa.4.0.i.ph416453, 18
  %_16.i.i = trunc nuw nsw i32 %_18.i.i39 to i8
  %last4.i.i = or disjoint i8 %_16.i.i, -16
  br i1 %_29.i.i, label %bb1.i2.i, label %bb2.i.i

bb12.i.i:                                         ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h9a269ef57aaab35bE.exit.i"
  %18 = trunc nuw nsw i32 %_0.sroa.4.0.i.ph416453 to i8
  store i8 %18, ptr %_8.i, align 1, !noalias !1103
  br label %bb13

bb2.i.i:                                          ; preds = %bb7.i.i
  %_30.i.i = icmp samesign ult i32 %_0.sroa.4.0.i.ph416453, 65536
  br i1 %_30.i.i, label %bb3.i.i, label %bb4.i.i

bb1.i2.i:                                         ; preds = %bb7.i.i
  %19 = or disjoint i8 %16, -64
  store i8 %19, ptr %_8.i, align 1, !noalias !1103
  %_21.i.i = getelementptr inbounds nuw i8, ptr %_8.i, i64 1
  store i8 %last1.i.i, ptr %_21.i.i, align 1, !noalias !1103
  br label %bb13

bb4.i.i:                                          ; preds = %bb2.i.i
  store i8 %last4.i.i, ptr %_8.i, align 1, !noalias !1103
  %_25.i.i = getelementptr inbounds nuw i8, ptr %_8.i, i64 1
  store i8 %last3.i.i, ptr %_25.i.i, align 1, !noalias !1103
  %_26.i.i = getelementptr inbounds nuw i8, ptr %_8.i, i64 2
  store i8 %last2.i.i, ptr %_26.i.i, align 1, !noalias !1103
  %_27.i.i = getelementptr inbounds nuw i8, ptr %_8.i, i64 3
  store i8 %last1.i.i, ptr %_27.i.i, align 1, !noalias !1103
  br label %bb13

bb3.i.i:                                          ; preds = %bb2.i.i
  %20 = or disjoint i8 %17, -32
  store i8 %20, ptr %_8.i, align 1, !noalias !1103
  %_23.i.i = getelementptr inbounds nuw i8, ptr %_8.i, i64 1
  store i8 %last2.i.i, ptr %_23.i.i, align 1, !noalias !1103
  %_24.i.i = getelementptr inbounds nuw i8, ptr %_8.i, i64 2
  store i8 %last1.i.i, ptr %_24.i.i, align 1, !noalias !1103
  br label %bb13

bb73.invoke:                                      ; preds = %bb36, %bb6, %bb38, %bb26, %bb5, %bb28, %bb56, %bb10, %bb58, %bb46, %bb9, %bb48, %bb66, %bb12, %bb68
  %21 = phi ptr [ @alloc_14f68835a4088d69591254df407a4ea6, %bb68 ], [ @alloc_14f68835a4088d69591254df407a4ea6, %bb12 ], [ @alloc_14f68835a4088d69591254df407a4ea6, %bb66 ], [ @alloc_ad37e888b10a46c3a4cacfcdc0472908, %bb48 ], [ @alloc_ad37e888b10a46c3a4cacfcdc0472908, %bb9 ], [ @alloc_ad37e888b10a46c3a4cacfcdc0472908, %bb46 ], [ @alloc_8fcf40f22d34bdd1c0a39e0351eb1e86, %bb58 ], [ @alloc_8fcf40f22d34bdd1c0a39e0351eb1e86, %bb10 ], [ @alloc_8fcf40f22d34bdd1c0a39e0351eb1e86, %bb56 ], [ @alloc_316ee4cecd7320a2364fd5dd49c842ed, %bb28 ], [ @alloc_316ee4cecd7320a2364fd5dd49c842ed, %bb5 ], [ @alloc_316ee4cecd7320a2364fd5dd49c842ed, %bb26 ], [ @alloc_2291131c5242550125e102814d896be0, %bb38 ], [ @alloc_2291131c5242550125e102814d896be0, %bb6 ], [ @alloc_2291131c5242550125e102814d896be0, %bb36 ]
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %21) #23
          to label %bb73.cont unwind label %cleanup.loopexit.split-lp

bb73.cont:                                        ; preds = %bb73.invoke
  unreachable

bb13:                                             ; preds = %bb3.i.i, %bb4.i.i, %bb1.i2.i, %bb12.i.i
  %new_len.i = add nuw i64 %ch_len.sroa.0.0.i, %len.i251469
  store i64 %new_len.i, ptr %_51.sroa.5.0.s1.sroa_idx, align 8, !alias.scope !1103
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_48)
  br label %bb15

bb48:                                             ; preds = %bb9
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1109)
  %ptr.i.i40 = load ptr, ptr %_33, align 8, !alias.scope !1112, !nonnull !23, !noundef !23
  %end_or_len.i.i41 = load ptr, ptr %5, align 8, !alias.scope !1112, !nonnull !23, !noundef !23
  %_7.i.i42 = icmp eq ptr %ptr.i.i40, %end_or_len.i.i41
  br i1 %_7.i.i42, label %bb73.invoke, label %bb14.i43

bb14.i43:                                         ; preds = %bb48
  %x.i45 = load i8, ptr %ptr.i.i40, align 1, !noalias !1109, !noundef !23
  %_6.i46 = icmp sgt i8 %x.i45, -1
  br i1 %_6.i46, label %bb54.thread, label %bb4.i47

bb4.i47:                                          ; preds = %bb14.i43
  %_18.i.i44 = getelementptr inbounds nuw i8, ptr %ptr.i.i40, i64 1
  %_30.i48 = and i8 %x.i45, 31
  %init.i49 = zext nneg i8 %_30.i48 to i32
  %_7.i10.i50 = icmp ne ptr %_18.i.i44, %end_or_len.i.i41
  tail call void @llvm.assume(i1 %_7.i10.i50)
  %y.i52 = load i8, ptr %_18.i.i44, align 1, !noalias !1109, !noundef !23
  %_34.i53 = shl nuw nsw i32 %init.i49, 6
  %_36.i54 = and i8 %y.i52, 63
  %_35.i55 = zext nneg i8 %_36.i54 to i32
  %22 = or disjoint i32 %_34.i53, %_35.i55
  %_13.i56 = icmp samesign ugt i8 %x.i45, -33
  br i1 %_13.i56, label %bb6.i59, label %bb54

bb54.thread:                                      ; preds = %bb14.i43
  %_7.i80 = zext nneg i8 %x.i45 to i32
  %_14.i83458 = icmp sgt i64 %len.i251469, -1
  tail call void @llvm.assume(i1 %_14.i83458)
  br label %bb2.i90

bb6.i59:                                          ; preds = %bb4.i47
  %_18.i12.i51 = getelementptr inbounds nuw i8, ptr %ptr.i.i40, i64 2
  %_7.i17.i60 = icmp ne ptr %_18.i12.i51, %end_or_len.i.i41
  tail call void @llvm.assume(i1 %_7.i17.i60)
  %z.i62 = load i8, ptr %_18.i12.i51, align 1, !noalias !1109, !noundef !23
  %_40.i63 = shl nuw nsw i32 %_35.i55, 6
  %_42.i64 = and i8 %z.i62, 63
  %_41.i65 = zext nneg i8 %_42.i64 to i32
  %y_z.i66 = or disjoint i32 %_40.i63, %_41.i65
  %_20.i67 = shl nuw nsw i32 %init.i49, 12
  %23 = or disjoint i32 %y_z.i66, %_20.i67
  %_21.i68 = icmp samesign ugt i8 %x.i45, -17
  br i1 %_21.i68, label %bb46, label %bb54

bb46:                                             ; preds = %bb6.i59
  %_18.i19.i61 = getelementptr inbounds nuw i8, ptr %ptr.i.i40, i64 3
  %_7.i24.i70 = icmp ne ptr %_18.i19.i61, %end_or_len.i.i41
  tail call void @llvm.assume(i1 %_7.i24.i70)
  %_18.i26.i71 = getelementptr inbounds nuw i8, ptr %ptr.i.i40, i64 4
  store ptr %_18.i26.i71, ptr %_33, align 8, !alias.scope !1115
  %w.i72 = load i8, ptr %_18.i19.i61, align 1, !noalias !1109, !noundef !23
  %_26.i73 = shl nuw nsw i32 %init.i49, 18
  %_25.i74 = and i32 %_26.i73, 1835008
  %_46.i75 = shl nuw nsw i32 %y_z.i66, 6
  %_48.i76 = and i8 %w.i72, 63
  %_47.i77 = zext nneg i8 %_48.i76 to i32
  %_27.i78 = or disjoint i32 %_46.i75, %_47.i77
  %24 = or disjoint i32 %_27.i78, %_25.i74
  %.not18 = icmp eq i32 %24, 1114112
  br i1 %.not18, label %bb73.invoke, label %bb54, !prof !1102

bb54:                                             ; preds = %bb6.i59, %bb4.i47, %bb46
  %_0.sroa.4.0.i57.ph424 = phi i32 [ %24, %bb46 ], [ %23, %bb6.i59 ], [ %22, %bb4.i47 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1118)
  %_14.i83 = icmp sgt i64 %len.i251469, -1
  tail call void @llvm.assume(i1 %_14.i83)
  %_16.i84 = icmp samesign ult i32 %_0.sroa.4.0.i57.ph424, 128
  br i1 %_16.i84, label %bb2.i90, label %bb3.i85

bb3.i85:                                          ; preds = %bb54
  %_17.i86 = icmp samesign ult i32 %_0.sroa.4.0.i57.ph424, 2048
  br i1 %_17.i86, label %bb2.i90, label %bb4.i87

bb4.i87:                                          ; preds = %bb3.i85
  %_18.i88 = icmp samesign ult i32 %_0.sroa.4.0.i57.ph424, 65536
  %..i89 = select i1 %_18.i88, i64 3, i64 4
  br label %bb2.i90

bb2.i90:                                          ; preds = %bb54.thread, %bb4.i87, %bb3.i85, %bb54
  %_16.i84462 = phi i1 [ true, %bb54 ], [ false, %bb4.i87 ], [ false, %bb3.i85 ], [ true, %bb54.thread ]
  %_0.sroa.4.0.i57.ph424460 = phi i32 [ %_0.sroa.4.0.i57.ph424, %bb54 ], [ %_0.sroa.4.0.i57.ph424, %bb4.i87 ], [ %_0.sroa.4.0.i57.ph424, %bb3.i85 ], [ %_7.i80, %bb54.thread ]
  %ch_len.sroa.0.0.i91 = phi i64 [ 1, %bb54 ], [ %..i89, %bb4.i87 ], [ 2, %bb3.i85 ], [ 1, %bb54.thread ]
  %self2.i.i92 = load i64, ptr %s1, align 8, !range !1031, !alias.scope !1121, !noundef !23
  %_9.i.i93 = sub nsw i64 %self2.i.i92, %len.i251469
  %_7.i.i94 = icmp ugt i64 %ch_len.sroa.0.0.i91, %_9.i.i93
  br i1 %_7.i.i94, label %bb1.i.i126, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h9a269ef57aaab35bE.exit.i95", !prof !909

bb1.i.i126:                                       ; preds = %bb2.i90
; invoke alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hfeafb344f88c6c7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %s1, i64 noundef %len.i251469, i64 noundef range(i64 1, 5) %ch_len.sroa.0.0.i91)
          to label %.noexc128 unwind label %cleanup.loopexit

.noexc128:                                        ; preds = %bb1.i.i126
  %count.pre.i127 = load i64, ptr %_51.sroa.5.0.s1.sroa_idx, align 8, !alias.scope !1118
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h9a269ef57aaab35bE.exit.i95"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h9a269ef57aaab35bE.exit.i95": ; preds = %.noexc128, %bb2.i90
  %count.i96 = phi i64 [ %len.i251469, %bb2.i90 ], [ %count.pre.i127, %.noexc128 ]
  %_20.i97 = load ptr, ptr %_51.sroa.4.0.s1.sroa_idx, align 8, !alias.scope !1118, !nonnull !23, !noundef !23
  %_21.i98 = icmp sgt i64 %count.i96, -1
  tail call void @llvm.assume(i1 %_21.i98)
  %_8.i99 = getelementptr inbounds nuw i8, ptr %_20.i97, i64 %count.i96
  br i1 %_16.i84462, label %bb12.i.i125, label %bb7.i.i100

bb7.i.i100:                                       ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h9a269ef57aaab35bE.exit.i95"
  %_29.i.i101 = icmp samesign ult i32 %_0.sroa.4.0.i57.ph424460, 2048
  %25 = trunc i32 %_0.sroa.4.0.i57.ph424460 to i8
  %_5.i.i102 = and i8 %25, 63
  %last1.i.i103 = or disjoint i8 %_5.i.i102, -128
  %_10.i.i104 = lshr i32 %_0.sroa.4.0.i57.ph424460, 6
  %26 = trunc i32 %_10.i.i104 to i8
  %_8.i.i105 = and i8 %26, 63
  %last2.i.i106 = or disjoint i8 %_8.i.i105, -128
  %_14.i.i107 = lshr i32 %_0.sroa.4.0.i57.ph424460, 12
  %27 = trunc i32 %_14.i.i107 to i8
  %_12.i.i108 = and i8 %27, 63
  %last3.i.i109 = or disjoint i8 %_12.i.i108, -128
  %_18.i.i110 = lshr i32 %_0.sroa.4.0.i57.ph424460, 18
  %_16.i.i111 = trunc nuw nsw i32 %_18.i.i110 to i8
  %last4.i.i112 = or disjoint i8 %_16.i.i111, -16
  br i1 %_29.i.i101, label %bb1.i2.i123, label %bb2.i.i113

bb12.i.i125:                                      ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h9a269ef57aaab35bE.exit.i95"
  %28 = trunc nuw nsw i32 %_0.sroa.4.0.i57.ph424460 to i8
  store i8 %28, ptr %_8.i99, align 1, !noalias !1118
  br label %bb10

bb2.i.i113:                                       ; preds = %bb7.i.i100
  %_30.i.i114 = icmp samesign ult i32 %_0.sroa.4.0.i57.ph424460, 65536
  br i1 %_30.i.i114, label %bb3.i.i120, label %bb4.i.i115

bb1.i2.i123:                                      ; preds = %bb7.i.i100
  %29 = or disjoint i8 %26, -64
  store i8 %29, ptr %_8.i99, align 1, !noalias !1118
  %_21.i.i124 = getelementptr inbounds nuw i8, ptr %_8.i99, i64 1
  store i8 %last1.i.i103, ptr %_21.i.i124, align 1, !noalias !1118
  br label %bb10

bb4.i.i115:                                       ; preds = %bb2.i.i113
  store i8 %last4.i.i112, ptr %_8.i99, align 1, !noalias !1118
  %_25.i.i116 = getelementptr inbounds nuw i8, ptr %_8.i99, i64 1
  store i8 %last3.i.i109, ptr %_25.i.i116, align 1, !noalias !1118
  %_26.i.i117 = getelementptr inbounds nuw i8, ptr %_8.i99, i64 2
  store i8 %last2.i.i106, ptr %_26.i.i117, align 1, !noalias !1118
  %_27.i.i118 = getelementptr inbounds nuw i8, ptr %_8.i99, i64 3
  store i8 %last1.i.i103, ptr %_27.i.i118, align 1, !noalias !1118
  br label %bb10

bb3.i.i120:                                       ; preds = %bb2.i.i113
  %30 = or disjoint i8 %27, -32
  store i8 %30, ptr %_8.i99, align 1, !noalias !1118
  %_23.i.i121 = getelementptr inbounds nuw i8, ptr %_8.i99, i64 1
  store i8 %last2.i.i106, ptr %_23.i.i121, align 1, !noalias !1118
  %_24.i.i122 = getelementptr inbounds nuw i8, ptr %_8.i99, i64 2
  store i8 %last1.i.i103, ptr %_24.i.i122, align 1, !noalias !1118
  br label %bb10

bb10:                                             ; preds = %bb3.i.i120, %bb4.i.i115, %bb1.i2.i123, %bb12.i.i125
  %new_len.i119 = add nuw i64 %ch_len.sroa.0.0.i91, %len.i251469
  store i64 %new_len.i119, ptr %_51.sroa.5.0.s1.sroa_idx, align 8, !alias.scope !1118
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_33)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_40)
  store ptr %_156, ptr %_40, align 8
  store ptr %_163, ptr %6, align 8
  %_42 = or disjoint i64 %iter.sroa.0.0481, 1
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_144 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_40, i64 noundef %_42)
  %.not19 = icmp eq i64 %_144, 0
  br i1 %.not19, label %bb58, label %bb73.invoke

bb58:                                             ; preds = %bb10
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1124)
  %ptr.i.i130 = load ptr, ptr %_40, align 8, !alias.scope !1127, !nonnull !23, !noundef !23
  %end_or_len.i.i131 = load ptr, ptr %6, align 8, !alias.scope !1127, !nonnull !23, !noundef !23
  %_7.i.i132 = icmp eq ptr %ptr.i.i130, %end_or_len.i.i131
  br i1 %_7.i.i132, label %bb73.invoke, label %bb14.i133

bb14.i133:                                        ; preds = %bb58
  %x.i135 = load i8, ptr %ptr.i.i130, align 1, !noalias !1124, !noundef !23
  %_6.i136 = icmp sgt i8 %x.i135, -1
  br i1 %_6.i136, label %bb64.thread, label %bb4.i137

bb4.i137:                                         ; preds = %bb14.i133
  %_18.i.i134 = getelementptr inbounds nuw i8, ptr %ptr.i.i130, i64 1
  %_30.i138 = and i8 %x.i135, 31
  %init.i139 = zext nneg i8 %_30.i138 to i32
  %_7.i10.i140 = icmp ne ptr %_18.i.i134, %end_or_len.i.i131
  tail call void @llvm.assume(i1 %_7.i10.i140)
  %y.i142 = load i8, ptr %_18.i.i134, align 1, !noalias !1124, !noundef !23
  %_34.i143 = shl nuw nsw i32 %init.i139, 6
  %_36.i144 = and i8 %y.i142, 63
  %_35.i145 = zext nneg i8 %_36.i144 to i32
  %31 = or disjoint i32 %_34.i143, %_35.i145
  %_13.i146 = icmp samesign ugt i8 %x.i135, -33
  br i1 %_13.i146, label %bb6.i149, label %bb64

bb64.thread:                                      ; preds = %bb14.i133
  %_7.i170 = zext nneg i8 %x.i135 to i32
  %_44.i464 = icmp sgt i64 %new_len.i119, -1
  tail call void @llvm.assume(i1 %_44.i464)
  br label %bb12.i

bb6.i149:                                         ; preds = %bb4.i137
  %_18.i12.i141 = getelementptr inbounds nuw i8, ptr %ptr.i.i130, i64 2
  %_7.i17.i150 = icmp ne ptr %_18.i12.i141, %end_or_len.i.i131
  tail call void @llvm.assume(i1 %_7.i17.i150)
  %z.i152 = load i8, ptr %_18.i12.i141, align 1, !noalias !1124, !noundef !23
  %_40.i153 = shl nuw nsw i32 %_35.i145, 6
  %_42.i154 = and i8 %z.i152, 63
  %_41.i155 = zext nneg i8 %_42.i154 to i32
  %y_z.i156 = or disjoint i32 %_40.i153, %_41.i155
  %_20.i157 = shl nuw nsw i32 %init.i139, 12
  %32 = or disjoint i32 %y_z.i156, %_20.i157
  %_21.i158 = icmp samesign ugt i8 %x.i135, -17
  br i1 %_21.i158, label %bb56, label %bb64

bb56:                                             ; preds = %bb6.i149
  %_18.i19.i151 = getelementptr inbounds nuw i8, ptr %ptr.i.i130, i64 3
  %_7.i24.i160 = icmp ne ptr %_18.i19.i151, %end_or_len.i.i131
  tail call void @llvm.assume(i1 %_7.i24.i160)
  %_18.i26.i161 = getelementptr inbounds nuw i8, ptr %ptr.i.i130, i64 4
  store ptr %_18.i26.i161, ptr %_40, align 8, !alias.scope !1130
  %w.i162 = load i8, ptr %_18.i19.i151, align 1, !noalias !1124, !noundef !23
  %_26.i163 = shl nuw nsw i32 %init.i139, 18
  %_25.i164 = and i32 %_26.i163, 1835008
  %_46.i165 = shl nuw nsw i32 %y_z.i156, 6
  %_48.i166 = and i8 %w.i162, 63
  %_47.i167 = zext nneg i8 %_48.i166 to i32
  %_27.i168 = or disjoint i32 %_46.i165, %_47.i167
  %33 = or disjoint i32 %_27.i168, %_25.i164
  %.not20 = icmp eq i32 %33, 1114112
  br i1 %.not20, label %bb73.invoke, label %bb64, !prof !1102

bb64:                                             ; preds = %bb6.i149, %bb4.i137, %bb56
  %_0.sroa.4.0.i147.ph432 = phi i32 [ %33, %bb56 ], [ %32, %bb6.i149 ], [ %31, %bb4.i137 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1133)
  %_44.i = icmp sgt i64 %new_len.i119, -1
  tail call void @llvm.assume(i1 %_44.i)
  %_46.i172 = icmp samesign ult i32 %_0.sroa.4.0.i147.ph432, 128
  br i1 %_46.i172, label %bb12.i, label %bb13.i

bb13.i:                                           ; preds = %bb64
  %_47.i173 = icmp samesign ult i32 %_0.sroa.4.0.i147.ph432, 2048
  br i1 %_47.i173, label %bb12.i, label %bb14.i174

bb14.i174:                                        ; preds = %bb13.i
  %_48.i175 = icmp samesign ult i32 %_0.sroa.4.0.i147.ph432, 65536
  %..i176 = select i1 %_48.i175, i64 3, i64 4
  br label %bb12.i

bb12.i:                                           ; preds = %bb64.thread, %bb14.i174, %bb13.i, %bb64
  %_46.i172467 = phi i1 [ true, %bb64 ], [ false, %bb14.i174 ], [ false, %bb13.i ], [ true, %bb64.thread ]
  %_0.sroa.4.0.i147.ph432466 = phi i32 [ %_0.sroa.4.0.i147.ph432, %bb64 ], [ %_0.sroa.4.0.i147.ph432, %bb14.i174 ], [ %_0.sroa.4.0.i147.ph432, %bb13.i ], [ %_7.i170, %bb64.thread ]
  %ch_len.sroa.0.0.i177 = phi i64 [ 1, %bb64 ], [ %..i176, %bb14.i174 ], [ 2, %bb13.i ], [ 1, %bb64.thread ]
  %self2.i.i178 = load i64, ptr %s1, align 8, !range !1031, !alias.scope !1136, !noundef !23
  %_9.i.i179 = sub nsw i64 %self2.i.i178, %new_len.i119
  %_7.i.i180 = icmp ugt i64 %ch_len.sroa.0.0.i177, %_9.i.i179
  br i1 %_7.i.i180, label %bb1.i.i206, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h9a269ef57aaab35bE.exit.i181", !prof !909

bb1.i.i206:                                       ; preds = %bb12.i
; invoke alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hfeafb344f88c6c7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %s1, i64 noundef %new_len.i119, i64 noundef range(i64 1, 5) %ch_len.sroa.0.0.i177)
          to label %"bb1.i.i206._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h9a269ef57aaab35bE.exit.i181_crit_edge" unwind label %cleanup.loopexit

"bb1.i.i206._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h9a269ef57aaab35bE.exit.i181_crit_edge": ; preds = %bb1.i.i206
  %_50.i.pre = load ptr, ptr %_51.sroa.4.0.s1.sroa_idx, align 8, !alias.scope !1133
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h9a269ef57aaab35bE.exit.i181"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h9a269ef57aaab35bE.exit.i181": ; preds = %"bb1.i.i206._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h9a269ef57aaab35bE.exit.i181_crit_edge", %bb12.i
  %_50.i = phi ptr [ %_50.i.pre, %"bb1.i.i206._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h9a269ef57aaab35bE.exit.i181_crit_edge" ], [ %_20.i97, %bb12.i ]
  %dst.i = getelementptr inbounds nuw i8, ptr %_50.i, i64 %ch_len.sroa.0.0.i177
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %dst.i, ptr noundef nonnull align 1 dereferenceable(1) %_50.i, i64 %new_len.i119, i1 false), !noalias !1133
  br i1 %_46.i172467, label %bb12.i.i205, label %bb7.i.i182

bb7.i.i182:                                       ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h9a269ef57aaab35bE.exit.i181"
  %_29.i.i183 = icmp samesign ult i32 %_0.sroa.4.0.i147.ph432466, 2048
  %34 = trunc i32 %_0.sroa.4.0.i147.ph432466 to i8
  %_5.i.i184 = and i8 %34, 63
  %last1.i.i185 = or disjoint i8 %_5.i.i184, -128
  %_10.i.i186 = lshr i32 %_0.sroa.4.0.i147.ph432466, 6
  %35 = trunc i32 %_10.i.i186 to i8
  %_8.i.i187 = and i8 %35, 63
  %last2.i.i188 = or disjoint i8 %_8.i.i187, -128
  %_14.i.i189 = lshr i32 %_0.sroa.4.0.i147.ph432466, 12
  %36 = trunc i32 %_14.i.i189 to i8
  %_12.i.i190 = and i8 %36, 63
  %last3.i.i191 = or disjoint i8 %_12.i.i190, -128
  %_18.i.i192 = lshr i32 %_0.sroa.4.0.i147.ph432466, 18
  %_16.i.i193 = trunc nuw nsw i32 %_18.i.i192 to i8
  %last4.i.i194 = or disjoint i8 %_16.i.i193, -16
  br i1 %_29.i.i183, label %bb1.i9.i, label %bb2.i.i195

bb12.i.i205:                                      ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h9a269ef57aaab35bE.exit.i181"
  %37 = trunc nuw nsw i32 %_0.sroa.4.0.i147.ph432466 to i8
  store i8 %37, ptr %_50.i, align 1, !noalias !1133
  br label %bb11

bb2.i.i195:                                       ; preds = %bb7.i.i182
  %_30.i.i196 = icmp samesign ult i32 %_0.sroa.4.0.i147.ph432466, 65536
  br i1 %_30.i.i196, label %bb3.i.i201, label %bb4.i.i197

bb1.i9.i:                                         ; preds = %bb7.i.i182
  %38 = or disjoint i8 %35, -64
  store i8 %38, ptr %_50.i, align 1, !noalias !1133
  %_21.i.i204 = getelementptr inbounds nuw i8, ptr %_50.i, i64 1
  store i8 %last1.i.i185, ptr %_21.i.i204, align 1, !noalias !1133
  br label %bb11

bb4.i.i197:                                       ; preds = %bb2.i.i195
  store i8 %last4.i.i194, ptr %_50.i, align 1, !noalias !1133
  %_25.i.i198 = getelementptr inbounds nuw i8, ptr %_50.i, i64 1
  store i8 %last3.i.i191, ptr %_25.i.i198, align 1, !noalias !1133
  %_26.i.i199 = getelementptr inbounds nuw i8, ptr %_50.i, i64 2
  store i8 %last2.i.i188, ptr %_26.i.i199, align 1, !noalias !1133
  %_27.i.i200 = getelementptr inbounds nuw i8, ptr %_50.i, i64 3
  store i8 %last1.i.i185, ptr %_27.i.i200, align 1, !noalias !1133
  br label %bb11

bb3.i.i201:                                       ; preds = %bb2.i.i195
  %39 = or disjoint i8 %36, -32
  store i8 %39, ptr %_50.i, align 1, !noalias !1133
  %_23.i.i202 = getelementptr inbounds nuw i8, ptr %_50.i, i64 1
  store i8 %last2.i.i188, ptr %_23.i.i202, align 1, !noalias !1133
  %_24.i.i203 = getelementptr inbounds nuw i8, ptr %_50.i, i64 2
  store i8 %last1.i.i185, ptr %_24.i.i203, align 1, !noalias !1133
  br label %bb11

bb11:                                             ; preds = %bb3.i.i201, %bb4.i.i197, %bb1.i9.i, %bb12.i.i205
  %40 = add nuw i64 %ch_len.sroa.0.0.i177, %new_len.i119
  store i64 %40, ptr %_51.sroa.5.0.s1.sroa_idx, align 8, !alias.scope !1133
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_40)
  br label %bb15

bb15:                                             ; preds = %bb13, %bb11, %bb7
  %_20.i37485 = phi ptr [ %_20.i37, %bb13 ], [ %_50.i, %bb11 ], [ %_20.i357, %bb7 ]
  %len.i483 = phi i64 [ %new_len.i, %bb13 ], [ %40, %bb11 ], [ %new_len.i379, %bb7 ]
  %_55.not.not = icmp eq i64 %9, 0
  %41 = add i64 %10, 2
  %42 = add i64 %9, -1
  br i1 %_55.not.not, label %bb4, label %bb3

bb28:                                             ; preds = %bb5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1139)
  %ptr.i.i208 = load ptr, ptr %_16, align 8, !alias.scope !1142, !nonnull !23, !noundef !23
  %end_or_len.i.i209 = load ptr, ptr %7, align 8, !alias.scope !1142, !nonnull !23, !noundef !23
  %_7.i.i210 = icmp eq ptr %ptr.i.i208, %end_or_len.i.i209
  br i1 %_7.i.i210, label %bb73.invoke, label %bb14.i211

bb14.i211:                                        ; preds = %bb28
  %x.i213 = load i8, ptr %ptr.i.i208, align 1, !noalias !1139, !noundef !23
  %_6.i214 = icmp sgt i8 %x.i213, -1
  br i1 %_6.i214, label %bb34.thread, label %bb4.i215

bb4.i215:                                         ; preds = %bb14.i211
  %_18.i.i212 = getelementptr inbounds nuw i8, ptr %ptr.i.i208, i64 1
  %_30.i216 = and i8 %x.i213, 31
  %init.i217 = zext nneg i8 %_30.i216 to i32
  %_7.i10.i218 = icmp ne ptr %_18.i.i212, %end_or_len.i.i209
  tail call void @llvm.assume(i1 %_7.i10.i218)
  %y.i220 = load i8, ptr %_18.i.i212, align 1, !noalias !1139, !noundef !23
  %_34.i221 = shl nuw nsw i32 %init.i217, 6
  %_36.i222 = and i8 %y.i220, 63
  %_35.i223 = zext nneg i8 %_36.i222 to i32
  %43 = or disjoint i32 %_34.i221, %_35.i223
  %_13.i224 = icmp samesign ugt i8 %x.i213, -33
  br i1 %_13.i224, label %bb6.i228, label %bb34

bb34.thread:                                      ; preds = %bb14.i211
  %_7.i249 = zext nneg i8 %x.i213 to i32
  %_14.i252470 = icmp sgt i64 %len.i251469, -1
  tail call void @llvm.assume(i1 %_14.i252470)
  br label %bb2.i259

bb6.i228:                                         ; preds = %bb4.i215
  %_18.i12.i219 = getelementptr inbounds nuw i8, ptr %ptr.i.i208, i64 2
  %_7.i17.i229 = icmp ne ptr %_18.i12.i219, %end_or_len.i.i209
  tail call void @llvm.assume(i1 %_7.i17.i229)
  %z.i231 = load i8, ptr %_18.i12.i219, align 1, !noalias !1139, !noundef !23
  %_40.i232 = shl nuw nsw i32 %_35.i223, 6
  %_42.i233 = and i8 %z.i231, 63
  %_41.i234 = zext nneg i8 %_42.i233 to i32
  %y_z.i235 = or disjoint i32 %_40.i232, %_41.i234
  %_20.i236 = shl nuw nsw i32 %init.i217, 12
  %44 = or disjoint i32 %y_z.i235, %_20.i236
  %_21.i237 = icmp samesign ugt i8 %x.i213, -17
  br i1 %_21.i237, label %bb26, label %bb34

bb26:                                             ; preds = %bb6.i228
  %_18.i19.i230 = getelementptr inbounds nuw i8, ptr %ptr.i.i208, i64 3
  %_7.i24.i239 = icmp ne ptr %_18.i19.i230, %end_or_len.i.i209
  tail call void @llvm.assume(i1 %_7.i24.i239)
  %_18.i26.i240 = getelementptr inbounds nuw i8, ptr %ptr.i.i208, i64 4
  store ptr %_18.i26.i240, ptr %_16, align 8, !alias.scope !1145
  %w.i241 = load i8, ptr %_18.i19.i230, align 1, !noalias !1139, !noundef !23
  %_26.i242 = shl nuw nsw i32 %init.i217, 18
  %_25.i243 = and i32 %_26.i242, 1835008
  %_46.i244 = shl nuw nsw i32 %y_z.i235, 6
  %_48.i245 = and i8 %w.i241, 63
  %_47.i246 = zext nneg i8 %_48.i245 to i32
  %_27.i247 = or disjoint i32 %_46.i244, %_47.i246
  %45 = or disjoint i32 %_27.i247, %_25.i243
  %.not22 = icmp eq i32 %45, 1114112
  br i1 %.not22, label %bb73.invoke, label %bb34, !prof !1102

bb34:                                             ; preds = %bb6.i228, %bb4.i215, %bb26
  %_0.sroa.4.0.i226.ph440 = phi i32 [ %45, %bb26 ], [ %44, %bb6.i228 ], [ %43, %bb4.i215 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1148)
  %_14.i252 = icmp sgt i64 %len.i251469, -1
  tail call void @llvm.assume(i1 %_14.i252)
  %_16.i253 = icmp samesign ult i32 %_0.sroa.4.0.i226.ph440, 128
  br i1 %_16.i253, label %bb2.i259, label %bb3.i254

bb3.i254:                                         ; preds = %bb34
  %_17.i255 = icmp samesign ult i32 %_0.sroa.4.0.i226.ph440, 2048
  br i1 %_17.i255, label %bb2.i259, label %bb4.i256

bb4.i256:                                         ; preds = %bb3.i254
  %_18.i257 = icmp samesign ult i32 %_0.sroa.4.0.i226.ph440, 65536
  %..i258 = select i1 %_18.i257, i64 3, i64 4
  br label %bb2.i259

bb2.i259:                                         ; preds = %bb34.thread, %bb4.i256, %bb3.i254, %bb34
  %_16.i253474 = phi i1 [ true, %bb34 ], [ false, %bb4.i256 ], [ false, %bb3.i254 ], [ true, %bb34.thread ]
  %_0.sroa.4.0.i226.ph440472 = phi i32 [ %_0.sroa.4.0.i226.ph440, %bb34 ], [ %_0.sroa.4.0.i226.ph440, %bb4.i256 ], [ %_0.sroa.4.0.i226.ph440, %bb3.i254 ], [ %_7.i249, %bb34.thread ]
  %ch_len.sroa.0.0.i260 = phi i64 [ 1, %bb34 ], [ %..i258, %bb4.i256 ], [ 2, %bb3.i254 ], [ 1, %bb34.thread ]
  %self2.i.i261 = load i64, ptr %s1, align 8, !range !1031, !alias.scope !1151, !noundef !23
  %_9.i.i262 = sub nsw i64 %self2.i.i261, %len.i251469
  %_7.i.i263 = icmp ugt i64 %ch_len.sroa.0.0.i260, %_9.i.i262
  br i1 %_7.i.i263, label %bb1.i.i295, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h9a269ef57aaab35bE.exit.i264", !prof !909

bb1.i.i295:                                       ; preds = %bb2.i259
; invoke alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hfeafb344f88c6c7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %s1, i64 noundef %len.i251469, i64 noundef range(i64 1, 5) %ch_len.sroa.0.0.i260)
          to label %.noexc297 unwind label %cleanup.loopexit

.noexc297:                                        ; preds = %bb1.i.i295
  %count.pre.i296 = load i64, ptr %_51.sroa.5.0.s1.sroa_idx, align 8, !alias.scope !1148
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h9a269ef57aaab35bE.exit.i264"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h9a269ef57aaab35bE.exit.i264": ; preds = %.noexc297, %bb2.i259
  %count.i265 = phi i64 [ %len.i251469, %bb2.i259 ], [ %count.pre.i296, %.noexc297 ]
  %_20.i266 = load ptr, ptr %_51.sroa.4.0.s1.sroa_idx, align 8, !alias.scope !1148, !nonnull !23, !noundef !23
  %_21.i267 = icmp sgt i64 %count.i265, -1
  tail call void @llvm.assume(i1 %_21.i267)
  %_8.i268 = getelementptr inbounds nuw i8, ptr %_20.i266, i64 %count.i265
  br i1 %_16.i253474, label %bb12.i.i294, label %bb7.i.i269

bb7.i.i269:                                       ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h9a269ef57aaab35bE.exit.i264"
  %_29.i.i270 = icmp samesign ult i32 %_0.sroa.4.0.i226.ph440472, 2048
  %46 = trunc i32 %_0.sroa.4.0.i226.ph440472 to i8
  %_5.i.i271 = and i8 %46, 63
  %last1.i.i272 = or disjoint i8 %_5.i.i271, -128
  %_10.i.i273 = lshr i32 %_0.sroa.4.0.i226.ph440472, 6
  %47 = trunc i32 %_10.i.i273 to i8
  %_8.i.i274 = and i8 %47, 63
  %last2.i.i275 = or disjoint i8 %_8.i.i274, -128
  %_14.i.i276 = lshr i32 %_0.sroa.4.0.i226.ph440472, 12
  %48 = trunc i32 %_14.i.i276 to i8
  %_12.i.i277 = and i8 %48, 63
  %last3.i.i278 = or disjoint i8 %_12.i.i277, -128
  %_18.i.i279 = lshr i32 %_0.sroa.4.0.i226.ph440472, 18
  %_16.i.i280 = trunc nuw nsw i32 %_18.i.i279 to i8
  %last4.i.i281 = or disjoint i8 %_16.i.i280, -16
  br i1 %_29.i.i270, label %bb1.i2.i292, label %bb2.i.i282

bb12.i.i294:                                      ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h9a269ef57aaab35bE.exit.i264"
  %49 = trunc nuw nsw i32 %_0.sroa.4.0.i226.ph440472 to i8
  store i8 %49, ptr %_8.i268, align 1, !noalias !1148
  br label %bb6

bb2.i.i282:                                       ; preds = %bb7.i.i269
  %_30.i.i283 = icmp samesign ult i32 %_0.sroa.4.0.i226.ph440472, 65536
  br i1 %_30.i.i283, label %bb3.i.i289, label %bb4.i.i284

bb1.i2.i292:                                      ; preds = %bb7.i.i269
  %50 = or disjoint i8 %47, -64
  store i8 %50, ptr %_8.i268, align 1, !noalias !1148
  %_21.i.i293 = getelementptr inbounds nuw i8, ptr %_8.i268, i64 1
  store i8 %last1.i.i272, ptr %_21.i.i293, align 1, !noalias !1148
  br label %bb6

bb4.i.i284:                                       ; preds = %bb2.i.i282
  store i8 %last4.i.i281, ptr %_8.i268, align 1, !noalias !1148
  %_25.i.i285 = getelementptr inbounds nuw i8, ptr %_8.i268, i64 1
  store i8 %last3.i.i278, ptr %_25.i.i285, align 1, !noalias !1148
  %_26.i.i286 = getelementptr inbounds nuw i8, ptr %_8.i268, i64 2
  store i8 %last2.i.i275, ptr %_26.i.i286, align 1, !noalias !1148
  %_27.i.i287 = getelementptr inbounds nuw i8, ptr %_8.i268, i64 3
  store i8 %last1.i.i272, ptr %_27.i.i287, align 1, !noalias !1148
  br label %bb6

bb3.i.i289:                                       ; preds = %bb2.i.i282
  %51 = or disjoint i8 %48, -32
  store i8 %51, ptr %_8.i268, align 1, !noalias !1148
  %_23.i.i290 = getelementptr inbounds nuw i8, ptr %_8.i268, i64 1
  store i8 %last2.i.i275, ptr %_23.i.i290, align 1, !noalias !1148
  %_24.i.i291 = getelementptr inbounds nuw i8, ptr %_8.i268, i64 2
  store i8 %last1.i.i272, ptr %_24.i.i291, align 1, !noalias !1148
  br label %bb6

bb6:                                              ; preds = %bb3.i.i289, %bb4.i.i284, %bb1.i2.i292, %bb12.i.i294
  %new_len.i288 = add nuw i64 %ch_len.sroa.0.0.i260, %len.i251469
  store i64 %new_len.i288, ptr %_51.sroa.5.0.s1.sroa_idx, align 8, !alias.scope !1148
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_23)
  store ptr %_156, ptr %_23, align 8
  store ptr %_163, ptr %8, align 8
  %_25 = or disjoint i64 %iter.sroa.0.0481, 1
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_98 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_23, i64 noundef %_25)
  %.not23 = icmp eq i64 %_98, 0
  br i1 %.not23, label %bb38, label %bb73.invoke

bb38:                                             ; preds = %bb6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1154)
  %ptr.i.i299 = load ptr, ptr %_23, align 8, !alias.scope !1157, !nonnull !23, !noundef !23
  %end_or_len.i.i300 = load ptr, ptr %8, align 8, !alias.scope !1157, !nonnull !23, !noundef !23
  %_7.i.i301 = icmp eq ptr %ptr.i.i299, %end_or_len.i.i300
  br i1 %_7.i.i301, label %bb73.invoke, label %bb14.i302

bb14.i302:                                        ; preds = %bb38
  %x.i304 = load i8, ptr %ptr.i.i299, align 1, !noalias !1154, !noundef !23
  %_6.i305 = icmp sgt i8 %x.i304, -1
  br i1 %_6.i305, label %bb44.thread, label %bb4.i306

bb4.i306:                                         ; preds = %bb14.i302
  %_18.i.i303 = getelementptr inbounds nuw i8, ptr %ptr.i.i299, i64 1
  %_30.i307 = and i8 %x.i304, 31
  %init.i308 = zext nneg i8 %_30.i307 to i32
  %_7.i10.i309 = icmp ne ptr %_18.i.i303, %end_or_len.i.i300
  tail call void @llvm.assume(i1 %_7.i10.i309)
  %y.i311 = load i8, ptr %_18.i.i303, align 1, !noalias !1154, !noundef !23
  %_34.i312 = shl nuw nsw i32 %init.i308, 6
  %_36.i313 = and i8 %y.i311, 63
  %_35.i314 = zext nneg i8 %_36.i313 to i32
  %52 = or disjoint i32 %_34.i312, %_35.i314
  %_13.i315 = icmp samesign ugt i8 %x.i304, -33
  br i1 %_13.i315, label %bb6.i319, label %bb44

bb44.thread:                                      ; preds = %bb14.i302
  %_7.i340 = zext nneg i8 %x.i304 to i32
  %_14.i343476 = icmp sgt i64 %new_len.i288, -1
  tail call void @llvm.assume(i1 %_14.i343476)
  br label %bb2.i350

bb6.i319:                                         ; preds = %bb4.i306
  %_18.i12.i310 = getelementptr inbounds nuw i8, ptr %ptr.i.i299, i64 2
  %_7.i17.i320 = icmp ne ptr %_18.i12.i310, %end_or_len.i.i300
  tail call void @llvm.assume(i1 %_7.i17.i320)
  %z.i322 = load i8, ptr %_18.i12.i310, align 1, !noalias !1154, !noundef !23
  %_40.i323 = shl nuw nsw i32 %_35.i314, 6
  %_42.i324 = and i8 %z.i322, 63
  %_41.i325 = zext nneg i8 %_42.i324 to i32
  %y_z.i326 = or disjoint i32 %_40.i323, %_41.i325
  %_20.i327 = shl nuw nsw i32 %init.i308, 12
  %53 = or disjoint i32 %y_z.i326, %_20.i327
  %_21.i328 = icmp samesign ugt i8 %x.i304, -17
  br i1 %_21.i328, label %bb36, label %bb44

bb36:                                             ; preds = %bb6.i319
  %_18.i19.i321 = getelementptr inbounds nuw i8, ptr %ptr.i.i299, i64 3
  %_7.i24.i330 = icmp ne ptr %_18.i19.i321, %end_or_len.i.i300
  tail call void @llvm.assume(i1 %_7.i24.i330)
  %_18.i26.i331 = getelementptr inbounds nuw i8, ptr %ptr.i.i299, i64 4
  store ptr %_18.i26.i331, ptr %_23, align 8, !alias.scope !1160
  %w.i332 = load i8, ptr %_18.i19.i321, align 1, !noalias !1154, !noundef !23
  %_26.i333 = shl nuw nsw i32 %init.i308, 18
  %_25.i334 = and i32 %_26.i333, 1835008
  %_46.i335 = shl nuw nsw i32 %y_z.i326, 6
  %_48.i336 = and i8 %w.i332, 63
  %_47.i337 = zext nneg i8 %_48.i336 to i32
  %_27.i338 = or disjoint i32 %_46.i335, %_47.i337
  %54 = or disjoint i32 %_27.i338, %_25.i334
  %.not24 = icmp eq i32 %54, 1114112
  br i1 %.not24, label %bb73.invoke, label %bb44, !prof !1102

bb44:                                             ; preds = %bb6.i319, %bb4.i306, %bb36
  %_0.sroa.4.0.i317.ph448 = phi i32 [ %54, %bb36 ], [ %53, %bb6.i319 ], [ %52, %bb4.i306 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1163)
  %_14.i343 = icmp sgt i64 %new_len.i288, -1
  tail call void @llvm.assume(i1 %_14.i343)
  %_16.i344 = icmp samesign ult i32 %_0.sroa.4.0.i317.ph448, 128
  br i1 %_16.i344, label %bb2.i350, label %bb3.i345

bb3.i345:                                         ; preds = %bb44
  %_17.i346 = icmp samesign ult i32 %_0.sroa.4.0.i317.ph448, 2048
  br i1 %_17.i346, label %bb2.i350, label %bb4.i347

bb4.i347:                                         ; preds = %bb3.i345
  %_18.i348 = icmp samesign ult i32 %_0.sroa.4.0.i317.ph448, 65536
  %..i349 = select i1 %_18.i348, i64 3, i64 4
  br label %bb2.i350

bb2.i350:                                         ; preds = %bb44.thread, %bb4.i347, %bb3.i345, %bb44
  %_16.i344479 = phi i1 [ true, %bb44 ], [ false, %bb4.i347 ], [ false, %bb3.i345 ], [ true, %bb44.thread ]
  %_0.sroa.4.0.i317.ph448478 = phi i32 [ %_0.sroa.4.0.i317.ph448, %bb44 ], [ %_0.sroa.4.0.i317.ph448, %bb4.i347 ], [ %_0.sroa.4.0.i317.ph448, %bb3.i345 ], [ %_7.i340, %bb44.thread ]
  %ch_len.sroa.0.0.i351 = phi i64 [ 1, %bb44 ], [ %..i349, %bb4.i347 ], [ 2, %bb3.i345 ], [ 1, %bb44.thread ]
  %self2.i.i352 = load i64, ptr %s1, align 8, !range !1031, !alias.scope !1166, !noundef !23
  %_9.i.i353 = sub nsw i64 %self2.i.i352, %new_len.i288
  %_7.i.i354 = icmp ugt i64 %ch_len.sroa.0.0.i351, %_9.i.i353
  br i1 %_7.i.i354, label %bb1.i.i386, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h9a269ef57aaab35bE.exit.i355", !prof !909

bb1.i.i386:                                       ; preds = %bb2.i350
; invoke alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hfeafb344f88c6c7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %s1, i64 noundef %new_len.i288, i64 noundef range(i64 1, 5) %ch_len.sroa.0.0.i351)
          to label %.noexc388 unwind label %cleanup.loopexit

.noexc388:                                        ; preds = %bb1.i.i386
  %count.pre.i387 = load i64, ptr %_51.sroa.5.0.s1.sroa_idx, align 8, !alias.scope !1163
  %_20.i357.pre = load ptr, ptr %_51.sroa.4.0.s1.sroa_idx, align 8, !alias.scope !1163
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h9a269ef57aaab35bE.exit.i355"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h9a269ef57aaab35bE.exit.i355": ; preds = %.noexc388, %bb2.i350
  %_20.i357 = phi ptr [ %_20.i266, %bb2.i350 ], [ %_20.i357.pre, %.noexc388 ]
  %count.i356 = phi i64 [ %new_len.i288, %bb2.i350 ], [ %count.pre.i387, %.noexc388 ]
  %_21.i358 = icmp sgt i64 %count.i356, -1
  tail call void @llvm.assume(i1 %_21.i358)
  %_8.i359 = getelementptr inbounds nuw i8, ptr %_20.i357, i64 %count.i356
  br i1 %_16.i344479, label %bb12.i.i385, label %bb7.i.i360

bb7.i.i360:                                       ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h9a269ef57aaab35bE.exit.i355"
  %_29.i.i361 = icmp samesign ult i32 %_0.sroa.4.0.i317.ph448478, 2048
  %55 = trunc i32 %_0.sroa.4.0.i317.ph448478 to i8
  %_5.i.i362 = and i8 %55, 63
  %last1.i.i363 = or disjoint i8 %_5.i.i362, -128
  %_10.i.i364 = lshr i32 %_0.sroa.4.0.i317.ph448478, 6
  %56 = trunc i32 %_10.i.i364 to i8
  %_8.i.i365 = and i8 %56, 63
  %last2.i.i366 = or disjoint i8 %_8.i.i365, -128
  %_14.i.i367 = lshr i32 %_0.sroa.4.0.i317.ph448478, 12
  %57 = trunc i32 %_14.i.i367 to i8
  %_12.i.i368 = and i8 %57, 63
  %last3.i.i369 = or disjoint i8 %_12.i.i368, -128
  %_18.i.i370 = lshr i32 %_0.sroa.4.0.i317.ph448478, 18
  %_16.i.i371 = trunc nuw nsw i32 %_18.i.i370 to i8
  %last4.i.i372 = or disjoint i8 %_16.i.i371, -16
  br i1 %_29.i.i361, label %bb1.i2.i383, label %bb2.i.i373

bb12.i.i385:                                      ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h9a269ef57aaab35bE.exit.i355"
  %58 = trunc nuw nsw i32 %_0.sroa.4.0.i317.ph448478 to i8
  store i8 %58, ptr %_8.i359, align 1, !noalias !1163
  br label %bb7

bb2.i.i373:                                       ; preds = %bb7.i.i360
  %_30.i.i374 = icmp samesign ult i32 %_0.sroa.4.0.i317.ph448478, 65536
  br i1 %_30.i.i374, label %bb3.i.i380, label %bb4.i.i375

bb1.i2.i383:                                      ; preds = %bb7.i.i360
  %59 = or disjoint i8 %56, -64
  store i8 %59, ptr %_8.i359, align 1, !noalias !1163
  %_21.i.i384 = getelementptr inbounds nuw i8, ptr %_8.i359, i64 1
  store i8 %last1.i.i363, ptr %_21.i.i384, align 1, !noalias !1163
  br label %bb7

bb4.i.i375:                                       ; preds = %bb2.i.i373
  store i8 %last4.i.i372, ptr %_8.i359, align 1, !noalias !1163
  %_25.i.i376 = getelementptr inbounds nuw i8, ptr %_8.i359, i64 1
  store i8 %last3.i.i369, ptr %_25.i.i376, align 1, !noalias !1163
  %_26.i.i377 = getelementptr inbounds nuw i8, ptr %_8.i359, i64 2
  store i8 %last2.i.i366, ptr %_26.i.i377, align 1, !noalias !1163
  %_27.i.i378 = getelementptr inbounds nuw i8, ptr %_8.i359, i64 3
  store i8 %last1.i.i363, ptr %_27.i.i378, align 1, !noalias !1163
  br label %bb7

bb3.i.i380:                                       ; preds = %bb2.i.i373
  %60 = or disjoint i8 %57, -32
  store i8 %60, ptr %_8.i359, align 1, !noalias !1163
  %_23.i.i381 = getelementptr inbounds nuw i8, ptr %_8.i359, i64 1
  store i8 %last2.i.i366, ptr %_23.i.i381, align 1, !noalias !1163
  %_24.i.i382 = getelementptr inbounds nuw i8, ptr %_8.i359, i64 2
  store i8 %last1.i.i363, ptr %_24.i.i382, align 1, !noalias !1163
  br label %bb7

bb7:                                              ; preds = %bb3.i.i380, %bb4.i.i375, %bb1.i2.i383, %bb12.i.i385
  %new_len.i379 = add nuw i64 %ch_len.sroa.0.0.i351, %new_len.i288
  store i64 %new_len.i379, ptr %_51.sroa.5.0.s1.sroa_idx, align 8, !alias.scope !1163
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_23)
  br label %bb15

bb18:                                             ; preds = %bb2.i.i.i3.i.i, %cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1169)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1172)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1175)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1178)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1181)
  %self1.i.i.i.i1.i.i390 = load i64, ptr %s, align 8, !range !1031, !alias.scope !1184, !noalias !1187, !noundef !23
  %_6.i.i.i.i2.i.i391 = icmp eq i64 %self1.i.i.i.i1.i.i390, 0
  br i1 %_6.i.i.i.i2.i.i391, label %bb19, label %bb2.i.i.i3.i.i392

bb2.i.i.i3.i.i392:                                ; preds = %bb18
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_156, i64 noundef %self1.i.i.i.i1.i.i390, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !1189
  br label %bb19

bb19:                                             ; preds = %bb2.i.i.i3.i.i392, %bb18
  resume { ptr, i32 } %lpad.phi
}
