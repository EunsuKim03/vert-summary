define noundef range(i32 0, -2147483648) i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %arr.sroa.0.0.extract.trunc = trunc i64 %0 to i32
  %arr.sroa.3.0.extract.shift = lshr i64 %0, 32
  %arr.sroa.3.0.extract.trunc = trunc nuw i64 %arr.sroa.3.0.extract.shift to i32
  %iter3 = sext i32 %n to i64
  %_21.0.i.i.i.i = shl nsw i64 %iter3, 2
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
  %3 = add nsw i64 %iter3, -1
  %min.iters.check = icmp ult i32 %n, 9
  br i1 %min.iters.check, label %bb3.i3.i.preheader71, label %vector.ph

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
  br i1 %cmp.n, label %bb18.preheader, label %bb3.i3.i.preheader71

bb3.i3.i.preheader71:                             ; preds = %bb3.i3.i.preheader, %middle.block
  %ptr.sroa.0.018.i.i.ph = phi ptr [ %1, %bb3.i3.i.preheader ], [ %5, %middle.block ]
  %iter.sroa.0.017.i.i.ph = phi i64 [ 1, %bb3.i3.i.preheader ], [ %6, %middle.block ]
  br label %bb3.i3.i

bb3.i3.i:                                         ; preds = %bb3.i3.i.preheader71, %bb3.i3.i
  %ptr.sroa.0.018.i.i = phi ptr [ %_15.i.i, %bb3.i3.i ], [ %ptr.sroa.0.018.i.i.ph, %bb3.i3.i.preheader71 ]
  %iter.sroa.0.017.i.i = phi i64 [ %_28.i.i, %bb3.i3.i ], [ %iter.sroa.0.017.i.i.ph, %bb3.i3.i.preheader71 ]
  %_28.i.i = add nuw i64 %iter.sroa.0.017.i.i, 1
  store i32 1, ptr %ptr.sroa.0.018.i.i, align 4, !noalias !1037
  %_15.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i, i64 4
  %exitcond.not.i.i = icmp eq i64 %_28.i.i, %iter3
  br i1 %exitcond.not.i.i, label %bb18.preheader, label %bb3.i3.i, !llvm.loop !1041

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h79b66f2cd6fb0c3bE.exit.split": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17haccc56110cedfadeE.exit.i.i"
  store i32 1, ptr %1, align 4, !noalias !1037
  br label %bb30.preheader

bb18.preheader:                                   ; preds = %bb3.i3.i, %middle.block
  %_15.i.i.lcssa = phi ptr [ %5, %middle.block ], [ %_15.i.i, %bb3.i3.i ]
  store i32 1, ptr %_15.i.i.lcssa, align 4, !noalias !1037
  %_18 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %_11 = sub i32 %arr.sroa.3.0.extract.trunc, %arr.sroa.0.0.extract.trunc
  %_10.sroa.0.0 = tail call i32 @llvm.abs.i32(i32 %_11, i1 false)
  %_9 = icmp slt i32 %_10.sroa.0.0, 2
  br i1 %_9, label %bb26, label %bb9

bb30.preheader:                                   ; preds = %bb9, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h79b66f2cd6fb0c3bE.exit.split"
  %min.iters.check56 = icmp ult i32 %n, 8
  br i1 %min.iters.check56, label %bb30.preheader68, label %vector.ph57

vector.ph57:                                      ; preds = %bb30.preheader
  %n.vec59 = and i64 %iter3, 2147483640
  br label %vector.body60

