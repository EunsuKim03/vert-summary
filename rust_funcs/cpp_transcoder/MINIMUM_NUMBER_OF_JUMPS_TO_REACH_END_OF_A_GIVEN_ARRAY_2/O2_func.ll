define noundef i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %arr = alloca [8 x i8], align 8
  store i64 %0, ptr %arr, align 8
  %_4 = sext i32 %n to i64
  %_21.0.i.i.i = shl nsw i64 %_4, 2
  %_21.1.i.i.i = icmp slt i32 %n, 0
  %_26.i.i.i = icmp ugt i64 %_21.0.i.i.i, 9223372036854775804
  %or.cond.i.i.i = or i1 %_21.1.i.i.i, %_26.i.i.i
  br i1 %or.cond.i.i.i, label %bb14.i, label %bb17.i.i, !prof !339

bb17.i.i:                                         ; preds = %start
  %_8.i.i = icmp eq i32 %n, 0
  br i1 %_8.i.i, label %panic, label %bb3.i3.i

bb3.i3.i:                                         ; preds = %bb17.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !1031
; call __rustc::__rust_alloc_zeroed
  %1 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1031
  %2 = icmp eq ptr %1, null
  br i1 %2, label %bb14.i, label %bb23

bb14.i:                                           ; preds = %bb3.i3.i, %start
  %_16.sroa.4.0.ph.i = phi i64 [ 4, %bb3.i3.i ], [ 0, %start ]
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_16.sroa.4.0.ph.i, i64 %_21.0.i.i.i) #21, !noalias !1036
  unreachable

bb23:                                             ; preds = %bb3.i3.i
  %3 = getelementptr i32, ptr %1, i64 %_4
  %_5 = getelementptr i8, ptr %3, i64 -4
  store i32 0, ptr %_5, align 4
  %_4144.not = icmp eq i32 %n, 1
  br i1 %_4144.not, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17ha35a428d957e14ffE.exit24", label %bb24.preheader

bb24.preheader:                                   ; preds = %bb23
  %4 = add nsw i32 %n, -1
  %5 = zext nneg i32 %4 to i64
  %6 = zext nneg i32 %n to i64
  br label %bb24

panic:                                            ; preds = %bb17.i.i
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef -1, i64 noundef %_4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_02c8a5bbb45a7759b873788dabc04fe1) #21
  unreachable

cleanup.thread:                                   ; preds = %panic12.invoke
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb2.i.i.i3.i

cleanup:                                          ; preds = %panic11.invoke
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb2.i.i.i3.i

bb2.i.i.i3.i:                                     ; preds = %cleanup, %cleanup.thread
  %lpad.phi33 = phi { ptr, i32 } [ %lpad.thr_comm, %cleanup.thread ], [ %lpad.thr_comm.split-lp, %cleanup ]
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1037
  resume { ptr, i32 } %lpad.phi33

bb24:                                             ; preds = %bb24.preheader, %bb18
  %indvars.iv = phi i64 [ %5, %bb24.preheader ], [ 1, %bb18 ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %_12 = icmp samesign ult i64 %indvars.iv, 3
  br i1 %_12, label %bb2, label %panic12.invoke

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17ha35a428d957e14ffE.exit24": ; preds = %bb18, %bb23
  %_0 = load i32, ptr %1, align 4, !noundef !23
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1046
  ret i32 %_0

bb2:                                              ; preds = %bb24
  %7 = getelementptr inbounds nuw i32, ptr %arr, i64 %indvars.iv.next
  %_10 = load i32, ptr %7, align 4, !noundef !23
  %_9 = icmp eq i32 %_10, 0
  br i1 %_9, label %bb3, label %bb5

bb3:                                              ; preds = %bb2
  %_58 = icmp ult i64 %indvars.iv.next, %6
  br i1 %_58, label %bb30, label %panic12.invoke

bb5:                                              ; preds = %bb2
  %8 = sub nsw i64 %_4, %indvars.iv
  %9 = sext i32 %_10 to i64
  %_14.not = icmp sgt i64 %8, %9
  br i1 %_14.not, label %bb8, label %bb6

bb6:                                              ; preds = %bb5
  %_64 = icmp ult i64 %indvars.iv.next, %6
  br i1 %_64, label %bb31, label %panic11.invoke

bb8:                                              ; preds = %bb5
  %indvars.iv.next.tr = trunc nuw nsw i64 %indvars.iv.next to i32
  %10 = shl nuw nsw i32 %indvars.iv.next.tr, 1
  %_19 = add i32 %_10, %10
  %_0.sroa.0.0.i = tail call noundef i32 @llvm.smin.i32(i32 %_19, i32 %n)
  %11 = sext i32 %_0.sroa.0.0.i to i64
  %_6541 = icmp slt i64 %indvars.iv, %11
  br i1 %_6541, label %bb32.preheader, label %bb15

bb32.preheader:                                   ; preds = %bb8
  %12 = tail call i64 @llvm.usub.sat.i64(i64 %6, i64 %indvars.iv)
  %13 = trunc nuw nsw i64 %indvars.iv to i32
  %14 = xor i32 %13, -1
  %15 = add i32 %_0.sroa.0.0.i, %14
  %16 = zext i32 %15 to i64
  %umin = tail call i64 @llvm.umin.i64(i64 %12, i64 %16)
  %min.iters.check = icmp samesign ult i64 %umin, 8
  br i1 %min.iters.check, label %bb32.preheader80, label %vector.ph

vector.ph:                                        ; preds = %bb32.preheader
  %17 = add nuw nsw i64 %umin, 1
  %n.mod.vf = and i64 %17, 7
  %18 = icmp eq i64 %n.mod.vf, 0
  %19 = select i1 %18, i64 8, i64 %n.mod.vf
  %n.vec = sub nsw i64 %17, %19
  %20 = add nsw i64 %indvars.iv, %n.vec
  %21 = getelementptr inbounds nuw i32, ptr %1, i64 %indvars.iv
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ splat (i32 2147483647), %vector.ph ], [ %24, %vector.body ]
  %vec.phi78 = phi <4 x i32> [ splat (i32 2147483647), %vector.ph ], [ %25, %vector.body ]
  %22 = getelementptr inbounds nuw i32, ptr %21, i64 %index
  %23 = getelementptr inbounds nuw i8, ptr %22, i64 16
  %wide.load = load <4 x i32>, ptr %22, align 4
  %wide.load79 = load <4 x i32>, ptr %23, align 4
  %24 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %vec.phi, <4 x i32> %wide.load)
  %25 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %vec.phi78, <4 x i32> %wide.load79)
  %index.next = add nuw i64 %index, 8
  %26 = icmp eq i64 %index.next, %n.vec
  br i1 %26, label %middle.block, label %vector.body, !llvm.loop !1055

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %24, <4 x i32> %25)
  %27 = tail call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %rdx.minmax)
  br label %bb32.preheader80

