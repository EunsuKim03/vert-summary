define noundef i32 @f_gold(i32 noundef %a, i32 noundef %b) unnamed_addr #12 {
start:
  %_4 = mul i32 %b, %a
  %_5 = icmp eq i32 %_4, 0
  br i1 %_5, label %bb7, label %bb4.preheader

bb4.preheader:                                    ; preds = %start
  %_0.sroa.0.0.i = tail call noundef range(i32 0, -2147483647) i32 @llvm.abs.i32(i32 %_4, i1 false)
  %_74 = icmp sgt i32 %_0.sroa.0.0.i, 0
  br i1 %_74, label %bb5, label %bb7

bb5:                                              ; preds = %bb4.preheader, %bb5
  %count.sroa.0.06 = phi i32 [ %0, %bb5 ], [ 0, %bb4.preheader ]
  %p.sroa.0.05 = phi i32 [ %1, %bb5 ], [ %_0.sroa.0.0.i, %bb4.preheader ]
  %0 = add i32 %count.sroa.0.06, 1
  %1 = udiv i32 %p.sroa.0.05, 10
  %_7.not = icmp samesign ult i32 %p.sroa.0.05, 10
  br i1 %_7.not, label %bb7, label %bb5

bb7:                                              ; preds = %bb5, %bb4.preheader, %start
  %count.sroa.0.1 = phi i32 [ 1, %start ], [ 0, %bb4.preheader ], [ %0, %bb5 ]
  ret i32 %count.sroa.0.1
}
