define noundef i32 @f_gold(ptr dead_on_return noalias noundef align 8 captures(address) dereferenceable(24) %s, ptr dead_on_return noalias noundef align 8 captures(address) dereferenceable(24) %t) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_16.i.i = alloca [24 x i8], align 8
  %_57 = alloca [16 x i8], align 8
  %_50 = alloca [16 x i8], align 8
  %_9 = alloca [24 x i8], align 8
  %mat = alloca [24 x i8], align 8
  %0 = getelementptr inbounds nuw i8, ptr %t, i64 16
  %_0.i = load i64, ptr %0, align 8, !alias.scope !1706, !noundef !15
  %_2.i = icmp sgt i64 %_0.i, -1
  tail call void @llvm.assume(i1 %_2.i)
  %1 = getelementptr inbounds nuw i8, ptr %s, i64 16
  %_0.i15 = load i64, ptr %1, align 8, !alias.scope !1709, !noundef !15
  %_2.i16 = icmp sgt i64 %_0.i15, -1
  tail call void @llvm.assume(i1 %_2.i16)
  %_7 = icmp samesign ugt i64 %_0.i, %_0.i15
  br i1 %_7, label %bb3, label %bb4

bb63:                                             ; preds = %cleanup4, %cleanup
  %.pn = phi { ptr, i32 } [ %12, %cleanup4 ], [ %2, %cleanup ]
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha3342ee7a17542a8E"(ptr noalias noundef align 8 dereferenceable(24) %t) #32
          to label %bb64 unwind label %terminate

cleanup:                                          ; preds = %_ZN5alloc3vec9from_elem17h1a9871d84209acacE.exit, %bb14.i.i, %bb4, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h435b7eec00325955E.exit"
  %2 = landingpad { ptr, i32 }
          cleanup
  br label %bb63

bb4:                                              ; preds = %start
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %mat)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_9)
  %_10 = add nuw i64 %_0.i15, 1
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
  br i1 %3, label %bb14.i.i, label %_ZN5alloc3vec9from_elem17h1a9871d84209acacE.exit, !prof !1067

bb14.i.i:                                         ; preds = %.noexc
  %err.1.i.i = load i64, ptr %5, align 8, !noalias !1718
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #30
          to label %.noexc17 unwind label %cleanup

.noexc17:                                         ; preds = %bb14.i.i
  unreachable

_ZN5alloc3vec9from_elem17h1a9871d84209acacE.exit: ; preds = %.noexc
  %res.1.i.i = load ptr, ptr %5, align 8, !noalias !1718, !nonnull !15, !noundef !15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1718
  store i64 %err.0.i.i, ptr %_9, align 8, !alias.scope !1718
  %6 = getelementptr inbounds nuw i8, ptr %_9, i64 8
  store ptr %res.1.i.i, ptr %6, align 8, !alias.scope !1718
  %7 = getelementptr inbounds nuw i8, ptr %_9, i64 16
  store i64 %_10, ptr %7, align 8, !alias.scope !1718
  %_11 = add nuw i64 %_0.i, 1
; invoke <T as alloc::vec::spec_from_elem::SpecFromElem>::from_elem
  invoke void @"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h3c1a1fd72fe4a4a5E"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %mat, ptr noalias noundef align 8 captures(address) dereferenceable(24) %_9, i64 noundef %_11)
          to label %bb6 unwind label %cleanup

bb3:                                              ; preds = %start
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %t)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hcf2a8e2a07fb46f1E.exit.i" unwind label %cleanup.i.i

cleanup.i.i:                                      ; preds = %bb3
  %8 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %t)
          to label %bb64 unwind label %terminate.i.i

terminate.i.i:                                    ; preds = %cleanup.i.i
  %9 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #28
  unreachable

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hcf2a8e2a07fb46f1E.exit.i": ; preds = %bb3
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %t)
          to label %bb60 unwind label %cleanup5

bb6:                                              ; preds = %_ZN5alloc3vec9from_elem17h1a9871d84209acacE.exit
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_9)
  %10 = getelementptr inbounds nuw i8, ptr %mat, i64 16
  %11 = getelementptr inbounds nuw i8, ptr %mat, i64 8
  %_0.i.not.i.i340.not = icmp eq i64 %_0.i, 0
  br i1 %_0.i.not.i.i340.not, label %bb18.preheader, label %bb12.lr.ph

