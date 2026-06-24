define noundef i32 @f_gold(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %s.0, i64 noundef %s.1) unnamed_addr #1 {
start:
  %_38 = alloca [16 x i8], align 8
  %_32 = alloca [16 x i8], align 8
  %_20 = alloca [16 x i8], align 8
  %_15 = alloca [16 x i8], align 8
  %_10 = alloca [16 x i8], align 8
  %_45242.not = icmp eq i64 %s.1, 0
  br i1 %_45242.not, label %bb14.lr.ph, label %bb3.lr.ph

bb3.lr.ph:                                        ; preds = %start
  %_52 = getelementptr inbounds nuw i8, ptr %s.0, i64 %s.1
  %0 = getelementptr inbounds nuw i8, ptr %_10, i64 8
  %1 = getelementptr inbounds nuw i8, ptr %_15, i64 8
  %2 = getelementptr inbounds nuw i8, ptr %_20, i64 8
  br label %bb3

bb3:                                              ; preds = %bb3.lr.ph, %bb12
  %3 = phi i64 [ 1, %bb3.lr.ph ], [ %28, %bb12 ]
  %count.sroa.0.0244 = phi i32 [ 0, %bb3.lr.ph ], [ %count.sroa.0.3, %bb12 ]
  %iter.sroa.0.0243 = phi i64 [ 0, %bb3.lr.ph ], [ %3, %bb12 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_10)
  store ptr %s.0, ptr %_10, align 8
  store ptr %_52, ptr %0, align 8
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_56 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_10, i64 noundef %iter.sroa.0.0243) #22
  %.not23 = icmp eq i64 %_56, 0
  br i1 %.not23, label %bb25, label %bb30

bb4:                                              ; preds = %bb12
  %_97245.not = icmp eq i64 %s.1, 1
  br i1 %_97245.not, label %bb15, label %bb14.lr.ph

bb14.lr.ph:                                       ; preds = %start, %bb4
  %count.sroa.0.0.lcssa252 = phi i32 [ %count.sroa.0.3, %bb4 ], [ 0, %start ]
  %_104 = getelementptr inbounds nuw i8, ptr %s.0, i64 %s.1
  %4 = getelementptr inbounds nuw i8, ptr %_32, i64 8
  %5 = getelementptr inbounds nuw i8, ptr %_38, i64 8
  br label %bb14

bb14:                                             ; preds = %bb14.lr.ph, %bb74
  %6 = phi i64 [ 1, %bb14.lr.ph ], [ %18, %bb74 ]
  %count.sroa.0.1247 = phi i32 [ %count.sroa.0.0.lcssa252, %bb14.lr.ph ], [ %count.sroa.0.2, %bb74 ]
  %iter1.sroa.0.0246 = phi i64 [ 0, %bb14.lr.ph ], [ %6, %bb74 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_32)
  store ptr %s.0, ptr %_32, align 8
  store ptr %_104, ptr %4, align 8
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_108 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_32, i64 noundef %iter1.sroa.0.0246) #22
  %.not = icmp eq i64 %_108, 0
  br i1 %.not, label %bb58, label %bb63

bb15:                                             ; preds = %bb74, %bb4
  %count.sroa.0.1.lcssa = phi i32 [ %count.sroa.0.3, %bb4 ], [ %count.sroa.0.2, %bb74 ]
  ret i32 %count.sroa.0.1.lcssa

bb58:                                             ; preds = %bb14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1040)
  %ptr.i.i = load ptr, ptr %_32, align 8, !alias.scope !1043, !nonnull !23, !noundef !23
  %end_or_len.i.i = load ptr, ptr %4, align 8, !alias.scope !1043, !nonnull !23, !noundef !23
  %_7.i.i = icmp eq ptr %ptr.i.i, %end_or_len.i.i
  br i1 %_7.i.i, label %bb63, label %bb14.i

bb14.i:                                           ; preds = %bb58
  %x.i = load i8, ptr %ptr.i.i, align 1, !noalias !1040, !noundef !23
  %_6.i = icmp sgt i8 %x.i, -1
  br i1 %_6.i, label %bb3.i, label %bb4.i

