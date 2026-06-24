define i32 @f_gold(i64 %0, i32 %n) unnamed_addr #3 {
start:
  %_19 = alloca [8 x i8], align 8
  %iter = alloca [16 x i8], align 8
  %curr_sum = alloca [4 x i8], align 4
  %res = alloca [4 x i8], align 4
  %_0 = alloca [4 x i8], align 4
  %1 = alloca [8 x i8], align 8
  %arr = alloca [8 x i8], align 4
  store i64 %0, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr, ptr align 8 %1, i64 8, i1 false)
; call core::slice::<impl [T]>::iter
  %2 = call { ptr, ptr } @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4iter17h7d9c32bf0b247ed8E"(ptr align 4 %arr, i64 2) #17
  %_6.0 = extractvalue { ptr, ptr } %2, 0
  %_6.1 = extractvalue { ptr, ptr } %2, 1
; call core::iter::traits::iterator::Iterator::sum
  %_5 = call i32 @_ZN4core4iter6traits8iterator8Iterator3sum17h1e04be24bae479dcE(ptr %_6.0, ptr %_6.1)
  %_4 = sitofp i32 %_5 to float
  %half_sum = fdiv float %_4, 2.000000e+00
; call alloc::slice::<impl [T]>::sort_by
  call void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h3c137ab0116bd094E"(ptr align 4 %arr, i64 2) #17
  store i32 0, ptr %res, align 4
  store float 0.000000e+00, ptr %curr_sum, align 4
; call core::slice::<impl [T]>::iter
  %3 = call { ptr, ptr } @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4iter17h7d9c32bf0b247ed8E"(ptr align 4 %arr, i64 2) #17
  %_15.0 = extractvalue { ptr, ptr } %3, 0
  %_15.1 = extractvalue { ptr, ptr } %3, 1
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %4 = call { ptr, ptr } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hbd019b64624f98d5E"(ptr %_15.0, ptr %_15.1) #17
  %_14.0 = extractvalue { ptr, ptr } %4, 0
  %_14.1 = extractvalue { ptr, ptr } %4, 1
  store ptr %_14.0, ptr %iter, align 8
  %5 = getelementptr inbounds i8, ptr %iter, i64 8
  store ptr %_14.1, ptr %5, align 8
  br label %bb6

bb6:                                              ; preds = %bb11, %start
; call <core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next
  %6 = call align 4 ptr @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hefd8b1bd9a3137f9E"(ptr align 8 %iter) #17
  store ptr %6, ptr %_19, align 8
  %7 = load ptr, ptr %_19, align 8
  %8 = ptrtoint ptr %7 to i64
  %9 = icmp eq i64 %8, 0
  %_21 = select i1 %9, i64 0, i64 1
  %10 = trunc nuw i64 %_21 to i1
  br i1 %10, label %bb9, label %bb10

bb9:                                              ; preds = %bb6
  %num = load ptr, ptr %_19, align 8
  %_24 = load i32, ptr %num, align 4
  %_23 = sitofp i32 %_24 to float
  %11 = load float, ptr %curr_sum, align 4
  %12 = fadd float %11, %_23
  store float %12, ptr %curr_sum, align 4
  %13 = load i32, ptr %res, align 4
  %14 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %13, i32 1)
  %_25.0 = extractvalue { i32, i1 } %14, 0
  %_25.1 = extractvalue { i32, i1 } %14, 1
  br i1 %_25.1, label %panic, label %bb11

bb10:                                             ; preds = %bb6
  %15 = load i32, ptr %res, align 4
  store i32 %15, ptr %_0, align 4
  br label %bb13

bb13:                                             ; preds = %bb12, %bb10
  %16 = load i32, ptr %_0, align 4
  ret i32 %16

bb11:                                             ; preds = %bb9
  store i32 %_25.0, ptr %res, align 4
  %_27 = load float, ptr %curr_sum, align 4
  %_26 = fcmp ogt float %_27, %half_sum
  br i1 %_26, label %bb12, label %bb6

panic:                                            ; preds = %bb9
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_e2dd0bf64eb683f641bdb6858a1d63d9) #22
  unreachable

bb12:                                             ; preds = %bb11
  %17 = load i32, ptr %res, align 4
  store i32 %17, ptr %_0, align 4
  br label %bb13

bb8:                                              ; No predecessors!
  unreachable
}
