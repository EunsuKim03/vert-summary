define noundef range(i32 0, 1114112) i32 @f_gold(ptr dead_on_return noalias noundef readonly align 8 captures(none) dereferenceable(24) %str) unnamed_addr #1 personality ptr @rust_eh_personality {
bb19:
  %_34 = alloca [16 x i8], align 8
  %_26 = alloca [16 x i8], align 8
  %_20 = alloca [16 x i8], align 8
  %0 = getelementptr inbounds nuw i8, ptr %str, i64 16
  %_3 = load i64, ptr %0, align 8, !noundef !23
  %_37 = icmp sgt i64 %_3, -1
  tail call void @llvm.assume(i1 %_37)
  %len = trunc i64 %_3 to i32
  %1 = getelementptr inbounds nuw i8, ptr %str, i64 8
  %_41 = load ptr, ptr %1, align 8, !nonnull !23, !noundef !23
  %_48 = getelementptr inbounds nuw i8, ptr %_41, i64 %_3
  %_7.i.i = icmp samesign eq i64 %_3, 0
  br i1 %_7.i.i, label %bb64.invoke, label %bb14.i

cleanup:                                          ; preds = %bb64.invoke
  %2 = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1040)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1043)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1046)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1049)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1052)
  %self1.i.i.i.i1.i.i = load i64, ptr %str, align 8, !range !1055, !alias.scope !1056, !noalias !1059, !noundef !23
  %_6.i.i.i.i2.i.i = icmp eq i64 %self1.i.i.i.i1.i.i, 0
  br i1 %_6.i.i.i.i2.i.i, label %bb15, label %bb2.i.i.i3.i.i

bb2.i.i.i3.i.i:                                   ; preds = %cleanup
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_41, i64 noundef %self1.i.i.i.i1.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !1061
  br label %bb15

bb14.i:                                           ; preds = %bb19
  %x.i = load i8, ptr %_41, align 1, !noalias !1062, !noundef !23
  %_6.i = icmp sgt i8 %x.i, -1
  br i1 %_6.i, label %bb3.i, label %bb4.i

bb4.i:                                            ; preds = %bb14.i
  %_18.i.i = getelementptr inbounds nuw i8, ptr %_41, i64 1
  %_30.i = and i8 %x.i, 31
  %init.i = zext nneg i8 %_30.i to i32
  %_7.i10.i = icmp samesign ne i64 %_3, 1
  tail call void @llvm.assume(i1 %_7.i10.i)
  %y.i = load i8, ptr %_18.i.i, align 1, !noalias !1062, !noundef !23
  %_34.i = shl nuw nsw i32 %init.i, 6
  %_36.i = and i8 %y.i, 63
  %_35.i = zext nneg i8 %_36.i to i32
  %3 = or disjoint i32 %_34.i, %_35.i
  %_13.i = icmp samesign ugt i8 %x.i, -33
  br i1 %_13.i, label %bb6.i, label %bb1.preheader

bb3.i:                                            ; preds = %bb14.i
  %_7.i = zext nneg i8 %x.i to i32
  br label %bb1.preheader

bb6.i:                                            ; preds = %bb4.i
  %_18.i12.i = getelementptr inbounds nuw i8, ptr %_41, i64 2
  %_7.i17.i = icmp samesign ne i64 %_3, 2
  tail call void @llvm.assume(i1 %_7.i17.i)
  %z.i = load i8, ptr %_18.i12.i, align 1, !noalias !1062, !noundef !23
  %_40.i = shl nuw nsw i32 %_35.i, 6
  %_42.i = and i8 %z.i, 63
  %_41.i = zext nneg i8 %_42.i to i32
  %y_z.i = or disjoint i32 %_40.i, %_41.i
  %_20.i = shl nuw nsw i32 %init.i, 12
  %4 = or disjoint i32 %y_z.i, %_20.i
  %_21.i = icmp samesign ugt i8 %x.i, -17
  br i1 %_21.i, label %bb17, label %bb1.preheader

