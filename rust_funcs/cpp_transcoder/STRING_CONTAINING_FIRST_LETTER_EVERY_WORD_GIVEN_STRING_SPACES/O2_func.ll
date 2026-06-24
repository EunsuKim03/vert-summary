define void @f_gold(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_0, ptr dead_on_return noalias noundef readonly align 8 captures(none) dereferenceable(24) %str) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_26 = alloca [16 x i8], align 8
  %_17 = alloca [16 x i8], align 8
  %_11 = alloca [16 x i8], align 8
  %result = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %result)
  store i64 0, ptr %result, align 8
  %_28.sroa.4.0.result.sroa_idx = getelementptr inbounds nuw i8, ptr %result, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %_28.sroa.4.0.result.sroa_idx, align 8
  %_28.sroa.5.0.result.sroa_idx = getelementptr inbounds nuw i8, ptr %result, i64 16
  store i64 0, ptr %_28.sroa.5.0.result.sroa_idx, align 8
  %0 = getelementptr inbounds nuw i8, ptr %str, i64 16
  %iter1 = load i64, ptr %0, align 8, !noundef !23
  %_29 = icmp sgt i64 %iter1, -1
  tail call void @llvm.assume(i1 %_29)
  %_30143.not = icmp eq i64 %iter1, 0
  br i1 %_30143.not, label %bb17, label %bb16.lr.ph

bb16.lr.ph:                                       ; preds = %start
  %1 = getelementptr inbounds nuw i8, ptr %str, i64 8
  %_37 = load ptr, ptr %1, align 8, !nonnull !23, !noundef !23
  %_44 = getelementptr inbounds nuw i8, ptr %_37, i64 %iter1
  %2 = getelementptr inbounds nuw i8, ptr %_11, i64 8
  %3 = getelementptr inbounds nuw i8, ptr %_17, i64 8
  %4 = getelementptr inbounds nuw i8, ptr %_26, i64 8
  br label %bb16

bb17:                                             ; preds = %bb11, %start
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_0, ptr noundef nonnull align 8 dereferenceable(24) %result, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %result)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1051)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1054)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1057)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1060)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1063)
  %self1.i.i.i.i1.i.i = load i64, ptr %str, align 8, !range !1031, !alias.scope !1066, !noalias !1069, !noundef !23
  %_6.i.i.i.i2.i.i = icmp eq i64 %self1.i.i.i.i1.i.i, 0
  br i1 %_6.i.i.i.i2.i.i, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h611da46daeed8de3E.exit", label %bb2.i.i.i3.i.i

bb2.i.i.i3.i.i:                                   ; preds = %bb17
  %5 = getelementptr inbounds nuw i8, ptr %str, i64 8
  %self3.i.i.i.i4.i.i = load ptr, ptr %5, align 8, !alias.scope !1066, !noalias !1069, !nonnull !23, !noundef !23
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i, i64 noundef %self1.i.i.i.i1.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !1071
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h611da46daeed8de3E.exit"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h611da46daeed8de3E.exit": ; preds = %bb17, %bb2.i.i.i3.i.i
  ret void

bb16:                                             ; preds = %bb16.lr.ph, %bb11
  %_20.i105148 = phi ptr [ inttoptr (i64 1 to ptr), %bb16.lr.ph ], [ %_20.i105149, %bb11 ]
  %len.i132 = phi i64 [ 0, %bb16.lr.ph ], [ %len.i147, %bb11 ]
  %v.sroa.0.0145 = phi i32 [ 1, %bb16.lr.ph ], [ %v.sroa.0.1, %bb11 ]
  %iter.sroa.0.0144 = phi i64 [ 0, %bb16.lr.ph ], [ %6, %bb11 ]
  %6 = add nuw nsw i64 %iter.sroa.0.0144, 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_11)
  store ptr %_37, ptr %_11, align 8
  store ptr %_44, ptr %2, align 8
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_48 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_11, i64 noundef %iter.sroa.0.0144)
  %.not = icmp eq i64 %_48, 0
  br i1 %.not, label %bb20, label %bb32.invoke, !prof !1072

cleanup.loopexit:                                 ; preds = %bb1.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %cleanup

