define noundef i32 @f_gold(ptr dead_on_return noalias noundef readonly align 8 captures(none) dereferenceable(24) %str) unnamed_addr #1 personality ptr @rust_eh_personality {
bb19:
  %_38 = alloca [16 x i8], align 8
  %_31 = alloca [16 x i8], align 8
  %_22 = alloca [16 x i8], align 8
  %_16 = alloca [16 x i8], align 8
  %0 = getelementptr inbounds nuw i8, ptr %str, i64 8
  %_43 = load ptr, ptr %0, align 8, !nonnull !23, !noundef !23
  %1 = getelementptr inbounds nuw i8, ptr %str, i64 16
  %_42 = load i64, ptr %1, align 8, !noundef !23
  %_50 = getelementptr inbounds nuw i8, ptr %_43, i64 %_42
  %_7.i.i = icmp samesign eq i64 %_42, 0
  br i1 %_7.i.i, label %bb57.invoke, label %bb14.i

cleanup:                                          ; preds = %bb57.invoke
  %2 = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1040)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1043)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1046)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1049)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1052)
  %self1.i.i.i.i1.i.i = load i64, ptr %str, align 8, !range !1055, !alias.scope !1056, !noalias !1059, !noundef !23
  %_6.i.i.i.i2.i.i = icmp eq i64 %self1.i.i.i.i1.i.i, 0
  br i1 %_6.i.i.i.i2.i.i, label %bb15, label %bb2.i.i.i3.i.i

bb2.i.i.i3.i.i:                                   ; preds = %cleanup
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_43, i64 noundef %self1.i.i.i.i1.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !1061
  br label %bb15

bb14.i:                                           ; preds = %bb19
  %x.i = load i8, ptr %_43, align 1, !noalias !1062, !noundef !23
  %_6.i = icmp sgt i8 %x.i, -1
  br i1 %_6.i, label %bb25, label %bb4.i

bb4.i:                                            ; preds = %bb14.i
  %_18.i.i = getelementptr inbounds nuw i8, ptr %_43, i64 1
  %_30.i = and i8 %x.i, 31
  %init.i = zext nneg i8 %_30.i to i32
  %_7.i10.i = icmp samesign ne i64 %_42, 1
  tail call void @llvm.assume(i1 %_7.i10.i)
  %y.i = load i8, ptr %_18.i.i, align 1, !noalias !1062, !noundef !23
  %_34.i = shl nuw nsw i32 %init.i, 6
  %_36.i = and i8 %y.i, 63
  %_35.i = zext nneg i8 %_36.i to i32
  %3 = or disjoint i32 %_34.i, %_35.i
  %_13.i = icmp samesign ugt i8 %x.i, -33
  br i1 %_13.i, label %bb6.i, label %bb3.lr.ph.sink.split

bb6.i:                                            ; preds = %bb4.i
  %_18.i12.i = getelementptr inbounds nuw i8, ptr %_43, i64 2
  %_7.i17.i = icmp samesign ne i64 %_42, 2
  tail call void @llvm.assume(i1 %_7.i17.i)
  %z.i = load i8, ptr %_18.i12.i, align 1, !noalias !1062, !noundef !23
  %_40.i = shl nuw nsw i32 %_35.i, 6
  %_42.i = and i8 %z.i, 63
  %_41.i = zext nneg i8 %_42.i to i32
  %y_z.i = or disjoint i32 %_40.i, %_41.i
  %_20.i = shl nuw nsw i32 %init.i, 12
  %4 = or disjoint i32 %y_z.i, %_20.i
  %_21.i = icmp samesign ugt i8 %x.i, -17
  br i1 %_21.i, label %bb17, label %bb3.lr.ph.sink.split

bb17:                                             ; preds = %bb6.i
  %_18.i19.i = getelementptr inbounds nuw i8, ptr %_43, i64 3
  %_7.i24.i = icmp samesign ne i64 %_42, 3
  tail call void @llvm.assume(i1 %_7.i24.i)
  %w.i = load i8, ptr %_18.i19.i, align 1, !noalias !1062, !noundef !23
  %_26.i = shl nuw nsw i32 %init.i, 18
  %_25.i = and i32 %_26.i, 1835008
  %_46.i = shl nuw nsw i32 %y_z.i, 6
  %_48.i = and i8 %w.i, 63
  %_47.i = zext nneg i8 %_48.i to i32
  %_27.i = or disjoint i32 %_46.i, %_47.i
  %5 = or disjoint i32 %_27.i, %_25.i
  %.not17 = icmp eq i32 %5, 1114112
  br i1 %.not17, label %bb57.invoke, label %bb25.thread, !prof !1065

