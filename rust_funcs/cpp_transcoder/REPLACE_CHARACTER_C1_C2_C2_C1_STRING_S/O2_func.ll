define void @f_gold(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_0, ptr dead_on_return noalias noundef align 8 captures(none) dereferenceable(24) %s, i32 noundef range(i32 0, 1114112) %c1, i32 noundef range(i32 0, 1114112) %c2) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_98.sroa.0 = alloca i32, align 4
  %_60.sroa.0 = alloca i32, align 4
  %_23 = alloca [16 x i8], align 8
  %_11 = alloca [16 x i8], align 8
  %0 = getelementptr inbounds nuw i8, ptr %s, i64 16
  %l = load i64, ptr %0, align 8, !noundef !23
  %_31 = icmp sgt i64 %l, -1
  tail call void @llvm.assume(i1 %_31)
  %_32130.not = icmp eq i64 %l, 0
  br i1 %_32130.not, label %bb18, label %bb17.lr.ph

bb17.lr.ph:                                       ; preds = %start
  %1 = getelementptr inbounds nuw i8, ptr %s, i64 8
  %2 = getelementptr inbounds nuw i8, ptr %_11, i64 8
  %3 = getelementptr inbounds nuw i8, ptr %_23, i64 8
  %_11.i54 = icmp samesign ult i32 %c1, 128
  %_12.i56 = icmp samesign ult i32 %c1, 2048
  %4 = trunc i32 %c1 to i8
  %_5.i.i57 = and i8 %4, 63
  %last1.i.i58 = or disjoint i8 %_5.i.i57, -128
  %_10.i.i59 = lshr i32 %c1, 6
  %5 = trunc i32 %_10.i.i59 to i8
  %_8.i.i60 = and i8 %5, 63
  %last2.i.i61 = or disjoint i8 %_8.i.i60, -128
  %_14.i.i62 = lshr i32 %c1, 12
  %6 = trunc i32 %_14.i.i62 to i8
  %_12.i.i63 = and i8 %6, 63
  %last3.i.i64 = or disjoint i8 %_12.i.i63, -128
  %_18.i.i65 = lshr i32 %c1, 18
  %_16.i.i66 = trunc nuw nsw i32 %_18.i.i65 to i8
  %last4.i.i67 = or disjoint i8 %_16.i.i66, -16
  %_13.i69 = icmp samesign ult i32 %c1, 65536
  %7 = or disjoint i8 %6, -32
  %8 = or disjoint i8 %5, -64
  %_11.i = icmp samesign ult i32 %c2, 128
  %_12.i = icmp samesign ult i32 %c2, 2048
  %9 = trunc i32 %c2 to i8
  %_5.i.i = and i8 %9, 63
  %last1.i.i = or disjoint i8 %_5.i.i, -128
  %_10.i.i = lshr i32 %c2, 6
  %10 = trunc i32 %_10.i.i to i8
  %_8.i.i = and i8 %10, 63
  %last2.i.i = or disjoint i8 %_8.i.i, -128
  %_14.i.i = lshr i32 %c2, 12
  %11 = trunc i32 %_14.i.i to i8
  %_12.i.i = and i8 %11, 63
  %last3.i.i = or disjoint i8 %_12.i.i, -128
  %_18.i.i10 = lshr i32 %c2, 18
  %_16.i.i = trunc nuw nsw i32 %_18.i.i10 to i8
  %last4.i.i = or disjoint i8 %_16.i.i, -16
  %_13.i11 = icmp samesign ult i32 %c2, 65536
  %12 = or disjoint i8 %11, -32
  %13 = or disjoint i8 %10, -64
  %_98.sroa.0.1.sroa_idx = getelementptr inbounds nuw i8, ptr %_98.sroa.0, i64 1
  %_98.sroa.0.2.sroa_idx = getelementptr inbounds nuw i8, ptr %_98.sroa.0, i64 2
  %_98.sroa.0.3.sroa_idx = getelementptr inbounds nuw i8, ptr %_98.sroa.0, i64 3
  %_98.sroa.0.1.sroa_idx165 = getelementptr inbounds nuw i8, ptr %_98.sroa.0, i64 1
  %_98.sroa.0.2.sroa_idx167 = getelementptr inbounds nuw i8, ptr %_98.sroa.0, i64 2
  %_98.sroa.0.1.sroa_idx166 = getelementptr inbounds nuw i8, ptr %_98.sroa.0, i64 1
  %_60.sroa.0.1.sroa_idx = getelementptr inbounds nuw i8, ptr %_60.sroa.0, i64 1
  %_60.sroa.0.2.sroa_idx = getelementptr inbounds nuw i8, ptr %_60.sroa.0, i64 2
  %_60.sroa.0.3.sroa_idx = getelementptr inbounds nuw i8, ptr %_60.sroa.0, i64 3
  %_60.sroa.0.1.sroa_idx162 = getelementptr inbounds nuw i8, ptr %_60.sroa.0, i64 1
  %_60.sroa.0.2.sroa_idx164 = getelementptr inbounds nuw i8, ptr %_60.sroa.0, i64 2
  %_60.sroa.0.1.sroa_idx163 = getelementptr inbounds nuw i8, ptr %_60.sroa.0, i64 1
  br label %bb17

