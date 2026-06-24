define noundef range(i32 0, -2147483648) i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %arr.sroa.0.0.extract.trunc = trunc i64 %0 to i32
  %1 = bitcast i32 %arr.sroa.0.0.extract.trunc to float
  %arr.sroa.3.0.extract.shift = lshr i64 %0, 32
  %arr.sroa.3.0.extract.trunc = trunc nuw i64 %arr.sroa.3.0.extract.shift to i32
  %2 = bitcast i32 %arr.sroa.3.0.extract.trunc to float
  %iter3 = sext i32 %n to i64
  %_21.0.i.i.i.i = shl nsw i64 %iter3, 2
  %_21.1.i.i.i.i = icmp slt i32 %n, 0
  %_26.i.i.i.i = icmp ugt i64 %_21.0.i.i.i.i, 9223372036854775804
  %or.cond.i.i.i.i = or i1 %_21.1.i.i.i.i, %_26.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %bb3.i.i, label %bb17.i.i.i, !prof !339

bb17.i.i.i:                                       ; preds = %start
  %_8.i.i.i = icmp eq i32 %n, 0
  br i1 %_8.i.i.i, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h30022ffef08173ccE.exit", label %bb3.i.i.i

bb3.i.i.i:                                        ; preds = %bb17.i.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1031
; call __rustc::__rust_alloc
  %3 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1031
  %4 = icmp eq ptr %3, null
  br i1 %4, label %bb3.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2bdc9a0d452157a8E.exit.i.i"

bb3.i.i:                                          ; preds = %bb3.i.i.i, %start
  %_4.sroa.4.0.ph.i.i = phi i64 [ 4, %bb3.i.i.i ], [ 0, %start ]
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_4.sroa.4.0.ph.i.i, i64 %_21.0.i.i.i.i) #20, !noalias !1036
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2bdc9a0d452157a8E.exit.i.i": ; preds = %bb3.i.i.i
  %_2415.i.not.i = icmp eq i32 %n, 1
  br i1 %_2415.i.not.i, label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h7a53d9db1bbed067E.exit.split", label %bb3.i3.i.preheader

bb3.i3.i.preheader:                               ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2bdc9a0d452157a8E.exit.i.i"
  %5 = add nsw i64 %iter3, -1
  %min.iters.check = icmp ult i32 %n, 9
  br i1 %min.iters.check, label %bb3.i3.i.preheader73, label %vector.ph

vector.ph:                                        ; preds = %bb3.i3.i.preheader
  %n.vec = and i64 %5, -8
  %6 = shl nsw i64 %n.vec, 2
  %7 = getelementptr i8, ptr %3, i64 %6
  %8 = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %3, i64 %offset.idx
  %9 = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> splat (i32 1), ptr %next.gep, align 4, !noalias !1037
  store <4 x i32> splat (i32 1), ptr %9, align 4, !noalias !1037
  %index.next = add nuw i64 %index, 8
  %10 = icmp eq i64 %index.next, %n.vec
  br i1 %10, label %middle.block, label %vector.body, !llvm.loop !1040

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %5, %n.vec
  br i1 %cmp.n, label %bb21.preheader, label %bb3.i3.i.preheader73

bb3.i3.i.preheader73:                             ; preds = %bb3.i3.i.preheader, %middle.block
  %ptr.sroa.0.018.i.i.ph = phi ptr [ %3, %bb3.i3.i.preheader ], [ %7, %middle.block ]
  %iter.sroa.0.017.i.i.ph = phi i64 [ 1, %bb3.i3.i.preheader ], [ %8, %middle.block ]
  br label %bb3.i3.i

bb3.i3.i:                                         ; preds = %bb3.i3.i.preheader73, %bb3.i3.i
  %ptr.sroa.0.018.i.i = phi ptr [ %_15.i.i, %bb3.i3.i ], [ %ptr.sroa.0.018.i.i.ph, %bb3.i3.i.preheader73 ]
  %iter.sroa.0.017.i.i = phi i64 [ %_28.i.i, %bb3.i3.i ], [ %iter.sroa.0.017.i.i.ph, %bb3.i3.i.preheader73 ]
  %_28.i.i = add nuw i64 %iter.sroa.0.017.i.i, 1
  store i32 1, ptr %ptr.sroa.0.018.i.i, align 4, !noalias !1037
  %_15.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i, i64 4
  %exitcond.not.i.i = icmp eq i64 %_28.i.i, %iter3
  br i1 %exitcond.not.i.i, label %bb21.preheader, label %bb3.i3.i, !llvm.loop !1041

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h7a53d9db1bbed067E.exit.split": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2bdc9a0d452157a8E.exit.i.i"
  store i32 1, ptr %3, align 4, !noalias !1037
  br label %bb29.preheader

bb21.preheader:                                   ; preds = %bb3.i3.i, %middle.block
  %_15.i.i.lcssa = phi ptr [ %7, %middle.block ], [ %_15.i.i, %bb3.i3.i ]
  store i32 1, ptr %_15.i.i.lcssa, align 4, !noalias !1037
  %_19 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %_9 = fcmp ogt float %2, %1
  br i1 %_9, label %bb7, label %bb12