bb4.i:                                            ; preds = %bb14.i
  %_18.i.i = getelementptr inbounds nuw i8, ptr %ptr.i.i, i64 1
  %_30.i = and i8 %x.i, 31
  %init.i = zext nneg i8 %_30.i to i32
  %_7.i10.i = icmp ne ptr %_18.i.i, %end_or_len.i.i
  tail call void @llvm.assume(i1 %_7.i10.i)
  %y.i = load i8, ptr %_18.i.i, align 1, !noalias !1040, !noundef !23
  %_34.i = shl nuw nsw i32 %init.i, 6
  %_36.i = and i8 %y.i, 63
  %_35.i = zext nneg i8 %_36.i to i32
  %7 = or disjoint i32 %_34.i, %_35.i
  %_13.i = icmp samesign ugt i8 %x.i, -33
  br i1 %_13.i, label %bb6.i, label %bb64

bb3.i:                                            ; preds = %bb14.i
  %_7.i = zext nneg i8 %x.i to i32
  br label %bb64

bb6.i:                                            ; preds = %bb4.i
  %_18.i12.i = getelementptr inbounds nuw i8, ptr %ptr.i.i, i64 2
  %_7.i17.i = icmp ne ptr %_18.i12.i, %end_or_len.i.i
  tail call void @llvm.assume(i1 %_7.i17.i)
  %z.i = load i8, ptr %_18.i12.i, align 1, !noalias !1040, !noundef !23
  %_40.i = shl nuw nsw i32 %_35.i, 6
  %_42.i = and i8 %z.i, 63
  %_41.i = zext nneg i8 %_42.i to i32
  %y_z.i = or disjoint i32 %_40.i, %_41.i
  %_20.i = shl nuw nsw i32 %init.i, 12
  %8 = or disjoint i32 %y_z.i, %_20.i
  %_21.i = icmp samesign ugt i8 %x.i, -17
  br i1 %_21.i, label %bb56, label %bb64

bb56:                                             ; preds = %bb6.i
  %_18.i19.i = getelementptr inbounds nuw i8, ptr %ptr.i.i, i64 3
  %_7.i24.i = icmp ne ptr %_18.i19.i, %end_or_len.i.i
  tail call void @llvm.assume(i1 %_7.i24.i)
  %w.i = load i8, ptr %_18.i19.i, align 1, !noalias !1040, !noundef !23
  %_26.i = shl nuw nsw i32 %init.i, 18
  %_25.i = and i32 %_26.i, 1835008
  %_46.i = shl nuw nsw i32 %y_z.i, 6
  %_48.i = and i8 %w.i, 63
  %_47.i = zext nneg i8 %_48.i to i32
  %_27.i = or disjoint i32 %_46.i, %_47.i
  %9 = or disjoint i32 %_27.i, %_25.i
  %.not20 = icmp eq i32 %9, 1114112
  br i1 %.not20, label %bb63, label %bb64, !prof !1046

bb64:                                             ; preds = %bb3.i, %bb6.i, %bb4.i, %bb56
  %_0.sroa.4.0.i.ph219 = phi i32 [ %9, %bb56 ], [ %_7.i, %bb3.i ], [ %8, %bb6.i ], [ %7, %bb4.i ]
  %10 = icmp samesign ult i32 %_0.sroa.4.0.i.ph219, 1114112
  tail call void @llvm.assume(i1 %10)
  %11 = shl nuw nsw i32 %_0.sroa.4.0.i.ph219, 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_38)
  store ptr %s.0, ptr %_38, align 8
  store ptr %_104, ptr %5, align 8
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_124 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_38, i64 noundef %6) #22
  %.not21 = icmp eq i64 %_124, 0
  br i1 %.not21, label %bb68, label %bb73

bb63:                                             ; preds = %bb58, %bb14, %bb56
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_499e0e64e04fd9362109a357d525c88b) #18
  unreachable