bb18:                                             ; preds = %bb12, %start
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_0, ptr noundef nonnull align 8 dereferenceable(24) %s, i64 24, i1 false)
  ret void

bb17:                                             ; preds = %bb17.lr.ph, %bb12
  %iter.sroa.0.0131 = phi i64 [ 0, %bb17.lr.ph ], [ %14, %bb12 ]
  %14 = add nuw nsw i64 %iter.sroa.0.0131, 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_11)
  %_39 = load ptr, ptr %1, align 8, !nonnull !23, !noundef !23
  %_38 = load i64, ptr %0, align 8, !noundef !23
  %_46 = getelementptr inbounds nuw i8, ptr %_39, i64 %_38
  store ptr %_39, ptr %_11, align 8
  store ptr %_46, ptr %2, align 8
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_50 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_11, i64 noundef %iter.sroa.0.0131)
  %.not = icmp eq i64 %_50, 0
  br i1 %.not, label %bb21, label %bb39.invoke, !prof !1031

bb15:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h2fc0af7d5458b074E.exit100", %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h2fc0af7d5458b074E.exit87", %cleanup
  %.pn = phi { ptr, i32 } [ %15, %cleanup ], [ %30, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h2fc0af7d5458b074E.exit100" ], [ %26, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h2fc0af7d5458b074E.exit87" ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1251)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1254)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1257)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1260)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1263)
  %self1.i.i.i.i1.i.i = load i64, ptr %s, align 8, !range !1066, !alias.scope !1266, !noalias !1269, !noundef !23
  %_6.i.i.i.i2.i.i = icmp eq i64 %self1.i.i.i.i1.i.i, 0
  br i1 %_6.i.i.i.i2.i.i, label %bb16, label %bb2.i.i.i3.i.i

bb2.i.i.i3.i.i:                                   ; preds = %bb15
  %self3.i.i.i.i4.i.i = load ptr, ptr %1, align 8, !alias.scope !1266, !noalias !1269, !nonnull !23, !noundef !23
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i, i64 noundef %self1.i.i.i.i1.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !1271
  br label %bb16

cleanup:                                          ; preds = %bb39.invoke, %bb3.i.i93.invoke
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %bb15

bb21:                                             ; preds = %bb17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1272)
  %ptr.i.i = load ptr, ptr %_11, align 8, !alias.scope !1275, !nonnull !23, !noundef !23
  %end_or_len.i.i = load ptr, ptr %2, align 8, !alias.scope !1275, !nonnull !23, !noundef !23
  %_7.i.i = icmp eq ptr %ptr.i.i, %end_or_len.i.i
  br i1 %_7.i.i, label %bb39.invoke, label %bb14.i

bb14.i:                                           ; preds = %bb21
  %x.i = load i8, ptr %ptr.i.i, align 1, !noalias !1272, !noundef !23
  %_6.i = icmp sgt i8 %x.i, -1
  br i1 %_6.i, label %bb3.i, label %bb4.i

