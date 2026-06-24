define noundef range(i32 0, -2147483648) i32 @f_gold(ptr dead_on_return noalias noundef readonly align 8 captures(none) dereferenceable(24) %str) unnamed_addr #1 personality ptr @rust_eh_personality {
bb24:
  %arr = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %arr)
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22
; call __rustc::__rust_alloc
  %0 = tail call noundef align 4 dereferenceable_or_null(8) ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef 4) #22
  %1 = icmp eq ptr %0, null
  br i1 %1, label %bb22, label %bb25, !prof !909

bb20:                                             ; preds = %bb2.i.i.i3.i, %cleanup1, %cleanup
  %.pn = phi { ptr, i32 } [ %3, %cleanup ], [ %lpad.phi, %cleanup1 ], [ %lpad.phi, %bb2.i.i.i3.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1040)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1043)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1046)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1049)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1052)
  %self1.i.i.i.i1.i.i = load i64, ptr %str, align 8, !range !1031, !alias.scope !1055, !noalias !1058, !noundef !23
  %_6.i.i.i.i2.i.i = icmp eq i64 %self1.i.i.i.i1.i.i, 0
  br i1 %_6.i.i.i.i2.i.i, label %bb21, label %bb2.i.i.i3.i.i

bb2.i.i.i3.i.i:                                   ; preds = %bb20
  %2 = getelementptr inbounds nuw i8, ptr %str, i64 8
  %self3.i.i.i.i4.i.i = load ptr, ptr %2, align 8, !alias.scope !1055, !noalias !1058, !nonnull !23, !noundef !23
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i, i64 noundef %self1.i.i.i.i1.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !1060
  br label %bb21

cleanup:                                          ; preds = %bb22
  %3 = landingpad { ptr, i32 }
          cleanup
  br label %bb20

bb22:                                             ; preds = %bb24
; invoke alloc::alloc::handle_alloc_error
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h96ccf7ea5a15db6bE(i64 noundef 4, i64 noundef 8) #23
          to label %unreachable unwind label %cleanup

bb25:                                             ; preds = %bb24
  store i32 64, ptr %0, align 4
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 -1, ptr %4, align 4
  store i64 1, ptr %arr, align 8, !alias.scope !1061
  %5 = getelementptr inbounds nuw i8, ptr %arr, i64 8
  store ptr %0, ptr %5, align 8, !alias.scope !1061
  %6 = getelementptr inbounds nuw i8, ptr %arr, i64 16
  store i64 1, ptr %6, align 8, !alias.scope !1061
  %7 = getelementptr inbounds nuw i8, ptr %str, i64 8
  %_55 = load ptr, ptr %7, align 8, !nonnull !23, !noundef !23
  %8 = getelementptr inbounds nuw i8, ptr %str, i64 16
  %_54 = load i64, ptr %8, align 8, !noundef !23
  %_62 = getelementptr inbounds nuw i8, ptr %_55, i64 %_54
  %_7.i.i.not.i.i50 = icmp samesign eq i64 %_54, 0
  br i1 %_7.i.i.not.i.i50, label %bb2.i.i.i3.i13, label %bb14.i.i.i

bb14.i.i.i:                                       ; preds = %bb25, %bb39
  %_15.i59 = phi ptr [ %_15.i, %bb39 ], [ %0, %bb25 ]
  %len.i = phi i64 [ %len.i58, %bb39 ], [ 1, %bb25 ]
  %maxlen.sroa.0.053 = phi i32 [ %_0.sroa.0.0.i21, %bb39 ], [ 0, %bb25 ]
  %iter.sroa.0.052 = phi ptr [ %iter.sroa.0.133, %bb39 ], [ %_55, %bb25 ]
  %iter.sroa.10.051 = phi i32 [ %_8.0.i35, %bb39 ], [ 0, %bb25 ]
  %_18.i.i.i.i = getelementptr inbounds nuw i8, ptr %iter.sroa.0.052, i64 1
  %x.i.i.i = load i8, ptr %iter.sroa.0.052, align 1, !noalias !1064, !noundef !23
  %_6.i.i.i = icmp sgt i8 %x.i.i.i, -1
  br i1 %_6.i.i.i, label %bb3.i.i.i, label %bb4.i.i.i

