define noundef i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_16.i.i26 = alloca [24 x i8], align 8
  %_16.i.i = alloca [24 x i8], align 8
  %msds = alloca [24 x i8], align 8
  %msis = alloca [24 x i8], align 8
  %arr = alloca [8 x i8], align 8
  store i64 %0, ptr %arr, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msis)
  %_4 = sext i32 %n to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1638)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1641)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1644
; call alloc::raw_vec::RawVecInner<A>::try_allocate_in
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_16.i.i, i64 noundef %_4, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4), !noalias !1644
  %_17.i.i = load i64, ptr %_16.i.i, align 8, !range !1031, !noalias !1644, !noundef !37
  %1 = trunc nuw i64 %_17.i.i to i1
  %2 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 8
  %err.0.i.i = load i64, ptr %2, align 8, !range !1032, !noalias !1644, !noundef !37
  %3 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 16
  br i1 %1, label %bb14.i.i, label %_ZN5alloc3vec9from_elem17h8f8687e423452488E.exit, !prof !1033

bb14.i.i:                                         ; preds = %start
  %err.1.i.i = load i64, ptr %3, align 8, !noalias !1644
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #26, !noalias !1644
  unreachable

_ZN5alloc3vec9from_elem17h8f8687e423452488E.exit: ; preds = %start
  %res.1.i.i = load ptr, ptr %3, align 8, !noalias !1644, !nonnull !37, !noundef !37
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1644
  store i64 %err.0.i.i, ptr %msis, align 8, !alias.scope !1644
  %4 = getelementptr inbounds nuw i8, ptr %msis, i64 8
  store ptr %res.1.i.i, ptr %4, align 8, !alias.scope !1644
  %5 = getelementptr inbounds nuw i8, ptr %msis, i64 16
  store i64 %_4, ptr %5, align 8, !alias.scope !1644
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msds)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1645)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1648)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_16.i.i26), !noalias !1651
; invoke alloc::raw_vec::RawVecInner<A>::try_allocate_in
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_16.i.i26, i64 noundef %_4, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4)
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %_ZN5alloc3vec9from_elem17h8f8687e423452488E.exit
  %_17.i.i27 = load i64, ptr %_16.i.i26, align 8, !range !1031, !noalias !1651, !noundef !37
  %6 = trunc nuw i64 %_17.i.i27 to i1
  %7 = getelementptr inbounds nuw i8, ptr %_16.i.i26, i64 8
  %err.0.i.i31 = load i64, ptr %7, align 8, !range !1032, !noalias !1651, !noundef !37
  %8 = getelementptr inbounds nuw i8, ptr %_16.i.i26, i64 16
  br i1 %6, label %bb14.i.i30, label %_ZN5alloc3vec9from_elem17h8f8687e423452488E.exit34, !prof !1033

bb14.i.i30:                                       ; preds = %.noexc
  %err.1.i.i32 = load i64, ptr %8, align 8, !noalias !1651
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i31, i64 %err.1.i.i32) #26
          to label %.noexc33 unwind label %cleanup

.noexc33:                                         ; preds = %bb14.i.i30
  unreachable

_ZN5alloc3vec9from_elem17h8f8687e423452488E.exit34: ; preds = %.noexc
  %res.1.i.i29 = load ptr, ptr %8, align 8, !noalias !1651, !nonnull !37, !noundef !37
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_16.i.i26), !noalias !1651
  store i64 %err.0.i.i31, ptr %msds, align 8, !alias.scope !1651
  %9 = getelementptr inbounds nuw i8, ptr %msds, i64 8
  store ptr %res.1.i.i29, ptr %9, align 8, !alias.scope !1651
  %10 = getelementptr inbounds nuw i8, ptr %msds, i64 16
  store i64 %_4, ptr %10, align 8, !alias.scope !1651
  %_6 = load i32, ptr %arr, align 8, !noundef !37
  %len.i = load i64, ptr %5, align 8, !alias.scope !1652, !noalias !1655, !noundef !37
  %_4.i.i.not = icmp eq i64 %len.i, 0
  br i1 %_4.i.i.not, label %panic.i.i121.invoke, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfdac3c30e89ddd5aE.exit"

bb55:                                             ; preds = %cleanup3, %cleanup
  %.pn = phi { ptr, i32 } [ %11, %cleanup ], [ %12, %cleanup3 ]
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %msis, i64 noundef 4, i64 noundef 4)
          to label %bb56 unwind label %terminate

