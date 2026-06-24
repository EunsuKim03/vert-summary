define noundef i32 @f_gold(ptr dead_on_return noalias noundef readonly align 8 captures(none) dereferenceable(24) %n) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_42 = alloca [16 x i8], align 8
  %_31 = alloca [16 x i8], align 8
  %_24 = alloca [16 x i8], align 8
  %0 = getelementptr inbounds nuw i8, ptr %n, i64 16
  %len = load i64, ptr %0, align 8, !noundef !23
  %_53 = icmp sgt i64 %len, -1
  tail call void @llvm.assume(i1 %_53)
  %_3 = icmp eq i64 %len, 1
  br i1 %_3, label %bb28, label %bb4

bb4:                                              ; preds = %start
  %iter1 = add nsw i64 %len, -1
  %_77252.not = icmp eq i64 %iter1, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %n, i64 8
  %_89.pre = load ptr, ptr %.phi.trans.insert, align 8
  br i1 %_77252.not, label %bb8, label %bb7.lr.ph

bb7.lr.ph:                                        ; preds = %bb4
  %_96 = getelementptr inbounds nuw i8, ptr %_89.pre, i64 %len
  %1 = getelementptr inbounds nuw i8, ptr %_24, i64 8
  %2 = getelementptr inbounds nuw i8, ptr %_31, i64 8
  br label %bb7

bb7:                                              ; preds = %bb7.lr.ph, %bb51
  %3 = phi i64 [ 1, %bb7.lr.ph ], [ %29, %bb51 ]
  %count.sroa.0.0254 = phi i32 [ 0, %bb7.lr.ph ], [ %spec.select26, %bb51 ]
  %iter.sroa.0.0253 = phi i64 [ 0, %bb7.lr.ph ], [ %3, %bb51 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_24)
  store ptr %_89.pre, ptr %_24, align 8
  store ptr %_96, ptr %1, align 8
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_100 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_24, i64 noundef %iter.sroa.0.0253)
  %.not20 = icmp eq i64 %_100, 0
  br i1 %.not20, label %bb35, label %bb70.invoke.invoke

bb8:                                              ; preds = %bb51, %bb4
  %count.sroa.0.0.lcssa = phi i32 [ 0, %bb4 ], [ %spec.select26, %bb51 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_42)
  %_137 = getelementptr inbounds nuw i8, ptr %_89.pre, i64 %len
  store ptr %_89.pre, ptr %_42, align 8
  %4 = getelementptr inbounds nuw i8, ptr %_42, i64 8
  store ptr %_137, ptr %4, align 8
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_141 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_42, i64 noundef %iter1)
  %.not = icmp eq i64 %_141, 0
  br i1 %.not, label %bb55, label %bb70.invoke.invoke

cleanup:                                          ; preds = %bb70.invoke.invoke
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1040)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1043)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1046)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1049)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1052)
  %self1.i.i.i.i1.i.i = load i64, ptr %n, align 8, !range !1055, !alias.scope !1056, !noalias !1059, !noundef !23
  %_6.i.i.i.i2.i.i = icmp eq i64 %self1.i.i.i.i1.i.i, 0
  br i1 %_6.i.i.i.i2.i.i, label %bb18, label %bb2.i.i.i3.i.i

bb2.i.i.i3.i.i:                                   ; preds = %cleanup
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_89.pre, i64 noundef %self1.i.i.i.i1.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !1061
  br label %bb18

bb55:                                             ; preds = %bb8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1062)
  %ptr.i.i = load ptr, ptr %_42, align 8, !alias.scope !1065, !nonnull !23, !noundef !23
  %end_or_len.i.i = load ptr, ptr %4, align 8, !alias.scope !1065, !nonnull !23, !noundef !23
  %_7.i.i = icmp eq ptr %ptr.i.i, %end_or_len.i.i
  br i1 %_7.i.i, label %bb70.invoke.invoke, label %bb14.i

