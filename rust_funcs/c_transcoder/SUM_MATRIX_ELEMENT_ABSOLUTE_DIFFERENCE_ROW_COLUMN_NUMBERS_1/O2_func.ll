define noundef range(i32 0, -1) i32 @f_gold(i32 noundef %n) unnamed_addr #4 {
start:
  %_73 = icmp sgt i32 %n, 0
  br i1 %_73, label %bb2.preheader, label %bb3

bb2.preheader:                                    ; preds = %start
  %0 = add nsw i32 %n, -1
  %1 = mul i32 %0, %0
  %2 = add nsw i32 %n, -3
  %3 = zext nneg i32 %0 to i33
  %4 = add nsw i32 %n, -2
  %5 = zext i32 %4 to i33
  %6 = mul i33 %3, %5
  %7 = trunc i33 %6 to i32
  %8 = lshr i32 %7, 1
  %9 = mul i32 %2, %8
  %10 = add i32 %1, %9
  %11 = trunc i33 %6 to i32
  %12 = mul i32 %2, %11
  %13 = lshr i32 %12, 1
  %.neg = mul i32 %13, 715827882
  %14 = add i32 %.neg, %10
  %15 = shl i32 %14, 1
  br label %bb3

bb3:                                              ; preds = %bb2.preheader, %start
  %sum.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %15, %bb2.preheader ]
  ret i32 %sum.sroa.0.0.lcssa
}
