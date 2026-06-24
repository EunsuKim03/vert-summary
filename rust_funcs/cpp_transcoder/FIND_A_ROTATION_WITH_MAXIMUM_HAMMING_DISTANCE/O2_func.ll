define noundef i32 @f_gold(ptr noalias noundef nonnull readonly align 4 captures(none) %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, i32 noundef %n) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_6 = shl i32 %n, 1
  %0 = or disjoint i32 %_6, 1
  %_4 = sext i32 %0 to i64
  %_21.0.i.i.i = shl nsw i64 %_4, 2
  %_21.1.i.i.i = icmp slt i32 %_6, 0
  %_26.i.i.i = icmp ugt i64 %_21.0.i.i.i, 9223372036854775804
  %or.cond.i.i.i = or i1 %_21.1.i.i.i, %_26.i.i.i
  br i1 %or.cond.i.i.i, label %bb14.i, label %bb17.i.i, !prof !339

bb17.i.i:                                         ; preds = %start
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !1031
; call __rustc::__rust_alloc_zeroed
  %1 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1031
  %2 = icmp eq ptr %1, null
  br i1 %2, label %bb14.i, label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hdf8553ad3567bd81E.exit"

bb14.i:                                           ; preds = %bb17.i.i, %start
  %_16.sroa.4.0.ph.i = phi i64 [ 4, %bb17.i.i ], [ 0, %start ]
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_16.sroa.4.0.ph.i, i64 %_21.0.i.i.i) #21, !noalias !1036
  unreachable

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hdf8553ad3567bd81E.exit": ; preds = %bb17.i.i
  %iter4 = sext i32 %n to i64
  %_3746.not = icmp eq i32 %n, 0
  br i1 %_3746.not, label %bb16, label %bb20.preheader

bb20.preheader:                                   ; preds = %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hdf8553ad3567bd81E.exit"
  %3 = add nsw i64 %iter4, -1
  %umin = tail call i64 @llvm.umin.i64(i64 %arr.1, i64 %3)
  %umin91 = tail call i64 @llvm.umin.i64(i64 %umin, i64 %_4)
  %min.iters.check = icmp samesign ult i64 %umin91, 8
  br i1 %min.iters.check, label %bb20.preheader133, label %vector.ph

bb20.preheader133:                                ; preds = %vector.body, %bb20.preheader
  %iter.sroa.0.047.ph = phi i64 [ 0, %bb20.preheader ], [ %n.vec, %vector.body ]
  br label %bb20

vector.ph:                                        ; preds = %bb20.preheader
  %4 = add nuw nsw i64 %umin91, 1
  %n.mod.vf = and i64 %4, 7
  %5 = icmp eq i64 %n.mod.vf, 0
  %6 = select i1 %5, i64 8, i64 %n.mod.vf
  %n.vec = sub nsw i64 %4, %6
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %7 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %index
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %wide.load = load <4 x i32>, ptr %7, align 4
  %wide.load92 = load <4 x i32>, ptr %8, align 4
  %9 = getelementptr inbounds nuw i32, ptr %1, i64 %index
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 16
  store <4 x i32> %wide.load, ptr %9, align 4
  store <4 x i32> %wide.load92, ptr %10, align 4
  %index.next = add nuw i64 %index, 8
  %11 = icmp eq i64 %index.next, %n.vec
  br i1 %11, label %bb20.preheader133, label %vector.body, !llvm.loop !1037

bb3.preheader:                                    ; preds = %bb22
  %12 = tail call i64 @llvm.usub.sat.i64(i64 %_4, i64 %iter4)
  %umin93 = tail call i64 @llvm.umin.i64(i64 %arr.1, i64 %12)
  %umin94 = tail call i64 @llvm.umin.i64(i64 %umin93, i64 %3)
  %min.iters.check96 = icmp samesign ult i64 %umin94, 8
  br i1 %min.iters.check96, label %bb23.preheader, label %vector.ph97

bb23.preheader:                                   ; preds = %vector.body100, %bb3.preheader
  %iter1.sroa.0.049.ph = phi i64 [ 0, %bb3.preheader ], [ %n.vec99, %vector.body100 ]
  br label %bb23

