define noundef range(i32 0, 2) i32 @f_gold(ptr dead_on_return noalias noundef readonly align 8 captures(none) dereferenceable(24) %s) unnamed_addr #5 personality ptr @rust_eh_personality {
start:
  %_9 = alloca [16 x i8], align 8
  %0 = getelementptr inbounds nuw i8, ptr %s, i64 16
  %n = load i64, ptr %0, align 8, !noundef !23
  %_16 = icmp sgt i64 %n, -1
  tail call void @llvm.assume(i1 %_16)
  %_1768 = icmp samesign ugt i64 %n, 1
  br i1 %_1768, label %bb11.lr.ph, label %bb7

bb11.lr.ph:                                       ; preds = %start
  %1 = getelementptr inbounds nuw i8, ptr %s, i64 8
  %_24 = load ptr, ptr %1, align 8, !nonnull !23, !noundef !23
  %_31 = getelementptr inbounds nuw i8, ptr %_24, i64 %n
  %2 = getelementptr inbounds nuw i8, ptr %_9, i64 8
  %_18.i.i19 = getelementptr inbounds nuw i8, ptr %_24, i64 1
  %_18.i12.i26 = getelementptr inbounds nuw i8, ptr %_24, i64 2
  %_7.i17.i35 = icmp samesign ne i64 %n, 2
  %_18.i19.i36 = getelementptr inbounds nuw i8, ptr %_24, i64 3
  %_7.i24.i45 = icmp samesign ne i64 %n, 3
  br label %bb11

bb11:                                             ; preds = %bb11.lr.ph, %bb4
  %iter.sroa.0.069 = phi i64 [ 1, %bb11.lr.ph ], [ %3, %bb4 ]
  %3 = add nuw nsw i64 %iter.sroa.0.069, 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_9)
  store ptr %_24, ptr %_9, align 8
  store ptr %_31, ptr %2, align 8
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_35 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_9, i64 noundef %iter.sroa.0.069)
  %.not = icmp eq i64 %_35, 0
  br i1 %.not, label %bb16, label %bb14.i18

bb7:                                              ; preds = %bb26, %bb4, %start
  %_0.sroa.0.0 = phi i32 [ 1, %start ], [ 1, %bb4 ], [ 0, %bb26 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1040)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1043)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1046)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1049)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1052)
  %self1.i.i.i.i1.i.i = load i64, ptr %s, align 8, !range !1055, !alias.scope !1056, !noalias !1059, !noundef !23
  %_6.i.i.i.i2.i.i = icmp eq i64 %self1.i.i.i.i1.i.i, 0
  br i1 %_6.i.i.i.i2.i.i, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd0e57e876de3babeE.exit", label %bb2.i.i.i3.i.i

bb2.i.i.i3.i.i:                                   ; preds = %bb7
  %4 = getelementptr inbounds nuw i8, ptr %s, i64 8
  %self3.i.i.i.i4.i.i = load ptr, ptr %4, align 8, !alias.scope !1056, !noalias !1059, !nonnull !23, !noundef !23
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i, i64 noundef %self1.i.i.i.i1.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !1061
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd0e57e876de3babeE.exit"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd0e57e876de3babeE.exit": ; preds = %bb7, %bb2.i.i.i3.i.i
  ret i32 %_0.sroa.0.0

bb16:                                             ; preds = %bb11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1062)
  %ptr.i.i = load ptr, ptr %_9, align 8, !alias.scope !1065, !nonnull !23, !noundef !23
  %end_or_len.i.i = load ptr, ptr %2, align 8, !alias.scope !1065, !nonnull !23, !noundef !23
  %_7.i.i.not = icmp eq ptr %ptr.i.i, %end_or_len.i.i
  br i1 %_7.i.i.not, label %bb14.i18, label %bb14.i

bb14.i:                                           ; preds = %bb16
  %x.i = load i8, ptr %ptr.i.i, align 1, !noalias !1062, !noundef !23
  %_6.i = icmp sgt i8 %x.i, -1
  br i1 %_6.i, label %bb3.i, label %bb4.i

bb4.i:                                            ; preds = %bb14.i
  %_18.i.i = getelementptr inbounds nuw i8, ptr %ptr.i.i, i64 1
  %_30.i = and i8 %x.i, 31
  %init.i = zext nneg i8 %_30.i to i32
  %_7.i10.i = icmp ne ptr %_18.i.i, %end_or_len.i.i
  tail call void @llvm.assume(i1 %_7.i10.i)
  %y.i = load i8, ptr %_18.i.i, align 1, !noalias !1062, !noundef !23
  %_34.i = shl nuw nsw i32 %init.i, 6
  %_36.i = and i8 %y.i, 63
  %_35.i = zext nneg i8 %_36.i to i32
  %5 = or disjoint i32 %_34.i, %_35.i
  %_13.i = icmp samesign ugt i8 %x.i, -33
  br i1 %_13.i, label %bb6.i, label %bb14.i18

bb3.i:                                            ; preds = %bb14.i
  %_7.i = zext nneg i8 %x.i to i32
  br label %bb14.i18

