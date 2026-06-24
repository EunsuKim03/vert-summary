define noundef i32 @f_gold(ptr dead_on_return noalias noundef readonly align 8 captures(none) dereferenceable(24) %str) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_34 = alloca [16 x i8], align 8
  %_28 = alloca [16 x i8], align 8
  %_21 = alloca [16 x i8], align 8
  %_13 = alloca [16 x i8], align 8
  %0 = getelementptr inbounds nuw i8, ptr %str, i64 8
  %_40 = load ptr, ptr %0, align 8, !nonnull !23, !noundef !23
  %1 = getelementptr inbounds nuw i8, ptr %str, i64 16
  %_39 = load i64, ptr %1, align 8, !noundef !23
  %_47 = getelementptr inbounds nuw i8, ptr %_40, i64 %_39
  %_7.i.i = icmp samesign eq i64 %_39, 0
  br i1 %_7.i.i, label %bb63.invoke, label %bb14.i

bb14.i:                                           ; preds = %start
  %x.i = load i8, ptr %_40, align 1, !noalias !1040, !noundef !23
  %_6.i = icmp sgt i8 %x.i, -1
  br i1 %_6.i, label %bb1.preheader, label %bb4.i

bb4.i:                                            ; preds = %bb14.i
  %_18.i.i = getelementptr inbounds nuw i8, ptr %_40, i64 1
  %_30.i = and i8 %x.i, 31
  %init.i = zext nneg i8 %_30.i to i32
  %_7.i10.i = icmp samesign ne i64 %_39, 1
  tail call void @llvm.assume(i1 %_7.i10.i)
  %y.i = load i8, ptr %_18.i.i, align 1, !noalias !1040, !noundef !23
  %_34.i = shl nuw nsw i32 %init.i, 6
  %_36.i = and i8 %y.i, 63
  %_35.i = zext nneg i8 %_36.i to i32
  %2 = or disjoint i32 %_34.i, %_35.i
  %_13.i = icmp samesign ugt i8 %x.i, -33
  br i1 %_13.i, label %bb6.i, label %bb2.lr.ph.sink.split

bb6.i:                                            ; preds = %bb4.i
  %_18.i12.i = getelementptr inbounds nuw i8, ptr %_40, i64 2
  %_7.i17.i = icmp samesign ne i64 %_39, 2
  tail call void @llvm.assume(i1 %_7.i17.i)
  %z.i = load i8, ptr %_18.i12.i, align 1, !noalias !1040, !noundef !23
  %_40.i = shl nuw nsw i32 %_35.i, 6
  %_42.i = and i8 %z.i, 63
  %_41.i = zext nneg i8 %_42.i to i32
  %y_z.i = or disjoint i32 %_40.i, %_41.i
  %_20.i = shl nuw nsw i32 %init.i, 12
  %3 = or disjoint i32 %y_z.i, %_20.i
  %_21.i = icmp samesign ugt i8 %x.i, -17
  br i1 %_21.i, label %bb18, label %bb2.lr.ph.sink.split

cleanup:                                          ; preds = %bb63.invoke
  %4 = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1043)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1046)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1049)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1052)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1055)
  %self1.i.i.i.i1.i.i = load i64, ptr %str, align 8, !range !1058, !alias.scope !1059, !noalias !1062, !noundef !23
  %_6.i.i.i.i2.i.i = icmp eq i64 %self1.i.i.i.i1.i.i, 0
  br i1 %_6.i.i.i.i2.i.i, label %bb17, label %bb2.i.i.i3.i.i

bb2.i.i.i3.i.i:                                   ; preds = %cleanup
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_40, i64 noundef %self1.i.i.i.i1.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !1064
  br label %bb17

bb18:                                             ; preds = %bb6.i
  %_18.i19.i = getelementptr inbounds nuw i8, ptr %_40, i64 3
  %_7.i24.i = icmp samesign ne i64 %_39, 3
  tail call void @llvm.assume(i1 %_7.i24.i)
  %w.i = load i8, ptr %_18.i19.i, align 1, !noalias !1040, !noundef !23
  %_26.i = shl nuw nsw i32 %init.i, 18
  %_25.i = and i32 %_26.i, 1835008
  %_46.i = shl nuw nsw i32 %y_z.i, 6
  %_48.i = and i8 %w.i, 63
  %_47.i = zext nneg i8 %_48.i to i32
  %_27.i = or disjoint i32 %_46.i, %_47.i
  %5 = or disjoint i32 %_27.i, %_25.i
  %.not = icmp eq i32 %5, 1114112
  br i1 %.not, label %bb63.invoke, label %bb2.lr.ph.sink.split, !prof !1065

