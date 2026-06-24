define noundef i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_16.i.i = alloca [24 x i8], align 8
  %brr = alloca [24 x i8], align 8
  %arr = alloca [8 x i8], align 8
  store i64 %0, ptr %arr, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %brr)
  %_6 = sext i32 %n to i64
  %_5 = shl nsw i64 %_6, 1
  %_4 = or disjoint i64 %_5, 1
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
  br i1 %1, label %bb14.i.i, label %_ZN5alloc3vec9from_elem17h32ccf98f8eb2787aE.exit, !prof !1033

bb14.i.i:                                         ; preds = %start
  %err.1.i.i = load i64, ptr %3, align 8, !noalias !1644
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #26, !noalias !1644
  unreachable

_ZN5alloc3vec9from_elem17h32ccf98f8eb2787aE.exit: ; preds = %start
  %res.1.i.i = load ptr, ptr %3, align 8, !noalias !1644, !nonnull !37, !noundef !37
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1644
  store i64 %err.0.i.i, ptr %brr, align 8, !alias.scope !1644
  %4 = getelementptr inbounds nuw i8, ptr %brr, i64 8
  store ptr %res.1.i.i, ptr %4, align 8, !alias.scope !1644
  %5 = getelementptr inbounds nuw i8, ptr %brr, i64 16
  store i64 %_4, ptr %5, align 8, !alias.scope !1644
  %cond = icmp eq i32 %n, 0
  br i1 %cond, label %bb18.preheader, label %bb8

cleanup:                                          ; preds = %panic7.invoke, %panic.i.i51.invoke
  %6 = landingpad { ptr, i32 }
          cleanup
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %brr, i64 noundef 4, i64 noundef 4)
          to label %bb39 unwind label %terminate

bb18.preheader:                                   ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hd48539691cb02f44E.exit", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hd48539691cb02f44E.exit.1", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hd48539691cb02f44E.exit.2", %_ZN5alloc3vec9from_elem17h32ccf98f8eb2787aE.exit
  %_0.i.i.i2991 = icmp ugt i32 %n, 1
  br i1 %_0.i.i.i2991, label %bb20.lr.ph, label %bb37

bb20.lr.ph:                                       ; preds = %bb18.preheader
  %len.i = load i64, ptr %5, align 8
  %_6.i = load ptr, ptr %4, align 8, !nonnull !37
  %_50 = load i32, ptr %arr, align 8
  %7 = getelementptr inbounds nuw i8, ptr %arr, i64 4
  %_50.1 = load i32, ptr %7, align 4
  br label %bb20

bb20:                                             ; preds = %bb20.lr.ph, %bb33
  %spec.select6096 = phi i64 [ 2, %bb20.lr.ph ], [ %spec.select60, %bb33 ]
  %max_ham.sroa.0.095 = phi i32 [ 0, %bb20.lr.ph ], [ %_0.sroa.0.0.i, %bb33 ]
  %iter2.sroa.0.094 = phi i64 [ 1, %bb20.lr.ph ], [ %spec.select6096, %bb33 ]
  %_39 = add i64 %iter2.sroa.0.094, %_6
  %_0.i.i.i3785 = icmp ult i64 %iter2.sroa.0.094, %_39
  br i1 %_0.i.i.i3785, label %bb25.preheader, label %bb26

bb25.preheader:                                   ; preds = %bb20
  %spec.select6287 = add nuw i64 %iter2.sroa.0.094, 1
  %_4.i.i42 = icmp ult i64 %iter2.sroa.0.094, %len.i
  br i1 %_4.i.i42, label %bb28, label %panic.i.i51.invoke

bb37:                                             ; preds = %bb33, %bb26, %bb18.preheader
  %max_ham.sroa.0.1 = phi i32 [ 0, %bb18.preheader ], [ %_0.sroa.0.0.i, %bb33 ], [ %n, %bb26 ]
; call alloc::raw_vec::RawVecInner<A>::deallocate
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %brr, i64 noundef 4, i64 noundef 4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %brr)
  ret i32 %max_ham.sroa.0.1

bb26:                                             ; preds = %bb28, %bb28.1, %bb28.2, %bb20
  %curr_ham.sroa.0.0.lcssa = phi i32 [ 0, %bb20 ], [ %8, %bb28 ], [ %spec.select.1, %bb28.1 ], [ %spec.select.2, %bb28.2 ]
  %_52 = icmp eq i32 %curr_ham.sroa.0.0.lcssa, %n
  br i1 %_52, label %bb37, label %bb33

