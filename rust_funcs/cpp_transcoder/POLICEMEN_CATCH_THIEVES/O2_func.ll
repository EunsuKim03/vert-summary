define noundef i32 @f_gold(ptr noalias noundef nonnull readonly align 4 captures(none) %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, i32 noundef %n, i32 noundef %k) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %pol = alloca [24 x i8], align 8
  %thi = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %thi)
  store i64 0, ptr %thi, align 8
  %0 = getelementptr inbounds nuw i8, ptr %thi, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %0, align 8
  %1 = getelementptr inbounds nuw i8, ptr %thi, i64 16
  store i64 0, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %pol)
  store i64 0, ptr %pol, align 8
  %2 = getelementptr inbounds nuw i8, ptr %pol, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %2, align 8
  %3 = getelementptr inbounds nuw i8, ptr %pol, i64 16
  store i64 0, ptr %3, align 8
  %_4749 = icmp sgt i32 %n, 0
  br i1 %_4749, label %bb27.preheader, label %bb21

bb27.preheader:                                   ; preds = %start
  %wide.trip.count = zext nneg i32 %n to i64
  br label %bb27

bb10.preheader:                                   ; preds = %bb9
  %_56 = icmp ult i64 %len.i3462, 2305843009213693952
  tail call void @llvm.assume(i1 %_56)
  %_21 = trunc i64 %len.i3462 to i32
  %_1951 = icmp sgt i32 %_21, 0
  br i1 %_1951, label %bb11.lr.ph, label %bb21

bb11.lr.ph:                                       ; preds = %bb10.preheader
  %_26 = load i64, ptr %3, align 8, !noundef !23
  %_57 = icmp ult i64 %_26, 2305843009213693952
  tail call void @llvm.assume(i1 %_57)
  %_25 = trunc i64 %_26 to i32
  %_65 = load ptr, ptr %2, align 8, !nonnull !23
  %_60 = load ptr, ptr %0, align 8, !nonnull !23
  br label %bb11

bb27:                                             ; preds = %bb27.preheader, %bb9
  %_15.i3763 = phi ptr [ inttoptr (i64 4 to ptr), %bb27.preheader ], [ %_15.i3764, %bb9 ]
  %len.i34 = phi i64 [ 0, %bb27.preheader ], [ %len.i3462, %bb9 ]
  %indvars.iv = phi i64 [ 0, %bb27.preheader ], [ %indvars.iv.next, %bb9 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv, %arr.1
  br i1 %exitcond.not, label %panic.invoke, label %bb2

bb11:                                             ; preds = %bb11.lr.ph, %bb18
  %res.sroa.0.054 = phi i32 [ 0, %bb11.lr.ph ], [ %res.sroa.0.1, %bb18 ]
  %l.sroa.0.053 = phi i32 [ 0, %bb11.lr.ph ], [ %l.sroa.0.1, %bb18 ]
  %r.sroa.0.052 = phi i32 [ 0, %bb11.lr.ph ], [ %r.sroa.0.1, %bb18 ]
  %_23 = icmp slt i32 %r.sroa.0.052, %_25
  br i1 %_23, label %bb12, label %bb21

bb21:                                             ; preds = %bb18, %bb11, %start, %bb10.preheader
  %res.sroa.0.0.lcssa = phi i32 [ 0, %bb10.preheader ], [ 0, %start ], [ %res.sroa.0.054, %bb11 ], [ %res.sroa.0.1, %bb18 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1040)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1043)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1046)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1049)
  %self1.i.i.i.i1.i = load i64, ptr %pol, align 8, !range !1031, !alias.scope !1052, !noalias !1055, !noundef !23
  %_6.i.i.i.i2.i = icmp eq i64 %self1.i.i.i.i1.i, 0
  br i1 %_6.i.i.i.i2.i, label %bb22, label %bb2.i.i.i3.i

bb2.i.i.i3.i:                                     ; preds = %bb21
  %4 = shl nuw i64 %self1.i.i.i.i1.i, 2
  %self3.i.i.i.i4.i = load ptr, ptr %2, align 8, !alias.scope !1052, !noalias !1055, !nonnull !23, !noundef !23
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i, i64 noundef %4, i64 noundef range(i64 1, -9223372036854775807) 4) #22, !noalias !1057
  br label %bb22

bb12:                                             ; preds = %bb11
  %_32 = sext i32 %l.sroa.0.053 to i64
  %_62 = icmp ugt i64 %len.i3462, %_32
  br i1 %_62, label %bb34, label %panic.invoke

bb25:                                             ; preds = %bb2.i.i.i3.i31, %cleanup1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1058)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1061)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1064)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1067)
  %self1.i.i.i.i1.i19 = load i64, ptr %thi, align 8, !range !1031, !alias.scope !1070, !noalias !1073, !noundef !23
  %_6.i.i.i.i2.i20 = icmp eq i64 %self1.i.i.i.i1.i19, 0
  br i1 %_6.i.i.i.i2.i20, label %bb26, label %bb2.i.i.i3.i21

