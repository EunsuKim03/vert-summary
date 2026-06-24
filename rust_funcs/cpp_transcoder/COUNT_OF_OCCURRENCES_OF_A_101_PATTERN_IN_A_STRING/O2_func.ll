define noundef i32 @f_gold(ptr dead_on_return noalias noundef readonly align 8 captures(none) dereferenceable(24) %str) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_40 = alloca [16 x i8], align 8
  %_34 = alloca [16 x i8], align 8
  %_26 = alloca [16 x i8], align 8
  %_19 = alloca [16 x i8], align 8
  %_11 = alloca [16 x i8], align 8
  %0 = getelementptr inbounds nuw i8, ptr %str, i64 16
  %len = load i64, ptr %0, align 8, !noundef !23
  %_42 = icmp sgt i64 %len, -1
  tail call void @llvm.assume(i1 %_42)
  %_43235.not = icmp eq i64 %len, 0
  br i1 %_43235.not, label %bb4, label %bb3.lr.ph

bb3.lr.ph:                                        ; preds = %start
  %1 = getelementptr inbounds nuw i8, ptr %str, i64 8
  %_50 = load ptr, ptr %1, align 8, !nonnull !23, !noundef !23
  %_57 = getelementptr inbounds nuw i8, ptr %_50, i64 %len
  %2 = getelementptr inbounds nuw i8, ptr %_11, i64 8
  %3 = getelementptr inbounds nuw i8, ptr %_19, i64 8
  %4 = getelementptr inbounds nuw i8, ptr %_26, i64 8
  %5 = getelementptr inbounds nuw i8, ptr %_34, i64 8
  %6 = getelementptr inbounds nuw i8, ptr %_40, i64 8
  br label %bb3

bb3:                                              ; preds = %bb3.lr.ph, %bb1.backedge
  %7 = phi i64 [ 1, %bb3.lr.ph ], [ %23, %bb1.backedge ]
  %count.sroa.0.0238 = phi i32 [ 0, %bb3.lr.ph ], [ %count.sroa.0.1, %bb1.backedge ]
  %one_seen.sroa.0.0237 = phi i32 [ 0, %bb3.lr.ph ], [ %one_seen.sroa.0.0.be, %bb1.backedge ]
  %iter.sroa.0.0236 = phi i64 [ 0, %bb3.lr.ph ], [ %7, %bb1.backedge ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_11)
  store ptr %_50, ptr %_11, align 8
  store ptr %_57, ptr %2, align 8
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_61 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_11, i64 noundef %iter.sroa.0.0236)
  %.not = icmp eq i64 %_61, 0
  br i1 %.not, label %bb32, label %bb77.invoke

bb4:                                              ; preds = %bb1.backedge, %start
  %count.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %count.sroa.0.1, %bb1.backedge ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1040)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1043)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1046)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1049)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1052)
  %self1.i.i.i.i1.i.i = load i64, ptr %str, align 8, !range !1055, !alias.scope !1056, !noalias !1059, !noundef !23
  %_6.i.i.i.i2.i.i = icmp eq i64 %self1.i.i.i.i1.i.i, 0
  br i1 %_6.i.i.i.i2.i.i, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hff350c673a32a625E.exit", label %bb2.i.i.i3.i.i

bb2.i.i.i3.i.i:                                   ; preds = %bb4
  %8 = getelementptr inbounds nuw i8, ptr %str, i64 8
  %self3.i.i.i.i4.i.i = load ptr, ptr %8, align 8, !alias.scope !1056, !noalias !1059, !nonnull !23, !noundef !23
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i, i64 noundef %self1.i.i.i.i1.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !1061
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hff350c673a32a625E.exit"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hff350c673a32a625E.exit": ; preds = %bb4, %bb2.i.i.i3.i.i
  ret i32 %count.sroa.0.0.lcssa

cleanup:                                          ; preds = %bb77.invoke
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1062)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1065)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1068)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1071)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1074)
  %self1.i.i.i.i1.i.i28 = load i64, ptr %str, align 8, !range !1055, !alias.scope !1077, !noalias !1080, !noundef !23
  %_6.i.i.i.i2.i.i29 = icmp eq i64 %self1.i.i.i.i1.i.i28, 0
  br i1 %_6.i.i.i.i2.i.i29, label %bb25, label %bb2.i.i.i3.i.i30

