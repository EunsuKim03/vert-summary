define noundef i32 @f_gold(ptr dead_on_return noalias noundef align 8 captures(address) dereferenceable(24) %X, ptr dead_on_return noalias noundef align 8 captures(address) dereferenceable(24) %Y) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_16.i.i = alloca [24 x i8], align 8
  %_42 = alloca [16 x i8], align 8
  %_35 = alloca [16 x i8], align 8
  %_8 = alloca [24 x i8], align 8
  %L = alloca [24 x i8], align 8
  %0 = getelementptr inbounds nuw i8, ptr %X, i64 16
  %_0.i = load i64, ptr %0, align 8, !alias.scope !1706, !noundef !15
  %_2.i = icmp sgt i64 %_0.i, -1
  tail call void @llvm.assume(i1 %_2.i)
  %1 = getelementptr inbounds nuw i8, ptr %Y, i64 16
  %_0.i15 = load i64, ptr %1, align 8, !alias.scope !1709, !noundef !15
  %_2.i16 = icmp sgt i64 %_0.i15, -1
  tail call void @llvm.assume(i1 %_2.i16)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %L)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_8)
  %_9 = add nuw i64 %_0.i15, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1712)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1715)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1718
; invoke alloc::raw_vec::RawVecInner<A>::try_allocate_in
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_16.i.i, i64 noundef %_9, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4)
          to label %.noexc unwind label %cleanup

bb51:                                             ; preds = %cleanup2, %cleanup
  %.pn = phi { ptr, i32 } [ %18, %cleanup2 ], [ %2, %cleanup ]
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hcbe033eebee81fb1E"(ptr noalias noundef align 8 dereferenceable(24) %Y) #32
          to label %bb52 unwind label %terminate

cleanup:                                          ; preds = %_ZN5alloc3vec9from_elem17had7d64d6a4a48132E.exit, %bb14.i.i, %start, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb45ac865c4a4340fE.exit"
  %2 = landingpad { ptr, i32 }
          cleanup
  br label %bb51

.noexc:                                           ; preds = %start
  %_17.i.i = load i64, ptr %_16.i.i, align 8, !range !1065, !noalias !1718, !noundef !15
  %3 = trunc nuw i64 %_17.i.i to i1
  %4 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 8
  %err.0.i.i = load i64, ptr %4, align 8, !range !1066, !noalias !1718, !noundef !15
  %5 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 16
  br i1 %3, label %bb14.i.i, label %_ZN5alloc3vec9from_elem17had7d64d6a4a48132E.exit, !prof !1067

bb14.i.i:                                         ; preds = %.noexc
  %err.1.i.i = load i64, ptr %5, align 8, !noalias !1718
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #30
          to label %.noexc17 unwind label %cleanup

.noexc17:                                         ; preds = %bb14.i.i
  unreachable

_ZN5alloc3vec9from_elem17had7d64d6a4a48132E.exit: ; preds = %.noexc
  %res.1.i.i = load ptr, ptr %5, align 8, !noalias !1718, !nonnull !15, !noundef !15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1718
  store i64 %err.0.i.i, ptr %_8, align 8, !alias.scope !1718
  %6 = getelementptr inbounds nuw i8, ptr %_8, i64 8
  store ptr %res.1.i.i, ptr %6, align 8, !alias.scope !1718
  %7 = getelementptr inbounds nuw i8, ptr %_8, i64 16
  store i64 %_9, ptr %7, align 8, !alias.scope !1718
; invoke <T as alloc::vec::spec_from_elem::SpecFromElem>::from_elem
  invoke void @"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hde15162a6a161f62E"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %L, ptr noalias noundef align 8 captures(address) dereferenceable(24) %_8, i64 noundef 2)
          to label %bb4 unwind label %cleanup

