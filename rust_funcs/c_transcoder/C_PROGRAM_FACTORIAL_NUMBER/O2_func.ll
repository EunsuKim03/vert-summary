define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #4 {
start:
  %_21 = icmp eq i32 %n, 0
  br i1 %_21, label %bb4, label %bb2.preheader

bb2.preheader:                                    ; preds = %start
  %min.iters.check = icmp ult i32 %n, 8
  br i1 %min.iters.check, label %bb2.preheader5, label %vector.ph

vector.ph:                                        ; preds = %bb2.preheader
  %n.vec = and i32 %n, -8
  %0 = and i32 %n, 7
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %n, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add <4 x i32> %broadcast.splat, <i32 0, i32 -1, i32 -2, i32 -3>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <4 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %1, %vector.body ]
  %vec.phi4 = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %2, %vector.body ]
  %step.add = add <4 x i32> %vec.ind, splat (i32 -4)
  %1 = mul <4 x i32> %vec.ind, %vec.phi
  %2 = mul <4 x i32> %step.add, %vec.phi4
  %index.next = add nuw i32 %index, 8
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 -8)
  %3 = icmp eq i32 %index.next, %n.vec
  br i1 %3, label %middle.block, label %vector.body, !llvm.loop !1031

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <4 x i32> %2, %1
  %4 = tail call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx)
  %cmp.n = icmp eq i32 %n, %n.vec
  br i1 %cmp.n, label %bb4, label %bb2.preheader5

bb2.preheader5:                                   ; preds = %bb2.preheader, %middle.block
  %n.tr3.ph = phi i32 [ %n, %bb2.preheader ], [ %0, %middle.block ]
  %accumulator.tr2.ph = phi i32 [ 1, %bb2.preheader ], [ %4, %middle.block ]
  br label %bb2

bb2:                                              ; preds = %bb2.preheader5, %bb2
  %n.tr3 = phi i32 [ %_4, %bb2 ], [ %n.tr3.ph, %bb2.preheader5 ]
  %accumulator.tr2 = phi i32 [ %5, %bb2 ], [ %accumulator.tr2.ph, %bb2.preheader5 ]
  %_4 = add i32 %n.tr3, -1
  %5 = mul i32 %n.tr3, %accumulator.tr2
  %_2 = icmp eq i32 %_4, 0
  br i1 %_2, label %bb4, label %bb2, !llvm.loop !1032

bb4:                                              ; preds = %bb2, %middle.block, %start
  %accumulator.tr.lcssa = phi i32 [ 1, %start ], [ %4, %middle.block ], [ %5, %bb2 ]
  ret i32 %accumulator.tr.lcssa
}
