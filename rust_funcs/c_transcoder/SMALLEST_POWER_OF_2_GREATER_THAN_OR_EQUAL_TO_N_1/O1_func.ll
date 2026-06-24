define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #12 {
start:
  %0 = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %n)
  %or.cond = icmp eq i32 %0, 1
  br i1 %or.cond, label %bb8, label %bb5

bb5:                                              ; preds = %start, %bb5
  %p.sroa.0.0 = phi i32 [ %1, %bb5 ], [ 1, %start ]
  %_6 = icmp ult i32 %p.sroa.0.0, %n
  %1 = shl i32 %p.sroa.0.0, 1
  br i1 %_6, label %bb5, label %bb8

bb8:                                              ; preds = %bb5, %start
  %p.sroa.0.1 = phi i32 [ %n, %start ], [ %p.sroa.0.0, %bb5 ]
  ret i32 %p.sroa.0.1
}
