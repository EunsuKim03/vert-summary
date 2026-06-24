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
  br i1 %1, label %bb14.i, label %bb16

bb14.i:                                           ; preds = %bb3.i3.i, %start
  %_16.sroa.4.0.ph.i = phi i64 [ 4, %bb3.i3.i ], [ 0, %start ]
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_16.sroa.4.0.ph.i, i64 %_21.0.i.i.i) #21, !noalias !1036
  unreachable

bb16:                                             ; preds = %bb3.i3.i
  store i32 0, ptr %0, align 4
  %_0.i.not.i38 = icmp slt i32 %n, 1
  br i1 %_0.i.not.i38, label %bb4, label %bb2.i.lr.ph

bb2.i.lr.ph:                                      ; preds = %bb16
  %_52 = icmp samesign ugt i64 %_3, 4
  %_17 = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb2.i

panic:                                            ; preds = %bb17.i.i
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_108377a31224447ec9268c23b428d60d) #21
  unreachable

cleanup.thread:                                   ; preds = %panic6.invoke
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb2.i.i.i3.i

cleanup:                                          ; preds = %panic5.invoke
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb2.i.i.i3.i

bb2.i.i.i3.i:                                     ; preds = %cleanup, %cleanup.thread
  %lpad.phi21 = phi { ptr, i32 } [ %lpad.thr_comm, %cleanup.thread ], [ %lpad.thr_comm.split-lp, %cleanup ]
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1037
  resume { ptr, i32 } %lpad.phi21

bb2.i:                                            ; preds = %bb2.i.lr.ph, %bb11
  %iter.sroa.0.039 = phi i32 [ 1, %bb2.i.lr.ph ], [ %spec.select, %bb11 ]
  %_0.i3.i = icmp sge i32 %iter.sroa.0.039, %n
  %not._0.i3.i = xor i1 %_0.i3.i, true
  %2 = zext i1 %not._0.i3.i to i32
  %spec.select = add nuw nsw i32 %iter.sroa.0.039, %2
  %3 = add nsw i32 %iter.sroa.0.039, -1
  %or.cond = icmp samesign ult i32 %iter.sroa.0.039, 4
  br i1 %or.cond, label %bb6, label %bb7

bb4:                                              ; preds = %bb11, %bb16
  %_40.not = icmp eq i32 %n, -1
  br i1 %_40.not, label %panic6.invoke, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h61601c8547d244c7E.exit13"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h61601c8547d244c7E.exit13": ; preds = %bb4
  %_29 = getelementptr inbounds nuw i32, ptr %0, i64 %_4
  %_0 = load i32, ptr %_29, align 4, !noundef !23
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1046
  ret i32 %_0

bb7:                                              ; preds = %bb2.i
  %_16 = icmp eq i32 %iter.sroa.0.039, 4
  br i1 %_16, label %bb8, label %bb9

bb6:                                              ; preds = %bb2.i
  %_15 = zext nneg i32 %iter.sroa.0.039 to i64
  %_46 = icmp ugt i64 %_3, %_15
  br i1 %_46, label %bb19, label %panic6.invoke

bb9:                                              ; preds = %bb7
  %_21 = sext i32 %3 to i64
  %_57 = icmp ugt i64 %_3, %_21
  br i1 %_57, label %bb21, label %panic5.invoke

bb8:                                              ; preds = %bb7
  br i1 %_52, label %bb20, label %panic5.invoke

bb21:                                             ; preds = %bb9
  %_20 = getelementptr inbounds nuw i32, ptr %0, i64 %_21
  %_19 = load i32, ptr %_20, align 4, !noundef !23
  %_26 = add nsw i32 %iter.sroa.0.039, -4
  %_25 = sext i32 %_26 to i64
  %_62 = icmp ugt i64 %_3, %_25
  br i1 %_62, label %bb22, label %panic6.invoke

bb22:                                             ; preds = %bb21
  %_28 = zext nneg i32 %iter.sroa.0.039 to i64
  %_68 = icmp ugt i64 %_3, %_28
  br i1 %_68, label %bb23, label %panic6.invoke

bb23:                                             ; preds = %bb22
  %_24 = getelementptr inbounds nuw i32, ptr %0, i64 %_25
  %_23 = load i32, ptr %_24, align 4, !noundef !23
  %_27 = getelementptr inbounds nuw i32, ptr %0, i64 %_28
  %4 = add i32 %_23, %_19
  store i32 %4, ptr %_27, align 4
  br label %bb11

bb20:                                             ; preds = %bb8
  store i32 2, ptr %_17, align 4
  br label %bb11

panic5.invoke:                                    ; preds = %bb8, %bb9
  %5 = phi i64 [ %_21, %bb9 ], [ 4, %bb8 ]
  %6 = phi ptr [ @alloc_58bb8a434aae181adef8df54f7964574, %bb9 ], [ @alloc_73f8f07d6cb4b4e0584e91af0bdd7734, %bb8 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %5, i64 noundef %_3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %6) #21
          to label %panic5.cont unwind label %cleanup

panic5.cont:                                      ; preds = %panic5.invoke
  unreachable

bb11:                                             ; preds = %bb23, %bb20, %bb19
  %_0.i.not.i = icmp sgt i32 %spec.select, %n
  %or.cond34 = select i1 %_0.i3.i, i1 true, i1 %_0.i.not.i
  br i1 %or.cond34, label %bb4, label %bb2.i

bb19:                                             ; preds = %bb6
  %_14 = getelementptr inbounds nuw i32, ptr %0, i64 %_15
  store i32 1, ptr %_14, align 4
  br label %bb11

panic6.invoke:                                    ; preds = %bb6, %bb22, %bb21, %bb4
  %7 = phi i64 [ %_4, %bb4 ], [ %_25, %bb21 ], [ %_28, %bb22 ], [ %_15, %bb6 ]
  %8 = phi ptr [ @alloc_fda3d9cbb8bb275936aa2e1b81db3d92, %bb4 ], [ @alloc_68698a9431718c3fcf4c37a542c60448, %bb21 ], [ @alloc_78b764300c18f028af5e4e4c6f887669, %bb22 ], [ @alloc_80feb50537df9cc89364164642b2cbb6, %bb6 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %7, i64 noundef %_3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %8) #21
          to label %panic6.cont unwind label %cleanup.thread

panic6.cont:                                      ; preds = %panic6.invoke
  unreachable
}
