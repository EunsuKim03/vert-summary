define noundef i32 @f_gold(i32 noundef %r) unnamed_addr #4 {
start:
  %_2 = icmp slt i32 %r, 1
  br i1 %_2, label %bb7, label %bb3.preheader

bb3.preheader:                                    ; preds = %start
  %_153.not = icmp eq i32 %r, 1
  br i1 %_153.not, label %bb7, label %bb8.lr.ph

bb8.lr.ph:                                        ; preds = %bb3.preheader
  %_7 = uitofp nneg i32 %r to float
  %_6 = fmul float %_7, %_7
  %0 = add nsw i32 %r, -1
  %min.iters.check = icmp ult i32 %r, 9
  br i1 %min.iters.check, label %bb8.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb8.lr.ph
  %n.vec = and i32 %0, -8
  %1 = or disjoint i32 %n.vec, 1
  %broadcast.splatinsert = insertelement <4 x float> poison, float %_6, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ <i32 4, i32 0, i32 0, i32 0>, %vector.ph ], [ %42, %vector.body ]
  %vec.phi6 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %43, %vector.body ]
  %vec.ind = phi <4 x i32> [ <i32 1, i32 2, i32 3, i32 4>, %vector.ph ], [ %vec.ind.next, %vector.body ]
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %2 = uitofp nneg <4 x i32> %vec.ind to <4 x float>
  %3 = uitofp nneg <4 x i32> %step.add to <4 x float>
  %4 = fmul <4 x float> %2, %2
  %5 = fmul <4 x float> %3, %3
  %6 = fsub <4 x float> %broadcast.splat, %4
  %7 = fsub <4 x float> %broadcast.splat, %5
  %8 = extractelement <4 x float> %6, i64 0
  %9 = tail call float @llvm.sqrt.f32(float %8)
  %10 = extractelement <4 x float> %6, i64 1
  %11 = tail call float @llvm.sqrt.f32(float %10)
  %12 = extractelement <4 x float> %6, i64 2
  %13 = tail call float @llvm.sqrt.f32(float %12)
  %14 = extractelement <4 x float> %6, i64 3
  %15 = tail call float @llvm.sqrt.f32(float %14)
  %16 = insertelement <4 x float> poison, float %9, i64 0
  %17 = insertelement <4 x float> %16, float %11, i64 1
  %18 = insertelement <4 x float> %17, float %13, i64 2
  %19 = insertelement <4 x float> %18, float %15, i64 3
  %20 = extractelement <4 x float> %7, i64 0
  %21 = tail call float @llvm.sqrt.f32(float %20)
  %22 = extractelement <4 x float> %7, i64 1
  %23 = tail call float @llvm.sqrt.f32(float %22)
  %24 = extractelement <4 x float> %7, i64 2
  %25 = tail call float @llvm.sqrt.f32(float %24)
  %26 = extractelement <4 x float> %7, i64 3
  %27 = tail call float @llvm.sqrt.f32(float %26)
  %28 = insertelement <4 x float> poison, float %21, i64 0
  %29 = insertelement <4 x float> %28, float %23, i64 1
  %30 = insertelement <4 x float> %29, float %25, i64 2
  %31 = insertelement <4 x float> %30, float %27, i64 3
  %32 = tail call <4 x i32> @llvm.fptosi.sat.v4i32.v4f32(<4 x float> %19)
  %33 = tail call <4 x i32> @llvm.fptosi.sat.v4i32.v4f32(<4 x float> %31)
  %34 = mul <4 x i32> %32, %32
  %35 = mul <4 x i32> %33, %33
  %36 = tail call <4 x i32> @llvm.fptosi.sat.v4i32.v4f32(<4 x float> %6)
  %37 = tail call <4 x i32> @llvm.fptosi.sat.v4i32.v4f32(<4 x float> %7)
  %38 = icmp eq <4 x i32> %34, %36
  %39 = icmp eq <4 x i32> %35, %37
  %40 = add <4 x i32> %vec.phi, splat (i32 4)
  %41 = add <4 x i32> %vec.phi6, splat (i32 4)
  %42 = select <4 x i1> %38, <4 x i32> %40, <4 x i32> %vec.phi
  %43 = select <4 x i1> %39, <4 x i32> %41, <4 x i32> %vec.phi6
  %index.next = add nuw i32 %index, 8
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %44 = icmp eq i32 %index.next, %n.vec
  br i1 %44, label %middle.block, label %vector.body, !llvm.loop !1031

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %43, %42
  %45 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  %cmp.n = icmp eq i32 %0, %n.vec
  br i1 %cmp.n, label %bb7, label %bb8.preheader

bb8.preheader:                                    ; preds = %bb8.lr.ph, %middle.block
  %result.sroa.0.05.ph = phi i32 [ 4, %bb8.lr.ph ], [ %45, %middle.block ]
  %iter.sroa.0.04.ph = phi i32 [ 1, %bb8.lr.ph ], [ %1, %middle.block ]
  br label %bb8

bb8:                                              ; preds = %bb8.preheader, %bb8
  %result.sroa.0.05 = phi i32 [ %spec.select, %bb8 ], [ %result.sroa.0.05.ph, %bb8.preheader ]
  %iter.sroa.0.04 = phi i32 [ %_20.0, %bb8 ], [ %iter.sroa.0.04.ph, %bb8.preheader ]
  %_20.0 = add nuw nsw i32 %iter.sroa.0.04, 1
  %_9 = uitofp nneg i32 %iter.sroa.0.04 to float
  %_8 = fmul float %_9, %_9
  %y_square = fsub float %_6, %_8
  %46 = tail call float @llvm.sqrt.f32(float %y_square)
  %_13 = tail call i32 @llvm.fptosi.sat.i32.f32(float %46)
  %_12 = mul i32 %_13, %_13
  %_14 = tail call i32 @llvm.fptosi.sat.i32.f32(float %y_square)
  %_11 = icmp eq i32 %_12, %_14
  %47 = add i32 %result.sroa.0.05, 4
  %spec.select = select i1 %_11, i32 %47, i32 %result.sroa.0.05
  %exitcond.not = icmp eq i32 %_20.0, %r
  br i1 %exitcond.not, label %bb7, label %bb8, !llvm.loop !1032

bb7:                                              ; preds = %bb8, %middle.block, %bb3.preheader, %start
  %result.sroa.0.1 = phi i32 [ 0, %start ], [ 4, %bb3.preheader ], [ %45, %middle.block ], [ %spec.select, %bb8 ]
  ret i32 %result.sroa.0.1
}
