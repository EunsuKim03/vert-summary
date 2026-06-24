define noundef range(i32 -2147483648, 1073741824) i32 @f_gold(ptr dead_on_return noalias noundef readonly align 8 captures(none) dereferenceable(24) %s) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_18 = alloca [16 x i8], align 8
  %_12 = alloca [16 x i8], align 8
  %0 = getelementptr inbounds nuw i8, ptr %s, i64 16
  %_3 = load i64, ptr %0, align 8, !noundef !23
  %_40 = icmp sgt i64 %_3, -1
  tail call void @llvm.assume(i1 %_40)
  %n = trunc i64 %_3 to i32
  %sext = shl i64 %_3, 32
  %_5 = ashr exact i64 %sext, 32
  %_21.0.i.i.i = ashr exact i64 %sext, 30
  %_21.1.i.i.i = icmp ugt i64 %_5, 4611686018427387903
  %_26.i.i.i = icmp ugt i64 %_21.0.i.i.i, 9223372036854775804
  %or.cond.i.i.i = or i1 %_21.1.i.i.i, %_26.i.i.i
  br i1 %or.cond.i.i.i, label %bb14.i, label %bb17.i.i, !prof !339

bb17.i.i:                                         ; preds = %start
  %_8.i.i = icmp eq i64 %sext, 0
  br i1 %_8.i.i, label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h56945e33aca7989bE.exit", label %bb3.i3.i

bb3.i3.i:                                         ; preds = %bb17.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !1040
; call __rustc::__rust_alloc_zeroed
  %1 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #21, !noalias !1040
  %2 = icmp eq ptr %1, null
  br i1 %2, label %bb14.i, label %bb10.i.i

bb10.i.i:                                         ; preds = %bb3.i3.i
  %3 = ptrtoint ptr %1 to i64
  br label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h56945e33aca7989bE.exit"

bb14.i:                                           ; preds = %bb3.i3.i, %start
  %_16.sroa.4.0.ph.i = phi i64 [ 4, %bb3.i3.i ], [ 0, %start ]
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_16.sroa.4.0.ph.i, i64 %_21.0.i.i.i) #22
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %bb14.i
  unreachable

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h56945e33aca7989bE.exit": ; preds = %bb17.i.i, %bb10.i.i
  %_16.sroa.10.0.i = phi i64 [ %3, %bb10.i.i ], [ 4, %bb17.i.i ]
  %4 = inttoptr i64 %_16.sroa.10.0.i to ptr
  %_792 = icmp sgt i32 %n, 1
  br i1 %_792, label %bb2.lr.ph, label %bb9

bb2.lr.ph:                                        ; preds = %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h56945e33aca7989bE.exit"
  %5 = getelementptr inbounds nuw i8, ptr %s, i64 8
  %_44 = load ptr, ptr %5, align 8, !nonnull !23, !noundef !23
  %_51 = getelementptr inbounds nuw i8, ptr %_44, i64 %_3
  %6 = getelementptr inbounds nuw i8, ptr %_12, i64 8
  %7 = getelementptr inbounds nuw i8, ptr %_18, i64 8
  br label %bb2

bb16:                                             ; preds = %bb2.i.i.i3.i28, %cleanup1, %cleanup
  %.pn = phi { ptr, i32 } [ %9, %cleanup ], [ %10, %cleanup1 ], [ %10, %bb2.i.i.i3.i28 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1045)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1048)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1051)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1054)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1057)
  %self1.i.i.i.i1.i.i = load i64, ptr %s, align 8, !range !1060, !alias.scope !1061, !noalias !1064, !noundef !23
  %_6.i.i.i.i2.i.i = icmp eq i64 %self1.i.i.i.i1.i.i, 0
  br i1 %_6.i.i.i.i2.i.i, label %bb17, label %bb2.i.i.i3.i.i

bb2.i.i.i3.i.i:                                   ; preds = %bb16
  %8 = getelementptr inbounds nuw i8, ptr %s, i64 8
  %self3.i.i.i.i4.i.i = load ptr, ptr %8, align 8, !alias.scope !1061, !noalias !1064, !nonnull !23, !noundef !23
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i, i64 noundef %self1.i.i.i.i1.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !1066
  br label %bb17

cleanup:                                          ; preds = %bb14.i
  %9 = landingpad { ptr, i32 }
          cleanup
  br label %bb16

bb9:                                              ; preds = %bb8, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h56945e33aca7989bE.exit"
  %sext20 = add i64 %sext, -4294967296
  %_37 = ashr exact i64 %sext20, 32
  %_109 = icmp ult i64 %_37, %_5
  br i1 %_109, label %bb13, label %panic4.invoke

