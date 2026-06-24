define noundef i32 @f_gold(ptr dead_on_return noalias noundef align 8 captures(address) dereferenceable(24) %a, ptr dead_on_return noalias noundef align 8 captures(address) dereferenceable(24) %b) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_16.i.i = alloca [24 x i8], align 8
  %_84 = alloca [16 x i8], align 8
  %_78 = alloca [16 x i8], align 8
  %_49 = alloca [16 x i8], align 8
  %_9 = alloca [24 x i8], align 8
  %dp = alloca [24 x i8], align 8
  %0 = getelementptr inbounds nuw i8, ptr %a, i64 16
  %_0.i = load i64, ptr %0, align 8, !alias.scope !1706, !noundef !15
  %_2.i = icmp sgt i64 %_0.i, -1
  tail call void @llvm.assume(i1 %_2.i)
  %1 = getelementptr inbounds nuw i8, ptr %b, i64 16
  %_0.i11 = load i64, ptr %1, align 8, !alias.scope !1709, !noundef !15
  %_2.i12 = icmp sgt i64 %_0.i11, -1
  tail call void @llvm.assume(i1 %_2.i12)
  %_7 = icmp eq i64 %_0.i11, 0
  br i1 %_7, label %bb77, label %bb4

bb81:                                             ; preds = %cleanup2, %cleanup
  %.pn = phi { ptr, i32 } [ %27, %cleanup2 ], [ %2, %cleanup ]
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h866044ecec40a848E"(ptr noalias noundef align 8 dereferenceable(24) %b) #32
          to label %bb82 unwind label %terminate

cleanup:                                          ; preds = %_ZN5alloc3vec9from_elem17ha38b4caf1bb65d2dE.exit, %bb14.i.i, %bb4, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34c68e3a83dde969E.exit"
  %2 = landingpad { ptr, i32 }
          cleanup
  br label %bb81

bb4:                                              ; preds = %start
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %dp)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_9)
  %_10 = add nuw i64 %_0.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1712)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1715)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1718
; invoke alloc::raw_vec::RawVecInner<A>::try_allocate_in
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_16.i.i, i64 noundef %_10, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4)
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %bb4
  %_17.i.i = load i64, ptr %_16.i.i, align 8, !range !1065, !noalias !1718, !noundef !15
  %3 = trunc nuw i64 %_17.i.i to i1
  %4 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 8
  %err.0.i.i = load i64, ptr %4, align 8, !range !1066, !noalias !1718, !noundef !15
  %5 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 16
  br i1 %3, label %bb14.i.i, label %_ZN5alloc3vec9from_elem17ha38b4caf1bb65d2dE.exit, !prof !1067

bb14.i.i:                                         ; preds = %.noexc
  %err.1.i.i = load i64, ptr %5, align 8, !noalias !1718
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #30
          to label %.noexc13 unwind label %cleanup

.noexc13:                                         ; preds = %bb14.i.i
  unreachable

_ZN5alloc3vec9from_elem17ha38b4caf1bb65d2dE.exit: ; preds = %.noexc
  %res.1.i.i = load ptr, ptr %5, align 8, !noalias !1718, !nonnull !15, !noundef !15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1718
  store i64 %err.0.i.i, ptr %_9, align 8, !alias.scope !1718
  %6 = getelementptr inbounds nuw i8, ptr %_9, i64 8
  store ptr %res.1.i.i, ptr %6, align 8, !alias.scope !1718
  %7 = getelementptr inbounds nuw i8, ptr %_9, i64 16
  store i64 %_10, ptr %7, align 8, !alias.scope !1718
  %_11 = add nuw i64 %_0.i11, 1
; invoke <T as alloc::vec::spec_from_elem::SpecFromElem>::from_elem
  invoke void @"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h23b505eab079eff0E"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %dp, ptr noalias noundef align 8 captures(address) dereferenceable(24) %_9, i64 noundef %_11)
          to label %bb6 unwind label %cleanup

bb6:                                              ; preds = %_ZN5alloc3vec9from_elem17ha38b4caf1bb65d2dE.exit
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_9)
  %8 = getelementptr inbounds nuw i8, ptr %a, i64 8
  %9 = getelementptr inbounds nuw i8, ptr %_78, i64 8
  %10 = getelementptr inbounds nuw i8, ptr %b, i64 8
  %11 = getelementptr inbounds nuw i8, ptr %_84, i64 8
  %12 = getelementptr inbounds nuw i8, ptr %dp, i64 16
  %13 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  %14 = getelementptr inbounds nuw i8, ptr %dp, i64 16
  %15 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  %16 = getelementptr inbounds nuw i8, ptr %a, i64 8
  %17 = getelementptr inbounds nuw i8, ptr %_49, i64 8
  %18 = getelementptr inbounds nuw i8, ptr %b, i64 8
  %19 = getelementptr inbounds nuw i8, ptr %dp, i64 16
  %20 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  %21 = getelementptr inbounds nuw i8, ptr %dp, i64 16
  %22 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  %23 = getelementptr inbounds nuw i8, ptr %a, i64 8
  %24 = getelementptr inbounds nuw i8, ptr %b, i64 8
  %25 = getelementptr inbounds nuw i8, ptr %dp, i64 16
  %26 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  br label %bb14.preheader

cleanup2:                                         ; preds = %panic.i.i276.invoke
  %27 = landingpad { ptr, i32 }
          cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h73511be667bcb62eE"(ptr noalias noundef align 8 dereferenceable(24) %dp) #32
          to label %bb81 unwind label %terminate

bb8.loopexit:                                     ; preds = %bb73, %bb14.preheader
  %_0.i.i.i = icmp ult i64 %spec.select353, %_0.i11
  %_0.i1.i.i = zext i1 %_0.i.i.i to i64
  %spec.select = add nuw i64 %spec.select353, %_0.i1.i.i
  br i1 %_0.i.i.i, label %bb14.preheader, label %bb12