cleanup.loopexit.split-lp:                        ; preds = %bb32.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit.split-lp, %cleanup.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %cleanup.loopexit ], [ %lpad.loopexit.split-lp, %cleanup.loopexit.split-lp ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1073)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1076)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1079)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1082)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1085)
  %self1.i.i.i.i1.i.i13 = load i64, ptr %result, align 8, !range !1031, !alias.scope !1088, !noalias !1091, !noundef !23
  %_6.i.i.i.i2.i.i14 = icmp eq i64 %self1.i.i.i.i1.i.i13, 0
  br i1 %_6.i.i.i.i2.i.i14, label %bb14, label %bb2.i.i.i3.i.i15

bb2.i.i.i3.i.i15:                                 ; preds = %cleanup
  %self3.i.i.i.i4.i.i16 = load ptr, ptr %_28.sroa.4.0.result.sroa_idx, align 8, !alias.scope !1088, !noalias !1091, !nonnull !23, !noundef !23
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i16, i64 noundef %self1.i.i.i.i1.i.i13, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !1093
  br label %bb14

bb20:                                             ; preds = %bb16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1094)
  %ptr.i.i = load ptr, ptr %_11, align 8, !alias.scope !1097, !nonnull !23, !noundef !23
  %end_or_len.i.i = load ptr, ptr %2, align 8, !alias.scope !1097, !nonnull !23, !noundef !23
  %_7.i.i = icmp eq ptr %ptr.i.i, %end_or_len.i.i
  br i1 %_7.i.i, label %bb32.invoke, label %bb14.i

bb14.i:                                           ; preds = %bb20
  %x.i = load i8, ptr %ptr.i.i, align 1, !noalias !1094, !noundef !23
  %_6.i = icmp sgt i8 %x.i, -1
  br i1 %_6.i, label %bb3.i, label %bb4.i

bb4.i:                                            ; preds = %bb14.i
  %_18.i.i = getelementptr inbounds nuw i8, ptr %ptr.i.i, i64 1
  %_30.i = and i8 %x.i, 31
  %init.i = zext nneg i8 %_30.i to i32
  %_7.i10.i = icmp ne ptr %_18.i.i, %end_or_len.i.i
  tail call void @llvm.assume(i1 %_7.i10.i)
  %y.i = load i8, ptr %_18.i.i, align 1, !noalias !1094, !noundef !23
  %_34.i = shl nuw nsw i32 %init.i, 6
  %_36.i = and i8 %y.i, 63
  %_35.i = zext nneg i8 %_36.i to i32
  %7 = or disjoint i32 %_34.i, %_35.i
  %_13.i = icmp samesign ugt i8 %x.i, -33
  br i1 %_13.i, label %bb6.i, label %bb23

bb3.i:                                            ; preds = %bb14.i
  %_7.i = zext nneg i8 %x.i to i32
  br label %bb23

bb6.i:                                            ; preds = %bb4.i
  %_18.i12.i = getelementptr inbounds nuw i8, ptr %ptr.i.i, i64 2
  %_7.i17.i = icmp ne ptr %_18.i12.i, %end_or_len.i.i
  tail call void @llvm.assume(i1 %_7.i17.i)
  %z.i = load i8, ptr %_18.i12.i, align 1, !noalias !1094, !noundef !23
  %_40.i = shl nuw nsw i32 %_35.i, 6
  %_42.i = and i8 %z.i, 63
  %_41.i = zext nneg i8 %_42.i to i32
  %y_z.i = or disjoint i32 %_40.i, %_41.i
  %_20.i = shl nuw nsw i32 %init.i, 12
  %8 = or disjoint i32 %y_z.i, %_20.i
  %_21.i = icmp samesign ugt i8 %x.i, -17
  br i1 %_21.i, label %bb8.i, label %bb23

