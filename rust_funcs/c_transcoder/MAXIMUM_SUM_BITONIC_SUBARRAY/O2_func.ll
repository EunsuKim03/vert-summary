define noundef i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %arr = alloca [8 x i8], align 8
  store i64 %0, ptr %arr, align 8
  %iter3 = sext i32 %n to i64
  %_21.0.i.i.i = shl nsw i64 %iter3, 2
  %_21.1.i.i.i = icmp slt i32 %n, 0
  %_26.i.i.i = icmp ugt i64 %_21.0.i.i.i, 9223372036854775804
  %or.cond.i.i.i = or i1 %_21.1.i.i.i, %_26.i.i.i
  %1 = trunc i64 %0 to i32
  %2 = lshr i64 %0, 32
  %3 = trunc nuw i64 %2 to i32
  br i1 %or.cond.i.i.i, label %bb14.i, label %bb17.i.i, !prof !339

bb17.i.i:                                         ; preds = %start
  %_8.i.i = icmp eq i32 %n, 0
  br i1 %_8.i.i, label %panic, label %bb3.i3.i

bb3.i3.i:                                         ; preds = %bb17.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !1031
; call __rustc::__rust_alloc_zeroed
  %4 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1031
  %5 = icmp eq ptr %4, null
  br i1 %5, label %bb14.i, label %bb3.i3.i51

bb14.i:                                           ; preds = %bb3.i3.i, %start
  %_16.sroa.4.0.ph.i = phi i64 [ 4, %bb3.i3.i ], [ 0, %start ]
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_16.sroa.4.0.ph.i, i64 %_21.0.i.i.i) #21, !noalias !1036
  unreachable

bb3.i3.i51:                                       ; preds = %bb3.i3.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !1037
; call __rustc::__rust_alloc_zeroed
  %6 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1037
  %7 = icmp eq ptr %6, null
  br i1 %7, label %bb14.i54, label %bb38

bb14.i54:                                         ; preds = %bb3.i3.i51
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef 4, i64 %_21.0.i.i.i) #21
          to label %.noexc unwind label %bb34.thread

.noexc:                                           ; preds = %bb14.i54
  unreachable

bb34:                                             ; preds = %panic9.invoke
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %6, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1042
  br label %bb2.i.i.i3.i

bb2.i.i.i3.i:                                     ; preds = %bb34, %bb34.thread
  %.pn82 = phi { ptr, i32 } [ %8, %bb34.thread ], [ %lpad.thr_comm, %bb34 ]
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %4, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1051
  resume { ptr, i32 } %.pn82

bb34.thread:                                      ; preds = %bb14.i54
  %8 = landingpad { ptr, i32 }
          cleanup
  br label %bb2.i.i.i3.i

bb38:                                             ; preds = %bb3.i3.i51
  store i32 %1, ptr %4, align 4
  %_6297.not = icmp eq i32 %n, 1
  br i1 %_6297.not, label %bb45.thread, label %bb3.preheader

bb45.thread:                                      ; preds = %bb38
  %9 = add nsw i64 %iter3, -1
  %10 = getelementptr inbounds nuw i32, ptr %arr, i64 %9
  %_21107 = load i32, ptr %10, align 4, !noundef !23
  %_24108 = getelementptr inbounds nuw i32, ptr %6, i64 %9
  store i32 %_21107, ptr %_24108, align 4
  br label %bb23.preheader.thread

bb3.preheader:                                    ; preds = %bb38
  %_11 = icmp sgt i32 %3, %1
  %11 = select i1 %_11, i32 %1, i32 0
  %spec.select = add i32 %11, %3
  %12 = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %spec.select, ptr %12, align 4
  %exitcond103.not = icmp samesign ult i32 %n, 3
  br i1 %exitcond103.not, label %bb45, label %panic9.invoke

panic:                                            ; preds = %bb17.i.i
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_1238272fdef0c99ba1dac010e6d59982) #21
  unreachable

bb45:                                             ; preds = %bb3.preheader
  %13 = add nsw i64 %iter3, -1
  %14 = getelementptr inbounds nuw i32, ptr %arr, i64 %13
  %_21 = load i32, ptr %14, align 4, !noundef !23
  %_24 = getelementptr inbounds nuw i32, ptr %6, i64 %13
  store i32 %_21, ptr %_24, align 4
  %15 = icmp eq i64 %13, 0
  br i1 %15, label %bb23.preheader.thread, label %bb16

bb23.preheader.thread:                            ; preds = %bb45, %bb45.thread
  %_47.pre = load i32, ptr %6, align 4
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h9df7c300f3382554E.exit71"

bb23.preheader:                                   ; preds = %bb49, %bb16
  %storemerge = phi i32 [ %18, %bb49 ], [ %1, %bb16 ]
  store i32 %storemerge, ptr %6, align 4
  %16 = add nuw nsw i64 %iter3, 1
  %exitcond105.not = icmp eq i64 %16, 2
  br i1 %exitcond105.not, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h9df7c300f3382554E.exit71", label %bb56.1

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h9df7c300f3382554E.exit71": ; preds = %bb23.preheader.thread, %bb56.1, %bb23.preheader
  %spec.select.lcssa = phi i32 [ %storemerge, %bb23.preheader ], [ %spec.select.1, %bb56.1 ], [ %_47.pre, %bb23.preheader.thread ]
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %6, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1060
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %4, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1069
  ret i32 %spec.select.lcssa

bb56.1:                                           ; preds = %bb23.preheader
  %_46.1 = getelementptr inbounds nuw i8, ptr %4, i64 4
  %_45.1 = load i32, ptr %_46.1, align 4, !noundef !23
  %_48.1 = getelementptr inbounds nuw i8, ptr %6, i64 4
  %_47.1 = load i32, ptr %_48.1, align 4, !noundef !23
  %_44.1 = add i32 %_47.1, %_45.1
  %_43.1 = sub i32 %_44.1, %3
  %spec.select.1 = tail call i32 @llvm.smax.i32(i32 %storemerge, i32 %_43.1)
  %exitcond105.1.not = icmp eq i64 %16, 3
  br i1 %exitcond105.1.not, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h9df7c300f3382554E.exit71", label %panic9.invoke

panic9.invoke:                                    ; preds = %bb3.preheader, %bb56.1
  %17 = phi ptr [ @alloc_b0d2618b4e047bde2d09e863f242e3cd, %bb56.1 ], [ @alloc_ded4384f7577f488ca50795bd9641e49, %bb3.preheader ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %17) #21
          to label %panic9.cont unwind label %bb34

panic9.cont:                                      ; preds = %panic9.invoke
  unreachable

bb16:                                             ; preds = %bb45
  %_28 = icmp sgt i32 %1, %3
  br i1 %_28, label %bb49, label %bb23.preheader

bb49:                                             ; preds = %bb16
  %_35 = getelementptr inbounds nuw i8, ptr %6, i64 4
  %_34 = load i32, ptr %_35, align 4, !noundef !23
  %18 = add i32 %_34, %1
  br label %bb23.preheader
}
