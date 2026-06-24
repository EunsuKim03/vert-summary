define noundef i32 @f_gold(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #6 {
start:
  %_46 = icmp ne i32 %0, 0
  %_67 = icmp ne i32 %1, 0
  %or.cond8 = and i1 %_46, %_67
  %_89 = icmp ne i32 %2, 0
  %or.cond110 = and i1 %or.cond8, %_89
  br i1 %or.cond110, label %bb8.loopexit, label %bb8

bb8.loopexit:                                     ; preds = %start
  %3 = add i32 %2, -1
  %4 = add i32 %1, -1
  %umin = tail call i32 @llvm.umin.i32(i32 %3, i32 %4)
  %5 = add i32 %0, -1
  %umin15 = tail call i32 @llvm.umin.i32(i32 %umin, i32 %5)
  %6 = add i32 %umin15, 1
  br label %bb8

bb8:                                              ; preds = %bb8.loopexit, %start
  %c.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %6, %bb8.loopexit ]
  ret i32 %c.sroa.0.0.lcssa
}
