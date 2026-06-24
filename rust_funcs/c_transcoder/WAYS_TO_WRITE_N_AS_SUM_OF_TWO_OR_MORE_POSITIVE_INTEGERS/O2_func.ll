define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_4 = sext i32 %n to i64
  %_3 = add nsw i64 %_4, 1
  %_21.0.i.i.i = shl nsw i64 %_3, 2
  %_21.1.i.i.i = icmp ugt i64 %_3, 4611686018427387903
  %_26.i.i.i = icmp ugt i64 %_21.0.i.i.i, 9223372036854775804
  %or.cond.i.i.i = or i1 %_21.1.i.i.i, %_26.i.i.i
  br i1 %or.cond.i.i.i, label %bb14.i, label %bb17.i.i, !prof !339

bb17.i.i:                                         ; preds = %start
  %_8.i.i = icmp eq i64 %_3, 0
  br i1 %_8.i.i, label %panic, label %bb3.i3.i

bb3.i3.i:                                         ; preds = %bb17.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !1031
; call __rustc::__rust_alloc_zeroed
  %0 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1031
  %1 = icmp eq ptr %0, null
  br i1 %1, label %bb14.i, label %bb12

bb14.i:                                           ; preds = %bb3.i3.i, %start
  %_16.sroa.4.0.ph.i = phi i64 [ 4, %bb3.i3.i ], [ 0, %start ]
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_16.sroa.4.0.ph.i, i64 %_21.0.i.i.i) #21, !noalias !1036
  unreachable

bb12:                                             ; preds = %bb3.i3.i
  store i32 1, ptr %0, align 4
  %_0.i.not.i51 = icmp slt i32 %n, 1
  br i1 %_0.i.not.i51, label %bb4, label %bb2.i

panic:                                            ; preds = %bb17.i.i
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_ba7b89a02b596be26738d6b12ac4b47e) #21
  unreachable

cleanup:                                          ; preds = %panic3.invoke
  %2 = landingpad { ptr, i32 }
          cleanup
  br label %bb2.i.i.i3.i

bb2.i.i.i3.i:                                     ; preds = %cleanup, %cleanup.thread30
  %3 = phi { ptr, i32 } [ %10, %cleanup.thread30 ], [ %2, %cleanup ]
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1037
  resume { ptr, i32 } %3

unreachable:                                      ; preds = %panic4
  unreachable

bb1.loopexit:                                     ; preds = %bb17
  %_0.i.not.i = icmp sgt i32 %spec.select, %n
  %or.cond = select i1 %_0.i3.i, i1 true, i1 %_0.i.not.i
  br i1 %or.cond, label %bb4, label %bb2.i

bb2.i:                                            ; preds = %bb12, %bb1.loopexit
  %iter.sroa.0.052 = phi i32 [ %spec.select, %bb1.loopexit ], [ 1, %bb12 ]
  %_0.i3.i = icmp sge i32 %iter.sroa.0.052, %n
  %not._0.i3.i = xor i1 %_0.i3.i, true
  %4 = zext i1 %not._0.i3.i to i32
  %spec.select = add nuw nsw i32 %iter.sroa.0.052, %4
  br label %bb2.i19

bb4:                                              ; preds = %bb1.loopexit, %bb12
  %_35.not = icmp eq i32 %n, -1
  br i1 %_35.not, label %panic3.invoke, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h60771aaf13dc2d3bE.exit12"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h60771aaf13dc2d3bE.exit12": ; preds = %bb4
  %_24 = getelementptr inbounds nuw i32, ptr %0, i64 %_4
  %_0 = load i32, ptr %_24, align 4, !noundef !23
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1046
  ret i32 %_0

bb2.i19:                                          ; preds = %bb2.i, %bb17
  %iter1.sroa.0.050 = phi i32 [ %iter.sroa.0.052, %bb2.i ], [ %spec.select46, %bb17 ]
  %_0.i3.i20 = icmp sge i32 %iter1.sroa.0.050, %n
  %not._0.i3.i20 = xor i1 %_0.i3.i20, true
  %5 = zext i1 %not._0.i3.i20 to i32
  %spec.select46 = add nuw nsw i32 %iter1.sroa.0.050, %5
  %_21 = sub nsw i32 %iter1.sroa.0.050, %iter.sroa.0.052
  %_20 = sext i32 %_21 to i64
  %_40 = icmp ugt i64 %_3, %_20
  br i1 %_40, label %bb16, label %panic3.invoke

bb16:                                             ; preds = %bb2.i19
  %_23 = zext nneg i32 %iter1.sroa.0.050 to i64
  %_46 = icmp ugt i64 %_3, %_23
  br i1 %_46, label %bb17, label %panic4

panic3.invoke:                                    ; preds = %bb2.i19, %bb4
  %6 = phi i64 [ %_4, %bb4 ], [ %_20, %bb2.i19 ]
  %7 = phi ptr [ @alloc_a89279eca10d763b375081b3ce383be9, %bb4 ], [ @alloc_8adb672ab69616c54652515da4c039df, %bb2.i19 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %6, i64 noundef %_3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %7) #21
          to label %panic3.cont unwind label %cleanup

panic3.cont:                                      ; preds = %panic3.invoke
  unreachable

bb17:                                             ; preds = %bb16
  %_19 = getelementptr inbounds nuw i32, ptr %0, i64 %_20
  %_18 = load i32, ptr %_19, align 4, !noundef !23
  %_22 = getelementptr inbounds nuw i32, ptr %0, i64 %_23
  %8 = load i32, ptr %_22, align 4, !noundef !23
  %9 = add i32 %8, %_18
  store i32 %9, ptr %_22, align 4
  %_0.i.not.i18 = icmp sgt i32 %spec.select46, %n
  %or.cond48 = select i1 %_0.i3.i20, i1 true, i1 %_0.i.not.i18
  br i1 %or.cond48, label %bb1.loopexit, label %bb2.i19

panic4:                                           ; preds = %bb16
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_23, i64 noundef %_3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_30d3186cf66eef713f35ce35fc16fac4) #21
          to label %unreachable unwind label %cleanup.thread30

cleanup.thread30:                                 ; preds = %panic4
  %10 = landingpad { ptr, i32 }
          cleanup
  br label %bb2.i.i.i3.i
}
