define noundef i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %iter1 = sext i32 %n to i64
  %_5 = add nsw i64 %iter1, 1
  %_21.0.i.i.i = shl nsw i64 %_5, 2
  %_21.1.i.i.i = icmp ugt i64 %_5, 4611686018427387903
  %_26.i.i.i = icmp ugt i64 %_21.0.i.i.i, 9223372036854775804
  %or.cond.i.i.i = or i1 %_21.1.i.i.i, %_26.i.i.i
  br i1 %or.cond.i.i.i, label %bb14.i, label %bb17.i.i, !prof !339

bb17.i.i:                                         ; preds = %start
  %_8.i.i = icmp eq i64 %_5, 0
  br i1 %_8.i.i, label %panic, label %bb3.i3.i

bb3.i3.i:                                         ; preds = %bb17.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !1031
; call __rustc::__rust_alloc_zeroed
  %1 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1031
  %2 = icmp eq ptr %1, null
  br i1 %2, label %bb14.i, label %bb3.i3.i25

bb14.i:                                           ; preds = %bb3.i3.i, %start
  %_16.sroa.4.0.ph.i = phi i64 [ 4, %bb3.i3.i ], [ 0, %start ]
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_16.sroa.4.0.ph.i, i64 %_21.0.i.i.i) #21, !noalias !1036
  unreachable

bb3.i3.i25:                                       ; preds = %bb3.i3.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !1037
; call __rustc::__rust_alloc_zeroed
  %3 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1037
  %4 = icmp eq ptr %3, null
  br i1 %4, label %bb14.i28, label %bb16

bb14.i28:                                         ; preds = %bb3.i3.i25
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef 4, i64 %_21.0.i.i.i) #21
          to label %.noexc unwind label %bb12.thread

.noexc:                                           ; preds = %bb14.i28
  unreachable

bb12:                                             ; preds = %cleanup2, %cleanup2.thread
  %lpad.phi57 = phi { ptr, i32 } [ %lpad.thr_comm, %cleanup2.thread ], [ %lpad.thr_comm.split-lp, %cleanup2 ]
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %3, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1042
  br label %bb2.i.i.i3.i

bb2.i.i.i3.i:                                     ; preds = %bb12, %bb12.thread
  %.pn51 = phi { ptr, i32 } [ %5, %bb12.thread ], [ %lpad.phi57, %bb12 ]
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1051
  resume { ptr, i32 } %.pn51

bb12.thread:                                      ; preds = %bb14.i28
  %5 = landingpad { ptr, i32 }
          cleanup
  br label %bb2.i.i.i3.i

bb16:                                             ; preds = %bb3.i3.i25
  store i32 1, ptr %1, align 4
  %_3969.not = icmp eq i32 %n, 0
  br i1 %_3969.not, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h9fc2c7d698245f18E.exit45", label %bb17.preheader

bb17.preheader:                                   ; preds = %bb16
  %6 = and i64 %0, 2147483649
  %_11.not = icmp eq i64 %6, 1
  %spec.select = select i1 %_11.not, ptr %1, ptr %3
  %_18 = getelementptr inbounds nuw i8, ptr %spec.select, i64 4
  %_17 = load i32, ptr %_18, align 4, !noundef !23
  %7 = add i32 %_17, 1
  store i32 %7, ptr %_18, align 4
  %exitcond76.not = icmp eq i32 %n, 1
  br i1 %exitcond76.not, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h9fc2c7d698245f18E.exit45", label %bb17.1

panic:                                            ; preds = %bb17.i.i
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_9071d3b766533ec5c1fd5fe3b599f985) #21
  unreachable

cleanup2.thread:                                  ; preds = %panic6.invoke
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb12

cleanup2:                                         ; preds = %panic4
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb12

unreachable:                                      ; preds = %panic4
  unreachable

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h9fc2c7d698245f18E.exit45": ; preds = %bb17.preheader, %bb8.1, %bb16
  %ans.sroa.0.0.lcssa = phi i32 [ 0, %bb16 ], [ %_17, %bb17.preheader ], [ %ans.sroa.0.1.1, %bb8.1 ]
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %3, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1060
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1069
  ret i32 %ans.sroa.0.0.lcssa

panic4:                                           ; preds = %bb7.1
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_28.1, i64 noundef %_5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_4bd17fb0409dd7e5fde445e5eed2b5c8) #21
          to label %unreachable unwind label %cleanup2

bb17.1:                                           ; preds = %bb17.preheader
  %difference.sroa.0.1.v = select i1 %_11.not, i32 1, i32 -1
  %8 = and i64 %0, -9223372032559808512
  %_11.1 = icmp eq i64 %8, 4294967296
  %difference.sroa.0.1.v.1 = select i1 %_11.1, i32 1, i32 -1
  %difference.sroa.0.1.1 = add nsw i32 %difference.sroa.0.1.v.1, %difference.sroa.0.1.v
  %_15.1 = icmp slt i32 %difference.sroa.0.1.1, 0
  br i1 %_15.1, label %bb6.1, label %bb7.1

bb7.1:                                            ; preds = %bb17.1
  %_28.1 = zext nneg i32 %difference.sroa.0.1.1 to i64
  %_58.1 = icmp samesign ugt i64 %_5, %_28.1
  br i1 %_58.1, label %bb22.1, label %panic4

bb22.1:                                           ; preds = %bb7.1
  %_27.1 = getelementptr inbounds nuw i32, ptr %1, i64 %_28.1
  %_26.1 = load i32, ptr %_27.1, align 4, !noundef !23
  %9 = add i32 %_26.1, 1
  store i32 %9, ptr %_27.1, align 4
  br label %bb8.1

bb6.1:                                            ; preds = %bb17.1
  %_20.1 = sub nsw i32 0, %difference.sroa.0.1.1
  %_19.1 = zext nneg i32 %_20.1 to i64
  %_47.1 = icmp samesign ugt i64 %_5, %_19.1
  br i1 %_47.1, label %bb20.1, label %panic6.invoke

bb20.1:                                           ; preds = %bb6.1
  %_18.1 = getelementptr inbounds nuw i32, ptr %3, i64 %_19.1
  %_17.1 = load i32, ptr %_18.1, align 4, !noundef !23
  %10 = add i32 %_17.1, 1
  store i32 %10, ptr %_18.1, align 4
  br label %bb8.1

bb8.1:                                            ; preds = %bb20.1, %bb22.1
  %_17.pn.1 = phi i32 [ %_17.1, %bb20.1 ], [ %_26.1, %bb22.1 ]
  %ans.sroa.0.1.1 = add i32 %_17.pn.1, %_17
  %exitcond76.1.not = icmp eq i32 %n, 2
  br i1 %exitcond76.1.not, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h9fc2c7d698245f18E.exit45", label %panic6.invoke

panic6.invoke:                                    ; preds = %bb6.1, %bb8.1
  %11 = phi i64 [ 2, %bb8.1 ], [ %_19.1, %bb6.1 ]
  %12 = phi i64 [ 2, %bb8.1 ], [ %_5, %bb6.1 ]
  %13 = phi ptr [ @alloc_c3090b4ae34b0b883c95a0778e9d4733, %bb8.1 ], [ @alloc_7f027e5588d69210053d6aeb5b84a3f7, %bb6.1 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %11, i64 noundef %12, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %13) #21
          to label %panic6.cont unwind label %cleanup2.thread

panic6.cont:                                      ; preds = %panic6.invoke
  unreachable
}