vector.ph97:                                      ; preds = %bb3.preheader
  %13 = add nuw nsw i64 %umin94, 1
  %n.mod.vf98 = and i64 %13, 7
  %14 = icmp eq i64 %n.mod.vf98, 0
  %15 = select i1 %14, i64 8, i64 %n.mod.vf98
  %n.vec99 = sub nsw i64 %13, %15
  %invariant.gep = getelementptr i32, ptr %1, i64 %iter4
  br label %vector.body100

vector.body100:                                   ; preds = %vector.body100, %vector.ph97
  %index101 = phi i64 [ 0, %vector.ph97 ], [ %index.next104, %vector.body100 ]
  %16 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %index101
  %17 = getelementptr inbounds nuw i8, ptr %16, i64 16
  %wide.load102 = load <4 x i32>, ptr %16, align 4
  %wide.load103 = load <4 x i32>, ptr %17, align 4
  %gep = getelementptr i32, ptr %invariant.gep, i64 %index101
  %18 = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <4 x i32> %wide.load102, ptr %gep, align 4
  store <4 x i32> %wide.load103, ptr %18, align 4
  %index.next104 = add nuw i64 %index101, 8
  %19 = icmp eq i64 %index.next104, %n.vec99
  br i1 %19, label %bb23.preheader, label %vector.body100, !llvm.loop !1038

bb20:                                             ; preds = %bb20.preheader133, %bb22
  %iter.sroa.0.047 = phi i64 [ %20, %bb22 ], [ %iter.sroa.0.047.ph, %bb20.preheader133 ]
  %20 = add nuw nsw i64 %iter.sroa.0.047, 1
  %exitcond.not = icmp eq i64 %iter.sroa.0.047, %arr.1
  br i1 %exitcond.not, label %panic.invoke, label %bb2

bb5.preheader:                                    ; preds = %bb25
  %_5753.not = icmp eq i32 %n, 1
  br i1 %_5753.not, label %bb16, label %bb26

bb23:                                             ; preds = %bb23.preheader, %bb25
  %iter1.sroa.0.049 = phi i64 [ %21, %bb25 ], [ %iter1.sroa.0.049.ph, %bb23.preheader ]
  %21 = add nuw nsw i64 %iter1.sroa.0.049, 1
  %exitcond68.not = icmp eq i64 %iter1.sroa.0.049, %arr.1
  br i1 %exitcond68.not, label %panic.invoke, label %bb4

bb26:                                             ; preds = %bb5.preheader, %bb12
  %indvar = phi i64 [ %indvar.next, %bb12 ], [ 0, %bb5.preheader ]
  %indvars.iv71.in = phi i64 [ %indvars.iv71, %bb12 ], [ %iter4, %bb5.preheader ]
  %indvars.iv.in = phi i64 [ %indvars.iv, %bb12 ], [ %arr.1, %bb5.preheader ]
  %max_ham.sroa.0.055 = phi i32 [ %_0.sroa.0.0.i, %bb12 ], [ 0, %bb5.preheader ]
  %iter2.sroa.0.054 = phi i64 [ %25, %bb12 ], [ 1, %bb5.preheader ]
  %umax107 = tail call i64 @llvm.umax.i64(i64 %iter2.sroa.0.054, i64 %_4)
  %22 = xor i64 %indvar, -1
  %23 = add i64 %umax107, %22
  %umin108 = tail call i64 @llvm.umin.i64(i64 %arr.1, i64 %23)
  %umin109 = tail call i64 @llvm.umin.i64(i64 %umin108, i64 %3)
  %24 = add nuw nsw i64 %umin109, 1
  %indvars.iv = add i64 %indvars.iv.in, 1
  %indvars.iv71 = add i64 %indvars.iv71.in, 1
  %25 = add nuw i64 %iter2.sroa.0.054, 1
  %iter5 = add i64 %iter2.sroa.0.054, %iter4
  %_6150 = icmp ult i64 %iter2.sroa.0.054, %iter5
  br i1 %_6150, label %bb28.preheader, label %bb29