bb1.preheader:                                    ; preds = %bb14.i
  %_7.i = zext nneg i8 %x.i to i32
  %_58 = icmp sgt i64 %_39, -1
  tail call void @llvm.assume(i1 %_58)
  %_6240.not = icmp eq i64 %_39, 1
  br i1 %_6240.not, label %bb14, label %bb2.lr.ph

bb2.lr.ph.sink.split:                             ; preds = %bb4.i, %bb6.i, %bb18
  %_0.sroa.4.0.i249253.ph = phi i32 [ %5, %bb18 ], [ %3, %bb6.i ], [ %2, %bb4.i ]
  %_58256 = icmp sgt i64 %_39, -1
  tail call void @llvm.assume(i1 %_58256)
  br label %bb2.lr.ph

bb2.lr.ph:                                        ; preds = %bb2.lr.ph.sink.split, %bb1.preheader
  %_0.sroa.4.0.i249253 = phi i32 [ %_7.i, %bb1.preheader ], [ %_0.sroa.4.0.i249253.ph, %bb2.lr.ph.sink.split ]
  %6 = getelementptr inbounds nuw i8, ptr %_13, i64 8
  %7 = getelementptr inbounds nuw i8, ptr %_21, i64 8
  %8 = getelementptr inbounds nuw i8, ptr %_28, i64 8
  %9 = getelementptr inbounds nuw i8, ptr %_34, i64 8
  br label %bb2

bb14:                                             ; preds = %bb64, %bb1.preheader
  %counter.sroa.0.0.lcssa = phi i32 [ 0, %bb1.preheader ], [ %counter.sroa.0.1, %bb64 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1066)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1069)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1072)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1075)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1078)
  %self1.i.i.i.i1.i.i30 = load i64, ptr %str, align 8, !range !1058, !alias.scope !1081, !noalias !1084, !noundef !23
  %_6.i.i.i.i2.i.i31 = icmp eq i64 %self1.i.i.i.i1.i.i30, 0
  br i1 %_6.i.i.i.i2.i.i31, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd646daa662d33de7E.exit34", label %bb2.i.i.i3.i.i32

bb2.i.i.i3.i.i32:                                 ; preds = %bb14
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_40, i64 noundef %self1.i.i.i.i1.i.i30, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !1086
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd646daa662d33de7E.exit34"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd646daa662d33de7E.exit34": ; preds = %bb14, %bb2.i.i.i3.i.i32
  ret i32 %counter.sroa.0.0.lcssa

bb2:                                              ; preds = %bb2.lr.ph, %bb64
  %counter.sroa.0.0243 = phi i32 [ 0, %bb2.lr.ph ], [ %counter.sroa.0.1, %bb64 ]
  %i.sroa.0.0242 = phi i64 [ 1, %bb2.lr.ph ], [ %24, %bb64 ]
  %last.sroa.0.0241 = phi i32 [ %_0.sroa.4.0.i249253, %bb2.lr.ph ], [ %_0.sroa.4.0.i178.ph231, %bb64 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_13)
  store ptr %_40, ptr %_13, align 8
  store ptr %_47, ptr %6, align 8
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_73 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_13, i64 noundef %i.sroa.0.0242)
  %.not18 = icmp eq i64 %_73, 0
  br i1 %.not18, label %bb28, label %bb63.invoke

bb28:                                             ; preds = %bb2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1087)
  %ptr.i.i35 = load ptr, ptr %_13, align 8, !alias.scope !1090, !nonnull !23, !noundef !23
  %end_or_len.i.i36 = load ptr, ptr %6, align 8, !alias.scope !1090, !nonnull !23, !noundef !23
  %_7.i.i37 = icmp eq ptr %ptr.i.i35, %end_or_len.i.i36
  br i1 %_7.i.i37, label %bb63.invoke, label %bb14.i38

bb14.i38:                                         ; preds = %bb28
  %x.i40 = load i8, ptr %ptr.i.i35, align 1, !noalias !1087, !noundef !23
  %_6.i41 = icmp sgt i8 %x.i40, -1
  br i1 %_6.i41, label %bb3.i74, label %bb4.i42

