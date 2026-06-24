define noundef range(i32 0, 1114112) i32 @f_gold(ptr dead_on_return noalias noundef readonly align 8 captures(none) dereferenceable(24) %str) unnamed_addr #1 personality ptr @rust_eh_personality {
bb17:
  %_28 = alloca [16 x i8], align 8
  %_20 = alloca [16 x i8], align 8
  %_16 = alloca [16 x i8], align 8
  %0 = getelementptr inbounds nuw i8, ptr %str, i64 16
  %n = load i64, ptr %0, align 8, !noundef !23
  %_30 = icmp sgt i64 %n, -1
  tail call void @llvm.assume(i1 %_30)
  %1 = getelementptr inbounds nuw i8, ptr %str, i64 8
  %_34 = load ptr, ptr %1, align 8, !nonnull !23, !noundef !23
  %_41 = getelementptr inbounds nuw i8, ptr %_34, i64 %n
  %_7.i.i = icmp samesign eq i64 %n, 0
  br i1 %_7.i.i, label %bb56.invoke, label %bb14.i

cleanup:                                          ; preds = %bb56.invoke
  %2 = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1040)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1043)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1046)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1049)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1052)
  %self1.i.i.i.i1.i.i = load i64, ptr %str, align 8, !range !1055, !alias.scope !1056, !noalias !1059, !noundef !23
  %_6.i.i.i.i2.i.i = icmp eq i64 %self1.i.i.i.i1.i.i, 0
  br i1 %_6.i.i.i.i2.i.i, label %bb13, label %bb2.i.i.i3.i.i

bb2.i.i.i3.i.i:                                   ; preds = %cleanup
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_34, i64 noundef %self1.i.i.i.i1.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !1061
  br label %bb13

bb14.i:                                           ; preds = %bb17
  %x.i = load i8, ptr %_34, align 1, !noalias !1062, !noundef !23
  %_6.i = icmp sgt i8 %x.i, -1
  br i1 %_6.i, label %bb23, label %bb4.i

bb4.i:                                            ; preds = %bb14.i
  %_18.i.i = getelementptr inbounds nuw i8, ptr %_34, i64 1
  %_30.i = and i8 %x.i, 31
  %init.i = zext nneg i8 %_30.i to i32
  %_7.i10.i = icmp samesign ne i64 %n, 1
  tail call void @llvm.assume(i1 %_7.i10.i)
  %y.i = load i8, ptr %_18.i.i, align 1, !noalias !1062, !noundef !23
  %_34.i = shl nuw nsw i32 %init.i, 6
  %_36.i = and i8 %y.i, 63
  %_35.i = zext nneg i8 %_36.i to i32
  %3 = or disjoint i32 %_34.i, %_35.i
  %_13.i = icmp samesign ugt i8 %x.i, -33
  br i1 %_13.i, label %bb6.i, label %bb3.lr.ph

bb6.i:                                            ; preds = %bb4.i
  %_18.i12.i = getelementptr inbounds nuw i8, ptr %_34, i64 2
  %_7.i17.i = icmp samesign ne i64 %n, 2
  tail call void @llvm.assume(i1 %_7.i17.i)
  %z.i = load i8, ptr %_18.i12.i, align 1, !noalias !1062, !noundef !23
  %_40.i = shl nuw nsw i32 %_35.i, 6
  %_42.i = and i8 %z.i, 63
  %_41.i = zext nneg i8 %_42.i to i32
  %y_z.i = or disjoint i32 %_40.i, %_41.i
  %_20.i = shl nuw nsw i32 %init.i, 12
  %4 = or disjoint i32 %y_z.i, %_20.i
  %_21.i = icmp samesign ugt i8 %x.i, -17
  br i1 %_21.i, label %bb15, label %bb3.lr.ph