bb12.lr.ph:                                       ; preds = %bb6
  %_0.i3.i.i341.not = icmp eq i64 %_0.i, 1
  %iter.sroa.0.1346 = select i1 %_0.i3.i.i341.not, i64 1, i64 2
  %.not = icmp eq i64 %_0.i, 1
  %iter.sroa.7.1342 = zext i1 %.not to i8
  br label %bb12

cleanup4:                                         ; preds = %panic.i.i176.invoke
  %12 = landingpad { ptr, i32 }
          cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h7bc7584ae89e2f8cE"(ptr noalias noundef align 8 dereferenceable(24) %mat) #32
          to label %bb63 unwind label %terminate

bb18.preheader:                                   ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h20f659aaae3e52edE.exit180", %bb6
  %13 = getelementptr inbounds nuw i8, ptr %mat, i64 16
  %14 = getelementptr inbounds nuw i8, ptr %mat, i64 8
  %_0.i3.i.i28350 = icmp ne i64 %_0.i15, 0
  %spec.select187351 = zext i1 %_0.i3.i.i28350 to i64
  %not._0.i3.i.i28350 = xor i1 %_0.i3.i.i28350, true
  %iter1.sroa.7.1352 = zext i1 %not._0.i3.i.i28350 to i8
  br label %bb20

