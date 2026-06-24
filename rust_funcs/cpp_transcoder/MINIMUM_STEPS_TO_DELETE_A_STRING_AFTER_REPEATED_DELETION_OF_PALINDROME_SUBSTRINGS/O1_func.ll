define noundef i32 @f_gold(ptr dead_on_return noalias noundef align 8 captures(address) dereferenceable(24) %str) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_16.i.i = alloca [24 x i8], align 8
  %_5 = alloca [24 x i8], align 8
  %dp = alloca [24 x i8], align 8
  %0 = getelementptr inbounds nuw i8, ptr %str, i64 16
  %_0.i = load i64, ptr %0, align 8, !alias.scope !1675, !noundef !15
  %_2.i = icmp sgt i64 %_0.i, -1
  tail call void @llvm.assume(i1 %_2.i)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %dp)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_5)
  %_6 = add nuw i64 %_0.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1678)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1681)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1684
; invoke alloc::raw_vec::RawVecInner<A>::try_allocate_in
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_16.i.i, i64 noundef %_6, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4)
          to label %.noexc unwind label %cleanup

bb76:                                             ; preds = %cleanup5, %cleanup
  %.pn = phi { ptr, i32 } [ %11, %cleanup5 ], [ %3, %cleanup ]
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h04f6e21f104de313E.exit.i" unwind label %cleanup.i.i

cleanup.i.i:                                      ; preds = %bb76
  %1 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
          to label %terminate.body unwind label %terminate.i.i

terminate.i.i:                                    ; preds = %cleanup.i.i
  %2 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #26
  unreachable

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h04f6e21f104de313E.exit.i": ; preds = %bb76
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
          to label %common.resume unwind label %terminate

cleanup:                                          ; preds = %_ZN5alloc3vec9from_elem17h44f8ddfa4e19ab92E.exit, %bb14.i.i, %start, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63e7d48f0a7a4c95E.exit"
  %3 = landingpad { ptr, i32 }
          cleanup
  br label %bb76

.noexc:                                           ; preds = %start
  %_17.i.i = load i64, ptr %_16.i.i, align 8, !range !1034, !noalias !1684, !noundef !15
  %4 = trunc nuw i64 %_17.i.i to i1
  %5 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 8
  %err.0.i.i = load i64, ptr %5, align 8, !range !1035, !noalias !1684, !noundef !15
  %6 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 16
  br i1 %4, label %bb14.i.i, label %_ZN5alloc3vec9from_elem17h44f8ddfa4e19ab92E.exit, !prof !1036

bb14.i.i:                                         ; preds = %.noexc
  %err.1.i.i = load i64, ptr %6, align 8, !noalias !1684
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #28
          to label %.noexc14 unwind label %cleanup

.noexc14:                                         ; preds = %bb14.i.i
  unreachable

_ZN5alloc3vec9from_elem17h44f8ddfa4e19ab92E.exit: ; preds = %.noexc
  %res.1.i.i = load ptr, ptr %6, align 8, !noalias !1684, !nonnull !15, !noundef !15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1684
  store i64 %err.0.i.i, ptr %_5, align 8, !alias.scope !1684
  %7 = getelementptr inbounds nuw i8, ptr %_5, i64 8
  store ptr %res.1.i.i, ptr %7, align 8, !alias.scope !1684
  %8 = getelementptr inbounds nuw i8, ptr %_5, i64 16
  store i64 %_6, ptr %8, align 8, !alias.scope !1684
; invoke <T as alloc::vec::spec_from_elem::SpecFromElem>::from_elem
  invoke void @"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hdcbdf7bab652001aE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %dp, ptr noalias noundef align 8 captures(address) dereferenceable(24) %_5, i64 noundef %_6)
          to label %bb3 unwind label %cleanup

bb3:                                              ; preds = %_ZN5alloc3vec9from_elem17h44f8ddfa4e19ab92E.exit
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_5)
  %9 = getelementptr inbounds nuw i8, ptr %dp, i64 16
  %10 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  %_0.i3.i.i927 = icmp ne i64 %_0.i, 0
  %not._0.i3.i.i927 = xor i1 %_0.i3.i.i927, true
  %iter.sroa.7.1928 = zext i1 %not._0.i3.i.i927 to i8
  %spec.select324929 = zext i1 %_0.i3.i.i927 to i64
  %_0.i3.i.i301921 = icmp ne i64 %_0.i, 0
  %spec.select329922 = zext i1 %_0.i3.i.i301921 to i64
  %not._0.i3.i.i301921 = xor i1 %_0.i3.i.i301921, true
  %iter1.sroa.7.1923 = zext i1 %not._0.i3.i.i301921 to i8
  br label %bb13.preheader

cleanup5:                                         ; preds = %bb3.i.i209.invoke, %panic.i.i317.invoke
  %11 = landingpad { ptr, i32 }
          cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hedf48bb8a32fa4f7E"(ptr noalias noundef align 8 dereferenceable(24) %dp) #30
          to label %bb76 unwind label %terminate

bb6.loopexit:                                     ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb80f13494d4bb7cfE.exit321"
  %_10.i.i = trunc nuw i8 %iter.sroa.7.1930 to i1
  %_0.i.not.i.i = icmp ugt i64 %iter.sroa.0.1931, %_0.i
  %or.cond = select i1 %_10.i.i, i1 true, i1 %_0.i.not.i.i
  %_0.i3.i.i = icmp ult i64 %iter.sroa.0.1931, %_0.i
  %12 = select i1 %or.cond, i1 true, i1 %_0.i3.i.i
  %iter.sroa.7.1 = select i1 %12, i8 %iter.sroa.7.1930, i8 1
  %not.or.cond = xor i1 %or.cond, true
  %narrow = select i1 %not.or.cond, i1 %_0.i3.i.i, i1 false
  %spec.select324 = zext i1 %narrow to i64
  %iter.sroa.0.1 = add nuw i64 %iter.sroa.0.1931, %spec.select324
  %_0.sroa.3.0.i.i = select i1 %_10.i.i, i64 undef, i64 %iter.sroa.0.1931
  br i1 %or.cond, label %bb21.preheader, label %bb13.preheader

bb13.preheader:                                   ; preds = %bb3, %bb6.loopexit
  %_0.sroa.3.0.i.i932 = phi i64 [ 0, %bb3 ], [ %_0.sroa.3.0.i.i, %bb6.loopexit ]
  %iter.sroa.0.1931 = phi i64 [ %spec.select324929, %bb3 ], [ %iter.sroa.0.1, %bb6.loopexit ]
  %iter.sroa.7.1930 = phi i8 [ %iter.sroa.7.1928, %bb3 ], [ %iter.sroa.7.1, %bb6.loopexit ]
  br label %bb15

