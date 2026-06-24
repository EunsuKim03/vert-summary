define noundef i32 @f_gold(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %s.0, i64 noundef %s.1, i32 noundef %k) unnamed_addr #1 {
start:
  %_18 = alloca [16 x i8], align 8
  %_13 = alloca [16 x i8], align 8
  %_2763.not = icmp eq i64 %s.1, 0
  br i1 %_2763.not, label %bb10, label %bb9.lr.ph

bb9.lr.ph:                                        ; preds = %start
  %_34 = getelementptr inbounds nuw i8, ptr %s.0, i64 %s.1
  %0 = getelementptr inbounds nuw i8, ptr %_13, i64 8
  %1 = getelementptr inbounds nuw i8, ptr %_18, i64 8
  br label %bb9

bb10:                                             ; preds = %bb22, %start
  %c.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %c.sroa.0.1, %bb22 ]
  %c2.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %c2.sroa.0.1, %bb22 ]
  %c1.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %c1.sroa.0.1, %bb22 ]
  %_20 = mul i32 %c.sroa.0.0.lcssa, %k
  %_25 = add i32 %k, -1
  %_24 = mul i32 %_25, %k
  %_23 = sdiv i32 %_24, 2
  %_22 = mul i32 %c2.sroa.0.0.lcssa, %_23
  %_21 = mul i32 %_22, %c1.sroa.0.0.lcssa
  %_0 = add i32 %_21, %_20
  ret i32 %_0

bb9:                                              ; preds = %bb9.lr.ph, %bb22
  %c1.sroa.0.067 = phi i32 [ 0, %bb9.lr.ph ], [ %c1.sroa.0.1, %bb22 ]
  %c2.sroa.0.066 = phi i32 [ 0, %bb9.lr.ph ], [ %c2.sroa.0.1, %bb22 ]
  %c.sroa.0.065 = phi i32 [ 0, %bb9.lr.ph ], [ %c.sroa.0.1, %bb22 ]
  %iter.sroa.0.064 = phi i64 [ 0, %bb9.lr.ph ], [ %2, %bb22 ]
  %2 = add nuw i64 %iter.sroa.0.064, 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_13)
  store ptr %s.0, ptr %_13, align 8
  store ptr %_34, ptr %0, align 8
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_38 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_13, i64 noundef %iter.sroa.0.064) #22
  %.not = icmp eq i64 %_38, 0
  br i1 %.not, label %bb13, label %bb23, !prof !1040

bb13:                                             ; preds = %bb9
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1041)
  %ptr.i.i = load ptr, ptr %_13, align 8, !alias.scope !1044, !nonnull !23, !noundef !23
  %end_or_len.i.i = load ptr, ptr %0, align 8, !alias.scope !1044, !nonnull !23, !noundef !23
  %_7.i.i = icmp eq ptr %ptr.i.i, %end_or_len.i.i
  br i1 %_7.i.i, label %bb23, label %bb14.i

bb14.i:                                           ; preds = %bb13
  %x.i = load i8, ptr %ptr.i.i, align 1, !noalias !1041, !noundef !23
  %_6.i = icmp sgt i8 %x.i, -1
  br i1 %_6.i, label %bb3.i, label %bb4.i

bb4.i:                                            ; preds = %bb14.i
  %_18.i.i = getelementptr inbounds nuw i8, ptr %ptr.i.i, i64 1
  %_30.i = and i8 %x.i, 31
  %init.i = zext nneg i8 %_30.i to i32
  %_7.i10.i = icmp ne ptr %_18.i.i, %end_or_len.i.i
  tail call void @llvm.assume(i1 %_7.i10.i)
  %y.i = load i8, ptr %_18.i.i, align 1, !noalias !1041, !noundef !23
  %_34.i = shl nuw nsw i32 %init.i, 6
  %_36.i = and i8 %y.i, 63
  %_35.i = zext nneg i8 %_36.i to i32
  %3 = or disjoint i32 %_34.i, %_35.i
  %_13.i = icmp samesign ugt i8 %x.i, -33
  br i1 %_13.i, label %bb6.i, label %bb16