bb28.preheader:                                   ; preds = %bb26
  %min.iters.check111 = icmp samesign ult i64 %umin109, 8
  br i1 %min.iters.check111, label %bb28.preheader125, label %vector.ph112

vector.ph112:                                     ; preds = %bb28.preheader
  %n.mod.vf113 = and i64 %24, 7
  %26 = icmp eq i64 %n.mod.vf113, 0
  %27 = select i1 %26, i64 8, i64 %n.mod.vf113
  %n.vec114 = sub nsw i64 %24, %27
  %28 = add i64 %iter2.sroa.0.054, %n.vec114
  %29 = getelementptr i32, ptr %1, i64 %iter2.sroa.0.054
  br label %vector.body115

vector.body115:                                   ; preds = %vector.body115, %vector.ph112
  %index116 = phi i64 [ 0, %vector.ph112 ], [ %index.next122, %vector.body115 ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph112 ], [ %38, %vector.body115 ]
  %vec.phi117 = phi <4 x i32> [ zeroinitializer, %vector.ph112 ], [ %39, %vector.body115 ]
  %30 = getelementptr i32, ptr %29, i64 %index116
  %31 = getelementptr inbounds nuw i8, ptr %30, i64 16
  %wide.load118 = load <4 x i32>, ptr %30, align 4
  %wide.load119 = load <4 x i32>, ptr %31, align 4
  %32 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %index116
  %33 = getelementptr inbounds nuw i8, ptr %32, i64 16
  %wide.load120 = load <4 x i32>, ptr %32, align 4
  %wide.load121 = load <4 x i32>, ptr %33, align 4
  %34 = icmp ne <4 x i32> %wide.load118, %wide.load120
  %35 = icmp ne <4 x i32> %wide.load119, %wide.load121
  %36 = zext <4 x i1> %34 to <4 x i32>
  %37 = zext <4 x i1> %35 to <4 x i32>
  %38 = add <4 x i32> %vec.phi, %36
  %39 = add <4 x i32> %vec.phi117, %37
  %index.next122 = add nuw i64 %index116, 8
  %40 = icmp eq i64 %index.next122, %n.vec114
  br i1 %40, label %middle.block123, label %vector.body115, !llvm.loop !1039

middle.block123:                                  ; preds = %vector.body115
  %bin.rdx = add <4 x i32> %39, %38
  %41 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  br label %bb28.preheader125

bb28.preheader125:                                ; preds = %bb28.preheader, %middle.block123
  %iter3.sroa.0.052.ph = phi i64 [ %iter2.sroa.0.054, %bb28.preheader ], [ %28, %middle.block123 ]
  %curr_ham.sroa.0.051.ph = phi i32 [ 0, %bb28.preheader ], [ %41, %middle.block123 ]
  br label %bb28

