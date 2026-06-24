define noundef range(i32 0, 2) i32 @f_gold(ptr dead_on_return noalias noundef readonly align 8 captures(none) dereferenceable(24) %s) unnamed_addr #5 personality ptr @rust_eh_personality {
start:
  %_13 = alloca [16 x i8], align 8
  %_8 = alloca [16 x i8], align 8
  %0 = getelementptr inbounds nuw i8, ptr %s, i64 16
  %l = load i64, ptr %0, align 8, !noundef !23
  %_19 = icmp sgt i64 %l, -1
  tail call void @llvm.assume(i1 %_19)
  %1 = add nsw i64 %l, -1
  %2 = getelementptr inbounds nuw i8, ptr %s, i64 8
  %_23 = load ptr, ptr %2, align 8, !nonnull !23, !noundef !23
  %_30 = getelementptr inbounds nuw i8, ptr %_23, i64 %l
  %3 = getelementptr inbounds nuw i8, ptr %_8, i64 8
  %4 = getelementptr inbounds nuw i8, ptr %_13, i64 8
  br label %bb1

bb1:                                              ; preds = %bb3, %start
  %j.sroa.0.0 = phi i64 [ %1, %start ], [ %13, %bb3 ]
  %i.sroa.0.0 = phi i64 [ 0, %start ], [ %12, %bb3 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_8)
  store ptr %_23, ptr %_8, align 8
  store ptr %_30, ptr %3, align 8
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_34 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_8, i64 noundef %i.sroa.0.0)
  %.not = icmp eq i64 %_34, 0
  br i1 %.not, label %bb13, label %bb11

bb13:                                             ; preds = %bb1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1040)
  %ptr.i.i = load ptr, ptr %_8, align 8, !alias.scope !1043, !nonnull !23, !noundef !23
  %end_or_len.i.i = load ptr, ptr %3, align 8, !alias.scope !1043, !nonnull !23, !noundef !23
  %_7.i.i.not = icmp eq ptr %ptr.i.i, %end_or_len.i.i
  br i1 %_7.i.i.not, label %bb11, label %bb14.i

bb14.i:                                           ; preds = %bb13
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
  %z.i = load i8, ptr %_18.i12.i, align 1, !noalias !1040, !noundef !23
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
  %w.i = load i8, ptr %_18.i19.i, align 1, !noalias !1040, !noundef !23
  %_26.i = shl nuw nsw i32 %init.i, 18
  %_25.i = and i32 %_26.i, 1835008
  %_46.i = shl nuw nsw i32 %y_z.i, 6
  %_48.i = and i8 %w.i, 63
  %_47.i = zext nneg i8 %_48.i to i32
  %_27.i = or disjoint i32 %_46.i, %_47.i
  %7 = or disjoint i32 %_27.i, %_25.i
  br label %bb11

bb11:                                             ; preds = %bb13, %bb4.i, %bb3.i, %bb6.i, %bb8.i, %bb1
  %_6.sroa.0.1 = phi i32 [ 1114112, %bb1 ], [ %_7.i, %bb3.i ], [ %7, %bb8.i ], [ %6, %bb6.i ], [ %5, %bb4.i ], [ 1114112, %bb13 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_13)
  store ptr %_23, ptr %_13, align 8
  store ptr %_30, ptr %4, align 8
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_55 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_13, i64 noundef %j.sroa.0.0)
  %.not11 = icmp eq i64 %_55, 0
  br i1 %.not11, label %bb20, label %bb24

bb20:                                             ; preds = %bb11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1046)
  %ptr.i.i14 = load ptr, ptr %_13, align 8, !alias.scope !1049, !nonnull !23, !noundef !23
  %end_or_len.i.i15 = load ptr, ptr %4, align 8, !alias.scope !1049, !nonnull !23, !noundef !23
  %_7.i.i16 = icmp eq ptr %ptr.i.i14, %end_or_len.i.i15
  br i1 %_7.i.i16, label %bb24, label %bb14.i17

bb14.i17:                                         ; preds = %bb20
  %x.i19 = load i8, ptr %ptr.i.i14, align 1, !noalias !1046, !noundef !23
  %_6.i20 = icmp sgt i8 %x.i19, -1
  br i1 %_6.i20, label %bb3.i53, label %bb4.i21

bb4.i21:                                          ; preds = %bb14.i17
  %_18.i.i18 = getelementptr inbounds nuw i8, ptr %ptr.i.i14, i64 1
  %_30.i22 = and i8 %x.i19, 31
  %init.i23 = zext nneg i8 %_30.i22 to i32
  %_7.i10.i24 = icmp ne ptr %_18.i.i18, %end_or_len.i.i15
  tail call void @llvm.assume(i1 %_7.i10.i24)
  %y.i26 = load i8, ptr %_18.i.i18, align 1, !noalias !1046, !noundef !23
  %_34.i27 = shl nuw nsw i32 %init.i23, 6
  %_36.i28 = and i8 %y.i26, 63
  %_35.i29 = zext nneg i8 %_36.i28 to i32
  %8 = or disjoint i32 %_34.i27, %_35.i29
  %_13.i30 = icmp samesign ugt i8 %x.i19, -33
  br i1 %_13.i30, label %bb6.i33, label %bb23

