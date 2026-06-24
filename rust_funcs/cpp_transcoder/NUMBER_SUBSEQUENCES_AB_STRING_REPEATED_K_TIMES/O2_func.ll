define noundef i32 @f_gold(ptr dead_on_return noalias noundef readonly align 8 captures(none) dereferenceable(24) %s, i32 noundef %k) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_19 = alloca [16 x i8], align 8
  %_13 = alloca [16 x i8], align 8
  %0 = getelementptr inbounds nuw i8, ptr %s, i64 16
  %n = load i64, ptr %0, align 8, !noundef !23
  %_28 = icmp sgt i64 %n, -1
  tail call void @llvm.assume(i1 %_28)
  %_2970.not = icmp eq i64 %n, 0
  br i1 %_2970.not, label %bb13, label %bb12.lr.ph

bb12.lr.ph:                                       ; preds = %start
  %1 = getelementptr inbounds nuw i8, ptr %s, i64 8
  %_36 = load ptr, ptr %1, align 8, !nonnull !23, !noundef !23
  %_43 = getelementptr inbounds nuw i8, ptr %_36, i64 %n
  %2 = getelementptr inbounds nuw i8, ptr %_13, i64 8
  %3 = getelementptr inbounds nuw i8, ptr %_19, i64 8
  br label %bb12

bb13:                                             ; preds = %bb25, %start
  %c.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %c.sroa.0.1, %bb25 ]
  %c2.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %c2.sroa.0.1, %bb25 ]
  %c1.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %c1.sroa.0.1, %bb25 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1040)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1043)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1046)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1049)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1052)
  %self1.i.i.i.i1.i.i = load i64, ptr %s, align 8, !range !1055, !alias.scope !1056, !noalias !1059, !noundef !23
  %_6.i.i.i.i2.i.i = icmp eq i64 %self1.i.i.i.i1.i.i, 0
  br i1 %_6.i.i.i.i2.i.i, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h82b6547f9f508da8E.exit", label %bb2.i.i.i3.i.i

bb2.i.i.i3.i.i:                                   ; preds = %bb13
  %4 = getelementptr inbounds nuw i8, ptr %s, i64 8
  %self3.i.i.i.i4.i.i = load ptr, ptr %4, align 8, !alias.scope !1056, !noalias !1059, !nonnull !23, !noundef !23
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i, i64 noundef %self1.i.i.i.i1.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !1061
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h82b6547f9f508da8E.exit"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h82b6547f9f508da8E.exit": ; preds = %bb13, %bb2.i.i.i3.i.i
  %_22 = mul i32 %c.sroa.0.0.lcssa, %k
  %_27 = add i32 %k, -1
  %_26 = mul i32 %_27, %k
  %_25 = sdiv i32 %_26, 2
  %_24 = mul i32 %c2.sroa.0.0.lcssa, %_25
  %_23 = mul i32 %_24, %c1.sroa.0.0.lcssa
  %_0 = add i32 %_23, %_22
  ret i32 %_0

bb12:                                             ; preds = %bb12.lr.ph, %bb25
  %c1.sroa.0.074 = phi i32 [ 0, %bb12.lr.ph ], [ %c1.sroa.0.1, %bb25 ]
  %c2.sroa.0.073 = phi i32 [ 0, %bb12.lr.ph ], [ %c2.sroa.0.1, %bb25 ]
  %c.sroa.0.072 = phi i32 [ 0, %bb12.lr.ph ], [ %c.sroa.0.1, %bb25 ]
  %iter.sroa.0.071 = phi i64 [ 0, %bb12.lr.ph ], [ %5, %bb25 ]
  %5 = add nuw nsw i64 %iter.sroa.0.071, 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_13)
  store ptr %_36, ptr %_13, align 8
  store ptr %_43, ptr %2, align 8
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_47 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_13, i64 noundef %iter.sroa.0.071)
  %.not = icmp eq i64 %_47, 0
  br i1 %.not, label %bb16, label %bb26.invoke, !prof !1062

