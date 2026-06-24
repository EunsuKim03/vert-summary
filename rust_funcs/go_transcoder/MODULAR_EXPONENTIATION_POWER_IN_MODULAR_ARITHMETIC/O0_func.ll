define i32 @f_gold(i32 %x, i32 %y, i32 %p) unnamed_addr #3 {
start:
  %y2 = alloca [4 x i8], align 4
  %x1 = alloca [4 x i8], align 4
  %res = alloca [4 x i8], align 4
  store i32 1, ptr %res, align 4
  %_8 = icmp eq i32 %p, 0
  br i1 %_8, label %panic, label %bb1

bb1:                                              ; preds = %start
  %0 = urem i32 %x, %p
  store i32 %0, ptr %x1, align 4
  store i32 %y, ptr %y2, align 4
  br label %bb2

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_rem_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr align 8 @alloc_bf9f1d5bdb459ca454aa3317ff48a736) #22
  unreachable

bb2:                                              ; preds = %bb11, %bb1
  %_11 = load i32, ptr %y2, align 4
  %_10 = icmp ugt i32 %_11, 0
  br i1 %_10, label %bb3, label %bb12

bb12:                                             ; preds = %bb2
  %_0 = load i32, ptr %res, align 4
  ret i32 %_0

bb3:                                              ; preds = %bb2
  %_14 = load i32, ptr %y2, align 4
  %_13 = and i32 %_14, 1
  %_12 = icmp eq i32 %_13, 1
  br i1 %_12, label %bb4, label %bb8

bb8:                                              ; preds = %bb7, %bb3
  %_24 = load i32, ptr %y2, align 4
  %1 = lshr i32 %_24, 1
  store i32 %1, ptr %y2, align 4
  %_28 = load i32, ptr %x1, align 4
  %_29 = load i32, ptr %x1, align 4
  %2 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %_28, i32 %_29)
  %_30.0 = extractvalue { i32, i1 } %2, 0
  %_30.1 = extractvalue { i32, i1 } %2, 1
  br i1 %_30.1, label %panic6, label %bb10

bb4:                                              ; preds = %bb3
  %_16 = load i32, ptr %res, align 4
  %_18 = load i32, ptr %x1, align 4
  %3 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_16, i32 %_18)
  %_19.0 = extractvalue { i32, i1 } %3, 0
  %_19.1 = extractvalue { i32, i1 } %3, 1
  br i1 %_19.1, label %panic3, label %bb5

bb5:                                              ; preds = %bb4
  %_20 = icmp eq i32 %p, 0
  br i1 %_20, label %panic4, label %bb6

panic3:                                           ; preds = %bb4
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_c777a96390d6cad362e1effbb453b738) #22
  unreachable

bb6:                                              ; preds = %bb5
  %_21 = icmp eq i32 %p, -1
  %_22 = icmp eq i32 %_19.0, -2147483648
  %_23 = and i1 %_21, %_22
  br i1 %_23, label %panic5, label %bb7

panic4:                                           ; preds = %bb5
; call core::panicking::panic_const::panic_const_rem_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr align 8 @alloc_c777a96390d6cad362e1effbb453b738) #22
  unreachable

bb7:                                              ; preds = %bb6
  %4 = srem i32 %_19.0, %p
  store i32 %4, ptr %res, align 4
  br label %bb8

panic5:                                           ; preds = %bb6
; call core::panicking::panic_const::panic_const_rem_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_c777a96390d6cad362e1effbb453b738) #22
  unreachable

bb10:                                             ; preds = %bb8
  %_32 = icmp eq i32 %p, 0
  br i1 %_32, label %panic7, label %bb11

panic6:                                           ; preds = %bb8
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_49eb99faa1f2f08fbb11c455464d0b39) #22
  unreachable

bb11:                                             ; preds = %bb10
  %5 = urem i32 %_30.0, %p
  store i32 %5, ptr %x1, align 4
  br label %bb2

panic7:                                           ; preds = %bb10
; call core::panicking::panic_const::panic_const_rem_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr align 8 @alloc_49eb99faa1f2f08fbb11c455464d0b39) #22
  unreachable
}
