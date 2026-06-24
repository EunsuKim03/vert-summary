define noundef range(i32 0, 1114112) i32 @f_gold(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %str_input.0, i64 noundef %str_input.1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb13:
  %_26 = alloca [16 x i8], align 8
  %_20 = alloca [16 x i8], align 8
  %_16 = alloca [16 x i8], align 8
  %_31 = getelementptr inbounds nuw i8, ptr %str_input.0, i64 %str_input.1
  %_7.i.i = icmp samesign eq i64 %str_input.1, 0
  br i1 %_7.i.i, label %bb18, label %bb14.i

bb14.i:                                           ; preds = %bb13
  %x.i = load i8, ptr %str_input.0, align 1, !noalias !1040, !noundef !23
  %_6.i = icmp sgt i8 %x.i, -1
  br i1 %_6.i, label %bb3.i, label %bb4.i

bb4.i:                                            ; preds = %bb14.i
  %_18.i.i = getelementptr inbounds nuw i8, ptr %str_input.0, i64 1
  %_30.i = and i8 %x.i, 31
  %init.i = zext nneg i8 %_30.i to i32
  %_7.i10.i = icmp samesign ne i64 %str_input.1, 1
  tail call void @llvm.assume(i1 %_7.i10.i)
  %y.i = load i8, ptr %_18.i.i, align 1, !noalias !1040, !noundef !23
  %_34.i = shl nuw nsw i32 %init.i, 6
  %_36.i = and i8 %y.i, 63
  %_35.i = zext nneg i8 %_36.i to i32
  %0 = or disjoint i32 %_34.i, %_35.i
  %_13.i = icmp samesign ugt i8 %x.i, -33
  br i1 %_13.i, label %bb6.i, label %bb1.preheader

bb3.i:                                            ; preds = %bb14.i
  %_7.i = zext nneg i8 %x.i to i32
  br label %bb1.preheader

bb6.i:                                            ; preds = %bb4.i
  %_18.i12.i = getelementptr inbounds nuw i8, ptr %str_input.0, i64 2
  %_7.i17.i = icmp samesign ne i64 %str_input.1, 2
  tail call void @llvm.assume(i1 %_7.i17.i)
  %z.i = load i8, ptr %_18.i12.i, align 1, !noalias !1040, !noundef !23
  %_40.i = shl nuw nsw i32 %_35.i, 6
  %_42.i = and i8 %z.i, 63
  %_41.i = zext nneg i8 %_42.i to i32
  %y_z.i = or disjoint i32 %_40.i, %_41.i
  %_20.i = shl nuw nsw i32 %init.i, 12
  %1 = or disjoint i32 %y_z.i, %_20.i
  %_21.i = icmp samesign ugt i8 %x.i, -17
  br i1 %_21.i, label %bb11, label %bb1.preheader

bb11:                                             ; preds = %bb6.i
  %_18.i19.i = getelementptr inbounds nuw i8, ptr %str_input.0, i64 3
  %_7.i24.i = icmp samesign ne i64 %str_input.1, 3
  tail call void @llvm.assume(i1 %_7.i24.i)
  %w.i = load i8, ptr %_18.i19.i, align 1, !noalias !1040, !noundef !23
  %_26.i = shl nuw nsw i32 %init.i, 18
  %_25.i = and i32 %_26.i, 1835008
  %_46.i = shl nuw nsw i32 %y_z.i, 6
  %_48.i = and i8 %w.i, 63
  %_47.i = zext nneg i8 %_48.i to i32
  %_27.i = or disjoint i32 %_46.i, %_47.i
  %2 = or disjoint i32 %_27.i, %_25.i
  %.not14 = icmp eq i32 %2, 1114112
  br i1 %.not14, label %bb18, label %bb1.preheader, !prof !1043

bb1.preheader:                                    ; preds = %bb4.i, %bb6.i, %bb3.i, %bb11
  %_0.sroa.4.0.i206 = phi i32 [ %2, %bb11 ], [ %0, %bb4.i ], [ %1, %bb6.i ], [ %_7.i, %bb3.i ]
  %3 = getelementptr inbounds nuw i8, ptr %_16, i64 8
  %4 = getelementptr inbounds nuw i8, ptr %_20, i64 8
  %5 = getelementptr inbounds nuw i8, ptr %_26, i64 8
  %6 = trunc i64 %str_input.1 to i32
  br label %bb20

bb18:                                             ; preds = %bb13, %bb11
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_15dbdf47819e645f096bf257c652c71f) #18
  unreachable

