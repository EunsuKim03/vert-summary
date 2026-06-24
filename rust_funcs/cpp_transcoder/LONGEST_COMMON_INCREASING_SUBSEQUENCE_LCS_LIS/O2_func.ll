define noundef range(i32 0, -2147483648) i32 @f_gold(i64 %0, i32 noundef %n, i64 %1, i32 noundef %m) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %arr1 = alloca [8 x i8], align 8
  store i64 %0, ptr %arr1, align 8
  %arr2.sroa.0.0.extract.trunc = trunc i64 %1 to i32
  %arr2.sroa.2.0.extract.shift = lshr i64 %1, 32
  %arr2.sroa.2.0.extract.trunc = trunc nuw i64 %arr2.sroa.2.0.extract.shift to i32
  %iter3 = sext i32 %m to i64
  %_21.0.i.i.i = shl nsw i64 %iter3, 2
  %_21.1.i.i.i = icmp slt i32 %m, 0
  %_26.i.i.i = icmp ugt i64 %_21.0.i.i.i, 9223372036854775804
  %or.cond.i.i.i = or i1 %_21.1.i.i.i, %_26.i.i.i
  br i1 %or.cond.i.i.i, label %bb14.i, label %bb17.i.i, !prof !339

bb17.i.i:                                         ; preds = %start
  %_8.i.i = icmp eq i32 %m, 0
  br i1 %_8.i.i, label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hcf3a3a7afdf92304E.exit", label %bb3.i3.i

bb3.i3.i:                                         ; preds = %bb17.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !1031
; call __rustc::__rust_alloc_zeroed
  %2 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1031
  %3 = icmp eq ptr %2, null
  br i1 %3, label %bb14.i, label %bb10.i.i

bb10.i.i:                                         ; preds = %bb3.i3.i
  %4 = ptrtoint ptr %2 to i64
  br label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hcf3a3a7afdf92304E.exit"

bb14.i:                                           ; preds = %bb3.i3.i, %start
  %_16.sroa.4.0.ph.i = phi i64 [ 4, %bb3.i3.i ], [ 0, %start ]
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_16.sroa.4.0.ph.i, i64 %_21.0.i.i.i) #21, !noalias !1036
  unreachable

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hcf3a3a7afdf92304E.exit": ; preds = %bb17.i.i, %bb10.i.i
  %_16.sroa.10.0.i = phi i64 [ %4, %bb10.i.i ], [ 4, %bb17.i.i ]
  %5 = inttoptr i64 %_16.sroa.10.0.i to ptr
  %_3938 = icmp sgt i32 %n, 0
  br i1 %_3938, label %bb25.lr.ph, label %bb17.preheader

bb25.lr.ph:                                       ; preds = %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hcf3a3a7afdf92304E.exit"
  %_4635.not = icmp eq i32 %m, 0
  %wide.trip.count48 = zext nneg i32 %n to i64
  %exitcond46.not = icmp eq i32 %m, 1
  %_22.1 = getelementptr inbounds nuw i8, ptr %5, i64 4
  %exitcond46.1.not = icmp eq i32 %m, 2
  br i1 %_4635.not, label %bb1.loopexit.peel, label %bb30.lr.ph.split.peel

bb30.lr.ph.split.peel:                            ; preds = %bb25.lr.ph
  %_12.peel = load i32, ptr %arr1, align 8, !noundef !23
  %_11.peel = icmp eq i32 %_12.peel, %arr2.sroa.0.0.extract.trunc
  br i1 %_11.peel, label %bb5.peel, label %bb11.peel

bb5.peel:                                         ; preds = %bb30.lr.ph.split.peel
  %_21.peel = load i32, ptr %5, align 4, !noundef !23
  %_18.peel = icmp slt i32 %_21.peel, 1
  br i1 %_18.peel, label %bb35.peel, label %bb11.peel

bb35.peel:                                        ; preds = %bb5.peel
  store i32 1, ptr %5, align 4
  br label %bb11.peel

bb11.peel:                                        ; preds = %bb35.peel, %bb5.peel, %bb30.lr.ph.split.peel
  %_25.peel = icmp sgt i32 %_12.peel, %arr2.sroa.0.0.extract.trunc
  br i1 %_25.peel, label %bb12.peel, label %bb16.peel

bb12.peel:                                        ; preds = %bb11.peel
  %_27.peel = load i32, ptr %5, align 4, !noundef !23
  %spec.select.peel = tail call i32 @llvm.smax.i32(i32 %_27.peel, i32 0)
  %6 = add nuw i32 %spec.select.peel, 1
  br label %bb16.peel

bb16.peel:                                        ; preds = %bb12.peel, %bb11.peel
  %current.sroa.0.1.peel = phi i32 [ 1, %bb11.peel ], [ %6, %bb12.peel ]
  br i1 %exitcond46.not, label %bb1.loopexit.peel, label %bb30.1.peel