bb68:                                             ; preds = %bb64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1047)
  %ptr.i.i33 = load ptr, ptr %_38, align 8, !alias.scope !1050, !nonnull !23, !noundef !23
  %end_or_len.i.i34 = load ptr, ptr %5, align 8, !alias.scope !1050, !nonnull !23, !noundef !23
  %_7.i.i35 = icmp eq ptr %ptr.i.i33, %end_or_len.i.i34
  br i1 %_7.i.i35, label %bb73, label %bb14.i36

bb14.i36:                                         ; preds = %bb68
  %x.i38 = load i8, ptr %ptr.i.i33, align 1, !noalias !1047, !noundef !23
  %_6.i39 = icmp sgt i8 %x.i38, -1
  br i1 %_6.i39, label %bb3.i72, label %bb4.i40

bb4.i40:                                          ; preds = %bb14.i36
  %_18.i.i37 = getelementptr inbounds nuw i8, ptr %ptr.i.i33, i64 1
  %_30.i41 = and i8 %x.i38, 31
  %init.i42 = zext nneg i8 %_30.i41 to i32
  %_7.i10.i43 = icmp ne ptr %_18.i.i37, %end_or_len.i.i34
  tail call void @llvm.assume(i1 %_7.i10.i43)
  %y.i45 = load i8, ptr %_18.i.i37, align 1, !noalias !1047, !noundef !23
  %_34.i46 = shl nuw nsw i32 %init.i42, 6
  %_36.i47 = and i8 %y.i45, 63
  %_35.i48 = zext nneg i8 %_36.i47 to i32
  %12 = or disjoint i32 %_34.i46, %_35.i48
  %_13.i49 = icmp samesign ugt i8 %x.i38, -33
  br i1 %_13.i49, label %bb6.i52, label %bb74

bb3.i72:                                          ; preds = %bb14.i36
  %_7.i73 = zext nneg i8 %x.i38 to i32
  br label %bb74

bb6.i52:                                          ; preds = %bb4.i40
  %_18.i12.i44 = getelementptr inbounds nuw i8, ptr %ptr.i.i33, i64 2
  %_7.i17.i53 = icmp ne ptr %_18.i12.i44, %end_or_len.i.i34
  tail call void @llvm.assume(i1 %_7.i17.i53)
  %z.i55 = load i8, ptr %_18.i12.i44, align 1, !noalias !1047, !noundef !23
  %_40.i56 = shl nuw nsw i32 %_35.i48, 6
  %_42.i57 = and i8 %z.i55, 63
  %_41.i58 = zext nneg i8 %_42.i57 to i32
  %y_z.i59 = or disjoint i32 %_40.i56, %_41.i58
  %_20.i60 = shl nuw nsw i32 %init.i42, 12
  %13 = or disjoint i32 %y_z.i59, %_20.i60
  %_21.i61 = icmp samesign ugt i8 %x.i38, -17
  br i1 %_21.i61, label %bb66, label %bb74

bb66:                                             ; preds = %bb6.i52
  %_18.i19.i54 = getelementptr inbounds nuw i8, ptr %ptr.i.i33, i64 3
  %_7.i24.i63 = icmp ne ptr %_18.i19.i54, %end_or_len.i.i34
  tail call void @llvm.assume(i1 %_7.i24.i63)
  %w.i65 = load i8, ptr %_18.i19.i54, align 1, !noalias !1047, !noundef !23
  %_26.i66 = shl nuw nsw i32 %init.i42, 18
  %_25.i67 = and i32 %_26.i66, 1835008
  %_46.i68 = shl nuw nsw i32 %y_z.i59, 6
  %_48.i69 = and i8 %w.i65, 63
  %_47.i70 = zext nneg i8 %_48.i69 to i32
  %_27.i71 = or disjoint i32 %_46.i68, %_47.i70
  %14 = or disjoint i32 %_27.i71, %_25.i67
  %.not22 = icmp eq i32 %14, 1114112
  br i1 %.not22, label %bb73, label %bb74, !prof !1046

