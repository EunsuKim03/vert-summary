define noundef i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %price.sroa.0.0.extract.trunc = trunc i64 %0 to i32
  %price.sroa.2.0.extract.shift = lshr i64 %0, 32
  %price.sroa.2.0.extract.trunc = trunc nuw i64 %price.sroa.2.0.extract.shift to i32
  %_5 = sext i32 %n to i64
  %_4 = add nsw i64 %_5, 1
  %_21.0.i.i.i = shl nsw i64 %_4, 2
  %_21.1.i.i.i = icmp ugt i64 %_4, 4611686018427387903
  %_26.i.i.i = icmp ugt i64 %_21.0.i.i.i, 9223372036854775804
  %or.cond.i.i.i = or i1 %_21.1.i.i.i, %_26.i.i.i
  br i1 %or.cond.i.i.i, label %bb14.i, label %bb17.i.i, !prof !339

bb17.i.i:                                         ; preds = %start
  %_8.i.i = icmp eq i64 %_4, 0
  br i1 %_8.i.i, label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h6b258e59b472263dE.exit", label %bb3.i3.i

bb3.i3.i:                                         ; preds = %bb17.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !1031
; call __rustc::__rust_alloc_zeroed
  %1 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1031
  %2 = icmp eq ptr %1, null
  br i1 %2, label %bb14.i, label %bb10.i.i

bb10.i.i:                                         ; preds = %bb3.i3.i
  %3 = ptrtoint ptr %1 to i64
  br label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h6b258e59b472263dE.exit"

bb14.i:                                           ; preds = %bb3.i3.i, %start
  %_16.sroa.4.0.ph.i = phi i64 [ 4, %bb3.i3.i ], [ 0, %start ]
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_16.sroa.4.0.ph.i, i64 %_21.0.i.i.i) #21, !noalias !1036
  unreachable

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h6b258e59b472263dE.exit": ; preds = %bb17.i.i, %bb10.i.i
  %_16.sroa.10.0.i = phi i64 [ %3, %bb10.i.i ], [ 4, %bb17.i.i ]
  %4 = inttoptr i64 %_16.sroa.10.0.i to ptr
  %_0.i.not.i30 = icmp slt i32 %n, 1
  br i1 %_0.i.not.i30, label %bb4, label %bb2.i.preheader

bb2.i.preheader:                                  ; preds = %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h6b258e59b472263dE.exit"
  %_17 = sitofp i32 %price.sroa.0.0.extract.trunc to float
  %_17.1 = sitofp i32 %price.sroa.2.0.extract.trunc to float
  br label %bb2.i

bb2.i:                                            ; preds = %bb2.i.preheader, %bb17
  %iter.sroa.0.031 = phi i32 [ %spec.select, %bb17 ], [ 1, %bb2.i.preheader ]
  %_0.i3.i = icmp sge i32 %iter.sroa.0.031, %n
  %not._0.i3.i = xor i1 %_0.i3.i, true
  %5 = zext i1 %not._0.i3.i to i32
  %spec.select = add nuw nsw i32 %iter.sroa.0.031, %5
  %6 = zext nneg i32 %iter.sroa.0.031 to i64
  %wide.trip.count = zext nneg i32 %iter.sroa.0.031 to i64
  %7 = add nsw i64 %6, -1
  %_52 = icmp ugt i64 %_4, %7
  br i1 %_52, label %bb18, label %panic4.invoke

cleanup.thread:                                   ; preds = %panic3.invoke
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb2.i.i.i3.i

cleanup:                                          ; preds = %panic4.invoke
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br i1 %_8.i.i, label %bb9, label %bb2.i.i.i3.i

bb2.i.i.i3.i:                                     ; preds = %cleanup.thread, %cleanup
  %lpad.phi40 = phi { ptr, i32 } [ %lpad.thr_comm, %cleanup.thread ], [ %lpad.thr_comm.split-lp, %cleanup ]
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %4, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1037
  br label %bb9

