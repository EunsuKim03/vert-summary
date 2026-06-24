define noundef i32 @f_gold(i32 noundef %k, i64 %0, i64 %1, i32 noundef %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %compare.i = alloca [0 x i8], align 1
  %is_less.i.i = alloca [8 x i8], align 8
  %_16.i.i = alloca [24 x i8], align 8
  %dis = alloca [24 x i8], align 8
  %y = alloca [8 x i8], align 8
  %x = alloca [8 x i8], align 8
  store i64 %0, ptr %x, align 8
  store i64 %1, ptr %y, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %dis)
  %_6 = sext i32 %n to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2928)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2931)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_16.i.i), !noalias !2934
; call alloc::raw_vec::RawVecInner<A>::try_allocate_in
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_16.i.i, i64 noundef %_6, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4), !noalias !2934
  %_17.i.i = load i64, ptr %_16.i.i, align 8, !range !1836, !noalias !2934, !noundef !32
  %2 = trunc nuw i64 %_17.i.i to i1
  %3 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 8
  %err.0.i.i = load i64, ptr %3, align 8, !range !1837, !noalias !2934, !noundef !32
  %4 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 16
  br i1 %2, label %bb14.i.i, label %_ZN5alloc3vec9from_elem17h0d2ed8af427b27d0E.exit, !prof !1838

bb14.i.i:                                         ; preds = %start
  %err.1.i.i = load i64, ptr %4, align 8, !noalias !2934
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #26, !noalias !2934
  unreachable

_ZN5alloc3vec9from_elem17h0d2ed8af427b27d0E.exit: ; preds = %start
  %res.1.i.i = load ptr, ptr %4, align 8, !noalias !2934, !nonnull !32, !noundef !32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_16.i.i), !noalias !2934
  store i64 %err.0.i.i, ptr %dis, align 8, !alias.scope !2934
  %5 = getelementptr inbounds nuw i8, ptr %dis, i64 8
  store ptr %res.1.i.i, ptr %5, align 8, !alias.scope !2934
  %6 = getelementptr inbounds nuw i8, ptr %dis, i64 16
  store i64 %_6, ptr %6, align 8, !alias.scope !2934
  %_0.i.i.i18 = icmp sgt i32 %n, 0
  br i1 %_0.i.i.i18, label %bb8, label %bb7

cleanup:                                          ; preds = %panic.i.i12.invoke, %bb10.i.i, %panic
  %7 = landingpad { ptr, i32 }
          cleanup
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %dis, i64 noundef 4, i64 noundef 4)
          to label %bb18 unwind label %terminate

bb7:                                              ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h230cc588a28cb3c2E.exit", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h230cc588a28cb3c2E.exit.1", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h230cc588a28cb3c2E.exit.2", %_ZN5alloc3vec9from_elem17h0d2ed8af427b27d0E.exit
  %_4.i.i7 = load ptr, ptr %5, align 8, !alias.scope !2935, !nonnull !32, !noundef !32
  %len.i.i = load i64, ptr %6, align 8, !alias.scope !2935, !noundef !32
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %compare.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !2940
  store ptr %compare.i, ptr %is_less.i.i, align 8, !noalias !2943
  %b.i.i = icmp samesign ult i64 %len.i.i, 2
  br i1 %b.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hf996926d96bc3749E.exit", label %bb7.i.i, !prof !2947

bb7.i.i:                                          ; preds = %bb7
  %b1.i.i = icmp samesign ult i64 %len.i.i, 21
  br i1 %b1.i.i, label %bb9.i.i, label %bb10.i.i, !prof !2947

bb10.i.i:                                         ; preds = %bb7.i.i
; invoke core::slice::sort::stable::driftsort_main
  invoke void @_ZN4core5slice4sort6stable14driftsort_main17hf053d0758c8796e3E(ptr noalias noundef nonnull align 4 %_4.i.i7, i64 noundef range(i64 0, 2305843009213693952) %len.i.i, ptr noalias noundef align 8 dereferenceable(8) %is_less.i.i)
          to label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hf996926d96bc3749E.exit" unwind label %cleanup

bb9.i.i:                                          ; preds = %bb7.i.i
; call core::slice::sort::shared::smallsort::insertion_sort_shift_left
  call void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h12a35e0e040e629dE(ptr noalias noundef nonnull align 4 %_4.i.i7, i64 noundef range(i64 0, 2305843009213693952) %len.i.i, i64 noundef 1, ptr noalias align 8 poison)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hf996926d96bc3749E.exit"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hf996926d96bc3749E.exit": ; preds = %bb10.i.i, %bb7, %bb9.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !2940
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %compare.i)
  %_28 = add i32 %k, -1
  %_27 = sext i32 %_28 to i64
  %len.i = load i64, ptr %6, align 8, !alias.scope !2948, !noundef !32
  %_4.i.i8 = icmp ugt i64 %len.i, %_27
  br i1 %_4.i.i8, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc0bc76f46118a053E.exit", label %panic.i.i12.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc0bc76f46118a053E.exit": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hf996926d96bc3749E.exit"
  %_6.i = load ptr, ptr %5, align 8, !alias.scope !2948, !nonnull !32, !noundef !32
  %_0.i.i = getelementptr inbounds nuw i32, ptr %_6.i, i64 %_27
  %_0 = load i32, ptr %_0.i.i, align 4, !noundef !32
; call alloc::raw_vec::RawVecInner<A>::deallocate
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %dis, i64 noundef 4, i64 noundef 4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %dis)
  ret i32 %_0

