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
  br i1 %_2415.i.not.i, label %bb4.thread, label %bb21

bb4.thread:                                       ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8cb3c9c926676524E.exit.i.i"
  store i32 0, ptr %0, align 4
  br label %bb28

bb21:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8cb3c9c926676524E.exit.i.i"
  %2 = add nsw i64 %_21.0.i.i.i.i, -4
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %0, i8 -1, i64 %2, i1 false), !noalias !1037
  %3 = getelementptr i8, ptr %0, i64 %_21.0.i.i.i.i
  %scevgep.i.i = getelementptr i8, ptr %3, i64 -4
  store i32 -1, ptr %scevgep.i.i, align 4, !noalias !1037
  store i32 0, ptr %0, align 4
  %_5339 = icmp sgt i32 %n, 0
  br i1 %_5339, label %bb3.preheader, label %bb4

bb3.preheader:                                    ; preds = %bb21
  %wide.trip.count = zext nneg i32 %n to i64
  br label %bb3

panic:                                            ; preds = %bb17.i.i.i
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_21cb9bc060c1f7c0a586c6e938d052a8) #21
  unreachable

cleanup:                                          ; preds = %panic10.invoke
  %4 = landingpad { ptr, i32 }
          cleanup
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef %_21.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1040
  resume { ptr, i32 } %4

bb3:                                              ; preds = %bb3.preheader, %bb16
  %indvars.iv45 = phi i64 [ 0, %bb3.preheader ], [ %indvars.iv.next46, %bb16 ]
  %exitcond.not = icmp eq i64 %indvars.iv45, %_6
  br i1 %exitcond.not, label %panic10.invoke, label %bb27

bb4:                                              ; preds = %bb16, %bb21
  %_69.not = icmp eq i32 %n, -1
  br i1 %_69.not, label %panic10.invoke, label %bb28

bb28:                                             ; preds = %bb4.thread, %bb4
  %_46 = getelementptr inbounds nuw i32, ptr %0, i64 %_7
  %_0 = load i32, ptr %_46, align 4, !noundef !23
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef %_21.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1049
  ret i32 %_0

bb27:                                             ; preds = %bb3
  %_14 = getelementptr inbounds nuw i32, ptr %0, i64 %indvars.iv45
  %_13 = load i32, ptr %_14, align 4, !noundef !23
  %_12.not = icmp eq i32 %_13, -1
  br i1 %_12.not, label %bb16, label %bb5

bb5:                                              ; preds = %bb27
  %5 = trunc nuw nsw i64 %indvars.iv45 to i32
  %_17 = add i32 %a, %5
  %_16.not = icmp sgt i32 %_17, %n
  br i1 %_16.not, label %bb8, label %bb29

bb16:                                             ; preds = %bb11, %bb37, %bb27
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1
  %exitcond50.not = icmp eq i64 %indvars.iv.next46, %wide.trip.count
  br i1 %exitcond50.not, label %bb4, label %bb3

bb8:                                              ; preds = %bb31, %bb5
  %_27 = add i32 %b, %5
  %_26.not = icmp sgt i32 %_27, %n
  br i1 %_26.not, label %bb11, label %bb32

bb29:                                             ; preds = %bb5
  %_24 = sext i32 %_17 to i64
  %_79 = icmp ugt i64 %_6, %_24
  br i1 %_79, label %bb31, label %panic10.invoke

bb31:                                             ; preds = %bb29
  %_23 = getelementptr inbounds nuw i32, ptr %0, i64 %_24
  %_22 = load i32, ptr %_23, align 4, !noundef !23
  %_21 = add i32 %_22, 1
  %_0.sroa.0.0.i = tail call noundef i32 @llvm.smax.i32(i32 %_21, i32 %_13)
  store i32 %_0.sroa.0.0.i, ptr %_23, align 4
  br label %bb8

bb11:                                             ; preds = %bb34, %bb8
  %_37 = add i32 %c, %5
  %_36.not = icmp sgt i32 %_37, %n
  br i1 %_36.not, label %bb16, label %bb35

bb32:                                             ; preds = %bb8
  %_34 = sext i32 %_27 to i64
  %_95 = icmp ugt i64 %_6, %_34
  br i1 %_95, label %bb34, label %panic10.invoke

bb34:                                             ; preds = %bb32
  %_29 = load i32, ptr %_14, align 4, !noundef !23
  %_33 = getelementptr inbounds nuw i32, ptr %0, i64 %_34
  %_32 = load i32, ptr %_33, align 4, !noundef !23
  %_31 = add i32 %_32, 1
  %_0.sroa.0.0.i19 = tail call noundef i32 @llvm.smax.i32(i32 %_31, i32 %_29)
  store i32 %_0.sroa.0.0.i19, ptr %_33, align 4
  br label %bb11

bb35:                                             ; preds = %bb11
  %_44 = sext i32 %_37 to i64
  %_111 = icmp ugt i64 %_6, %_44
  br i1 %_111, label %bb37, label %panic10.invoke

panic10.invoke:                                   ; preds = %bb35, %bb32, %bb29, %bb3, %bb4
  %6 = phi i64 [ %_7, %bb4 ], [ %_6, %bb3 ], [ %_24, %bb29 ], [ %_34, %bb32 ], [ %_44, %bb35 ]
  %7 = phi ptr [ @alloc_c0110d6db079ccfb04fdb0b06ed027a7, %bb4 ], [ @alloc_2f2fdb8d9b83b737fb3bab9ff0755ce7, %bb3 ], [ @alloc_3b92100d882032e2737b8dc64db839ad, %bb29 ], [ @alloc_879de453d19057933db2bb8482a867d0, %bb32 ], [ @alloc_2ce06a65bc2092a38a7af927201bc2ae, %bb35 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %6, i64 noundef %_6, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %7) #21
          to label %panic10.cont unwind label %cleanup

panic10.cont:                                     ; preds = %panic10.invoke
  unreachable

bb37:                                             ; preds = %bb35
  %_39 = load i32, ptr %_14, align 4, !noundef !23
  %_43 = getelementptr inbounds nuw i32, ptr %0, i64 %_44
  %_42 = load i32, ptr %_43, align 4, !noundef !23
  %_41 = add i32 %_42, 1
  %_0.sroa.0.0.i20 = tail call noundef i32 @llvm.smax.i32(i32 %_41, i32 %_39)
  store i32 %_0.sroa.0.0.i20, ptr %_43, align 4
  br label %bb16
}
