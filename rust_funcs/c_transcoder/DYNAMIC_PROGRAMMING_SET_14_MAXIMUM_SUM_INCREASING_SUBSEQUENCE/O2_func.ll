define noundef range(i32 0, -2147483648) i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %arr.sroa.0.0.extract.trunc = trunc i64 %0 to i32
  %arr.sroa.2.0.extract.shift = lshr i64 %0, 32
  %arr.sroa.2.0.extract.trunc = trunc nuw i64 %arr.sroa.2.0.extract.shift to i32
  %_4 = sext i32 %n to i64
  %_21.0.i.i.i = shl nsw i64 %_4, 2
  %_21.1.i.i.i = icmp slt i32 %n, 0
  %_26.i.i.i = icmp ugt i64 %_21.0.i.i.i, 9223372036854775804
  %or.cond.i.i.i = or i1 %_21.1.i.i.i, %_26.i.i.i
  %1 = trunc i64 %0 to i32
  %2 = lshr i64 %0, 32
  %3 = trunc nuw i64 %2 to i32
  br i1 %or.cond.i.i.i, label %bb14.i, label %bb17.i.i, !prof !339

bb17.i.i:                                         ; preds = %start
  %_8.i.i = icmp eq i32 %n, 0
  br i1 %_8.i.i, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h8712ff02f0e57fdcE.exit", label %bb3.i3.i

bb3.i3.i:                                         ; preds = %bb17.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !1031
; call __rustc::__rust_alloc_zeroed
  %4 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1031
  %5 = icmp eq ptr %4, null
  br i1 %5, label %bb14.i, label %bb3.preheader

bb14.i:                                           ; preds = %bb3.i3.i, %start
  %_16.sroa.4.0.ph.i = phi i64 [ 4, %bb3.i3.i ], [ 0, %start ]
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_16.sroa.4.0.ph.i, i64 %_21.0.i.i.i) #21, !noalias !1036
  unreachable

bb3.preheader:                                    ; preds = %bb3.i3.i
  store i32 %1, ptr %4, align 4
  %exitcond60.not = icmp eq i32 %n, 1
  br i1 %exitcond60.not, label %bb22.preheader, label %bb3.1

bb9.preheader:                                    ; preds = %bb3.1
  %_27 = getelementptr inbounds nuw i8, ptr %4, i64 4
  %_18 = icmp sgt i32 %arr.sroa.2.0.extract.trunc, %arr.sroa.0.0.extract.trunc
  br i1 %_18, label %bb47, label %bb22.preheader

bb22.preheader:                                   ; preds = %bb50, %bb9.preheader, %bb47, %bb3.preheader
  %wide.trip.count72 = zext nneg i32 %n to i64
  %min.iters.check = icmp ult i32 %n, 8
  br i1 %min.iters.check, label %bb22.preheader93, label %vector.ph

vector.ph:                                        ; preds = %bb22.preheader
  %n.vec = and i64 %wide.trip.count72, 2147483640
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %8, %vector.body ]
  %vec.phi91 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %9, %vector.body ]
  %6 = getelementptr inbounds nuw i32, ptr %4, i64 %index
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %wide.load = load <4 x i32>, ptr %6, align 4
  %wide.load92 = load <4 x i32>, ptr %7, align 4
  %8 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi, <4 x i32> %wide.load)
  %9 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi91, <4 x i32> %wide.load92)
  %index.next = add nuw i64 %index, 8
  %10 = icmp eq i64 %index.next, %n.vec
  br i1 %10, label %middle.block, label %vector.body, !llvm.loop !1037

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %8, <4 x i32> %9)
  %11 = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax)
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count72
  br i1 %cmp.n, label %bb2.i.i.i3.i, label %bb22.preheader93

bb22.preheader93:                                 ; preds = %bb22.preheader, %middle.block
  %indvars.iv67.ph = phi i64 [ 0, %bb22.preheader ], [ %n.vec, %middle.block ]
  %max.sroa.0.050.ph = phi i32 [ 0, %bb22.preheader ], [ %11, %middle.block ]
  br label %bb22

bb22:                                             ; preds = %bb22.preheader93, %bb22
  %indvars.iv67 = phi i64 [ %indvars.iv.next68, %bb22 ], [ %indvars.iv67.ph, %bb22.preheader93 ]
  %max.sroa.0.050 = phi i32 [ %max.sroa.0.1, %bb22 ], [ %max.sroa.0.050.ph, %bb22.preheader93 ]
  %_40 = getelementptr inbounds nuw i32, ptr %4, i64 %indvars.iv67
  %_39 = load i32, ptr %_40, align 4, !noundef !23
  %max.sroa.0.1 = tail call i32 @llvm.smax.i32(i32 %max.sroa.0.050, i32 %_39)
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 1
  %exitcond73.not = icmp eq i64 %indvars.iv.next68, %wide.trip.count72
  br i1 %exitcond73.not, label %bb2.i.i.i3.i, label %bb22, !llvm.loop !1038

bb2.i.i.i3.i:                                     ; preds = %bb22, %middle.block
  %max.sroa.0.1.lcssa = phi i32 [ %11, %middle.block ], [ %max.sroa.0.1, %bb22 ]
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %4, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1039
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h8712ff02f0e57fdcE.exit"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h8712ff02f0e57fdcE.exit": ; preds = %bb17.i.i, %bb2.i.i.i3.i
  %max.sroa.0.0.lcssa84 = phi i32 [ %max.sroa.0.1.lcssa, %bb2.i.i.i3.i ], [ 0, %bb17.i.i ]
  ret i32 %max.sroa.0.0.lcssa84

unreachable:                                      ; preds = %panic15
  unreachable

bb47:                                             ; preds = %bb9.preheader
  %_26 = load i32, ptr %_27, align 4, !noundef !23
  %_29 = load i32, ptr %4, align 4, !noundef !23
  %_28 = add i32 %_29, %arr.sroa.2.0.extract.trunc
  %_25 = icmp slt i32 %_26, %_28
  br i1 %_25, label %bb50, label %bb22.preheader

bb50:                                             ; preds = %bb47
  store i32 %_28, ptr %_27, align 4
  br label %bb22.preheader

bb3.1:                                            ; preds = %bb3.preheader
  %_11.1 = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %3, ptr %_11.1, align 4
  %exitcond60.1.not = icmp eq i32 %n, 2
  br i1 %exitcond60.1.not, label %bb9.preheader, label %panic15

panic15:                                          ; preds = %bb3.1
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_c4e96a951a7f27f6117b69a5f22491b7) #21
          to label %unreachable unwind label %cleanup.thread

cleanup.thread:                                   ; preds = %panic15
  %12 = landingpad { ptr, i32 }
          cleanup
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %4, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1048
  resume { ptr, i32 } %12
}
