define noundef i32 @f_gold(ptr dead_on_return noalias noundef readonly align 8 captures(none) dereferenceable(24) %s) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_26 = alloca [16 x i8], align 8
  %_18 = alloca [16 x i8], align 8
  %_11 = alloca [16 x i8], align 8
  %0 = getelementptr inbounds nuw i8, ptr %s, i64 16
  %iter1 = load i64, ptr %0, align 8, !noundef !23
  %_30 = icmp sgt i64 %iter1, -1
  tail call void @llvm.assume(i1 %_30)
  %_31128.not = icmp eq i64 %iter1, 0
  br i1 %_31128.not, label %bb16, label %bb15.lr.ph

bb15.lr.ph:                                       ; preds = %start
  %1 = getelementptr inbounds nuw i8, ptr %s, i64 8
  %_38 = load ptr, ptr %1, align 8, !nonnull !23, !noundef !23
  %_45 = getelementptr inbounds nuw i8, ptr %_38, i64 %iter1
  %2 = getelementptr inbounds nuw i8, ptr %_11, i64 8
  %3 = getelementptr inbounds nuw i8, ptr %_18, i64 8
  %4 = getelementptr inbounds nuw i8, ptr %_26, i64 8
  br label %bb15

bb16:                                             ; preds = %bb11, %start
  %c_count.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %c_count.sroa.0.1, %bb11 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1040)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1043)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1046)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1049)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1052)
  %self1.i.i.i.i1.i.i = load i64, ptr %s, align 8, !range !1055, !alias.scope !1056, !noalias !1059, !noundef !23
  %_6.i.i.i.i2.i.i = icmp eq i64 %self1.i.i.i.i1.i.i, 0
  br i1 %_6.i.i.i.i2.i.i, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h0f892c979e9018e3E.exit", label %bb2.i.i.i3.i.i

bb2.i.i.i3.i.i:                                   ; preds = %bb16
  %5 = getelementptr inbounds nuw i8, ptr %s, i64 8
  %self3.i.i.i.i4.i.i = load ptr, ptr %5, align 8, !alias.scope !1056, !noalias !1059, !nonnull !23, !noundef !23
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i, i64 noundef %self1.i.i.i.i1.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !1061
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h0f892c979e9018e3E.exit"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h0f892c979e9018e3E.exit": ; preds = %bb16, %bb2.i.i.i3.i.i
  ret i32 %c_count.sroa.0.0.lcssa

bb15:                                             ; preds = %bb15.lr.ph, %bb11
  %c_count.sroa.0.0132 = phi i32 [ 0, %bb15.lr.ph ], [ %c_count.sroa.0.1, %bb11 ]
  %a_count.sroa.0.0131 = phi i32 [ 0, %bb15.lr.ph ], [ %a_count.sroa.0.1, %bb11 ]
  %b_count.sroa.0.0130 = phi i32 [ 0, %bb15.lr.ph ], [ %b_count.sroa.0.1, %bb11 ]
  %iter.sroa.0.0129 = phi i64 [ 0, %bb15.lr.ph ], [ %6, %bb11 ]
  %6 = add nuw nsw i64 %iter.sroa.0.0129, 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_11)
  store ptr %_38, ptr %_11, align 8
  store ptr %_45, ptr %2, align 8
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_49 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_11, i64 noundef %iter.sroa.0.0129)
  %.not = icmp eq i64 %_49, 0
  br i1 %.not, label %bb20, label %bb45.invoke

cleanup:                                          ; preds = %bb45.invoke
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1062)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1065)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1068)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1071)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1074)
  %self1.i.i.i.i1.i.i19 = load i64, ptr %s, align 8, !range !1055, !alias.scope !1077, !noalias !1080, !noundef !23
  %_6.i.i.i.i2.i.i20 = icmp eq i64 %self1.i.i.i.i1.i.i19, 0
  br i1 %_6.i.i.i.i2.i.i20, label %bb14, label %bb2.i.i.i3.i.i21

bb2.i.i.i3.i.i21:                                 ; preds = %cleanup
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_38, i64 noundef %self1.i.i.i.i1.i.i19, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !1082
  br label %bb14