bb8.i:                                            ; preds = %bb6.i
  %_18.i19.i = getelementptr inbounds nuw i8, ptr %ptr.i.i, i64 3
  %_7.i24.i = icmp ne ptr %_18.i19.i, %end_or_len.i.i
  tail call void @llvm.assume(i1 %_7.i24.i)
  %w.i = load i8, ptr %_18.i19.i, align 1, !noalias !1094, !noundef !23
  %_26.i = shl nuw nsw i32 %init.i, 18
  %_25.i = and i32 %_26.i, 1835008
  %_46.i = shl nuw nsw i32 %y_z.i, 6
  %_48.i = and i8 %w.i, 63
  %_47.i = zext nneg i8 %_48.i to i32
  %_27.i = or disjoint i32 %_46.i, %_47.i
  %9 = or disjoint i32 %_27.i, %_25.i
  br label %bb23

bb23:                                             ; preds = %bb3.i, %bb8.i, %bb6.i, %bb4.i
  %_0.sroa.4.0.i.ph = phi i32 [ %7, %bb4.i ], [ %8, %bb6.i ], [ %9, %bb8.i ], [ %_7.i, %bb3.i ]
  %10 = icmp samesign ult i32 %_0.sroa.4.0.i.ph, 1114112
  tail call void @llvm.assume(i1 %10)
  %_7 = icmp eq i32 %_0.sroa.4.0.i.ph, 32
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_11)
  br i1 %_7, label %bb11, label %bb4

bb4:                                              ; preds = %bb23
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_17)
  store ptr %_37, ptr %_17, align 8
  store ptr %_44, ptr %3, align 8
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_70 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_17, i64 noundef %iter.sroa.0.0144)
  %.not8 = icmp eq i64 %_70, 0
  br i1 %.not8, label %bb27, label %bb32.invoke

bb27:                                             ; preds = %bb4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1100)
  %ptr.i.i18 = load ptr, ptr %_17, align 8, !alias.scope !1103, !nonnull !23, !noundef !23
  %end_or_len.i.i19 = load ptr, ptr %3, align 8, !alias.scope !1103, !nonnull !23, !noundef !23
  %_7.i.i20 = icmp eq ptr %ptr.i.i18, %end_or_len.i.i19
  br i1 %_7.i.i20, label %bb32.invoke, label %bb14.i21

bb14.i21:                                         ; preds = %bb27
  %x.i23 = load i8, ptr %ptr.i.i18, align 1, !noalias !1100, !noundef !23
  %_6.i24 = icmp sgt i8 %x.i23, -1
  br i1 %_6.i24, label %bb3.i57, label %bb4.i25

bb4.i25:                                          ; preds = %bb14.i21
  %_18.i.i22 = getelementptr inbounds nuw i8, ptr %ptr.i.i18, i64 1
  %_30.i26 = and i8 %x.i23, 31
  %init.i27 = zext nneg i8 %_30.i26 to i32
  %_7.i10.i28 = icmp ne ptr %_18.i.i22, %end_or_len.i.i19
  tail call void @llvm.assume(i1 %_7.i10.i28)
  %y.i30 = load i8, ptr %_18.i.i22, align 1, !noalias !1100, !noundef !23
  %_34.i31 = shl nuw nsw i32 %init.i27, 6
  %_36.i32 = and i8 %y.i30, 63
  %_35.i33 = zext nneg i8 %_36.i32 to i32
  %11 = or disjoint i32 %_34.i31, %_35.i33
  %_13.i34 = icmp samesign ugt i8 %x.i23, -33
  br i1 %_13.i34, label %bb6.i37, label %bb25

bb3.i57:                                          ; preds = %bb14.i21
  %_7.i58 = zext nneg i8 %x.i23 to i32
  br label %bb25

bb6.i37:                                          ; preds = %bb4.i25
  %_18.i12.i29 = getelementptr inbounds nuw i8, ptr %ptr.i.i18, i64 2
  %_7.i17.i38 = icmp ne ptr %_18.i12.i29, %end_or_len.i.i19
  tail call void @llvm.assume(i1 %_7.i17.i38)
  %z.i40 = load i8, ptr %_18.i12.i29, align 1, !noalias !1100, !noundef !23
  %_40.i41 = shl nuw nsw i32 %_35.i33, 6
  %_42.i42 = and i8 %z.i40, 63
  %_41.i43 = zext nneg i8 %_42.i42 to i32
  %y_z.i44 = or disjoint i32 %_40.i41, %_41.i43
  %_20.i45 = shl nuw nsw i32 %init.i27, 12
  %12 = or disjoint i32 %y_z.i44, %_20.i45
  %_21.i46 = icmp samesign ugt i8 %x.i23, -17
  br i1 %_21.i46, label %bb8.i47, label %bb25