cleanup:                                          ; preds = %bb26.invoke
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1063)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1066)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1069)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1072)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1075)
  %self1.i.i.i.i1.i.i9 = load i64, ptr %s, align 8, !range !1055, !alias.scope !1078, !noalias !1081, !noundef !23
  %_6.i.i.i.i2.i.i10 = icmp eq i64 %self1.i.i.i.i1.i.i9, 0
  br i1 %_6.i.i.i.i2.i.i10, label %bb11, label %bb2.i.i.i3.i.i11

bb2.i.i.i3.i.i11:                                 ; preds = %cleanup
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_36, i64 noundef %self1.i.i.i.i1.i.i9, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !1083
  br label %bb11

bb16:                                             ; preds = %bb12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1084)
  %ptr.i.i = load ptr, ptr %_13, align 8, !alias.scope !1087, !nonnull !23, !noundef !23
  %end_or_len.i.i = load ptr, ptr %2, align 8, !alias.scope !1087, !nonnull !23, !noundef !23
  %_7.i.i = icmp eq ptr %ptr.i.i, %end_or_len.i.i
  br i1 %_7.i.i, label %bb26.invoke, label %bb14.i

bb14.i:                                           ; preds = %bb16
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
  %7 = or disjoint i32 %_34.i, %_35.i
  %_13.i = icmp samesign ugt i8 %x.i, -33
  br i1 %_13.i, label %bb6.i, label %bb19

bb3.i:                                            ; preds = %bb14.i
  %_7.i = zext nneg i8 %x.i to i32
  br label %bb19

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
  %8 = or disjoint i32 %y_z.i, %_20.i
  %_21.i = icmp samesign ugt i8 %x.i, -17
  br i1 %_21.i, label %bb8.i, label %bb19

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
  %9 = or disjoint i32 %_27.i, %_25.i
  br label %bb19

bb19:                                             ; preds = %bb3.i, %bb8.i, %bb6.i, %bb4.i
  %_0.sroa.4.0.i.ph = phi i32 [ %7, %bb4.i ], [ %8, %bb6.i ], [ %9, %bb8.i ], [ %_7.i, %bb3.i ]
  %10 = icmp samesign ult i32 %_0.sroa.4.0.i.ph, 1114112
  tail call void @llvm.assume(i1 %10)
  %_9 = icmp eq i32 %_0.sroa.4.0.i.ph, 97
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_13)
  %11 = zext i1 %_9 to i32
  %c1.sroa.0.1 = add i32 %c1.sroa.0.074, %11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_19)
  store ptr %_36, ptr %_19, align 8
  store ptr %_43, ptr %3, align 8
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_69 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_19, i64 noundef %iter.sroa.0.071)
  %.not8 = icmp eq i64 %_69, 0
  br i1 %.not8, label %bb22, label %bb26.invoke, !prof !1062

bb26.invoke:                                      ; preds = %bb19, %bb22, %bb12, %bb16
  %12 = phi ptr [ @alloc_4b3d7225603c3d456b24befd1dec04fd, %bb16 ], [ @alloc_4b3d7225603c3d456b24befd1dec04fd, %bb12 ], [ @alloc_32f33447948e4ec50eb40cf491325ac3, %bb22 ], [ @alloc_32f33447948e4ec50eb40cf491325ac3, %bb19 ]
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %12) #20
          to label %bb26.cont unwind label %cleanup

bb26.cont:                                        ; preds = %bb26.invoke
  unreachable

bb22:                                             ; preds = %bb19
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1090)
  %ptr.i.i14 = load ptr, ptr %_19, align 8, !alias.scope !1093, !nonnull !23, !noundef !23
  %end_or_len.i.i15 = load ptr, ptr %3, align 8, !alias.scope !1093, !nonnull !23, !noundef !23
  %_7.i.i16 = icmp eq ptr %ptr.i.i14, %end_or_len.i.i15
  br i1 %_7.i.i16, label %bb26.invoke, label %bb14.i17

bb14.i17:                                         ; preds = %bb22
  %x.i19 = load i8, ptr %ptr.i.i14, align 1, !noalias !1090, !noundef !23
  %_6.i20 = icmp sgt i8 %x.i19, -1
  br i1 %_6.i20, label %bb3.i53, label %bb4.i21

