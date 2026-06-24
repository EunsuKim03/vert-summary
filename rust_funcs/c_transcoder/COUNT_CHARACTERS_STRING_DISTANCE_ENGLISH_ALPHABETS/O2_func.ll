define noundef i32 @f_gold(ptr dead_on_return noalias noundef readonly align 8 captures(none) dereferenceable(24) %str) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %0 = getelementptr inbounds nuw i8, ptr %str, i64 16
  %_3 = load i64, ptr %0, align 8, !noundef !23
  %_21 = icmp ult i64 %_3, 2305843009213693952
  tail call void @llvm.assume(i1 %_21)
  %n = trunc i64 %_3 to i32
  %_2222 = icmp sgt i32 %n, 0
  br i1 %_2222, label %bb9.lr.ph, label %bb10

bb9.lr.ph:                                        ; preds = %start
  %1 = getelementptr inbounds nuw i8, ptr %str, i64 8
  %_38 = load ptr, ptr %1, align 8, !nonnull !23
  %2 = and i64 %_3, 2147483647
  %wide.trip.count36 = and i64 %_3, 2147483647
  %3 = add nsw i64 %2, -2
  br label %bb9

bb1.loopexit:                                     ; preds = %bb19, %bb9
  %result.sroa.0.1.lcssa = phi i32 [ %result.sroa.0.024, %bb9 ], [ %result.sroa.0.2, %bb19 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond37.not = icmp eq i64 %indvars.iv.next34, %wide.trip.count36
  br i1 %exitcond37.not, label %bb10, label %bb9

bb10:                                             ; preds = %bb1.loopexit, %start
  %result.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %result.sroa.0.1.lcssa, %bb1.loopexit ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1031)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1034)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1037)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1040)
  %self1.i.i.i.i1.i = load i64, ptr %str, align 8, !range !1043, !alias.scope !1044, !noalias !1047, !noundef !23
  %_6.i.i.i.i2.i = icmp eq i64 %self1.i.i.i.i1.i, 0
  br i1 %_6.i.i.i.i2.i, label %"_ZN4core3ptr48drop_in_place$LT$alloc..vec..Vec$LT$char$GT$$GT$17h0a398807809bac8eE.exit", label %bb2.i.i.i3.i

bb2.i.i.i3.i:                                     ; preds = %bb10
  %4 = shl nuw i64 %self1.i.i.i.i1.i, 2
  %5 = getelementptr inbounds nuw i8, ptr %str, i64 8
  %self3.i.i.i.i4.i = load ptr, ptr %5, align 8, !alias.scope !1044, !noalias !1047, !nonnull !23, !noundef !23
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i, i64 noundef %4, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1049
  br label %"_ZN4core3ptr48drop_in_place$LT$alloc..vec..Vec$LT$char$GT$$GT$17h0a398807809bac8eE.exit"

"_ZN4core3ptr48drop_in_place$LT$alloc..vec..Vec$LT$char$GT$$GT$17h0a398807809bac8eE.exit": ; preds = %bb10, %bb2.i.i.i3.i
  ret i32 %result.sroa.0.0.lcssa

bb9:                                              ; preds = %bb9.lr.ph, %bb1.loopexit
  %indvars.iv33 = phi i64 [ 0, %bb9.lr.ph ], [ %indvars.iv.next34, %bb1.loopexit ]
  %indvars.iv = phi i64 [ 1, %bb9.lr.ph ], [ %indvars.iv.next, %bb1.loopexit ]
  %result.sroa.0.024 = phi i32 [ 0, %bb9.lr.ph ], [ %result.sroa.0.1.lcssa, %bb1.loopexit ]
  %6 = xor i64 %indvars.iv33, -1
  %7 = add nsw i64 %_3, %6
  %8 = sub i64 %3, %indvars.iv33
  %umin = tail call i64 @llvm.umin.i64(i64 %7, i64 %8)
  %9 = add i64 %umin, 1
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1
  %_2919 = icmp samesign ult i64 %indvars.iv.next34, %2
  br i1 %_2919, label %bb14.lr.ph, label %bb1.loopexit

bb14.lr.ph:                                       ; preds = %bb9
  %_40 = icmp samesign ugt i64 %_3, %indvars.iv33
  %_13 = getelementptr inbounds nuw i32, ptr %_38, i64 %indvars.iv33
  br i1 %_40, label %bb14.preheader, label %panic2.invoke

bb14.preheader:                                   ; preds = %bb14.lr.ph
  %min.iters.check = icmp ult i64 %9, 9
  br i1 %min.iters.check, label %bb14.preheader49, label %vector.ph

