define noundef range(i32 0, 2) i32 @f_gold(ptr dead_on_return noalias noundef readonly align 8 captures(none) dereferenceable(24) %str) unnamed_addr #5 personality ptr @rust_eh_personality {
start:
  %_16 = alloca [16 x i8], align 8
  %_11 = alloca [16 x i8], align 8
  %0 = getelementptr inbounds nuw i8, ptr %str, i64 16
  %_4 = load i64, ptr %0, align 8, !noundef !23
  %_19 = icmp sgt i64 %_4, -1
  tail call void @llvm.assume(i1 %_19)
  %j.sroa.0.068 = add nsw i64 %_4, -1
  %_569.not = icmp eq i64 %j.sroa.0.068, 0
  br i1 %_569.not, label %bb5, label %bb2.lr.ph

bb2.lr.ph:                                        ; preds = %start
  %1 = getelementptr inbounds nuw i8, ptr %str, i64 8
  %_23 = load ptr, ptr %1, align 8, !nonnull !23, !noundef !23
  %_30 = getelementptr inbounds nuw i8, ptr %_23, i64 %_4
  %2 = getelementptr inbounds nuw i8, ptr %_11, i64 8
  %3 = getelementptr inbounds nuw i8, ptr %_16, i64 8
  br label %bb2

bb5:                                              ; preds = %bb4, %start
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1040)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1043)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1046)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1049)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1052)
  %self1.i.i.i.i1.i.i = load i64, ptr %str, align 8, !range !1055, !alias.scope !1056, !noalias !1059, !noundef !23
  %_6.i.i.i.i2.i.i = icmp eq i64 %self1.i.i.i.i1.i.i, 0
  br i1 %_6.i.i.i.i2.i.i, label %bb6, label %bb2.i.i.i3.i.i

bb2.i.i.i3.i.i:                                   ; preds = %bb5
  %4 = getelementptr inbounds nuw i8, ptr %str, i64 8
  %self3.i.i.i.i4.i.i = load ptr, ptr %4, align 8, !alias.scope !1056, !noalias !1059, !nonnull !23, !noundef !23
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i, i64 noundef %self1.i.i.i.i1.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !1061
  br label %bb6

bb2:                                              ; preds = %bb2.lr.ph, %bb4
  %j.sroa.0.071 = phi i64 [ %j.sroa.0.068, %bb2.lr.ph ], [ %j.sroa.0.0, %bb4 ]
  %i.sroa.0.070 = phi i64 [ 0, %bb2.lr.ph ], [ %12, %bb4 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_11)
  store ptr %_23, ptr %_11, align 8
  store ptr %_30, ptr %2, align 8
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_34 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_11, i64 noundef %i.sroa.0.070)
  %.not = icmp eq i64 %_34, 0
  br i1 %.not, label %bb13, label %bb11

bb6:                                              ; preds = %bb2.i.i.i3.i.i62, %bb3, %bb2.i.i.i3.i.i, %bb5
  %_0.sroa.0.0 = phi i32 [ 1, %bb5 ], [ 1, %bb2.i.i.i3.i.i ], [ 0, %bb3 ], [ 0, %bb2.i.i.i3.i.i62 ]
  ret i32 %_0.sroa.0.0

bb13:                                             ; preds = %bb2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1062)
  %ptr.i.i = load ptr, ptr %_11, align 8, !alias.scope !1065, !nonnull !23, !noundef !23
  %end_or_len.i.i = load ptr, ptr %2, align 8, !alias.scope !1065, !nonnull !23, !noundef !23
  %_7.i.i.not = icmp eq ptr %ptr.i.i, %end_or_len.i.i
  br i1 %_7.i.i.not, label %bb11, label %bb14.i

bb14.i:                                           ; preds = %bb13
  %x.i = load i8, ptr %ptr.i.i, align 1, !noalias !1062, !noundef !23
  %_6.i = icmp sgt i8 %x.i, -1
  br i1 %_6.i, label %bb3.i, label %bb4.i