bb20:                                             ; preds = %bb15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1083)
  %ptr.i.i = load ptr, ptr %_11, align 8, !alias.scope !1086, !nonnull !23, !noundef !23
  %end_or_len.i.i = load ptr, ptr %2, align 8, !alias.scope !1086, !nonnull !23, !noundef !23
  %_7.i.i = icmp eq ptr %ptr.i.i, %end_or_len.i.i
  br i1 %_7.i.i, label %bb45.invoke, label %bb14.i

bb14.i:                                           ; preds = %bb20
  %x.i = load i8, ptr %ptr.i.i, align 1, !noalias !1083, !noundef !23
  %_6.i = icmp sgt i8 %x.i, -1
  br i1 %_6.i, label %bb3.i, label %bb4.i

bb4.i:                                            ; preds = %bb14.i
  %_18.i.i = getelementptr inbounds nuw i8, ptr %ptr.i.i, i64 1
  %_30.i = and i8 %x.i, 31
  %init.i = zext nneg i8 %_30.i to i32
  %_7.i10.i = icmp ne ptr %_18.i.i, %end_or_len.i.i
  tail call void @llvm.assume(i1 %_7.i10.i)
  %y.i = load i8, ptr %_18.i.i, align 1, !noalias !1083, !noundef !23
  %_34.i = shl nuw nsw i32 %init.i, 6
  %_36.i = and i8 %y.i, 63
  %_35.i = zext nneg i8 %_36.i to i32
  %8 = or disjoint i32 %_34.i, %_35.i
  %_13.i = icmp samesign ugt i8 %x.i, -33
  br i1 %_13.i, label %bb6.i, label %bb18

bb3.i:                                            ; preds = %bb14.i
  %_7.i = zext nneg i8 %x.i to i32
  br label %bb18

bb6.i:                                            ; preds = %bb4.i
  %_18.i12.i = getelementptr inbounds nuw i8, ptr %ptr.i.i, i64 2
  %_7.i17.i = icmp ne ptr %_18.i12.i, %end_or_len.i.i
  tail call void @llvm.assume(i1 %_7.i17.i)
  %z.i = load i8, ptr %_18.i12.i, align 1, !noalias !1083, !noundef !23
  %_40.i = shl nuw nsw i32 %_35.i, 6
  %_42.i = and i8 %z.i, 63
  %_41.i = zext nneg i8 %_42.i to i32
  %y_z.i = or disjoint i32 %_40.i, %_41.i
  %_20.i = shl nuw nsw i32 %init.i, 12
  %9 = or disjoint i32 %y_z.i, %_20.i
  %_21.i = icmp samesign ugt i8 %x.i, -17
  br i1 %_21.i, label %bb8.i, label %bb18

bb8.i:                                            ; preds = %bb6.i
  %_18.i19.i = getelementptr inbounds nuw i8, ptr %ptr.i.i, i64 3
  %_7.i24.i = icmp ne ptr %_18.i19.i, %end_or_len.i.i
  tail call void @llvm.assume(i1 %_7.i24.i)
  %w.i = load i8, ptr %_18.i19.i, align 1, !noalias !1083, !noundef !23
  %_26.i = shl nuw nsw i32 %init.i, 18
  %_25.i = and i32 %_26.i, 1835008
  %_46.i = shl nuw nsw i32 %y_z.i, 6
  %_48.i = and i8 %w.i, 63
  %_47.i = zext nneg i8 %_48.i to i32
  %_27.i = or disjoint i32 %_46.i, %_47.i
  %10 = or disjoint i32 %_27.i, %_25.i
  br label %bb18

bb18:                                             ; preds = %bb3.i, %bb8.i, %bb6.i, %bb4.i
  %_0.sroa.4.0.i.ph = phi i32 [ %8, %bb4.i ], [ %9, %bb6.i ], [ %10, %bb8.i ], [ %_7.i, %bb3.i ]
  switch i32 %_0.sroa.4.0.i.ph, label %bb4 [
    i32 1114112, label %bb45.invoke
    i32 97, label %bb3
  ], !prof !1089

