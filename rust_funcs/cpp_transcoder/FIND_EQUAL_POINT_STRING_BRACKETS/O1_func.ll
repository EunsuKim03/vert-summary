define noundef i32 @f_gold(ptr dead_on_return noalias noundef align 8 captures(address) dereferenceable(24) %str) unnamed_addr #4 personality ptr @rust_eh_personality {
start:
  %_16.i.i31 = alloca [24 x i8], align 8
  %_16.i.i = alloca [24 x i8], align 8
  %_73 = alloca [16 x i8], align 8
  %_43 = alloca [16 x i8], align 8
  %_26 = alloca [16 x i8], align 8
  %close = alloca [24 x i8], align 8
  %open = alloca [24 x i8], align 8
  %0 = getelementptr inbounds nuw i8, ptr %str, i64 16
  %_0.i = load i64, ptr %0, align 8, !alias.scope !1669, !noundef !15
  %_2.i = icmp sgt i64 %_0.i, -1
  tail call void @llvm.assume(i1 %_2.i)
  %1 = trunc i64 %_0.i to i32
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %open)
  %sext = shl i64 %_0.i, 32
  %_6 = ashr exact i64 %sext, 32
  %_5 = add nsw i64 %_6, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1672)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1675)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1678
; invoke alloc::raw_vec::RawVecInner<A>::try_allocate_in
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_16.i.i, i64 noundef %_5, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4)
          to label %.noexc29 unwind label %cleanup

bb79:                                             ; preds = %bb78, %cleanup
  %.pn.pn = phi { ptr, i32 } [ %4, %cleanup ], [ %.pn, %bb78 ]
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h5aefe4d933e9ee71E.exit.i" unwind label %cleanup.i.i

cleanup.i.i:                                      ; preds = %bb79
  %2 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
          to label %terminate.body unwind label %terminate.i.i

terminate.i.i:                                    ; preds = %cleanup.i.i
  %3 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #29
  unreachable

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h5aefe4d933e9ee71E.exit.i": ; preds = %bb79
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
          to label %common.resume unwind label %terminate

cleanup:                                          ; preds = %bb74, %bb14.i.i, %start
  %4 = landingpad { ptr, i32 }
          cleanup
  br label %bb79

.noexc29:                                         ; preds = %start
  %_17.i.i = load i64, ptr %_16.i.i, align 8, !range !1062, !noalias !1678, !noundef !15
  %5 = trunc nuw i64 %_17.i.i to i1
  %6 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 8
  %err.0.i.i = load i64, ptr %6, align 8, !range !1063, !noalias !1678, !noundef !15
  %7 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 16
  br i1 %5, label %bb14.i.i, label %_ZN5alloc3vec9from_elem17h7931365a439dba7bE.exit, !prof !1064

bb14.i.i:                                         ; preds = %.noexc29
  %err.1.i.i = load i64, ptr %7, align 8, !noalias !1678
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #28
          to label %.noexc30 unwind label %cleanup

.noexc30:                                         ; preds = %bb14.i.i
  unreachable

_ZN5alloc3vec9from_elem17h7931365a439dba7bE.exit: ; preds = %.noexc29
  %res.1.i.i = load ptr, ptr %7, align 8, !noalias !1678, !nonnull !15, !noundef !15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1678
  store i64 %err.0.i.i, ptr %open, align 8, !alias.scope !1678
  %8 = getelementptr inbounds nuw i8, ptr %open, i64 8
  store ptr %res.1.i.i, ptr %8, align 8, !alias.scope !1678
  %9 = getelementptr inbounds nuw i8, ptr %open, i64 16
  store i64 %_5, ptr %9, align 8, !alias.scope !1678
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %close)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1679)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1682)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_16.i.i31), !noalias !1685
; invoke alloc::raw_vec::RawVecInner<A>::try_allocate_in
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_16.i.i31, i64 noundef %_5, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4)
          to label %.noexc38 unwind label %cleanup3

.noexc38:                                         ; preds = %_ZN5alloc3vec9from_elem17h7931365a439dba7bE.exit
  %_17.i.i32 = load i64, ptr %_16.i.i31, align 8, !range !1062, !noalias !1685, !noundef !15
  %10 = trunc nuw i64 %_17.i.i32 to i1
  %11 = getelementptr inbounds nuw i8, ptr %_16.i.i31, i64 8
  %err.0.i.i36 = load i64, ptr %11, align 8, !range !1063, !noalias !1685, !noundef !15
  %12 = getelementptr inbounds nuw i8, ptr %_16.i.i31, i64 16
  br i1 %10, label %bb14.i.i35, label %_ZN5alloc3vec9from_elem17h7931365a439dba7bE.exit40, !prof !1064