cleanup:                                          ; preds = %bb42, %bb14.i.i30, %_ZN5alloc3vec9from_elem17h8f8687e423452488E.exit
  %11 = landingpad { ptr, i32 }
          cleanup
  br label %bb55

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfdac3c30e89ddd5aE.exit": ; preds = %_ZN5alloc3vec9from_elem17h8f8687e423452488E.exit34
  %_6.i = load ptr, ptr %4, align 8, !alias.scope !1652, !noalias !1655, !nonnull !37, !noundef !37
  store i32 %_6, ptr %_6.i, align 4
  %_0.i.i.i150 = icmp ugt i32 %n, 1
  br i1 %_0.i.i.i150, label %bb10, label %bb9

cleanup3:                                         ; preds = %panic12.invoke, %panic.i.i121.invoke
  %12 = landingpad { ptr, i32 }
          cleanup
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %msds, i64 noundef 4, i64 noundef 4)
          to label %bb55 unwind label %terminate

bb9:                                              ; preds = %bb19, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfdac3c30e89ddd5aE.exit"
  %_30 = add nsw i64 %_4, -1
  %_31 = icmp ult i64 %_30, 2
  br i1 %_31, label %bb20, label %panic12.invoke

bb20:                                             ; preds = %bb9
  %len.i40 = load i64, ptr %10, align 8, !alias.scope !1657, !noalias !1660, !noundef !37
  %_4.i.i41 = icmp samesign ult i64 %_30, %len.i40
  br i1 %_4.i.i41, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfdac3c30e89ddd5aE.exit45", label %panic.i.i121.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfdac3c30e89ddd5aE.exit45": ; preds = %bb20
  %13 = getelementptr inbounds nuw i32, ptr %arr, i64 %_30
  %_29 = load i32, ptr %13, align 4, !noundef !37
  %_6.i43 = load ptr, ptr %9, align 8, !alias.scope !1657, !noalias !1660, !nonnull !37, !noundef !37
  %_0.i.i = getelementptr inbounds nuw i32, ptr %_6.i43, i64 %_30
  store i32 %_29, ptr %_0.i.i, align 4
  %_0.i.i.i.i.not.not155 = icmp eq i64 %_30, 0
  br i1 %_0.i.i.i.i.not.not155, label %bb39.preheader, label %bb26.lr.ph

bb26.lr.ph:                                       ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfdac3c30e89ddd5aE.exit45"
  %iter1.sroa.4.1157 = add nsw i64 %_4, -2
  %_0.i1.i.i.i156 = add nsw i64 %_4, -2
  %14 = getelementptr inbounds nuw i8, ptr %arr, i64 4
  %_45 = load i32, ptr %14, align 4
  br label %bb26

bb39.preheader:                                   ; preds = %bb37, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfdac3c30e89ddd5aE.exit45"
  %_0.i.i.i50161.not = icmp eq i32 %n, 0
  br i1 %_0.i.i.i50161.not, label %bb42, label %bb41.lr.ph

bb41.lr.ph:                                       ; preds = %bb39.preheader
  %len.i55 = load i64, ptr %5, align 8, !alias.scope !1662, !noalias !1665, !noundef !37
  %_6.i58 = load ptr, ptr %4, align 8, !nonnull !37
  %len.i63 = load i64, ptr %10, align 8
  %_6.i66 = load ptr, ptr %9, align 8, !nonnull !37
  %_4.i.i56.not = icmp eq i64 %len.i55, 0
  br i1 %_4.i.i56.not, label %panic.i.i121.invoke, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbbe45dcd4d6bed07E.exit"

bb26:                                             ; preds = %bb26.lr.ph, %bb37
  %iter1.sroa.4.1160 = phi i64 [ %iter1.sroa.4.1157, %bb26.lr.ph ], [ %iter1.sroa.4.1, %bb37 ]
  %_0.i1.i.i.i159 = phi i64 [ %_0.i1.i.i.i156, %bb26.lr.ph ], [ %_0.i1.i.i.i, %bb37 ]
  %iter1.sroa.4.0158 = phi i64 [ %_30, %bb26.lr.ph ], [ %iter1.sroa.4.1160, %bb37 ]
  %_44 = icmp ult i64 %iter1.sroa.4.0158, 3
  br i1 %_44, label %bb28, label %panic12.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbbe45dcd4d6bed07E.exit": ; preds = %bb41.lr.ph
  %_4.i.i64.not = icmp eq i64 %len.i63, 0
  br i1 %_4.i.i64.not, label %panic.i.i121.invoke, label %bb45

