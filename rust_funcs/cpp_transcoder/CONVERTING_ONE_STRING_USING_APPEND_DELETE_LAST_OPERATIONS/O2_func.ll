define noundef range(i32 0, 2) i32 @f_gold(ptr dead_on_return noalias noundef readonly align 8 captures(none) dereferenceable(24) %str1, ptr dead_on_return noalias noundef readonly align 8 captures(none) dereferenceable(24) %str2, i32 noundef %k) unnamed_addr #5 personality ptr @rust_eh_personality {
start:
  %_22 = alloca [16 x i8], align 8
  %_18 = alloca [16 x i8], align 8
  %0 = getelementptr inbounds nuw i8, ptr %str1, i64 16
  %_6 = load i64, ptr %0, align 8, !noundef !23
  %_34 = icmp sgt i64 %_6, -1
  tail call void @llvm.assume(i1 %_34)
  %1 = getelementptr inbounds nuw i8, ptr %str2, i64 16
  %_7 = load i64, ptr %1, align 8, !noundef !23
  %_35 = icmp sgt i64 %_7, -1
  tail call void @llvm.assume(i1 %_35)
  %_5 = add nuw i64 %_7, %_6
  %_8 = sext i32 %k to i64
  %_4 = icmp ult i64 %_5, %_8
  br i1 %_4, label %bb12, label %bb2

bb2:                                              ; preds = %start
  %_0.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %_7, i64 %_6)
  %_3889.not = icmp eq i64 %_0.sroa.0.0.i, 0
  br i1 %_3889.not, label %bb8, label %bb18.lr.ph

bb18.lr.ph:                                       ; preds = %bb2
  %2 = getelementptr inbounds nuw i8, ptr %str1, i64 8
  %_45 = load ptr, ptr %2, align 8, !nonnull !23, !noundef !23
  %_52 = getelementptr inbounds nuw i8, ptr %_45, i64 %_6
  %3 = getelementptr inbounds nuw i8, ptr %_18, i64 8
  %4 = getelementptr inbounds nuw i8, ptr %str2, i64 8
  %_66 = load ptr, ptr %4, align 8, !nonnull !23
  %_73 = getelementptr inbounds nuw i8, ptr %_66, i64 %_7
  %5 = getelementptr inbounds nuw i8, ptr %_22, i64 8
  br label %bb18

bb18:                                             ; preds = %bb18.lr.ph, %bb6
  %iter.sroa.0.090 = phi i64 [ 0, %bb18.lr.ph ], [ %6, %bb6 ]
  %6 = add nuw nsw i64 %iter.sroa.0.090, 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_18)
  store ptr %_45, ptr %_18, align 8
  store ptr %_52, ptr %3, align 8
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_56 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_18, i64 noundef %iter.sroa.0.090)
  %.not = icmp eq i64 %_56, 0
  br i1 %.not, label %bb23, label %bb21

bb8:                                              ; preds = %bb6, %bb2, %bb7
  %_29 = trunc i64 %_6 to i32
  %_31 = trunc i64 %_7 to i32
  %7 = add i32 %_29, %_31
  %_27 = sub i32 %k, %7
  %8 = and i32 %_27, 1
  %_24 = icmp eq i32 %8, 0
  br i1 %_24, label %bb12, label %bb10

bb23:                                             ; preds = %bb18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1040)
  %ptr.i.i = load ptr, ptr %_18, align 8, !alias.scope !1043, !nonnull !23, !noundef !23
  %end_or_len.i.i = load ptr, ptr %3, align 8, !alias.scope !1043, !nonnull !23, !noundef !23
  %_7.i.i.not = icmp eq ptr %ptr.i.i, %end_or_len.i.i
  br i1 %_7.i.i.not, label %bb21, label %bb14.i

bb14.i:                                           ; preds = %bb23
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
  %9 = or disjoint i32 %_34.i, %_35.i
  %_13.i = icmp samesign ugt i8 %x.i, -33
  br i1 %_13.i, label %bb6.i, label %bb21

bb3.i:                                            ; preds = %bb14.i
  %_7.i = zext nneg i8 %x.i to i32
  br label %bb21

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
  %10 = or disjoint i32 %y_z.i, %_20.i
  %_21.i = icmp samesign ugt i8 %x.i, -17
  br i1 %_21.i, label %bb8.i, label %bb21

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
  %11 = or disjoint i32 %_27.i, %_25.i
  br label %bb21

bb21:                                             ; preds = %bb23, %bb4.i, %bb3.i, %bb6.i, %bb8.i, %bb18
  %_16.sroa.0.1 = phi i32 [ 1114112, %bb18 ], [ %_7.i, %bb3.i ], [ %11, %bb8.i ], [ %10, %bb6.i ], [ %9, %bb4.i ], [ 1114112, %bb23 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_22)
  store ptr %_66, ptr %_22, align 8
  store ptr %_73, ptr %5, align 8
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_77 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_22, i64 noundef %iter.sroa.0.090)
  %.not9 = icmp eq i64 %_77, 0
  br i1 %.not9, label %bb31, label %bb29.thread

