define noundef range(i32 0, 2) i32 @f_gold(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %s.0, i64 noundef %s.1) unnamed_addr #1 {
start:
  %_17 = alloca [16 x i8], align 8
  %_12 = alloca [16 x i8], align 8
  %_23 = getelementptr inbounds nuw i8, ptr %s.0, i64 %s.1
  %0 = getelementptr inbounds nuw i8, ptr %_12, i64 8
  %j.sroa.0.056 = add i64 %s.1, -1
  %1 = getelementptr inbounds nuw i8, ptr %_17, i64 8
  br label %bb2

bb2:                                              ; preds = %start, %bb4
  %j.sroa.0.058 = phi i64 [ %j.sroa.0.056, %start ], [ %j.sroa.0.0, %bb4 ]
  %i.sroa.0.057 = phi i64 [ 0, %start ], [ %10, %bb4 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_12)
  store ptr %s.0, ptr %_12, align 8
  store ptr %_23, ptr %0, align 8
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_27 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_12, i64 noundef %i.sroa.0.057) #22
  %.not = icmp eq i64 %_27, 0
  br i1 %.not, label %bb10, label %bb20, !prof !1040

bb6:                                              ; preds = %bb19, %bb4
  %_0.sroa.0.0 = phi i32 [ 1, %bb4 ], [ 0, %bb19 ]
  ret i32 %_0.sroa.0.0

bb10:                                             ; preds = %bb2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1041)
  %ptr.i.i = load ptr, ptr %_12, align 8, !alias.scope !1044, !nonnull !23, !noundef !23
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
  br i1 %_13.i, label %bb6.i, label %bb13

bb3.i:                                            ; preds = %bb14.i
  %_7.i = zext nneg i8 %x.i to i32
  br label %bb13

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
  br i1 %_21.i, label %bb8.i, label %bb13

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
  br label %bb13

bb13:                                             ; preds = %bb3.i, %bb8.i, %bb6.i, %bb4.i
  %_0.sroa.4.0.i.ph = phi i32 [ %2, %bb4.i ], [ %3, %bb6.i ], [ %4, %bb8.i ], [ %_7.i, %bb3.i ]
  %5 = icmp samesign ult i32 %_0.sroa.4.0.i.ph, 1114112
  tail call void @llvm.assume(i1 %5)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_17)
  store ptr %s.0, ptr %_17, align 8
  store ptr %_23, ptr %1, align 8
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_42 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_17, i64 noundef %j.sroa.0.058) #22
  %.not7 = icmp eq i64 %_42, 0
  br i1 %.not7, label %bb16, label %bb21, !prof !1040

bb20:                                             ; preds = %bb10, %bb2
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_d25132b66dfc6bc7f83a9672ef61f6d8) #18
  unreachable

bb16:                                             ; preds = %bb13
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1047)
  %ptr.i.i8 = load ptr, ptr %_17, align 8, !alias.scope !1050, !nonnull !23, !noundef !23
  %end_or_len.i.i9 = load ptr, ptr %1, align 8, !alias.scope !1050, !nonnull !23, !noundef !23
  %_7.i.i10 = icmp eq ptr %ptr.i.i8, %end_or_len.i.i9
  br i1 %_7.i.i10, label %bb21, label %bb14.i11

bb14.i11:                                         ; preds = %bb16
  %x.i13 = load i8, ptr %ptr.i.i8, align 1, !noalias !1047, !noundef !23
  %_6.i14 = icmp sgt i8 %x.i13, -1
  br i1 %_6.i14, label %bb3.i47, label %bb4.i15

