define void @f_gold(ptr dead_on_unwind noalias noundef readnone sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_0, ptr dead_on_return noalias noundef readonly align 8 captures(none) dereferenceable(24) %str) unnamed_addr #7 personality ptr @rust_eh_personality {
start:
  %_25 = alloca [16 x i8], align 8
  %_13 = alloca [16 x i8], align 8
  %result = alloca [24 x i8], align 8
  %0 = getelementptr inbounds nuw i8, ptr %str, i64 16
  %_3 = load i64, ptr %0, align 8, !noundef !23
  %_42 = icmp sgt i64 %_3, -1
  tail call void @llvm.assume(i1 %_42)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %result)
  store i64 0, ptr %result, align 8
  %_43.sroa.4.0.result.sroa_idx = getelementptr inbounds nuw i8, ptr %result, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %_43.sroa.4.0.result.sroa_idx, align 8
  %_43.sroa.5.0.result.sroa_idx = getelementptr inbounds nuw i8, ptr %result, i64 16
  store i64 0, ptr %_43.sroa.5.0.result.sroa_idx, align 8
  %1 = getelementptr inbounds nuw i8, ptr %str, i64 8
  %_47 = load ptr, ptr %1, align 8, !nonnull !23, !noundef !23
  %_54 = getelementptr inbounds nuw i8, ptr %_47, i64 %_3
  %2 = getelementptr inbounds nuw i8, ptr %_13, i64 8
  %i.sroa.0.0118 = add nsw i64 %_3, -1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_13)
  store ptr %_47, ptr %_13, align 8
  store ptr %_54, ptr %2, align 8
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_58119 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_13, i64 noundef %i.sroa.0.0118)
  %.not120 = icmp eq i64 %_58119, 0
  br i1 %.not120, label %bb23.lr.ph, label %bb47.invoke, !prof !1051

bb23.lr.ph:                                       ; preds = %start
  %3 = getelementptr inbounds nuw i8, ptr %_25, i64 8
  br label %bb23

cleanup.loopexit:                                 ; preds = %bb1.i.i78
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %cleanup

cleanup.loopexit.split-lp.loopexit:               ; preds = %bb1.i.i
  %lpad.loopexit107 = landingpad { ptr, i32 }
          cleanup
  br label %cleanup

cleanup.loopexit.split-lp.loopexit.split-lp:      ; preds = %bb47.invoke
  %lpad.loopexit.split-lp108 = landingpad { ptr, i32 }
          cleanup
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit.split-lp.loopexit, %cleanup.loopexit.split-lp.loopexit.split-lp, %cleanup.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %cleanup.loopexit ], [ %lpad.loopexit107, %cleanup.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp108, %cleanup.loopexit.split-lp.loopexit.split-lp ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1052)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1055)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1058)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1061)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1064)
  %self1.i.i.i.i1.i.i = load i64, ptr %result, align 8, !range !1031, !alias.scope !1067, !noalias !1070, !noundef !23
  %_6.i.i.i.i2.i.i = icmp eq i64 %self1.i.i.i.i1.i.i, 0
  br i1 %_6.i.i.i.i2.i.i, label %bb18, label %bb2.i.i.i3.i.i

bb2.i.i.i3.i.i:                                   ; preds = %cleanup
  %self3.i.i.i.i4.i.i = load ptr, ptr %_43.sroa.4.0.result.sroa_idx, align 8, !alias.scope !1067, !noalias !1070, !nonnull !23, !noundef !23
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i, i64 noundef %self1.i.i.i.i1.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !1072
  br label %bb18

bb23:                                             ; preds = %bb23.lr.ph, %bb10
  %_20.i73130 = phi ptr [ inttoptr (i64 1 to ptr), %bb23.lr.ph ], [ %_20.i73131, %bb10 ]
  %len.i65126 = phi i64 [ 0, %bb23.lr.ph ], [ %len.i65127, %bb10 ]
  %i.sroa.0.0123 = phi i64 [ %i.sroa.0.0118, %bb23.lr.ph ], [ %i.sroa.0.0, %bb10 ]
  %i.sroa.0.0.in122 = phi i64 [ %_3, %bb23.lr.ph ], [ %i.sroa.0.0123, %bb10 ]
  %end.sroa.0.0121 = phi i64 [ %_3, %bb23.lr.ph ], [ %end.sroa.0.1, %bb10 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1073)
  %ptr.i.i = load ptr, ptr %_13, align 8, !alias.scope !1076, !nonnull !23, !noundef !23
  %end_or_len.i.i = load ptr, ptr %2, align 8, !alias.scope !1076, !nonnull !23, !noundef !23
  %_7.i.i = icmp eq ptr %ptr.i.i, %end_or_len.i.i
  br i1 %_7.i.i, label %bb47.invoke, label %bb14.i

