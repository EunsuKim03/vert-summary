define noundef i32 @f_gold(i32 noundef %N) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_16.i.i = alloca [24 x i8], align 8
  %screen = alloca [24 x i8], align 8
  %_2 = icmp slt i32 %N, 7
  br i1 %_2, label %bb26, label %bb2

bb2:                                              ; preds = %start
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %screen)
  %_4 = zext nneg i32 %N to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1638)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1641)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1644
; call alloc::raw_vec::RawVecInner<A>::try_allocate_in
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_16.i.i, i64 noundef %_4, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4), !noalias !1644
  %_17.i.i = load i64, ptr %_16.i.i, align 8, !range !1031, !noalias !1644, !noundef !37
  %0 = trunc nuw i64 %_17.i.i to i1
  %1 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 8
  %err.0.i.i = load i64, ptr %1, align 8, !range !1032, !noalias !1644, !noundef !37
  %2 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 16
  br i1 %0, label %bb14.i.i, label %_ZN5alloc3vec9from_elem17hb31d10cc0d65e6f7E.exit, !prof !1033

bb14.i.i:                                         ; preds = %bb2
  %err.1.i.i = load i64, ptr %2, align 8, !noalias !1644
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #26, !noalias !1644
  unreachable

_ZN5alloc3vec9from_elem17hb31d10cc0d65e6f7E.exit: ; preds = %bb2
  %res.1.i.i = load ptr, ptr %2, align 8, !noalias !1644, !nonnull !37, !noundef !37
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1644
  store i64 %err.0.i.i, ptr %screen, align 8, !alias.scope !1644
  %3 = getelementptr inbounds nuw i8, ptr %screen, i64 8
  store ptr %res.1.i.i, ptr %3, align 8, !alias.scope !1644
  %4 = getelementptr inbounds nuw i8, ptr %screen, i64 16
  store i64 %_4, ptr %4, align 8, !alias.scope !1644
  %len.i = load i64, ptr %4, align 8, !alias.scope !1645, !noalias !1648, !noundef !37
  %_4.i.i.not = icmp eq i64 %len.i, 0
  br i1 %_4.i.i.not, label %panic.i.i48.invoke, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h433d429f05fe3830E.exit"