bb14.i.i35:                                       ; preds = %.noexc38
  %err.1.i.i37 = load i64, ptr %12, align 8, !noalias !1685
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i36, i64 %err.1.i.i37) #28
          to label %.noexc39 unwind label %cleanup3

.noexc39:                                         ; preds = %bb14.i.i35
  unreachable

_ZN5alloc3vec9from_elem17h7931365a439dba7bE.exit40: ; preds = %.noexc38
  %res.1.i.i34 = load ptr, ptr %12, align 8, !noalias !1685, !nonnull !15, !noundef !15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_16.i.i31), !noalias !1685
  store i64 %err.0.i.i36, ptr %close, align 8, !alias.scope !1685
  %13 = getelementptr inbounds nuw i8, ptr %close, i64 8
  store ptr %res.1.i.i34, ptr %13, align 8, !alias.scope !1685
  %14 = getelementptr inbounds nuw i8, ptr %close, i64 16
  store i64 %_5, ptr %14, align 8, !alias.scope !1685
  %len.i = load i64, ptr %9, align 8, !alias.scope !1686, !noalias !1689, !noundef !15
  %_4.i.i.not = icmp eq i64 %len.i, 0
  br i1 %_4.i.i.not, label %panic.i.i167.invoke, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4df71a3ba9dfc70aE.exit"

bb78:                                             ; preds = %cleanup4, %cleanup3
  %.pn = phi { ptr, i32 } [ %15, %cleanup3 ], [ %16, %cleanup4 ]
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %open, i64 noundef 4, i64 noundef 4)
          to label %bb79 unwind label %terminate

cleanup3:                                         ; preds = %bb73, %bb14.i.i35, %_ZN5alloc3vec9from_elem17h7931365a439dba7bE.exit
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %bb78

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4df71a3ba9dfc70aE.exit": ; preds = %_ZN5alloc3vec9from_elem17h7931365a439dba7bE.exit40
  %_6.i = load ptr, ptr %8, align 8, !alias.scope !1686, !noalias !1689, !nonnull !15, !noundef !15
  store i32 0, ptr %_6.i, align 4
  %len.i45 = load i64, ptr %14, align 8, !alias.scope !1691, !noalias !1694, !noundef !15
  %_4.i.i46 = icmp ult i64 %_6, %len.i45
  br i1 %_4.i.i46, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4df71a3ba9dfc70aE.exit50", label %panic.i.i167.invoke

cleanup4:                                         ; preds = %bb2.i25.invoke, %panic.i.i167.invoke
  %16 = landingpad { ptr, i32 }
          cleanup
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %close, i64 noundef 4, i64 noundef 4)
          to label %bb78 unwind label %terminate

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4df71a3ba9dfc70aE.exit50": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4df71a3ba9dfc70aE.exit"
  %_6.i48 = load ptr, ptr %13, align 8, !alias.scope !1691, !noalias !1694, !nonnull !15, !noundef !15
  %_0.i.i = getelementptr inbounds nuw i32, ptr %_6.i48, i64 %_6
  store i32 0, ptr %_0.i.i, align 4
  %17 = getelementptr inbounds nuw i8, ptr %str, i64 8
  %_6.i.i = load ptr, ptr %17, align 8, !alias.scope !1696, !nonnull !15, !noundef !15
  %len.i.i = load i64, ptr %0, align 8, !alias.scope !1696, !noundef !15
  %_7.i = getelementptr inbounds nuw i8, ptr %_6.i.i, i64 %len.i.i
  %_7.i.i.i.i = icmp samesign ne i64 %len.i.i, 0
  %_17.sroa.0.0.idx = zext i1 %_7.i.i.i.i to i64
  %_17.sroa.0.0 = getelementptr inbounds nuw i8, ptr %_6.i.i, i64 %_17.sroa.0.0.idx
  br i1 %_7.i.i.i.i, label %bb14.i.i.i, label %bb8