bb15:                                             ; preds = %bb6.i
  %_18.i19.i = getelementptr inbounds nuw i8, ptr %_34, i64 3
  %_7.i24.i = icmp samesign ne i64 %n, 3
  tail call void @llvm.assume(i1 %_7.i24.i)
  %w.i = load i8, ptr %_18.i19.i, align 1, !noalias !1062, !noundef !23
  %_26.i = shl nuw nsw i32 %init.i, 18
  %_25.i = and i32 %_26.i, 1835008
  %_46.i = shl nuw nsw i32 %y_z.i, 6
  %_48.i = and i8 %w.i, 63
  %_47.i = zext nneg i8 %_48.i to i32
  %_27.i = or disjoint i32 %_46.i, %_47.i
  %5 = or disjoint i32 %_27.i, %_25.i
  %.not15 = icmp eq i32 %5, 1114112
  br i1 %.not15, label %bb56.invoke, label %bb3.lr.ph, !prof !1065

bb23:                                             ; preds = %bb14.i
  %_7.i = zext nneg i8 %x.i to i32
  %_54178.not = icmp eq i64 %n, 1
  br i1 %_54178.not, label %bb4, label %bb3.lr.ph

bb3.lr.ph:                                        ; preds = %bb4.i, %bb6.i, %bb15, %bb23
  %_0.sroa.4.0.i185188 = phi i32 [ %_7.i, %bb23 ], [ %5, %bb15 ], [ %4, %bb6.i ], [ %3, %bb4.i ]
  %6 = getelementptr inbounds nuw i8, ptr %_16, i64 8
  %7 = getelementptr inbounds nuw i8, ptr %_20, i64 8
  %8 = getelementptr inbounds nuw i8, ptr %_28, i64 8
  br label %bb3

bb3:                                              ; preds = %bb3.lr.ph, %bb10
  %9 = phi i64 [ 1, %bb3.lr.ph ], [ %23, %bb10 ]
  %res.sroa.0.0182 = phi i32 [ %_0.sroa.4.0.i185188, %bb3.lr.ph ], [ %res.sroa.0.2, %bb10 ]
  %count.sroa.0.0181 = phi i32 [ 0, %bb3.lr.ph ], [ %count.sroa.0.2, %bb10 ]
  %cur_count.sroa.0.0180 = phi i32 [ 1, %bb3.lr.ph ], [ %cur_count.sroa.0.1, %bb10 ]
  %iter.sroa.0.0179 = phi i64 [ 0, %bb3.lr.ph ], [ %9, %bb10 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_16)
  store ptr %_34, ptr %_16, align 8
  store ptr %_41, ptr %6, align 8
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_72 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_16, i64 noundef %iter.sroa.0.0179)
  %.not16 = icmp eq i64 %_72, 0
  br i1 %.not16, label %bb30, label %bb28

bb4:                                              ; preds = %bb10, %bb23
  %res.sroa.0.0.lcssa = phi i32 [ %_7.i, %bb23 ], [ %res.sroa.0.2, %bb10 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1066)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1069)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1072)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1075)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1078)
  %self1.i.i.i.i1.i.i25 = load i64, ptr %str, align 8, !range !1055, !alias.scope !1081, !noalias !1084, !noundef !23
  %_6.i.i.i.i2.i.i26 = icmp eq i64 %self1.i.i.i.i1.i.i25, 0
  br i1 %_6.i.i.i.i2.i.i26, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h397c1ff7559d821bE.exit29", label %bb2.i.i.i3.i.i27

bb2.i.i.i3.i.i27:                                 ; preds = %bb4
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_34, i64 noundef %self1.i.i.i.i1.i.i25, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !1086
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h397c1ff7559d821bE.exit29"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h397c1ff7559d821bE.exit29": ; preds = %bb4, %bb2.i.i.i3.i.i27
  ret i32 %res.sroa.0.0.lcssa

bb30:                                             ; preds = %bb3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1087)
  %ptr.i.i30 = load ptr, ptr %_16, align 8, !alias.scope !1090, !nonnull !23, !noundef !23
  %end_or_len.i.i31 = load ptr, ptr %6, align 8, !alias.scope !1090, !nonnull !23, !noundef !23
  %_7.i.i32.not = icmp eq ptr %ptr.i.i30, %end_or_len.i.i31
  br i1 %_7.i.i32.not, label %bb28, label %bb14.i33

