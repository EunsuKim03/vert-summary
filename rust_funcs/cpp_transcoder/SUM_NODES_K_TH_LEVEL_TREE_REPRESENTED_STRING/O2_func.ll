define noundef i32 @f_gold(ptr dead_on_return noalias noundef readonly align 8 captures(none) dereferenceable(24) %tree, i32 noundef %k) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_26 = alloca [16 x i8], align 8
  %_17 = alloca [16 x i8], align 8
  %_11 = alloca [16 x i8], align 8
  %0 = getelementptr inbounds nuw i8, ptr %tree, i64 16
  %n = load i64, ptr %0, align 8, !noundef !23
  %_28 = icmp sgt i64 %n, -1
  tail call void @llvm.assume(i1 %_28)
  %_29128.not = icmp eq i64 %n, 0
  br i1 %_29128.not, label %bb16, label %bb15.lr.ph

bb15.lr.ph:                                       ; preds = %start
  %1 = getelementptr inbounds nuw i8, ptr %tree, i64 8
  %_36 = load ptr, ptr %1, align 8, !nonnull !23, !noundef !23
  %_43 = getelementptr inbounds nuw i8, ptr %_36, i64 %n
  %2 = getelementptr inbounds nuw i8, ptr %_11, i64 8
  %3 = getelementptr inbounds nuw i8, ptr %_17, i64 8
  %4 = getelementptr inbounds nuw i8, ptr %_26, i64 8
  br label %bb15

bb16:                                             ; preds = %bb11, %start
  %sum.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %sum.sroa.0.1, %bb11 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1040)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1043)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1046)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1049)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1052)
  %self1.i.i.i.i1.i.i = load i64, ptr %tree, align 8, !range !1055, !alias.scope !1056, !noalias !1059, !noundef !23
  %_6.i.i.i.i2.i.i = icmp eq i64 %self1.i.i.i.i1.i.i, 0
  br i1 %_6.i.i.i.i2.i.i, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h22548ba7885097e6E.exit", label %bb2.i.i.i3.i.i

bb2.i.i.i3.i.i:                                   ; preds = %bb16
  %5 = getelementptr inbounds nuw i8, ptr %tree, i64 8
  %self3.i.i.i.i4.i.i = load ptr, ptr %5, align 8, !alias.scope !1056, !noalias !1059, !nonnull !23, !noundef !23
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i, i64 noundef %self1.i.i.i.i1.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !1061
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h22548ba7885097e6E.exit"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h22548ba7885097e6E.exit": ; preds = %bb16, %bb2.i.i.i3.i.i
  ret i32 %sum.sroa.0.0.lcssa

bb15:                                             ; preds = %bb15.lr.ph, %bb11
  %sum.sroa.0.0131 = phi i32 [ 0, %bb15.lr.ph ], [ %sum.sroa.0.1, %bb11 ]
  %level.sroa.0.0130 = phi i32 [ -1, %bb15.lr.ph ], [ %level.sroa.0.1, %bb11 ]
  %iter.sroa.0.0129 = phi i64 [ 0, %bb15.lr.ph ], [ %6, %bb11 ]
  %6 = add nuw nsw i64 %iter.sroa.0.0129, 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_11)
  store ptr %_36, ptr %_11, align 8
  store ptr %_43, ptr %2, align 8
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_47 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_11, i64 noundef %iter.sroa.0.0129)
  %.not = icmp eq i64 %_47, 0
  br i1 %.not, label %bb19, label %bb43.invoke, !prof !1062

cleanup:                                          ; preds = %bb43.invoke
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1063)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1066)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1069)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1072)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1075)
  %self1.i.i.i.i1.i.i15 = load i64, ptr %tree, align 8, !range !1055, !alias.scope !1078, !noalias !1081, !noundef !23
  %_6.i.i.i.i2.i.i16 = icmp eq i64 %self1.i.i.i.i1.i.i15, 0
  br i1 %_6.i.i.i.i2.i.i16, label %bb14, label %bb2.i.i.i3.i.i17