bb21:                                             ; preds = %bb9
  ret i32 %res.sroa.0.1

bb20:                                             ; preds = %bb1.preheader, %bb9
  %indvars.iv = phi i32 [ %6, %bb1.preheader ], [ %indvars.iv.next, %bb9 ]
  %res.sroa.0.0199 = phi i32 [ %_0.sroa.4.0.i206, %bb1.preheader ], [ %res.sroa.0.1, %bb9 ]
  %count.sroa.0.0198 = phi i32 [ 0, %bb1.preheader ], [ %count.sroa.0.1, %bb9 ]
  %iter.sroa.0.0196 = phi i64 [ 0, %bb1.preheader ], [ %7, %bb9 ]
  %7 = add nuw i64 %iter.sroa.0.0196, 1
  %_48193 = icmp ult i64 %7, %str_input.1
  br i1 %_48193, label %bb22, label %bb6

bb22:                                             ; preds = %bb20, %bb5
  %iter1.sroa.0.0195 = phi i64 [ %8, %bb5 ], [ %7, %bb20 ]
  %cur_count.sroa.0.0194 = phi i32 [ %15, %bb5 ], [ 1, %bb20 ]
  %8 = add i64 %iter1.sroa.0.0195, 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_16)
  store ptr %str_input.0, ptr %_16, align 8
  store ptr %_31, ptr %3, align 8
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_59 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_16, i64 noundef %iter.sroa.0.0196) #22
  %.not15 = icmp eq i64 %_59, 0
  br i1 %.not15, label %bb27, label %bb32

bb6:                                              ; preds = %bb43, %bb5, %bb20
  %cur_count.sroa.0.0189 = phi i32 [ 1, %bb20 ], [ %cur_count.sroa.0.0194, %bb43 ], [ %indvars.iv, %bb5 ]
  %_21 = icmp sgt i32 %cur_count.sroa.0.0189, %count.sroa.0.0198
  br i1 %_21, label %bb7, label %bb9

bb27:                                             ; preds = %bb22
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1044)
  %ptr.i.i24 = load ptr, ptr %_16, align 8, !alias.scope !1047, !nonnull !23, !noundef !23
  %end_or_len.i.i25 = load ptr, ptr %3, align 8, !alias.scope !1047, !nonnull !23, !noundef !23
  %_7.i.i26 = icmp eq ptr %ptr.i.i24, %end_or_len.i.i25
  br i1 %_7.i.i26, label %bb32, label %bb14.i27

bb14.i27:                                         ; preds = %bb27
  %x.i29 = load i8, ptr %ptr.i.i24, align 1, !noalias !1044, !noundef !23
  %_6.i30 = icmp sgt i8 %x.i29, -1
  br i1 %_6.i30, label %bb3.i63, label %bb4.i31

bb4.i31:                                          ; preds = %bb14.i27
  %_18.i.i28 = getelementptr inbounds nuw i8, ptr %ptr.i.i24, i64 1
  %_30.i32 = and i8 %x.i29, 31
  %init.i33 = zext nneg i8 %_30.i32 to i32
  %_7.i10.i34 = icmp ne ptr %_18.i.i28, %end_or_len.i.i25
  tail call void @llvm.assume(i1 %_7.i10.i34)
  %y.i36 = load i8, ptr %_18.i.i28, align 1, !noalias !1044, !noundef !23
  %_34.i37 = shl nuw nsw i32 %init.i33, 6
  %_36.i38 = and i8 %y.i36, 63
  %_35.i39 = zext nneg i8 %_36.i38 to i32
  %9 = or disjoint i32 %_34.i37, %_35.i39
  %_13.i40 = icmp samesign ugt i8 %x.i29, -33
  br i1 %_13.i40, label %bb6.i43, label %bb33

bb3.i63:                                          ; preds = %bb14.i27
  %_7.i64 = zext nneg i8 %x.i29 to i32
  br label %bb33

