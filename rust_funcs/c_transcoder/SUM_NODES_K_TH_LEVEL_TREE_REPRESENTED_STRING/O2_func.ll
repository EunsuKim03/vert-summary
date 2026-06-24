define noundef i32 @f_gold(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %tree.0, i64 noundef %tree.1, i32 noundef %k) unnamed_addr #1 {
start:
  %_25 = alloca [16 x i8], align 8
  %_16 = alloca [16 x i8], align 8
  %_11 = alloca [16 x i8], align 8
  %_27118.not = icmp eq i64 %tree.1, 0
  br i1 %_27118.not, label %bb14, label %bb13.lr.ph

bb13.lr.ph:                                       ; preds = %start
  %_34 = getelementptr inbounds nuw i8, ptr %tree.0, i64 %tree.1
  %0 = getelementptr inbounds nuw i8, ptr %_11, i64 8
  %1 = getelementptr inbounds nuw i8, ptr %_16, i64 8
  %2 = getelementptr inbounds nuw i8, ptr %_25, i64 8
  br label %bb13

bb14:                                             ; preds = %bb12, %start
  %sum.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %sum.sroa.0.1, %bb12 ]
  ret i32 %sum.sroa.0.0.lcssa

bb13:                                             ; preds = %bb13.lr.ph, %bb12
  %sum.sroa.0.0121 = phi i32 [ 0, %bb13.lr.ph ], [ %sum.sroa.0.1, %bb12 ]
  %level.sroa.0.0120 = phi i32 [ -1, %bb13.lr.ph ], [ %level.sroa.0.1, %bb12 ]
  %iter.sroa.0.0119 = phi i64 [ 0, %bb13.lr.ph ], [ %3, %bb12 ]
  %3 = add nuw i64 %iter.sroa.0.0119, 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_11)
  store ptr %tree.0, ptr %_11, align 8
  store ptr %_34, ptr %0, align 8
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_38 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_11, i64 noundef %iter.sroa.0.0119) #22
  %.not = icmp eq i64 %_38, 0
  br i1 %.not, label %bb17, label %bb39, !prof !1040

bb17:                                             ; preds = %bb13
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1041)
  %ptr.i.i = load ptr, ptr %_11, align 8, !alias.scope !1044, !nonnull !23, !noundef !23
  %end_or_len.i.i = load ptr, ptr %0, align 8, !alias.scope !1044, !nonnull !23, !noundef !23
  %_7.i.i = icmp eq ptr %ptr.i.i, %end_or_len.i.i
  br i1 %_7.i.i, label %bb39, label %bb14.i

bb14.i:                                           ; preds = %bb17
  %x.i = load i8, ptr %ptr.i.i, align 1, !noalias !1041, !noundef !23
  %_6.i = icmp sgt i8 %x.i, -1
  br i1 %_6.i, label %bb3.i, label %bb4.i

bb4.i:                                            ; preds = %bb14.i
  %_18.i.i = getelementptr inbounds nuw i8, ptr %ptr.i.i, i64 1
  %_30.i = and i8 %x.i, 31
  %init.i = zext nneg i8 %_30.i to i32
  %_7.i10.i = icmp ne ptr %_18.i.i, %end_or_len.i.i
  tail call void @llvm.assume(i1 %_7.i10.i)
  %y.i = load i8, ptr %_18.i.i, align 1, !noalias !1041, !noundef !23
  %_34.i = shl nuw nsw i32 %init.i, 6
  %_36.i = and i8 %y.i, 63
  %_35.i = zext nneg i8 %_36.i to i32
  %4 = or disjoint i32 %_34.i, %_35.i
  %_13.i = icmp samesign ugt i8 %x.i, -33
  br i1 %_13.i, label %bb6.i, label %bb20

bb3.i:                                            ; preds = %bb14.i
  %_7.i = zext nneg i8 %x.i to i32
  br label %bb20

bb6.i:                                            ; preds = %bb4.i
  %_18.i12.i = getelementptr inbounds nuw i8, ptr %ptr.i.i, i64 2
  %_7.i17.i = icmp ne ptr %_18.i12.i, %end_or_len.i.i
  tail call void @llvm.assume(i1 %_7.i17.i)
  %z.i = load i8, ptr %_18.i12.i, align 1, !noalias !1041, !noundef !23
  %_40.i = shl nuw nsw i32 %_35.i, 6
  %_42.i = and i8 %z.i, 63
  %_41.i = zext nneg i8 %_42.i to i32
  %y_z.i = or disjoint i32 %_40.i, %_41.i
  %_20.i = shl nuw nsw i32 %init.i, 12
  %5 = or disjoint i32 %y_z.i, %_20.i
  %_21.i = icmp samesign ugt i8 %x.i, -17
  br i1 %_21.i, label %bb8.i, label %bb20

