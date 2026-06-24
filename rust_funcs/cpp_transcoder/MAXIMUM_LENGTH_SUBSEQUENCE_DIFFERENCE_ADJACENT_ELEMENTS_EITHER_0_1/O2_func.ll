define noundef range(i32 0, -2147483648) i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %arr.sroa.0.0.extract.trunc = trunc i64 %0 to i32
  %arr.sroa.2.0.extract.shift = lshr i64 %0, 32
  %arr.sroa.2.0.extract.trunc = trunc nuw i64 %arr.sroa.2.0.extract.shift to i32
  %_4 = sext i32 %n to i64
  %_21.0.i.i.i.i = shl nsw i64 %_4, 2
  %_21.1.i.i.i.i = icmp slt i32 %n, 0
  %_26.i.i.i.i = icmp ugt i64 %_21.0.i.i.i.i, 9223372036854775804
  %or.cond.i.i.i.i = or i1 %_21.1.i.i.i.i, %_26.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %bb3.i.i, label %bb17.i.i.i, !prof !339

bb17.i.i.i:                                       ; preds = %start
  %_8.i.i.i = icmp eq i32 %n, 0
  br i1 %_8.i.i.i, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h5ced7fc63f398367E.exit", label %bb3.i.i.i

bb3.i.i.i:                                        ; preds = %bb17.i.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1031
; call __rustc::__rust_alloc
  %1 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1031
  %2 = icmp eq ptr %1, null
  br i1 %2, label %bb3.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17haccc56110cedfadeE.exit.i.i"

bb3.i.i:                                          ; preds = %bb3.i.i.i, %start
  %_4.sroa.4.0.ph.i.i = phi i64 [ 4, %bb3.i.i.i ], [ 0, %start ]
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_4.sroa.4.0.ph.i.i, i64 %_21.0.i.i.i.i) #20, !noalias !1036
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17haccc56110cedfadeE.exit.i.i": ; preds = %bb3.i.i.i
  %_2415.i.not.i = icmp eq i32 %n, 1
  br i1 %_2415.i.not.i, label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h79b66f2cd6fb0c3bE.exit.split", label %bb3.i3.i.preheader

bb3.i3.i.preheader:                               ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17haccc56110cedfadeE.exit.i.i"
  %3 = add nsw i64 %_4, -1
  %min.iters.check = icmp ult i32 %n, 9
  br i1 %min.iters.check, label %bb3.i3.i.preheader72, label %vector.ph

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
  br i1 %cmp.n, label %bb18.preheader, label %bb3.i3.i.preheader72

bb3.i3.i.preheader72:                             ; preds = %bb3.i3.i.preheader, %middle.block
  %ptr.sroa.0.018.i.i.ph = phi ptr [ %1, %bb3.i3.i.preheader ], [ %5, %middle.block ]
  %iter.sroa.0.017.i.i.ph = phi i64 [ 1, %bb3.i3.i.preheader ], [ %6, %middle.block ]
  br label %bb3.i3.i

bb3.i3.i:                                         ; preds = %bb3.i3.i.preheader72, %bb3.i3.i
  %ptr.sroa.0.018.i.i = phi ptr [ %_15.i.i, %bb3.i3.i ], [ %ptr.sroa.0.018.i.i.ph, %bb3.i3.i.preheader72 ]
  %iter.sroa.0.017.i.i = phi i64 [ %_28.i.i, %bb3.i3.i ], [ %iter.sroa.0.017.i.i.ph, %bb3.i3.i.preheader72 ]
  %_28.i.i = add nuw i64 %iter.sroa.0.017.i.i, 1
  store i32 1, ptr %ptr.sroa.0.018.i.i, align 4, !noalias !1037
  %_15.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i, i64 4
  %exitcond.not.i.i = icmp eq i64 %_28.i.i, %_4
  br i1 %exitcond.not.i.i, label %bb18.preheader, label %bb3.i3.i, !llvm.loop !1041

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h79b66f2cd6fb0c3bE.exit.split": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17haccc56110cedfadeE.exit.i.i"
  store i32 1, ptr %1, align 4, !noalias !1037
  br label %bb35.preheader

bb18.preheader:                                   ; preds = %bb3.i3.i, %middle.block
  %_15.i.i.lcssa = phi ptr [ %5, %middle.block ], [ %_15.i.i, %bb3.i3.i ]
  store i32 1, ptr %_15.i.i.lcssa, align 4, !noalias !1037
  %_20 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %_11 = sub i32 %arr.sroa.2.0.extract.trunc, %arr.sroa.0.0.extract.trunc
  %_10.sroa.0.0 = tail call i32 @llvm.abs.i32(i32 %_11, i1 false)
  %_9 = icmp slt i32 %_10.sroa.0.0, 2
  br i1 %_9, label %bb5, label %bb9