bb4.i42:                                          ; preds = %bb14.i38
  %_18.i.i39 = getelementptr inbounds nuw i8, ptr %ptr.i.i35, i64 1
  %_30.i43 = and i8 %x.i40, 31
  %init.i44 = zext nneg i8 %_30.i43 to i32
  %_7.i10.i45 = icmp ne ptr %_18.i.i39, %end_or_len.i.i36
  tail call void @llvm.assume(i1 %_7.i10.i45)
  %y.i47 = load i8, ptr %_18.i.i39, align 1, !noalias !1087, !noundef !23
  %_34.i48 = shl nuw nsw i32 %init.i44, 6
  %_36.i49 = and i8 %y.i47, 63
  %_35.i50 = zext nneg i8 %_36.i49 to i32
  %10 = or disjoint i32 %_34.i48, %_35.i50
  %_13.i51 = icmp samesign ugt i8 %x.i40, -33
  br i1 %_13.i51, label %bb6.i54, label %bb26

bb3.i74:                                          ; preds = %bb14.i38
  %_7.i75 = zext nneg i8 %x.i40 to i32
  br label %bb26

bb6.i54:                                          ; preds = %bb4.i42
  %_18.i12.i46 = getelementptr inbounds nuw i8, ptr %ptr.i.i35, i64 2
  %_7.i17.i55 = icmp ne ptr %_18.i12.i46, %end_or_len.i.i36
  tail call void @llvm.assume(i1 %_7.i17.i55)
  %z.i57 = load i8, ptr %_18.i12.i46, align 1, !noalias !1087, !noundef !23
  %_40.i58 = shl nuw nsw i32 %_35.i50, 6
  %_42.i59 = and i8 %z.i57, 63
  %_41.i60 = zext nneg i8 %_42.i59 to i32
  %y_z.i61 = or disjoint i32 %_40.i58, %_41.i60
  %_20.i62 = shl nuw nsw i32 %init.i44, 12
  %11 = or disjoint i32 %y_z.i61, %_20.i62
  %_21.i63 = icmp samesign ugt i8 %x.i40, -17
  br i1 %_21.i63, label %bb8.i64, label %bb26

bb8.i64:                                          ; preds = %bb6.i54
  %_18.i19.i56 = getelementptr inbounds nuw i8, ptr %ptr.i.i35, i64 3
  %_7.i24.i65 = icmp ne ptr %_18.i19.i56, %end_or_len.i.i36
  tail call void @llvm.assume(i1 %_7.i24.i65)
  %w.i67 = load i8, ptr %_18.i19.i56, align 1, !noalias !1087, !noundef !23
  %_26.i68 = shl nuw nsw i32 %init.i44, 18
  %_25.i69 = and i32 %_26.i68, 1835008
  %_46.i70 = shl nuw nsw i32 %y_z.i61, 6
  %_48.i71 = and i8 %w.i67, 63
  %_47.i72 = zext nneg i8 %_48.i71 to i32
  %_27.i73 = or disjoint i32 %_46.i70, %_47.i72
  %12 = or disjoint i32 %_27.i73, %_25.i69
  br label %bb26

bb26:                                             ; preds = %bb3.i74, %bb8.i64, %bb6.i54, %bb4.i42
  %_0.sroa.4.0.i52.ph = phi i32 [ %10, %bb4.i42 ], [ %11, %bb6.i54 ], [ %12, %bb8.i64 ], [ %_7.i75, %bb3.i74 ]
  switch i32 %_0.sroa.4.0.i52.ph, label %bb12 [
    i32 1114112, label %bb63.invoke
    i32 48, label %bb3
  ], !prof !1093

bb12:                                             ; preds = %bb26
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_13)
  br label %bb13

bb3:                                              ; preds = %bb26
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_13)
  %_16 = icmp eq i32 %last.sroa.0.0241, 49
  br i1 %_16, label %bb5.preheader, label %bb13

bb5.preheader:                                    ; preds = %bb3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_21)
  store ptr %_40, ptr %_21, align 8
  store ptr %_47, ptr %7, align 8
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_96237 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_21, i64 noundef %i.sroa.0.0242)
  %.not20238 = icmp eq i64 %_96237, 0
  br i1 %.not20238, label %bb38, label %bb63.invoke