bb14.preheader:                                   ; preds = %bb6, %bb8.loopexit
  %spec.select353 = phi i64 [ 1, %bb6 ], [ %spec.select, %bb8.loopexit ]
  %iter.sroa.0.0352 = phi i64 [ 0, %bb6 ], [ %spec.select353, %bb8.loopexit ]
  %_0.i.i.i27347 = icmp ult i64 %iter.sroa.0.0352, %_0.i
  br i1 %_0.i.i.i27347, label %bb16.lr.ph, label %bb8.loopexit

bb16.lr.ph:                                       ; preds = %bb14.preheader
  %spec.select287349 = add nuw nsw i64 %iter.sroa.0.0352, 1
  %_26 = icmp eq i64 %iter.sroa.0.0352, 0
  %_96 = add nsw i64 %iter.sroa.0.0352, -1
  br label %bb16

bb12:                                             ; preds = %bb8.loopexit
  %_111 = add nsw i64 %_0.i11, -1
  %28 = getelementptr inbounds nuw i8, ptr %dp, i64 16
  %len.i = load i64, ptr %28, align 8, !alias.scope !1719, !noalias !1722, !noundef !15
  %_4.i.i15 = icmp ult i64 %_111, %len.i
  br i1 %_4.i.i15, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3fb755cb0240be98E.exit", label %panic.i.i276.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3fb755cb0240be98E.exit": ; preds = %bb12
  %29 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  %_6.i = load ptr, ptr %29, align 8, !alias.scope !1719, !noalias !1722, !nonnull !15, !noundef !15
  %_0.i.i = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i, i64 %_111
  %_112 = add nsw i64 %_0.i, -1
  %30 = getelementptr inbounds nuw i8, ptr %_0.i.i, i64 16
  %len.i17 = load i64, ptr %30, align 8, !alias.scope !1724, !noalias !1727, !noundef !15
  %_4.i.i18 = icmp ult i64 %_112, %len.i17
  br i1 %_4.i.i18, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34c68e3a83dde969E.exit", label %panic.i.i276.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34c68e3a83dde969E.exit": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3fb755cb0240be98E.exit"
  %31 = getelementptr inbounds nuw i8, ptr %_0.i.i, i64 8
  %_6.i20 = load ptr, ptr %31, align 8, !alias.scope !1724, !noalias !1727, !nonnull !15, !noundef !15
  %_0.i.i21 = getelementptr inbounds nuw i32, ptr %_6.i20, i64 %_112
  %32 = load i32, ptr %_0.i.i21, align 4, !noundef !15
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h73511be667bcb62eE"(ptr noalias noundef align 8 dereferenceable(24) %dp)
          to label %bb76 unwind label %cleanup

bb76:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34c68e3a83dde969E.exit"
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %dp)
  br label %bb77

bb77:                                             ; preds = %start, %bb76
  %_0.sroa.0.0 = phi i32 [ %32, %bb76 ], [ 1, %start ]
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %b)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h94506b4b732baac1E.exit.i" unwind label %cleanup.i.i

cleanup.i.i:                                      ; preds = %bb77
  %33 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %b)
          to label %bb82 unwind label %terminate.i.i

terminate.i.i:                                    ; preds = %cleanup.i.i
  %34 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #28
  unreachable

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h94506b4b732baac1E.exit.i": ; preds = %bb77
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %b)
          to label %bb78 unwind label %cleanup3

bb16:                                             ; preds = %bb16.lr.ph, %bb73
  %spec.select287351 = phi i64 [ %spec.select287349, %bb16.lr.ph ], [ %spec.select287, %bb73 ]
  %iter1.sroa.0.0350 = phi i64 [ %iter.sroa.0.0352, %bb16.lr.ph ], [ %spec.select287351, %bb73 ]
  br i1 %_26, label %bb18, label %bb52

bb52:                                             ; preds = %bb16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_78)
  %_6.i.i = load ptr, ptr %8, align 8, !alias.scope !1729, !nonnull !15, !noundef !15
  %len.i.i = load i64, ptr %0, align 8, !alias.scope !1729, !noundef !15
  %_7.i = getelementptr inbounds nuw i8, ptr %_6.i.i, i64 %len.i.i
  store ptr %_6.i.i, ptr %_78, align 8
  store ptr %_7.i, ptr %9, align 8
; call core::iter::traits::iterator::Iterator::nth
  %35 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17hbcb6472adf23e547E(ptr noalias noundef align 8 dereferenceable(16) %_78, i64 noundef %iter1.sroa.0.0350)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_84)
  %_6.i.i32 = load ptr, ptr %10, align 8, !alias.scope !1734, !nonnull !15, !noundef !15
  %len.i.i33 = load i64, ptr %1, align 8, !alias.scope !1734, !noundef !15
  %_7.i34 = getelementptr inbounds nuw i8, ptr %_6.i.i32, i64 %len.i.i33
  store ptr %_6.i.i32, ptr %_84, align 8
  store ptr %_7.i34, ptr %11, align 8
; call core::iter::traits::iterator::Iterator::nth
  %36 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17hbcb6472adf23e547E(ptr noalias noundef align 8 dereferenceable(16) %_84, i64 noundef %iter.sroa.0.0352)
  %_0.sroa.0.0.shrunk.i = icmp eq i32 %36, %35
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_84)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_78)
  br i1 %_0.sroa.0.0.shrunk.i, label %bb60, label %bb67

bb18:                                             ; preds = %bb16
  %_27 = icmp eq i64 %iter1.sroa.0.0350, 0
  br i1 %_27, label %bb19, label %bb32