bb14.i.i.i:                                       ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4df71a3ba9dfc70aE.exit50"
  %x.i.i.i = load i8, ptr %_6.i.i, align 1, !noalias !1701, !noundef !15
  %_6.i.i.i = icmp sgt i8 %x.i.i.i, -1
  br i1 %_6.i.i.i, label %bb3.i.i.i, label %bb4.i.i.i

bb4.i.i.i:                                        ; preds = %bb14.i.i.i
  %_30.i.i.i = and i8 %x.i.i.i, 31
  %init.i.i.i = zext nneg i8 %_30.i.i.i to i32
  %18 = icmp ne i64 %len.i.i, 1
  tail call void @llvm.assume(i1 %18)
  %y.i.i.i = load i8, ptr %_17.sroa.0.0, align 1, !noalias !1701, !noundef !15
  %_34.i.i.i = shl nuw nsw i32 %init.i.i.i, 6
  %_36.i.i.i = and i8 %y.i.i.i, 63
  %_35.i.i.i = zext nneg i8 %_36.i.i.i to i32
  %19 = or disjoint i32 %_34.i.i.i, %_35.i.i.i
  %_13.i.i.i = icmp ugt i8 %x.i.i.i, -33
  br i1 %_13.i.i.i, label %bb6.i.i.i, label %bb8

bb3.i.i.i:                                        ; preds = %bb14.i.i.i
  %_7.i.i.i = zext nneg i8 %x.i.i.i to i32
  br label %bb8

bb6.i.i.i:                                        ; preds = %bb4.i.i.i
  %_18.i12.i.i.i = getelementptr inbounds nuw i8, ptr %_17.sroa.0.0, i64 1
  %_7.i17.i.i.i = icmp ne ptr %_18.i12.i.i.i, %_7.i
  tail call void @llvm.assume(i1 %_7.i17.i.i.i)
  %z.i.i.i = load i8, ptr %_18.i12.i.i.i, align 1, !noalias !1701, !noundef !15
  %_40.i.i.i = shl nuw nsw i32 %_35.i.i.i, 6
  %_42.i.i.i = and i8 %z.i.i.i, 63
  %_41.i.i.i = zext nneg i8 %_42.i.i.i to i32
  %y_z.i.i.i = or disjoint i32 %_40.i.i.i, %_41.i.i.i
  %_20.i.i.i = shl nuw nsw i32 %init.i.i.i, 12
  %20 = or disjoint i32 %y_z.i.i.i, %_20.i.i.i
  %_21.i.i.i = icmp ugt i8 %x.i.i.i, -17
  br i1 %_21.i.i.i, label %bb8.i.i.i, label %bb8

bb8.i.i.i:                                        ; preds = %bb6.i.i.i
  %_18.i19.i.i.i = getelementptr inbounds nuw i8, ptr %_17.sroa.0.0, i64 2
  %_7.i24.i.i.i = icmp ne ptr %_18.i19.i.i.i, %_7.i
  tail call void @llvm.assume(i1 %_7.i24.i.i.i)
  %w.i.i.i = load i8, ptr %_18.i19.i.i.i, align 1, !noalias !1701, !noundef !15
  %_26.i.i.i = shl nuw nsw i32 %init.i.i.i, 18
  %_25.i.i.i = and i32 %_26.i.i.i, 1835008
  %_46.i.i.i = shl nuw nsw i32 %y_z.i.i.i, 6
  %_48.i.i.i = and i8 %w.i.i.i, 63
  %_47.i.i.i = zext nneg i8 %_48.i.i.i to i32
  %_27.i.i.i = or disjoint i32 %_46.i.i.i, %_47.i.i.i
  %21 = or disjoint i32 %_27.i.i.i, %_25.i.i.i
  br label %bb8

