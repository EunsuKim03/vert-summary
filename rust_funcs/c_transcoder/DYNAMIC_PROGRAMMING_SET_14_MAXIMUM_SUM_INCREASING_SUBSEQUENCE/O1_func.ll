define noundef range(i32 0, -2147483648) i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_16.i.i = alloca [24 x i8], align 8
  %msis = alloca [24 x i8], align 8
  %arr = alloca [8 x i8], align 8
  store i64 %0, ptr %arr, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msis)
  %_4 = sext i32 %n to i64
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
  br i1 %1, label %bb14.i.i, label %_ZN5alloc3vec9from_elem17hc9a0266d8fcc92d0E.exit, !prof !1033

bb14.i.i:                                         ; preds = %start
  %err.1.i.i = load i64, ptr %3, align 8, !noalias !1644
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #26, !noalias !1644
  unreachable

_ZN5alloc3vec9from_elem17hc9a0266d8fcc92d0E.exit: ; preds = %start
  %res.1.i.i = load ptr, ptr %3, align 8, !noalias !1644, !nonnull !37, !noundef !37
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1644
  store i64 %err.0.i.i, ptr %msis, align 8, !alias.scope !1644
  %4 = getelementptr inbounds nuw i8, ptr %msis, i64 8
  store ptr %res.1.i.i, ptr %4, align 8, !alias.scope !1644
  %5 = getelementptr inbounds nuw i8, ptr %msis, i64 16
  store i64 %_4, ptr %5, align 8, !alias.scope !1644
  %_0.i.i.i95 = icmp sgt i32 %n, 0
  br i1 %_0.i.i.i95, label %bb8, label %bb11.preheader

cleanup:                                          ; preds = %panic9.invoke, %panic.i.i74.invoke
  %6 = landingpad { ptr, i32 }
          cleanup
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %msis, i64 noundef 4, i64 noundef 4)
          to label %bb45 unwind label %terminate

bb11.preheader:                                   ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h2194ef7d96e00324E.exit78", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h2194ef7d96e00324E.exit78.1", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h2194ef7d96e00324E.exit78.2", %_ZN5alloc3vec9from_elem17hc9a0266d8fcc92d0E.exit
  %_0.i.i.i19100 = icmp sgt i32 %n, 1
  br i1 %_0.i.i.i19100, label %bb16.preheader.split, label %bb34.preheader

bb16.preheader.split:                             ; preds = %bb11.preheader
  %7 = getelementptr inbounds nuw i8, ptr %arr, i64 4
  %_32 = load i32, ptr %7, align 4, !noundef !37
  %_35 = load i32, ptr %arr, align 8, !noundef !37
  %_31 = icmp sgt i32 %_32, %_35
  br i1 %_31, label %bb22, label %bb32

bb34.preheader:                                   ; preds = %bb32, %bb11.preheader
  %_0.i.i.i26104 = icmp sgt i32 %n, 0
  br i1 %_0.i.i.i26104, label %bb36.lr.ph, label %bb37

bb36.lr.ph:                                       ; preds = %bb34.preheader
  %len.i = load i64, ptr %5, align 8, !alias.scope !1645, !noalias !1648, !noundef !37
  %_6.i = load ptr, ptr %4, align 8, !nonnull !37
  %8 = zext nneg i32 %n to i64
  %9 = add nsw i32 %n, -1
  %10 = zext i32 %9 to i64
  %umin = tail call i64 @llvm.umin.i64(i64 %len.i, i64 %10)
  %.not.not = icmp ugt i64 %len.i, %10
  br label %bb36

