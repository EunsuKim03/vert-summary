define noundef i32 @f_gold(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %tree.0, i64 noundef %tree.1, i32 noundef %k) unnamed_addr #1 {
start:
  %_24 = alloca [16 x i8], align 8
  %_16 = alloca [16 x i8], align 8
  %_11 = alloca [16 x i8], align 8
  %_26106.not = icmp eq i64 %tree.1, 0
  br i1 %_26106.not, label %bb13, label %bb12.lr.ph

bb12.lr.ph:                                       ; preds = %start
  %_33 = getelementptr inbounds nuw i8, ptr %tree.0, i64 %tree.1
  %0 = getelementptr inbounds nuw i8, ptr %_11, i64 8
  %1 = getelementptr inbounds nuw i8, ptr %_16, i64 8
  %2 = getelementptr inbounds nuw i8, ptr %_24, i64 8
  br label %bb12

bb13:                                             ; preds = %bb11, %start
  %product.sroa.0.0.lcssa = phi i32 [ 1, %start ], [ %product.sroa.0.1, %bb11 ]
  ret i32 %product.sroa.0.0.lcssa

bb12:                                             ; preds = %bb12.lr.ph, %bb11
  %product.sroa.0.0109 = phi i32 [ 1, %bb12.lr.ph ], [ %product.sroa.0.1, %bb11 ]
  %level.sroa.0.0108 = phi i32 [ -1, %bb12.lr.ph ], [ %level.sroa.0.1, %bb11 ]
  %iter.sroa.0.0107 = phi i64 [ 0, %bb12.lr.ph ], [ %3, %bb11 ]
  %3 = add nuw i64 %iter.sroa.0.0107, 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_11)
  store ptr %tree.0, ptr %_11, align 8
  store ptr %_33, ptr %0, align 8
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_37 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_11, i64 noundef %iter.sroa.0.0107) #22
  %.not = icmp eq i64 %_37, 0
  br i1 %.not, label %bb16, label %bb32, !prof !1040

bb16:                                             ; preds = %bb12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1041)
  %ptr.i.i = load ptr, ptr %_11, align 8, !alias.scope !1044, !nonnull !23, !noundef !23
  %end_or_len.i.i = load ptr, ptr %0, align 8, !alias.scope !1044, !nonnull !23, !noundef !23
  %_7.i.i = icmp eq ptr %ptr.i.i, %end_or_len.i.i
  br i1 %_7.i.i, label %bb32, label %bb14.i

bb14.i:                                           ; preds = %bb16
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
  br i1 %_13.i, label %bb6.i, label %bb19

bb3.i:                                            ; preds = %bb14.i
  %_7.i = zext nneg i8 %x.i to i32
  br label %bb19

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
  br i1 %_21.i, label %bb8.i, label %bb19

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
  br label %bb19

bb19:                                             ; preds = %bb3.i, %bb8.i, %bb6.i, %bb4.i
  %_0.sroa.4.0.i.ph = phi i32 [ %4, %bb4.i ], [ %5, %bb6.i ], [ %6, %bb8.i ], [ %_7.i, %bb3.i ]
  %7 = icmp samesign ult i32 %_0.sroa.4.0.i.ph, 1114112
  tail call void @llvm.assume(i1 %7)
  %_7 = icmp eq i32 %_0.sroa.4.0.i.ph, 40
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_11)
  br i1 %_7, label %bb3, label %bb4

bb32:                                             ; preds = %bb16, %bb12
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_acd461f79d90e55f2fdb3a9db4b96259) #18
  unreachable

bb4:                                              ; preds = %bb19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_16)
  store ptr %tree.0, ptr %_16, align 8
  store ptr %_33, ptr %1, align 8
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_52 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_16, i64 noundef %iter.sroa.0.0107) #22
  %.not8 = icmp eq i64 %_52, 0
  br i1 %.not8, label %bb22, label %bb33, !prof !1040

bb3:                                              ; preds = %bb19
  %8 = add i32 %level.sroa.0.0108, 1
  br label %bb11

bb22:                                             ; preds = %bb4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1047)
  %ptr.i.i10 = load ptr, ptr %_16, align 8, !alias.scope !1050, !nonnull !23, !noundef !23
  %end_or_len.i.i11 = load ptr, ptr %1, align 8, !alias.scope !1050, !nonnull !23, !noundef !23
  %_7.i.i12 = icmp eq ptr %ptr.i.i10, %end_or_len.i.i11
  br i1 %_7.i.i12, label %bb33, label %bb14.i13

bb14.i13:                                         ; preds = %bb22
  %x.i15 = load i8, ptr %ptr.i.i10, align 1, !noalias !1047, !noundef !23
  %_6.i16 = icmp sgt i8 %x.i15, -1
  br i1 %_6.i16, label %bb3.i49, label %bb4.i17

