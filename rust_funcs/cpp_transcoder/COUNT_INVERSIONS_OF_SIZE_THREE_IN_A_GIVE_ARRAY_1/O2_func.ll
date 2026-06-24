define noundef i32 @f_gold(ptr noalias noundef nonnull readonly align 4 captures(none) %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, i32 noundef %n) unnamed_addr #1 {
start:
  %iter3 = add i32 %n, -1
  %_2931 = icmp sgt i32 %iter3, 1
  br i1 %_2931, label %bb14.preheader, label %bb15

bb14.preheader:                                   ; preds = %start
  %0 = sext i32 %n to i64
  %umax = tail call i64 @llvm.umax.i64(i64 %arr.1, i64 1)
  %wide.trip.count51 = zext nneg i32 %iter3 to i64
  %wide.trip.count = zext i32 %n to i64
  %1 = add nsw i64 %arr.1, -2
  %2 = add nsw i64 %wide.trip.count, -3
  %invariant.gep = getelementptr i8, ptr %arr.0, i64 -4
  %invariant.gep97 = getelementptr i8, ptr %arr.0, i64 -8
  %invariant.gep99 = getelementptr i8, ptr %arr.0, i64 -12
  %invariant.gep101 = getelementptr i8, ptr %arr.0, i64 -16
  %invariant.gep103 = getelementptr i8, ptr %arr.0, i64 -20
  %invariant.gep105 = getelementptr i8, ptr %arr.0, i64 -24
  %invariant.gep107 = getelementptr i8, ptr %arr.0, i64 -28
  br label %bb14

bb15:                                             ; preds = %bb24, %start
  %invcount.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %37, %bb24 ]
  ret i32 %invcount.sroa.0.0.lcssa

bb14:                                             ; preds = %bb14.preheader, %bb24
  %indvar = phi i64 [ 0, %bb14.preheader ], [ %indvar.next, %bb24 ]
  %indvars.iv44 = phi i64 [ 1, %bb14.preheader ], [ %indvars.iv.next45, %bb24 ]
  %indvars.iv = phi i64 [ 2, %bb14.preheader ], [ %indvars.iv.next, %bb24 ]
  %invcount.sroa.0.033 = phi i32 [ 0, %bb14.preheader ], [ %37, %bb24 ]
  %3 = sub i64 %1, %indvar
  %4 = sub i64 %2, %indvar
  %umin = tail call i64 @llvm.umin.i64(i64 %3, i64 %4)
  %5 = add nsw i64 %umin, 1
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1
  %_3626 = icmp slt i64 %indvars.iv.next45, %0
  br i1 %_3626, label %bb19.lr.ph, label %bb8.preheader

bb19.lr.ph:                                       ; preds = %bb14
  %_13 = icmp samesign ugt i64 %arr.1, %indvars.iv44
  %6 = getelementptr inbounds nuw float, ptr %arr.0, i64 %indvars.iv44
  br i1 %_13, label %bb19.preheader, label %panic6

bb19.preheader:                                   ; preds = %bb19.lr.ph
  %min.iters.check63 = icmp ult i64 %5, 9
  br i1 %min.iters.check63, label %bb19.preheader81, label %vector.ph64

vector.ph64:                                      ; preds = %bb19.preheader
  %n.mod.vf65 = and i64 %5, 7
  %7 = icmp eq i64 %n.mod.vf65, 0
  %8 = select i1 %7, i64 8, i64 %n.mod.vf65
  %n.vec66 = sub i64 %5, %8
  %9 = add i64 %indvars.iv, %n.vec66
  %10 = load float, ptr %6, align 4, !noundef !23
  %broadcast.splatinsert74 = insertelement <4 x float> poison, float %10, i64 0
  %broadcast.splat75 = shufflevector <4 x float> %broadcast.splatinsert74, <4 x float> poison, <4 x i32> zeroinitializer
  %11 = getelementptr float, ptr %arr.0, i64 %indvars.iv
  br label %vector.body67

vector.body67:                                    ; preds = %vector.body67, %vector.ph64
  %index68 = phi i64 [ 0, %vector.ph64 ], [ %index.next76, %vector.body67 ]
  %vec.phi69 = phi <4 x i32> [ zeroinitializer, %vector.ph64 ], [ %18, %vector.body67 ]
  %vec.phi70 = phi <4 x i32> [ zeroinitializer, %vector.ph64 ], [ %19, %vector.body67 ]
  %12 = getelementptr float, ptr %11, i64 %index68
  %13 = getelementptr inbounds nuw i8, ptr %12, i64 16
  %wide.load72 = load <4 x float>, ptr %12, align 4
  %wide.load73 = load <4 x float>, ptr %13, align 4
  %14 = fcmp ogt <4 x float> %broadcast.splat75, %wide.load72
  %15 = fcmp ogt <4 x float> %broadcast.splat75, %wide.load73
  %16 = zext <4 x i1> %14 to <4 x i32>
  %17 = zext <4 x i1> %15 to <4 x i32>
  %18 = add <4 x i32> %vec.phi69, %16
  %19 = add <4 x i32> %vec.phi70, %17
  %index.next76 = add nuw i64 %index68, 8
  %20 = icmp eq i64 %index.next76, %n.vec66
  br i1 %20, label %middle.block77, label %vector.body67, !llvm.loop !1031