bb14.i:                                           ; preds = %bb55
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
  %6 = or disjoint i32 %_34.i, %_35.i
  %_13.i = icmp samesign ugt i8 %x.i, -33
  br i1 %_13.i, label %bb6.i, label %bb65

bb3.i:                                            ; preds = %bb14.i
  %_7.i = zext nneg i8 %x.i to i32
  br label %bb65

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
  %7 = or disjoint i32 %y_z.i, %_20.i
  %_21.i = icmp samesign ugt i8 %x.i, -17
  br i1 %_21.i, label %bb53, label %bb65

bb53:                                             ; preds = %bb6.i
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
  %8 = or disjoint i32 %_27.i, %_25.i
  %.not17 = icmp eq i32 %8, 1114112
  br i1 %.not17, label %bb70.invoke.invoke, label %bb65, !prof !1068

bb65:                                             ; preds = %bb3.i, %bb6.i, %bb4.i, %bb53
  %_0.sroa.4.0.i.ph233 = phi i32 [ %8, %bb53 ], [ %_7.i, %bb3.i ], [ %7, %bb6.i ], [ %6, %bb4.i ]
  %9 = icmp samesign ult i32 %_0.sroa.4.0.i.ph233, 1114112
  tail call void @llvm.assume(i1 %9)
  %10 = shl nuw nsw i32 %_0.sroa.4.0.i.ph233, 1
  %_7.i.i34 = icmp samesign eq i64 %len, 0
  br i1 %_7.i.i34, label %bb70.invoke.invoke, label %bb14.i35

bb14.i35:                                         ; preds = %bb65
  %x.i37 = load i8, ptr %_89.pre, align 1, !noalias !1069, !noundef !23
  %_6.i38 = icmp sgt i8 %x.i37, -1
  br i1 %_6.i38, label %bb3.i71, label %bb4.i39

bb4.i39:                                          ; preds = %bb14.i35
  %_18.i.i36 = getelementptr inbounds nuw i8, ptr %_89.pre, i64 1
  %_30.i40 = and i8 %x.i37, 31
  %init.i41 = zext nneg i8 %_30.i40 to i32
  %y.i44 = load i8, ptr %_18.i.i36, align 1, !noalias !1069, !noundef !23
  %_34.i45 = shl nuw nsw i32 %init.i41, 6
  %_36.i46 = and i8 %y.i44, 63
  %_35.i47 = zext nneg i8 %_36.i46 to i32
  %11 = or disjoint i32 %_34.i45, %_35.i47
  %_13.i48 = icmp samesign ugt i8 %x.i37, -33
  br i1 %_13.i48, label %bb6.i51, label %bb71

bb3.i71:                                          ; preds = %bb14.i35
  %_7.i72 = zext nneg i8 %x.i37 to i32
  br label %bb71

bb6.i51:                                          ; preds = %bb4.i39
  %_18.i12.i43 = getelementptr inbounds nuw i8, ptr %_89.pre, i64 2
  %_7.i17.i52 = icmp samesign ne i64 %len, 2
  tail call void @llvm.assume(i1 %_7.i17.i52)
  %z.i54 = load i8, ptr %_18.i12.i43, align 1, !noalias !1069, !noundef !23
  %_40.i55 = shl nuw nsw i32 %_35.i47, 6
  %_42.i56 = and i8 %z.i54, 63
  %_41.i57 = zext nneg i8 %_42.i56 to i32
  %y_z.i58 = or disjoint i32 %_40.i55, %_41.i57
  %_20.i59 = shl nuw nsw i32 %init.i41, 12
  %12 = or disjoint i32 %y_z.i58, %_20.i59
  %_21.i60 = icmp samesign ugt i8 %x.i37, -17
  br i1 %_21.i60, label %bb63, label %bb71

