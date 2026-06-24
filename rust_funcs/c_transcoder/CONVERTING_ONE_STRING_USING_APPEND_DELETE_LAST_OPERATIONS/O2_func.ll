define noundef range(i32 0, 2) i32 @f_gold(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %str1.0, i64 noundef %str1.1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %str2.0, i64 noundef %str2.1, i32 noundef %k) unnamed_addr #5 {
start:
  %_21 = alloca [16 x i8], align 8
  %_18 = alloca [16 x i8], align 8
  %str1_len = trunc i64 %str1.1 to i32
  %str2_len = trunc i64 %str2.1 to i32
  %_9 = add i32 %str2_len, %str1_len
  %_8 = icmp slt i32 %_9, %k
  br i1 %_8, label %bb11, label %bb2

bb2:                                              ; preds = %start
  %x.y.i = tail call noundef i32 @llvm.smin.i32(i32 %str1_len, i32 %str2_len)
  %iter1 = sext i32 %x.y.i to i64
  %_3057.not = icmp eq i32 %x.y.i, 0
  br i1 %_3057.not, label %bb8, label %bb12.lr.ph

bb12.lr.ph:                                       ; preds = %bb2
  %_37 = getelementptr inbounds nuw i8, ptr %str1.0, i64 %str1.1
  %0 = getelementptr inbounds nuw i8, ptr %_18, i64 8
  %_51 = getelementptr inbounds nuw i8, ptr %str2.0, i64 %str2.1
  %1 = getelementptr inbounds nuw i8, ptr %_21, i64 8
  br label %bb12

bb12:                                             ; preds = %bb12.lr.ph, %bb6
  %iter.sroa.0.058 = phi i64 [ 0, %bb12.lr.ph ], [ %2, %bb6 ]
  %2 = add nuw i64 %iter.sroa.0.058, 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_18)
  store ptr %str1.0, ptr %_18, align 8
  store ptr %_37, ptr %0, align 8
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_41 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_18, i64 noundef %iter.sroa.0.058) #23
  %.not = icmp eq i64 %_41, 0
  br i1 %.not, label %bb17, label %bb15

bb8:                                              ; preds = %bb6, %bb2, %bb7
  %_25 = sub i32 %k, %_9
  %3 = and i32 %_25, 1
  %. = xor i32 %3, 1
  br label %bb11

bb17:                                             ; preds = %bb12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1040)
  %ptr.i.i = load ptr, ptr %_18, align 8, !alias.scope !1043, !nonnull !23, !noundef !23
  %end_or_len.i.i = load ptr, ptr %0, align 8, !alias.scope !1043, !nonnull !23, !noundef !23
  %_7.i.i.not = icmp eq ptr %ptr.i.i, %end_or_len.i.i
  br i1 %_7.i.i.not, label %bb15, label %bb14.i

bb14.i:                                           ; preds = %bb17
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
  %4 = or disjoint i32 %_34.i, %_35.i
  %_13.i = icmp samesign ugt i8 %x.i, -33
  br i1 %_13.i, label %bb6.i, label %bb15

bb3.i:                                            ; preds = %bb14.i
  %_7.i = zext nneg i8 %x.i to i32
  br label %bb15

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
  %5 = or disjoint i32 %y_z.i, %_20.i
  %_21.i = icmp samesign ugt i8 %x.i, -17
  br i1 %_21.i, label %bb8.i, label %bb15

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
  %6 = or disjoint i32 %_27.i, %_25.i
  br label %bb15

bb15:                                             ; preds = %bb8.i, %bb6.i, %bb3.i, %bb4.i, %bb17, %bb12
  %_16.sroa.0.1 = phi i32 [ 1114112, %bb12 ], [ %_7.i, %bb3.i ], [ %6, %bb8.i ], [ %5, %bb6.i ], [ %4, %bb4.i ], [ 1114112, %bb17 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_21)
  store ptr %str2.0, ptr %_21, align 8
  store ptr %_51, ptr %1, align 8
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_55 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_21, i64 noundef %iter.sroa.0.058) #23
  %.not9 = icmp eq i64 %_55, 0
  br i1 %.not9, label %bb24, label %bb28

bb24:                                             ; preds = %bb15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1046)
  %ptr.i.i12 = load ptr, ptr %_21, align 8, !alias.scope !1049, !nonnull !23, !noundef !23
  %end_or_len.i.i13 = load ptr, ptr %1, align 8, !alias.scope !1049, !nonnull !23, !noundef !23
  %_7.i.i14 = icmp eq ptr %ptr.i.i12, %end_or_len.i.i13
  br i1 %_7.i.i14, label %bb28, label %bb14.i15