bb42:                                             ; preds = %bb45, %bb45.1, %bb39.preheader
  %max_sum.sroa.0.0.lcssa = phi i32 [ -2147483648, %bb39.preheader ], [ %_64, %bb45 ], [ %spec.select129.1, %bb45.1 ]
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %msds, i64 noundef 4, i64 noundef 4)
          to label %bb52 unwind label %cleanup

bb52:                                             ; preds = %bb42
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msds)
; call alloc::raw_vec::RawVecInner<A>::deallocate
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %msis, i64 noundef 4, i64 noundef 4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msis)
  ret i32 %max_sum.sroa.0.0.lcssa

bb45:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbbe45dcd4d6bed07E.exit"
  %_66 = load i32, ptr %_6.i58, align 4, !noundef !37
  %_69 = load i32, ptr %_6.i66, align 4, !noundef !37
  %_65 = add i32 %_69, %_66
  %_72 = load i32, ptr %arr, align 8, !noundef !37
  %_64 = sub i32 %_65, %_72
  %_0.i.i.i50.not = icmp eq i32 %n, 1
  %spec.select127 = select i1 %_0.i.i.i50.not, i64 1, i64 2
  br i1 %_0.i.i.i50.not, label %bb42, label %bb41.1

bb41.1:                                           ; preds = %bb45
  %_4.i.i56.1.not = icmp eq i64 %len.i55, 1
  br i1 %_4.i.i56.1.not, label %panic.i.i121.invoke, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbbe45dcd4d6bed07E.exit.1"

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbbe45dcd4d6bed07E.exit.1": ; preds = %bb41.1
  %_4.i.i64.1.not = icmp eq i64 %len.i63, 1
  br i1 %_4.i.i64.1.not, label %panic.i.i121.invoke, label %bb45.1

bb45.1:                                           ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbbe45dcd4d6bed07E.exit.1"
  %_0.i.i59.1 = getelementptr inbounds nuw i8, ptr %_6.i58, i64 4
  %_66.1 = load i32, ptr %_0.i.i59.1, align 4, !noundef !37
  %_0.i.i67.1 = getelementptr inbounds nuw i8, ptr %_6.i66, i64 4
  %_69.1 = load i32, ptr %_0.i.i67.1, align 4, !noundef !37
  %_65.1 = add i32 %_69.1, %_66.1
  %15 = getelementptr inbounds nuw i8, ptr %arr, i64 4
  %_72.1 = load i32, ptr %15, align 4, !noundef !37
  %_64.1 = sub i32 %_65.1, %_72.1
  %spec.select129.1 = tail call i32 @llvm.smax.i32(i32 %_64, i32 %_64.1)
  %_0.i.i.i50.1 = icmp ult i64 %spec.select127, %_4
  br i1 %_0.i.i.i50.1, label %bb41.2, label %bb42

bb41.2:                                           ; preds = %bb45.1
  %_4.i.i56.2 = icmp ult i64 %spec.select127, %len.i55
  br i1 %_4.i.i56.2, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbbe45dcd4d6bed07E.exit.2", label %panic.i.i121.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbbe45dcd4d6bed07E.exit.2": ; preds = %bb41.2
  %_4.i.i64.2 = icmp ult i64 %spec.select127, %len.i63
  br i1 %_4.i.i64.2, label %panic12.invoke, label %panic.i.i121.invoke

bb28:                                             ; preds = %bb26
  %16 = getelementptr inbounds nuw i32, ptr %arr, i64 %_0.i1.i.i.i159
  %_43 = load i32, ptr %16, align 4, !noundef !37
  %_47 = icmp eq i64 %_0.i1.i.i.i159, 0
  br i1 %_47, label %bb29, label %panic12.invoke

bb29:                                             ; preds = %bb28
  %_42 = icmp sgt i32 %_43, %_45
  %len.i84 = load i64, ptr %10, align 8, !noalias !37, !noundef !37
  br i1 %_42, label %bb30, label %bb35

bb30:                                             ; preds = %bb29
  %_4.i.i85 = icmp ugt i64 %len.i84, 1
  br i1 %_4.i.i85, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbbe45dcd4d6bed07E.exit90", label %panic.i.i121.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbbe45dcd4d6bed07E.exit90": ; preds = %bb30
  %_4.i.i99 = icmp samesign ult i64 %_0.i1.i.i.i159, %len.i84
  br i1 %_4.i.i99, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfdac3c30e89ddd5aE.exit104", label %panic.i.i121.invoke