bb63:                                             ; preds = %bb6.i51
  %_18.i19.i53 = getelementptr inbounds nuw i8, ptr %_89.pre, i64 3
  %_7.i24.i62 = icmp samesign ne i64 %len, 3
  tail call void @llvm.assume(i1 %_7.i24.i62)
  %w.i64 = load i8, ptr %_18.i19.i53, align 1, !noalias !1069, !noundef !23
  %_26.i65 = shl nuw nsw i32 %init.i41, 18
  %_25.i66 = and i32 %_26.i65, 1835008
  %_46.i67 = shl nuw nsw i32 %y_z.i58, 6
  %_48.i68 = and i8 %w.i64, 63
  %_47.i69 = zext nneg i8 %_48.i68 to i32
  %_27.i70 = or disjoint i32 %_46.i67, %_47.i69
  %13 = or disjoint i32 %_27.i70, %_25.i66
  %.not19 = icmp eq i32 %13, 1114112
  br i1 %.not19, label %bb70.invoke.invoke, label %bb71, !prof !1072

bb71:                                             ; preds = %bb4.i39, %bb6.i51, %bb3.i71, %bb63
  %_0.sroa.4.0.i49259 = phi i32 [ %13, %bb63 ], [ %11, %bb4.i39 ], [ %12, %bb6.i51 ], [ %_7.i72, %bb3.i71 ]
  %14 = icmp samesign ult i32 %_0.sroa.4.0.i49259, 1114112
  tail call void @llvm.assume(i1 %14)
  %_44 = add nuw nsw i32 %_0.sroa.4.0.i49259, %10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_42)
  %15 = and i32 %_44, 3
  %_51 = icmp eq i32 %15, 0
  %16 = zext i1 %_51 to i32
  %spec.select = add i32 %count.sroa.0.0.lcssa, %16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1073)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1076)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1079)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1082)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1085)
  %self1.i.i.i.i1.i.i74 = load i64, ptr %n, align 8, !range !1055, !alias.scope !1088, !noalias !1091, !noundef !23
  %_6.i.i.i.i2.i.i75 = icmp eq i64 %self1.i.i.i.i1.i.i74, 0
  br i1 %_6.i.i.i.i2.i.i75, label %bb16, label %bb2.i.i.i3.i.i76

bb2.i.i.i3.i.i76:                                 ; preds = %bb71
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_89.pre, i64 noundef %self1.i.i.i.i1.i.i74, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !1093
  br label %bb16

bb70.invoke.invoke:                               ; preds = %bb35, %bb7, %bb33, %bb45, %bb41, %bb43, %bb55, %bb8, %bb53, %bb65, %bb63
  %17 = phi ptr [ @alloc_aa47e0f3d6fe611eb58e41fd2d239c8e, %bb55 ], [ @alloc_aa47e0f3d6fe611eb58e41fd2d239c8e, %bb8 ], [ @alloc_aa47e0f3d6fe611eb58e41fd2d239c8e, %bb53 ], [ @alloc_6d82530b4c881cf3502fabd8fbd0a004, %bb65 ], [ @alloc_6d82530b4c881cf3502fabd8fbd0a004, %bb63 ], [ @alloc_24ca3aff66782af8ae34a27f69fdbcdb, %bb43 ], [ @alloc_24ca3aff66782af8ae34a27f69fdbcdb, %bb41 ], [ @alloc_24ca3aff66782af8ae34a27f69fdbcdb, %bb45 ], [ @alloc_0e23de349ccf4beb6e6def27f8a1a660, %bb33 ], [ @alloc_0e23de349ccf4beb6e6def27f8a1a660, %bb7 ], [ @alloc_0e23de349ccf4beb6e6def27f8a1a660, %bb35 ]
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %17) #20
          to label %bb70.invoke.cont unwind label %cleanup

bb70.invoke.cont:                                 ; preds = %bb70.invoke.invoke
  unreachable