bb2.i.i.i3.i.i30:                                 ; preds = %cleanup
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_50, i64 noundef %self1.i.i.i.i1.i.i28, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !1082
  br label %bb25

bb32:                                             ; preds = %bb3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1083)
  %ptr.i.i = load ptr, ptr %_11, align 8, !alias.scope !1086, !nonnull !23, !noundef !23
  %end_or_len.i.i = load ptr, ptr %2, align 8, !alias.scope !1086, !nonnull !23, !noundef !23
  %_7.i.i = icmp eq ptr %ptr.i.i, %end_or_len.i.i
  br i1 %_7.i.i, label %bb77.invoke, label %bb14.i

bb14.i:                                           ; preds = %bb32
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
  %10 = or disjoint i32 %_34.i, %_35.i
  %_13.i = icmp samesign ugt i8 %x.i, -33
  br i1 %_13.i, label %bb6.i, label %bb30

bb3.i:                                            ; preds = %bb14.i
  %_7.i = zext nneg i8 %x.i to i32
  br label %bb30

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
  %11 = or disjoint i32 %y_z.i, %_20.i
  %_21.i = icmp samesign ugt i8 %x.i, -17
  br i1 %_21.i, label %bb8.i, label %bb30

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
  %12 = or disjoint i32 %_27.i, %_25.i
  br label %bb30

bb30:                                             ; preds = %bb3.i, %bb8.i, %bb6.i, %bb4.i
  %_0.sroa.4.0.i.ph = phi i32 [ %10, %bb4.i ], [ %11, %bb6.i ], [ %12, %bb8.i ], [ %_7.i, %bb3.i ]
  switch i32 %_0.sroa.4.0.i.ph, label %bb11 [
    i32 1114112, label %bb77.invoke
    i32 49, label %bb5
  ], !prof !1089

bb11:                                             ; preds = %bb30
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_11)
  br label %bb12

bb5:                                              ; preds = %bb30
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_11)
  %_13 = icmp eq i32 %one_seen.sroa.0.0237, 1
  br i1 %_13, label %bb6, label %bb12

bb12:                                             ; preds = %bb8, %bb7, %bb5, %bb11
  %count.sroa.0.1 = phi i32 [ %16, %bb7 ], [ %count.sroa.0.0238, %bb8 ], [ %count.sroa.0.0238, %bb5 ], [ %count.sroa.0.0238, %bb11 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_26)
  store ptr %_50, ptr %_26, align 8
  store ptr %_57, ptr %4, align 8
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_107 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_26, i64 noundef %iter.sroa.0.0236)
  %.not18 = icmp eq i64 %_107, 0
  br i1 %.not18, label %bb52, label %bb77.invoke

bb6:                                              ; preds = %bb5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_19)
  store ptr %_50, ptr %_19, align 8
  store ptr %_57, ptr %3, align 8
  %_21 = add nsw i64 %iter.sroa.0.0236, -1
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_84 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_19, i64 noundef %_21)
  %.not16 = icmp eq i64 %_84, 0
  br i1 %.not16, label %bb42, label %bb77.invoke

bb42:                                             ; preds = %bb6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1090)
  %ptr.i.i33 = load ptr, ptr %_19, align 8, !alias.scope !1093, !nonnull !23, !noundef !23
  %end_or_len.i.i34 = load ptr, ptr %3, align 8, !alias.scope !1093, !nonnull !23, !noundef !23
  %_7.i.i35 = icmp eq ptr %ptr.i.i33, %end_or_len.i.i34
  br i1 %_7.i.i35, label %bb77.invoke, label %bb14.i36

bb14.i36:                                         ; preds = %bb42
  %x.i38 = load i8, ptr %ptr.i.i33, align 1, !noalias !1090, !noundef !23
  %_6.i39 = icmp sgt i8 %x.i38, -1
  br i1 %_6.i39, label %bb3.i72, label %bb4.i40