bb4:                                              ; preds = %bb18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_11)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_18)
  store ptr %_38, ptr %_18, align 8
  store ptr %_45, ptr %3, align 8
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_72 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_18, i64 noundef %iter.sroa.0.0129)
  %.not13 = icmp eq i64 %_72, 0
  br i1 %.not13, label %bb30, label %bb45.invoke

bb3:                                              ; preds = %bb18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_11)
  %_13 = shl i32 %a_count.sroa.0.0131, 1
  %11 = or disjoint i32 %_13, 1
  br label %bb11

bb30:                                             ; preds = %bb4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1090)
  %ptr.i.i24 = load ptr, ptr %_18, align 8, !alias.scope !1093, !nonnull !23, !noundef !23
  %end_or_len.i.i25 = load ptr, ptr %3, align 8, !alias.scope !1093, !nonnull !23, !noundef !23
  %_7.i.i26 = icmp eq ptr %ptr.i.i24, %end_or_len.i.i25
  br i1 %_7.i.i26, label %bb45.invoke, label %bb14.i27

bb14.i27:                                         ; preds = %bb30
  %x.i29 = load i8, ptr %ptr.i.i24, align 1, !noalias !1090, !noundef !23
  %_6.i30 = icmp sgt i8 %x.i29, -1
  br i1 %_6.i30, label %bb3.i63, label %bb4.i31

bb4.i31:                                          ; preds = %bb14.i27
  %_18.i.i28 = getelementptr inbounds nuw i8, ptr %ptr.i.i24, i64 1
  %_30.i32 = and i8 %x.i29, 31
  %init.i33 = zext nneg i8 %_30.i32 to i32
  %_7.i10.i34 = icmp ne ptr %_18.i.i28, %end_or_len.i.i25
  tail call void @llvm.assume(i1 %_7.i10.i34)
  %y.i36 = load i8, ptr %_18.i.i28, align 1, !noalias !1090, !noundef !23
  %_34.i37 = shl nuw nsw i32 %init.i33, 6
  %_36.i38 = and i8 %y.i36, 63
  %_35.i39 = zext nneg i8 %_36.i38 to i32
  %12 = or disjoint i32 %_34.i37, %_35.i39
  %_13.i40 = icmp samesign ugt i8 %x.i29, -33
  br i1 %_13.i40, label %bb6.i43, label %bb28

bb3.i63:                                          ; preds = %bb14.i27
  %_7.i64 = zext nneg i8 %x.i29 to i32
  br label %bb28

bb6.i43:                                          ; preds = %bb4.i31
  %_18.i12.i35 = getelementptr inbounds nuw i8, ptr %ptr.i.i24, i64 2
  %_7.i17.i44 = icmp ne ptr %_18.i12.i35, %end_or_len.i.i25
  tail call void @llvm.assume(i1 %_7.i17.i44)
  %z.i46 = load i8, ptr %_18.i12.i35, align 1, !noalias !1090, !noundef !23
  %_40.i47 = shl nuw nsw i32 %_35.i39, 6
  %_42.i48 = and i8 %z.i46, 63
  %_41.i49 = zext nneg i8 %_42.i48 to i32
  %y_z.i50 = or disjoint i32 %_40.i47, %_41.i49
  %_20.i51 = shl nuw nsw i32 %init.i33, 12
  %13 = or disjoint i32 %y_z.i50, %_20.i51
  %_21.i52 = icmp samesign ugt i8 %x.i29, -17
  br i1 %_21.i52, label %bb8.i53, label %bb28

bb8.i53:                                          ; preds = %bb6.i43
  %_18.i19.i45 = getelementptr inbounds nuw i8, ptr %ptr.i.i24, i64 3
  %_7.i24.i54 = icmp ne ptr %_18.i19.i45, %end_or_len.i.i25
  tail call void @llvm.assume(i1 %_7.i24.i54)
  %w.i56 = load i8, ptr %_18.i19.i45, align 1, !noalias !1090, !noundef !23
  %_26.i57 = shl nuw nsw i32 %init.i33, 18
  %_25.i58 = and i32 %_26.i57, 1835008
  %_46.i59 = shl nuw nsw i32 %y_z.i50, 6
  %_48.i60 = and i8 %w.i56, 63
  %_47.i61 = zext nneg i8 %_48.i60 to i32
  %_27.i62 = or disjoint i32 %_46.i59, %_47.i61
  %14 = or disjoint i32 %_27.i62, %_25.i58
  br label %bb28

