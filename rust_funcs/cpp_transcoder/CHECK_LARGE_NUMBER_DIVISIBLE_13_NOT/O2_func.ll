define noundef range(i32 0, 2) i32 @f_gold(ptr dead_on_return noalias noundef align 8 captures(none) dereferenceable(24) %num) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_48 = alloca [16 x i8], align 8
  %_39 = alloca [16 x i8], align 8
  %_31 = alloca [16 x i8], align 8
  %0 = getelementptr inbounds nuw i8, ptr %num, i64 16
  %1 = load i64, ptr %0, align 8, !noundef !23
  %_57 = icmp sgt i64 %1, -1
  tail call void @llvm.assume(i1 %_57)
  %_3 = icmp eq i64 %1, 1
  br i1 %_3, label %bb14.i, label %bb5

bb5:                                              ; preds = %start
  %_12 = urem i64 %1, 3
  switch i64 %_12, label %bb12 [
    i64 1, label %bb6
    i64 2, label %bb8
  ]

cleanup:                                          ; preds = %bb1.i.i.i, %bb1.i.i, %bb69.invoke
  %2 = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1051)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1054)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1057)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1060)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1063)
  %self1.i.i.i.i1.i.i = load i64, ptr %num, align 8, !range !1031, !alias.scope !1066, !noalias !1069, !noundef !23
  %_6.i.i.i.i2.i.i = icmp eq i64 %self1.i.i.i.i1.i.i, 0
  br i1 %_6.i.i.i.i2.i.i, label %bb22, label %bb2.i.i.i3.i.i

bb2.i.i.i3.i.i:                                   ; preds = %cleanup
  %3 = getelementptr inbounds nuw i8, ptr %num, i64 8
  %self3.i.i.i.i4.i.i = load ptr, ptr %3, align 8, !alias.scope !1066, !noalias !1069, !nonnull !23, !noundef !23
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i, i64 noundef %self1.i.i.i.i1.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !1071
  br label %bb22

bb14.i:                                           ; preds = %start
  %4 = getelementptr inbounds nuw i8, ptr %num, i64 8
  %_61 = load ptr, ptr %4, align 8, !nonnull !23, !noundef !23
  %x.i = load i8, ptr %_61, align 1, !noalias !1072, !noundef !23
  %_6.i = icmp sgt i8 %x.i, -1
  tail call void @llvm.assume(i1 %_6.i)
  %cond = icmp eq i8 %x.i, 48
  br i1 %cond, label %bb14.i.bb19_crit_edge, label %bb6, !prof !1075

bb14.i.bb19_crit_edge:                            ; preds = %bb14.i
  %self1.i.i.i.i1.i.i46.pre = load i64, ptr %num, align 8, !range !1031, !alias.scope !1076, !noalias !1089
  br label %bb19

bb6:                                              ; preds = %bb14.i, %bb5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1091)
  %self2.i.i.i = load i64, ptr %num, align 8, !range !1031, !alias.scope !1094, !noundef !23
  %_9.i.i.i = sub nsw i64 %self2.i.i.i, %1
  %_7.i.i.i = icmp ult i64 %_9.i.i.i, 2
  br i1 %_7.i.i.i, label %bb1.i.i.i, label %bb33, !prof !909

bb1.i.i.i:                                        ; preds = %bb6
; invoke alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h27e2bc155fb4aa18E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %num, i64 noundef %1, i64 noundef 2)
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %bb1.i.i.i
  %len.pre.i.i = load i64, ptr %0, align 8, !alias.scope !1099
  br label %bb33

bb8:                                              ; preds = %bb5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1100)
  %self2.i.i = load i64, ptr %num, align 8, !range !1031, !alias.scope !1103, !noundef !23
  %_7.i.i37 = icmp eq i64 %self2.i.i, %1
  br i1 %_7.i.i37, label %bb1.i.i, label %bb9, !prof !909

bb1.i.i:                                          ; preds = %bb8
; invoke alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h27e2bc155fb4aa18E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %num, i64 noundef %1, i64 noundef 1)
          to label %.noexc40 unwind label %cleanup

.noexc40:                                         ; preds = %bb1.i.i
  %count.pre.i = load i64, ptr %0, align 8, !alias.scope !1100
  br label %bb9