bb4.i40:                                          ; preds = %bb14.i36
  %_18.i.i37 = getelementptr inbounds nuw i8, ptr %ptr.i.i33, i64 1
  %_30.i41 = and i8 %x.i38, 31
  %init.i42 = zext nneg i8 %_30.i41 to i32
  %_7.i10.i43 = icmp ne ptr %_18.i.i37, %end_or_len.i.i34
  tail call void @llvm.assume(i1 %_7.i10.i43)
  %y.i45 = load i8, ptr %_18.i.i37, align 1, !noalias !1090, !noundef !23
  %_34.i46 = shl nuw nsw i32 %init.i42, 6
  %_36.i47 = and i8 %y.i45, 63
  %_35.i48 = zext nneg i8 %_36.i47 to i32
  %13 = or disjoint i32 %_34.i46, %_35.i48
  %_13.i49 = icmp samesign ugt i8 %x.i38, -33
  br i1 %_13.i49, label %bb6.i52, label %bb40

bb3.i72:                                          ; preds = %bb14.i36
  %_7.i73 = zext nneg i8 %x.i38 to i32
  br label %bb40

bb6.i52:                                          ; preds = %bb4.i40
  %_18.i12.i44 = getelementptr inbounds nuw i8, ptr %ptr.i.i33, i64 2
  %_7.i17.i53 = icmp ne ptr %_18.i12.i44, %end_or_len.i.i34
  tail call void @llvm.assume(i1 %_7.i17.i53)
  %z.i55 = load i8, ptr %_18.i12.i44, align 1, !noalias !1090, !noundef !23
  %_40.i56 = shl nuw nsw i32 %_35.i48, 6
  %_42.i57 = and i8 %z.i55, 63
  %_41.i58 = zext nneg i8 %_42.i57 to i32
  %y_z.i59 = or disjoint i32 %_40.i56, %_41.i58
  %_20.i60 = shl nuw nsw i32 %init.i42, 12
  %14 = or disjoint i32 %y_z.i59, %_20.i60
  %_21.i61 = icmp samesign ugt i8 %x.i38, -17
  br i1 %_21.i61, label %bb8.i62, label %bb40

bb8.i62:                                          ; preds = %bb6.i52
  %_18.i19.i54 = getelementptr inbounds nuw i8, ptr %ptr.i.i33, i64 3
  %_7.i24.i63 = icmp ne ptr %_18.i19.i54, %end_or_len.i.i34
  tail call void @llvm.assume(i1 %_7.i24.i63)
  %w.i65 = load i8, ptr %_18.i19.i54, align 1, !noalias !1090, !noundef !23
  %_26.i66 = shl nuw nsw i32 %init.i42, 18
  %_25.i67 = and i32 %_26.i66, 1835008
  %_46.i68 = shl nuw nsw i32 %y_z.i59, 6
  %_48.i69 = and i8 %w.i65, 63
  %_47.i70 = zext nneg i8 %_48.i69 to i32
  %_27.i71 = or disjoint i32 %_46.i68, %_47.i70
  %15 = or disjoint i32 %_27.i71, %_25.i67
  br label %bb40

bb40:                                             ; preds = %bb3.i72, %bb8.i62, %bb6.i52, %bb4.i40
  %_0.sroa.4.0.i50.ph = phi i32 [ %13, %bb4.i40 ], [ %14, %bb6.i52 ], [ %15, %bb8.i62 ], [ %_7.i73, %bb3.i72 ]
  switch i32 %_0.sroa.4.0.i50.ph, label %bb8 [
    i32 1114112, label %bb77.invoke
    i32 48, label %bb7
  ], !prof !1089

bb8:                                              ; preds = %bb40
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_19)
  br label %bb12

bb7:                                              ; preds = %bb40
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_19)
  %16 = add i32 %count.sroa.0.0238, 1
  br label %bb12

bb52:                                             ; preds = %bb12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1096)
  %ptr.i.i75 = load ptr, ptr %_26, align 8, !alias.scope !1099, !nonnull !23, !noundef !23
  %end_or_len.i.i76 = load ptr, ptr %4, align 8, !alias.scope !1099, !nonnull !23, !noundef !23
  %_7.i.i77 = icmp eq ptr %ptr.i.i75, %end_or_len.i.i76
  br i1 %_7.i.i77, label %bb77.invoke, label %bb14.i78