bb16:                                             ; preds = %bb2.i.i.i3.i.i207, %bb28, %bb2.i.i.i3.i.i76, %bb71
  %count.sroa.0.2 = phi i32 [ %spec.select, %bb71 ], [ %spec.select, %bb2.i.i.i3.i.i76 ], [ %., %bb28 ], [ %., %bb2.i.i.i3.i.i207 ]
  ret i32 %count.sroa.0.2

bb35:                                             ; preds = %bb7
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1094)
  %ptr.i.i79 = load ptr, ptr %_24, align 8, !alias.scope !1097, !nonnull !23, !noundef !23
  %end_or_len.i.i80 = load ptr, ptr %1, align 8, !alias.scope !1097, !nonnull !23, !noundef !23
  %_7.i.i81 = icmp eq ptr %ptr.i.i79, %end_or_len.i.i80
  br i1 %_7.i.i81, label %bb70.invoke.invoke, label %bb14.i82

bb14.i82:                                         ; preds = %bb35
  %x.i84 = load i8, ptr %ptr.i.i79, align 1, !noalias !1094, !noundef !23
  %_6.i85 = icmp sgt i8 %x.i84, -1
  br i1 %_6.i85, label %bb3.i118, label %bb4.i86

bb4.i86:                                          ; preds = %bb14.i82
  %_18.i.i83 = getelementptr inbounds nuw i8, ptr %ptr.i.i79, i64 1
  %_30.i87 = and i8 %x.i84, 31
  %init.i88 = zext nneg i8 %_30.i87 to i32
  %_7.i10.i89 = icmp ne ptr %_18.i.i83, %end_or_len.i.i80
  tail call void @llvm.assume(i1 %_7.i10.i89)
  %y.i91 = load i8, ptr %_18.i.i83, align 1, !noalias !1094, !noundef !23
  %_34.i92 = shl nuw nsw i32 %init.i88, 6
  %_36.i93 = and i8 %y.i91, 63
  %_35.i94 = zext nneg i8 %_36.i93 to i32
  %18 = or disjoint i32 %_34.i92, %_35.i94
  %_13.i95 = icmp samesign ugt i8 %x.i84, -33
  br i1 %_13.i95, label %bb6.i98, label %bb41

bb3.i118:                                         ; preds = %bb14.i82
  %_7.i119 = zext nneg i8 %x.i84 to i32
  br label %bb41

bb6.i98:                                          ; preds = %bb4.i86
  %_18.i12.i90 = getelementptr inbounds nuw i8, ptr %ptr.i.i79, i64 2
  %_7.i17.i99 = icmp ne ptr %_18.i12.i90, %end_or_len.i.i80
  tail call void @llvm.assume(i1 %_7.i17.i99)
  %z.i101 = load i8, ptr %_18.i12.i90, align 1, !noalias !1094, !noundef !23
  %_40.i102 = shl nuw nsw i32 %_35.i94, 6
  %_42.i103 = and i8 %z.i101, 63
  %_41.i104 = zext nneg i8 %_42.i103 to i32
  %y_z.i105 = or disjoint i32 %_40.i102, %_41.i104
  %_20.i106 = shl nuw nsw i32 %init.i88, 12
  %19 = or disjoint i32 %y_z.i105, %_20.i106
  %_21.i107 = icmp samesign ugt i8 %x.i84, -17
  br i1 %_21.i107, label %bb33, label %bb41