bb17:                                             ; preds = %bb6.i
  %_18.i19.i = getelementptr inbounds nuw i8, ptr %_41, i64 3
  %_7.i24.i = icmp samesign ne i64 %_3, 3
  tail call void @llvm.assume(i1 %_7.i24.i)
  %w.i = load i8, ptr %_18.i19.i, align 1, !noalias !1062, !noundef !23
  %_26.i = shl nuw nsw i32 %init.i, 18
  %_25.i = and i32 %_26.i, 1835008
  %_46.i = shl nuw nsw i32 %y_z.i, 6
  %_48.i = and i8 %w.i, 63
  %_47.i = zext nneg i8 %_48.i to i32
  %_27.i = or disjoint i32 %_46.i, %_47.i
  %5 = or disjoint i32 %_27.i, %_25.i
  %.not16 = icmp eq i32 %5, 1114112
  br i1 %.not16, label %bb64.invoke, label %bb1.preheader, !prof !1065

bb1.preheader:                                    ; preds = %bb4.i, %bb6.i, %bb3.i, %bb17
  %_0.sroa.4.0.i217 = phi i32 [ %5, %bb17 ], [ %3, %bb4.i ], [ %4, %bb6.i ], [ %_7.i, %bb3.i ]
  %_61203 = icmp sgt i32 %len, 0
  br i1 %_61203, label %bb5.preheader.lr.ph, label %bb4

bb5.preheader.lr.ph:                              ; preds = %bb1.preheader
  %6 = getelementptr inbounds nuw i8, ptr %_20, i64 8
  %7 = getelementptr inbounds nuw i8, ptr %_26, i64 8
  %8 = getelementptr inbounds nuw i8, ptr %_34, i64 8
  %9 = add nuw i32 %len, 1
  %wide.trip.count = and i64 %_3, 2147483647
  br label %bb5.preheader

bb5.preheader:                                    ; preds = %bb5.preheader.lr.ph, %bb12
  %iter.sroa.0.1209 = phi i32 [ 1, %bb5.preheader.lr.ph ], [ %19, %bb12 ]
  %res.sroa.0.0208 = phi i32 [ %_0.sroa.4.0.i217, %bb5.preheader.lr.ph ], [ %res.sroa.0.1, %bb12 ]
  %count.sroa.0.0207 = phi i32 [ 0, %bb5.preheader.lr.ph ], [ %count.sroa.0.1, %bb12 ]
  %iter.sroa.0.0205 = phi i32 [ 0, %bb5.preheader.lr.ph ], [ %iter.sroa.0.1209, %bb12 ]
  %_68200 = icmp slt i32 %iter.sroa.0.1209, %len
  br i1 %_68200, label %bb6.lr.ph, label %bb9

bb6.lr.ph:                                        ; preds = %bb5.preheader
  %_22 = sext i32 %iter.sroa.0.0205 to i64
  %10 = sext i32 %iter.sroa.0.1209 to i64
  %11 = sub i32 %9, %iter.sroa.0.1209
  br label %bb6

bb4:                                              ; preds = %bb12, %bb1.preheader
  %res.sroa.0.0.lcssa = phi i32 [ %_0.sroa.4.0.i217, %bb1.preheader ], [ %res.sroa.0.1, %bb12 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1066)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1069)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1072)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1075)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1078)
  %self1.i.i.i.i1.i.i26 = load i64, ptr %str, align 8, !range !1055, !alias.scope !1081, !noalias !1084, !noundef !23
  %_6.i.i.i.i2.i.i27 = icmp eq i64 %self1.i.i.i.i1.i.i26, 0
  br i1 %_6.i.i.i.i2.i.i27, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h61e31bb7eb4f60a7E.exit30", label %bb2.i.i.i3.i.i28

bb2.i.i.i3.i.i28:                                 ; preds = %bb4
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_41, i64 noundef %self1.i.i.i.i1.i.i26, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !1086
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h61e31bb7eb4f60a7E.exit30"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h61e31bb7eb4f60a7E.exit30": ; preds = %bb4, %bb2.i.i.i3.i.i28
  ret i32 %res.sroa.0.0.lcssa

bb6:                                              ; preds = %bb6.lr.ph, %bb8
  %indvars.iv = phi i64 [ %10, %bb6.lr.ph ], [ %indvars.iv.next, %bb8 ]
  %cur_count.sroa.0.0202 = phi i32 [ 1, %bb6.lr.ph ], [ %18, %bb8 ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_20)
  store ptr %_41, ptr %_20, align 8
  store ptr %_48, ptr %6, align 8
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_89 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_20, i64 noundef %_22)
  %.not17 = icmp eq i64 %_89, 0
  br i1 %.not17, label %bb39, label %bb64.invoke

