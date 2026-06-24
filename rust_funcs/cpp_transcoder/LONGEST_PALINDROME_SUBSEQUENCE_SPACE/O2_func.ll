define noundef i32 @f_gold(ptr dead_on_return noalias noundef readonly align 8 captures(none) dereferenceable(24) %s) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_19 = alloca [16 x i8], align 8
  %_15 = alloca [16 x i8], align 8
  %0 = getelementptr inbounds nuw i8, ptr %s, i64 16
  %n = load i64, ptr %0, align 8, !noundef !23
  %_35 = icmp sgt i64 %n, -1
  tail call void @llvm.assume(i1 %_35)
  %_21.0.i.i.i = shl i64 %n, 2
  %_21.1.i.i.i = icmp samesign ugt i64 %n, 4611686018427387903
  %_26.i.i.i = icmp ugt i64 %_21.0.i.i.i, 9223372036854775804
  %or.cond.i.i.i = or i1 %_21.1.i.i.i, %_26.i.i.i
  br i1 %or.cond.i.i.i, label %bb14.i, label %bb17.i.i, !prof !339

bb17.i.i:                                         ; preds = %start
  %_8.i.i = icmp eq i64 %_21.0.i.i.i, 0
  br i1 %_8.i.i, label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h2ff504f9fea9e70fE.exit", label %bb3.i3.i

bb3.i3.i:                                         ; preds = %bb17.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !1040
; call __rustc::__rust_alloc_zeroed
  %1 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #21, !noalias !1040
  %2 = icmp eq ptr %1, null
  br i1 %2, label %bb14.i, label %bb10.i.i

bb10.i.i:                                         ; preds = %bb3.i3.i
  %3 = ptrtoint ptr %1 to i64
  br label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h2ff504f9fea9e70fE.exit"

bb14.i:                                           ; preds = %bb3.i3.i, %start
  %_16.sroa.4.0.ph.i = phi i64 [ 4, %bb3.i3.i ], [ 0, %start ]
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_16.sroa.4.0.ph.i, i64 %_21.0.i.i.i) #22
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %bb14.i
  unreachable

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h2ff504f9fea9e70fE.exit": ; preds = %bb17.i.i, %bb10.i.i
  %_16.sroa.4.0.i = phi i64 [ %n, %bb10.i.i ], [ 0, %bb17.i.i ]
  %_16.sroa.10.0.i = phi i64 [ %3, %bb10.i.i ], [ 4, %bb17.i.i ]
  %4 = inttoptr i64 %_16.sroa.10.0.i to ptr
  %_36.not.not94 = icmp eq i64 %n, 0
  br i1 %_36.not.not94, label %panic4.invoke, label %bb5.preheader.lr.ph

bb5.preheader.lr.ph:                              ; preds = %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h2ff504f9fea9e70fE.exit"
  %_3795 = add nsw i64 %n, -1
  %5 = getelementptr inbounds nuw i8, ptr %s, i64 8
  %_58 = load ptr, ptr %5, align 8, !nonnull !23
  %_65 = getelementptr inbounds nuw i8, ptr %_58, i64 %n
  %6 = getelementptr inbounds nuw i8, ptr %_15, i64 8
  %7 = getelementptr inbounds nuw i8, ptr %_19, i64 8
  br label %bb5.preheader

bb18:                                             ; preds = %bb2.i.i.i3.i27, %cleanup2, %cleanup
  %.pn = phi { ptr, i32 } [ %9, %cleanup ], [ %11, %cleanup2 ], [ %11, %bb2.i.i.i3.i27 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1045)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1048)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1051)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1054)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1057)
  %self1.i.i.i.i1.i.i = load i64, ptr %s, align 8, !range !1060, !alias.scope !1061, !noalias !1064, !noundef !23
  %_6.i.i.i.i2.i.i = icmp eq i64 %self1.i.i.i.i1.i.i, 0
  br i1 %_6.i.i.i.i2.i.i, label %bb19, label %bb2.i.i.i3.i.i

bb2.i.i.i3.i.i:                                   ; preds = %bb18
  %8 = getelementptr inbounds nuw i8, ptr %s, i64 8
  %self3.i.i.i.i4.i.i = load ptr, ptr %8, align 8, !alias.scope !1061, !noalias !1064, !nonnull !23, !noundef !23
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i, i64 noundef %self1.i.i.i.i1.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !1066
  br label %bb19

