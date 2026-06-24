define noundef i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %price = alloca [8 x i8], align 8
  store i64 %0, ptr %price, align 8
  %_4 = sext i32 %n to i64
  %_21.0.i.i.i = shl nsw i64 %_4, 2
  %_21.1.i.i.i = icmp slt i32 %n, 0
  %_26.i.i.i = icmp ugt i64 %_21.0.i.i.i, 9223372036854775804
  %or.cond.i.i.i = or i1 %_21.1.i.i.i, %_26.i.i.i
  %1 = trunc i64 %0 to i32
  %2 = lshr i64 %0, 32
  %3 = trunc nuw i64 %2 to i32
  br i1 %or.cond.i.i.i, label %bb14.i, label %bb17.i.i, !prof !339

bb17.i.i:                                         ; preds = %start
  %_8.i.i = icmp eq i32 %n, 0
  br i1 %_8.i.i, label %panic, label %bb3.i3.i

bb3.i3.i:                                         ; preds = %bb17.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !1031
; call __rustc::__rust_alloc_zeroed
  %4 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1031
  %5 = icmp eq ptr %4, null
  br i1 %5, label %bb14.i, label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hf6d0d2fe21aaeb75E.exit"

bb14.i:                                           ; preds = %bb3.i3.i, %start
  %_16.sroa.4.0.ph.i = phi i64 [ 4, %bb3.i3.i ], [ 0, %start ]
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_16.sroa.4.0.ph.i, i64 %_21.0.i.i.i) #21, !noalias !1036
  unreachable

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hf6d0d2fe21aaeb75E.exit": ; preds = %bb3.i3.i
  %_6 = add nsw i64 %_4, -1
  %_7 = icmp samesign ult i32 %n, 3
  br i1 %_7, label %bb1, label %panic

bb1:                                              ; preds = %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hf6d0d2fe21aaeb75E.exit"
  %_4348 = icmp eq i32 %n, 2
  br i1 %_4348, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17ha9d5af3e1f3690b5E.exit25.loopexit", label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17ha9d5af3e1f3690b5E.exit25"

panic:                                            ; preds = %bb17.i.i, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hf6d0d2fe21aaeb75E.exit"
  %_635 = phi i64 [ %_6, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hf6d0d2fe21aaeb75E.exit" ], [ -1, %bb17.i.i ]
  %6 = phi ptr [ %4, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hf6d0d2fe21aaeb75E.exit" ], [ inttoptr (i64 4 to ptr), %bb17.i.i ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_635, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_bbb2f000a1e32dbc0b1c6ebbb1709e06) #21
          to label %unreachable unwind label %cleanup

cleanup:                                          ; preds = %panic
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br i1 %_8.i.i, label %bb20, label %bb2.i.i.i3.i

bb2.i.i.i3.i:                                     ; preds = %cleanup
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %6, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1037
  br label %bb20

unreachable:                                      ; preds = %panic
  unreachable

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17ha9d5af3e1f3690b5E.exit25.loopexit": ; preds = %bb1
  %7 = getelementptr inbounds nuw i32, ptr %price, i64 %_6
  %8 = load i32, ptr %7, align 4, !noundef !23
  %9 = zext nneg i32 %n to i64
  %indvars.iv.next = add nsw i64 %9, -2
  %10 = getelementptr inbounds nuw i32, ptr %price, i64 %indvars.iv.next
  %_11 = load i32, ptr %10, align 4, !noundef !23
  %max_price.sroa.0.1 = tail call i32 @llvm.smax.i32(i32 %_11, i32 %8)
  %_20 = sub i32 %max_price.sroa.0.1, %_11
  %_0.sroa.0.0.i26 = tail call noundef i32 @llvm.smax.i32(i32 %_20, i32 0)
  %_22 = getelementptr inbounds nuw i32, ptr %4, i64 %indvars.iv.next
  store i32 %_0.sroa.0.0.i26, ptr %_22, align 4
  %min_price.sroa.0.1 = tail call i32 @llvm.smin.i32(i32 %3, i32 %1)
  %_32 = load i32, ptr %4, align 4, !noundef !23
  %_38 = getelementptr inbounds nuw i8, ptr %4, i64 4
  %_37 = load i32, ptr %_38, align 4, !noundef !23
  %_39 = sub i32 %3, %min_price.sroa.0.1
  %_36 = add i32 %_39, %_37
  %_0.sroa.0.0.i = tail call noundef i32 @llvm.smax.i32(i32 %_36, i32 %_32)
  store i32 %_0.sroa.0.0.i, ptr %_38, align 4
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17ha9d5af3e1f3690b5E.exit25"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17ha9d5af3e1f3690b5E.exit25": ; preds = %bb1, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17ha9d5af3e1f3690b5E.exit25.loopexit"
  %_42 = getelementptr inbounds nuw i32, ptr %4, i64 %_6
  %_0 = load i32, ptr %_42, align 4, !noundef !23
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %4, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1046
  ret i32 %_0

bb20:                                             ; preds = %bb2.i.i.i3.i, %cleanup
  resume { ptr, i32 } %lpad.thr_comm.split-lp
}
