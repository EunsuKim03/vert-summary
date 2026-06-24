define noundef range(i32 0, 2) i32 @f_gold(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %str.0, i64 noundef %str.1) unnamed_addr #4 personality ptr @rust_eh_personality {
start:
  %_57 = alloca [16 x i8], align 8
  %_51 = alloca [16 x i8], align 8
  %_45 = alloca [16 x i8], align 8
  %_39 = alloca [16 x i8], align 8
  %_33 = alloca [16 x i8], align 8
  %_27 = alloca [16 x i8], align 8
  %_17 = alloca [16 x i8], align 8
  %_7.i = getelementptr inbounds nuw i8, ptr %str.0, i64 %str.1
  %_7.i.i.i.i = icmp samesign ne i64 %str.1, 0
  %spec.select.idx = zext i1 %_7.i.i.i.i to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %str.0, i64 %spec.select.idx
  br i1 %_7.i.i.i.i, label %bb14.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator3nth17hb07dc82be75c5fd6E.exit

bb14.i.i.i:                                       ; preds = %start
  %x.i.i.i = load i8, ptr %str.0, align 1, !noalias !1661, !noundef !15
  %_6.i.i.i = icmp sgt i8 %x.i.i.i, -1
  br i1 %_6.i.i.i, label %bb3.i.i.i, label %bb4.i.i.i

bb4.i.i.i:                                        ; preds = %bb14.i.i.i
  %_30.i.i.i = and i8 %x.i.i.i, 31
  %init.i.i.i = zext nneg i8 %_30.i.i.i to i32
  %0 = icmp ne i64 %str.1, 1
  tail call void @llvm.assume(i1 %0)
  %y.i.i.i = load i8, ptr %spec.select, align 1, !noalias !1661, !noundef !15
  %_34.i.i.i = shl nuw nsw i32 %init.i.i.i, 6
  %_36.i.i.i = and i8 %y.i.i.i, 63
  %_35.i.i.i = zext nneg i8 %_36.i.i.i to i32
  %1 = or disjoint i32 %_34.i.i.i, %_35.i.i.i
  %_13.i.i.i = icmp ugt i8 %x.i.i.i, -33
  br i1 %_13.i.i.i, label %bb6.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator3nth17hb07dc82be75c5fd6E.exit

bb3.i.i.i:                                        ; preds = %bb14.i.i.i
  %_7.i.i.i = zext nneg i8 %x.i.i.i to i32
  br label %_ZN4core4iter6traits8iterator8Iterator3nth17hb07dc82be75c5fd6E.exit

bb6.i.i.i:                                        ; preds = %bb4.i.i.i
  %_18.i12.i.i.i = getelementptr inbounds nuw i8, ptr %spec.select, i64 1
  %_7.i17.i.i.i = icmp ne ptr %_18.i12.i.i.i, %_7.i
  tail call void @llvm.assume(i1 %_7.i17.i.i.i)
  %z.i.i.i = load i8, ptr %_18.i12.i.i.i, align 1, !noalias !1661, !noundef !15
  %_40.i.i.i = shl nuw nsw i32 %_35.i.i.i, 6
  %_42.i.i.i = and i8 %z.i.i.i, 63
  %_41.i.i.i = zext nneg i8 %_42.i.i.i to i32
  %y_z.i.i.i = or disjoint i32 %_40.i.i.i, %_41.i.i.i
  %_20.i.i.i = shl nuw nsw i32 %init.i.i.i, 12
  %2 = or disjoint i32 %y_z.i.i.i, %_20.i.i.i
  %_21.i.i.i = icmp ugt i8 %x.i.i.i, -17
  br i1 %_21.i.i.i, label %bb8.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator3nth17hb07dc82be75c5fd6E.exit

bb8.i.i.i:                                        ; preds = %bb6.i.i.i
  %_18.i19.i.i.i = getelementptr inbounds nuw i8, ptr %spec.select, i64 2
  %_7.i24.i.i.i = icmp ne ptr %_18.i19.i.i.i, %_7.i
  tail call void @llvm.assume(i1 %_7.i24.i.i.i)
  %w.i.i.i = load i8, ptr %_18.i19.i.i.i, align 1, !noalias !1661, !noundef !15
  %_26.i.i.i = shl nuw nsw i32 %init.i.i.i, 18
  %_25.i.i.i = and i32 %_26.i.i.i, 1835008
  %_46.i.i.i = shl nuw nsw i32 %y_z.i.i.i, 6
  %_48.i.i.i = and i8 %w.i.i.i, 63
  %_47.i.i.i = zext nneg i8 %_48.i.i.i to i32
  %_27.i.i.i = or disjoint i32 %_46.i.i.i, %_47.i.i.i
  %3 = or disjoint i32 %_27.i.i.i, %_25.i.i.i
  br label %_ZN4core4iter6traits8iterator8Iterator3nth17hb07dc82be75c5fd6E.exit