bb9:                                              ; preds = %.noexc40, %bb8
  %count.i = phi i64 [ %1, %bb8 ], [ %count.pre.i, %.noexc40 ]
  %5 = getelementptr inbounds nuw i8, ptr %num, i64 8
  %_20.i38 = load ptr, ptr %5, align 8, !alias.scope !1100, !nonnull !23, !noundef !23
  %_21.i39 = icmp sgt i64 %count.i, -1
  tail call void @llvm.assume(i1 %_21.i39)
  %_8.i = getelementptr inbounds nuw i8, ptr %_20.i38, i64 %count.i
  store i8 48, ptr %_8.i, align 1, !noalias !1100
  %new_len.i = add nuw i64 %1, 1
  br label %bb15.lr.ph

bb12:                                             ; preds = %bb5
  %_91.not.not216 = icmp eq i64 %1, 0
  br i1 %_91.not.not216, label %bb16, label %bb15.lr.ph

bb15.lr.ph:                                       ; preds = %bb9, %bb33, %bb12
  %length.sroa.0.0229 = phi i64 [ %1, %bb12 ], [ %new_len.i, %bb9 ], [ %12, %bb33 ]
  %_97228 = phi i64 [ %1, %bb12 ], [ %new_len.i, %bb9 ], [ %11, %bb33 ]
  %6 = getelementptr inbounds nuw i8, ptr %num, i64 8
  %_98 = load ptr, ptr %6, align 8, !nonnull !23, !noundef !23
  %_107 = getelementptr inbounds nuw i8, ptr %_98, i64 %_97228
  %7 = getelementptr inbounds nuw i8, ptr %_31, i64 8
  %8 = getelementptr inbounds nuw i8, ptr %_39, i64 8
  %9 = getelementptr inbounds nuw i8, ptr %_48, i64 8
  br label %bb15

bb33:                                             ; preds = %.noexc, %bb6
  %len.i.i = phi i64 [ %1, %bb6 ], [ %len.pre.i.i, %.noexc ]
  %_9.i.i = icmp sgt i64 %len.i.i, -1
  tail call void @llvm.assume(i1 %_9.i.i)
  %10 = getelementptr inbounds nuw i8, ptr %num, i64 8
  %_10.i.i = load ptr, ptr %10, align 8, !alias.scope !1099, !nonnull !23, !noundef !23
  %dst.i.i = getelementptr inbounds nuw i8, ptr %_10.i.i, i64 %len.i.i
  store i16 12336, ptr %dst.i.i, align 1, !noalias !1091
  %11 = add nuw i64 %len.i.i, 2
  %12 = add nuw i64 %1, 2
  br label %bb15.lr.ph

bb15:                                             ; preds = %bb15.lr.ph, %bb70
  %length.sroa.0.1220 = phi i64 [ %length.sroa.0.0229, %bb15.lr.ph ], [ %_92221, %bb70 ]
  %sum.sroa.0.0219 = phi i32 [ 0, %bb15.lr.ph ], [ %29, %bb70 ]
  %p.sroa.0.0218 = phi i32 [ 1, %bb15.lr.ph ], [ %30, %bb70 ]
  %_92221 = add i64 %length.sroa.0.1220, -1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_31)
  store ptr %_98, ptr %_31, align 8
  store ptr %_107, ptr %7, align 8
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_111 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_31, i64 noundef %_92221)
  %.not28 = icmp eq i64 %_111, 0
  br i1 %.not28, label %bb44, label %bb69.invoke

bb16:                                             ; preds = %bb70, %bb12
  %sum.sroa.0.0.lcssa = phi i32 [ 0, %bb12 ], [ %29, %bb70 ]
  %_54.sroa.0.0 = tail call i32 @llvm.abs.i32(i32 %sum.sroa.0.0.lcssa, i1 false)
  %_56 = srem i32 %_54.sroa.0.0, 13
  %_55 = icmp eq i32 %_56, 0
  %self1.i.i.i.i1.i.i46.pre223 = load i64, ptr %num, align 8, !range !1031, !alias.scope !1076, !noalias !1089
  br i1 %_55, label %bb19, label %bb18

bb18:                                             ; preds = %bb16
  %_6.i.i.i.i2.i.i42 = icmp eq i64 %self1.i.i.i.i1.i.i46.pre223, 0
  br i1 %_6.i.i.i.i2.i.i42, label %bb20, label %bb20.sink.split

