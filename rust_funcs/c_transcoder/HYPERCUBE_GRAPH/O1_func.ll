define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #12 {
start:
  %_2 = icmp eq i32 %n, 1
  br i1 %_2, label %common.ret, label %bb2

common.ret:                                       ; preds = %start, %bb2
  %common.ret.op = phi i32 [ %0, %bb2 ], [ 2, %start ]
  ret i32 %common.ret.op

bb2:                                              ; preds = %start
  %_4 = add i32 %n, -1
  %_3 = tail call noundef i32 @f_gold(i32 noundef %_4)
  %0 = shl i32 %_3, 1
  br label %common.ret
}
