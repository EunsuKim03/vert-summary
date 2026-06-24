define noundef i32 @f_gold(i64 %0, i64 %1, i32 noundef %n, i32 noundef %W) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %wt = alloca [8 x i8], align 8
  %val = alloca [8 x i8], align 8
  store i64 %0, ptr %val, align 8
  store i64 %1, ptr %wt, align 8
  %_7 = sext i32 %W to i64
  %_6 = add nsw i64 %_7, 1
  %_21.0.i.i.i = shl nsw i64 %_6, 2
  %_21.1.i.i.i = icmp ugt i64 %_6, 4611686018427387903
  %_26.i.i.i = icmp ugt i64 %_21.0.i.i.i, 9223372036854775804
  %or.cond.i.i.i = or i1 %_21.1.i.i.i, %_26.i.i.i
  br i1 %or.cond.i.i.i, label %bb14.i, label %bb17.i.i, !prof !339

bb17.i.i:                                         ; preds = %start
  %_8.i.i = icmp eq i64 %_6, 0
  br i1 %_8.i.i, label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h3edb35d25bf98f9cE.exit", label %bb3.i3.i

bb3.i3.i:                                         ; preds = %bb17.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !1031
; call __rustc::__rust_alloc_zeroed
  %2 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1031
  %3 = icmp eq ptr %2, null
  br i1 %3, label %bb14.i, label %bb10.i.i

bb10.i.i:                                         ; preds = %bb3.i3.i
  %4 = ptrtoint ptr %2 to i64
  br label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h3edb35d25bf98f9cE.exit"

bb14.i:                                           ; preds = %bb3.i3.i, %start
  %_16.sroa.4.0.ph.i = phi i64 [ 4, %bb3.i3.i ], [ 0, %start ]
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_16.sroa.4.0.ph.i, i64 %_21.0.i.i.i) #21, !noalias !1036
  unreachable

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h3edb35d25bf98f9cE.exit": ; preds = %bb17.i.i, %bb10.i.i
  %_16.sroa.10.0.i = phi i64 [ %4, %bb10.i.i ], [ 4, %bb17.i.i ]
  %5 = inttoptr i64 %_16.sroa.10.0.i to ptr
  %_3136 = icmp sgt i32 %n, 0
  br i1 %_3136, label %bb12.lr.ph, label %bb13

bb12.lr.ph:                                       ; preds = %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h3edb35d25bf98f9cE.exit"
  %_0.i.not.i34 = icmp slt i32 %W, 0
  %wide.trip.count = zext nneg i32 %n to i64
  br label %bb12

bb1.loopexit:                                     ; preds = %bb21, %bb12
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb13, label %bb12

bb13:                                             ; preds = %bb1.loopexit, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h3edb35d25bf98f9cE.exit"
  %_42.not = icmp eq i32 %W, -1
  br i1 %_42.not, label %panic2.invoke, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h34117bb54cdfefd5E.exit"

