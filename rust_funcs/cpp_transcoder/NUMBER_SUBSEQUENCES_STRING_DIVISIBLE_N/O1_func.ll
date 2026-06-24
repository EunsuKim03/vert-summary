define noundef i32 @f_gold(ptr dead_on_return noalias noundef align 8 captures(address) dereferenceable(24) %str, i32 noundef %n) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_16.i.i = alloca [24 x i8], align 8
  %_6 = alloca [24 x i8], align 8
  %dp = alloca [24 x i8], align 8
  %0 = getelementptr inbounds nuw i8, ptr %str, i64 16
  %_0.i = load i64, ptr %0, align 8, !alias.scope !1675, !noundef !15
  %_2.i = icmp sgt i64 %_0.i, -1
  tail call void @llvm.assume(i1 %_2.i)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %dp)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_6)
  %_7 = sext i32 %n to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1678)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1681)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1684
; invoke alloc::raw_vec::RawVecInner<A>::try_allocate_in
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_16.i.i, i64 noundef %_7, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4)
          to label %.noexc unwind label %cleanup

bb41:                                             ; preds = %cleanup2, %cleanup
  %.pn = phi { ptr, i32 } [ %10, %cleanup2 ], [ %1, %cleanup ]
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h596bf5775a548fceE"(ptr noalias noundef align 8 dereferenceable(24) %str) #30
          to label %common.resume unwind label %terminate

cleanup:                                          ; preds = %_ZN5alloc3vec9from_elem17hc15f78ee36200089E.exit, %bb14.i.i, %start, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7297bcbeb3038a07E.exit"
  %1 = landingpad { ptr, i32 }
          cleanup
  br label %bb41

.noexc:                                           ; preds = %start
  %_17.i.i = load i64, ptr %_16.i.i, align 8, !range !1034, !noalias !1684, !noundef !15
  %2 = trunc nuw i64 %_17.i.i to i1
  %3 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 8
  %err.0.i.i = load i64, ptr %3, align 8, !range !1035, !noalias !1684, !noundef !15
  %4 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 16
  br i1 %2, label %bb14.i.i, label %_ZN5alloc3vec9from_elem17hc15f78ee36200089E.exit, !prof !1036

bb14.i.i:                                         ; preds = %.noexc
  %err.1.i.i = load i64, ptr %4, align 8, !noalias !1684
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #28
          to label %.noexc11 unwind label %cleanup

.noexc11:                                         ; preds = %bb14.i.i
  unreachable

_ZN5alloc3vec9from_elem17hc15f78ee36200089E.exit: ; preds = %.noexc
  %res.1.i.i = load ptr, ptr %4, align 8, !noalias !1684, !nonnull !15, !noundef !15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1684
  store i64 %err.0.i.i, ptr %_6, align 8, !alias.scope !1684
  %5 = getelementptr inbounds nuw i8, ptr %_6, i64 8
  store ptr %res.1.i.i, ptr %5, align 8, !alias.scope !1684
  %6 = getelementptr inbounds nuw i8, ptr %_6, i64 16
  store i64 %_7, ptr %6, align 8, !alias.scope !1684
; invoke <T as alloc::vec::spec_from_elem::SpecFromElem>::from_elem
  invoke void @"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h8f6db2147c9394efE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %dp, ptr noalias noundef align 8 captures(address) dereferenceable(24) %_6, i64 noundef %_0.i)
          to label %bb3 unwind label %cleanup

bb3:                                              ; preds = %_ZN5alloc3vec9from_elem17hc15f78ee36200089E.exit
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_6)
  %7 = getelementptr inbounds nuw i8, ptr %dp, i64 16
  %len.i = load i64, ptr %7, align 8, !alias.scope !1685, !noalias !1688, !noundef !15
  %_4.i.i.not = icmp eq i64 %len.i, 0
  br i1 %_4.i.i.not, label %panic.i.i108.invoke, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h3b448b801ff7b155E.exit"

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h3b448b801ff7b155E.exit": ; preds = %bb3
  %8 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  %_6.i = load ptr, ptr %8, align 8, !alias.scope !1685, !noalias !1688, !nonnull !15, !noundef !15
  %9 = getelementptr inbounds nuw i8, ptr %str, i64 8
  %_4.i.i14 = load ptr, ptr %9, align 8, !alias.scope !1690, !nonnull !15, !noundef !15
  %len.i.i = load i64, ptr %0, align 8, !alias.scope !1690, !noundef !15
  %_18.not = icmp eq i64 %len.i.i, 0
  br i1 %_18.not, label %panic6.invoke, label %bb6