bb67:                                             ; preds = %bb52
  %len.i35 = load i64, ptr %12, align 8, !alias.scope !1739, !noalias !1742, !noundef !15
  %_4.i.i36 = icmp ult i64 %iter.sroa.0.0352, %len.i35
  br i1 %_4.i.i36, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3fb755cb0240be98E.exit41", label %panic.i.i276.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3fb755cb0240be98E.exit41": ; preds = %bb67
  %_6.i38 = load ptr, ptr %13, align 8, !alias.scope !1739, !noalias !1742, !nonnull !15, !noundef !15
  %_0.i.i39 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i38, i64 %iter.sroa.0.0352
  %_104 = add nsw i64 %iter1.sroa.0.0350, -1
  %37 = getelementptr inbounds nuw i8, ptr %_0.i.i39, i64 16
  %len.i49 = load i64, ptr %37, align 8, !alias.scope !1744, !noalias !1747, !noundef !15
  %_4.i.i50 = icmp ult i64 %_104, %len.i49
  br i1 %_4.i.i50, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34c68e3a83dde969E.exit55", label %panic.i.i276.invoke

bb60:                                             ; preds = %bb52
  %len.i42 = load i64, ptr %14, align 8, !alias.scope !1749, !noalias !1752, !noundef !15
  %_4.i.i43 = icmp ult i64 %iter.sroa.0.0352, %len.i42
  br i1 %_4.i.i43, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3fb755cb0240be98E.exit48", label %panic.i.i276.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3fb755cb0240be98E.exit48": ; preds = %bb60
  %_6.i45 = load ptr, ptr %15, align 8, !alias.scope !1749, !noalias !1752, !nonnull !15, !noundef !15
  %_0.i.i46 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i45, i64 %iter.sroa.0.0352
  %_91 = add nsw i64 %iter1.sroa.0.0350, -1
  %38 = getelementptr inbounds nuw i8, ptr %_0.i.i46, i64 16
  %len.i68 = load i64, ptr %38, align 8, !alias.scope !1754, !noalias !1757, !noundef !15
  %_4.i.i69 = icmp ult i64 %_91, %len.i68
  br i1 %_4.i.i69, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34c68e3a83dde969E.exit74", label %panic.i.i276.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34c68e3a83dde969E.exit55": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3fb755cb0240be98E.exit41"
  %_4.i.i63 = icmp ult i64 %iter1.sroa.0.0350, %len.i49
  br i1 %_4.i.i63, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h08da2984883fdc0cE.exit", label %panic.i.i276.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h08da2984883fdc0cE.exit": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34c68e3a83dde969E.exit55"
  %39 = getelementptr inbounds nuw i8, ptr %_0.i.i39, i64 8
  %_6.i52 = load ptr, ptr %39, align 8, !alias.scope !1744, !noalias !1747, !nonnull !15, !noundef !15
  %_0.i.i53 = getelementptr inbounds nuw i32, ptr %_6.i52, i64 %_104
  %_100 = load i32, ptr %_0.i.i53, align 4, !noundef !15
  %_0.i.i66 = getelementptr inbounds nuw i32, ptr %_6.i52, i64 %iter1.sroa.0.0350
  store i32 %_100, ptr %_0.i.i66, align 4
  br label %bb73

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34c68e3a83dde969E.exit74": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3fb755cb0240be98E.exit48"
  %40 = getelementptr inbounds nuw i8, ptr %_0.i.i46, i64 8
  %_6.i71 = load ptr, ptr %40, align 8, !alias.scope !1754, !noalias !1757, !nonnull !15, !noundef !15
  %_0.i.i72 = getelementptr inbounds nuw i32, ptr %_6.i71, i64 %_91
  %_87 = load i32, ptr %_0.i.i72, align 4, !noundef !15
  %_4.i.i76 = icmp ult i64 %_96, %len.i42
  br i1 %_4.i.i76, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3fb755cb0240be98E.exit81", label %panic.i.i276.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3fb755cb0240be98E.exit81": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34c68e3a83dde969E.exit74"
  %_0.i.i79 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i45, i64 %_96
  %41 = getelementptr inbounds nuw i8, ptr %_0.i.i79, i64 16
  %len.i82 = load i64, ptr %41, align 8, !alias.scope !1759, !noalias !1762, !noundef !15
  %_4.i.i83 = icmp ult i64 %_91, %len.i82
  br i1 %_4.i.i83, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34c68e3a83dde969E.exit88", label %panic.i.i276.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34c68e3a83dde969E.exit88": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3fb755cb0240be98E.exit81"
  %_4.i.i97 = icmp ult i64 %iter1.sroa.0.0350, %len.i68
  br i1 %_4.i.i97, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h08da2984883fdc0cE.exit102", label %panic.i.i276.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h08da2984883fdc0cE.exit102": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34c68e3a83dde969E.exit88"
  %42 = getelementptr inbounds nuw i8, ptr %_0.i.i79, i64 8
  %_6.i85 = load ptr, ptr %42, align 8, !alias.scope !1759, !noalias !1762, !nonnull !15, !noundef !15
  %_0.i.i86 = getelementptr inbounds nuw i32, ptr %_6.i85, i64 %_91
  %_92 = load i32, ptr %_0.i.i86, align 4, !noundef !15
  %_0.i.i100 = getelementptr inbounds nuw i32, ptr %_6.i71, i64 %iter1.sroa.0.0350
  %43 = add i32 %_92, %_87
  store i32 %43, ptr %_0.i.i100, align 4
  br label %bb73

