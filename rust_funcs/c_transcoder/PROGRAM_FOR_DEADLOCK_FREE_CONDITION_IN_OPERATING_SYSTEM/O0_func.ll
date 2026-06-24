define i32 @f_gold(i32 %process, i32 %need) unnamed_addr #3 {
start:
  %min_resources = alloca [4 x i8], align 4
  store i32 0, ptr %min_resources, align 4
  %0 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %need, i32 1)
  %_6.0 = extractvalue { i32, i1 } %0, 0
  %_6.1 = extractvalue { i32, i1 } %0, 1
  br i1 %_6.1, label %panic, label %bb1

bb1:                                              ; preds = %start
  %1 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %process, i32 %_6.0)
  %_7.0 = extractvalue { i32, i1 } %1, 0
  %_7.1 = extractvalue { i32, i1 } %1, 1
  br i1 %_7.1, label %panic1, label %bb2

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_20b8793932740e9de772b6162d8195c9) #22
  unreachable

bb2:                                              ; preds = %bb1
  %2 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_7.0, i32 1)
  %_8.0 = extractvalue { i32, i1 } %2, 0
  %_8.1 = extractvalue { i32, i1 } %2, 1
  br i1 %_8.1, label %panic2, label %bb3

panic1:                                           ; preds = %bb1
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_0afe8e6328c5662ffb03a15d5125fe12) #22
  unreachable

bb3:                                              ; preds = %bb2
  store i32 %_8.0, ptr %min_resources, align 4
  %_0 = load i32, ptr %min_resources, align 4
  ret i32 %_0

panic2:                                           ; preds = %bb2
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_0afe8e6328c5662ffb03a15d5125fe12) #22
  unreachable
}