bb3.i:                                            ; preds = %bb14.i
  %_7.i = zext nneg i8 %x.i to i32
  br label %bb16

bb6.i:                                            ; preds = %bb4.i
  %_18.i12.i = getelementptr inbounds nuw i8, ptr %ptr.i.i, i64 2
  %_7.i17.i = icmp ne ptr %_18.i12.i, %end_or_len.i.i
  tail call void @llvm.assume(i1 %_7.i17.i)
  %z.i = load i8, ptr %_18.i12.i, align 1, !noalias !1041, !noundef !23
  %_40.i = shl nuw nsw i32 %_35.i, 6
  %_42.i = and i8 %z.i, 63
  %_41.i = zext nneg i8 %_42.i to i32
  %y_z.i = or disjoint i32 %_40.i, %_41.i
  %_20.i = shl nuw nsw i32 %init.i, 12
  %4 = or disjoint i32 %y_z.i, %_20.i
  %_21.i = icmp samesign ugt i8 %x.i, -17
  br i1 %_21.i, label %bb8.i, label %bb16

bb8.i:                                            ; preds = %bb6.i
  %_18.i19.i = getelementptr inbounds nuw i8, ptr %ptr.i.i, i64 3
  %_7.i24.i = icmp ne ptr %_18.i19.i, %end_or_len.i.i
  tail call void @llvm.assume(i1 %_7.i24.i)
  %w.i = load i8, ptr %_18.i19.i, align 1, !noalias !1041, !noundef !23
  %_26.i = shl nuw nsw i32 %init.i, 18
  %_25.i = and i32 %_26.i, 1835008
  %_46.i = shl nuw nsw i32 %y_z.i, 6
  %_48.i = and i8 %w.i, 63
  %_47.i = zext nneg i8 %_48.i to i32
  %_27.i = or disjoint i32 %_46.i, %_47.i
  %5 = or disjoint i32 %_27.i, %_25.i
  br label %bb16

bb16:                                             ; preds = %bb3.i, %bb8.i, %bb6.i, %bb4.i
  %_0.sroa.4.0.i.ph = phi i32 [ %3, %bb4.i ], [ %4, %bb6.i ], [ %5, %bb8.i ], [ %_7.i, %bb3.i ]
  %6 = icmp samesign ult i32 %_0.sroa.4.0.i.ph, 1114112
  tail call void @llvm.assume(i1 %6)
  %_9 = icmp eq i32 %_0.sroa.4.0.i.ph, 97
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_13)
  %7 = zext i1 %_9 to i32
  %c1.sroa.0.1 = add i32 %c1.sroa.0.067, %7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_18)
  store ptr %s.0, ptr %_18, align 8
  store ptr %_34, ptr %1, align 8
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_53 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_18, i64 noundef %iter.sroa.0.064) #22
  %.not8 = icmp eq i64 %_53, 0
  br i1 %.not8, label %bb19, label %bb24, !prof !1040

bb23:                                             ; preds = %bb13, %bb9
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_b9949057d1eb3f9dbc9027783aeb5a26) #18
  unreachable

bb19:                                             ; preds = %bb16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1047)
  %ptr.i.i9 = load ptr, ptr %_18, align 8, !alias.scope !1050, !nonnull !23, !noundef !23
  %end_or_len.i.i10 = load ptr, ptr %1, align 8, !alias.scope !1050, !nonnull !23, !noundef !23
  %_7.i.i11 = icmp eq ptr %ptr.i.i9, %end_or_len.i.i10
  br i1 %_7.i.i11, label %bb24, label %bb14.i12

bb14.i12:                                         ; preds = %bb19
  %x.i14 = load i8, ptr %ptr.i.i9, align 1, !noalias !1047, !noundef !23
  %_6.i15 = icmp sgt i8 %x.i14, -1
  br i1 %_6.i15, label %bb3.i48, label %bb4.i16

