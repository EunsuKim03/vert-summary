define noundef range(i32 0, -2147483648) i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %arr.sroa.0.0.extract.trunc = trunc i64 %0 to i32
  %arr.sroa.4.0.extract.shift = lshr i64 %0, 32
  %arr.sroa.4.0.extract.trunc = trunc nuw i64 %arr.sroa.4.0.extract.shift to i32
  %iter4 = sext i32 %n to i64
  %_4 = shl nsw i64 %iter4, 3
  %_21.0.i.i.i = or disjoint i64 %_4, 4
  %_21.1.i.i.i = icmp slt i32 %n, 0
  %_26.i.i.i = icmp ugt i64 %_4, 9223372036854775803
  %or.cond.i.i.i = or i1 %_21.1.i.i.i, %_26.i.i.i
  br i1 %or.cond.i.i.i, label %bb14.i, label %bb17.i.i, !prof !339

bb17.i.i:                                         ; preds = %start
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !1031
; call __rustc::__rust_alloc_zeroed
  %1 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1031
  %2 = icmp eq ptr %1, null
  br i1 %2, label %bb14.i, label %bb1.preheader

bb1.preheader:                                    ; preds = %bb17.i.i
  %_3347.not = icmp eq i32 %n, 0
  br i1 %_3347.not, label %bb16, label %bb22

bb14.i:                                           ; preds = %bb17.i.i, %start
  %_16.sroa.4.0.ph.i = phi i64 [ 4, %bb17.i.i ], [ 0, %start ]
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_16.sroa.4.0.ph.i, i64 %_21.0.i.i.i) #21, !noalias !1036
  unreachable

bb26.preheader:                                   ; preds = %bb22.1
  %_16 = getelementptr inbounds nuw i32, ptr %1, i64 %iter4
  store i32 %arr.sroa.0.0.extract.trunc, ptr %_16, align 4
  %3 = getelementptr inbounds nuw i32, ptr %1, i64 %iter4
  %_16.1 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %arr.sroa.4.0.extract.trunc, ptr %_16.1, align 4
  %_27 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %_26 = load i32, ptr %_27, align 4, !noundef !23
  %_25.not = icmp ne i32 %_26, %arr.sroa.0.0.extract.trunc
  %4 = zext i1 %_25.not to i32
  %_27.1 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %_26.1 = load i32, ptr %_27.1, align 4, !noundef !23
  %_25.not.1 = icmp ne i32 %_26.1, %arr.sroa.4.0.extract.trunc
  %5 = zext i1 %_25.not.1 to i32
  %spec.select.1 = add nuw nsw i32 %4, %5
  br label %bb16

bb16:                                             ; preds = %bb26.preheader, %bb1.preheader, %bb25.thread
  %max_ham.sroa.0.1 = phi i32 [ 0, %bb1.preheader ], [ 0, %bb25.thread ], [ %spec.select.1, %bb26.preheader ]
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !23
  ret i32 %max_ham.sroa.0.1

panic.invoke:                                     ; preds = %bb22.1
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_b6d5574efaff1c4fb94e48c16f0b9496) #21
          to label %panic.cont unwind label %bb18

panic.cont:                                       ; preds = %panic.invoke
  unreachable

bb22:                                             ; preds = %bb1.preheader
  store i32 %arr.sroa.0.0.extract.trunc, ptr %1, align 4
  %exitcond68.not = icmp eq i32 %n, 1
  br i1 %exitcond68.not, label %bb25.thread, label %bb22.1

bb25.thread:                                      ; preds = %bb22
  %_1674 = getelementptr inbounds nuw i32, ptr %1, i64 %iter4
  store i32 %arr.sroa.0.0.extract.trunc, ptr %_1674, align 4
  br label %bb16

bb22.1:                                           ; preds = %bb22
  %_11.1 = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %arr.sroa.4.0.extract.trunc, ptr %_11.1, align 4
  %exitcond68.1.not = icmp eq i32 %n, 2
  br i1 %exitcond68.1.not, label %bb26.preheader, label %panic.invoke

bb18:                                             ; preds = %panic.invoke
  %6 = landingpad { ptr, i32 }
          cleanup
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1037
  resume { ptr, i32 } %6
}