bb33:                                             ; preds = %bb26
  %_0.sroa.0.0.i = tail call noundef i32 @llvm.smax.i32(i32 %curr_ham.sroa.0.0.lcssa, i32 %max_ham.sroa.0.095)
  %_0.i.i.i29 = icmp ult i64 %spec.select6096, %_6
  %_0.i1.i.i32 = zext i1 %_0.i.i.i29 to i64
  %spec.select60 = add nuw i64 %spec.select6096, %_0.i1.i.i32
  br i1 %_0.i.i.i29, label %bb20, label %bb37

bb28:                                             ; preds = %bb25.preheader
  %_0.i.i = getelementptr inbounds nuw i32, ptr %_6.i, i64 %iter2.sroa.0.094
  %_47 = load i32, ptr %_0.i.i, align 4, !noundef !37
  %_46.not = icmp ne i32 %_47, %_50
  %8 = zext i1 %_46.not to i32
  %_0.i.i.i37 = icmp ult i64 %spec.select6287, %_39
  %_0.i1.i.i40 = zext i1 %_0.i.i.i37 to i64
  %spec.select62 = add nuw i64 %spec.select6287, %_0.i1.i.i40
  br i1 %_0.i.i.i37, label %bb25.1, label %bb26

bb25.1:                                           ; preds = %bb28
  %_4.i.i42.1 = icmp ult i64 %spec.select6287, %len.i
  br i1 %_4.i.i42.1, label %bb28.1, label %panic.i.i51.invoke

bb28.1:                                           ; preds = %bb25.1
  %_0.i.i.1 = getelementptr inbounds nuw i32, ptr %_6.i, i64 %spec.select6287
  %_47.1 = load i32, ptr %_0.i.i.1, align 4, !noundef !37
  %_46.not.1 = icmp ne i32 %_47.1, %_50.1
  %9 = zext i1 %_46.not.1 to i32
  %spec.select.1 = add nuw nsw i32 %8, %9
  %_0.i.i.i37.1 = icmp ult i64 %spec.select62, %_39
  br i1 %_0.i.i.i37.1, label %bb25.2, label %bb26

bb25.2:                                           ; preds = %bb28.1
  %k.2 = sub i64 %spec.select62, %iter2.sroa.0.094
  %_4.i.i42.2 = icmp ult i64 %spec.select62, %len.i
  br i1 %_4.i.i42.2, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h04117241cc840211E.exit.2", label %panic.i.i51.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h04117241cc840211E.exit.2": ; preds = %bb25.2
  %_51.2 = icmp ult i64 %k.2, 2
  br i1 %_51.2, label %bb28.2, label %panic7.invoke

bb28.2:                                           ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h04117241cc840211E.exit.2"
  %_0.i.i.2 = getelementptr inbounds nuw i32, ptr %_6.i, i64 %spec.select62
  %_47.2 = load i32, ptr %_0.i.i.2, align 4, !noundef !37
  %10 = getelementptr inbounds nuw i32, ptr %arr, i64 %k.2
  %_50.2 = load i32, ptr %10, align 4, !noundef !37
  %_46.not.2 = icmp ne i32 %_47.2, %_50.2
  %11 = zext i1 %_46.not.2 to i32
  %spec.select.2 = add nuw nsw i32 %spec.select.1, %11
  br label %bb26

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hd48539691cb02f44E.exit": ; preds = %bb13.preheader
  %_24 = load i32, ptr %arr, align 8, !noundef !37
  %_6.i46 = load ptr, ptr %4, align 8, !alias.scope !1645, !noalias !1648, !nonnull !37, !noundef !37
  %_0.i.i47 = getelementptr inbounds nuw i32, ptr %_6.i46, i64 %_6
  store i32 %_24, ptr %_0.i.i47, align 4
  %_0.i.i.i21.not = icmp eq i32 %n, 1
  %spec.select58 = select i1 %_0.i.i.i21.not, i64 1, i64 2
  br i1 %_0.i.i.i21.not, label %bb18.preheader, label %bb15.1

