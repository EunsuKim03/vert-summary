define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #4 {
start:
  %switch1 = icmp ult i32 %n, 2
  br i1 %switch1, label %bb5, label %bb3.preheader

bb3.preheader:                                    ; preds = %start
  %0 = add i32 %n, -1
  %min.iters.check = icmp ult i32 %n, 9
  br i1 %min.iters.check, label %bb3.preheader5, label %vector.ph

vector.ph:                                        ; preds = %bb3.preheader
  %n.vec = and i32 %0, -8
  %1 = sub i32 %n, %n.vec
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %n, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add <4 x i32> %broadcast.splat, <i32 0, i32 -1, i32 -2, i32 -3>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <4 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %2, %vector.body ]
  %vec.phi4 = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %3, %vector.body ]
  %step.add = add <4 x i32> %vec.ind, splat (i32 -4)
  %2 = mul <4 x i32> %vec.ind, %vec.phi
  %3 = mul <4 x i32> %step.add, %vec.phi4
  %index.next = add nuw i32 %index, 8
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 -8)
  %4 = icmp eq i32 %index.next, %n.vec
  br i1 %4, label %middle.block, label %vector.body, !llvm.loop !1031

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <4 x i32> %3, %2
  %5 = tail call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx)
  %cmp.n = icmp eq i32 %0, %n.vec
  br i1 %cmp.n, label %bb5, label %bb3.preheader5

bb3.preheader5:                                   ; preds = %bb3.preheader, %middle.block
  %n.tr3.ph = phi i32 [ %n, %bb3.preheader ], [ %1, %middle.block ]
  %accumulator.tr2.ph = phi i32 [ 1, %bb3.preheader ], [ %5, %middle.block ]
  br label %bb3

bb3:                                              ; preds = %bb3.preheader5, %bb3
  %n.tr3 = phi i32 [ %_5, %bb3 ], [ %n.tr3.ph, %bb3.preheader5 ]
  %accumulator.tr2 = phi i32 [ %6, %bb3 ], [ %accumulator.tr2.ph, %bb3.preheader5 ]
  %_5 = add i32 %n.tr3, -1
  %6 = mul i32 %n.tr3, %accumulator.tr2
  %switch = icmp ult i32 %n.tr3, 3
  br i1 %switch, label %bb5, label %bb3, !llvm.loop !1032

bb5:                                              ; preds = %bb3, %middle.block, %start
  %accumulator.tr.lcssa = phi i32 [ 1, %start ], [ %5, %middle.block ], [ %6, %bb3 ]
  ret i32 %accumulator.tr.lcssa
}
