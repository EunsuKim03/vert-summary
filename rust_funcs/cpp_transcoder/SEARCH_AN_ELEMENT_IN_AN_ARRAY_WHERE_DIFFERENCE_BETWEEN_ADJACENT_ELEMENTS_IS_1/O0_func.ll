define i32 @f_gold(i64 %0, i32 %n, i32 %x) unnamed_addr #3 {
start:
  %i = alloca [4 x i8], align 4
  %_0 = alloca [4 x i8], align 4
  %1 = alloca [8 x i8], align 8
  %arr = alloca [8 x i8], align 4
  store i64 %0, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr, ptr align 8 %1, i64 8, i1 false)
  store i32 0, ptr %i, align 4
  br label %bb1

bb1:                                              ; preds = %bb9, %start
  %_6 = load i32, ptr %i, align 4
  %_5 = icmp slt i32 %_6, %n
  br i1 %_5, label %bb2, label %bb10

bb10:                                             ; preds = %bb1
; call core::fmt::Arguments::from_str
  %2 = call { ptr, ptr } @_ZN4core3fmt9Arguments8from_str17hb175a4187ab1c40eE(ptr align 1 @alloc_3cc4ab2e96aee8eb167dc6f61e3ddf68, i64 23) #21
  %_22.0 = extractvalue { ptr, ptr } %2, 0
  %_22.1 = extractvalue { ptr, ptr } %2, 1
; call std::io::stdio::_print
  call void @_ZN3std2io5stdio6_print17hba8f5eda1e4e495eE(ptr %_22.0, ptr %_22.1)
  store i32 -1, ptr %_0, align 4
  br label %bb13

bb2:                                              ; preds = %bb1
  %_10 = load i32, ptr %i, align 4
  %_9 = sext i32 %_10 to i64
  %_11 = icmp ult i64 %_9, 2
  br i1 %_11, label %bb3, label %panic

bb13:                                             ; preds = %bb4, %bb10
  %3 = load i32, ptr %_0, align 4
  ret i32 %3

bb3:                                              ; preds = %bb2
  %4 = getelementptr inbounds nuw i32, ptr %arr, i64 %_9
  %_8 = load i32, ptr %4, align 4
  %_7 = icmp eq i32 %_8, %x
  br i1 %_7, label %bb4, label %bb5

panic:                                            ; preds = %bb2
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_9, i64 2, ptr align 8 @alloc_b28f15fe8cbcfa91d6adf2cada3788b0) #19
  unreachable

bb5:                                              ; preds = %bb3
  %_12 = load i32, ptr %i, align 4
  %_17 = load i32, ptr %i, align 4
  %_16 = sext i32 %_17 to i64
  %_18 = icmp ult i64 %_16, 2
  br i1 %_18, label %bb6, label %panic1

bb4:                                              ; preds = %bb3
  %5 = load i32, ptr %i, align 4
  store i32 %5, ptr %_0, align 4
  br label %bb13

bb6:                                              ; preds = %bb5
  %6 = getelementptr inbounds nuw i32, ptr %arr, i64 %_16
  %_15 = load i32, ptr %6, align 4
  %7 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_15, i32 %x)
  %_19.0 = extractvalue { i32, i1 } %7, 0
  %_19.1 = extractvalue { i32, i1 } %7, 1
  br i1 %_19.1, label %panic2, label %bb7

panic1:                                           ; preds = %bb5
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_16, i64 2, ptr align 8 @alloc_b46bc897c1dad615e01d88a65ed8d973) #19
  unreachable

bb7:                                              ; preds = %bb6
; call core::num::<impl i32>::abs
  %_13 = call i32 @"_ZN4core3num21_$LT$impl$u20$i32$GT$3abs17h1ebcb19ffbcab989E"(i32 %_19.0) #21
  %8 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_12, i32 %_13)
  %_20.0 = extractvalue { i32, i1 } %8, 0
  %_20.1 = extractvalue { i32, i1 } %8, 1
  br i1 %_20.1, label %panic3, label %bb9

panic2:                                           ; preds = %bb6
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_6c04e68d787c0a771e12d5dec0e4ef7d) #19
  unreachable

bb9:                                              ; preds = %bb7
  store i32 %_20.0, ptr %i, align 4
  br label %bb1

panic3:                                           ; preds = %bb7
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_d93c27d6dd6f487d829245fff54b7a20) #19
  unreachable
}