bb28:                                             ; preds = %bb3.i63, %bb8.i53, %bb6.i43, %bb4.i31
  %_0.sroa.4.0.i41.ph = phi i32 [ %12, %bb4.i31 ], [ %13, %bb6.i43 ], [ %14, %bb8.i53 ], [ %_7.i64, %bb3.i63 ]
  switch i32 %_0.sroa.4.0.i41.ph, label %bb6 [
    i32 1114112, label %bb45.invoke
    i32 98, label %bb5
  ], !prof !1089

bb6:                                              ; preds = %bb28
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_18)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_26)
  store ptr %_38, ptr %_26, align 8
  store ptr %_45, ptr %4, align 8
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_95 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_26, i64 noundef %iter.sroa.0.0129)
  %.not15 = icmp eq i64 %_95, 0
  br i1 %.not15, label %bb40, label %bb45.invoke

bb5:                                              ; preds = %bb28
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_18)
  %_21 = shl i32 %b_count.sroa.0.0130, 1
  %15 = add i32 %a_count.sroa.0.0131, %_21
  br label %bb11

bb40:                                             ; preds = %bb6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1096)
  %ptr.i.i66 = load ptr, ptr %_26, align 8, !alias.scope !1099, !nonnull !23, !noundef !23
  %end_or_len.i.i67 = load ptr, ptr %4, align 8, !alias.scope !1099, !nonnull !23, !noundef !23
  %_7.i.i68 = icmp eq ptr %ptr.i.i66, %end_or_len.i.i67
  br i1 %_7.i.i68, label %bb45.invoke, label %bb14.i69

bb14.i69:                                         ; preds = %bb40
  %x.i71 = load i8, ptr %ptr.i.i66, align 1, !noalias !1096, !noundef !23
  %_6.i72 = icmp sgt i8 %x.i71, -1
  br i1 %_6.i72, label %bb3.i105, label %bb4.i73

bb4.i73:                                          ; preds = %bb14.i69
  %_18.i.i70 = getelementptr inbounds nuw i8, ptr %ptr.i.i66, i64 1
  %_30.i74 = and i8 %x.i71, 31
  %init.i75 = zext nneg i8 %_30.i74 to i32
  %_7.i10.i76 = icmp ne ptr %_18.i.i70, %end_or_len.i.i67
  tail call void @llvm.assume(i1 %_7.i10.i76)
  %y.i78 = load i8, ptr %_18.i.i70, align 1, !noalias !1096, !noundef !23
  %_34.i79 = shl nuw nsw i32 %init.i75, 6
  %_36.i80 = and i8 %y.i78, 63
  %_35.i81 = zext nneg i8 %_36.i80 to i32
  %16 = or disjoint i32 %_34.i79, %_35.i81
  %_13.i82 = icmp samesign ugt i8 %x.i71, -33
  br i1 %_13.i82, label %bb6.i85, label %bb38

bb3.i105:                                         ; preds = %bb14.i69
  %_7.i106 = zext nneg i8 %x.i71 to i32
  br label %bb38

bb6.i85:                                          ; preds = %bb4.i73
  %_18.i12.i77 = getelementptr inbounds nuw i8, ptr %ptr.i.i66, i64 2
  %_7.i17.i86 = icmp ne ptr %_18.i12.i77, %end_or_len.i.i67
  tail call void @llvm.assume(i1 %_7.i17.i86)
  %z.i88 = load i8, ptr %_18.i12.i77, align 1, !noalias !1096, !noundef !23
  %_40.i89 = shl nuw nsw i32 %_35.i81, 6
  %_42.i90 = and i8 %z.i88, 63
  %_41.i91 = zext nneg i8 %_42.i90 to i32
  %y_z.i92 = or disjoint i32 %_40.i89, %_41.i91
  %_20.i93 = shl nuw nsw i32 %init.i75, 12
  %17 = or disjoint i32 %y_z.i92, %_20.i93
  %_21.i94 = icmp samesign ugt i8 %x.i71, -17
  br i1 %_21.i94, label %bb8.i95, label %bb38