bb8.i47:                                          ; preds = %bb6.i37
  %_18.i19.i39 = getelementptr inbounds nuw i8, ptr %ptr.i.i18, i64 3
  %_7.i24.i48 = icmp ne ptr %_18.i19.i39, %end_or_len.i.i19
  tail call void @llvm.assume(i1 %_7.i24.i48)
  %w.i50 = load i8, ptr %_18.i19.i39, align 1, !noalias !1100, !noundef !23
  %_26.i51 = shl nuw nsw i32 %init.i27, 18
  %_25.i52 = and i32 %_26.i51, 1835008
  %_46.i53 = shl nuw nsw i32 %y_z.i44, 6
  %_48.i54 = and i8 %w.i50, 63
  %_47.i55 = zext nneg i8 %_48.i54 to i32
  %_27.i56 = or disjoint i32 %_46.i53, %_47.i55
  %13 = or disjoint i32 %_27.i56, %_25.i52
  br label %bb25

bb25:                                             ; preds = %bb3.i57, %bb8.i47, %bb6.i37, %bb4.i25
  %_0.sroa.4.0.i35.ph = phi i32 [ %11, %bb4.i25 ], [ %12, %bb6.i37 ], [ %13, %bb8.i47 ], [ %_7.i58, %bb3.i57 ]
  switch i32 %_0.sroa.4.0.i35.ph, label %bb5 [
    i32 1114112, label %bb32.invoke
    i32 32, label %bb9
  ], !prof !1106

bb32.invoke:                                      ; preds = %bb35, %bb6, %bb37, %bb25, %bb4, %bb27, %bb16, %bb20
  %14 = phi ptr [ @alloc_8faa6c0b7533f1bb8f508d38d11be12e, %bb20 ], [ @alloc_8faa6c0b7533f1bb8f508d38d11be12e, %bb16 ], [ @alloc_bad3a55fe39c80b1e3ff6e559cfec948, %bb27 ], [ @alloc_bad3a55fe39c80b1e3ff6e559cfec948, %bb4 ], [ @alloc_bad3a55fe39c80b1e3ff6e559cfec948, %bb25 ], [ @alloc_af7177f9bf2cba357eba10f755c7c124, %bb37 ], [ @alloc_af7177f9bf2cba357eba10f755c7c124, %bb6 ], [ @alloc_af7177f9bf2cba357eba10f755c7c124, %bb35 ]
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %14) #23
          to label %bb32.cont unwind label %cleanup.loopexit.split-lp

bb32.cont:                                        ; preds = %bb32.invoke
  unreachable

bb9:                                              ; preds = %bb25
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_17)
  br label %bb11

bb5:                                              ; preds = %bb25
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_17)
  %_19 = icmp eq i32 %v.sroa.0.0145, 1
  br i1 %_19, label %bb6, label %bb11

bb6:                                              ; preds = %bb5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_26)
  store ptr %_37, ptr %_26, align 8
  store ptr %_44, ptr %4, align 8
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_93 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_26, i64 noundef %iter.sroa.0.0144)
  %.not10 = icmp eq i64 %_93, 0
  br i1 %.not10, label %bb37, label %bb32.invoke

bb37:                                             ; preds = %bb6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1107)
  %ptr.i.i60 = load ptr, ptr %_26, align 8, !alias.scope !1110, !nonnull !23, !noundef !23
  %end_or_len.i.i61 = load ptr, ptr %4, align 8, !alias.scope !1110, !nonnull !23, !noundef !23
  %_7.i.i62 = icmp eq ptr %ptr.i.i60, %end_or_len.i.i61
  br i1 %_7.i.i62, label %bb32.invoke, label %bb14.i63

bb14.i63:                                         ; preds = %bb37
  %x.i65 = load i8, ptr %ptr.i.i60, align 1, !noalias !1107, !noundef !23
  %_6.i66 = icmp sgt i8 %x.i65, -1
  br i1 %_6.i66, label %bb43.thread, label %bb4.i67