bb12:                                             ; preds = %bb12.lr.ph, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h20f659aaae3e52edE.exit180"
  %_0.sroa.3.0.i.i349 = phi i64 [ 1, %bb12.lr.ph ], [ %_0.sroa.3.0.i.i, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h20f659aaae3e52edE.exit180" ]
  %iter.sroa.0.1348 = phi i64 [ %iter.sroa.0.1346, %bb12.lr.ph ], [ %iter.sroa.0.1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h20f659aaae3e52edE.exit180" ]
  %iter.sroa.7.1347 = phi i8 [ %iter.sroa.7.1342, %bb12.lr.ph ], [ %iter.sroa.7.1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h20f659aaae3e52edE.exit180" ]
  %len.i = load i64, ptr %10, align 8, !alias.scope !1719, !noalias !1722, !noundef !15
  %_4.i.i = icmp ult i64 %_0.sroa.3.0.i.i349, %len.i
  br i1 %_4.i.i, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h422855d8df2505e3E.exit", label %panic.i.i176.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h422855d8df2505e3E.exit": ; preds = %bb12
  %_6.i = load ptr, ptr %11, align 8, !alias.scope !1719, !noalias !1722, !nonnull !15, !noundef !15
  %_0.i.i = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i, i64 %_0.sroa.3.0.i.i349
  %15 = getelementptr inbounds nuw i8, ptr %_0.i.i, i64 16
  %len.i174 = load i64, ptr %15, align 8, !alias.scope !1724, !noalias !1727, !noundef !15
  %_4.i.i175.not = icmp eq i64 %len.i174, 0
  br i1 %_4.i.i175.not, label %panic.i.i176.invoke, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h20f659aaae3e52edE.exit180"

bb26.preheader:                                   ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h20f659aaae3e52edE.exit173"
  %16 = getelementptr inbounds nuw i8, ptr %t, i64 8
  %17 = getelementptr inbounds nuw i8, ptr %_50, i64 8
  %18 = getelementptr inbounds nuw i8, ptr %s, i64 8
  %19 = getelementptr inbounds nuw i8, ptr %_57, i64 8
  %20 = getelementptr inbounds nuw i8, ptr %mat, i64 16
  %21 = getelementptr inbounds nuw i8, ptr %mat, i64 8
  %22 = getelementptr inbounds nuw i8, ptr %mat, i64 16
  %23 = getelementptr inbounds nuw i8, ptr %mat, i64 8
  %_0.i.not.i.i47366 = icmp eq i64 %_0.i, 0
  br i1 %_0.i.not.i.i47366, label %bb29, label %bb32.preheader.lr.ph

bb32.preheader.lr.ph:                             ; preds = %bb26.preheader
  %.not376 = icmp eq i64 %_0.i, 1
  %iter2.sroa.7.1372 = zext i1 %.not376 to i8
  %_0.i3.i.i49367.not = icmp eq i64 %_0.i, 1
  %iter2.sroa.0.1371 = select i1 %_0.i3.i.i49367.not, i64 1, i64 2
  %_0.i.not.i.i86356 = icmp eq i64 %_0.i15, 0
  %.not377 = icmp eq i64 %_0.i15, 1
  %iter3.sroa.7.1362 = zext i1 %.not377 to i8
  %_0.i3.i.i88357.not = icmp eq i64 %_0.i15, 1
  %iter3.sroa.0.1361 = select i1 %_0.i3.i.i88357.not, i64 1, i64 2
  br label %bb32.preheader

bb20:                                             ; preds = %bb18.preheader, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h20f659aaae3e52edE.exit173"
  %_0.sroa.3.0.i.i30355 = phi i64 [ 0, %bb18.preheader ], [ %_0.sroa.3.0.i.i30, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h20f659aaae3e52edE.exit173" ]
  %iter1.sroa.7.1354 = phi i8 [ %iter1.sroa.7.1352, %bb18.preheader ], [ %iter1.sroa.7.1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h20f659aaae3e52edE.exit173" ]
  %iter1.sroa.0.1353 = phi i64 [ %spec.select187351, %bb18.preheader ], [ %iter1.sroa.0.1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h20f659aaae3e52edE.exit173" ]
  %len.i35 = load i64, ptr %13, align 8, !alias.scope !1729, !noalias !1732, !noundef !15
  %_4.i.i36.not = icmp eq i64 %len.i35, 0
  br i1 %_4.i.i36.not, label %panic.i.i176.invoke, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h422855d8df2505e3E.exit41"

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h422855d8df2505e3E.exit41": ; preds = %bb20
  %_6.i38 = load ptr, ptr %14, align 8, !alias.scope !1729, !noalias !1732, !nonnull !15, !noundef !15
  %24 = getelementptr inbounds nuw i8, ptr %_6.i38, i64 16
  %len.i167 = load i64, ptr %24, align 8, !alias.scope !1734, !noalias !1737, !noundef !15
  %_4.i.i168 = icmp ult i64 %_0.sroa.3.0.i.i30355, %len.i167
  br i1 %_4.i.i168, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h20f659aaae3e52edE.exit173", label %panic.i.i176.invoke

bb26.loopexit:                                    ; preds = %bb55, %bb32.preheader
  %_10.i.i42 = trunc nuw i8 %iter2.sroa.7.1374 to i1
  %_0.i.not.i.i47 = icmp ugt i64 %iter2.sroa.0.1373, %_0.i
  %or.cond194 = select i1 %_10.i.i42, i1 true, i1 %_0.i.not.i.i47
  %_0.i3.i.i49 = icmp ult i64 %iter2.sroa.0.1373, %_0.i
  %not.or.cond194 = xor i1 %or.cond194, true
  %narrow291 = select i1 %not.or.cond194, i1 %_0.i3.i.i49, i1 false
  %spec.select189 = zext i1 %narrow291 to i64
  %iter2.sroa.0.1 = add nuw i64 %iter2.sroa.0.1373, %spec.select189
  %25 = select i1 %or.cond194, i1 true, i1 %_0.i3.i.i49
  %iter2.sroa.7.1 = select i1 %25, i8 %iter2.sroa.7.1374, i8 1
  %_0.sroa.3.0.i.i51 = select i1 %_10.i.i42, i64 undef, i64 %iter2.sroa.0.1373
  br i1 %or.cond194, label %bb29, label %bb32.preheader

bb32.preheader:                                   ; preds = %bb32.preheader.lr.ph, %bb26.loopexit
  %_0.sroa.3.0.i.i51375 = phi i64 [ 1, %bb32.preheader.lr.ph ], [ %_0.sroa.3.0.i.i51, %bb26.loopexit ]
  %iter2.sroa.7.1374 = phi i8 [ %iter2.sroa.7.1372, %bb32.preheader.lr.ph ], [ %iter2.sroa.7.1, %bb26.loopexit ]
  %iter2.sroa.0.1373 = phi i64 [ %iter2.sroa.0.1371, %bb32.preheader.lr.ph ], [ %iter2.sroa.0.1, %bb26.loopexit ]
  %_53 = add i64 %_0.sroa.3.0.i.i51375, -1
  br i1 %_0.i.not.i.i86356, label %bb26.loopexit, label %bb34

bb29:                                             ; preds = %bb26.loopexit, %bb26.preheader
  %26 = getelementptr inbounds nuw i8, ptr %mat, i64 16
  %len.i56 = load i64, ptr %26, align 8, !alias.scope !1739, !noalias !1742, !noundef !15
  %_4.i.i57 = icmp ult i64 %_0.i, %len.i56
  br i1 %_4.i.i57, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6d6ee6c507e3fd55E.exit", label %panic.i.i176.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6d6ee6c507e3fd55E.exit": ; preds = %bb29
  %27 = getelementptr inbounds nuw i8, ptr %mat, i64 8
  %_6.i59 = load ptr, ptr %27, align 8, !alias.scope !1739, !noalias !1742, !nonnull !15, !noundef !15
  %_0.i.i60 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i59, i64 %_0.i
  %28 = getelementptr inbounds nuw i8, ptr %_0.i.i60, i64 16
  %len.i62 = load i64, ptr %28, align 8, !alias.scope !1744, !noalias !1747, !noundef !15
  %_4.i.i63 = icmp ult i64 %_0.i15, %len.i62
  br i1 %_4.i.i63, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h435b7eec00325955E.exit", label %panic.i.i176.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h435b7eec00325955E.exit": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6d6ee6c507e3fd55E.exit"
  %29 = getelementptr inbounds nuw i8, ptr %_0.i.i60, i64 8
  %_6.i65 = load ptr, ptr %29, align 8, !alias.scope !1744, !noalias !1747, !nonnull !15, !noundef !15
  %_0.i.i66 = getelementptr inbounds nuw i32, ptr %_6.i65, i64 %_0.i15
  %30 = load i32, ptr %_0.i.i66, align 4, !noundef !15
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h7bc7584ae89e2f8cE"(ptr noalias noundef align 8 dereferenceable(24) %mat)
          to label %bb58 unwind label %cleanup

bb58:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h435b7eec00325955E.exit"
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %mat)
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %t)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hcf2a8e2a07fb46f1E.exit.i71" unwind label %cleanup.i.i68

cleanup.i.i68:                                    ; preds = %bb58
  %31 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %t)
          to label %bb64 unwind label %terminate.i.i69

terminate.i.i69:                                  ; preds = %cleanup.i.i68
  %32 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #28
  unreachable

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hcf2a8e2a07fb46f1E.exit.i71": ; preds = %bb58
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %t)
          to label %bb59 unwind label %cleanup5

bb64:                                             ; preds = %cleanup.i.i, %cleanup.i.i68, %cleanup5, %bb63
  %.pn13 = phi { ptr, i32 } [ %.pn, %bb63 ], [ %8, %cleanup.i.i ], [ %33, %cleanup5 ], [ %31, %cleanup.i.i68 ]
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha3342ee7a17542a8E"(ptr noalias noundef align 8 dereferenceable(24) %s) #32
          to label %common.resume unwind label %terminate

cleanup5:                                         ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hcf2a8e2a07fb46f1E.exit.i71", %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hcf2a8e2a07fb46f1E.exit.i"
  %33 = landingpad { ptr, i32 }
          cleanup
  br label %bb64

bb59:                                             ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hcf2a8e2a07fb46f1E.exit.i71"
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %s)
          to label %bb61 unwind label %cleanup.i.i76

cleanup.i.i76:                                    ; preds = %bb59
  %34 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %s)
          to label %common.resume unwind label %terminate.i.i77

