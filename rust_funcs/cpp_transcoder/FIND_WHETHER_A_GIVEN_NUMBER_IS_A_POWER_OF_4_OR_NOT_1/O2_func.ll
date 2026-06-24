define noundef range(i32 0, 2) i32 @f_gold(i32 noundef %0) unnamed_addr #4 {
start:
  %1 = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %0)
  %or.cond = icmp eq i32 %1, 1
  br i1 %or.cond, label %bb3.preheader, label %bb12

bb3.preheader:                                    ; preds = %start
  %_106 = icmp ugt i32 %0, 1
  br i1 %_106, label %bb4, label %bb12

bb12:                                             ; preds = %bb3.preheader, %bb5.loopexit, %start
  %_0.sroa.0.0 = phi i32 [ 0, %start ], [ 1, %bb3.preheader ], [ %3, %bb5.loopexit ]
  ret i32 %_0.sroa.0.0

bb5.loopexit:                                     ; preds = %bb4
  %2 = and i32 %5, 1
  %3 = xor i32 %2, 1
  br label %bb12

bb4:                                              ; preds = %bb3.preheader, %bb4
  %n.sroa.0.08 = phi i32 [ %4, %bb4 ], [ %0, %bb3.preheader ]
  %count.sroa.0.07 = phi i32 [ %5, %bb4 ], [ 0, %bb3.preheader ]
  %4 = lshr i32 %n.sroa.0.08, 1
  %5 = add nuw nsw i32 %count.sroa.0.07, 1
  %_10 = icmp ugt i32 %n.sroa.0.08, 3
  br i1 %_10, label %bb4, label %bb5.loopexit
}