bb4.i:                                            ; preds = %bb14.i
  %_18.i.i = getelementptr inbounds nuw i8, ptr %ptr.i.i, i64 1
  %_30.i = and i8 %x.i, 31
  %init.i = zext nneg i8 %_30.i to i32
  %_7.i10.i = icmp ne ptr %_18.i.i, %end_or_len.i.i
  tail call void @llvm.assume(i1 %_7.i10.i)
  %y.i = load i8, ptr %_18.i.i, align 1, !noalias !1272, !noundef !23
  %_34.i = shl nuw nsw i32 %init.i, 6
  %_36.i = and i8 %y.i, 63
  %_35.i = zext nneg i8 %_36.i to i32
  %16 = or disjoint i32 %_34.i, %_35.i
  %_13.i = icmp samesign ugt i8 %x.i, -33
  br i1 %_13.i, label %bb6.i, label %bb24

bb3.i:                                            ; preds = %bb14.i
  %_7.i = zext nneg i8 %x.i to i32
  br label %bb24

bb6.i:                                            ; preds = %bb4.i
  %_18.i12.i = getelementptr inbounds nuw i8, ptr %ptr.i.i, i64 2
  %_7.i17.i = icmp ne ptr %_18.i12.i, %end_or_len.i.i
  tail call void @llvm.assume(i1 %_7.i17.i)
  %z.i = load i8, ptr %_18.i12.i, align 1, !noalias !1272, !noundef !23
  %_40.i = shl nuw nsw i32 %_35.i, 6
  %_42.i = and i8 %z.i, 63
  %_41.i = zext nneg i8 %_42.i to i32
  %y_z.i = or disjoint i32 %_40.i, %_41.i
  %_20.i = shl nuw nsw i32 %init.i, 12
  %17 = or disjoint i32 %y_z.i, %_20.i
  %_21.i = icmp samesign ugt i8 %x.i, -17
  br i1 %_21.i, label %bb8.i, label %bb24

bb8.i:                                            ; preds = %bb6.i
  %_18.i19.i = getelementptr inbounds nuw i8, ptr %ptr.i.i, i64 3
  %_7.i24.i = icmp ne ptr %_18.i19.i, %end_or_len.i.i
  tail call void @llvm.assume(i1 %_7.i24.i)
  %w.i = load i8, ptr %_18.i19.i, align 1, !noalias !1272, !noundef !23
  %_26.i = shl nuw nsw i32 %init.i, 18
  %_25.i = and i32 %_26.i, 1835008
  %_46.i = shl nuw nsw i32 %y_z.i, 6
  %_48.i = and i8 %w.i, 63
  %_47.i = zext nneg i8 %_48.i to i32
  %_27.i = or disjoint i32 %_46.i, %_47.i
  %18 = or disjoint i32 %_27.i, %_25.i
  br label %bb24

bb24:                                             ; preds = %bb3.i, %bb8.i, %bb6.i, %bb4.i
  %_0.sroa.4.0.i.ph = phi i32 [ %16, %bb4.i ], [ %17, %bb6.i ], [ %18, %bb8.i ], [ %_7.i, %bb3.i ]
  %19 = icmp samesign ult i32 %_0.sroa.4.0.i.ph, 1114112
  tail call void @llvm.assume(i1 %19)
  %_7 = icmp eq i32 %_0.sroa.4.0.i.ph, %c1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_11)
  br i1 %_7, label %bb3, label %bb6

bb39.invoke:                                      ; preds = %bb28, %bb6, %bb30, %bb17, %bb21
  %20 = phi ptr [ @alloc_95740aa5a3105863e5e0aea14ec0eaa4, %bb21 ], [ @alloc_95740aa5a3105863e5e0aea14ec0eaa4, %bb17 ], [ @alloc_f2778d43092910bbc687852be59ae1a4, %bb30 ], [ @alloc_f2778d43092910bbc687852be59ae1a4, %bb6 ], [ @alloc_f2778d43092910bbc687852be59ae1a4, %bb28 ]
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %20) #23
          to label %bb39.cont unwind label %cleanup

bb39.cont:                                        ; preds = %bb39.invoke
  unreachable

bb6:                                              ; preds = %bb24
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_23)
  store ptr %_39, ptr %_23, align 8
  store ptr %_46, ptr %3, align 8
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_87 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_23, i64 noundef %iter.sroa.0.0131)
  %.not7 = icmp eq i64 %_87, 0
  br i1 %.not7, label %bb30, label %bb39.invoke