bb16:                                             ; preds = %bb12, %bb29, %bb5.preheader, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hdf8553ad3567bd81E.exit"
  %max_ham.sroa.0.1 = phi i32 [ 0, %bb5.preheader ], [ 0, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hdf8553ad3567bd81E.exit" ], [ %n, %bb29 ], [ %_0.sroa.0.0.i, %bb12 ]
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !23
  ret i32 %max_ham.sroa.0.1

bb29:                                             ; preds = %bb7, %bb26
  %curr_ham.sroa.0.0.lcssa = phi i32 [ 0, %bb26 ], [ %spec.select, %bb7 ]
  %_34 = icmp eq i32 %curr_ham.sroa.0.0.lcssa, %n
  br i1 %_34, label %bb16, label %bb12

bb28:                                             ; preds = %bb28.preheader125, %bb7
  %iter3.sroa.0.052 = phi i64 [ %42, %bb7 ], [ %iter3.sroa.0.052.ph, %bb28.preheader125 ]
  %curr_ham.sroa.0.051 = phi i32 [ %spec.select, %bb7 ], [ %curr_ham.sroa.0.051.ph, %bb28.preheader125 ]
  %42 = add i64 %iter3.sroa.0.052, 1
  %k = sub nuw i64 %iter3.sroa.0.052, %iter2.sroa.0.054
  %_69 = icmp ult i64 %iter3.sroa.0.052, %_4
  br i1 %_69, label %bb30, label %panic.invoke

bb12:                                             ; preds = %bb29
  %_0.sroa.0.0.i = tail call noundef i32 @llvm.smax.i32(i32 %curr_ham.sroa.0.0.lcssa, i32 %max_ham.sroa.0.055)
  %exitcond74.not = icmp eq i64 %25, %iter4
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond74.not, label %bb16, label %bb26

bb30:                                             ; preds = %bb28
  %exitcond70.not = icmp eq i64 %iter3.sroa.0.052, %indvars.iv
  br i1 %exitcond70.not, label %panic.invoke, label %bb7

panic.invoke:                                     ; preds = %bb2, %bb20, %bb4, %bb23, %bb30, %bb28
  %43 = phi i64 [ %iter3.sroa.0.052, %bb28 ], [ %k, %bb30 ], [ %arr.1, %bb23 ], [ %_20, %bb4 ], [ %arr.1, %bb20 ], [ %_4, %bb2 ]
  %44 = phi i64 [ %_4, %bb28 ], [ %arr.1, %bb30 ], [ %arr.1, %bb23 ], [ %_4, %bb4 ], [ %arr.1, %bb20 ], [ %_4, %bb2 ]
  %45 = phi ptr [ @alloc_7fc9389e7984de8e277fc364fc48bf1c, %bb28 ], [ @alloc_2ef02cee9352d1f821538e610316e778, %bb30 ], [ @alloc_3be35fd55d4c93b07c002f779121ba47, %bb23 ], [ @alloc_7355eb00d5e8fac351bf3ff76c1ceb71, %bb4 ], [ @alloc_a78bb4f53a9170f41079207610e3f956, %bb20 ], [ @alloc_fb14040e3f6c6995a6345b54a8ac6143, %bb2 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %43, i64 noundef %44, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %45) #21
          to label %panic.cont unwind label %bb18

panic.cont:                                       ; preds = %panic.invoke
  unreachable

bb7:                                              ; preds = %bb30
  %_30 = getelementptr inbounds nuw i32, ptr %1, i64 %iter3.sroa.0.052
  %_29 = load i32, ptr %_30, align 4, !noundef !23
  %46 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %k
  %_31 = load i32, ptr %46, align 4, !noundef !23
  %_28.not = icmp ne i32 %_29, %_31
  %47 = zext i1 %_28.not to i32
  %spec.select = add i32 %curr_ham.sroa.0.051, %47
  %exitcond73.not = icmp eq i64 %iter3.sroa.0.052, %indvars.iv71.in
  br i1 %exitcond73.not, label %bb29, label %bb28, !llvm.loop !1040

bb4:                                              ; preds = %bb23
  %_20 = add nuw nsw i64 %iter1.sroa.0.049, %iter4
  %_56 = icmp ult i64 %_20, %_4
  br i1 %_56, label %bb25, label %panic.invoke

bb25:                                             ; preds = %bb4
  %48 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %iter1.sroa.0.049
  %_16 = load i32, ptr %48, align 4, !noundef !23
  %_19 = getelementptr inbounds nuw i32, ptr %1, i64 %_20
  store i32 %_16, ptr %_19, align 4
  %exitcond69.not = icmp eq i64 %21, %iter4
  br i1 %exitcond69.not, label %bb5.preheader, label %bb23, !llvm.loop !1041

bb2:                                              ; preds = %bb20
  %exitcond66.not = icmp eq i64 %iter.sroa.0.047, %_4
  br i1 %exitcond66.not, label %panic.invoke, label %bb22

bb22:                                             ; preds = %bb2
  %49 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %iter.sroa.0.047
  %_10 = load i32, ptr %49, align 4, !noundef !23
  %_13 = getelementptr inbounds nuw i32, ptr %1, i64 %iter.sroa.0.047
  store i32 %_10, ptr %_13, align 4
  %exitcond67.not = icmp eq i64 %20, %iter4
  br i1 %exitcond67.not, label %bb3.preheader, label %bb20, !llvm.loop !1042

bb18:                                             ; preds = %panic.invoke
  %50 = landingpad { ptr, i32 }
          cleanup
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1043
  resume { ptr, i32 } %50
}
