define noundef range(i32 0, 2) i32 @f_gold(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %str.0, i64 noundef %str.1) unnamed_addr #5 {
start:
  %_15 = alloca [16 x i8], align 8
  %_7 = alloca [16 x i8], align 8
  %_21 = getelementptr inbounds nuw i8, ptr %str.0, i64 %str.1
  %0 = getelementptr inbounds nuw i8, ptr %_7, i64 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_7)
  store ptr %str.0, ptr %_7, align 8
  store ptr %_21, ptr %0, align 8
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_2556 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_7, i64 noundef 0) #23
  %.not57 = icmp eq i64 %_2556, 0
  br i1 %.not57, label %bb13, label %bb3

bb13:                                             ; preds = %start, %bb2
  %i.sroa.0.058 = phi i64 [ %6, %bb2 ], [ 0, %start ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1040)
  %ptr.i.i = load ptr, ptr %_7, align 8, !alias.scope !1043, !nonnull !23, !noundef !23
  %end_or_len.i.i = load ptr, ptr %0, align 8, !alias.scope !1043, !nonnull !23, !noundef !23
  %_7.i.i = icmp eq ptr %ptr.i.i, %end_or_len.i.i
  br i1 %_7.i.i, label %bb3, label %bb14.i

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
  %1 = or disjoint i32 %_34.i, %_35.i
  %_13.i = icmp samesign ugt i8 %x.i, -33
  br i1 %_13.i, label %bb6.i, label %bb16

bb3.i:                                            ; preds = %bb14.i
  %_7.i = zext nneg i8 %x.i to i32
  br label %bb16

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
  %2 = or disjoint i32 %y_z.i, %_20.i
  %_21.i = icmp samesign ugt i8 %x.i, -17
  br i1 %_21.i, label %bb8.i, label %bb16

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
  %3 = or disjoint i32 %_27.i, %_25.i
  br label %bb16

bb16:                                             ; preds = %bb3.i, %bb8.i, %bb6.i, %bb4.i
  %_0.sroa.4.0.i.ph = phi i32 [ %1, %bb4.i ], [ %2, %bb6.i ], [ %3, %bb8.i ], [ %_7.i, %bb3.i ]
  %4 = icmp samesign ult i32 %_0.sroa.4.0.i.ph, 1114112
  tail call void @llvm.assume(i1 %4)
  %_4 = icmp eq i32 %_0.sroa.4.0.i.ph, 97
  br i1 %_4, label %bb2, label %bb3

bb3:                                              ; preds = %bb16, %bb2, %bb13, %start
  %i.sroa.0.0.lcssa = phi i64 [ 0, %start ], [ %i.sroa.0.058, %bb13 ], [ %6, %bb2 ], [ %i.sroa.0.058, %bb16 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_7)
  %_10 = shl i64 %i.sroa.0.0.lcssa, 1
  %_9.not = icmp eq i64 %_10, %str.1
  br i1 %_9.not, label %bb6.preheader, label %bb9

bb6.preheader:                                    ; preds = %bb3
  %5 = getelementptr inbounds nuw i8, ptr %_15, i64 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_15)
  store ptr %str.0, ptr %_15, align 8
  store ptr %_21, ptr %5, align 8
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_4061 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_15, i64 noundef %i.sroa.0.0.lcssa) #23
  %.not762 = icmp eq i64 %_4061, 0
  br i1 %.not762, label %bb19, label %bb8

bb2:                                              ; preds = %bb16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_7)
  %6 = add i64 %i.sroa.0.058, 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_7)
  store ptr %str.0, ptr %_7, align 8
  store ptr %_21, ptr %0, align 8
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_25 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_7, i64 noundef %6) #23
  %.not = icmp eq i64 %_25, 0
  br i1 %.not, label %bb13, label %bb3

bb19:                                             ; preds = %bb6.preheader, %bb7
  %i.sroa.0.163 = phi i64 [ %11, %bb7 ], [ %i.sroa.0.0.lcssa, %bb6.preheader ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1046)
  %ptr.i.i8 = load ptr, ptr %_15, align 8, !alias.scope !1049, !nonnull !23, !noundef !23
  %end_or_len.i.i9 = load ptr, ptr %5, align 8, !alias.scope !1049, !nonnull !23, !noundef !23
  %_7.i.i10 = icmp eq ptr %ptr.i.i8, %end_or_len.i.i9
  br i1 %_7.i.i10, label %bb8, label %bb14.i11

bb14.i11:                                         ; preds = %bb19
  %x.i13 = load i8, ptr %ptr.i.i8, align 1, !noalias !1046, !noundef !23
  %_6.i14 = icmp sgt i8 %x.i13, -1
  br i1 %_6.i14, label %bb3.i47, label %bb4.i15

