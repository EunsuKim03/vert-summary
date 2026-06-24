define noundef range(i32 -2147483648, 1073741824) i32 @f_gold(ptr dead_on_return noalias noundef readonly align 8 captures(none) dereferenceable(24) %s) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_20 = alloca [16 x i8], align 8
  %_14 = alloca [16 x i8], align 8
  %0 = getelementptr inbounds nuw i8, ptr %s, i64 8
  %_45 = load ptr, ptr %0, align 8, !nonnull !23, !noundef !23
  %1 = getelementptr inbounds nuw i8, ptr %s, i64 16
  %_44 = load i64, ptr %1, align 8, !noundef !23
  %_52 = getelementptr inbounds nuw i8, ptr %_45, i64 %_44
  %_16.i = icmp ult i64 %_44, 32
  br i1 %_16.i, label %bb5.i, label %bb6.i

bb6.i:                                            ; preds = %start
; invoke core::str::count::do_count_chars
  %2 = invoke noundef i64 @_ZN4core3str5count14do_count_chars17ha47530791183fc08E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %_45, i64 noundef %_44)
          to label %bb1 unwind label %cleanup

bb5.i:                                            ; preds = %start
; invoke core::str::count::char_count_general_case
  %3 = invoke noundef i64 @_ZN4core3str5count23char_count_general_case17h450ebd30c3e2f550E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %_45, i64 noundef %_44)
          to label %bb1 unwind label %cleanup

bb17:                                             ; preds = %bb2.i.i.i3.i31, %cleanup1, %cleanup
  %.pn = phi { ptr, i32 } [ %4, %cleanup ], [ %11, %cleanup1 ], [ %11, %bb2.i.i.i3.i31 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1040)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1043)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1046)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1049)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1052)
  %self1.i.i.i.i1.i.i = load i64, ptr %s, align 8, !range !1055, !alias.scope !1056, !noalias !1059, !noundef !23
  %_6.i.i.i.i2.i.i = icmp eq i64 %self1.i.i.i.i1.i.i, 0
  br i1 %_6.i.i.i.i2.i.i, label %bb18, label %bb2.i.i.i3.i.i

bb2.i.i.i3.i.i:                                   ; preds = %bb17
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_45, i64 noundef %self1.i.i.i.i1.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !1061
  br label %bb18

cleanup:                                          ; preds = %bb14.i, %bb5.i, %bb6.i
  %4 = landingpad { ptr, i32 }
          cleanup
  br label %bb17

bb1:                                              ; preds = %bb6.i, %bb5.i
  %_0.sroa.0.0.i = phi i64 [ %2, %bb6.i ], [ %3, %bb5.i ]
  %n = trunc i64 %_0.sroa.0.0.i to i32
  %sext = shl i64 %_0.sroa.0.0.i, 32
  %_7 = ashr exact i64 %sext, 32
  %_21.0.i.i.i = ashr exact i64 %sext, 30
  %_21.1.i.i.i = icmp ugt i64 %_7, 4611686018427387903
  %_26.i.i.i = icmp ugt i64 %_21.0.i.i.i, 9223372036854775804
  %or.cond.i.i.i = or i1 %_21.1.i.i.i, %_26.i.i.i
  br i1 %or.cond.i.i.i, label %bb14.i, label %bb17.i.i, !prof !339

bb17.i.i:                                         ; preds = %bb1
  %_8.i.i = icmp eq i64 %sext, 0
  br i1 %_8.i.i, label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h56945e33aca7989bE.exit", label %bb3.i3.i

bb3.i3.i:                                         ; preds = %bb17.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !1062
; call __rustc::__rust_alloc_zeroed
  %5 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #21, !noalias !1062
  %6 = icmp eq ptr %5, null
  br i1 %6, label %bb14.i, label %bb10.i.i

bb10.i.i:                                         ; preds = %bb3.i3.i
  %7 = ptrtoint ptr %5 to i64
  br label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h56945e33aca7989bE.exit"

bb14.i:                                           ; preds = %bb3.i3.i, %bb1
  %_16.sroa.4.0.ph.i = phi i64 [ 4, %bb3.i3.i ], [ 0, %bb1 ]
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_16.sroa.4.0.ph.i, i64 %_21.0.i.i.i) #22
          to label %.noexc28 unwind label %cleanup

