define noundef range(i32 0, 2) i32 @f_gold(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %str.0, i64 noundef %str.1) unnamed_addr #5 {
start:
  %_15 = alloca [16 x i8], align 8
  %_11 = alloca [16 x i8], align 8
  %j.sroa.0.058 = add i64 %str.1, -1
  %_559.not = icmp eq i64 %j.sroa.0.058, 0
  br i1 %_559.not, label %bb6, label %bb2.lr.ph

bb2.lr.ph:                                        ; preds = %start
  %_21 = getelementptr inbounds nuw i8, ptr %str.0, i64 %str.1
  %0 = getelementptr inbounds nuw i8, ptr %_11, i64 8
  %1 = getelementptr inbounds nuw i8, ptr %_15, i64 8
  br label %bb2

bb2:                                              ; preds = %bb2.lr.ph, %bb4
  %j.sroa.0.061 = phi i64 [ %j.sroa.0.058, %bb2.lr.ph ], [ %j.sroa.0.0, %bb4 ]
  %i.sroa.0.060 = phi i64 [ 0, %bb2.lr.ph ], [ %9, %bb4 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_11)
  store ptr %str.0, ptr %_11, align 8
  store ptr %_21, ptr %0, align 8
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_25 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_11, i64 noundef %i.sroa.0.060) #23
  %.not = icmp eq i64 %_25, 0
  br i1 %.not, label %bb11, label %bb9

bb6:                                              ; preds = %bb4, %start, %bb3
  %_0.sroa.0.0 = phi i32 [ 0, %bb3 ], [ 1, %start ], [ 1, %bb4 ]
  ret i32 %_0.sroa.0.0

bb11:                                             ; preds = %bb2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1040)
  %ptr.i.i = load ptr, ptr %_11, align 8, !alias.scope !1043, !nonnull !23, !noundef !23
  %end_or_len.i.i = load ptr, ptr %0, align 8, !alias.scope !1043, !nonnull !23, !noundef !23
  %_7.i.i.not = icmp eq ptr %ptr.i.i, %end_or_len.i.i
  br i1 %_7.i.i.not, label %bb9, label %bb14.i

bb14.i:                                           ; preds = %bb11
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
  %2 = or disjoint i32 %_34.i, %_35.i
  %_13.i = icmp samesign ugt i8 %x.i, -33
  br i1 %_13.i, label %bb6.i, label %bb9

bb3.i:                                            ; preds = %bb14.i
  %_7.i = zext nneg i8 %x.i to i32
  br label %bb9

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
  %3 = or disjoint i32 %y_z.i, %_20.i
  %_21.i = icmp samesign ugt i8 %x.i, -17
  br i1 %_21.i, label %bb8.i, label %bb9

bb8.i:                                            ; preds = %bb6.i
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
  %4 = or disjoint i32 %_27.i, %_25.i
  br label %bb9

bb9:                                              ; preds = %bb8.i, %bb6.i, %bb3.i, %bb4.i, %bb11, %bb2
  %_9.sroa.0.1 = phi i32 [ 1114112, %bb2 ], [ %_7.i, %bb3.i ], [ %4, %bb8.i ], [ %3, %bb6.i ], [ %2, %bb4.i ], [ 1114112, %bb11 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_15)
  store ptr %str.0, ptr %_15, align 8
  store ptr %_21, ptr %1, align 8
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_39 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_15, i64 noundef %j.sroa.0.061) #23
  %.not10 = icmp eq i64 %_39, 0
  br i1 %.not10, label %bb18, label %bb22

bb18:                                             ; preds = %bb9
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1046)
  %ptr.i.i13 = load ptr, ptr %_15, align 8, !alias.scope !1049, !nonnull !23, !noundef !23
  %end_or_len.i.i14 = load ptr, ptr %1, align 8, !alias.scope !1049, !nonnull !23, !noundef !23
  %_7.i.i15 = icmp eq ptr %ptr.i.i13, %end_or_len.i.i14
  br i1 %_7.i.i15, label %bb22, label %bb14.i16

bb14.i16:                                         ; preds = %bb18
  %x.i18 = load i8, ptr %ptr.i.i13, align 1, !noalias !1046, !noundef !23
  %_6.i19 = icmp sgt i8 %x.i18, -1
  br i1 %_6.i19, label %bb3.i52, label %bb4.i20