vector.ph:                                        ; preds = %bb14.preheader
  %n.mod.vf = and i64 %9, 7
  %10 = icmp eq i64 %n.mod.vf, 0
  %11 = select i1 %10, i64 8, i64 %n.mod.vf
  %n.vec = sub i64 %9, %11
  %12 = add i64 %indvars.iv, %n.vec
  %13 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %result.sroa.0.024, i64 0
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %indvars.iv33, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert43 = insertelement <4 x i64> poison, i64 %indvars.iv, i64 0
  %broadcast.splat44 = shufflevector <4 x i64> %broadcast.splatinsert43, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = add nuw <4 x i64> %broadcast.splat44, <i64 0, i64 1, i64 2, i64 3>
  %14 = load i32, ptr %_13, align 4, !range !1050, !noundef !23
  %broadcast.splatinsert47 = insertelement <4 x i32> poison, i32 %14, i64 0
  %broadcast.splat48 = shufflevector <4 x i32> %broadcast.splatinsert47, <4 x i32> poison, <4 x i32> zeroinitializer
  %15 = getelementptr i32, ptr %_38, i64 %indvars.iv
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <4 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ %13, %vector.ph ], [ %32, %vector.body ]
  %vec.phi45 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %33, %vector.body ]
  %step.add = add <4 x i64> %vec.ind, splat (i64 4)
  %16 = getelementptr i32, ptr %15, i64 %index
  %17 = getelementptr inbounds nuw i8, ptr %16, i64 16
  %wide.load = load <4 x i32>, ptr %16, align 4
  %wide.load46 = load <4 x i32>, ptr %17, align 4
  %18 = sub nsw <4 x i32> %broadcast.splat48, %wide.load
  %19 = sub nsw <4 x i32> %broadcast.splat48, %wide.load46
  %20 = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %18, i1 true)
  %21 = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %19, i1 true)
  %22 = sub nsw <4 x i64> %broadcast.splat, %vec.ind
  %23 = sub nsw <4 x i64> %broadcast.splat, %step.add
  %24 = trunc nsw <4 x i64> %22 to <4 x i32>
  %25 = trunc nsw <4 x i64> %23 to <4 x i32>
  %26 = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %24, i1 false)
  %27 = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %25, i1 false)
  %28 = icmp eq <4 x i32> %20, %26
  %29 = icmp eq <4 x i32> %21, %27
  %30 = zext <4 x i1> %28 to <4 x i32>
  %31 = zext <4 x i1> %29 to <4 x i32>
  %32 = add <4 x i32> %vec.phi, %30
  %33 = add <4 x i32> %vec.phi45, %31
  %index.next = add nuw i64 %index, 8
  %vec.ind.next = add <4 x i64> %vec.ind, splat (i64 8)
  %34 = icmp eq i64 %index.next, %n.vec
  br i1 %34, label %middle.block, label %vector.body, !llvm.loop !1051

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %33, %32
  %35 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  br label %bb14.preheader49

bb14.preheader49:                                 ; preds = %bb14.preheader, %middle.block
  %indvars.iv28.ph = phi i64 [ %indvars.iv, %bb14.preheader ], [ %12, %middle.block ]
  %result.sroa.0.120.ph = phi i32 [ %result.sroa.0.024, %bb14.preheader ], [ %35, %middle.block ]
  br label %bb14

bb14:                                             ; preds = %bb14.preheader49, %bb19
  %indvars.iv28 = phi i64 [ %indvars.iv.next29, %bb19 ], [ %indvars.iv28.ph, %bb14.preheader49 ]
  %result.sroa.0.120 = phi i32 [ %result.sroa.0.2, %bb19 ], [ %result.sroa.0.120.ph, %bb14.preheader49 ]
  %exitcond.not = icmp eq i64 %indvars.iv28, %_3
  br i1 %exitcond.not, label %panic2.invoke, label %bb19

cleanup:                                          ; preds = %panic2.invoke
  %36 = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1052)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1055)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1058)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1061)
  %self1.i.i.i.i1.i6 = load i64, ptr %str, align 8, !range !1043, !alias.scope !1064, !noalias !1067, !noundef !23
  %_6.i.i.i.i2.i7 = icmp eq i64 %self1.i.i.i.i1.i6, 0
  br i1 %_6.i.i.i.i2.i7, label %bb8, label %bb2.i.i.i3.i8

bb2.i.i.i3.i8:                                    ; preds = %cleanup
  %37 = shl nuw i64 %self1.i.i.i.i1.i6, 2
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_38, i64 noundef %37, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1069
  br label %bb8

bb19:                                             ; preds = %bb14
  %_12 = load i32, ptr %_13, align 4, !range !1050, !noundef !23
  %_17 = getelementptr inbounds nuw i32, ptr %_38, i64 %indvars.iv28
  %_16 = load i32, ptr %_17, align 4, !range !1050, !noundef !23
  %_10 = sub nsw i32 %_12, %_16
  %_9.sroa.0.0 = tail call i32 @llvm.abs.i32(i32 %_10, i1 true)
  %38 = sub nsw i64 %indvars.iv33, %indvars.iv28
  %39 = trunc nsw i64 %38 to i32
  %_19.sroa.0.0 = tail call i32 @llvm.abs.i32(i32 %39, i1 false)
  %_8 = icmp eq i32 %_9.sroa.0.0, %_19.sroa.0.0
  %40 = zext i1 %_8 to i32
  %result.sroa.0.2 = add i32 %result.sroa.0.120, %40
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1
  %exitcond32.not = icmp eq i64 %indvars.iv.next29, %wide.trip.count36
  br i1 %exitcond32.not, label %bb1.loopexit, label %bb14, !llvm.loop !1070

panic2.invoke:                                    ; preds = %bb14.lr.ph, %bb14
  %41 = phi i64 [ %_3, %bb14 ], [ %indvars.iv33, %bb14.lr.ph ]
  %42 = phi ptr [ @alloc_4fb60b8685540aeab7b0cf5408593823, %bb14 ], [ @alloc_c298baeed1e676452a2631d6d254e59e, %bb14.lr.ph ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %41, i64 noundef %_3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %42) #20
          to label %panic2.cont unwind label %cleanup

panic2.cont:                                      ; preds = %panic2.invoke
  unreachable

bb8:                                              ; preds = %bb2.i.i.i3.i8, %cleanup
  resume { ptr, i32 } %36
}