bb4.i21:                                          ; preds = %bb14.i17
  %_18.i.i18 = getelementptr inbounds nuw i8, ptr %ptr.i.i14, i64 1
  %_30.i22 = and i8 %x.i19, 31
  %init.i23 = zext nneg i8 %_30.i22 to i32
  %_7.i10.i24 = icmp ne ptr %_18.i.i18, %end_or_len.i.i15
  tail call void @llvm.assume(i1 %_7.i10.i24)
  %y.i26 = load i8, ptr %_18.i.i18, align 1, !noalias !1090, !noundef !23
  %_34.i27 = shl nuw nsw i32 %init.i23, 6
  %_36.i28 = and i8 %y.i26, 63
  %_35.i29 = zext nneg i8 %_36.i28 to i32
  %13 = or disjoint i32 %_34.i27, %_35.i29
  %_13.i30 = icmp samesign ugt i8 %x.i19, -33
  br i1 %_13.i30, label %bb6.i33, label %bb25

bb3.i53:                                          ; preds = %bb14.i17
  %_7.i54 = zext nneg i8 %x.i19 to i32
  br label %bb25

bb6.i33:                                          ; preds = %bb4.i21
  %_18.i12.i25 = getelementptr inbounds nuw i8, ptr %ptr.i.i14, i64 2
  %_7.i17.i34 = icmp ne ptr %_18.i12.i25, %end_or_len.i.i15
  tail call void @llvm.assume(i1 %_7.i17.i34)
  %z.i36 = load i8, ptr %_18.i12.i25, align 1, !noalias !1090, !noundef !23
  %_40.i37 = shl nuw nsw i32 %_35.i29, 6
  %_42.i38 = and i8 %z.i36, 63
  %_41.i39 = zext nneg i8 %_42.i38 to i32
  %y_z.i40 = or disjoint i32 %_40.i37, %_41.i39
  %_20.i41 = shl nuw nsw i32 %init.i23, 12
  %14 = or disjoint i32 %y_z.i40, %_20.i41
  %_21.i42 = icmp samesign ugt i8 %x.i19, -17
  br i1 %_21.i42, label %bb8.i43, label %bb25

bb8.i43:                                          ; preds = %bb6.i33
  %_18.i19.i35 = getelementptr inbounds nuw i8, ptr %ptr.i.i14, i64 3
  %_7.i24.i44 = icmp ne ptr %_18.i19.i35, %end_or_len.i.i15
  tail call void @llvm.assume(i1 %_7.i24.i44)
  %w.i46 = load i8, ptr %_18.i19.i35, align 1, !noalias !1090, !noundef !23
  %_26.i47 = shl nuw nsw i32 %init.i23, 18
  %_25.i48 = and i32 %_26.i47, 1835008
  %_46.i49 = shl nuw nsw i32 %y_z.i40, 6
  %_48.i50 = and i8 %w.i46, 63
  %_47.i51 = zext nneg i8 %_48.i50 to i32
  %_27.i52 = or disjoint i32 %_46.i49, %_47.i51
  %15 = or disjoint i32 %_27.i52, %_25.i48
  br label %bb25

bb25:                                             ; preds = %bb3.i53, %bb8.i43, %bb6.i33, %bb4.i21
  %_0.sroa.4.0.i31.ph = phi i32 [ %13, %bb4.i21 ], [ %14, %bb6.i33 ], [ %15, %bb8.i43 ], [ %_7.i54, %bb3.i53 ]
  %16 = icmp samesign ult i32 %_0.sroa.4.0.i31.ph, 1114112
  tail call void @llvm.assume(i1 %16)
  %_15 = icmp eq i32 %_0.sroa.4.0.i31.ph, 98
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_19)
  %17 = select i1 %_15, i32 %c1.sroa.0.1, i32 0
  %c.sroa.0.1 = add i32 %c.sroa.0.072, %17
  %18 = zext i1 %_15 to i32
  %c2.sroa.0.1 = add i32 %c2.sroa.0.073, %18
  %exitcond.not = icmp eq i64 %5, %n
  br i1 %exitcond.not, label %bb13, label %bb12

bb11:                                             ; preds = %bb2.i.i.i3.i.i11, %cleanup
  resume { ptr, i32 } %6
}
