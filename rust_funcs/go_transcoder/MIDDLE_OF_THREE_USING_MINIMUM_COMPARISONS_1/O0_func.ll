define i32 @f_gold(i32 %a, i32 %b, i32 %c) unnamed_addr #3 {
start:
  %_0 = alloca [4 x i8], align 4
  %_4 = icmp sgt i32 %a, %b
  br i1 %_4, label %bb1, label %bb6

bb6:                                              ; preds = %start
  %_7 = icmp sgt i32 %a, %c
  br i1 %_7, label %bb7, label %bb8

bb1:                                              ; preds = %start
  %_5 = icmp sgt i32 %b, %c
  br i1 %_5, label %bb2, label %bb3

bb8:                                              ; preds = %bb6
  %_8 = icmp sgt i32 %b, %c
  br i1 %_8, label %bb9, label %bb10

bb7:                                              ; preds = %bb6
  store i32 %a, ptr %_0, align 4
  br label %bb11

bb10:                                             ; preds = %bb8
  store i32 %b, ptr %_0, align 4
  br label %bb11

bb9:                                              ; preds = %bb8
  store i32 %c, ptr %_0, align 4
  br label %bb11

bb11:                                             ; preds = %bb2, %bb4, %bb5, %bb7, %bb9, %bb10
  %0 = load i32, ptr %_0, align 4
  ret i32 %0

bb3:                                              ; preds = %bb1
  %_6 = icmp sgt i32 %a, %c
  br i1 %_6, label %bb4, label %bb5

bb2:                                              ; preds = %bb1
  store i32 %b, ptr %_0, align 4
  br label %bb11

bb5:                                              ; preds = %bb3
  store i32 %a, ptr %_0, align 4
  br label %bb11

bb4:                                              ; preds = %bb3
  store i32 %c, ptr %_0, align 4
  br label %bb11
}
