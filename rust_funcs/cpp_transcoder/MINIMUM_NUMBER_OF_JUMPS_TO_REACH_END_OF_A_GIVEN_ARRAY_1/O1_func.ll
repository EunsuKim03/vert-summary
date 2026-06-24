define noundef i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_16.i.i = alloca [24 x i8], align 8
  %jumps = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %jumps)
  %n2 = sext i32 %n to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1638)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1641)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1644
; call alloc::raw_vec::RawVecInner<A>::try_allocate_in
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_16.i.i, i64 noundef %n2, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4), !noalias !1644
  %_17.i.i = load i64, ptr %_16.i.i, align 8, !range !1031, !noalias !1644, !noundef !37
  %1 = trunc nuw i64 %_17.i.i to i1
  %2 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 8
  %err.0.i.i = load i64, ptr %2, align 8, !range !1032, !noalias !1644, !noundef !37
  %3 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 16
  br i1 %1, label %bb14.i.i, label %_ZN5alloc3vec9from_elem17h05ba91f93e722f7aE.exit, !prof !1033

bb14.i.i:                                         ; preds = %start
  %err.1.i.i = load i64, ptr %3, align 8, !noalias !1644
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #26, !noalias !1644
  unreachable

_ZN5alloc3vec9from_elem17h05ba91f93e722f7aE.exit: ; preds = %start
  %res.1.i.i = load ptr, ptr %3, align 8, !noalias !1644, !nonnull !37, !noundef !37
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1644
  store i64 %err.0.i.i, ptr %jumps, align 8, !alias.scope !1644
  %4 = getelementptr inbounds nuw i8, ptr %jumps, i64 8
  store ptr %res.1.i.i, ptr %4, align 8, !alias.scope !1644
  %5 = getelementptr inbounds nuw i8, ptr %jumps, i64 16
  store i64 %n2, ptr %5, align 8, !alias.scope !1644
  %_5 = icmp eq i32 %n, 0
  %6 = and i64 %0, 4294967295
  %_6 = icmp eq i64 %6, 0
  %or.cond = select i1 %_5, i1 true, i1 %_6
  br i1 %or.cond, label %bb33, label %bb5

bb5:                                              ; preds = %_ZN5alloc3vec9from_elem17h05ba91f93e722f7aE.exit
  store i32 0, ptr %res.1.i.i, align 4
  %_0.i.i.i73 = icmp ugt i32 %n, 1
  br i1 %_0.i.i.i73, label %bb11.peel, label %bb12

bb11.peel:                                        ; preds = %bb5
  %len.i9.peel = load i64, ptr %5, align 8, !alias.scope !1645, !noalias !1648, !noundef !37
  %_4.i.i10.peel = icmp ugt i64 %len.i9.peel, 1
  br i1 %_4.i.i10.peel, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h98eb72256816576bE.exit14.peel", label %panic.i.i38.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h98eb72256816576bE.exit14.peel": ; preds = %bb11.peel
  %_6.i12.peel = load ptr, ptr %4, align 8, !alias.scope !1645, !noalias !1648, !nonnull !37, !noundef !37
  %_0.i.i.peel = getelementptr inbounds nuw i8, ptr %_6.i12.peel, i64 4
  store i32 2147483647, ptr %_0.i.i.peel, align 4
  %len.i29.peel = load i64, ptr %5, align 8
  %_6.i32.peel = load ptr, ptr %4, align 8, !nonnull !37
  %sext.mask = and i64 %0, 4294967295
  %_26.not.peel = icmp eq i64 %sext.mask, 0
  br i1 %_26.not.peel, label %bb29.peel, label %bb19.peel

bb19.peel:                                        ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h98eb72256816576bE.exit14.peel"
  %_4.i.i30.not.peel = icmp eq i64 %len.i29.peel, 0
  br i1 %_4.i.i30.not.peel, label %panic.i.i38.invoke, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h408b0c0fe04f5a90E.exit35.peel"

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h408b0c0fe04f5a90E.exit35.peel": ; preds = %bb19.peel
  %_32.peel = load i32, ptr %_6.i32.peel, align 4, !noundef !37
  %_31.not.peel = icmp eq i32 %_32.peel, 2147483647
  br i1 %_31.not.peel, label %bb29.peel, label %bb21.peel