bb4:                                              ; preds = %_ZN5alloc3vec9from_elem17had7d64d6a4a48132E.exit
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_8)
  %8 = getelementptr inbounds nuw i8, ptr %X, i64 8
  %9 = getelementptr inbounds nuw i8, ptr %_35, i64 8
  %10 = getelementptr inbounds nuw i8, ptr %Y, i64 8
  %11 = getelementptr inbounds nuw i8, ptr %_42, i64 8
  %12 = getelementptr inbounds nuw i8, ptr %L, i64 16
  %13 = getelementptr inbounds nuw i8, ptr %L, i64 8
  %14 = getelementptr inbounds nuw i8, ptr %L, i64 16
  %15 = getelementptr inbounds nuw i8, ptr %L, i64 8
  %16 = getelementptr inbounds nuw i8, ptr %L, i64 16
  %17 = getelementptr inbounds nuw i8, ptr %L, i64 8
  %_0.i3.i.i353 = icmp ne i64 %_0.i, 0
  %spec.select354 = zext i1 %_0.i3.i.i353 to i64
  %not._0.i3.i.i353 = xor i1 %_0.i3.i.i353, true
  %iter.sroa.7.1355 = zext i1 %not._0.i3.i.i353 to i8
  %_0.i3.i.i39347 = icmp ne i64 %_0.i15, 0
  %spec.select133348 = zext i1 %_0.i3.i.i39347 to i64
  %not._0.i3.i.i39347 = xor i1 %_0.i3.i.i39347, true
  %iter1.sroa.7.1349 = zext i1 %not._0.i3.i.i39347 to i8
  br label %bb10

cleanup2:                                         ; preds = %panic.i.i127.invoke
  %18 = landingpad { ptr, i32 }
          cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h44214dba56b9c7e4E"(ptr noalias noundef align 8 dereferenceable(24) %L) #32
          to label %bb51 unwind label %terminate

bb7.loopexit:                                     ; preds = %bb44
  %_10.i.i = trunc nuw i8 %iter.sroa.7.1358 to i1
  %_0.i.not.i.i = icmp ugt i64 %iter.sroa.0.1357, %_0.i
  %or.cond135 = select i1 %_10.i.i, i1 true, i1 %_0.i.not.i.i
  %_0.i3.i.i = icmp ult i64 %iter.sroa.0.1357, %_0.i
  %not.or.cond135 = xor i1 %or.cond135, true
  %narrow = select i1 %not.or.cond135, i1 %_0.i3.i.i, i1 false
  %spec.select = zext i1 %narrow to i64
  %iter.sroa.0.1 = add nuw i64 %iter.sroa.0.1357, %spec.select
  %19 = select i1 %or.cond135, i1 true, i1 %_0.i3.i.i
  %iter.sroa.7.1 = select i1 %19, i8 %iter.sroa.7.1358, i8 1
  br i1 %or.cond135, label %bb11, label %bb10

bb10:                                             ; preds = %bb4, %bb7.loopexit
  %iter.sroa.7.1358 = phi i8 [ %iter.sroa.7.1355, %bb4 ], [ %iter.sroa.7.1, %bb7.loopexit ]
  %iter.sroa.0.1357 = phi i64 [ %spec.select354, %bb4 ], [ %iter.sroa.0.1, %bb7.loopexit ]
  %iter.sroa.0.0356 = phi i64 [ 0, %bb4 ], [ %iter.sroa.0.1357, %bb7.loopexit ]
  %20 = and i64 %iter.sroa.0.0356, 1
  %_25 = icmp eq i64 %iter.sroa.0.0356, 0
  %_38 = add i64 %iter.sroa.0.0356, -1
  %_61 = xor i64 %20, 1
  %_50 = xor i64 %20, 1
  br label %bb16

bb11:                                             ; preds = %bb7.loopexit
  %21 = getelementptr inbounds nuw i8, ptr %L, i64 16
  %len.i = load i64, ptr %21, align 8, !alias.scope !1719, !noalias !1722, !noundef !15
  %_4.i.i = icmp samesign ult i64 %20, %len.i
  br i1 %_4.i.i, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h82c39717c1eb3998E.exit", label %panic.i.i127.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h82c39717c1eb3998E.exit": ; preds = %bb11
  %22 = getelementptr inbounds nuw i8, ptr %L, i64 8
  %_6.i = load ptr, ptr %22, align 8, !alias.scope !1719, !noalias !1722, !nonnull !15, !noundef !15
  %_0.i.i = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i, i64 %20
  %23 = getelementptr inbounds nuw i8, ptr %_0.i.i, i64 16
  %len.i20 = load i64, ptr %23, align 8, !alias.scope !1724, !noalias !1727, !noundef !15
  %_4.i.i21 = icmp ult i64 %_0.i15, %len.i20
  br i1 %_4.i.i21, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb45ac865c4a4340fE.exit", label %panic.i.i127.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb45ac865c4a4340fE.exit": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h82c39717c1eb3998E.exit"
  %24 = getelementptr inbounds nuw i8, ptr %_0.i.i, i64 8
  %_6.i23 = load ptr, ptr %24, align 8, !alias.scope !1724, !noalias !1727, !nonnull !15, !noundef !15
  %_0.i.i24 = getelementptr inbounds nuw i32, ptr %_6.i23, i64 %_0.i15
  %_0 = load i32, ptr %_0.i.i24, align 4, !noundef !15
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h44214dba56b9c7e4E"(ptr noalias noundef align 8 dereferenceable(24) %L)
          to label %bb47 unwind label %cleanup

