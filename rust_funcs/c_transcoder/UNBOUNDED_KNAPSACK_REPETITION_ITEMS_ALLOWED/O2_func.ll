define noundef i32 @f_gold(i32 noundef %W, i32 noundef %n, i64 %0, i64 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
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
  br i1 %_8.i.i, label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h7d2f39313fef1ff3E.exit", label %bb3.i3.i

bb3.i3.i:                                         ; preds = %bb17.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !1031
; call __rustc::__rust_alloc_zeroed
  %2 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1031
  %3 = icmp eq ptr %2, null
  br i1 %3, label %bb14.i, label %bb10.i.i

bb10.i.i:                                         ; preds = %bb3.i3.i
  %4 = ptrtoint ptr %2 to i64
  br label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h7d2f39313fef1ff3E.exit"

bb14.i:                                           ; preds = %bb3.i3.i, %start
  %_16.sroa.4.0.ph.i = phi i64 [ 4, %bb3.i3.i ], [ 0, %start ]
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_16.sroa.4.0.ph.i, i64 %_21.0.i.i.i) #21, !noalias !1036
  unreachable

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h7d2f39313fef1ff3E.exit": ; preds = %bb17.i.i, %bb10.i.i
  %_16.sroa.10.0.i = phi i64 [ %4, %bb10.i.i ], [ 4, %bb17.i.i ]
  %5 = inttoptr i64 %_16.sroa.10.0.i to ptr
  %_0.i.not.i36 = icmp slt i32 %W, 0
  br i1 %_0.i.not.i36, label %bb4, label %bb2.i.lr.ph

bb2.i.lr.ph:                                      ; preds = %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h7d2f39313fef1ff3E.exit"
  %_3734 = icmp sgt i32 %n, 0
  %exitcond44.not = icmp eq i32 %n, 1
  %exitcond44.1.not = icmp eq i32 %n, 2
  br label %bb2.i

bb1.loopexit:                                     ; preds = %bb11, %bb11.1, %bb2.i
  %_0.i.not.i = icmp sgt i32 %spec.select, %W
  %or.cond = select i1 %_0.i3.i, i1 true, i1 %_0.i.not.i
  br i1 %or.cond, label %bb4, label %bb2.i

bb2.i:                                            ; preds = %bb2.i.lr.ph, %bb1.loopexit
  %iter.sroa.0.037 = phi i32 [ 0, %bb2.i.lr.ph ], [ %spec.select, %bb1.loopexit ]
  %_0.i3.i = icmp sge i32 %iter.sroa.0.037, %W
  %not._0.i3.i = xor i1 %_0.i3.i, true
  %6 = zext i1 %not._0.i3.i to i32
  %spec.select = add nuw nsw i32 %iter.sroa.0.037, %6
  br i1 %_3734, label %bb18.lr.ph, label %bb1.loopexit

bb18.lr.ph:                                       ; preds = %bb2.i
  %_23 = zext nneg i32 %iter.sroa.0.037 to i64
  %_48 = icmp ugt i64 %_6, %_23
  %_22 = getelementptr inbounds nuw i32, ptr %5, i64 %_23
  %_16.not = icmp slt i32 %iter.sroa.0.037, %wt.sroa.0.0.extract.trunc
  br i1 %_16.not, label %bb11, label %bb7

cleanup.thread:                                   ; preds = %panic5
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb2.i.i.i3.i

cleanup:                                          ; preds = %panic3.invoke
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br i1 %_8.i.i, label %bb14, label %bb2.i.i.i3.i

bb2.i.i.i3.i:                                     ; preds = %cleanup.thread, %cleanup
  %lpad.phi24 = phi { ptr, i32 } [ %lpad.thr_comm, %cleanup.thread ], [ %lpad.thr_comm.split-lp, %cleanup ]
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %5, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1037
  br label %bb14

bb4:                                              ; preds = %bb1.loopexit, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h7d2f39313fef1ff3E.exit"
  %_36.not = icmp eq i32 %W, -1
  br i1 %_36.not, label %panic3.invoke, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hc400334c9cc24624E.exit18"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hc400334c9cc24624E.exit18": ; preds = %bb4
  %_31 = getelementptr inbounds nuw i32, ptr %5, i64 %_7
  %_0 = load i32, ptr %_31, align 4, !noundef !23
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %5, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1046
  ret i32 %_0