bb14.i15:                                         ; preds = %bb24
  %x.i17 = load i8, ptr %ptr.i.i12, align 1, !noalias !1046, !noundef !23
  %_6.i18 = icmp sgt i8 %x.i17, -1
  br i1 %_6.i18, label %bb3.i51, label %bb4.i19

bb4.i19:                                          ; preds = %bb14.i15
  %_18.i.i16 = getelementptr inbounds nuw i8, ptr %ptr.i.i12, i64 1
  %_30.i20 = and i8 %x.i17, 31
  %init.i21 = zext nneg i8 %_30.i20 to i32
  %_7.i10.i22 = icmp ne ptr %_18.i.i16, %end_or_len.i.i13
  tail call void @llvm.assume(i1 %_7.i10.i22)
  %y.i24 = load i8, ptr %_18.i.i16, align 1, !noalias !1046, !noundef !23
  %_34.i25 = shl nuw nsw i32 %init.i21, 6
  %_36.i26 = and i8 %y.i24, 63
  %_35.i27 = zext nneg i8 %_36.i26 to i32
  %7 = or disjoint i32 %_34.i25, %_35.i27
  %_13.i28 = icmp samesign ugt i8 %x.i17, -33
  br i1 %_13.i28, label %bb6.i31, label %bb27

bb3.i51:                                          ; preds = %bb14.i15
  %_7.i52 = zext nneg i8 %x.i17 to i32
  br label %bb27

bb6.i31:                                          ; preds = %bb4.i19
  %_18.i12.i23 = getelementptr inbounds nuw i8, ptr %ptr.i.i12, i64 2
  %_7.i17.i32 = icmp ne ptr %_18.i12.i23, %end_or_len.i.i13
  tail call void @llvm.assume(i1 %_7.i17.i32)
  %z.i34 = load i8, ptr %_18.i12.i23, align 1, !noalias !1046, !noundef !23
  %_40.i35 = shl nuw nsw i32 %_35.i27, 6
  %_42.i36 = and i8 %z.i34, 63
  %_41.i37 = zext nneg i8 %_42.i36 to i32
  %y_z.i38 = or disjoint i32 %_40.i35, %_41.i37
  %_20.i39 = shl nuw nsw i32 %init.i21, 12
  %8 = or disjoint i32 %y_z.i38, %_20.i39
  %_21.i40 = icmp samesign ugt i8 %x.i17, -17
  br i1 %_21.i40, label %bb8.i41, label %bb27

bb8.i41:                                          ; preds = %bb6.i31
  %_18.i19.i33 = getelementptr inbounds nuw i8, ptr %ptr.i.i12, i64 3
  %_7.i24.i42 = icmp ne ptr %_18.i19.i33, %end_or_len.i.i13
  tail call void @llvm.assume(i1 %_7.i24.i42)
  %w.i44 = load i8, ptr %_18.i19.i33, align 1, !noalias !1046, !noundef !23
  %_26.i45 = shl nuw nsw i32 %init.i21, 18
  %_25.i46 = and i32 %_26.i45, 1835008
  %_46.i47 = shl nuw nsw i32 %y_z.i38, 6
  %_48.i48 = and i8 %w.i44, 63
  %_47.i49 = zext nneg i8 %_48.i48 to i32
  %_27.i50 = or disjoint i32 %_46.i47, %_47.i49
  %9 = or disjoint i32 %_27.i50, %_25.i46
  br label %bb27

bb27:                                             ; preds = %bb3.i51, %bb8.i41, %bb6.i31, %bb4.i19
  %_0.sroa.4.0.i29.ph = phi i32 [ %7, %bb4.i19 ], [ %8, %bb6.i31 ], [ %9, %bb8.i41 ], [ %_7.i52, %bb3.i51 ]
  %10 = icmp samesign ult i32 %_0.sroa.4.0.i29.ph, 1114112
  tail call void @llvm.assume(i1 %10)
  %_15 = icmp eq i32 %_16.sroa.0.1, %_0.sroa.4.0.i29.ph
  br i1 %_15, label %bb6, label %bb7

bb28:                                             ; preds = %bb24, %bb15
  %.not11 = icmp eq i32 %_16.sroa.0.1, 1114112
  br i1 %.not11, label %bb6, label %bb7

bb7:                                              ; preds = %bb27, %bb28
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_21)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_18)
  br label %bb8

bb6:                                              ; preds = %bb27, %bb28
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_21)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_18)
  %exitcond.not = icmp eq i64 %2, %iter1
  br i1 %exitcond.not, label %bb8, label %bb12

bb11:                                             ; preds = %bb8, %start
  %_0.sroa.0.0 = phi i32 [ 1, %start ], [ %., %bb8 ]
  ret i32 %_0.sroa.0.0
}