bb4.i16:                                          ; preds = %bb14.i12
  %_18.i.i13 = getelementptr inbounds nuw i8, ptr %ptr.i.i9, i64 1
  %_30.i17 = and i8 %x.i14, 31
  %init.i18 = zext nneg i8 %_30.i17 to i32
  %_7.i10.i19 = icmp ne ptr %_18.i.i13, %end_or_len.i.i10
  tail call void @llvm.assume(i1 %_7.i10.i19)
  %y.i21 = load i8, ptr %_18.i.i13, align 1, !noalias !1047, !noundef !23
  %_34.i22 = shl nuw nsw i32 %init.i18, 6
  %_36.i23 = and i8 %y.i21, 63
  %_35.i24 = zext nneg i8 %_36.i23 to i32
  %8 = or disjoint i32 %_34.i22, %_35.i24
  %_13.i25 = icmp samesign ugt i8 %x.i14, -33
  br i1 %_13.i25, label %bb6.i28, label %bb22

bb3.i48:                                          ; preds = %bb14.i12
  %_7.i49 = zext nneg i8 %x.i14 to i32
  br label %bb22

bb6.i28:                                          ; preds = %bb4.i16
  %_18.i12.i20 = getelementptr inbounds nuw i8, ptr %ptr.i.i9, i64 2
  %_7.i17.i29 = icmp ne ptr %_18.i12.i20, %end_or_len.i.i10
  tail call void @llvm.assume(i1 %_7.i17.i29)
  %z.i31 = load i8, ptr %_18.i12.i20, align 1, !noalias !1047, !noundef !23
  %_40.i32 = shl nuw nsw i32 %_35.i24, 6
  %_42.i33 = and i8 %z.i31, 63
  %_41.i34 = zext nneg i8 %_42.i33 to i32
  %y_z.i35 = or disjoint i32 %_40.i32, %_41.i34
  %_20.i36 = shl nuw nsw i32 %init.i18, 12
  %9 = or disjoint i32 %y_z.i35, %_20.i36
  %_21.i37 = icmp samesign ugt i8 %x.i14, -17
  br i1 %_21.i37, label %bb8.i38, label %bb22

bb8.i38:                                          ; preds = %bb6.i28
  %_18.i19.i30 = getelementptr inbounds nuw i8, ptr %ptr.i.i9, i64 3
  %_7.i24.i39 = icmp ne ptr %_18.i19.i30, %end_or_len.i.i10
  tail call void @llvm.assume(i1 %_7.i24.i39)
  %w.i41 = load i8, ptr %_18.i19.i30, align 1, !noalias !1047, !noundef !23
  %_26.i42 = shl nuw nsw i32 %init.i18, 18
  %_25.i43 = and i32 %_26.i42, 1835008
  %_46.i44 = shl nuw nsw i32 %y_z.i35, 6
  %_48.i45 = and i8 %w.i41, 63
  %_47.i46 = zext nneg i8 %_48.i45 to i32
  %_27.i47 = or disjoint i32 %_46.i44, %_47.i46
  %10 = or disjoint i32 %_27.i47, %_25.i43
  br label %bb22

bb22:                                             ; preds = %bb3.i48, %bb8.i38, %bb6.i28, %bb4.i16
  %_0.sroa.4.0.i26.ph = phi i32 [ %8, %bb4.i16 ], [ %9, %bb6.i28 ], [ %10, %bb8.i38 ], [ %_7.i49, %bb3.i48 ]
  %11 = icmp samesign ult i32 %_0.sroa.4.0.i26.ph, 1114112
  tail call void @llvm.assume(i1 %11)
  %_14 = icmp eq i32 %_0.sroa.4.0.i26.ph, 98
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_18)
  %12 = select i1 %_14, i32 %c1.sroa.0.1, i32 0
  %c.sroa.0.1 = add i32 %c.sroa.0.065, %12
  %13 = zext i1 %_14 to i32
  %c2.sroa.0.1 = add i32 %c2.sroa.0.066, %13
  %exitcond.not = icmp eq i64 %2, %s.1
  br i1 %exitcond.not, label %bb10, label %bb9

bb24:                                             ; preds = %bb19, %bb16
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_96534126341073df20640405862ef689) #18
  unreachable
}