bb2:                                              ; preds = %bb2.lr.ph, %bb8
  %i.sroa.0.094 = phi i32 [ 1, %bb2.lr.ph ], [ %i.sroa.0.1, %bb8 ]
  %len.sroa.0.093 = phi i32 [ 0, %bb2.lr.ph ], [ %len.sroa.0.1, %bb8 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_12)
  store ptr %_44, ptr %_12, align 8
  store ptr %_51, ptr %6, align 8
  %_14 = sext i32 %i.sroa.0.094 to i64
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_55 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_12, i64 noundef %_14)
  %.not = icmp eq i64 %_55, 0
  br i1 %.not, label %bb23, label %bb21

cleanup1:                                         ; preds = %panic4.invoke
  %10 = landingpad { ptr, i32 }
          cleanup
  br i1 %_8.i.i, label %bb16, label %bb2.i.i.i3.i28

bb2.i.i.i3.i28:                                   ; preds = %cleanup1
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %4, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #21, !noalias !1067
  br label %bb16

bb13:                                             ; preds = %bb9
  %_36 = getelementptr inbounds nuw i32, ptr %4, i64 %_37
  %res = load i32, ptr %_36, align 4, !noundef !23
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %4, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #21, !noalias !1076
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1085)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1088)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1091)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1094)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1097)
  %self1.i.i.i.i1.i.i31 = load i64, ptr %s, align 8, !range !1060, !alias.scope !1100, !noalias !1103, !noundef !23
  %_6.i.i.i.i2.i.i32 = icmp eq i64 %self1.i.i.i.i1.i.i31, 0
  br i1 %_6.i.i.i.i2.i.i32, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h04bbe786de44b4f6E.exit35", label %bb2.i.i.i3.i.i33

bb2.i.i.i3.i.i33:                                 ; preds = %bb13
  %11 = getelementptr inbounds nuw i8, ptr %s, i64 8
  %self3.i.i.i.i4.i.i34 = load ptr, ptr %11, align 8, !alias.scope !1100, !noalias !1103, !nonnull !23, !noundef !23
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i34, i64 noundef %self1.i.i.i.i1.i.i31, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !1105
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h04bbe786de44b4f6E.exit35"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h04bbe786de44b4f6E.exit35": ; preds = %bb13, %bb2.i.i.i3.i.i33
  %12 = sdiv i32 %n, 2
  %spec.store.select = tail call i32 @llvm.smin.i32(i32 %res, i32 %12)
  ret i32 %spec.store.select

bb23:                                             ; preds = %bb2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1106)
  %ptr.i.i = load ptr, ptr %_12, align 8, !alias.scope !1109, !nonnull !23, !noundef !23
  %end_or_len.i.i = load ptr, ptr %6, align 8, !alias.scope !1109, !nonnull !23, !noundef !23
  %_7.i.i.not = icmp eq ptr %ptr.i.i, %end_or_len.i.i
  br i1 %_7.i.i.not, label %bb21, label %bb14.i36

bb14.i36:                                         ; preds = %bb23
  %x.i = load i8, ptr %ptr.i.i, align 1, !noalias !1106, !noundef !23
  %_6.i = icmp sgt i8 %x.i, -1
  br i1 %_6.i, label %bb3.i, label %bb4.i

bb4.i:                                            ; preds = %bb14.i36
  %_18.i.i = getelementptr inbounds nuw i8, ptr %ptr.i.i, i64 1
  %_30.i = and i8 %x.i, 31
  %init.i = zext nneg i8 %_30.i to i32
  %_7.i10.i = icmp ne ptr %_18.i.i, %end_or_len.i.i
  tail call void @llvm.assume(i1 %_7.i10.i)
  %y.i = load i8, ptr %_18.i.i, align 1, !noalias !1106, !noundef !23
  %_34.i = shl nuw nsw i32 %init.i, 6
  %_36.i = and i8 %y.i, 63
  %_35.i = zext nneg i8 %_36.i to i32
  %13 = or disjoint i32 %_34.i, %_35.i
  %_13.i = icmp samesign ugt i8 %x.i, -33
  br i1 %_13.i, label %bb6.i, label %bb21

bb3.i:                                            ; preds = %bb14.i36
  %_7.i = zext nneg i8 %x.i to i32
  br label %bb21

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
  %14 = or disjoint i32 %y_z.i, %_20.i
  %_21.i = icmp samesign ugt i8 %x.i, -17
  br i1 %_21.i, label %bb8.i, label %bb21

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
  %15 = or disjoint i32 %_27.i, %_25.i
  br label %bb21

