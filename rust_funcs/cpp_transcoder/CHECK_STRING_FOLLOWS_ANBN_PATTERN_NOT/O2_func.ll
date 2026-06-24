define noundef range(i32 0, 2) i32 @f_gold(ptr dead_on_return noalias noundef readonly align 8 captures(none) dereferenceable(24) %str) unnamed_addr #5 personality ptr @rust_eh_personality {
start:
  %_22 = alloca [16 x i8], align 8
  %_10 = alloca [16 x i8], align 8
  %0 = getelementptr inbounds nuw i8, ptr %str, i64 16
  %_3 = load i64, ptr %0, align 8, !noundef !23
  %_27 = icmp sgt i64 %_3, -1
  tail call void @llvm.assume(i1 %_27)
  %n = trunc i64 %_3 to i32
  %_573 = icmp sgt i32 %n, 0
  br i1 %_573, label %bb2.lr.ph, label %bb6

bb2.lr.ph:                                        ; preds = %start
  %1 = getelementptr inbounds nuw i8, ptr %str, i64 8
  %_31 = load ptr, ptr %1, align 8, !nonnull !23, !noundef !23
  %_38 = getelementptr inbounds nuw i8, ptr %_31, i64 %_3
  %2 = getelementptr inbounds nuw i8, ptr %_10, i64 8
  %wide.trip.count = and i64 %_3, 2147483647
  br label %bb2

bb2:                                              ; preds = %bb2.lr.ph, %bb3
  %indvars.iv = phi i64 [ 0, %bb2.lr.ph ], [ %indvars.iv.next, %bb3 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_10)
  store ptr %_31, ptr %_10, align 8
  store ptr %_38, ptr %2, align 8
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_42 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_10, i64 noundef %indvars.iv)
  %.not = icmp eq i64 %_42, 0
  br i1 %.not, label %bb24, label %bb4

bb6:                                              ; preds = %bb3, %start, %bb4
  %i.sroa.0.072 = phi i32 [ %10, %bb4 ], [ 0, %start ], [ %n, %bb3 ]
  %_15 = shl nuw i32 %i.sroa.0.072, 1
  %_14.not = icmp eq i32 %_15, %n
  br i1 %_14.not, label %bb9.preheader, label %bb17

bb9.preheader:                                    ; preds = %bb6
  %_1775 = icmp slt i32 %i.sroa.0.072, %n
  br i1 %_1775, label %bb10.lr.ph, label %bb14

bb10.lr.ph:                                       ; preds = %bb9.preheader
  %3 = getelementptr inbounds nuw i8, ptr %str, i64 8
  %_53 = load ptr, ptr %3, align 8, !nonnull !23, !noundef !23
  %_60 = getelementptr inbounds nuw i8, ptr %_53, i64 %_3
  %4 = getelementptr inbounds nuw i8, ptr %_22, i64 8
  %5 = zext nneg i32 %i.sroa.0.072 to i64
  %wide.trip.count85 = and i64 %_3, 4294967295
  br label %bb10

bb24:                                             ; preds = %bb2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1040)
  %ptr.i.i = load ptr, ptr %_10, align 8, !alias.scope !1043, !nonnull !23, !noundef !23
  %end_or_len.i.i = load ptr, ptr %2, align 8, !alias.scope !1043, !nonnull !23, !noundef !23
  %_7.i.i = icmp eq ptr %ptr.i.i, %end_or_len.i.i
  br i1 %_7.i.i, label %bb4, label %bb14.i

bb14.i:                                           ; preds = %bb24
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
  %6 = or disjoint i32 %_34.i, %_35.i
  %_13.i = icmp samesign ugt i8 %x.i, -33
  br i1 %_13.i, label %bb6.i, label %bb27

bb3.i:                                            ; preds = %bb14.i
  %_7.i = zext nneg i8 %x.i to i32
  br label %bb27

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
  %7 = or disjoint i32 %y_z.i, %_20.i
  %_21.i = icmp samesign ugt i8 %x.i, -17
  br i1 %_21.i, label %bb8.i, label %bb27

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
  %8 = or disjoint i32 %_27.i, %_25.i
  br label %bb27