bb3:                                              ; preds = %bb24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_60.sroa.0)
  store i32 0, ptr %_60.sroa.0, align 4
  br i1 %_11.i, label %bb12.i.i, label %bb5.i

bb5.i:                                            ; preds = %bb3
  br i1 %_12.i, label %bb1.i.i, label %bb2.i.i

bb12.i.i:                                         ; preds = %bb3
  store i8 %9, ptr %_60.sroa.0, align 4, !alias.scope !1278
  br label %bb25

bb2.i.i:                                          ; preds = %bb5.i
  br i1 %_13.i11, label %bb3.i.i, label %bb4.i.i

bb1.i.i:                                          ; preds = %bb5.i
  store i8 %13, ptr %_60.sroa.0, align 4, !alias.scope !1278
  store i8 %last1.i.i, ptr %_60.sroa.0.1.sroa_idx163, align 1, !alias.scope !1278
  br label %bb25

bb4.i.i:                                          ; preds = %bb2.i.i
  store i8 %last4.i.i, ptr %_60.sroa.0, align 4, !alias.scope !1278
  store i8 %last3.i.i, ptr %_60.sroa.0.1.sroa_idx, align 1, !alias.scope !1278
  store i8 %last2.i.i, ptr %_60.sroa.0.2.sroa_idx, align 2, !alias.scope !1278
  store i8 %last1.i.i, ptr %_60.sroa.0.3.sroa_idx, align 1, !alias.scope !1278
  br label %bb25

bb3.i.i:                                          ; preds = %bb2.i.i
  store i8 %12, ptr %_60.sroa.0, align 4, !alias.scope !1278
  store i8 %last2.i.i, ptr %_60.sroa.0.1.sroa_idx162, align 1, !alias.scope !1278
  store i8 %last1.i.i, ptr %_60.sroa.0.2.sroa_idx164, align 2, !alias.scope !1278
  br label %bb25

bb30:                                             ; preds = %bb6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1281)
  %ptr.i.i12 = load ptr, ptr %_23, align 8, !alias.scope !1284, !nonnull !23, !noundef !23
  %end_or_len.i.i13 = load ptr, ptr %3, align 8, !alias.scope !1284, !nonnull !23, !noundef !23
  %_7.i.i14 = icmp eq ptr %ptr.i.i12, %end_or_len.i.i13
  br i1 %_7.i.i14, label %bb39.invoke, label %bb14.i15

bb14.i15:                                         ; preds = %bb30
  %x.i17 = load i8, ptr %ptr.i.i12, align 1, !noalias !1281, !noundef !23
  %_6.i18 = icmp sgt i8 %x.i17, -1
  br i1 %_6.i18, label %bb3.i51, label %bb4.i19

bb4.i19:                                          ; preds = %bb14.i15
  %_18.i.i16 = getelementptr inbounds nuw i8, ptr %ptr.i.i12, i64 1
  %_30.i20 = and i8 %x.i17, 31
  %init.i21 = zext nneg i8 %_30.i20 to i32
  %_7.i10.i22 = icmp ne ptr %_18.i.i16, %end_or_len.i.i13
  tail call void @llvm.assume(i1 %_7.i10.i22)
  %y.i24 = load i8, ptr %_18.i.i16, align 1, !noalias !1281, !noundef !23
  %_34.i25 = shl nuw nsw i32 %init.i21, 6
  %_36.i26 = and i8 %y.i24, 63
  %_35.i27 = zext nneg i8 %_36.i26 to i32
  %21 = or disjoint i32 %_34.i25, %_35.i27
  %_13.i28 = icmp samesign ugt i8 %x.i17, -33
  br i1 %_13.i28, label %bb6.i31, label %bb36

bb3.i51:                                          ; preds = %bb14.i15
  %_7.i52 = zext nneg i8 %x.i17 to i32
  br label %bb36