bb4.i67:                                          ; preds = %bb14.i63
  %_18.i.i64 = getelementptr inbounds nuw i8, ptr %ptr.i.i60, i64 1
  %_30.i68 = and i8 %x.i65, 31
  %init.i69 = zext nneg i8 %_30.i68 to i32
  %_7.i10.i70 = icmp ne ptr %_18.i.i64, %end_or_len.i.i61
  tail call void @llvm.assume(i1 %_7.i10.i70)
  %y.i72 = load i8, ptr %_18.i.i64, align 1, !noalias !1107, !noundef !23
  %_34.i73 = shl nuw nsw i32 %init.i69, 6
  %_36.i74 = and i8 %y.i72, 63
  %_35.i75 = zext nneg i8 %_36.i74 to i32
  %15 = or disjoint i32 %_34.i73, %_35.i75
  %_13.i76 = icmp samesign ugt i8 %x.i65, -33
  br i1 %_13.i76, label %bb6.i79, label %bb43

bb43.thread:                                      ; preds = %bb14.i63
  %_7.i100 = zext nneg i8 %x.i65 to i32
  %_14.i133 = icmp sgt i64 %len.i132, -1
  tail call void @llvm.assume(i1 %_14.i133)
  br label %bb2.i

bb6.i79:                                          ; preds = %bb4.i67
  %_18.i12.i71 = getelementptr inbounds nuw i8, ptr %ptr.i.i60, i64 2
  %_7.i17.i80 = icmp ne ptr %_18.i12.i71, %end_or_len.i.i61
  tail call void @llvm.assume(i1 %_7.i17.i80)
  %z.i82 = load i8, ptr %_18.i12.i71, align 1, !noalias !1107, !noundef !23
  %_40.i83 = shl nuw nsw i32 %_35.i75, 6
  %_42.i84 = and i8 %z.i82, 63
  %_41.i85 = zext nneg i8 %_42.i84 to i32
  %y_z.i86 = or disjoint i32 %_40.i83, %_41.i85
  %_20.i87 = shl nuw nsw i32 %init.i69, 12
  %16 = or disjoint i32 %y_z.i86, %_20.i87
  %_21.i88 = icmp samesign ugt i8 %x.i65, -17
  br i1 %_21.i88, label %bb35, label %bb43

bb35:                                             ; preds = %bb6.i79
  %_18.i19.i81 = getelementptr inbounds nuw i8, ptr %ptr.i.i60, i64 3
  %_7.i24.i90 = icmp ne ptr %_18.i19.i81, %end_or_len.i.i61
  tail call void @llvm.assume(i1 %_7.i24.i90)
  %_18.i26.i91 = getelementptr inbounds nuw i8, ptr %ptr.i.i60, i64 4
  store ptr %_18.i26.i91, ptr %_26, align 8, !alias.scope !1113
  %w.i92 = load i8, ptr %_18.i19.i81, align 1, !noalias !1107, !noundef !23
  %_26.i93 = shl nuw nsw i32 %init.i69, 18
  %_25.i94 = and i32 %_26.i93, 1835008
  %_46.i95 = shl nuw nsw i32 %y_z.i86, 6
  %_48.i96 = and i8 %w.i92, 63
  %_47.i97 = zext nneg i8 %_48.i96 to i32
  %_27.i98 = or disjoint i32 %_46.i95, %_47.i97
  %17 = or disjoint i32 %_27.i98, %_25.i94
  %.not11 = icmp eq i32 %17, 1114112
  br i1 %.not11, label %bb32.invoke, label %bb43, !prof !1116

bb43:                                             ; preds = %bb6.i79, %bb4.i67, %bb35
  %_0.sroa.4.0.i77.ph130 = phi i32 [ %17, %bb35 ], [ %16, %bb6.i79 ], [ %15, %bb4.i67 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1117)
  %_14.i = icmp sgt i64 %len.i132, -1
  tail call void @llvm.assume(i1 %_14.i)
  %_16.i = icmp samesign ult i32 %_0.sroa.4.0.i77.ph130, 128
  br i1 %_16.i, label %bb2.i, label %bb3.i102

bb3.i102:                                         ; preds = %bb43
  %_17.i = icmp samesign ult i32 %_0.sroa.4.0.i77.ph130, 2048
  br i1 %_17.i, label %bb2.i, label %bb4.i103