cleanup2:                                         ; preds = %panic6.invoke, %panic.i.i108.invoke, %panic3
  %10 = landingpad { ptr, i32 }
          cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hbb39638943c8d54cE"(ptr noalias noundef align 8 dereferenceable(24) %dp) #30
          to label %bb41 unwind label %terminate

bb6:                                              ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h3b448b801ff7b155E.exit"
  %_19 = icmp eq i32 %n, 0
  br i1 %_19, label %panic3, label %bb7

unreachable:                                      ; preds = %panic3
  unreachable

bb7:                                              ; preds = %bb6
  %_14 = load i8, ptr %_4.i.i14, align 1, !noundef !15
  %_13 = add i8 %_14, -48
  %_12 = zext i8 %_13 to i64
  %_11 = urem i64 %_12, %_7
  %11 = getelementptr inbounds nuw i8, ptr %_6.i, i64 16
  %len.i15 = load i64, ptr %11, align 8, !alias.scope !1695, !noalias !1698, !noundef !15
  %_4.i.i16 = icmp ult i64 %_11, %len.i15
  br i1 %_4.i.i16, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h7b84ba994d8621e1E.exit", label %panic.i.i108.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h7b84ba994d8621e1E.exit": ; preds = %bb7
  %12 = getelementptr inbounds nuw i8, ptr %_6.i, i64 8
  %_6.i18 = load ptr, ptr %12, align 8, !alias.scope !1695, !noalias !1698, !nonnull !15, !noundef !15
  %_0.i.i = getelementptr inbounds nuw i32, ptr %_6.i18, i64 %_11
  %13 = load i32, ptr %_0.i.i, align 4, !noundef !15
  %14 = add i32 %13, 1
  store i32 %14, ptr %_0.i.i, align 4
  %_0.i.i.i213 = icmp samesign ugt i64 %_0.i, 1
  br i1 %_0.i.i.i213, label %bb13.lr.ph, label %bb14

bb13.lr.ph:                                       ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h7b84ba994d8621e1E.exit"
  %_0.i.i.i52210 = icmp sgt i32 %n, 0
  %15 = zext i1 %_0.i.i.i52210 to i32
  br label %bb13

panic3:                                           ; preds = %bb6
; invoke core::panicking::panic_const::panic_const_rem_by_zero
  invoke void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_d9020416cf4c17ccf4816ff7d2dbc84e) #28
          to label %unreachable unwind label %cleanup2

bb10.loopexit:                                    ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h7b84ba994d8621e1E.exit112", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h7b84ba994d8621e1E.exit48"
  %_0.i.i.i = icmp ult i64 %spec.select217, %_0.i
  %_0.i1.i.i = zext i1 %_0.i.i.i to i64
  %spec.select = add nuw i64 %spec.select217, %_0.i1.i.i
  br i1 %_0.i.i.i, label %bb13, label %bb14

bb13:                                             ; preds = %bb13.lr.ph, %bb10.loopexit
  %spec.select217 = phi i64 [ 2, %bb13.lr.ph ], [ %spec.select, %bb10.loopexit ]
  %iter.sroa.0.0216 = phi i64 [ 1, %bb13.lr.ph ], [ %spec.select217, %bb10.loopexit ]
  %len.i21 = load i64, ptr %7, align 8, !alias.scope !1700, !noalias !1703, !noundef !15
  %_4.i.i22 = icmp ult i64 %iter.sroa.0.0216, %len.i21
  br i1 %_4.i.i22, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h3b448b801ff7b155E.exit27", label %panic.i.i108.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h3b448b801ff7b155E.exit27": ; preds = %bb13
  %_6.i24 = load ptr, ptr %8, align 8, !alias.scope !1700, !noalias !1703, !nonnull !15, !noundef !15
  %_0.i.i25 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i24, i64 %iter.sroa.0.0216
  %len.i.i41 = load i64, ptr %0, align 8, !alias.scope !1705, !noundef !15
  %_37 = icmp ult i64 %iter.sroa.0.0216, %len.i.i41
  br i1 %_37, label %bb18, label %panic6.invoke