bb14.i:                                           ; preds = %bb23
  %x.i = load i8, ptr %ptr.i.i, align 1, !noalias !1073, !noundef !23
  %_6.i = icmp sgt i8 %x.i, -1
  br i1 %_6.i, label %bb3.i, label %bb4.i

bb4.i:                                            ; preds = %bb14.i
  %_18.i.i = getelementptr inbounds nuw i8, ptr %ptr.i.i, i64 1
  %_30.i = and i8 %x.i, 31
  %init.i = zext nneg i8 %_30.i to i32
  %_7.i10.i = icmp ne ptr %_18.i.i, %end_or_len.i.i
  tail call void @llvm.assume(i1 %_7.i10.i)
  %y.i = load i8, ptr %_18.i.i, align 1, !noalias !1073, !noundef !23
  %_34.i = shl nuw nsw i32 %init.i, 6
  %_36.i = and i8 %y.i, 63
  %_35.i = zext nneg i8 %_36.i to i32
  %4 = or disjoint i32 %_34.i, %_35.i
  %_13.i = icmp samesign ugt i8 %x.i, -33
  br i1 %_13.i, label %bb6.i, label %bb26

bb3.i:                                            ; preds = %bb14.i
  %_7.i = zext nneg i8 %x.i to i32
  br label %bb26

bb6.i:                                            ; preds = %bb4.i
  %_18.i12.i = getelementptr inbounds nuw i8, ptr %ptr.i.i, i64 2
  %_7.i17.i = icmp ne ptr %_18.i12.i, %end_or_len.i.i
  tail call void @llvm.assume(i1 %_7.i17.i)
  %z.i = load i8, ptr %_18.i12.i, align 1, !noalias !1073, !noundef !23
  %_40.i = shl nuw nsw i32 %_35.i, 6
  %_42.i = and i8 %z.i, 63
  %_41.i = zext nneg i8 %_42.i to i32
  %y_z.i = or disjoint i32 %_40.i, %_41.i
  %_20.i = shl nuw nsw i32 %init.i, 12
  %5 = or disjoint i32 %y_z.i, %_20.i
  %_21.i = icmp samesign ugt i8 %x.i, -17
  br i1 %_21.i, label %bb8.i, label %bb26

bb8.i:                                            ; preds = %bb6.i
  %_18.i19.i = getelementptr inbounds nuw i8, ptr %ptr.i.i, i64 3
  %_7.i24.i = icmp ne ptr %_18.i19.i, %end_or_len.i.i
  tail call void @llvm.assume(i1 %_7.i24.i)
  %w.i = load i8, ptr %_18.i19.i, align 1, !noalias !1073, !noundef !23
  %_26.i = shl nuw nsw i32 %init.i, 18
  %_25.i = and i32 %_26.i, 1835008
  %_46.i = shl nuw nsw i32 %y_z.i, 6
  %_48.i = and i8 %w.i, 63
  %_47.i = zext nneg i8 %_48.i to i32
  %_27.i = or disjoint i32 %_46.i, %_47.i
  %6 = or disjoint i32 %_27.i, %_25.i
  br label %bb26

bb26:                                             ; preds = %bb3.i, %bb8.i, %bb6.i, %bb4.i
  %_0.sroa.4.0.i.ph = phi i32 [ %4, %bb4.i ], [ %5, %bb6.i ], [ %6, %bb8.i ], [ %_7.i, %bb3.i ]
  %7 = icmp samesign ult i32 %_0.sroa.4.0.i.ph, 1114112
  tail call void @llvm.assume(i1 %7)
  %_9 = icmp eq i32 %_0.sroa.4.0.i.ph, 32
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_13)
  br i1 %_9, label %bb3, label %bb10