cleanup:                                          ; preds = %bb14.i
  %9 = landingpad { ptr, i32 }
          cleanup
  br label %bb18

bb1.loopexit:                                     ; preds = %bb14, %bb5.preheader
  %_36.not.not = icmp eq i64 %iter1.sroa.0.1100, 0
  %_37 = add nsw i64 %iter1.sroa.0.1100, -1
  %iter1.sroa.0.1113 = add i64 %iter1.sroa.0.1100, -1
  br i1 %_36.not.not, label %bb24, label %bb5.preheader

bb5.preheader:                                    ; preds = %bb5.preheader.lr.ph, %bb1.loopexit
  %_4.sroa.6.0101 = phi i64 [ %_3795, %bb5.preheader.lr.ph ], [ %_37, %bb1.loopexit ]
  %iter1.sroa.0.1100 = phi i64 [ %_3795, %bb5.preheader.lr.ph ], [ %iter1.sroa.0.1113, %bb1.loopexit ]
  %iter1.sroa.0.098 = phi i64 [ %n, %bb5.preheader.lr.ph ], [ %iter1.sroa.0.1100, %bb1.loopexit ]
  %_4591 = icmp ult i64 %_4.sroa.6.0101, %n
  br i1 %_4591, label %bb6.preheader, label %bb1.loopexit

bb6.preheader:                                    ; preds = %bb5.preheader
  %_11 = getelementptr inbounds nuw i32, ptr %4, i64 %_4.sroa.6.0101
  br label %bb6

bb24:                                             ; preds = %bb1.loopexit
  %_33 = getelementptr inbounds nuw i32, ptr %4, i64 %_3795
  %_0 = load i32, ptr %_33, align 4, !noundef !23
  %_6.i.i.i.i2.i = icmp eq i64 %_16.sroa.4.0.i, 0
  br i1 %_6.i.i.i.i2.i, label %bb15, label %bb2.i.i.i3.i

bb2.i.i.i3.i:                                     ; preds = %bb24
  %10 = shl nuw i64 %_16.sroa.4.0.i, 2
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %4, i64 noundef %10, i64 noundef range(i64 1, -9223372036854775807) 4) #21, !noalias !1067
  br label %bb15

cleanup2:                                         ; preds = %panic4.invoke
  %11 = landingpad { ptr, i32 }
          cleanup
  %_6.i.i.i.i2.i26 = icmp eq i64 %_16.sroa.4.0.i, 0
  br i1 %_6.i.i.i.i2.i26, label %bb18, label %bb2.i.i.i3.i27

bb2.i.i.i3.i27:                                   ; preds = %cleanup2
  %12 = shl nuw i64 %_16.sroa.4.0.i, 2
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %4, i64 noundef %12, i64 noundef range(i64 1, -9223372036854775807) 4) #21, !noalias !1076
  br label %bb18

bb15:                                             ; preds = %bb2.i.i.i3.i, %bb24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1085)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1088)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1091)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1094)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1097)
  %self1.i.i.i.i1.i.i30 = load i64, ptr %s, align 8, !range !1060, !alias.scope !1100, !noalias !1103, !noundef !23
  %_6.i.i.i.i2.i.i31 = icmp eq i64 %self1.i.i.i.i1.i.i30, 0
  br i1 %_6.i.i.i.i2.i.i31, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h2fdd6ecb3f0ebda0E.exit34", label %bb2.i.i.i3.i.i32

bb2.i.i.i3.i.i32:                                 ; preds = %bb15
  %13 = getelementptr inbounds nuw i8, ptr %s, i64 8
  %self3.i.i.i.i4.i.i33 = load ptr, ptr %13, align 8, !alias.scope !1100, !noalias !1103, !nonnull !23, !noundef !23
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i33, i64 noundef %self1.i.i.i.i1.i.i30, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !1105
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h2fdd6ecb3f0ebda0E.exit34"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h2fdd6ecb3f0ebda0E.exit34": ; preds = %bb15, %bb2.i.i.i3.i.i32
  ret i32 %_0