bb9:                                              ; preds = %bb55, %bb8, %bb5.preheader
  %cur_count.sroa.0.0196 = phi i32 [ 1, %bb5.preheader ], [ %cur_count.sroa.0.0202, %bb55 ], [ %11, %bb8 ]
  %_29 = icmp sgt i32 %cur_count.sroa.0.0196, %count.sroa.0.0207
  br i1 %_29, label %bb10, label %bb12

bb39:                                             ; preds = %bb6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1087)
  %ptr.i.i31 = load ptr, ptr %_20, align 8, !alias.scope !1090, !nonnull !23, !noundef !23
  %end_or_len.i.i32 = load ptr, ptr %6, align 8, !alias.scope !1090, !nonnull !23, !noundef !23
  %_7.i.i33 = icmp eq ptr %ptr.i.i31, %end_or_len.i.i32
  br i1 %_7.i.i33, label %bb64.invoke, label %bb14.i34

bb14.i34:                                         ; preds = %bb39
  %x.i36 = load i8, ptr %ptr.i.i31, align 1, !noalias !1087, !noundef !23
  %_6.i37 = icmp sgt i8 %x.i36, -1
  br i1 %_6.i37, label %bb3.i70, label %bb4.i38

bb4.i38:                                          ; preds = %bb14.i34
  %_18.i.i35 = getelementptr inbounds nuw i8, ptr %ptr.i.i31, i64 1
  %_30.i39 = and i8 %x.i36, 31
  %init.i40 = zext nneg i8 %_30.i39 to i32
  %_7.i10.i41 = icmp ne ptr %_18.i.i35, %end_or_len.i.i32
  tail call void @llvm.assume(i1 %_7.i10.i41)
  %y.i43 = load i8, ptr %_18.i.i35, align 1, !noalias !1087, !noundef !23
  %_34.i44 = shl nuw nsw i32 %init.i40, 6
  %_36.i45 = and i8 %y.i43, 63
  %_35.i46 = zext nneg i8 %_36.i45 to i32
  %12 = or disjoint i32 %_34.i44, %_35.i46
  %_13.i47 = icmp samesign ugt i8 %x.i36, -33
  br i1 %_13.i47, label %bb6.i50, label %bb45

bb3.i70:                                          ; preds = %bb14.i34
  %_7.i71 = zext nneg i8 %x.i36 to i32
  br label %bb45

bb6.i50:                                          ; preds = %bb4.i38
  %_18.i12.i42 = getelementptr inbounds nuw i8, ptr %ptr.i.i31, i64 2
  %_7.i17.i51 = icmp ne ptr %_18.i12.i42, %end_or_len.i.i32
  tail call void @llvm.assume(i1 %_7.i17.i51)
  %z.i53 = load i8, ptr %_18.i12.i42, align 1, !noalias !1087, !noundef !23
  %_40.i54 = shl nuw nsw i32 %_35.i46, 6
  %_42.i55 = and i8 %z.i53, 63
  %_41.i56 = zext nneg i8 %_42.i55 to i32
  %y_z.i57 = or disjoint i32 %_40.i54, %_41.i56
  %_20.i58 = shl nuw nsw i32 %init.i40, 12
  %13 = or disjoint i32 %y_z.i57, %_20.i58
  %_21.i59 = icmp samesign ugt i8 %x.i36, -17
  br i1 %_21.i59, label %bb37, label %bb45

bb37:                                             ; preds = %bb6.i50
  %_18.i19.i52 = getelementptr inbounds nuw i8, ptr %ptr.i.i31, i64 3
  %_7.i24.i61 = icmp ne ptr %_18.i19.i52, %end_or_len.i.i32
  tail call void @llvm.assume(i1 %_7.i24.i61)
  %w.i63 = load i8, ptr %_18.i19.i52, align 1, !noalias !1087, !noundef !23
  %_26.i64 = shl nuw nsw i32 %init.i40, 18
  %_25.i65 = and i32 %_26.i64, 1835008
  %_46.i66 = shl nuw nsw i32 %y_z.i57, 6
  %_48.i67 = and i8 %w.i63, 63
  %_47.i68 = zext nneg i8 %_48.i67 to i32
  %_27.i69 = or disjoint i32 %_46.i66, %_47.i68
  %14 = or disjoint i32 %_27.i69, %_25.i65
  %.not18 = icmp eq i32 %14, 1114112
  br i1 %.not18, label %bb64.invoke, label %bb45, !prof !1093