bb21.preheader:                                   ; preds = %bb6.loopexit
  %_34 = add nuw i64 %_0.i, 1
  %13 = getelementptr inbounds nuw i8, ptr %dp, i64 16
  %14 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  %15 = getelementptr inbounds nuw i8, ptr %str, i64 8
  %16 = getelementptr inbounds nuw i8, ptr %dp, i64 16
  %17 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  %_0.i.not.i.i21943 = icmp eq i64 %_0.i, 0
  br i1 %_0.i.not.i.i21943, label %bb24, label %bb23.lr.ph

bb23.lr.ph:                                       ; preds = %bb21.preheader
  %.not = icmp eq i64 %_0.i, 1
  %iter2.sroa.7.1949 = zext i1 %.not to i8
  %_0.i3.i.i23944.not = icmp eq i64 %_0.i, 1
  %iter2.sroa.0.1948 = select i1 %_0.i3.i.i23944.not, i64 1, i64 2
  br label %bb23

bb21.loopexit:                                    ; preds = %bb70, %bb23
  %_10.i.i16 = trunc nuw i8 %iter2.sroa.7.1951 to i1
  %_0.i.not.i.i21 = icmp ugt i64 %iter2.sroa.0.1950, %_0.i
  %or.cond333 = select i1 %_10.i.i16, i1 true, i1 %_0.i.not.i.i21
  %_0.i3.i.i23 = icmp ult i64 %iter2.sroa.0.1950, %_0.i
  %not.or.cond333 = xor i1 %or.cond333, true
  %narrow730 = select i1 %not.or.cond333, i1 %_0.i3.i.i23, i1 false
  %spec.select325 = zext i1 %narrow730 to i64
  %iter2.sroa.0.1 = add nuw i64 %iter2.sroa.0.1950, %spec.select325
  %18 = select i1 %or.cond333, i1 true, i1 %_0.i3.i.i23
  %iter2.sroa.7.1 = select i1 %18, i8 %iter2.sroa.7.1951, i8 1
  %_0.sroa.3.0.i.i25 = select i1 %_10.i.i16, i64 undef, i64 %iter2.sroa.0.1950
  br i1 %or.cond333, label %bb24, label %bb23

bb23:                                             ; preds = %bb23.lr.ph, %bb21.loopexit
  %_0.sroa.3.0.i.i25952 = phi i64 [ 1, %bb23.lr.ph ], [ %_0.sroa.3.0.i.i25, %bb21.loopexit ]
  %iter2.sroa.7.1951 = phi i8 [ %iter2.sroa.7.1949, %bb23.lr.ph ], [ %iter2.sroa.7.1, %bb21.loopexit ]
  %iter2.sroa.0.1950 = phi i64 [ %iter2.sroa.0.1948, %bb23.lr.ph ], [ %iter2.sroa.0.1, %bb21.loopexit ]
  %_33 = sub i64 %_34, %_0.sroa.3.0.i.i25952
  %_0.i.i.i529.not = icmp eq i64 %_34, %_0.sroa.3.0.i.i25952
  br i1 %_0.i.i.i529.not, label %bb21.loopexit, label %bb28.lr.ph

bb28.lr.ph:                                       ; preds = %bb23
  %_41 = add i64 %_0.sroa.3.0.i.i25952, -1
  %_42 = icmp eq i64 %_0.sroa.3.0.i.i25952, 1
  %.not953 = icmp eq i64 %_41, 2
  %iter4.sroa.7.1939 = zext i1 %.not953 to i8
  br label %bb28

bb24:                                             ; preds = %bb21.loopexit, %bb21.preheader
  %19 = getelementptr inbounds nuw i8, ptr %dp, i64 16
  %len.i = load i64, ptr %19, align 8, !alias.scope !1685, !noalias !1688, !noundef !15
  %_4.i.i.not = icmp eq i64 %len.i, 0
  br i1 %_4.i.i.not, label %panic.i.i317.invoke, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3831e1b6aa9d6656E.exit"

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3831e1b6aa9d6656E.exit": ; preds = %bb24
  %20 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  %_6.i = load ptr, ptr %20, align 8, !alias.scope !1685, !noalias !1688, !nonnull !15, !noundef !15
  %_110 = add nsw i64 %_0.i, -1
  %21 = getelementptr inbounds nuw i8, ptr %_6.i, i64 16
  %len.i31 = load i64, ptr %21, align 8, !alias.scope !1690, !noalias !1693, !noundef !15
  %_4.i.i32 = icmp ult i64 %_110, %len.i31
  br i1 %_4.i.i32, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63e7d48f0a7a4c95E.exit", label %panic.i.i317.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63e7d48f0a7a4c95E.exit": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3831e1b6aa9d6656E.exit"
  %22 = getelementptr inbounds nuw i8, ptr %_6.i, i64 8
  %_6.i34 = load ptr, ptr %22, align 8, !alias.scope !1690, !noalias !1693, !nonnull !15, !noundef !15
  %_0.i.i = getelementptr inbounds nuw i32, ptr %_6.i34, i64 %_110
  %_0 = load i32, ptr %_0.i.i, align 4, !noundef !15
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hedf48bb8a32fa4f7E"(ptr noalias noundef align 8 dereferenceable(24) %dp)
          to label %bb73 unwind label %cleanup

bb73:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63e7d48f0a7a4c95E.exit"
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %dp)
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h19694d511a22bb7dE.exit40" unwind label %cleanup.i.i36

cleanup.i.i36:                                    ; preds = %bb73
  %23 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
          to label %common.resume unwind label %terminate.i.i37

terminate.i.i37:                                  ; preds = %cleanup.i.i36
  %24 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #26
  unreachable