bb8:                                              ; preds = %bb8.i.i.i, %bb6.i.i.i, %bb3.i.i.i, %bb4.i.i.i, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4df71a3ba9dfc70aE.exit50"
  %_0.sroa.0.0.i = phi i32 [ %_7.i.i.i, %bb3.i.i.i ], [ 1114112, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4df71a3ba9dfc70aE.exit50" ], [ %21, %bb8.i.i.i ], [ %20, %bb6.i.i.i ], [ %19, %bb4.i.i.i ]
  switch i32 %_0.sroa.0.0.i, label %bb13 [
    i32 1114112, label %bb2.i25.invoke
    i32 40, label %bb10
  ], !prof !1708

bb2.i25.invoke:                                   ; preds = %bb26, %bb43, %bb13, %bb8
  %22 = phi ptr [ @alloc_0f3090e147c0e9e1a80ee84b90461e0e, %bb8 ], [ @alloc_3afafe37ce08cf88086ed43a42e27b3f, %bb13 ], [ @alloc_167656e27831988d0da901f5a5e99792, %bb43 ], [ @alloc_4bc4b0a3e868e7ef6c4ee48e4a8370b7, %bb26 ]
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %22) #27
          to label %bb2.i25.cont unwind label %cleanup4

bb2.i25.cont:                                     ; preds = %bb2.i25.invoke
  unreachable

bb10:                                             ; preds = %bb8
  %len.i51 = load i64, ptr %9, align 8, !alias.scope !1709, !noalias !1712, !noundef !15
  %_4.i.i52 = icmp ugt i64 %len.i51, 1
  br i1 %_4.i.i52, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4df71a3ba9dfc70aE.exit57", label %panic.i.i167.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4df71a3ba9dfc70aE.exit57": ; preds = %bb10
  %_6.i54 = load ptr, ptr %8, align 8, !alias.scope !1709, !noalias !1712, !nonnull !15, !noundef !15
  %_0.i.i55 = getelementptr inbounds nuw i8, ptr %_6.i54, i64 4
  store i32 1, ptr %_0.i.i55, align 4
  br label %bb13

bb13:                                             ; preds = %bb8, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4df71a3ba9dfc70aE.exit57"
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_26)
  %_6.i.i58 = load ptr, ptr %17, align 8, !alias.scope !1714, !nonnull !15, !noundef !15
  %len.i.i59 = load i64, ptr %0, align 8, !alias.scope !1714, !noundef !15
  %_7.i60 = getelementptr inbounds nuw i8, ptr %_6.i.i58, i64 %len.i.i59
  store ptr %_6.i.i58, ptr %_26, align 8
  %23 = getelementptr inbounds nuw i8, ptr %_26, i64 8
  store ptr %_7.i60, ptr %23, align 8
  %_29 = add nsw i64 %_6, -1
; call core::iter::traits::iterator::Iterator::nth
  %_24 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17hc3dedf81601ff44eE(ptr noalias noundef align 8 dereferenceable(16) %_26, i64 noundef %_29)
  switch i32 %_24, label %bb20 [
    i32 1114112, label %bb2.i25.invoke
    i32 41, label %bb18
  ], !prof !1708

bb20:                                             ; preds = %bb13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_26)
  br label %bb21

bb18:                                             ; preds = %bb13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_26)
  %len.i61 = load i64, ptr %14, align 8, !alias.scope !1719, !noalias !1722, !noundef !15
  %_4.i.i62 = icmp ult i64 %_29, %len.i61
  br i1 %_4.i.i62, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4df71a3ba9dfc70aE.exit67", label %panic.i.i167.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4df71a3ba9dfc70aE.exit67": ; preds = %bb18
  %_6.i64 = load ptr, ptr %13, align 8, !alias.scope !1719, !noalias !1722, !nonnull !15, !noundef !15
  %_0.i.i65 = getelementptr inbounds nuw i32, ptr %_6.i64, i64 %_29
  store i32 1, ptr %_0.i.i65, align 4
  br label %bb21

bb21:                                             ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4df71a3ba9dfc70aE.exit67", %bb20
  %_0.i.i.i190 = icmp sgt i32 %1, 1
  br i1 %_0.i.i.i190, label %bb26.lr.ph, label %bb27

bb26.lr.ph:                                       ; preds = %bb21
  %24 = getelementptr inbounds nuw i8, ptr %_43, i64 8
  %wide.trip.count = and i64 %_0.i, 2147483647
  br label %bb26

bb26:                                             ; preds = %bb26.lr.ph, %bb38
  %indvars.iv214 = phi i64 [ 1, %bb26.lr.ph ], [ %indvars.iv.next215, %bb38 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_43)
  %_6.i.i69 = load ptr, ptr %17, align 8, !alias.scope !1724, !nonnull !15, !noundef !15
  %len.i.i70 = load i64, ptr %0, align 8, !alias.scope !1724, !noundef !15
  %_7.i143 = getelementptr inbounds nuw i8, ptr %_6.i.i69, i64 %len.i.i70
  store ptr %_6.i.i69, ptr %_43, align 8
  store ptr %_7.i143, ptr %24, align 8
  %_46 = add nsw i64 %indvars.iv214, -1
