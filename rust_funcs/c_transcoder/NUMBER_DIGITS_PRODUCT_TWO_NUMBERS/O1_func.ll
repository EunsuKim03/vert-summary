define noundef i32 @f_gold(i32 noundef %a, i32 noundef %b) unnamed_addr #12 {
start:
  %_0.sroa.0.0.i = tail call noundef range(i32 0, -2147483647) i32 @llvm.abs.i32(i32 %a, i1 false)
  %_0.sroa.0.0.i4 = tail call noundef range(i32 0, -2147483647) i32 @llvm.abs.i32(i32 %b, i1 false)
  %0 = mul i32 %_0.sroa.0.0.i4, %_0.sroa.0.0.i
  %_6 = icmp eq i32 %0, 0
  br i1 %_6, label %bb8, label %bb5.preheader

bb5.preheader:                                    ; preds = %start
  %_85 = icmp sgt i32 %0, 0
  br i1 %_85, label %bb6, label %bb8

bb6:                                              ; preds = %bb5.preheader, %bb6
  %count.sroa.0.07 = phi i32 [ %1, %bb6 ], [ 0, %bb5.preheader ]
  %p.sroa.0.06 = phi i32 [ %2, %bb6 ], [ %0, %bb5.preheader ]
  %1 = add i32 %count.sroa.0.07, 1
  %2 = udiv i32 %p.sroa.0.06, 10
  %_8.not = icmp samesign ult i32 %p.sroa.0.06, 10
  br i1 %_8.not, label %bb8, label %bb6

bb8:                                              ; preds = %bb6, %bb5.preheader, %start
  %count.sroa.0.1 = phi i32 [ 1, %start ], [ 0, %bb5.preheader ], [ %1, %bb6 ]
  ret i32 %count.sroa.0.1
}