terminate.i.i77:                                  ; preds = %cleanup.i.i76
  %35 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #28
  unreachable

common.resume:                                    ; preds = %bb64, %cleanup.i.i181, %cleanup.i.i76
  %common.resume.op = phi { ptr, i32 } [ %34, %cleanup.i.i76 ], [ %54, %cleanup.i.i181 ], [ %.pn13, %bb64 ]
  resume { ptr, i32 } %common.resume.op

bb61:                                             ; preds = %bb59, %bb60
  %_0.sroa.0.0 = phi i32 [ 0, %bb60 ], [ %30, %bb59 ]
; call <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %s)
  ret i32 %_0.sroa.0.0

bb34:                                             ; preds = %bb32.preheader, %bb55
  %_0.sroa.3.0.i.i90365 = phi i64 [ %_0.sroa.3.0.i.i90, %bb55 ], [ 1, %bb32.preheader ]
  %iter3.sroa.7.1364 = phi i8 [ %iter3.sroa.7.1, %bb55 ], [ %iter3.sroa.7.1362, %bb32.preheader ]
  %iter3.sroa.0.1363 = phi i64 [ %iter3.sroa.0.1, %bb55 ], [ %iter3.sroa.0.1361, %bb32.preheader ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_50)
  %_6.i.i = load ptr, ptr %16, align 8, !alias.scope !1749, !nonnull !15, !noundef !15
  %len.i.i = load i64, ptr %0, align 8, !alias.scope !1749, !noundef !15
  %_7.i = getelementptr inbounds nuw i8, ptr %_6.i.i, i64 %len.i.i
  store ptr %_6.i.i, ptr %_50, align 8
  store ptr %_7.i, ptr %17, align 8
