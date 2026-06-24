define noundef i32 @f_gold(ptr dead_on_return noalias noundef readonly align 8 captures(none) dereferenceable(24) %n) unnamed_addr #5 personality ptr @rust_eh_personality {
start:
  %_9 = alloca [16 x i8], align 8
  %_4 = alloca [16 x i8], align 8
  %0 = getelementptr inbounds nuw i8, ptr %n, i64 8
  %_17 = load ptr, ptr %0, align 8, !nonnull !23, !noundef !23
  %1 = getelementptr inbounds nuw i8, ptr %n, i64 16
  %_16 = load i64, ptr %1, align 8, !noundef !23
  %_24 = getelementptr inbounds nuw i8, ptr %_17, i64 %_16
  %2 = getelementptr inbounds nuw i8, ptr %_4, i64 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_4)
  store ptr %_17, ptr %_4, align 8
  store ptr %_24, ptr %2, align 8
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_2859 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_4, i64 noundef 0)
  %.not60 = icmp eq i64 %_2859, 0
  br i1 %.not60, label %bb11.lr.ph, label %bb21

bb11.lr.ph:                                       ; preds = %start
  %3 = getelementptr inbounds nuw i8, ptr %_9, i64 8
  br label %bb11

bb11:                                             ; preds = %bb11.lr.ph, %bb4
  %pos.sroa.0.062 = phi i32 [ 0, %bb11.lr.ph ], [ %pos.sroa.0.1, %bb4 ]
  %i.sroa.0.061 = phi i64 [ 0, %bb11.lr.ph ], [ %8, %bb4 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1040)
  %ptr.i.i = load ptr, ptr %_4, align 8, !alias.scope !1043, !nonnull !23, !noundef !23
  %end_or_len.i.i = load ptr, ptr %2, align 8, !alias.scope !1043, !nonnull !23, !noundef !23
  %_7.i.i = icmp eq ptr %ptr.i.i, %end_or_len.i.i
  br i1 %_7.i.i, label %bb21, label %bb14.i

bb14.i:                                           ; preds = %bb11
  %x.i = load i8, ptr %ptr.i.i, align 1, !noalias !1040, !noundef !23
  %_6.i = icmp sgt i8 %x.i, -1
  br i1 %_6.i, label %bb14, label %bb4.i

bb4.i:                                            ; preds = %bb14.i
  %_18.i.i = getelementptr inbounds nuw i8, ptr %ptr.i.i, i64 1
  %_7.i10.i = icmp ne ptr %_18.i.i, %end_or_len.i.i
  tail call void @llvm.assume(i1 %_7.i10.i)
  %_13.i = icmp samesign ugt i8 %x.i, -33
  br i1 %_13.i, label %bb6.i, label %bb14

bb6.i:                                            ; preds = %bb4.i
  %_18.i12.i = getelementptr inbounds nuw i8, ptr %ptr.i.i, i64 2
  %_7.i17.i = icmp ne ptr %_18.i12.i, %end_or_len.i.i
  tail call void @llvm.assume(i1 %_7.i17.i)
  %_21.i = icmp samesign ugt i8 %x.i, -17
  br i1 %_21.i, label %bb8.i, label %bb14

bb8.i:                                            ; preds = %bb6.i
  %_18.i19.i = getelementptr inbounds nuw i8, ptr %ptr.i.i, i64 3
  %_7.i24.i = icmp ne ptr %_18.i19.i, %end_or_len.i.i
  tail call void @llvm.assume(i1 %_7.i24.i)
  br label %bb14

bb14:                                             ; preds = %bb14.i, %bb8.i, %bb6.i, %bb4.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_4)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_9)
  store ptr %_17, ptr %_9, align 8
  store ptr %_24, ptr %3, align 8
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_47 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_9, i64 noundef %i.sroa.0.061)
  %.not6 = icmp eq i64 %_47, 0
  br i1 %.not6, label %bb17, label %bb4

bb21:                                             ; preds = %bb4, %bb11, %start
  %pos.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %pos.sroa.0.062, %bb11 ], [ %pos.sroa.0.1, %bb4 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_4)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1046)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1049)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1052)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1055)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1058)
  %self1.i.i.i.i1.i.i7 = load i64, ptr %n, align 8, !range !1061, !alias.scope !1062, !noalias !1065, !noundef !23
  %_6.i.i.i.i2.i.i8 = icmp eq i64 %self1.i.i.i.i1.i.i7, 0
  br i1 %_6.i.i.i.i2.i.i8, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h59a3c95e9111bc67E.exit11", label %bb2.i.i.i3.i.i9

bb2.i.i.i3.i.i9:                                  ; preds = %bb21
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_17, i64 noundef %self1.i.i.i.i1.i.i7, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !1067
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h59a3c95e9111bc67E.exit11"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h59a3c95e9111bc67E.exit11": ; preds = %bb21, %bb2.i.i.i3.i.i9
  ret i32 %pos.sroa.0.0.lcssa

bb17:                                             ; preds = %bb14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1068)
  %ptr.i.i12 = load ptr, ptr %_9, align 8, !alias.scope !1071, !nonnull !23, !noundef !23
  %end_or_len.i.i13 = load ptr, ptr %3, align 8, !alias.scope !1071, !nonnull !23, !noundef !23
  %_7.i.i14 = icmp eq ptr %ptr.i.i12, %end_or_len.i.i13
  br i1 %_7.i.i14, label %bb4, label %bb14.i15