bb73:                                             ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h08da2984883fdc0cE.exit280", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h08da2984883fdc0cE.exit167", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h08da2984883fdc0cE.exit146", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h08da2984883fdc0cE.exit", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h08da2984883fdc0cE.exit102"
  %_0.i.i.i27 = icmp ult i64 %spec.select287351, %_0.i
  %_0.i1.i.i30 = zext i1 %_0.i.i.i27 to i64
  %spec.select287 = add nuw i64 %spec.select287351, %_0.i1.i.i30
  br i1 %_0.i.i.i27, label %bb16, label %bb8.loopexit

bb32:                                             ; preds = %bb18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_49)
  %_6.i.i103 = load ptr, ptr %16, align 8, !alias.scope !1764, !nonnull !15, !noundef !15
  %len.i.i104 = load i64, ptr %0, align 8, !alias.scope !1764, !noundef !15
  %_7.i107 = getelementptr inbounds nuw i8, ptr %_6.i.i103, i64 %len.i.i104
  store ptr %_6.i.i103, ptr %_49, align 8
  store ptr %_7.i107, ptr %17, align 8
; call core::iter::traits::iterator::Iterator::nth
  %44 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17hbcb6472adf23e547E(ptr noalias noundef align 8 dereferenceable(16) %_49, i64 noundef %iter1.sroa.0.0350)
  %_6.i.i108 = load ptr, ptr %18, align 8, !alias.scope !1769, !nonnull !15, !noundef !15
  %len.i.i109 = load i64, ptr %1, align 8, !alias.scope !1769, !noundef !15
  %_7.i110 = getelementptr inbounds nuw i8, ptr %_6.i.i108, i64 %len.i.i109
  %_7.i.i.i.i = icmp samesign ne i64 %len.i.i109, 0
  %_55.sroa.0.0.idx = zext i1 %_7.i.i.i.i to i64
  %_55.sroa.0.0 = getelementptr inbounds nuw i8, ptr %_6.i.i108, i64 %_55.sroa.0.0.idx
  br i1 %_7.i.i.i.i, label %bb14.i.i.i, label %bb38

bb19:                                             ; preds = %bb18
  %_6.i.i105 = load ptr, ptr %23, align 8, !alias.scope !1774, !nonnull !15, !noundef !15
  %len.i.i106 = load i64, ptr %0, align 8, !alias.scope !1774, !noundef !15
  %_7.i168 = getelementptr inbounds nuw i8, ptr %_6.i.i105, i64 %len.i.i106
  %_7.i.i.i.i172 = icmp samesign ne i64 %len.i.i106, 0
  %_33.sroa.0.0.idx = zext i1 %_7.i.i.i.i172 to i64
  %_33.sroa.0.0 = getelementptr inbounds nuw i8, ptr %_6.i.i105, i64 %_33.sroa.0.0.idx
  br i1 %_7.i.i.i.i172, label %bb14.i.i.i178, label %bb22

bb14.i.i.i:                                       ; preds = %bb32
  %x.i.i.i = load i8, ptr %_6.i.i108, align 1, !noalias !1779, !noundef !15
  %_6.i.i.i = icmp sgt i8 %x.i.i.i, -1
  br i1 %_6.i.i.i, label %bb3.i.i.i, label %bb4.i.i.i

bb4.i.i.i:                                        ; preds = %bb14.i.i.i
  %_30.i.i.i = and i8 %x.i.i.i, 31
  %init.i.i.i = zext nneg i8 %_30.i.i.i to i32
  %45 = icmp ne i64 %len.i.i109, 1
  call void @llvm.assume(i1 %45)
  %y.i.i.i = load i8, ptr %_55.sroa.0.0, align 1, !noalias !1779, !noundef !15
  %_34.i.i.i = shl nuw nsw i32 %init.i.i.i, 6
  %_36.i.i.i = and i8 %y.i.i.i, 63
  %_35.i.i.i = zext nneg i8 %_36.i.i.i to i32
  %46 = or disjoint i32 %_34.i.i.i, %_35.i.i.i
  %_13.i.i.i = icmp ugt i8 %x.i.i.i, -33
  br i1 %_13.i.i.i, label %bb6.i.i.i, label %bb38

bb3.i.i.i:                                        ; preds = %bb14.i.i.i
  %_7.i.i.i = zext nneg i8 %x.i.i.i to i32
  br label %bb38

bb6.i.i.i:                                        ; preds = %bb4.i.i.i
  %_18.i12.i.i.i = getelementptr inbounds nuw i8, ptr %_55.sroa.0.0, i64 1
  %_7.i17.i.i.i = icmp ne ptr %_18.i12.i.i.i, %_7.i110
  call void @llvm.assume(i1 %_7.i17.i.i.i)
  %z.i.i.i = load i8, ptr %_18.i12.i.i.i, align 1, !noalias !1779, !noundef !15
  %_40.i.i.i = shl nuw nsw i32 %_35.i.i.i, 6
  %_42.i.i.i = and i8 %z.i.i.i, 63
  %_41.i.i.i = zext nneg i8 %_42.i.i.i to i32
  %y_z.i.i.i = or disjoint i32 %_40.i.i.i, %_41.i.i.i
  %_20.i.i.i = shl nuw nsw i32 %init.i.i.i, 12
  %47 = or disjoint i32 %y_z.i.i.i, %_20.i.i.i
  %_21.i.i.i = icmp ugt i8 %x.i.i.i, -17
  br i1 %_21.i.i.i, label %bb8.i.i.i, label %bb38

