define i32 @f_gold(ptr align 1 %str.0, i64 %str.1) unnamed_addr #3 {
start:
  %self.i3 = alloca [4 x i8], align 4
  %self.i = alloca [4 x i8], align 4
  %_18 = alloca [16 x i8], align 8
  %_13 = alloca [16 x i8], align 8
  %h = alloca [8 x i8], align 8
  %l = alloca [8 x i8], align 8
  %_0 = alloca [4 x i8], align 4
  store i64 0, ptr %l, align 8
; call core::str::<impl str>::len
  %_4 = call i64 @"_ZN4core3str21_$LT$impl$u20$str$GT$3len17h08f1cf857273ee28E"(ptr align 1 %str.0, i64 %str.1) #19
  %_5.0 = sub i64 %_4, 1
  %_5.1 = icmp ult i64 %_4, 1
  br i1 %_5.1, label %panic, label %bb2

bb2:                                              ; preds = %start
  store i64 %_5.0, ptr %h, align 8
  br label %bb3

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_942787a4477088fd4f8a6af2be6a78b1) #22
  unreachable

bb3:                                              ; preds = %bb14, %bb2
  %_7 = load i64, ptr %h, align 8
  %_8 = load i64, ptr %l, align 8
  %_6 = icmp ugt i64 %_7, %_8
  br i1 %_6, label %bb4, label %bb15

bb15:                                             ; preds = %bb3
  store i32 1, ptr %_0, align 4
  br label %bb16

bb4:                                              ; preds = %bb3
; call core::str::<impl str>::chars
  %0 = call { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h987d2bd4bf42ebf8E"(ptr align 1 %str.0, i64 %str.1) #19
  %1 = extractvalue { ptr, ptr } %0, 0
  %2 = extractvalue { ptr, ptr } %0, 1
  store ptr %1, ptr %_13, align 8
  %3 = getelementptr inbounds i8, ptr %_13, i64 8
  store ptr %2, ptr %3, align 8
  %_14 = load i64, ptr %l, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_11 = call i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h1c9a7cdfdb291b97E(ptr align 8 %_13, i64 %_14) #19
  store i32 %_11, ptr %self.i3, align 4
  %4 = load i32, ptr %self.i3, align 4
  %5 = icmp eq i32 %4, 1114112
  %_2.i4 = select i1 %5, i64 0, i64 1
  %6 = trunc nuw i64 %_2.i4 to i1
  br i1 %6, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17h2808282dcf292cafE.exit7", label %bb2.i5

bb2.i5:                                           ; preds = %bb4
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_7fb7449b19327991cc53bffbc08754ce) #22
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17h2808282dcf292cafE.exit7": ; preds = %bb4
  %val.i6 = load i32, ptr %self.i3, align 4
; call core::str::<impl str>::chars
  %7 = call { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h987d2bd4bf42ebf8E"(ptr align 1 %str.0, i64 %str.1) #19
  %8 = extractvalue { ptr, ptr } %7, 0
  %9 = extractvalue { ptr, ptr } %7, 1
  store ptr %8, ptr %_18, align 8
  %10 = getelementptr inbounds i8, ptr %_18, i64 8
  store ptr %9, ptr %10, align 8
  %_19 = load i64, ptr %h, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_16 = call i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h1c9a7cdfdb291b97E(ptr align 8 %_18, i64 %_19) #19
  store i32 %_16, ptr %self.i, align 4
  %11 = load i32, ptr %self.i, align 4
  %12 = icmp eq i32 %11, 1114112
  %_2.i = select i1 %12, i64 0, i64 1
  %13 = trunc nuw i64 %_2.i to i1
  br i1 %13, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17h2808282dcf292cafE.exit", label %bb2.i

bb2.i:                                            ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h2808282dcf292cafE.exit7"
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_a5033256c4d826a53a6e43080027b164) #22
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17h2808282dcf292cafE.exit": ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h2808282dcf292cafE.exit7"
  %val.i = load i32, ptr %self.i, align 4
  %_9 = icmp ne i32 %val.i6, %val.i
  br i1 %_9, label %bb11, label %bb12

bb16:                                             ; preds = %bb11, %bb15
  %14 = load i32, ptr %_0, align 4
  ret i32 %14

bb12:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h2808282dcf292cafE.exit"
  %15 = load i64, ptr %l, align 8
  %_20.0 = add i64 %15, 1
  %_20.1 = icmp ult i64 %_20.0, %15
  br i1 %_20.1, label %panic1, label %bb13

bb11:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h2808282dcf292cafE.exit"
  store i32 0, ptr %_0, align 4
  br label %bb16

bb13:                                             ; preds = %bb12
  store i64 %_20.0, ptr %l, align 8
  %16 = load i64, ptr %h, align 8
  %_21.0 = sub i64 %16, 1
  %_21.1 = icmp ult i64 %16, 1
  br i1 %_21.1, label %panic2, label %bb14

panic1:                                           ; preds = %bb12
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_155f98d39b6175e9c973c321a3850be6) #22
  unreachable

bb14:                                             ; preds = %bb13
  store i64 %_21.0, ptr %h, align 8
  br label %bb3

panic2:                                           ; preds = %bb13
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_5bdf4bcbbe18e6c2ee55905ad5f3ae54) #22
  unreachable
}
