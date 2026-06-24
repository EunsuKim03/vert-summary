define noundef i32 @f_gold(ptr noalias noundef nonnull readonly align 4 captures(none) %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, i32 noundef %N, i32 noundef %K) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_5 = sext i32 %N to i64
  %_21.0.i.i.i = shl nsw i64 %_5, 2
  %_21.1.i.i.i = icmp slt i32 %N, 0
  %_26.i.i.i = icmp ugt i64 %_21.0.i.i.i, 9223372036854775804
  %or.cond.i.i.i = or i1 %_21.1.i.i.i, %_26.i.i.i
  br i1 %or.cond.i.i.i, label %bb14.i, label %bb17.i.i, !prof !339

bb17.i.i:                                         ; preds = %start
  %_8.i.i = icmp eq i32 %N, 0
  br i1 %_8.i.i, label %panic, label %bb3.i3.i

bb3.i3.i:                                         ; preds = %bb17.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !1031
; call __rustc::__rust_alloc_zeroed
  %0 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1031
  %1 = icmp eq ptr %0, null
  br i1 %1, label %bb14.i, label %bb20

bb14.i:                                           ; preds = %bb3.i3.i, %start
  %_16.sroa.4.0.ph.i = phi i64 [ 4, %bb3.i3.i ], [ 0, %start ]
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_16.sroa.4.0.ph.i, i64 %_21.0.i.i.i) #21, !noalias !1036
  unreachable

bb20:                                             ; preds = %bb3.i3.i
  store i32 0, ptr %0, align 4
  %_5143.not = icmp eq i32 %N, 1
  br i1 %_5143.not, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h5b87c94d843bf57eE.exit20", label %bb26.peel

bb26.peel:                                        ; preds = %bb20
  %umax = tail call i64 @llvm.umax.i64(i64 %arr.1, i64 1)
  %wide.trip.count = zext nneg i32 %N to i64
  %_13.peel = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %_13.peel, align 4
  %exitcond.peel.not = icmp samesign ult i64 %arr.1, 2
  br i1 %exitcond.peel.not, label %panic4.invoke, label %bb3.peel

bb3.peel:                                         ; preds = %bb26.peel
  %2 = getelementptr inbounds nuw i8, ptr %arr.0, i64 4
  %_17.peel = load i32, ptr %2, align 4, !noundef !23
  %_20.peel = load i32, ptr %arr.0, align 4, !noundef !23
  %_16.peel = sub i32 %_17.peel, %_20.peel
  %_15.peel = icmp slt i32 %_16.peel, %K
  br i1 %_15.peel, label %bb33.peel, label %bb15.peel

bb33.peel:                                        ; preds = %bb3.peel
  %_38.peel = add i32 %_20.peel, %_17.peel
  %x.y.i.peel = tail call noundef i32 @llvm.smax.i32(i32 %_38.peel, i32 0)
  store i32 %x.y.i.peel, ptr %_13.peel, align 4
  br label %bb15.peel

bb15.peel:                                        ; preds = %bb33.peel, %bb3.peel
  %_959 = phi i32 [ %x.y.i.peel, %bb33.peel ], [ 0, %bb3.peel ]
  %exitcond55.peel.not = icmp eq i32 %N, 2
  br i1 %exitcond55.peel.not, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h5b87c94d843bf57eE.exit20", label %bb21.peel.next

bb21.peel.next:                                   ; preds = %bb15.peel
  %invariant.gep = getelementptr i8, ptr %arr.0, i64 -4
  br label %bb26

panic:                                            ; preds = %bb17.i.i
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_f46c3f8913f37ef97bbb91a0e0d6ce55) #21
  unreachable

bb2.i.i.i3.i:                                     ; preds = %panic4.invoke
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1037
  resume { ptr, i32 } %lpad.thr_comm

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h5b87c94d843bf57eE.exit20": ; preds = %bb15, %bb20, %bb15.peel
  %.pre-phi = phi i64 [ 2, %bb15.peel ], [ 1, %bb20 ], [ %wide.trip.count, %bb15 ]
  %3 = getelementptr i32, ptr %0, i64 %.pre-phi
  %_42 = getelementptr i8, ptr %3, i64 -4
  %_0 = load i32, ptr %_42, align 4, !noundef !23
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1046
  ret i32 %_0

bb26:                                             ; preds = %bb15, %bb21.peel.next
  %_9 = phi i32 [ %_959, %bb21.peel.next ], [ %_958, %bb15 ]
  %indvars.iv = phi i64 [ 2, %bb21.peel.next ], [ %indvars.iv.next, %bb15 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %_13 = getelementptr inbounds nuw i32, ptr %0, i64 %indvars.iv
  store i32 %_9, ptr %_13, align 4
  %exitcond.not = icmp eq i64 %arr.1, %indvars.iv
  br i1 %exitcond.not, label %panic4.invoke, label %bb3

panic4.invoke:                                    ; preds = %bb29, %bb26, %bb26.peel
  %4 = phi i64 [ 1, %bb26.peel ], [ %umax, %bb26 ], [ %8, %bb29 ]
  %5 = phi i64 [ %arr.1, %bb26.peel ], [ %arr.1, %bb26 ], [ %_5, %bb29 ]
  %6 = phi ptr [ @alloc_1d1ed3e5f4919f21fc13b06080a333b1, %bb26.peel ], [ @alloc_1d1ed3e5f4919f21fc13b06080a333b1, %bb26 ], [ @alloc_e169278defc96cb8afd3f57242c20aff, %bb29 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %4, i64 noundef %5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %6) #21
          to label %panic4.cont unwind label %bb2.i.i.i3.i

panic4.cont:                                      ; preds = %panic4.invoke
  unreachable

bb3:                                              ; preds = %bb26
  %7 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %indvars.iv
  %_17 = load i32, ptr %7, align 4, !noundef !23
  %gep = getelementptr i32, ptr %invariant.gep, i64 %indvars.iv
  %_20 = load i32, ptr %gep, align 4, !noundef !23
  %_16 = sub i32 %_17, %_20
  %_15 = icmp slt i32 %_16, %K
  br i1 %_15, label %bb29, label %bb15

bb15:                                             ; preds = %bb31, %bb3
  %_958 = phi i32 [ %x.y.i21, %bb31 ], [ %_9, %bb3 ]
  %exitcond55.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond55.not, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h5b87c94d843bf57eE.exit20", label %bb26, !llvm.loop !1055

bb29:                                             ; preds = %bb3
  %8 = add nsw i64 %indvars.iv, -2
  %9 = icmp ult i64 %8, %wide.trip.count
  br i1 %9, label %bb31, label %panic4.invoke

bb31:                                             ; preds = %bb29
  %_29 = getelementptr inbounds nuw i32, ptr %0, i64 %8
  %_28 = load i32, ptr %_29, align 4, !noundef !23
  %_27 = add i32 %_20, %_17
  %_26 = add i32 %_27, %_28
  %x.y.i21 = tail call noundef i32 @llvm.smax.i32(i32 %_9, i32 %_26)
  store i32 %x.y.i21, ptr %_13, align 4
  br label %bb15
}