cleanup:                                          ; preds = %panic.i.i48.invoke
  %5 = landingpad { ptr, i32 }
          cleanup
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %screen, i64 noundef 4, i64 noundef 4)
          to label %bb28 unwind label %terminate

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h433d429f05fe3830E.exit": ; preds = %_ZN5alloc3vec9from_elem17hb31d10cc0d65e6f7E.exit
  %_6.i = load ptr, ptr %3, align 8, !alias.scope !1645, !noalias !1648, !nonnull !37, !noundef !37
  store i32 1, ptr %_6.i, align 4
  %len.i.1 = load i64, ptr %4, align 8, !alias.scope !1645, !noalias !1648, !noundef !37
  %_4.i.i.1 = icmp ugt i64 %len.i.1, 1
  br i1 %_4.i.i.1, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h433d429f05fe3830E.exit.1", label %panic.i.i48.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h433d429f05fe3830E.exit.1": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h433d429f05fe3830E.exit"
  %_6.i.1 = load ptr, ptr %3, align 8, !alias.scope !1645, !noalias !1648, !nonnull !37, !noundef !37
  %_0.i.i.1 = getelementptr inbounds nuw i8, ptr %_6.i.1, i64 4
  store i32 2, ptr %_0.i.i.1, align 4
  %len.i.2 = load i64, ptr %4, align 8, !alias.scope !1645, !noalias !1648, !noundef !37
  %_4.i.i.2 = icmp ugt i64 %len.i.2, 2
  br i1 %_4.i.i.2, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h433d429f05fe3830E.exit.2", label %panic.i.i48.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h433d429f05fe3830E.exit.2": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h433d429f05fe3830E.exit.1"
  %_6.i.2 = load ptr, ptr %3, align 8, !alias.scope !1645, !noalias !1648, !nonnull !37, !noundef !37
  %_0.i.i.2 = getelementptr inbounds nuw i8, ptr %_6.i.2, i64 8
  store i32 3, ptr %_0.i.i.2, align 4
  %len.i.3 = load i64, ptr %4, align 8, !alias.scope !1645, !noalias !1648, !noundef !37
  %_4.i.i.3 = icmp ugt i64 %len.i.3, 3
  br i1 %_4.i.i.3, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h433d429f05fe3830E.exit.3", label %panic.i.i48.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h433d429f05fe3830E.exit.3": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h433d429f05fe3830E.exit.2"
  %_6.i.3 = load ptr, ptr %3, align 8, !alias.scope !1645, !noalias !1648, !nonnull !37, !noundef !37
  %_0.i.i.3 = getelementptr inbounds nuw i8, ptr %_6.i.3, i64 12
  store i32 4, ptr %_0.i.i.3, align 4
  %len.i.4 = load i64, ptr %4, align 8, !alias.scope !1645, !noalias !1648, !noundef !37
  %_4.i.i.4 = icmp ugt i64 %len.i.4, 4
  br i1 %_4.i.i.4, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h433d429f05fe3830E.exit.4", label %panic.i.i48.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h433d429f05fe3830E.exit.4": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h433d429f05fe3830E.exit.3"
  %_6.i.4 = load ptr, ptr %3, align 8, !alias.scope !1645, !noalias !1648, !nonnull !37, !noundef !37
  %_0.i.i.4 = getelementptr inbounds nuw i8, ptr %_6.i.4, i64 16
  store i32 5, ptr %_0.i.i.4, align 4
  %len.i.5 = load i64, ptr %4, align 8, !alias.scope !1645, !noalias !1648, !noundef !37
  %_4.i.i.5 = icmp ugt i64 %len.i.5, 5
  br i1 %_4.i.i.5, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h433d429f05fe3830E.exit.5", label %panic.i.i48.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h433d429f05fe3830E.exit.5": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h433d429f05fe3830E.exit.4"
  %_6.i.5 = load ptr, ptr %3, align 8, !alias.scope !1645, !noalias !1648, !nonnull !37, !noundef !37
  %_0.i.i.5 = getelementptr inbounds nuw i8, ptr %_6.i.5, i64 20
  store i32 6, ptr %_0.i.i.5, align 4
  %_0.i3.i.i1288.not = icmp eq i32 %N, 7
  %iter1.sroa.7.193 = zext i1 %_0.i3.i.i1288.not to i8
  %iter1.sroa.0.192 = select i1 %_0.i3.i.i1288.not, i32 7, i32 8
  br label %bb16

bb16:                                             ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h433d429f05fe3830E.exit.5", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h433d429f05fe3830E.exit52"
  %_0.sroa.3.0.i.i1496 = phi i32 [ 7, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h433d429f05fe3830E.exit.5" ], [ %_0.sroa.3.0.i.i14, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h433d429f05fe3830E.exit52" ]
  %iter1.sroa.7.195 = phi i8 [ %iter1.sroa.7.193, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h433d429f05fe3830E.exit.5" ], [ %iter1.sroa.7.1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h433d429f05fe3830E.exit52" ]
  %iter1.sroa.0.194 = phi i32 [ %iter1.sroa.0.192, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h433d429f05fe3830E.exit.5" ], [ %iter1.sroa.0.1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h433d429f05fe3830E.exit52" ]
  %_29 = add i32 %_0.sroa.3.0.i.i1496, -4
  %_28 = sext i32 %_29 to i64
  %len.i18 = load i64, ptr %4, align 8, !alias.scope !1650, !noalias !1653, !noundef !37
  %_4.i.i19 = icmp ugt i64 %len.i18, %_28
  br i1 %_4.i.i19, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hcfe89adab24421feE.exit", label %panic.i.i48.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hcfe89adab24421feE.exit": ; preds = %bb16
  %_6.i21 = load ptr, ptr %3, align 8, !alias.scope !1650, !noalias !1653, !nonnull !37, !noundef !37
  %_0.i.i22 = getelementptr inbounds nuw i32, ptr %_6.i21, i64 %_28
  %_25 = load i32, ptr %_0.i.i22, align 4, !noundef !37
  %_24 = shl i32 %_25, 1
  %_36 = add i32 %_0.sroa.3.0.i.i1496, -5
  %_35 = sext i32 %_36 to i64
  %_4.i.i32 = icmp ugt i64 %len.i18, %_35
  br i1 %_4.i.i32, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hcfe89adab24421feE.exit37", label %panic.i.i48.invoke