_ZN4core4iter6traits8iterator8Iterator3nth17hb07dc82be75c5fd6E.exit: ; preds = %start, %bb4.i.i.i, %bb3.i.i.i, %bb6.i.i.i, %bb8.i.i.i
  %_0.sroa.0.0.i = phi i32 [ %_7.i.i.i, %bb3.i.i.i ], [ 1114112, %start ], [ %3, %bb8.i.i.i ], [ %2, %bb6.i.i.i ], [ %1, %bb4.i.i.i ]
  %.not.i57 = icmp eq i32 %_0.sroa.0.0.i, 1114112
  br i1 %.not.i57, label %bb2.i58, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17h08bfb85bcc933c95E.exit59", !prof !1064

bb2.i58:                                          ; preds = %_ZN4core4iter6traits8iterator8Iterator3nth17hb07dc82be75c5fd6E.exit
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_eb641e0e6f5032de832d395ace315118) #25
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17h08bfb85bcc933c95E.exit59": ; preds = %_ZN4core4iter6traits8iterator8Iterator3nth17hb07dc82be75c5fd6E.exit
  %_3 = icmp samesign ult i32 %_0.sroa.0.0.i, 65
  br i1 %_3, label %bb69, label %bb6

bb6:                                              ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h08bfb85bcc933c95E.exit59"
  %spec.select116.idx = zext i1 %_7.i.i.i.i to i64
  %spec.select116 = getelementptr inbounds nuw i8, ptr %str.0, i64 %spec.select116.idx
  br i1 %_7.i.i.i.i, label %bb14.i.i.i70, label %_ZN4core4iter6traits8iterator8Iterator3nth17hb07dc82be75c5fd6E.exit107

bb14.i.i.i70:                                     ; preds = %bb6
  %x.i.i.i71 = load i8, ptr %str.0, align 1, !noalias !1668, !noundef !15
  %_6.i.i.i72 = icmp sgt i8 %x.i.i.i71, -1
  br i1 %_6.i.i.i72, label %bb3.i.i.i105, label %bb4.i.i.i73

bb4.i.i.i73:                                      ; preds = %bb14.i.i.i70
  %_30.i.i.i74 = and i8 %x.i.i.i71, 31
  %init.i.i.i75 = zext nneg i8 %_30.i.i.i74 to i32
  %4 = icmp ne i64 %str.1, 1
  tail call void @llvm.assume(i1 %4)
  %y.i.i.i79 = load i8, ptr %spec.select116, align 1, !noalias !1668, !noundef !15
  %_34.i.i.i80 = shl nuw nsw i32 %init.i.i.i75, 6
  %_36.i.i.i81 = and i8 %y.i.i.i79, 63
  %_35.i.i.i82 = zext nneg i8 %_36.i.i.i81 to i32
  %5 = or disjoint i32 %_34.i.i.i80, %_35.i.i.i82
  %_13.i.i.i83 = icmp ugt i8 %x.i.i.i71, -33
  br i1 %_13.i.i.i83, label %bb6.i.i.i85, label %_ZN4core4iter6traits8iterator8Iterator3nth17hb07dc82be75c5fd6E.exit107

bb3.i.i.i105:                                     ; preds = %bb14.i.i.i70
  %_7.i.i.i106 = zext nneg i8 %x.i.i.i71 to i32
  br label %_ZN4core4iter6traits8iterator8Iterator3nth17hb07dc82be75c5fd6E.exit107