bb2.i.i.i3.i.i17:                                 ; preds = %cleanup
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_36, i64 noundef %self1.i.i.i.i1.i.i15, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !1083
  br label %bb14

bb19:                                             ; preds = %bb15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1084)
  %ptr.i.i = load ptr, ptr %_11, align 8, !alias.scope !1087, !nonnull !23, !noundef !23
  %end_or_len.i.i = load ptr, ptr %2, align 8, !alias.scope !1087, !nonnull !23, !noundef !23
  %_7.i.i = icmp eq ptr %ptr.i.i, %end_or_len.i.i
  br i1 %_7.i.i, label %bb43.invoke, label %bb14.i

bb14.i:                                           ; preds = %bb19
  %x.i = load i8, ptr %ptr.i.i, align 1, !noalias !1084, !noundef !23
  %_6.i = icmp sgt i8 %x.i, -1
  br i1 %_6.i, label %bb3.i, label %bb4.i

bb4.i:                                            ; preds = %bb14.i
  %_18.i.i = getelementptr inbounds nuw i8, ptr %ptr.i.i, i64 1
  %_30.i = and i8 %x.i, 31
  %init.i = zext nneg i8 %_30.i to i32
  %_7.i10.i = icmp ne ptr %_18.i.i, %end_or_len.i.i
  tail call void @llvm.assume(i1 %_7.i10.i)
  %y.i = load i8, ptr %_18.i.i, align 1, !noalias !1084, !noundef !23
  %_34.i = shl nuw nsw i32 %init.i, 6
  %_36.i = and i8 %y.i, 63
  %_35.i = zext nneg i8 %_36.i to i32
  %8 = or disjoint i32 %_34.i, %_35.i
  %_13.i = icmp samesign ugt i8 %x.i, -33
  br i1 %_13.i, label %bb6.i, label %bb22

bb3.i:                                            ; preds = %bb14.i
  %_7.i = zext nneg i8 %x.i to i32
  br label %bb22

bb6.i:                                            ; preds = %bb4.i
  %_18.i12.i = getelementptr inbounds nuw i8, ptr %ptr.i.i, i64 2
  %_7.i17.i = icmp ne ptr %_18.i12.i, %end_or_len.i.i
  tail call void @llvm.assume(i1 %_7.i17.i)
  %z.i = load i8, ptr %_18.i12.i, align 1, !noalias !1084, !noundef !23
  %_40.i = shl nuw nsw i32 %_35.i, 6
  %_42.i = and i8 %z.i, 63
  %_41.i = zext nneg i8 %_42.i to i32
  %y_z.i = or disjoint i32 %_40.i, %_41.i
  %_20.i = shl nuw nsw i32 %init.i, 12
  %9 = or disjoint i32 %y_z.i, %_20.i
  %_21.i = icmp samesign ugt i8 %x.i, -17
  br i1 %_21.i, label %bb8.i, label %bb22

bb8.i:                                            ; preds = %bb6.i
  %_18.i19.i = getelementptr inbounds nuw i8, ptr %ptr.i.i, i64 3
  %_7.i24.i = icmp ne ptr %_18.i19.i, %end_or_len.i.i
  tail call void @llvm.assume(i1 %_7.i24.i)
  %w.i = load i8, ptr %_18.i19.i, align 1, !noalias !1084, !noundef !23
  %_26.i = shl nuw nsw i32 %init.i, 18
  %_25.i = and i32 %_26.i, 1835008
  %_46.i = shl nuw nsw i32 %y_z.i, 6
  %_48.i = and i8 %w.i, 63
  %_47.i = zext nneg i8 %_48.i to i32
  %_27.i = or disjoint i32 %_46.i, %_47.i
  %10 = or disjoint i32 %_27.i, %_25.i
  br label %bb22

bb22:                                             ; preds = %bb3.i, %bb8.i, %bb6.i, %bb4.i
  %_0.sroa.4.0.i.ph = phi i32 [ %8, %bb4.i ], [ %9, %bb6.i ], [ %10, %bb8.i ], [ %_7.i, %bb3.i ]
  %11 = icmp samesign ult i32 %_0.sroa.4.0.i.ph, 1114112
  tail call void @llvm.assume(i1 %11)
  %_7 = icmp eq i32 %_0.sroa.4.0.i.ph, 40
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_11)
  br i1 %_7, label %bb3, label %bb4

