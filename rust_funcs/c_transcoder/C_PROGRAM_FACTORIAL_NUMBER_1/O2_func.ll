define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #4 {
start:
  %_3.not4 = icmp ult i32 %n, 2
  br i1 %_3.not4, label %bb3, label %bb2.preheader

bb2.preheader:                                    ; preds = %start
  %0 = add i32 %n, -1
  %min.iters.check = icmp ult i32 %n, 21
  br i1 %min.iters.check, label %bb2.preheader8, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %bb2.preheader
  %1 = zext i32 %n to i64
  %2 = add nsw i64 %1, -2
  %3 = trunc i64 %2 to i32
  %4 = icmp ugt i32 %3, -4
  %5 = icmp ugt i64 %2, 4294967295
  %6 = or i1 %4, %5
  br i1 %6, label %bb2.preheader8, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i32 %0, -8
  %7 = or disjoint i32 %n.vec, 2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %8, %vector.body ]
  %vec.phi7 = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %9, %vector.body ]
  %vec.ind = phi <4 x i32> [ <i32 2, i32 3, i32 4, i32 5>, %vector.ph ], [ %vec.ind.next, %vector.body ]
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %8 = mul <4 x i32> %vec.phi, %vec.ind
  %9 = mul <4 x i32> %vec.phi7, %step.add
  %index.next = add nuw i32 %index, 8
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %10 = icmp eq i32 %index.next, %n.vec
  br i1 %10, label %middle.block, label %vector.body, !llvm.loop !1031

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <4 x i32> %9, %8
  %11 = tail call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx)
  %cmp.n = icmp eq i32 %0, %n.vec
  br i1 %cmp.n, label %bb3, label %bb2.preheader8

bb2.preheader8:                                   ; preds = %vector.scevcheck, %bb2.preheader, %middle.block
  %res.sroa.0.06.ph = phi i32 [ 1, %vector.scevcheck ], [ 1, %bb2.preheader ], [ %11, %middle.block ]
  %i.sroa.0.05.ph = phi i32 [ 2, %vector.scevcheck ], [ 2, %bb2.preheader ], [ %7, %middle.block ]
  br label %bb2

bb3:                                              ; preds = %bb2, %middle.block, %start
  %res.sroa.0.0.lcssa = phi i32 [ 1, %start ], [ %11, %middle.block ], [ %12, %bb2 ]
  ret i32 %res.sroa.0.0.lcssa

bb2:                                              ; preds = %bb2.preheader8, %bb2
  %res.sroa.0.06 = phi i32 [ %12, %bb2 ], [ %res.sroa.0.06.ph, %bb2.preheader8 ]
  %i.sroa.0.05 = phi i32 [ %13, %bb2 ], [ %i.sroa.0.05.ph, %bb2.preheader8 ]
  %12 = mul i32 %res.sroa.0.06, %i.sroa.0.05
  %13 = add i32 %i.sroa.0.05, 1
  %_3.not = icmp ugt i32 %13, %n
  br i1 %_3.not, label %bb3, label %bb2, !llvm.loop !1032
}