bb14.i33:                                         ; preds = %bb30
  %x.i35 = load i8, ptr %ptr.i.i30, align 1, !noalias !1087, !noundef !23
  %_6.i36 = icmp sgt i8 %x.i35, -1
  br i1 %_6.i36, label %bb3.i69, label %bb4.i37

bb4.i37:                                          ; preds = %bb14.i33
  %_18.i.i34 = getelementptr inbounds nuw i8, ptr %ptr.i.i30, i64 1
  %_30.i38 = and i8 %x.i35, 31
  %init.i39 = zext nneg i8 %_30.i38 to i32
  %_7.i10.i40 = icmp ne ptr %_18.i.i34, %end_or_len.i.i31
  tail call void @llvm.assume(i1 %_7.i10.i40)
  %y.i42 = load i8, ptr %_18.i.i34, align 1, !noalias !1087, !noundef !23
  %_34.i43 = shl nuw nsw i32 %init.i39, 6
  %_36.i44 = and i8 %y.i42, 63
  %_35.i45 = zext nneg i8 %_36.i44 to i32
  %10 = or disjoint i32 %_34.i43, %_35.i45
  %_13.i46 = icmp samesign ugt i8 %x.i35, -33
  br i1 %_13.i46, label %bb6.i49, label %bb28

bb3.i69:                                          ; preds = %bb14.i33
  %_7.i70 = zext nneg i8 %x.i35 to i32
  br label %bb28

bb6.i49:                                          ; preds = %bb4.i37
  %_18.i12.i41 = getelementptr inbounds nuw i8, ptr %ptr.i.i30, i64 2
  %_7.i17.i50 = icmp ne ptr %_18.i12.i41, %end_or_len.i.i31
  tail call void @llvm.assume(i1 %_7.i17.i50)
  %z.i52 = load i8, ptr %_18.i12.i41, align 1, !noalias !1087, !noundef !23
  %_40.i53 = shl nuw nsw i32 %_35.i45, 6
  %_42.i54 = and i8 %z.i52, 63
  %_41.i55 = zext nneg i8 %_42.i54 to i32
  %y_z.i56 = or disjoint i32 %_40.i53, %_41.i55
  %_20.i57 = shl nuw nsw i32 %init.i39, 12
  %11 = or disjoint i32 %y_z.i56, %_20.i57
  %_21.i58 = icmp samesign ugt i8 %x.i35, -17
  br i1 %_21.i58, label %bb8.i59, label %bb28

bb8.i59:                                          ; preds = %bb6.i49
  %_18.i19.i51 = getelementptr inbounds nuw i8, ptr %ptr.i.i30, i64 3
  %_7.i24.i60 = icmp ne ptr %_18.i19.i51, %end_or_len.i.i31
  tail call void @llvm.assume(i1 %_7.i24.i60)
  %w.i62 = load i8, ptr %_18.i19.i51, align 1, !noalias !1087, !noundef !23
  %_26.i63 = shl nuw nsw i32 %init.i39, 18
  %_25.i64 = and i32 %_26.i63, 1835008
  %_46.i65 = shl nuw nsw i32 %y_z.i56, 6
  %_48.i66 = and i8 %w.i62, 63
  %_47.i67 = zext nneg i8 %_48.i66 to i32
  %_27.i68 = or disjoint i32 %_46.i65, %_47.i67
  %12 = or disjoint i32 %_27.i68, %_25.i64
  br label %bb28

bb28:                                             ; preds = %bb30, %bb4.i37, %bb3.i69, %bb6.i49, %bb8.i59, %bb3
  %_14.sroa.0.1 = phi i32 [ 1114112, %bb3 ], [ %_7.i70, %bb3.i69 ], [ %12, %bb8.i59 ], [ %11, %bb6.i49 ], [ %10, %bb4.i37 ], [ 1114112, %bb30 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_20)
  store ptr %_34, ptr %_20, align 8
  store ptr %_41, ptr %7, align 8
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_93 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_20, i64 noundef %9)
  %.not17 = icmp eq i64 %_93, 0
  br i1 %.not17, label %bb38, label %bb36.thread