bb47.invoke:                                      ; preds = %bb23, %bb10, %bb28, %bb5, %bb30, %start
  %8 = phi ptr [ @alloc_0710c1f28d859b0a65b6aaa2900f8b4f, %start ], [ @alloc_282d241064cce51e779272cc44ee7eb0, %bb30 ], [ @alloc_282d241064cce51e779272cc44ee7eb0, %bb5 ], [ @alloc_282d241064cce51e779272cc44ee7eb0, %bb28 ], [ @alloc_0710c1f28d859b0a65b6aaa2900f8b4f, %bb10 ], [ @alloc_0710c1f28d859b0a65b6aaa2900f8b4f, %bb23 ]
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %8) #24
          to label %bb47.cont unwind label %cleanup.loopexit.split-lp.loopexit.split-lp

bb47.cont:                                        ; preds = %bb47.invoke
  unreachable

bb3:                                              ; preds = %bb26
  %_17.not116 = icmp eq i64 %i.sroa.0.0.in122, %end.sroa.0.0121
  br i1 %_17.not116, label %bb7, label %bb5

bb10:                                             ; preds = %bb26, %_ZN5alloc6string6String4push17h1a40906a941ba4dfE.exit
  %_20.i73131 = phi ptr [ %_20.i21, %_ZN5alloc6string6String4push17h1a40906a941ba4dfE.exit ], [ %_20.i73130, %bb26 ]
  %len.i65127 = phi i64 [ %new_len.i, %_ZN5alloc6string6String4push17h1a40906a941ba4dfE.exit ], [ %len.i65126, %bb26 ]
  %end.sroa.0.1 = phi i64 [ %i.sroa.0.0123, %_ZN5alloc6string6String4push17h1a40906a941ba4dfE.exit ], [ %end.sroa.0.0121, %bb26 ]
  %i.sroa.0.0 = add i64 %i.sroa.0.0123, -1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_13)
  store ptr %_47, ptr %_13, align 8
  store ptr %_54, ptr %2, align 8
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_58 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_13, i64 noundef %i.sroa.0.0)
  %.not = icmp eq i64 %_58, 0
  br i1 %.not, label %bb23, label %bb47.invoke, !prof !1079

bb7:                                              ; preds = %bb6, %bb3
  %len.i = phi i64 [ %len.i65126, %bb3 ], [ %new_len.i77, %bb6 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1080)
  %_14.i = icmp sgt i64 %len.i, -1
  tail call void @llvm.assume(i1 %_14.i)
  %self2.i.i = load i64, ptr %result, align 8, !range !1031, !alias.scope !1083, !noundef !23
  %_7.i.i20 = icmp eq i64 %self2.i.i, %len.i
  br i1 %_7.i.i20, label %bb1.i.i, label %_ZN5alloc6string6String4push17h1a40906a941ba4dfE.exit, !prof !909

bb1.i.i:                                          ; preds = %bb7
; invoke alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h9516934a7ae95c11E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %result, i64 noundef %len.i, i64 noundef range(i64 1, 5) 1)
          to label %.noexc unwind label %cleanup.loopexit.split-lp.loopexit

.noexc:                                           ; preds = %bb1.i.i
  %count.pre.i = load i64, ptr %_43.sroa.5.0.result.sroa_idx, align 8, !alias.scope !1080
  br label %_ZN5alloc6string6String4push17h1a40906a941ba4dfE.exit

_ZN5alloc6string6String4push17h1a40906a941ba4dfE.exit: ; preds = %bb7, %.noexc
  %count.i = phi i64 [ %len.i, %bb7 ], [ %count.pre.i, %.noexc ]
  %_20.i21 = load ptr, ptr %_43.sroa.4.0.result.sroa_idx, align 8, !alias.scope !1080, !nonnull !23, !noundef !23
  %_21.i22 = icmp sgt i64 %count.i, -1
  tail call void @llvm.assume(i1 %_21.i22)
  %_8.i = getelementptr inbounds nuw i8, ptr %_20.i21, i64 %count.i
  store i8 32, ptr %_8.i, align 1, !noalias !1080
  %new_len.i = add nuw i64 %len.i, 1
  store i64 %new_len.i, ptr %_43.sroa.5.0.result.sroa_idx, align 8, !alias.scope !1080
  br label %bb10

bb5:                                              ; preds = %bb3, %bb6
  %_20.i73128 = phi ptr [ %_20.i73, %bb6 ], [ %_20.i73130, %bb3 ]
  %len.i65101 = phi i64 [ %new_len.i77, %bb6 ], [ %len.i65126, %bb3 ]
  %start1.sroa.0.1117 = phi i64 [ %start1.sroa.0.1, %bb6 ], [ %i.sroa.0.0.in122, %bb3 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_25)
  store ptr %_47, ptr %_25, align 8
  store ptr %_54, ptr %3, align 8
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_80 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_25, i64 noundef %start1.sroa.0.1117)
  %.not18 = icmp eq i64 %_80, 0
  br i1 %.not18, label %bb30, label %bb47.invoke