bb35.preheader:                                   ; preds = %bb9, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h79b66f2cd6fb0c3bE.exit.split"
  %wide.trip.count40 = zext nneg i32 %n to i64
  %min.iters.check57 = icmp ult i32 %n, 8
  br i1 %min.iters.check57, label %bb35.preheader69, label %vector.ph58

vector.ph58:                                      ; preds = %bb35.preheader
  %n.vec60 = and i64 %wide.trip.count40, 2147483640
  br label %vector.body61

vector.body61:                                    ; preds = %vector.body61, %vector.ph58
  %index62 = phi i64 [ 0, %vector.ph58 ], [ %index.next65, %vector.body61 ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph58 ], [ %11, %vector.body61 ]
  %vec.phi63 = phi <4 x i32> [ zeroinitializer, %vector.ph58 ], [ %12, %vector.body61 ]
  %9 = getelementptr inbounds nuw i32, ptr %1, i64 %index62
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 16
  %wide.load = load <4 x i32>, ptr %9, align 4
  %wide.load64 = load <4 x i32>, ptr %10, align 4
  %11 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi, <4 x i32> %wide.load)
  %12 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi63, <4 x i32> %wide.load64)
  %index.next65 = add nuw i64 %index62, 8
  %13 = icmp eq i64 %index.next65, %n.vec60
  br i1 %13, label %middle.block66, label %vector.body61, !llvm.loop !1042

middle.block66:                                   ; preds = %vector.body61
  %rdx.minmax = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %11, <4 x i32> %12)
  %14 = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax)
  %cmp.n67 = icmp eq i64 %n.vec60, %wide.trip.count40
  br i1 %cmp.n67, label %bb2.i.i.i3.i, label %bb35.preheader69

bb35.preheader69:                                 ; preds = %bb35.preheader, %middle.block66
  %indvars.iv.ph = phi i64 [ 0, %bb35.preheader ], [ %n.vec60, %middle.block66 ]
  %max.sroa.0.033.ph = phi i32 [ 0, %bb35.preheader ], [ %14, %middle.block66 ]
  br label %bb35

bb2.i.i.i3.i:                                     ; preds = %bb35, %middle.block66
  %max.sroa.0.1.lcssa = phi i32 [ %14, %middle.block66 ], [ %max.sroa.0.1, %bb35 ]
  %15 = shl nuw nsw i64 %_4, 2
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef %15, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1043
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h5ced7fc63f398367E.exit"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h5ced7fc63f398367E.exit": ; preds = %bb17.i.i.i, %bb2.i.i.i3.i
  %max.sroa.0.0.lcssa54 = phi i32 [ %max.sroa.0.1.lcssa, %bb2.i.i.i3.i ], [ 0, %bb17.i.i.i ]
  ret i32 %max.sroa.0.0.lcssa54

bb35:                                             ; preds = %bb35.preheader69, %bb35
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb35 ], [ %indvars.iv.ph, %bb35.preheader69 ]
  %max.sroa.0.033 = phi i32 [ %max.sroa.0.1, %bb35 ], [ %max.sroa.0.033.ph, %bb35.preheader69 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %_32 = getelementptr inbounds nuw i32, ptr %1, i64 %indvars.iv
  %_31 = load i32, ptr %_32, align 4, !noundef !23
  %max.sroa.0.1 = tail call i32 @llvm.smax.i32(i32 %max.sroa.0.033, i32 %_31)
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count40
  br i1 %exitcond.not, label %bb2.i.i.i3.i, label %bb35, !llvm.loop !1052

cleanup:                                          ; preds = %panic5
  %16 = landingpad { ptr, i32 }
          cleanup
  %17 = shl nuw nsw i64 %_4, 2
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef %17, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1053
  resume { ptr, i32 } %16

unreachable:                                      ; preds = %panic5
  unreachable

panic5:                                           ; preds = %bb9
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_a88f0991d6f405bdb00dbe0b92b22e27) #20
          to label %unreachable unwind label %cleanup

bb5:                                              ; preds = %bb18.preheader
  %_19 = load i32, ptr %_20, align 4, !noundef !23
  %_22 = load i32, ptr %1, align 4, !noundef !23
  %_21 = add i32 %_22, 1
  %_18 = icmp slt i32 %_19, %_21
  br i1 %_18, label %bb34, label %bb9

bb9:                                              ; preds = %bb18.preheader, %bb5, %bb34
  %exitcond38.not = icmp eq i32 %n, 2
  br i1 %exitcond38.not, label %bb35.preheader, label %panic5

bb34:                                             ; preds = %bb5
  store i32 %_21, ptr %_20, align 4
  br label %bb9
}