bb12:                                             ; preds = %bb12.lr.ph, %bb1.loopexit
  %indvars.iv = phi i64 [ 0, %bb12.lr.ph ], [ %indvars.iv.next, %bb1.loopexit ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %_0.i.not.i34, label %bb1.loopexit, label %bb2.i.lr.ph

bb2.i.lr.ph:                                      ; preds = %bb12
  %_23 = icmp samesign ult i64 %indvars.iv, 2
  %6 = getelementptr inbounds nuw i32, ptr %wt, i64 %indvars.iv
  %7 = getelementptr inbounds nuw i32, ptr %val, i64 %indvars.iv
  br label %bb2.i

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h34117bb54cdfefd5E.exit": ; preds = %bb13
  %_30 = getelementptr inbounds nuw i32, ptr %5, i64 %_7
  %_0 = load i32, ptr %_30, align 4, !noundef !23
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %5, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1037
  ret i32 %_0

cleanup.thread:                                   ; preds = %panic5.invoke
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb2.i.i.i3.i13

cleanup:                                          ; preds = %panic2.invoke
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br i1 %_8.i.i, label %bb10, label %bb2.i.i.i3.i13

bb2.i.i.i3.i13:                                   ; preds = %cleanup.thread, %cleanup
  %lpad.phi21 = phi { ptr, i32 } [ %lpad.thr_comm, %cleanup.thread ], [ %lpad.thr_comm.split-lp, %cleanup ]
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %5, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1046
  br label %bb10

bb2.i:                                            ; preds = %bb2.i.lr.ph, %bb21
  %iter.sroa.4.035 = phi i32 [ %W, %bb2.i.lr.ph ], [ %spec.select, %bb21 ]
  %_0.i3.i = icmp eq i32 %iter.sroa.4.035, 0
  %spec.select = tail call i32 @llvm.usub.sat.i32(i32 %iter.sroa.4.035, i32 1)
  %_19 = zext nneg i32 %iter.sroa.4.035 to i64
  %_48 = icmp ugt i64 %_6, %_19
  br i1 %_48, label %bb18, label %panic2.invoke

bb18:                                             ; preds = %bb2.i
  %_18 = getelementptr inbounds nuw i32, ptr %5, i64 %_19
  %_17 = load i32, ptr %_18, align 4, !noundef !23
  br i1 %_23, label %bb6, label %panic5.invoke

panic2.invoke:                                    ; preds = %bb2.i, %bb13
  %8 = phi i64 [ %_7, %bb13 ], [ %_19, %bb2.i ]
  %9 = phi ptr [ @alloc_b99b913ed02dc500fd5777c192fdb56e, %bb13 ], [ @alloc_8b8181c69e903ca20614752db504a40b, %bb2.i ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %8, i64 noundef %_6, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %9) #21
          to label %panic2.cont unwind label %cleanup

panic2.cont:                                      ; preds = %panic2.invoke
  unreachable

bb6:                                              ; preds = %bb18
  %_28 = load i32, ptr %6, align 4, !noundef !23
  %_27 = sub i32 %iter.sroa.4.035, %_28
  %_26 = sext i32 %_27 to i64
  %_53 = icmp ugt i64 %_6, %_26
  br i1 %_53, label %bb21, label %panic5.invoke

panic5.invoke:                                    ; preds = %bb6, %bb18
  %10 = phi i64 [ %indvars.iv, %bb18 ], [ %_26, %bb6 ]
  %11 = phi i64 [ 2, %bb18 ], [ %_6, %bb6 ]
  %12 = phi ptr [ @alloc_4a2d00eee1a837ad5dc0935e5f40c6d0, %bb18 ], [ @alloc_e15b6233bf0b434cad09b21fff085c7c, %bb6 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %10, i64 noundef %11, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %12) #21
          to label %panic5.cont unwind label %cleanup.thread

panic5.cont:                                      ; preds = %panic5.invoke
  unreachable

bb21:                                             ; preds = %bb6
  %_21 = load i32, ptr %7, align 4, !noundef !23
  %_25 = getelementptr inbounds nuw i32, ptr %5, i64 %_26
  %_24 = load i32, ptr %_25, align 4, !noundef !23
  %_20 = add i32 %_24, %_21
  %_0.sroa.0.0.i16 = tail call noundef i32 @llvm.smax.i32(i32 %_20, i32 %_17)
  store i32 %_0.sroa.0.0.i16, ptr %_18, align 4
  %_0.i.not.i = icmp slt i32 %spec.select, 0
  %or.cond = or i1 %_0.i3.i, %_0.i.not.i
  br i1 %or.cond, label %bb1.loopexit, label %bb2.i

bb10:                                             ; preds = %bb2.i.i.i3.i13, %cleanup
  %lpad.phi22 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %cleanup ], [ %lpad.phi21, %bb2.i.i.i3.i13 ]
  resume { ptr, i32 } %lpad.phi22
}
