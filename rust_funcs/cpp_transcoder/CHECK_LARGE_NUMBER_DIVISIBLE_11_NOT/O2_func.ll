define noundef range(i32 0, 2) i32 @f_gold(ptr dead_on_return noalias noundef readonly align 8 captures(none) dereferenceable(24) %str) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_21 = alloca [16 x i8], align 8
  %_14 = alloca [16 x i8], align 8
  %0 = getelementptr inbounds nuw i8, ptr %str, i64 16
  %n = load i64, ptr %0, align 8, !noundef !23
  %_26 = icmp sgt i64 %n, -1
  tail call void @llvm.assume(i1 %_26)
  %_2764.not = icmp eq i64 %n, 0
  br i1 %_2764.not, label %bb10, label %bb9.lr.ph

bb9.lr.ph:                                        ; preds = %start
  %1 = getelementptr inbounds nuw i8, ptr %str, i64 8
  %_56 = load ptr, ptr %1, align 8, !nonnull !23
  %_63 = getelementptr inbounds nuw i8, ptr %_56, i64 %n
  %2 = getelementptr inbounds nuw i8, ptr %_21, i64 8
  %3 = getelementptr inbounds nuw i8, ptr %_14, i64 8
  br label %bb9

bb10:                                             ; preds = %bb5, %start
  %even_dig_sum.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %even_dig_sum.sroa.0.1, %bb5 ]
  %odd_dig_sum.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %odd_dig_sum.sroa.0.1, %bb5 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1040)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1043)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1046)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1049)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1052)
  %self1.i.i.i.i1.i.i = load i64, ptr %str, align 8, !range !1055, !alias.scope !1056, !noalias !1059, !noundef !23
  %_6.i.i.i.i2.i.i = icmp eq i64 %self1.i.i.i.i1.i.i, 0
  br i1 %_6.i.i.i.i2.i.i, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd7690ed170c92de7E.exit", label %bb2.i.i.i3.i.i

bb2.i.i.i3.i.i:                                   ; preds = %bb10
  %4 = getelementptr inbounds nuw i8, ptr %str, i64 8
  %self3.i.i.i.i4.i.i = load ptr, ptr %4, align 8, !alias.scope !1056, !noalias !1059, !nonnull !23, !noundef !23
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i, i64 noundef %self1.i.i.i.i1.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !1061
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd7690ed170c92de7E.exit"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd7690ed170c92de7E.exit": ; preds = %bb10, %bb2.i.i.i3.i.i
  %_25 = sub i32 %odd_dig_sum.sroa.0.0.lcssa, %even_dig_sum.sroa.0.0.lcssa
  %_24 = urem i32 %_25, 11
  %_23 = icmp eq i32 %_24, 0
  %_0 = zext i1 %_23 to i32
  ret i32 %_0

bb9:                                              ; preds = %bb9.lr.ph, %bb5
  %odd_dig_sum.sroa.0.067 = phi i32 [ 0, %bb9.lr.ph ], [ %odd_dig_sum.sroa.0.1, %bb5 ]
  %even_dig_sum.sroa.0.066 = phi i32 [ 0, %bb9.lr.ph ], [ %even_dig_sum.sroa.0.1, %bb5 ]
  %iter.sroa.0.065 = phi i64 [ 0, %bb9.lr.ph ], [ %5, %bb5 ]
  %5 = add nuw nsw i64 %iter.sroa.0.065, 1
  %_8 = and i64 %iter.sroa.0.065, 1
  %_7 = icmp eq i64 %_8, 0
  br i1 %_7, label %bb3, label %bb4

bb4:                                              ; preds = %bb9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_21)
  store ptr %_56, ptr %_21, align 8
  store ptr %_63, ptr %2, align 8
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_67 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_21, i64 noundef %iter.sroa.0.065)
  %.not = icmp eq i64 %_67, 0
  br i1 %.not, label %bb19, label %bb23.invoke, !prof !1062

