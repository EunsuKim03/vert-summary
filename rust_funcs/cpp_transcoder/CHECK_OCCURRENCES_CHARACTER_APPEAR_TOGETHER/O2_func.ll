define noundef range(i32 0, 2) i32 @f_gold(ptr dead_on_return noalias noundef readonly align 8 captures(none) dereferenceable(24) %s, i32 noundef range(i32 0, 1114112) %c) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_22 = alloca [16 x i8], align 8
  %_12 = alloca [16 x i8], align 8
  %0 = getelementptr inbounds nuw i8, ptr %s, i64 16
  %n = load i64, ptr %0, align 8, !noundef !23
  %_25 = icmp sgt i64 %n, -1
  tail call void @llvm.assume(i1 %_25)
  %_674.not = icmp eq i64 %n, 0
  br i1 %_674.not, label %bb14, label %bb2.lr.ph

bb2.lr.ph:                                        ; preds = %start
  %1 = getelementptr inbounds nuw i8, ptr %s, i64 8
  %_29 = load ptr, ptr %1, align 8, !nonnull !23, !noundef !23
  %_36 = getelementptr inbounds nuw i8, ptr %_29, i64 %n
  %2 = getelementptr inbounds nuw i8, ptr %_12, i64 8
  %3 = getelementptr inbounds nuw i8, ptr %_22, i64 8
  br label %bb2

bb14:                                             ; preds = %bb13, %bb8, %start
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1040)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1043)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1046)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1049)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1052)
  %self1.i.i.i.i1.i.i = load i64, ptr %s, align 8, !range !1055, !alias.scope !1056, !noalias !1059, !noundef !23
  %_6.i.i.i.i2.i.i = icmp eq i64 %self1.i.i.i.i1.i.i, 0
  br i1 %_6.i.i.i.i2.i.i, label %bb15, label %bb2.i.i.i3.i.i

bb2.i.i.i3.i.i:                                   ; preds = %bb14
  %4 = getelementptr inbounds nuw i8, ptr %s, i64 8
  %self3.i.i.i.i4.i.i = load ptr, ptr %4, align 8, !alias.scope !1056, !noalias !1059, !nonnull !23, !noundef !23
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i, i64 noundef %self1.i.i.i.i1.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !1061
  br label %bb15

bb2:                                              ; preds = %bb2.lr.ph, %bb13
  %one_seen.sroa.0.076 = phi i32 [ 0, %bb2.lr.ph ], [ %one_seen.sroa.0.1, %bb13 ]
  %i.sroa.0.075 = phi i64 [ 0, %bb2.lr.ph ], [ %i.sroa.0.1, %bb13 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_12)
  store ptr %_29, ptr %_12, align 8
  store ptr %_36, ptr %2, align 8
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_40 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_12, i64 noundef %i.sroa.0.075)
  %.not = icmp eq i64 %_40, 0
  br i1 %.not, label %bb21, label %bb31.invoke, !prof !1062

bb15:                                             ; preds = %bb2.i.i.i3.i.i16, %bb4, %bb2.i.i.i3.i.i, %bb14
  %_0.sroa.0.0 = phi i32 [ 1, %bb14 ], [ 1, %bb2.i.i.i3.i.i ], [ 0, %bb4 ], [ 0, %bb2.i.i.i3.i.i16 ]
  ret i32 %_0.sroa.0.0

cleanup:                                          ; preds = %bb31.invoke
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1063)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1066)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1069)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1072)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1075)
  %self1.i.i.i.i1.i.i9 = load i64, ptr %s, align 8, !range !1055, !alias.scope !1078, !noalias !1081, !noundef !23
  %_6.i.i.i.i2.i.i10 = icmp eq i64 %self1.i.i.i.i1.i.i9, 0
  br i1 %_6.i.i.i.i2.i.i10, label %bb17, label %bb2.i.i.i3.i.i11

bb2.i.i.i3.i.i11:                                 ; preds = %cleanup
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_29, i64 noundef %self1.i.i.i.i1.i.i9, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !1083
  br label %bb17