bb6.i43:                                          ; preds = %bb4.i31
  %_18.i12.i35 = getelementptr inbounds nuw i8, ptr %ptr.i.i24, i64 2
  %_7.i17.i44 = icmp ne ptr %_18.i12.i35, %end_or_len.i.i25
  tail call void @llvm.assume(i1 %_7.i17.i44)
  %z.i46 = load i8, ptr %_18.i12.i35, align 1, !noalias !1044, !noundef !23
  %_40.i47 = shl nuw nsw i32 %_35.i39, 6
  %_42.i48 = and i8 %z.i46, 63
  %_41.i49 = zext nneg i8 %_42.i48 to i32
  %y_z.i50 = or disjoint i32 %_40.i47, %_41.i49
  %_20.i51 = shl nuw nsw i32 %init.i33, 12
  %10 = or disjoint i32 %y_z.i50, %_20.i51
  %_21.i52 = icmp samesign ugt i8 %x.i29, -17
  br i1 %_21.i52, label %bb25, label %bb33

bb25:                                             ; preds = %bb6.i43
  %_18.i19.i45 = getelementptr inbounds nuw i8, ptr %ptr.i.i24, i64 3
  %_7.i24.i54 = icmp ne ptr %_18.i19.i45, %end_or_len.i.i25
  tail call void @llvm.assume(i1 %_7.i24.i54)
  %w.i56 = load i8, ptr %_18.i19.i45, align 1, !noalias !1044, !noundef !23
  %_26.i57 = shl nuw nsw i32 %init.i33, 18
  %_25.i58 = and i32 %_26.i57, 1835008
  %_46.i59 = shl nuw nsw i32 %y_z.i50, 6
  %_48.i60 = and i8 %w.i56, 63
  %_47.i61 = zext nneg i8 %_48.i60 to i32
  %_27.i62 = or disjoint i32 %_46.i59, %_47.i61
  %11 = or disjoint i32 %_27.i62, %_25.i58
  %.not16 = icmp eq i32 %11, 1114112
  br i1 %.not16, label %bb32, label %bb33, !prof !1050

bb33:                                             ; preds = %bb3.i63, %bb6.i43, %bb4.i31, %bb25
  %_0.sroa.4.0.i41.ph169 = phi i32 [ %11, %bb25 ], [ %_7.i64, %bb3.i63 ], [ %10, %bb6.i43 ], [ %9, %bb4.i31 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_20)
  store ptr %str_input.0, ptr %_20, align 8
  store ptr %_31, ptr %4, align 8
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_75 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_20, i64 noundef %iter1.sroa.0.0195) #22
  %.not17 = icmp eq i64 %_75, 0
  br i1 %.not17, label %bb37, label %bb42

bb32:                                             ; preds = %bb27, %bb22, %bb25
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_68b893a97c2eb5d24b95db6f5597bc80) #18
  unreachable

bb37:                                             ; preds = %bb33
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1051)
  %ptr.i.i66 = load ptr, ptr %_20, align 8, !alias.scope !1054, !nonnull !23, !noundef !23
  %end_or_len.i.i67 = load ptr, ptr %4, align 8, !alias.scope !1054, !nonnull !23, !noundef !23
  %_7.i.i68 = icmp eq ptr %ptr.i.i66, %end_or_len.i.i67
  br i1 %_7.i.i68, label %bb42, label %bb14.i69

bb14.i69:                                         ; preds = %bb37
  %x.i71 = load i8, ptr %ptr.i.i66, align 1, !noalias !1051, !noundef !23
  %_6.i72 = icmp sgt i8 %x.i71, -1
  br i1 %_6.i72, label %bb3.i105, label %bb4.i73

bb4.i73:                                          ; preds = %bb14.i69
  %_18.i.i70 = getelementptr inbounds nuw i8, ptr %ptr.i.i66, i64 1
  %_30.i74 = and i8 %x.i71, 31
  %init.i75 = zext nneg i8 %_30.i74 to i32
  %_7.i10.i76 = icmp ne ptr %_18.i.i70, %end_or_len.i.i67
  tail call void @llvm.assume(i1 %_7.i10.i76)
  %y.i78 = load i8, ptr %_18.i.i70, align 1, !noalias !1051, !noundef !23
  %_34.i79 = shl nuw nsw i32 %init.i75, 6
  %_36.i80 = and i8 %y.i78, 63
  %_35.i81 = zext nneg i8 %_36.i80 to i32
  %12 = or disjoint i32 %_34.i79, %_35.i81
  %_13.i82 = icmp samesign ugt i8 %x.i71, -33
  br i1 %_13.i82, label %bb6.i85, label %bb43