bb38:                                             ; preds = %bb28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1093)
  %ptr.i.i72 = load ptr, ptr %_20, align 8, !alias.scope !1096, !nonnull !23, !noundef !23
  %end_or_len.i.i73 = load ptr, ptr %7, align 8, !alias.scope !1096, !nonnull !23, !noundef !23
  %_7.i.i74.not = icmp eq ptr %ptr.i.i72, %end_or_len.i.i73
  br i1 %_7.i.i74.not, label %bb36.thread192, label %bb14.i75

bb14.i75:                                         ; preds = %bb38
  %x.i77 = load i8, ptr %ptr.i.i72, align 1, !noalias !1093, !noundef !23
  %_6.i78 = icmp sgt i8 %x.i77, -1
  br i1 %_6.i78, label %bb3.i111, label %bb4.i79

bb4.i79:                                          ; preds = %bb14.i75
  %_18.i.i76 = getelementptr inbounds nuw i8, ptr %ptr.i.i72, i64 1
  %_30.i80 = and i8 %x.i77, 31
  %init.i81 = zext nneg i8 %_30.i80 to i32
  %_7.i10.i82 = icmp ne ptr %_18.i.i76, %end_or_len.i.i73
  tail call void @llvm.assume(i1 %_7.i10.i82)
  %y.i84 = load i8, ptr %_18.i.i76, align 1, !noalias !1093, !noundef !23
  %_34.i85 = shl nuw nsw i32 %init.i81, 6
  %_36.i86 = and i8 %y.i84, 63
  %_35.i87 = zext nneg i8 %_36.i86 to i32
  %13 = or disjoint i32 %_34.i85, %_35.i87
  %_13.i88 = icmp samesign ugt i8 %x.i77, -33
  br i1 %_13.i88, label %bb6.i91, label %bb36

bb3.i111:                                         ; preds = %bb14.i75
  %_7.i112 = zext nneg i8 %x.i77 to i32
  br label %bb36

bb6.i91:                                          ; preds = %bb4.i79
  %_18.i12.i83 = getelementptr inbounds nuw i8, ptr %ptr.i.i72, i64 2
  %_7.i17.i92 = icmp ne ptr %_18.i12.i83, %end_or_len.i.i73
  tail call void @llvm.assume(i1 %_7.i17.i92)
  %z.i94 = load i8, ptr %_18.i12.i83, align 1, !noalias !1093, !noundef !23
  %_40.i95 = shl nuw nsw i32 %_35.i87, 6
  %_42.i96 = and i8 %z.i94, 63
  %_41.i97 = zext nneg i8 %_42.i96 to i32
  %y_z.i98 = or disjoint i32 %_40.i95, %_41.i97
  %_20.i99 = shl nuw nsw i32 %init.i81, 12
  %14 = or disjoint i32 %y_z.i98, %_20.i99
  %_21.i100 = icmp samesign ugt i8 %x.i77, -17
  br i1 %_21.i100, label %bb8.i101, label %bb36

bb8.i101:                                         ; preds = %bb6.i91
  %_18.i19.i93 = getelementptr inbounds nuw i8, ptr %ptr.i.i72, i64 3
  %_7.i24.i102 = icmp ne ptr %_18.i19.i93, %end_or_len.i.i73
  tail call void @llvm.assume(i1 %_7.i24.i102)
  %w.i104 = load i8, ptr %_18.i19.i93, align 1, !noalias !1093, !noundef !23
  %_26.i105 = shl nuw nsw i32 %init.i81, 18
  %_25.i106 = and i32 %_26.i105, 1835008
  %_46.i107 = shl nuw nsw i32 %y_z.i98, 6
  %_48.i108 = and i8 %w.i104, 63
  %_47.i109 = zext nneg i8 %_48.i108 to i32
  %_27.i110 = or disjoint i32 %_46.i107, %_47.i109
  %15 = or disjoint i32 %_27.i110, %_25.i106
  br label %bb36