bb21.peel:                                        ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h408b0c0fe04f5a90E.exit35.peel"
  %_4.i.i37.peel = icmp ugt i64 %len.i29.peel, 1
  br i1 %_4.i.i37.peel, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h408b0c0fe04f5a90E.exit42.peel", label %panic.i.i38.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h408b0c0fe04f5a90E.exit42.peel": ; preds = %bb21.peel
  %_0.i.i40.peel = getelementptr inbounds nuw i8, ptr %_6.i32.peel, i64 4
  %_36.peel = load i32, ptr %_0.i.i40.peel, align 4, !noundef !37
  %_39.peel = add i32 %_32.peel, 1
  %x.y.i.peel = tail call noundef i32 @llvm.smin.i32(i32 %_36.peel, i32 %_39.peel)
  store i32 %x.y.i.peel, ptr %_0.i.i40.peel, align 4
  br label %bb29.peel

bb29.peel:                                        ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h98eb72256816576bE.exit14.peel", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h408b0c0fe04f5a90E.exit35.peel", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h408b0c0fe04f5a90E.exit42.peel"
  %_0.i.i.i.peel.not = icmp eq i32 %n, 2
  %spec.select.peel = select i1 %_0.i.i.i.peel.not, i64 2, i64 3
  br i1 %_0.i.i.i.peel.not, label %bb12, label %bb11.peel107

bb11.peel107:                                     ; preds = %bb29.peel
  %len.i9.peel108 = load i64, ptr %5, align 8, !alias.scope !1645, !noalias !1648, !noundef !37
  %_4.i.i10.peel109 = icmp ugt i64 %len.i9.peel108, 2
  br i1 %_4.i.i10.peel109, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h98eb72256816576bE.exit14.peel110", label %panic.i.i38.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h98eb72256816576bE.exit14.peel110": ; preds = %bb11.peel107
  %_6.i12.peel111 = load ptr, ptr %4, align 8, !alias.scope !1645, !noalias !1648, !nonnull !37, !noundef !37
  %_0.i.i.peel112 = getelementptr inbounds nuw i8, ptr %_6.i12.peel111, i64 8
  store i32 2147483647, ptr %_0.i.i.peel112, align 4
  %len.i29.peel113 = load i64, ptr %5, align 8
  %_6.i32.peel114 = load ptr, ptr %4, align 8, !nonnull !37
  %7 = and i64 %0, 4294967294
  %_26.not.peel117 = icmp eq i64 %7, 0
  br i1 %_26.not.peel117, label %bb18.1.peel125, label %bb19.peel118

bb19.peel118:                                     ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h98eb72256816576bE.exit14.peel110"
  %_4.i.i30.not.peel119 = icmp eq i64 %len.i29.peel113, 0
  br i1 %_4.i.i30.not.peel119, label %panic.i.i38.invoke, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h408b0c0fe04f5a90E.exit35.peel120"

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h408b0c0fe04f5a90E.exit35.peel120": ; preds = %bb19.peel118
  %_32.peel121 = load i32, ptr %_6.i32.peel114, align 4, !noundef !37
  %_31.not.peel122 = icmp eq i32 %_32.peel121, 2147483647
  br i1 %_31.not.peel122, label %bb18.1.peel125, label %bb21.peel136

bb18.1.peel125:                                   ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h98eb72256816576bE.exit14.peel110", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h408b0c0fe04f5a90E.exit35.peel120"
  %_28.1.peel127 = ashr i64 %0, 32
  %_27.1.peel128 = add nsw i64 %_28.1.peel127, 1
  %_26.not.1.peel129 = icmp ult i64 %_27.1.peel128, 2
  br i1 %_26.not.1.peel129, label %bb29.peel146, label %bb19.1.peel130