middle.block77:                                   ; preds = %vector.body67
  %bin.rdx78 = add <4 x i32> %19, %18
  %21 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx78)
  br label %bb19.preheader81

bb19.preheader81:                                 ; preds = %bb19.preheader, %middle.block77
  %indvars.iv40.ph = phi i64 [ %indvars.iv, %bb19.preheader ], [ %9, %middle.block77 ]
  %small.sroa.0.027.ph = phi i32 [ 0, %bb19.preheader ], [ %21, %middle.block77 ]
  br label %bb19

bb8.preheader:                                    ; preds = %bb4, %bb14
  %small.sroa.0.0.lcssa = phi i32 [ 0, %bb14 ], [ %small.sroa.0.1, %bb4 ]
  %exitcond50.not = icmp eq i64 %indvars.iv44, %umax
  br i1 %exitcond50.not, label %panic, label %bb23.preheader

bb23.preheader:                                   ; preds = %bb8.preheader
  %22 = getelementptr inbounds nuw float, ptr %arr.0, i64 %indvars.iv44
  %_21 = load float, ptr %22, align 4, !noundef !23
  %min.iters.check = icmp samesign ult i64 %indvars.iv44, 8
  br i1 %min.iters.check, label %bb10, label %vector.ph

vector.ph:                                        ; preds = %bb23.preheader
  %n.vec = and i64 %indvars.iv44, 9223372036854775800
  %23 = and i64 %indvars.iv44, 7
  %broadcast.splatinsert = insertelement <4 x float> poison, float %_21, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %24 = getelementptr float, ptr %arr.0, i64 %indvars.iv44
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %33, %vector.body ]
  %vec.phi59 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %34, %vector.body ]
  %25 = xor i64 %index, -1
  %26 = getelementptr float, ptr %24, i64 %25
  %27 = getelementptr inbounds i8, ptr %26, i64 -12
  %28 = getelementptr inbounds i8, ptr %26, i64 -28
  %wide.load = load <4 x float>, ptr %27, align 4
  %reverse = shufflevector <4 x float> %wide.load, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %wide.load60 = load <4 x float>, ptr %28, align 4
  %reverse61 = shufflevector <4 x float> %wide.load60, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %29 = fcmp olt <4 x float> %broadcast.splat, %reverse
  %30 = fcmp olt <4 x float> %broadcast.splat, %reverse61
  %31 = zext <4 x i1> %29 to <4 x i32>
  %32 = zext <4 x i1> %30 to <4 x i32>
  %33 = add <4 x i32> %vec.phi, %31
  %34 = add <4 x i32> %vec.phi59, %32
  %index.next = add nuw i64 %index, 8
  %35 = icmp eq i64 %index.next, %n.vec
  br i1 %35, label %middle.block, label %vector.body, !llvm.loop !1032

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %34, %33
  %36 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  %cmp.n = icmp eq i64 %indvars.iv44, %n.vec
  br i1 %cmp.n, label %bb24, label %bb10

bb19:                                             ; preds = %bb19.preheader81, %bb4
  %indvars.iv40 = phi i64 [ %indvars.iv.next41, %bb4 ], [ %indvars.iv40.ph, %bb19.preheader81 ]
  %small.sroa.0.027 = phi i32 [ %small.sroa.0.1, %bb4 ], [ %small.sroa.0.027.ph, %bb19.preheader81 ]
  %exitcond.not = icmp eq i64 %indvars.iv40, %arr.1
  br i1 %exitcond.not, label %panic7, label %bb4

bb24:                                             ; preds = %bb10, %bb10.1, %bb10.2, %bb10.3, %bb10.4, %bb10.5, %bb10.6, %middle.block
  %great.sroa.0.1.lcssa = phi i32 [ %36, %middle.block ], [ %great.sroa.0.1, %bb10 ], [ %great.sroa.0.1.1, %bb10.1 ], [ %great.sroa.0.1.2, %bb10.2 ], [ %great.sroa.0.1.3, %bb10.3 ], [ %great.sroa.0.1.4, %bb10.4 ], [ %great.sroa.0.1.5, %bb10.5 ], [ %great.sroa.0.1.6, %bb10.6 ]
  %_28 = mul i32 %great.sroa.0.1.lcssa, %small.sroa.0.0.lcssa
  %37 = add i32 %_28, %invcount.sroa.0.033
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond52.not = icmp eq i64 %indvars.iv.next45, %wide.trip.count51
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond52.not, label %bb15, label %bb14

panic:                                            ; preds = %bb8.preheader
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %umax, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_952d3252ba3fe51053788899126b19eb) #18
  unreachable