bb6.i31:                                          ; preds = %bb4.i19
  %_18.i12.i23 = getelementptr inbounds nuw i8, ptr %ptr.i.i12, i64 2
  %_7.i17.i32 = icmp ne ptr %_18.i12.i23, %end_or_len.i.i13
  tail call void @llvm.assume(i1 %_7.i17.i32)
  %z.i34 = load i8, ptr %_18.i12.i23, align 1, !noalias !1281, !noundef !23
  %_40.i35 = shl nuw nsw i32 %_35.i27, 6
  %_42.i36 = and i8 %z.i34, 63
  %_41.i37 = zext nneg i8 %_42.i36 to i32
  %y_z.i38 = or disjoint i32 %_40.i35, %_41.i37
  %_20.i39 = shl nuw nsw i32 %init.i21, 12
  %22 = or disjoint i32 %y_z.i38, %_20.i39
  %_21.i40 = icmp samesign ugt i8 %x.i17, -17
  br i1 %_21.i40, label %bb28, label %bb36

bb28:                                             ; preds = %bb6.i31
  %_18.i19.i33 = getelementptr inbounds nuw i8, ptr %ptr.i.i12, i64 3
  %_7.i24.i42 = icmp ne ptr %_18.i19.i33, %end_or_len.i.i13
  tail call void @llvm.assume(i1 %_7.i24.i42)
  %w.i44 = load i8, ptr %_18.i19.i33, align 1, !noalias !1281, !noundef !23
  %_26.i45 = shl nuw nsw i32 %init.i21, 18
  %_25.i46 = and i32 %_26.i45, 1835008
  %_46.i47 = shl nuw nsw i32 %y_z.i38, 6
  %_48.i48 = and i8 %w.i44, 63
  %_47.i49 = zext nneg i8 %_48.i48 to i32
  %_27.i50 = or disjoint i32 %_46.i47, %_47.i49
  %23 = or disjoint i32 %_27.i50, %_25.i46
  %.not8 = icmp eq i32 %23, 1114112
  br i1 %.not8, label %bb39.invoke, label %bb36, !prof !1287

bb36:                                             ; preds = %bb3.i51, %bb6.i31, %bb4.i19, %bb28
  %_0.sroa.4.0.i29.ph118 = phi i32 [ %23, %bb28 ], [ %_7.i52, %bb3.i51 ], [ %22, %bb6.i31 ], [ %21, %bb4.i19 ]
  %_19 = icmp eq i32 %_0.sroa.4.0.i29.ph118, %c2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_23)
  br i1 %_19, label %bb7, label %bb12

bb7:                                              ; preds = %bb36
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_98.sroa.0)
  store i32 0, ptr %_98.sroa.0, align 4
  br i1 %_11.i54, label %bb12.i.i80, label %bb5.i55

bb5.i55:                                          ; preds = %bb7
  br i1 %_12.i56, label %bb1.i.i78, label %bb2.i.i68

bb12.i.i80:                                       ; preds = %bb7
  store i8 %4, ptr %_98.sroa.0, align 4, !alias.scope !1288
  br label %bb37

bb2.i.i68:                                        ; preds = %bb5.i55
  br i1 %_13.i69, label %bb3.i.i75, label %bb4.i.i70

bb1.i.i78:                                        ; preds = %bb5.i55
  store i8 %8, ptr %_98.sroa.0, align 4, !alias.scope !1288
  store i8 %last1.i.i58, ptr %_98.sroa.0.1.sroa_idx166, align 1, !alias.scope !1288
  br label %bb37

bb4.i.i70:                                        ; preds = %bb2.i.i68
  store i8 %last4.i.i67, ptr %_98.sroa.0, align 4, !alias.scope !1288
  store i8 %last3.i.i64, ptr %_98.sroa.0.1.sroa_idx, align 1, !alias.scope !1288
  store i8 %last2.i.i61, ptr %_98.sroa.0.2.sroa_idx, align 2, !alias.scope !1288
  store i8 %last1.i.i58, ptr %_98.sroa.0.3.sroa_idx, align 1, !alias.scope !1288
  br label %bb37

bb3.i.i75:                                        ; preds = %bb2.i.i68
  store i8 %7, ptr %_98.sroa.0, align 4, !alias.scope !1288
  store i8 %last2.i.i61, ptr %_98.sroa.0.1.sroa_idx165, align 1, !alias.scope !1288
  store i8 %last1.i.i58, ptr %_98.sroa.0.2.sroa_idx167, align 2, !alias.scope !1288
  br label %bb37