common.resume:                                    ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h04f6e21f104de313E.exit.i", %cleanup.i.i36
  %common.resume.op = phi { ptr, i32 } [ %23, %cleanup.i.i36 ], [ %.pn, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h04f6e21f104de313E.exit.i" ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h19694d511a22bb7dE.exit40": ; preds = %bb73
; call <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
  ret i32 %_0

bb28:                                             ; preds = %bb28.lr.ph, %bb70
  %spec.select532 = phi i64 [ 1, %bb28.lr.ph ], [ %spec.select, %bb70 ]
  %iter3.sroa.0.0531 = phi i64 [ 0, %bb28.lr.ph ], [ %spec.select532, %bb70 ]
  %j = add i64 %_41, %iter3.sroa.0.0531
  br i1 %_42, label %bb30, label %bb33

bb33:                                             ; preds = %bb28
  %_50 = add nuw i64 %iter3.sroa.0.0531, 1
  %len.i46 = load i64, ptr %13, align 8, !alias.scope !1695, !noalias !1698, !noundef !15
  %_4.i.i47 = icmp ult i64 %_50, %len.i46
  br i1 %_4.i.i47, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3831e1b6aa9d6656E.exit52", label %panic.i.i317.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3831e1b6aa9d6656E.exit52": ; preds = %bb33
  %_6.i49 = load ptr, ptr %14, align 8, !alias.scope !1695, !noalias !1698, !nonnull !15, !noundef !15
  %_0.i.i50 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i49, i64 %_50
  %25 = getelementptr inbounds nuw i8, ptr %_0.i.i50, i64 16
  %len.i59 = load i64, ptr %25, align 8, !alias.scope !1700, !noalias !1703, !noundef !15
  %_4.i.i60 = icmp ult i64 %j, %len.i59
  br i1 %_4.i.i60, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63e7d48f0a7a4c95E.exit65", label %panic.i.i317.invoke

bb30:                                             ; preds = %bb28
  %len.i53 = load i64, ptr %16, align 8, !alias.scope !1705, !noalias !1708, !noundef !15
  %_4.i.i54 = icmp ult i64 %iter3.sroa.0.0531, %len.i53
  br i1 %_4.i.i54, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h2f352061c7466959E.exit", label %panic.i.i317.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h2f352061c7466959E.exit": ; preds = %bb30
  %_6.i56 = load ptr, ptr %17, align 8, !alias.scope !1705, !noalias !1708, !nonnull !15, !noundef !15
  %_0.i.i57 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i56, i64 %iter3.sroa.0.0531
  %26 = getelementptr inbounds nuw i8, ptr %_0.i.i57, i64 16
  %len.i287 = load i64, ptr %26, align 8, !alias.scope !1710, !noalias !1713, !noundef !15
  %_4.i.i288 = icmp ult i64 %j, %len.i287
  br i1 %_4.i.i288, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb80f13494d4bb7cfE.exit293", label %panic.i.i317.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63e7d48f0a7a4c95E.exit65": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3831e1b6aa9d6656E.exit52"
  %_0.i.i70 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i49, i64 %iter3.sroa.0.0531
  %27 = getelementptr inbounds nuw i8, ptr %_0.i.i70, i64 16
  %len.i73 = load i64, ptr %27, align 8, !alias.scope !1715, !noalias !1718, !noundef !15
  %_4.i.i74 = icmp ult i64 %j, %len.i73
  br i1 %_4.i.i74, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb80f13494d4bb7cfE.exit", label %panic.i.i317.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb80f13494d4bb7cfE.exit": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63e7d48f0a7a4c95E.exit65"
  %28 = getelementptr inbounds nuw i8, ptr %_0.i.i50, i64 8
  %_6.i62 = load ptr, ptr %28, align 8, !alias.scope !1700, !noalias !1703, !nonnull !15, !noundef !15
  %_0.i.i63 = getelementptr inbounds nuw i32, ptr %_6.i62, i64 %j
  %_46 = load i32, ptr %_0.i.i63, align 4, !noundef !15
  %29 = getelementptr inbounds nuw i8, ptr %_0.i.i70, i64 8
  %_6.i76 = load ptr, ptr %29, align 8, !alias.scope !1715, !noalias !1718, !nonnull !15, !noundef !15
  %_0.i.i77 = getelementptr inbounds nuw i32, ptr %_6.i76, i64 %j
  %30 = add i32 %_46, 1
  store i32 %30, ptr %_0.i.i77, align 4
  call void @llvm.experimental.noalias.scope.decl(metadata !1720)
  %_8.i = load ptr, ptr %15, align 8, !alias.scope !1720, !noalias !1723, !nonnull !15, !noundef !15
  %len.i79 = load i64, ptr %0, align 8, !alias.scope !1720, !noalias !1723, !noundef !15
  %_11.i.i.i = icmp eq i64 %iter3.sroa.0.0531, 0
  br i1 %_11.i.i.i, label %bb15.i.i.i, label %bb9.i.i.i

bb9.i.i.i:                                        ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb80f13494d4bb7cfE.exit"
  %_12.not.i.i.i = icmp ult i64 %iter3.sroa.0.0531, %len.i79
  br i1 %_12.not.i.i.i, label %bb12.i.i.i, label %bb10.i.i.i

bb10.i.i.i:                                       ; preds = %bb9.i.i.i
  %31 = icmp eq i64 %iter3.sroa.0.0531, %len.i79
  br label %bb13.i.i.i

bb12.i.i.i:                                       ; preds = %bb9.i.i.i
  %32 = getelementptr inbounds nuw i8, ptr %_8.i, i64 %iter3.sroa.0.0531
  %self.i.i.i = load i8, ptr %32, align 1, !alias.scope !1725, !noalias !1730, !noundef !15
  %33 = icmp sgt i8 %self.i.i.i, -65
  br label %bb13.i.i.i

bb13.i.i.i:                                       ; preds = %bb12.i.i.i, %bb10.i.i.i
  %_6.sroa.0.0.in.i.i.i = phi i1 [ %31, %bb10.i.i.i ], [ %33, %bb12.i.i.i ]
  br i1 %_6.sroa.0.0.in.i.i.i, label %bb15.i.i.i, label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i"

bb15.i.i.i:                                       ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb80f13494d4bb7cfE.exit", %bb13.i.i.i
  %_19.not.i.i.i = icmp ult i64 %_50, %len.i79
  br i1 %_19.not.i.i.i, label %bb18.i.i.i, label %bb16.i.i.i

bb16.i.i.i:                                       ; preds = %bb15.i.i.i
  %34 = icmp eq i64 %_50, %len.i79
  br label %bb19.i.i.i

bb18.i.i.i:                                       ; preds = %bb15.i.i.i
  %35 = getelementptr inbounds nuw i8, ptr %_8.i, i64 %_50
  %self2.i.i.i = load i8, ptr %35, align 1, !alias.scope !1725, !noalias !1730, !noundef !15
  %36 = icmp sgt i8 %self2.i.i.i, -65
  br label %bb19.i.i.i

bb19.i.i.i:                                       ; preds = %bb18.i.i.i, %bb16.i.i.i
  %_7.sroa.0.0.in.i.i.i = phi i1 [ %34, %bb16.i.i.i ], [ %36, %bb18.i.i.i ]
  %data.i.i.i = getelementptr inbounds nuw i8, ptr %_8.i, i64 %iter3.sroa.0.0531
  %spec.select727 = select i1 %_7.sroa.0.0.in.i.i.i, ptr %data.i.i.i, ptr null
  br label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i"

"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i": ; preds = %bb19.i.i.i, %bb13.i.i.i
  %_0.sroa.0.0.i.i.i = phi ptr [ null, %bb13.i.i.i ], [ %spec.select727, %bb19.i.i.i ]
  %.not.i.i = icmp eq ptr %_0.sroa.0.0.i.i.i, null
  br i1 %.not.i.i, label %bb3.i.i209.invoke, label %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2b4f84b932675b17E.exit", !prof !1036

"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2b4f84b932675b17E.exit": ; preds = %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i"
  %_61 = add i64 %iter3.sroa.0.0531, 2
  %_3.not.i.i.i83.not = icmp ult i64 %iter3.sroa.0.0531, -2
  br i1 %_3.not.i.i.i83.not, label %bb9.i.i.i86, label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i91"

bb9.i.i.i86:                                      ; preds = %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2b4f84b932675b17E.exit"
  %_12.not.i.i.i87 = icmp ult i64 %_50, %len.i79
  br i1 %_12.not.i.i.i87, label %bb12.i.i.i106, label %bb10.i.i.i88

bb10.i.i.i88:                                     ; preds = %bb9.i.i.i86
  %37 = icmp eq i64 %_50, %len.i79
  br label %bb13.i.i.i89

bb12.i.i.i106:                                    ; preds = %bb9.i.i.i86
  %38 = getelementptr inbounds nuw i8, ptr %_8.i, i64 %_50
  %self.i.i.i107 = load i8, ptr %38, align 1, !alias.scope !1732, !noalias !1737, !noundef !15
  %39 = icmp sgt i8 %self.i.i.i107, -65
  br label %bb13.i.i.i89

bb13.i.i.i89:                                     ; preds = %bb12.i.i.i106, %bb10.i.i.i88
  %_6.sroa.0.0.in.i.i.i90 = phi i1 [ %37, %bb10.i.i.i88 ], [ %39, %bb12.i.i.i106 ]
  br i1 %_6.sroa.0.0.in.i.i.i90, label %bb2.i.i.i95, label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i91"

bb2.i.i.i95:                                      ; preds = %bb13.i.i.i89
  %_18.i.i.i96 = icmp eq i64 %_61, 0
  br i1 %_18.i.i.i96, label %bb22.i.i.i102, label %bb15.i.i.i97

bb15.i.i.i97:                                     ; preds = %bb2.i.i.i95
  %_19.not.i.i.i98 = icmp ult i64 %_61, %len.i79
  br i1 %_19.not.i.i.i98, label %bb18.i.i.i104, label %bb16.i.i.i99

bb16.i.i.i99:                                     ; preds = %bb15.i.i.i97
  %40 = icmp eq i64 %_61, %len.i79
  br label %bb19.i.i.i100

bb18.i.i.i104:                                    ; preds = %bb15.i.i.i97
  %41 = getelementptr inbounds nuw i8, ptr %_8.i, i64 %_61
  %self2.i.i.i105 = load i8, ptr %41, align 1, !alias.scope !1732, !noalias !1737, !noundef !15
  %42 = icmp sgt i8 %self2.i.i.i105, -65
  br label %bb19.i.i.i100

bb19.i.i.i100:                                    ; preds = %bb18.i.i.i104, %bb16.i.i.i99
  %_7.sroa.0.0.in.i.i.i101 = phi i1 [ %40, %bb16.i.i.i99 ], [ %42, %bb18.i.i.i104 ]
  br i1 %_7.sroa.0.0.in.i.i.i101, label %bb22.i.i.i102, label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i91"

bb22.i.i.i102:                                    ; preds = %bb19.i.i.i100, %bb2.i.i.i95
  %data.i.i.i103 = getelementptr inbounds nuw i8, ptr %_8.i, i64 %_50
  br label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i91"

"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i91": ; preds = %bb22.i.i.i102, %bb19.i.i.i100, %bb13.i.i.i89, %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2b4f84b932675b17E.exit"
  %_0.sroa.0.0.i.i.i92 = phi ptr [ %data.i.i.i103, %bb22.i.i.i102 ], [ null, %bb19.i.i.i100 ], [ null, %bb13.i.i.i89 ], [ null, %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2b4f84b932675b17E.exit" ]
  %.not.i.i93 = icmp eq ptr %_0.sroa.0.0.i.i.i92, null
  br i1 %.not.i.i93, label %bb3.i.i209.invoke, label %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2b4f84b932675b17E.exit109", !prof !1036

"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2b4f84b932675b17E.exit109": ; preds = %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i91"
  %lhsc = load i8, ptr %_0.sroa.0.0.i.i.i, align 1
  %rhsc = load i8, ptr %_0.sroa.0.0.i.i.i92, align 1
  %43 = icmp eq i8 %lhsc, %rhsc
  br i1 %43, label %bb41, label %bb49

bb49:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63e7d48f0a7a4c95E.exit137", %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2b4f84b932675b17E.exit109"
  %_11.i.i.i171 = icmp eq i64 %iter3.sroa.0.0531, 0
  %_0.i.not.i.i158933 = icmp ugt i64 %_61, %j
  br i1 %_0.i.not.i.i158933, label %bb70, label %bb54.lr.ph

bb54.lr.ph:                                       ; preds = %bb49
  %_0.i3.i.i160934 = icmp ult i64 %_61, %j
  %spec.select327937 = zext i1 %_0.i3.i.i160934 to i64
  %iter4.sroa.0.1938 = add nuw i64 %_61, %spec.select327937
  br label %bb54

bb41:                                             ; preds = %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2b4f84b932675b17E.exit109"
  %len.i110 = load i64, ptr %13, align 8, !alias.scope !1742, !noalias !1745, !noundef !15
  %_4.i.i111 = icmp ult i64 %iter3.sroa.0.0531, %len.i110
  br i1 %_4.i.i111, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3831e1b6aa9d6656E.exit116", label %panic.i.i317.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3831e1b6aa9d6656E.exit116": ; preds = %bb41
  %_6.i113 = load ptr, ptr %14, align 8, !alias.scope !1742, !noalias !1745, !nonnull !15, !noundef !15
  %_0.i.i114 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i113, i64 %iter3.sroa.0.0531
  %44 = getelementptr inbounds nuw i8, ptr %_0.i.i114, i64 16
  %len.i117 = load i64, ptr %44, align 8, !alias.scope !1747, !noalias !1750, !noundef !15
  %_4.i.i118 = icmp ult i64 %j, %len.i117
  br i1 %_4.i.i118, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63e7d48f0a7a4c95E.exit123", label %panic.i.i317.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63e7d48f0a7a4c95E.exit123": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3831e1b6aa9d6656E.exit116"
  %45 = getelementptr inbounds nuw i8, ptr %_0.i.i114, i64 8
  %_6.i120 = load ptr, ptr %45, align 8, !alias.scope !1747, !noalias !1750, !nonnull !15, !noundef !15
  %_0.i.i121 = getelementptr inbounds nuw i32, ptr %_6.i120, i64 %j
  %_63 = load i32, ptr %_0.i.i121, align 4, !noundef !15
  %_4.i.i125 = icmp ult i64 %_61, %len.i110
  br i1 %_4.i.i125, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3831e1b6aa9d6656E.exit130", label %panic.i.i317.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3831e1b6aa9d6656E.exit130": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63e7d48f0a7a4c95E.exit123"
  %_0.i.i128 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i113, i64 %_61
  %46 = getelementptr inbounds nuw i8, ptr %_0.i.i128, i64 16
  %len.i131 = load i64, ptr %46, align 8, !alias.scope !1752, !noalias !1755, !noundef !15
  %_4.i.i132 = icmp ult i64 %j, %len.i131
  br i1 %_4.i.i132, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63e7d48f0a7a4c95E.exit137", label %panic.i.i317.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63e7d48f0a7a4c95E.exit137": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3831e1b6aa9d6656E.exit130"
  %47 = getelementptr inbounds nuw i8, ptr %_0.i.i128, i64 8
  %_6.i134 = load ptr, ptr %47, align 8, !alias.scope !1752, !noalias !1755, !nonnull !15, !noundef !15
  %_0.i.i135 = getelementptr inbounds nuw i32, ptr %_6.i134, i64 %j
  %_68 = load i32, ptr %_0.i.i135, align 4, !noundef !15
  %_67 = add i32 %_68, 1
  %_0.sroa.0.0.i138 = call noundef i32 @llvm.smin.i32(i32 %_67, i32 %_63)
  store i32 %_0.sroa.0.0.i138, ptr %_0.i.i121, align 4
  br label %bb49

bb54:                                             ; preds = %bb54.lr.ph, %bb69
  %_0.sroa.3.0.i.i162942 = phi i64 [ %_61, %bb54.lr.ph ], [ %_0.sroa.3.0.i.i162, %bb69 ]
  %iter4.sroa.7.1941 = phi i8 [ %iter4.sroa.7.1939, %bb54.lr.ph ], [ %iter4.sroa.7.1, %bb69 ]
  %iter4.sroa.0.1940 = phi i64 [ %iter4.sroa.0.1938, %bb54.lr.ph ], [ %iter4.sroa.0.1, %bb69 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1757)
  %_8.i167 = load ptr, ptr %15, align 8, !alias.scope !1757, !noalias !1760, !nonnull !15, !noundef !15
  %len.i168 = load i64, ptr %0, align 8, !alias.scope !1757, !noalias !1760, !noundef !15
  br i1 %_11.i.i.i171, label %bb15.i.i.i183, label %bb9.i.i.i172

bb9.i.i.i172:                                     ; preds = %bb54
  %_12.not.i.i.i173 = icmp ult i64 %iter3.sroa.0.0531, %len.i168
  br i1 %_12.not.i.i.i173, label %bb12.i.i.i192, label %bb10.i.i.i174

bb10.i.i.i174:                                    ; preds = %bb9.i.i.i172
  %48 = icmp eq i64 %iter3.sroa.0.0531, %len.i168
  br label %bb13.i.i.i175

bb12.i.i.i192:                                    ; preds = %bb9.i.i.i172
  %49 = getelementptr inbounds nuw i8, ptr %_8.i167, i64 %iter3.sroa.0.0531
  %self.i.i.i193 = load i8, ptr %49, align 1, !alias.scope !1762, !noalias !1767, !noundef !15
  %50 = icmp sgt i8 %self.i.i.i193, -65
  br label %bb13.i.i.i175

bb13.i.i.i175:                                    ; preds = %bb12.i.i.i192, %bb10.i.i.i174
  %_6.sroa.0.0.in.i.i.i176 = phi i1 [ %48, %bb10.i.i.i174 ], [ %50, %bb12.i.i.i192 ]
  br i1 %_6.sroa.0.0.in.i.i.i176, label %bb15.i.i.i183, label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i177"

bb15.i.i.i183:                                    ; preds = %bb54, %bb13.i.i.i175
  %_19.not.i.i.i184 = icmp ult i64 %_50, %len.i168
  br i1 %_19.not.i.i.i184, label %bb18.i.i.i190, label %bb16.i.i.i185

bb16.i.i.i185:                                    ; preds = %bb15.i.i.i183
  %51 = icmp eq i64 %_50, %len.i168
  br label %bb19.i.i.i186

bb18.i.i.i190:                                    ; preds = %bb15.i.i.i183
  %52 = getelementptr inbounds nuw i8, ptr %_8.i167, i64 %_50
  %self2.i.i.i191 = load i8, ptr %52, align 1, !alias.scope !1762, !noalias !1767, !noundef !15
  %53 = icmp sgt i8 %self2.i.i.i191, -65
  br label %bb19.i.i.i186

bb19.i.i.i186:                                    ; preds = %bb18.i.i.i190, %bb16.i.i.i185
  %_7.sroa.0.0.in.i.i.i187 = phi i1 [ %51, %bb16.i.i.i185 ], [ %53, %bb18.i.i.i190 ]
  %data.i.i.i189 = getelementptr inbounds nuw i8, ptr %_8.i167, i64 %iter3.sroa.0.0531
  %spec.select728 = select i1 %_7.sroa.0.0.in.i.i.i187, ptr %data.i.i.i189, ptr null
  br label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i177"

"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i177": ; preds = %bb19.i.i.i186, %bb13.i.i.i175
  %_0.sroa.0.0.i.i.i178 = phi ptr [ null, %bb13.i.i.i175 ], [ %spec.select728, %bb19.i.i.i186 ]
  %.not.i.i179 = icmp eq ptr %_0.sroa.0.0.i.i.i178, null
  br i1 %.not.i.i179, label %bb3.i.i209.invoke, label %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2b4f84b932675b17E.exit195", !prof !1036

"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2b4f84b932675b17E.exit195": ; preds = %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i177"
  %_88 = add i64 %_0.sroa.3.0.i.i162942, 1
  switch i64 %_0.sroa.3.0.i.i162942, label %bb9.i.i.i201 [
    i64 -1, label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i206"
    i64 0, label %bb2.i.i.i210
  ]

bb70:                                             ; preds = %bb69, %bb49, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb80f13494d4bb7cfE.exit293"
  %_0.i.i.i = icmp ult i64 %spec.select532, %_33
  %_0.i1.i.i = zext i1 %_0.i.i.i to i64
  %spec.select = add nuw i64 %spec.select532, %_0.i1.i.i
  br i1 %_0.i.i.i, label %bb28, label %bb21.loopexit

bb9.i.i.i201:                                     ; preds = %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2b4f84b932675b17E.exit195"
  %_12.not.i.i.i202 = icmp ult i64 %_0.sroa.3.0.i.i162942, %len.i168
  br i1 %_12.not.i.i.i202, label %bb12.i.i.i221, label %bb10.i.i.i203

bb10.i.i.i203:                                    ; preds = %bb9.i.i.i201
  %54 = icmp eq i64 %_0.sroa.3.0.i.i162942, %len.i168
  br label %bb13.i.i.i204

bb12.i.i.i221:                                    ; preds = %bb9.i.i.i201
  %55 = getelementptr inbounds nuw i8, ptr %_8.i167, i64 %_0.sroa.3.0.i.i162942
  %self.i.i.i222 = load i8, ptr %55, align 1, !alias.scope !1769, !noalias !1774, !noundef !15
  %56 = icmp sgt i8 %self.i.i.i222, -65
  br label %bb13.i.i.i204

bb13.i.i.i204:                                    ; preds = %bb12.i.i.i221, %bb10.i.i.i203
  %_6.sroa.0.0.in.i.i.i205 = phi i1 [ %54, %bb10.i.i.i203 ], [ %56, %bb12.i.i.i221 ]
  br i1 %_6.sroa.0.0.in.i.i.i205, label %bb2.i.i.i210, label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i206"

bb2.i.i.i210:                                     ; preds = %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2b4f84b932675b17E.exit195", %bb13.i.i.i204
  %_18.i.i.i211 = icmp eq i64 %_88, 0
  br i1 %_18.i.i.i211, label %bb22.i.i.i217, label %bb15.i.i.i212

bb15.i.i.i212:                                    ; preds = %bb2.i.i.i210
  %_19.not.i.i.i213 = icmp ult i64 %_88, %len.i168
  br i1 %_19.not.i.i.i213, label %bb18.i.i.i219, label %bb16.i.i.i214

bb16.i.i.i214:                                    ; preds = %bb15.i.i.i212
  %57 = icmp eq i64 %_88, %len.i168
  br label %bb19.i.i.i215

bb18.i.i.i219:                                    ; preds = %bb15.i.i.i212
  %58 = getelementptr inbounds nuw i8, ptr %_8.i167, i64 %_88
  %self2.i.i.i220 = load i8, ptr %58, align 1, !alias.scope !1769, !noalias !1774, !noundef !15
  %59 = icmp sgt i8 %self2.i.i.i220, -65
  br label %bb19.i.i.i215

bb19.i.i.i215:                                    ; preds = %bb18.i.i.i219, %bb16.i.i.i214
  %_7.sroa.0.0.in.i.i.i216 = phi i1 [ %57, %bb16.i.i.i214 ], [ %59, %bb18.i.i.i219 ]
  br i1 %_7.sroa.0.0.in.i.i.i216, label %bb22.i.i.i217, label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i206"

bb22.i.i.i217:                                    ; preds = %bb19.i.i.i215, %bb2.i.i.i210
  %data.i.i.i218 = getelementptr inbounds nuw i8, ptr %_8.i167, i64 %_0.sroa.3.0.i.i162942
  br label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i206"

"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i206": ; preds = %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2b4f84b932675b17E.exit195", %bb22.i.i.i217, %bb19.i.i.i215, %bb13.i.i.i204
  %_0.sroa.0.0.i.i.i207 = phi ptr [ %data.i.i.i218, %bb22.i.i.i217 ], [ null, %bb19.i.i.i215 ], [ null, %bb13.i.i.i204 ], [ null, %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2b4f84b932675b17E.exit195" ]
  %.not.i.i208 = icmp eq ptr %_0.sroa.0.0.i.i.i207, null
  br i1 %.not.i.i208, label %bb3.i.i209.invoke, label %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2b4f84b932675b17E.exit224", !prof !1036

bb3.i.i209.invoke:                                ; preds = %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i91", %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i", %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i206", %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i177"
  %60 = phi ptr [ %_8.i167, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i177" ], [ %_8.i167, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i206" ], [ %_8.i, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i" ], [ %_8.i, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i91" ]
  %61 = phi i64 [ %len.i168, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i177" ], [ %len.i168, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i206" ], [ %len.i79, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i" ], [ %len.i79, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i91" ]
  %62 = phi i64 [ %_0.sroa.3.0.i.i162942, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i206" ], [ %iter3.sroa.0.0531, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i177" ], [ %_50, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i91" ], [ %iter3.sroa.0.0531, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i" ]
  %63 = phi i64 [ %_88, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i206" ], [ %_50, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i177" ], [ %_61, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i91" ], [ %_50, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i" ]
  %64 = phi ptr [ @alloc_50691c52435e0b533a833de3d71578c4, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i206" ], [ @alloc_3599240ad9c036f367dc937afdeb7674, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i177" ], [ @alloc_7452c3969efa35b6a92ce4a05dfe6c48, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i91" ], [ @alloc_c434b6e725389ed18298be7de95276e7, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i" ]
; invoke core::str::slice_error_fail
  invoke void @_ZN4core3str16slice_error_fail17h4678567854dd8858E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %60, i64 noundef %61, i64 noundef %62, i64 noundef %63, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %64) #27
          to label %bb3.i.i209.cont unwind label %cleanup5

bb3.i.i209.cont:                                  ; preds = %bb3.i.i209.invoke
  unreachable

"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2b4f84b932675b17E.exit224": ; preds = %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i206"
  %lhsc331 = load i8, ptr %_0.sroa.0.0.i.i.i178, align 1
  %rhsc332 = load i8, ptr %_0.sroa.0.0.i.i.i207, align 1
  %65 = icmp eq i8 %lhsc331, %rhsc332
  br i1 %65, label %bb59, label %bb69

bb69:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63e7d48f0a7a4c95E.exit271", %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2b4f84b932675b17E.exit224"
  %_10.i.i153 = trunc nuw i8 %iter4.sroa.7.1941 to i1
  %_0.i.not.i.i158 = icmp ugt i64 %iter4.sroa.0.1940, %j
  %or.cond334 = select i1 %_10.i.i153, i1 true, i1 %_0.i.not.i.i158
  %_0.i3.i.i160 = icmp ult i64 %iter4.sroa.0.1940, %j
  %not.or.cond334 = xor i1 %or.cond334, true
  %narrow731 = select i1 %not.or.cond334, i1 %_0.i3.i.i160, i1 false
  %spec.select327 = zext i1 %narrow731 to i64
  %iter4.sroa.0.1 = add nuw i64 %iter4.sroa.0.1940, %spec.select327
  %66 = select i1 %or.cond334, i1 true, i1 %_0.i3.i.i160
  %iter4.sroa.7.1 = select i1 %66, i8 %iter4.sroa.7.1941, i8 1
  %_0.sroa.3.0.i.i162 = select i1 %_10.i.i153, i64 undef, i64 %iter4.sroa.0.1940
  br i1 %or.cond334, label %bb70, label %bb54

bb59:                                             ; preds = %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2b4f84b932675b17E.exit224"
  %len.i230 = load i64, ptr %13, align 8, !alias.scope !1779, !noalias !1782, !noundef !15
  %_4.i.i231 = icmp ult i64 %iter3.sroa.0.0531, %len.i230
  br i1 %_4.i.i231, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3831e1b6aa9d6656E.exit236", label %panic.i.i317.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3831e1b6aa9d6656E.exit236": ; preds = %bb59
  %_6.i233 = load ptr, ptr %14, align 8, !alias.scope !1779, !noalias !1782, !nonnull !15, !noundef !15
  %_0.i.i234 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i233, i64 %iter3.sroa.0.0531
  %67 = getelementptr inbounds nuw i8, ptr %_0.i.i234, i64 16
  %len.i237 = load i64, ptr %67, align 8, !alias.scope !1784, !noalias !1787, !noundef !15
  %_4.i.i238 = icmp ult i64 %j, %len.i237
  br i1 %_4.i.i238, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63e7d48f0a7a4c95E.exit243", label %panic.i.i317.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63e7d48f0a7a4c95E.exit243": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3831e1b6aa9d6656E.exit236"
  %68 = getelementptr inbounds nuw i8, ptr %_0.i.i234, i64 8
  %_6.i240 = load ptr, ptr %68, align 8, !alias.scope !1784, !noalias !1787, !nonnull !15, !noundef !15
  %_0.i.i241 = getelementptr inbounds nuw i32, ptr %_6.i240, i64 %j
  %_90 = load i32, ptr %_0.i.i241, align 4, !noundef !15
  %_4.i.i245 = icmp ult i64 %_50, %len.i230
  br i1 %_4.i.i245, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3831e1b6aa9d6656E.exit250", label %panic.i.i317.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3831e1b6aa9d6656E.exit250": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63e7d48f0a7a4c95E.exit243"
  %_0.i.i248 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i233, i64 %_50
  %_99 = add i64 %_0.sroa.3.0.i.i162942, -1
  %69 = getelementptr inbounds nuw i8, ptr %_0.i.i248, i64 16
  %len.i251 = load i64, ptr %69, align 8, !alias.scope !1789, !noalias !1792, !noundef !15
  %_4.i.i252 = icmp ult i64 %_99, %len.i251
  br i1 %_4.i.i252, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63e7d48f0a7a4c95E.exit257", label %panic.i.i317.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63e7d48f0a7a4c95E.exit257": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3831e1b6aa9d6656E.exit250"
  %70 = getelementptr inbounds nuw i8, ptr %_0.i.i248, i64 8
  %_6.i254 = load ptr, ptr %70, align 8, !alias.scope !1789, !noalias !1792, !nonnull !15, !noundef !15
  %_0.i.i255 = getelementptr inbounds nuw i32, ptr %_6.i254, i64 %_99
  %_95 = load i32, ptr %_0.i.i255, align 4, !noundef !15
  %_4.i.i259 = icmp ult i64 %_88, %len.i230
  br i1 %_4.i.i259, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3831e1b6aa9d6656E.exit264", label %panic.i.i317.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3831e1b6aa9d6656E.exit264": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63e7d48f0a7a4c95E.exit257"
  %_0.i.i262 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i233, i64 %_88
  %71 = getelementptr inbounds nuw i8, ptr %_0.i.i262, i64 16
  %len.i265 = load i64, ptr %71, align 8, !alias.scope !1794, !noalias !1797, !noundef !15
  %_4.i.i266 = icmp ult i64 %j, %len.i265
  br i1 %_4.i.i266, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63e7d48f0a7a4c95E.exit271", label %panic.i.i317.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63e7d48f0a7a4c95E.exit271": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3831e1b6aa9d6656E.exit264"
  %72 = getelementptr inbounds nuw i8, ptr %_0.i.i262, i64 8
  %_6.i268 = load ptr, ptr %72, align 8, !alias.scope !1794, !noalias !1797, !nonnull !15, !noundef !15
  %_0.i.i269 = getelementptr inbounds nuw i32, ptr %_6.i268, i64 %j
  %_100 = load i32, ptr %_0.i.i269, align 4, !noundef !15
  %_94 = add i32 %_100, %_95
  %_0.sroa.0.0.i272 = call noundef i32 @llvm.smin.i32(i32 %_94, i32 %_90)
  store i32 %_0.sroa.0.0.i272, ptr %_0.i.i241, align 4
  br label %bb69

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb80f13494d4bb7cfE.exit293": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h2f352061c7466959E.exit"
  %73 = getelementptr inbounds nuw i8, ptr %_0.i.i57, i64 8
  %_6.i290 = load ptr, ptr %73, align 8, !alias.scope !1710, !noalias !1713, !nonnull !15, !noundef !15
  %_0.i.i291 = getelementptr inbounds nuw i32, ptr %_6.i290, i64 %j
  store i32 1, ptr %_0.i.i291, align 4
  br label %bb70

bb15:                                             ; preds = %bb13.preheader, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb80f13494d4bb7cfE.exit321"
  %_0.sroa.3.0.i.i303926 = phi i64 [ 0, %bb13.preheader ], [ %_0.sroa.3.0.i.i303, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb80f13494d4bb7cfE.exit321" ]
  %iter1.sroa.7.1925 = phi i8 [ %iter1.sroa.7.1923, %bb13.preheader ], [ %iter1.sroa.7.1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb80f13494d4bb7cfE.exit321" ]
  %iter1.sroa.0.1924 = phi i64 [ %spec.select329922, %bb13.preheader ], [ %iter1.sroa.0.1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb80f13494d4bb7cfE.exit321" ]
  %len.i308 = load i64, ptr %9, align 8, !alias.scope !1799, !noalias !1802, !noundef !15
  %_4.i.i309 = icmp ult i64 %_0.sroa.3.0.i.i932, %len.i308
  br i1 %_4.i.i309, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h2f352061c7466959E.exit314", label %panic.i.i317.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h2f352061c7466959E.exit314": ; preds = %bb15
  %_6.i311 = load ptr, ptr %10, align 8, !alias.scope !1799, !noalias !1802, !nonnull !15, !noundef !15
  %_0.i.i312 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i311, i64 %_0.sroa.3.0.i.i932
  %74 = getelementptr inbounds nuw i8, ptr %_0.i.i312, i64 16
  %len.i315 = load i64, ptr %74, align 8, !alias.scope !1804, !noalias !1807, !noundef !15
  %_4.i.i316 = icmp ult i64 %_0.sroa.3.0.i.i303926, %len.i315
  br i1 %_4.i.i316, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb80f13494d4bb7cfE.exit321", label %panic.i.i317.invoke

panic.i.i317.invoke:                              ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h2f352061c7466959E.exit314", %bb15, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h2f352061c7466959E.exit", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3831e1b6aa9d6656E.exit130", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63e7d48f0a7a4c95E.exit123", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3831e1b6aa9d6656E.exit116", %bb41, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63e7d48f0a7a4c95E.exit65", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3831e1b6aa9d6656E.exit52", %bb30, %bb33, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3831e1b6aa9d6656E.exit264", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63e7d48f0a7a4c95E.exit257", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3831e1b6aa9d6656E.exit250", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63e7d48f0a7a4c95E.exit243", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3831e1b6aa9d6656E.exit236", %bb59, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3831e1b6aa9d6656E.exit", %bb24
  %75 = phi i64 [ 0, %bb24 ], [ %_110, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3831e1b6aa9d6656E.exit" ], [ %j, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3831e1b6aa9d6656E.exit264" ], [ %_88, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63e7d48f0a7a4c95E.exit257" ], [ %_99, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3831e1b6aa9d6656E.exit250" ], [ %_50, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63e7d48f0a7a4c95E.exit243" ], [ %j, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3831e1b6aa9d6656E.exit236" ], [ %iter3.sroa.0.0531, %bb59 ], [ %j, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h2f352061c7466959E.exit" ], [ %j, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3831e1b6aa9d6656E.exit130" ], [ %_61, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63e7d48f0a7a4c95E.exit123" ], [ %j, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3831e1b6aa9d6656E.exit116" ], [ %iter3.sroa.0.0531, %bb41 ], [ %j, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63e7d48f0a7a4c95E.exit65" ], [ %j, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3831e1b6aa9d6656E.exit52" ], [ %iter3.sroa.0.0531, %bb30 ], [ %_50, %bb33 ], [ %_0.sroa.3.0.i.i303926, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h2f352061c7466959E.exit314" ], [ %_0.sroa.3.0.i.i932, %bb15 ]
  %76 = phi i64 [ %len.i, %bb24 ], [ %len.i31, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3831e1b6aa9d6656E.exit" ], [ %len.i265, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3831e1b6aa9d6656E.exit264" ], [ %len.i230, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63e7d48f0a7a4c95E.exit257" ], [ %len.i251, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3831e1b6aa9d6656E.exit250" ], [ %len.i230, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63e7d48f0a7a4c95E.exit243" ], [ %len.i237, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3831e1b6aa9d6656E.exit236" ], [ %len.i230, %bb59 ], [ %len.i287, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h2f352061c7466959E.exit" ], [ %len.i131, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3831e1b6aa9d6656E.exit130" ], [ %len.i110, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63e7d48f0a7a4c95E.exit123" ], [ %len.i117, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3831e1b6aa9d6656E.exit116" ], [ %len.i110, %bb41 ], [ %len.i73, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63e7d48f0a7a4c95E.exit65" ], [ %len.i59, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3831e1b6aa9d6656E.exit52" ], [ %len.i53, %bb30 ], [ %len.i46, %bb33 ], [ %len.i315, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h2f352061c7466959E.exit314" ], [ %len.i308, %bb15 ]
  %77 = phi ptr [ @alloc_c42efeef25c9c048574e05b2f481b33c, %bb24 ], [ @alloc_32a5fb7023fa92c01fb8d23496c811ab, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3831e1b6aa9d6656E.exit" ], [ @alloc_c12674f93d03fe9e475f754037315898, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3831e1b6aa9d6656E.exit264" ], [ @alloc_b0f954d1de8063202abc582b5edd1028, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63e7d48f0a7a4c95E.exit257" ], [ @alloc_c4ad05f4868203e0276bebdff804fdf4, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3831e1b6aa9d6656E.exit250" ], [ @alloc_d63919847eb4a6b6f338f18d641dc4b8, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63e7d48f0a7a4c95E.exit243" ], [ @alloc_3258b43c0e586cfebadad5d9b06e199a, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3831e1b6aa9d6656E.exit236" ], [ @alloc_c864910b491b4ea488837a719d350f78, %bb59 ], [ @alloc_4d02adb086ec39aa4ee6e663aff7048f, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h2f352061c7466959E.exit" ], [ @alloc_35a4674d698ca1bc0478e9bb79486e5f, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3831e1b6aa9d6656E.exit130" ], [ @alloc_76257ca614eadef188fc734e6e36deaa, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63e7d48f0a7a4c95E.exit123" ], [ @alloc_6b3b532efca5c791106087d22090968f, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3831e1b6aa9d6656E.exit116" ], [ @alloc_f508b9360c97eb3018bd79e31441f428, %bb41 ], [ @alloc_fa5f7e8fcfe0330da9ccf800ea86b0ec, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63e7d48f0a7a4c95E.exit65" ], [ @alloc_5080bf987922e717732635722f07d0cf, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3831e1b6aa9d6656E.exit52" ], [ @alloc_8dde8fd9f67bcf5ba06860b6719d8496, %bb30 ], [ @alloc_ea04b4282f3ecb11f76847f2523d02ae, %bb33 ], [ @alloc_a0fdff677409a98b5d52790e5dd650ea, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h2f352061c7466959E.exit314" ], [ @alloc_83614b7a27c86558b2aee679e2acbdb3, %bb15 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %75, i64 noundef range(i64 0, 2305843009213693952) %76, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %77) #27
          to label %panic.i.i317.cont unwind label %cleanup5

panic.i.i317.cont:                                ; preds = %panic.i.i317.invoke
  unreachable

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb80f13494d4bb7cfE.exit321": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h2f352061c7466959E.exit314"
  %78 = getelementptr inbounds nuw i8, ptr %_0.i.i312, i64 8
  %_6.i318 = load ptr, ptr %78, align 8, !alias.scope !1804, !noalias !1807, !nonnull !15, !noundef !15
  %_0.i.i319 = getelementptr inbounds nuw i32, ptr %_6.i318, i64 %_0.sroa.3.0.i.i303926
  store i32 0, ptr %_0.i.i319, align 4
  %_10.i.i294 = trunc nuw i8 %iter1.sroa.7.1925 to i1
  %_0.i.not.i.i299 = icmp ugt i64 %iter1.sroa.0.1924, %_0.i
  %or.cond335 = select i1 %_10.i.i294, i1 true, i1 %_0.i.not.i.i299
  %_0.i3.i.i301 = icmp ult i64 %iter1.sroa.0.1924, %_0.i
  %not.or.cond335 = xor i1 %or.cond335, true
  %narrow729 = select i1 %not.or.cond335, i1 %_0.i3.i.i301, i1 false
  %spec.select329 = zext i1 %narrow729 to i64
  %iter1.sroa.0.1 = add nuw i64 %iter1.sroa.0.1924, %spec.select329
  %79 = select i1 %or.cond335, i1 true, i1 %_0.i3.i.i301
  %iter1.sroa.7.1 = select i1 %79, i8 %iter1.sroa.7.1925, i8 1
  %_0.sroa.3.0.i.i303 = select i1 %_10.i.i294, i64 undef, i64 %iter1.sroa.0.1924
  br i1 %or.cond335, label %bb6.loopexit, label %bb15

terminate:                                        ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h04f6e21f104de313E.exit.i", %cleanup5
  %80 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
  br label %terminate.body

terminate.body:                                   ; preds = %cleanup.i.i, %terminate
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #26
  unreachable
}