bb15.1:                                           ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hd48539691cb02f44E.exit"
  %_28.1 = add nsw i64 %_6, 1
  %len.i43.1 = load i64, ptr %5, align 8, !alias.scope !1645, !noalias !1648, !noundef !37
  %_4.i.i44.1 = icmp ult i64 %_28.1, %len.i43.1
  br i1 %_4.i.i44.1, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hd48539691cb02f44E.exit.1", label %panic.i.i51.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hd48539691cb02f44E.exit.1": ; preds = %bb15.1
  %12 = getelementptr inbounds nuw i8, ptr %arr, i64 4
  %_24.1 = load i32, ptr %12, align 4, !noundef !37
  %_6.i46.1 = load ptr, ptr %4, align 8, !alias.scope !1645, !noalias !1648, !nonnull !37, !noundef !37
  %_0.i.i47.1 = getelementptr inbounds nuw i32, ptr %_6.i46.1, i64 %_28.1
  store i32 %_24.1, ptr %_0.i.i47.1, align 4
  %_0.i.i.i21.1 = icmp ult i64 %spec.select58, %_6
  br i1 %_0.i.i.i21.1, label %bb13.2, label %bb18.preheader

bb13.2:                                           ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hd48539691cb02f44E.exit.1"
  br i1 %_0.i.i.i21.not, label %bb15.2, label %panic7.invoke

bb15.2:                                           ; preds = %bb13.2
  %_28.2 = add nuw nsw i64 %spec.select58, %_6
  %len.i43.2 = load i64, ptr %5, align 8, !alias.scope !1645, !noalias !1648, !noundef !37
  %_4.i.i44.2 = icmp ult i64 %_28.2, %len.i43.2
  br i1 %_4.i.i44.2, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hd48539691cb02f44E.exit.2", label %panic.i.i51.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hd48539691cb02f44E.exit.2": ; preds = %bb15.2
  %13 = getelementptr inbounds nuw i32, ptr %arr, i64 %spec.select58
  %_24.2 = load i32, ptr %13, align 4, !noundef !37
  %_6.i46.2 = load ptr, ptr %4, align 8, !alias.scope !1645, !noalias !1648, !nonnull !37, !noundef !37
  %_0.i.i47.2 = getelementptr inbounds nuw i32, ptr %_6.i46.2, i64 %_28.2
  store i32 %_24.2, ptr %_0.i.i47.2, align 4
  br label %bb18.preheader

bb8:                                              ; preds = %_ZN5alloc3vec9from_elem17h32ccf98f8eb2787aE.exit
  %len.i49 = load i64, ptr %5, align 8, !alias.scope !1650, !noalias !1653, !noundef !37
  %_4.i.i50.not = icmp eq i64 %len.i49, 0
  br i1 %_4.i.i50.not, label %panic.i.i51.invoke, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hd48539691cb02f44E.exit55"

panic.i.i51.invoke:                               ; preds = %bb8, %bb8.1, %bb8.2, %bb13.preheader, %bb15.1, %bb15.2, %bb25.preheader, %bb25.1, %bb25.2
  %14 = phi i64 [ %iter2.sroa.0.094, %bb25.preheader ], [ %spec.select6287, %bb25.1 ], [ %spec.select62, %bb25.2 ], [ %_6, %bb13.preheader ], [ %_28.1, %bb15.1 ], [ %_28.2, %bb15.2 ], [ 0, %bb8 ], [ 1, %bb8.1 ], [ %spec.select56, %bb8.2 ]
  %15 = phi i64 [ %len.i, %bb25.2 ], [ %len.i, %bb25.1 ], [ %len.i, %bb25.preheader ], [ %len.i43, %bb13.preheader ], [ %len.i43.1, %bb15.1 ], [ %len.i43.2, %bb15.2 ], [ %len.i49, %bb8 ], [ %len.i49.1, %bb8.1 ], [ %len.i49.2, %bb8.2 ]
  %16 = phi ptr [ @alloc_7e3d6da9c8159f594e182559bdac59e7, %bb25.2 ], [ @alloc_7e3d6da9c8159f594e182559bdac59e7, %bb25.1 ], [ @alloc_7e3d6da9c8159f594e182559bdac59e7, %bb25.preheader ], [ @alloc_8f640558ce0467725c7f98d136462a4e, %bb15.2 ], [ @alloc_8f640558ce0467725c7f98d136462a4e, %bb15.1 ], [ @alloc_8f640558ce0467725c7f98d136462a4e, %bb13.preheader ], [ @alloc_f863d11d43511954a4949ce53133d724, %bb8.2 ], [ @alloc_f863d11d43511954a4949ce53133d724, %bb8.1 ], [ @alloc_f863d11d43511954a4949ce53133d724, %bb8 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %14, i64 noundef range(i64 0, 2305843009213693952) %15, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %16) #25
          to label %panic.i.i51.cont unwind label %cleanup

