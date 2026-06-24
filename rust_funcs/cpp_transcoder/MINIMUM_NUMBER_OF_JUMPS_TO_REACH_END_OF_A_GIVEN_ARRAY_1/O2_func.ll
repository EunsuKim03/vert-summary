define noundef i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %n2 = sext i32 %n to i64
  %_21.0.i.i.i = shl nsw i64 %n2, 2
  %_21.1.i.i.i = icmp slt i32 %n, 0
  %_26.i.i.i = icmp ugt i64 %_21.0.i.i.i, 9223372036854775804
  %or.cond.i.i.i = or i1 %_21.1.i.i.i, %_26.i.i.i
  br i1 %or.cond.i.i.i, label %bb14.i, label %bb17.i.i, !prof !339

bb17.i.i:                                         ; preds = %start
  %_8.i.i = icmp eq i32 %n, 0
  br i1 %_8.i.i, label %bb17, label %bb3.i3.i

bb3.i3.i:                                         ; preds = %bb17.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !1031
; call __rustc::__rust_alloc_zeroed
  %1 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1031
  %2 = icmp eq ptr %1, null
  br i1 %2, label %bb14.i, label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hb03817e82e78395bE.exit.thread"

bb14.i:                                           ; preds = %bb3.i3.i, %start
  %_16.sroa.4.0.ph.i = phi i64 [ 4, %bb3.i3.i ], [ 0, %start ]
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_16.sroa.4.0.ph.i, i64 %_21.0.i.i.i) #21, !noalias !1036
  unreachable

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hb03817e82e78395bE.exit.thread": ; preds = %bb3.i3.i
  %3 = and i64 %0, 4294967295
  %_632 = icmp eq i64 %3, 0
  br i1 %_632, label %bb17.sink.split, label %bb21

bb21:                                             ; preds = %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hb03817e82e78395bE.exit.thread"
  store i32 0, ptr %1, align 4
  %_3741.not = icmp eq i32 %n, 1
  br i1 %_3741.not, label %bb23, label %bb24.preheader

bb24.preheader:                                   ; preds = %bb21
  %umax = tail call i64 @llvm.umax.i64(i64 %n2, i64 2)
  %_11.peel = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 2147483647, ptr %_11.peel, align 4
  %sext = shl i64 %0, 32
  %_16.peel = ashr exact i64 %sext, 32
  %_14.not.peel = icmp eq i64 %sext, 0
  br i1 %_14.not.peel, label %bb14.peel.thread, label %bb14.peel

bb14.peel:                                        ; preds = %bb24.preheader
  store i32 1, ptr %_11.peel, align 4
  %exitcond.peel.not = icmp samesign ult i32 %n, 3
  br i1 %exitcond.peel.not, label %bb23, label %bb24.peel.next

bb14.peel.thread:                                 ; preds = %bb24.preheader
  %exitcond.peel.not95 = icmp samesign ult i32 %n, 3
  br i1 %exitcond.peel.not95, label %bb23, label %bb26.1.peel61

bb24.peel.next:                                   ; preds = %bb14.peel
  %_11.peel49 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 2147483647, ptr %_11.peel49, align 4
  %_14.not.peel54 = icmp ult i64 %_16.peel, 2
  br i1 %_14.not.peel54, label %bb26.1.peel61.thread, label %bb31.peel83

bb26.1.peel61:                                    ; preds = %bb14.peel.thread
  %_11.peel4998 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 2147483647, ptr %_11.peel4998, align 4
  br label %bb14.peel88

bb26.1.peel61.thread:                             ; preds = %bb24.peel.next
  %_16.1.peel64105 = ashr i64 %0, 32
  %_15.1.peel65106 = add nsw i64 %_16.1.peel64105, 1
  %_14.not.1.peel66107 = icmp ult i64 %_15.1.peel65106, 2
  br i1 %_14.not.1.peel66107, label %bb14.peel88, label %bb31.peel83

bb31.peel83:                                      ; preds = %bb26.1.peel61.thread, %bb24.peel.next
  %_20.lcssa.peel84 = phi i32 [ 1, %bb24.peel.next ], [ 2, %bb26.1.peel61.thread ]
  store i32 %_20.lcssa.peel84, ptr %_11.peel49, align 4
  br label %bb14.peel88

bb14.peel88:                                      ; preds = %bb26.1.peel61, %bb26.1.peel61.thread, %bb31.peel83
  %exitcond.peel89.not = icmp eq i32 %n, 3
  br i1 %exitcond.peel89.not, label %bb23, label %bb24.peel.next47

bb24.peel.next47:                                 ; preds = %bb14.peel88
  %_16.1 = ashr i64 %0, 32
  %_15.1 = add nsw i64 %_16.1, 1
  br label %bb24

cleanup:                                          ; preds = %panic5
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1037
  resume { ptr, i32 } %lpad.thr_comm.split-lp

unreachable:                                      ; preds = %panic5
  unreachable

bb23:                                             ; preds = %bb14, %bb14.peel, %bb14.peel88, %bb14.peel.thread, %bb21
  %4 = getelementptr i32, ptr %1, i64 %n2
  %_29 = getelementptr i8, ptr %4, i64 -4
  %5 = load i32, ptr %_29, align 4, !noundef !23
  br label %bb17.sink.split

bb17.sink.split:                                  ; preds = %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hb03817e82e78395bE.exit.thread", %bb23
  %_0.sroa.0.0.ph = phi i32 [ %5, %bb23 ], [ 2147483647, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hb03817e82e78395bE.exit.thread" ]
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !23
  br label %bb17

bb17:                                             ; preds = %bb17.sink.split, %bb17.i.i
  %_0.sroa.0.0 = phi i32 [ 2147483647, %bb17.i.i ], [ %_0.sroa.0.0.ph, %bb17.sink.split ]
  ret i32 %_0.sroa.0.0

bb24:                                             ; preds = %bb24.peel.next47, %bb14
  %iter.sroa.0.042 = phi i64 [ %6, %bb14 ], [ 3, %bb24.peel.next47 ]
  %6 = add nuw i64 %iter.sroa.0.042, 1
  %_11 = getelementptr inbounds nuw i32, ptr %1, i64 %iter.sroa.0.042
  store i32 2147483647, ptr %_11, align 4
  %_14.not = icmp ugt i64 %iter.sroa.0.042, %_16.peel
  br i1 %_14.not, label %bb26.1, label %bb14

bb14:                                             ; preds = %bb24, %bb28.1
  %_20.lcssa = phi i32 [ %_20.1, %bb28.1 ], [ 0, %bb24 ]
  %_25 = add nsw i32 %_20.lcssa, 1
  store i32 %_25, ptr %_11, align 4
  %exitcond.not = icmp eq i64 %6, %umax
  br i1 %exitcond.not, label %bb23, label %bb24, !llvm.loop !1046

panic5:                                           ; preds = %bb28.1, %bb26.1
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_d2cd035e3faf4f5d69b15d817ff26c8a) #21
          to label %unreachable unwind label %cleanup

bb26.1:                                           ; preds = %bb24
  %_14.not.1 = icmp ugt i64 %iter.sroa.0.042, %_15.1
  br i1 %_14.not.1, label %panic5, label %bb28.1

bb28.1:                                           ; preds = %bb26.1
  %_20.1 = load i32, ptr %_11.peel, align 4, !noundef !23
  %_19.not.1 = icmp eq i32 %_20.1, 2147483647
  br i1 %_19.not.1, label %panic5, label %bb14
}