bb30:                                             ; preds = %bb5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1086)
  %ptr.i.i23 = load ptr, ptr %_25, align 8, !alias.scope !1089, !nonnull !23, !noundef !23
  %end_or_len.i.i24 = load ptr, ptr %3, align 8, !alias.scope !1089, !nonnull !23, !noundef !23
  %_7.i.i25 = icmp eq ptr %ptr.i.i23, %end_or_len.i.i24
  br i1 %_7.i.i25, label %bb47.invoke, label %bb14.i26

bb14.i26:                                         ; preds = %bb30
  %x.i28 = load i8, ptr %ptr.i.i23, align 1, !noalias !1086, !noundef !23
  %_6.i29 = icmp sgt i8 %x.i28, -1
  br i1 %_6.i29, label %bb36.thread, label %bb4.i30

bb4.i30:                                          ; preds = %bb14.i26
  %_18.i.i27 = getelementptr inbounds nuw i8, ptr %ptr.i.i23, i64 1
  %_30.i31 = and i8 %x.i28, 31
  %init.i32 = zext nneg i8 %_30.i31 to i32
  %_7.i10.i33 = icmp ne ptr %_18.i.i27, %end_or_len.i.i24
  tail call void @llvm.assume(i1 %_7.i10.i33)
  %y.i35 = load i8, ptr %_18.i.i27, align 1, !noalias !1086, !noundef !23
  %_34.i36 = shl nuw nsw i32 %init.i32, 6
  %_36.i37 = and i8 %y.i35, 63
  %_35.i38 = zext nneg i8 %_36.i37 to i32
  %9 = or disjoint i32 %_34.i36, %_35.i38
  %_13.i39 = icmp samesign ugt i8 %x.i28, -33
  br i1 %_13.i39, label %bb6.i42, label %bb36

bb36.thread:                                      ; preds = %bb14.i26
  %_7.i63 = zext nneg i8 %x.i28 to i32
  %_14.i66102 = icmp sgt i64 %len.i65101, -1
  tail call void @llvm.assume(i1 %_14.i66102)
  br label %bb2.i

bb6.i42:                                          ; preds = %bb4.i30
  %_18.i12.i34 = getelementptr inbounds nuw i8, ptr %ptr.i.i23, i64 2
  %_7.i17.i43 = icmp ne ptr %_18.i12.i34, %end_or_len.i.i24
  tail call void @llvm.assume(i1 %_7.i17.i43)
  %z.i45 = load i8, ptr %_18.i12.i34, align 1, !noalias !1086, !noundef !23
  %_40.i46 = shl nuw nsw i32 %_35.i38, 6
  %_42.i47 = and i8 %z.i45, 63
  %_41.i48 = zext nneg i8 %_42.i47 to i32
  %y_z.i49 = or disjoint i32 %_40.i46, %_41.i48
  %_20.i50 = shl nuw nsw i32 %init.i32, 12
  %10 = or disjoint i32 %y_z.i49, %_20.i50
  %_21.i51 = icmp samesign ugt i8 %x.i28, -17
  br i1 %_21.i51, label %bb28, label %bb36

bb28:                                             ; preds = %bb6.i42
  %_18.i19.i44 = getelementptr inbounds nuw i8, ptr %ptr.i.i23, i64 3
  %_7.i24.i53 = icmp ne ptr %_18.i19.i44, %end_or_len.i.i24
  tail call void @llvm.assume(i1 %_7.i24.i53)
  %_18.i26.i54 = getelementptr inbounds nuw i8, ptr %ptr.i.i23, i64 4
  store ptr %_18.i26.i54, ptr %_25, align 8, !alias.scope !1092
  %w.i55 = load i8, ptr %_18.i19.i44, align 1, !noalias !1086, !noundef !23
  %_26.i56 = shl nuw nsw i32 %init.i32, 18
  %_25.i57 = and i32 %_26.i56, 1835008
  %_46.i58 = shl nuw nsw i32 %y_z.i49, 6
  %_48.i59 = and i8 %w.i55, 63
  %_47.i60 = zext nneg i8 %_48.i59 to i32
  %_27.i61 = or disjoint i32 %_46.i58, %_47.i60
  %11 = or disjoint i32 %_27.i61, %_25.i57
  %.not19 = icmp eq i32 %11, 1114112
  br i1 %.not19, label %bb47.invoke, label %bb36, !prof !1095