bb27:                                             ; preds = %bb3.i, %bb8.i, %bb6.i, %bb4.i
  %_0.sroa.4.0.i.ph = phi i32 [ %6, %bb4.i ], [ %7, %bb6.i ], [ %8, %bb8.i ], [ %_7.i, %bb3.i ]
  %9 = icmp samesign ult i32 %_0.sroa.4.0.i.ph, 1114112
  tail call void @llvm.assume(i1 %9)
  %_7 = icmp eq i32 %_0.sroa.4.0.i.ph, 97
  br i1 %_7, label %bb3, label %bb4

bb4:                                              ; preds = %bb24, %bb2, %bb27
  %10 = trunc nuw nsw i64 %indvars.iv to i32
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_10)
  br label %bb6

bb3:                                              ; preds = %bb27
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_10)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb6, label %bb2

bb10:                                             ; preds = %bb10.lr.ph, %bb11
  %indvars.iv82 = phi i64 [ %5, %bb10.lr.ph ], [ %indvars.iv.next83, %bb11 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_22)
  store ptr %_53, ptr %_22, align 8
  store ptr %_60, ptr %4, align 8
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_64 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_22, i64 noundef %indvars.iv82)
  %.not10 = icmp eq i64 %_64, 0
  br i1 %.not10, label %bb30, label %bb12

bb14:                                             ; preds = %bb9.preheader, %bb12
  %i.sroa.0.170 = phi i32 [ %15, %bb12 ], [ %i.sroa.0.072, %bb9.preheader ]
  %_26.not = icmp eq i32 %i.sroa.0.170, %n
  br i1 %_26.not, label %bb16, label %bb17

bb30:                                             ; preds = %bb10
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1046)
  %ptr.i.i11 = load ptr, ptr %_22, align 8, !alias.scope !1049, !nonnull !23, !noundef !23
  %end_or_len.i.i12 = load ptr, ptr %4, align 8, !alias.scope !1049, !nonnull !23, !noundef !23
  %_7.i.i13 = icmp eq ptr %ptr.i.i11, %end_or_len.i.i12
  br i1 %_7.i.i13, label %bb12, label %bb14.i14

bb14.i14:                                         ; preds = %bb30
  %x.i16 = load i8, ptr %ptr.i.i11, align 1, !noalias !1046, !noundef !23
  %_6.i17 = icmp sgt i8 %x.i16, -1
  br i1 %_6.i17, label %bb3.i50, label %bb4.i18

bb4.i18:                                          ; preds = %bb14.i14
  %_18.i.i15 = getelementptr inbounds nuw i8, ptr %ptr.i.i11, i64 1
  %_30.i19 = and i8 %x.i16, 31
  %init.i20 = zext nneg i8 %_30.i19 to i32
  %_7.i10.i21 = icmp ne ptr %_18.i.i15, %end_or_len.i.i12
  tail call void @llvm.assume(i1 %_7.i10.i21)
  %y.i23 = load i8, ptr %_18.i.i15, align 1, !noalias !1046, !noundef !23
  %_34.i24 = shl nuw nsw i32 %init.i20, 6
  %_36.i25 = and i8 %y.i23, 63
  %_35.i26 = zext nneg i8 %_36.i25 to i32
  %11 = or disjoint i32 %_34.i24, %_35.i26
  %_13.i27 = icmp samesign ugt i8 %x.i16, -33
  br i1 %_13.i27, label %bb6.i30, label %bb33

bb3.i50:                                          ; preds = %bb14.i14
  %_7.i51 = zext nneg i8 %x.i16 to i32
  br label %bb33

bb6.i30:                                          ; preds = %bb4.i18
  %_18.i12.i22 = getelementptr inbounds nuw i8, ptr %ptr.i.i11, i64 2
  %_7.i17.i31 = icmp ne ptr %_18.i12.i22, %end_or_len.i.i12
  tail call void @llvm.assume(i1 %_7.i17.i31)
  %z.i33 = load i8, ptr %_18.i12.i22, align 1, !noalias !1046, !noundef !23
  %_40.i34 = shl nuw nsw i32 %_35.i26, 6
  %_42.i35 = and i8 %z.i33, 63
  %_41.i36 = zext nneg i8 %_42.i35 to i32
  %y_z.i37 = or disjoint i32 %_40.i34, %_41.i36
  %_20.i38 = shl nuw nsw i32 %init.i20, 12
  %12 = or disjoint i32 %y_z.i37, %_20.i38
  %_21.i39 = icmp samesign ugt i8 %x.i16, -17
  br i1 %_21.i39, label %bb8.i40, label %bb33