bb74:                                             ; preds = %bb3.i72, %bb6.i52, %bb4.i40, %bb66
  %_0.sroa.4.0.i50.ph227 = phi i32 [ %14, %bb66 ], [ %_7.i73, %bb3.i72 ], [ %13, %bb6.i52 ], [ %12, %bb4.i40 ]
  %15 = icmp samesign ult i32 %_0.sroa.4.0.i50.ph227, 1114112
  tail call void @llvm.assume(i1 %15)
  %_33 = add nuw nsw i32 %_0.sroa.4.0.i50.ph227, %11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_38)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_32)
  %16 = and i32 %_33, 3
  %_40 = icmp eq i32 %16, 0
  %_43 = trunc i64 %iter1.sroa.0.0246 to i32
  %_42 = add i32 %_43, 1
  %17 = select i1 %_40, i32 %_42, i32 0
  %count.sroa.0.2 = add i32 %17, %count.sroa.0.1247
  %18 = add i64 %6, 1
  %exitcond249.not = icmp eq i64 %18, %s.1
  br i1 %exitcond249.not, label %bb15, label %bb14

bb73:                                             ; preds = %bb68, %bb64, %bb66
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_8c7edf45d0803e0c47fc7ed8c8bdc37a) #18
  unreachable

bb25:                                             ; preds = %bb3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1053)
  %ptr.i.i75 = load ptr, ptr %_10, align 8, !alias.scope !1056, !nonnull !23, !noundef !23
  %end_or_len.i.i76 = load ptr, ptr %0, align 8, !alias.scope !1056, !nonnull !23, !noundef !23
  %_7.i.i77 = icmp eq ptr %ptr.i.i75, %end_or_len.i.i76
  br i1 %_7.i.i77, label %bb30, label %bb14.i78

bb14.i78:                                         ; preds = %bb25
  %x.i80 = load i8, ptr %ptr.i.i75, align 1, !noalias !1053, !noundef !23
  %_6.i81 = icmp sgt i8 %x.i80, -1
  br i1 %_6.i81, label %bb3.i114, label %bb4.i82

bb4.i82:                                          ; preds = %bb14.i78
  %_18.i.i79 = getelementptr inbounds nuw i8, ptr %ptr.i.i75, i64 1
  %_30.i83 = and i8 %x.i80, 31
  %init.i84 = zext nneg i8 %_30.i83 to i32
  %_7.i10.i85 = icmp ne ptr %_18.i.i79, %end_or_len.i.i76
  tail call void @llvm.assume(i1 %_7.i10.i85)
  %y.i87 = load i8, ptr %_18.i.i79, align 1, !noalias !1053, !noundef !23
  %_34.i88 = shl nuw nsw i32 %init.i84, 6
  %_36.i89 = and i8 %y.i87, 63
  %_35.i90 = zext nneg i8 %_36.i89 to i32
  %19 = or disjoint i32 %_34.i88, %_35.i90
  %_13.i91 = icmp samesign ugt i8 %x.i80, -33
  br i1 %_13.i91, label %bb6.i94, label %bb23

bb3.i114:                                         ; preds = %bb14.i78
  %_7.i115 = zext nneg i8 %x.i80 to i32
  br label %bb23

bb6.i94:                                          ; preds = %bb4.i82
  %_18.i12.i86 = getelementptr inbounds nuw i8, ptr %ptr.i.i75, i64 2
  %_7.i17.i95 = icmp ne ptr %_18.i12.i86, %end_or_len.i.i76
  tail call void @llvm.assume(i1 %_7.i17.i95)
  %z.i97 = load i8, ptr %_18.i12.i86, align 1, !noalias !1053, !noundef !23
  %_40.i98 = shl nuw nsw i32 %_35.i90, 6
  %_42.i99 = and i8 %z.i97, 63
  %_41.i100 = zext nneg i8 %_42.i99 to i32
  %y_z.i101 = or disjoint i32 %_40.i98, %_41.i100
  %_20.i102 = shl nuw nsw i32 %init.i84, 12
  %20 = or disjoint i32 %y_z.i101, %_20.i102
  %_21.i103 = icmp samesign ugt i8 %x.i80, -17
  br i1 %_21.i103, label %bb8.i104, label %bb23

