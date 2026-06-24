define noundef i32 @f_gold(i32 noundef %a, i32 noundef %b) unnamed_addr #4 {
start:
  %_4.sroa.0.0 = tail call i32 @llvm.abs.i32(i32 %a, i1 false)
  %_5.sroa.0.0 = tail call i32 @llvm.abs.i32(i32 %b, i1 false)
  %0 = mul i32 %_5.sroa.0.0, %_4.sroa.0.0
  %_6 = icmp eq i32 %0, 0
  br i1 %_6, label %bb6, label %bb3.preheader

bb3.preheader:                                    ; preds = %start
  %_84 = icmp sgt i32 %0, 0
  br i1 %_84, label %bb4, label %bb6

bb4:                                              ; preds = %bb3.preheader, %bb4
  %count.sroa.0.06 = phi i32 [ %1, %bb4 ], [ 0, %bb3.preheader ]
  %p.sroa.0.05 = phi i32 [ %2, %bb4 ], [ %0, %bb3.preheader ]
  %1 = add i32 %count.sroa.0.06, 1
  %2 = udiv i32 %p.sroa.0.05, 10
  %_8.not = icmp samesign ult i32 %p.sroa.0.05, 10
  br i1 %_8.not, label %bb6, label %bb4

bb6:                                              ; preds = %bb4, %bb3.preheader, %start
  %count.sroa.0.1 = phi i32 [ 1, %start ], [ 0, %bb3.preheader ], [ %1, %bb4 ]
  ret i32 %count.sroa.0.1
}