bb47:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb45ac865c4a4340fE.exit"
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %L)
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %Y)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h16fb91a53d81c8f8E.exit.i" unwind label %cleanup.i.i

cleanup.i.i:                                      ; preds = %bb47
  %25 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %Y)
          to label %bb52 unwind label %terminate.i.i

terminate.i.i:                                    ; preds = %cleanup.i.i
  %26 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #28
  unreachable

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h16fb91a53d81c8f8E.exit.i": ; preds = %bb47
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %Y)
          to label %bb48 unwind label %cleanup3

bb52:                                             ; preds = %cleanup3, %cleanup.i.i, %bb51
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb51 ], [ %27, %cleanup3 ], [ %25, %cleanup.i.i ]
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hcbe033eebee81fb1E"(ptr noalias noundef align 8 dereferenceable(24) %X) #32
          to label %common.resume unwind label %terminate

cleanup3:                                         ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h16fb91a53d81c8f8E.exit.i"
  %27 = landingpad { ptr, i32 }
          cleanup
  br label %bb52

bb48:                                             ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h16fb91a53d81c8f8E.exit.i"
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %X)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hcbe033eebee81fb1E.exit31" unwind label %cleanup.i.i27

cleanup.i.i27:                                    ; preds = %bb48
  %28 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %X)
          to label %common.resume unwind label %terminate.i.i28

terminate.i.i28:                                  ; preds = %cleanup.i.i27
  %29 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #28
  unreachable

common.resume:                                    ; preds = %bb52, %cleanup.i.i27
  %common.resume.op = phi { ptr, i32 } [ %28, %cleanup.i.i27 ], [ %.pn.pn, %bb52 ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hcbe033eebee81fb1E.exit31": ; preds = %bb48
; call <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %X)
  ret i32 %_0

bb16:                                             ; preds = %bb10, %bb44
  %_0.sroa.3.0.i.i41352 = phi i64 [ 0, %bb10 ], [ %_0.sroa.3.0.i.i41, %bb44 ]
  %iter1.sroa.7.1351 = phi i8 [ %iter1.sroa.7.1349, %bb10 ], [ %iter1.sroa.7.1, %bb44 ]
  %iter1.sroa.0.1350 = phi i64 [ %spec.select133348, %bb10 ], [ %iter1.sroa.0.1, %bb44 ]
  %_26 = icmp eq i64 %_0.sroa.3.0.i.i41352, 0
  %or.cond = or i1 %_25, %_26
  br i1 %or.cond, label %bb19, label %bb22

bb19:                                             ; preds = %bb16
  %len.i46 = load i64, ptr %16, align 8, !alias.scope !1729, !noalias !1732, !noundef !15
  %_4.i.i47 = icmp samesign ult i64 %20, %len.i46
  br i1 %_4.i.i47, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h7a0ce9ec0489349aE.exit", label %panic.i.i127.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h7a0ce9ec0489349aE.exit": ; preds = %bb19
  %_6.i49 = load ptr, ptr %17, align 8, !alias.scope !1729, !noalias !1732, !nonnull !15, !noundef !15
  %_0.i.i50 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i49, i64 %20
  %30 = getelementptr inbounds nuw i8, ptr %_0.i.i50, i64 16
  %len.i125 = load i64, ptr %30, align 8, !alias.scope !1734, !noalias !1737, !noundef !15
  %_4.i.i126 = icmp ult i64 %_0.sroa.3.0.i.i41352, %len.i125
  br i1 %_4.i.i126, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h48659c87ff6e3cb4E.exit131", label %panic.i.i127.invoke

bb22:                                             ; preds = %bb16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_35)
  %_6.i.i = load ptr, ptr %8, align 8, !alias.scope !1739, !nonnull !15, !noundef !15
  %len.i.i = load i64, ptr %0, align 8, !alias.scope !1739, !noundef !15
  %_7.i = getelementptr inbounds nuw i8, ptr %_6.i.i, i64 %len.i.i
  store ptr %_6.i.i, ptr %_35, align 8
  store ptr %_7.i, ptr %9, align 8