bb33:                                             ; preds = %bb6.i98
  %_18.i19.i100 = getelementptr inbounds nuw i8, ptr %ptr.i.i79, i64 3
  %_7.i24.i109 = icmp ne ptr %_18.i19.i100, %end_or_len.i.i80
  tail call void @llvm.assume(i1 %_7.i24.i109)
  %w.i111 = load i8, ptr %_18.i19.i100, align 1, !noalias !1094, !noundef !23
  %_26.i112 = shl nuw nsw i32 %init.i88, 18
  %_25.i113 = and i32 %_26.i112, 1835008
  %_46.i114 = shl nuw nsw i32 %y_z.i105, 6
  %_48.i115 = and i8 %w.i111, 63
  %_47.i116 = zext nneg i8 %_48.i115 to i32
  %_27.i117 = or disjoint i32 %_46.i114, %_47.i116
  %20 = or disjoint i32 %_27.i117, %_25.i113
  %.not21 = icmp eq i32 %20, 1114112
  br i1 %.not21, label %bb70.invoke.invoke, label %bb41, !prof !1068

bb41:                                             ; preds = %bb3.i118, %bb6.i98, %bb4.i86, %bb33
  %_0.sroa.4.0.i96.ph241 = phi i32 [ %20, %bb33 ], [ %_7.i119, %bb3.i118 ], [ %19, %bb6.i98 ], [ %18, %bb4.i86 ]
  %21 = icmp samesign ult i32 %_0.sroa.4.0.i96.ph241, 1114112
  tail call void @llvm.assume(i1 %21)
  %22 = shl nuw nsw i32 %_0.sroa.4.0.i96.ph241, 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_31)
  store ptr %_89.pre, ptr %_31, align 8
  store ptr %_96, ptr %2, align 8
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_123 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_31, i64 noundef %3)
  %.not22 = icmp eq i64 %_123, 0
  br i1 %.not22, label %bb45, label %bb70.invoke.invoke

bb45:                                             ; preds = %bb41
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1100)
  %ptr.i.i121 = load ptr, ptr %_31, align 8, !alias.scope !1103, !nonnull !23, !noundef !23
  %end_or_len.i.i122 = load ptr, ptr %2, align 8, !alias.scope !1103, !nonnull !23, !noundef !23
  %_7.i.i123 = icmp eq ptr %ptr.i.i121, %end_or_len.i.i122
  br i1 %_7.i.i123, label %bb70.invoke.invoke, label %bb14.i124

bb14.i124:                                        ; preds = %bb45
  %x.i126 = load i8, ptr %ptr.i.i121, align 1, !noalias !1100, !noundef !23
  %_6.i127 = icmp sgt i8 %x.i126, -1
  br i1 %_6.i127, label %bb3.i160, label %bb4.i128

bb4.i128:                                         ; preds = %bb14.i124
  %_18.i.i125 = getelementptr inbounds nuw i8, ptr %ptr.i.i121, i64 1
  %_30.i129 = and i8 %x.i126, 31
  %init.i130 = zext nneg i8 %_30.i129 to i32
  %_7.i10.i131 = icmp ne ptr %_18.i.i125, %end_or_len.i.i122
  tail call void @llvm.assume(i1 %_7.i10.i131)
  %y.i133 = load i8, ptr %_18.i.i125, align 1, !noalias !1100, !noundef !23
  %_34.i134 = shl nuw nsw i32 %init.i130, 6
  %_36.i135 = and i8 %y.i133, 63
  %_35.i136 = zext nneg i8 %_36.i135 to i32
  %23 = or disjoint i32 %_34.i134, %_35.i136
  %_13.i137 = icmp samesign ugt i8 %x.i126, -33
  br i1 %_13.i137, label %bb6.i140, label %bb51

bb3.i160:                                         ; preds = %bb14.i124
  %_7.i161 = zext nneg i8 %x.i126 to i32
  br label %bb51

bb6.i140:                                         ; preds = %bb4.i128
  %_18.i12.i132 = getelementptr inbounds nuw i8, ptr %ptr.i.i121, i64 2
  %_7.i17.i141 = icmp ne ptr %_18.i12.i132, %end_or_len.i.i122
  tail call void @llvm.assume(i1 %_7.i17.i141)
  %z.i143 = load i8, ptr %_18.i12.i132, align 1, !noalias !1100, !noundef !23
  %_40.i144 = shl nuw nsw i32 %_35.i136, 6
  %_42.i145 = and i8 %z.i143, 63
  %_41.i146 = zext nneg i8 %_42.i145 to i32
  %y_z.i147 = or disjoint i32 %_40.i144, %_41.i146
  %_20.i148 = shl nuw nsw i32 %init.i130, 12
  %24 = or disjoint i32 %y_z.i147, %_20.i148
  %_21.i149 = icmp samesign ugt i8 %x.i126, -17
  br i1 %_21.i149, label %bb43, label %bb51