bb14.i78:                                         ; preds = %bb52
  %x.i80 = load i8, ptr %ptr.i.i75, align 1, !noalias !1096, !noundef !23
  %_6.i81 = icmp sgt i8 %x.i80, -1
  br i1 %_6.i81, label %bb3.i114, label %bb4.i82

bb4.i82:                                          ; preds = %bb14.i78
  %_18.i.i79 = getelementptr inbounds nuw i8, ptr %ptr.i.i75, i64 1
  %_30.i83 = and i8 %x.i80, 31
  %init.i84 = zext nneg i8 %_30.i83 to i32
  %_7.i10.i85 = icmp ne ptr %_18.i.i79, %end_or_len.i.i76
  tail call void @llvm.assume(i1 %_7.i10.i85)
  %y.i87 = load i8, ptr %_18.i.i79, align 1, !noalias !1096, !noundef !23
  %_34.i88 = shl nuw nsw i32 %init.i84, 6
  %_36.i89 = and i8 %y.i87, 63
  %_35.i90 = zext nneg i8 %_36.i89 to i32
  %17 = or disjoint i32 %_34.i88, %_35.i90
  %_13.i91 = icmp samesign ugt i8 %x.i80, -33
  br i1 %_13.i91, label %bb6.i94, label %bb50

bb3.i114:                                         ; preds = %bb14.i78
  %_7.i115 = zext nneg i8 %x.i80 to i32
  br label %bb50

bb6.i94:                                          ; preds = %bb4.i82
  %_18.i12.i86 = getelementptr inbounds nuw i8, ptr %ptr.i.i75, i64 2
  %_7.i17.i95 = icmp ne ptr %_18.i12.i86, %end_or_len.i.i76
  tail call void @llvm.assume(i1 %_7.i17.i95)
  %z.i97 = load i8, ptr %_18.i12.i86, align 1, !noalias !1096, !noundef !23
  %_40.i98 = shl nuw nsw i32 %_35.i90, 6
  %_42.i99 = and i8 %z.i97, 63
  %_41.i100 = zext nneg i8 %_42.i99 to i32
  %y_z.i101 = or disjoint i32 %_40.i98, %_41.i100
  %_20.i102 = shl nuw nsw i32 %init.i84, 12
  %18 = or disjoint i32 %y_z.i101, %_20.i102
  %_21.i103 = icmp samesign ugt i8 %x.i80, -17
  br i1 %_21.i103, label %bb8.i104, label %bb50

bb8.i104:                                         ; preds = %bb6.i94
  %_18.i19.i96 = getelementptr inbounds nuw i8, ptr %ptr.i.i75, i64 3
  %_7.i24.i105 = icmp ne ptr %_18.i19.i96, %end_or_len.i.i76
  tail call void @llvm.assume(i1 %_7.i24.i105)
  %w.i107 = load i8, ptr %_18.i19.i96, align 1, !noalias !1096, !noundef !23
  %_26.i108 = shl nuw nsw i32 %init.i84, 18
  %_25.i109 = and i32 %_26.i108, 1835008
  %_46.i110 = shl nuw nsw i32 %y_z.i101, 6
  %_48.i111 = and i8 %w.i107, 63
  %_47.i112 = zext nneg i8 %_48.i111 to i32
  %_27.i113 = or disjoint i32 %_46.i110, %_47.i112
  %19 = or disjoint i32 %_27.i113, %_25.i109
  br label %bb50

bb50:                                             ; preds = %bb3.i114, %bb8.i104, %bb6.i94, %bb4.i82
  %_0.sroa.4.0.i92.ph = phi i32 [ %17, %bb4.i82 ], [ %18, %bb6.i94 ], [ %19, %bb8.i104 ], [ %_7.i115, %bb3.i114 ]
  switch i32 %_0.sroa.4.0.i92.ph, label %bb16 [
    i32 1114112, label %bb77.invoke
    i32 49, label %bb13
  ], !prof !1089

bb16:                                             ; preds = %bb50
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_26)
  br label %bb17