bb45:                                             ; preds = %bb3.i70, %bb6.i50, %bb4.i38, %bb37
  %_0.sroa.4.0.i48.ph176 = phi i32 [ %14, %bb37 ], [ %_7.i71, %bb3.i70 ], [ %13, %bb6.i50 ], [ %12, %bb4.i38 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_26)
  store ptr %_41, ptr %_26, align 8
  store ptr %_48, ptr %7, align 8
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_112 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_26, i64 noundef %indvars.iv)
  %.not19 = icmp eq i64 %_112, 0
  br i1 %.not19, label %bb49, label %bb64.invoke

bb49:                                             ; preds = %bb45
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1094)
  %ptr.i.i73 = load ptr, ptr %_26, align 8, !alias.scope !1097, !nonnull !23, !noundef !23
  %end_or_len.i.i74 = load ptr, ptr %7, align 8, !alias.scope !1097, !nonnull !23, !noundef !23
  %_7.i.i75 = icmp eq ptr %ptr.i.i73, %end_or_len.i.i74
  br i1 %_7.i.i75, label %bb64.invoke, label %bb14.i76

bb14.i76:                                         ; preds = %bb49
  %x.i78 = load i8, ptr %ptr.i.i73, align 1, !noalias !1094, !noundef !23
  %_6.i79 = icmp sgt i8 %x.i78, -1
  br i1 %_6.i79, label %bb3.i112, label %bb4.i80

bb4.i80:                                          ; preds = %bb14.i76
  %_18.i.i77 = getelementptr inbounds nuw i8, ptr %ptr.i.i73, i64 1
  %_30.i81 = and i8 %x.i78, 31
  %init.i82 = zext nneg i8 %_30.i81 to i32
  %_7.i10.i83 = icmp ne ptr %_18.i.i77, %end_or_len.i.i74
  tail call void @llvm.assume(i1 %_7.i10.i83)
  %y.i85 = load i8, ptr %_18.i.i77, align 1, !noalias !1094, !noundef !23
  %_34.i86 = shl nuw nsw i32 %init.i82, 6
  %_36.i87 = and i8 %y.i85, 63
  %_35.i88 = zext nneg i8 %_36.i87 to i32
  %15 = or disjoint i32 %_34.i86, %_35.i88
  %_13.i89 = icmp samesign ugt i8 %x.i78, -33
  br i1 %_13.i89, label %bb6.i92, label %bb55

bb3.i112:                                         ; preds = %bb14.i76
  %_7.i113 = zext nneg i8 %x.i78 to i32
  br label %bb55

bb6.i92:                                          ; preds = %bb4.i80
  %_18.i12.i84 = getelementptr inbounds nuw i8, ptr %ptr.i.i73, i64 2
  %_7.i17.i93 = icmp ne ptr %_18.i12.i84, %end_or_len.i.i74
  tail call void @llvm.assume(i1 %_7.i17.i93)
  %z.i95 = load i8, ptr %_18.i12.i84, align 1, !noalias !1094, !noundef !23
  %_40.i96 = shl nuw nsw i32 %_35.i88, 6
  %_42.i97 = and i8 %z.i95, 63
  %_41.i98 = zext nneg i8 %_42.i97 to i32
  %y_z.i99 = or disjoint i32 %_40.i96, %_41.i98
  %_20.i100 = shl nuw nsw i32 %init.i82, 12
  %16 = or disjoint i32 %y_z.i99, %_20.i100
  %_21.i101 = icmp samesign ugt i8 %x.i78, -17
  br i1 %_21.i101, label %bb47, label %bb55