bb19.1.peel130:                                   ; preds = %bb18.1.peel125
  %_4.i.i30.1.peel131 = icmp ugt i64 %len.i29.peel113, 1
  br i1 %_4.i.i30.1.peel131, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h408b0c0fe04f5a90E.exit35.1.peel132", label %panic.i.i38.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h408b0c0fe04f5a90E.exit35.1.peel132": ; preds = %bb19.1.peel130
  %_0.i.i33.1.peel133 = getelementptr inbounds nuw i8, ptr %_6.i32.peel114, i64 4
  %_32.1.peel134 = load i32, ptr %_0.i.i33.1.peel133, align 4, !noundef !37
  %_31.not.1.peel135 = icmp eq i32 %_32.1.peel134, 2147483647
  br i1 %_31.not.1.peel135, label %bb29.peel146, label %bb21.peel136

bb21.peel136:                                     ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h408b0c0fe04f5a90E.exit35.1.peel132", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h408b0c0fe04f5a90E.exit35.peel120"
  %_32.lcssa.peel137 = phi i32 [ %_32.peel121, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h408b0c0fe04f5a90E.exit35.peel120" ], [ %_32.1.peel134, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h408b0c0fe04f5a90E.exit35.1.peel132" ]
  %_4.i.i37.peel138 = icmp ugt i64 %len.i29.peel113, 2
  br i1 %_4.i.i37.peel138, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h408b0c0fe04f5a90E.exit42.peel139", label %panic.i.i38.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h408b0c0fe04f5a90E.exit42.peel139": ; preds = %bb21.peel136
  %_0.i.i40.peel140 = getelementptr inbounds nuw i8, ptr %_6.i32.peel114, i64 8
  %_36.peel141 = load i32, ptr %_0.i.i40.peel140, align 4, !noundef !37
  %_39.peel142 = add i32 %_32.lcssa.peel137, 1
  %x.y.i.peel143 = tail call noundef i32 @llvm.smin.i32(i32 %_36.peel141, i32 %_39.peel142)
  store i32 %x.y.i.peel143, ptr %_0.i.i40.peel140, align 4
  br label %bb29.peel146

bb29.peel146:                                     ; preds = %bb18.1.peel125, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h408b0c0fe04f5a90E.exit35.1.peel132", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h408b0c0fe04f5a90E.exit42.peel139"
  %_0.i.i.i.peel147 = icmp ult i64 %spec.select.peel, %n2
  %_0.i1.i.i.peel148 = zext i1 %_0.i.i.i.peel147 to i64
  %spec.select.peel149 = add nuw nsw i64 %spec.select.peel, %_0.i1.i.i.peel148
  br i1 %_0.i.i.i.peel147, label %bb11.preheader.peel.newph, label %bb12

bb11.preheader.peel.newph:                        ; preds = %bb29.peel146
  %sext = shl i64 %0, 32
  %_28 = ashr exact i64 %sext, 32
  %_28.1 = ashr i64 %0, 32
  %_27.1 = add nsw i64 %_28.1, 1
  br label %bb11

cleanup:                                          ; preds = %panic.i.i38.invoke, %bb17.2
  %8 = landingpad { ptr, i32 }
          cleanup
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %jumps, i64 noundef 4, i64 noundef 4)
          to label %bb35 unwind label %terminate

bb11:                                             ; preds = %bb11.preheader.peel.newph, %bb29
  %spec.select77 = phi i64 [ %spec.select, %bb29 ], [ %spec.select.peel149, %bb11.preheader.peel.newph ]
  %iter.sroa.0.076 = phi i64 [ %spec.select77, %bb29 ], [ %spec.select.peel, %bb11.preheader.peel.newph ]
  %len.i9 = load i64, ptr %5, align 8, !alias.scope !1645, !noalias !1648, !noundef !37
  %_4.i.i10 = icmp ult i64 %iter.sroa.0.076, %len.i9
  br i1 %_4.i.i10, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h98eb72256816576bE.exit14", label %panic.i.i38.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h98eb72256816576bE.exit14": ; preds = %bb11
  %_6.i12 = load ptr, ptr %4, align 8, !alias.scope !1645, !noalias !1648, !nonnull !37, !noundef !37
  %_0.i.i = getelementptr inbounds nuw i32, ptr %_6.i12, i64 %iter.sroa.0.076
  store i32 2147483647, ptr %_0.i.i, align 4
  %len.i29 = load i64, ptr %5, align 8
  %_6.i32 = load ptr, ptr %4, align 8, !nonnull !37
  %_26.not = icmp ugt i64 %iter.sroa.0.076, %_28
  br i1 %_26.not, label %bb18.1, label %bb19

