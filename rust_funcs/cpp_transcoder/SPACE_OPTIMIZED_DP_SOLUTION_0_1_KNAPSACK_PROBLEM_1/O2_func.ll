define noundef i32 @f_gold(i64 %0, i64 %1, i32 noundef %n, i32 noundef %W) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %val.sroa.0.0.extract.trunc = trunc i64 %0 to i32
  %val.sroa.2.0.extract.shift = lshr i64 %0, 32
  %val.sroa.2.0.extract.trunc = trunc nuw i64 %val.sroa.2.0.extract.shift to i32
  %wt.sroa.0.0.extract.trunc = trunc i64 %1 to i32
  %wt.sroa.2.0.extract.shift = lshr i64 %1, 32
  %wt.sroa.2.0.extract.trunc = trunc nuw i64 %wt.sroa.2.0.extract.shift to i32
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
  %_2731.not = icmp eq i32 %n, 0
  br i1 %_2731.not, label %bb12, label %bb11.preheader

bb11.preheader:                                   ; preds = %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h3edb35d25bf98f9cE.exit"
  %_3629 = icmp slt i32 %W, %wt.sroa.0.0.extract.trunc
  br i1 %_3629, label %bb14.lr.ph, label %bb1.loopexit

bb1.loopexit:                                     ; preds = %bb21, %bb21.194, %bb11.preheader
  %exitcond41.not = icmp eq i32 %n, 1
  br i1 %exitcond41.not, label %bb12, label %bb11.1

bb11.1:                                           ; preds = %bb1.loopexit
  %_3629.1 = icmp slt i32 %W, %wt.sroa.2.0.extract.trunc
  br i1 %_3629.1, label %bb14.lr.ph.1, label %bb1.loopexit.1

bb14.lr.ph.1:                                     ; preds = %bb11.1
  %wide.trip.count.1 = ashr i64 %1, 32
  %indvars.iv.next.1 = add nsw i64 %_7, 1
  %_47.1.not = icmp eq i32 %W, -1
  br i1 %_47.1.not, label %panic5.invoke, label %bb19.1

bb19.1:                                           ; preds = %bb14.lr.ph.1
  %_24.1 = sub nsw i64 %_7, %wt.sroa.2.0.extract.shift
  %sext52 = shl i64 %_24.1, 32
  %_23.1 = ashr exact i64 %sext52, 32
  %_52.1 = icmp ugt i64 %_6, %_23.1
  br i1 %_52.1, label %bb21.1, label %panic8

bb21.1:                                           ; preds = %bb19.1
  %_17.1 = getelementptr inbounds nuw i32, ptr %5, i64 %_7
  %_16.1 = load i32, ptr %_17.1, align 4, !noundef !23
  %_22.1 = getelementptr inbounds nuw i32, ptr %5, i64 %_23.1
  %_21.1 = load i32, ptr %_22.1, align 4, !noundef !23
  %_19.1 = add i32 %_21.1, %val.sroa.2.0.extract.trunc
  %x.y.i.1 = tail call noundef i32 @llvm.smax.i32(i32 %_16.1, i32 %_19.1)
  store i32 %x.y.i.1, ptr %_17.1, align 4
  %exitcond.1.not = icmp eq i64 %indvars.iv.next.1, %wide.trip.count.1
  br i1 %exitcond.1.not, label %bb1.loopexit.1, label %bb14.1.1

bb14.1.1:                                         ; preds = %bb21.1
  %_47.1.1 = icmp ugt i64 %_6, %indvars.iv.next.1
  br i1 %_47.1.1, label %bb19.1.1, label %panic5.invoke

bb19.1.1:                                         ; preds = %bb14.1.1
  %_24.1.1 = sub nsw i64 %indvars.iv.next.1, %wt.sroa.2.0.extract.shift
  %sext52.1 = shl i64 %_24.1.1, 32
  %_23.1.1 = ashr exact i64 %sext52.1, 32
  %_52.1.1 = icmp ugt i64 %_6, %_23.1.1
  br i1 %_52.1.1, label %bb21.1.1, label %panic8

bb21.1.1:                                         ; preds = %bb19.1.1
  %_17.1.1 = getelementptr inbounds nuw i32, ptr %5, i64 %indvars.iv.next.1
  %_16.1.1 = load i32, ptr %_17.1.1, align 4, !noundef !23
  %_22.1.1 = getelementptr inbounds nuw i32, ptr %5, i64 %_23.1.1
  %_21.1.1 = load i32, ptr %_22.1.1, align 4, !noundef !23
  %_19.1.1 = add i32 %_21.1.1, %val.sroa.2.0.extract.trunc
  %x.y.i.1.1 = tail call noundef i32 @llvm.smax.i32(i32 %_16.1.1, i32 %_19.1.1)
  store i32 %x.y.i.1.1, ptr %_17.1.1, align 4
  br label %bb1.loopexit.1

bb1.loopexit.1:                                   ; preds = %bb21.1, %bb21.1.1, %bb11.1
  %exitcond41.1.not = icmp eq i32 %n, 2
  br i1 %exitcond41.1.not, label %bb12, label %panic5.invoke

bb12:                                             ; preds = %bb1.loopexit, %bb1.loopexit.1, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h3edb35d25bf98f9cE.exit"
  %_35.not = icmp eq i32 %W, -1
  br i1 %_35.not, label %panic5.invoke, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h34117bb54cdfefd5E.exit"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h34117bb54cdfefd5E.exit": ; preds = %bb12
  %_26 = getelementptr inbounds nuw i32, ptr %5, i64 %_7
  %_0 = load i32, ptr %_26, align 4, !noundef !23
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %5, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1037
  ret i32 %_0