bb3.i105:                                         ; preds = %bb14.i69
  %_7.i106 = zext nneg i8 %x.i71 to i32
  br label %bb43

bb6.i85:                                          ; preds = %bb4.i73
  %_18.i12.i77 = getelementptr inbounds nuw i8, ptr %ptr.i.i66, i64 2
  %_7.i17.i86 = icmp ne ptr %_18.i12.i77, %end_or_len.i.i67
  tail call void @llvm.assume(i1 %_7.i17.i86)
  %z.i88 = load i8, ptr %_18.i12.i77, align 1, !noalias !1051, !noundef !23
  %_40.i89 = shl nuw nsw i32 %_35.i81, 6
  %_42.i90 = and i8 %z.i88, 63
  %_41.i91 = zext nneg i8 %_42.i90 to i32
  %y_z.i92 = or disjoint i32 %_40.i89, %_41.i91
  %_20.i93 = shl nuw nsw i32 %init.i75, 12
  %13 = or disjoint i32 %y_z.i92, %_20.i93
  %_21.i94 = icmp samesign ugt i8 %x.i71, -17
  br i1 %_21.i94, label %bb35, label %bb43

bb35:                                             ; preds = %bb6.i85
  %_18.i19.i87 = getelementptr inbounds nuw i8, ptr %ptr.i.i66, i64 3
  %_7.i24.i96 = icmp ne ptr %_18.i19.i87, %end_or_len.i.i67
  tail call void @llvm.assume(i1 %_7.i24.i96)
  %w.i98 = load i8, ptr %_18.i19.i87, align 1, !noalias !1051, !noundef !23
  %_26.i99 = shl nuw nsw i32 %init.i75, 18
  %_25.i100 = and i32 %_26.i99, 1835008
  %_46.i101 = shl nuw nsw i32 %y_z.i92, 6
  %_48.i102 = and i8 %w.i98, 63
  %_47.i103 = zext nneg i8 %_48.i102 to i32
  %_27.i104 = or disjoint i32 %_46.i101, %_47.i103
  %14 = or disjoint i32 %_27.i104, %_25.i100
  %.not18 = icmp eq i32 %14, 1114112
  br i1 %.not18, label %bb42, label %bb43, !prof !1050

bb43:                                             ; preds = %bb3.i105, %bb6.i85, %bb4.i73, %bb35
  %_0.sroa.4.0.i83.ph177 = phi i32 [ %14, %bb35 ], [ %_7.i106, %bb3.i105 ], [ %13, %bb6.i85 ], [ %12, %bb4.i73 ]
  %_12.not = icmp eq i32 %_0.sroa.4.0.i41.ph169, %_0.sroa.4.0.i83.ph177
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_20)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_16)
  br i1 %_12.not, label %bb5, label %bb6

bb42:                                             ; preds = %bb37, %bb33, %bb35
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_7c0047f26287dad8b10a505934cfcfc0) #18
  unreachable

bb5:                                              ; preds = %bb43
  %15 = add i32 %cur_count.sroa.0.0194, 1
  %exitcond.not = icmp eq i64 %8, %str_input.1
  br i1 %exitcond.not, label %bb6, label %bb22

bb7:                                              ; preds = %bb6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_26)
  store ptr %str_input.0, ptr %_26, align 8
  store ptr %_31, ptr %5, align 8
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_91 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_26, i64 noundef %iter.sroa.0.0196) #22
  %.not19 = icmp eq i64 %_91, 0
  br i1 %.not19, label %bb47, label %bb52

bb9:                                              ; preds = %bb6, %bb53
  %count.sroa.0.1 = phi i32 [ %cur_count.sroa.0.0189, %bb53 ], [ %count.sroa.0.0198, %bb6 ]
  %res.sroa.0.1 = phi i32 [ %_0.sroa.4.0.i125.ph185, %bb53 ], [ %res.sroa.0.0199, %bb6 ]
  %indvars.iv.next = add i32 %indvars.iv, -1
  %exitcond203.not = icmp eq i64 %7, %str_input.1
  br i1 %exitcond203.not, label %bb21, label %bb20