bb20.sink.split:                                  ; preds = %bb18, %bb19
  %self1.i.i.i.i1.i.i46.sink = phi i64 [ %self1.i.i.i.i1.i.i46, %bb19 ], [ %self1.i.i.i.i1.i.i46.pre223, %bb18 ]
  %_0.sroa.0.0.ph = phi i32 [ 1, %bb19 ], [ 0, %bb18 ]
  %13 = getelementptr inbounds nuw i8, ptr %num, i64 8
  %self3.i.i.i.i4.i.i49 = load ptr, ptr %13, align 8, !noalias !23, !nonnull !23, !noundef !23
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i49, i64 noundef %self1.i.i.i.i1.i.i46.sink, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !23
  br label %bb20

bb20:                                             ; preds = %bb20.sink.split, %bb19, %bb18
  %_0.sroa.0.0 = phi i32 [ 0, %bb18 ], [ 1, %bb19 ], [ %_0.sroa.0.0.ph, %bb20.sink.split ]
  ret i32 %_0.sroa.0.0

bb19:                                             ; preds = %bb14.i.bb19_crit_edge, %bb16
  %self1.i.i.i.i1.i.i46 = phi i64 [ %self1.i.i.i.i1.i.i46.pre, %bb14.i.bb19_crit_edge ], [ %self1.i.i.i.i1.i.i46.pre223, %bb16 ]
  %_6.i.i.i.i2.i.i47 = icmp eq i64 %self1.i.i.i.i1.i.i46, 0
  br i1 %_6.i.i.i.i2.i.i47, label %bb20, label %bb20.sink.split

bb44:                                             ; preds = %bb15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1106)
  %ptr.i.i51 = load ptr, ptr %_31, align 8, !alias.scope !1109, !nonnull !23, !noundef !23
  %end_or_len.i.i52 = load ptr, ptr %7, align 8, !alias.scope !1109, !nonnull !23, !noundef !23
  %_7.i.i53 = icmp eq ptr %ptr.i.i51, %end_or_len.i.i52
  br i1 %_7.i.i53, label %bb69.invoke, label %bb14.i54

bb14.i54:                                         ; preds = %bb44
  %x.i56 = load i8, ptr %ptr.i.i51, align 1, !noalias !1106, !noundef !23
  %_6.i57 = icmp sgt i8 %x.i56, -1
  br i1 %_6.i57, label %bb3.i90, label %bb4.i58

bb4.i58:                                          ; preds = %bb14.i54
  %_18.i.i55 = getelementptr inbounds nuw i8, ptr %ptr.i.i51, i64 1
  %_30.i59 = and i8 %x.i56, 31
  %init.i60 = zext nneg i8 %_30.i59 to i32
  %_7.i10.i61 = icmp ne ptr %_18.i.i55, %end_or_len.i.i52
  tail call void @llvm.assume(i1 %_7.i10.i61)
  %y.i63 = load i8, ptr %_18.i.i55, align 1, !noalias !1106, !noundef !23
  %_34.i64 = shl nuw nsw i32 %init.i60, 6
  %_36.i65 = and i8 %y.i63, 63
  %_35.i66 = zext nneg i8 %_36.i65 to i32
  %14 = or disjoint i32 %_34.i64, %_35.i66
  %_13.i67 = icmp samesign ugt i8 %x.i56, -33
  br i1 %_13.i67, label %bb6.i70, label %bb50

bb3.i90:                                          ; preds = %bb14.i54
  %_7.i91 = zext nneg i8 %x.i56 to i32
  br label %bb50

bb6.i70:                                          ; preds = %bb4.i58
  %_18.i12.i62 = getelementptr inbounds nuw i8, ptr %ptr.i.i51, i64 2
  %_7.i17.i71 = icmp ne ptr %_18.i12.i62, %end_or_len.i.i52
  tail call void @llvm.assume(i1 %_7.i17.i71)
  %z.i73 = load i8, ptr %_18.i12.i62, align 1, !noalias !1106, !noundef !23
  %_40.i74 = shl nuw nsw i32 %_35.i66, 6
  %_42.i75 = and i8 %z.i73, 63
  %_41.i76 = zext nneg i8 %_42.i75 to i32
  %y_z.i77 = or disjoint i32 %_40.i74, %_41.i76
  %_20.i78 = shl nuw nsw i32 %init.i60, 12
  %15 = or disjoint i32 %y_z.i77, %_20.i78
  %_21.i79 = icmp samesign ugt i8 %x.i56, -17
  br i1 %_21.i79, label %bb42, label %bb50