bb13:                                             ; preds = %bb9, %bb8, %bb3, %bb12
  %i.sroa.0.1 = phi i64 [ %i.sroa.0.2239, %bb8 ], [ %i.sroa.0.2239, %bb9 ], [ %i.sroa.0.0242, %bb3 ], [ %i.sroa.0.0242, %bb12 ]
  %counter.sroa.0.1 = phi i32 [ %20, %bb8 ], [ %counter.sroa.0.0243, %bb9 ], [ %counter.sroa.0.0243, %bb3 ], [ %counter.sroa.0.0243, %bb12 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_34)
  store ptr %_40, ptr %_34, align 8
  store ptr %_47, ptr %9, align 8
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_142 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_34, i64 noundef %i.sroa.0.1)
  %.not24 = icmp eq i64 %_142, 0
  br i1 %.not24, label %bb58, label %bb63.invoke

bb38:                                             ; preds = %bb5.preheader, %bb6
  %i.sroa.0.2239 = phi i64 [ %16, %bb6 ], [ %i.sroa.0.0242, %bb5.preheader ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1094)
  %ptr.i.i77 = load ptr, ptr %_21, align 8, !alias.scope !1097, !nonnull !23, !noundef !23
  %end_or_len.i.i78 = load ptr, ptr %7, align 8, !alias.scope !1097, !nonnull !23, !noundef !23
  %_7.i.i79 = icmp eq ptr %ptr.i.i77, %end_or_len.i.i78
  br i1 %_7.i.i79, label %bb63.invoke, label %bb14.i80

bb14.i80:                                         ; preds = %bb38
  %x.i82 = load i8, ptr %ptr.i.i77, align 1, !noalias !1094, !noundef !23
  %_6.i83 = icmp sgt i8 %x.i82, -1
  br i1 %_6.i83, label %bb3.i116, label %bb4.i84

bb4.i84:                                          ; preds = %bb14.i80
  %_18.i.i81 = getelementptr inbounds nuw i8, ptr %ptr.i.i77, i64 1
  %_30.i85 = and i8 %x.i82, 31
  %init.i86 = zext nneg i8 %_30.i85 to i32
  %_7.i10.i87 = icmp ne ptr %_18.i.i81, %end_or_len.i.i78
  tail call void @llvm.assume(i1 %_7.i10.i87)
  %y.i89 = load i8, ptr %_18.i.i81, align 1, !noalias !1094, !noundef !23
  %_34.i90 = shl nuw nsw i32 %init.i86, 6
  %_36.i91 = and i8 %y.i89, 63
  %_35.i92 = zext nneg i8 %_36.i91 to i32
  %13 = or disjoint i32 %_34.i90, %_35.i92
  %_13.i93 = icmp samesign ugt i8 %x.i82, -33
  br i1 %_13.i93, label %bb6.i96, label %bb36

bb3.i116:                                         ; preds = %bb14.i80
  %_7.i117 = zext nneg i8 %x.i82 to i32
  br label %bb36

bb6.i96:                                          ; preds = %bb4.i84
  %_18.i12.i88 = getelementptr inbounds nuw i8, ptr %ptr.i.i77, i64 2
  %_7.i17.i97 = icmp ne ptr %_18.i12.i88, %end_or_len.i.i78
  tail call void @llvm.assume(i1 %_7.i17.i97)
  %z.i99 = load i8, ptr %_18.i12.i88, align 1, !noalias !1094, !noundef !23
  %_40.i100 = shl nuw nsw i32 %_35.i92, 6
  %_42.i101 = and i8 %z.i99, 63
  %_41.i102 = zext nneg i8 %_42.i101 to i32
  %y_z.i103 = or disjoint i32 %_40.i100, %_41.i102
  %_20.i104 = shl nuw nsw i32 %init.i86, 12
  %14 = or disjoint i32 %y_z.i103, %_20.i104
  %_21.i105 = icmp samesign ugt i8 %x.i82, -17
  br i1 %_21.i105, label %bb8.i106, label %bb36

