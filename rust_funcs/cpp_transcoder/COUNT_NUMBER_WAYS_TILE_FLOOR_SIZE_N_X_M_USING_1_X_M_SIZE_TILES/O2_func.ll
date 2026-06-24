define noundef i32 @f_gold(i32 noundef %n, i32 noundef %m) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_5 = sext i32 %n to i64
  %_4 = add nsw i64 %_5, 1
  %_21.0.i.i.i = shl nsw i64 %_4, 2
  %_21.1.i.i.i = icmp ugt i64 %_4, 4611686018427387903
  %_26.i.i.i = icmp ugt i64 %_21.0.i.i.i, 9223372036854775804
  %or.cond.i.i.i = or i1 %_21.1.i.i.i, %_26.i.i.i
  br i1 %or.cond.i.i.i, label %bb14.i, label %bb17.i.i, !prof !339

bb17.i.i:                                         ; preds = %start
  %_8.i.i = icmp eq i64 %_4, 0
  br i1 %_8.i.i, label %panic, label %bb3.i3.i

bb3.i3.i:                                         ; preds = %bb17.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !1031
; call __rustc::__rust_alloc_zeroed
  %0 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1031
  %1 = icmp eq ptr %0, null
  br i1 %1, label %bb14.i, label %bb15

bb14.i:                                           ; preds = %bb3.i3.i, %start
  %_16.sroa.4.0.ph.i = phi i64 [ 4, %bb3.i3.i ], [ 0, %start ]
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_16.sroa.4.0.ph.i, i64 %_21.0.i.i.i) #21, !noalias !1036
  unreachable

bb15:                                             ; preds = %bb3.i3.i
  store i32 0, ptr %0, align 4
  %_0.i.not.i37 = icmp slt i32 %n, 1
  br i1 %_0.i.not.i37, label %bb4, label %bb2.i

panic:                                            ; preds = %bb17.i.i
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_14a46129c3aee113ab03ed3784fc8805) #21
  unreachable

cleanup.thread:                                   ; preds = %panic6.invoke
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb2.i.i.i3.i

cleanup:                                          ; preds = %panic3.invoke
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb2.i.i.i3.i

bb2.i.i.i3.i:                                     ; preds = %cleanup, %cleanup.thread
  %lpad.phi21 = phi { ptr, i32 } [ %lpad.thr_comm, %cleanup.thread ], [ %lpad.thr_comm.split-lp, %cleanup ]
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1037
  resume { ptr, i32 } %lpad.phi21

bb2.i:                                            ; preds = %bb15, %bb10
  %iter.sroa.0.038 = phi i32 [ %spec.select, %bb10 ], [ 1, %bb15 ]
  %_0.i3.i = icmp sge i32 %iter.sroa.0.038, %n
  %not._0.i3.i = xor i1 %_0.i3.i, true
  %2 = zext i1 %not._0.i3.i to i32
  %spec.select = add nuw nsw i32 %iter.sroa.0.038, %2
  %_13 = icmp sgt i32 %iter.sroa.0.038, %m
  br i1 %_13, label %bb5, label %bb6

bb4:                                              ; preds = %bb10, %bb15
  %_40.not = icmp eq i32 %n, -1
  br i1 %_40.not, label %panic6.invoke, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h70458dc47297d45cE.exit13"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h70458dc47297d45cE.exit13": ; preds = %bb4
  %_29 = getelementptr inbounds nuw i32, ptr %0, i64 %_5
  %_0 = load i32, ptr %_29, align 4, !noundef !23
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1046
  ret i32 %_0

bb6:                                              ; preds = %bb2.i
  %_24 = icmp slt i32 %iter.sroa.0.038, %m
  %_26 = zext nneg i32 %iter.sroa.0.038 to i64
  %_62 = icmp ugt i64 %_4, %_26
  br i1 %_24, label %bb7, label %bb8

bb5:                                              ; preds = %bb2.i
  %_17 = add nsw i32 %iter.sroa.0.038, -1
  %_16 = sext i32 %_17 to i64
  %_45 = icmp ugt i64 %_4, %_16
  br i1 %_45, label %bb18, label %panic6.invoke

bb8:                                              ; preds = %bb6
  br i1 %_62, label %bb22, label %panic3.invoke

bb7:                                              ; preds = %bb6
  br i1 %_62, label %bb21, label %panic3.invoke

bb22:                                             ; preds = %bb8
  %_27 = getelementptr inbounds nuw i32, ptr %0, i64 %_26
  store i32 2, ptr %_27, align 4
  br label %bb10

bb21:                                             ; preds = %bb7
  %_25 = getelementptr inbounds nuw i32, ptr %0, i64 %_26
  store i32 1, ptr %_25, align 4
  br label %bb10

panic3.invoke:                                    ; preds = %bb7, %bb8
  %3 = phi ptr [ @alloc_31b48e1c984a6494c200a9a6782784cc, %bb8 ], [ @alloc_14538fbcdf450b64f6a53edb16050568, %bb7 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_26, i64 noundef %_4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #21
          to label %panic3.cont unwind label %cleanup

panic3.cont:                                      ; preds = %panic3.invoke
  unreachable

bb10:                                             ; preds = %bb22, %bb21, %bb20
  %_0.i.not.i = icmp sgt i32 %spec.select, %n
  %or.cond = select i1 %_0.i3.i, i1 true, i1 %_0.i.not.i
  br i1 %or.cond, label %bb4, label %bb2.i

bb18:                                             ; preds = %bb5
  %_15 = getelementptr inbounds nuw i32, ptr %0, i64 %_16
  %_14 = load i32, ptr %_15, align 4, !noundef !23
  %_21 = sub i32 %iter.sroa.0.038, %m
  %_20 = sext i32 %_21 to i64
  %_50 = icmp ugt i64 %_4, %_20
  br i1 %_50, label %bb19, label %panic6.invoke

bb19:                                             ; preds = %bb18
  %_23 = zext nneg i32 %iter.sroa.0.038 to i64
  %_56 = icmp ugt i64 %_4, %_23
  br i1 %_56, label %bb20, label %panic6.invoke

bb20:                                             ; preds = %bb19
  %_19 = getelementptr inbounds nuw i32, ptr %0, i64 %_20
  %_18 = load i32, ptr %_19, align 4, !noundef !23
  %_22 = getelementptr inbounds nuw i32, ptr %0, i64 %_23
  %4 = add i32 %_18, %_14
  store i32 %4, ptr %_22, align 4
  br label %bb10

panic6.invoke:                                    ; preds = %bb19, %bb18, %bb5, %bb4
  %5 = phi i64 [ %_5, %bb4 ], [ %_16, %bb5 ], [ %_20, %bb18 ], [ %_23, %bb19 ]
  %6 = phi ptr [ @alloc_fd9f5bfefe8a200a3760fb078c4d61eb, %bb4 ], [ @alloc_ed0aefe4a132ffa53d7c51fe8bc5d698, %bb5 ], [ @alloc_b729dbd7cffee7e7e1aa120685b6e497, %bb18 ], [ @alloc_fccef0c9d4bb41cf2f18e7849c14dd63, %bb19 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %5, i64 noundef %_4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %6) #21
          to label %panic6.cont unwind label %cleanup.thread

panic6.cont:                                      ; preds = %panic6.invoke
  unreachable
}
