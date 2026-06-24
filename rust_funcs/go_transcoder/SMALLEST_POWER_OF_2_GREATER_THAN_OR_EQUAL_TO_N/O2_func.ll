define noundef range(i32 1, -2147483647) i32 @f_gold(i32 noundef %0) unnamed_addr #4 {
start:
  %1 = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %0)
  %or.cond = icmp eq i32 %1, 1
  br i1 %or.cond, label %bb9, label %bb6.preheader

bb6.preheader:                                    ; preds = %start
  %_10.not7 = icmp eq i32 %0, 0
  %2 = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %0, i1 true)
  %3 = sub nsw i32 0, %2
  %4 = and i32 %3, 31
  %5 = shl nuw i32 1, %4
  %6 = select i1 %_10.not7, i32 1, i32 %5
  br label %bb9

bb9:                                              ; preds = %start, %bb6.preheader
  %_0.sroa.0.0 = phi i32 [ %6, %bb6.preheader ], [ %0, %start ]
  ret i32 %_0.sroa.0.0
}