bb36:                                             ; preds = %bb36.lr.ph, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2924f4c9e43558a1E.exit"
  %indvars.iv125 = phi i64 [ 0, %bb36.lr.ph ], [ %indvars.iv.next126, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2924f4c9e43558a1E.exit" ]
  %max.sroa.0.0106 = phi i32 [ 0, %bb36.lr.ph ], [ %spec.select86, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2924f4c9e43558a1E.exit" ]
  br i1 %.not.not, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2924f4c9e43558a1E.exit", label %panic.i.i74.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2924f4c9e43558a1E.exit": ; preds = %bb36
  %_0.i.i = getelementptr inbounds nuw i32, ptr %_6.i, i64 %indvars.iv125
  %_59 = load i32, ptr %_0.i.i, align 4, !noundef !37
  %spec.select86 = tail call i32 @llvm.smax.i32(i32 %max.sroa.0.0106, i32 %_59)
  %indvars.iv.next126 = add nuw nsw i64 %indvars.iv125, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next126, %8
  br i1 %exitcond.not, label %bb37, label %bb36

bb37:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2924f4c9e43558a1E.exit", %bb34.preheader
  %max.sroa.0.0.lcssa = phi i32 [ 0, %bb34.preheader ], [ %spec.select86, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2924f4c9e43558a1E.exit" ]
; call alloc::raw_vec::RawVecInner<A>::deallocate
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %msis, i64 noundef 4, i64 noundef 4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msis)
  ret i32 %max.sroa.0.0.lcssa

bb22:                                             ; preds = %bb16.preheader.split
  %len.i45 = load i64, ptr %5, align 8, !alias.scope !1650, !noalias !1653, !noundef !37
  %_4.i.i46 = icmp ugt i64 %len.i45, 1
  br i1 %_4.i.i46, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2924f4c9e43558a1E.exit51", label %panic.i.i74.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2924f4c9e43558a1E.exit51": ; preds = %bb22
  %_6.i48 = load ptr, ptr %4, align 8, !alias.scope !1650, !noalias !1653, !nonnull !37, !noundef !37
  %_0.i.i49 = getelementptr inbounds nuw i8, ptr %_6.i48, i64 4
  %_39 = load i32, ptr %_0.i.i49, align 4, !noundef !37
  %_43 = load i32, ptr %_6.i48, align 4, !noundef !37
  %_42 = add i32 %_43, %_32
  %_38 = icmp slt i32 %_39, %_42
  br i1 %_38, label %bb26, label %bb32

bb32:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2924f4c9e43558a1E.exit51", %bb16.preheader.split, %bb26
  %_0.i.i.i19.not = icmp eq i32 %n, 2
  br i1 %_0.i.i.i19.not, label %bb34.preheader, label %panic9.invoke

bb26:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2924f4c9e43558a1E.exit51"
  store i32 %_42, ptr %_0.i.i49, align 4
  br label %bb32

bb8:                                              ; preds = %_ZN5alloc3vec9from_elem17hc9a0266d8fcc92d0E.exit
  %len.i72 = load i64, ptr %5, align 8, !alias.scope !1655, !noalias !1658, !noundef !37
  %_4.i.i73.not = icmp eq i64 %len.i72, 0
  br i1 %_4.i.i73.not, label %panic.i.i74.invoke, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h2194ef7d96e00324E.exit78"

panic.i.i74.invoke:                               ; preds = %bb8, %bb8.1, %bb8.2, %bb22, %bb36
  %11 = phi i64 [ %umin, %bb36 ], [ 1, %bb22 ], [ 0, %bb8 ], [ 1, %bb8.1 ], [ %_13.2, %bb8.2 ]
  %12 = phi i64 [ %len.i, %bb36 ], [ %len.i45, %bb22 ], [ %len.i72, %bb8 ], [ %len.i72.1, %bb8.1 ], [ %len.i72.2, %bb8.2 ]
  %13 = phi ptr [ @alloc_9b93bd6e1b2c91d9c0f49abff45d3d58, %bb36 ], [ @alloc_52e550abfd9f34819c43b68c806c7098, %bb22 ], [ @alloc_d0990c81187724fa97c5413f7ef35b98, %bb8.2 ], [ @alloc_d0990c81187724fa97c5413f7ef35b98, %bb8.1 ], [ @alloc_d0990c81187724fa97c5413f7ef35b98, %bb8 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef range(i64 -2147483648, 2147483648) %11, i64 noundef range(i64 0, 2305843009213693952) %12, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %13) #25
          to label %panic.i.i74.cont unwind label %cleanup

panic.i.i74.cont:                                 ; preds = %panic.i.i74.invoke
  unreachable

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h2194ef7d96e00324E.exit78": ; preds = %bb8
  %_12 = load i32, ptr %arr, align 8, !noundef !37
  %_6.i75 = load ptr, ptr %4, align 8, !alias.scope !1655, !noalias !1658, !nonnull !37, !noundef !37
  store i32 %_12, ptr %_6.i75, align 4
  %_0.i.i.i.not = icmp eq i32 %n, 1
  %spec.select = select i1 %_0.i.i.i.not, i32 1, i32 2
  br i1 %_0.i.i.i.not, label %bb11.preheader, label %bb8.1

bb8.1:                                            ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h2194ef7d96e00324E.exit78"
  %len.i72.1 = load i64, ptr %5, align 8, !alias.scope !1655, !noalias !1658, !noundef !37
  %_4.i.i73.1 = icmp samesign ugt i64 %len.i72.1, 1
  br i1 %_4.i.i73.1, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h2194ef7d96e00324E.exit78.1", label %panic.i.i74.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h2194ef7d96e00324E.exit78.1": ; preds = %bb8.1
  %14 = getelementptr inbounds nuw i8, ptr %arr, i64 4
  %_12.1 = load i32, ptr %14, align 4, !noundef !37
  %_6.i75.1 = load ptr, ptr %4, align 8, !alias.scope !1655, !noalias !1658, !nonnull !37, !noundef !37
  %_0.i.i76.1 = getelementptr inbounds nuw i8, ptr %_6.i75.1, i64 4
  store i32 %_12.1, ptr %_0.i.i76.1, align 4
  %_0.i.i.i.1 = icmp slt i32 %spec.select, %n
  br i1 %_0.i.i.i.1, label %bb6.2, label %bb11.preheader

bb6.2:                                            ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h2194ef7d96e00324E.exit78.1"
  %_13.2 = zext nneg i32 %spec.select to i64
  br i1 %_0.i.i.i.not, label %bb8.2, label %panic9.invoke

bb8.2:                                            ; preds = %bb6.2
  %len.i72.2 = load i64, ptr %5, align 8, !alias.scope !1655, !noalias !1658, !noundef !37
  %_4.i.i73.2 = icmp samesign ugt i64 %len.i72.2, %_13.2
  br i1 %_4.i.i73.2, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h2194ef7d96e00324E.exit78.2", label %panic.i.i74.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h2194ef7d96e00324E.exit78.2": ; preds = %bb8.2
  %15 = getelementptr inbounds nuw i32, ptr %arr, i64 %_13.2
  %_12.2 = load i32, ptr %15, align 4, !noundef !37
  %_6.i75.2 = load ptr, ptr %4, align 8, !alias.scope !1655, !noalias !1658, !nonnull !37, !noundef !37
  %_0.i.i76.2 = getelementptr inbounds nuw i32, ptr %_6.i75.2, i64 %_13.2
  store i32 %_12.2, ptr %_0.i.i76.2, align 4
  br label %bb11.preheader

panic9.invoke:                                    ; preds = %bb6.2, %bb32
  %16 = phi i64 [ 2, %bb32 ], [ %_13.2, %bb6.2 ]
  %17 = phi ptr [ @alloc_06ce7c7b69e4bdf0f2d6a4749698371a, %bb32 ], [ @alloc_c4e96a951a7f27f6117b69a5f22491b7, %bb6.2 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %16, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %17) #26
          to label %panic9.cont unwind label %cleanup

panic9.cont:                                      ; preds = %panic9.invoke
  unreachable

terminate:                                        ; preds = %cleanup
  %18 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #27
  unreachable

bb45:                                             ; preds = %cleanup
  resume { ptr, i32 } %6
}
