define noundef i32 @f_gold(i64 %0, i32 noundef %n, i32 noundef %m) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1817
; call __rustc::__rust_alloc
  %1 = tail call noundef align 4 dereferenceable_or_null(8) ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef range(i64 1, 0) 8, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1817
  %2 = icmp eq ptr %1, null
  br i1 %2, label %bb3.i.i, label %bb9.i

bb3.i.i:                                          ; preds = %start
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef 4, i64 8) #20, !noalias !1823
  unreachable

bb9.i:                                            ; preds = %start
  store i64 %0, ptr %1, align 4, !noalias !1823
  %3 = lshr i64 %0, 32
  %4 = trunc nuw i64 %3 to i32
  %5 = trunc i64 %0 to i32
  %_0.i.i.i.i.i = icmp slt i32 %4, %5
  br i1 %_0.i.i.i.i.i, label %bb10.i.i.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17haa2177b7065b32c5E.exit.i.i

bb10.i.i.i:                                       ; preds = %bb9.i
  %tail.sroa.0.04.i.i.ptr = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %5, ptr %tail.sroa.0.04.i.i.ptr, align 4, !alias.scope !1824
  store i32 %4, ptr %1, align 4, !alias.scope !1824, !noalias !1829
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17haa2177b7065b32c5E.exit.i.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17haa2177b7065b32c5E.exit.i.i: ; preds = %bb10.i.i.i, %bb9.i
  %_2519 = icmp sgt i32 %m, 0
  br i1 %_2519, label %bb8.preheader, label %bb9

bb8.preheader:                                    ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17haa2177b7065b32c5E.exit.i.i
  %6 = add nsw i32 %m, -3
  %.not = icmp ult i32 %6, -2
  br i1 %.not, label %panic.invoke, label %bb8

bb9:                                              ; preds = %bb8, %bb8.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17haa2177b7065b32c5E.exit.i.i
  %min.sroa.0.0.lcssa = phi i32 [ 0, %_ZN4core5slice4sort6shared9smallsort11insert_tail17haa2177b7065b32c5E.exit.i.i ], [ %_12, %bb8 ], [ %9, %bb8.1 ]
  %7 = sub i32 %n, %m
  %_3722 = icmp slt i32 %7, %n
  br i1 %_3722, label %bb14.preheader, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hbd4578a55c92c30bE.exit13"

bb14.preheader:                                   ; preds = %bb9
  %8 = sext i32 %7 to i64
  %wide.trip.count = sext i32 %n to i64
  %_48 = icmp ult i32 %7, 2
  br i1 %_48, label %bb18, label %panic.invoke

bb8:                                              ; preds = %bb8.preheader
  %_12 = load i32, ptr %1, align 4, !noundef !18
  %exitcond.not = icmp eq i32 %m, 1
  br i1 %exitcond.not, label %bb9, label %bb8.1

bb8.1:                                            ; preds = %bb8
  %_13.1 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %_12.1 = load i32, ptr %_13.1, align 4, !noundef !18
  %9 = add i32 %_12.1, %_12
  br label %bb9

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hbd4578a55c92c30bE.exit13": ; preds = %bb18, %bb18.1, %bb9
  %max.sroa.0.0.lcssa = phi i32 [ 0, %bb9 ], [ %_17, %bb18 ], [ %10, %bb18.1 ]
  %_0 = sub i32 %max.sroa.0.0.lcssa, %min.sroa.0.0.lcssa
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 8, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1834
  ret i32 %_0

bb18:                                             ; preds = %bb14.preheader
  %indvars.iv.next32 = add nuw nsw i64 %8, 1
  %_18 = getelementptr inbounds nuw i32, ptr %1, i64 %8
  %_17 = load i32, ptr %_18, align 4, !noundef !18
  %exitcond34.not = icmp eq i64 %indvars.iv.next32, %wide.trip.count
  br i1 %exitcond34.not, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hbd4578a55c92c30bE.exit13", label %bb14.1

bb14.1:                                           ; preds = %bb18
  %_48.1 = icmp eq i32 %n, %m
  br i1 %_48.1, label %bb18.1, label %panic.invoke

bb18.1:                                           ; preds = %bb14.1
  %indvars.iv.next32.1 = or disjoint i64 %8, 2
  %_18.1 = getelementptr inbounds nuw i32, ptr %1, i64 %indvars.iv.next32
  %_17.1 = load i32, ptr %_18.1, align 4, !noundef !18
  %10 = add i32 %_17.1, %_17
  %exitcond34.not.1 = icmp eq i64 %indvars.iv.next32.1, %wide.trip.count
  br i1 %exitcond34.not.1, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hbd4578a55c92c30bE.exit13", label %panic.invoke

panic.invoke:                                     ; preds = %bb14.preheader, %bb14.1, %bb18.1, %bb8.preheader
  %11 = phi i64 [ 2, %bb8.preheader ], [ %8, %bb14.preheader ], [ %indvars.iv.next32, %bb14.1 ], [ %indvars.iv.next32.1, %bb18.1 ]
  %12 = phi ptr [ @alloc_197392f4a6764c7482969e19d2339d49, %bb8.preheader ], [ @alloc_bb37de9869e6d37434222f231ec1b75e, %bb18.1 ], [ @alloc_bb37de9869e6d37434222f231ec1b75e, %bb14.1 ], [ @alloc_bb37de9869e6d37434222f231ec1b75e, %bb14.preheader ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %11, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %12) #20
          to label %panic.cont unwind label %bb5

panic.cont:                                       ; preds = %panic.invoke
  unreachable

bb5:                                              ; preds = %panic.invoke
  %13 = landingpad { ptr, i32 }
          cleanup
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 8, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1843
  resume { ptr, i32 } %13
}
