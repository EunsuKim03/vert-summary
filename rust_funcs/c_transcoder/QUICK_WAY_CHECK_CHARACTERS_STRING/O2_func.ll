define noundef range(i32 0, 2) i32 @f_gold(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %s.0, i64 noundef %s.1) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_9 = alloca [16 x i8], align 8
  %_1553 = icmp ugt i64 %s.1, 1
  br i1 %_1553, label %bb6.lr.ph, label %bb5

bb6.lr.ph:                                        ; preds = %start
  %_22 = getelementptr inbounds nuw i8, ptr %s.0, i64 %s.1
  %0 = getelementptr inbounds nuw i8, ptr %_9, i64 8
  %_18.i.i9 = getelementptr inbounds nuw i8, ptr %s.0, i64 1
  %_18.i12.i16 = getelementptr inbounds nuw i8, ptr %s.0, i64 2
  %_7.i17.i25 = icmp samesign ne i64 %s.1, 2
  %_18.i19.i26 = getelementptr inbounds nuw i8, ptr %s.0, i64 3
  %_7.i24.i35 = icmp samesign ne i64 %s.1, 3
  br label %bb6

bb6:                                              ; preds = %bb6.lr.ph, %bb4
  %iter.sroa.0.054 = phi i64 [ 1, %bb6.lr.ph ], [ %1, %bb4 ]
  %1 = add nuw i64 %iter.sroa.0.054, 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_9)
  store ptr %s.0, ptr %_9, align 8
  store ptr %_22, ptr %0, align 8
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_26 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_9, i64 noundef %iter.sroa.0.054) #22
  %.not = icmp eq i64 %_26, 0
  br i1 %.not, label %bb10, label %bb20, !prof !1040

bb5:                                              ; preds = %bb19, %bb4, %start
  %_0.sroa.0.0 = phi i32 [ 1, %start ], [ 1, %bb4 ], [ 0, %bb19 ]
  ret i32 %_0.sroa.0.0

bb10:                                             ; preds = %bb6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1041)
  %ptr.i.i = load ptr, ptr %_9, align 8, !alias.scope !1044, !nonnull !23, !noundef !23
  %end_or_len.i.i = load ptr, ptr %0, align 8, !alias.scope !1044, !nonnull !23, !noundef !23
  %_7.i.i = icmp eq ptr %ptr.i.i, %end_or_len.i.i
  br i1 %_7.i.i, label %bb20, label %bb14.i

bb14.i:                                           ; preds = %bb10
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
  %2 = or disjoint i32 %_34.i, %_35.i
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
  %3 = or disjoint i32 %y_z.i, %_20.i
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
  %4 = or disjoint i32 %_27.i, %_25.i
  br label %bb16

bb20:                                             ; preds = %bb10, %bb6
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_bb475a26277ca2c15ec0a50f1c2e3777) #18
  unreachable

bb16:                                             ; preds = %bb4.i, %bb6.i, %bb8.i, %bb3.i
  %_0.sroa.4.0.i.ph = phi i32 [ %2, %bb4.i ], [ %3, %bb6.i ], [ %4, %bb8.i ], [ %_7.i, %bb3.i ]
  %5 = icmp samesign ult i32 %_0.sroa.4.0.i.ph, 1114112
  tail call void @llvm.assume(i1 %5)
  %x.i10 = load i8, ptr %s.0, align 1, !noalias !1047, !noundef !23
  %_6.i11 = icmp sgt i8 %x.i10, -1
  br i1 %_6.i11, label %bb3.i44, label %bb4.i12

bb4.i12:                                          ; preds = %bb16
  %_30.i13 = and i8 %x.i10, 31
  %init.i14 = zext nneg i8 %_30.i13 to i32
  %y.i17 = load i8, ptr %_18.i.i9, align 1, !noalias !1047, !noundef !23
  %_34.i18 = shl nuw nsw i32 %init.i14, 6
  %_36.i19 = and i8 %y.i17, 63
  %_35.i20 = zext nneg i8 %_36.i19 to i32
  %6 = or disjoint i32 %_34.i18, %_35.i20
  %_13.i21 = icmp samesign ugt i8 %x.i10, -33
  br i1 %_13.i21, label %bb6.i24, label %bb19

bb3.i44:                                          ; preds = %bb16
  %_7.i45 = zext nneg i8 %x.i10 to i32
  br label %bb19

bb6.i24:                                          ; preds = %bb4.i12
  tail call void @llvm.assume(i1 %_7.i17.i25)
  %z.i27 = load i8, ptr %_18.i12.i16, align 1, !noalias !1047, !noundef !23
  %_40.i28 = shl nuw nsw i32 %_35.i20, 6
  %_42.i29 = and i8 %z.i27, 63
  %_41.i30 = zext nneg i8 %_42.i29 to i32
  %y_z.i31 = or disjoint i32 %_40.i28, %_41.i30
  %_20.i32 = shl nuw nsw i32 %init.i14, 12
  %7 = or disjoint i32 %y_z.i31, %_20.i32
  %_21.i33 = icmp samesign ugt i8 %x.i10, -17
  br i1 %_21.i33, label %bb8.i34, label %bb19

bb8.i34:                                          ; preds = %bb6.i24
  tail call void @llvm.assume(i1 %_7.i24.i35)
  %w.i37 = load i8, ptr %_18.i19.i26, align 1, !noalias !1047, !noundef !23
  %_26.i38 = shl nuw nsw i32 %init.i14, 18
  %_25.i39 = and i32 %_26.i38, 1835008
  %_46.i40 = shl nuw nsw i32 %y_z.i31, 6
  %_48.i41 = and i8 %w.i37, 63
  %_47.i42 = zext nneg i8 %_48.i41 to i32
  %_27.i43 = or disjoint i32 %_46.i40, %_47.i42
  %8 = or disjoint i32 %_27.i43, %_25.i39
  br label %bb19

bb19:                                             ; preds = %bb3.i44, %bb8.i34, %bb6.i24, %bb4.i12
  %_0.sroa.4.0.i22.ph = phi i32 [ %6, %bb4.i12 ], [ %7, %bb6.i24 ], [ %8, %bb8.i34 ], [ %_7.i45, %bb3.i44 ]
  %9 = icmp samesign ult i32 %_0.sroa.4.0.i22.ph, 1114112
  tail call void @llvm.assume(i1 %9)
  %_5.not = icmp eq i32 %_0.sroa.4.0.i.ph, %_0.sroa.4.0.i22.ph
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_9)
  br i1 %_5.not, label %bb4, label %bb5

bb4:                                              ; preds = %bb19
  %exitcond.not = icmp eq i64 %1, %s.1
  br i1 %exitcond.not, label %bb5, label %bb6
}