; call core::iter::traits::iterator::Iterator::nth
  %36 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h8e02ce6e53c9c700E(ptr noalias noundef align 8 dereferenceable(16) %_50, i64 noundef %_53)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_57)
  %_6.i.i95 = load ptr, ptr %18, align 8, !alias.scope !1754, !nonnull !15, !noundef !15
  %len.i.i96 = load i64, ptr %1, align 8, !alias.scope !1754, !noundef !15
  %_7.i97 = getelementptr inbounds nuw i8, ptr %_6.i.i95, i64 %len.i.i96
  store ptr %_6.i.i95, ptr %_57, align 8
  store ptr %_7.i97, ptr %19, align 8
  %_60 = add i64 %_0.sroa.3.0.i.i90365, -1
; call core::iter::traits::iterator::Iterator::nth
  %37 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h8e02ce6e53c9c700E(ptr noalias noundef align 8 dereferenceable(16) %_57, i64 noundef %_60)
  %_0.sroa.0.0.shrunk.i.i.not = icmp eq i32 %37, %36
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_57)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_50)
  br i1 %_0.sroa.0.0.shrunk.i.i.not, label %bb48, label %bb43

bb48:                                             ; preds = %bb34
  %len.i98 = load i64, ptr %22, align 8, !alias.scope !1759, !noalias !1762, !noundef !15
  %_4.i.i99 = icmp ult i64 %_0.sroa.3.0.i.i51375, %len.i98
  br i1 %_4.i.i99, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6d6ee6c507e3fd55E.exit104", label %panic.i.i176.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6d6ee6c507e3fd55E.exit104": ; preds = %bb48
  %_6.i101 = load ptr, ptr %23, align 8, !alias.scope !1759, !noalias !1762, !nonnull !15, !noundef !15
  %_0.i.i102 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i101, i64 %_0.sroa.3.0.i.i51375
  %38 = getelementptr inbounds nuw i8, ptr %_0.i.i102, i64 16
  %len.i112 = load i64, ptr %38, align 8, !alias.scope !1764, !noalias !1767, !noundef !15
  %_4.i.i113 = icmp ult i64 %_60, %len.i112
  br i1 %_4.i.i113, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h435b7eec00325955E.exit118", label %panic.i.i176.invoke