bb21:                                             ; preds = %bb23, %bb4.i, %bb3.i, %bb6.i, %bb8.i, %bb2
  %_10.sroa.0.1 = phi i32 [ 1114112, %bb2 ], [ %_7.i, %bb3.i ], [ %15, %bb8.i ], [ %14, %bb6.i ], [ %13, %bb4.i ], [ 1114112, %bb23 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_18)
  store ptr %_44, ptr %_18, align 8
  store ptr %_51, ptr %7, align 8
  %_20 = sext i32 %len.sroa.0.093 to i64
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_76 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_18, i64 noundef %_20)
  %.not21 = icmp eq i64 %_76, 0
  br i1 %.not21, label %bb31, label %bb29.thread

bb31:                                             ; preds = %bb21
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1112)
  %ptr.i.i37 = load ptr, ptr %_18, align 8, !alias.scope !1115, !nonnull !23, !noundef !23
  %end_or_len.i.i38 = load ptr, ptr %7, align 8, !alias.scope !1115, !nonnull !23, !noundef !23
  %_7.i.i39.not = icmp eq ptr %ptr.i.i37, %end_or_len.i.i38
  br i1 %_7.i.i39.not, label %bb29.thread98, label %bb14.i40

bb14.i40:                                         ; preds = %bb31
  %x.i42 = load i8, ptr %ptr.i.i37, align 1, !noalias !1112, !noundef !23
  %_6.i43 = icmp sgt i8 %x.i42, -1
  br i1 %_6.i43, label %bb3.i76, label %bb4.i44

bb4.i44:                                          ; preds = %bb14.i40
  %_18.i.i41 = getelementptr inbounds nuw i8, ptr %ptr.i.i37, i64 1
  %_30.i45 = and i8 %x.i42, 31
  %init.i46 = zext nneg i8 %_30.i45 to i32
  %_7.i10.i47 = icmp ne ptr %_18.i.i41, %end_or_len.i.i38
  tail call void @llvm.assume(i1 %_7.i10.i47)
  %y.i49 = load i8, ptr %_18.i.i41, align 1, !noalias !1112, !noundef !23
  %_34.i50 = shl nuw nsw i32 %init.i46, 6
  %_36.i51 = and i8 %y.i49, 63
  %_35.i52 = zext nneg i8 %_36.i51 to i32
  %16 = or disjoint i32 %_34.i50, %_35.i52
  %_13.i53 = icmp samesign ugt i8 %x.i42, -33
  br i1 %_13.i53, label %bb6.i56, label %bb29

bb3.i76:                                          ; preds = %bb14.i40
  %_7.i77 = zext nneg i8 %x.i42 to i32
  br label %bb29

bb6.i56:                                          ; preds = %bb4.i44
  %_18.i12.i48 = getelementptr inbounds nuw i8, ptr %ptr.i.i37, i64 2
  %_7.i17.i57 = icmp ne ptr %_18.i12.i48, %end_or_len.i.i38
  tail call void @llvm.assume(i1 %_7.i17.i57)
  %z.i59 = load i8, ptr %_18.i12.i48, align 1, !noalias !1112, !noundef !23
  %_40.i60 = shl nuw nsw i32 %_35.i52, 6
  %_42.i61 = and i8 %z.i59, 63
  %_41.i62 = zext nneg i8 %_42.i61 to i32
  %y_z.i63 = or disjoint i32 %_40.i60, %_41.i62
  %_20.i64 = shl nuw nsw i32 %init.i46, 12
  %17 = or disjoint i32 %y_z.i63, %_20.i64
  %_21.i65 = icmp samesign ugt i8 %x.i42, -17
  br i1 %_21.i65, label %bb8.i66, label %bb29

bb8.i66:                                          ; preds = %bb6.i56
  %_18.i19.i58 = getelementptr inbounds nuw i8, ptr %ptr.i.i37, i64 3
  %_7.i24.i67 = icmp ne ptr %_18.i19.i58, %end_or_len.i.i38
  tail call void @llvm.assume(i1 %_7.i24.i67)
  %w.i69 = load i8, ptr %_18.i19.i58, align 1, !noalias !1112, !noundef !23
  %_26.i70 = shl nuw nsw i32 %init.i46, 18
  %_25.i71 = and i32 %_26.i70, 1835008
  %_46.i72 = shl nuw nsw i32 %y_z.i63, 6
  %_48.i73 = and i8 %w.i69, 63
  %_47.i74 = zext nneg i8 %_48.i73 to i32
  %_27.i75 = or disjoint i32 %_46.i72, %_47.i74
  %18 = or disjoint i32 %_27.i75, %_25.i71
  br label %bb29