bb31:                                             ; preds = %bb21
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1046)
  %ptr.i.i15 = load ptr, ptr %_22, align 8, !alias.scope !1049, !nonnull !23, !noundef !23
  %end_or_len.i.i16 = load ptr, ptr %5, align 8, !alias.scope !1049, !nonnull !23, !noundef !23
  %_7.i.i17.not = icmp eq ptr %ptr.i.i15, %end_or_len.i.i16
  br i1 %_7.i.i17.not, label %bb29.thread91, label %bb14.i18

bb14.i18:                                         ; preds = %bb31
  %x.i20 = load i8, ptr %ptr.i.i15, align 1, !noalias !1046, !noundef !23
  %_6.i21 = icmp sgt i8 %x.i20, -1
  br i1 %_6.i21, label %bb3.i54, label %bb4.i22

bb4.i22:                                          ; preds = %bb14.i18
  %_18.i.i19 = getelementptr inbounds nuw i8, ptr %ptr.i.i15, i64 1
  %_30.i23 = and i8 %x.i20, 31
  %init.i24 = zext nneg i8 %_30.i23 to i32
  %_7.i10.i25 = icmp ne ptr %_18.i.i19, %end_or_len.i.i16
  tail call void @llvm.assume(i1 %_7.i10.i25)
  %y.i27 = load i8, ptr %_18.i.i19, align 1, !noalias !1046, !noundef !23
  %_34.i28 = shl nuw nsw i32 %init.i24, 6
  %_36.i29 = and i8 %y.i27, 63
  %_35.i30 = zext nneg i8 %_36.i29 to i32
  %12 = or disjoint i32 %_34.i28, %_35.i30
  %_13.i31 = icmp samesign ugt i8 %x.i20, -33
  br i1 %_13.i31, label %bb6.i34, label %bb29

bb3.i54:                                          ; preds = %bb14.i18
  %_7.i55 = zext nneg i8 %x.i20 to i32
  br label %bb29

bb6.i34:                                          ; preds = %bb4.i22
  %_18.i12.i26 = getelementptr inbounds nuw i8, ptr %ptr.i.i15, i64 2
  %_7.i17.i35 = icmp ne ptr %_18.i12.i26, %end_or_len.i.i16
  tail call void @llvm.assume(i1 %_7.i17.i35)
  %z.i37 = load i8, ptr %_18.i12.i26, align 1, !noalias !1046, !noundef !23
  %_40.i38 = shl nuw nsw i32 %_35.i30, 6
  %_42.i39 = and i8 %z.i37, 63
  %_41.i40 = zext nneg i8 %_42.i39 to i32
  %y_z.i41 = or disjoint i32 %_40.i38, %_41.i40
  %_20.i42 = shl nuw nsw i32 %init.i24, 12
  %13 = or disjoint i32 %y_z.i41, %_20.i42
  %_21.i43 = icmp samesign ugt i8 %x.i20, -17
  br i1 %_21.i43, label %bb8.i44, label %bb29

bb8.i44:                                          ; preds = %bb6.i34
  %_18.i19.i36 = getelementptr inbounds nuw i8, ptr %ptr.i.i15, i64 3
  %_7.i24.i45 = icmp ne ptr %_18.i19.i36, %end_or_len.i.i16
  tail call void @llvm.assume(i1 %_7.i24.i45)
  %w.i47 = load i8, ptr %_18.i19.i36, align 1, !noalias !1046, !noundef !23
  %_26.i48 = shl nuw nsw i32 %init.i24, 18
  %_25.i49 = and i32 %_26.i48, 1835008
  %_46.i50 = shl nuw nsw i32 %y_z.i41, 6
  %_48.i51 = and i8 %w.i47, 63
  %_47.i52 = zext nneg i8 %_48.i51 to i32
  %_27.i53 = or disjoint i32 %_46.i50, %_47.i52
  %14 = or disjoint i32 %_27.i53, %_25.i49
  br label %bb29

bb29:                                             ; preds = %bb4.i22, %bb3.i54, %bb6.i34, %bb8.i44
  %spec.select13 = phi i32 [ %_7.i55, %bb3.i54 ], [ %14, %bb8.i44 ], [ %13, %bb6.i34 ], [ %12, %bb4.i22 ]
  %.not10 = icmp eq i32 %_16.sroa.0.1, 1114112
  br i1 %.not10, label %bb36, label %bb37

bb29.thread91:                                    ; preds = %bb31
  %.not1093 = icmp eq i32 %_16.sroa.0.1, 1114112
  br i1 %.not1093, label %bb6, label %bb7