bb47:                                             ; preds = %bb7
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1057)
  %ptr.i.i108 = load ptr, ptr %_26, align 8, !alias.scope !1060, !nonnull !23, !noundef !23
  %end_or_len.i.i109 = load ptr, ptr %5, align 8, !alias.scope !1060, !nonnull !23, !noundef !23
  %_7.i.i110 = icmp eq ptr %ptr.i.i108, %end_or_len.i.i109
  br i1 %_7.i.i110, label %bb52, label %bb14.i111

bb14.i111:                                        ; preds = %bb47
  %x.i113 = load i8, ptr %ptr.i.i108, align 1, !noalias !1057, !noundef !23
  %_6.i114 = icmp sgt i8 %x.i113, -1
  br i1 %_6.i114, label %bb3.i147, label %bb4.i115

bb4.i115:                                         ; preds = %bb14.i111
  %_18.i.i112 = getelementptr inbounds nuw i8, ptr %ptr.i.i108, i64 1
  %_30.i116 = and i8 %x.i113, 31
  %init.i117 = zext nneg i8 %_30.i116 to i32
  %_7.i10.i118 = icmp ne ptr %_18.i.i112, %end_or_len.i.i109
  tail call void @llvm.assume(i1 %_7.i10.i118)
  %y.i120 = load i8, ptr %_18.i.i112, align 1, !noalias !1057, !noundef !23
  %_34.i121 = shl nuw nsw i32 %init.i117, 6
  %_36.i122 = and i8 %y.i120, 63
  %_35.i123 = zext nneg i8 %_36.i122 to i32
  %16 = or disjoint i32 %_34.i121, %_35.i123
  %_13.i124 = icmp samesign ugt i8 %x.i113, -33
  br i1 %_13.i124, label %bb6.i127, label %bb53

bb3.i147:                                         ; preds = %bb14.i111
  %_7.i148 = zext nneg i8 %x.i113 to i32
  br label %bb53

bb6.i127:                                         ; preds = %bb4.i115
  %_18.i12.i119 = getelementptr inbounds nuw i8, ptr %ptr.i.i108, i64 2
  %_7.i17.i128 = icmp ne ptr %_18.i12.i119, %end_or_len.i.i109
  tail call void @llvm.assume(i1 %_7.i17.i128)
  %z.i130 = load i8, ptr %_18.i12.i119, align 1, !noalias !1057, !noundef !23
  %_40.i131 = shl nuw nsw i32 %_35.i123, 6
  %_42.i132 = and i8 %z.i130, 63
  %_41.i133 = zext nneg i8 %_42.i132 to i32
  %y_z.i134 = or disjoint i32 %_40.i131, %_41.i133
  %_20.i135 = shl nuw nsw i32 %init.i117, 12
  %17 = or disjoint i32 %y_z.i134, %_20.i135
  %_21.i136 = icmp samesign ugt i8 %x.i113, -17
  br i1 %_21.i136, label %bb45, label %bb53

bb45:                                             ; preds = %bb6.i127
  %_18.i19.i129 = getelementptr inbounds nuw i8, ptr %ptr.i.i108, i64 3
  %_7.i24.i138 = icmp ne ptr %_18.i19.i129, %end_or_len.i.i109
  tail call void @llvm.assume(i1 %_7.i24.i138)
  %w.i140 = load i8, ptr %_18.i19.i129, align 1, !noalias !1057, !noundef !23
  %_26.i141 = shl nuw nsw i32 %init.i117, 18
  %_25.i142 = and i32 %_26.i141, 1835008
  %_46.i143 = shl nuw nsw i32 %y_z.i134, 6
  %_48.i144 = and i8 %w.i140, 63
  %_47.i145 = zext nneg i8 %_48.i144 to i32
  %_27.i146 = or disjoint i32 %_46.i143, %_47.i145
  %18 = or disjoint i32 %_27.i146, %_25.i142
  %.not20 = icmp eq i32 %18, 1114112
  br i1 %.not20, label %bb52, label %bb53, !prof !1050

bb53:                                             ; preds = %bb3.i147, %bb6.i127, %bb4.i115, %bb45
  %_0.sroa.4.0.i125.ph185 = phi i32 [ %18, %bb45 ], [ %_7.i148, %bb3.i147 ], [ %17, %bb6.i127 ], [ %16, %bb4.i115 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_26)
  br label %bb9

bb52:                                             ; preds = %bb47, %bb7, %bb45
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_86a7d6fcc8569e18291c6e0ff70ebd5f) #18
  unreachable
}