bb4.i15:                                          ; preds = %bb14.i11
  %_18.i.i12 = getelementptr inbounds nuw i8, ptr %ptr.i.i8, i64 1
  %_30.i16 = and i8 %x.i13, 31
  %init.i17 = zext nneg i8 %_30.i16 to i32
  %_7.i10.i18 = icmp ne ptr %_18.i.i12, %end_or_len.i.i9
  tail call void @llvm.assume(i1 %_7.i10.i18)
  %y.i20 = load i8, ptr %_18.i.i12, align 1, !noalias !1047, !noundef !23
  %_34.i21 = shl nuw nsw i32 %init.i17, 6
  %_36.i22 = and i8 %y.i20, 63
  %_35.i23 = zext nneg i8 %_36.i22 to i32
  %6 = or disjoint i32 %_34.i21, %_35.i23
  %_13.i24 = icmp samesign ugt i8 %x.i13, -33
  br i1 %_13.i24, label %bb6.i27, label %bb19

bb3.i47:                                          ; preds = %bb14.i11
  %_7.i48 = zext nneg i8 %x.i13 to i32
  br label %bb19

bb6.i27:                                          ; preds = %bb4.i15
  %_18.i12.i19 = getelementptr inbounds nuw i8, ptr %ptr.i.i8, i64 2
  %_7.i17.i28 = icmp ne ptr %_18.i12.i19, %end_or_len.i.i9
  tail call void @llvm.assume(i1 %_7.i17.i28)
  %z.i30 = load i8, ptr %_18.i12.i19, align 1, !noalias !1047, !noundef !23
  %_40.i31 = shl nuw nsw i32 %_35.i23, 6
  %_42.i32 = and i8 %z.i30, 63
  %_41.i33 = zext nneg i8 %_42.i32 to i32
  %y_z.i34 = or disjoint i32 %_40.i31, %_41.i33
  %_20.i35 = shl nuw nsw i32 %init.i17, 12
  %7 = or disjoint i32 %y_z.i34, %_20.i35
  %_21.i36 = icmp samesign ugt i8 %x.i13, -17
  br i1 %_21.i36, label %bb8.i37, label %bb19

bb8.i37:                                          ; preds = %bb6.i27
  %_18.i19.i29 = getelementptr inbounds nuw i8, ptr %ptr.i.i8, i64 3
  %_7.i24.i38 = icmp ne ptr %_18.i19.i29, %end_or_len.i.i9
  tail call void @llvm.assume(i1 %_7.i24.i38)
  %w.i40 = load i8, ptr %_18.i19.i29, align 1, !noalias !1047, !noundef !23
  %_26.i41 = shl nuw nsw i32 %init.i17, 18
  %_25.i42 = and i32 %_26.i41, 1835008
  %_46.i43 = shl nuw nsw i32 %y_z.i34, 6
  %_48.i44 = and i8 %w.i40, 63
  %_47.i45 = zext nneg i8 %_48.i44 to i32
  %_27.i46 = or disjoint i32 %_46.i43, %_47.i45
  %8 = or disjoint i32 %_27.i46, %_25.i42
  br label %bb19

bb19:                                             ; preds = %bb3.i47, %bb8.i37, %bb6.i27, %bb4.i15
  %_0.sroa.4.0.i25.ph = phi i32 [ %6, %bb4.i15 ], [ %7, %bb6.i27 ], [ %8, %bb8.i37 ], [ %_7.i48, %bb3.i47 ]
  %9 = icmp samesign ult i32 %_0.sroa.4.0.i25.ph, 1114112
  tail call void @llvm.assume(i1 %9)
  %_8.not = icmp eq i32 %_0.sroa.4.0.i.ph, %_0.sroa.4.0.i25.ph
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_17)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_12)
  br i1 %_8.not, label %bb4, label %bb6

bb21:                                             ; preds = %bb16, %bb13
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_7cf0ec3967bc7cb0e7998bc2db323525) #18
  unreachable

bb4:                                              ; preds = %bb19
  %10 = add i64 %i.sroa.0.057, 1
  %j.sroa.0.0 = add i64 %j.sroa.0.058, -1
  %_5.not = icmp ugt i64 %10, %j.sroa.0.0
  br i1 %_5.not, label %bb6, label %bb2
}