bb21:                                             ; preds = %bb2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1084)
  %ptr.i.i = load ptr, ptr %_12, align 8, !alias.scope !1087, !nonnull !23, !noundef !23
  %end_or_len.i.i = load ptr, ptr %2, align 8, !alias.scope !1087, !nonnull !23, !noundef !23
  %_7.i.i = icmp eq ptr %ptr.i.i, %end_or_len.i.i
  br i1 %_7.i.i, label %bb31.invoke, label %bb14.i

bb14.i:                                           ; preds = %bb21
  %x.i = load i8, ptr %ptr.i.i, align 1, !noalias !1084, !noundef !23
  %_6.i = icmp sgt i8 %x.i, -1
  br i1 %_6.i, label %bb3.i, label %bb4.i

bb4.i:                                            ; preds = %bb14.i
  %_18.i.i = getelementptr inbounds nuw i8, ptr %ptr.i.i, i64 1
  %_30.i = and i8 %x.i, 31
  %init.i = zext nneg i8 %_30.i to i32
  %_7.i10.i = icmp ne ptr %_18.i.i, %end_or_len.i.i
  tail call void @llvm.assume(i1 %_7.i10.i)
  %y.i = load i8, ptr %_18.i.i, align 1, !noalias !1084, !noundef !23
  %_34.i = shl nuw nsw i32 %init.i, 6
  %_36.i = and i8 %y.i, 63
  %_35.i = zext nneg i8 %_36.i to i32
  %6 = or disjoint i32 %_34.i, %_35.i
  %_13.i = icmp samesign ugt i8 %x.i, -33
  br i1 %_13.i, label %bb6.i, label %bb24

bb3.i:                                            ; preds = %bb14.i
  %_7.i = zext nneg i8 %x.i to i32
  br label %bb24

bb6.i:                                            ; preds = %bb4.i
  %_18.i12.i = getelementptr inbounds nuw i8, ptr %ptr.i.i, i64 2
  %_7.i17.i = icmp ne ptr %_18.i12.i, %end_or_len.i.i
  tail call void @llvm.assume(i1 %_7.i17.i)
  %z.i = load i8, ptr %_18.i12.i, align 1, !noalias !1084, !noundef !23
  %_40.i = shl nuw nsw i32 %_35.i, 6
  %_42.i = and i8 %z.i, 63
  %_41.i = zext nneg i8 %_42.i to i32
  %y_z.i = or disjoint i32 %_40.i, %_41.i
  %_20.i = shl nuw nsw i32 %init.i, 12
  %7 = or disjoint i32 %y_z.i, %_20.i
  %_21.i = icmp samesign ugt i8 %x.i, -17
  br i1 %_21.i, label %bb8.i, label %bb24

bb8.i:                                            ; preds = %bb6.i
  %_18.i19.i = getelementptr inbounds nuw i8, ptr %ptr.i.i, i64 3
  %_7.i24.i = icmp ne ptr %_18.i19.i, %end_or_len.i.i
  tail call void @llvm.assume(i1 %_7.i24.i)
  %w.i = load i8, ptr %_18.i19.i, align 1, !noalias !1084, !noundef !23
  %_26.i = shl nuw nsw i32 %init.i, 18
  %_25.i = and i32 %_26.i, 1835008
  %_46.i = shl nuw nsw i32 %y_z.i, 6
  %_48.i = and i8 %w.i, 63
  %_47.i = zext nneg i8 %_48.i to i32
  %_27.i = or disjoint i32 %_46.i, %_47.i
  %8 = or disjoint i32 %_27.i, %_25.i
  br label %bb24

bb24:                                             ; preds = %bb3.i, %bb8.i, %bb6.i, %bb4.i
  %_0.sroa.4.0.i.ph = phi i32 [ %6, %bb4.i ], [ %7, %bb6.i ], [ %8, %bb8.i ], [ %_7.i, %bb3.i ]
  %9 = icmp samesign ult i32 %_0.sroa.4.0.i.ph, 1114112
  tail call void @llvm.assume(i1 %9)
  %_8 = icmp eq i32 %_0.sroa.4.0.i.ph, %c
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_12)
  br i1 %_8, label %bb3, label %bb12