; call core::iter::traits::iterator::Iterator::nth
  %_41 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17hc3dedf81601ff44eE(ptr noalias noundef align 8 dereferenceable(16) %_43, i64 noundef %_46)
  switch i32 %_41, label %bb35 [
    i32 1114112, label %bb2.i25.invoke
    i32 40, label %bb32
  ], !prof !1708

bb27:                                             ; preds = %bb38, %bb21
  %_63 = add i32 %1, -1
  %_0.i.i.i.i194 = icmp sgt i32 %_63, 0
  br i1 %_0.i.i.i.i194, label %bb43.lr.ph, label %bb44

bb43.lr.ph:                                       ; preds = %bb27
  %25 = add i32 %1, -2
  %26 = getelementptr inbounds nuw i8, ptr %_73, i64 8
  br label %bb43

bb43:                                             ; preds = %bb43.lr.ph, %bb55
  %iter1.sroa.4.1196 = phi i32 [ %25, %bb43.lr.ph ], [ %iter1.sroa.4.1, %bb55 ]
  %27 = phi i32 [ %25, %bb43.lr.ph ], [ %31, %bb55 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_73)
  %_6.i.i72 = load ptr, ptr %17, align 8, !alias.scope !1729, !nonnull !15, !noundef !15
  %len.i.i73 = load i64, ptr %0, align 8, !alias.scope !1729, !noundef !15
  %_7.i114 = getelementptr inbounds nuw i8, ptr %_6.i.i72, i64 %len.i.i73
  store ptr %_6.i.i72, ptr %_73, align 8
  store ptr %_7.i114, ptr %26, align 8
  %_76 = sext i32 %27 to i64
; call core::iter::traits::iterator::Iterator::nth
  %_71 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17hc3dedf81601ff44eE(ptr noalias noundef align 8 dereferenceable(16) %_73, i64 noundef %_76)
  switch i32 %_71, label %bb52 [
    i32 1114112, label %bb2.i25.invoke
    i32 41, label %bb49
  ], !prof !1708

bb44:                                             ; preds = %bb55, %bb27
  %len.i74 = load i64, ptr %9, align 8, !alias.scope !1734, !noalias !1737, !noundef !15
  %_4.i.i75 = icmp ult i64 %_6, %len.i74
  br i1 %_4.i.i75, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E.exit", label %panic.i.i167.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E.exit": ; preds = %bb44
  %_6.i77 = load ptr, ptr %8, align 8, !alias.scope !1734, !noalias !1737, !nonnull !15, !noundef !15
  %_0.i.i78 = getelementptr inbounds nuw i32, ptr %_6.i77, i64 %_6
  %_90 = load i32, ptr %_0.i.i78, align 4, !noundef !15
  %_89 = icmp eq i32 %_90, 0
  br i1 %_89, label %bb73, label %bb58

bb58:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E.exit"
  %len.i80 = load i64, ptr %14, align 8, !alias.scope !1739, !noalias !1742, !noundef !15
  %_4.i.i81.not = icmp eq i64 %len.i80, 0
  br i1 %_4.i.i81.not, label %panic.i.i167.invoke, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E.exit86"

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E.exit86": ; preds = %bb58
  %_6.i83 = load ptr, ptr %13, align 8, !alias.scope !1739, !noalias !1742, !nonnull !15, !noundef !15
  %_94 = load i32, ptr %_6.i83, align 4, !noundef !15
  %_93 = icmp eq i32 %_94, 0
  br i1 %_93, label %bb73, label %bb64