bb43:                                             ; preds = %bb34
  %len.i105 = load i64, ptr %20, align 8, !alias.scope !1769, !noalias !1772, !noundef !15
  %_4.i.i106 = icmp ult i64 %_0.sroa.3.0.i.i51375, %len.i105
  br i1 %_4.i.i106, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6d6ee6c507e3fd55E.exit111", label %panic.i.i176.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6d6ee6c507e3fd55E.exit111": ; preds = %bb43
  %_6.i108 = load ptr, ptr %21, align 8, !alias.scope !1769, !noalias !1772, !nonnull !15, !noundef !15
  %_0.i.i109 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i108, i64 %_0.sroa.3.0.i.i51375
  %39 = getelementptr inbounds nuw i8, ptr %_0.i.i109, i64 16
  %len.i146 = load i64, ptr %39, align 8, !alias.scope !1774, !noalias !1777, !noundef !15
  %_4.i.i147 = icmp ult i64 %_60, %len.i146
  br i1 %_4.i.i147, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h435b7eec00325955E.exit152", label %panic.i.i176.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h435b7eec00325955E.exit118": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6d6ee6c507e3fd55E.exit104"
  %40 = getelementptr inbounds nuw i8, ptr %_0.i.i102, i64 8
  %_6.i115 = load ptr, ptr %40, align 8, !alias.scope !1764, !noalias !1767, !nonnull !15, !noundef !15
  %_0.i.i116 = getelementptr inbounds nuw i32, ptr %_6.i115, i64 %_60
  %_68 = load i32, ptr %_0.i.i116, align 4, !noundef !15
  %_4.i.i120 = icmp ult i64 %_53, %len.i98
  br i1 %_4.i.i120, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6d6ee6c507e3fd55E.exit125", label %panic.i.i176.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6d6ee6c507e3fd55E.exit125": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h435b7eec00325955E.exit118"
  %_0.i.i123 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i101, i64 %_53
  %41 = getelementptr inbounds nuw i8, ptr %_0.i.i123, i64 16
  %len.i126 = load i64, ptr %41, align 8, !alias.scope !1779, !noalias !1782, !noundef !15
  %_4.i.i127 = icmp ult i64 %_60, %len.i126
  br i1 %_4.i.i127, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h435b7eec00325955E.exit132", label %panic.i.i176.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h435b7eec00325955E.exit132": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6d6ee6c507e3fd55E.exit125"
  %_4.i.i141 = icmp ult i64 %_0.sroa.3.0.i.i90365, %len.i112
  br i1 %_4.i.i141, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h20f659aaae3e52edE.exit", label %panic.i.i176.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h20f659aaae3e52edE.exit": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h435b7eec00325955E.exit132"
  %42 = getelementptr inbounds nuw i8, ptr %_0.i.i123, i64 8
  %_6.i129 = load ptr, ptr %42, align 8, !alias.scope !1779, !noalias !1782, !nonnull !15, !noundef !15
  %_0.i.i130 = getelementptr inbounds nuw i32, ptr %_6.i129, i64 %_60
  %_72 = load i32, ptr %_0.i.i130, align 4, !noundef !15
  %_0.i.i144 = getelementptr inbounds nuw i32, ptr %_6.i115, i64 %_0.sroa.3.0.i.i90365
  %43 = add i32 %_72, %_68
  store i32 %43, ptr %_0.i.i144, align 4
  br label %bb55