bb43.invoke:                                      ; preds = %bb34, %bb7, %bb36, %bb24, %bb4, %bb26, %bb15, %bb19
  %12 = phi ptr [ @alloc_72bb1cacbe37b21844fb033d96f6a192, %bb19 ], [ @alloc_72bb1cacbe37b21844fb033d96f6a192, %bb15 ], [ @alloc_a7596a9ae817806d1dafa1e8d5c902fd, %bb26 ], [ @alloc_a7596a9ae817806d1dafa1e8d5c902fd, %bb4 ], [ @alloc_a7596a9ae817806d1dafa1e8d5c902fd, %bb24 ], [ @alloc_94ab4f1d72df9a1d3664ad12a75d8c88, %bb36 ], [ @alloc_94ab4f1d72df9a1d3664ad12a75d8c88, %bb7 ], [ @alloc_94ab4f1d72df9a1d3664ad12a75d8c88, %bb34 ]
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %12) #20
          to label %bb43.cont unwind label %cleanup

bb43.cont:                                        ; preds = %bb43.invoke
  unreachable

bb4:                                              ; preds = %bb22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_17)
  store ptr %_36, ptr %_17, align 8
  store ptr %_43, ptr %3, align 8
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_69 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_17, i64 noundef %iter.sroa.0.0129)
  %.not10 = icmp eq i64 %_69, 0
  br i1 %.not10, label %bb26, label %bb43.invoke

bb3:                                              ; preds = %bb22
  %13 = add i32 %level.sroa.0.0130, 1
  br label %bb11

bb26:                                             ; preds = %bb4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1090)
  %ptr.i.i20 = load ptr, ptr %_17, align 8, !alias.scope !1093, !nonnull !23, !noundef !23
  %end_or_len.i.i21 = load ptr, ptr %3, align 8, !alias.scope !1093, !nonnull !23, !noundef !23
  %_7.i.i22 = icmp eq ptr %ptr.i.i20, %end_or_len.i.i21
  br i1 %_7.i.i22, label %bb43.invoke, label %bb14.i23

bb14.i23:                                         ; preds = %bb26
  %x.i25 = load i8, ptr %ptr.i.i20, align 1, !noalias !1090, !noundef !23
  %_6.i26 = icmp sgt i8 %x.i25, -1
  br i1 %_6.i26, label %bb3.i59, label %bb4.i27

bb4.i27:                                          ; preds = %bb14.i23
  %_18.i.i24 = getelementptr inbounds nuw i8, ptr %ptr.i.i20, i64 1
  %_30.i28 = and i8 %x.i25, 31
  %init.i29 = zext nneg i8 %_30.i28 to i32
  %_7.i10.i30 = icmp ne ptr %_18.i.i24, %end_or_len.i.i21
  tail call void @llvm.assume(i1 %_7.i10.i30)
  %y.i32 = load i8, ptr %_18.i.i24, align 1, !noalias !1090, !noundef !23
  %_34.i33 = shl nuw nsw i32 %init.i29, 6
  %_36.i34 = and i8 %y.i32, 63
  %_35.i35 = zext nneg i8 %_36.i34 to i32
  %14 = or disjoint i32 %_34.i33, %_35.i35
  %_13.i36 = icmp samesign ugt i8 %x.i25, -33
  br i1 %_13.i36, label %bb6.i39, label %bb24

bb3.i59:                                          ; preds = %bb14.i23
  %_7.i60 = zext nneg i8 %x.i25 to i32
  br label %bb24