bb25.thread:                                      ; preds = %bb17
  %6 = icmp samesign ult i32 %5, 1114112
  br label %bb3.lr.ph.sink.split

bb25:                                             ; preds = %bb14.i
  %_7.i = zext nneg i8 %x.i to i32
  %7 = add nsw i32 %_7.i, -48
  %_63 = icmp sgt i64 %_42, -1
  tail call void @llvm.assume(i1 %_63)
  %_64242.not = icmp eq i64 %_42, 1
  br i1 %_64242.not, label %bb4, label %bb3.lr.ph

bb3.lr.ph.sink.split:                             ; preds = %bb4.i, %bb6.i, %bb25.thread
  %.sink = phi i1 [ %6, %bb25.thread ], [ true, %bb6.i ], [ true, %bb4.i ]
  %_0.sroa.4.0.i.ph.ph.sink = phi i32 [ %5, %bb25.thread ], [ %4, %bb6.i ], [ %3, %bb4.i ]
  tail call void @llvm.assume(i1 %.sink)
  %8 = add nsw i32 %_0.sroa.4.0.i.ph.ph.sink, -48
  %_63253 = icmp sgt i64 %_42, -1
  tail call void @llvm.assume(i1 %_63253)
  br label %bb3.lr.ph

bb3.lr.ph:                                        ; preds = %bb3.lr.ph.sink.split, %bb25
  %9 = phi i32 [ %7, %bb25 ], [ %8, %bb3.lr.ph.sink.split ]
  %10 = getelementptr inbounds nuw i8, ptr %_16, i64 8
  %11 = getelementptr inbounds nuw i8, ptr %_22, i64 8
  %12 = getelementptr inbounds nuw i8, ptr %_38, i64 8
  %13 = getelementptr inbounds nuw i8, ptr %_31, i64 8
  br label %bb3

bb3:                                              ; preds = %bb3.lr.ph, %bb12
  %14 = phi i64 [ 2, %bb3.lr.ph ], [ %26, %bb12 ]
  %res.sroa.0.0244 = phi i32 [ %9, %bb3.lr.ph ], [ %res.sroa.0.1, %bb12 ]
  %iter.sroa.0.0243 = phi i64 [ 1, %bb3.lr.ph ], [ %14, %bb12 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_16)
  store ptr %_43, ptr %_16, align 8
  store ptr %_50, ptr %10, align 8
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_82 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_16, i64 noundef %iter.sroa.0.0243)
  %.not18 = icmp eq i64 %_82, 0
  br i1 %.not18, label %bb32, label %bb57.invoke

bb4:                                              ; preds = %bb12, %bb25
  %res.sroa.0.0.lcssa = phi i32 [ %7, %bb25 ], [ %res.sroa.0.1, %bb12 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1066)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1069)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1072)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1075)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1078)
  %self1.i.i.i.i1.i.i30 = load i64, ptr %str, align 8, !range !1055, !alias.scope !1081, !noalias !1084, !noundef !23
  %_6.i.i.i.i2.i.i31 = icmp eq i64 %self1.i.i.i.i1.i.i30, 0
  br i1 %_6.i.i.i.i2.i.i31, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h091d5e48454b3247E.exit34", label %bb2.i.i.i3.i.i32

bb2.i.i.i3.i.i32:                                 ; preds = %bb4
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_43, i64 noundef %self1.i.i.i.i1.i.i30, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !1086
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h091d5e48454b3247E.exit34"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h091d5e48454b3247E.exit34": ; preds = %bb4, %bb2.i.i.i3.i.i32
  ret i32 %res.sroa.0.0.lcssa

bb32:                                             ; preds = %bb3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1087)
  %ptr.i.i35 = load ptr, ptr %_16, align 8, !alias.scope !1090, !nonnull !23, !noundef !23
  %end_or_len.i.i36 = load ptr, ptr %10, align 8, !alias.scope !1090, !nonnull !23, !noundef !23
  %_7.i.i37 = icmp eq ptr %ptr.i.i35, %end_or_len.i.i36
  br i1 %_7.i.i37, label %bb57.invoke, label %bb14.i38