bb8.i106:                                         ; preds = %bb6.i96
  %_18.i19.i98 = getelementptr inbounds nuw i8, ptr %ptr.i.i77, i64 3
  %_7.i24.i107 = icmp ne ptr %_18.i19.i98, %end_or_len.i.i78
  tail call void @llvm.assume(i1 %_7.i24.i107)
  %w.i109 = load i8, ptr %_18.i19.i98, align 1, !noalias !1094, !noundef !23
  %_26.i110 = shl nuw nsw i32 %init.i86, 18
  %_25.i111 = and i32 %_26.i110, 1835008
  %_46.i112 = shl nuw nsw i32 %y_z.i103, 6
  %_48.i113 = and i8 %w.i109, 63
  %_47.i114 = zext nneg i8 %_48.i113 to i32
  %_27.i115 = or disjoint i32 %_46.i112, %_47.i114
  %15 = or disjoint i32 %_27.i115, %_25.i111
  br label %bb36

bb36:                                             ; preds = %bb3.i116, %bb8.i106, %bb6.i96, %bb4.i84
  %_0.sroa.4.0.i94.ph = phi i32 [ %13, %bb4.i84 ], [ %14, %bb6.i96 ], [ %15, %bb8.i106 ], [ %_7.i117, %bb3.i116 ]
  switch i32 %_0.sroa.4.0.i94.ph, label %bb7 [
    i32 1114112, label %bb63.invoke
    i32 48, label %bb6
  ], !prof !1093

bb7:                                              ; preds = %bb36
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_21)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_28)
  store ptr %_40, ptr %_28, align 8
  store ptr %_47, ptr %8, align 8
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_119 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_28, i64 noundef %i.sroa.0.2239)
  %.not22 = icmp eq i64 %_119, 0
  br i1 %.not22, label %bb48, label %bb63.invoke

bb6:                                              ; preds = %bb36
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_21)
  %16 = add i64 %i.sroa.0.2239, 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_21)
  store ptr %_40, ptr %_21, align 8
  store ptr %_47, ptr %7, align 8
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_96 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_21, i64 noundef %16)
  %.not20 = icmp eq i64 %_96, 0
  br i1 %.not20, label %bb38, label %bb63.invoke

bb48:                                             ; preds = %bb7
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1100)
  %ptr.i.i119 = load ptr, ptr %_28, align 8, !alias.scope !1103, !nonnull !23, !noundef !23
  %end_or_len.i.i120 = load ptr, ptr %8, align 8, !alias.scope !1103, !nonnull !23, !noundef !23
  %_7.i.i121 = icmp eq ptr %ptr.i.i119, %end_or_len.i.i120
  br i1 %_7.i.i121, label %bb63.invoke, label %bb14.i122

bb14.i122:                                        ; preds = %bb48
  %x.i124 = load i8, ptr %ptr.i.i119, align 1, !noalias !1100, !noundef !23
  %_6.i125 = icmp sgt i8 %x.i124, -1
  br i1 %_6.i125, label %bb3.i158, label %bb4.i126

bb4.i126:                                         ; preds = %bb14.i122
  %_18.i.i123 = getelementptr inbounds nuw i8, ptr %ptr.i.i119, i64 1
  %_30.i127 = and i8 %x.i124, 31
  %init.i128 = zext nneg i8 %_30.i127 to i32
  %_7.i10.i129 = icmp ne ptr %_18.i.i123, %end_or_len.i.i120
  tail call void @llvm.assume(i1 %_7.i10.i129)
  %y.i131 = load i8, ptr %_18.i.i123, align 1, !noalias !1100, !noundef !23
  %_34.i132 = shl nuw nsw i32 %init.i128, 6
  %_36.i133 = and i8 %y.i131, 63
  %_35.i134 = zext nneg i8 %_36.i133 to i32
  %17 = or disjoint i32 %_34.i132, %_35.i134
  %_13.i135 = icmp samesign ugt i8 %x.i124, -33
  br i1 %_13.i135, label %bb6.i138, label %bb46

bb3.i158:                                         ; preds = %bb14.i122
  %_7.i159 = zext nneg i8 %x.i124 to i32
  br label %bb46