bb43:                                             ; preds = %bb6.i140
  %_18.i19.i142 = getelementptr inbounds nuw i8, ptr %ptr.i.i121, i64 3
  %_7.i24.i151 = icmp ne ptr %_18.i19.i142, %end_or_len.i.i122
  tail call void @llvm.assume(i1 %_7.i24.i151)
  %w.i153 = load i8, ptr %_18.i19.i142, align 1, !noalias !1100, !noundef !23
  %_26.i154 = shl nuw nsw i32 %init.i130, 18
  %_25.i155 = and i32 %_26.i154, 1835008
  %_46.i156 = shl nuw nsw i32 %y_z.i147, 6
  %_48.i157 = and i8 %w.i153, 63
  %_47.i158 = zext nneg i8 %_48.i157 to i32
  %_27.i159 = or disjoint i32 %_46.i156, %_47.i158
  %25 = or disjoint i32 %_27.i159, %_25.i155
  %.not23 = icmp eq i32 %25, 1114112
  br i1 %.not23, label %bb70.invoke.invoke, label %bb51, !prof !1068

bb51:                                             ; preds = %bb3.i160, %bb6.i140, %bb4.i128, %bb43
  %_0.sroa.4.0.i138.ph249 = phi i32 [ %25, %bb43 ], [ %_7.i161, %bb3.i160 ], [ %24, %bb6.i140 ], [ %23, %bb4.i128 ]
  %26 = icmp samesign ult i32 %_0.sroa.4.0.i138.ph249, 1114112
  tail call void @llvm.assume(i1 %26)
  %_26 = add nuw nsw i32 %_0.sroa.4.0.i138.ph249, %22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_31)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_24)
  %27 = and i32 %_26, 3
  %_34 = icmp eq i32 %27, 0
  %28 = zext i1 %_34 to i32
  %spec.select26 = add i32 %count.sroa.0.0254, %28
  %29 = add i64 %3, 1
  %exitcond.not = icmp eq i64 %29, %len
  br i1 %exitcond.not, label %bb8, label %bb7

bb28:                                             ; preds = %start
  %30 = getelementptr inbounds nuw i8, ptr %n, i64 8
  %_57 = load ptr, ptr %30, align 8, !nonnull !23, !noundef !23
  %x.i168 = load i8, ptr %_57, align 1, !noalias !1106, !noundef !23
  %_6.i169 = icmp sgt i8 %x.i168, -1
  tail call void @llvm.assume(i1 %_6.i169)
  %31 = and i8 %x.i168, 3
  %_11 = icmp eq i8 %31, 0
  %. = zext i1 %_11 to i32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1109)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1112)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1115)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1118)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1121)
  %self1.i.i.i.i1.i.i205 = load i64, ptr %n, align 8, !range !1055, !alias.scope !1124, !noalias !1127, !noundef !23
  %_6.i.i.i.i2.i.i206 = icmp eq i64 %self1.i.i.i.i1.i.i205, 0
  br i1 %_6.i.i.i.i2.i.i206, label %bb16, label %bb2.i.i.i3.i.i207

bb2.i.i.i3.i.i207:                                ; preds = %bb28
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_57, i64 noundef %self1.i.i.i.i1.i.i205, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !1129
  br label %bb16

bb18:                                             ; preds = %bb2.i.i.i3.i.i, %cleanup
  resume { ptr, i32 } %5
}
