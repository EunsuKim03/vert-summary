define noundef i32 @f_gold(i32 noundef %a, i32 noundef %b) unnamed_addr #4 {
start:
  %_4 = mul i32 %b, %a
  %_5 = icmp eq i32 %_4, 0
  br i1 %_5, label %bb6, label %bb3.preheader

bb3.preheader:                                    ; preds = %start
  %p.sroa.0.0 = tail call i32 @llvm.abs.i32(i32 %_4, i1 false)
  %_74 = icmp sgt i32 %p.sroa.0.0, 0
  br i1 %_74, label %bb4, label %bb6

bb4:                                              ; preds = %bb3.preheader, %bb4
  %count.sroa.0.06 = phi i32 [ %0, %bb4 ], [ 0, %bb3.preheader ]
  %p.sroa.0.15 = phi i32 [ %1, %bb4 ], [ %p.sroa.0.0, %bb3.preheader ]
  %0 = add i32 %count.sroa.0.06, 1
  %1 = udiv i32 %p.sroa.0.15, 10
  %_7.not = icmp samesign ult i32 %p.sroa.0.15, 10
  br i1 %_7.not, label %bb6, label %bb4

bb6:                                              ; preds = %bb4, %bb3.preheader, %start
  %count.sroa.0.1 = phi i32 [ 1, %start ], [ 0, %bb3.preheader ], [ %0, %bb4 ]
  ret i32 %count.sroa.0.1
}