bb17:                                             ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h433d429f05fe3830E.exit52"
  %_49 = add nsw i64 %_4, -1
  %len.i24 = load i64, ptr %4, align 8, !alias.scope !1655, !noalias !1658, !noundef !37
  %_4.i.i25 = icmp ult i64 %_49, %len.i24
  br i1 %_4.i.i25, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hcfe89adab24421feE.exit30", label %panic.i.i48.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hcfe89adab24421feE.exit30": ; preds = %bb17
  %_6.i27 = load ptr, ptr %3, align 8, !alias.scope !1655, !noalias !1658, !nonnull !37, !noundef !37
  %_0.i.i28 = getelementptr inbounds nuw i32, ptr %_6.i27, i64 %_49
  %6 = load i32, ptr %_0.i.i28, align 4, !noundef !37
; call alloc::raw_vec::RawVecInner<A>::deallocate
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %screen, i64 noundef 4, i64 noundef 4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %screen)
  br label %bb26

bb26:                                             ; preds = %start, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hcfe89adab24421feE.exit30"
  %_0.sroa.0.0 = phi i32 [ %6, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hcfe89adab24421feE.exit30" ], [ %N, %start ]
  ret i32 %_0.sroa.0.0

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hcfe89adab24421feE.exit37": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hcfe89adab24421feE.exit"
  %_42 = add i32 %_0.sroa.3.0.i.i1496, -6
  %_41 = sext i32 %_42 to i64
  %_4.i.i39 = icmp ugt i64 %len.i18, %_41
  br i1 %_4.i.i39, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hcfe89adab24421feE.exit44", label %panic.i.i48.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hcfe89adab24421feE.exit44": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hcfe89adab24421feE.exit37"
  %_46 = sext i32 %_0.sroa.3.0.i.i1496 to i64
  %_45 = add nsw i64 %_46, -1
  %_4.i.i47 = icmp ult i64 %_45, %len.i18
  br i1 %_4.i.i47, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h433d429f05fe3830E.exit52", label %panic.i.i48.invoke

panic.i.i48.invoke:                               ; preds = %_ZN5alloc3vec9from_elem17hb31d10cc0d65e6f7E.exit, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h433d429f05fe3830E.exit", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h433d429f05fe3830E.exit.1", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h433d429f05fe3830E.exit.2", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h433d429f05fe3830E.exit.3", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h433d429f05fe3830E.exit.4", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hcfe89adab24421feE.exit44", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hcfe89adab24421feE.exit37", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hcfe89adab24421feE.exit", %bb16, %bb17
  %7 = phi i64 [ %_49, %bb17 ], [ %_45, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hcfe89adab24421feE.exit44" ], [ %_41, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hcfe89adab24421feE.exit37" ], [ %_35, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hcfe89adab24421feE.exit" ], [ %_28, %bb16 ], [ 0, %_ZN5alloc3vec9from_elem17hb31d10cc0d65e6f7E.exit ], [ 1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h433d429f05fe3830E.exit" ], [ 2, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h433d429f05fe3830E.exit.1" ], [ 3, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h433d429f05fe3830E.exit.2" ], [ 4, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h433d429f05fe3830E.exit.3" ], [ 5, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h433d429f05fe3830E.exit.4" ]
  %8 = phi i64 [ %len.i24, %bb17 ], [ %len.i18, %bb16 ], [ %len.i18, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hcfe89adab24421feE.exit" ], [ %len.i18, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hcfe89adab24421feE.exit37" ], [ %len.i18, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hcfe89adab24421feE.exit44" ], [ %len.i, %_ZN5alloc3vec9from_elem17hb31d10cc0d65e6f7E.exit ], [ %len.i.1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h433d429f05fe3830E.exit" ], [ %len.i.2, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h433d429f05fe3830E.exit.1" ], [ %len.i.3, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h433d429f05fe3830E.exit.2" ], [ %len.i.4, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h433d429f05fe3830E.exit.3" ], [ %len.i.5, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h433d429f05fe3830E.exit.4" ]
  %9 = phi ptr [ @alloc_c5c2d096d013c1b0f8f857f9b809095a, %bb17 ], [ @alloc_209eba98801309518a2580ad4205d3ae, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hcfe89adab24421feE.exit44" ], [ @alloc_4830824e781f2470ff81c18374510bf3, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hcfe89adab24421feE.exit37" ], [ @alloc_55d1a5b6cc2bb67f91fdaa711a6dce3a, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hcfe89adab24421feE.exit" ], [ @alloc_506212057596a7c60d3b77412992138b, %bb16 ], [ @alloc_d890047ad308786635e78ae2f9611a0c, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h433d429f05fe3830E.exit.4" ], [ @alloc_d890047ad308786635e78ae2f9611a0c, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h433d429f05fe3830E.exit.3" ], [ @alloc_d890047ad308786635e78ae2f9611a0c, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h433d429f05fe3830E.exit.2" ], [ @alloc_d890047ad308786635e78ae2f9611a0c, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h433d429f05fe3830E.exit.1" ], [ @alloc_d890047ad308786635e78ae2f9611a0c, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h433d429f05fe3830E.exit" ], [ @alloc_d890047ad308786635e78ae2f9611a0c, %_ZN5alloc3vec9from_elem17hb31d10cc0d65e6f7E.exit ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef range(i64 -2147483649, 2147483648) %7, i64 noundef range(i64 0, 2305843009213693952) %8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %9) #25
          to label %panic.i.i48.cont unwind label %cleanup

panic.i.i48.cont:                                 ; preds = %panic.i.i48.invoke
  unreachable

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h433d429f05fe3830E.exit52": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hcfe89adab24421feE.exit44"
  %_0.i.i35 = getelementptr inbounds nuw i32, ptr %_6.i21, i64 %_35
  %_32 = load i32, ptr %_0.i.i35, align 4, !noundef !37
  %_31 = mul i32 %_32, 3
  %_0.i.i42 = getelementptr inbounds nuw i32, ptr %_6.i21, i64 %_41
  %_38 = load i32, ptr %_0.i.i42, align 4, !noundef !37
  %_37 = shl i32 %_38, 2
  %x.y.i = tail call noundef i32 @llvm.smax.i32(i32 %_31, i32 %_37)
  %x.y.i45 = tail call noundef i32 @llvm.smax.i32(i32 %_24, i32 %x.y.i)
  %_0.i.i50 = getelementptr inbounds nuw i32, ptr %_6.i21, i64 %_45
  store i32 %x.y.i45, ptr %_0.i.i50, align 4
  %_10.i.i5 = trunc nuw i8 %iter1.sroa.7.195 to i1
  %_0.i.not.i.i10 = icmp sgt i32 %iter1.sroa.0.194, %N
  %or.cond56 = select i1 %_10.i.i5, i1 true, i1 %_0.i.not.i.i10
  %_0.i3.i.i12 = icmp slt i32 %iter1.sroa.0.194, %N
  %not.or.cond56 = xor i1 %or.cond56, true
  %narrow = select i1 %not.or.cond56, i1 %_0.i3.i.i12, i1 false
  %spec.select54 = zext i1 %narrow to i32
  %iter1.sroa.0.1 = add nuw nsw i32 %iter1.sroa.0.194, %spec.select54
  %10 = select i1 %or.cond56, i1 true, i1 %_0.i3.i.i12
  %iter1.sroa.7.1 = select i1 %10, i8 %iter1.sroa.7.195, i8 1
  %_0.sroa.3.0.i.i14 = select i1 %_10.i.i5, i32 undef, i32 %iter1.sroa.0.194
  br i1 %or.cond56, label %bb17, label %bb16

terminate:                                        ; preds = %cleanup
  %11 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #27
  unreachable

bb28:                                             ; preds = %cleanup
  resume { ptr, i32 } %5
}