bb29.thread:                                      ; preds = %bb21
  %.not1083 = icmp eq i32 %_16.sroa.0.1, 1114112
  br i1 %.not1083, label %bb6, label %bb7

bb37:                                             ; preds = %bb29
  %.not11 = icmp ne i32 %spec.select13, 1114112
  %15 = icmp eq i32 %_16.sroa.0.1, %spec.select13
  %or.cond = select i1 %.not11, i1 %15, i1 false
  br i1 %or.cond, label %bb6, label %bb7

bb36:                                             ; preds = %bb29
  %16 = icmp eq i32 %spec.select13, 1114112
  br i1 %16, label %bb6, label %bb7

bb7:                                              ; preds = %bb29.thread91, %bb29.thread, %bb37, %bb36
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_22)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_18)
  br label %bb8

bb6:                                              ; preds = %bb29.thread91, %bb37, %bb29.thread, %bb36
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_22)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_18)
  %exitcond.not = icmp eq i64 %6, %_0.sroa.0.0.i
  br i1 %exitcond.not, label %bb8, label %bb18

bb10:                                             ; preds = %bb8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1052)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1055)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1058)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1061)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1064)
  %self1.i.i.i.i1.i.i57 = load i64, ptr %str2, align 8, !range !1067, !alias.scope !1068, !noalias !1071, !noundef !23
  %_6.i.i.i.i2.i.i58 = icmp eq i64 %self1.i.i.i.i1.i.i57, 0
  br i1 %_6.i.i.i.i2.i.i58, label %bb11, label %bb2.i.i.i3.i.i59

bb2.i.i.i3.i.i59:                                 ; preds = %bb10
  %17 = getelementptr inbounds nuw i8, ptr %str2, i64 8
  %self3.i.i.i.i4.i.i60 = load ptr, ptr %17, align 8, !alias.scope !1068, !noalias !1071, !nonnull !23, !noundef !23
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i60, i64 noundef %self1.i.i.i.i1.i.i57, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !1073
  br label %bb11

bb11:                                             ; preds = %bb2.i.i.i3.i.i59, %bb10
  %self1.i.i.i.i1.i.i67 = load i64, ptr %str1, align 8, !range !1067, !alias.scope !1074, !noalias !1087, !noundef !23
  %_6.i.i.i.i2.i.i68 = icmp eq i64 %self1.i.i.i.i1.i.i67, 0
  br i1 %_6.i.i.i.i2.i.i68, label %bb14, label %bb14.sink.split

bb14.sink.split:                                  ; preds = %bb11, %bb13
  %self1.i.i.i.i1.i.i77.sink = phi i64 [ %self1.i.i.i.i1.i.i77, %bb13 ], [ %self1.i.i.i.i1.i.i67, %bb11 ]
  %_0.sroa.0.0.ph = phi i32 [ 1, %bb13 ], [ 0, %bb11 ]
  %18 = getelementptr inbounds nuw i8, ptr %str1, i64 8
  %self3.i.i.i.i4.i.i80 = load ptr, ptr %18, align 8, !noalias !23, !nonnull !23, !noundef !23
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i80, i64 noundef %self1.i.i.i.i1.i.i77.sink, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !23
  br label %bb14

bb14:                                             ; preds = %bb14.sink.split, %bb13, %bb11
  %_0.sroa.0.0 = phi i32 [ 0, %bb11 ], [ 1, %bb13 ], [ %_0.sroa.0.0.ph, %bb14.sink.split ]
  ret i32 %_0.sroa.0.0

bb12:                                             ; preds = %bb8, %start
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1089)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1092)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1095)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1098)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1101)
  %self1.i.i.i.i1.i.i72 = load i64, ptr %str2, align 8, !range !1067, !alias.scope !1104, !noalias !1107, !noundef !23
  %_6.i.i.i.i2.i.i73 = icmp eq i64 %self1.i.i.i.i1.i.i72, 0
  br i1 %_6.i.i.i.i2.i.i73, label %bb13, label %bb2.i.i.i3.i.i74

bb2.i.i.i3.i.i74:                                 ; preds = %bb12
  %19 = getelementptr inbounds nuw i8, ptr %str2, i64 8
  %self3.i.i.i.i4.i.i75 = load ptr, ptr %19, align 8, !alias.scope !1104, !noalias !1107, !nonnull !23, !noundef !23
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i75, i64 noundef %self1.i.i.i.i1.i.i72, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !1109
  br label %bb13

bb13:                                             ; preds = %bb2.i.i.i3.i.i74, %bb12
  %self1.i.i.i.i1.i.i77 = load i64, ptr %str1, align 8, !range !1067, !alias.scope !1110, !noalias !1123, !noundef !23
  %_6.i.i.i.i2.i.i78 = icmp eq i64 %self1.i.i.i.i1.i.i77, 0
  br i1 %_6.i.i.i.i2.i.i78, label %bb14, label %bb14.sink.split
}