bb14:                                             ; preds = %bb10.loopexit, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h7b84ba994d8621e1E.exit"
  %_75 = add nsw i64 %_0.i, -1
  %len.i28 = load i64, ptr %7, align 8, !alias.scope !1710, !noalias !1713, !noundef !15
  %_4.i.i29 = icmp ult i64 %_75, %len.i28
  br i1 %_4.i.i29, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4881cc66da039a73E.exit", label %panic.i.i108.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4881cc66da039a73E.exit": ; preds = %bb14
  %_6.i31 = load ptr, ptr %8, align 8, !alias.scope !1710, !noalias !1713, !nonnull !15, !noundef !15
  %_0.i.i32 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i31, i64 %_75
  %16 = getelementptr inbounds nuw i8, ptr %_0.i.i32, i64 16
  %len.i34 = load i64, ptr %16, align 8, !alias.scope !1715, !noalias !1718, !noundef !15
  %_4.i.i35.not = icmp eq i64 %len.i34, 0
  br i1 %_4.i.i35.not, label %panic.i.i108.invoke, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7297bcbeb3038a07E.exit"

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7297bcbeb3038a07E.exit": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4881cc66da039a73E.exit"
  %17 = getelementptr inbounds nuw i8, ptr %_0.i.i32, i64 8
  %_6.i37 = load ptr, ptr %17, align 8, !alias.scope !1715, !noalias !1718, !nonnull !15, !noundef !15
  %_0 = load i32, ptr %_6.i37, align 4, !noundef !15
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hbb39638943c8d54cE"(ptr noalias noundef align 8 dereferenceable(24) %dp)
          to label %bb38 unwind label %cleanup

bb38:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7297bcbeb3038a07E.exit"
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %dp)
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h596bf5775a548fceE.exit" unwind label %cleanup.i.i

cleanup.i.i:                                      ; preds = %bb38
  %18 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
          to label %common.resume unwind label %terminate.i.i

terminate.i.i:                                    ; preds = %cleanup.i.i
  %19 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #26
  unreachable