unreachable:                                      ; preds = %panic5
  unreachable

bb11:                                             ; preds = %bb24, %bb18.lr.ph
  br i1 %exitcond44.not, label %bb1.loopexit, label %bb18.1

bb18.1:                                           ; preds = %bb11
  %_16.not.1 = icmp slt i32 %iter.sroa.0.037, %wt.sroa.2.0.extract.trunc
  br i1 %_16.not.1, label %bb11.1, label %bb7.1

bb7.1:                                            ; preds = %bb18.1
  br i1 %_48, label %bb22.1, label %panic3.invoke

bb22.1:                                           ; preds = %bb7.1
  %_28.1 = sub i32 %iter.sroa.0.037, %wt.sroa.2.0.extract.trunc
  %_27.1 = sext i32 %_28.1 to i64
  %_53.1 = icmp ugt i64 %_6, %_27.1
  br i1 %_53.1, label %bb24.1, label %panic5

bb24.1:                                           ; preds = %bb22.1
  %_21.1 = load i32, ptr %_22, align 4, !noundef !23
  %_26.1 = getelementptr inbounds nuw i32, ptr %5, i64 %_27.1
  %_25.1 = load i32, ptr %_26.1, align 4, !noundef !23
  %_24.1 = add i32 %_25.1, %val.sroa.2.0.extract.trunc
  %_0.sroa.0.0.i19.1 = tail call noundef i32 @llvm.smax.i32(i32 %_24.1, i32 %_21.1)
  store i32 %_0.sroa.0.0.i19.1, ptr %_22, align 4
  br label %bb11.1

bb11.1:                                           ; preds = %bb24.1, %bb18.1
  br i1 %exitcond44.1.not, label %bb1.loopexit, label %panic3.invoke

bb7:                                              ; preds = %bb18.lr.ph
  br i1 %_48, label %bb22, label %panic3.invoke

bb22:                                             ; preds = %bb7
  %_28 = sub i32 %iter.sroa.0.037, %wt.sroa.0.0.extract.trunc
  %_27 = sext i32 %_28 to i64
  %_53 = icmp ugt i64 %_6, %_27
  br i1 %_53, label %bb24, label %panic5

panic3.invoke:                                    ; preds = %bb7, %bb7.1, %bb11.1, %bb4
  %7 = phi i64 [ %_7, %bb4 ], [ 2, %bb11.1 ], [ %_23, %bb7.1 ], [ %_23, %bb7 ]
  %8 = phi i64 [ %_6, %bb4 ], [ 2, %bb11.1 ], [ %_6, %bb7.1 ], [ %_6, %bb7 ]
  %9 = phi ptr [ @alloc_ae2e40f600ba41e76725c33e606c7b42, %bb4 ], [ @alloc_07920c76a589c9a658065d174f84d27e, %bb11.1 ], [ @alloc_a577d4d519c28f33df5a2146cf756167, %bb7.1 ], [ @alloc_a577d4d519c28f33df5a2146cf756167, %bb7 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %7, i64 noundef %8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %9) #21
          to label %panic3.cont unwind label %cleanup

panic3.cont:                                      ; preds = %panic3.invoke
  unreachable

panic5:                                           ; preds = %bb22.1, %bb22
  %_27.lcssa.ph = phi i64 [ %_27.1, %bb22.1 ], [ %_27, %bb22 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_27.lcssa.ph, i64 noundef %_6, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_f012d88844128352c32bf4b42595e02d) #21
          to label %unreachable unwind label %cleanup.thread

bb24:                                             ; preds = %bb22
  %_21 = load i32, ptr %_22, align 4, !noundef !23
  %_26 = getelementptr inbounds nuw i32, ptr %5, i64 %_27
  %_25 = load i32, ptr %_26, align 4, !noundef !23
  %_24 = add i32 %_25, %val.sroa.0.0.extract.trunc
  %_0.sroa.0.0.i19 = tail call noundef i32 @llvm.smax.i32(i32 %_24, i32 %_21)
  store i32 %_0.sroa.0.0.i19, ptr %_22, align 4
  br label %bb11

bb14:                                             ; preds = %bb2.i.i.i3.i, %cleanup
  %lpad.phi25 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %cleanup ], [ %lpad.phi24, %bb2.i.i.i3.i ]
  resume { ptr, i32 } %lpad.phi25
}
