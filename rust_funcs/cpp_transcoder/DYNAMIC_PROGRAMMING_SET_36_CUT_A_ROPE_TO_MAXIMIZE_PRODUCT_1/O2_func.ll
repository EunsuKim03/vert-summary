define noundef i32 @f_gold(i32 noundef %0) unnamed_addr #4 {
start:
  %1 = and i32 %0, -2
  %or.cond = icmp eq i32 %1, 2
  br i1 %or.cond, label %bb4, label %bb6.preheader

bb6.preheader:                                    ; preds = %start
  %_77 = icmp sgt i32 %0, 4
  br i1 %_77, label %bb7.preheader, label %bb8

bb7.preheader:                                    ; preds = %bb6.preheader
  %2 = add nsw i32 %0, -5
  %3 = udiv i32 %2, 3
  %4 = add nuw nsw i32 %3, 1
  %min.iters.check = icmp ult i32 %2, 21
  br i1 %min.iters.check, label %bb7.preheader15, label %vector.ph

vector.ph:                                        ; preds = %bb7.preheader
  %n.vec = and i32 %4, 2147483640
  %5 = mul i32 %n.vec, -3
  %6 = add i32 %0, %5
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %reduced.phi = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %bin.rdx, %vector.body ]
  %bin.rdx = mul <4 x i32> %reduced.phi, splat (i32 9)
  %index.next = add nuw i32 %index, 8
  %7 = icmp eq i32 %index.next, %n.vec
  br i1 %7, label %middle.block, label %vector.body, !llvm.loop !1031

middle.block:                                     ; preds = %vector.body
  %8 = tail call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx)
  %cmp.n = icmp eq i32 %4, %n.vec
  br i1 %cmp.n, label %bb8, label %bb7.preheader15

bb7.preheader15:                                  ; preds = %bb7.preheader, %middle.block
  %n.sroa.0.09.ph = phi i32 [ %0, %bb7.preheader ], [ %6, %middle.block ]
  %res.sroa.0.08.ph = phi i32 [ 1, %bb7.preheader ], [ %8, %middle.block ]
  br label %bb7

bb8:                                              ; preds = %bb7, %middle.block, %bb6.preheader
  %res.sroa.0.0.lcssa = phi i32 [ 1, %bb6.preheader ], [ %8, %middle.block ], [ %11, %bb7 ]
  %n.sroa.0.0.lcssa = phi i32 [ %0, %bb6.preheader ], [ %6, %middle.block ], [ %10, %bb7 ]
  %9 = mul i32 %n.sroa.0.0.lcssa, %res.sroa.0.0.lcssa
  br label %bb9

bb7:                                              ; preds = %bb7.preheader15, %bb7
  %n.sroa.0.09 = phi i32 [ %10, %bb7 ], [ %n.sroa.0.09.ph, %bb7.preheader15 ]
  %res.sroa.0.08 = phi i32 [ %11, %bb7 ], [ %res.sroa.0.08.ph, %bb7.preheader15 ]
  %10 = add nsw i32 %n.sroa.0.09, -3
  %11 = mul i32 %res.sroa.0.08, 3
  %_7 = icmp samesign ugt i32 %n.sroa.0.09, 7
  br i1 %_7, label %bb7, label %bb8, !llvm.loop !1032

bb9:                                              ; preds = %bb4, %bb8
  %_0.sroa.0.0 = phi i32 [ %12, %bb4 ], [ %9, %bb8 ]
  ret i32 %_0.sroa.0.0

bb4:                                              ; preds = %start
  %12 = add nsw i32 %0, -1
  br label %bb9
}