bb36:                                             ; preds = %bb4.i79, %bb3.i111, %bb6.i91, %bb8.i101
  %spec.select23 = phi i32 [ %_7.i112, %bb3.i111 ], [ %15, %bb8.i101 ], [ %14, %bb6.i91 ], [ %13, %bb4.i79 ]
  %.not18 = icmp eq i32 %_14.sroa.0.1, 1114112
  br i1 %.not18, label %bb43, label %bb44

bb36.thread192:                                   ; preds = %bb38
  %.not18194 = icmp eq i32 %_14.sroa.0.1, 1114112
  br i1 %.not18194, label %bb5, label %bb6

bb36.thread:                                      ; preds = %bb28
  %.not18161 = icmp eq i32 %_14.sroa.0.1, 1114112
  br i1 %.not18161, label %bb5, label %bb6

bb44:                                             ; preds = %bb36
  %.not19 = icmp ne i32 %spec.select23, 1114112
  %16 = icmp eq i32 %_14.sroa.0.1, %spec.select23
  %or.cond = select i1 %.not19, i1 %16, i1 false
  br i1 %or.cond, label %bb5, label %bb6

bb43:                                             ; preds = %bb36
  %17 = icmp eq i32 %spec.select23, 1114112
  br i1 %17, label %bb5, label %bb6

bb6:                                              ; preds = %bb36.thread192, %bb36.thread, %bb44, %bb43
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_20)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_16)
  %_23 = icmp sgt i32 %cur_count.sroa.0.0180, %count.sroa.0.0181
  br i1 %_23, label %bb7, label %bb10

bb5:                                              ; preds = %bb36.thread192, %bb44, %bb36.thread, %bb43
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_20)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_16)
  %18 = add i32 %cur_count.sroa.0.0180, 1
  br label %bb10

bb7:                                              ; preds = %bb6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_28)
  store ptr %_34, ptr %_28, align 8
  store ptr %_41, ptr %8, align 8
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_119 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_28, i64 noundef %iter.sroa.0.0179)
  %.not20 = icmp eq i64 %_119, 0
  br i1 %.not20, label %bb51, label %bb56.invoke

bb51:                                             ; preds = %bb7
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1099)
  %ptr.i.i114 = load ptr, ptr %_28, align 8, !alias.scope !1102, !nonnull !23, !noundef !23
  %end_or_len.i.i115 = load ptr, ptr %8, align 8, !alias.scope !1102, !nonnull !23, !noundef !23
  %_7.i.i116 = icmp eq ptr %ptr.i.i114, %end_or_len.i.i115
  br i1 %_7.i.i116, label %bb56.invoke, label %bb14.i117

bb14.i117:                                        ; preds = %bb51
  %x.i119 = load i8, ptr %ptr.i.i114, align 1, !noalias !1099, !noundef !23
  %_6.i120 = icmp sgt i8 %x.i119, -1
  br i1 %_6.i120, label %bb3.i153, label %bb4.i121

bb4.i121:                                         ; preds = %bb14.i117
  %_18.i.i118 = getelementptr inbounds nuw i8, ptr %ptr.i.i114, i64 1
  %_30.i122 = and i8 %x.i119, 31
  %init.i123 = zext nneg i8 %_30.i122 to i32
  %_7.i10.i124 = icmp ne ptr %_18.i.i118, %end_or_len.i.i115
  tail call void @llvm.assume(i1 %_7.i10.i124)
  %y.i126 = load i8, ptr %_18.i.i118, align 1, !noalias !1099, !noundef !23
  %_34.i127 = shl nuw nsw i32 %init.i123, 6
  %_36.i128 = and i8 %y.i126, 63
  %_35.i129 = zext nneg i8 %_36.i128 to i32
  %19 = or disjoint i32 %_34.i127, %_35.i129
  %_13.i130 = icmp samesign ugt i8 %x.i119, -33
  br i1 %_13.i130, label %bb6.i133, label %bb57

bb3.i153:                                         ; preds = %bb14.i117
  %_7.i154 = zext nneg i8 %x.i119 to i32
  br label %bb57

