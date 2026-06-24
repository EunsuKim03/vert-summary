define noundef i32 @f_gold(i32 noundef %0, i32 noundef %1) unnamed_addr #4 {
start:
  %_3 = icmp eq i32 %1, 0
  br i1 %_3, label %bb12, label %bb2

bb2:                                              ; preds = %start
  %spec.select = tail call i32 @llvm.abs.i32(i32 %1, i1 false)
  %num.sroa.0.0 = tail call i32 @llvm.abs.i32(i32 %0, i1 false)
  %_13.not11 = icmp slt i32 %num.sroa.0.0, 0
  br i1 %_13.not11, label %bb11, label %bb10

bb11:                                             ; preds = %bb10, %bb2
  %product.sroa.0.0.lcssa = phi i32 [ 0, %bb2 ], [ %3, %bb10 ]
  %_18.neg = add i32 %spec.select, %num.sroa.0.0
  %2 = sub i32 %_18.neg, %product.sroa.0.0.lcssa
  br label %bb12

bb10:                                             ; preds = %bb2, %bb10
  %i.sroa.0.012 = phi i32 [ %4, %bb10 ], [ 1, %bb2 ]
  %3 = mul i32 %i.sroa.0.012, %spec.select
  %4 = add i32 %i.sroa.0.012, 1
  %_13.not = icmp sgt i32 %3, %num.sroa.0.0
  br i1 %_13.not, label %bb11, label %bb10

bb12:                                             ; preds = %start, %bb11
  %_0.sroa.0.0 = phi i32 [ %2, %bb11 ], [ -1, %start ]
  ret i32 %_0.sroa.0.0
}