bb8.i:                                            ; preds = %bb6.i
  %_18.i19.i = getelementptr inbounds nuw i8, ptr %ptr.i.i, i64 3
  %_7.i24.i = icmp ne ptr %_18.i19.i, %end_or_len.i.i
  tail call void @llvm.assume(i1 %_7.i24.i)
  %w.i = load i8, ptr %_18.i19.i, align 1, !noalias !1041, !noundef !23
  %_26.i = shl nuw nsw i32 %init.i, 18
  %_25.i = and i32 %_26.i, 1835008
  %_46.i = shl nuw nsw i32 %y_z.i, 6
  %_48.i = and i8 %w.i, 63
  %_47.i = zext nneg i8 %_48.i to i32
  %_27.i = or disjoint i32 %_46.i, %_47.i
  %6 = or disjoint i32 %_27.i, %_25.i
  br label %bb20

bb20:                                             ; preds = %bb3.i, %bb8.i, %bb6.i, %bb4.i
  %_0.sroa.4.0.i.ph = phi i32 [ %4, %bb4.i ], [ %5, %bb6.i ], [ %6, %bb8.i ], [ %_7.i, %bb3.i ]
  %7 = icmp samesign ult i32 %_0.sroa.4.0.i.ph, 1114112
  tail call void @llvm.assume(i1 %7)
  %_7 = icmp eq i32 %_0.sroa.4.0.i.ph, 40
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_11)
  br i1 %_7, label %bb3, label %bb4

bb39:                                             ; preds = %bb17, %bb13
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_d48a2381b32b82af0b549ddb85151b66) #18
  unreachable

bb4:                                              ; preds = %bb20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_16)
  store ptr %tree.0, ptr %_16, align 8
  store ptr %_34, ptr %1, align 8
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_53 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_16, i64 noundef %iter.sroa.0.0119) #22
  %.not10 = icmp eq i64 %_53, 0
  br i1 %.not10, label %bb23, label %bb40, !prof !1040

bb3:                                              ; preds = %bb20
  %8 = add i32 %level.sroa.0.0120, 1
  br label %bb12

bb23:                                             ; preds = %bb4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1047)
  %ptr.i.i13 = load ptr, ptr %_16, align 8, !alias.scope !1050, !nonnull !23, !noundef !23
  %end_or_len.i.i14 = load ptr, ptr %1, align 8, !alias.scope !1050, !nonnull !23, !noundef !23
  %_7.i.i15 = icmp eq ptr %ptr.i.i13, %end_or_len.i.i14
  br i1 %_7.i.i15, label %bb40, label %bb14.i16

bb14.i16:                                         ; preds = %bb23
  %x.i18 = load i8, ptr %ptr.i.i13, align 1, !noalias !1047, !noundef !23
  %_6.i19 = icmp sgt i8 %x.i18, -1
  br i1 %_6.i19, label %bb3.i52, label %bb4.i20

bb4.i20:                                          ; preds = %bb14.i16
  %_18.i.i17 = getelementptr inbounds nuw i8, ptr %ptr.i.i13, i64 1
  %_30.i21 = and i8 %x.i18, 31
  %init.i22 = zext nneg i8 %_30.i21 to i32
  %_7.i10.i23 = icmp ne ptr %_18.i.i17, %end_or_len.i.i14
  tail call void @llvm.assume(i1 %_7.i10.i23)
  %y.i25 = load i8, ptr %_18.i.i17, align 1, !noalias !1047, !noundef !23
  %_34.i26 = shl nuw nsw i32 %init.i22, 6
  %_36.i27 = and i8 %y.i25, 63
  %_35.i28 = zext nneg i8 %_36.i27 to i32
  %9 = or disjoint i32 %_34.i26, %_35.i28
  %_13.i29 = icmp samesign ugt i8 %x.i18, -33
  br i1 %_13.i29, label %bb6.i32, label %bb26

bb3.i52:                                          ; preds = %bb14.i16
  %_7.i53 = zext nneg i8 %x.i18 to i32
  br label %bb26