bb4.i103:                                         ; preds = %bb3.i102
  %_18.i = icmp samesign ult i32 %_0.sroa.4.0.i77.ph130, 65536
  %..i = select i1 %_18.i, i64 3, i64 4
  br label %bb2.i

bb2.i:                                            ; preds = %bb43.thread, %bb4.i103, %bb3.i102, %bb43
  %_16.i137 = phi i1 [ true, %bb43 ], [ false, %bb4.i103 ], [ false, %bb3.i102 ], [ true, %bb43.thread ]
  %_0.sroa.4.0.i77.ph130135 = phi i32 [ %_0.sroa.4.0.i77.ph130, %bb43 ], [ %_0.sroa.4.0.i77.ph130, %bb4.i103 ], [ %_0.sroa.4.0.i77.ph130, %bb3.i102 ], [ %_7.i100, %bb43.thread ]
  %ch_len.sroa.0.0.i = phi i64 [ 1, %bb43 ], [ %..i, %bb4.i103 ], [ 2, %bb3.i102 ], [ 1, %bb43.thread ]
  %self2.i.i = load i64, ptr %result, align 8, !range !1031, !alias.scope !1120, !noundef !23
  %_9.i.i = sub nsw i64 %self2.i.i, %len.i132
  %_7.i.i104 = icmp ugt i64 %ch_len.sroa.0.0.i, %_9.i.i
  br i1 %_7.i.i104, label %bb1.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf813919a975631dfE.exit.i", !prof !909

bb1.i.i:                                          ; preds = %bb2.i
; invoke alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17ha181050828d81ae6E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %result, i64 noundef %len.i132, i64 noundef range(i64 1, 5) %ch_len.sroa.0.0.i)
          to label %.noexc unwind label %cleanup.loopexit

.noexc:                                           ; preds = %bb1.i.i
  %count.pre.i = load i64, ptr %_28.sroa.5.0.result.sroa_idx, align 8, !alias.scope !1117
  %_20.i105.pre = load ptr, ptr %_28.sroa.4.0.result.sroa_idx, align 8, !alias.scope !1117
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf813919a975631dfE.exit.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf813919a975631dfE.exit.i": ; preds = %.noexc, %bb2.i
  %_20.i105 = phi ptr [ %_20.i105148, %bb2.i ], [ %_20.i105.pre, %.noexc ]
  %count.i = phi i64 [ %len.i132, %bb2.i ], [ %count.pre.i, %.noexc ]
  %_21.i106 = icmp sgt i64 %count.i, -1
  tail call void @llvm.assume(i1 %_21.i106)
  %_8.i = getelementptr inbounds nuw i8, ptr %_20.i105, i64 %count.i
  br i1 %_16.i137, label %bb12.i.i, label %bb7.i.i

bb7.i.i:                                          ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf813919a975631dfE.exit.i"
  %_29.i.i = icmp samesign ult i32 %_0.sroa.4.0.i77.ph130135, 2048
  %18 = trunc i32 %_0.sroa.4.0.i77.ph130135 to i8
  %_5.i.i = and i8 %18, 63
  %last1.i.i = or disjoint i8 %_5.i.i, -128
  %_10.i.i = lshr i32 %_0.sroa.4.0.i77.ph130135, 6
  %19 = trunc i32 %_10.i.i to i8
  %_8.i.i = and i8 %19, 63
  %last2.i.i = or disjoint i8 %_8.i.i, -128
  %_14.i.i = lshr i32 %_0.sroa.4.0.i77.ph130135, 12
  %20 = trunc i32 %_14.i.i to i8
  %_12.i.i = and i8 %20, 63
  %last3.i.i = or disjoint i8 %_12.i.i, -128
  %_18.i.i107 = lshr i32 %_0.sroa.4.0.i77.ph130135, 18
  %_16.i.i = trunc nuw nsw i32 %_18.i.i107 to i8
  %last4.i.i = or disjoint i8 %_16.i.i, -16
  br i1 %_29.i.i, label %bb1.i2.i, label %bb2.i.i

