define noundef range(i32 0, -2147483648) i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %e.i = alloca [0 x i8], align 1
  %arr.sroa.0.0.extract.trunc = trunc i64 %0 to i32
  %arr.sroa.3.0.extract.shift = lshr i64 %0, 32
  %arr.sroa.3.0.extract.trunc = trunc nuw i64 %arr.sroa.3.0.extract.shift to i32
  %_37 = icmp slt i32 %n, 0
  %_38 = zext i32 %n to i64
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %e.i)
  br i1 %_37, label %bb2.i, label %bb17.i.i.i, !prof !909

bb2.i:                                            ; preds = %start
; call core::result::unwrap_failed
  call void @_ZN4core6result13unwrap_failed17hac9339a6c7ad693bE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @alloc_00ae4b301f7fab8ac9617c03fcbd7274, i64 noundef 43, ptr noundef nonnull align 1 %e.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @vtable.0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_587b0cc76b30d160b83f17a85334bffd) #21
  unreachable

bb17.i.i.i:                                       ; preds = %start
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %e.i)
  %_21.0.i.i.i.i = shl nuw nsw i64 %_38, 2
  %_8.i.i.i = icmp eq i32 %n, 0
  br i1 %_8.i.i.i, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h30022ffef08173ccE.exit", label %bb3.i.i.i

bb3.i.i.i:                                        ; preds = %bb17.i.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !1031
; call __rustc::__rust_alloc
  %1 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1031
  %2 = icmp eq ptr %1, null
  br i1 %2, label %bb3.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2bdc9a0d452157a8E.exit.i.i"

bb3.i.i:                                          ; preds = %bb3.i.i.i
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef 4, i64 %_21.0.i.i.i.i) #21, !noalias !1036
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2bdc9a0d452157a8E.exit.i.i": ; preds = %bb3.i.i.i
  %_2415.i.i.not = icmp eq i32 %n, 1
  br i1 %_2415.i.i.not, label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h7a53d9db1bbed067E.exit.split", label %bb3.i3.i.preheader

bb3.i3.i.preheader:                               ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2bdc9a0d452157a8E.exit.i.i"
  %3 = add nsw i64 %_38, -1
  %min.iters.check = icmp ult i32 %n, 9
  br i1 %min.iters.check, label %bb3.i3.i.preheader102, label %vector.ph

vector.ph:                                        ; preds = %bb3.i3.i.preheader
  %n.vec = and i64 %3, -8
  %4 = shl nsw i64 %n.vec, 2
  %5 = getelementptr i8, ptr %1, i64 %4
  %6 = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %1, i64 %offset.idx
  %7 = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> splat (i32 1), ptr %next.gep, align 4, !noalias !1037
  store <4 x i32> splat (i32 1), ptr %7, align 4, !noalias !1037
  %index.next = add nuw i64 %index, 8
  %8 = icmp eq i64 %index.next, %n.vec
  br i1 %8, label %middle.block, label %vector.body, !llvm.loop !1040

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %bb25.preheader, label %bb3.i3.i.preheader102

bb3.i3.i.preheader102:                            ; preds = %bb3.i3.i.preheader, %middle.block
  %ptr.sroa.0.018.i.i.ph = phi ptr [ %1, %bb3.i3.i.preheader ], [ %5, %middle.block ]
  %iter.sroa.0.017.i.i.ph = phi i64 [ 1, %bb3.i3.i.preheader ], [ %6, %middle.block ]
  br label %bb3.i3.i

bb3.i3.i:                                         ; preds = %bb3.i3.i.preheader102, %bb3.i3.i
  %ptr.sroa.0.018.i.i = phi ptr [ %_15.i.i, %bb3.i3.i ], [ %ptr.sroa.0.018.i.i.ph, %bb3.i3.i.preheader102 ]
  %iter.sroa.0.017.i.i = phi i64 [ %_28.i.i, %bb3.i3.i ], [ %iter.sroa.0.017.i.i.ph, %bb3.i3.i.preheader102 ]
  %_28.i.i = add nuw nsw i64 %iter.sroa.0.017.i.i, 1
  store i32 1, ptr %ptr.sroa.0.018.i.i, align 4, !noalias !1037
  %_15.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i, i64 4
  %exitcond.not.i.i = icmp eq i64 %_28.i.i, %_38
  br i1 %exitcond.not.i.i, label %bb25.preheader, label %bb3.i3.i, !llvm.loop !1041

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h7a53d9db1bbed067E.exit.split": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2bdc9a0d452157a8E.exit.i.i"
  store i32 1, ptr %1, align 4, !noalias !1037
  br label %bb38.preheader

bb25.preheader:                                   ; preds = %bb3.i3.i, %middle.block
  %_15.i.i.lcssa = phi ptr [ %5, %middle.block ], [ %_15.i.i, %bb3.i3.i ]
  store i32 1, ptr %_15.i.i.lcssa, align 4, !noalias !1037
  %_22 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %_10 = icmp sgt i32 %arr.sroa.3.0.extract.trunc, %arr.sroa.0.0.extract.trunc
  br i1 %_10, label %bb8, label %bb13