bb37:                                             ; preds = %bb3.i.i75, %bb4.i.i70, %bb1.i.i78, %bb12.i.i80
  %len.sroa.0.04.i74 = phi i64 [ 1, %bb12.i.i80 ], [ 2, %bb1.i.i78 ], [ 4, %bb4.i.i70 ], [ 3, %bb3.i.i75 ]
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !1291
; call __rustc::__rust_alloc
  %24 = tail call noundef ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef range(i64 1, 5) %len.sroa.0.04.i74, i64 noundef range(i64 1, 5) 1) #22, !noalias !1291
  %25 = icmp eq ptr %24, null
  br i1 %25, label %bb3.i.i93.invoke, label %bb38

bb38:                                             ; preds = %bb37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %24, ptr noundef nonnull readonly align 4 dereferenceable(1) %_98.sroa.0, i64 range(i64 1, 5) %len.sroa.0.04.i74, i1 false), !noalias !1297
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_98.sroa.0)
; invoke alloc::string::String::replace_range
  invoke fastcc void @_ZN5alloc6string6String13replace_range17h664d473e476aaa46E(ptr noalias noundef align 8 dereferenceable(24) %s, i64 noundef %iter.sroa.0.0131, i64 noundef %14, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %24, i64 noundef %len.sroa.0.04.i74, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_4df0d0febdd5d3a64363530ad4e25ffb)
          to label %bb9 unwind label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h2fc0af7d5458b074E.exit87"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h2fc0af7d5458b074E.exit87": ; preds = %bb38
  %26 = landingpad { ptr, i32 }
          cleanup
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %24, i64 noundef %len.sroa.0.04.i74, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !1298
  br label %bb15

bb9:                                              ; preds = %bb38
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %24, i64 noundef %len.sroa.0.04.i74, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !1309
  br label %bb12

bb12:                                             ; preds = %bb36, %bb9, %bb5
  %exitcond.not = icmp eq i64 %14, %l
  br i1 %exitcond.not, label %bb18, label %bb17

bb25:                                             ; preds = %bb3.i.i, %bb4.i.i, %bb1.i.i, %bb12.i.i
  %len.sroa.0.04.i = phi i64 [ 1, %bb12.i.i ], [ 2, %bb1.i.i ], [ 4, %bb4.i.i ], [ 3, %bb3.i.i ]
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !1320
; call __rustc::__rust_alloc
  %27 = tail call noundef ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef range(i64 1, 5) %len.sroa.0.04.i, i64 noundef range(i64 1, 5) 1) #22, !noalias !1320
  %28 = icmp eq ptr %27, null
  br i1 %28, label %bb3.i.i93.invoke, label %bb26

bb3.i.i93.invoke:                                 ; preds = %bb25, %bb37
  %29 = phi i64 [ %len.sroa.0.04.i74, %bb37 ], [ %len.sroa.0.04.i, %bb25 ]
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef 1, i64 range(i64 1, 5) %29) #23
          to label %bb3.i.i93.cont unwind label %cleanup

bb3.i.i93.cont:                                   ; preds = %bb3.i.i93.invoke
  unreachable

bb26:                                             ; preds = %bb25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %27, ptr noundef nonnull readonly align 4 dereferenceable(1) %_60.sroa.0, i64 range(i64 1, 5) %len.sroa.0.04.i, i1 false), !noalias !1326
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_60.sroa.0)
; invoke alloc::string::String::replace_range
  invoke fastcc void @_ZN5alloc6string6String13replace_range17h664d473e476aaa46E(ptr noalias noundef align 8 dereferenceable(24) %s, i64 noundef %iter.sroa.0.0131, i64 noundef %14, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %27, i64 noundef %len.sroa.0.04.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_2e9ecbc1f42a5da546130bf029d2e0a9)
          to label %bb5 unwind label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h2fc0af7d5458b074E.exit100"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h2fc0af7d5458b074E.exit100": ; preds = %bb26
  %30 = landingpad { ptr, i32 }
          cleanup
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %27, i64 noundef %len.sroa.0.04.i, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !1327
  br label %bb15

bb5:                                              ; preds = %bb26
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %27, i64 noundef %len.sroa.0.04.i, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !1338
  br label %bb12

bb16:                                             ; preds = %bb2.i.i.i3.i.i, %bb15
  resume { ptr, i32 } %.pn
}
