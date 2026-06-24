define i32 @f_gold(i32 %p) unnamed_addr #3 {
start:
  %next = alloca [4 x i8], align 4
  %number = alloca [4 x i8], align 4
  %second = alloca [4 x i8], align 4
  %first = alloca [4 x i8], align 4
  store i32 1, ptr %first, align 4
  store i32 1, ptr %second, align 4
  store i32 2, ptr %number, align 4
  store i32 1, ptr %next, align 4
  br label %bb1

bb1:                                              ; preds = %bb6, %start
  %_7 = load i32, ptr %next, align 4
  %_6 = icmp ne i32 %_7, 0
  br i1 %_6, label %bb2, label %bb7

bb7:                                              ; preds = %bb1
  %_0 = load i32, ptr %number, align 4
  ret i32 %_0

bb2:                                              ; preds = %bb1
  %_9 = load i32, ptr %first, align 4
  %_10 = load i32, ptr %second, align 4
  %0 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_9, i32 %_10)
  %_11.0 = extractvalue { i32, i1 } %0, 0
  %_11.1 = extractvalue { i32, i1 } %0, 1
  br i1 %_11.1, label %panic, label %bb3

bb3:                                              ; preds = %bb2
  %_12 = icmp eq i32 %p, 0
  br i1 %_12, label %panic1, label %bb4

panic:                                            ; preds = %bb2
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_e79d1cebc6041acc1a3195ff28710f74) #22
  unreachable

bb4:                                              ; preds = %bb3
  %_13 = icmp eq i32 %p, -1
  %_14 = icmp eq i32 %_11.0, -2147483648
  %_15 = and i1 %_13, %_14
  br i1 %_15, label %panic2, label %bb5

panic1:                                           ; preds = %bb3
; call core::panicking::panic_const::panic_const_rem_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr align 8 @alloc_e79d1cebc6041acc1a3195ff28710f74) #22
  unreachable

bb5:                                              ; preds = %bb4
  %1 = srem i32 %_11.0, %p
  store i32 %1, ptr %next, align 4
  %_16 = load i32, ptr %second, align 4
  store i32 %_16, ptr %first, align 4
  %_17 = load i32, ptr %next, align 4
  store i32 %_17, ptr %second, align 4
  %2 = load i32, ptr %number, align 4
  %3 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2, i32 1)
  %_18.0 = extractvalue { i32, i1 } %3, 0
  %_18.1 = extractvalue { i32, i1 } %3, 1
  br i1 %_18.1, label %panic3, label %bb6

panic2:                                           ; preds = %bb4
; call core::panicking::panic_const::panic_const_rem_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_e79d1cebc6041acc1a3195ff28710f74) #22
  unreachable

bb6:                                              ; preds = %bb5
  store i32 %_18.0, ptr %number, align 4
  br label %bb1

panic3:                                           ; preds = %bb5
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_2414c2da6171e71042730418827b8337) #22
  unreachable
}