.noexc28:                                         ; preds = %bb14.i
  unreachable

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h56945e33aca7989bE.exit": ; preds = %bb17.i.i, %bb10.i.i
  %_16.sroa.10.0.i = phi i64 [ %7, %bb10.i.i ], [ 4, %bb17.i.i ]
  %8 = inttoptr i64 %_16.sroa.10.0.i to ptr
  %_997 = icmp sgt i32 %n, 1
  br i1 %_997, label %bb3.lr.ph, label %bb10

bb3.lr.ph:                                        ; preds = %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h56945e33aca7989bE.exit"
  %9 = getelementptr inbounds nuw i8, ptr %_14, i64 8
  %10 = getelementptr inbounds nuw i8, ptr %_20, i64 8
  br label %bb3

bb10:                                             ; preds = %bb9, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h56945e33aca7989bE.exit"
  %sext20 = add i64 %sext, -4294967296
  %_39 = ashr exact i64 %sext20, 32
  %_124 = icmp ult i64 %_39, %_7
  br i1 %_124, label %bb14, label %panic4.invoke

bb3:                                              ; preds = %bb3.lr.ph, %bb9
  %i.sroa.0.099 = phi i32 [ 1, %bb3.lr.ph ], [ %i.sroa.0.1, %bb9 ]
  %len.sroa.0.098 = phi i32 [ 0, %bb3.lr.ph ], [ %len.sroa.0.1, %bb9 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_14)
  store ptr %_45, ptr %_14, align 8
  store ptr %_52, ptr %9, align 8
  %_16 = sext i32 %i.sroa.0.099 to i64
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_70 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_14, i64 noundef %_16)
  %.not = icmp eq i64 %_70, 0
  br i1 %.not, label %bb24, label %bb22

cleanup1:                                         ; preds = %panic4.invoke
  %11 = landingpad { ptr, i32 }
          cleanup
  br i1 %_8.i.i, label %bb17, label %bb2.i.i.i3.i31

bb2.i.i.i3.i31:                                   ; preds = %cleanup1
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %8, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #21, !noalias !1067
  br label %bb17

bb14:                                             ; preds = %bb10
  %_38 = getelementptr inbounds nuw i32, ptr %8, i64 %_39
  %res = load i32, ptr %_38, align 4, !noundef !23
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %8, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #21, !noalias !1076
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1085)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1088)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1091)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1094)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1097)
  %self1.i.i.i.i1.i.i34 = load i64, ptr %s, align 8, !range !1055, !alias.scope !1100, !noalias !1103, !noundef !23
  %_6.i.i.i.i2.i.i35 = icmp eq i64 %self1.i.i.i.i1.i.i34, 0
  br i1 %_6.i.i.i.i2.i.i35, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h04bbe786de44b4f6E.exit38", label %bb2.i.i.i3.i.i36

bb2.i.i.i3.i.i36:                                 ; preds = %bb14
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_45, i64 noundef %self1.i.i.i.i1.i.i34, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !1105
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h04bbe786de44b4f6E.exit38"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h04bbe786de44b4f6E.exit38": ; preds = %bb14, %bb2.i.i.i3.i.i36
  %12 = sdiv i32 %n, 2
  %spec.store.select = tail call i32 @llvm.smin.i32(i32 %res, i32 %12)
  ret i32 %spec.store.select

bb24:                                             ; preds = %bb3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1106)
  %ptr.i.i = load ptr, ptr %_14, align 8, !alias.scope !1109, !nonnull !23, !noundef !23
  %end_or_len.i.i = load ptr, ptr %9, align 8, !alias.scope !1109, !nonnull !23, !noundef !23
  %_7.i.i.not = icmp eq ptr %ptr.i.i, %end_or_len.i.i
  br i1 %_7.i.i.not, label %bb22, label %bb14.i39

bb14.i39:                                         ; preds = %bb24
  %x.i = load i8, ptr %ptr.i.i, align 1, !noalias !1106, !noundef !23
  %_6.i = icmp sgt i8 %x.i, -1
  br i1 %_6.i, label %bb3.i, label %bb4.i

bb4.i:                                            ; preds = %bb14.i39
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
  br i1 %_13.i, label %bb6.i41, label %bb22

bb3.i:                                            ; preds = %bb14.i39
  %_7.i = zext nneg i8 %x.i to i32
  br label %bb22

bb6.i41:                                          ; preds = %bb4.i
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
  br i1 %_21.i, label %bb8.i, label %bb22

bb8.i:                                            ; preds = %bb6.i41
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
  br label %bb22