bb31.invoke:                                      ; preds = %bb2, %bb21, %bb7, %bb27
  %10 = phi ptr [ @alloc_aecda470804c2e4e7199fcb2c628395e, %bb27 ], [ @alloc_aecda470804c2e4e7199fcb2c628395e, %bb7 ], [ @alloc_c8b2f52b66ad242467ff179b0c1e3a9e, %bb21 ], [ @alloc_c8b2f52b66ad242467ff179b0c1e3a9e, %bb2 ]
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %10) #20
          to label %bb31.cont unwind label %cleanup

bb31.cont:                                        ; preds = %bb31.invoke
  unreachable

bb12:                                             ; preds = %bb24
  %11 = add nuw nsw i64 %i.sroa.0.075, 1
  br label %bb13

bb3:                                              ; preds = %bb24
  %_15.not = icmp eq i32 %one_seen.sroa.0.076, 0
  br i1 %_15.not, label %bb6.preheader, label %bb4

bb6.preheader:                                    ; preds = %bb3
  %_1672 = icmp samesign ult i64 %i.sroa.0.075, %n
  br i1 %_1672, label %bb7, label %bb13

bb13:                                             ; preds = %bb30, %bb6.preheader, %bb12
  %i.sroa.0.1 = phi i64 [ %11, %bb12 ], [ %i.sroa.0.075, %bb6.preheader ], [ %i.sroa.0.273, %bb30 ]
  %one_seen.sroa.0.1 = phi i32 [ %one_seen.sroa.0.076, %bb12 ], [ 1, %bb6.preheader ], [ 1, %bb30 ]
  %_6 = icmp ult i64 %i.sroa.0.1, %n
  br i1 %_6, label %bb2, label %bb14

bb4:                                              ; preds = %bb3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1090)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1093)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1096)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1099)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1102)
  %self1.i.i.i.i1.i.i14 = load i64, ptr %s, align 8, !range !1055, !alias.scope !1105, !noalias !1108, !noundef !23
  %_6.i.i.i.i2.i.i15 = icmp eq i64 %self1.i.i.i.i1.i.i14, 0
  br i1 %_6.i.i.i.i2.i.i15, label %bb15, label %bb2.i.i.i3.i.i16

bb2.i.i.i3.i.i16:                                 ; preds = %bb4
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_29, i64 noundef %self1.i.i.i.i1.i.i14, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !1110
  br label %bb15

bb7:                                              ; preds = %bb6.preheader, %bb8
  %i.sroa.0.273 = phi i64 [ %16, %bb8 ], [ %i.sroa.0.075, %bb6.preheader ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_22)
  store ptr %_29, ptr %_22, align 8
  store ptr %_36, ptr %3, align 8
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_62 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_22, i64 noundef %i.sroa.0.273)
  %.not8 = icmp eq i64 %_62, 0
  br i1 %.not8, label %bb27, label %bb31.invoke, !prof !1062

bb27:                                             ; preds = %bb7
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1111)
  %ptr.i.i19 = load ptr, ptr %_22, align 8, !alias.scope !1114, !nonnull !23, !noundef !23
  %end_or_len.i.i20 = load ptr, ptr %3, align 8, !alias.scope !1114, !nonnull !23, !noundef !23
  %_7.i.i21 = icmp eq ptr %ptr.i.i19, %end_or_len.i.i20
  br i1 %_7.i.i21, label %bb31.invoke, label %bb14.i22

bb14.i22:                                         ; preds = %bb27
  %x.i24 = load i8, ptr %ptr.i.i19, align 1, !noalias !1111, !noundef !23
  %_6.i25 = icmp sgt i8 %x.i24, -1
  br i1 %_6.i25, label %bb3.i58, label %bb4.i26