bb8.i.i.i:                                        ; preds = %bb6.i.i.i
  %_18.i19.i.i.i = getelementptr inbounds nuw i8, ptr %_55.sroa.0.0, i64 2
  %_7.i24.i.i.i = icmp ne ptr %_18.i19.i.i.i, %_7.i110
  call void @llvm.assume(i1 %_7.i24.i.i.i)
  %w.i.i.i = load i8, ptr %_18.i19.i.i.i, align 1, !noalias !1779, !noundef !15
  %_26.i.i.i = shl nuw nsw i32 %init.i.i.i, 18
  %_25.i.i.i = and i32 %_26.i.i.i, 1835008
  %_46.i.i.i = shl nuw nsw i32 %y_z.i.i.i, 6
  %_48.i.i.i = and i8 %w.i.i.i, 63
  %_47.i.i.i = zext nneg i8 %_48.i.i.i to i32
  %_27.i.i.i = or disjoint i32 %_46.i.i.i, %_47.i.i.i
  %48 = or disjoint i32 %_27.i.i.i, %_25.i.i.i
  br label %bb38

bb38:                                             ; preds = %bb8.i.i.i, %bb6.i.i.i, %bb3.i.i.i, %bb4.i.i.i, %bb32
  %_0.sroa.0.0.i = phi i32 [ %_7.i.i.i, %bb3.i.i.i ], [ 1114112, %bb32 ], [ %48, %bb8.i.i.i ], [ %47, %bb6.i.i.i ], [ %46, %bb4.i.i.i ]
  %_0.sroa.0.0.shrunk.i111 = icmp eq i32 %_0.sroa.0.0.i, %44
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_49)
  br i1 %_0.sroa.0.0.shrunk.i111, label %bb40, label %bb45

bb45:                                             ; preds = %bb38
  %len.i112 = load i64, ptr %19, align 8, !alias.scope !1786, !noalias !1789, !noundef !15
  %_4.i.i113.not = icmp eq i64 %len.i112, 0
  br i1 %_4.i.i113.not, label %panic.i.i276.invoke, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3fb755cb0240be98E.exit118"

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3fb755cb0240be98E.exit118": ; preds = %bb45
  %_6.i115 = load ptr, ptr %20, align 8, !alias.scope !1786, !noalias !1789, !nonnull !15, !noundef !15
  %_70 = add nsw i64 %iter1.sroa.0.0350, -1
  %49 = getelementptr inbounds nuw i8, ptr %_6.i115, i64 16
  %len.i126 = load i64, ptr %49, align 8, !alias.scope !1791, !noalias !1794, !noundef !15
  %_4.i.i127 = icmp ult i64 %_70, %len.i126
  br i1 %_4.i.i127, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34c68e3a83dde969E.exit132", label %panic.i.i276.invoke

bb40:                                             ; preds = %bb38
  %len.i119 = load i64, ptr %21, align 8, !alias.scope !1796, !noalias !1799, !noundef !15
  %_4.i.i120.not = icmp eq i64 %len.i119, 0
  br i1 %_4.i.i120.not, label %panic.i.i276.invoke, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3fb755cb0240be98E.exit125"

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3fb755cb0240be98E.exit125": ; preds = %bb40
  %_6.i122 = load ptr, ptr %22, align 8, !alias.scope !1796, !noalias !1799, !nonnull !15, !noundef !15
  %_62 = add nsw i64 %iter1.sroa.0.0350, -1
  %50 = getelementptr inbounds nuw i8, ptr %_6.i122, i64 16
  %len.i147 = load i64, ptr %50, align 8, !alias.scope !1801, !noalias !1804, !noundef !15
  %_4.i.i148 = icmp ult i64 %_62, %len.i147
  br i1 %_4.i.i148, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34c68e3a83dde969E.exit153", label %panic.i.i276.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34c68e3a83dde969E.exit132": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3fb755cb0240be98E.exit118"
  %_4.i.i141 = icmp ult i64 %iter1.sroa.0.0350, %len.i126
  br i1 %_4.i.i141, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h08da2984883fdc0cE.exit146", label %panic.i.i276.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h08da2984883fdc0cE.exit146": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34c68e3a83dde969E.exit132"
  %51 = getelementptr inbounds nuw i8, ptr %_6.i115, i64 8
  %_6.i129 = load ptr, ptr %51, align 8, !alias.scope !1791, !noalias !1794, !nonnull !15, !noundef !15
  %_0.i.i130 = getelementptr inbounds nuw i32, ptr %_6.i129, i64 %_70
  %_66 = load i32, ptr %_0.i.i130, align 4, !noundef !15
  %_0.i.i144 = getelementptr inbounds nuw i32, ptr %_6.i129, i64 %iter1.sroa.0.0350
  store i32 %_66, ptr %_0.i.i144, align 4
  br label %bb73

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34c68e3a83dde969E.exit153": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3fb755cb0240be98E.exit125"
  %_4.i.i162 = icmp ult i64 %iter1.sroa.0.0350, %len.i147
  br i1 %_4.i.i162, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h08da2984883fdc0cE.exit167", label %panic.i.i276.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h08da2984883fdc0cE.exit167": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34c68e3a83dde969E.exit153"
  %52 = getelementptr inbounds nuw i8, ptr %_6.i122, i64 8
  %_6.i150 = load ptr, ptr %52, align 8, !alias.scope !1801, !noalias !1804, !nonnull !15, !noundef !15
  %_0.i.i151 = getelementptr inbounds nuw i32, ptr %_6.i150, i64 %_62
  %_58 = load i32, ptr %_0.i.i151, align 4, !noundef !15
  %_0.i.i165 = getelementptr inbounds nuw i32, ptr %_6.i150, i64 %iter1.sroa.0.0350
  %53 = add i32 %_58, 1
  store i32 %53, ptr %_0.i.i165, align 4
  br label %bb73

bb14.i.i.i178:                                    ; preds = %bb19
  %x.i.i.i179 = load i8, ptr %_6.i.i105, align 1, !noalias !1806, !noundef !15
  %_6.i.i.i180 = icmp sgt i8 %x.i.i.i179, -1
  br i1 %_6.i.i.i180, label %bb3.i.i.i213, label %bb4.i.i.i181