bb6.i39:                                          ; preds = %bb4.i27
  %_18.i12.i31 = getelementptr inbounds nuw i8, ptr %ptr.i.i20, i64 2
  %_7.i17.i40 = icmp ne ptr %_18.i12.i31, %end_or_len.i.i21
  tail call void @llvm.assume(i1 %_7.i17.i40)
  %z.i42 = load i8, ptr %_18.i12.i31, align 1, !noalias !1090, !noundef !23
  %_40.i43 = shl nuw nsw i32 %_35.i35, 6
  %_42.i44 = and i8 %z.i42, 63
  %_41.i45 = zext nneg i8 %_42.i44 to i32
  %y_z.i46 = or disjoint i32 %_40.i43, %_41.i45
  %_20.i47 = shl nuw nsw i32 %init.i29, 12
  %15 = or disjoint i32 %y_z.i46, %_20.i47
  %_21.i48 = icmp samesign ugt i8 %x.i25, -17
  br i1 %_21.i48, label %bb8.i49, label %bb24

bb8.i49:                                          ; preds = %bb6.i39
  %_18.i19.i41 = getelementptr inbounds nuw i8, ptr %ptr.i.i20, i64 3
  %_7.i24.i50 = icmp ne ptr %_18.i19.i41, %end_or_len.i.i21
  tail call void @llvm.assume(i1 %_7.i24.i50)
  %w.i52 = load i8, ptr %_18.i19.i41, align 1, !noalias !1090, !noundef !23
  %_26.i53 = shl nuw nsw i32 %init.i29, 18
  %_25.i54 = and i32 %_26.i53, 1835008
  %_46.i55 = shl nuw nsw i32 %y_z.i46, 6
  %_48.i56 = and i8 %w.i52, 63
  %_47.i57 = zext nneg i8 %_48.i56 to i32
  %_27.i58 = or disjoint i32 %_46.i55, %_47.i57
  %16 = or disjoint i32 %_27.i58, %_25.i54
  br label %bb24

bb24:                                             ; preds = %bb3.i59, %bb8.i49, %bb6.i39, %bb4.i27
  %_0.sroa.4.0.i37.ph = phi i32 [ %14, %bb4.i27 ], [ %15, %bb6.i39 ], [ %16, %bb8.i49 ], [ %_7.i60, %bb3.i59 ]
  switch i32 %_0.sroa.4.0.i37.ph, label %bb6 [
    i32 1114112, label %bb43.invoke
    i32 41, label %bb5
  ], !prof !1096

bb6:                                              ; preds = %bb24
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_17)
  %_19 = icmp eq i32 %level.sroa.0.0130, %k
  br i1 %_19, label %bb7, label %bb11

bb5:                                              ; preds = %bb24
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_17)
  %17 = add i32 %level.sroa.0.0130, -1
  br label %bb11

bb7:                                              ; preds = %bb6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_26)
  store ptr %_36, ptr %_26, align 8
  store ptr %_43, ptr %4, align 8
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_92 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_26, i64 noundef %iter.sroa.0.0129)
  %.not12 = icmp eq i64 %_92, 0
  br i1 %.not12, label %bb36, label %bb43.invoke

bb36:                                             ; preds = %bb7
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1097)
  %ptr.i.i62 = load ptr, ptr %_26, align 8, !alias.scope !1100, !nonnull !23, !noundef !23
  %end_or_len.i.i63 = load ptr, ptr %4, align 8, !alias.scope !1100, !nonnull !23, !noundef !23
  %_7.i.i64 = icmp eq ptr %ptr.i.i62, %end_or_len.i.i63
  br i1 %_7.i.i64, label %bb43.invoke, label %bb14.i65

bb14.i65:                                         ; preds = %bb36
  %x.i67 = load i8, ptr %ptr.i.i62, align 1, !noalias !1097, !noundef !23
  %_6.i68 = icmp sgt i8 %x.i67, -1
  br i1 %_6.i68, label %bb3.i101, label %bb4.i69

bb4.i69:                                          ; preds = %bb14.i65
  %_18.i.i66 = getelementptr inbounds nuw i8, ptr %ptr.i.i62, i64 1
  %_30.i70 = and i8 %x.i67, 31
  %init.i71 = zext nneg i8 %_30.i70 to i32
  %_7.i10.i72 = icmp ne ptr %_18.i.i66, %end_or_len.i.i63
  tail call void @llvm.assume(i1 %_7.i10.i72)
  %y.i74 = load i8, ptr %_18.i.i66, align 1, !noalias !1097, !noundef !23
  %_34.i75 = shl nuw nsw i32 %init.i71, 6
  %_36.i76 = and i8 %y.i74, 63
  %_35.i77 = zext nneg i8 %_36.i76 to i32
  %18 = or disjoint i32 %_34.i75, %_35.i77
  %_13.i78 = icmp samesign ugt i8 %x.i67, -33
  br i1 %_13.i78, label %bb6.i81, label %bb42