vector.body60:                                    ; preds = %vector.body60, %vector.ph57
  %index61 = phi i64 [ 0, %vector.ph57 ], [ %index.next64, %vector.body60 ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph57 ], [ %11, %vector.body60 ]
  %vec.phi62 = phi <4 x i32> [ zeroinitializer, %vector.ph57 ], [ %12, %vector.body60 ]
  %9 = getelementptr inbounds nuw i32, ptr %1, i64 %index61
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 16
  %wide.load = load <4 x i32>, ptr %9, align 4
  %wide.load63 = load <4 x i32>, ptr %10, align 4
  %11 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi, <4 x i32> %wide.load)
  %12 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi62, <4 x i32> %wide.load63)
  %index.next64 = add nuw i64 %index61, 8
  %13 = icmp eq i64 %index.next64, %n.vec59
  br i1 %13, label %middle.block65, label %vector.body60, !llvm.loop !1042

middle.block65:                                   ; preds = %vector.body60
  %rdx.minmax = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %11, <4 x i32> %12)
  %14 = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax)
  %cmp.n66 = icmp eq i64 %n.vec59, %iter3
  br i1 %cmp.n66, label %bb2.i.i.i3.i, label %bb30.preheader68

bb30.preheader68:                                 ; preds = %bb30.preheader, %middle.block65
  %iter2.sroa.0.035.ph = phi i64 [ 0, %bb30.preheader ], [ %n.vec59, %middle.block65 ]
  %max.sroa.0.034.ph = phi i32 [ 0, %bb30.preheader ], [ %14, %middle.block65 ]
  br label %bb30

bb2.i.i.i3.i:                                     ; preds = %bb30, %middle.block65
  %max.sroa.0.1.lcssa = phi i32 [ %14, %middle.block65 ], [ %max.sroa.0.1, %bb30 ]
  %15 = shl nuw nsw i64 %iter3, 2
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef %15, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1043
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h5ced7fc63f398367E.exit"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h5ced7fc63f398367E.exit": ; preds = %bb17.i.i.i, %bb2.i.i.i3.i
  %max.sroa.0.0.lcssa53 = phi i32 [ %max.sroa.0.1.lcssa, %bb2.i.i.i3.i ], [ 0, %bb17.i.i.i ]
  ret i32 %max.sroa.0.0.lcssa53

bb30:                                             ; preds = %bb30.preheader68, %bb30
  %iter2.sroa.0.035 = phi i64 [ %16, %bb30 ], [ %iter2.sroa.0.035.ph, %bb30.preheader68 ]
  %max.sroa.0.034 = phi i32 [ %max.sroa.0.1, %bb30 ], [ %max.sroa.0.034.ph, %bb30.preheader68 ]
  %16 = add nuw i64 %iter2.sroa.0.035, 1
  %_30 = getelementptr inbounds nuw i32, ptr %1, i64 %iter2.sroa.0.035
  %_29 = load i32, ptr %_30, align 4, !noundef !23
  %max.sroa.0.1 = tail call i32 @llvm.smax.i32(i32 %max.sroa.0.034, i32 %_29)
  %exitcond.not = icmp eq i64 %16, %iter3
  br i1 %exitcond.not, label %bb2.i.i.i3.i, label %bb30, !llvm.loop !1052

cleanup:                                          ; preds = %panic6
  %17 = landingpad { ptr, i32 }
          cleanup
  %18 = shl nuw nsw i64 %iter3, 2
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef %18, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1053
  resume { ptr, i32 } %17

unreachable:                                      ; preds = %panic6
  unreachable

panic6:                                           ; preds = %bb9
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_de098357015bed8deb42306ea9cb6a66) #20
          to label %unreachable unwind label %cleanup

bb9:                                              ; preds = %bb18.preheader, %bb26, %bb29
  %exitcond38.not = icmp eq i32 %n, 2
  br i1 %exitcond38.not, label %bb30.preheader, label %panic6

bb26:                                             ; preds = %bb18.preheader
  %_17 = load i32, ptr %_18, align 4, !noundef !23
  %_20 = load i32, ptr %1, align 4, !noundef !23
  %_19 = add i32 %_20, 1
  %_16 = icmp slt i32 %_17, %_19
  br i1 %_16, label %bb29, label %bb9

bb29:                                             ; preds = %bb26
  store i32 %_19, ptr %_18, align 4
  br label %bb9
}