bb4.i17:                                          ; preds = %bb14.i13
  %_18.i.i14 = getelementptr inbounds nuw i8, ptr %ptr.i.i10, i64 1
  %_30.i18 = and i8 %x.i15, 31
  %init.i19 = zext nneg i8 %_30.i18 to i32
  %_7.i10.i20 = icmp ne ptr %_18.i.i14, %end_or_len.i.i11
  tail call void @llvm.assume(i1 %_7.i10.i20)
  %y.i22 = load i8, ptr %_18.i.i14, align 1, !noalias !1047, !noundef !23
  %_34.i23 = shl nuw nsw i32 %init.i19, 6
  %_36.i24 = and i8 %y.i22, 63
  %_35.i25 = zext nneg i8 %_36.i24 to i32
  %9 = or disjoint i32 %_34.i23, %_35.i25
  %_13.i26 = icmp samesign ugt i8 %x.i15, -33
  br i1 %_13.i26, label %bb6.i29, label %bb25

bb3.i49:                                          ; preds = %bb14.i13
  %_7.i50 = zext nneg i8 %x.i15 to i32
  br label %bb25

bb6.i29:                                          ; preds = %bb4.i17
  %_18.i12.i21 = getelementptr inbounds nuw i8, ptr %ptr.i.i10, i64 2
  %_7.i17.i30 = icmp ne ptr %_18.i12.i21, %end_or_len.i.i11
  tail call void @llvm.assume(i1 %_7.i17.i30)
  %z.i32 = load i8, ptr %_18.i12.i21, align 1, !noalias !1047, !noundef !23
  %_40.i33 = shl nuw nsw i32 %_35.i25, 6
  %_42.i34 = and i8 %z.i32, 63
  %_41.i35 = zext nneg i8 %_42.i34 to i32
  %y_z.i36 = or disjoint i32 %_40.i33, %_41.i35
  %_20.i37 = shl nuw nsw i32 %init.i19, 12
  %10 = or disjoint i32 %y_z.i36, %_20.i37
  %_21.i38 = icmp samesign ugt i8 %x.i15, -17
  br i1 %_21.i38, label %bb8.i39, label %bb25

bb8.i39:                                          ; preds = %bb6.i29
  %_18.i19.i31 = getelementptr inbounds nuw i8, ptr %ptr.i.i10, i64 3
  %_7.i24.i40 = icmp ne ptr %_18.i19.i31, %end_or_len.i.i11
  tail call void @llvm.assume(i1 %_7.i24.i40)
  %w.i42 = load i8, ptr %_18.i19.i31, align 1, !noalias !1047, !noundef !23
  %_26.i43 = shl nuw nsw i32 %init.i19, 18
  %_25.i44 = and i32 %_26.i43, 1835008
  %_46.i45 = shl nuw nsw i32 %y_z.i36, 6
  %_48.i46 = and i8 %w.i42, 63
  %_47.i47 = zext nneg i8 %_48.i46 to i32
  %_27.i48 = or disjoint i32 %_46.i45, %_47.i47
  %11 = or disjoint i32 %_27.i48, %_25.i44
  br label %bb25

bb25:                                             ; preds = %bb3.i49, %bb8.i39, %bb6.i29, %bb4.i17
  %_0.sroa.4.0.i27.ph = phi i32 [ %9, %bb4.i17 ], [ %10, %bb6.i29 ], [ %11, %bb8.i39 ], [ %_7.i50, %bb3.i49 ]
  %12 = icmp samesign ult i32 %_0.sroa.4.0.i27.ph, 1114112
  tail call void @llvm.assume(i1 %12)
  %_12 = icmp eq i32 %_0.sroa.4.0.i27.ph, 41
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_16)
  br i1 %_12, label %bb5, label %bb6

bb33:                                             ; preds = %bb22, %bb4
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_7adecb7a1d0a195b773a109c0d6c9401) #18
  unreachable

bb6:                                              ; preds = %bb25
  %_17 = icmp eq i32 %level.sroa.0.0108, %k
  br i1 %_17, label %bb7, label %bb11

bb5:                                              ; preds = %bb25
  %13 = add i32 %level.sroa.0.0108, -1
  br label %bb11

bb7:                                              ; preds = %bb6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_24)
  store ptr %tree.0, ptr %_24, align 8
  store ptr %_33, ptr %2, align 8
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_67 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_24, i64 noundef %iter.sroa.0.0107) #22
  %.not9 = icmp eq i64 %_67, 0
  br i1 %.not9, label %bb28, label %bb34, !prof !1040

bb28:                                             ; preds = %bb7
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1053)
  %ptr.i.i52 = load ptr, ptr %_24, align 8, !alias.scope !1056, !nonnull !23, !noundef !23
  %end_or_len.i.i53 = load ptr, ptr %2, align 8, !alias.scope !1056, !nonnull !23, !noundef !23
  %_7.i.i54 = icmp eq ptr %ptr.i.i52, %end_or_len.i.i53
  br i1 %_7.i.i54, label %bb34, label %bb14.i55

