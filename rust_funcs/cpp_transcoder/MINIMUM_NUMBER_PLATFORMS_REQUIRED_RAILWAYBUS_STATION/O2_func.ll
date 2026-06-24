define noundef range(i32 1, -2147483648) i32 @f_gold(i64 %0, i64 %1, i32 noundef %n) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1817
; call __rustc::__rust_alloc
  %2 = tail call noundef align 4 dereferenceable_or_null(8) ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef range(i64 1, 0) 8, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1817
  %3 = icmp eq ptr %2, null
  br i1 %3, label %bb3.i.i, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h0bbe7176042a2639E.exit"

bb3.i.i:                                          ; preds = %start
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef 4, i64 8) #20, !noalias !1823
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h0bbe7176042a2639E.exit": ; preds = %start
  store i64 %0, ptr %2, align 4, !noalias !1823
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1824
; call __rustc::__rust_alloc
  %4 = tail call noundef align 4 dereferenceable_or_null(8) ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef range(i64 1, 0) 8, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1824
  %5 = icmp eq ptr %4, null
  %6 = lshr i64 %0, 32
  %7 = trunc nuw i64 %6 to i32
  %8 = trunc i64 %0 to i32
  br i1 %5, label %bb3.i.i15, label %bb9.i

bb3.i.i15:                                        ; preds = %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h0bbe7176042a2639E.exit"
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef 4, i64 8) #20
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %bb3.i.i15
  unreachable

cleanup:                                          ; preds = %bb3.i.i15
  %9 = landingpad { ptr, i32 }
          cleanup
  br label %bb14

bb9.i:                                            ; preds = %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h0bbe7176042a2639E.exit"
  store i64 %1, ptr %4, align 4, !noalias !1830
  %_0.i.i.i.i.i = icmp slt i32 %7, %8
  %10 = lshr i64 %1, 32
  %11 = trunc nuw i64 %10 to i32
  %12 = trunc i64 %1 to i32
  br i1 %_0.i.i.i.i.i, label %bb10.i.i.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h690eb7bd9866e190E.exit.i.i

bb10.i.i.i:                                       ; preds = %bb9.i
  %tail.sroa.0.04.i.i.ptr = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %8, ptr %tail.sroa.0.04.i.i.ptr, align 4, !alias.scope !1831
  store i32 %7, ptr %2, align 4, !alias.scope !1831, !noalias !1836
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h690eb7bd9866e190E.exit.i.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h690eb7bd9866e190E.exit.i.i: ; preds = %bb10.i.i.i, %bb9.i
  %_0.i.i.i.i.i37 = icmp slt i32 %11, %12
  br i1 %_0.i.i.i.i.i37, label %bb10.i.i.i48, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h690eb7bd9866e190E.exit.i.i38

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h414bc1a9d5acd1bfE.exit22": ; preds = %panic4.invoke
  %13 = landingpad { ptr, i32 }
          cleanup
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %4, i64 noundef 8, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1841
  br label %bb14

bb10.i.i.i48:                                     ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h690eb7bd9866e190E.exit.i.i
  %tail.sroa.0.04.i.i33.ptr = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %12, ptr %tail.sroa.0.04.i.i33.ptr, align 4, !alias.scope !1850
  store i32 %11, ptr %4, align 4, !alias.scope !1850, !noalias !1855
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h690eb7bd9866e190E.exit.i.i38

_ZN4core5slice4sort6shared9smallsort11insert_tail17h690eb7bd9866e190E.exit.i.i38: ; preds = %bb10.i.i.i48, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h690eb7bd9866e190E.exit.i.i
  %_17 = sext i32 %n to i64
  %_1572 = icmp ugt i32 %n, 1
  br i1 %_1572, label %bb3, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h414bc1a9d5acd1bfE.exit61"