; call core::iter::traits::iterator::Iterator::nth
  %31 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17hd6310bf1b462ad66E(ptr noalias noundef align 8 dereferenceable(16) %_35, i64 noundef %_38)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_42)
  %_6.i.i52 = load ptr, ptr %10, align 8, !alias.scope !1744, !nonnull !15, !noundef !15
  %len.i.i53 = load i64, ptr %1, align 8, !alias.scope !1744, !noundef !15
  %_7.i54 = getelementptr inbounds nuw i8, ptr %_6.i.i52, i64 %len.i.i53
  store ptr %_6.i.i52, ptr %_42, align 8
  store ptr %_7.i54, ptr %11, align 8
  %_45 = add i64 %_0.sroa.3.0.i.i41352, -1
; call core::iter::traits::iterator::Iterator::nth
  %32 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17hd6310bf1b462ad66E(ptr noalias noundef align 8 dereferenceable(16) %_42, i64 noundef %_45)
  %_0.sroa.0.0.shrunk.i = icmp eq i32 %32, %31
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_42)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_35)
  br i1 %_0.sroa.0.0.shrunk.i, label %bb30, label %bb35

bb35:                                             ; preds = %bb22
  %len.i55 = load i64, ptr %12, align 8, !alias.scope !1749, !noalias !1752, !noundef !15
  %_4.i.i56 = icmp samesign ult i64 %_61, %len.i55
  br i1 %_4.i.i56, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h82c39717c1eb3998E.exit61", label %panic.i.i127.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h82c39717c1eb3998E.exit61": ; preds = %bb35
  %_6.i58 = load ptr, ptr %13, align 8, !alias.scope !1749, !noalias !1752, !nonnull !15, !noundef !15
  %_0.i.i59 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i58, i64 %_61
  %33 = getelementptr inbounds nuw i8, ptr %_0.i.i59, i64 16
  %len.i69 = load i64, ptr %33, align 8, !alias.scope !1754, !noalias !1757, !noundef !15
  %_4.i.i70 = icmp ult i64 %_0.sroa.3.0.i.i41352, %len.i69
  br i1 %_4.i.i70, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb45ac865c4a4340fE.exit75", label %panic.i.i127.invoke

