define noundef i32 @f_gold(i32 noundef %a, i32 noundef %b, i32 noundef %c) unnamed_addr #4 {
start:
  %_4 = icmp sgt i32 %a, %b
  br i1 %_4, label %bb1, label %bb6

bb6:                                              ; preds = %start
  %_7 = icmp sgt i32 %a, %c
  br i1 %_7, label %bb15, label %bb8

bb1:                                              ; preds = %start
  %_5 = icmp sgt i32 %b, %c
  br i1 %_5, label %bb15, label %bb3

bb8:                                              ; preds = %bb6
  %c.b = tail call i32 @llvm.smin.i32(i32 %b, i32 %c)
  br label %bb15

bb15:                                             ; preds = %bb1, %bb3, %bb6, %bb8
  %_0.sroa.0.0 = phi i32 [ %c.b, %bb8 ], [ %a, %bb6 ], [ %c.a, %bb3 ], [ %b, %bb1 ]
  ret i32 %_0.sroa.0.0

bb3:                                              ; preds = %bb1
  %c.a = tail call i32 @llvm.smin.i32(i32 %a, i32 %c)
  br label %bb15
}