bb4.i.i.i181:                                     ; preds = %bb14.i.i.i178
  %_30.i.i.i182 = and i8 %x.i.i.i179, 31
  %init.i.i.i183 = zext nneg i8 %_30.i.i.i182 to i32
  %54 = icmp ne i64 %len.i.i106, 1
  call void @llvm.assume(i1 %54)
  %y.i.i.i187 = load i8, ptr %_33.sroa.0.0, align 1, !noalias !1806, !noundef !15
  %_34.i.i.i188 = shl nuw nsw i32 %init.i.i.i183, 6
  %_36.i.i.i189 = and i8 %y.i.i.i187, 63
  %_35.i.i.i190 = zext nneg i8 %_36.i.i.i189 to i32
  %55 = or disjoint i32 %_34.i.i.i188, %_35.i.i.i190
  %_13.i.i.i191 = icmp ugt i8 %x.i.i.i179, -33
  br i1 %_13.i.i.i191, label %bb6.i.i.i193, label %bb22

bb3.i.i.i213:                                     ; preds = %bb14.i.i.i178
  %_7.i.i.i214 = zext nneg i8 %x.i.i.i179 to i32
  br label %bb22

bb6.i.i.i193:                                     ; preds = %bb4.i.i.i181
  %_18.i12.i.i.i186 = getelementptr inbounds nuw i8, ptr %_33.sroa.0.0, i64 1
  %_7.i17.i.i.i194 = icmp ne ptr %_18.i12.i.i.i186, %_7.i168
  call void @llvm.assume(i1 %_7.i17.i.i.i194)
  %z.i.i.i196 = load i8, ptr %_18.i12.i.i.i186, align 1, !noalias !1806, !noundef !15
  %_40.i.i.i197 = shl nuw nsw i32 %_35.i.i.i190, 6
  %_42.i.i.i198 = and i8 %z.i.i.i196, 63
  %_41.i.i.i199 = zext nneg i8 %_42.i.i.i198 to i32
  %y_z.i.i.i200 = or disjoint i32 %_40.i.i.i197, %_41.i.i.i199
  %_20.i.i.i201 = shl nuw nsw i32 %init.i.i.i183, 12
  %56 = or disjoint i32 %y_z.i.i.i200, %_20.i.i.i201
  %_21.i.i.i202 = icmp ugt i8 %x.i.i.i179, -17
  br i1 %_21.i.i.i202, label %bb8.i.i.i203, label %bb22

bb8.i.i.i203:                                     ; preds = %bb6.i.i.i193
  %_18.i19.i.i.i195 = getelementptr inbounds nuw i8, ptr %_33.sroa.0.0, i64 2
  %_7.i24.i.i.i204 = icmp ne ptr %_18.i19.i.i.i195, %_7.i168
  call void @llvm.assume(i1 %_7.i24.i.i.i204)
  %w.i.i.i206 = load i8, ptr %_18.i19.i.i.i195, align 1, !noalias !1806, !noundef !15
  %_26.i.i.i207 = shl nuw nsw i32 %init.i.i.i183, 18
  %_25.i.i.i208 = and i32 %_26.i.i.i207, 1835008
  %_46.i.i.i209 = shl nuw nsw i32 %y_z.i.i.i200, 6
  %_48.i.i.i210 = and i8 %w.i.i.i206, 63
  %_47.i.i.i211 = zext nneg i8 %_48.i.i.i210 to i32
  %_27.i.i.i212 = or disjoint i32 %_46.i.i.i209, %_47.i.i.i211
  %57 = or disjoint i32 %_27.i.i.i212, %_25.i.i.i208
  br label %bb22

bb22:                                             ; preds = %bb8.i.i.i203, %bb6.i.i.i193, %bb3.i.i.i213, %bb4.i.i.i181, %bb19
  %_0.sroa.0.0.i192 = phi i32 [ %_7.i.i.i214, %bb3.i.i.i213 ], [ 1114112, %bb19 ], [ %57, %bb8.i.i.i203 ], [ %56, %bb6.i.i.i193 ], [ %55, %bb4.i.i.i181 ]
  %_6.i.i216 = load ptr, ptr %24, align 8, !alias.scope !1813, !nonnull !15, !noundef !15
  %len.i.i217 = load i64, ptr %1, align 8, !alias.scope !1813, !noundef !15
  %_7.i218 = getelementptr inbounds nuw i8, ptr %_6.i.i216, i64 %len.i.i217
  %_7.i.i.i.i222 = icmp samesign ne i64 %len.i.i217, 0
  %_39.sroa.0.0.idx = zext i1 %_7.i.i.i.i222 to i64
  %_39.sroa.0.0 = getelementptr inbounds nuw i8, ptr %_6.i.i216, i64 %_39.sroa.0.0.idx
  br i1 %_7.i.i.i.i222, label %bb14.i.i.i228, label %bb25

bb14.i.i.i228:                                    ; preds = %bb22
  %x.i.i.i229 = load i8, ptr %_6.i.i216, align 1, !noalias !1818, !noundef !15
  %_6.i.i.i230 = icmp sgt i8 %x.i.i.i229, -1
  br i1 %_6.i.i.i230, label %bb3.i.i.i263, label %bb4.i.i.i231

bb4.i.i.i231:                                     ; preds = %bb14.i.i.i228
  %_30.i.i.i232 = and i8 %x.i.i.i229, 31
  %init.i.i.i233 = zext nneg i8 %_30.i.i.i232 to i32
  %58 = icmp ne i64 %len.i.i217, 1
  call void @llvm.assume(i1 %58)
  %y.i.i.i237 = load i8, ptr %_39.sroa.0.0, align 1, !noalias !1818, !noundef !15
  %_34.i.i.i238 = shl nuw nsw i32 %init.i.i.i233, 6
  %_36.i.i.i239 = and i8 %y.i.i.i237, 63
  %_35.i.i.i240 = zext nneg i8 %_36.i.i.i239 to i32
  %59 = or disjoint i32 %_34.i.i.i238, %_35.i.i.i240
  %_13.i.i.i241 = icmp ugt i8 %x.i.i.i229, -33
  br i1 %_13.i.i.i241, label %bb6.i.i.i243, label %bb25