bb6.i133:                                         ; preds = %bb4.i121
  %_18.i12.i125 = getelementptr inbounds nuw i8, ptr %ptr.i.i114, i64 2
  %_7.i17.i134 = icmp ne ptr %_18.i12.i125, %end_or_len.i.i115
  tail call void @llvm.assume(i1 %_7.i17.i134)
  %z.i136 = load i8, ptr %_18.i12.i125, align 1, !noalias !1099, !noundef !23
  %_40.i137 = shl nuw nsw i32 %_35.i129, 6
  %_42.i138 = and i8 %z.i136, 63
  %_41.i139 = zext nneg i8 %_42.i138 to i32
  %y_z.i140 = or disjoint i32 %_40.i137, %_41.i139
  %_20.i141 = shl nuw nsw i32 %init.i123, 12
  %20 = or disjoint i32 %y_z.i140, %_20.i141
  %_21.i142 = icmp samesign ugt i8 %x.i119, -17
  br i1 %_21.i142, label %bb49, label %bb57

bb49:                                             ; preds = %bb6.i133
  %_18.i19.i135 = getelementptr inbounds nuw i8, ptr %ptr.i.i114, i64 3
  %_7.i24.i144 = icmp ne ptr %_18.i19.i135, %end_or_len.i.i115
  tail call void @llvm.assume(i1 %_7.i24.i144)
  %w.i146 = load i8, ptr %_18.i19.i135, align 1, !noalias !1099, !noundef !23
  %_26.i147 = shl nuw nsw i32 %init.i123, 18
  %_25.i148 = and i32 %_26.i147, 1835008
  %_46.i149 = shl nuw nsw i32 %y_z.i140, 6
  %_48.i150 = and i8 %w.i146, 63
  %_47.i151 = zext nneg i8 %_48.i150 to i32
  %_27.i152 = or disjoint i32 %_46.i149, %_47.i151
  %21 = or disjoint i32 %_27.i152, %_25.i148
  %.not21 = icmp eq i32 %21, 1114112
  br i1 %.not21, label %bb56.invoke, label %bb57, !prof !1105

bb57:                                             ; preds = %bb3.i153, %bb6.i133, %bb4.i121, %bb49
  %_0.sroa.4.0.i131.ph176 = phi i32 [ %21, %bb49 ], [ %_7.i154, %bb3.i153 ], [ %20, %bb6.i133 ], [ %19, %bb4.i121 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_28)
  br label %bb10

bb56.invoke:                                      ; preds = %bb49, %bb7, %bb51, %bb15, %bb17
  %22 = phi ptr [ @alloc_b2b4daeb4b6b82e763f92cf190dff85c, %bb17 ], [ @alloc_b2b4daeb4b6b82e763f92cf190dff85c, %bb15 ], [ @alloc_36123845c29bc3db30fd787ad44684c9, %bb51 ], [ @alloc_36123845c29bc3db30fd787ad44684c9, %bb7 ], [ @alloc_36123845c29bc3db30fd787ad44684c9, %bb49 ]
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %22) #20
          to label %bb56.cont unwind label %cleanup

bb56.cont:                                        ; preds = %bb56.invoke
  unreachable

bb10:                                             ; preds = %bb57, %bb6, %bb5
  %cur_count.sroa.0.1 = phi i32 [ %18, %bb5 ], [ 1, %bb6 ], [ 1, %bb57 ]
  %count.sroa.0.2 = phi i32 [ %count.sroa.0.0181, %bb5 ], [ %count.sroa.0.0181, %bb6 ], [ %cur_count.sroa.0.0180, %bb57 ]
  %res.sroa.0.2 = phi i32 [ %res.sroa.0.0182, %bb5 ], [ %res.sroa.0.0182, %bb6 ], [ %_0.sroa.4.0.i131.ph176, %bb57 ]
  %23 = add i64 %9, 1
  %exitcond.not = icmp eq i64 %23, %n
  br i1 %exitcond.not, label %bb4, label %bb3

bb13:                                             ; preds = %bb2.i.i.i3.i.i, %cleanup
  resume { ptr, i32 } %2
}