bb12.i.i:                                         ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf813919a975631dfE.exit.i"
  %21 = trunc nuw nsw i32 %_0.sroa.4.0.i77.ph130135 to i8
  store i8 %21, ptr %_8.i, align 1, !noalias !1117
  br label %bb7

bb2.i.i:                                          ; preds = %bb7.i.i
  %_30.i.i = icmp samesign ult i32 %_0.sroa.4.0.i77.ph130135, 65536
  br i1 %_30.i.i, label %bb3.i.i, label %bb4.i.i

bb1.i2.i:                                         ; preds = %bb7.i.i
  %22 = or disjoint i8 %19, -64
  store i8 %22, ptr %_8.i, align 1, !noalias !1117
  %_21.i.i = getelementptr inbounds nuw i8, ptr %_8.i, i64 1
  store i8 %last1.i.i, ptr %_21.i.i, align 1, !noalias !1117
  br label %bb7

bb4.i.i:                                          ; preds = %bb2.i.i
  store i8 %last4.i.i, ptr %_8.i, align 1, !noalias !1117
  %_25.i.i = getelementptr inbounds nuw i8, ptr %_8.i, i64 1
  store i8 %last3.i.i, ptr %_25.i.i, align 1, !noalias !1117
  %_26.i.i = getelementptr inbounds nuw i8, ptr %_8.i, i64 2
  store i8 %last2.i.i, ptr %_26.i.i, align 1, !noalias !1117
  %_27.i.i = getelementptr inbounds nuw i8, ptr %_8.i, i64 3
  store i8 %last1.i.i, ptr %_27.i.i, align 1, !noalias !1117
  br label %bb7

bb3.i.i:                                          ; preds = %bb2.i.i
  %23 = or disjoint i8 %20, -32
  store i8 %23, ptr %_8.i, align 1, !noalias !1117
  %_23.i.i = getelementptr inbounds nuw i8, ptr %_8.i, i64 1
  store i8 %last2.i.i, ptr %_23.i.i, align 1, !noalias !1117
  %_24.i.i = getelementptr inbounds nuw i8, ptr %_8.i, i64 2
  store i8 %last1.i.i, ptr %_24.i.i, align 1, !noalias !1117
  br label %bb7

bb7:                                              ; preds = %bb3.i.i, %bb4.i.i, %bb1.i2.i, %bb12.i.i
  %new_len.i = add nuw i64 %ch_len.sroa.0.0.i, %len.i132
  store i64 %new_len.i, ptr %_28.sroa.5.0.result.sroa_idx, align 8, !alias.scope !1117
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_26)
  br label %bb11

bb11:                                             ; preds = %bb23, %bb5, %bb9, %bb7
  %_20.i105149 = phi ptr [ %_20.i105, %bb7 ], [ %_20.i105148, %bb5 ], [ %_20.i105148, %bb9 ], [ %_20.i105148, %bb23 ]
  %len.i147 = phi i64 [ %new_len.i, %bb7 ], [ %len.i132, %bb5 ], [ %len.i132, %bb9 ], [ %len.i132, %bb23 ]
  %v.sroa.0.1 = phi i32 [ 0, %bb7 ], [ 0, %bb5 ], [ %v.sroa.0.0145, %bb9 ], [ 1, %bb23 ]
  %exitcond.not = icmp eq i64 %6, %iter1
  br i1 %exitcond.not, label %bb17, label %bb16

bb14:                                             ; preds = %bb2.i.i.i3.i.i15, %cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1123)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1126)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1129)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1132)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1135)
  %self1.i.i.i.i1.i.i108 = load i64, ptr %str, align 8, !range !1031, !alias.scope !1138, !noalias !1141, !noundef !23
  %_6.i.i.i.i2.i.i109 = icmp eq i64 %self1.i.i.i.i1.i.i108, 0
  br i1 %_6.i.i.i.i2.i.i109, label %bb15, label %bb2.i.i.i3.i.i110

bb2.i.i.i3.i.i110:                                ; preds = %bb14
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_37, i64 noundef %self1.i.i.i.i1.i.i108, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !1143
  br label %bb15

bb15:                                             ; preds = %bb2.i.i.i3.i.i110, %bb14
  resume { ptr, i32 } %lpad.phi
}
