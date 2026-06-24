define noundef range(i32 0, -2147483648) i32 @f_gold(i32 noundef %s) unnamed_addr #4 personality ptr @rust_eh_personality {
start:
  %iter2 = add i32 %s, -1
  %_129 = icmp sgt i32 %iter2, 1
  br i1 %_129, label %bb4.lr.ph, label %bb5

bb4.lr.ph:                                        ; preds = %start
  %_196 = icmp sgt i32 %s, 1
  %min.iters.check = icmp ult i32 %s, 9
  %n.vec = and i32 %iter2, 2147483640
  %0 = or disjoint i32 %n.vec, 1
  %broadcast.splatinsert14 = insertelement <4 x i32> poison, i32 %s, i64 0
  %broadcast.splat15 = shufflevector <4 x i32> %broadcast.splatinsert14, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n = icmp eq i32 %iter2, %n.vec
  br label %bb4

bb1.loopexit:                                     ; preds = %bb9, %middle.block, %bb4
  %maxvalue.sroa.0.1.lcssa = phi i32 [ %maxvalue.sroa.0.011, %bb4 ], [ %12, %middle.block ], [ %_0.sroa.0.0.i, %bb9 ]
  %exitcond13.not = icmp eq i32 %1, %iter2
  br i1 %exitcond13.not, label %bb5, label %bb4

bb5:                                              ; preds = %bb1.loopexit, %start
  %maxvalue.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %maxvalue.sroa.0.1.lcssa, %bb1.loopexit ]
  ret i32 %maxvalue.sroa.0.0.lcssa

bb4:                                              ; preds = %bb4.lr.ph, %bb1.loopexit
  %maxvalue.sroa.0.011 = phi i32 [ 0, %bb4.lr.ph ], [ %maxvalue.sroa.0.1.lcssa, %bb1.loopexit ]
  %iter.sroa.0.010 = phi i32 [ 1, %bb4.lr.ph ], [ %1, %bb1.loopexit ]
  %1 = add nuw nsw i32 %iter.sroa.0.010, 1
  br i1 %_196, label %bb9.preheader, label %bb1.loopexit

bb9.preheader:                                    ; preds = %bb4
  br i1 %min.iters.check, label %bb9.preheader19, label %vector.ph

vector.ph:                                        ; preds = %bb9.preheader
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %iter.sroa.0.010, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert16 = insertelement <4 x i32> poison, i32 %maxvalue.sroa.0.011, i64 0
  %broadcast.splat17 = shufflevector <4 x i32> %broadcast.splatinsert16, <4 x i32> poison, <4 x i32> zeroinitializer
  %invariant.op = add <4 x i32> splat (i32 4), %broadcast.splat
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ %broadcast.splat17, %vector.ph ], [ %9, %vector.body ]
  %vec.phi18 = phi <4 x i32> [ %broadcast.splat17, %vector.ph ], [ %10, %vector.body ]
  %vec.ind = phi <4 x i32> [ <i32 1, i32 2, i32 3, i32 4>, %vector.ph ], [ %vec.ind.next, %vector.body ]
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %2 = add nuw <4 x i32> %broadcast.splat, %vec.ind
  %.reass = add <4 x i32> %vec.ind, %invariant.op
  %3 = sub <4 x i32> %broadcast.splat15, %2
  %4 = sub <4 x i32> %broadcast.splat15, %.reass
  %5 = mul <4 x i32> %vec.ind, %broadcast.splat
  %6 = mul <4 x i32> %step.add, %broadcast.splat
  %7 = mul <4 x i32> %5, %3
  %8 = mul <4 x i32> %6, %4
  %9 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %7, <4 x i32> %vec.phi)
  %10 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %8, <4 x i32> %vec.phi18)
  %index.next = add nuw i32 %index, 8
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %11 = icmp eq i32 %index.next, %n.vec
  br i1 %11, label %middle.block, label %vector.body, !llvm.loop !1031

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %9, <4 x i32> %10)
  %12 = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax)
  br i1 %cmp.n, label %bb1.loopexit, label %bb9.preheader19

bb9.preheader19:                                  ; preds = %bb9.preheader, %middle.block
  %maxvalue.sroa.0.18.ph = phi i32 [ %maxvalue.sroa.0.011, %bb9.preheader ], [ %12, %middle.block ]
  %iter1.sroa.0.07.ph = phi i32 [ 1, %bb9.preheader ], [ %0, %middle.block ]
  br label %bb9

bb9:                                              ; preds = %bb9.preheader19, %bb9
  %maxvalue.sroa.0.18 = phi i32 [ %_0.sroa.0.0.i, %bb9 ], [ %maxvalue.sroa.0.18.ph, %bb9.preheader19 ]
  %iter1.sroa.0.07 = phi i32 [ %13, %bb9 ], [ %iter1.sroa.0.07.ph, %bb9.preheader19 ]
  %13 = add nuw nsw i32 %iter1.sroa.0.07, 1
  %14 = add nuw i32 %iter.sroa.0.010, %iter1.sroa.0.07
  %k = sub i32 %s, %14
  %_11 = mul i32 %iter1.sroa.0.07, %iter.sroa.0.010
  %_10 = mul i32 %_11, %k
  %_0.sroa.0.0.i = tail call noundef i32 @llvm.smax.i32(i32 %_10, i32 %maxvalue.sroa.0.18)
  %exitcond.not = icmp eq i32 %13, %s
  br i1 %exitcond.not, label %bb1.loopexit, label %bb9, !llvm.loop !1032
}