bb4.i.i.i:                                        ; preds = %bb14.i.i.i
  %_30.i.i.i = and i8 %x.i.i.i, 31
  %init.i.i.i = zext nneg i8 %_30.i.i.i to i32
  %_7.i10.i.i.i = icmp ne ptr %_18.i.i.i.i, %_62
  tail call void @llvm.assume(i1 %_7.i10.i.i.i)
  %_18.i12.i.i.i = getelementptr inbounds nuw i8, ptr %iter.sroa.0.052, i64 2
  %y.i.i.i = load i8, ptr %_18.i.i.i.i, align 1, !noalias !1064, !noundef !23
  %_34.i.i.i = shl nuw nsw i32 %init.i.i.i, 6
  %_36.i.i.i = and i8 %y.i.i.i, 63
  %_35.i.i.i = zext nneg i8 %_36.i.i.i to i32
  %9 = or disjoint i32 %_34.i.i.i, %_35.i.i.i
  %_13.i.i.i = icmp samesign ugt i8 %x.i.i.i, -33
  br i1 %_13.i.i.i, label %bb6.i.i.i, label %bb4

bb3.i.i.i:                                        ; preds = %bb14.i.i.i
  %_7.i.i.i = zext nneg i8 %x.i.i.i to i32
  br label %bb4

bb6.i.i.i:                                        ; preds = %bb4.i.i.i
  %_7.i17.i.i.i = icmp ne ptr %_18.i12.i.i.i, %_62
  tail call void @llvm.assume(i1 %_7.i17.i.i.i)
  %_18.i19.i.i.i = getelementptr inbounds nuw i8, ptr %iter.sroa.0.052, i64 3
  %z.i.i.i = load i8, ptr %_18.i12.i.i.i, align 1, !noalias !1064, !noundef !23
  %_40.i.i.i = shl nuw nsw i32 %_35.i.i.i, 6
  %_42.i.i.i = and i8 %z.i.i.i, 63
  %_41.i.i.i = zext nneg i8 %_42.i.i.i to i32
  %y_z.i.i.i = or disjoint i32 %_40.i.i.i, %_41.i.i.i
  %_20.i.i.i = shl nuw nsw i32 %init.i.i.i, 12
  %10 = or disjoint i32 %y_z.i.i.i, %_20.i.i.i
  %_21.i.i.i = icmp samesign ugt i8 %x.i.i.i, -17
  br i1 %_21.i.i.i, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb982107525a3c91E.exit.i", label %bb4

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb982107525a3c91E.exit.i": ; preds = %bb6.i.i.i
  %_7.i24.i.i.i = icmp ne ptr %_18.i19.i.i.i, %_62
  tail call void @llvm.assume(i1 %_7.i24.i.i.i)
  %w.i.i.i = load i8, ptr %_18.i19.i.i.i, align 1, !noalias !1064, !noundef !23
  %_26.i.i.i = shl nuw nsw i32 %init.i.i.i, 18
  %_25.i.i.i = and i32 %_26.i.i.i, 1835008
  %_46.i.i.i = shl nuw nsw i32 %y_z.i.i.i, 6
  %_48.i.i.i = and i8 %w.i.i.i, 63
  %_47.i.i.i = zext nneg i8 %_48.i.i.i to i32
  %_27.i.i.i = or disjoint i32 %_46.i.i.i, %_47.i.i.i
  %11 = or disjoint i32 %_27.i.i.i, %_25.i.i.i
  %.not.i = icmp eq i32 %11, 1114112
  br i1 %.not.i, label %bb5, label %bb2

cleanup1.loopexit:                                ; preds = %bb1.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %cleanup1

cleanup1.loopexit.split-lp:                       ; preds = %panic4
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %cleanup1

cleanup1:                                         ; preds = %cleanup1.loopexit.split-lp, %cleanup1.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %cleanup1.loopexit ], [ %lpad.loopexit.split-lp, %cleanup1.loopexit.split-lp ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1071)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1074)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1077)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1080)
  %self1.i.i.i.i1.i = load i64, ptr %arr, align 8, !range !1031, !alias.scope !1083, !noalias !1086, !noundef !23
  %_6.i.i.i.i2.i = icmp eq i64 %self1.i.i.i.i1.i, 0
  br i1 %_6.i.i.i.i2.i, label %bb20, label %bb2.i.i.i3.i

bb2.i.i.i3.i:                                     ; preds = %cleanup1
  %12 = shl nuw i64 %self1.i.i.i.i1.i, 3
  %self3.i.i.i.i4.i = load ptr, ptr %5, align 8, !alias.scope !1083, !noalias !1086, !nonnull !23, !noundef !23
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i, i64 noundef %12, i64 noundef range(i64 1, -9223372036854775807) 4) #22, !noalias !1088
  br label %bb20

bb2:                                              ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb982107525a3c91E.exit.i"
  %_18.i26.i.i.i = getelementptr inbounds nuw i8, ptr %iter.sroa.0.052, i64 4
  br label %bb4