bb3.i.i.i263:                                     ; preds = %bb14.i.i.i228
  %_7.i.i.i264 = zext nneg i8 %x.i.i.i229 to i32
  br label %bb25

bb6.i.i.i243:                                     ; preds = %bb4.i.i.i231
  %_18.i12.i.i.i236 = getelementptr inbounds nuw i8, ptr %_39.sroa.0.0, i64 1
  %_7.i17.i.i.i244 = icmp ne ptr %_18.i12.i.i.i236, %_7.i218
  call void @llvm.assume(i1 %_7.i17.i.i.i244)
  %z.i.i.i246 = load i8, ptr %_18.i12.i.i.i236, align 1, !noalias !1818, !noundef !15
  %_40.i.i.i247 = shl nuw nsw i32 %_35.i.i.i240, 6
  %_42.i.i.i248 = and i8 %z.i.i.i246, 63
  %_41.i.i.i249 = zext nneg i8 %_42.i.i.i248 to i32
  %y_z.i.i.i250 = or disjoint i32 %_40.i.i.i247, %_41.i.i.i249
  %_20.i.i.i251 = shl nuw nsw i32 %init.i.i.i233, 12
  %60 = or disjoint i32 %y_z.i.i.i250, %_20.i.i.i251
  %_21.i.i.i252 = icmp ugt i8 %x.i.i.i229, -17
  br i1 %_21.i.i.i252, label %bb8.i.i.i253, label %bb25

bb8.i.i.i253:                                     ; preds = %bb6.i.i.i243
  %_18.i19.i.i.i245 = getelementptr inbounds nuw i8, ptr %_39.sroa.0.0, i64 2
  %_7.i24.i.i.i254 = icmp ne ptr %_18.i19.i.i.i245, %_7.i218
  call void @llvm.assume(i1 %_7.i24.i.i.i254)
  %w.i.i.i256 = load i8, ptr %_18.i19.i.i.i245, align 1, !noalias !1818, !noundef !15
  %_26.i.i.i257 = shl nuw nsw i32 %init.i.i.i233, 18
  %_25.i.i.i258 = and i32 %_26.i.i.i257, 1835008
  %_46.i.i.i259 = shl nuw nsw i32 %y_z.i.i.i250, 6
  %_48.i.i.i260 = and i8 %w.i.i.i256, 63
  %_47.i.i.i261 = zext nneg i8 %_48.i.i.i260 to i32
  %_27.i.i.i262 = or disjoint i32 %_46.i.i.i259, %_47.i.i.i261
  %61 = or disjoint i32 %_27.i.i.i262, %_25.i.i.i258
  br label %bb25

bb25:                                             ; preds = %bb8.i.i.i253, %bb6.i.i.i243, %bb3.i.i.i263, %bb4.i.i.i231, %bb22
  %_0.sroa.0.0.i242 = phi i32 [ %_7.i.i.i264, %bb3.i.i.i263 ], [ 1114112, %bb22 ], [ %61, %bb8.i.i.i253 ], [ %60, %bb6.i.i.i243 ], [ %59, %bb4.i.i.i231 ]
  %_0.sroa.0.0.shrunk.i266 = icmp eq i32 %_0.sroa.0.0.i242, %_0.sroa.0.0.i192
  %. = zext i1 %_0.sroa.0.0.shrunk.i266 to i32
  %len.i267 = load i64, ptr %25, align 8, !alias.scope !1825, !noalias !1828, !noundef !15
  %_4.i.i268.not = icmp eq i64 %len.i267, 0
  br i1 %_4.i.i268.not, label %panic.i.i276.invoke, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfb96682c48386377E.exit273"

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfb96682c48386377E.exit273": ; preds = %bb25
  %_6.i270 = load ptr, ptr %26, align 8, !alias.scope !1825, !noalias !1828, !nonnull !15, !noundef !15
  %62 = getelementptr inbounds nuw i8, ptr %_6.i270, i64 16
  %len.i274 = load i64, ptr %62, align 8, !alias.scope !1830, !noalias !1833, !noundef !15
  %_4.i.i275.not = icmp eq i64 %len.i274, 0
  br i1 %_4.i.i275.not, label %panic.i.i276.invoke, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h08da2984883fdc0cE.exit280"