bb3.i101:                                         ; preds = %bb14.i65
  %_7.i102 = zext nneg i8 %x.i67 to i32
  br label %bb42

bb6.i81:                                          ; preds = %bb4.i69
  %_18.i12.i73 = getelementptr inbounds nuw i8, ptr %ptr.i.i62, i64 2
  %_7.i17.i82 = icmp ne ptr %_18.i12.i73, %end_or_len.i.i63
  tail call void @llvm.assume(i1 %_7.i17.i82)
  %z.i84 = load i8, ptr %_18.i12.i73, align 1, !noalias !1097, !noundef !23
  %_40.i85 = shl nuw nsw i32 %_35.i77, 6
  %_42.i86 = and i8 %z.i84, 63
  %_41.i87 = zext nneg i8 %_42.i86 to i32
  %y_z.i88 = or disjoint i32 %_40.i85, %_41.i87
  %_20.i89 = shl nuw nsw i32 %init.i71, 12
  %19 = or disjoint i32 %y_z.i88, %_20.i89
  %_21.i90 = icmp samesign ugt i8 %x.i67, -17
  br i1 %_21.i90, label %bb34, label %bb42

bb34:                                             ; preds = %bb6.i81
  %_18.i19.i83 = getelementptr inbounds nuw i8, ptr %ptr.i.i62, i64 3
  %_7.i24.i92 = icmp ne ptr %_18.i19.i83, %end_or_len.i.i63
  tail call void @llvm.assume(i1 %_7.i24.i92)
  %w.i94 = load i8, ptr %_18.i19.i83, align 1, !noalias !1097, !noundef !23
  %_26.i95 = shl nuw nsw i32 %init.i71, 18
  %_25.i96 = and i32 %_26.i95, 1835008
  %_46.i97 = shl nuw nsw i32 %y_z.i88, 6
  %_48.i98 = and i8 %w.i94, 63
  %_47.i99 = zext nneg i8 %_48.i98 to i32
  %_27.i100 = or disjoint i32 %_46.i97, %_47.i99
  %20 = or disjoint i32 %_27.i100, %_25.i96
  %.not13 = icmp eq i32 %20, 1114112
  br i1 %.not13, label %bb43.invoke, label %bb42, !prof !1103

bb42:                                             ; preds = %bb3.i101, %bb6.i81, %bb4.i69, %bb34
  %_0.sroa.4.0.i79.ph121 = phi i32 [ %20, %bb34 ], [ %_7.i102, %bb3.i101 ], [ %19, %bb6.i81 ], [ %18, %bb4.i69 ]
  %21 = icmp samesign ult i32 %_0.sroa.4.0.i79.ph121, 1114112
  tail call void @llvm.assume(i1 %21)
  %_21 = add i32 %sum.sroa.0.0131, -48
  %22 = add i32 %_21, %_0.sroa.4.0.i79.ph121
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_26)
  br label %bb11

bb11:                                             ; preds = %bb5, %bb6, %bb42, %bb3
  %level.sroa.0.1 = phi i32 [ %13, %bb3 ], [ %17, %bb5 ], [ %k, %bb42 ], [ %level.sroa.0.0130, %bb6 ]
  %sum.sroa.0.1 = phi i32 [ %sum.sroa.0.0131, %bb3 ], [ %sum.sroa.0.0131, %bb5 ], [ %22, %bb42 ], [ %sum.sroa.0.0131, %bb6 ]
  %exitcond.not = icmp eq i64 %6, %n
  br i1 %exitcond.not, label %bb16, label %bb15

bb14:                                             ; preds = %bb2.i.i.i3.i.i17, %cleanup
  resume { ptr, i32 } %7
}
