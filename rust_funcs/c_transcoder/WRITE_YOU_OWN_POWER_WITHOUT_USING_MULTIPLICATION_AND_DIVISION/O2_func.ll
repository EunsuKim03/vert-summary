define noundef i32 @f_gold(i32 noundef %a, i32 noundef %b) unnamed_addr #4 {
start:
  %_3 = icmp eq i32 %b, 0
  br i1 %_3, label %bb5, label %bb3.preheader

bb3.preheader:                                    ; preds = %start
  %_109 = icmp sgt i32 %b, 1
  br i1 %_109, label %bb6.lr.ph, label %bb5

bb6.lr.ph:                                        ; preds = %bb3.preheader
  %0 = add nsw i32 %b, -1
  %min.iters.check = icmp ult i32 %b, 9
  br i1 %min.iters.check, label %bb6.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb6.lr.ph
  %n.vec = and i32 %0, -8
  %1 = or disjoint i32 %n.vec, 1
  %2 = insertelement <4 x i32> <i32 poison, i32 1, i32 1, i32 1>, i32 %a, i64 0
  %.scalar = tail call i32 @llvm.smax.i32(i32 %a, i32 1)
  %3 = insertelement <4 x i32> poison, i32 %.scalar, i64 0
  %4 = shufflevector <4 x i32> %3, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ %2, %vector.ph ], [ %5, %vector.body ]
  %vec.phi13 = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %6, %vector.body ]
  %5 = mul <4 x i32> %vec.phi, %4
  %6 = mul <4 x i32> %vec.phi13, %4
  %index.next = add nuw i32 %index, 8
  %7 = icmp eq i32 %index.next, %n.vec
  br i1 %7, label %middle.block, label %vector.body, !llvm.loop !1031

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <4 x i32> %6, %5
  %8 = tail call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx)
  %cmp.n = icmp eq i32 %0, %n.vec
  br i1 %cmp.n, label %bb5, label %bb6.preheader

bb6.preheader:                                    ; preds = %bb6.lr.ph, %middle.block
  %answer.sroa.0.011.ph = phi i32 [ %a, %bb6.lr.ph ], [ %8, %middle.block ]
  %iter.sroa.0.010.ph = phi i32 [ 1, %bb6.lr.ph ], [ %1, %middle.block ]
  %9 = tail call i32 @llvm.smax.i32(i32 %a, i32 1)
  br label %bb6

bb6:                                              ; preds = %bb6.preheader, %bb6
  %answer.sroa.0.011 = phi i32 [ %answer.sroa.0.2.lcssa, %bb6 ], [ %answer.sroa.0.011.ph, %bb6.preheader ]
  %iter.sroa.0.010 = phi i32 [ %_15.0, %bb6 ], [ %iter.sroa.0.010.ph, %bb6.preheader ]
  %_15.0 = add nuw nsw i32 %iter.sroa.0.010, 1
  %answer.sroa.0.2.lcssa = mul i32 %answer.sroa.0.011, %9
  %exitcond.not = icmp eq i32 %_15.0, %b
  br i1 %exitcond.not, label %bb5, label %bb6, !llvm.loop !1032

bb5:                                              ; preds = %bb6, %middle.block, %bb3.preheader, %start
  %answer.sroa.0.1 = phi i32 [ 1, %start ], [ %a, %bb3.preheader ], [ %8, %middle.block ], [ %answer.sroa.0.2.lcssa, %bb6 ]
  ret i32 %answer.sroa.0.1
}