bb6:                                              ; preds = %bb6.preheader, %bb14
  %14 = phi i64 [ %28, %bb14 ], [ %iter1.sroa.0.098, %bb6.preheader ]
  %back_up.sroa.0.093 = phi i32 [ %back_up.sroa.0.2, %bb14 ], [ 0, %bb6.preheader ]
  %iter.sroa.0.092 = phi i64 [ %14, %bb14 ], [ %_4.sroa.6.0101, %bb6.preheader ]
  %_10 = icmp eq i64 %iter.sroa.0.092, %_4.sroa.6.0101
  br i1 %_10, label %bb28, label %bb9

bb9:                                              ; preds = %bb6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_15)
  store ptr %_58, ptr %_15, align 8
  store ptr %_65, ptr %6, align 8
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_69 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_15, i64 noundef %_4.sroa.6.0101)
  %.not = icmp eq i64 %_69, 0
  br i1 %.not, label %bb32, label %bb30

bb32:                                             ; preds = %bb9
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1106)
  %ptr.i.i = load ptr, ptr %_15, align 8, !alias.scope !1109, !nonnull !23, !noundef !23
  %end_or_len.i.i = load ptr, ptr %6, align 8, !alias.scope !1109, !nonnull !23, !noundef !23
  %_7.i.i.not = icmp eq ptr %ptr.i.i, %end_or_len.i.i
  br i1 %_7.i.i.not, label %bb30, label %bb14.i35

bb14.i35:                                         ; preds = %bb32
  %x.i = load i8, ptr %ptr.i.i, align 1, !noalias !1106, !noundef !23
  %_6.i = icmp sgt i8 %x.i, -1
  br i1 %_6.i, label %bb3.i, label %bb4.i

bb4.i:                                            ; preds = %bb14.i35
  %_18.i.i = getelementptr inbounds nuw i8, ptr %ptr.i.i, i64 1
  %_30.i = and i8 %x.i, 31
  %init.i = zext nneg i8 %_30.i to i32
  %_7.i10.i = icmp ne ptr %_18.i.i, %end_or_len.i.i
  tail call void @llvm.assume(i1 %_7.i10.i)
  %y.i = load i8, ptr %_18.i.i, align 1, !noalias !1106, !noundef !23
  %_34.i = shl nuw nsw i32 %init.i, 6
  %_36.i = and i8 %y.i, 63
  %_35.i = zext nneg i8 %_36.i to i32
  %15 = or disjoint i32 %_34.i, %_35.i
  %_13.i = icmp samesign ugt i8 %x.i, -33
  br i1 %_13.i, label %bb6.i, label %bb30

bb3.i:                                            ; preds = %bb14.i35
  %_7.i = zext nneg i8 %x.i to i32
  br label %bb30

bb6.i:                                            ; preds = %bb4.i
  %_18.i12.i = getelementptr inbounds nuw i8, ptr %ptr.i.i, i64 2
  %_7.i17.i = icmp ne ptr %_18.i12.i, %end_or_len.i.i
  tail call void @llvm.assume(i1 %_7.i17.i)
  %z.i = load i8, ptr %_18.i12.i, align 1, !noalias !1106, !noundef !23
  %_40.i = shl nuw nsw i32 %_35.i, 6
  %_42.i = and i8 %z.i, 63
  %_41.i = zext nneg i8 %_42.i to i32
  %y_z.i = or disjoint i32 %_40.i, %_41.i
  %_20.i = shl nuw nsw i32 %init.i, 12
  %16 = or disjoint i32 %y_z.i, %_20.i
  %_21.i = icmp samesign ugt i8 %x.i, -17
  br i1 %_21.i, label %bb8.i, label %bb30

bb8.i:                                            ; preds = %bb6.i
  %_18.i19.i = getelementptr inbounds nuw i8, ptr %ptr.i.i, i64 3
  %_7.i24.i = icmp ne ptr %_18.i19.i, %end_or_len.i.i
  tail call void @llvm.assume(i1 %_7.i24.i)
  %w.i = load i8, ptr %_18.i19.i, align 1, !noalias !1106, !noundef !23
  %_26.i = shl nuw nsw i32 %init.i, 18
  %_25.i = and i32 %_26.i, 1835008
  %_46.i = shl nuw nsw i32 %y_z.i, 6
  %_48.i = and i8 %w.i, 63
  %_47.i = zext nneg i8 %_48.i to i32
  %_27.i = or disjoint i32 %_46.i, %_47.i
  %17 = or disjoint i32 %_27.i, %_25.i
  br label %bb30

