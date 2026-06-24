define i32 @f_gold(ptr align 4 %arr1.0, i64 %arr1.1, ptr align 4 %arr2.0, i64 %arr2.1, i32 %n1, i32 %n2) unnamed_addr #3 {
start:
; call alloc::slice::<impl [T]>::sort_by
  call void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hd7a452c23dc78710E"(ptr align 4 %arr1.0, i64 %arr1.1) #17
; call alloc::slice::<impl [T]>::sort_by
  call void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h526bf3a5f17c7aabE"(ptr align 4 %arr2.0, i64 %arr2.1) #17
  %_9 = sext i32 %n1 to i64
  %_10.0 = sub i64 %_9, 1
  %_10.1 = icmp ult i64 %_9, 1
  br i1 %_10.1, label %panic, label %bb3

bb3:                                              ; preds = %start
  %_13 = icmp ult i64 %_10.0, %arr1.1
  br i1 %_13, label %bb4, label %panic1

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_67e840fc3d72bf7e436c24de27142340) #18
  unreachable

bb4:                                              ; preds = %bb3
  %0 = getelementptr inbounds nuw i32, ptr %arr1.0, i64 %_10.0
  %_7 = load i32, ptr %0, align 4
  %_18 = icmp ult i64 0, %arr2.1
  br i1 %_18, label %bb5, label %panic2

panic1:                                           ; preds = %bb3
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_10.0, i64 %arr1.1, ptr align 8 @alloc_1db33d255c6f009f7056481e118d6a30) #18
  unreachable

bb5:                                              ; preds = %bb4
  %1 = getelementptr inbounds nuw i32, ptr %arr2.0, i64 0
  %_14 = load i32, ptr %1, align 4
  %2 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_7, i32 %_14)
  %_19.0 = extractvalue { i32, i1 } %2, 0
  %_19.1 = extractvalue { i32, i1 } %2, 1
  br i1 %_19.1, label %panic3, label %bb6

panic2:                                           ; preds = %bb4
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 0, i64 %arr2.1, ptr align 8 @alloc_749b2d5b460a42e66c897615de1f1962) #18
  unreachable

bb6:                                              ; preds = %bb5
  ret i32 %_19.0

panic3:                                           ; preds = %bb5
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_1db33d255c6f009f7056481e118d6a30) #18
  unreachable
}