bb4.i26:                                          ; preds = %bb14.i22
  %_18.i.i23 = getelementptr inbounds nuw i8, ptr %ptr.i.i19, i64 1
  %_30.i27 = and i8 %x.i24, 31
  %init.i28 = zext nneg i8 %_30.i27 to i32
  %_7.i10.i29 = icmp ne ptr %_18.i.i23, %end_or_len.i.i20
  tail call void @llvm.assume(i1 %_7.i10.i29)
  %y.i31 = load i8, ptr %_18.i.i23, align 1, !noalias !1111, !noundef !23
  %_34.i32 = shl nuw nsw i32 %init.i28, 6
  %_36.i33 = and i8 %y.i31, 63
  %_35.i34 = zext nneg i8 %_36.i33 to i32
  %12 = or disjoint i32 %_34.i32, %_35.i34
  %_13.i35 = icmp samesign ugt i8 %x.i24, -33
  br i1 %_13.i35, label %bb6.i38, label %bb30

bb3.i58:                                          ; preds = %bb14.i22
  %_7.i59 = zext nneg i8 %x.i24 to i32
  br label %bb30

bb6.i38:                                          ; preds = %bb4.i26
  %_18.i12.i30 = getelementptr inbounds nuw i8, ptr %ptr.i.i19, i64 2
  %_7.i17.i39 = icmp ne ptr %_18.i12.i30, %end_or_len.i.i20
  tail call void @llvm.assume(i1 %_7.i17.i39)
  %z.i41 = load i8, ptr %_18.i12.i30, align 1, !noalias !1111, !noundef !23
  %_40.i42 = shl nuw nsw i32 %_35.i34, 6
  %_42.i43 = and i8 %z.i41, 63
  %_41.i44 = zext nneg i8 %_42.i43 to i32
  %y_z.i45 = or disjoint i32 %_40.i42, %_41.i44
  %_20.i46 = shl nuw nsw i32 %init.i28, 12
  %13 = or disjoint i32 %y_z.i45, %_20.i46
  %_21.i47 = icmp samesign ugt i8 %x.i24, -17
  br i1 %_21.i47, label %bb8.i48, label %bb30

bb8.i48:                                          ; preds = %bb6.i38
  %_18.i19.i40 = getelementptr inbounds nuw i8, ptr %ptr.i.i19, i64 3
  %_7.i24.i49 = icmp ne ptr %_18.i19.i40, %end_or_len.i.i20
  tail call void @llvm.assume(i1 %_7.i24.i49)
  %w.i51 = load i8, ptr %_18.i19.i40, align 1, !noalias !1111, !noundef !23
  %_26.i52 = shl nuw nsw i32 %init.i28, 18
  %_25.i53 = and i32 %_26.i52, 1835008
  %_46.i54 = shl nuw nsw i32 %y_z.i45, 6
  %_48.i55 = and i8 %w.i51, 63
  %_47.i56 = zext nneg i8 %_48.i55 to i32
  %_27.i57 = or disjoint i32 %_46.i54, %_47.i56
  %14 = or disjoint i32 %_27.i57, %_25.i53
  br label %bb30

bb30:                                             ; preds = %bb3.i58, %bb8.i48, %bb6.i38, %bb4.i26
  %_0.sroa.4.0.i36.ph = phi i32 [ %12, %bb4.i26 ], [ %13, %bb6.i38 ], [ %14, %bb8.i48 ], [ %_7.i59, %bb3.i58 ]
  %15 = icmp samesign ult i32 %_0.sroa.4.0.i36.ph, 1114112
  tail call void @llvm.assume(i1 %15)
  %_18 = icmp eq i32 %_0.sroa.4.0.i36.ph, %c
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_22)
  br i1 %_18, label %bb8, label %bb13

bb8:                                              ; preds = %bb30
  %16 = add i64 %i.sroa.0.273, 1
  %exitcond.not = icmp eq i64 %16, %n
  br i1 %exitcond.not, label %bb14, label %bb7

bb17:                                             ; preds = %bb2.i.i.i3.i.i11, %cleanup
  resume { ptr, i32 } %5
}