bb36:                                             ; preds = %bb6.i42, %bb4.i30, %bb28
  %_0.sroa.4.0.i40.ph99 = phi i32 [ %11, %bb28 ], [ %10, %bb6.i42 ], [ %9, %bb4.i30 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1096)
  %_14.i66 = icmp sgt i64 %len.i65101, -1
  tail call void @llvm.assume(i1 %_14.i66)
  %_16.i = icmp samesign ult i32 %_0.sroa.4.0.i40.ph99, 128
  br i1 %_16.i, label %bb2.i, label %bb3.i67

bb3.i67:                                          ; preds = %bb36
  %_17.i = icmp samesign ult i32 %_0.sroa.4.0.i40.ph99, 2048
  br i1 %_17.i, label %bb2.i, label %bb4.i68

bb4.i68:                                          ; preds = %bb3.i67
  %_18.i = icmp samesign ult i32 %_0.sroa.4.0.i40.ph99, 65536
  %..i = select i1 %_18.i, i64 3, i64 4
  br label %bb2.i

bb2.i:                                            ; preds = %bb36.thread, %bb4.i68, %bb3.i67, %bb36
  %_16.i106 = phi i1 [ true, %bb36 ], [ false, %bb4.i68 ], [ false, %bb3.i67 ], [ true, %bb36.thread ]
  %_0.sroa.4.0.i40.ph99104 = phi i32 [ %_0.sroa.4.0.i40.ph99, %bb36 ], [ %_0.sroa.4.0.i40.ph99, %bb4.i68 ], [ %_0.sroa.4.0.i40.ph99, %bb3.i67 ], [ %_7.i63, %bb36.thread ]
  %ch_len.sroa.0.0.i = phi i64 [ 1, %bb36 ], [ %..i, %bb4.i68 ], [ 2, %bb3.i67 ], [ 1, %bb36.thread ]
  %self2.i.i69 = load i64, ptr %result, align 8, !range !1031, !alias.scope !1099, !noundef !23
  %_9.i.i70 = sub nsw i64 %self2.i.i69, %len.i65101
  %_7.i.i71 = icmp ugt i64 %ch_len.sroa.0.0.i, %_9.i.i70
  br i1 %_7.i.i71, label %bb1.i.i78, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hbbab1014724f7950E.exit.i", !prof !909

bb1.i.i78:                                        ; preds = %bb2.i
; invoke alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h9516934a7ae95c11E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %result, i64 noundef %len.i65101, i64 noundef range(i64 1, 5) %ch_len.sroa.0.0.i)
          to label %.noexc80 unwind label %cleanup.loopexit

.noexc80:                                         ; preds = %bb1.i.i78
  %count.pre.i79 = load i64, ptr %_43.sroa.5.0.result.sroa_idx, align 8, !alias.scope !1096
  %_20.i73.pre = load ptr, ptr %_43.sroa.4.0.result.sroa_idx, align 8, !alias.scope !1096
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hbbab1014724f7950E.exit.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hbbab1014724f7950E.exit.i": ; preds = %.noexc80, %bb2.i
  %_20.i73 = phi ptr [ %_20.i73128, %bb2.i ], [ %_20.i73.pre, %.noexc80 ]
  %count.i72 = phi i64 [ %len.i65101, %bb2.i ], [ %count.pre.i79, %.noexc80 ]
  %_21.i74 = icmp sgt i64 %count.i72, -1
  tail call void @llvm.assume(i1 %_21.i74)
  %_8.i75 = getelementptr inbounds nuw i8, ptr %_20.i73, i64 %count.i72
  br i1 %_16.i106, label %bb12.i.i, label %bb7.i.i

