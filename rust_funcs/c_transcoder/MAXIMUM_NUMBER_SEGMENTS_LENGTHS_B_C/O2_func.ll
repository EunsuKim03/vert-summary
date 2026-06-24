define noundef i32 @f_gold(i32 noundef %n, i32 noundef %a, i32 noundef %b, i32 noundef %c) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_7 = sext i32 %n to i64
  %_6 = add nsw i64 %_7, 1
  %_21.0.i.i.i.i = shl nsw i64 %_6, 2
  %_21.1.i.i.i.i = icmp ugt i64 %_6, 4611686018427387903
  %_26.i.i.i.i = icmp ugt i64 %_21.0.i.i.i.i, 9223372036854775804
  %or.cond.i.i.i.i = or i1 %_21.1.i.i.i.i, %_26.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %bb3.i.i, label %bb17.i.i.i, !prof !339

bb17.i.i.i:                                       ; preds = %start
  %_8.i.i.i = icmp eq i64 %_6, 0
  br i1 %_8.i.i.i, label %panic, label %bb3.i.i.i

bb3.i.i.i:                                        ; preds = %bb17.i.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !1031
; call __rustc::__rust_alloc
  %0 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1031
  %1 = icmp eq ptr %0, null
  br i1 %1, label %bb3.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8cb3c9c926676524E.exit.i.i"

bb3.i.i:                                          ; preds = %bb3.i.i.i, %start
  %_4.sroa.4.0.ph.i.i = phi i64 [ 4, %bb3.i.i.i ], [ 0, %start ]
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_4.sroa.4.0.ph.i.i, i64 %_21.0.i.i.i.i) #21, !noalias !1036
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8cb3c9c926676524E.exit.i.i": ; preds = %bb3.i.i.i
  %_2415.i.not.i = icmp eq i32 %n, 0
  br i1 %_2415.i.not.i, label %bb4.thread, label %bb15

bb4.thread:                                       ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8cb3c9c926676524E.exit.i.i"
  store i32 0, ptr %0, align 4
  br label %bb22

bb15:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8cb3c9c926676524E.exit.i.i"
  %2 = add nsw i64 %_21.0.i.i.i.i, -4
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %0, i8 -1, i64 %2, i1 false), !noalias !1037
  %3 = getelementptr i8, ptr %0, i64 %_21.0.i.i.i.i
  %scevgep.i.i = getelementptr i8, ptr %3, i64 -4
  store i32 -1, ptr %scevgep.i.i, align 4, !noalias !1037
  store i32 0, ptr %0, align 4
  %_5042 = icmp sgt i32 %n, 0
  br i1 %_5042, label %bb3.preheader, label %bb4

bb3.preheader:                                    ; preds = %bb15
  %wide.trip.count = zext nneg i32 %n to i64
  br label %bb3

panic:                                            ; preds = %bb17.i.i.i
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_2003974181c9866eeed3c1787bc30a41) #21
  unreachable

cleanup:                                          ; preds = %panic10.invoke
  %4 = landingpad { ptr, i32 }
          cleanup
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef %_21.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1040
  resume { ptr, i32 } %4

bb3:                                              ; preds = %bb3.preheader, %bb10
  %indvars.iv51 = phi i64 [ 0, %bb3.preheader ], [ %indvars.iv.next52, %bb10 ]
  %exitcond.not = icmp eq i64 %indvars.iv51, %_6
  br i1 %exitcond.not, label %panic10.invoke, label %bb21

bb4:                                              ; preds = %bb10, %bb15
  %_66.not = icmp eq i32 %n, -1
  br i1 %_66.not, label %panic10.invoke, label %bb22

bb22:                                             ; preds = %bb4.thread, %bb4
  %_43 = getelementptr inbounds nuw i32, ptr %0, i64 %_7
  %_0 = load i32, ptr %_43, align 4, !noundef !23
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef %_21.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1049
  ret i32 %_0

bb21:                                             ; preds = %bb3
  %_14 = getelementptr inbounds nuw i32, ptr %0, i64 %indvars.iv51
  %_13 = load i32, ptr %_14, align 4, !noundef !23
  %_12.not = icmp eq i32 %_13, -1
  br i1 %_12.not, label %bb10, label %bb23

bb10:                                             ; preds = %bb21, %bb31
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1
  %exitcond56.not = icmp eq i64 %indvars.iv.next52, %wide.trip.count
  br i1 %exitcond56.not, label %bb4, label %bb3

bb23:                                             ; preds = %bb21
  %5 = trunc nuw nsw i64 %indvars.iv51 to i32
  %_23 = add i32 %a, %5
  %_22 = sext i32 %_23 to i64
  %_76 = icmp ugt i64 %_6, %_22
  br i1 %_76, label %bb26, label %panic10.invoke

bb26:                                             ; preds = %bb23
  %_21 = getelementptr inbounds nuw i32, ptr %0, i64 %_22
  %_20 = load i32, ptr %_21, align 4, !noundef !23
  %_19 = add i32 %_20, 1
  %_0.sroa.0.0.i = tail call noundef i32 @llvm.smax.i32(i32 %_19, i32 %_13)
  store i32 %_0.sroa.0.0.i, ptr %_21, align 4
  %_32 = add i32 %b, %5
  %_31 = sext i32 %_32 to i64
  %_92 = icmp ugt i64 %_6, %_31
  br i1 %_92, label %bb29, label %panic10.invoke

bb29:                                             ; preds = %bb26
  %_26 = load i32, ptr %_14, align 4, !noundef !23
  %_30 = getelementptr inbounds nuw i32, ptr %0, i64 %_31
  %_29 = load i32, ptr %_30, align 4, !noundef !23
  %_28 = add i32 %_29, 1
  %_0.sroa.0.0.i19 = tail call noundef i32 @llvm.smax.i32(i32 %_28, i32 %_26)
  store i32 %_0.sroa.0.0.i19, ptr %_30, align 4
  %_41 = add i32 %c, %5
  %_40 = sext i32 %_41 to i64
  %_108 = icmp ugt i64 %_6, %_40
  br i1 %_108, label %bb31, label %panic10.invoke

panic10.invoke:                                   ; preds = %bb29, %bb26, %bb23, %bb3, %bb4
  %6 = phi i64 [ %_7, %bb4 ], [ %_6, %bb3 ], [ %_22, %bb23 ], [ %_31, %bb26 ], [ %_40, %bb29 ]
  %7 = phi ptr [ @alloc_fe1a27f7b4eaca354eb9ac3f4f408432, %bb4 ], [ @alloc_6034a038965d58ecb9ca78594a09c562, %bb3 ], [ @alloc_c12d4808943bee0749b5f51b9dc956d0, %bb23 ], [ @alloc_2a761fed099a947291cab6730ee7b80e, %bb26 ], [ @alloc_efc831102a8895606078422a5b1c4e03, %bb29 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %6, i64 noundef %_6, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %7) #21
          to label %panic10.cont unwind label %cleanup

panic10.cont:                                     ; preds = %panic10.invoke
  unreachable

bb31:                                             ; preds = %bb29
  %_35 = load i32, ptr %_14, align 4, !noundef !23
  %_39 = getelementptr inbounds nuw i32, ptr %0, i64 %_40
  %_38 = load i32, ptr %_39, align 4, !noundef !23
  %_37 = add i32 %_38, 1
  %_0.sroa.0.0.i20 = tail call noundef i32 @llvm.smax.i32(i32 %_37, i32 %_35)
  store i32 %_0.sroa.0.0.i20, ptr %_39, align 4
  br label %bb10
}