bb4.i15:                                          ; preds = %bb14.i11
  %_18.i.i12 = getelementptr inbounds nuw i8, ptr %ptr.i.i8, i64 1
  %_30.i16 = and i8 %x.i13, 31
  %init.i17 = zext nneg i8 %_30.i16 to i32
  %_7.i10.i18 = icmp ne ptr %_18.i.i12, %end_or_len.i.i9
  tail call void @llvm.assume(i1 %_7.i10.i18)
  %y.i20 = load i8, ptr %_18.i.i12, align 1, !noalias !1046, !noundef !23
  %_34.i21 = shl nuw nsw i32 %init.i17, 6
  %_36.i22 = and i8 %y.i20, 63
  %_35.i23 = zext nneg i8 %_36.i22 to i32
  %7 = or disjoint i32 %_34.i21, %_35.i23
  %_13.i24 = icmp samesign ugt i8 %x.i13, -33
  br i1 %_13.i24, label %bb6.i27, label %bb22

bb3.i47:                                          ; preds = %bb14.i11
  %_7.i48 = zext nneg i8 %x.i13 to i32
  br label %bb22

bb6.i27:                                          ; preds = %bb4.i15
  %_18.i12.i19 = getelementptr inbounds nuw i8, ptr %ptr.i.i8, i64 2
  %_7.i17.i28 = icmp ne ptr %_18.i12.i19, %end_or_len.i.i9
  tail call void @llvm.assume(i1 %_7.i17.i28)
  %z.i30 = load i8, ptr %_18.i12.i19, align 1, !noalias !1046, !noundef !23
  %_40.i31 = shl nuw nsw i32 %_35.i23, 6
  %_42.i32 = and i8 %z.i30, 63
  %_41.i33 = zext nneg i8 %_42.i32 to i32
  %y_z.i34 = or disjoint i32 %_40.i31, %_41.i33
  %_20.i35 = shl nuw nsw i32 %init.i17, 12
  %8 = or disjoint i32 %y_z.i34, %_20.i35
  %_21.i36 = icmp samesign ugt i8 %x.i13, -17
  br i1 %_21.i36, label %bb8.i37, label %bb22

bb8.i37:                                          ; preds = %bb6.i27
  %_18.i19.i29 = getelementptr inbounds nuw i8, ptr %ptr.i.i8, i64 3
  %_7.i24.i38 = icmp ne ptr %_18.i19.i29, %end_or_len.i.i9
  tail call void @llvm.assume(i1 %_7.i24.i38)
  %w.i40 = load i8, ptr %_18.i19.i29, align 1, !noalias !1046, !noundef !23
  %_26.i41 = shl nuw nsw i32 %init.i17, 18
  %_25.i42 = and i32 %_26.i41, 1835008
  %_46.i43 = shl nuw nsw i32 %y_z.i34, 6
  %_48.i44 = and i8 %w.i40, 63
  %_47.i45 = zext nneg i8 %_48.i44 to i32
  %_27.i46 = or disjoint i32 %_46.i43, %_47.i45
  %9 = or disjoint i32 %_27.i46, %_25.i42
  br label %bb22

bb22:                                             ; preds = %bb3.i47, %bb8.i37, %bb6.i27, %bb4.i15
  %_0.sroa.4.0.i25.ph = phi i32 [ %7, %bb4.i15 ], [ %8, %bb6.i27 ], [ %9, %bb8.i37 ], [ %_7.i48, %bb3.i47 ]
  %10 = icmp samesign ult i32 %_0.sroa.4.0.i25.ph, 1114112
  tail call void @llvm.assume(i1 %10)
  %_12 = icmp eq i32 %_0.sroa.4.0.i25.ph, 98
  br i1 %_12, label %bb7, label %bb8

bb8:                                              ; preds = %bb22, %bb7, %bb19, %bb6.preheader
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_15)
  br label %bb9

bb7:                                              ; preds = %bb22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_15)
  %11 = add i64 %i.sroa.0.163, 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_15)
  store ptr %str.0, ptr %_15, align 8
  store ptr %_21, ptr %5, align 8
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_40 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_15, i64 noundef %11) #23
  %.not7 = icmp eq i64 %_40, 0
  br i1 %.not7, label %bb19, label %bb8

bb9:                                              ; preds = %bb3, %bb8
  %_0.sroa.0.0 = phi i32 [ 1, %bb8 ], [ 0, %bb3 ]
  ret i32 %_0.sroa.0.0
}