bb8.i95:                                          ; preds = %bb6.i85
  %_18.i19.i87 = getelementptr inbounds nuw i8, ptr %ptr.i.i66, i64 3
  %_7.i24.i96 = icmp ne ptr %_18.i19.i87, %end_or_len.i.i67
  tail call void @llvm.assume(i1 %_7.i24.i96)
  %w.i98 = load i8, ptr %_18.i19.i87, align 1, !noalias !1096, !noundef !23
  %_26.i99 = shl nuw nsw i32 %init.i75, 18
  %_25.i100 = and i32 %_26.i99, 1835008
  %_46.i101 = shl nuw nsw i32 %y_z.i92, 6
  %_48.i102 = and i8 %w.i98, 63
  %_47.i103 = zext nneg i8 %_48.i102 to i32
  %_27.i104 = or disjoint i32 %_46.i101, %_47.i103
  %18 = or disjoint i32 %_27.i104, %_25.i100
  br label %bb38

bb38:                                             ; preds = %bb3.i105, %bb8.i95, %bb6.i85, %bb4.i73
  %_0.sroa.4.0.i83.ph = phi i32 [ %16, %bb4.i73 ], [ %17, %bb6.i85 ], [ %18, %bb8.i95 ], [ %_7.i106, %bb3.i105 ]
  switch i32 %_0.sroa.4.0.i83.ph, label %bb8 [
    i32 1114112, label %bb45.invoke
    i32 99, label %bb7
  ], !prof !1089

bb45.invoke:                                      ; preds = %bb38, %bb6, %bb40, %bb28, %bb4, %bb30, %bb18, %bb15, %bb20
  %19 = phi ptr [ @alloc_8f866e941862a0c3a2ebf49fb6f30524, %bb20 ], [ @alloc_8f866e941862a0c3a2ebf49fb6f30524, %bb15 ], [ @alloc_8f866e941862a0c3a2ebf49fb6f30524, %bb18 ], [ @alloc_667cfcb48a43f6ddee90546590ad557f, %bb30 ], [ @alloc_667cfcb48a43f6ddee90546590ad557f, %bb4 ], [ @alloc_667cfcb48a43f6ddee90546590ad557f, %bb28 ], [ @alloc_63139f9ff2eac1c6b684ed220fa47460, %bb40 ], [ @alloc_63139f9ff2eac1c6b684ed220fa47460, %bb6 ], [ @alloc_63139f9ff2eac1c6b684ed220fa47460, %bb38 ]
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %19) #20
          to label %bb45.cont unwind label %cleanup

bb45.cont:                                        ; preds = %bb45.invoke
  unreachable

bb8:                                              ; preds = %bb38
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_26)
  br label %bb11

bb7:                                              ; preds = %bb38
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_26)
  %_29 = shl i32 %c_count.sroa.0.0132, 1
  %20 = add i32 %_29, %b_count.sroa.0.0130
  br label %bb11

bb11:                                             ; preds = %bb5, %bb7, %bb8, %bb3
  %b_count.sroa.0.1 = phi i32 [ %b_count.sroa.0.0130, %bb3 ], [ %15, %bb5 ], [ %b_count.sroa.0.0130, %bb7 ], [ %b_count.sroa.0.0130, %bb8 ]
  %a_count.sroa.0.1 = phi i32 [ %11, %bb3 ], [ %a_count.sroa.0.0131, %bb5 ], [ %a_count.sroa.0.0131, %bb7 ], [ %a_count.sroa.0.0131, %bb8 ]
  %c_count.sroa.0.1 = phi i32 [ %c_count.sroa.0.0132, %bb3 ], [ %c_count.sroa.0.0132, %bb5 ], [ %20, %bb7 ], [ %c_count.sroa.0.0132, %bb8 ]
  %exitcond.not = icmp eq i64 %6, %iter1
  br i1 %exitcond.not, label %bb16, label %bb15

bb14:                                             ; preds = %bb2.i.i.i3.i.i21, %cleanup
  resume { ptr, i32 } %7
}