bb13:                                             ; preds = %bb50
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_26)
  %_28 = icmp eq i32 %one_seen.sroa.0.0237, 0
  br i1 %_28, label %bb1.backedge, label %bb17

bb17:                                             ; preds = %bb13, %bb16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_34)
  store ptr %_50, ptr %_34, align 8
  store ptr %_57, ptr %5, align 8
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_130 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_34, i64 noundef %iter.sroa.0.0236)
  %.not20 = icmp eq i64 %_130, 0
  br i1 %.not20, label %bb62, label %bb77.invoke

bb62:                                             ; preds = %bb17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1102)
  %ptr.i.i117 = load ptr, ptr %_34, align 8, !alias.scope !1105, !nonnull !23, !noundef !23
  %end_or_len.i.i118 = load ptr, ptr %5, align 8, !alias.scope !1105, !nonnull !23, !noundef !23
  %_7.i.i119 = icmp eq ptr %ptr.i.i117, %end_or_len.i.i118
  br i1 %_7.i.i119, label %bb77.invoke, label %bb14.i120

bb14.i120:                                        ; preds = %bb62
  %x.i122 = load i8, ptr %ptr.i.i117, align 1, !noalias !1102, !noundef !23
  %_6.i123 = icmp sgt i8 %x.i122, -1
  br i1 %_6.i123, label %bb3.i156, label %bb4.i124

bb4.i124:                                         ; preds = %bb14.i120
  %_18.i.i121 = getelementptr inbounds nuw i8, ptr %ptr.i.i117, i64 1
  %_30.i125 = and i8 %x.i122, 31
  %init.i126 = zext nneg i8 %_30.i125 to i32
  %_7.i10.i127 = icmp ne ptr %_18.i.i121, %end_or_len.i.i118
  tail call void @llvm.assume(i1 %_7.i10.i127)
  %y.i129 = load i8, ptr %_18.i.i121, align 1, !noalias !1102, !noundef !23
  %_34.i130 = shl nuw nsw i32 %init.i126, 6
  %_36.i131 = and i8 %y.i129, 63
  %_35.i132 = zext nneg i8 %_36.i131 to i32
  %20 = or disjoint i32 %_34.i130, %_35.i132
  %_13.i133 = icmp samesign ugt i8 %x.i122, -33
  br i1 %_13.i133, label %bb6.i136, label %bb60

bb3.i156:                                         ; preds = %bb14.i120
  %_7.i157 = zext nneg i8 %x.i122 to i32
  br label %bb60

bb6.i136:                                         ; preds = %bb4.i124
  %_18.i12.i128 = getelementptr inbounds nuw i8, ptr %ptr.i.i117, i64 2
  %_7.i17.i137 = icmp ne ptr %_18.i12.i128, %end_or_len.i.i118
  tail call void @llvm.assume(i1 %_7.i17.i137)
  %z.i139 = load i8, ptr %_18.i12.i128, align 1, !noalias !1102, !noundef !23
  %_40.i140 = shl nuw nsw i32 %_35.i132, 6
  %_42.i141 = and i8 %z.i139, 63
  %_41.i142 = zext nneg i8 %_42.i141 to i32
  %y_z.i143 = or disjoint i32 %_40.i140, %_41.i142
  %_20.i144 = shl nuw nsw i32 %init.i126, 12
  %21 = or disjoint i32 %y_z.i143, %_20.i144
  %_21.i145 = icmp samesign ugt i8 %x.i122, -17
  br i1 %_21.i145, label %bb8.i146, label %bb60

bb8.i146:                                         ; preds = %bb6.i136
  %_18.i19.i138 = getelementptr inbounds nuw i8, ptr %ptr.i.i117, i64 3
  %_7.i24.i147 = icmp ne ptr %_18.i19.i138, %end_or_len.i.i118
  tail call void @llvm.assume(i1 %_7.i24.i147)
  %w.i149 = load i8, ptr %_18.i19.i138, align 1, !noalias !1102, !noundef !23
  %_26.i150 = shl nuw nsw i32 %init.i126, 18
  %_25.i151 = and i32 %_26.i150, 1835008
  %_46.i152 = shl nuw nsw i32 %y_z.i143, 6
  %_48.i153 = and i8 %w.i149, 63
  %_47.i154 = zext nneg i8 %_48.i153 to i32
  %_27.i155 = or disjoint i32 %_46.i152, %_47.i154
  %22 = or disjoint i32 %_27.i155, %_25.i151
  br label %bb60

