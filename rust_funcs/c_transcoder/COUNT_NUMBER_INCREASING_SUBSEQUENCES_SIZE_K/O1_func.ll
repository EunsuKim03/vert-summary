define noundef i32 @f_gold(i64 %0, i32 noundef %n, i32 noundef %k) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_16.i.i = alloca [24 x i8], align 8
  %_5 = alloca [24 x i8], align 8
  %dp = alloca [24 x i8], align 8
  %arr = alloca [8 x i8], align 8
  store i64 %0, ptr %arr, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %dp)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_5)
  %_6 = sext i32 %n to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1675)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1678)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1681
; call alloc::raw_vec::RawVecInner<A>::try_allocate_in
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_16.i.i, i64 noundef %_6, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4), !noalias !1681
  %_17.i.i = load i64, ptr %_16.i.i, align 8, !range !1034, !noalias !1681, !noundef !15
  %1 = trunc nuw i64 %_17.i.i to i1
  %2 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 8
  %err.0.i.i = load i64, ptr %2, align 8, !range !1035, !noalias !1681, !noundef !15
  %3 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 16
  br i1 %1, label %bb14.i.i, label %_ZN5alloc3vec9from_elem17hc104ac0eae9867acE.exit, !prof !1036

bb14.i.i:                                         ; preds = %start
  %err.1.i.i = load i64, ptr %3, align 8, !noalias !1681
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #28, !noalias !1681
  unreachable

_ZN5alloc3vec9from_elem17hc104ac0eae9867acE.exit: ; preds = %start
  %res.1.i.i = load ptr, ptr %3, align 8, !noalias !1681, !nonnull !15, !noundef !15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1681
  store i64 %err.0.i.i, ptr %_5, align 8, !alias.scope !1681
  %4 = getelementptr inbounds nuw i8, ptr %_5, i64 8
  store ptr %res.1.i.i, ptr %4, align 8, !alias.scope !1681
  %5 = getelementptr inbounds nuw i8, ptr %_5, i64 16
  store i64 %_6, ptr %5, align 8, !alias.scope !1681
  %_7 = sext i32 %k to i64
; call <T as alloc::vec::spec_from_elem::SpecFromElem>::from_elem
  call void @"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h35ba97a90fd3be5bE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %dp, ptr noalias noundef align 8 captures(address) dereferenceable(24) %_5, i64 noundef %_7)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_5)
  %_0.i.i.i156 = icmp sgt i32 %n, 0
  br i1 %_0.i.i.i156, label %bb7.lr.ph, label %bb12.preheader

bb7.lr.ph:                                        ; preds = %_ZN5alloc3vec9from_elem17hc104ac0eae9867acE.exit
  %6 = getelementptr inbounds nuw i8, ptr %dp, i64 16
  %7 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  %wide.trip.count = zext nneg i32 %n to i64
  br label %bb7

cleanup:                                          ; preds = %panic6.invoke, %panic.i.i98.invoke
  %8 = landingpad { ptr, i32 }
          cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hf0de684cfbd338f1E"(ptr noalias noundef align 8 dereferenceable(24) %dp) #30
          to label %bb46 unwind label %terminate

bb12.preheader:                                   ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h99b866cea347ba88E.exit102", %_ZN5alloc3vec9from_elem17hc104ac0eae9867acE.exit
  %_0.i.i.i19167 = icmp sgt i32 %k, 1
  br i1 %_0.i.i.i19167, label %bb17.preheader.lr.ph, label %bb15

bb17.preheader.lr.ph:                             ; preds = %bb12.preheader
  %9 = getelementptr inbounds nuw i8, ptr %dp, i64 16
  %10 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  %11 = add i32 %n, 1
  %12 = sext i32 %n to i64
  %13 = add nsw i32 %k, -1
  %wide.trip.count263 = zext i32 %13 to i64
  %wide.trip.count256 = zext i32 %11 to i64
  br label %bb17.preheader