bb3:                                              ; preds = %bb9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_14)
  store ptr %_56, ptr %_14, align 8
  store ptr %_63, ptr %3, align 8
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_45 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_14, i64 noundef %iter.sroa.0.065)
  %.not6 = icmp eq i64 %_45, 0
  br i1 %.not6, label %bb13, label %bb23.invoke, !prof !1062

cleanup:                                          ; preds = %bb23.invoke
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1063)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1066)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1069)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1072)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1075)
  %self1.i.i.i.i1.i.i7 = load i64, ptr %str, align 8, !range !1055, !alias.scope !1078, !noalias !1081, !noundef !23
  %_6.i.i.i.i2.i.i8 = icmp eq i64 %self1.i.i.i.i1.i.i7, 0
  br i1 %_6.i.i.i.i2.i.i8, label %bb8, label %bb2.i.i.i3.i.i9

bb2.i.i.i3.i.i9:                                  ; preds = %cleanup
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_56, i64 noundef %self1.i.i.i.i1.i.i7, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !1083
  br label %bb8

bb19:                                             ; preds = %bb4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1084)
  %ptr.i.i = load ptr, ptr %_21, align 8, !alias.scope !1087, !nonnull !23, !noundef !23
  %end_or_len.i.i = load ptr, ptr %2, align 8, !alias.scope !1087, !nonnull !23, !noundef !23
  %_7.i.i = icmp eq ptr %ptr.i.i, %end_or_len.i.i
  br i1 %_7.i.i, label %bb23.invoke, label %bb14.i

bb14.i:                                           ; preds = %bb19
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
  br i1 %_13.i, label %bb6.i, label %bb22

bb3.i:                                            ; preds = %bb14.i
  %_7.i = zext nneg i8 %x.i to i32
  br label %bb22

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
  br i1 %_21.i, label %bb8.i, label %bb22

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
  br label %bb22

bb22:                                             ; preds = %bb3.i, %bb8.i, %bb6.i, %bb4.i
  %_0.sroa.4.0.i.ph = phi i32 [ %7, %bb4.i ], [ %8, %bb6.i ], [ %9, %bb8.i ], [ %_7.i, %bb3.i ]
  %10 = icmp samesign ult i32 %_0.sroa.4.0.i.ph, 1114112
  tail call void @llvm.assume(i1 %10)
  %_16 = add i32 %even_dig_sum.sroa.0.066, -48
  %11 = add i32 %_16, %_0.sroa.4.0.i.ph
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_21)
  br label %bb5

bb5:                                              ; preds = %bb16, %bb22
  %even_dig_sum.sroa.0.1 = phi i32 [ %even_dig_sum.sroa.0.066, %bb16 ], [ %11, %bb22 ]
  %odd_dig_sum.sroa.0.1 = phi i32 [ %16, %bb16 ], [ %odd_dig_sum.sroa.0.067, %bb22 ]
  %exitcond.not = icmp eq i64 %5, %n
  br i1 %exitcond.not, label %bb10, label %bb9

bb13:                                             ; preds = %bb3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1090)
  %ptr.i.i12 = load ptr, ptr %_14, align 8, !alias.scope !1093, !nonnull !23, !noundef !23
  %end_or_len.i.i13 = load ptr, ptr %3, align 8, !alias.scope !1093, !nonnull !23, !noundef !23
  %_7.i.i14 = icmp eq ptr %ptr.i.i12, %end_or_len.i.i13
  br i1 %_7.i.i14, label %bb23.invoke, label %bb14.i15

bb14.i15:                                         ; preds = %bb13
  %x.i17 = load i8, ptr %ptr.i.i12, align 1, !noalias !1090, !noundef !23
  %_6.i18 = icmp sgt i8 %x.i17, -1
  br i1 %_6.i18, label %bb3.i51, label %bb4.i19