bb10:                                             ; preds = %middle.block, %bb23.preheader
  %indvars.iv46.ph = phi i64 [ %indvars.iv44, %bb23.preheader ], [ %23, %middle.block ]
  %great.sroa.0.029.ph = phi i32 [ 0, %bb23.preheader ], [ %36, %middle.block ]
  %gep = getelementptr float, ptr %invariant.gep, i64 %indvars.iv46.ph
  %_25 = load float, ptr %gep, align 4, !noundef !23
  %_20 = fcmp olt float %_21, %_25
  %38 = zext i1 %_20 to i32
  %great.sroa.0.1 = add i32 %great.sroa.0.029.ph, %38
  %_43 = icmp samesign ugt i64 %indvars.iv46.ph, 1
  br i1 %_43, label %bb10.1, label %bb24, !llvm.loop !1033

bb10.1:                                           ; preds = %bb10
  %gep98 = getelementptr float, ptr %invariant.gep97, i64 %indvars.iv46.ph
  %_25.1 = load float, ptr %gep98, align 4, !noundef !23
  %_20.1 = fcmp olt float %_21, %_25.1
  %39 = zext i1 %_20.1 to i32
  %great.sroa.0.1.1 = add i32 %great.sroa.0.1, %39
  %_43.1.not = icmp eq i64 %indvars.iv46.ph, 2
  br i1 %_43.1.not, label %bb24, label %bb10.2, !llvm.loop !1033

bb10.2:                                           ; preds = %bb10.1
  %gep100 = getelementptr float, ptr %invariant.gep99, i64 %indvars.iv46.ph
  %_25.2 = load float, ptr %gep100, align 4, !noundef !23
  %_20.2 = fcmp olt float %_21, %_25.2
  %40 = zext i1 %_20.2 to i32
  %great.sroa.0.1.2 = add i32 %great.sroa.0.1.1, %40
  %_43.2 = icmp samesign ugt i64 %indvars.iv46.ph, 3
  br i1 %_43.2, label %bb10.3, label %bb24, !llvm.loop !1033

bb10.3:                                           ; preds = %bb10.2
  %gep102 = getelementptr float, ptr %invariant.gep101, i64 %indvars.iv46.ph
  %_25.3 = load float, ptr %gep102, align 4, !noundef !23
  %_20.3 = fcmp olt float %_21, %_25.3
  %41 = zext i1 %_20.3 to i32
  %great.sroa.0.1.3 = add i32 %great.sroa.0.1.2, %41
  %_43.3.not = icmp eq i64 %indvars.iv46.ph, 4
  br i1 %_43.3.not, label %bb24, label %bb10.4, !llvm.loop !1033

bb10.4:                                           ; preds = %bb10.3
  %gep104 = getelementptr float, ptr %invariant.gep103, i64 %indvars.iv46.ph
  %_25.4 = load float, ptr %gep104, align 4, !noundef !23
  %_20.4 = fcmp olt float %_21, %_25.4
  %42 = zext i1 %_20.4 to i32
  %great.sroa.0.1.4 = add i32 %great.sroa.0.1.3, %42
  %_43.4 = icmp samesign ugt i64 %indvars.iv46.ph, 5
  br i1 %_43.4, label %bb10.5, label %bb24, !llvm.loop !1033

bb10.5:                                           ; preds = %bb10.4
  %gep106 = getelementptr float, ptr %invariant.gep105, i64 %indvars.iv46.ph
  %_25.5 = load float, ptr %gep106, align 4, !noundef !23
  %_20.5 = fcmp olt float %_21, %_25.5
  %43 = zext i1 %_20.5 to i32
  %great.sroa.0.1.5 = add i32 %great.sroa.0.1.4, %43
  %_43.5 = icmp eq i64 %indvars.iv46.ph, 7
  br i1 %_43.5, label %bb10.6, label %bb24, !llvm.loop !1033

bb10.6:                                           ; preds = %bb10.5
  %gep108 = getelementptr float, ptr %invariant.gep107, i64 %indvars.iv46.ph
  %_25.6 = load float, ptr %gep108, align 4, !noundef !23
  %_20.6 = fcmp olt float %_21, %_25.6
  %44 = zext i1 %_20.6 to i32
  %great.sroa.0.1.6 = add i32 %great.sroa.0.1.5, %44
  br label %bb24

panic6:                                           ; preds = %bb19.lr.ph
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %indvars.iv44, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_5e516f23107a45426ae529d460b0767e) #18
  unreachable

bb4:                                              ; preds = %bb19
  %_10 = load float, ptr %6, align 4, !noundef !23
  %45 = getelementptr inbounds nuw float, ptr %arr.0, i64 %indvars.iv40
  %_14 = load float, ptr %45, align 4, !noundef !23
  %_9 = fcmp ogt float %_10, %_14
  %46 = zext i1 %_9 to i32
  %small.sroa.0.1 = add i32 %small.sroa.0.027, %46
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1
  %exitcond43.not = icmp eq i64 %indvars.iv.next41, %wide.trip.count
  br i1 %exitcond43.not, label %bb8.preheader, label %bb19, !llvm.loop !1034

panic7:                                           ; preds = %bb19
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %arr.1, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_6e4c18a25bc3c435221967b9b710bffc) #18
  unreachable
}