bb7.i.i:                                          ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hbbab1014724f7950E.exit.i"
  %_29.i.i = icmp samesign ult i32 %_0.sroa.4.0.i40.ph99104, 2048
  %12 = trunc i32 %_0.sroa.4.0.i40.ph99104 to i8
  %_5.i.i = and i8 %12, 63
  %last1.i.i = or disjoint i8 %_5.i.i, -128
  %_10.i.i = lshr i32 %_0.sroa.4.0.i40.ph99104, 6
  %13 = trunc i32 %_10.i.i to i8
  %_8.i.i = and i8 %13, 63
  %last2.i.i = or disjoint i8 %_8.i.i, -128
  %_14.i.i = lshr i32 %_0.sroa.4.0.i40.ph99104, 12
  %14 = trunc i32 %_14.i.i to i8
  %_12.i.i = and i8 %14, 63
  %last3.i.i = or disjoint i8 %_12.i.i, -128
  %_18.i.i76 = lshr i32 %_0.sroa.4.0.i40.ph99104, 18
  %_16.i.i = trunc nuw nsw i32 %_18.i.i76 to i8
  %last4.i.i = or disjoint i8 %_16.i.i, -16
  br i1 %_29.i.i, label %bb1.i2.i, label %bb2.i.i

bb12.i.i:                                         ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hbbab1014724f7950E.exit.i"
  %15 = trunc nuw nsw i32 %_0.sroa.4.0.i40.ph99104 to i8
  store i8 %15, ptr %_8.i75, align 1, !noalias !1096
  br label %bb6

bb2.i.i:                                          ; preds = %bb7.i.i
  %_30.i.i = icmp samesign ult i32 %_0.sroa.4.0.i40.ph99104, 65536
  br i1 %_30.i.i, label %bb3.i.i, label %bb4.i.i

bb1.i2.i:                                         ; preds = %bb7.i.i
  %16 = or disjoint i8 %13, -64
  store i8 %16, ptr %_8.i75, align 1, !noalias !1096
  %_21.i.i = getelementptr inbounds nuw i8, ptr %_8.i75, i64 1
  store i8 %last1.i.i, ptr %_21.i.i, align 1, !noalias !1096
  br label %bb6

bb4.i.i:                                          ; preds = %bb2.i.i
  store i8 %last4.i.i, ptr %_8.i75, align 1, !noalias !1096
  %_25.i.i = getelementptr inbounds nuw i8, ptr %_8.i75, i64 1
  store i8 %last3.i.i, ptr %_25.i.i, align 1, !noalias !1096
  %_26.i.i = getelementptr inbounds nuw i8, ptr %_8.i75, i64 2
  store i8 %last2.i.i, ptr %_26.i.i, align 1, !noalias !1096
  %_27.i.i = getelementptr inbounds nuw i8, ptr %_8.i75, i64 3
  store i8 %last1.i.i, ptr %_27.i.i, align 1, !noalias !1096
  br label %bb6

bb3.i.i:                                          ; preds = %bb2.i.i
  %17 = or disjoint i8 %14, -32
  store i8 %17, ptr %_8.i75, align 1, !noalias !1096
  %_23.i.i = getelementptr inbounds nuw i8, ptr %_8.i75, i64 1
  store i8 %last2.i.i, ptr %_23.i.i, align 1, !noalias !1096
  %_24.i.i = getelementptr inbounds nuw i8, ptr %_8.i75, i64 2
  store i8 %last1.i.i, ptr %_24.i.i, align 1, !noalias !1096
  br label %bb6

bb6:                                              ; preds = %bb3.i.i, %bb4.i.i, %bb1.i2.i, %bb12.i.i
  %new_len.i77 = add nuw i64 %ch_len.sroa.0.0.i, %len.i65101
  store i64 %new_len.i77, ptr %_43.sroa.5.0.result.sroa_idx, align 8, !alias.scope !1096
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_25)
  %start1.sroa.0.1 = add i64 %start1.sroa.0.1117, 1
  %_17.not = icmp eq i64 %start1.sroa.0.1, %end.sroa.0.0121
  br i1 %_17.not, label %bb7, label %bb5

bb18:                                             ; preds = %bb2.i.i.i3.i.i, %cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1102)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1105)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1108)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1111)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1114)
  %self1.i.i.i.i1.i.i82 = load i64, ptr %str, align 8, !range !1031, !alias.scope !1117, !noalias !1120, !noundef !23
  %_6.i.i.i.i2.i.i83 = icmp eq i64 %self1.i.i.i.i1.i.i82, 0
  br i1 %_6.i.i.i.i2.i.i83, label %bb19, label %bb2.i.i.i3.i.i84

bb2.i.i.i3.i.i84:                                 ; preds = %bb18
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_47, i64 noundef %self1.i.i.i.i1.i.i82, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !1122
  br label %bb19

bb19:                                             ; preds = %bb2.i.i.i3.i.i84, %bb18
  resume { ptr, i32 } %lpad.phi
}