bb4.i19:                                          ; preds = %bb14.i15
  %_18.i.i16 = getelementptr inbounds nuw i8, ptr %ptr.i.i12, i64 1
  %_30.i20 = and i8 %x.i17, 31
  %init.i21 = zext nneg i8 %_30.i20 to i32
  %_7.i10.i22 = icmp ne ptr %_18.i.i16, %end_or_len.i.i13
  tail call void @llvm.assume(i1 %_7.i10.i22)
  %y.i24 = load i8, ptr %_18.i.i16, align 1, !noalias !1090, !noundef !23
  %_34.i25 = shl nuw nsw i32 %init.i21, 6
  %_36.i26 = and i8 %y.i24, 63
  %_35.i27 = zext nneg i8 %_36.i26 to i32
  %12 = or disjoint i32 %_34.i25, %_35.i27
  %_13.i28 = icmp samesign ugt i8 %x.i17, -33
  br i1 %_13.i28, label %bb6.i31, label %bb16

bb3.i51:                                          ; preds = %bb14.i15
  %_7.i52 = zext nneg i8 %x.i17 to i32
  br label %bb16

bb6.i31:                                          ; preds = %bb4.i19
  %_18.i12.i23 = getelementptr inbounds nuw i8, ptr %ptr.i.i12, i64 2
  %_7.i17.i32 = icmp ne ptr %_18.i12.i23, %end_or_len.i.i13
  tail call void @llvm.assume(i1 %_7.i17.i32)
  %z.i34 = load i8, ptr %_18.i12.i23, align 1, !noalias !1090, !noundef !23
  %_40.i35 = shl nuw nsw i32 %_35.i27, 6
  %_42.i36 = and i8 %z.i34, 63
  %_41.i37 = zext nneg i8 %_42.i36 to i32
  %y_z.i38 = or disjoint i32 %_40.i35, %_41.i37
  %_20.i39 = shl nuw nsw i32 %init.i21, 12
  %13 = or disjoint i32 %y_z.i38, %_20.i39
  %_21.i40 = icmp samesign ugt i8 %x.i17, -17
  br i1 %_21.i40, label %bb8.i41, label %bb16

bb8.i41:                                          ; preds = %bb6.i31
  %_18.i19.i33 = getelementptr inbounds nuw i8, ptr %ptr.i.i12, i64 3
  %_7.i24.i42 = icmp ne ptr %_18.i19.i33, %end_or_len.i.i13
  tail call void @llvm.assume(i1 %_7.i24.i42)
  %w.i44 = load i8, ptr %_18.i19.i33, align 1, !noalias !1090, !noundef !23
  %_26.i45 = shl nuw nsw i32 %init.i21, 18
  %_25.i46 = and i32 %_26.i45, 1835008
  %_46.i47 = shl nuw nsw i32 %y_z.i38, 6
  %_48.i48 = and i8 %w.i44, 63
  %_47.i49 = zext nneg i8 %_48.i48 to i32
  %_27.i50 = or disjoint i32 %_46.i47, %_47.i49
  %14 = or disjoint i32 %_27.i50, %_25.i46
  br label %bb16

bb16:                                             ; preds = %bb3.i51, %bb8.i41, %bb6.i31, %bb4.i19
  %_0.sroa.4.0.i29.ph = phi i32 [ %12, %bb4.i19 ], [ %13, %bb6.i31 ], [ %14, %bb8.i41 ], [ %_7.i52, %bb3.i51 ]
  %15 = icmp samesign ult i32 %_0.sroa.4.0.i29.ph, 1114112
  tail call void @llvm.assume(i1 %15)
  %_9 = add i32 %odd_dig_sum.sroa.0.067, -48
  %16 = add i32 %_9, %_0.sroa.4.0.i29.ph
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_14)
  br label %bb5

bb23.invoke:                                      ; preds = %bb3, %bb13, %bb4, %bb19
  %17 = phi ptr [ @alloc_4e63d36c90f326fa6ac604d323f137d3, %bb19 ], [ @alloc_4e63d36c90f326fa6ac604d323f137d3, %bb4 ], [ @alloc_c659836f6953a930a3f6ba7fae26ee32, %bb13 ], [ @alloc_c659836f6953a930a3f6ba7fae26ee32, %bb3 ]
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %17) #20
          to label %bb23.cont unwind label %cleanup

bb23.cont:                                        ; preds = %bb23.invoke
  unreachable

bb8:                                              ; preds = %bb2.i.i.i3.i.i9, %cleanup
  resume { ptr, i32 } %6
}