bb7:                                              ; preds = %bb7.lr.ph, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h99b866cea347ba88E.exit102"
  %indvars.iv228 = phi i64 [ 0, %bb7.lr.ph ], [ %indvars.iv.next229, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h99b866cea347ba88E.exit102" ]
  %len.i = load i64, ptr %6, align 8, !alias.scope !1682, !noalias !1685, !noundef !15
  %_4.i.i15.not = icmp eq i64 %len.i, 0
  br i1 %_4.i.i15.not, label %panic.i.i98.invoke, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e19451fd4f3edf7E.exit"

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e19451fd4f3edf7E.exit": ; preds = %bb7
  %_6.i = load ptr, ptr %7, align 8, !alias.scope !1682, !noalias !1685, !nonnull !15, !noundef !15
  %14 = getelementptr inbounds nuw i8, ptr %_6.i, i64 16
  %len.i96 = load i64, ptr %14, align 8, !alias.scope !1687, !noalias !1690, !noundef !15
  %_4.i.i97 = icmp ugt i64 %len.i96, %indvars.iv228
  br i1 %_4.i.i97, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h99b866cea347ba88E.exit102", label %panic.i.i98.invoke

bb12.loopexit:                                    ; preds = %bb17.loopexit, %bb17.preheader
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %indvars.iv.next235 = add nuw nsw i64 %indvars.iv234, 1
  %indvars.iv.next249 = add nuw nsw i64 %indvars.iv248, 1
  %exitcond264.not = icmp eq i64 %indvars.iv.next235, %wide.trip.count263
  br i1 %exitcond264.not, label %bb15, label %bb17.preheader

bb17.preheader:                                   ; preds = %bb17.preheader.lr.ph, %bb12.loopexit
  %indvars.iv248 = phi i64 [ 2, %bb17.preheader.lr.ph ], [ %indvars.iv.next249, %bb12.loopexit ]
  %indvars.iv234 = phi i64 [ 0, %bb17.preheader.lr.ph ], [ %indvars.iv.next235, %bb12.loopexit ]
  %indvars.iv = phi i64 [ 1, %bb17.preheader.lr.ph ], [ %indvars.iv.next, %bb12.loopexit ]
  %_0.i.i.i44163 = icmp slt i64 %indvars.iv, %12
  br i1 %_0.i.i.i44163, label %bb19.lr.ph, label %bb12.loopexit

bb19.lr.ph:                                       ; preds = %bb17.preheader
  %15 = add nsw i64 %indvars.iv, -1
  %_49 = icmp samesign ugt i64 %indvars.iv234, 1
  %16 = getelementptr inbounds nuw i32, ptr %arr, i64 %indvars.iv234
  %indvars.iv.next237 = add nuw nsw i64 %indvars.iv234, 1
  %_49.1 = icmp ne i64 %indvars.iv234, 0
  %17 = getelementptr inbounds nuw i32, ptr %arr, i64 %indvars.iv.next237
  br label %bb19

bb15:                                             ; preds = %bb12.loopexit, %bb12.preheader
  %_62 = add i32 %k, -1
  %_0.i.i.i26171 = icmp slt i32 %_62, %n
  %18 = zext i1 %_0.i.i.i26171 to i32
  %spec.select106172 = add nsw i32 %_62, %18
  br i1 %_0.i.i.i26171, label %bb40.lr.ph, label %bb41

bb40.lr.ph:                                       ; preds = %bb15
  %_72 = sext i32 %_62 to i64
  %19 = getelementptr inbounds nuw i8, ptr %dp, i64 16
  %len.i30 = load i64, ptr %19, align 8, !alias.scope !1692, !noalias !1695, !noundef !15
  %_4.i.i31 = icmp ugt i64 %len.i30, %_72
  %20 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  %_6.i33 = load ptr, ptr %20, align 8, !nonnull !15
  %_0.i.i = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i33, i64 %_72
  %21 = getelementptr inbounds nuw i8, ptr %_0.i.i, i64 8
  br i1 %_4.i.i31, label %bb40.lr.ph.split, label %panic.i.i98.invoke

bb40.lr.ph.split:                                 ; preds = %bb40.lr.ph
  %22 = getelementptr inbounds nuw i8, ptr %_0.i.i, i64 16
  %len.i35 = load i64, ptr %22, align 8, !alias.scope !1697, !noalias !1700, !noundef !15
  br label %bb40

bb40:                                             ; preds = %bb40.lr.ph.split, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h74ba322727acbefbE.exit"
  %spec.select106175 = phi i32 [ %spec.select106172, %bb40.lr.ph.split ], [ %spec.select106, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h74ba322727acbefbE.exit" ]
  %sum.sroa.0.0174 = phi i32 [ 0, %bb40.lr.ph.split ], [ %23, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h74ba322727acbefbE.exit" ]
  %iter4.sroa.0.0173 = phi i32 [ %_62, %bb40.lr.ph.split ], [ %spec.select106175, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h74ba322727acbefbE.exit" ]
  %_73 = sext i32 %iter4.sroa.0.0173 to i64
  %_4.i.i36 = icmp ugt i64 %len.i35, %_73
  br i1 %_4.i.i36, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h74ba322727acbefbE.exit", label %panic.i.i98.invoke

bb41:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h74ba322727acbefbE.exit", %bb15
  %sum.sroa.0.0.lcssa = phi i32 [ 0, %bb15 ], [ %23, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h74ba322727acbefbE.exit" ]
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hf0de684cfbd338f1E"(ptr noalias noundef align 8 dereferenceable(24) %dp)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %dp)
  ret i32 %sum.sroa.0.0.lcssa

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h74ba322727acbefbE.exit": ; preds = %bb40
  %_6.i38 = load ptr, ptr %21, align 8, !alias.scope !1697, !noalias !1700, !nonnull !15, !noundef !15
  %_0.i.i39 = getelementptr inbounds nuw i32, ptr %_6.i38, i64 %_73
  %_68 = load i32, ptr %_0.i.i39, align 4, !noundef !15
  %23 = add i32 %_68, %sum.sroa.0.0174
  %_0.i.i.i26 = icmp slt i32 %spec.select106175, %n
  %24 = zext i1 %_0.i.i.i26 to i32
  %spec.select106 = add nsw i32 %spec.select106175, %24
  br i1 %_0.i.i.i26, label %bb40, label %bb41

bb17.loopexit:                                    ; preds = %bb36, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h99b866cea347ba88E.exit"
  %indvars.iv.next239 = add nuw nsw i64 %indvars.iv238, 1
  %indvars.iv.next251 = add nuw nsw i64 %indvars.iv250, 1
  %exitcond257.not = icmp eq i64 %indvars.iv.next251, %wide.trip.count256
  br i1 %exitcond257.not, label %bb12.loopexit, label %bb19

bb19:                                             ; preds = %bb19.lr.ph, %bb17.loopexit
  %indvars.iv250 = phi i64 [ %indvars.iv248, %bb19.lr.ph ], [ %indvars.iv.next251, %bb17.loopexit ]
  %indvars.iv238 = phi i64 [ %indvars.iv, %bb19.lr.ph ], [ %indvars.iv.next239, %bb17.loopexit ]
  %len.i48 = load i64, ptr %9, align 8, !alias.scope !1702, !noalias !1705, !noundef !15
  %_4.i.i49 = icmp ugt i64 %len.i48, %indvars.iv
  br i1 %_4.i.i49, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e19451fd4f3edf7E.exit54", label %panic.i.i98.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e19451fd4f3edf7E.exit54": ; preds = %bb19
  %_6.i51 = load ptr, ptr %10, align 8, !alias.scope !1702, !noalias !1705, !nonnull !15, !noundef !15
  %_0.i.i52 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i51, i64 %indvars.iv
  %25 = getelementptr inbounds nuw i8, ptr %_0.i.i52, i64 16
  %len.i55 = load i64, ptr %25, align 8, !alias.scope !1707, !noalias !1710, !noundef !15
  %_4.i.i56 = icmp ugt i64 %len.i55, %indvars.iv238
  br i1 %_4.i.i56, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h99b866cea347ba88E.exit", label %panic.i.i98.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h99b866cea347ba88E.exit": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e19451fd4f3edf7E.exit54"
  %26 = getelementptr inbounds nuw i8, ptr %_0.i.i52, i64 8
  %_6.i58 = load ptr, ptr %26, align 8, !alias.scope !1707, !noalias !1710, !nonnull !15, !noundef !15
  %_0.i.i59 = getelementptr inbounds nuw i32, ptr %_6.i58, i64 %indvars.iv238
  store i32 0, ptr %_0.i.i59, align 4
  %_0.i.i.i64159.not = icmp samesign ugt i64 %indvars.iv, %indvars.iv238
  br i1 %_0.i.i.i64159.not, label %bb17.loopexit, label %bb26.lr.ph

bb26.lr.ph:                                       ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h99b866cea347ba88E.exit"
  %_51 = icmp samesign ugt i64 %indvars.iv238, 1
  %27 = getelementptr inbounds nuw i32, ptr %arr, i64 %indvars.iv238
  %brmerge = select i1 %_49, i1 true, i1 %_51
  br i1 %brmerge, label %panic6.invoke, label %bb29

bb29:                                             ; preds = %bb26.lr.ph
  %_47 = load i32, ptr %16, align 4, !noundef !15
  %_50 = load i32, ptr %27, align 4, !noundef !15
  %_46 = icmp slt i32 %_47, %_50
  br i1 %_46, label %bb30, label %bb36

panic6.invoke:                                    ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h99b866cea347ba88E.exit95.1", %bb29.1, %bb26.1, %bb26.lr.ph
  %indvars.iv236.lcssa = phi i64 [ %indvars.iv234, %bb26.lr.ph ], [ %indvars.iv.next237, %bb26.1 ], [ 2, %bb29.1 ], [ 2, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h99b866cea347ba88E.exit95.1" ]
  %_49.lcssa = phi i1 [ %_49, %bb26.lr.ph ], [ %_49.1, %bb26.1 ], [ true, %bb29.1 ], [ true, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h99b866cea347ba88E.exit95.1" ]
  %alloc_ad3b123de7bbbcc93ad8c6b6c1ebdff3.mux = select i1 %_49.lcssa, ptr @alloc_ad3b123de7bbbcc93ad8c6b6c1ebdff3, ptr @alloc_24c72aa61b91c2b192db8033567ec161
  %indvars.iv236.mux = select i1 %_49.lcssa, i64 %indvars.iv236.lcssa, i64 %indvars.iv238
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %indvars.iv236.mux, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %alloc_ad3b123de7bbbcc93ad8c6b6c1ebdff3.mux) #28
          to label %panic6.cont unwind label %cleanup

panic6.cont:                                      ; preds = %panic6.invoke
  unreachable

bb30:                                             ; preds = %bb29
  %len.i68 = load i64, ptr %9, align 8, !alias.scope !1712, !noalias !1715, !noundef !15
  %_4.i.i69 = icmp ugt i64 %len.i68, %15
  br i1 %_4.i.i69, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17haebf36d019423682E.exit74", label %panic.i.i98.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17haebf36d019423682E.exit74": ; preds = %bb30
  %_6.i71 = load ptr, ptr %10, align 8, !alias.scope !1712, !noalias !1715, !nonnull !15, !noundef !15
  %_0.i.i72 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i71, i64 %15
  %28 = getelementptr inbounds nuw i8, ptr %_0.i.i72, i64 16
  %len.i75 = load i64, ptr %28, align 8, !alias.scope !1717, !noalias !1720, !noundef !15
  %_4.i.i76 = icmp ugt i64 %len.i75, %indvars.iv234
  br i1 %_4.i.i76, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h74ba322727acbefbE.exit81", label %panic.i.i98.invoke

bb36:                                             ; preds = %bb29, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h99b866cea347ba88E.exit95"
  %exitcond247.not = icmp eq i64 %indvars.iv.next237, %indvars.iv238
  br i1 %exitcond247.not, label %bb17.loopexit, label %bb26.1

bb26.1:                                           ; preds = %bb36
  %brmerge.1 = select i1 %_49.1, i1 true, i1 %_51
  br i1 %brmerge.1, label %panic6.invoke, label %bb29.1

bb29.1:                                           ; preds = %bb26.1
  %_47.1 = load i32, ptr %17, align 4, !noundef !15
  %_50.1 = load i32, ptr %27, align 4, !noundef !15
  %_46.1 = icmp slt i32 %_47.1, %_50.1
  br i1 %_46.1, label %bb30.1, label %panic6.invoke

bb30.1:                                           ; preds = %bb29.1
  %len.i68.1 = load i64, ptr %9, align 8, !alias.scope !1712, !noalias !1715, !noundef !15
  %_4.i.i69.1 = icmp ugt i64 %len.i68.1, %15
  br i1 %_4.i.i69.1, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17haebf36d019423682E.exit74.1", label %panic.i.i98.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17haebf36d019423682E.exit74.1": ; preds = %bb30.1
  %_6.i71.1 = load ptr, ptr %10, align 8, !alias.scope !1712, !noalias !1715, !nonnull !15, !noundef !15
  %_0.i.i72.1 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i71.1, i64 %15
  %29 = getelementptr inbounds nuw i8, ptr %_0.i.i72.1, i64 16
  %len.i75.1 = load i64, ptr %29, align 8, !alias.scope !1717, !noalias !1720, !noundef !15
  %_4.i.i76.1 = icmp ugt i64 %len.i75.1, %indvars.iv.next237
  br i1 %_4.i.i76.1, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h74ba322727acbefbE.exit81.1", label %panic.i.i98.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h74ba322727acbefbE.exit81.1": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17haebf36d019423682E.exit74.1"
  %30 = getelementptr inbounds nuw i8, ptr %_0.i.i72.1, i64 8
  %_6.i78.1 = load ptr, ptr %30, align 8, !alias.scope !1717, !noalias !1720, !nonnull !15, !noundef !15
  %_0.i.i79.1 = getelementptr inbounds nuw i32, ptr %_6.i78.1, i64 %indvars.iv.next237
  %_52.1 = load i32, ptr %_0.i.i79.1, align 4, !noundef !15
  %_4.i.i83.1 = icmp ugt i64 %len.i68.1, %indvars.iv
  br i1 %_4.i.i83.1, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e19451fd4f3edf7E.exit88.1", label %panic.i.i98.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e19451fd4f3edf7E.exit88.1": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h74ba322727acbefbE.exit81.1"
  %_0.i.i86.1 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i71.1, i64 %indvars.iv
  %31 = getelementptr inbounds nuw i8, ptr %_0.i.i86.1, i64 16
  %len.i89.1 = load i64, ptr %31, align 8, !alias.scope !1722, !noalias !1725, !noundef !15
  %_4.i.i90.1 = icmp ugt i64 %len.i89.1, %indvars.iv238
  br i1 %_4.i.i90.1, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h99b866cea347ba88E.exit95.1", label %panic.i.i98.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h99b866cea347ba88E.exit95.1": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e19451fd4f3edf7E.exit88.1"
  %32 = getelementptr inbounds nuw i8, ptr %_0.i.i86.1, i64 8
  %_6.i92.1 = load ptr, ptr %32, align 8, !alias.scope !1722, !noalias !1725, !nonnull !15, !noundef !15
  %_0.i.i93.1 = getelementptr inbounds nuw i32, ptr %_6.i92.1, i64 %indvars.iv238
  %33 = load i32, ptr %_0.i.i93.1, align 4, !noundef !15
  %34 = add i32 %33, %_52.1
  store i32 %34, ptr %_0.i.i93.1, align 4
  br label %panic6.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h74ba322727acbefbE.exit81": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17haebf36d019423682E.exit74"
  %35 = getelementptr inbounds nuw i8, ptr %_0.i.i72, i64 8
  %_6.i78 = load ptr, ptr %35, align 8, !alias.scope !1717, !noalias !1720, !nonnull !15, !noundef !15
  %_0.i.i79 = getelementptr inbounds nuw i32, ptr %_6.i78, i64 %indvars.iv234
  %_52 = load i32, ptr %_0.i.i79, align 4, !noundef !15
  %_4.i.i83 = icmp ugt i64 %len.i68, %indvars.iv
  br i1 %_4.i.i83, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e19451fd4f3edf7E.exit88", label %panic.i.i98.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e19451fd4f3edf7E.exit88": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h74ba322727acbefbE.exit81"
  %_0.i.i86 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i71, i64 %indvars.iv
  %36 = getelementptr inbounds nuw i8, ptr %_0.i.i86, i64 16
  %len.i89 = load i64, ptr %36, align 8, !alias.scope !1722, !noalias !1725, !noundef !15
  %_4.i.i90 = icmp ugt i64 %len.i89, %indvars.iv238
  br i1 %_4.i.i90, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h99b866cea347ba88E.exit95", label %panic.i.i98.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h99b866cea347ba88E.exit95": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e19451fd4f3edf7E.exit88"
  %37 = getelementptr inbounds nuw i8, ptr %_0.i.i86, i64 8
  %_6.i92 = load ptr, ptr %37, align 8, !alias.scope !1722, !noalias !1725, !nonnull !15, !noundef !15
  %_0.i.i93 = getelementptr inbounds nuw i32, ptr %_6.i92, i64 %indvars.iv238
  %38 = load i32, ptr %_0.i.i93, align 4, !noundef !15
  %39 = add i32 %38, %_52
  store i32 %39, ptr %_0.i.i93, align 4
  br label %bb36

panic.i.i98.invoke:                               ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e19451fd4f3edf7E.exit", %bb7, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e19451fd4f3edf7E.exit54", %bb19, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e19451fd4f3edf7E.exit88", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h74ba322727acbefbE.exit81", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17haebf36d019423682E.exit74", %bb30, %bb30.1, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17haebf36d019423682E.exit74.1", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h74ba322727acbefbE.exit81.1", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e19451fd4f3edf7E.exit88.1", %bb40, %bb40.lr.ph
  %40 = phi i64 [ %_72, %bb40.lr.ph ], [ %_73, %bb40 ], [ %indvars.iv238, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e19451fd4f3edf7E.exit88" ], [ %indvars.iv, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h74ba322727acbefbE.exit81" ], [ %indvars.iv234, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17haebf36d019423682E.exit74" ], [ %15, %bb30 ], [ %15, %bb30.1 ], [ %indvars.iv.next237, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17haebf36d019423682E.exit74.1" ], [ %indvars.iv, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h74ba322727acbefbE.exit81.1" ], [ %indvars.iv238, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e19451fd4f3edf7E.exit88.1" ], [ %indvars.iv238, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e19451fd4f3edf7E.exit54" ], [ %indvars.iv, %bb19 ], [ %indvars.iv228, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e19451fd4f3edf7E.exit" ], [ 0, %bb7 ]
  %41 = phi i64 [ %len.i30, %bb40.lr.ph ], [ %len.i35, %bb40 ], [ %len.i89, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e19451fd4f3edf7E.exit88" ], [ %len.i68, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h74ba322727acbefbE.exit81" ], [ %len.i75, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17haebf36d019423682E.exit74" ], [ %len.i68, %bb30 ], [ %len.i68.1, %bb30.1 ], [ %len.i75.1, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17haebf36d019423682E.exit74.1" ], [ %len.i68.1, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h74ba322727acbefbE.exit81.1" ], [ %len.i89.1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e19451fd4f3edf7E.exit88.1" ], [ %len.i55, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e19451fd4f3edf7E.exit54" ], [ %len.i48, %bb19 ], [ %len.i96, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e19451fd4f3edf7E.exit" ], [ %len.i, %bb7 ]
  %42 = phi ptr [ @alloc_c3572c7fd87e432207143541995dce7a, %bb40.lr.ph ], [ @alloc_6850a72ad08aedc3f9f409943c139748, %bb40 ], [ @alloc_a2f5de6f9f8562225e3cf1c791e66783, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e19451fd4f3edf7E.exit88" ], [ @alloc_c42e7f0ba2edd1d867681560188ee4c8, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h74ba322727acbefbE.exit81" ], [ @alloc_76c290e1f27ec8b1236b3e59b23345ab, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17haebf36d019423682E.exit74" ], [ @alloc_d44678bac854b10d047e4ca8dab27e43, %bb30 ], [ @alloc_d44678bac854b10d047e4ca8dab27e43, %bb30.1 ], [ @alloc_76c290e1f27ec8b1236b3e59b23345ab, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17haebf36d019423682E.exit74.1" ], [ @alloc_c42e7f0ba2edd1d867681560188ee4c8, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h74ba322727acbefbE.exit81.1" ], [ @alloc_a2f5de6f9f8562225e3cf1c791e66783, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e19451fd4f3edf7E.exit88.1" ], [ @alloc_1c9c883640de4a5c8244078cc1a67a62, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e19451fd4f3edf7E.exit54" ], [ @alloc_9c5289c8f7d5a91955e70d4706a60f6b, %bb19 ], [ @alloc_69e40fa8a2eeabd95b6720ee1c6f20f2, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e19451fd4f3edf7E.exit" ], [ @alloc_0a312454e82901e40ae5b11056910501, %bb7 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef range(i64 -2147483648, 2147483648) %40, i64 noundef range(i64 0, 2305843009213693952) %41, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %42) #27
          to label %panic.i.i98.cont unwind label %cleanup

panic.i.i98.cont:                                 ; preds = %panic.i.i98.invoke
  unreachable

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h99b866cea347ba88E.exit102": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e19451fd4f3edf7E.exit"
  %43 = getelementptr inbounds nuw i8, ptr %_6.i, i64 8
  %_6.i99 = load ptr, ptr %43, align 8, !alias.scope !1687, !noalias !1690, !nonnull !15, !noundef !15
  %_0.i.i100 = getelementptr inbounds nuw i32, ptr %_6.i99, i64 %indvars.iv228
  store i32 1, ptr %_0.i.i100, align 4
  %indvars.iv.next229 = add nuw nsw i64 %indvars.iv228, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next229, %wide.trip.count
  br i1 %exitcond.not, label %bb12.preheader, label %bb7

terminate:                                        ; preds = %cleanup
  %44 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #26
  unreachable

bb46:                                             ; preds = %cleanup
  resume { ptr, i32 } %8
}