bb12:                                             ; preds = %bb29.peel, %bb29.peel146, %bb29, %bb5
  %_47 = add nsw i64 %n2, -1
  %len.i15 = load i64, ptr %5, align 8, !alias.scope !1650, !noalias !1653, !noundef !37
  %_4.i.i16 = icmp ult i64 %_47, %len.i15
  br i1 %_4.i.i16, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h408b0c0fe04f5a90E.exit", label %panic.i.i38.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h408b0c0fe04f5a90E.exit": ; preds = %bb12
  %_6.i18 = load ptr, ptr %4, align 8, !alias.scope !1650, !noalias !1653, !nonnull !37, !noundef !37
  %_0.i.i19 = getelementptr inbounds nuw i32, ptr %_6.i18, i64 %_47
  %9 = load i32, ptr %_0.i.i19, align 4, !noundef !37
  br label %bb33

bb33:                                             ; preds = %_ZN5alloc3vec9from_elem17h05ba91f93e722f7aE.exit, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h408b0c0fe04f5a90E.exit"
  %_0.sroa.0.0 = phi i32 [ %9, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h408b0c0fe04f5a90E.exit" ], [ 2147483647, %_ZN5alloc3vec9from_elem17h05ba91f93e722f7aE.exit ]
; call alloc::raw_vec::RawVecInner<A>::deallocate
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %jumps, i64 noundef 4, i64 noundef 4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %jumps)
  ret i32 %_0.sroa.0.0

bb29:                                             ; preds = %bb28.1, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h408b0c0fe04f5a90E.exit42"
  %_0.i.i.i = icmp ult i64 %spec.select77, %n2
  %_0.i1.i.i = zext i1 %_0.i.i.i to i64
  %spec.select = add nuw i64 %spec.select77, %_0.i1.i.i
  br i1 %_0.i.i.i, label %bb11, label %bb12, !llvm.loop !1655

unreachable:                                      ; preds = %bb17.2
  unreachable

bb19:                                             ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h98eb72256816576bE.exit14"
  %_4.i.i30.not = icmp eq i64 %len.i29, 0
  br i1 %_4.i.i30.not, label %panic.i.i38.invoke, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h408b0c0fe04f5a90E.exit35"

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h408b0c0fe04f5a90E.exit35": ; preds = %bb19
  %_32 = load i32, ptr %_6.i32, align 4, !noundef !37
  %_31.not = icmp eq i32 %_32, 2147483647
  br i1 %_31.not, label %bb18.1, label %bb21

bb18.1:                                           ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h98eb72256816576bE.exit14", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h408b0c0fe04f5a90E.exit35"
  %_26.not.1 = icmp ugt i64 %iter.sroa.0.076, %_27.1
  br i1 %_26.not.1, label %bb28.1, label %bb19.1

bb19.1:                                           ; preds = %bb18.1
  %_4.i.i30.1 = icmp ugt i64 %len.i29, 1
  br i1 %_4.i.i30.1, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h408b0c0fe04f5a90E.exit35.1", label %panic.i.i38.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h408b0c0fe04f5a90E.exit35.1": ; preds = %bb19.1
  %_0.i.i33.1 = getelementptr inbounds nuw i8, ptr %_6.i32, i64 4
  %_32.1 = load i32, ptr %_0.i.i33.1, align 4, !noundef !37
  %_31.not.1 = icmp eq i32 %_32.1, 2147483647
  br i1 %_31.not.1, label %bb28.1, label %bb21

bb28.1:                                           ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h408b0c0fe04f5a90E.exit35.1", %bb18.1
  %_0.i.i.i24.192.not = icmp eq i64 %iter.sroa.0.076, 2
  br i1 %_0.i.i.i24.192.not, label %bb29, label %bb17.2

bb17.2:                                           ; preds = %bb28.1
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_d2cd035e3faf4f5d69b15d817ff26c8a) #26
          to label %unreachable unwind label %cleanup

