define i32 @f_gold(ptr align 1 %str.0, i64 %str.1) unnamed_addr #3 {
start:
  %_7 = alloca [16 x i8], align 8
  %iter = alloca [24 x i8], align 8
  %_4 = alloca [24 x i8], align 8
  %_3 = alloca [24 x i8], align 8
  %result = alloca [4 x i8], align 4
  store i32 0, ptr %result, align 4
; call core::str::<impl str>::chars
  %0 = call { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h28342c2a5b7eea71E"(ptr align 1 %str.0, i64 %str.1) #17
  %_5.0 = extractvalue { ptr, ptr } %0, 0
  %_5.1 = extractvalue { ptr, ptr } %0, 1
; call core::iter::traits::iterator::Iterator::enumerate
  call void @_ZN4core4iter6traits8iterator8Iterator9enumerate17hbc958e350a17e41aE(ptr sret([24 x i8]) align 8 %_4, ptr %_5.0, ptr %_5.1) #17
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  call void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h2cb14ba65d5e1e94E"(ptr sret([24 x i8]) align 8 %_3, ptr align 8 %_4) #17
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %iter, ptr align 8 %_3, i64 24, i1 false)
  br label %bb4

bb4:                                              ; preds = %bb13, %bb11, %start
; call <core::iter::adapters::enumerate::Enumerate<I> as core::iter::traits::iterator::Iterator>::next
  %1 = call { i64, i32 } @"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7d64c43426d12229E"(ptr align 8 %iter) #17
  %2 = extractvalue { i64, i32 } %1, 0
  %3 = extractvalue { i64, i32 } %1, 1
  store i64 %2, ptr %_7, align 8
  %4 = getelementptr inbounds i8, ptr %_7, i64 8
  store i32 %3, ptr %4, align 8
  %5 = load i64, ptr %_7, align 8
  %6 = getelementptr inbounds i8, ptr %_7, i64 8
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 1114112
  %_9 = select i1 %8, i64 0, i64 1
  %9 = trunc nuw i64 %_9 to i1
  br i1 %9, label %bb7, label %bb8

bb7:                                              ; preds = %bb4
  %i = load i64, ptr %_7, align 8
  %10 = getelementptr inbounds i8, ptr %_7, i64 8
  %c = load i32, ptr %10, align 8
  %_14 = zext i32 %c to i64
  %_16.0 = sub i64 %_14, 97
  %_16.1 = icmp ult i64 %_14, 97
  br i1 %_16.1, label %panic, label %bb9

bb8:                                              ; preds = %bb4
  %_0 = load i32, ptr %result, align 4
  ret i32 %_0

bb9:                                              ; preds = %bb7
  %_12 = icmp eq i64 %i, %_16.0
  br i1 %_12, label %bb12, label %bb10

panic:                                            ; preds = %bb7
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_8dcdfab67dc8703b71dd5ae0b67bf04c) #23
  unreachable

bb10:                                             ; preds = %bb9
  %_19 = zext i32 %c to i64
  %_21.0 = sub i64 %_19, 65
  %_21.1 = icmp ult i64 %_19, 65
  br i1 %_21.1, label %panic1, label %bb11

bb12:                                             ; preds = %bb11, %bb9
  %11 = load i32, ptr %result, align 4
  %12 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %11, i32 1)
  %_22.0 = extractvalue { i32, i1 } %12, 0
  %_22.1 = extractvalue { i32, i1 } %12, 1
  br i1 %_22.1, label %panic2, label %bb13

bb11:                                             ; preds = %bb10
  %_17 = icmp eq i64 %i, %_21.0
  br i1 %_17, label %bb12, label %bb4

panic1:                                           ; preds = %bb10
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_9df8e151200013625cdadbaa8acfa94a) #23
  unreachable

bb13:                                             ; preds = %bb12
  store i32 %_22.0, ptr %result, align 4
  br label %bb4

panic2:                                           ; preds = %bb12
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_aa66fed8159a9b411f55582683db6c95) #23
  unreachable

bb6:                                              ; No predecessors!
  unreachable
}
