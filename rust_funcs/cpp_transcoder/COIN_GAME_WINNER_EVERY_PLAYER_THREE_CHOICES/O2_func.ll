define noundef i32 @f_gold(i32 noundef %x, i32 noundef %y, i32 noundef %n) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_6 = sext i32 %n to i64
  %_5 = add nsw i64 %_6, 1
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
  %0 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1031
  %1 = icmp eq ptr %0, null
  br i1 %1, label %bb14.i, label %bb27

bb14.i:                                           ; preds = %bb3.i3.i, %start
  %_16.sroa.4.0.ph.i = phi i64 [ 4, %bb3.i3.i ], [ 0, %start ]
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_16.sroa.4.0.ph.i, i64 %_21.0.i.i.i) #21, !noalias !1036
  unreachable

bb27:                                             ; preds = %bb3.i3.i
  store i32 0, ptr %0, align 4
  %_58.not = icmp eq i32 %n, 0
  br i1 %_58.not, label %panic9.invoke, label %bb28

panic:                                            ; preds = %bb17.i.i
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_7032120f5d7a13ccb59140206a2d3209) #21
  unreachable

cleanup.thread:                                   ; preds = %panic9.invoke
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb2.i.i.i3.i

cleanup:                                          ; preds = %panic6.invoke
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb2.i.i.i3.i

bb2.i.i.i3.i:                                     ; preds = %cleanup, %cleanup.thread
  %lpad.phi26 = phi { ptr, i32 } [ %lpad.thr_comm, %cleanup.thread ], [ %lpad.thr_comm.split-lp, %cleanup ]
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1037
  resume { ptr, i32 } %lpad.phi26

bb28:                                             ; preds = %bb27
  %_8 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %_8, align 4
  %_0.i.not.i45 = icmp slt i32 %n, 2
  br i1 %_0.i.not.i45, label %bb4, label %bb2.i.lr.ph

bb2.i.lr.ph:                                      ; preds = %bb28
  %_26 = sitofp i32 %x to float
  %_32 = sext i32 %x to i64
  %_36 = sitofp i32 %y to float
  %_42 = sext i32 %y to i64
  br label %bb2.i

bb2.i:                                            ; preds = %bb2.i.lr.ph, %bb22
  %iter.sroa.0.046 = phi i32 [ 2, %bb2.i.lr.ph ], [ %spec.select, %bb22 ]
  %_0.i3.i = icmp sge i32 %iter.sroa.0.046, %n
  %not._0.i3.i = xor i1 %_0.i3.i, true
  %2 = zext i1 %not._0.i3.i to i32
  %spec.select = add nuw nsw i32 %iter.sroa.0.046, %2
  %_17 = uitofp nneg i32 %iter.sroa.0.046 to float
  %_16 = fadd float %_17, -1.000000e+00
  %_15 = fcmp ult float %_16, 0.000000e+00
  br i1 %_15, label %bb9, label %bb5

bb4:                                              ; preds = %bb22, %bb28
  %_63.not = icmp eq i32 %n, -1
  br i1 %_63.not, label %panic9.invoke, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h5438af016523f13eE.exit16"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h5438af016523f13eE.exit16": ; preds = %bb4
  %_46 = getelementptr inbounds nuw i32, ptr %0, i64 %_6
  %_0 = load i32, ptr %_46, align 4, !noundef !23
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1046
  ret i32 %_0

bb5:                                              ; preds = %bb2.i
  %_22 = zext nneg i32 %iter.sroa.0.046 to i64
  %_21 = add nsw i64 %_22, -1
  %_68 = icmp ult i64 %_21, %_5
  br i1 %_68, label %bb31, label %panic9.invoke

bb9:                                              ; preds = %bb31, %bb2.i
  %_24 = fcmp ult float %_17, %_26
  br i1 %_24, label %bb14, label %bb10

bb31:                                             ; preds = %bb5
  %_20 = getelementptr inbounds nuw i32, ptr %0, i64 %_21
  %_19 = load i32, ptr %_20, align 4, !noundef !23
  %_18 = icmp eq i32 %_19, 0
  br i1 %_18, label %bb6, label %bb9

bb6:                                              ; preds = %bb31
  %_74 = icmp ugt i64 %_5, %_22
  br i1 %_74, label %bb22, label %panic9.invoke