bb30:                                             ; preds = %bb32, %bb4.i, %bb3.i, %bb6.i, %bb8.i, %bb9
  %_13.sroa.0.1 = phi i32 [ 1114112, %bb9 ], [ %_7.i, %bb3.i ], [ %17, %bb8.i ], [ %16, %bb6.i ], [ %15, %bb4.i ], [ 1114112, %bb32 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_19)
  store ptr %_58, ptr %_19, align 8
  store ptr %_65, ptr %7, align 8
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_90 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_19, i64 noundef %iter.sroa.0.092)
  %.not20 = icmp eq i64 %_90, 0
  br i1 %.not20, label %bb40, label %bb38.thread

bb40:                                             ; preds = %bb30
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1112)
  %ptr.i.i36 = load ptr, ptr %_19, align 8, !alias.scope !1115, !nonnull !23, !noundef !23
  %end_or_len.i.i37 = load ptr, ptr %7, align 8, !alias.scope !1115, !nonnull !23, !noundef !23
  %_7.i.i38.not = icmp eq ptr %ptr.i.i36, %end_or_len.i.i37
  br i1 %_7.i.i38.not, label %bb38.thread104, label %bb14.i39

bb14.i39:                                         ; preds = %bb40
  %x.i41 = load i8, ptr %ptr.i.i36, align 1, !noalias !1112, !noundef !23
  %_6.i42 = icmp sgt i8 %x.i41, -1
  br i1 %_6.i42, label %bb3.i75, label %bb4.i43

bb4.i43:                                          ; preds = %bb14.i39
  %_18.i.i40 = getelementptr inbounds nuw i8, ptr %ptr.i.i36, i64 1
  %_30.i44 = and i8 %x.i41, 31
  %init.i45 = zext nneg i8 %_30.i44 to i32
  %_7.i10.i46 = icmp ne ptr %_18.i.i40, %end_or_len.i.i37
  tail call void @llvm.assume(i1 %_7.i10.i46)
  %y.i48 = load i8, ptr %_18.i.i40, align 1, !noalias !1112, !noundef !23
  %_34.i49 = shl nuw nsw i32 %init.i45, 6
  %_36.i50 = and i8 %y.i48, 63
  %_35.i51 = zext nneg i8 %_36.i50 to i32
  %18 = or disjoint i32 %_34.i49, %_35.i51
  %_13.i52 = icmp samesign ugt i8 %x.i41, -33
  br i1 %_13.i52, label %bb6.i55, label %bb38

bb3.i75:                                          ; preds = %bb14.i39
  %_7.i76 = zext nneg i8 %x.i41 to i32
  br label %bb38

bb6.i55:                                          ; preds = %bb4.i43
  %_18.i12.i47 = getelementptr inbounds nuw i8, ptr %ptr.i.i36, i64 2
  %_7.i17.i56 = icmp ne ptr %_18.i12.i47, %end_or_len.i.i37
  tail call void @llvm.assume(i1 %_7.i17.i56)
  %z.i58 = load i8, ptr %_18.i12.i47, align 1, !noalias !1112, !noundef !23
  %_40.i59 = shl nuw nsw i32 %_35.i51, 6
  %_42.i60 = and i8 %z.i58, 63
  %_41.i61 = zext nneg i8 %_42.i60 to i32
  %y_z.i62 = or disjoint i32 %_40.i59, %_41.i61
  %_20.i63 = shl nuw nsw i32 %init.i45, 12
  %19 = or disjoint i32 %y_z.i62, %_20.i63
  %_21.i64 = icmp samesign ugt i8 %x.i41, -17
  br i1 %_21.i64, label %bb8.i65, label %bb38

bb8.i65:                                          ; preds = %bb6.i55
  %_18.i19.i57 = getelementptr inbounds nuw i8, ptr %ptr.i.i36, i64 3
  %_7.i24.i66 = icmp ne ptr %_18.i19.i57, %end_or_len.i.i37
  tail call void @llvm.assume(i1 %_7.i24.i66)
  %w.i68 = load i8, ptr %_18.i19.i57, align 1, !noalias !1112, !noundef !23
  %_26.i69 = shl nuw nsw i32 %init.i45, 18
  %_25.i70 = and i32 %_26.i69, 1835008
  %_46.i71 = shl nuw nsw i32 %y_z.i62, 6
  %_48.i72 = and i8 %w.i68, 63
  %_47.i73 = zext nneg i8 %_48.i72 to i32
  %_27.i74 = or disjoint i32 %_46.i71, %_47.i73
  %20 = or disjoint i32 %_27.i74, %_25.i70
  br label %bb38