bb35:                                             ; preds = %bb29
  %_4.i.i92 = icmp samesign ult i64 %_0.i1.i.i.i159, %len.i84
  br i1 %_4.i.i92, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfdac3c30e89ddd5aE.exit97", label %panic.i.i121.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfdac3c30e89ddd5aE.exit97": ; preds = %bb35
  %_6.i94 = load ptr, ptr %9, align 8, !alias.scope !1667, !noalias !1670, !nonnull !37, !noundef !37
  %_0.i.i95 = getelementptr inbounds nuw i32, ptr %_6.i94, i64 %_0.i1.i.i.i159
  store i32 %_43, ptr %_0.i.i95, align 4
  br label %bb37

bb37:                                             ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfdac3c30e89ddd5aE.exit104", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfdac3c30e89ddd5aE.exit97"
  %_0.i.i.i.i.not.not = icmp eq i64 %iter1.sroa.4.1160, 0
  %_0.i1.i.i.i = add i64 %iter1.sroa.4.1160, -1
  %iter1.sroa.4.1 = tail call i64 @llvm.usub.sat.i64(i64 %iter1.sroa.4.1160, i64 1)
  br i1 %_0.i.i.i.i.not.not, label %bb39.preheader, label %bb26

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfdac3c30e89ddd5aE.exit104": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbbe45dcd4d6bed07E.exit90"
  %_6.i87 = load ptr, ptr %9, align 8, !alias.scope !1672, !noalias !1675, !nonnull !37, !noundef !37
  %_0.i.i88 = getelementptr inbounds nuw i8, ptr %_6.i87, i64 4
  %_48 = load i32, ptr %_0.i.i88, align 4, !noundef !37
  %_0.i.i102 = getelementptr inbounds nuw i32, ptr %_6.i87, i64 %_0.i1.i.i.i159
  %17 = add i32 %_48, %_43
  store i32 %17, ptr %_0.i.i102, align 4
  br label %bb37

bb10:                                             ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfdac3c30e89ddd5aE.exit"
  %18 = getelementptr inbounds nuw i8, ptr %arr, i64 4
  %_17 = load i32, ptr %18, align 4, !noundef !37
  %_16 = icmp sgt i32 %_17, %_6
  %len.i105 = load i64, ptr %5, align 8, !noalias !37, !noundef !37
  br i1 %_16, label %bb12, label %bb17