bb30.1.peel:                                      ; preds = %bb16.peel
  %_11.1.peel = icmp eq i32 %_12.peel, %arr2.sroa.2.0.extract.trunc
  br i1 %_11.1.peel, label %bb5.1.peel, label %bb16.1.peel

bb5.1.peel:                                       ; preds = %bb30.1.peel
  %_21.1.peel = load i32, ptr %_22.1, align 4, !noundef !23
  %_18.1.peel = icmp sgt i32 %current.sroa.0.1.peel, %_21.1.peel
  br i1 %_18.1.peel, label %bb35.1.peel, label %bb16.1.peel

bb35.1.peel:                                      ; preds = %bb5.1.peel
  store i32 %current.sroa.0.1.peel, ptr %_22.1, align 4
  br label %bb16.1.peel

bb16.1.peel:                                      ; preds = %bb35.1.peel, %bb5.1.peel, %bb30.1.peel
  br i1 %exitcond46.1.not, label %bb1.loopexit.peel, label %panic7.invoke

bb1.loopexit.peel:                                ; preds = %bb16.1.peel, %bb16.peel, %bb25.lr.ph
  %exitcond.not.peel = icmp eq i32 %n, 1
  br i1 %exitcond.not.peel, label %bb17.preheader, label %bb25.peel60

bb25.peel60:                                      ; preds = %bb1.loopexit.peel
  br i1 %_4635.not, label %bb1.loopexit.peel85, label %bb30.lr.ph.split.peel64

bb30.lr.ph.split.peel64:                          ; preds = %bb25.peel60
  %7 = getelementptr inbounds nuw i8, ptr %arr1, i64 4
  %_12.peel65 = load i32, ptr %7, align 4, !noundef !23
  %_11.peel66 = icmp eq i32 %_12.peel65, %arr2.sroa.0.0.extract.trunc
  br i1 %_11.peel66, label %bb5.peel67, label %bb11.peel71

bb5.peel67:                                       ; preds = %bb30.lr.ph.split.peel64
  %_21.peel68 = load i32, ptr %5, align 4, !noundef !23
  %_18.peel69 = icmp slt i32 %_21.peel68, 1
  br i1 %_18.peel69, label %bb35.peel70, label %bb11.peel71

bb35.peel70:                                      ; preds = %bb5.peel67
  store i32 1, ptr %5, align 4
  br label %bb11.peel71

bb11.peel71:                                      ; preds = %bb35.peel70, %bb5.peel67, %bb30.lr.ph.split.peel64
  %_25.peel72 = icmp sgt i32 %_12.peel65, %arr2.sroa.0.0.extract.trunc
  br i1 %_25.peel72, label %bb12.peel73, label %bb16.peel76

bb12.peel73:                                      ; preds = %bb11.peel71
  %_27.peel74 = load i32, ptr %5, align 4, !noundef !23
  %spec.select.peel75 = tail call i32 @llvm.smax.i32(i32 %_27.peel74, i32 0)
  %8 = add nuw i32 %spec.select.peel75, 1
  br label %bb16.peel76

bb16.peel76:                                      ; preds = %bb12.peel73, %bb11.peel71
  %current.sroa.0.1.peel77 = phi i32 [ 1, %bb11.peel71 ], [ %8, %bb12.peel73 ]
  br i1 %exitcond46.not, label %bb1.loopexit.peel85, label %bb30.1.peel78

bb30.1.peel78:                                    ; preds = %bb16.peel76
  %_11.1.peel79 = icmp eq i32 %_12.peel65, %arr2.sroa.2.0.extract.trunc
  br i1 %_11.1.peel79, label %bb5.1.peel80, label %bb16.1.peel84

bb5.1.peel80:                                     ; preds = %bb30.1.peel78
  %_21.1.peel81 = load i32, ptr %_22.1, align 4, !noundef !23
  %_18.1.peel82 = icmp sgt i32 %current.sroa.0.1.peel77, %_21.1.peel81
  br i1 %_18.1.peel82, label %bb35.1.peel83, label %bb16.1.peel84

bb35.1.peel83:                                    ; preds = %bb5.1.peel80
  store i32 %current.sroa.0.1.peel77, ptr %_22.1, align 4
  br label %bb16.1.peel84

bb16.1.peel84:                                    ; preds = %bb35.1.peel83, %bb5.1.peel80, %bb30.1.peel78
  br i1 %exitcond46.1.not, label %bb1.loopexit.peel85, label %panic7.invoke

bb1.loopexit.peel85:                              ; preds = %bb16.1.peel84, %bb16.peel76, %bb25.peel60
  %exitcond.not.peel86 = icmp eq i32 %n, 2
  br i1 %exitcond.not.peel86, label %bb17.preheader, label %bb25