bb64:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E.exit86", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E.exit104"
  %iter2.sroa.0.0 = phi i32 [ %iter2.sroa.0.1, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E.exit104" ], [ 0, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E.exit86" ]
  %iter2.sroa.7.0 = phi i8 [ %iter2.sroa.7.1, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E.exit104" ], [ 0, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E.exit86" ]
  %_10.i.i = trunc nuw i8 %iter2.sroa.7.0 to i1
  %_0.i.not.i.i = icmp sgt i32 %iter2.sroa.0.0, %1
  %or.cond = select i1 %_10.i.i, i1 true, i1 %_0.i.not.i.i
  %_0.i3.i.i = icmp slt i32 %iter2.sroa.0.0, %1
  %not.or.cond = xor i1 %or.cond, true
  %narrow = select i1 %not.or.cond, i1 %_0.i3.i.i, i1 false
  %spec.select173 = zext i1 %narrow to i32
  %iter2.sroa.0.1 = add nuw nsw i32 %iter2.sroa.0.0, %spec.select173
  %28 = select i1 %or.cond, i1 true, i1 %_0.i3.i.i
  %iter2.sroa.7.1 = select i1 %28, i8 %iter2.sroa.7.0, i8 1
  %_0.sroa.3.0.i.i = select i1 %_10.i.i, i32 undef, i32 %iter2.sroa.0.0
  br i1 %or.cond, label %bb73, label %bb66

bb66:                                             ; preds = %bb64
  %_108 = sext i32 %_0.sroa.3.0.i.i to i64
  %_4.i.i92 = icmp ugt i64 %len.i74, %_108
  br i1 %_4.i.i92, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E.exit97", label %panic.i.i167.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E.exit97": ; preds = %bb66
  %_4.i.i99 = icmp ugt i64 %len.i80, %_108
  br i1 %_4.i.i99, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E.exit104", label %panic.i.i167.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E.exit104": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E.exit97"
  %_0.i.i95 = getelementptr inbounds nuw i32, ptr %_6.i77, i64 %_108
  %_105 = load i32, ptr %_0.i.i95, align 4, !noundef !15
  %_0.i.i102 = getelementptr inbounds nuw i32, ptr %_6.i83, i64 %_108
  %_109 = load i32, ptr %_0.i.i102, align 4, !noundef !15
  %_104 = icmp eq i32 %_105, %_109
  br i1 %_104, label %bb73, label %bb64

bb73:                                             ; preds = %bb64, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E.exit104", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E.exit86", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E.exit"
  %len.sroa.0.0 = phi i32 [ %1, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E.exit" ], [ 0, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E.exit86" ], [ -1, %bb64 ], [ %_0.sroa.3.0.i.i, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E.exit104" ]
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %close, i64 noundef 4, i64 noundef 4)
          to label %bb74 unwind label %cleanup3

bb74:                                             ; preds = %bb73
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %close)
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %open, i64 noundef 4, i64 noundef 4)
          to label %bb75 unwind label %cleanup

bb75:                                             ; preds = %bb74
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %open)
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h371fff1e478da1e2E.exit113" unwind label %cleanup.i.i109

cleanup.i.i109:                                   ; preds = %bb75
  %29 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
          to label %common.resume unwind label %terminate.i.i110

terminate.i.i110:                                 ; preds = %cleanup.i.i109
  %30 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #29
  unreachable

common.resume:                                    ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h5aefe4d933e9ee71E.exit.i", %cleanup.i.i109
  %common.resume.op = phi { ptr, i32 } [ %29, %cleanup.i.i109 ], [ %.pn.pn, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h5aefe4d933e9ee71E.exit.i" ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h371fff1e478da1e2E.exit113": ; preds = %bb75
; call <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
  ret i32 %len.sroa.0.0

bb52:                                             ; preds = %bb43
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_73)
  %_86 = add nsw i64 %_76, 1
  %len.i115 = load i64, ptr %14, align 8, !alias.scope !1744, !noalias !1747, !noundef !15
  %_4.i.i116 = icmp ult i64 %_86, %len.i115
  br i1 %_4.i.i116, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E.exit121", label %panic.i.i167.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E.exit121": ; preds = %bb52
  %_4.i.i130 = icmp ugt i64 %len.i115, %_76
  br i1 %_4.i.i130, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4df71a3ba9dfc70aE.exit135", label %panic.i.i167.invoke

