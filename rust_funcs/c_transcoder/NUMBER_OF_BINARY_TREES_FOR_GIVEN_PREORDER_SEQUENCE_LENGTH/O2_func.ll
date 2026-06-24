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
  %_37.not = icmp eq i32 %n, 0
  br i1 %_37.not, label %panic6.invoke, label %bb11

panic:                                            ; preds = %bb17.i.i
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_231fe86f2433f8c64b36dfe70ea58200) #21
  unreachable

cleanup.thread:                                   ; preds = %panic6.invoke
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb2.i.i.i3.i

cleanup:                                          ; preds = %panic4.invoke
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb2.i.i.i3.i

bb2.i.i.i3.i:                                     ; preds = %cleanup, %cleanup.thread
  %lpad.phi21 = phi { ptr, i32 } [ %lpad.thr_comm, %cleanup.thread ], [ %lpad.thr_comm.split-lp, %cleanup ]
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1037
  resume { ptr, i32 } %lpad.phi21

bb11:                                             ; preds = %bb10
  %_6 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %_6, align 4
  %_0.i.not.i36 = icmp slt i32 %n, 2
  br i1 %_0.i.not.i36, label %bb4, label %bb2.i

bb1.loopexit:                                     ; preds = %bb20
  %_0.i.not.i = icmp sgt i32 %spec.select, %n
  %or.cond = select i1 %_0.i3.i, i1 true, i1 %_0.i.not.i
  br i1 %or.cond, label %bb4, label %bb2.i

bb2.i:                                            ; preds = %bb11, %bb1.loopexit
  %iter.sroa.0.037 = phi i32 [ %spec.select, %bb1.loopexit ], [ 2, %bb11 ]
  %_0.i3.i = icmp sge i32 %iter.sroa.0.037, %n
  %not._0.i3.i = xor i1 %_0.i3.i, true
  %2 = zext i1 %not._0.i3.i to i32
  %spec.select = add nuw nsw i32 %iter.sroa.0.037, %2
  %_23 = zext nneg i32 %iter.sroa.0.037 to i64
  %_65 = icmp ule i64 %_3, %_23
  %_24 = getelementptr inbounds nuw i32, ptr %0, i64 %_23
  br label %bb14

bb4:                                              ; preds = %bb1.loopexit, %bb11
  %_42.not = icmp eq i32 %n, -1
  br i1 %_42.not, label %panic4.invoke, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17haceb57b832332a0dE.exit14"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17haceb57b832332a0dE.exit14": ; preds = %bb4
  %_25 = getelementptr inbounds nuw i32, ptr %0, i64 %_4
  %_0 = load i32, ptr %_25, align 4, !noundef !23
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1046
  ret i32 %_0

bb14:                                             ; preds = %bb2.i, %bb20
  %indvars.iv = phi i64 [ 0, %bb2.i ], [ %indvars.iv.next, %bb20 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv, %_3
  br i1 %exitcond.not, label %panic4.invoke, label %bb18

bb18:                                             ; preds = %bb14
  %3 = xor i64 %indvars.iv, -1
  %_21 = add nsw i64 %3, %_23
  %_59 = icmp uge i64 %_21, %_3
  %brmerge = or i1 %_59, %_65
  br i1 %brmerge, label %panic6.invoke.loopexit, label %bb20

panic4.invoke:                                    ; preds = %bb14, %bb4
  %4 = phi i64 [ %_4, %bb4 ], [ %_3, %bb14 ]
  %5 = phi ptr [ @alloc_734afab945b6dbe08a81bfc6be87279e, %bb4 ], [ @alloc_1c8fc68638a1f2fac594d0e2b3e8cf80, %bb14 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %4, i64 noundef %_3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) #21
          to label %panic4.cont unwind label %cleanup

panic4.cont:                                      ; preds = %panic4.invoke
  unreachable

bb20:                                             ; preds = %bb18
  %_17 = getelementptr inbounds nuw i32, ptr %0, i64 %indvars.iv
  %_16 = load i32, ptr %_17, align 4, !noundef !23
  %_20 = getelementptr inbounds nuw i32, ptr %0, i64 %_21
  %_19 = load i32, ptr %_20, align 4, !noundef !23
  %_15 = mul i32 %_19, %_16
  %6 = load i32, ptr %_24, align 4, !noundef !23
  %7 = add i32 %6, %_15
  store i32 %7, ptr %_24, align 4
  %exitcond47.not = icmp eq i64 %indvars.iv.next, %_23
  br i1 %exitcond47.not, label %bb1.loopexit, label %bb14

panic6.invoke.loopexit:                           ; preds = %bb18
  %alloc_7ba70477c610a14073cd5a345c11e08d.mux = select i1 %_59, ptr @alloc_7ba70477c610a14073cd5a345c11e08d, ptr @alloc_d9b4690608e4b0e1474afcc672df57d0
  %_21.mux = select i1 %_59, i64 %_21, i64 %_23
  br label %panic6.invoke

panic6.invoke:                                    ; preds = %panic6.invoke.loopexit, %bb10
  %8 = phi i64 [ 1, %bb10 ], [ %_21.mux, %panic6.invoke.loopexit ]
  %9 = phi ptr [ @alloc_c67727a37a6bb1ea41691504a6dddb65, %bb10 ], [ %alloc_7ba70477c610a14073cd5a345c11e08d.mux, %panic6.invoke.loopexit ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %8, i64 noundef %_3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %9) #21
          to label %panic6.cont unwind label %cleanup.thread

panic6.cont:                                      ; preds = %panic6.invoke
  unreachable
}