bb8.i104:                                         ; preds = %bb6.i94
  %_18.i19.i96 = getelementptr inbounds nuw i8, ptr %ptr.i.i75, i64 3
  %_7.i24.i105 = icmp ne ptr %_18.i19.i96, %end_or_len.i.i76
  tail call void @llvm.assume(i1 %_7.i24.i105)
  %w.i107 = load i8, ptr %_18.i19.i96, align 1, !noalias !1053, !noundef !23
  %_26.i108 = shl nuw nsw i32 %init.i84, 18
  %_25.i109 = and i32 %_26.i108, 1835008
  %_46.i110 = shl nuw nsw i32 %y_z.i101, 6
  %_48.i111 = and i8 %w.i107, 63
  %_47.i112 = zext nneg i8 %_48.i111 to i32
  %_27.i113 = or disjoint i32 %_46.i110, %_47.i112
  %21 = or disjoint i32 %_27.i113, %_25.i109
  br label %bb23

bb23:                                             ; preds = %bb3.i114, %bb8.i104, %bb6.i94, %bb4.i82
  %_0.sroa.4.0.i92.ph = phi i32 [ %19, %bb4.i82 ], [ %20, %bb6.i94 ], [ %21, %bb8.i104 ], [ %_7.i115, %bb3.i114 ]
  switch i32 %_0.sroa.4.0.i92.ph, label %bb6 [
    i32 1114112, label %bb30
    i32 52, label %bb5
  ], !prof !1059

bb30:                                             ; preds = %bb25, %bb3, %bb23
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_354a6c2494719f33c663a3461a55b8ff) #18
  unreachable

bb6:                                              ; preds = %bb23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_10)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_15)
  store ptr %s.0, ptr %_15, align 8
  store ptr %_52, ptr %1, align 8
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_72 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_15, i64 noundef %iter.sroa.0.0243) #22
  %.not25 = icmp eq i64 %_72, 0
  br i1 %.not25, label %bb35, label %bb40

bb5:                                              ; preds = %bb23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_10)
  br label %bb10

bb35:                                             ; preds = %bb6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1060)
  %ptr.i.i117 = load ptr, ptr %_15, align 8, !alias.scope !1063, !nonnull !23, !noundef !23
  %end_or_len.i.i118 = load ptr, ptr %1, align 8, !alias.scope !1063, !nonnull !23, !noundef !23
  %_7.i.i119 = icmp eq ptr %ptr.i.i117, %end_or_len.i.i118
  br i1 %_7.i.i119, label %bb40, label %bb14.i120

bb14.i120:                                        ; preds = %bb35
  %x.i122 = load i8, ptr %ptr.i.i117, align 1, !noalias !1060, !noundef !23
  %_6.i123 = icmp sgt i8 %x.i122, -1
  br i1 %_6.i123, label %bb3.i156, label %bb4.i124

bb4.i124:                                         ; preds = %bb14.i120
  %_18.i.i121 = getelementptr inbounds nuw i8, ptr %ptr.i.i117, i64 1
  %_30.i125 = and i8 %x.i122, 31
  %init.i126 = zext nneg i8 %_30.i125 to i32
  %_7.i10.i127 = icmp ne ptr %_18.i.i121, %end_or_len.i.i118
  tail call void @llvm.assume(i1 %_7.i10.i127)
  %y.i129 = load i8, ptr %_18.i.i121, align 1, !noalias !1060, !noundef !23
  %_34.i130 = shl nuw nsw i32 %init.i126, 6
  %_36.i131 = and i8 %y.i129, 63
  %_35.i132 = zext nneg i8 %_36.i131 to i32
  %22 = or disjoint i32 %_34.i130, %_35.i132
  %_13.i133 = icmp samesign ugt i8 %x.i122, -33
  br i1 %_13.i133, label %bb6.i136, label %bb33

bb3.i156:                                         ; preds = %bb14.i120
  %_7.i157 = zext nneg i8 %x.i122 to i32
  br label %bb33