bb38:                                             ; preds = %bb4.i43, %bb3.i75, %bb6.i55, %bb8.i65
  %spec.select24 = phi i32 [ %_7.i76, %bb3.i75 ], [ %20, %bb8.i65 ], [ %19, %bb6.i55 ], [ %18, %bb4.i43 ]
  %.not21 = icmp eq i32 %_13.sroa.0.1, 1114112
  br i1 %.not21, label %bb45, label %bb46

bb38.thread104:                                   ; preds = %bb40
  %.not21106 = icmp eq i32 %_13.sroa.0.1, 1114112
  br i1 %.not21106, label %bb51, label %bb52

bb38.thread:                                      ; preds = %bb30
  %.not2185 = icmp eq i32 %_13.sroa.0.1, 1114112
  br i1 %.not2185, label %bb51, label %bb52

bb46:                                             ; preds = %bb38
  %.not22 = icmp ne i32 %spec.select24, 1114112
  %21 = icmp eq i32 %_13.sroa.0.1, %spec.select24
  %or.cond = select i1 %.not22, i1 %21, i1 false
  br i1 %or.cond, label %bb51, label %bb52

bb45:                                             ; preds = %bb38
  %22 = icmp eq i32 %spec.select24, 1114112
  br i1 %22, label %bb51, label %bb52

bb52:                                             ; preds = %bb38.thread104, %bb38.thread, %bb45, %bb46
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_19)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_15)
  %_29 = add nsw i64 %iter.sroa.0.092, -1
  %_122 = icmp ult i64 %_29, %n
  br i1 %_122, label %bb55, label %panic4.invoke

panic4.invoke:                                    ; preds = %bb52, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h2ff504f9fea9e70fE.exit"
  %23 = phi i64 [ -1, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h2ff504f9fea9e70fE.exit" ], [ %_29, %bb52 ]
  %24 = phi i64 [ 0, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h2ff504f9fea9e70fE.exit" ], [ %n, %bb52 ]
  %25 = phi ptr [ @alloc_2c66dce60e0a21df08c3fb555b23b154, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h2ff504f9fea9e70fE.exit" ], [ @alloc_35c5e9b812b73477d57228355f68ef6c, %bb52 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %23, i64 noundef %24, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %25) #22
          to label %panic4.cont unwind label %cleanup2

panic4.cont:                                      ; preds = %panic4.invoke
  unreachable

bb55:                                             ; preds = %bb52
  %_25 = getelementptr inbounds nuw i32, ptr %4, i64 %iter.sroa.0.092
  %26 = load i32, ptr %_25, align 4, !noundef !23
  %_28 = getelementptr inbounds nuw i32, ptr %4, i64 %_29
  %_27 = load i32, ptr %_28, align 4, !noundef !23
  %_0.sroa.0.0.i78 = tail call noundef i32 @llvm.smax.i32(i32 %26, i32 %_27)
  store i32 %_0.sroa.0.0.i78, ptr %_25, align 4
  br label %bb14

bb51:                                             ; preds = %bb38.thread104, %bb46, %bb38.thread, %bb45
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_19)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_15)
  %_22 = getelementptr inbounds nuw i32, ptr %4, i64 %iter.sroa.0.092
  %temp = load i32, ptr %_22, align 4, !noundef !23
  %27 = add i32 %back_up.sroa.0.093, 2
  store i32 %27, ptr %_22, align 4
  br label %bb14

bb14:                                             ; preds = %bb55, %bb51, %bb28
  %back_up.sroa.0.2 = phi i32 [ %back_up.sroa.0.093, %bb28 ], [ %temp, %bb51 ], [ %26, %bb55 ]
  %_45 = icmp ult i64 %14, %n
  %28 = add nuw nsw i64 %14, 1
  br i1 %_45, label %bb6, label %bb1.loopexit

bb28:                                             ; preds = %bb6
  store i32 1, ptr %_11, align 4
  br label %bb14

bb19:                                             ; preds = %bb2.i.i.i3.i.i, %bb18
  resume { ptr, i32 } %.pn
}