bb21:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h408b0c0fe04f5a90E.exit35.1", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h408b0c0fe04f5a90E.exit35"
  %_32.lcssa = phi i32 [ %_32, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h408b0c0fe04f5a90E.exit35" ], [ %_32.1, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h408b0c0fe04f5a90E.exit35.1" ]
  %_4.i.i37 = icmp ult i64 %iter.sroa.0.076, %len.i29
  br i1 %_4.i.i37, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h408b0c0fe04f5a90E.exit42", label %panic.i.i38.invoke

panic.i.i38.invoke:                               ; preds = %bb11.peel, %bb19.peel, %bb21.peel, %bb11.peel107, %bb19.peel118, %bb19.1.peel130, %bb21.peel136, %bb21, %bb19, %bb19.1, %bb11, %bb12
  %10 = phi i64 [ %_47, %bb12 ], [ 1, %bb11.peel ], [ 0, %bb19.peel ], [ 1, %bb21.peel ], [ 2, %bb11.peel107 ], [ 0, %bb19.peel118 ], [ 1, %bb19.1.peel130 ], [ 2, %bb21.peel136 ], [ %iter.sroa.0.076, %bb11 ], [ 0, %bb19 ], [ 1, %bb19.1 ], [ %iter.sroa.0.076, %bb21 ]
  %11 = phi i64 [ %len.i15, %bb12 ], [ %len.i9.peel, %bb11.peel ], [ %len.i29.peel, %bb19.peel ], [ %len.i29.peel, %bb21.peel ], [ %len.i9.peel108, %bb11.peel107 ], [ %len.i29.peel113, %bb19.peel118 ], [ %len.i29.peel113, %bb19.1.peel130 ], [ %len.i29.peel113, %bb21.peel136 ], [ %len.i9, %bb11 ], [ %len.i29, %bb19 ], [ %len.i29, %bb19.1 ], [ %len.i29, %bb21 ]
  %12 = phi ptr [ @alloc_c1a85876da51583727a8658cc311a67e, %bb12 ], [ @alloc_dd22ba1095dbe895d2e3af478ef230af, %bb11.peel ], [ @alloc_eec47f9a74e5a91fa4ba9f3c0e23aea6, %bb19.peel ], [ @alloc_d4de831250d3fb2044f8fa96b653be93, %bb21.peel ], [ @alloc_dd22ba1095dbe895d2e3af478ef230af, %bb11.peel107 ], [ @alloc_eec47f9a74e5a91fa4ba9f3c0e23aea6, %bb19.peel118 ], [ @alloc_eec47f9a74e5a91fa4ba9f3c0e23aea6, %bb19.1.peel130 ], [ @alloc_d4de831250d3fb2044f8fa96b653be93, %bb21.peel136 ], [ @alloc_dd22ba1095dbe895d2e3af478ef230af, %bb11 ], [ @alloc_eec47f9a74e5a91fa4ba9f3c0e23aea6, %bb19 ], [ @alloc_eec47f9a74e5a91fa4ba9f3c0e23aea6, %bb19.1 ], [ @alloc_d4de831250d3fb2044f8fa96b653be93, %bb21 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %10, i64 noundef range(i64 0, 2305843009213693952) %11, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %12) #25
          to label %panic.i.i38.cont unwind label %cleanup

panic.i.i38.cont:                                 ; preds = %panic.i.i38.invoke
  unreachable

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h408b0c0fe04f5a90E.exit42": ; preds = %bb21
  %_0.i.i40 = getelementptr inbounds nuw i32, ptr %_6.i32, i64 %iter.sroa.0.076
  %_36 = load i32, ptr %_0.i.i40, align 4, !noundef !37
  %_39 = add i32 %_32.lcssa, 1
  %x.y.i = tail call noundef i32 @llvm.smin.i32(i32 %_36, i32 %_39)
  store i32 %x.y.i, ptr %_0.i.i40, align 4
  br label %bb29

terminate:                                        ; preds = %cleanup
  %13 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #27
  unreachable

bb35:                                             ; preds = %cleanup
  resume { ptr, i32 } %8
}