bb6.i.i.i85:                                      ; preds = %bb4.i.i.i73
  %_18.i12.i.i.i78 = getelementptr inbounds nuw i8, ptr %spec.select116, i64 1
  %_7.i17.i.i.i86 = icmp ne ptr %_18.i12.i.i.i78, %_7.i
  tail call void @llvm.assume(i1 %_7.i17.i.i.i86)
  %z.i.i.i88 = load i8, ptr %_18.i12.i.i.i78, align 1, !noalias !1668, !noundef !15
  %_40.i.i.i89 = shl nuw nsw i32 %_35.i.i.i82, 6
  %_42.i.i.i90 = and i8 %z.i.i.i88, 63
  %_41.i.i.i91 = zext nneg i8 %_42.i.i.i90 to i32
  %y_z.i.i.i92 = or disjoint i32 %_40.i.i.i89, %_41.i.i.i91
  %_20.i.i.i93 = shl nuw nsw i32 %init.i.i.i75, 12
  %6 = or disjoint i32 %y_z.i.i.i92, %_20.i.i.i93
  %_21.i.i.i94 = icmp ugt i8 %x.i.i.i71, -17
  br i1 %_21.i.i.i94, label %bb8.i.i.i95, label %_ZN4core4iter6traits8iterator8Iterator3nth17hb07dc82be75c5fd6E.exit107

bb8.i.i.i95:                                      ; preds = %bb6.i.i.i85
  %_18.i19.i.i.i87 = getelementptr inbounds nuw i8, ptr %spec.select116, i64 2
  %_7.i24.i.i.i96 = icmp ne ptr %_18.i19.i.i.i87, %_7.i
  tail call void @llvm.assume(i1 %_7.i24.i.i.i96)
  %w.i.i.i98 = load i8, ptr %_18.i19.i.i.i87, align 1, !noalias !1668, !noundef !15
  %_26.i.i.i99 = shl nuw nsw i32 %init.i.i.i75, 18
  %_25.i.i.i100 = and i32 %_26.i.i.i99, 1835008
  %_46.i.i.i101 = shl nuw nsw i32 %y_z.i.i.i92, 6
  %_48.i.i.i102 = and i8 %w.i.i.i98, 63
  %_47.i.i.i103 = zext nneg i8 %_48.i.i.i102 to i32
  %_27.i.i.i104 = or disjoint i32 %_46.i.i.i101, %_47.i.i.i103
  %7 = or disjoint i32 %_27.i.i.i104, %_25.i.i.i100
  br label %_ZN4core4iter6traits8iterator8Iterator3nth17hb07dc82be75c5fd6E.exit107

_ZN4core4iter6traits8iterator8Iterator3nth17hb07dc82be75c5fd6E.exit107: ; preds = %bb6, %bb4.i.i.i73, %bb3.i.i.i105, %bb6.i.i.i85, %bb8.i.i.i95
  %_0.sroa.0.0.i84 = phi i32 [ %_7.i.i.i106, %bb3.i.i.i105 ], [ 1114112, %bb6 ], [ %7, %bb8.i.i.i95 ], [ %6, %bb6.i.i.i85 ], [ %5, %bb4.i.i.i73 ]
  %.not.i54 = icmp eq i32 %_0.sroa.0.0.i84, 1114112
  br i1 %.not.i54, label %bb2.i55, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17h08bfb85bcc933c95E.exit56", !prof !1064

bb2.i55:                                          ; preds = %_ZN4core4iter6traits8iterator8Iterator3nth17hb07dc82be75c5fd6E.exit107
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_3524435204fdda3dfb8f46cc42a289b7) #25
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17h08bfb85bcc933c95E.exit56": ; preds = %_ZN4core4iter6traits8iterator8Iterator3nth17hb07dc82be75c5fd6E.exit107
  %_8 = icmp samesign ugt i32 %_0.sroa.0.0.i84, 90
  br i1 %_8, label %bb69, label %bb12

bb12:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h08bfb85bcc933c95E.exit56"
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_17)
  store ptr %str.0, ptr %_17, align 8
  %8 = getelementptr inbounds nuw i8, ptr %_17, i64 8
  store ptr %_7.i, ptr %8, align 8
  %_18 = add i64 %str.1, -1
; call core::iter::traits::iterator::Iterator::nth
  %_15 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17hb07dc82be75c5fd6E(ptr noalias noundef align 8 dereferenceable(16) %_17, i64 noundef %_18) #29
  switch i32 %_15, label %bb16 [
    i32 1114112, label %bb2.i52
    i32 46, label %bb17
  ], !prof !1675

bb2.i52:                                          ; preds = %bb12
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_bc5a926cd0ddf41ff20213c75a10c600) #25
  unreachable