bb1.loopexit:                                     ; preds = %bb25
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count48
  br i1 %exitcond.not, label %bb17.preheader, label %bb25, !llvm.loop !1037

bb17.preheader:                                   ; preds = %bb1.loopexit.peel, %bb1.loopexit.peel85, %bb1.loopexit, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hcf3a3a7afdf92304E.exit"
  br i1 %_8.i.i, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h133522a0d230829eE.exit", label %bb40.preheader

bb40.preheader:                                   ; preds = %bb17.preheader
  %min.iters.check = icmp ult i32 %m, 8
  br i1 %min.iters.check, label %bb40.preheader56, label %vector.ph

vector.ph:                                        ; preds = %bb40.preheader
  %n.vec = and i64 %iter3, 2147483640
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %11, %vector.body ]
  %vec.phi54 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %12, %vector.body ]
  %9 = getelementptr inbounds nuw i32, ptr %5, i64 %index
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 16
  %wide.load = load <4 x i32>, ptr %9, align 4
  %wide.load55 = load <4 x i32>, ptr %10, align 4
  %11 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load, <4 x i32> %vec.phi)
  %12 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load55, <4 x i32> %vec.phi54)
  %index.next = add nuw i64 %index, 8
  %13 = icmp eq i64 %index.next, %n.vec
  br i1 %13, label %middle.block, label %vector.body, !llvm.loop !1039

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %11, <4 x i32> %12)
  %14 = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax)
  %cmp.n = icmp eq i64 %n.vec, %iter3
  br i1 %cmp.n, label %bb2.i.i.i3.i, label %bb40.preheader56

bb40.preheader56:                                 ; preds = %bb40.preheader, %middle.block
  %iter2.sroa.0.042.ph = phi i64 [ 0, %bb40.preheader ], [ %n.vec, %middle.block ]
  %result.sroa.0.041.ph = phi i32 [ 0, %bb40.preheader ], [ %14, %middle.block ]
  br label %bb40

bb25:                                             ; preds = %bb1.loopexit.peel85, %bb1.loopexit
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb1.loopexit ], [ 2, %bb1.loopexit.peel85 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %_4635.not, label %bb1.loopexit, label %panic7.invoke

bb2.i.i.i3.i:                                     ; preds = %bb40, %middle.block
  %result.sroa.0.1.lcssa = phi i32 [ %14, %middle.block ], [ %result.sroa.0.1, %bb40 ]
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %5, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1040
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h133522a0d230829eE.exit"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h133522a0d230829eE.exit": ; preds = %bb17.preheader, %bb2.i.i.i3.i
  %result.sroa.0.0.lcssa51 = phi i32 [ %result.sroa.0.1.lcssa, %bb2.i.i.i3.i ], [ 0, %bb17.preheader ]
  ret i32 %result.sroa.0.0.lcssa51

bb40:                                             ; preds = %bb40.preheader56, %bb40
  %iter2.sroa.0.042 = phi i64 [ %15, %bb40 ], [ %iter2.sroa.0.042.ph, %bb40.preheader56 ]
  %result.sroa.0.041 = phi i32 [ %result.sroa.0.1, %bb40 ], [ %result.sroa.0.041.ph, %bb40.preheader56 ]
  %15 = add nuw i64 %iter2.sroa.0.042, 1
  %_36 = getelementptr inbounds nuw i32, ptr %5, i64 %iter2.sroa.0.042
  %_35 = load i32, ptr %_36, align 4, !noundef !23
  %result.sroa.0.1 = tail call i32 @llvm.smax.i32(i32 %_35, i32 %result.sroa.0.041)
  %exitcond49.not = icmp eq i64 %15, %iter3
  br i1 %exitcond49.not, label %bb2.i.i.i3.i, label %bb40, !llvm.loop !1049

cleanup:                                          ; preds = %panic7.invoke
  %16 = landingpad { ptr, i32 }
          cleanup
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %5, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1050
  resume { ptr, i32 } %16

panic7.invoke:                                    ; preds = %bb25, %bb16.1.peel84, %bb16.1.peel
  %17 = phi i64 [ 2, %bb16.1.peel ], [ 2, %bb16.1.peel84 ], [ %indvars.iv, %bb25 ]
  %18 = phi ptr [ @alloc_078471357d30bf963784ffc15c482f58, %bb16.1.peel ], [ @alloc_078471357d30bf963784ffc15c482f58, %bb16.1.peel84 ], [ @alloc_007194f7371b59395179ea9cdd103097, %bb25 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %17, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %18) #21
          to label %panic7.cont unwind label %cleanup

panic7.cont:                                      ; preds = %panic7.invoke
  unreachable
}