bb60:                                             ; preds = %bb3.i156, %bb8.i146, %bb6.i136, %bb4.i124
  %_0.sroa.4.0.i134.ph = phi i32 [ %20, %bb4.i124 ], [ %21, %bb6.i136 ], [ %22, %bb8.i146 ], [ %_7.i157, %bb3.i156 ]
  switch i32 %_0.sroa.4.0.i134.ph, label %bb18 [
    i32 1114112, label %bb77.invoke
    i32 48, label %bb21
  ], !prof !1089

bb21:                                             ; preds = %bb60
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_34)
  br label %bb1.backedge

bb18:                                             ; preds = %bb60
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_34)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_40)
  store ptr %_50, ptr %_40, align 8
  store ptr %_57, ptr %6, align 8
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_153 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_40, i64 noundef %iter.sroa.0.0236)
  %.not22 = icmp eq i64 %_153, 0
  br i1 %.not22, label %bb72, label %bb77.invoke

bb1.backedge:                                     ; preds = %bb21, %bb20, %bb19, %bb13
  %one_seen.sroa.0.0.be = phi i32 [ 1, %bb13 ], [ 0, %bb19 ], [ %one_seen.sroa.0.0237, %bb20 ], [ %one_seen.sroa.0.0237, %bb21 ]
  %23 = add nuw i64 %7, 1
  %exitcond.not = icmp eq i64 %7, %len
  br i1 %exitcond.not, label %bb4, label %bb3

bb72:                                             ; preds = %bb18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1108)
  %ptr.i.i159 = load ptr, ptr %_40, align 8, !alias.scope !1111, !nonnull !23, !noundef !23
  %end_or_len.i.i160 = load ptr, ptr %6, align 8, !alias.scope !1111, !nonnull !23, !noundef !23
  %_7.i.i161 = icmp eq ptr %ptr.i.i159, %end_or_len.i.i160
  br i1 %_7.i.i161, label %bb77.invoke, label %bb14.i162

bb14.i162:                                        ; preds = %bb72
  %x.i164 = load i8, ptr %ptr.i.i159, align 1, !noalias !1108, !noundef !23
  %_6.i165 = icmp sgt i8 %x.i164, -1
  br i1 %_6.i165, label %bb3.i198, label %bb4.i166

bb4.i166:                                         ; preds = %bb14.i162
  %_18.i.i163 = getelementptr inbounds nuw i8, ptr %ptr.i.i159, i64 1
  %_30.i167 = and i8 %x.i164, 31
  %init.i168 = zext nneg i8 %_30.i167 to i32
  %_7.i10.i169 = icmp ne ptr %_18.i.i163, %end_or_len.i.i160
  tail call void @llvm.assume(i1 %_7.i10.i169)
  %y.i171 = load i8, ptr %_18.i.i163, align 1, !noalias !1108, !noundef !23
  %_34.i172 = shl nuw nsw i32 %init.i168, 6
  %_36.i173 = and i8 %y.i171, 63
  %_35.i174 = zext nneg i8 %_36.i173 to i32
  %24 = or disjoint i32 %_34.i172, %_35.i174
  %_13.i175 = icmp samesign ugt i8 %x.i164, -33
  br i1 %_13.i175, label %bb6.i178, label %bb70

bb3.i198:                                         ; preds = %bb14.i162
  %_7.i199 = zext nneg i8 %x.i164 to i32
  br label %bb70