bb2.i.i.i3.i21:                                   ; preds = %bb25
  %5 = shl nuw i64 %self1.i.i.i.i1.i19, 2
  %self3.i.i.i.i4.i22 = load ptr, ptr %0, align 8, !alias.scope !1070, !noalias !1073, !nonnull !23, !noundef !23
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i22, i64 noundef %5, i64 noundef range(i64 1, -9223372036854775807) 4) #22, !noalias !1075
  br label %bb26

bb22:                                             ; preds = %bb2.i.i.i3.i, %bb21
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %pol)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1076)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1079)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1082)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1085)
  %self1.i.i.i.i1.i24 = load i64, ptr %thi, align 8, !range !1031, !alias.scope !1088, !noalias !1091, !noundef !23
  %_6.i.i.i.i2.i25 = icmp eq i64 %self1.i.i.i.i1.i24, 0
  br i1 %_6.i.i.i.i2.i25, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h7871951e1c67a33aE.exit28", label %bb2.i.i.i3.i26

bb2.i.i.i3.i26:                                   ; preds = %bb22
  %6 = shl nuw i64 %self1.i.i.i.i1.i24, 2
  %self3.i.i.i.i4.i27 = load ptr, ptr %0, align 8, !alias.scope !1088, !noalias !1091, !nonnull !23, !noundef !23
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i27, i64 noundef %6, i64 noundef range(i64 1, -9223372036854775807) 4) #22, !noalias !1093
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h7871951e1c67a33aE.exit28"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h7871951e1c67a33aE.exit28": ; preds = %bb22, %bb2.i.i.i3.i26
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %thi)
  ret i32 %res.sroa.0.0.lcssa

bb34:                                             ; preds = %bb12
  %_36 = sext i32 %r.sroa.0.052 to i64
  %_67 = icmp ugt i64 %_26, %_36
  br i1 %_67, label %bb35, label %panic.invoke

panic.invoke:                                     ; preds = %bb27, %bb12, %bb34
  %7 = phi i64 [ %_36, %bb34 ], [ %_32, %bb12 ], [ %arr.1, %bb27 ]
  %8 = phi i64 [ %_26, %bb34 ], [ %len.i3462, %bb12 ], [ %arr.1, %bb27 ]
  %9 = phi ptr [ @alloc_8a5a8ac5dfd1b4a16ded1f6ce832206e, %bb34 ], [ @alloc_79ba4d68c6fa5363035f9bbb9a6c65f0, %bb12 ], [ @alloc_8cfc95be86395af95e52f3ac6e7e425b, %bb27 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %7, i64 noundef %8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %9) #23
          to label %panic.cont unwind label %cleanup1.loopexit.split-lp

panic.cont:                                       ; preds = %panic.invoke
  unreachable

cleanup1.loopexit:                                ; preds = %bb1.i, %bb1.i39
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %cleanup1

cleanup1.loopexit.split-lp:                       ; preds = %panic.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %cleanup1

cleanup1:                                         ; preds = %cleanup1.loopexit.split-lp, %cleanup1.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %cleanup1.loopexit ], [ %lpad.loopexit.split-lp, %cleanup1.loopexit.split-lp ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1094)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1097)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1100)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1103)
  %self1.i.i.i.i1.i29 = load i64, ptr %pol, align 8, !range !1031, !alias.scope !1106, !noalias !1109, !noundef !23
  %_6.i.i.i.i2.i30 = icmp eq i64 %self1.i.i.i.i1.i29, 0
  br i1 %_6.i.i.i.i2.i30, label %bb25, label %bb2.i.i.i3.i31

bb2.i.i.i3.i31:                                   ; preds = %cleanup1
  %10 = shl nuw i64 %self1.i.i.i.i1.i29, 2
  %self3.i.i.i.i4.i32 = load ptr, ptr %2, align 8, !alias.scope !1106, !noalias !1109, !nonnull !23, !noundef !23
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i32, i64 noundef %10, i64 noundef range(i64 1, -9223372036854775807) 4) #22, !noalias !1111
  br label %bb25

bb35:                                             ; preds = %bb34
  %_31 = getelementptr inbounds nuw i32, ptr %_60, i64 %_32
  %_30 = load i32, ptr %_31, align 4, !noundef !23
  %_35 = getelementptr inbounds nuw i32, ptr %_65, i64 %_36
  %_34 = load i32, ptr %_35, align 4, !noundef !23
  %_29 = sub i32 %_30, %_34
  %_28.sroa.0.0 = tail call i32 @llvm.abs.i32(i32 %_29, i1 false)
  %_27.not = icmp sgt i32 %_28.sroa.0.0, %k
  br i1 %_27.not, label %bb41, label %bb13

bb13:                                             ; preds = %bb35
  %11 = add i32 %res.sroa.0.054, 1
  %12 = add nsw i32 %l.sroa.0.053, 1
  %13 = add nsw i32 %r.sroa.0.052, 1
  br label %bb18

