define i32 @f_gold(ptr align 1 %strA.0, i64 %strA.1, ptr align 1 %strB.0, i64 %strB.1) unnamed_addr #3 {
start:
  %_15 = alloca [4 x i8], align 4
  %iter1 = alloca [16 x i8], align 8
  %_7 = alloca [4 x i8], align 4
  %iter = alloca [16 x i8], align 8
  %res = alloca [4 x i8], align 4
  store i32 0, ptr %res, align 4
; call core::str::<impl str>::chars
  %0 = call { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17he6b64ecfa409a217E"(ptr align 1 %strA.0, i64 %strA.1) #20
  %_5.0 = extractvalue { ptr, ptr } %0, 0
  %_5.1 = extractvalue { ptr, ptr } %0, 1
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %1 = call { ptr, ptr } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h61847916421bf5d1E"(ptr %_5.0, ptr %_5.1) #20
  %_4.0 = extractvalue { ptr, ptr } %1, 0
  %_4.1 = extractvalue { ptr, ptr } %1, 1
  store ptr %_4.0, ptr %iter, align 8
  %2 = getelementptr inbounds i8, ptr %iter, i64 8
  store ptr %_4.1, ptr %2, align 8
  br label %bb3

bb3:                                              ; preds = %bb6, %start
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::next
  %3 = call i32 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4cc7b3e8ded0d6d9E"(ptr align 8 %iter) #20
  store i32 %3, ptr %_7, align 4
  %4 = load i32, ptr %_7, align 4
  %5 = icmp eq i32 %4, 1114112
  %_9 = select i1 %5, i64 0, i64 1
  %6 = trunc nuw i64 %_9 to i1
  br i1 %6, label %bb6, label %bb7

bb6:                                              ; preds = %bb3
  %b2 = load i32, ptr %_7, align 4
  %7 = load i32, ptr %res, align 4
  %8 = xor i32 %7, %b2
  store i32 %8, ptr %res, align 4
  br label %bb3

bb7:                                              ; preds = %bb3
; call core::str::<impl str>::chars
  %9 = call { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17he6b64ecfa409a217E"(ptr align 1 %strB.0, i64 %strB.1) #20
  %_13.0 = extractvalue { ptr, ptr } %9, 0
  %_13.1 = extractvalue { ptr, ptr } %9, 1
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %10 = call { ptr, ptr } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h61847916421bf5d1E"(ptr %_13.0, ptr %_13.1) #20
  %_12.0 = extractvalue { ptr, ptr } %10, 0
  %_12.1 = extractvalue { ptr, ptr } %10, 1
  store ptr %_12.0, ptr %iter1, align 8
  %11 = getelementptr inbounds i8, ptr %iter1, i64 8
  store ptr %_12.1, ptr %11, align 8
  br label %bb10

bb10:                                             ; preds = %bb12, %bb7
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::next
  %12 = call i32 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4cc7b3e8ded0d6d9E"(ptr align 8 %iter1) #20
  store i32 %12, ptr %_15, align 4
  %13 = load i32, ptr %_15, align 4
  %14 = icmp eq i32 %13, 1114112
  %_17 = select i1 %14, i64 0, i64 1
  %15 = trunc nuw i64 %_17 to i1
  br i1 %15, label %bb12, label %bb13

bb12:                                             ; preds = %bb10
  %b = load i32, ptr %_15, align 4
  %16 = load i32, ptr %res, align 4
  %17 = xor i32 %16, %b
  store i32 %17, ptr %res, align 4
  br label %bb10

bb13:                                             ; preds = %bb10
  %_21 = load i32, ptr %res, align 4
  %_20 = trunc i32 %_21 to i8
  %_0 = zext i8 %_20 to i32
  ret i32 %_0

bb5:                                              ; No predecessors!
  unreachable
}