bb29:                                             ; preds = %bb4.i44, %bb3.i76, %bb6.i56, %bb8.i66
  %spec.select25 = phi i32 [ %_7.i77, %bb3.i76 ], [ %18, %bb8.i66 ], [ %17, %bb6.i56 ], [ %16, %bb4.i44 ]
  %.not22 = icmp eq i32 %_10.sroa.0.1, 1114112
  br i1 %.not22, label %bb36, label %bb37

bb29.thread98:                                    ; preds = %bb31
  %.not22100 = icmp eq i32 %_10.sroa.0.1, 1114112
  br i1 %.not22100, label %bb3, label %bb4

bb29.thread:                                      ; preds = %bb21
  %.not2284 = icmp eq i32 %_10.sroa.0.1, 1114112
  br i1 %.not2284, label %bb3, label %bb4

bb37:                                             ; preds = %bb29
  %.not23 = icmp ne i32 %spec.select25, 1114112
  %19 = icmp eq i32 %_10.sroa.0.1, %spec.select25
  %or.cond = select i1 %.not23, i1 %19, i1 false
  br i1 %or.cond, label %bb3, label %bb4

bb36:                                             ; preds = %bb29
  %20 = icmp eq i32 %spec.select25, 1114112
  br i1 %20, label %bb3, label %bb4

bb4:                                              ; preds = %bb29.thread98, %bb29.thread, %bb37, %bb36
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_18)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_12)
  %_26.not = icmp eq i32 %len.sroa.0.093, 0
  br i1 %_26.not, label %bb6, label %bb5

bb3:                                              ; preds = %bb29.thread98, %bb37, %bb29.thread, %bb36
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_18)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_12)
  %_93 = icmp ugt i64 %_5, %_14
  br i1 %_93, label %bb41, label %panic4.invoke

bb6:                                              ; preds = %bb4
  %_104 = icmp ugt i64 %_5, %_14
  br i1 %_104, label %bb43, label %panic4.invoke

bb5:                                              ; preds = %bb4
  %_31 = add i32 %len.sroa.0.093, -1
  %_30 = sext i32 %_31 to i64
  %_98 = icmp ugt i64 %_5, %_30
  br i1 %_98, label %bb42, label %panic4.invoke

bb43:                                             ; preds = %bb6
  %_32 = getelementptr inbounds nuw i32, ptr %4, i64 %_14
  store i32 0, ptr %_32, align 4
  %21 = add nsw i32 %i.sroa.0.094, 1
  br label %bb8

bb42:                                             ; preds = %bb5
  %_29 = getelementptr inbounds nuw i32, ptr %4, i64 %_30
  %22 = load i32, ptr %_29, align 4, !noundef !23
  br label %bb8

bb8:                                              ; preds = %bb43, %bb42, %bb41
  %len.sroa.0.1 = phi i32 [ %23, %bb41 ], [ %22, %bb42 ], [ 0, %bb43 ]
  %i.sroa.0.1 = phi i32 [ %24, %bb41 ], [ %i.sroa.0.094, %bb42 ], [ %21, %bb43 ]
  %_7 = icmp slt i32 %i.sroa.0.1, %n
  br i1 %_7, label %bb2, label %bb9

bb41:                                             ; preds = %bb3
  %23 = add i32 %len.sroa.0.093, 1
  %_23 = getelementptr inbounds nuw i32, ptr %4, i64 %_14
  store i32 %23, ptr %_23, align 4
  %24 = add nsw i32 %i.sroa.0.094, 1
  br label %bb8

panic4.invoke:                                    ; preds = %bb3, %bb5, %bb6, %bb9
  %25 = phi i64 [ %_37, %bb9 ], [ %_14, %bb6 ], [ %_30, %bb5 ], [ %_14, %bb3 ]
  %26 = phi ptr [ @alloc_fd2faa64d19adc0e884b8094fad42c07, %bb9 ], [ @alloc_ed5c9eb177a539d661a7c5b60c424303, %bb6 ], [ @alloc_72ab731c9e7f3bca5a87868e9a8591c3, %bb5 ], [ @alloc_b0665e2c652c126cce50a4f75b1f7667, %bb3 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %25, i64 noundef %_5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %26) #22
          to label %panic4.cont unwind label %cleanup1

panic4.cont:                                      ; preds = %panic4.invoke
  unreachable

bb17:                                             ; preds = %bb2.i.i.i3.i.i, %bb16
  resume { ptr, i32 } %.pn
}
