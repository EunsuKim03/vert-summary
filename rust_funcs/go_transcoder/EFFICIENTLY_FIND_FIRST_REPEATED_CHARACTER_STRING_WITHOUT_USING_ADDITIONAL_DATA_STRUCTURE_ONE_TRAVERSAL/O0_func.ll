define i32 @f_gold(ptr align 1 %str.0, i64 %str.1) unnamed_addr #3 {
start:
  %_7 = alloca [16 x i8], align 8
  %iter = alloca [24 x i8], align 8
  %_4 = alloca [24 x i8], align 8
  %_3 = alloca [24 x i8], align 8
  %checker = alloca [4 x i8], align 4
  %_0 = alloca [4 x i8], align 4
  store i32 0, ptr %checker, align 4
; call core::slice::<impl [T]>::iter
  %0 = call { ptr, ptr } @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4iter17h2776d17d45a7f9b8E"(ptr align 1 %str.0, i64 %str.1) #17
  %_5.0 = extractvalue { ptr, ptr } %0, 0
  %_5.1 = extractvalue { ptr, ptr } %0, 1
; call core::iter::traits::iterator::Iterator::enumerate
  call void @_ZN4core4iter6traits8iterator8Iterator9enumerate17h081a52a20944ffc4E(ptr sret([24 x i8]) align 8 %_4, ptr %_5.0, ptr %_5.1) #17
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  call void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h060abc846bb89d12E"(ptr sret([24 x i8]) align 8 %_3, ptr align 8 %_4) #17
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %iter, ptr align 8 %_3, i64 24, i1 false)
  br label %bb4

bb4:                                              ; preds = %bb13, %start
; call <core::iter::adapters::enumerate::Enumerate<I> as core::iter::traits::iterator::Iterator>::next
  %1 = call { i64, ptr } @"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h528612fdfecce671E"(ptr align 8 %iter) #17
  %2 = extractvalue { i64, ptr } %1, 0
  %3 = extractvalue { i64, ptr } %1, 1
  store i64 %2, ptr %_7, align 8
  %4 = getelementptr inbounds i8, ptr %_7, i64 8
  store ptr %3, ptr %4, align 8
  %5 = load i64, ptr %_7, align 8
  %6 = getelementptr inbounds i8, ptr %_7, i64 8
  %7 = load ptr, ptr %6, align 8
  %8 = ptrtoint ptr %7 to i64
  %9 = icmp eq i64 %8, 0
  %_9 = select i1 %9, i64 0, i64 1
  %10 = trunc nuw i64 %_9 to i1
  br i1 %10, label %bb7, label %bb8

bb7:                                              ; preds = %bb4
  %i = load i64, ptr %_7, align 8
  %11 = getelementptr inbounds i8, ptr %_7, i64 8
  %_21 = load ptr, ptr %11, align 8
  %val = load i8, ptr %_21, align 1
  %_13.0 = sub i8 %val, 97
  %_13.1 = icmp ult i8 %val, 97
  br i1 %_13.1, label %panic, label %bb9

bb8:                                              ; preds = %bb4
  store i32 -1, ptr %_0, align 4
  br label %bb14

bb14:                                             ; preds = %bb11, %bb8
  %12 = load i32, ptr %_0, align 4
  ret i32 %12

bb9:                                              ; preds = %bb7
  %_16 = load i32, ptr %checker, align 4
  %_18 = icmp ult i8 %_13.0, 32
  br i1 %_18, label %bb10, label %panic1

panic:                                            ; preds = %bb7
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_2fe599fcb1ceeab0e6891e2b12ac9da2) #23
  unreachable

bb10:                                             ; preds = %bb9
  %13 = and i8 %_13.0, 31
  %14 = zext i8 %13 to i32
  %_17 = shl i32 1, %14
  %_15 = and i32 %_16, %_17
  %_14 = icmp sgt i32 %_15, 0
  br i1 %_14, label %bb11, label %bb12

panic1:                                           ; preds = %bb9
; call core::panicking::panic_const::panic_const_shl_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_shl_overflow17hd71d3b3e3d52ab41E(ptr align 8 @alloc_0f6185326d697cbe47b12c551a9705d0) #23
  unreachable

bb12:                                             ; preds = %bb10
  %_20 = icmp ult i8 %_13.0, 32
  br i1 %_20, label %bb13, label %panic2

bb11:                                             ; preds = %bb10
  %15 = trunc i64 %i to i32
  store i32 %15, ptr %_0, align 4
  br label %bb14

bb13:                                             ; preds = %bb12
  %16 = and i8 %_13.0, 31
  %17 = zext i8 %16 to i32
  %_19 = shl i32 1, %17
  %18 = load i32, ptr %checker, align 4
  %19 = or i32 %18, %_19
  store i32 %19, ptr %checker, align 4
  br label %bb4

panic2:                                           ; preds = %bb12
; call core::panicking::panic_const::panic_const_shl_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_shl_overflow17hd71d3b3e3d52ab41E(ptr align 8 @alloc_1d7bb10f33db7c10467391414a8ac42c) #23
  unreachable

bb6:                                              ; No predecessors!
  unreachable
}