bb14.i38:                                         ; preds = %bb32
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
  %15 = or disjoint i32 %_34.i48, %_35.i50
  %_13.i51 = icmp samesign ugt i8 %x.i40, -33
  br i1 %_13.i51, label %bb6.i54, label %bb30

bb3.i74:                                          ; preds = %bb14.i38
  %_7.i75 = zext nneg i8 %x.i40 to i32
  br label %bb30

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
  %16 = or disjoint i32 %y_z.i61, %_20.i62
  %_21.i63 = icmp samesign ugt i8 %x.i40, -17
  br i1 %_21.i63, label %bb8.i64, label %bb30

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
  %17 = or disjoint i32 %_27.i73, %_25.i69
  br label %bb30

bb30:                                             ; preds = %bb3.i74, %bb8.i64, %bb6.i54, %bb4.i42
  %_0.sroa.4.0.i52.ph = phi i32 [ %15, %bb4.i42 ], [ %16, %bb6.i54 ], [ %17, %bb8.i64 ], [ %_7.i75, %bb3.i74 ]
  switch i32 %_0.sroa.4.0.i52.ph, label %bb6 [
    i32 1114112, label %bb57.invoke
    i32 48, label %bb5
  ], !prof !1093

bb6:                                              ; preds = %bb30
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_22)
  store ptr %_43, ptr %_22, align 8
  store ptr %_50, ptr %11, align 8
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_105 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_22, i64 noundef %iter.sroa.0.0243)
  %.not20 = icmp eq i64 %_105, 0
  br i1 %.not20, label %bb42, label %bb57.invoke

bb5:                                              ; preds = %bb30
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_16)
  br label %bb10

bb42:                                             ; preds = %bb6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1094)
  %ptr.i.i77 = load ptr, ptr %_22, align 8, !alias.scope !1097, !nonnull !23, !noundef !23
  %end_or_len.i.i78 = load ptr, ptr %11, align 8, !alias.scope !1097, !nonnull !23, !noundef !23
  %_7.i.i79 = icmp eq ptr %ptr.i.i77, %end_or_len.i.i78
  br i1 %_7.i.i79, label %bb57.invoke, label %bb14.i80

bb14.i80:                                         ; preds = %bb42
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
  %18 = or disjoint i32 %_34.i90, %_35.i92
  %_13.i93 = icmp samesign ugt i8 %x.i82, -33
  br i1 %_13.i93, label %bb6.i96, label %bb40

bb3.i116:                                         ; preds = %bb14.i80
  %_7.i117 = zext nneg i8 %x.i82 to i32
  br label %bb40

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
  %19 = or disjoint i32 %y_z.i103, %_20.i104
  %_21.i105 = icmp samesign ugt i8 %x.i82, -17
  br i1 %_21.i105, label %bb8.i106, label %bb40

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
  %20 = or disjoint i32 %_27.i115, %_25.i111
  br label %bb40

bb40:                                             ; preds = %bb3.i116, %bb8.i106, %bb6.i96, %bb4.i84
  %_0.sroa.4.0.i94.ph = phi i32 [ %18, %bb4.i84 ], [ %19, %bb6.i96 ], [ %20, %bb8.i106 ], [ %_7.i117, %bb3.i116 ]
  switch i32 %_0.sroa.4.0.i94.ph, label %bb8 [
    i32 1114112, label %bb57.invoke
    i32 49, label %bb7
  ], !prof !1093

bb8:                                              ; preds = %bb40
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_22)
  %_24 = icmp slt i32 %res.sroa.0.0244, 2
  br i1 %_24, label %bb10, label %bb11

bb7:                                              ; preds = %bb40
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_22)
  br label %bb10

bb11:                                             ; preds = %bb8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_38)
  store ptr %_43, ptr %_38, align 8
  store ptr %_50, ptr %12, align 8
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_151 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_38, i64 noundef %iter.sroa.0.0243)
  %.not22 = icmp eq i64 %_151, 0
  br i1 %.not22, label %bb62, label %bb57.invoke

bb62:                                             ; preds = %bb11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1100)
  %ptr.i.i119 = load ptr, ptr %_38, align 8, !alias.scope !1103, !nonnull !23, !noundef !23
  %end_or_len.i.i120 = load ptr, ptr %12, align 8, !alias.scope !1103, !nonnull !23, !noundef !23
  %_7.i.i121 = icmp eq ptr %ptr.i.i119, %end_or_len.i.i120
  br i1 %_7.i.i121, label %bb57.invoke, label %bb14.i122