bb47:                                             ; preds = %bb6.i92
  %_18.i19.i94 = getelementptr inbounds nuw i8, ptr %ptr.i.i73, i64 3
  %_7.i24.i103 = icmp ne ptr %_18.i19.i94, %end_or_len.i.i74
  tail call void @llvm.assume(i1 %_7.i24.i103)
  %w.i105 = load i8, ptr %_18.i19.i94, align 1, !noalias !1094, !noundef !23
  %_26.i106 = shl nuw nsw i32 %init.i82, 18
  %_25.i107 = and i32 %_26.i106, 1835008
  %_46.i108 = shl nuw nsw i32 %y_z.i99, 6
  %_48.i109 = and i8 %w.i105, 63
  %_47.i110 = zext nneg i8 %_48.i109 to i32
  %_27.i111 = or disjoint i32 %_46.i108, %_47.i110
  %17 = or disjoint i32 %_27.i111, %_25.i107
  %.not20 = icmp eq i32 %17, 1114112
  br i1 %.not20, label %bb64.invoke, label %bb55, !prof !1093

bb55:                                             ; preds = %bb3.i112, %bb6.i92, %bb4.i80, %bb47
  %_0.sroa.4.0.i90.ph184 = phi i32 [ %17, %bb47 ], [ %_7.i113, %bb3.i112 ], [ %16, %bb6.i92 ], [ %15, %bb4.i80 ]
  %_16.not = icmp eq i32 %_0.sroa.4.0.i48.ph176, %_0.sroa.4.0.i90.ph184
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_26)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_20)
  br i1 %_16.not, label %bb8, label %bb9

bb8:                                              ; preds = %bb55
  %18 = add i32 %cur_count.sroa.0.0202, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb9, label %bb6

bb10:                                             ; preds = %bb9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_34)
  store ptr %_41, ptr %_34, align 8
  store ptr %_48, ptr %8, align 8
  %_36 = sext i32 %iter.sroa.0.0205 to i64
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_135 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_34, i64 noundef %_36)
  %.not21 = icmp eq i64 %_135, 0
  br i1 %.not21, label %bb59, label %bb64.invoke

bb12:                                             ; preds = %bb9, %bb65
  %count.sroa.0.1 = phi i32 [ %cur_count.sroa.0.0196, %bb65 ], [ %count.sroa.0.0207, %bb9 ]
  %res.sroa.0.1 = phi i32 [ %_0.sroa.4.0.i132.ph192, %bb65 ], [ %res.sroa.0.0208, %bb9 ]
  %_61 = icmp slt i32 %iter.sroa.0.1209, %len
  %19 = add i32 %iter.sroa.0.1209, 1
  br i1 %_61, label %bb5.preheader, label %bb4

bb59:                                             ; preds = %bb10
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1100)
  %ptr.i.i115 = load ptr, ptr %_34, align 8, !alias.scope !1103, !nonnull !23, !noundef !23
  %end_or_len.i.i116 = load ptr, ptr %8, align 8, !alias.scope !1103, !nonnull !23, !noundef !23
  %_7.i.i117 = icmp eq ptr %ptr.i.i115, %end_or_len.i.i116
  br i1 %_7.i.i117, label %bb64.invoke, label %bb14.i118

bb14.i118:                                        ; preds = %bb59
  %x.i120 = load i8, ptr %ptr.i.i115, align 1, !noalias !1100, !noundef !23
  %_6.i121 = icmp sgt i8 %x.i120, -1
  br i1 %_6.i121, label %bb3.i154, label %bb4.i122

bb4.i122:                                         ; preds = %bb14.i118
  %_18.i.i119 = getelementptr inbounds nuw i8, ptr %ptr.i.i115, i64 1
  %_30.i123 = and i8 %x.i120, 31
  %init.i124 = zext nneg i8 %_30.i123 to i32
  %_7.i10.i125 = icmp ne ptr %_18.i.i119, %end_or_len.i.i116
  tail call void @llvm.assume(i1 %_7.i10.i125)
  %y.i127 = load i8, ptr %_18.i.i119, align 1, !noalias !1100, !noundef !23
  %_34.i128 = shl nuw nsw i32 %init.i124, 6
  %_36.i129 = and i8 %y.i127, 63
  %_35.i130 = zext nneg i8 %_36.i129 to i32
  %20 = or disjoint i32 %_34.i128, %_35.i130
  %_13.i131 = icmp samesign ugt i8 %x.i120, -33
  br i1 %_13.i131, label %bb6.i134, label %bb65