cleanup.thread:                                   ; preds = %panic8
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb2.i.i.i3.i16

cleanup:                                          ; preds = %panic5.invoke
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br i1 %_8.i.i, label %bb9, label %bb2.i.i.i3.i16

bb2.i.i.i3.i16:                                   ; preds = %cleanup.thread, %cleanup
  %lpad.phi23 = phi { ptr, i32 } [ %lpad.thr_comm, %cleanup.thread ], [ %lpad.thr_comm.split-lp, %cleanup ]
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %5, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1046
  br label %bb9

unreachable:                                      ; preds = %panic8
  unreachable

bb14.lr.ph:                                       ; preds = %bb11.preheader
  %sext = shl i64 %1, 32
  %wide.trip.count = ashr exact i64 %sext, 32
  %indvars.iv.next = add nsw i64 %_7, 1
  %_47.not = icmp eq i32 %W, -1
  br i1 %_47.not, label %panic5.invoke, label %bb19

bb19:                                             ; preds = %bb14.lr.ph
  %_24 = sub i64 %_7, %1
  %sext50 = shl i64 %_24, 32
  %_23 = ashr exact i64 %sext50, 32
  %_52 = icmp ugt i64 %_6, %_23
  br i1 %_52, label %bb21, label %panic8

panic5.invoke:                                    ; preds = %bb14.lr.ph, %bb14.183, %bb14.lr.ph.1, %bb14.1.1, %bb12, %bb1.loopexit.1
  %6 = phi i64 [ 2, %bb1.loopexit.1 ], [ %_7, %bb12 ], [ %_7, %bb14.lr.ph.1 ], [ %indvars.iv.next.1, %bb14.1.1 ], [ %_7, %bb14.lr.ph ], [ %indvars.iv.next, %bb14.183 ]
  %7 = phi i64 [ 2, %bb1.loopexit.1 ], [ %_6, %bb12 ], [ %_6, %bb14.1.1 ], [ %_6, %bb14.lr.ph.1 ], [ %_6, %bb14.183 ], [ %_6, %bb14.lr.ph ]
  %8 = phi ptr [ @alloc_dfef050c8d8a9c0d11faf6997d41f563, %bb1.loopexit.1 ], [ @alloc_14575f03b3f5bb9ec325ea7c37c719ad, %bb12 ], [ @alloc_15d611e86a8a3ec04b4b85fa4a700ae1, %bb14.1.1 ], [ @alloc_15d611e86a8a3ec04b4b85fa4a700ae1, %bb14.lr.ph.1 ], [ @alloc_15d611e86a8a3ec04b4b85fa4a700ae1, %bb14.183 ], [ @alloc_15d611e86a8a3ec04b4b85fa4a700ae1, %bb14.lr.ph ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %6, i64 noundef %7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %8) #21
          to label %panic5.cont unwind label %cleanup

panic5.cont:                                      ; preds = %panic5.invoke
  unreachable

panic8:                                           ; preds = %bb19, %bb19.187, %bb19.1, %bb19.1.1
  %_23.lcssa = phi i64 [ %_23.1, %bb19.1 ], [ %_23.1.1, %bb19.1.1 ], [ %_23, %bb19 ], [ %_23.185, %bb19.187 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_23.lcssa, i64 noundef %_6, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_bd4d7725266ceaad623f5114d068d38d) #21
          to label %unreachable unwind label %cleanup.thread

bb21:                                             ; preds = %bb19
  %_17 = getelementptr inbounds nuw i32, ptr %5, i64 %_7
  %_16 = load i32, ptr %_17, align 4, !noundef !23
  %_22 = getelementptr inbounds nuw i32, ptr %5, i64 %_23
  %_21 = load i32, ptr %_22, align 4, !noundef !23
  %_19 = add i32 %_21, %val.sroa.0.0.extract.trunc
  %x.y.i = tail call noundef i32 @llvm.smax.i32(i32 %_16, i32 %_19)
  store i32 %x.y.i, ptr %_17, align 4
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb1.loopexit, label %bb14.183

bb14.183:                                         ; preds = %bb21
  %_47.182 = icmp ugt i64 %_6, %indvars.iv.next
  br i1 %_47.182, label %bb19.187, label %panic5.invoke

bb19.187:                                         ; preds = %bb14.183
  %_24.184 = sub i64 %indvars.iv.next, %1
  %sext50.1 = shl i64 %_24.184, 32
  %_23.185 = ashr exact i64 %sext50.1, 32
  %_52.186 = icmp ugt i64 %_6, %_23.185
  br i1 %_52.186, label %bb21.194, label %panic8

bb21.194:                                         ; preds = %bb19.187
  %_17.188 = getelementptr inbounds nuw i32, ptr %5, i64 %indvars.iv.next
  %_16.189 = load i32, ptr %_17.188, align 4, !noundef !23
  %_22.190 = getelementptr inbounds nuw i32, ptr %5, i64 %_23.185
  %_21.191 = load i32, ptr %_22.190, align 4, !noundef !23
  %_19.192 = add i32 %_21.191, %val.sroa.0.0.extract.trunc
  %x.y.i.193 = tail call noundef i32 @llvm.smax.i32(i32 %_16.189, i32 %_19.192)
  store i32 %x.y.i.193, ptr %_17.188, align 4
  br label %bb1.loopexit

bb9:                                              ; preds = %bb2.i.i.i3.i16, %cleanup
  %lpad.phi24 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %cleanup ], [ %lpad.phi23, %bb2.i.i.i3.i16 ]
  resume { ptr, i32 } %lpad.phi24
}
