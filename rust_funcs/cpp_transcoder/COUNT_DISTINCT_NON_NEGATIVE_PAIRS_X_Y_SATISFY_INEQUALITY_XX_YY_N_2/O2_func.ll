define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #4 {
start:
  %_138 = icmp sgt i32 %n, 0
  br i1 %_138, label %bb6.lr.ph, label %bb7

bb6.lr.ph:                                        ; preds = %start
  %_12 = uitofp nneg i32 %n to float
  %min.iters.check = icmp ult i32 %n, 8
  %n.vec = and i32 %n, 2147483640
  %broadcast.splatinsert13 = insertelement <4 x float> poison, float %_12, i64 0
  %broadcast.splat14 = shufflevector <4 x float> %broadcast.splatinsert13, <4 x float> poison, <4 x i32> zeroinitializer
  %cmp.n = icmp eq i32 %n, %n.vec
  br label %bb11.lr.ph

bb1.loopexit:                                     ; preds = %bb11, %middle.block
  %res.sroa.0.2.lcssa = phi i32 [ %15, %middle.block ], [ %res.sroa.0.2, %bb11 ]
  %exitcond12.not = icmp eq i32 %0, %n
  br i1 %exitcond12.not, label %bb7, label %bb11.lr.ph

bb7:                                              ; preds = %bb1.loopexit, %start
  %res.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %res.sroa.0.2.lcssa, %bb1.loopexit ]
  ret i32 %res.sroa.0.0.lcssa

bb11.lr.ph:                                       ; preds = %bb1.loopexit, %bb6.lr.ph
  %res.sroa.0.010 = phi i32 [ 0, %bb6.lr.ph ], [ %res.sroa.0.2.lcssa, %bb1.loopexit ]
  %iter.sroa.0.09 = phi i32 [ 0, %bb6.lr.ph ], [ %0, %bb1.loopexit ]
  %0 = add nuw nsw i32 %iter.sroa.0.09, 1
  %_9 = uitofp nneg i32 %iter.sroa.0.09 to float
  %_8 = fmul float %_9, %_9
  br i1 %min.iters.check, label %bb11.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb11.lr.ph
  %1 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %res.sroa.0.010, i64 0
  %broadcast.splatinsert = insertelement <4 x float> poison, float %_8, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ %1, %vector.ph ], [ %12, %vector.body ]
  %vec.phi15 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %13, %vector.body ]
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ]
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %2 = uitofp nneg <4 x i32> %vec.ind to <4 x float>
  %3 = uitofp nneg <4 x i32> %step.add to <4 x float>
  %4 = fmul <4 x float> %2, %2
  %5 = fmul <4 x float> %3, %3
  %6 = fadd <4 x float> %broadcast.splat, %4
  %7 = fadd <4 x float> %broadcast.splat, %5
  %8 = fcmp olt <4 x float> %6, %broadcast.splat14
  %9 = fcmp olt <4 x float> %7, %broadcast.splat14
  %10 = zext <4 x i1> %8 to <4 x i32>
  %11 = zext <4 x i1> %9 to <4 x i32>
  %12 = add <4 x i32> %vec.phi, %10
  %13 = add <4 x i32> %vec.phi15, %11
  %index.next = add nuw i32 %index, 8
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %14 = icmp eq i32 %index.next, %n.vec
  br i1 %14, label %middle.block, label %vector.body, !llvm.loop !1031

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %13, %12
  %15 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  br i1 %cmp.n, label %bb1.loopexit, label %bb11.preheader

bb11.preheader:                                   ; preds = %bb11.lr.ph, %middle.block
  %res.sroa.0.17.ph = phi i32 [ %res.sroa.0.010, %bb11.lr.ph ], [ %15, %middle.block ]
  %iter1.sroa.0.06.ph = phi i32 [ 0, %bb11.lr.ph ], [ %n.vec, %middle.block ]
  br label %bb11

bb11:                                             ; preds = %bb11.preheader, %bb11
  %res.sroa.0.17 = phi i32 [ %res.sroa.0.2, %bb11 ], [ %res.sroa.0.17.ph, %bb11.preheader ]
  %iter1.sroa.0.06 = phi i32 [ %16, %bb11 ], [ %iter1.sroa.0.06.ph, %bb11.preheader ]
  %16 = add nuw nsw i32 %iter1.sroa.0.06, 1
  %_11 = uitofp nneg i32 %iter1.sroa.0.06 to float
  %_10 = fmul float %_11, %_11
  %_7 = fadd float %_8, %_10
  %_6 = fcmp olt float %_7, %_12
  %17 = zext i1 %_6 to i32
  %res.sroa.0.2 = add i32 %res.sroa.0.17, %17
  %exitcond.not = icmp eq i32 %16, %n
  br i1 %exitcond.not, label %bb1.loopexit, label %bb11, !llvm.loop !1032
}