bb30:                                             ; preds = %bb22
  %len.i62 = load i64, ptr %14, align 8, !alias.scope !1759, !noalias !1762, !noundef !15
  %_4.i.i63 = icmp samesign ult i64 %_50, %len.i62
  br i1 %_4.i.i63, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h82c39717c1eb3998E.exit68", label %panic.i.i127.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h82c39717c1eb3998E.exit68": ; preds = %bb30
  %_6.i65 = load ptr, ptr %15, align 8, !alias.scope !1759, !noalias !1762, !nonnull !15, !noundef !15
  %_0.i.i66 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i65, i64 %_50
  %34 = getelementptr inbounds nuw i8, ptr %_0.i.i66, i64 16
  %len.i104 = load i64, ptr %34, align 8, !alias.scope !1764, !noalias !1767, !noundef !15
  %_4.i.i105 = icmp ult i64 %_45, %len.i104
  br i1 %_4.i.i105, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb45ac865c4a4340fE.exit110", label %panic.i.i127.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb45ac865c4a4340fE.exit75": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h82c39717c1eb3998E.exit61"
  %35 = getelementptr inbounds nuw i8, ptr %_0.i.i59, i64 8
  %_6.i72 = load ptr, ptr %35, align 8, !alias.scope !1754, !noalias !1757, !nonnull !15, !noundef !15
  %_0.i.i73 = getelementptr inbounds nuw i32, ptr %_6.i72, i64 %_0.sroa.3.0.i.i41352
  %_57 = load i32, ptr %_0.i.i73, align 4, !noundef !15
  %_4.i.i77 = icmp samesign ult i64 %20, %len.i55
  br i1 %_4.i.i77, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h82c39717c1eb3998E.exit82", label %panic.i.i127.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h82c39717c1eb3998E.exit82": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb45ac865c4a4340fE.exit75"
  %_0.i.i80 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i58, i64 %20
  %36 = getelementptr inbounds nuw i8, ptr %_0.i.i80, i64 16
  %len.i83 = load i64, ptr %36, align 8, !alias.scope !1769, !noalias !1772, !noundef !15
  %_4.i.i84 = icmp ult i64 %_45, %len.i83
  br i1 %_4.i.i84, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb45ac865c4a4340fE.exit89", label %panic.i.i127.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb45ac865c4a4340fE.exit89": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h82c39717c1eb3998E.exit82"
  %_4.i.i99 = icmp ult i64 %_0.sroa.3.0.i.i41352, %len.i83
  br i1 %_4.i.i99, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h48659c87ff6e3cb4E.exit", label %panic.i.i127.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h48659c87ff6e3cb4E.exit": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb45ac865c4a4340fE.exit89"
  %37 = getelementptr inbounds nuw i8, ptr %_0.i.i80, i64 8
  %_6.i86 = load ptr, ptr %37, align 8, !alias.scope !1769, !noalias !1772, !nonnull !15, !noundef !15
  %_0.i.i87 = getelementptr inbounds nuw i32, ptr %_6.i86, i64 %_45
  %_63 = load i32, ptr %_0.i.i87, align 4, !noundef !15
  %_0.sroa.0.0.i.i90 = call noundef i32 @llvm.smax.i32(i32 %_63, i32 %_57)
  %_0.i.i102 = getelementptr inbounds nuw i32, ptr %_6.i86, i64 %_0.sroa.3.0.i.i41352
  store i32 %_0.sroa.0.0.i.i90, ptr %_0.i.i102, align 4
  br label %bb44

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb45ac865c4a4340fE.exit110": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h82c39717c1eb3998E.exit68"
  %38 = getelementptr inbounds nuw i8, ptr %_0.i.i66, i64 8
  %_6.i107 = load ptr, ptr %38, align 8, !alias.scope !1764, !noalias !1767, !nonnull !15, !noundef !15
  %_0.i.i108 = getelementptr inbounds nuw i32, ptr %_6.i107, i64 %_45
  %_46 = load i32, ptr %_0.i.i108, align 4, !noundef !15
  %_4.i.i112 = icmp samesign ult i64 %20, %len.i62
  br i1 %_4.i.i112, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h7a0ce9ec0489349aE.exit117", label %panic.i.i127.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h7a0ce9ec0489349aE.exit117": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb45ac865c4a4340fE.exit110"
  %_0.i.i115 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i65, i64 %20
  %39 = getelementptr inbounds nuw i8, ptr %_0.i.i115, i64 16
  %len.i118 = load i64, ptr %39, align 8, !alias.scope !1774, !noalias !1777, !noundef !15
  %_4.i.i119 = icmp ult i64 %_0.sroa.3.0.i.i41352, %len.i118
  br i1 %_4.i.i119, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h48659c87ff6e3cb4E.exit124", label %panic.i.i127.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h48659c87ff6e3cb4E.exit124": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h7a0ce9ec0489349aE.exit117"
  %40 = getelementptr inbounds nuw i8, ptr %_0.i.i115, i64 8
  %_6.i121 = load ptr, ptr %40, align 8, !alias.scope !1774, !noalias !1777, !nonnull !15, !noundef !15
  %_0.i.i122 = getelementptr inbounds nuw i32, ptr %_6.i121, i64 %_0.sroa.3.0.i.i41352
  %41 = add i32 %_46, 1
  store i32 %41, ptr %_0.i.i122, align 4
  br label %bb44

bb44:                                             ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h48659c87ff6e3cb4E.exit", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h48659c87ff6e3cb4E.exit124", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h48659c87ff6e3cb4E.exit131"
  %_10.i.i32 = trunc nuw i8 %iter1.sroa.7.1351 to i1
  %_0.i.not.i.i37 = icmp ugt i64 %iter1.sroa.0.1350, %_0.i15
  %or.cond136 = select i1 %_10.i.i32, i1 true, i1 %_0.i.not.i.i37
  %_0.i3.i.i39 = icmp ult i64 %iter1.sroa.0.1350, %_0.i15
  %not.or.cond136 = xor i1 %or.cond136, true
  %narrow272 = select i1 %not.or.cond136, i1 %_0.i3.i.i39, i1 false
  %spec.select133 = zext i1 %narrow272 to i64
  %iter1.sroa.0.1 = add nuw i64 %iter1.sroa.0.1350, %spec.select133
  %42 = select i1 %or.cond136, i1 true, i1 %_0.i3.i.i39
  %iter1.sroa.7.1 = select i1 %42, i8 %iter1.sroa.7.1351, i8 1
  %_0.sroa.3.0.i.i41 = select i1 %_10.i.i32, i64 undef, i64 %iter1.sroa.0.1350
  br i1 %or.cond136, label %bb7.loopexit, label %bb16