bb6.i136:                                         ; preds = %bb4.i124
  %_18.i12.i128 = getelementptr inbounds nuw i8, ptr %ptr.i.i117, i64 2
  %_7.i17.i137 = icmp ne ptr %_18.i12.i128, %end_or_len.i.i118
  tail call void @llvm.assume(i1 %_7.i17.i137)
  %z.i139 = load i8, ptr %_18.i12.i128, align 1, !noalias !1060, !noundef !23
  %_40.i140 = shl nuw nsw i32 %_35.i132, 6
  %_42.i141 = and i8 %z.i139, 63
  %_41.i142 = zext nneg i8 %_42.i141 to i32
  %y_z.i143 = or disjoint i32 %_40.i140, %_41.i142
  %_20.i144 = shl nuw nsw i32 %init.i126, 12
  %23 = or disjoint i32 %y_z.i143, %_20.i144
  %_21.i145 = icmp samesign ugt i8 %x.i122, -17
  br i1 %_21.i145, label %bb8.i146, label %bb33

bb8.i146:                                         ; preds = %bb6.i136
  %_18.i19.i138 = getelementptr inbounds nuw i8, ptr %ptr.i.i117, i64 3
  %_7.i24.i147 = icmp ne ptr %_18.i19.i138, %end_or_len.i.i118
  tail call void @llvm.assume(i1 %_7.i24.i147)
  %w.i149 = load i8, ptr %_18.i19.i138, align 1, !noalias !1060, !noundef !23
  %_26.i150 = shl nuw nsw i32 %init.i126, 18
  %_25.i151 = and i32 %_26.i150, 1835008
  %_46.i152 = shl nuw nsw i32 %y_z.i143, 6
  %_48.i153 = and i8 %w.i149, 63
  %_47.i154 = zext nneg i8 %_48.i153 to i32
  %_27.i155 = or disjoint i32 %_46.i152, %_47.i154
  %24 = or disjoint i32 %_27.i155, %_25.i151
  br label %bb33

bb33:                                             ; preds = %bb3.i156, %bb8.i146, %bb6.i136, %bb4.i124
  %_0.sroa.4.0.i134.ph = phi i32 [ %22, %bb4.i124 ], [ %23, %bb6.i136 ], [ %24, %bb8.i146 ], [ %_7.i157, %bb3.i156 ]
  switch i32 %_0.sroa.4.0.i134.ph, label %bb8 [
    i32 1114112, label %bb40
    i32 56, label %bb7
  ], !prof !1059

bb40:                                             ; preds = %bb35, %bb6, %bb33
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_abd14b5b91c21ad71fb5c1eb6096cbcd) #18
  unreachable

bb8:                                              ; preds = %bb33
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_15)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_20)
  store ptr %s.0, ptr %_20, align 8
  store ptr %_52, ptr %2, align 8
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_88 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_20, i64 noundef %iter.sroa.0.0243) #22
  %.not27 = icmp eq i64 %_88, 0
  br i1 %.not27, label %bb45, label %bb50

bb7:                                              ; preds = %bb33
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_15)
  br label %bb10

bb45:                                             ; preds = %bb8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1066)
  %ptr.i.i159 = load ptr, ptr %_20, align 8, !alias.scope !1069, !nonnull !23, !noundef !23
  %end_or_len.i.i160 = load ptr, ptr %2, align 8, !alias.scope !1069, !nonnull !23, !noundef !23
  %_7.i.i161 = icmp eq ptr %ptr.i.i159, %end_or_len.i.i160
  br i1 %_7.i.i161, label %bb50, label %bb14.i162

bb14.i162:                                        ; preds = %bb45
  %x.i164 = load i8, ptr %ptr.i.i159, align 1, !noalias !1066, !noundef !23
  %_6.i165 = icmp sgt i8 %x.i164, -1
  br i1 %_6.i165, label %bb3.i198, label %bb4.i166