bb42:                                             ; preds = %bb6.i70
  %_18.i19.i72 = getelementptr inbounds nuw i8, ptr %ptr.i.i51, i64 3
  %_7.i24.i81 = icmp ne ptr %_18.i19.i72, %end_or_len.i.i52
  tail call void @llvm.assume(i1 %_7.i24.i81)
  %w.i83 = load i8, ptr %_18.i19.i72, align 1, !noalias !1106, !noundef !23
  %_26.i84 = shl nuw nsw i32 %init.i60, 18
  %_25.i85 = and i32 %_26.i84, 1835008
  %_46.i86 = shl nuw nsw i32 %y_z.i77, 6
  %_48.i87 = and i8 %w.i83, 63
  %_47.i88 = zext nneg i8 %_48.i87 to i32
  %_27.i89 = or disjoint i32 %_46.i86, %_47.i88
  %16 = or disjoint i32 %_27.i89, %_25.i85
  %.not29 = icmp eq i32 %16, 1114112
  br i1 %.not29, label %bb69.invoke, label %bb50, !prof !1112

bb50:                                             ; preds = %bb3.i90, %bb6.i70, %bb4.i58, %bb42
  %_0.sroa.4.0.i68.ph196 = phi i32 [ %16, %bb42 ], [ %_7.i91, %bb3.i90 ], [ %15, %bb6.i70 ], [ %14, %bb4.i58 ]
  %17 = icmp samesign ult i32 %_0.sroa.4.0.i68.ph196, 1114112
  tail call void @llvm.assume(i1 %17)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_31)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_39)
  store ptr %_98, ptr %_39, align 8
  store ptr %_107, ptr %8, align 8
  %_41 = add i64 %length.sroa.0.1220, -2
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_134 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_39, i64 noundef %_41)
  %.not30 = icmp eq i64 %_134, 0
  br i1 %.not30, label %bb54, label %bb69.invoke

bb54:                                             ; preds = %bb50
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1113)
  %ptr.i.i93 = load ptr, ptr %_39, align 8, !alias.scope !1116, !nonnull !23, !noundef !23
  %end_or_len.i.i94 = load ptr, ptr %8, align 8, !alias.scope !1116, !nonnull !23, !noundef !23
  %_7.i.i95 = icmp eq ptr %ptr.i.i93, %end_or_len.i.i94
  br i1 %_7.i.i95, label %bb69.invoke, label %bb14.i96

bb14.i96:                                         ; preds = %bb54
  %x.i98 = load i8, ptr %ptr.i.i93, align 1, !noalias !1113, !noundef !23
  %_6.i99 = icmp sgt i8 %x.i98, -1
  br i1 %_6.i99, label %bb3.i132, label %bb4.i100

bb4.i100:                                         ; preds = %bb14.i96
  %_18.i.i97 = getelementptr inbounds nuw i8, ptr %ptr.i.i93, i64 1
  %_30.i101 = and i8 %x.i98, 31
  %init.i102 = zext nneg i8 %_30.i101 to i32
  %_7.i10.i103 = icmp ne ptr %_18.i.i97, %end_or_len.i.i94
  tail call void @llvm.assume(i1 %_7.i10.i103)
  %y.i105 = load i8, ptr %_18.i.i97, align 1, !noalias !1113, !noundef !23
  %_34.i106 = shl nuw nsw i32 %init.i102, 6
  %_36.i107 = and i8 %y.i105, 63
  %_35.i108 = zext nneg i8 %_36.i107 to i32
  %18 = or disjoint i32 %_34.i106, %_35.i108
  %_13.i109 = icmp samesign ugt i8 %x.i98, -33
  br i1 %_13.i109, label %bb6.i112, label %bb60

bb3.i132:                                         ; preds = %bb14.i96
  %_7.i133 = zext nneg i8 %x.i98 to i32
  br label %bb60

bb6.i112:                                         ; preds = %bb4.i100
  %_18.i12.i104 = getelementptr inbounds nuw i8, ptr %ptr.i.i93, i64 2
  %_7.i17.i113 = icmp ne ptr %_18.i12.i104, %end_or_len.i.i94
  tail call void @llvm.assume(i1 %_7.i17.i113)
  %z.i115 = load i8, ptr %_18.i12.i104, align 1, !noalias !1113, !noundef !23
  %_40.i116 = shl nuw nsw i32 %_35.i108, 6
  %_42.i117 = and i8 %z.i115, 63
  %_41.i118 = zext nneg i8 %_42.i117 to i32
  %y_z.i119 = or disjoint i32 %_40.i116, %_41.i118
  %_20.i120 = shl nuw nsw i32 %init.i102, 12
  %19 = or disjoint i32 %y_z.i119, %_20.i120
  %_21.i121 = icmp samesign ugt i8 %x.i98, -17
  br i1 %_21.i121, label %bb52, label %bb60