bb49:                                             ; preds = %bb43
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_73)
  %_80 = add nsw i64 %_76, 1
  %len.i122 = load i64, ptr %14, align 8, !alias.scope !1749, !noalias !1752, !noundef !15
  %_4.i.i123 = icmp ult i64 %_80, %len.i122
  br i1 %_4.i.i123, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E.exit128", label %panic.i.i167.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E.exit128": ; preds = %bb49
  %_4.i.i137 = icmp ugt i64 %len.i122, %_76
  br i1 %_4.i.i137, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4df71a3ba9dfc70aE.exit142", label %panic.i.i167.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4df71a3ba9dfc70aE.exit135": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E.exit121"
  %_6.i118 = load ptr, ptr %13, align 8, !alias.scope !1744, !noalias !1747, !nonnull !15, !noundef !15
  %_0.i.i119 = getelementptr inbounds nuw i32, ptr %_6.i118, i64 %_86
  %_83 = load i32, ptr %_0.i.i119, align 4, !noundef !15
  %_0.i.i133 = getelementptr inbounds nuw i32, ptr %_6.i118, i64 %_76
  store i32 %_83, ptr %_0.i.i133, align 4
  br label %bb55

bb55:                                             ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4df71a3ba9dfc70aE.exit142", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4df71a3ba9dfc70aE.exit135"
  %_0.i.i.i.i = icmp sgt i32 %iter1.sroa.4.1196, 0
  %31 = add nsw i32 %iter1.sroa.4.1196, -1
  %iter1.sroa.4.1 = select i1 %_0.i.i.i.i, i32 %31, i32 %iter1.sroa.4.1196
  br i1 %_0.i.i.i.i, label %bb43, label %bb44

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4df71a3ba9dfc70aE.exit142": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E.exit128"
  %_6.i125 = load ptr, ptr %13, align 8, !alias.scope !1749, !noalias !1752, !nonnull !15, !noundef !15
  %_0.i.i126 = getelementptr inbounds nuw i32, ptr %_6.i125, i64 %_80
  %_77 = load i32, ptr %_0.i.i126, align 4, !noundef !15
  %_0.i.i140 = getelementptr inbounds nuw i32, ptr %_6.i125, i64 %_76
  %32 = add i32 %_77, 1
  store i32 %32, ptr %_0.i.i140, align 4
  br label %bb55

bb35:                                             ; preds = %bb26
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_43)
  %len.i144 = load i64, ptr %9, align 8, !alias.scope !1754, !noalias !1757, !noundef !15
  %_4.i.i145 = icmp ugt i64 %len.i144, %indvars.iv214
  br i1 %_4.i.i145, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E.exit150", label %panic.i.i167.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E.exit150": ; preds = %bb35
  %_59 = add nuw nsw i64 %indvars.iv214, 1
  %_4.i.i159 = icmp ult i64 %_59, %len.i144
  br i1 %_4.i.i159, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4df71a3ba9dfc70aE.exit164", label %panic.i.i167.invoke

bb32:                                             ; preds = %bb26
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_43)
  %len.i151 = load i64, ptr %9, align 8, !alias.scope !1759, !noalias !1762, !noundef !15
  %_4.i.i152 = icmp ugt i64 %len.i151, %indvars.iv214
  br i1 %_4.i.i152, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E.exit157", label %panic.i.i167.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E.exit157": ; preds = %bb32
  %_53 = add nuw nsw i64 %indvars.iv214, 1
  %_4.i.i166 = icmp ult i64 %_53, %len.i151
  br i1 %_4.i.i166, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4df71a3ba9dfc70aE.exit171", label %panic.i.i167.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4df71a3ba9dfc70aE.exit164": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E.exit150"
  %_6.i147 = load ptr, ptr %8, align 8, !alias.scope !1754, !noalias !1757, !nonnull !15, !noundef !15
  %_0.i.i148 = getelementptr inbounds nuw i32, ptr %_6.i147, i64 %indvars.iv214
  %_54 = load i32, ptr %_0.i.i148, align 4, !noundef !15
  %_0.i.i162 = getelementptr inbounds nuw i32, ptr %_6.i147, i64 %_59
  store i32 %_54, ptr %_0.i.i162, align 4
  br label %bb38

bb38:                                             ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4df71a3ba9dfc70aE.exit171", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4df71a3ba9dfc70aE.exit164"
  %indvars.iv.next215 = add nuw nsw i64 %indvars.iv214, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next215, %wide.trip.count
  br i1 %exitcond.not, label %bb27, label %bb26