bb4.i166:                                         ; preds = %bb14.i162
  %_18.i.i163 = getelementptr inbounds nuw i8, ptr %ptr.i.i159, i64 1
  %_30.i167 = and i8 %x.i164, 31
  %init.i168 = zext nneg i8 %_30.i167 to i32
  %_7.i10.i169 = icmp ne ptr %_18.i.i163, %end_or_len.i.i160
  tail call void @llvm.assume(i1 %_7.i10.i169)
  %y.i171 = load i8, ptr %_18.i.i163, align 1, !noalias !1066, !noundef !23
  %_34.i172 = shl nuw nsw i32 %init.i168, 6
  %_36.i173 = and i8 %y.i171, 63
  %_35.i174 = zext nneg i8 %_36.i173 to i32
  %25 = or disjoint i32 %_34.i172, %_35.i174
  %_13.i175 = icmp samesign ugt i8 %x.i164, -33
  br i1 %_13.i175, label %bb6.i178, label %bb43

bb3.i198:                                         ; preds = %bb14.i162
  %_7.i199 = zext nneg i8 %x.i164 to i32
  br label %bb43

bb6.i178:                                         ; preds = %bb4.i166
  %_18.i12.i170 = getelementptr inbounds nuw i8, ptr %ptr.i.i159, i64 2
  %_7.i17.i179 = icmp ne ptr %_18.i12.i170, %end_or_len.i.i160
  tail call void @llvm.assume(i1 %_7.i17.i179)
  %z.i181 = load i8, ptr %_18.i12.i170, align 1, !noalias !1066, !noundef !23
  %_40.i182 = shl nuw nsw i32 %_35.i174, 6
  %_42.i183 = and i8 %z.i181, 63
  %_41.i184 = zext nneg i8 %_42.i183 to i32
  %y_z.i185 = or disjoint i32 %_40.i182, %_41.i184
  %_20.i186 = shl nuw nsw i32 %init.i168, 12
  %26 = or disjoint i32 %y_z.i185, %_20.i186
  %_21.i187 = icmp samesign ugt i8 %x.i164, -17
  br i1 %_21.i187, label %bb8.i188, label %bb43

bb8.i188:                                         ; preds = %bb6.i178
  %_18.i19.i180 = getelementptr inbounds nuw i8, ptr %ptr.i.i159, i64 3
  %_7.i24.i189 = icmp ne ptr %_18.i19.i180, %end_or_len.i.i160
  tail call void @llvm.assume(i1 %_7.i24.i189)
  %w.i191 = load i8, ptr %_18.i19.i180, align 1, !noalias !1066, !noundef !23
  %_26.i192 = shl nuw nsw i32 %init.i168, 18
  %_25.i193 = and i32 %_26.i192, 1835008
  %_46.i194 = shl nuw nsw i32 %y_z.i185, 6
  %_48.i195 = and i8 %w.i191, 63
  %_47.i196 = zext nneg i8 %_48.i195 to i32
  %_27.i197 = or disjoint i32 %_46.i194, %_47.i196
  %27 = or disjoint i32 %_27.i197, %_25.i193
  br label %bb43

bb43:                                             ; preds = %bb3.i198, %bb8.i188, %bb6.i178, %bb4.i166
  %_0.sroa.4.0.i176.ph = phi i32 [ %25, %bb4.i166 ], [ %26, %bb6.i178 ], [ %27, %bb8.i188 ], [ %_7.i199, %bb3.i198 ]
  switch i32 %_0.sroa.4.0.i176.ph, label %bb11 [
    i32 1114112, label %bb50
    i32 48, label %bb9
  ], !prof !1059

bb50:                                             ; preds = %bb45, %bb8, %bb43
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_a66cad70a5f1b26a926bda80d0182092) #18
  unreachable

bb11:                                             ; preds = %bb43
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_20)
  br label %bb12

bb9:                                              ; preds = %bb43
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_20)
  br label %bb10

bb12:                                             ; preds = %bb10, %bb11
  %count.sroa.0.3 = phi i32 [ %29, %bb10 ], [ %count.sroa.0.0244, %bb11 ]
  %28 = add i64 %3, 1
  %exitcond.not = icmp eq i64 %3, %s.1
  br i1 %exitcond.not, label %bb4, label %bb3

bb10:                                             ; preds = %bb5, %bb7, %bb9
  %29 = add i32 %count.sroa.0.0244, 1
  br label %bb12
}