bb55:                                             ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h20f659aaae3e52edE.exit166", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h20f659aaae3e52edE.exit"
  %_10.i.i81 = trunc nuw i8 %iter3.sroa.7.1364 to i1
  %_0.i.not.i.i86 = icmp ugt i64 %iter3.sroa.0.1363, %_0.i15
  %or.cond195 = select i1 %_10.i.i81, i1 true, i1 %_0.i.not.i.i86
  %_0.i3.i.i88 = icmp ult i64 %iter3.sroa.0.1363, %_0.i15
  %not.or.cond195 = xor i1 %or.cond195, true
  %narrow292 = select i1 %not.or.cond195, i1 %_0.i3.i.i88, i1 false
  %spec.select191 = zext i1 %narrow292 to i64
  %iter3.sroa.0.1 = add nuw i64 %iter3.sroa.0.1363, %spec.select191
  %44 = select i1 %or.cond195, i1 true, i1 %_0.i3.i.i88
  %iter3.sroa.7.1 = select i1 %44, i8 %iter3.sroa.7.1364, i8 1
  %_0.sroa.3.0.i.i90 = select i1 %_10.i.i81, i64 undef, i64 %iter3.sroa.0.1363
  br i1 %or.cond195, label %bb26.loopexit, label %bb34

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h435b7eec00325955E.exit152": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6d6ee6c507e3fd55E.exit111"
  %_4.i.i161 = icmp ult i64 %_0.sroa.3.0.i.i90365, %len.i146
  br i1 %_4.i.i161, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h20f659aaae3e52edE.exit166", label %panic.i.i176.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h20f659aaae3e52edE.exit166": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h435b7eec00325955E.exit152"
  %45 = getelementptr inbounds nuw i8, ptr %_0.i.i109, i64 8
  %_6.i149 = load ptr, ptr %45, align 8, !alias.scope !1774, !noalias !1777, !nonnull !15, !noundef !15
  %_0.i.i150 = getelementptr inbounds nuw i32, ptr %_6.i149, i64 %_60
  %_61 = load i32, ptr %_0.i.i150, align 4, !noundef !15
  %_0.i.i164 = getelementptr inbounds nuw i32, ptr %_6.i149, i64 %_0.sroa.3.0.i.i90365
  store i32 %_61, ptr %_0.i.i164, align 4
  br label %bb55

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h20f659aaae3e52edE.exit173": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h422855d8df2505e3E.exit41"
  %46 = getelementptr inbounds nuw i8, ptr %_6.i38, i64 8
  %_6.i170 = load ptr, ptr %46, align 8, !alias.scope !1734, !noalias !1737, !nonnull !15, !noundef !15
  %_0.i.i171 = getelementptr inbounds nuw i32, ptr %_6.i170, i64 %_0.sroa.3.0.i.i30355
  store i32 1, ptr %_0.i.i171, align 4
  %_10.i.i21 = trunc nuw i8 %iter1.sroa.7.1354 to i1
  %_0.i.not.i.i26 = icmp ugt i64 %iter1.sroa.0.1353, %_0.i15
  %or.cond193 = select i1 %_10.i.i21, i1 true, i1 %_0.i.not.i.i26
  %_0.i3.i.i28 = icmp ult i64 %iter1.sroa.0.1353, %_0.i15
  %not.or.cond193 = xor i1 %or.cond193, true
  %narrow290 = select i1 %not.or.cond193, i1 %_0.i3.i.i28, i1 false
  %spec.select187 = zext i1 %narrow290 to i64
  %iter1.sroa.0.1 = add nuw i64 %iter1.sroa.0.1353, %spec.select187
  %47 = select i1 %or.cond193, i1 true, i1 %_0.i3.i.i28
  %iter1.sroa.7.1 = select i1 %47, i8 %iter1.sroa.7.1354, i8 1
  %_0.sroa.3.0.i.i30 = select i1 %_10.i.i21, i64 undef, i64 %iter1.sroa.0.1353
  br i1 %or.cond193, label %bb26.preheader, label %bb20