bb4.i:                                            ; preds = %bb14.i
  %_18.i.i = getelementptr inbounds nuw i8, ptr %ptr.i.i, i64 1
  %_30.i = and i8 %x.i, 31
  %init.i = zext nneg i8 %_30.i to i32
  %_7.i10.i = icmp ne ptr %_18.i.i, %end_or_len.i.i
  tail call void @llvm.assume(i1 %_7.i10.i)
  %y.i = load i8, ptr %_18.i.i, align 1, !noalias !1062, !noundef !23
  %_34.i = shl nuw nsw i32 %init.i, 6
  %_36.i = and i8 %y.i, 63
  %_35.i = zext nneg i8 %_36.i to i32
  %5 = or disjoint i32 %_34.i, %_35.i
  %_13.i = icmp samesign ugt i8 %x.i, -33
  br i1 %_13.i, label %bb6.i, label %bb11

bb3.i:                                            ; preds = %bb14.i
  %_7.i = zext nneg i8 %x.i to i32
  br label %bb11

bb6.i:                                            ; preds = %bb4.i
  %_18.i12.i = getelementptr inbounds nuw i8, ptr %ptr.i.i, i64 2
  %_7.i17.i = icmp ne ptr %_18.i12.i, %end_or_len.i.i
  tail call void @llvm.assume(i1 %_7.i17.i)
  %z.i = load i8, ptr %_18.i12.i, align 1, !noalias !1062, !noundef !23
  %_40.i = shl nuw nsw i32 %_35.i, 6
  %_42.i = and i8 %z.i, 63
  %_41.i = zext nneg i8 %_42.i to i32
  %y_z.i = or disjoint i32 %_40.i, %_41.i
  %_20.i = shl nuw nsw i32 %init.i, 12
  %6 = or disjoint i32 %y_z.i, %_20.i
  %_21.i = icmp samesign ugt i8 %x.i, -17
  br i1 %_21.i, label %bb8.i, label %bb11

bb8.i:                                            ; preds = %bb6.i
  %_18.i19.i = getelementptr inbounds nuw i8, ptr %ptr.i.i, i64 3
  %_7.i24.i = icmp ne ptr %_18.i19.i, %end_or_len.i.i
  tail call void @llvm.assume(i1 %_7.i24.i)
  %w.i = load i8, ptr %_18.i19.i, align 1, !noalias !1062, !noundef !23
  %_26.i = shl nuw nsw i32 %init.i, 18
  %_25.i = and i32 %_26.i, 1835008
  %_46.i = shl nuw nsw i32 %y_z.i, 6
  %_48.i = and i8 %w.i, 63
  %_47.i = zext nneg i8 %_48.i to i32
  %_27.i = or disjoint i32 %_46.i, %_47.i
  %7 = or disjoint i32 %_27.i, %_25.i
  br label %bb11

bb11:                                             ; preds = %bb13, %bb4.i, %bb3.i, %bb6.i, %bb8.i, %bb2
  %_9.sroa.0.1 = phi i32 [ 1114112, %bb2 ], [ %_7.i, %bb3.i ], [ %7, %bb8.i ], [ %6, %bb6.i ], [ %5, %bb4.i ], [ 1114112, %bb13 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_16)
  store ptr %_23, ptr %_16, align 8
  store ptr %_30, ptr %3, align 8
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_55 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_16, i64 noundef %j.sroa.0.071)
  %.not10 = icmp eq i64 %_55, 0
  br i1 %.not10, label %bb20, label %bb24

bb20:                                             ; preds = %bb11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1068)
  %ptr.i.i18 = load ptr, ptr %_16, align 8, !alias.scope !1071, !nonnull !23, !noundef !23
  %end_or_len.i.i19 = load ptr, ptr %3, align 8, !alias.scope !1071, !nonnull !23, !noundef !23
  %_7.i.i20 = icmp eq ptr %ptr.i.i18, %end_or_len.i.i19
  br i1 %_7.i.i20, label %bb24, label %bb14.i21

bb14.i21:                                         ; preds = %bb20
  %x.i23 = load i8, ptr %ptr.i.i18, align 1, !noalias !1068, !noundef !23
  %_6.i24 = icmp sgt i8 %x.i23, -1
  br i1 %_6.i24, label %bb3.i57, label %bb4.i25

bb4.i25:                                          ; preds = %bb14.i21
  %_18.i.i22 = getelementptr inbounds nuw i8, ptr %ptr.i.i18, i64 1
  %_30.i26 = and i8 %x.i23, 31
  %init.i27 = zext nneg i8 %_30.i26 to i32
  %_7.i10.i28 = icmp ne ptr %_18.i.i22, %end_or_len.i.i19
  tail call void @llvm.assume(i1 %_7.i10.i28)
  %y.i30 = load i8, ptr %_18.i.i22, align 1, !noalias !1068, !noundef !23
  %_34.i31 = shl nuw nsw i32 %init.i27, 6
  %_36.i32 = and i8 %y.i30, 63
  %_35.i33 = zext nneg i8 %_36.i32 to i32
  %8 = or disjoint i32 %_34.i31, %_35.i33
  %_13.i34 = icmp samesign ugt i8 %x.i23, -33
  br i1 %_13.i34, label %bb6.i37, label %bb23