bb14.i15:                                         ; preds = %bb17
  %x.i17 = load i8, ptr %ptr.i.i12, align 1, !noalias !1068, !noundef !23
  %_6.i18 = icmp sgt i8 %x.i17, -1
  br i1 %_6.i18, label %bb3.i51, label %bb4.i19

bb4.i19:                                          ; preds = %bb14.i15
  %_18.i.i16 = getelementptr inbounds nuw i8, ptr %ptr.i.i12, i64 1
  %_30.i20 = and i8 %x.i17, 31
  %init.i21 = zext nneg i8 %_30.i20 to i32
  %_7.i10.i22 = icmp ne ptr %_18.i.i16, %end_or_len.i.i13
  tail call void @llvm.assume(i1 %_7.i10.i22)
  %y.i24 = load i8, ptr %_18.i.i16, align 1, !noalias !1068, !noundef !23
  %_34.i25 = shl nuw nsw i32 %init.i21, 6
  %_36.i26 = and i8 %y.i24, 63
  %_35.i27 = zext nneg i8 %_36.i26 to i32
  %4 = or disjoint i32 %_34.i25, %_35.i27
  %_13.i28 = icmp samesign ugt i8 %x.i17, -33
  br i1 %_13.i28, label %bb6.i31, label %bb20

bb3.i51:                                          ; preds = %bb14.i15
  %_7.i52 = zext nneg i8 %x.i17 to i32
  br label %bb20

bb6.i31:                                          ; preds = %bb4.i19
  %_18.i12.i23 = getelementptr inbounds nuw i8, ptr %ptr.i.i12, i64 2
  %_7.i17.i32 = icmp ne ptr %_18.i12.i23, %end_or_len.i.i13
  tail call void @llvm.assume(i1 %_7.i17.i32)
  %z.i34 = load i8, ptr %_18.i12.i23, align 1, !noalias !1068, !noundef !23
  %_40.i35 = shl nuw nsw i32 %_35.i27, 6
  %_42.i36 = and i8 %z.i34, 63
  %_41.i37 = zext nneg i8 %_42.i36 to i32
  %y_z.i38 = or disjoint i32 %_40.i35, %_41.i37
  %_20.i39 = shl nuw nsw i32 %init.i21, 12
  %5 = or disjoint i32 %y_z.i38, %_20.i39
  %_21.i40 = icmp samesign ugt i8 %x.i17, -17
  br i1 %_21.i40, label %bb8.i41, label %bb20

bb8.i41:                                          ; preds = %bb6.i31
  %_18.i19.i33 = getelementptr inbounds nuw i8, ptr %ptr.i.i12, i64 3
  %_7.i24.i42 = icmp ne ptr %_18.i19.i33, %end_or_len.i.i13
  tail call void @llvm.assume(i1 %_7.i24.i42)
  %w.i44 = load i8, ptr %_18.i19.i33, align 1, !noalias !1068, !noundef !23
  %_26.i45 = shl nuw nsw i32 %init.i21, 18
  %_25.i46 = and i32 %_26.i45, 1835008
  %_46.i47 = shl nuw nsw i32 %y_z.i38, 6
  %_48.i48 = and i8 %w.i44, 63
  %_47.i49 = zext nneg i8 %_48.i48 to i32
  %_27.i50 = or disjoint i32 %_46.i47, %_47.i49
  %6 = or disjoint i32 %_27.i50, %_25.i46
  br label %bb20

bb20:                                             ; preds = %bb3.i51, %bb8.i41, %bb6.i31, %bb4.i19
  %_0.sroa.4.0.i29.ph = phi i32 [ %4, %bb4.i19 ], [ %5, %bb6.i31 ], [ %6, %bb8.i41 ], [ %_7.i52, %bb3.i51 ]
  %7 = icmp samesign ult i32 %_0.sroa.4.0.i29.ph, 1114112
  tail call void @llvm.assume(i1 %7)
  switch i32 %_0.sroa.4.0.i29.ph, label %bb4 [
    i32 52, label %bb3
    i32 55, label %bb2
  ]

bb4:                                              ; preds = %bb17, %bb14, %bb2, %bb3, %bb20
  %pos.sroa.0.1 = phi i32 [ %pos.sroa.0.062, %bb14 ], [ %pos.sroa.0.062, %bb20 ], [ %9, %bb3 ], [ %10, %bb2 ], [ %pos.sroa.0.062, %bb17 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_9)
  %8 = add i64 %i.sroa.0.061, 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_4)
  store ptr %_17, ptr %_4, align 8
  store ptr %_24, ptr %2, align 8
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_28 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_4, i64 noundef %8)
  %.not = icmp eq i64 %_28, 0
  br i1 %.not, label %bb11, label %bb21

bb3:                                              ; preds = %bb20
  %_12 = shl i32 %pos.sroa.0.062, 1
  %9 = or disjoint i32 %_12, 1
  br label %bb4

bb2:                                              ; preds = %bb20
  %_13 = shl i32 %pos.sroa.0.062, 1
  %10 = add i32 %_13, 2
  br label %bb4
}