panic12.invoke:                                   ; preds = %bb19, %bb28, %bb26, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbbe45dcd4d6bed07E.exit.2", %bb9
  %19 = phi i64 [ %_30, %bb9 ], [ %spec.select127, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbbe45dcd4d6bed07E.exit.2" ], [ 2, %bb28 ], [ %_0.i1.i.i.i159, %bb26 ], [ 2, %bb19 ]
  %20 = phi ptr [ @alloc_a43e1d8c1f066a5c6d1f4066a83d6ee5, %bb9 ], [ @alloc_b0d2618b4e047bde2d09e863f242e3cd, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbbe45dcd4d6bed07E.exit.2" ], [ @alloc_3ea2d52115a210be7a6b65f9d6c5ea22, %bb28 ], [ @alloc_15850d54fe97227ba8dd5da114686983, %bb26 ], [ @alloc_ded4384f7577f488ca50795bd9641e49, %bb19 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %19, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %20) #26
          to label %panic12.cont unwind label %cleanup3

panic12.cont:                                     ; preds = %panic12.invoke
  unreachable

bb12:                                             ; preds = %bb10
  switch i64 %len.i105, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfdac3c30e89ddd5aE.exit125" [
    i64 0, label %panic.i.i121.invoke
    i64 1, label %panic.i.i121.invoke.loopexit196.fold.split
  ]

bb17:                                             ; preds = %bb10
  %_4.i.i113 = icmp samesign ugt i64 %len.i105, 1
  br i1 %_4.i.i113, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfdac3c30e89ddd5aE.exit118", label %panic.i.i121.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfdac3c30e89ddd5aE.exit118": ; preds = %bb17
  %_6.i115 = load ptr, ptr %4, align 8, !alias.scope !1677, !noalias !1680, !nonnull !37, !noundef !37
  %_0.i.i116 = getelementptr inbounds nuw i8, ptr %_6.i115, i64 4
  store i32 %_17, ptr %_0.i.i116, align 4
  br label %bb19

bb19:                                             ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfdac3c30e89ddd5aE.exit125", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfdac3c30e89ddd5aE.exit118"
  %_0.i.i.i.not = icmp eq i32 %n, 2
  br i1 %_0.i.i.i.not, label %bb9, label %panic12.invoke

panic.i.i121.invoke.loopexit196.fold.split:       ; preds = %bb12
  br label %panic.i.i121.invoke

panic.i.i121.invoke:                              ; preds = %bb17, %panic.i.i121.invoke.loopexit196.fold.split, %bb12, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbbe45dcd4d6bed07E.exit90", %bb35, %bb30, %_ZN5alloc3vec9from_elem17h8f8687e423452488E.exit34, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbbe45dcd4d6bed07E.exit", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbbe45dcd4d6bed07E.exit.1", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbbe45dcd4d6bed07E.exit.2", %bb41.lr.ph, %bb41.1, %bb41.2, %bb20
  %21 = phi i64 [ %_30, %bb20 ], [ 0, %bb41.lr.ph ], [ 1, %bb41.1 ], [ %spec.select127, %bb41.2 ], [ 0, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbbe45dcd4d6bed07E.exit" ], [ 1, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbbe45dcd4d6bed07E.exit.1" ], [ %spec.select127, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbbe45dcd4d6bed07E.exit.2" ], [ 0, %_ZN5alloc3vec9from_elem17h8f8687e423452488E.exit34 ], [ %_0.i1.i.i.i159, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbbe45dcd4d6bed07E.exit90" ], [ %_0.i1.i.i.i159, %bb35 ], [ 1, %bb30 ], [ 1, %bb17 ], [ 0, %bb12 ], [ 1, %panic.i.i121.invoke.loopexit196.fold.split ]
  %22 = phi i64 [ %len.i40, %bb20 ], [ %len.i55, %bb41.lr.ph ], [ %len.i55, %bb41.1 ], [ %len.i55, %bb41.2 ], [ %len.i63, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbbe45dcd4d6bed07E.exit" ], [ %len.i63, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbbe45dcd4d6bed07E.exit.1" ], [ %len.i63, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbbe45dcd4d6bed07E.exit.2" ], [ %len.i, %_ZN5alloc3vec9from_elem17h8f8687e423452488E.exit34 ], [ %len.i84, %bb30 ], [ %len.i84, %bb35 ], [ %len.i84, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbbe45dcd4d6bed07E.exit90" ], [ %len.i105, %bb12 ], [ %len.i105, %panic.i.i121.invoke.loopexit196.fold.split ], [ %len.i105, %bb17 ]
  %23 = phi ptr [ @alloc_d307679156cea0526a4da0d5e5cc5304, %bb20 ], [ @alloc_6f34f36b13b9729523775e2a07624753, %bb41.lr.ph ], [ @alloc_6f34f36b13b9729523775e2a07624753, %bb41.1 ], [ @alloc_6f34f36b13b9729523775e2a07624753, %bb41.2 ], [ @alloc_cf4897ae80a9914008614410d99e729b, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbbe45dcd4d6bed07E.exit" ], [ @alloc_cf4897ae80a9914008614410d99e729b, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbbe45dcd4d6bed07E.exit.1" ], [ @alloc_cf4897ae80a9914008614410d99e729b, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbbe45dcd4d6bed07E.exit.2" ], [ @alloc_1238272fdef0c99ba1dac010e6d59982, %_ZN5alloc3vec9from_elem17h8f8687e423452488E.exit34 ], [ @alloc_1393f595ef290b77fa7fe2fcb2332695, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbbe45dcd4d6bed07E.exit90" ], [ @alloc_bfd0eb97786136fa52dced7bdfafdd7d, %bb35 ], [ @alloc_83ce222f45769c08900ddf3fc097d762, %bb30 ], [ @alloc_25b7f71928f721eb1ff2487ab577a924, %bb17 ], [ @alloc_89c39a21526fb2838c96210c5b9123ab, %bb12 ], [ @alloc_816f494cf9215d52b7e358927d07f285, %panic.i.i121.invoke.loopexit196.fold.split ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %21, i64 noundef range(i64 0, 2305843009213693952) %22, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %23) #25
          to label %panic.i.i121.cont unwind label %cleanup3

panic.i.i121.cont:                                ; preds = %panic.i.i121.invoke
  unreachable

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfdac3c30e89ddd5aE.exit125": ; preds = %bb12
  %_6.i108 = load ptr, ptr %4, align 8, !alias.scope !1682, !noalias !1685, !nonnull !37, !noundef !37
  %_22 = load i32, ptr %_6.i108, align 4, !noundef !37
  %_0.i.i123 = getelementptr inbounds nuw i8, ptr %_6.i108, i64 4
  %24 = add i32 %_22, %_17
  store i32 %24, ptr %_0.i.i123, align 4
  br label %bb19

terminate:                                        ; preds = %cleanup3, %bb55
  %25 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #27
  unreachable

bb56:                                             ; preds = %bb55
  resume { ptr, i32 } %.pn
}