bb8:                                              ; preds = %_ZN5alloc3vec9from_elem17h0d2ed8af427b27d0E.exit
  %len.i10 = load i64, ptr %6, align 8, !alias.scope !2951, !noundef !32
  %_4.i.i11.not = icmp eq i64 %len.i10, 0
  br i1 %_4.i.i11.not, label %panic.i.i12.invoke, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h230cc588a28cb3c2E.exit"

panic.i.i12.invoke:                               ; preds = %bb8, %bb8.1, %bb8.2, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hf996926d96bc3749E.exit"
  %8 = phi i64 [ %_27, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hf996926d96bc3749E.exit" ], [ 0, %bb8 ], [ 1, %bb8.1 ], [ %_16.2, %bb8.2 ]
  %9 = phi i64 [ %len.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hf996926d96bc3749E.exit" ], [ %len.i10, %bb8 ], [ %len.i10.1, %bb8.1 ], [ %len.i10.2, %bb8.2 ]
  %10 = phi ptr [ @alloc_6e4a969a3acafd8cb3137179735c0cc4, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hf996926d96bc3749E.exit" ], [ @alloc_792cc2168f9fac5caf463f3957e0bfac, %bb8.2 ], [ @alloc_792cc2168f9fac5caf463f3957e0bfac, %bb8.1 ], [ @alloc_792cc2168f9fac5caf463f3957e0bfac, %bb8 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef range(i64 -2147483648, 2147483648) %8, i64 noundef range(i64 0, 2305843009213693952) %9, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %10) #25
          to label %panic.i.i12.cont unwind label %cleanup

panic.i.i12.cont:                                 ; preds = %panic.i.i12.invoke
  unreachable

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h230cc588a28cb3c2E.exit": ; preds = %bb8
  %_19 = load i32, ptr %y, align 8, !noundef !32
  %_15 = load i32, ptr %x, align 8, !noundef !32
  %_6.i13 = load ptr, ptr %5, align 8, !alias.scope !2951, !nonnull !32, !noundef !32
  %_18 = mul i32 %_19, %_19
  %_14 = mul i32 %_15, %_15
  %11 = add i32 %_14, %_18
  store i32 %11, ptr %_6.i13, align 4
  %_0.i.i.i.not = icmp eq i32 %n, 1
  %spec.select = select i1 %_0.i.i.i.not, i32 1, i32 2
  br i1 %_0.i.i.i.not, label %bb7, label %bb8.1

bb8.1:                                            ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h230cc588a28cb3c2E.exit"
  %len.i10.1 = load i64, ptr %6, align 8, !alias.scope !2951, !noundef !32
  %_4.i.i11.1 = icmp samesign ugt i64 %len.i10.1, 1
  br i1 %_4.i.i11.1, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h230cc588a28cb3c2E.exit.1", label %panic.i.i12.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h230cc588a28cb3c2E.exit.1": ; preds = %bb8.1
  %12 = getelementptr inbounds nuw i8, ptr %y, i64 4
  %_19.1 = load i32, ptr %12, align 4, !noundef !32
  %13 = getelementptr inbounds nuw i8, ptr %x, i64 4
  %_15.1 = load i32, ptr %13, align 4, !noundef !32
  %_6.i13.1 = load ptr, ptr %5, align 8, !alias.scope !2951, !nonnull !32, !noundef !32
  %_0.i.i14.1 = getelementptr inbounds nuw i8, ptr %_6.i13.1, i64 4
  %_18.1 = mul i32 %_19.1, %_19.1
  %_14.1 = mul i32 %_15.1, %_15.1
  %14 = add i32 %_14.1, %_18.1
  store i32 %14, ptr %_0.i.i14.1, align 4
  %_0.i.i.i.1 = icmp slt i32 %spec.select, %n
  br i1 %_0.i.i.i.1, label %bb6.2, label %bb7

bb6.2:                                            ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h230cc588a28cb3c2E.exit.1"
  %_16.2 = zext nneg i32 %spec.select to i64
  br i1 %_0.i.i.i.not, label %bb8.2, label %panic

bb8.2:                                            ; preds = %bb6.2
  %len.i10.2 = load i64, ptr %6, align 8, !alias.scope !2951, !noundef !32
  %_4.i.i11.2 = icmp samesign ugt i64 %len.i10.2, %_16.2
  br i1 %_4.i.i11.2, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h230cc588a28cb3c2E.exit.2", label %panic.i.i12.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h230cc588a28cb3c2E.exit.2": ; preds = %bb8.2
  %15 = getelementptr inbounds nuw i32, ptr %y, i64 %_16.2
  %_19.2 = load i32, ptr %15, align 4, !noundef !32
  %16 = getelementptr inbounds nuw i32, ptr %x, i64 %_16.2
  %_15.2 = load i32, ptr %16, align 4, !noundef !32
  %_6.i13.2 = load ptr, ptr %5, align 8, !alias.scope !2951, !nonnull !32, !noundef !32
  %_0.i.i14.2 = getelementptr inbounds nuw i32, ptr %_6.i13.2, i64 %_16.2
  %_18.2 = mul i32 %_19.2, %_19.2
  %_14.2 = mul i32 %_15.2, %_15.2
  %17 = add i32 %_14.2, %_18.2
  store i32 %17, ptr %_0.i.i14.2, align 4
  br label %bb7

panic:                                            ; preds = %bb6.2
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_16.2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_64f7432fe9076f50d6878448d2044e8d) #26
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic
  unreachable

terminate:                                        ; preds = %cleanup
  %18 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #27
  unreachable

bb18:                                             ; preds = %cleanup
  resume { ptr, i32 } %7
}