bb17:                                             ; preds = %bb12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_17)
  %_21125 = icmp ugt i64 %str.1, 1
  br i1 %_21125, label %bb19.lr.ph, label %bb69

bb19.lr.ph:                                       ; preds = %bb17
  %9 = getelementptr inbounds nuw i8, ptr %_27, i64 8
  %10 = getelementptr inbounds nuw i8, ptr %_33, i64 8
  %11 = getelementptr inbounds nuw i8, ptr %_39, i64 8
  %12 = getelementptr inbounds nuw i8, ptr %_45, i64 8
  %13 = getelementptr inbounds nuw i8, ptr %_51, i64 8
  %14 = getelementptr inbounds nuw i8, ptr %_57, i64 8
  br label %bb19

bb16:                                             ; preds = %bb12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_17)
  br label %bb69

bb19:                                             ; preds = %bb19.lr.ph, %bb66
  %curr_state.sroa.0.0127 = phi i32 [ 0, %bb19.lr.ph ], [ %curr_state.sroa.0.5, %bb66 ]
  %index.sroa.0.0126 = phi i64 [ 1, %bb19.lr.ph ], [ %_72, %bb66 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_27)
  store ptr %str.0, ptr %_27, align 8
  store ptr %_7.i, ptr %9, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_25 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17hb07dc82be75c5fd6E(ptr noalias noundef align 8 dereferenceable(16) %_27, i64 noundef %index.sroa.0.0126) #29
  %.not.i48 = icmp eq i32 %_25, 1114112
  br i1 %.not.i48, label %bb2.i49, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17h08bfb85bcc933c95E.exit50", !prof !1064

bb2.i49:                                          ; preds = %bb19
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_0e8bb74db4fce2563fd66a9d95921d62) #25
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17h08bfb85bcc933c95E.exit50": ; preds = %bb19
  %_23 = icmp samesign ugt i32 %_25, 64
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_27)
  br i1 %_23, label %bb23, label %bb30

bb69:                                             ; preds = %bb66, %bb27, %bb27, %bb73, %bb51, %bb17, %"_ZN4core6option15Option$LT$T$GT$6unwrap17h08bfb85bcc933c95E.exit56", %"_ZN4core6option15Option$LT$T$GT$6unwrap17h08bfb85bcc933c95E.exit59", %bb64, %bb16
  %_0.sroa.0.0 = phi i32 [ 0, %bb16 ], [ %16, %bb64 ], [ 0, %"_ZN4core6option15Option$LT$T$GT$6unwrap17h08bfb85bcc933c95E.exit59" ], [ 0, %"_ZN4core6option15Option$LT$T$GT$6unwrap17h08bfb85bcc933c95E.exit56" ], [ 0, %bb17 ], [ 0, %bb51 ], [ 0, %bb73 ], [ 0, %bb27 ], [ 0, %bb27 ], [ 0, %bb66 ]
  ret i32 %_0.sroa.0.0

bb23:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h08bfb85bcc933c95E.exit50"
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_33)
  store ptr %str.0, ptr %_33, align 8
  store ptr %_7.i, ptr %10, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_31 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17hb07dc82be75c5fd6E(ptr noalias noundef align 8 dereferenceable(16) %_33, i64 noundef %index.sroa.0.0126) #29
  %.not.i45 = icmp eq i32 %_31, 1114112
  br i1 %.not.i45, label %bb2.i46, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17h08bfb85bcc933c95E.exit47", !prof !1064

bb2.i46:                                          ; preds = %bb23
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_cc1da2ea4000fc8ddbd27d055a127060) #25
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17h08bfb85bcc933c95E.exit47": ; preds = %bb23
  %_29 = icmp samesign ult i32 %_31, 91
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_33)
  br i1 %_29, label %bb27, label %bb30

bb30:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h08bfb85bcc933c95E.exit47", %"_ZN4core6option15Option$LT$T$GT$6unwrap17h08bfb85bcc933c95E.exit50"
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_39)
  store ptr %str.0, ptr %_39, align 8
  store ptr %_7.i, ptr %11, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_37 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17hb07dc82be75c5fd6E(ptr noalias noundef align 8 dereferenceable(16) %_39, i64 noundef %index.sroa.0.0126) #29
  switch i32 %_37, label %bb35 [
    i32 1114112, label %bb2.i43
    i32 32, label %bb34
  ], !prof !1675

bb2.i43:                                          ; preds = %bb30
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_8657e589edc6037bbf6d5becce9fa461) #25
  unreachable