bb4:                                              ; preds = %bb3.i.i.i, %bb6.i.i.i, %bb4.i.i.i, %bb2
  %spec.select.i5.i34 = phi i32 [ %11, %bb2 ], [ %9, %bb4.i.i.i ], [ %10, %bb6.i.i.i ], [ %_7.i.i.i, %bb3.i.i.i ]
  %iter.sroa.0.133 = phi ptr [ %_18.i26.i.i.i, %bb2 ], [ %_18.i12.i.i.i, %bb4.i.i.i ], [ %_18.i19.i.i.i, %bb6.i.i.i ], [ %_18.i.i.i.i, %bb3.i.i.i ]
  %_8.0.i35 = add i32 %iter.sroa.10.051, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1089)
  %self1.i = load i64, ptr %arr, align 8, !range !1031, !alias.scope !1089, !noundef !23
  %_4.i = icmp eq i64 %len.i, %self1.i
  br i1 %_4.i, label %bb1.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h4f6947d73f981191E.exit"

bb1.i:                                            ; preds = %bb4
; invoke alloc::raw_vec::RawVec<T,A>::grow_one
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h632c3dc5461a50cfE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %arr)
          to label %"bb1.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h4f6947d73f981191E.exit_crit_edge" unwind label %cleanup1.loopexit

"bb1.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h4f6947d73f981191E.exit_crit_edge": ; preds = %bb1.i
  %_15.i.pre = load ptr, ptr %5, align 8, !alias.scope !1089
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h4f6947d73f981191E.exit"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h4f6947d73f981191E.exit": ; preds = %"bb1.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h4f6947d73f981191E.exit_crit_edge", %bb4
  %_15.i = phi ptr [ %_15.i.pre, %"bb1.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h4f6947d73f981191E.exit_crit_edge" ], [ %_15.i59, %bb4 ]
  %end.i = getelementptr inbounds nuw { i32, i32 }, ptr %_15.i, i64 %len.i
  store i32 %spec.select.i5.i34, ptr %end.i, align 4, !noalias !1089
  %13 = getelementptr inbounds nuw i8, ptr %end.i, i64 4
  store i32 %iter.sroa.10.051, ptr %13, align 4, !noalias !1089
  %14 = add nsw i64 %len.i, 1
  store i64 %14, ptr %6, align 8, !alias.scope !1089
  %_1746 = icmp samesign ugt i64 %14, 2
  br i1 %_1746, label %bb7.lr.ph, label %bb15

bb7.lr.ph:                                        ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h4f6947d73f981191E.exit"
  %_92 = load i64, ptr %arr, align 8, !range !1031
  br label %bb7

bb5:                                              ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb982107525a3c91E.exit.i", %bb39
  %maxlen.sroa.0.0.lcssa.ph = phi i32 [ %maxlen.sroa.0.053, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb982107525a3c91E.exit.i" ], [ %_0.sroa.0.0.i21, %bb39 ]
  %self1.i.i.i.i1.i11.pre = load i64, ptr %arr, align 8, !range !1031, !alias.scope !1092, !noalias !1103
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1105)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1106)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1107)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1108)
  %_6.i.i.i.i2.i12 = icmp eq i64 %self1.i.i.i.i1.i11.pre, 0
  br i1 %_6.i.i.i.i2.i12, label %bb17, label %bb2.i.i.i3.i13

bb2.i.i.i3.i13:                                   ; preds = %bb25, %bb5
  %maxlen.sroa.0.0.lcssa66 = phi i32 [ %maxlen.sroa.0.0.lcssa.ph, %bb5 ], [ 0, %bb25 ]
  %self1.i.i.i.i1.i1165 = phi i64 [ %self1.i.i.i.i1.i11.pre, %bb5 ], [ 1, %bb25 ]
  %15 = shl nuw i64 %self1.i.i.i.i1.i1165, 3
  %self3.i.i.i.i4.i14 = load ptr, ptr %5, align 8, !alias.scope !1092, !noalias !1103, !nonnull !23, !noundef !23
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i14, i64 noundef %15, i64 noundef range(i64 1, -9223372036854775807) 4) #22, !noalias !1109
  br label %bb17

bb17:                                             ; preds = %bb2.i.i.i3.i13, %bb5
  %maxlen.sroa.0.0.lcssa67 = phi i32 [ %maxlen.sroa.0.0.lcssa66, %bb2.i.i.i3.i13 ], [ %maxlen.sroa.0.0.lcssa.ph, %bb5 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %arr)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1110)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1113)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1116)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1119)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1122)
  %self1.i.i.i.i1.i.i16 = load i64, ptr %str, align 8, !range !1031, !alias.scope !1125, !noalias !1128, !noundef !23
  %_6.i.i.i.i2.i.i17 = icmp eq i64 %self1.i.i.i.i1.i.i16, 0
  br i1 %_6.i.i.i.i2.i.i17, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h80f950efdc1475fcE.exit20", label %bb2.i.i.i3.i.i18