bb4:                                              ; preds = %bb17, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h6b258e59b472263dE.exit"
  %_34.not = icmp eq i32 %n, -1
  br i1 %_34.not, label %panic4.invoke, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hffb5537e155b14c7E.exit16"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hffb5537e155b14c7E.exit16": ; preds = %bb4
  %_29 = getelementptr inbounds nuw i32, ptr %4, i64 %_5
  %_0 = load i32, ptr %_29, align 4, !noundef !23
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %4, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1046
  ret i32 %_0

bb14:                                             ; preds = %bb18.1, %bb18
  %.lcssa = phi float [ %12, %bb18 ], [ %14, %bb18.1 ]
  %_47 = icmp ugt i64 %_4, %wide.trip.count
  br i1 %_47, label %bb17, label %panic3.invoke

bb17:                                             ; preds = %bb14
  %_27 = getelementptr inbounds nuw i32, ptr %4, i64 %wide.trip.count
  %8 = tail call i32 @llvm.fptosi.sat.i32.f32(float %.lcssa)
  store i32 %8, ptr %_27, align 4
  %_0.i.not.i = icmp sgt i32 %spec.select, %n
  %or.cond = select i1 %_0.i3.i, i1 true, i1 %_0.i.not.i
  br i1 %or.cond, label %bb4, label %bb2.i

panic3.invoke:                                    ; preds = %bb18.1, %bb14
  %9 = phi i64 [ %wide.trip.count, %bb14 ], [ 2, %bb18.1 ]
  %10 = phi i64 [ %_4, %bb14 ], [ 2, %bb18.1 ]
  %11 = phi ptr [ @alloc_ab422435833e3c1f88d176e2c851b613, %bb14 ], [ @alloc_d50d65c1b59be38e4d2772219ca63592, %bb18.1 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %9, i64 noundef %10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %11) #21
          to label %panic3.cont unwind label %cleanup.thread

panic3.cont:                                      ; preds = %panic3.invoke
  unreachable

bb18:                                             ; preds = %bb2.i
  %_23 = getelementptr inbounds nuw i32, ptr %4, i64 %7
  %_22 = load i32, ptr %_23, align 4, !noundef !23
  %_21 = sitofp i32 %_22 to float
  %_16 = fadd float %_17, %_21
  %12 = tail call float @llvm.maxnum.f32(float %_16, float 0xC7EFFFFFE0000000)
  %exitcond38.not = icmp eq i32 %iter.sroa.0.031, 1
  br i1 %exitcond38.not, label %bb14, label %bb13.1

bb13.1:                                           ; preds = %bb18
  %13 = add nsw i64 %6, -2
  %_52.1 = icmp ugt i64 %_4, %13
  br i1 %_52.1, label %bb18.1, label %panic4.invoke

bb18.1:                                           ; preds = %bb13.1
  %_23.1 = getelementptr inbounds nuw i32, ptr %4, i64 %13
  %_22.1 = load i32, ptr %_23.1, align 4, !noundef !23
  %_21.1 = sitofp i32 %_22.1 to float
  %_16.1 = fadd float %_17.1, %_21.1
  %14 = tail call float @llvm.maxnum.f32(float %12, float %_16.1)
  %exitcond38.1.not = icmp eq i32 %iter.sroa.0.031, 2
  br i1 %exitcond38.1.not, label %bb14, label %panic3.invoke

panic4.invoke:                                    ; preds = %bb2.i, %bb13.1, %bb4
  %15 = phi i64 [ %_5, %bb4 ], [ %13, %bb13.1 ], [ %7, %bb2.i ]
  %16 = phi ptr [ @alloc_5fb15991ac085d5c660915e873f32ce1, %bb4 ], [ @alloc_307a07f8142ee9d5c77acc0dc7868fdf, %bb13.1 ], [ @alloc_307a07f8142ee9d5c77acc0dc7868fdf, %bb2.i ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %15, i64 noundef %_4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %16) #21
          to label %panic4.cont unwind label %cleanup

panic4.cont:                                      ; preds = %panic4.invoke
  unreachable

bb9:                                              ; preds = %bb2.i.i.i3.i, %cleanup
  %lpad.phi41 = phi { ptr, i32 } [ %lpad.phi40, %bb2.i.i.i3.i ], [ %lpad.thr_comm.split-lp, %cleanup ]
  resume { ptr, i32 } %lpad.phi41
}