bb6.i138:                                         ; preds = %bb4.i126
  %_18.i12.i130 = getelementptr inbounds nuw i8, ptr %ptr.i.i119, i64 2
  %_7.i17.i139 = icmp ne ptr %_18.i12.i130, %end_or_len.i.i120
  tail call void @llvm.assume(i1 %_7.i17.i139)
  %z.i141 = load i8, ptr %_18.i12.i130, align 1, !noalias !1100, !noundef !23
  %_40.i142 = shl nuw nsw i32 %_35.i134, 6
  %_42.i143 = and i8 %z.i141, 63
  %_41.i144 = zext nneg i8 %_42.i143 to i32
  %y_z.i145 = or disjoint i32 %_40.i142, %_41.i144
  %_20.i146 = shl nuw nsw i32 %init.i128, 12
  %18 = or disjoint i32 %y_z.i145, %_20.i146
  %_21.i147 = icmp samesign ugt i8 %x.i124, -17
  br i1 %_21.i147, label %bb8.i148, label %bb46

bb8.i148:                                         ; preds = %bb6.i138
  %_18.i19.i140 = getelementptr inbounds nuw i8, ptr %ptr.i.i119, i64 3
  %_7.i24.i149 = icmp ne ptr %_18.i19.i140, %end_or_len.i.i120
  tail call void @llvm.assume(i1 %_7.i24.i149)
  %w.i151 = load i8, ptr %_18.i19.i140, align 1, !noalias !1100, !noundef !23
  %_26.i152 = shl nuw nsw i32 %init.i128, 18
  %_25.i153 = and i32 %_26.i152, 1835008
  %_46.i154 = shl nuw nsw i32 %y_z.i145, 6
  %_48.i155 = and i8 %w.i151, 63
  %_47.i156 = zext nneg i8 %_48.i155 to i32
  %_27.i157 = or disjoint i32 %_46.i154, %_47.i156
  %19 = or disjoint i32 %_27.i157, %_25.i153
  br label %bb46

bb46:                                             ; preds = %bb3.i158, %bb8.i148, %bb6.i138, %bb4.i126
  %_0.sroa.4.0.i136.ph = phi i32 [ %17, %bb4.i126 ], [ %18, %bb6.i138 ], [ %19, %bb8.i148 ], [ %_7.i159, %bb3.i158 ]
  switch i32 %_0.sroa.4.0.i136.ph, label %bb9 [
    i32 1114112, label %bb63.invoke
    i32 49, label %bb8
  ], !prof !1093

bb9:                                              ; preds = %bb46
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_28)
  br label %bb13

bb8:                                              ; preds = %bb46
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_28)
  %20 = add i32 %counter.sroa.0.0243, 1
  br label %bb13

bb58:                                             ; preds = %bb13
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1106)
  %ptr.i.i161 = load ptr, ptr %_34, align 8, !alias.scope !1109, !nonnull !23, !noundef !23
  %end_or_len.i.i162 = load ptr, ptr %9, align 8, !alias.scope !1109, !nonnull !23, !noundef !23
  %_7.i.i163 = icmp eq ptr %ptr.i.i161, %end_or_len.i.i162
  br i1 %_7.i.i163, label %bb63.invoke, label %bb14.i164

bb14.i164:                                        ; preds = %bb58
  %x.i166 = load i8, ptr %ptr.i.i161, align 1, !noalias !1106, !noundef !23
  %_6.i167 = icmp sgt i8 %x.i166, -1
  br i1 %_6.i167, label %bb3.i200, label %bb4.i168

bb4.i168:                                         ; preds = %bb14.i164
  %_18.i.i165 = getelementptr inbounds nuw i8, ptr %ptr.i.i161, i64 1
  %_30.i169 = and i8 %x.i166, 31
  %init.i170 = zext nneg i8 %_30.i169 to i32
  %_7.i10.i171 = icmp ne ptr %_18.i.i165, %end_or_len.i.i162
  tail call void @llvm.assume(i1 %_7.i10.i171)
  %y.i173 = load i8, ptr %_18.i.i165, align 1, !noalias !1106, !noundef !23
  %_34.i174 = shl nuw nsw i32 %init.i170, 6
  %_36.i175 = and i8 %y.i173, 63
  %_35.i176 = zext nneg i8 %_36.i175 to i32
  %21 = or disjoint i32 %_34.i174, %_35.i176
  %_13.i177 = icmp samesign ugt i8 %x.i166, -33
  br i1 %_13.i177, label %bb6.i180, label %bb64

bb3.i200:                                         ; preds = %bb14.i164
  %_7.i201 = zext nneg i8 %x.i166 to i32
  br label %bb64

