define void @f_gold(ptr sret([24 x i8]) align 8 %_0, ptr align 8 %str) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_30 = alloca [1 x i8], align 1
  %_19 = alloca [24 x i8], align 8
  %_13 = alloca [16 x i8], align 8
  %iter = alloca [16 x i8], align 8
  %_6 = alloca [24 x i8], align 8
  %concat = alloca [24 x i8], align 8
  %arr = alloca [24 x i8], align 8
  store i8 0, ptr %_30, align 1
; invoke alloc::string::String::len
  %n = invoke i64 @_ZN5alloc6string6String3len17hfda085dda513f384E(ptr align 8 %str)
          to label %bb1 unwind label %cleanup

bb24:                                             ; preds = %bb23, %cleanup
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17heba7bfbe8384b04bE"(ptr align 8 %str) #22
          to label %bb25 unwind label %terminate

cleanup:                                          ; preds = %bb19, %bb1, %start
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  store ptr %2, ptr %0, align 8
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %3, ptr %4, align 8
  br label %bb24

bb1:                                              ; preds = %start
; invoke alloc::vec::Vec<T>::with_capacity
  invoke void @"_ZN5alloc3vec12Vec$LT$T$GT$13with_capacity17hab7a9d9e13404a55E"(ptr sret([24 x i8]) align 8 %arr, i64 %n)
          to label %bb2 unwind label %cleanup

bb2:                                              ; preds = %bb1
; invoke <alloc::string::String as core::clone::Clone>::clone
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h3201baa471bff1abE"(ptr sret([24 x i8]) align 8 %_6, ptr align 8 %str)
          to label %bb3 unwind label %cleanup1

bb23:                                             ; preds = %bb26, %bb27, %bb22, %cleanup1
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::string::String>>
  invoke void @"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17ha5714b0b3d45e72aE"(ptr align 8 %arr) #22
          to label %bb24 unwind label %terminate

cleanup1:                                         ; preds = %bb18, %bb2
  %5 = landingpad { ptr, i32 }
          cleanup
  %6 = extractvalue { ptr, i32 } %5, 0
  %7 = extractvalue { ptr, i32 } %5, 1
  store ptr %6, ptr %0, align 8
  %8 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %7, ptr %8, align 8
  br label %bb23

bb3:                                              ; preds = %bb2
  store i8 1, ptr %_30, align 1
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %9 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h06a95c616a827cc8E"(ptr align 8 %str)
          to label %bb4 unwind label %cleanup2

bb27:                                             ; preds = %cleanup2
  %10 = load i8, ptr %_30, align 1
  %11 = trunc nuw i8 %10 to i1
  br i1 %11, label %bb26, label %bb23

cleanup2:                                         ; preds = %bb4, %bb3
  %12 = landingpad { ptr, i32 }
          cleanup
  %13 = extractvalue { ptr, i32 } %12, 0
  %14 = extractvalue { ptr, i32 } %12, 1
  store ptr %13, ptr %0, align 8
  %15 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %14, ptr %15, align 8
  br label %bb27

bb4:                                              ; preds = %bb3
  %_8.0 = extractvalue { ptr, i64 } %9, 0
  %_8.1 = extractvalue { ptr, i64 } %9, 1
  store i8 0, ptr %_30, align 1
; invoke <alloc::string::String as core::ops::arith::Add<&str>>::add
  invoke void @"_ZN78_$LT$alloc..string..String$u20$as$u20$core..ops..arith..Add$LT$$RF$str$GT$$GT$3add17h33bc3b2371cff733E"(ptr sret([24 x i8]) align 8 %concat, ptr align 8 %_6, ptr align 1 %_8.0, i64 %_8.1)
          to label %bb5 unwind label %cleanup2

