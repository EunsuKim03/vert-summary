define i32 @f_gold(ptr align 4 %str1.0, i64 %str1.1, ptr align 4 %str2.0, i64 %str2.1, i32 %m, i32 %n) unnamed_addr #3 {
start:
  %_0 = alloca [4 x i8], align 4
  %_5 = icmp eq i32 %m, 0
  br i1 %_5, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %_6 = icmp eq i32 %n, 0
  br i1 %_6, label %bb3, label %bb4

bb1:                                              ; preds = %start
  store i32 1, ptr %_0, align 4
  br label %bb14

bb4:                                              ; preds = %bb2
  %_10 = sext i32 %m to i64
  %_11.0 = sub i64 %_10, 1
  %_11.1 = icmp ult i64 %_10, 1
  br i1 %_11.1, label %panic, label %bb5

bb3:                                              ; preds = %bb2
  store i32 0, ptr %_0, align 4
  br label %bb14

bb5:                                              ; preds = %bb4
  %_13 = icmp ult i64 %_11.0, %str1.1
  br i1 %_13, label %bb6, label %panic1

panic:                                            ; preds = %bb4
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_27bb5d5e2685b445486a167a98729154) #22
  unreachable

bb6:                                              ; preds = %bb5
  %0 = getelementptr inbounds nuw i32, ptr %str1.0, i64 %_11.0
  %_8 = load i32, ptr %0, align 4
  %_16 = sext i32 %n to i64
  %_17.0 = sub i64 %_16, 1
  %_17.1 = icmp ult i64 %_16, 1
  br i1 %_17.1, label %panic2, label %bb7

panic1:                                           ; preds = %bb5
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_11.0, i64 %str1.1, ptr align 8 @alloc_766b77be334a2d3179487f5c01d0710d) #22
  unreachable

bb7:                                              ; preds = %bb6
  %_19 = icmp ult i64 %_17.0, %str2.1
  br i1 %_19, label %bb8, label %panic3

panic2:                                           ; preds = %bb6
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_3057d11f382c9f1416782e0079d84476) #22
  unreachable

bb8:                                              ; preds = %bb7
  %1 = getelementptr inbounds nuw i32, ptr %str2.0, i64 %_17.0
  %_14 = load i32, ptr %1, align 4
  %_7 = icmp eq i32 %_8, %_14
  br i1 %_7, label %bb9, label %bb12

panic3:                                           ; preds = %bb7
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_17.0, i64 %str2.1, ptr align 8 @alloc_86343bd0f7d95a2b446d9fc428570def) #22
  unreachable

bb12:                                             ; preds = %bb8
  %2 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %n, i32 1)
  %_25.0 = extractvalue { i32, i1 } %2, 0
  %_25.1 = extractvalue { i32, i1 } %2, 1
  br i1 %_25.1, label %panic4, label %bb13

bb9:                                              ; preds = %bb8
  %3 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %m, i32 1)
  %_21.0 = extractvalue { i32, i1 } %3, 0
  %_21.1 = extractvalue { i32, i1 } %3, 1
  br i1 %_21.1, label %panic5, label %bb10

bb13:                                             ; preds = %bb12
  %4 = call i32 @f_gold(ptr align 4 %str1.0, i64 %str1.1, ptr align 4 %str2.0, i64 %str2.1, i32 %m, i32 %_25.0)
  store i32 %4, ptr %_0, align 4
  br label %bb14

panic4:                                           ; preds = %bb12
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_72299d1302bb9c6ce95082c50e0ba857) #22
  unreachable

bb14:                                             ; preds = %bb1, %bb3, %bb11, %bb13
  %5 = load i32, ptr %_0, align 4
  ret i32 %5

bb10:                                             ; preds = %bb9
  %6 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %n, i32 1)
  %_23.0 = extractvalue { i32, i1 } %6, 0
  %_23.1 = extractvalue { i32, i1 } %6, 1
  br i1 %_23.1, label %panic6, label %bb11

panic5:                                           ; preds = %bb9
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_170218a5826b16ed410fafb1769c8b12) #22
  unreachable

bb11:                                             ; preds = %bb10
  %7 = call i32 @f_gold(ptr align 4 %str1.0, i64 %str1.1, ptr align 4 %str2.0, i64 %str2.1, i32 %_21.0, i32 %_23.0)
  store i32 %7, ptr %_0, align 4
  br label %bb14

panic6:                                           ; preds = %bb10
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_3649a1f33b37a0ac045ee2972eef6d9d) #22
  unreachable
}