bb2.i.i.i3.i.i18:                                 ; preds = %bb17
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_55, i64 noundef %self1.i.i.i.i1.i.i16, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !1130
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h80f950efdc1475fcE.exit20"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h80f950efdc1475fcE.exit20": ; preds = %bb17, %bb2.i.i.i3.i.i18
  ret i32 %maxlen.sroa.0.0.lcssa67

bb7:                                              ; preds = %bb7.lr.ph, %bb35
  %_18.pr4347 = phi i64 [ %14, %bb7.lr.ph ], [ %19, %bb35 ]
  %16 = getelementptr { i32, i32 }, ptr %_15.i, i64 %_18.pr4347
  %_21 = getelementptr i8, ptr %16, i64 -24
  %_20 = load i32, ptr %_21, align 4, !range !1131, !noundef !23
  %_19 = icmp eq i32 %_20, 49
  br i1 %_19, label %bb28, label %bb15.thread

bb15.thread:                                      ; preds = %bb9, %bb28, %bb7
  store i64 %_18.pr4347, ptr %6, align 8
  %_3636 = add nsw i64 %_18.pr4347, -1
  br label %bb39

bb15:                                             ; preds = %bb35, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h4f6947d73f981191E.exit"
  %_18.lcssa = phi i64 [ %14, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h4f6947d73f981191E.exit" ], [ %spec.select, %bb35 ]
  store i64 %_18.lcssa, ptr %6, align 8
  %_36 = add nsw i64 %_18.lcssa, -1
  %_115.not = icmp eq i64 %_18.lcssa, 0
  br i1 %_115.not, label %panic4, label %bb39

unreachable:                                      ; preds = %bb22, %panic4
  unreachable

bb28:                                             ; preds = %bb7
  %_26 = getelementptr i8, ptr %16, i64 -16
  %_25 = load i32, ptr %_26, align 4, !range !1131, !noundef !23
  %_24 = icmp eq i32 %_25, 48
  br i1 %_24, label %bb9, label %bb15.thread

bb9:                                              ; preds = %bb28
  %_32 = add nsw i64 %_18.pr4347, -1
  %_31 = getelementptr inbounds nuw { i32, i32 }, ptr %_15.i, i64 %_32
  %_30 = load i32, ptr %_31, align 4, !range !1131, !noundef !23
  %_29 = icmp eq i32 %_30, 48
  br i1 %_29, label %bb35, label %bb15.thread

bb39:                                             ; preds = %bb15.thread, %bb15
  %len.i58 = phi i64 [ %_18.pr4347, %bb15.thread ], [ %_18.lcssa, %bb15 ]
  %_3638 = phi i64 [ %_3636, %bb15.thread ], [ %_36, %bb15 ]
  %17 = getelementptr inbounds nuw { i32, i32 }, ptr %_15.i, i64 %_3638, i32 1
  %tmp = load i32, ptr %17, align 4, !noundef !23
  %_39 = sub i32 %iter.sroa.10.051, %tmp
  %_0.sroa.0.0.i21 = tail call noundef i32 @llvm.smax.i32(i32 %_39, i32 %maxlen.sroa.0.053)
  %_7.i.i.not.i.i = icmp eq ptr %iter.sroa.0.133, %_62
  br i1 %_7.i.i.not.i.i, label %bb5, label %bb14.i.i.i

panic4:                                           ; preds = %bb15
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_36, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_c001a48b7e8237c1114f22bb771f556d) #23
          to label %unreachable unwind label %cleanup1.loopexit.split-lp

bb35:                                             ; preds = %bb9
  %_88 = icmp samesign ult i64 %_32, %_92
  tail call void @llvm.assume(i1 %_88)
  %18 = add nsw i64 %_18.pr4347, -2
  %_96 = icmp samesign ult i64 %18, %_92
  tail call void @llvm.assume(i1 %_96)
  %_102 = icmp eq i64 %18, 0
  %19 = add nsw i64 %_18.pr4347, -3
  %spec.select = select i1 %_102, i64 0, i64 %19
  %_67 = icmp ult i64 %spec.select, 1152921504606846976
  tail call void @llvm.assume(i1 %_67)
  %_17 = icmp samesign ugt i64 %spec.select, 2
  br i1 %_17, label %bb7, label %bb15

bb21:                                             ; preds = %bb2.i.i.i3.i.i, %bb20
  resume { ptr, i32 } %.pn
}