bb3.i53:                                          ; preds = %bb14.i17
  %_7.i54 = zext nneg i8 %x.i19 to i32
  br label %bb23

bb6.i33:                                          ; preds = %bb4.i21
  %_18.i12.i25 = getelementptr inbounds nuw i8, ptr %ptr.i.i14, i64 2
  %_7.i17.i34 = icmp ne ptr %_18.i12.i25, %end_or_len.i.i15
  tail call void @llvm.assume(i1 %_7.i17.i34)
  %z.i36 = load i8, ptr %_18.i12.i25, align 1, !noalias !1046, !noundef !23
  %_40.i37 = shl nuw nsw i32 %_35.i29, 6
  %_42.i38 = and i8 %z.i36, 63
  %_41.i39 = zext nneg i8 %_42.i38 to i32
  %y_z.i40 = or disjoint i32 %_40.i37, %_41.i39
  %_20.i41 = shl nuw nsw i32 %init.i23, 12
  %9 = or disjoint i32 %y_z.i40, %_20.i41
  %_21.i42 = icmp samesign ugt i8 %x.i19, -17
  br i1 %_21.i42, label %bb8.i43, label %bb23

bb8.i43:                                          ; preds = %bb6.i33
  %_18.i19.i35 = getelementptr inbounds nuw i8, ptr %ptr.i.i14, i64 3
  %_7.i24.i44 = icmp ne ptr %_18.i19.i35, %end_or_len.i.i15
  tail call void @llvm.assume(i1 %_7.i24.i44)
  %w.i46 = load i8, ptr %_18.i19.i35, align 1, !noalias !1046, !noundef !23
  %_26.i47 = shl nuw nsw i32 %init.i23, 18
  %_25.i48 = and i32 %_26.i47, 1835008
  %_46.i49 = shl nuw nsw i32 %y_z.i40, 6
  %_48.i50 = and i8 %w.i46, 63
  %_47.i51 = zext nneg i8 %_48.i50 to i32
  %_27.i52 = or disjoint i32 %_46.i49, %_47.i51
  %10 = or disjoint i32 %_27.i52, %_25.i48
  br label %bb23

bb23:                                             ; preds = %bb3.i53, %bb8.i43, %bb6.i33, %bb4.i21
  %_0.sroa.4.0.i31.ph = phi i32 [ %8, %bb4.i21 ], [ %9, %bb6.i33 ], [ %10, %bb8.i43 ], [ %_7.i54, %bb3.i53 ]
  %11 = icmp samesign ult i32 %_0.sroa.4.0.i31.ph, 1114112
  tail call void @llvm.assume(i1 %11)
  %_62.not = icmp eq i32 %_6.sroa.0.1, %_0.sroa.4.0.i31.ph
  br i1 %_62.not, label %bb3, label %bb2

bb24:                                             ; preds = %bb20, %bb11
  %.not13 = icmp eq i32 %_6.sroa.0.1, 1114112
  br i1 %.not13, label %bb3, label %bb2

bb3:                                              ; preds = %bb23, %bb24
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_13)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_8)
  %12 = add i64 %i.sroa.0.0, 1
  %13 = add i64 %j.sroa.0.0, -1
  %_16 = icmp ugt i64 %12, %13
  br i1 %_16, label %bb4, label %bb1

bb2:                                              ; preds = %bb23, %bb24
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_13)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_8)
  %self1.i.i.i.i1.i.i56 = load i64, ptr %s, align 8, !range !1052, !alias.scope !1053, !noalias !1066, !noundef !23
  %_6.i.i.i.i2.i.i57 = icmp eq i64 %self1.i.i.i.i1.i.i56, 0
  br i1 %_6.i.i.i.i2.i.i57, label %bb6, label %bb6.sink.split

bb4:                                              ; preds = %bb3
  %self1.i.i.i.i1.i.i61 = load i64, ptr %s, align 8, !range !1052, !alias.scope !1068, !noalias !1081, !noundef !23
  %_6.i.i.i.i2.i.i62 = icmp eq i64 %self1.i.i.i.i1.i.i61, 0
  br i1 %_6.i.i.i.i2.i.i62, label %bb6, label %bb6.sink.split

bb6.sink.split:                                   ; preds = %bb4, %bb2
  %self1.i.i.i.i1.i.i61.sink = phi i64 [ %self1.i.i.i.i1.i.i56, %bb2 ], [ %self1.i.i.i.i1.i.i61, %bb4 ]
  %_0.sroa.0.0.ph = phi i32 [ 0, %bb2 ], [ 1, %bb4 ]
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_23, i64 noundef %self1.i.i.i.i1.i.i61.sink, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !23
  br label %bb6

bb6:                                              ; preds = %bb6.sink.split, %bb4, %bb2
  %_0.sroa.0.0 = phi i32 [ 0, %bb2 ], [ 1, %bb4 ], [ %_0.sroa.0.0.ph, %bb6.sink.split ]
  ret i32 %_0.sroa.0.0
}