bb5:                                              ; preds = %bb4
  store i8 0, ptr %_30, align 1
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %16 = invoke { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hfe10f1f43b5be5b5E"(i64 0, i64 %n)
          to label %bb6 unwind label %cleanup3

bb22:                                             ; preds = %cleanup3
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17heba7bfbe8384b04bE"(ptr align 8 %concat) #22
          to label %bb23 unwind label %terminate

cleanup3:                                         ; preds = %bb14, %bb13, %bb12, %panic, %bb17, %bb16, %bb15, %bb11, %bb7, %bb5
  %17 = landingpad { ptr, i32 }
          cleanup
  %18 = extractvalue { ptr, i32 } %17, 0
  %19 = extractvalue { ptr, i32 } %17, 1
  store ptr %18, ptr %0, align 8
  %20 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %19, ptr %20, align 8
  br label %bb22

bb6:                                              ; preds = %bb5
  %_10.0 = extractvalue { i64, i64 } %16, 0
  %_10.1 = extractvalue { i64, i64 } %16, 1
  store i64 %_10.0, ptr %iter, align 8
  %21 = getelementptr inbounds i8, ptr %iter, i64 8
  store i64 %_10.1, ptr %21, align 8
  br label %bb7

bb7:                                              ; preds = %bb28, %bb6
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %22 = invoke { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hd93669fc349750d7E"(ptr align 8 %iter)
          to label %bb8 unwind label %cleanup3

bb8:                                              ; preds = %bb7
  %23 = extractvalue { i64, i64 } %22, 0
  %24 = extractvalue { i64, i64 } %22, 1
  store i64 %23, ptr %_13, align 8
  %25 = getelementptr inbounds i8, ptr %_13, i64 8
  store i64 %24, ptr %25, align 8
  %_15 = load i64, ptr %_13, align 8
  %26 = getelementptr inbounds i8, ptr %_13, i64 8
  %27 = load i64, ptr %26, align 8
  %28 = trunc nuw i64 %_15 to i1
  br i1 %28, label %bb10, label %bb11

bb10:                                             ; preds = %bb8
  %29 = getelementptr inbounds i8, ptr %_13, i64 8
  %i = load i64, ptr %29, align 8
  %_24.0 = add i64 %i, %n
  %_24.1 = icmp ult i64 %_24.0, %i
  br i1 %_24.1, label %panic, label %bb12

bb11:                                             ; preds = %bb8
; invoke <alloc::vec::Vec<T,A> as core::ops::deref::DerefMut>::deref_mut
  %30 = invoke { ptr, i64 } @"_ZN75_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17ha0d745e2ed625488E"(ptr align 8 %arr)
          to label %bb15 unwind label %cleanup3

bb15:                                             ; preds = %bb11
  %_26.0 = extractvalue { ptr, i64 } %30, 0
  %_26.1 = extractvalue { ptr, i64 } %30, 1
; invoke alloc::slice::<impl [T]>::sort_by
  invoke void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h594fa5ca3b51e285E"(ptr align 8 %_26.0, i64 %_26.1)
          to label %bb16 unwind label %cleanup3

bb16:                                             ; preds = %bb15
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_28 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h75f61264603f890aE"(ptr align 8 %arr, i64 0, ptr align 8 @alloc_731aaa3b1d0e174abb75650cf8233bd4)
          to label %bb17 unwind label %cleanup3

bb17:                                             ; preds = %bb16
; invoke <alloc::string::String as core::clone::Clone>::clone
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h3201baa471bff1abE"(ptr sret([24 x i8]) align 8 %_0, ptr align 8 %_28)
          to label %bb18 unwind label %cleanup3

bb18:                                             ; preds = %bb17
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17heba7bfbe8384b04bE"(ptr align 8 %concat)
          to label %bb19 unwind label %cleanup1

bb19:                                             ; preds = %bb18
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::string::String>>
  invoke void @"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17ha5714b0b3d45e72aE"(ptr align 8 %arr)
          to label %bb20 unwind label %cleanup

bb20:                                             ; preds = %bb19
; call core::ptr::drop_in_place<alloc::string::String>
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17heba7bfbe8384b04bE"(ptr align 8 %str)
  ret void

bb12:                                             ; preds = %bb10
; invoke <alloc::string::String as core::ops::index::Index<I>>::index
  %31 = invoke { ptr, i64 } @"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h990e5850e6ca3bbdE"(ptr align 8 %concat, i64 %i, i64 %_24.0, ptr align 8 @alloc_ca685516a45432c9ecfc325128ac9b4c)
          to label %bb13 unwind label %cleanup3

panic:                                            ; preds = %bb10
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_08b4d479c4c054db1114df27cd35ec5b) #24
          to label %unreachable unwind label %cleanup3

unreachable:                                      ; preds = %panic
  unreachable

bb13:                                             ; preds = %bb12
  %_20.0 = extractvalue { ptr, i64 } %31, 0
  %_20.1 = extractvalue { ptr, i64 } %31, 1
; invoke <T as alloc::string::ToString>::to_string
  invoke void @"_ZN45_$LT$T$u20$as$u20$alloc..string..ToString$GT$9to_string17h75b533de7c3f914dE"(ptr sret([24 x i8]) align 8 %_19, ptr align 1 %_20.0, i64 %_20.1)
          to label %bb14 unwind label %cleanup3

bb14:                                             ; preds = %bb13
; invoke alloc::vec::Vec<T,A>::push
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h5086dd1086a82772E"(ptr align 8 %arr, ptr align 8 %_19)
          to label %bb28 unwind label %cleanup3

bb28:                                             ; preds = %bb14
  br label %bb7

bb9:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb24, %bb23, %bb26, %bb22
  %32 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #21
  unreachable

bb26:                                             ; preds = %bb27
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17heba7bfbe8384b04bE"(ptr align 8 %_6) #22
          to label %bb23 unwind label %terminate

bb25:                                             ; preds = %bb24
  %33 = load ptr, ptr %0, align 8
  %34 = getelementptr inbounds i8, ptr %0, i64 8
  %35 = load i32, ptr %34, align 8
  %36 = insertvalue { ptr, i32 } poison, ptr %33, 0
  %37 = insertvalue { ptr, i32 } %36, i32 %35, 1
  resume { ptr, i32 } %37
}