bb14.i55:                                         ; preds = %bb28
  %x.i57 = load i8, ptr %ptr.i.i52, align 1, !noalias !1053, !noundef !23
  %_6.i58 = icmp sgt i8 %x.i57, -1
  br i1 %_6.i58, label %bb3.i91, label %bb4.i59

bb4.i59:                                          ; preds = %bb14.i55
  %_18.i.i56 = getelementptr inbounds nuw i8, ptr %ptr.i.i52, i64 1
  %_30.i60 = and i8 %x.i57, 31
  %init.i61 = zext nneg i8 %_30.i60 to i32
  %_7.i10.i62 = icmp ne ptr %_18.i.i56, %end_or_len.i.i53
  tail call void @llvm.assume(i1 %_7.i10.i62)
  %y.i64 = load i8, ptr %_18.i.i56, align 1, !noalias !1053, !noundef !23
  %_34.i65 = shl nuw nsw i32 %init.i61, 6
  %_36.i66 = and i8 %y.i64, 63
  %_35.i67 = zext nneg i8 %_36.i66 to i32
  %14 = or disjoint i32 %_34.i65, %_35.i67
  %_13.i68 = icmp samesign ugt i8 %x.i57, -33
  br i1 %_13.i68, label %bb6.i71, label %bb31

bb3.i91:                                          ; preds = %bb14.i55
  %_7.i92 = zext nneg i8 %x.i57 to i32
  br label %bb31

bb6.i71:                                          ; preds = %bb4.i59
  %_18.i12.i63 = getelementptr inbounds nuw i8, ptr %ptr.i.i52, i64 2
  %_7.i17.i72 = icmp ne ptr %_18.i12.i63, %end_or_len.i.i53
  tail call void @llvm.assume(i1 %_7.i17.i72)
  %z.i74 = load i8, ptr %_18.i12.i63, align 1, !noalias !1053, !noundef !23
  %_40.i75 = shl nuw nsw i32 %_35.i67, 6
  %_42.i76 = and i8 %z.i74, 63
  %_41.i77 = zext nneg i8 %_42.i76 to i32
  %y_z.i78 = or disjoint i32 %_40.i75, %_41.i77
  %_20.i79 = shl nuw nsw i32 %init.i61, 12
  %15 = or disjoint i32 %y_z.i78, %_20.i79
  %_21.i80 = icmp samesign ugt i8 %x.i57, -17
  br i1 %_21.i80, label %bb8.i81, label %bb31

bb8.i81:                                          ; preds = %bb6.i71
  %_18.i19.i73 = getelementptr inbounds nuw i8, ptr %ptr.i.i52, i64 3
  %_7.i24.i82 = icmp ne ptr %_18.i19.i73, %end_or_len.i.i53
  tail call void @llvm.assume(i1 %_7.i24.i82)
  %w.i84 = load i8, ptr %_18.i19.i73, align 1, !noalias !1053, !noundef !23
  %_26.i85 = shl nuw nsw i32 %init.i61, 18
  %_25.i86 = and i32 %_26.i85, 1835008
  %_46.i87 = shl nuw nsw i32 %y_z.i78, 6
  %_48.i88 = and i8 %w.i84, 63
  %_47.i89 = zext nneg i8 %_48.i88 to i32
  %_27.i90 = or disjoint i32 %_46.i87, %_47.i89
  %16 = or disjoint i32 %_27.i90, %_25.i86
  br label %bb31

bb31:                                             ; preds = %bb3.i91, %bb8.i81, %bb6.i71, %bb4.i59
  %_0.sroa.4.0.i69.ph = phi i32 [ %14, %bb4.i59 ], [ %15, %bb6.i71 ], [ %16, %bb8.i81 ], [ %_7.i92, %bb3.i91 ]
  %17 = icmp samesign ult i32 %_0.sroa.4.0.i69.ph, 1114112
  tail call void @llvm.assume(i1 %17)
  %_19 = add nsw i32 %_0.sroa.4.0.i69.ph, -48
  %18 = mul i32 %_19, %product.sroa.0.0109
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_24)
  br label %bb11

bb34:                                             ; preds = %bb28, %bb7
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_24d136cc18d311e9b6fb649c919bc630) #18
  unreachable

bb11:                                             ; preds = %bb5, %bb6, %bb31, %bb3
  %level.sroa.0.1 = phi i32 [ %8, %bb3 ], [ %13, %bb5 ], [ %k, %bb31 ], [ %level.sroa.0.0108, %bb6 ]
  %product.sroa.0.1 = phi i32 [ %product.sroa.0.0109, %bb3 ], [ %product.sroa.0.0109, %bb5 ], [ %18, %bb31 ], [ %product.sroa.0.0109, %bb6 ]
  %exitcond.not = icmp eq i64 %3, %tree.1
  br i1 %exitcond.not, label %bb13, label %bb12
}