bb14.i122:                                        ; preds = %bb62
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
  %21 = or disjoint i32 %_34.i132, %_35.i134
  %_13.i135 = icmp samesign ugt i8 %x.i124, -33
  br i1 %_13.i135, label %bb6.i138, label %bb68

bb3.i158:                                         ; preds = %bb14.i122
  %_7.i159 = zext nneg i8 %x.i124 to i32
  br label %bb68

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
  %22 = or disjoint i32 %y_z.i145, %_20.i146
  %_21.i147 = icmp samesign ugt i8 %x.i124, -17
  br i1 %_21.i147, label %bb60, label %bb68

bb60:                                             ; preds = %bb6.i138
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
  %23 = or disjoint i32 %_27.i157, %_25.i153
  %.not23 = icmp eq i32 %23, 1114112
  br i1 %.not23, label %bb57.invoke, label %bb68, !prof !1106

bb68:                                             ; preds = %bb3.i158, %bb6.i138, %bb4.i126, %bb60
  %_0.sroa.4.0.i136.ph229 = phi i32 [ %23, %bb60 ], [ %_7.i159, %bb3.i158 ], [ %22, %bb6.i138 ], [ %21, %bb4.i126 ]
  %24 = icmp samesign ult i32 %_0.sroa.4.0.i136.ph229, 1114112
  tail call void @llvm.assume(i1 %24)
  %_33 = add nsw i32 %_0.sroa.4.0.i136.ph229, -48
  %25 = mul i32 %_33, %res.sroa.0.0244
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_38)
  br label %bb12

bb12:                                             ; preds = %bb58, %bb68
  %res.sroa.0.1 = phi i32 [ %31, %bb58 ], [ %25, %bb68 ]
  %26 = add nuw i64 %14, 1
  %exitcond.not = icmp eq i64 %14, %_42
  br i1 %exitcond.not, label %bb4, label %bb3

bb10:                                             ; preds = %bb8, %bb5, %bb7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_31)
  store ptr %_43, ptr %_31, align 8
  store ptr %_50, ptr %13, align 8
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_128 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_31, i64 noundef %iter.sroa.0.0243)
  %.not24 = icmp eq i64 %_128, 0
  br i1 %.not24, label %bb52, label %bb57.invoke

bb52:                                             ; preds = %bb10
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1107)
  %ptr.i.i161 = load ptr, ptr %_31, align 8, !alias.scope !1110, !nonnull !23, !noundef !23
  %end_or_len.i.i162 = load ptr, ptr %13, align 8, !alias.scope !1110, !nonnull !23, !noundef !23
  %_7.i.i163 = icmp eq ptr %ptr.i.i161, %end_or_len.i.i162
  br i1 %_7.i.i163, label %bb57.invoke, label %bb14.i164

bb14.i164:                                        ; preds = %bb52
  %x.i166 = load i8, ptr %ptr.i.i161, align 1, !noalias !1107, !noundef !23
  %_6.i167 = icmp sgt i8 %x.i166, -1
  br i1 %_6.i167, label %bb3.i200, label %bb4.i168

bb4.i168:                                         ; preds = %bb14.i164
  %_18.i.i165 = getelementptr inbounds nuw i8, ptr %ptr.i.i161, i64 1
  %_30.i169 = and i8 %x.i166, 31
  %init.i170 = zext nneg i8 %_30.i169 to i32
  %_7.i10.i171 = icmp ne ptr %_18.i.i165, %end_or_len.i.i162
  tail call void @llvm.assume(i1 %_7.i10.i171)
  %y.i173 = load i8, ptr %_18.i.i165, align 1, !noalias !1107, !noundef !23
  %_34.i174 = shl nuw nsw i32 %init.i170, 6
  %_36.i175 = and i8 %y.i173, 63
  %_35.i176 = zext nneg i8 %_36.i175 to i32
  %27 = or disjoint i32 %_34.i174, %_35.i176
  %_13.i177 = icmp samesign ugt i8 %x.i166, -33
  br i1 %_13.i177, label %bb6.i180, label %bb58

bb3.i200:                                         ; preds = %bb14.i164
  %_7.i201 = zext nneg i8 %x.i166 to i32
  br label %bb58