bb6.i:                                            ; preds = %bb4.i
  %_18.i12.i = getelementptr inbounds nuw i8, ptr %ptr.i.i, i64 2
  %_7.i17.i = icmp ne ptr %_18.i12.i, %end_or_len.i.i
  tail call void @llvm.assume(i1 %_7.i17.i)
  %z.i = load i8, ptr %_18.i12.i, align 1, !noalias !1062, !noundef !23
  %_40.i = shl nuw nsw i32 %_35.i, 6
  %_42.i = and i8 %z.i, 63
  %_41.i = zext nneg i8 %_42.i to i32
  %y_z.i = or disjoint i32 %_40.i, %_41.i
  %_20.i = shl nuw nsw i32 %init.i, 12
  %6 = or disjoint i32 %y_z.i, %_20.i
  %_21.i = icmp samesign ugt i8 %x.i, -17
  br i1 %_21.i, label %bb8.i, label %bb14.i18

bb8.i:                                            ; preds = %bb6.i
  %_18.i19.i = getelementptr inbounds nuw i8, ptr %ptr.i.i, i64 3
  %_7.i24.i = icmp ne ptr %_18.i19.i, %end_or_len.i.i
  tail call void @llvm.assume(i1 %_7.i24.i)
  %w.i = load i8, ptr %_18.i19.i, align 1, !noalias !1062, !noundef !23
  %_26.i = shl nuw nsw i32 %init.i, 18
  %_25.i = and i32 %_26.i, 1835008
  %_46.i = shl nuw nsw i32 %y_z.i, 6
  %_48.i = and i8 %w.i, 63
  %_47.i = zext nneg i8 %_48.i to i32
  %_27.i = or disjoint i32 %_46.i, %_47.i
  %7 = or disjoint i32 %_27.i, %_25.i
  br label %bb14.i18

bb14.i18:                                         ; preds = %bb11, %bb8.i, %bb6.i, %bb3.i, %bb4.i, %bb16
  %_7.sroa.0.163 = phi i32 [ %_7.i, %bb3.i ], [ %7, %bb8.i ], [ %6, %bb6.i ], [ %5, %bb4.i ], [ 1114112, %bb16 ], [ 1114112, %bb11 ]
  %x.i20 = load i8, ptr %_24, align 1, !noalias !1068, !noundef !23
  %_6.i21 = icmp sgt i8 %x.i20, -1
  br i1 %_6.i21, label %bb3.i54, label %bb4.i22

bb4.i22:                                          ; preds = %bb14.i18
  %_30.i23 = and i8 %x.i20, 31
  %init.i24 = zext nneg i8 %_30.i23 to i32
  %y.i27 = load i8, ptr %_18.i.i19, align 1, !noalias !1068, !noundef !23
  %_34.i28 = shl nuw nsw i32 %init.i24, 6
  %_36.i29 = and i8 %y.i27, 63
  %_35.i30 = zext nneg i8 %_36.i29 to i32
  %8 = or disjoint i32 %_34.i28, %_35.i30
  %_13.i31 = icmp samesign ugt i8 %x.i20, -33
  br i1 %_13.i31, label %bb6.i34, label %bb26

bb3.i54:                                          ; preds = %bb14.i18
  %_7.i55 = zext nneg i8 %x.i20 to i32
  br label %bb26

bb6.i34:                                          ; preds = %bb4.i22
  tail call void @llvm.assume(i1 %_7.i17.i35)
  %z.i37 = load i8, ptr %_18.i12.i26, align 1, !noalias !1068, !noundef !23
  %_40.i38 = shl nuw nsw i32 %_35.i30, 6
  %_42.i39 = and i8 %z.i37, 63
  %_41.i40 = zext nneg i8 %_42.i39 to i32
  %y_z.i41 = or disjoint i32 %_40.i38, %_41.i40
  %_20.i42 = shl nuw nsw i32 %init.i24, 12
  %9 = or disjoint i32 %y_z.i41, %_20.i42
  %_21.i43 = icmp samesign ugt i8 %x.i20, -17
  br i1 %_21.i43, label %bb8.i44, label %bb26

bb8.i44:                                          ; preds = %bb6.i34
  tail call void @llvm.assume(i1 %_7.i24.i45)
  %w.i47 = load i8, ptr %_18.i19.i36, align 1, !noalias !1068, !noundef !23
  %_26.i48 = shl nuw nsw i32 %init.i24, 18
  %_25.i49 = and i32 %_26.i48, 1835008
  %_46.i50 = shl nuw nsw i32 %y_z.i41, 6
  %_48.i51 = and i8 %w.i47, 63
  %_47.i52 = zext nneg i8 %_48.i51 to i32
  %_27.i53 = or disjoint i32 %_46.i50, %_47.i52
  %10 = or disjoint i32 %_27.i53, %_25.i49
  br label %bb26

bb26:                                             ; preds = %bb3.i54, %bb8.i44, %bb6.i34, %bb4.i22
  %_0.sroa.4.0.i32.ph = phi i32 [ %8, %bb4.i22 ], [ %9, %bb6.i34 ], [ %10, %bb8.i44 ], [ %_7.i55, %bb3.i54 ]
  %11 = icmp samesign ult i32 %_0.sroa.4.0.i32.ph, 1114112
  tail call void @llvm.assume(i1 %11)
  %_63.not = icmp eq i32 %_7.sroa.0.163, %_0.sroa.4.0.i32.ph
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_9)
  br i1 %_63.not, label %bb4, label %bb7

bb4:                                              ; preds = %bb26
  %exitcond.not = icmp eq i64 %3, %n
  br i1 %exitcond.not, label %bb7, label %bb11
}