bb3.i154:                                         ; preds = %bb14.i118
  %_7.i155 = zext nneg i8 %x.i120 to i32
  br label %bb65

bb6.i134:                                         ; preds = %bb4.i122
  %_18.i12.i126 = getelementptr inbounds nuw i8, ptr %ptr.i.i115, i64 2
  %_7.i17.i135 = icmp ne ptr %_18.i12.i126, %end_or_len.i.i116
  tail call void @llvm.assume(i1 %_7.i17.i135)
  %z.i137 = load i8, ptr %_18.i12.i126, align 1, !noalias !1100, !noundef !23
  %_40.i138 = shl nuw nsw i32 %_35.i130, 6
  %_42.i139 = and i8 %z.i137, 63
  %_41.i140 = zext nneg i8 %_42.i139 to i32
  %y_z.i141 = or disjoint i32 %_40.i138, %_41.i140
  %_20.i142 = shl nuw nsw i32 %init.i124, 12
  %21 = or disjoint i32 %y_z.i141, %_20.i142
  %_21.i143 = icmp samesign ugt i8 %x.i120, -17
  br i1 %_21.i143, label %bb57, label %bb65

bb57:                                             ; preds = %bb6.i134
  %_18.i19.i136 = getelementptr inbounds nuw i8, ptr %ptr.i.i115, i64 3
  %_7.i24.i145 = icmp ne ptr %_18.i19.i136, %end_or_len.i.i116
  tail call void @llvm.assume(i1 %_7.i24.i145)
  %w.i147 = load i8, ptr %_18.i19.i136, align 1, !noalias !1100, !noundef !23
  %_26.i148 = shl nuw nsw i32 %init.i124, 18
  %_25.i149 = and i32 %_26.i148, 1835008
  %_46.i150 = shl nuw nsw i32 %y_z.i141, 6
  %_48.i151 = and i8 %w.i147, 63
  %_47.i152 = zext nneg i8 %_48.i151 to i32
  %_27.i153 = or disjoint i32 %_46.i150, %_47.i152
  %22 = or disjoint i32 %_27.i153, %_25.i149
  %.not22 = icmp eq i32 %22, 1114112
  br i1 %.not22, label %bb64.invoke, label %bb65, !prof !1093

bb65:                                             ; preds = %bb3.i154, %bb6.i134, %bb4.i122, %bb57
  %_0.sroa.4.0.i132.ph192 = phi i32 [ %22, %bb57 ], [ %_7.i155, %bb3.i154 ], [ %21, %bb6.i134 ], [ %20, %bb4.i122 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_34)
  br label %bb12

bb64.invoke:                                      ; preds = %bb57, %bb10, %bb59, %bb47, %bb45, %bb49, %bb37, %bb6, %bb39, %bb17, %bb19
  %23 = phi ptr [ @alloc_3d7263bca282c43246414e46d30b0fcf, %bb19 ], [ @alloc_3d7263bca282c43246414e46d30b0fcf, %bb17 ], [ @alloc_278f715e635ddb1569eba4178b6f98ed, %bb39 ], [ @alloc_278f715e635ddb1569eba4178b6f98ed, %bb6 ], [ @alloc_278f715e635ddb1569eba4178b6f98ed, %bb37 ], [ @alloc_90c5a32b5e3f93ed098e2a9c82cb94e4, %bb49 ], [ @alloc_90c5a32b5e3f93ed098e2a9c82cb94e4, %bb45 ], [ @alloc_90c5a32b5e3f93ed098e2a9c82cb94e4, %bb47 ], [ @alloc_2f5f0aaf834ca1c985b893a085dad389, %bb59 ], [ @alloc_2f5f0aaf834ca1c985b893a085dad389, %bb10 ], [ @alloc_2f5f0aaf834ca1c985b893a085dad389, %bb57 ]
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %23) #20
          to label %bb64.cont unwind label %cleanup

bb64.cont:                                        ; preds = %bb64.invoke
  unreachable

bb15:                                             ; preds = %bb2.i.i.i3.i.i, %cleanup
  resume { ptr, i32 } %2
}