bb8.i40:                                          ; preds = %bb6.i30
  %_18.i19.i32 = getelementptr inbounds nuw i8, ptr %ptr.i.i11, i64 3
  %_7.i24.i41 = icmp ne ptr %_18.i19.i32, %end_or_len.i.i12
  tail call void @llvm.assume(i1 %_7.i24.i41)
  %w.i43 = load i8, ptr %_18.i19.i32, align 1, !noalias !1046, !noundef !23
  %_26.i44 = shl nuw nsw i32 %init.i20, 18
  %_25.i45 = and i32 %_26.i44, 1835008
  %_46.i46 = shl nuw nsw i32 %y_z.i37, 6
  %_48.i47 = and i8 %w.i43, 63
  %_47.i48 = zext nneg i8 %_48.i47 to i32
  %_27.i49 = or disjoint i32 %_46.i46, %_47.i48
  %13 = or disjoint i32 %_27.i49, %_25.i45
  br label %bb33

bb33:                                             ; preds = %bb3.i50, %bb8.i40, %bb6.i30, %bb4.i18
  %_0.sroa.4.0.i28.ph = phi i32 [ %11, %bb4.i18 ], [ %12, %bb6.i30 ], [ %13, %bb8.i40 ], [ %_7.i51, %bb3.i50 ]
  %14 = icmp samesign ult i32 %_0.sroa.4.0.i28.ph, 1114112
  tail call void @llvm.assume(i1 %14)
  %_19 = icmp eq i32 %_0.sroa.4.0.i28.ph, 98
  br i1 %_19, label %bb11, label %bb12

bb12:                                             ; preds = %bb30, %bb10, %bb33
  %15 = trunc nuw nsw i64 %indvars.iv82 to i32
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_22)
  br label %bb14

bb11:                                             ; preds = %bb33
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_22)
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1
  %exitcond86.not = icmp eq i64 %indvars.iv.next83, %wide.trip.count85
  br i1 %exitcond86.not, label %bb16, label %bb10

bb16:                                             ; preds = %bb11, %bb14
  %self1.i.i.i.i1.i.i53 = load i64, ptr %str, align 8, !range !1052, !alias.scope !1053, !noalias !1066, !noundef !23
  %_6.i.i.i.i2.i.i54 = icmp eq i64 %self1.i.i.i.i1.i.i53, 0
  br i1 %_6.i.i.i.i2.i.i54, label %bb18, label %bb18.sink.split

bb18.sink.split:                                  ; preds = %bb16, %bb17
  %self1.i.i.i.i1.i.i58.sink = phi i64 [ %self1.i.i.i.i1.i.i58, %bb17 ], [ %self1.i.i.i.i1.i.i53, %bb16 ]
  %_0.sroa.0.0.ph = phi i32 [ 0, %bb17 ], [ 1, %bb16 ]
  %16 = getelementptr inbounds nuw i8, ptr %str, i64 8
  %self3.i.i.i.i4.i.i61 = load ptr, ptr %16, align 8, !noalias !23, !nonnull !23, !noundef !23
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i61, i64 noundef %self1.i.i.i.i1.i.i58.sink, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !23
  br label %bb18

bb18:                                             ; preds = %bb18.sink.split, %bb17, %bb16
  %_0.sroa.0.0 = phi i32 [ 1, %bb16 ], [ 0, %bb17 ], [ %_0.sroa.0.0.ph, %bb18.sink.split ]
  ret i32 %_0.sroa.0.0

bb17:                                             ; preds = %bb14, %bb6
  %self1.i.i.i.i1.i.i58 = load i64, ptr %str, align 8, !range !1052, !alias.scope !1068, !noalias !1081, !noundef !23
  %_6.i.i.i.i2.i.i59 = icmp eq i64 %self1.i.i.i.i1.i.i58, 0
  br i1 %_6.i.i.i.i2.i.i59, label %bb18, label %bb18.sink.split
}