bb6.i32:                                          ; preds = %bb4.i20
  %_18.i12.i24 = getelementptr inbounds nuw i8, ptr %ptr.i.i13, i64 2
  %_7.i17.i33 = icmp ne ptr %_18.i12.i24, %end_or_len.i.i14
  tail call void @llvm.assume(i1 %_7.i17.i33)
  %z.i35 = load i8, ptr %_18.i12.i24, align 1, !noalias !1047, !noundef !23
  %_40.i36 = shl nuw nsw i32 %_35.i28, 6
  %_42.i37 = and i8 %z.i35, 63
  %_41.i38 = zext nneg i8 %_42.i37 to i32
  %y_z.i39 = or disjoint i32 %_40.i36, %_41.i38
  %_20.i40 = shl nuw nsw i32 %init.i22, 12
  %10 = or disjoint i32 %y_z.i39, %_20.i40
  %_21.i41 = icmp samesign ugt i8 %x.i18, -17
  br i1 %_21.i41, label %bb8.i42, label %bb26

bb8.i42:                                          ; preds = %bb6.i32
  %_18.i19.i34 = getelementptr inbounds nuw i8, ptr %ptr.i.i13, i64 3
  %_7.i24.i43 = icmp ne ptr %_18.i19.i34, %end_or_len.i.i14
  tail call void @llvm.assume(i1 %_7.i24.i43)
  %w.i45 = load i8, ptr %_18.i19.i34, align 1, !noalias !1047, !noundef !23
  %_26.i46 = shl nuw nsw i32 %init.i22, 18
  %_25.i47 = and i32 %_26.i46, 1835008
  %_46.i48 = shl nuw nsw i32 %y_z.i39, 6
  %_48.i49 = and i8 %w.i45, 63
  %_47.i50 = zext nneg i8 %_48.i49 to i32
  %_27.i51 = or disjoint i32 %_46.i48, %_47.i50
  %11 = or disjoint i32 %_27.i51, %_25.i47
  br label %bb26

bb26:                                             ; preds = %bb3.i52, %bb8.i42, %bb6.i32, %bb4.i20
  %_0.sroa.4.0.i30.ph = phi i32 [ %9, %bb4.i20 ], [ %10, %bb6.i32 ], [ %11, %bb8.i42 ], [ %_7.i53, %bb3.i52 ]
  %12 = icmp samesign ult i32 %_0.sroa.4.0.i30.ph, 1114112
  tail call void @llvm.assume(i1 %12)
  %_12 = icmp eq i32 %_0.sroa.4.0.i30.ph, 41
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_16)
  br i1 %_12, label %bb5, label %bb6

bb40:                                             ; preds = %bb23, %bb4
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_fbb2e5150e4a30502876cccda5ea05e6) #18
  unreachable

bb6:                                              ; preds = %bb26
  %_17 = icmp eq i32 %level.sroa.0.0120, %k
  br i1 %_17, label %bb7, label %bb12

bb5:                                              ; preds = %bb26
  %13 = add i32 %level.sroa.0.0120, -1
  br label %bb12

bb7:                                              ; preds = %bb6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_25)
  store ptr %tree.0, ptr %_25, align 8
  store ptr %_34, ptr %2, align 8
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_68 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_25, i64 noundef %iter.sroa.0.0119) #22
  %.not11 = icmp eq i64 %_68, 0
  br i1 %.not11, label %bb30, label %bb35

bb30:                                             ; preds = %bb7
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1053)
  %ptr.i.i55 = load ptr, ptr %_25, align 8, !alias.scope !1056, !nonnull !23, !noundef !23
  %end_or_len.i.i56 = load ptr, ptr %2, align 8, !alias.scope !1056, !nonnull !23, !noundef !23
  %_7.i.i57 = icmp eq ptr %ptr.i.i55, %end_or_len.i.i56
  br i1 %_7.i.i57, label %bb35, label %bb14.i58

bb14.i58:                                         ; preds = %bb30
  %x.i60 = load i8, ptr %ptr.i.i55, align 1, !noalias !1053, !noundef !23
  %_6.i61 = icmp sgt i8 %x.i60, -1
  br i1 %_6.i61, label %bb3.i94, label %bb4.i62