bb6.i180:                                         ; preds = %bb4.i168
  %_18.i12.i172 = getelementptr inbounds nuw i8, ptr %ptr.i.i161, i64 2
  %_7.i17.i181 = icmp ne ptr %_18.i12.i172, %end_or_len.i.i162
  tail call void @llvm.assume(i1 %_7.i17.i181)
  %z.i183 = load i8, ptr %_18.i12.i172, align 1, !noalias !1106, !noundef !23
  %_40.i184 = shl nuw nsw i32 %_35.i176, 6
  %_42.i185 = and i8 %z.i183, 63
  %_41.i186 = zext nneg i8 %_42.i185 to i32
  %y_z.i187 = or disjoint i32 %_40.i184, %_41.i186
  %_20.i188 = shl nuw nsw i32 %init.i170, 12
  %22 = or disjoint i32 %y_z.i187, %_20.i188
  %_21.i189 = icmp samesign ugt i8 %x.i166, -17
  br i1 %_21.i189, label %bb56, label %bb64

bb56:                                             ; preds = %bb6.i180
  %_18.i19.i182 = getelementptr inbounds nuw i8, ptr %ptr.i.i161, i64 3
  %_7.i24.i191 = icmp ne ptr %_18.i19.i182, %end_or_len.i.i162
  tail call void @llvm.assume(i1 %_7.i24.i191)
  %w.i193 = load i8, ptr %_18.i19.i182, align 1, !noalias !1106, !noundef !23
  %_26.i194 = shl nuw nsw i32 %init.i170, 18
  %_25.i195 = and i32 %_26.i194, 1835008
  %_46.i196 = shl nuw nsw i32 %y_z.i187, 6
  %_48.i197 = and i8 %w.i193, 63
  %_47.i198 = zext nneg i8 %_48.i197 to i32
  %_27.i199 = or disjoint i32 %_46.i196, %_47.i198
  %23 = or disjoint i32 %_27.i199, %_25.i195
  %.not25 = icmp eq i32 %23, 1114112
  br i1 %.not25, label %bb63.invoke, label %bb64, !prof !1112

bb64:                                             ; preds = %bb3.i200, %bb6.i180, %bb4.i168, %bb56
  %_0.sroa.4.0.i178.ph231 = phi i32 [ %23, %bb56 ], [ %_7.i201, %bb3.i200 ], [ %22, %bb6.i180 ], [ %21, %bb4.i168 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_34)
  %24 = add i64 %i.sroa.0.1, 1
  %_6 = icmp ult i64 %24, %_39
  br i1 %_6, label %bb2, label %bb14

bb63.invoke:                                      ; preds = %bb56, %bb13, %bb58, %bb46, %bb7, %bb48, %bb5.preheader, %bb26, %bb2, %bb28, %bb38, %bb6, %bb36, %bb18, %start
  %25 = phi ptr [ @alloc_96e6c3be7c4b30cbcf9d45c76c90bfd0, %start ], [ @alloc_96e6c3be7c4b30cbcf9d45c76c90bfd0, %bb18 ], [ @alloc_ac82f80029bf27fc51f4237a15f69319, %bb36 ], [ @alloc_ac82f80029bf27fc51f4237a15f69319, %bb6 ], [ @alloc_ac82f80029bf27fc51f4237a15f69319, %bb38 ], [ @alloc_5d3d217d934ec1ed56891210cf4853c9, %bb28 ], [ @alloc_5d3d217d934ec1ed56891210cf4853c9, %bb2 ], [ @alloc_5d3d217d934ec1ed56891210cf4853c9, %bb26 ], [ @alloc_ac82f80029bf27fc51f4237a15f69319, %bb5.preheader ], [ @alloc_05b852704473c7b06816922e1f39e8c4, %bb48 ], [ @alloc_05b852704473c7b06816922e1f39e8c4, %bb7 ], [ @alloc_05b852704473c7b06816922e1f39e8c4, %bb46 ], [ @alloc_7d3da418ee1397a0f65b17bb5bc78aaf, %bb58 ], [ @alloc_7d3da418ee1397a0f65b17bb5bc78aaf, %bb13 ], [ @alloc_7d3da418ee1397a0f65b17bb5bc78aaf, %bb56 ]
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %25) #20
          to label %bb63.cont unwind label %cleanup

bb63.cont:                                        ; preds = %bb63.invoke
  unreachable

bb17:                                             ; preds = %bb2.i.i.i3.i.i, %cleanup
  resume { ptr, i32 } %4
}