common.resume:                                    ; preds = %bb41, %cleanup.i.i
  %common.resume.op = phi { ptr, i32 } [ %18, %cleanup.i.i ], [ %.pn, %bb41 ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h596bf5775a548fceE.exit": ; preds = %bb38
; call <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
  ret i32 %_0

bb18:                                             ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h3b448b801ff7b155E.exit27"
  %_4.i.i40 = load ptr, ptr %9, align 8, !alias.scope !1705, !nonnull !15, !noundef !15
  %20 = getelementptr inbounds nuw i8, ptr %_4.i.i40, i64 %iter.sroa.0.0216
  %_33 = load i8, ptr %20, align 1, !noundef !15
  %_32 = add i8 %_33, -48
  %_31 = zext i8 %_32 to i64
  %_30 = urem i64 %_31, %_7
  %21 = getelementptr inbounds nuw i8, ptr %_0.i.i25, i64 16
  %len.i42 = load i64, ptr %21, align 8, !alias.scope !1720, !noalias !1723, !noundef !15
  %_4.i.i43 = icmp ult i64 %_30, %len.i42
  br i1 %_4.i.i43, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h7b84ba994d8621e1E.exit48", label %panic.i.i108.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h7b84ba994d8621e1E.exit48": ; preds = %bb18
  %22 = getelementptr inbounds nuw i8, ptr %_0.i.i25, i64 8
  %_6.i45 = load ptr, ptr %22, align 8, !alias.scope !1720, !noalias !1723, !nonnull !15, !noundef !15
  %_0.i.i46 = getelementptr inbounds nuw i32, ptr %_6.i45, i64 %_30
  %23 = load i32, ptr %_0.i.i46, align 4, !noundef !15
  %24 = add i32 %23, 1
  store i32 %24, ptr %_0.i.i46, align 4
  br i1 %_0.i.i.i52210, label %bb23.lr.ph, label %bb10.loopexit

bb23.lr.ph:                                       ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h7b84ba994d8621e1E.exit48"
  %_49 = add nsw i64 %iter.sroa.0.0216, -1
  br label %bb23

bb23:                                             ; preds = %bb23.lr.ph, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h7b84ba994d8621e1E.exit112"
  %spec.select114212 = phi i32 [ %15, %bb23.lr.ph ], [ %spec.select114, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h7b84ba994d8621e1E.exit112" ]
  %iter1.sroa.0.0211 = phi i32 [ 0, %bb23.lr.ph ], [ %spec.select114212, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h7b84ba994d8621e1E.exit112" ]
  %len.i55 = load i64, ptr %7, align 8, !alias.scope !1725, !noalias !1728, !noundef !15
  %_4.i.i56 = icmp ult i64 %_49, %len.i55
  br i1 %_4.i.i56, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4881cc66da039a73E.exit61", label %panic.i.i108.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4881cc66da039a73E.exit61": ; preds = %bb23
  %_6.i58 = load ptr, ptr %8, align 8, !alias.scope !1725, !noalias !1728, !nonnull !15, !noundef !15
  %_0.i.i59 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i58, i64 %_49
  %_50 = zext nneg i32 %iter1.sroa.0.0211 to i64
  %25 = getelementptr inbounds nuw i8, ptr %_0.i.i59, i64 16
  %len.i62 = load i64, ptr %25, align 8, !alias.scope !1730, !noalias !1733, !noundef !15
  %_4.i.i63 = icmp ugt i64 %len.i62, %_50
  br i1 %_4.i.i63, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7297bcbeb3038a07E.exit68", label %panic.i.i108.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7297bcbeb3038a07E.exit68": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4881cc66da039a73E.exit61"
  %26 = getelementptr inbounds nuw i8, ptr %_0.i.i59, i64 8
  %_6.i65 = load ptr, ptr %26, align 8, !alias.scope !1730, !noalias !1733, !nonnull !15, !noundef !15
  %_0.i.i66 = getelementptr inbounds nuw i32, ptr %_6.i65, i64 %_50
  %_45 = load i32, ptr %_0.i.i66, align 4, !noundef !15
  %_4.i.i70 = icmp ult i64 %iter.sroa.0.0216, %len.i55
  br i1 %_4.i.i70, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h3b448b801ff7b155E.exit75", label %panic.i.i108.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h3b448b801ff7b155E.exit75": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7297bcbeb3038a07E.exit68"
  %_0.i.i73 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i58, i64 %iter.sroa.0.0216
  %27 = getelementptr inbounds nuw i8, ptr %_0.i.i73, i64 16
  %len.i76 = load i64, ptr %27, align 8, !alias.scope !1735, !noalias !1738, !noundef !15
  %_4.i.i77 = icmp ugt i64 %len.i76, %_50
  br i1 %_4.i.i77, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h7b84ba994d8621e1E.exit82", label %panic.i.i108.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h7b84ba994d8621e1E.exit82": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h3b448b801ff7b155E.exit75"
  %28 = getelementptr inbounds nuw i8, ptr %_0.i.i73, i64 8
  %_6.i79 = load ptr, ptr %28, align 8, !alias.scope !1735, !noalias !1738, !nonnull !15, !noundef !15
  %_0.i.i80 = getelementptr inbounds nuw i32, ptr %_6.i79, i64 %_50
  %29 = load i32, ptr %_0.i.i80, align 4, !noundef !15
  %30 = add i32 %29, %_45
  store i32 %30, ptr %_0.i.i80, align 4
  %len.i83 = load i64, ptr %7, align 8, !alias.scope !1740, !noalias !1743, !noundef !15
  %_4.i.i84 = icmp ult i64 %_49, %len.i83
  br i1 %_4.i.i84, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4881cc66da039a73E.exit89", label %panic.i.i108.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4881cc66da039a73E.exit89": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h7b84ba994d8621e1E.exit82"
  %_6.i86 = load ptr, ptr %8, align 8, !alias.scope !1740, !noalias !1743, !nonnull !15, !noundef !15
  %_0.i.i87 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i86, i64 %_49
  %31 = getelementptr inbounds nuw i8, ptr %_0.i.i87, i64 16
  %len.i90 = load i64, ptr %31, align 8, !alias.scope !1745, !noalias !1748, !noundef !15
  %_4.i.i91 = icmp ugt i64 %len.i90, %_50
  br i1 %_4.i.i91, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7297bcbeb3038a07E.exit96", label %panic.i.i108.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7297bcbeb3038a07E.exit96": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4881cc66da039a73E.exit89"
  %32 = getelementptr inbounds nuw i8, ptr %_0.i.i87, i64 8
  %_6.i93 = load ptr, ptr %32, align 8, !alias.scope !1745, !noalias !1748, !nonnull !15, !noundef !15
  %_0.i.i94 = getelementptr inbounds nuw i32, ptr %_6.i93, i64 %_50
  %_54 = load i32, ptr %_0.i.i94, align 4, !noundef !15
  %_4.i.i98 = icmp ult i64 %iter.sroa.0.0216, %len.i83
  br i1 %_4.i.i98, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h3b448b801ff7b155E.exit103", label %panic.i.i108.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h3b448b801ff7b155E.exit103": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7297bcbeb3038a07E.exit96"
  %_0.i.i101 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i86, i64 %iter.sroa.0.0216
  %len.i.i105 = load i64, ptr %0, align 8, !alias.scope !1750, !noundef !15
  %_71 = icmp ult i64 %iter.sroa.0.0216, %len.i.i105
  br i1 %_71, label %bb34, label %panic6.invoke

panic6.invoke:                                    ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h3b448b801ff7b155E.exit27", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h3b448b801ff7b155E.exit103", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h3b448b801ff7b155E.exit"
  %33 = phi i64 [ 0, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h3b448b801ff7b155E.exit" ], [ %iter.sroa.0.0216, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h3b448b801ff7b155E.exit103" ], [ %iter.sroa.0.0216, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h3b448b801ff7b155E.exit27" ]
  %34 = phi i64 [ 0, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h3b448b801ff7b155E.exit" ], [ %len.i.i105, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h3b448b801ff7b155E.exit103" ], [ %len.i.i41, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h3b448b801ff7b155E.exit27" ]
  %35 = phi ptr [ @alloc_d09248569f8b3cdbf62cd639b51892bf, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h3b448b801ff7b155E.exit" ], [ @alloc_ed1ca8cedcbd67ec0a3b75dc4c2ab995, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h3b448b801ff7b155E.exit103" ], [ @alloc_3450e43cd9a8c7c719ac9c36e788c625, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h3b448b801ff7b155E.exit27" ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %33, i64 noundef %34, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %35) #28
          to label %panic6.cont unwind label %cleanup2

panic6.cont:                                      ; preds = %panic6.invoke
  unreachable

bb34:                                             ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h3b448b801ff7b155E.exit103"
  %_4.i.i104 = load ptr, ptr %9, align 8, !alias.scope !1750, !nonnull !15, !noundef !15
  %_64 = mul i32 %iter1.sroa.0.0211, 10
  %36 = getelementptr inbounds nuw i8, ptr %_4.i.i104, i64 %iter.sroa.0.0216
  %_67 = load i8, ptr %36, align 1, !noundef !15
  %_66 = add i8 %_67, -48
  %_65 = zext i8 %_66 to i32
  %_63 = add i32 %_64, %_65
  %_62 = sext i32 %_63 to i64
  %_61 = urem i64 %_62, %_7
  %37 = getelementptr inbounds nuw i8, ptr %_0.i.i101, i64 16
  %len.i106 = load i64, ptr %37, align 8, !alias.scope !1755, !noalias !1758, !noundef !15
  %_4.i.i107 = icmp ult i64 %_61, %len.i106
  br i1 %_4.i.i107, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h7b84ba994d8621e1E.exit112", label %panic.i.i108.invoke

panic.i.i108.invoke:                              ; preds = %bb18, %bb13, %bb34, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7297bcbeb3038a07E.exit96", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4881cc66da039a73E.exit89", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h7b84ba994d8621e1E.exit82", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h3b448b801ff7b155E.exit75", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7297bcbeb3038a07E.exit68", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4881cc66da039a73E.exit61", %bb23, %bb3, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4881cc66da039a73E.exit", %bb14, %bb7
  %38 = phi i64 [ %_11, %bb7 ], [ %_75, %bb14 ], [ 0, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4881cc66da039a73E.exit" ], [ 0, %bb3 ], [ %_61, %bb34 ], [ %iter.sroa.0.0216, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7297bcbeb3038a07E.exit96" ], [ %_50, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4881cc66da039a73E.exit89" ], [ %_49, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h7b84ba994d8621e1E.exit82" ], [ %_50, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h3b448b801ff7b155E.exit75" ], [ %iter.sroa.0.0216, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7297bcbeb3038a07E.exit68" ], [ %_50, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4881cc66da039a73E.exit61" ], [ %_49, %bb23 ], [ %_30, %bb18 ], [ %iter.sroa.0.0216, %bb13 ]
  %39 = phi i64 [ %len.i15, %bb7 ], [ %len.i28, %bb14 ], [ %len.i34, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4881cc66da039a73E.exit" ], [ %len.i, %bb3 ], [ %len.i106, %bb34 ], [ %len.i83, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7297bcbeb3038a07E.exit96" ], [ %len.i90, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4881cc66da039a73E.exit89" ], [ %len.i83, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h7b84ba994d8621e1E.exit82" ], [ %len.i76, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h3b448b801ff7b155E.exit75" ], [ %len.i55, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7297bcbeb3038a07E.exit68" ], [ %len.i62, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4881cc66da039a73E.exit61" ], [ %len.i55, %bb23 ], [ %len.i42, %bb18 ], [ %len.i21, %bb13 ]
  %40 = phi ptr [ @alloc_390d12d247582ccf9e7b3ab6a346ac19, %bb7 ], [ @alloc_1521b96a261b253deaa459eb31a92544, %bb14 ], [ @alloc_f24cd11875f84467635e79aa9592747e, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4881cc66da039a73E.exit" ], [ @alloc_bdf3931a460671aeeed275c2378e41bd, %bb3 ], [ @alloc_2b3f18b93afb77df816dfe79e70614e4, %bb34 ], [ @alloc_b0efe8837264838c914721ed778c3c8e, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7297bcbeb3038a07E.exit96" ], [ @alloc_55f33d4e9119dc18f6e55eb5230cd057, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4881cc66da039a73E.exit89" ], [ @alloc_1326b1f5f83e68288b3897ba6dc7e9f0, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h7b84ba994d8621e1E.exit82" ], [ @alloc_e4260f00f61be59df837d67b4fc34189, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h3b448b801ff7b155E.exit75" ], [ @alloc_6843b76cd13ecd9b34ec8a4f95b97ba9, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7297bcbeb3038a07E.exit68" ], [ @alloc_f688a195bdb62474b00d80c3462d68ba, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4881cc66da039a73E.exit61" ], [ @alloc_d20f6ce92c21502222327bc7975236ef, %bb23 ], [ @alloc_b1b37c7782e4e6cb4597f292e11f4ee8, %bb18 ], [ @alloc_d1a680acec439a3168a347ebce64ebaa, %bb13 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %38, i64 noundef range(i64 0, 2305843009213693952) %39, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %40) #27
          to label %panic.i.i108.cont unwind label %cleanup2

panic.i.i108.cont:                                ; preds = %panic.i.i108.invoke
  unreachable

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h7b84ba994d8621e1E.exit112": ; preds = %bb34
  %41 = getelementptr inbounds nuw i8, ptr %_0.i.i101, i64 8
  %_6.i109 = load ptr, ptr %41, align 8, !alias.scope !1755, !noalias !1758, !nonnull !15, !noundef !15
  %_0.i.i110 = getelementptr inbounds nuw i32, ptr %_6.i109, i64 %_61
  %42 = load i32, ptr %_0.i.i110, align 4, !noundef !15
  %43 = add i32 %42, %_54
  store i32 %43, ptr %_0.i.i110, align 4
  %_0.i.i.i52 = icmp slt i32 %spec.select114212, %n
  %44 = zext i1 %_0.i.i.i52 to i32
  %spec.select114 = add nuw nsw i32 %spec.select114212, %44
  br i1 %_0.i.i.i52, label %bb23, label %bb10.loopexit

terminate:                                        ; preds = %bb41, %cleanup2
  %45 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #26
  unreachable
}