panic.i.i276.invoke:                              ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfb96682c48386377E.exit273", %bb25, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34c68e3a83dde969E.exit153", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3fb755cb0240be98E.exit125", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34c68e3a83dde969E.exit132", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3fb755cb0240be98E.exit118", %bb40, %bb45, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34c68e3a83dde969E.exit88", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3fb755cb0240be98E.exit81", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34c68e3a83dde969E.exit74", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3fb755cb0240be98E.exit48", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34c68e3a83dde969E.exit55", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3fb755cb0240be98E.exit41", %bb60, %bb67, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3fb755cb0240be98E.exit", %bb12
  %63 = phi i64 [ %_111, %bb12 ], [ %_112, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3fb755cb0240be98E.exit" ], [ 0, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfb96682c48386377E.exit273" ], [ 0, %bb25 ], [ %iter1.sroa.0.0350, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34c68e3a83dde969E.exit153" ], [ %_62, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3fb755cb0240be98E.exit125" ], [ %iter1.sroa.0.0350, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34c68e3a83dde969E.exit132" ], [ %_70, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3fb755cb0240be98E.exit118" ], [ 0, %bb40 ], [ 0, %bb45 ], [ %iter1.sroa.0.0350, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34c68e3a83dde969E.exit88" ], [ %_91, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3fb755cb0240be98E.exit81" ], [ %_96, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34c68e3a83dde969E.exit74" ], [ %_91, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3fb755cb0240be98E.exit48" ], [ %iter1.sroa.0.0350, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34c68e3a83dde969E.exit55" ], [ %_104, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3fb755cb0240be98E.exit41" ], [ %iter.sroa.0.0352, %bb60 ], [ %iter.sroa.0.0352, %bb67 ]
  %64 = phi i64 [ %len.i, %bb12 ], [ %len.i17, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3fb755cb0240be98E.exit" ], [ %len.i274, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfb96682c48386377E.exit273" ], [ %len.i267, %bb25 ], [ %len.i147, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34c68e3a83dde969E.exit153" ], [ %len.i147, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3fb755cb0240be98E.exit125" ], [ %len.i126, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34c68e3a83dde969E.exit132" ], [ %len.i126, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3fb755cb0240be98E.exit118" ], [ %len.i119, %bb40 ], [ %len.i112, %bb45 ], [ %len.i68, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34c68e3a83dde969E.exit88" ], [ %len.i82, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3fb755cb0240be98E.exit81" ], [ %len.i42, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34c68e3a83dde969E.exit74" ], [ %len.i68, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3fb755cb0240be98E.exit48" ], [ %len.i49, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34c68e3a83dde969E.exit55" ], [ %len.i49, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3fb755cb0240be98E.exit41" ], [ %len.i42, %bb60 ], [ %len.i35, %bb67 ]
  %65 = phi ptr [ @alloc_99467a59faf92f31a8982732e7fb49b0, %bb12 ], [ @alloc_1da6aa557ce0707293e833e02c8c2da9, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3fb755cb0240be98E.exit" ], [ @alloc_caa839e9b836481f4a1ae7bb01f6879a, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfb96682c48386377E.exit273" ], [ @alloc_cde4bbf51292371fbfb6375d71c47d6f, %bb25 ], [ @alloc_cf85ed6d618ffad79d0e1f37d9fda9d4, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34c68e3a83dde969E.exit153" ], [ @alloc_f798e728ce611e26120c04995e730d49, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3fb755cb0240be98E.exit125" ], [ @alloc_f0d80ef845d392f51f92bbfa45557fc8, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34c68e3a83dde969E.exit132" ], [ @alloc_9a2bae5b451e09582d8754e098126a9f, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3fb755cb0240be98E.exit118" ], [ @alloc_dce8333e95b5cbb7cb2d85dad28a73c4, %bb40 ], [ @alloc_b0c55838a1807dade4ed6ffa37eb7616, %bb45 ], [ @alloc_651212460c2af58baba06db3baf4b897, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34c68e3a83dde969E.exit88" ], [ @alloc_f642433dfda333e16e846e7f51a590d6, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3fb755cb0240be98E.exit81" ], [ @alloc_347238214f65429bfb9b8fc7c7359da9, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34c68e3a83dde969E.exit74" ], [ @alloc_c7004dbbf85d9d6d0b4961f2c2b71e10, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3fb755cb0240be98E.exit48" ], [ @alloc_869e166494aaecdb6cdcc119cf8d124e, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34c68e3a83dde969E.exit55" ], [ @alloc_ab88827fcde2a19da873088a06ab1397, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3fb755cb0240be98E.exit41" ], [ @alloc_9969ea6e63b83f816ceb42d807ba3bd7, %bb60 ], [ @alloc_eb5451513a65077e433bc51259a8b1fa, %bb67 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %63, i64 noundef range(i64 0, 2305843009213693952) %64, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %65) #29
          to label %panic.i.i276.cont unwind label %cleanup2

panic.i.i276.cont:                                ; preds = %panic.i.i276.invoke
  unreachable

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h08da2984883fdc0cE.exit280": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfb96682c48386377E.exit273"
  %66 = getelementptr inbounds nuw i8, ptr %_6.i270, i64 8
  %_6.i277 = load ptr, ptr %66, align 8, !alias.scope !1830, !noalias !1833, !nonnull !15, !noundef !15
  store i32 %., ptr %_6.i277, align 4
  br label %bb73

terminate:                                        ; preds = %bb82, %bb81, %cleanup2
  %67 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #28
  unreachable

bb82:                                             ; preds = %cleanup3, %cleanup.i.i, %bb81
  %.pn9 = phi { ptr, i32 } [ %.pn, %bb81 ], [ %68, %cleanup3 ], [ %33, %cleanup.i.i ]
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h866044ecec40a848E"(ptr noalias noundef align 8 dereferenceable(24) %a) #32
          to label %common.resume unwind label %terminate

cleanup3:                                         ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h94506b4b732baac1E.exit.i"
  %68 = landingpad { ptr, i32 }
          cleanup
  br label %bb82

bb78:                                             ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h94506b4b732baac1E.exit.i"
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %a)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h866044ecec40a848E.exit285" unwind label %cleanup.i.i281

cleanup.i.i281:                                   ; preds = %bb78
  %69 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %a)
          to label %common.resume unwind label %terminate.i.i282

terminate.i.i282:                                 ; preds = %cleanup.i.i281
  %70 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #28
  unreachable

common.resume:                                    ; preds = %bb82, %cleanup.i.i281
  %common.resume.op = phi { ptr, i32 } [ %69, %cleanup.i.i281 ], [ %.pn9, %bb82 ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h866044ecec40a848E.exit285": ; preds = %bb78
; call <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %a)
  ret i32 %_0.sroa.0.0
}