panic.i.i127.invoke:                              ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h7a0ce9ec0489349aE.exit", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h7a0ce9ec0489349aE.exit117", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb45ac865c4a4340fE.exit110", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h82c39717c1eb3998E.exit68", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb45ac865c4a4340fE.exit89", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h82c39717c1eb3998E.exit82", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb45ac865c4a4340fE.exit75", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h82c39717c1eb3998E.exit61", %bb30, %bb35, %bb19, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h82c39717c1eb3998E.exit", %bb11
  %43 = phi i64 [ %20, %bb11 ], [ %_0.i15, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h82c39717c1eb3998E.exit" ], [ %_0.sroa.3.0.i.i41352, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h7a0ce9ec0489349aE.exit" ], [ %_0.sroa.3.0.i.i41352, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h7a0ce9ec0489349aE.exit117" ], [ %20, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb45ac865c4a4340fE.exit110" ], [ %_45, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h82c39717c1eb3998E.exit68" ], [ %_0.sroa.3.0.i.i41352, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb45ac865c4a4340fE.exit89" ], [ %_45, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h82c39717c1eb3998E.exit82" ], [ %20, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb45ac865c4a4340fE.exit75" ], [ %_0.sroa.3.0.i.i41352, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h82c39717c1eb3998E.exit61" ], [ %_50, %bb30 ], [ %_61, %bb35 ], [ %20, %bb19 ]
  %44 = phi i64 [ %len.i, %bb11 ], [ %len.i20, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h82c39717c1eb3998E.exit" ], [ %len.i125, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h7a0ce9ec0489349aE.exit" ], [ %len.i118, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h7a0ce9ec0489349aE.exit117" ], [ %len.i62, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb45ac865c4a4340fE.exit110" ], [ %len.i104, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h82c39717c1eb3998E.exit68" ], [ %len.i83, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb45ac865c4a4340fE.exit89" ], [ %len.i83, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h82c39717c1eb3998E.exit82" ], [ %len.i55, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb45ac865c4a4340fE.exit75" ], [ %len.i69, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h82c39717c1eb3998E.exit61" ], [ %len.i62, %bb30 ], [ %len.i55, %bb35 ], [ %len.i46, %bb19 ]
  %45 = phi ptr [ @alloc_e5cea990743572c516560e03329fb198, %bb11 ], [ @alloc_8cb7c192ee1ec0060ed9f767f36f2c9e, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h82c39717c1eb3998E.exit" ], [ @alloc_f5e2ee6bccd6b724dfb61b6dd55a2ee7, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h7a0ce9ec0489349aE.exit" ], [ @alloc_4a22b1a21adf3638edf77849667ba91c, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h7a0ce9ec0489349aE.exit117" ], [ @alloc_cf20fb0e18c4ea37932feaeda39df7cf, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb45ac865c4a4340fE.exit110" ], [ @alloc_f1e41b190b84bd02d38089fab6d74940, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h82c39717c1eb3998E.exit68" ], [ @alloc_a9c490451cd9c7d3a440aacf8c0d7183, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb45ac865c4a4340fE.exit89" ], [ @alloc_037f547cb5df5bedfad12176aeb72b79, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h82c39717c1eb3998E.exit82" ], [ @alloc_d0e34cd241e8189c6593b7385f5f379c, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb45ac865c4a4340fE.exit75" ], [ @alloc_7ecdd2b7719c07fbecfa7e040c70555b, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h82c39717c1eb3998E.exit61" ], [ @alloc_d5ba85c33213dac699e5ee0a47dd0a37, %bb30 ], [ @alloc_455f6da57be4aa27106e364f8d7b8599, %bb35 ], [ @alloc_a99a63d008f34bc6907e6f9478a494d7, %bb19 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %43, i64 noundef range(i64 0, 2305843009213693952) %44, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %45) #29
          to label %panic.i.i127.cont unwind label %cleanup2

panic.i.i127.cont:                                ; preds = %panic.i.i127.invoke
  unreachable

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h48659c87ff6e3cb4E.exit131": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h7a0ce9ec0489349aE.exit"
  %46 = getelementptr inbounds nuw i8, ptr %_0.i.i50, i64 8
  %_6.i128 = load ptr, ptr %46, align 8, !alias.scope !1734, !noalias !1737, !nonnull !15, !noundef !15
  %_0.i.i129 = getelementptr inbounds nuw i32, ptr %_6.i128, i64 %_0.sroa.3.0.i.i41352
  store i32 0, ptr %_0.i.i129, align 4
  br label %bb44

terminate:                                        ; preds = %bb52, %bb51, %cleanup2
  %47 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #28
  unreachable
}