bb38.preheader:                                   ; preds = %bb13, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h7a53d9db1bbed067E.exit.split"
  %_4.sroa.4.0.i.i5365.ph = phi i64 [ 2, %bb13 ], [ %_38, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h7a53d9db1bbed067E.exit.split" ]
  %wide.trip.count46 = zext nneg i32 %n to i64
  %9 = add nsw i64 %_38, -1
  %umin = tail call i64 @llvm.umin.i64(i64 %9, i64 %_38)
  %min.iters.check89 = icmp samesign ult i64 %umin, 8
  br i1 %min.iters.check89, label %bb38.preheader100, label %vector.ph90

vector.ph90:                                      ; preds = %bb38.preheader
  %10 = add nuw nsw i64 %umin, 1
  %n.mod.vf91 = and i64 %10, 7
  %11 = icmp eq i64 %n.mod.vf91, 0
  %12 = select i1 %11, i64 8, i64 %n.mod.vf91
  %n.vec92 = sub nsw i64 %10, %12
  br label %vector.body93

vector.body93:                                    ; preds = %vector.body93, %vector.ph90
  %index94 = phi i64 [ 0, %vector.ph90 ], [ %index.next97, %vector.body93 ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph90 ], [ %15, %vector.body93 ]
  %vec.phi95 = phi <4 x i32> [ zeroinitializer, %vector.ph90 ], [ %16, %vector.body93 ]
  %13 = getelementptr inbounds nuw i32, ptr %1, i64 %index94
  %14 = getelementptr inbounds nuw i8, ptr %13, i64 16
  %wide.load = load <4 x i32>, ptr %13, align 4
  %wide.load96 = load <4 x i32>, ptr %14, align 4
  %15 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi, <4 x i32> %wide.load)
  %16 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi95, <4 x i32> %wide.load96)
  %index.next97 = add nuw i64 %index94, 8
  %17 = icmp eq i64 %index.next97, %n.vec92
  br i1 %17, label %middle.block98, label %vector.body93, !llvm.loop !1042

middle.block98:                                   ; preds = %vector.body93
  %rdx.minmax = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %15, <4 x i32> %16)
  %18 = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax)
  br label %bb38.preheader100

bb38.preheader100:                                ; preds = %bb38.preheader, %middle.block98
  %indvars.iv.ph = phi i64 [ 0, %bb38.preheader ], [ %n.vec92, %middle.block98 ]
  %max_len.sroa.0.035.ph = phi i32 [ 0, %bb38.preheader ], [ %18, %middle.block98 ]
  br label %bb38

bb2.i.i.i3.i:                                     ; preds = %bb42
  %19 = shl nuw nsw i64 %_4.sroa.4.0.i.i5365.ph, 2
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef %19, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1043
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h30022ffef08173ccE.exit"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h30022ffef08173ccE.exit": ; preds = %bb17.i.i.i, %bb2.i.i.i3.i
  %max_len.sroa.0.0.lcssa80 = phi i32 [ %max_len.sroa.0.1, %bb2.i.i.i3.i ], [ 0, %bb17.i.i.i ]
  ret i32 %max_len.sroa.0.0.lcssa80

bb38:                                             ; preds = %bb38.preheader100, %bb42
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb42 ], [ %indvars.iv.ph, %bb38.preheader100 ]
  %max_len.sroa.0.035 = phi i32 [ %max_len.sroa.0.1, %bb42 ], [ %max_len.sroa.0.035.ph, %bb38.preheader100 ]
  %exitcond.not = icmp eq i64 %indvars.iv, %_38
  br i1 %exitcond.not, label %panic, label %bb42

bb42:                                             ; preds = %bb38
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %_34 = getelementptr inbounds nuw i32, ptr %1, i64 %indvars.iv
  %_33 = load i32, ptr %_34, align 4, !noundef !23
  %max_len.sroa.0.1 = tail call i32 @llvm.smax.i32(i32 %max_len.sroa.0.035, i32 %_33)
  %exitcond47.not = icmp eq i64 %indvars.iv.next, %wide.trip.count46
  br i1 %exitcond47.not, label %bb2.i.i.i3.i, label %bb38, !llvm.loop !1052

panic:                                            ; preds = %bb38
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_38, i64 noundef %_38, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_86558c888f51606b928a8e9d506f7647) #21
          to label %unreachable unwind label %cleanup

cleanup.thread:                                   ; preds = %panic5
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb2.i.i.i3.i20

cleanup:                                          ; preds = %panic
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb2.i.i.i3.i20

bb2.i.i.i3.i20:                                   ; preds = %cleanup, %cleanup.thread
  %lpad.phi85 = phi { ptr, i32 } [ %lpad.thr_comm, %cleanup.thread ], [ %lpad.thr_comm.split-lp, %cleanup ]
  %_4.sroa.4.0.i.i536484 = phi i64 [ %_38, %cleanup.thread ], [ %_4.sroa.4.0.i.i5365.ph, %cleanup ]
  %20 = shl nuw nsw i64 %_4.sroa.4.0.i.i536484, 2
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef %20, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1053
  resume { ptr, i32 } %lpad.phi85

unreachable:                                      ; preds = %panic5, %panic
  unreachable

panic5:                                           ; preds = %bb13
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_05f210d1c1c889d67ef9022de8f1125a) #21
          to label %unreachable unwind label %cleanup.thread

bb13:                                             ; preds = %bb34, %bb8, %bb37, %bb25.preheader
  %exitcond42.not = icmp eq i32 %n, 2
  br i1 %exitcond42.not, label %bb38.preheader, label %panic5

bb8:                                              ; preds = %bb25.preheader
  %_19 = add i32 %arr.sroa.0.0.extract.trunc, %arr.sroa.3.0.extract.trunc
  %21 = and i32 %_19, 1
  %_17.not = icmp eq i32 %21, 0
  br i1 %_17.not, label %bb13, label %bb34

bb34:                                             ; preds = %bb8
  %_21 = load i32, ptr %_22, align 4, !noundef !23
  %_24 = load i32, ptr %1, align 4, !noundef !23
  %_23 = add i32 %_24, 1
  %_20 = icmp slt i32 %_21, %_23
  br i1 %_20, label %bb37, label %bb13

bb37:                                             ; preds = %bb34
  store i32 %_23, ptr %_22, align 4
  br label %bb13
}