bb4.i62:                                          ; preds = %bb14.i58
  %_18.i.i59 = getelementptr inbounds nuw i8, ptr %ptr.i.i55, i64 1
  %_30.i63 = and i8 %x.i60, 31
  %init.i64 = zext nneg i8 %_30.i63 to i32
  %_7.i10.i65 = icmp ne ptr %_18.i.i59, %end_or_len.i.i56
  tail call void @llvm.assume(i1 %_7.i10.i65)
  %y.i67 = load i8, ptr %_18.i.i59, align 1, !noalias !1053, !noundef !23
  %_34.i68 = shl nuw nsw i32 %init.i64, 6
  %_36.i69 = and i8 %y.i67, 63
  %_35.i70 = zext nneg i8 %_36.i69 to i32
  %14 = or disjoint i32 %_34.i68, %_35.i70
  %_13.i71 = icmp samesign ugt i8 %x.i60, -33
  br i1 %_13.i71, label %bb6.i74, label %bb36

bb3.i94:                                          ; preds = %bb14.i58
  %_7.i95 = zext nneg i8 %x.i60 to i32
  br label %bb36

bb6.i74:                                          ; preds = %bb4.i62
  %_18.i12.i66 = getelementptr inbounds nuw i8, ptr %ptr.i.i55, i64 2
  %_7.i17.i75 = icmp ne ptr %_18.i12.i66, %end_or_len.i.i56
  tail call void @llvm.assume(i1 %_7.i17.i75)
  %z.i77 = load i8, ptr %_18.i12.i66, align 1, !noalias !1053, !noundef !23
  %_40.i78 = shl nuw nsw i32 %_35.i70, 6
  %_42.i79 = and i8 %z.i77, 63
  %_41.i80 = zext nneg i8 %_42.i79 to i32
  %y_z.i81 = or disjoint i32 %_40.i78, %_41.i80
  %_20.i82 = shl nuw nsw i32 %init.i64, 12
  %15 = or disjoint i32 %y_z.i81, %_20.i82
  %_21.i83 = icmp samesign ugt i8 %x.i60, -17
  br i1 %_21.i83, label %bb28, label %bb36

bb28:                                             ; preds = %bb6.i74
  %_18.i19.i76 = getelementptr inbounds nuw i8, ptr %ptr.i.i55, i64 3
  %_7.i24.i85 = icmp ne ptr %_18.i19.i76, %end_or_len.i.i56
  tail call void @llvm.assume(i1 %_7.i24.i85)
  %w.i87 = load i8, ptr %_18.i19.i76, align 1, !noalias !1053, !noundef !23
  %_26.i88 = shl nuw nsw i32 %init.i64, 18
  %_25.i89 = and i32 %_26.i88, 1835008
  %_46.i90 = shl nuw nsw i32 %y_z.i81, 6
  %_48.i91 = and i8 %w.i87, 63
  %_47.i92 = zext nneg i8 %_48.i91 to i32
  %_27.i93 = or disjoint i32 %_46.i90, %_47.i92
  %16 = or disjoint i32 %_27.i93, %_25.i89
  %.not12 = icmp eq i32 %16, 1114112
  br i1 %.not12, label %bb35, label %bb36, !prof !1059

bb36:                                             ; preds = %bb3.i94, %bb6.i74, %bb4.i62, %bb28
  %_0.sroa.4.0.i72.ph113 = phi i32 [ %16, %bb28 ], [ %_7.i95, %bb3.i94 ], [ %15, %bb6.i74 ], [ %14, %bb4.i62 ]
  %17 = add nsw i32 %_0.sroa.4.0.i72.ph113, -48
  %_14.i = icmp ult i32 %17, 10
  br i1 %_14.i, label %bb38, label %bb37, !prof !1040

bb35:                                             ; preds = %bb30, %bb7, %bb28
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_0c37c74758868b6df0cc5a51b83244b3) #18
  unreachable

bb38:                                             ; preds = %bb36
  %18 = add i32 %17, %sum.sroa.0.0121
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_25)
  br label %bb12

bb37:                                             ; preds = %bb36
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_ad4ee931a9ef20795294d597d8942628) #18
  unreachable

bb12:                                             ; preds = %bb5, %bb6, %bb38, %bb3
  %level.sroa.0.1 = phi i32 [ %8, %bb3 ], [ %13, %bb5 ], [ %k, %bb38 ], [ %level.sroa.0.0120, %bb6 ]
  %sum.sroa.0.1 = phi i32 [ %sum.sroa.0.0121, %bb3 ], [ %sum.sroa.0.0121, %bb5 ], [ %18, %bb38 ], [ %sum.sroa.0.0121, %bb6 ]
  %exitcond.not = icmp eq i64 %3, %tree.1
  br i1 %exitcond.not, label %bb14, label %bb13
}