bb27:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h08bfb85bcc933c95E.exit47"
  switch i32 %curr_state.sroa.0.0127, label %bb61 [
    i32 0, label %bb69
    i32 2, label %bb69
  ]

bb35:                                             ; preds = %bb30
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_39)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_45)
  store ptr %str.0, ptr %_45, align 8
  store ptr %_7.i, ptr %12, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_43 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17hb07dc82be75c5fd6E(ptr noalias noundef align 8 dereferenceable(16) %_45, i64 noundef %index.sroa.0.0126) #29
  %.not.i39 = icmp eq i32 %_43, 1114112
  br i1 %.not.i39, label %bb2.i40, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17h08bfb85bcc933c95E.exit41", !prof !1064

bb2.i40:                                          ; preds = %bb35
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_906ea8b3eba84eb3928fe673fa5c4ee4) #25
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17h08bfb85bcc933c95E.exit41": ; preds = %bb35
  %_41 = icmp samesign ugt i32 %_43, 96
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_45)
  br i1 %_41, label %bb39, label %bb46

bb34:                                             ; preds = %bb30
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_39)
  br label %bb73

bb39:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h08bfb85bcc933c95E.exit41"
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_51)
  store ptr %str.0, ptr %_51, align 8
  store ptr %_7.i, ptr %13, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_49 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17hb07dc82be75c5fd6E(ptr noalias noundef align 8 dereferenceable(16) %_51, i64 noundef %index.sroa.0.0126) #29
  %.not.i36 = icmp eq i32 %_49, 1114112
  br i1 %.not.i36, label %bb2.i37, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17h08bfb85bcc933c95E.exit38", !prof !1064

bb2.i37:                                          ; preds = %bb39
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_29ca9265c64a591a504c55f40d9c34c3) #25
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17h08bfb85bcc933c95E.exit38": ; preds = %bb39
  %_47 = icmp samesign ult i32 %_49, 123
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_51)
  br i1 %_47, label %bb61, label %bb46

bb46:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h08bfb85bcc933c95E.exit38", %"_ZN4core6option15Option$LT$T$GT$6unwrap17h08bfb85bcc933c95E.exit41"
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_57)
  store ptr %str.0, ptr %_57, align 8
  store ptr %_7.i, ptr %14, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_55 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17hb07dc82be75c5fd6E(ptr noalias noundef align 8 dereferenceable(16) %_57, i64 noundef %index.sroa.0.0126) #29
  switch i32 %_55, label %bb51 [
    i32 1114112, label %bb2.i
    i32 46, label %bb50
  ], !prof !1675

bb2.i:                                            ; preds = %bb46
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_79dd5ebd6dd86bca00ca3d84911dab46) #25
  unreachable

bb51:                                             ; preds = %bb46
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_57)
  %_62.not = icmp eq i32 %curr_state.sroa.0.0127, 2
  br i1 %_62.not, label %bb61, label %bb69

bb50:                                             ; preds = %bb46
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_57)
  br label %bb73

bb73:                                             ; preds = %bb34, %bb50
  %curr_state.sroa.0.2 = phi i32 [ 1, %bb34 ], [ 3, %bb50 ]
  %15 = icmp eq i32 %curr_state.sroa.0.0127, %curr_state.sroa.0.2
  br i1 %15, label %bb69, label %bb61

bb61:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h08bfb85bcc933c95E.exit38", %bb73, %bb27, %bb51
  %curr_state.sroa.0.5 = phi i32 [ %curr_state.sroa.0.0127, %bb51 ], [ 0, %bb27 ], [ %curr_state.sroa.0.2, %bb73 ], [ 2, %"_ZN4core6option15Option$LT$T$GT$6unwrap17h08bfb85bcc933c95E.exit38" ]
  %_68 = icmp eq i32 %curr_state.sroa.0.5, 3
  %_70 = icmp ne i32 %curr_state.sroa.0.0127, 1
  %or.cond = and i1 %_70, %_68
  %_72 = add i64 %index.sroa.0.0126, 1
  %_71 = icmp eq i64 %_72, %str.1
  br i1 %or.cond, label %bb64, label %bb66

bb66:                                             ; preds = %bb61
  br i1 %_71, label %bb69, label %bb19

bb64:                                             ; preds = %bb61
  %16 = zext i1 %_71 to i32
  br label %bb69
}