bb3:                                              ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h690eb7bd9866e190E.exit.i.i38, %bb6
  %result.sroa.0.078 = phi i32 [ %result.sroa.0.1, %bb6 ], [ 1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h690eb7bd9866e190E.exit.i.i38 ]
  %plat_needed.sroa.0.077 = phi i32 [ %plat_needed.sroa.0.1, %bb6 ], [ 1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h690eb7bd9866e190E.exit.i.i38 ]
  %i.sroa.0.076 = phi i64 [ %i.sroa.0.1, %bb6 ], [ 1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h690eb7bd9866e190E.exit.i.i38 ]
  %j.sroa.0.075 = phi i64 [ %j.sroa.0.1, %bb6 ], [ 0, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h690eb7bd9866e190E.exit.i.i38 ]
  %_43 = icmp ult i64 %i.sroa.0.076, 2
  br i1 %_43, label %bb19, label %panic4.invoke

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h414bc1a9d5acd1bfE.exit61": ; preds = %bb6, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h690eb7bd9866e190E.exit.i.i38
  %result.sroa.0.0.lcssa = phi i32 [ 1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h690eb7bd9866e190E.exit.i.i38 ], [ %result.sroa.0.1, %bb6 ]
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %4, i64 noundef 8, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1860
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %2, i64 noundef 8, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1869
  ret i32 %result.sroa.0.0.lcssa

bb19:                                             ; preds = %bb3
  %_48 = icmp ult i64 %j.sroa.0.075, 2
  br i1 %_48, label %bb20, label %panic4.invoke

bb20:                                             ; preds = %bb19
  %_22 = getelementptr inbounds nuw i32, ptr %2, i64 %i.sroa.0.076
  %_21 = load i32, ptr %_22, align 4, !noundef !18
  %_25 = getelementptr inbounds nuw i32, ptr %4, i64 %j.sroa.0.075
  %_24 = load i32, ptr %_25, align 4, !noundef !18
  %_20.not = icmp sgt i32 %_21, %_24
  br i1 %_20.not, label %bb5, label %bb21

panic4.invoke:                                    ; preds = %bb19, %bb3
  %14 = phi i64 [ %i.sroa.0.076, %bb3 ], [ %j.sroa.0.075, %bb19 ]
  %15 = phi ptr [ @alloc_c9cdb9f9d0503e049398aa6d3bf73999, %bb3 ], [ @alloc_a5c4585621a4e58303b4158919bee345, %bb19 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %14, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %15) #20
          to label %panic4.cont unwind label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h414bc1a9d5acd1bfE.exit22"

panic4.cont:                                      ; preds = %panic4.invoke
  unreachable

bb5:                                              ; preds = %bb20
  %16 = add i32 %plat_needed.sroa.0.077, -1
  %17 = add nuw nsw i64 %j.sroa.0.075, 1
  br label %bb6

bb6:                                              ; preds = %bb21, %bb5
  %j.sroa.0.1 = phi i64 [ %j.sroa.0.075, %bb21 ], [ %17, %bb5 ]
  %i.sroa.0.1 = phi i64 [ %19, %bb21 ], [ %i.sroa.0.076, %bb5 ]
  %plat_needed.sroa.0.1 = phi i32 [ %18, %bb21 ], [ %16, %bb5 ]
  %result.sroa.0.1 = phi i32 [ %_0.sroa.0.0.i, %bb21 ], [ %result.sroa.0.078, %bb5 ]
  %_15 = icmp ult i64 %i.sroa.0.1, %_17
  %_18 = icmp ult i64 %j.sroa.0.1, %_17
  %or.cond = select i1 %_15, i1 %_18, i1 false
  br i1 %or.cond, label %bb3, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h414bc1a9d5acd1bfE.exit61"

bb21:                                             ; preds = %bb20
  %18 = add i32 %plat_needed.sroa.0.077, 1
  %_0.sroa.0.0.i = tail call noundef i32 @llvm.smax.i32(i32 %18, i32 %result.sroa.0.078)
  %19 = add nuw nsw i64 %i.sroa.0.076, 1
  br label %bb6

bb14:                                             ; preds = %cleanup, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h414bc1a9d5acd1bfE.exit22"
  %.pn = phi { ptr, i32 } [ %13, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h414bc1a9d5acd1bfE.exit22" ], [ %9, %cleanup ]
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %2, i64 noundef 8, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1878
  resume { ptr, i32 } %.pn
}
