define noundef range(i32 -357913941, 357913942) i32 @f_gold(i32 noundef %n) unnamed_addr #4 {
start:
  %_83 = icmp sgt i32 %n, 2
  br i1 %_83, label %bb2.preheader, label %bb3

bb2.preheader:                                    ; preds = %start
  %0 = add nsw i32 %n, -2
  %min.iters.check = icmp ult i32 %0, 8
  br i1 %min.iters.check, label %bb2.preheader7, label %vector.ph

vector.ph:                                        ; preds = %bb2.preheader
  %n.vec = and i32 %0, -8
  %1 = or disjoint i32 %n.vec, 2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %2, %vector.body ]
  %vec.phi6 = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %3, %vector.body ]
  %vec.ind = phi <4 x i32> [ <i32 2, i32 3, i32 4, i32 5>, %vector.ph ], [ %vec.ind.next, %vector.body ]
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %2 = mul <4 x i32> %vec.phi, %vec.ind
  %3 = mul <4 x i32> %vec.phi6, %step.add
  %index.next = add nuw i32 %index, 8
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %4 = icmp eq i32 %index.next, %n.vec
  br i1 %4, label %middle.block, label %vector.body, !llvm.loop !1031

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <4 x i32> %3, %2
  %5 = tail call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx)
  %cmp.n = icmp eq i32 %0, %n.vec
  br i1 %cmp.n, label %bb3, label %bb2.preheader7

bb2.preheader7:                                   ; preds = %bb2.preheader, %middle.block
  %prod.sroa.0.05.ph = phi i32 [ 1, %bb2.preheader ], [ %5, %middle.block ]
  %iter.sroa.0.04.ph = phi i32 [ 2, %bb2.preheader ], [ %1, %middle.block ]
  br label %bb2

bb3:                                              ; preds = %bb2, %middle.block, %start
  %prod.sroa.0.0.lcssa = phi i32 [ 1, %start ], [ %5, %middle.block ], [ %7, %bb2 ]
  %_7 = add i32 %n, -1
  %_6 = mul i32 %_7, %n
  %_5 = mul i32 %_6, %prod.sroa.0.0.lcssa
  %_0 = sdiv i32 %_5, 6
  ret i32 %_0

bb2:                                              ; preds = %bb2.preheader7, %bb2
  %prod.sroa.0.05 = phi i32 [ %7, %bb2 ], [ %prod.sroa.0.05.ph, %bb2.preheader7 ]
  %iter.sroa.0.04 = phi i32 [ %6, %bb2 ], [ %iter.sroa.0.04.ph, %bb2.preheader7 ]
  %6 = add nuw nsw i32 %iter.sroa.0.04, 1
  %7 = mul i32 %prod.sroa.0.05, %iter.sroa.0.04
  %exitcond.not = icmp eq i32 %6, %n
  br i1 %exitcond.not, label %bb3, label %bb2, !llvm.loop !1032
}