bb6.i180:                                         ; preds = %bb4.i168
  %_18.i12.i172 = getelementptr inbounds nuw i8, ptr %ptr.i.i161, i64 2
  %_7.i17.i181 = icmp ne ptr %_18.i12.i172, %end_or_len.i.i162
  tail call void @llvm.assume(i1 %_7.i17.i181)
  %z.i183 = load i8, ptr %_18.i12.i172, align 1, !noalias !1107, !noundef !23
  %_40.i184 = shl nuw nsw i32 %_35.i176, 6
  %_42.i185 = and i8 %z.i183, 63
  %_41.i186 = zext nneg i8 %_42.i185 to i32
  %y_z.i187 = or disjoint i32 %_40.i184, %_41.i186
  %_20.i188 = shl nuw nsw i32 %init.i170, 12
  %28 = or disjoint i32 %y_z.i187, %_20.i188
  %_21.i189 = icmp samesign ugt i8 %x.i166, -17
  br i1 %_21.i189, label %bb50, label %bb58

bb50:                                             ; preds = %bb6.i180
  %_18.i19.i182 = getelementptr inbounds nuw i8, ptr %ptr.i.i161, i64 3
  %_7.i24.i191 = icmp ne ptr %_18.i19.i182, %end_or_len.i.i162
  tail call void @llvm.assume(i1 %_7.i24.i191)
  %w.i193 = load i8, ptr %_18.i19.i182, align 1, !noalias !1107, !noundef !23
  %_26.i194 = shl nuw nsw i32 %init.i170, 18
  %_25.i195 = and i32 %_26.i194, 1835008
  %_46.i196 = shl nuw nsw i32 %y_z.i187, 6
  %_48.i197 = and i8 %w.i193, 63
  %_47.i198 = zext nneg i8 %_48.i197 to i32
  %_27.i199 = or disjoint i32 %_46.i196, %_47.i198
  %29 = or disjoint i32 %_27.i199, %_25.i195
  %.not25 = icmp eq i32 %29, 1114112
  br i1 %.not25, label %bb57.invoke, label %bb58, !prof !1106

bb58:                                             ; preds = %bb3.i200, %bb6.i180, %bb4.i168, %bb50
  %_0.sroa.4.0.i178.ph237 = phi i32 [ %29, %bb50 ], [ %_7.i201, %bb3.i200 ], [ %28, %bb6.i180 ], [ %27, %bb4.i168 ]
  %30 = icmp samesign ult i32 %_0.sroa.4.0.i178.ph237, 1114112
  tail call void @llvm.assume(i1 %30)
  %_26 = add i32 %res.sroa.0.0244, -48
  %31 = add i32 %_26, %_0.sroa.4.0.i178.ph237
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_31)
  br label %bb12

bb57.invoke:                                      ; preds = %bb50, %bb10, %bb52, %bb60, %bb11, %bb62, %bb40, %bb6, %bb42, %bb30, %bb3, %bb32, %bb17, %bb19
  %32 = phi ptr [ @alloc_a1f4cf1a4601c43c42884e5f56939aa3, %bb19 ], [ @alloc_a1f4cf1a4601c43c42884e5f56939aa3, %bb17 ], [ @alloc_c5d461147459f590a67461437081ad1d, %bb32 ], [ @alloc_c5d461147459f590a67461437081ad1d, %bb3 ], [ @alloc_c5d461147459f590a67461437081ad1d, %bb30 ], [ @alloc_86b98c8458b33feca5b61b5f6460e1c8, %bb42 ], [ @alloc_86b98c8458b33feca5b61b5f6460e1c8, %bb6 ], [ @alloc_86b98c8458b33feca5b61b5f6460e1c8, %bb40 ], [ @alloc_89528d77aa8a40e36e9d6d0db8889e7a, %bb62 ], [ @alloc_89528d77aa8a40e36e9d6d0db8889e7a, %bb11 ], [ @alloc_89528d77aa8a40e36e9d6d0db8889e7a, %bb60 ], [ @alloc_aed007ffc700f8b0e545c3d92234d7e0, %bb52 ], [ @alloc_aed007ffc700f8b0e545c3d92234d7e0, %bb10 ], [ @alloc_aed007ffc700f8b0e545c3d92234d7e0, %bb50 ]
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %32) #20
          to label %bb57.cont unwind label %cleanup

bb57.cont:                                        ; preds = %bb57.invoke
  unreachable

bb15:                                             ; preds = %bb2.i.i.i3.i.i, %cleanup
  resume { ptr, i32 } %2
}