bb3.i57:                                          ; preds = %bb14.i21
  %_7.i58 = zext nneg i8 %x.i23 to i32
  br label %bb23

bb6.i37:                                          ; preds = %bb4.i25
  %_18.i12.i29 = getelementptr inbounds nuw i8, ptr %ptr.i.i18, i64 2
  %_7.i17.i38 = icmp ne ptr %_18.i12.i29, %end_or_len.i.i19
  tail call void @llvm.assume(i1 %_7.i17.i38)
  %z.i40 = load i8, ptr %_18.i12.i29, align 1, !noalias !1068, !noundef !23
  %_40.i41 = shl nuw nsw i32 %_35.i33, 6
  %_42.i42 = and i8 %z.i40, 63
  %_41.i43 = zext nneg i8 %_42.i42 to i32
  %y_z.i44 = or disjoint i32 %_40.i41, %_41.i43
  %_20.i45 = shl nuw nsw i32 %init.i27, 12
  %9 = or disjoint i32 %y_z.i44, %_20.i45
  %_21.i46 = icmp samesign ugt i8 %x.i23, -17
  br i1 %_21.i46, label %bb8.i47, label %bb23

bb8.i47:                                          ; preds = %bb6.i37
  %_18.i19.i39 = getelementptr inbounds nuw i8, ptr %ptr.i.i18, i64 3
  %_7.i24.i48 = icmp ne ptr %_18.i19.i39, %end_or_len.i.i19
  tail call void @llvm.assume(i1 %_7.i24.i48)
  %w.i50 = load i8, ptr %_18.i19.i39, align 1, !noalias !1068, !noundef !23
  %_26.i51 = shl nuw nsw i32 %init.i27, 18
  %_25.i52 = and i32 %_26.i51, 1835008
  %_46.i53 = shl nuw nsw i32 %y_z.i44, 6
  %_48.i54 = and i8 %w.i50, 63
  %_47.i55 = zext nneg i8 %_48.i54 to i32
  %_27.i56 = or disjoint i32 %_46.i53, %_47.i55
  %10 = or disjoint i32 %_27.i56, %_25.i52
  br label %bb23

bb23:                                             ; preds = %bb3.i57, %bb8.i47, %bb6.i37, %bb4.i25
  %_0.sroa.4.0.i35.ph = phi i32 [ %8, %bb4.i25 ], [ %9, %bb6.i37 ], [ %10, %bb8.i47 ], [ %_7.i58, %bb3.i57 ]
  %11 = icmp samesign ult i32 %_0.sroa.4.0.i35.ph, 1114112
  tail call void @llvm.assume(i1 %11)
  %_62.not = icmp eq i32 %_9.sroa.0.1, %_0.sroa.4.0.i35.ph
  br i1 %_62.not, label %bb4, label %bb3

bb24:                                             ; preds = %bb20, %bb11
  %.not12 = icmp eq i32 %_9.sroa.0.1, 1114112
  br i1 %.not12, label %bb4, label %bb3

bb4:                                              ; preds = %bb23, %bb24
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_11)
  %12 = add nuw i64 %i.sroa.0.070, 1
  %j.sroa.0.0 = add i64 %j.sroa.0.071, -1
  %_5 = icmp ult i64 %12, %j.sroa.0.0
  br i1 %_5, label %bb2, label %bb5

bb3:                                              ; preds = %bb23, %bb24
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_11)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1074)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1077)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1080)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1083)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1086)
  %self1.i.i.i.i1.i.i60 = load i64, ptr %str, align 8, !range !1055, !alias.scope !1089, !noalias !1092, !noundef !23
  %_6.i.i.i.i2.i.i61 = icmp eq i64 %self1.i.i.i.i1.i.i60, 0
  br i1 %_6.i.i.i.i2.i.i61, label %bb6, label %bb2.i.i.i3.i.i62

bb2.i.i.i3.i.i62:                                 ; preds = %bb3
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_23, i64 noundef %self1.i.i.i.i1.i.i60, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !1094
  br label %bb6
}
