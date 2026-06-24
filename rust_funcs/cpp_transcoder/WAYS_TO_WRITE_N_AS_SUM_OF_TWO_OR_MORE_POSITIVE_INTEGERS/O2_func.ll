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
  br i1 %1, label %bb14.i, label %bb10

bb14.i:                                           ; preds = %bb3.i3.i, %start
  %_16.sroa.4.0.ph.i = phi i64 [ 4, %bb3.i3.i ], [ 0, %start ]
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_16.sroa.4.0.ph.i, i64 %_21.0.i.i.i) #21, !noalias !1036
  unreachable

bb10:                                             ; preds = %bb3.i3.i
  store i32 1, ptr %0, align 4
  %_2727 = icmp sgt i32 %n, 1
  br i1 %_2727, label %bb11, label %bb12

panic:                                            ; preds = %bb17.i.i
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_f6fbebde63c15a91de2463eecd111fee) #21
  unreachable

cleanup:                                          ; preds = %panic3.invoke
  %2 = landingpad { ptr, i32 }
          cleanup
  br label %bb2.i.i.i3.i

bb2.i.i.i3.i:                                     ; preds = %cleanup, %cleanup.thread16
  %3 = phi { ptr, i32 } [ %10, %cleanup.thread16 ], [ %2, %cleanup ]
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1037
  resume { ptr, i32 } %3

unreachable:                                      ; preds = %panic4
  unreachable

bb1.loopexit:                                     ; preds = %bb18
  %exitcond.not = icmp eq i32 %4, %n
  br i1 %exitcond.not, label %bb12, label %bb11

bb12:                                             ; preds = %bb1.loopexit, %bb10
  %_38.not = icmp eq i32 %n, -1
  br i1 %_38.not, label %panic3.invoke, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h60771aaf13dc2d3bE.exit11"

bb11:                                             ; preds = %bb10, %bb1.loopexit
  %iter1.sroa.0.028 = phi i32 [ %4, %bb1.loopexit ], [ 1, %bb10 ]
  %4 = add nuw nsw i32 %iter1.sroa.0.028, 1
  br label %bb2.i

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h60771aaf13dc2d3bE.exit11": ; preds = %bb12
  %_20 = getelementptr inbounds nuw i32, ptr %0, i64 %_4
  %_0 = load i32, ptr %_20, align 4, !noundef !23
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1046
  ret i32 %_0

bb2.i:                                            ; preds = %bb11, %bb18
  %iter.sroa.0.026 = phi i32 [ %iter1.sroa.0.028, %bb11 ], [ %spec.select, %bb18 ]
  %_0.i3.i = icmp sge i32 %iter.sroa.0.026, %n
  %not._0.i3.i = xor i1 %_0.i3.i, true
  %5 = zext i1 %not._0.i3.i to i32
  %spec.select = add nuw nsw i32 %iter.sroa.0.026, %5
  %_17 = sub nsw i32 %iter.sroa.0.026, %iter1.sroa.0.028
  %_16 = sext i32 %_17 to i64
  %_43 = icmp ugt i64 %_3, %_16
  br i1 %_43, label %bb17, label %panic3.invoke

bb17:                                             ; preds = %bb2.i
  %_19 = zext nneg i32 %iter.sroa.0.026 to i64
  %_49 = icmp ugt i64 %_3, %_19
  br i1 %_49, label %bb18, label %panic4

panic3.invoke:                                    ; preds = %bb2.i, %bb12
  %6 = phi i64 [ %_4, %bb12 ], [ %_16, %bb2.i ]
  %7 = phi ptr [ @alloc_7d395f208ce71b92e00f7b4fc3faa951, %bb12 ], [ @alloc_71bfa8cb3503c2d119d68462338d825f, %bb2.i ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %6, i64 noundef %_3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %7) #21
          to label %panic3.cont unwind label %cleanup

panic3.cont:                                      ; preds = %panic3.invoke
  unreachable

bb18:                                             ; preds = %bb17
  %_15 = getelementptr inbounds nuw i32, ptr %0, i64 %_16
  %_14 = load i32, ptr %_15, align 4, !noundef !23
  %_18 = getelementptr inbounds nuw i32, ptr %0, i64 %_19
  %8 = load i32, ptr %_18, align 4, !noundef !23
  %9 = add i32 %8, %_14
  store i32 %9, ptr %_18, align 4
  %_0.i.not.i = icmp sgt i32 %spec.select, %n
  %or.cond = select i1 %_0.i3.i, i1 true, i1 %_0.i.not.i
  br i1 %or.cond, label %bb1.loopexit, label %bb2.i

panic4:                                           ; preds = %bb17
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_19, i64 noundef %_3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_cfc8142fb27566ec0d6457b431b3fecd) #21
          to label %unreachable unwind label %cleanup.thread16

cleanup.thread16:                                 ; preds = %panic4
  %10 = landingpad { ptr, i32 }
          cleanup
  br label %bb2.i.i.i3.i
}