bb41:                                             ; preds = %bb35
  %_38 = icmp slt i32 %_30, %_34
  br i1 %_38, label %bb15, label %bb16

bb16:                                             ; preds = %bb41
  %14 = add nsw i32 %r.sroa.0.052, 1
  br label %bb18

bb15:                                             ; preds = %bb41
  %15 = add nsw i32 %l.sroa.0.053, 1
  br label %bb18

bb18:                                             ; preds = %bb16, %bb15, %bb13
  %r.sroa.0.1 = phi i32 [ %13, %bb13 ], [ %r.sroa.0.052, %bb15 ], [ %14, %bb16 ]
  %l.sroa.0.1 = phi i32 [ %12, %bb13 ], [ %15, %bb15 ], [ %l.sroa.0.053, %bb16 ]
  %res.sroa.0.1 = phi i32 [ %11, %bb13 ], [ %res.sroa.0.054, %bb15 ], [ %res.sroa.0.054, %bb16 ]
  %_19 = icmp slt i32 %l.sroa.0.1, %_21
  br i1 %_19, label %bb11, label %bb21

bb2:                                              ; preds = %bb27
  %16 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %indvars.iv
  %_9 = load i32, ptr %16, align 4, !range !1112, !noundef !23
  switch i32 %_9, label %bb9 [
    i32 80, label %bb3
    i32 84, label %bb6
  ]

bb3:                                              ; preds = %bb2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1113)
  %len.i = load i64, ptr %3, align 8, !alias.scope !1113, !noundef !23
  %self1.i = load i64, ptr %pol, align 8, !range !1031, !alias.scope !1113, !noundef !23
  %_4.i = icmp eq i64 %len.i, %self1.i
  br i1 %_4.i, label %bb1.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h533f7c1228a6c182E.exit"

bb1.i:                                            ; preds = %bb3
; invoke alloc::raw_vec::RawVec<T,A>::grow_one
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h76ce0fae0b6b9fe3E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %pol)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h533f7c1228a6c182E.exit" unwind label %cleanup1.loopexit

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h533f7c1228a6c182E.exit": ; preds = %bb1.i, %bb3
  %_15.i = load ptr, ptr %2, align 8, !alias.scope !1113, !nonnull !23, !noundef !23
  %end.i = getelementptr inbounds nuw i32, ptr %_15.i, i64 %len.i
  %17 = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %17, ptr %end.i, align 4, !noalias !1113
  %18 = add i64 %len.i, 1
  store i64 %18, ptr %3, align 8, !alias.scope !1113
  br label %bb9

bb6:                                              ; preds = %bb2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1116)
  %self1.i35 = load i64, ptr %thi, align 8, !range !1031, !alias.scope !1116, !noundef !23
  %_4.i36 = icmp eq i64 %len.i34, %self1.i35
  br i1 %_4.i36, label %bb1.i39, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h533f7c1228a6c182E.exit41"

bb1.i39:                                          ; preds = %bb6
; invoke alloc::raw_vec::RawVec<T,A>::grow_one
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h76ce0fae0b6b9fe3E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %thi)
          to label %"bb1.i39._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h533f7c1228a6c182E.exit41_crit_edge" unwind label %cleanup1.loopexit

"bb1.i39._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h533f7c1228a6c182E.exit41_crit_edge": ; preds = %bb1.i39
  %_15.i37.pre = load ptr, ptr %0, align 8, !alias.scope !1116
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h533f7c1228a6c182E.exit41"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h533f7c1228a6c182E.exit41": ; preds = %"bb1.i39._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h533f7c1228a6c182E.exit41_crit_edge", %bb6
  %_15.i37 = phi ptr [ %_15.i37.pre, %"bb1.i39._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h533f7c1228a6c182E.exit41_crit_edge" ], [ %_15.i3763, %bb6 ]
  %end.i38 = getelementptr inbounds nuw i32, ptr %_15.i37, i64 %len.i34
  %19 = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %19, ptr %end.i38, align 4, !noalias !1116
  %20 = add i64 %len.i34, 1
  store i64 %20, ptr %1, align 8, !alias.scope !1116
  br label %bb9

bb9:                                              ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h533f7c1228a6c182E.exit41", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h533f7c1228a6c182E.exit", %bb2
  %_15.i3764 = phi ptr [ %_15.i37, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h533f7c1228a6c182E.exit41" ], [ %_15.i3763, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h533f7c1228a6c182E.exit" ], [ %_15.i3763, %bb2 ]
  %len.i3462 = phi i64 [ %20, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h533f7c1228a6c182E.exit41" ], [ %len.i34, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h533f7c1228a6c182E.exit" ], [ %len.i34, %bb2 ]
  %exitcond60.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond60.not, label %bb10.preheader, label %bb27

bb26:                                             ; preds = %bb2.i.i.i3.i21, %bb25
  resume { ptr, i32 } %lpad.phi
}