bb4.i20:                                          ; preds = %bb14.i16
  %_18.i.i17 = getelementptr inbounds nuw i8, ptr %ptr.i.i13, i64 1
  %_30.i21 = and i8 %x.i18, 31
  %init.i22 = zext nneg i8 %_30.i21 to i32
  %_7.i10.i23 = icmp ne ptr %_18.i.i17, %end_or_len.i.i14
  tail call void @llvm.assume(i1 %_7.i10.i23)
  %y.i25 = load i8, ptr %_18.i.i17, align 1, !noalias !1046, !noundef !23
  %_34.i26 = shl nuw nsw i32 %init.i22, 6
  %_36.i27 = and i8 %y.i25, 63
  %_35.i28 = zext nneg i8 %_36.i27 to i32
  %5 = or disjoint i32 %_34.i26, %_35.i28
  %_13.i29 = icmp samesign ugt i8 %x.i18, -33
  br i1 %_13.i29, label %bb6.i32, label %bb21

bb3.i52:                                          ; preds = %bb14.i16
  %_7.i53 = zext nneg i8 %x.i18 to i32
  br label %bb21

bb6.i32:                                          ; preds = %bb4.i20
  %_18.i12.i24 = getelementptr inbounds nuw i8, ptr %ptr.i.i13, i64 2
  %_7.i17.i33 = icmp ne ptr %_18.i12.i24, %end_or_len.i.i14
  tail call void @llvm.assume(i1 %_7.i17.i33)
  %z.i35 = load i8, ptr %_18.i12.i24, align 1, !noalias !1046, !noundef !23
  %_40.i36 = shl nuw nsw i32 %_35.i28, 6
  %_42.i37 = and i8 %z.i35, 63
  %_41.i38 = zext nneg i8 %_42.i37 to i32
  %y_z.i39 = or disjoint i32 %_40.i36, %_41.i38
  %_20.i40 = shl nuw nsw i32 %init.i22, 12
  %6 = or disjoint i32 %y_z.i39, %_20.i40
  %_21.i41 = icmp samesign ugt i8 %x.i18, -17
  br i1 %_21.i41, label %bb8.i42, label %bb21

bb8.i42:                                          ; preds = %bb6.i32
  %_18.i19.i34 = getelementptr inbounds nuw i8, ptr %ptr.i.i13, i64 3
  %_7.i24.i43 = icmp ne ptr %_18.i19.i34, %end_or_len.i.i14
  tail call void @llvm.assume(i1 %_7.i24.i43)
  %w.i45 = load i8, ptr %_18.i19.i34, align 1, !noalias !1046, !noundef !23
  %_26.i46 = shl nuw nsw i32 %init.i22, 18
  %_25.i47 = and i32 %_26.i46, 1835008
  %_46.i48 = shl nuw nsw i32 %y_z.i39, 6
  %_48.i49 = and i8 %w.i45, 63
  %_47.i50 = zext nneg i8 %_48.i49 to i32
  %_27.i51 = or disjoint i32 %_46.i48, %_47.i50
  %7 = or disjoint i32 %_27.i51, %_25.i47
  br label %bb21

bb21:                                             ; preds = %bb3.i52, %bb8.i42, %bb6.i32, %bb4.i20
  %_0.sroa.4.0.i30.ph = phi i32 [ %5, %bb4.i20 ], [ %6, %bb6.i32 ], [ %7, %bb8.i42 ], [ %_7.i53, %bb3.i52 ]
  %8 = icmp samesign ult i32 %_0.sroa.4.0.i30.ph, 1114112
  tail call void @llvm.assume(i1 %8)
  %_46.not = icmp eq i32 %_9.sroa.0.1, %_0.sroa.4.0.i30.ph
  br i1 %_46.not, label %bb4, label %bb3

bb22:                                             ; preds = %bb18, %bb9
  %.not12 = icmp eq i32 %_9.sroa.0.1, 1114112
  br i1 %.not12, label %bb4, label %bb3

bb4:                                              ; preds = %bb21, %bb22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_15)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_11)
  %9 = add nuw i64 %i.sroa.0.060, 1
  %j.sroa.0.0 = add i64 %j.sroa.0.061, -1
  %_5 = icmp ult i64 %9, %j.sroa.0.0
  br i1 %_5, label %bb2, label %bb6

bb3:                                              ; preds = %bb21, %bb22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_15)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_11)
  br label %bb6
}
