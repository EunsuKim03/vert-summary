define noundef i32 @f_gold(i64 %0, i64 %1, i32 noundef %n) unnamed_addr #1 {
start:
  %y = alloca [8 x i8], align 8
  %x = alloca [8 x i8], align 8
  store i64 %0, ptr %x, align 8
  store i64 %1, ptr %y, align 8
  %_2118 = icmp sgt i32 %n, 0
  br i1 %_2118, label %bb7.preheader, label %bb8

bb7.preheader:                                    ; preds = %start
  %2 = zext nneg i32 %n to i64
  %wide.trip.count31 = zext nneg i32 %n to i64
  %3 = add nsw i64 %wide.trip.count31, -2
  br label %bb7

bb1.loopexit:                                     ; preds = %bb4, %bb7
  %sum.sroa.0.1.lcssa = phi i32 [ %sum.sroa.0.019, %bb7 ], [ %30, %bb4 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond32.not = icmp eq i64 %indvars.iv.next29, %wide.trip.count31
  br i1 %exitcond32.not, label %bb8, label %bb7

bb8:                                              ; preds = %bb1.loopexit, %start
  %sum.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %sum.sroa.0.1.lcssa, %bb1.loopexit ]
  ret i32 %sum.sroa.0.0.lcssa

bb7:                                              ; preds = %bb7.preheader, %bb1.loopexit
  %indvars.iv28 = phi i64 [ 0, %bb7.preheader ], [ %indvars.iv.next29, %bb1.loopexit ]
  %indvars.iv = phi i64 [ 1, %bb7.preheader ], [ %indvars.iv.next, %bb1.loopexit ]
  %sum.sroa.0.019 = phi i32 [ 0, %bb7.preheader ], [ %sum.sroa.0.1.lcssa, %bb1.loopexit ]
  %4 = sub i64 %3, %indvars.iv28
  %5 = sub nsw i64 1, %indvars.iv28
  %umin = tail call i64 @llvm.umin.i64(i64 %4, i64 %5)
  %6 = add nsw i64 %umin, 1
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1
  %_2815 = icmp samesign ult i64 %indvars.iv.next29, %2
  br i1 %_2815, label %bb12.lr.ph, label %bb1.loopexit

bb12.lr.ph:                                       ; preds = %bb7
  %_13 = icmp samesign ult i64 %indvars.iv28, 2
  %7 = getelementptr inbounds nuw i32, ptr %x, i64 %indvars.iv28
  %8 = getelementptr inbounds nuw i32, ptr %y, i64 %indvars.iv28
  br i1 %_13, label %bb12.preheader, label %panic

bb12.preheader:                                   ; preds = %bb12.lr.ph
  %min.iters.check = icmp samesign ult i64 %6, 9
  br i1 %min.iters.check, label %bb12, label %vector.ph

vector.ph:                                        ; preds = %bb12.preheader
  %9 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %sum.sroa.0.019, i64 0
  %10 = load i32, ptr %7, align 4, !noundef !23
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %10, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %11 = load i32, ptr %8, align 4, !noundef !23
  %broadcast.splatinsert41 = insertelement <4 x i32> poison, i32 %11, i64 0
  %broadcast.splat42 = shufflevector <4 x i32> %broadcast.splatinsert41, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ %9, %vector.ph ], [ %26, %vector.body ]
  %vec.phi37 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %27, %vector.body ]
  %offset.idx = add i64 %indvars.iv, %index
  %12 = getelementptr inbounds nuw i32, ptr %x, i64 %offset.idx
  %13 = getelementptr inbounds nuw i8, ptr %12, i64 16
  %wide.load = load <4 x i32>, ptr %12, align 4
  %wide.load38 = load <4 x i32>, ptr %13, align 4
  %14 = sub <4 x i32> %broadcast.splat, %wide.load
  %15 = sub <4 x i32> %broadcast.splat, %wide.load38
  %16 = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %14, i1 false)
  %17 = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %15, i1 false)
  %18 = getelementptr inbounds nuw i32, ptr %y, i64 %offset.idx
  %19 = getelementptr inbounds nuw i8, ptr %18, i64 16
  %wide.load39 = load <4 x i32>, ptr %18, align 4
  %wide.load40 = load <4 x i32>, ptr %19, align 4
  %20 = sub <4 x i32> %broadcast.splat42, %wide.load39
  %21 = sub <4 x i32> %broadcast.splat42, %wide.load40
  %22 = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %20, i1 false)
  %23 = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %21, i1 false)
  %24 = add <4 x i32> %16, %vec.phi
  %25 = add <4 x i32> %17, %vec.phi37
  %26 = add <4 x i32> %24, %22
  %27 = add <4 x i32> %25, %23
  %index.next = add nuw i64 %index, 8
  br label %vector.body, !llvm.loop !1031

bb12:                                             ; preds = %bb12.preheader, %bb4
  %indvars.iv24 = phi i64 [ %indvars.iv.next25, %bb4 ], [ %indvars.iv, %bb12.preheader ]
  %sum.sroa.0.116 = phi i32 [ %30, %bb4 ], [ %sum.sroa.0.019, %bb12.preheader ]
  %exitcond.not = icmp eq i64 %indvars.iv24, 2
  br i1 %exitcond.not, label %panic2, label %bb4

panic:                                            ; preds = %bb12.lr.ph
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %indvars.iv28, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_a17745fe034520cbb89b3ee54ad46d4b) #18
  unreachable

bb4:                                              ; preds = %bb12
  %_11 = load i32, ptr %7, align 4, !noundef !23
  %28 = getelementptr inbounds nuw i32, ptr %x, i64 %indvars.iv24
  %_14 = load i32, ptr %28, align 4, !noundef !23
  %_10 = sub i32 %_11, %_14
  %_9.sroa.0.0 = tail call i32 @llvm.abs.i32(i32 %_10, i1 false)
  %_19 = load i32, ptr %8, align 4, !noundef !23
  %29 = getelementptr inbounds nuw i32, ptr %y, i64 %indvars.iv24
  %_20 = load i32, ptr %29, align 4, !noundef !23
  %_18 = sub i32 %_19, %_20
  %_17.sroa.0.0 = tail call i32 @llvm.abs.i32(i32 %_18, i1 false)
  %_8 = add i32 %_9.sroa.0.0, %sum.sroa.0.116
  %30 = add i32 %_8, %_17.sroa.0.0
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1
  %exitcond27.not = icmp eq i64 %indvars.iv.next25, %wide.trip.count31
  br i1 %exitcond27.not, label %bb1.loopexit, label %bb12, !llvm.loop !1032

panic2:                                           ; preds = %bb12
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_450c4b917d27350647fbadd90f576307) #18
  unreachable
}