bb52:                                             ; preds = %bb6.i112
  %_18.i19.i114 = getelementptr inbounds nuw i8, ptr %ptr.i.i93, i64 3
  %_7.i24.i123 = icmp ne ptr %_18.i19.i114, %end_or_len.i.i94
  tail call void @llvm.assume(i1 %_7.i24.i123)
  %w.i125 = load i8, ptr %_18.i19.i114, align 1, !noalias !1113, !noundef !23
  %_26.i126 = shl nuw nsw i32 %init.i102, 18
  %_25.i127 = and i32 %_26.i126, 1835008
  %_46.i128 = shl nuw nsw i32 %y_z.i119, 6
  %_48.i129 = and i8 %w.i125, 63
  %_47.i130 = zext nneg i8 %_48.i129 to i32
  %_27.i131 = or disjoint i32 %_46.i128, %_47.i130
  %20 = or disjoint i32 %_27.i131, %_25.i127
  %.not31 = icmp eq i32 %20, 1114112
  br i1 %.not31, label %bb69.invoke, label %bb60, !prof !1112

bb60:                                             ; preds = %bb3.i132, %bb6.i112, %bb4.i100, %bb52
  %_0.sroa.4.0.i110.ph204 = phi i32 [ %20, %bb52 ], [ %_7.i133, %bb3.i132 ], [ %19, %bb6.i112 ], [ %18, %bb4.i100 ]
  %21 = icmp samesign ult i32 %_0.sroa.4.0.i110.ph204, 1114112
  tail call void @llvm.assume(i1 %21)
  %22 = mul nuw nsw i32 %_0.sroa.4.0.i110.ph204, 10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_39)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_48)
  store ptr %_98, ptr %_48, align 8
  store ptr %_107, ptr %9, align 8
  %_50 = add i64 %length.sroa.0.1220, -3
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_157 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_48, i64 noundef %_50)
  %.not32 = icmp eq i64 %_157, 0
  br i1 %.not32, label %bb64, label %bb69.invoke

bb64:                                             ; preds = %bb60
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1119)
  %ptr.i.i135 = load ptr, ptr %_48, align 8, !alias.scope !1122, !nonnull !23, !noundef !23
  %end_or_len.i.i136 = load ptr, ptr %9, align 8, !alias.scope !1122, !nonnull !23, !noundef !23
  %_7.i.i137 = icmp eq ptr %ptr.i.i135, %end_or_len.i.i136
  br i1 %_7.i.i137, label %bb69.invoke, label %bb14.i138

bb14.i138:                                        ; preds = %bb64
  %x.i140 = load i8, ptr %ptr.i.i135, align 1, !noalias !1119, !noundef !23
  %_6.i141 = icmp sgt i8 %x.i140, -1
  br i1 %_6.i141, label %bb3.i174, label %bb4.i142

bb4.i142:                                         ; preds = %bb14.i138
  %_18.i.i139 = getelementptr inbounds nuw i8, ptr %ptr.i.i135, i64 1
  %_30.i143 = and i8 %x.i140, 31
  %init.i144 = zext nneg i8 %_30.i143 to i32
  %_7.i10.i145 = icmp ne ptr %_18.i.i139, %end_or_len.i.i136
  tail call void @llvm.assume(i1 %_7.i10.i145)
  %y.i147 = load i8, ptr %_18.i.i139, align 1, !noalias !1119, !noundef !23
  %_34.i148 = shl nuw nsw i32 %init.i144, 6
  %_36.i149 = and i8 %y.i147, 63
  %_35.i150 = zext nneg i8 %_36.i149 to i32
  %23 = or disjoint i32 %_34.i148, %_35.i150
  %_13.i151 = icmp samesign ugt i8 %x.i140, -33
  br i1 %_13.i151, label %bb6.i154, label %bb70

bb3.i174:                                         ; preds = %bb14.i138
  %_7.i175 = zext nneg i8 %x.i140 to i32
  br label %bb70