panic.i.i176.invoke:                              ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h422855d8df2505e3E.exit", %bb12, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h422855d8df2505e3E.exit41", %bb20, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h435b7eec00325955E.exit152", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6d6ee6c507e3fd55E.exit111", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h435b7eec00325955E.exit132", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6d6ee6c507e3fd55E.exit125", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h435b7eec00325955E.exit118", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6d6ee6c507e3fd55E.exit104", %bb43, %bb48, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6d6ee6c507e3fd55E.exit", %bb29
  %48 = phi i64 [ %_0.i, %bb29 ], [ %_0.i15, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6d6ee6c507e3fd55E.exit" ], [ %_0.sroa.3.0.i.i90365, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h435b7eec00325955E.exit152" ], [ %_60, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6d6ee6c507e3fd55E.exit111" ], [ %_0.sroa.3.0.i.i90365, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h435b7eec00325955E.exit132" ], [ %_60, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6d6ee6c507e3fd55E.exit125" ], [ %_53, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h435b7eec00325955E.exit118" ], [ %_60, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6d6ee6c507e3fd55E.exit104" ], [ %_0.sroa.3.0.i.i51375, %bb43 ], [ %_0.sroa.3.0.i.i51375, %bb48 ], [ %_0.sroa.3.0.i.i30355, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h422855d8df2505e3E.exit41" ], [ 0, %bb20 ], [ 0, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h422855d8df2505e3E.exit" ], [ %_0.sroa.3.0.i.i349, %bb12 ]
  %49 = phi i64 [ %len.i56, %bb29 ], [ %len.i62, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6d6ee6c507e3fd55E.exit" ], [ %len.i146, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h435b7eec00325955E.exit152" ], [ %len.i146, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6d6ee6c507e3fd55E.exit111" ], [ %len.i112, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h435b7eec00325955E.exit132" ], [ %len.i126, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6d6ee6c507e3fd55E.exit125" ], [ %len.i98, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h435b7eec00325955E.exit118" ], [ %len.i112, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6d6ee6c507e3fd55E.exit104" ], [ %len.i105, %bb43 ], [ %len.i98, %bb48 ], [ %len.i167, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h422855d8df2505e3E.exit41" ], [ %len.i35, %bb20 ], [ %len.i174, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h422855d8df2505e3E.exit" ], [ %len.i, %bb12 ]
  %50 = phi ptr [ @alloc_18df641d2c2df62652d096d93f852091, %bb29 ], [ @alloc_b00c72d6caf29025e90c0ab64fa1eed6, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6d6ee6c507e3fd55E.exit" ], [ @alloc_4b0293b4d2fd5ea24fc25f1e54d47bb0, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h435b7eec00325955E.exit152" ], [ @alloc_3cb0aa2108432cf44b493bbd57625613, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6d6ee6c507e3fd55E.exit111" ], [ @alloc_f8fe858b8c1558f2ee4927fb6c14fba7, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h435b7eec00325955E.exit132" ], [ @alloc_ab227fbe6d82a269a084c9d7b91d7b5a, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6d6ee6c507e3fd55E.exit125" ], [ @alloc_ccca52a54b9e46b339b9a91748cb89ae, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h435b7eec00325955E.exit118" ], [ @alloc_1d288691f361df57db325cd647d3e42f, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6d6ee6c507e3fd55E.exit104" ], [ @alloc_848d5804101f47dc7592003f085a5536, %bb43 ], [ @alloc_56992e00ea9bee0fa107355f609e55bc, %bb48 ], [ @alloc_d214a5199dd5fd71a6da2179005950f1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h422855d8df2505e3E.exit41" ], [ @alloc_4fbf94089a080e87ab73176eefafa1f9, %bb20 ], [ @alloc_ee3ebfdcd74c75e2032f5e61df668a86, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h422855d8df2505e3E.exit" ], [ @alloc_c3be058e40d8d19b19fafc29c5892dfd, %bb12 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %48, i64 noundef range(i64 0, 2305843009213693952) %49, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %50) #29
          to label %panic.i.i176.cont unwind label %cleanup4

panic.i.i176.cont:                                ; preds = %panic.i.i176.invoke
  unreachable

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h20f659aaae3e52edE.exit180": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h422855d8df2505e3E.exit"
  %51 = getelementptr inbounds nuw i8, ptr %_0.i.i, i64 8
  %_6.i177 = load ptr, ptr %51, align 8, !alias.scope !1724, !noalias !1727, !nonnull !15, !noundef !15
  store i32 0, ptr %_6.i177, align 4
  %_10.i.i = trunc nuw i8 %iter.sroa.7.1347 to i1
  %_0.i.not.i.i = icmp ugt i64 %iter.sroa.0.1348, %_0.i
  %or.cond = select i1 %_10.i.i, i1 true, i1 %_0.i.not.i.i
  %_0.i3.i.i = icmp ult i64 %iter.sroa.0.1348, %_0.i
  %52 = select i1 %or.cond, i1 true, i1 %_0.i3.i.i
  %iter.sroa.7.1 = select i1 %52, i8 %iter.sroa.7.1347, i8 1
  %not.or.cond = xor i1 %or.cond, true
  %narrow = select i1 %not.or.cond, i1 %_0.i3.i.i, i1 false
  %spec.select186 = zext i1 %narrow to i64
  %iter.sroa.0.1 = add nuw i64 %iter.sroa.0.1348, %spec.select186
  %_0.sroa.3.0.i.i = select i1 %_10.i.i, i64 undef, i64 %iter.sroa.0.1348
  br i1 %or.cond, label %bb18.preheader, label %bb12

terminate:                                        ; preds = %bb64, %bb63, %cleanup4
  %53 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #28
  unreachable

bb60:                                             ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hcf2a8e2a07fb46f1E.exit.i"
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %s)
          to label %bb61 unwind label %cleanup.i.i181

cleanup.i.i181:                                   ; preds = %bb60
  %54 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %s)
          to label %common.resume unwind label %terminate.i.i182

terminate.i.i182:                                 ; preds = %cleanup.i.i181
  %55 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #28
  unreachable
}
