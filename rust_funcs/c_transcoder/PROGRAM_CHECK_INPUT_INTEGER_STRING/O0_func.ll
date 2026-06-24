define i32 @f_gold(ptr align 8 %s) unnamed_addr #3 {
start:
  %i = alloca [8 x i8], align 8
  %_0 = alloca [4 x i8], align 4
; call alloc::ffi::c_str::CString::as_bytes
  %0 = call { ptr, i64 } @_ZN5alloc3ffi5c_str7CString8as_bytes17h86b3ff848f4184f8E(ptr align 8 %s) #20
  %s.0 = extractvalue { ptr, i64 } %0, 0
  %s.1 = extractvalue { ptr, i64 } %0, 1
  store i64 0, ptr %i, align 8
  br label %bb2

bb2:                                              ; preds = %bb8, %start
  %_6 = load i64, ptr %i, align 8
  %_8 = icmp ult i64 %_6, %s.1
  br i1 %_8, label %bb3, label %panic

bb3:                                              ; preds = %bb2
  %1 = getelementptr inbounds nuw i8, ptr %s.0, i64 %_6
  %_5 = load i8, ptr %1, align 1
  %_4 = icmp ult i8 %_5, 48
  br i1 %_4, label %bb6, label %bb4

panic:                                            ; preds = %bb2
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_6, i64 %s.1, ptr align 8 @alloc_6179ab792d51628a3d091c01004af43b) #22
  unreachable

bb4:                                              ; preds = %bb3
  %_11 = load i64, ptr %i, align 8
  %_13 = icmp ult i64 %_11, %s.1
  br i1 %_13, label %bb5, label %panic1

bb6:                                              ; preds = %bb5, %bb3
  store i32 0, ptr %_0, align 4
  br label %bb10

bb5:                                              ; preds = %bb4
  %2 = getelementptr inbounds nuw i8, ptr %s.0, i64 %_11
  %_10 = load i8, ptr %2, align 1
  %_9 = icmp ugt i8 %_10, 57
  br i1 %_9, label %bb6, label %bb7

panic1:                                           ; preds = %bb4
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_11, i64 %s.1, ptr align 8 @alloc_f99a8cbbfc62ab5ee60a13a2165abb59) #22
  unreachable

bb7:                                              ; preds = %bb5
  %3 = load i64, ptr %i, align 8
  %_14.0 = add i64 %3, 1
  %_14.1 = icmp ult i64 %_14.0, %3
  br i1 %_14.1, label %panic2, label %bb8

bb8:                                              ; preds = %bb7
  store i64 %_14.0, ptr %i, align 8
  %_16 = load i64, ptr %i, align 8
  %_15 = icmp eq i64 %_16, %s.1
  br i1 %_15, label %bb9, label %bb2

panic2:                                           ; preds = %bb7
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_058b35704d4d10bfe63f2de9e8d15575) #22
  unreachable

bb9:                                              ; preds = %bb8
  store i32 1, ptr %_0, align 4
  br label %bb10

bb10:                                             ; preds = %bb6, %bb9
  %4 = load i32, ptr %_0, align 4
  ret i32 %4
}