bb29.preheader:                                   ; preds = %bb12, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h7a53d9db1bbed067E.exit.split"
  %min.iters.check58 = icmp ult i32 %n, 8
  br i1 %min.iters.check58, label %bb29.preheader70, label %vector.ph59

vector.ph59:                                      ; preds = %bb29.preheader
  %n.vec61 = and i64 %iter3, 2147483640
  br label %vector.body62

vector.body62:                                    ; preds = %vector.body62, %vector.ph59
  %index63 = phi i64 [ 0, %vector.ph59 ], [ %index.next66, %vector.body62 ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph59 ], [ %13, %vector.body62 ]
  %vec.phi64 = phi <4 x i32> [ zeroinitializer, %vector.ph59 ], [ %14, %vector.body62 ]
  %11 = getelementptr inbounds nuw i32, ptr %3, i64 %index63
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 16
  %wide.load = load <4 x i32>, ptr %11, align 4
  %wide.load65 = load <4 x i32>, ptr %12, align 4
  %13 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi, <4 x i32> %wide.load)
  %14 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi64, <4 x i32> %wide.load65)
  %index.next66 = add nuw i64 %index63, 8
  %15 = icmp eq i64 %index.next66, %n.vec61
  br i1 %15, label %middle.block67, label %vector.body62, !llvm.loop !1042

middle.block67:                                   ; preds = %vector.body62
  %rdx.minmax = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %13, <4 x i32> %14)
  %16 = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax)
  %cmp.n68 = icmp eq i64 %n.vec61, %iter3
  br i1 %cmp.n68, label %bb2.i.i.i3.i, label %bb29.preheader70

bb29.preheader70:                                 ; preds = %bb29.preheader, %middle.block67
  %iter2.sroa.0.037.ph = phi i64 [ 0, %bb29.preheader ], [ %n.vec61, %middle.block67 ]
  %max_len.sroa.0.036.ph = phi i32 [ 0, %bb29.preheader ], [ %16, %middle.block67 ]
  br label %bb29

bb2.i.i.i3.i:                                     ; preds = %bb29, %middle.block67
  %max_len.sroa.0.1.lcssa = phi i32 [ %16, %middle.block67 ], [ %max_len.sroa.0.1, %bb29 ]
  %17 = shl nuw nsw i64 %iter3, 2
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %3, i64 noundef %17, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1043
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h30022ffef08173ccE.exit"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h30022ffef08173ccE.exit": ; preds = %bb17.i.i.i, %bb2.i.i.i3.i
  %max_len.sroa.0.0.lcssa55 = phi i32 [ %max_len.sroa.0.1.lcssa, %bb2.i.i.i3.i ], [ 0, %bb17.i.i.i ]
  ret i32 %max_len.sroa.0.0.lcssa55

bb29:                                             ; preds = %bb29.preheader70, %bb29
  %iter2.sroa.0.037 = phi i64 [ %18, %bb29 ], [ %iter2.sroa.0.037.ph, %bb29.preheader70 ]
  %max_len.sroa.0.036 = phi i32 [ %max_len.sroa.0.1, %bb29 ], [ %max_len.sroa.0.036.ph, %bb29.preheader70 ]
  %18 = add nuw i64 %iter2.sroa.0.037, 1
  %_31 = getelementptr inbounds nuw i32, ptr %3, i64 %iter2.sroa.0.037
  %_30 = load i32, ptr %_31, align 4, !noundef !23
  %max_len.sroa.0.1 = tail call i32 @llvm.smax.i32(i32 %max_len.sroa.0.036, i32 %_30)
  %exitcond.not = icmp eq i64 %18, %iter3
  br i1 %exitcond.not, label %bb2.i.i.i3.i, label %bb29, !llvm.loop !1052

cleanup:                                          ; preds = %panic6
  %19 = landingpad { ptr, i32 }
          cleanup
  %20 = shl nuw nsw i64 %iter3, 2
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %3, i64 noundef %20, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1053
  resume { ptr, i32 } %19

unreachable:                                      ; preds = %panic6
  unreachable

panic6:                                           ; preds = %bb12
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_c6aeff43c0c2d682ac0408d77489e1b3) #20
          to label %unreachable unwind label %cleanup

bb12:                                             ; preds = %bb25, %bb7, %bb28, %bb21.preheader
  %exitcond40.not = icmp eq i32 %n, 2
  br i1 %exitcond40.not, label %bb29.preheader, label %panic6

bb7:                                              ; preds = %bb21.preheader
  %_16 = fadd float %2, %1
  %_15 = frem float %_16, 2.000000e+00
  %_14 = fcmp une float %_15, 0.000000e+00
  br i1 %_14, label %bb25, label %bb12

bb25:                                             ; preds = %bb7
  %_18 = load i32, ptr %_19, align 4, !noundef !23
  %_21 = load i32, ptr %3, align 4, !noundef !23
  %_20 = add i32 %_21, 1
  %_17 = icmp slt i32 %_18, %_20
  br i1 %_17, label %bb28, label %bb12

bb28:                                             ; preds = %bb25
  store i32 %_20, ptr %_19, align 4
  br label %bb12
}