bb22:                                             ; preds = %bb24, %bb4.i, %bb3.i, %bb6.i41, %bb8.i, %bb3
  %_12.sroa.0.1 = phi i32 [ 1114112, %bb3 ], [ %_7.i, %bb3.i ], [ %15, %bb8.i ], [ %14, %bb6.i41 ], [ %13, %bb4.i ], [ 1114112, %bb24 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_20)
  store ptr %_45, ptr %_20, align 8
  store ptr %_52, ptr %10, align 8
  %_22 = sext i32 %len.sroa.0.098 to i64
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_91 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_20, i64 noundef %_22)
  %.not21 = icmp eq i64 %_91, 0
  br i1 %.not21, label %bb32, label %bb30.thread

bb32:                                             ; preds = %bb22
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1112)
  %ptr.i.i42 = load ptr, ptr %_20, align 8, !alias.scope !1115, !nonnull !23, !noundef !23
  %end_or_len.i.i43 = load ptr, ptr %10, align 8, !alias.scope !1115, !nonnull !23, !noundef !23
  %_7.i.i44.not = icmp eq ptr %ptr.i.i42, %end_or_len.i.i43
  br i1 %_7.i.i44.not, label %bb30.thread103, label %bb14.i45

bb14.i45:                                         ; preds = %bb32
  %x.i47 = load i8, ptr %ptr.i.i42, align 1, !noalias !1112, !noundef !23
  %_6.i48 = icmp sgt i8 %x.i47, -1
  br i1 %_6.i48, label %bb3.i81, label %bb4.i49

bb4.i49:                                          ; preds = %bb14.i45
  %_18.i.i46 = getelementptr inbounds nuw i8, ptr %ptr.i.i42, i64 1
  %_30.i50 = and i8 %x.i47, 31
  %init.i51 = zext nneg i8 %_30.i50 to i32
  %_7.i10.i52 = icmp ne ptr %_18.i.i46, %end_or_len.i.i43
  tail call void @llvm.assume(i1 %_7.i10.i52)
  %y.i54 = load i8, ptr %_18.i.i46, align 1, !noalias !1112, !noundef !23
  %_34.i55 = shl nuw nsw i32 %init.i51, 6
  %_36.i56 = and i8 %y.i54, 63
  %_35.i57 = zext nneg i8 %_36.i56 to i32
  %16 = or disjoint i32 %_34.i55, %_35.i57
  %_13.i58 = icmp samesign ugt i8 %x.i47, -33
  br i1 %_13.i58, label %bb6.i61, label %bb30

bb3.i81:                                          ; preds = %bb14.i45
  %_7.i82 = zext nneg i8 %x.i47 to i32
  br label %bb30

bb6.i61:                                          ; preds = %bb4.i49
  %_18.i12.i53 = getelementptr inbounds nuw i8, ptr %ptr.i.i42, i64 2
  %_7.i17.i62 = icmp ne ptr %_18.i12.i53, %end_or_len.i.i43
  tail call void @llvm.assume(i1 %_7.i17.i62)
  %z.i64 = load i8, ptr %_18.i12.i53, align 1, !noalias !1112, !noundef !23
  %_40.i65 = shl nuw nsw i32 %_35.i57, 6
  %_42.i66 = and i8 %z.i64, 63
  %_41.i67 = zext nneg i8 %_42.i66 to i32
  %y_z.i68 = or disjoint i32 %_40.i65, %_41.i67
  %_20.i69 = shl nuw nsw i32 %init.i51, 12
  %17 = or disjoint i32 %y_z.i68, %_20.i69
  %_21.i70 = icmp samesign ugt i8 %x.i47, -17
  br i1 %_21.i70, label %bb8.i71, label %bb30

bb8.i71:                                          ; preds = %bb6.i61
  %_18.i19.i63 = getelementptr inbounds nuw i8, ptr %ptr.i.i42, i64 3
  %_7.i24.i72 = icmp ne ptr %_18.i19.i63, %end_or_len.i.i43
  tail call void @llvm.assume(i1 %_7.i24.i72)
  %w.i74 = load i8, ptr %_18.i19.i63, align 1, !noalias !1112, !noundef !23
  %_26.i75 = shl nuw nsw i32 %init.i51, 18
  %_25.i76 = and i32 %_26.i75, 1835008
  %_46.i77 = shl nuw nsw i32 %y_z.i68, 6
  %_48.i78 = and i8 %w.i74, 63
  %_47.i79 = zext nneg i8 %_48.i78 to i32
  %_27.i80 = or disjoint i32 %_46.i77, %_47.i79
  %18 = or disjoint i32 %_27.i80, %_25.i76
  br label %bb30