bb32.preheader80:                                 ; preds = %bb32.preheader, %middle.block
  %indvars.iv53.ph = phi i64 [ %indvars.iv, %bb32.preheader ], [ %20, %middle.block ]
  %min.sroa.0.042.ph = phi i32 [ 2147483647, %bb32.preheader ], [ %27, %middle.block ]
  br label %bb32

bb33:                                             ; preds = %bb36
  %_30.not = icmp eq i32 %min.sroa.0.1, 2147483647
  br i1 %_30.not, label %bb15, label %bb14

bb32:                                             ; preds = %bb32.preheader80, %bb36
  %indvars.iv53 = phi i64 [ %indvars.iv.next54, %bb36 ], [ %indvars.iv53.ph, %bb32.preheader80 ]
  %min.sroa.0.042 = phi i32 [ %min.sroa.0.1, %bb36 ], [ %min.sroa.0.042.ph, %bb32.preheader80 ]
  %_76 = icmp samesign ult i64 %indvars.iv53, %6
  br i1 %_76, label %bb36, label %panic11.invoke

bb15:                                             ; preds = %bb8, %bb33
  %_93 = icmp ult i64 %indvars.iv.next, %6
  br i1 %_93, label %bb39, label %panic11.invoke

bb14:                                             ; preds = %bb33
  %_87 = icmp ult i64 %indvars.iv.next, %6
  br i1 %_87, label %bb38, label %panic11.invoke

bb39:                                             ; preds = %bb15
  %_33 = getelementptr inbounds nuw i32, ptr %1, i64 %indvars.iv.next
  store i32 2147483647, ptr %_33, align 4
  br label %bb18

bb38:                                             ; preds = %bb14
  %_32 = getelementptr inbounds nuw i32, ptr %1, i64 %indvars.iv.next
  %28 = add nsw i32 %min.sroa.0.1, 1
  store i32 %28, ptr %_32, align 4
  br label %bb18

bb36:                                             ; preds = %bb32
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1
  %_26 = getelementptr inbounds nuw i32, ptr %1, i64 %indvars.iv53
  %_25 = load i32, ptr %_26, align 4, !noundef !23
  %min.sroa.0.1 = tail call i32 @llvm.smin.i32(i32 %min.sroa.0.042, i32 %_25)
  %29 = trunc nuw i64 %indvars.iv.next54 to i32
  %_65 = icmp sgt i32 %_0.sroa.0.0.i, %29
  br i1 %_65, label %bb32, label %bb33, !llvm.loop !1056

bb31:                                             ; preds = %bb6
  %_17 = getelementptr inbounds nuw i32, ptr %1, i64 %indvars.iv.next
  store i32 1, ptr %_17, align 4
  br label %bb18

panic11.invoke:                                   ; preds = %bb6, %bb14, %bb15, %bb32
  %30 = phi i64 [ %indvars.iv53, %bb32 ], [ %indvars.iv.next, %bb15 ], [ %indvars.iv.next, %bb14 ], [ %indvars.iv.next, %bb6 ]
  %31 = phi ptr [ @alloc_ef0edacf03aaa8c94e576a24ec1a90ea, %bb32 ], [ @alloc_8a99b88fe17d73a2021cbfc79d72a2de, %bb6 ], [ @alloc_de6d0e5aa5b4d63b62e4eada8b0f727c, %bb14 ], [ @alloc_23cbb11e7242fcd05b4b16eab77c1b8f, %bb15 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %30, i64 noundef %_4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %31) #21
          to label %panic11.cont unwind label %cleanup

panic11.cont:                                     ; preds = %panic11.invoke
  unreachable

bb18:                                             ; preds = %bb31, %bb38, %bb39, %bb30
  %_41 = icmp eq i64 %indvars.iv, 2
  br i1 %_41, label %bb24, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17ha35a428d957e14ffE.exit24"

bb30:                                             ; preds = %bb3
  %_13 = getelementptr inbounds nuw i32, ptr %1, i64 %indvars.iv.next
  store i32 2147483647, ptr %_13, align 4
  br label %bb18

panic12.invoke:                                   ; preds = %bb3, %bb24
  %32 = phi i64 [ 2, %bb24 ], [ %_4, %bb3 ]
  %33 = phi ptr [ @alloc_e87b4aa6c1a014a5b27ea247b003662c, %bb24 ], [ @alloc_27cf2f929f48d3e6c610894ac0f2af30, %bb3 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %indvars.iv.next, i64 noundef %32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %33) #21
          to label %panic12.cont unwind label %cleanup.thread

panic12.cont:                                     ; preds = %panic12.invoke
  unreachable
}