bb6.i178:                                         ; preds = %bb4.i166
  %_18.i12.i170 = getelementptr inbounds nuw i8, ptr %ptr.i.i159, i64 2
  %_7.i17.i179 = icmp ne ptr %_18.i12.i170, %end_or_len.i.i160
  tail call void @llvm.assume(i1 %_7.i17.i179)
  %z.i181 = load i8, ptr %_18.i12.i170, align 1, !noalias !1108, !noundef !23
  %_40.i182 = shl nuw nsw i32 %_35.i174, 6
  %_42.i183 = and i8 %z.i181, 63
  %_41.i184 = zext nneg i8 %_42.i183 to i32
  %y_z.i185 = or disjoint i32 %_40.i182, %_41.i184
  %_20.i186 = shl nuw nsw i32 %init.i168, 12
  %25 = or disjoint i32 %y_z.i185, %_20.i186
  %_21.i187 = icmp samesign ugt i8 %x.i164, -17
  br i1 %_21.i187, label %bb8.i188, label %bb70

bb8.i188:                                         ; preds = %bb6.i178
  %_18.i19.i180 = getelementptr inbounds nuw i8, ptr %ptr.i.i159, i64 3
  %_7.i24.i189 = icmp ne ptr %_18.i19.i180, %end_or_len.i.i160
  tail call void @llvm.assume(i1 %_7.i24.i189)
  %w.i191 = load i8, ptr %_18.i19.i180, align 1, !noalias !1108, !noundef !23
  %_26.i192 = shl nuw nsw i32 %init.i168, 18
  %_25.i193 = and i32 %_26.i192, 1835008
  %_46.i194 = shl nuw nsw i32 %y_z.i185, 6
  %_48.i195 = and i8 %w.i191, 63
  %_47.i196 = zext nneg i8 %_48.i195 to i32
  %_27.i197 = or disjoint i32 %_46.i194, %_47.i196
  %26 = or disjoint i32 %_27.i197, %_25.i193
  br label %bb70

bb70:                                             ; preds = %bb3.i198, %bb8.i188, %bb6.i178, %bb4.i166
  %_0.sroa.4.0.i176.ph = phi i32 [ %24, %bb4.i166 ], [ %25, %bb6.i178 ], [ %26, %bb8.i188 ], [ %_7.i199, %bb3.i198 ]
  switch i32 %_0.sroa.4.0.i176.ph, label %bb19 [
    i32 1114112, label %bb77.invoke
    i32 49, label %bb20
  ], !prof !1089

bb77.invoke:                                      ; preds = %bb70, %bb18, %bb72, %bb60, %bb17, %bb62, %bb50, %bb12, %bb52, %bb40, %bb6, %bb42, %bb30, %bb3, %bb32
  %27 = phi ptr [ @alloc_688d8caaad636dc803c1acd2d7a014ed, %bb32 ], [ @alloc_688d8caaad636dc803c1acd2d7a014ed, %bb3 ], [ @alloc_688d8caaad636dc803c1acd2d7a014ed, %bb30 ], [ @alloc_cb2cd9413476aa696aa8655e7f9d7e0b, %bb42 ], [ @alloc_cb2cd9413476aa696aa8655e7f9d7e0b, %bb6 ], [ @alloc_cb2cd9413476aa696aa8655e7f9d7e0b, %bb40 ], [ @alloc_eede39662f2173f116cbbbf30563cc8b, %bb52 ], [ @alloc_eede39662f2173f116cbbbf30563cc8b, %bb12 ], [ @alloc_eede39662f2173f116cbbbf30563cc8b, %bb50 ], [ @alloc_93d52e31445b8aa913756eedbf5fb849, %bb62 ], [ @alloc_93d52e31445b8aa913756eedbf5fb849, %bb17 ], [ @alloc_93d52e31445b8aa913756eedbf5fb849, %bb60 ], [ @alloc_100013cdb7d392daed1279cb07969aaa, %bb72 ], [ @alloc_100013cdb7d392daed1279cb07969aaa, %bb18 ], [ @alloc_100013cdb7d392daed1279cb07969aaa, %bb70 ]
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %27) #20
          to label %bb77.cont unwind label %cleanup

bb77.cont:                                        ; preds = %bb77.invoke
  unreachable

bb20:                                             ; preds = %bb70
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_40)
  br label %bb1.backedge

bb19:                                             ; preds = %bb70
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_40)
  br label %bb1.backedge

bb25:                                             ; preds = %bb2.i.i.i3.i.i30, %cleanup
  resume { ptr, i32 } %9
}