bb30:                                             ; preds = %bb4.i49, %bb3.i81, %bb6.i61, %bb8.i71
  %spec.select25 = phi i32 [ %_7.i82, %bb3.i81 ], [ %18, %bb8.i71 ], [ %17, %bb6.i61 ], [ %16, %bb4.i49 ]
  %.not22 = icmp eq i32 %_12.sroa.0.1, 1114112
  br i1 %.not22, label %bb37, label %bb38

bb30.thread103:                                   ; preds = %bb32
  %.not22105 = icmp eq i32 %_12.sroa.0.1, 1114112
  br i1 %.not22105, label %bb4, label %bb5

bb30.thread:                                      ; preds = %bb22
  %.not2289 = icmp eq i32 %_12.sroa.0.1, 1114112
  br i1 %.not2289, label %bb4, label %bb5

bb38:                                             ; preds = %bb30
  %.not23 = icmp ne i32 %spec.select25, 1114112
  %19 = icmp eq i32 %_12.sroa.0.1, %spec.select25
  %or.cond = select i1 %.not23, i1 %19, i1 false
  br i1 %or.cond, label %bb4, label %bb5

bb37:                                             ; preds = %bb30
  %20 = icmp eq i32 %spec.select25, 1114112
  br i1 %20, label %bb4, label %bb5

bb5:                                              ; preds = %bb30.thread103, %bb30.thread, %bb38, %bb37
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_20)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_14)
  %_28.not = icmp eq i32 %len.sroa.0.098, 0
  br i1 %_28.not, label %bb7, label %bb6

bb4:                                              ; preds = %bb30.thread103, %bb38, %bb30.thread, %bb37
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_20)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_14)
  %_108 = icmp ugt i64 %_7, %_16
  br i1 %_108, label %bb42, label %panic4.invoke

bb7:                                              ; preds = %bb5
  %_119 = icmp ugt i64 %_7, %_16
  br i1 %_119, label %bb44, label %panic4.invoke

bb6:                                              ; preds = %bb5
  %_33 = add i32 %len.sroa.0.098, -1
  %_32 = sext i32 %_33 to i64
  %_113 = icmp ugt i64 %_7, %_32
  br i1 %_113, label %bb43, label %panic4.invoke

bb44:                                             ; preds = %bb7
  %_34 = getelementptr inbounds nuw i32, ptr %8, i64 %_16
  store i32 0, ptr %_34, align 4
  %21 = add nsw i32 %i.sroa.0.099, 1
  br label %bb9

bb43:                                             ; preds = %bb6
  %_31 = getelementptr inbounds nuw i32, ptr %8, i64 %_32
  %22 = load i32, ptr %_31, align 4, !noundef !23
  br label %bb9

bb9:                                              ; preds = %bb44, %bb43, %bb42
  %len.sroa.0.1 = phi i32 [ %23, %bb42 ], [ %22, %bb43 ], [ 0, %bb44 ]
  %i.sroa.0.1 = phi i32 [ %24, %bb42 ], [ %i.sroa.0.099, %bb43 ], [ %21, %bb44 ]
  %_9 = icmp slt i32 %i.sroa.0.1, %n
  br i1 %_9, label %bb3, label %bb10

bb42:                                             ; preds = %bb4
  %23 = add i32 %len.sroa.0.098, 1
  %_25 = getelementptr inbounds nuw i32, ptr %8, i64 %_16
  store i32 %23, ptr %_25, align 4
  %24 = add nsw i32 %i.sroa.0.099, 1
  br label %bb9

panic4.invoke:                                    ; preds = %bb4, %bb6, %bb7, %bb10
  %25 = phi i64 [ %_39, %bb10 ], [ %_16, %bb7 ], [ %_32, %bb6 ], [ %_16, %bb4 ]
  %26 = phi ptr [ @alloc_c0d73be9ff781baefb2ac78c1a1f8d54, %bb10 ], [ @alloc_1fa378cb2577a50d99a25942c8b308ad, %bb7 ], [ @alloc_15f87202fcb13c9640047ed6616b0f07, %bb6 ], [ @alloc_a9c1e9623626a70b25051ffee6ac9148, %bb4 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %25, i64 noundef %_7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %26) #22
          to label %panic4.cont unwind label %cleanup1

panic4.cont:                                      ; preds = %panic4.invoke
  unreachable

bb18:                                             ; preds = %bb2.i.i.i3.i.i, %bb17
  resume { ptr, i32 } %.pn
}