bb6.i154:                                         ; preds = %bb4.i142
  %_18.i12.i146 = getelementptr inbounds nuw i8, ptr %ptr.i.i135, i64 2
  %_7.i17.i155 = icmp ne ptr %_18.i12.i146, %end_or_len.i.i136
  tail call void @llvm.assume(i1 %_7.i17.i155)
  %z.i157 = load i8, ptr %_18.i12.i146, align 1, !noalias !1119, !noundef !23
  %_40.i158 = shl nuw nsw i32 %_35.i150, 6
  %_42.i159 = and i8 %z.i157, 63
  %_41.i160 = zext nneg i8 %_42.i159 to i32
  %y_z.i161 = or disjoint i32 %_40.i158, %_41.i160
  %_20.i162 = shl nuw nsw i32 %init.i144, 12
  %24 = or disjoint i32 %y_z.i161, %_20.i162
  %_21.i163 = icmp samesign ugt i8 %x.i140, -17
  br i1 %_21.i163, label %bb62, label %bb70

bb62:                                             ; preds = %bb6.i154
  %_18.i19.i156 = getelementptr inbounds nuw i8, ptr %ptr.i.i135, i64 3
  %_7.i24.i165 = icmp ne ptr %_18.i19.i156, %end_or_len.i.i136
  tail call void @llvm.assume(i1 %_7.i24.i165)
  %w.i167 = load i8, ptr %_18.i19.i156, align 1, !noalias !1119, !noundef !23
  %_26.i168 = shl nuw nsw i32 %init.i144, 18
  %_25.i169 = and i32 %_26.i168, 1835008
  %_46.i170 = shl nuw nsw i32 %y_z.i161, 6
  %_48.i171 = and i8 %w.i167, 63
  %_47.i172 = zext nneg i8 %_48.i171 to i32
  %_27.i173 = or disjoint i32 %_46.i170, %_47.i172
  %25 = or disjoint i32 %_27.i173, %_25.i169
  %.not33 = icmp eq i32 %25, 1114112
  br i1 %.not33, label %bb69.invoke, label %bb70, !prof !1112

bb70:                                             ; preds = %bb3.i174, %bb6.i154, %bb4.i142, %bb62
  %_0.sroa.4.0.i152.ph212 = phi i32 [ %25, %bb62 ], [ %_7.i175, %bb3.i174 ], [ %24, %bb6.i154 ], [ %23, %bb4.i142 ]
  %26 = icmp samesign ult i32 %_0.sroa.4.0.i152.ph212, 1114112
  tail call void @llvm.assume(i1 %26)
  %27 = mul nuw nsw i32 %_0.sroa.4.0.i152.ph212, 100
  %_33 = add nsw i32 %_0.sroa.4.0.i68.ph196, -5328
  %_42 = add nsw i32 %_33, %22
  %28 = add nsw i32 %_42, %27
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_48)
  %_52 = mul nsw i32 %28, %p.sroa.0.0218
  %29 = add i32 %_52, %sum.sroa.0.0219
  %30 = sub nsw i32 0, %p.sroa.0.0218
  %_91.not.not = icmp eq i64 %_92221, 0
  br i1 %_91.not.not, label %bb16, label %bb15

bb69.invoke:                                      ; preds = %bb62, %bb60, %bb64, %bb52, %bb50, %bb54, %bb42, %bb15, %bb44
  %31 = phi ptr [ @alloc_6871ce8791b816da97cbbf20d9f8f173, %bb44 ], [ @alloc_6871ce8791b816da97cbbf20d9f8f173, %bb15 ], [ @alloc_6871ce8791b816da97cbbf20d9f8f173, %bb42 ], [ @alloc_2ba9c55dd474f682f66dab159bb81d88, %bb54 ], [ @alloc_2ba9c55dd474f682f66dab159bb81d88, %bb50 ], [ @alloc_2ba9c55dd474f682f66dab159bb81d88, %bb52 ], [ @alloc_a4ceec50903d3c1195516cf4fa2df2e0, %bb64 ], [ @alloc_a4ceec50903d3c1195516cf4fa2df2e0, %bb60 ], [ @alloc_a4ceec50903d3c1195516cf4fa2df2e0, %bb62 ]
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %31) #23
          to label %bb69.cont unwind label %cleanup

bb69.cont:                                        ; preds = %bb69.invoke
  unreachable

bb22:                                             ; preds = %bb2.i.i.i3.i.i, %cleanup
  resume { ptr, i32 } %2
}