bb10:                                             ; preds = %bb9
  %_31 = zext nneg i32 %iter.sroa.0.046 to i64
  %_30 = sub nsw i64 %_31, %_32
  %_79 = icmp ult i64 %_30, %_5
  br i1 %_79, label %bb33, label %panic6.invoke

bb14:                                             ; preds = %bb33, %bb9
  %_34 = fcmp ult float %_17, %_36
  %.pre = zext nneg i32 %iter.sroa.0.046 to i64
  br i1 %_34, label %bb19, label %bb15

bb33:                                             ; preds = %bb10
  %_29 = getelementptr inbounds nuw i32, ptr %0, i64 %_30
  %_28 = load i32, ptr %_29, align 4, !noundef !23
  %_27 = icmp eq i32 %_28, 0
  br i1 %_27, label %bb11, label %bb14

bb11:                                             ; preds = %bb33
  %_85 = icmp ugt i64 %_5, %_31
  br i1 %_85, label %bb22, label %panic9.invoke

bb15:                                             ; preds = %bb14
  %_40 = sub nsw i64 %.pre, %_42
  %_90 = icmp ult i64 %_40, %_5
  br i1 %_90, label %bb35, label %panic6.invoke

bb19:                                             ; preds = %bb14, %bb35
  %_102 = icmp ugt i64 %_5, %.pre
  br i1 %_102, label %bb22, label %panic6.invoke

bb35:                                             ; preds = %bb15
  %_39 = getelementptr inbounds nuw i32, ptr %0, i64 %_40
  %_38 = load i32, ptr %_39, align 4, !noundef !23
  %_37 = icmp eq i32 %_38, 0
  br i1 %_37, label %bb16, label %bb19

bb16:                                             ; preds = %bb35
  %_96 = icmp ugt i64 %_5, %.pre
  br i1 %_96, label %bb22, label %panic9.invoke

panic6.invoke:                                    ; preds = %bb19, %bb15, %bb10
  %3 = phi i64 [ %_30, %bb10 ], [ %_40, %bb15 ], [ %.pre, %bb19 ]
  %4 = phi ptr [ @alloc_67e6f72d2eef534837bbf578e5433ee7, %bb10 ], [ @alloc_37744507543f7de5f4362ea07922c49c, %bb15 ], [ @alloc_eec447e33fde37e638221ce640bd4f10, %bb19 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %3, i64 noundef %_5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) #21
          to label %panic6.cont unwind label %cleanup

panic6.cont:                                      ; preds = %panic6.invoke
  unreachable

bb22:                                             ; preds = %bb11, %bb16, %bb19, %bb6
  %_31.sink = phi i64 [ %_22, %bb6 ], [ %.pre, %bb19 ], [ %.pre, %bb16 ], [ %_31, %bb11 ]
  %.sink = phi i32 [ 1, %bb6 ], [ 0, %bb19 ], [ 1, %bb16 ], [ 1, %bb11 ]
  %_33 = getelementptr inbounds nuw i32, ptr %0, i64 %_31.sink
  store i32 %.sink, ptr %_33, align 4
  %_0.i.not.i = icmp sgt i32 %spec.select, %n
  %or.cond = select i1 %_0.i3.i, i1 true, i1 %_0.i.not.i
  br i1 %or.cond, label %bb4, label %bb2.i

panic9.invoke:                                    ; preds = %bb6, %bb11, %bb16, %bb5, %bb4, %bb27
  %5 = phi i64 [ 1, %bb27 ], [ %_6, %bb4 ], [ %_21, %bb5 ], [ %.pre, %bb16 ], [ %_31, %bb11 ], [ %_22, %bb6 ]
  %6 = phi ptr [ @alloc_2a34a89fbc0dc9bd157c70bba32b5e7d, %bb27 ], [ @alloc_faae14e7cb4fa73bebacdf3220fac6e9, %bb4 ], [ @alloc_d6e1d1874f68c09e2945e2d183e6b384, %bb5 ], [ @alloc_84f5d008c691d8009a6868da91ab8aaf, %bb16 ], [ @alloc_3e432f94d1533f59515e8afbbe395109, %bb11 ], [ @alloc_9c790e4c77bbbd7737acbaf19f0cde73, %bb6 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %5, i64 noundef %_5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %6) #21
          to label %panic9.cont unwind label %cleanup.thread

panic9.cont:                                      ; preds = %panic9.invoke
  unreachable
}