panic.i.i51.cont:                                 ; preds = %panic.i.i51.invoke
  unreachable

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hd48539691cb02f44E.exit55": ; preds = %bb8
  %_14 = load i32, ptr %arr, align 8, !noundef !37
  %_6.i52 = load ptr, ptr %4, align 8, !alias.scope !1650, !noalias !1653, !nonnull !37, !noundef !37
  store i32 %_14, ptr %_6.i52, align 4
  %_0.i.i.i.not = icmp eq i32 %n, 1
  %spec.select56 = select i1 %_0.i.i.i.not, i64 1, i64 2
  br i1 %_0.i.i.i.not, label %bb13.preheader, label %bb8.1

bb8.1:                                            ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hd48539691cb02f44E.exit55"
  %len.i49.1 = load i64, ptr %5, align 8, !alias.scope !1650, !noalias !1653, !noundef !37
  %_4.i.i50.1 = icmp ugt i64 %len.i49.1, 1
  br i1 %_4.i.i50.1, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hd48539691cb02f44E.exit55.1", label %panic.i.i51.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hd48539691cb02f44E.exit55.1": ; preds = %bb8.1
  %17 = getelementptr inbounds nuw i8, ptr %arr, i64 4
  %_14.1 = load i32, ptr %17, align 4, !noundef !37
  %_6.i52.1 = load ptr, ptr %4, align 8, !alias.scope !1650, !noalias !1653, !nonnull !37, !noundef !37
  %_0.i.i53.1 = getelementptr inbounds nuw i8, ptr %_6.i52.1, i64 4
  store i32 %_14.1, ptr %_0.i.i53.1, align 4
  %_0.i.i.i.1 = icmp ult i64 %spec.select56, %_6
  br i1 %_0.i.i.i.1, label %bb6.2, label %bb13.preheader

bb6.2:                                            ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hd48539691cb02f44E.exit55.1"
  br i1 %_0.i.i.i.not, label %bb8.2, label %panic7.invoke

bb8.2:                                            ; preds = %bb6.2
  %len.i49.2 = load i64, ptr %5, align 8, !alias.scope !1650, !noalias !1653, !noundef !37
  %_4.i.i50.2 = icmp ult i64 %spec.select56, %len.i49.2
  br i1 %_4.i.i50.2, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hd48539691cb02f44E.exit55.2", label %panic.i.i51.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hd48539691cb02f44E.exit55.2": ; preds = %bb8.2
  %18 = getelementptr inbounds nuw i32, ptr %arr, i64 %spec.select56
  %_14.2 = load i32, ptr %18, align 4, !noundef !37
  %_6.i52.2 = load ptr, ptr %4, align 8, !alias.scope !1650, !noalias !1653, !nonnull !37, !noundef !37
  %_0.i.i53.2 = getelementptr inbounds nuw i32, ptr %_6.i52.2, i64 %spec.select56
  store i32 %_14.2, ptr %_0.i.i53.2, align 4
  br label %bb13.preheader

bb13.preheader:                                   ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hd48539691cb02f44E.exit55.2", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hd48539691cb02f44E.exit55.1", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hd48539691cb02f44E.exit55"
  %len.i43 = load i64, ptr %5, align 8, !alias.scope !1645, !noalias !1648, !noundef !37
  %_4.i.i44 = icmp ugt i64 %len.i43, %_6
  br i1 %_4.i.i44, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hd48539691cb02f44E.exit", label %panic.i.i51.invoke

panic7.invoke:                                    ; preds = %bb6.2, %bb13.2, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h04117241cc840211E.exit.2"
  %19 = phi i64 [ %k.2, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h04117241cc840211E.exit.2" ], [ %spec.select58, %bb13.2 ], [ %spec.select56, %bb6.2 ]
  %20 = phi ptr [ @alloc_33e4fb336d116caf80ca95f807f47bc5, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h04117241cc840211E.exit.2" ], [ @alloc_896fcc33b1aebf2483c098f3d26f0d30, %bb13.2 ], [ @alloc_b6d5574efaff1c4fb94e48c16f0b9496, %bb6.2 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %19, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %20) #26
          to label %panic7.cont unwind label %cleanup

panic7.cont:                                      ; preds = %panic7.invoke
  unreachable

terminate:                                        ; preds = %cleanup
  %21 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #27
  unreachable

bb39:                                             ; preds = %cleanup
  resume { ptr, i32 } %6
}
