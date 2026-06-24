define i32 @f_gold(i32 %a, i32 %b, i32 %c) unnamed_addr #3 {
start:
  %_0 = alloca [4 x i8], align 4
  %_4 = icmp slt i32 %a, %b
  br i1 %_4, label %bb1, label %bb2

bb2:                                              ; preds = %bb1, %start
  %_6 = icmp slt i32 %c, %b
  br i1 %_6, label %bb3, label %bb5

bb1:                                              ; preds = %start
  %_5 = icmp slt i32 %b, %c
  br i1 %_5, label %bb4, label %bb2

bb4:                                              ; preds = %bb3, %bb1
  store i32 %b, ptr %_0, align 4
  br label %bb11

bb5:                                              ; preds = %bb3, %bb2
  %_8 = icmp slt i32 %b, %a
  br i1 %_8, label %bb6, label %bb7

bb3:                                              ; preds = %bb2
  %_7 = icmp slt i32 %b, %a
  br i1 %_7, label %bb4, label %bb5

bb7:                                              ; preds = %bb6, %bb5
  %_10 = icmp slt i32 %c, %a
  br i1 %_10, label %bb8, label %bb10

bb6:                                              ; preds = %bb5
  %_9 = icmp slt i32 %a, %c
  br i1 %_9, label %bb9, label %bb7

bb9:                                              ; preds = %bb8, %bb6
  store i32 %a, ptr %_0, align 4
  br label %bb11

bb10:                                             ; preds = %bb8, %bb7
  store i32 %c, ptr %_0, align 4
  br label %bb11

bb8:                                              ; preds = %bb7
  %_11 = icmp slt i32 %a, %b
  br i1 %_11, label %bb9, label %bb10

bb11:                                             ; preds = %bb4, %bb9, %bb10
  %0 = load i32, ptr %_0, align 4
  ret i32 %0
}