panic.i.i167.invoke:                              ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E.exit157", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E.exit150", %bb32, %bb35, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E.exit128", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E.exit121", %bb49, %bb52, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E.exit97", %bb66, %_ZN5alloc3vec9from_elem17h7931365a439dba7bE.exit40, %bb58, %bb44, %bb18, %bb10, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4df71a3ba9dfc70aE.exit"
  %33 = phi i64 [ %_6, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4df71a3ba9dfc70aE.exit" ], [ 1, %bb10 ], [ %_29, %bb18 ], [ %_6, %bb44 ], [ 0, %bb58 ], [ 0, %_ZN5alloc3vec9from_elem17h7931365a439dba7bE.exit40 ], [ %_108, %bb66 ], [ %_108, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E.exit97" ], [ %_76, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E.exit128" ], [ %_76, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E.exit121" ], [ %_80, %bb49 ], [ %_86, %bb52 ], [ %_53, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E.exit157" ], [ %_59, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E.exit150" ], [ %indvars.iv214, %bb32 ], [ %indvars.iv214, %bb35 ]
  %34 = phi i64 [ %len.i45, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4df71a3ba9dfc70aE.exit" ], [ %len.i51, %bb10 ], [ %len.i61, %bb18 ], [ %len.i74, %bb44 ], [ %len.i80, %bb58 ], [ %len.i, %_ZN5alloc3vec9from_elem17h7931365a439dba7bE.exit40 ], [ %len.i80, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E.exit97" ], [ %len.i74, %bb66 ], [ %len.i122, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E.exit128" ], [ %len.i115, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E.exit121" ], [ %len.i122, %bb49 ], [ %len.i115, %bb52 ], [ %len.i151, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E.exit157" ], [ %len.i144, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E.exit150" ], [ %len.i151, %bb32 ], [ %len.i144, %bb35 ]
  %35 = phi ptr [ @alloc_643b4a7ec7340372f73d132d69c09f43, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4df71a3ba9dfc70aE.exit" ], [ @alloc_ecbdc10220ec3081f222b173cf06947e, %bb10 ], [ @alloc_401692266b3b2da5a6b98725de4236f5, %bb18 ], [ @alloc_0aca04be49d9dc049478c94de5d65215, %bb44 ], [ @alloc_bffb7d89f0bddf985dbe63275e3fad7a, %bb58 ], [ @alloc_df8a023a655685e9fd0008fb80e57673, %_ZN5alloc3vec9from_elem17h7931365a439dba7bE.exit40 ], [ @alloc_08b71613548c0c5f551aac667cd49682, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E.exit97" ], [ @alloc_301d4e2663978e2850f50b82ba108207, %bb66 ], [ @alloc_b8e15b1097f40dccc2e6ef69d6051f23, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E.exit128" ], [ @alloc_61501b7d5a87054b7523e2785d80fd89, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E.exit121" ], [ @alloc_ff6adf247f7228c209412bda815307d3, %bb49 ], [ @alloc_80e6a15270a8277f653acc37fcc03142, %bb52 ], [ @alloc_6719a1b86bdb1dc54885f7db6d9c6092, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E.exit157" ], [ @alloc_c8158441d4fee7340a9870987ce6ba61, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E.exit150" ], [ @alloc_295064cbd5ff84d9a463a8f6ed459015, %bb32 ], [ @alloc_5a025afecf0ec93f385afbf7b6c2b834, %bb35 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef range(i64 -2147483649, 2147483649) %33, i64 noundef range(i64 0, 2305843009213693952) %34, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %35) #27
          to label %panic.i.i167.cont unwind label %cleanup4

panic.i.i167.cont:                                ; preds = %panic.i.i167.invoke
  unreachable

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4df71a3ba9dfc70aE.exit171": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E.exit157"
  %_6.i154 = load ptr, ptr %8, align 8, !alias.scope !1759, !noalias !1762, !nonnull !15, !noundef !15
  %_0.i.i155 = getelementptr inbounds nuw i32, ptr %_6.i154, i64 %indvars.iv214
  %_48 = load i32, ptr %_0.i.i155, align 4, !noundef !15
  %_0.i.i169 = getelementptr inbounds nuw i32, ptr %_6.i154, i64 %_53
  %36 = add i32 %_48, 1
  store i32 %36, ptr %_0.i.i169, align 4
  br label %bb38

terminate:                                        ; preds = %cleanup4, %bb78, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h5aefe4d933e9ee71E.exit.i"
  %37 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
  br label %terminate.body

terminate.body:                                   ; preds = %cleanup.i.i, %terminate
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #29
  unreachable
}
