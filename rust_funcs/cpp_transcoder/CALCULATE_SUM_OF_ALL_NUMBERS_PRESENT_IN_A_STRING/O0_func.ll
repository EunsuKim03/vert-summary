define i32 @f_gold(ptr align 8 %str) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %e.i4 = alloca [1 x i8], align 1
  %1 = alloca [8 x i8], align 8
  %self.i5 = alloca [8 x i8], align 4
  %2 = alloca [16 x i8], align 8
  %e.i = alloca [1 x i8], align 1
  %3 = alloca [8 x i8], align 8
  %self.i = alloca [8 x i8], align 4
  %4 = alloca [8 x i8], align 8
  %5 = alloca [8 x i8], align 8
  %6 = alloca [8 x i8], align 8
  %7 = alloca [8 x i8], align 8
  %8 = alloca [16 x i8], align 8
  %_23 = alloca [8 x i8], align 4
  %_21 = alloca [24 x i8], align 8
  %_17 = alloca [8 x i8], align 4
  %_9 = alloca [4 x i8], align 4
  %iter = alloca [16 x i8], align 8
  %sum = alloca [4 x i8], align 4
  %temp = alloca [24 x i8], align 8
; invoke alloc::string::String::new
  invoke void @_ZN5alloc6string6String3new17h883df744f5d480adE(ptr sret([24 x i8]) align 8 %temp)
          to label %bb1 unwind label %cleanup

bb27:                                             ; preds = %bb26, %cleanup
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h90aae6d11478c896E"(ptr align 8 %str) #22
          to label %bb28 unwind label %terminate

cleanup:                                          ; preds = %bb23, %start
  %9 = landingpad { ptr, i32 }
          cleanup
  %10 = extractvalue { ptr, i32 } %9, 0
  %11 = extractvalue { ptr, i32 } %9, 1
  store ptr %10, ptr %8, align 8
  %12 = getelementptr inbounds i8, ptr %8, i64 8
  store i32 %11, ptr %12, align 8
  br label %bb27

bb1:                                              ; preds = %start
  store i32 0, ptr %sum, align 4
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %13 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8bf7d0d41e5b69eeE"(ptr align 8 %str)
          to label %bb2 unwind label %cleanup1

bb26:                                             ; preds = %bb19, %cleanup1.body
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h90aae6d11478c896E"(ptr align 8 %temp) #22
          to label %bb27 unwind label %terminate

cleanup1:                                         ; preds = %bb11, %bb16, %panic2, %bb13, %bb12, %bb8, %panic, %bb20, %bb9, %bb5, %bb3, %bb2, %bb1
  %14 = landingpad { ptr, i32 }
          cleanup
  br label %cleanup1.body11

cleanup1.body11:                                  ; preds = %cleanup.i9, %cleanup1
  %eh.lpad-body12 = phi { ptr, i32 } [ %14, %cleanup1 ], [ %40, %cleanup.i9 ]
  br label %cleanup1.body

cleanup1.body:                                    ; preds = %cleanup.i, %cleanup1.body11
  %eh.lpad-body = phi { ptr, i32 } [ %eh.lpad-body12, %cleanup1.body11 ], [ %59, %cleanup.i ]
  %15 = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %16 = extractvalue { ptr, i32 } %eh.lpad-body, 1
  store ptr %15, ptr %8, align 8
  %17 = getelementptr inbounds i8, ptr %8, i64 8
  store i32 %16, ptr %17, align 8
  br label %bb26

bb2:                                              ; preds = %bb1
  %_6.0 = extractvalue { ptr, i64 } %13, 0
  %_6.1 = extractvalue { ptr, i64 } %13, 1
; invoke core::str::<impl str>::chars
  %18 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h49634ff4b86345b9E"(ptr align 1 %_6.0, i64 %_6.1)
          to label %bb3 unwind label %cleanup1

bb3:                                              ; preds = %bb2
  %_5.0 = extractvalue { ptr, ptr } %18, 0
  %_5.1 = extractvalue { ptr, ptr } %18, 1
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %19 = invoke { ptr, ptr } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h40eedad07ec79ceaE"(ptr %_5.0, ptr %_5.1)
          to label %bb4 unwind label %cleanup1

bb4:                                              ; preds = %bb3
  %_4.0 = extractvalue { ptr, ptr } %19, 0
  %_4.1 = extractvalue { ptr, ptr } %19, 1
  store ptr %_4.0, ptr %iter, align 8
  %20 = getelementptr inbounds i8, ptr %iter, i64 8
  store ptr %_4.1, ptr %20, align 8
  br label %bb5

bb5:                                              ; preds = %bb29, %bb18, %bb4
; invoke <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::next
  %21 = invoke i32 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9a926fc1bd90859cE"(ptr align 8 %iter)
          to label %bb6 unwind label %cleanup1

bb6:                                              ; preds = %bb5
  store i32 %21, ptr %_9, align 4
  %22 = load i32, ptr %_9, align 4
  %23 = icmp eq i32 %22, 1114112
  %_11 = select i1 %23, i64 0, i64 1
  %24 = trunc nuw i64 %_11 to i1
  br i1 %24, label %bb8, label %bb9

bb8:                                              ; preds = %bb6
  %ch = load i32, ptr %_9, align 4
; invoke core::char::methods::<impl char>::is_numeric
  %_13 = invoke zeroext i1 @"_ZN4core4char7methods22_$LT$impl$u20$char$GT$10is_numeric17h24cf615138dc20c6E"(i32 %ch)
          to label %bb10 unwind label %cleanup1

bb9:                                              ; preds = %bb6
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %25 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8bf7d0d41e5b69eeE"(ptr align 8 %temp)
          to label %bb20 unwind label %cleanup1

bb20:                                             ; preds = %bb9
  %_24.0 = extractvalue { ptr, i64 } %25, 0
  %_24.1 = extractvalue { ptr, i64 } %25, 1
; invoke core::str::<impl str>::parse
  %26 = invoke i64 @"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h41871728795138d2E"(ptr align 1 %_24.0, i64 %_24.1)
          to label %bb21 unwind label %cleanup1

bb21:                                             ; preds = %bb20
  store i64 %26, ptr %7, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %_23, ptr align 8 %7, i64 8, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %6, ptr align 4 %_23, i64 8, i1 false)
  %27 = load i64, ptr %6, align 8
  store i64 %27, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %self.i5, ptr align 8 %1, i64 8, i1 false)
  %28 = load i8, ptr %self.i5, align 4
  %29 = trunc nuw i8 %28 to i1
  %_2.i6 = zext i1 %29 to i64
  br i1 %29, label %bb2.i8, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h62b37049f0cd4fd1E.exit13"

bb2.i8:                                           ; preds = %bb21
  %30 = getelementptr inbounds i8, ptr %self.i5, i64 1
  %31 = load i8, ptr %30, align 1
  store i8 %31, ptr %e.i4, align 1
; invoke core::result::unwrap_failed
  invoke void @_ZN4core6result13unwrap_failed17hac9339a6c7ad693bE(ptr align 1 @alloc_00ae4b301f7fab8ac9617c03fcbd7274, i64 43, ptr align 1 %e.i4, ptr align 8 @vtable.0, ptr align 8 @alloc_fcb0459a5c5429e65c8f5decd9e3b356) #24
          to label %unreachable.i10 unwind label %cleanup.i9

cleanup.i9:                                       ; preds = %bb2.i8
  %32 = landingpad { ptr, i32 }
          cleanup
  %33 = extractvalue { ptr, i32 } %32, 0
  %34 = extractvalue { ptr, i32 } %32, 1
  store ptr %33, ptr %0, align 8
  %35 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %34, ptr %35, align 8
  %36 = load ptr, ptr %0, align 8
  %37 = getelementptr inbounds i8, ptr %0, i64 8
  %38 = load i32, ptr %37, align 8
  %39 = insertvalue { ptr, i32 } poison, ptr %36, 0
  %40 = insertvalue { ptr, i32 } %39, i32 %38, 1
  br label %cleanup1.body11

unreachable.i10:                                  ; preds = %bb2.i8
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h62b37049f0cd4fd1E.exit13": ; preds = %bb21
  %41 = getelementptr inbounds i8, ptr %self.i5, i64 4
  %t.i7 = load i32, ptr %41, align 4
  br label %bb22

bb22:                                             ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h62b37049f0cd4fd1E.exit13"
  %42 = load i32, ptr %sum, align 4
  %43 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %42, i32 %t.i7)
  %_26.0 = extractvalue { i32, i1 } %43, 0
  %_26.1 = extractvalue { i32, i1 } %43, 1
  br i1 %_26.1, label %panic, label %bb23

bb23:                                             ; preds = %bb22
  store i32 %_26.0, ptr %sum, align 4
  %_0 = load i32, ptr %sum, align 4
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h90aae6d11478c896E"(ptr align 8 %temp)
          to label %bb24 unwind label %cleanup

panic:                                            ; preds = %bb22
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_f7e03f7824b15dc4d9161b0acfa29f64) #24
          to label %unreachable unwind label %cleanup1

unreachable:                                      ; preds = %panic2, %panic
  unreachable

bb24:                                             ; preds = %bb23
; call core::ptr::drop_in_place<alloc::string::String>
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h90aae6d11478c896E"(ptr align 8 %str)
  ret i32 %_0

bb10:                                             ; preds = %bb8
  br i1 %_13, label %bb11, label %bb12

bb12:                                             ; preds = %bb10
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %44 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8bf7d0d41e5b69eeE"(ptr align 8 %temp)
          to label %bb13 unwind label %cleanup1

bb11:                                             ; preds = %bb10
; invoke alloc::string::String::push
  invoke void @_ZN5alloc6string6String4push17h50e399d6d8d93a51E(ptr align 8 %temp, i32 %ch)
          to label %bb29 unwind label %cleanup1

bb13:                                             ; preds = %bb12
  %_18.0 = extractvalue { ptr, i64 } %44, 0
  %_18.1 = extractvalue { ptr, i64 } %44, 1
; invoke core::str::<impl str>::parse
  %45 = invoke i64 @"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h41871728795138d2E"(ptr align 1 %_18.0, i64 %_18.1)
          to label %bb14 unwind label %cleanup1

bb14:                                             ; preds = %bb13
  store i64 %45, ptr %5, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %_17, ptr align 8 %5, i64 8, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %4, ptr align 4 %_17, i64 8, i1 false)
  %46 = load i64, ptr %4, align 8
  store i64 %46, ptr %3, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %self.i, ptr align 8 %3, i64 8, i1 false)
  %47 = load i8, ptr %self.i, align 4
  %48 = trunc nuw i8 %47 to i1
  %_2.i = zext i1 %48 to i64
  br i1 %48, label %bb2.i, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h62b37049f0cd4fd1E.exit"

bb2.i:                                            ; preds = %bb14
  %49 = getelementptr inbounds i8, ptr %self.i, i64 1
  %50 = load i8, ptr %49, align 1
  store i8 %50, ptr %e.i, align 1
; invoke core::result::unwrap_failed
  invoke void @_ZN4core6result13unwrap_failed17hac9339a6c7ad693bE(ptr align 1 @alloc_00ae4b301f7fab8ac9617c03fcbd7274, i64 43, ptr align 1 %e.i, ptr align 8 @vtable.0, ptr align 8 @alloc_ab67633e08808d3e190b02d350c52308) #24
          to label %unreachable.i unwind label %cleanup.i

cleanup.i:                                        ; preds = %bb2.i
  %51 = landingpad { ptr, i32 }
          cleanup
  %52 = extractvalue { ptr, i32 } %51, 0
  %53 = extractvalue { ptr, i32 } %51, 1
  store ptr %52, ptr %2, align 8
  %54 = getelementptr inbounds i8, ptr %2, i64 8
  store i32 %53, ptr %54, align 8
  %55 = load ptr, ptr %2, align 8
  %56 = getelementptr inbounds i8, ptr %2, i64 8
  %57 = load i32, ptr %56, align 8
  %58 = insertvalue { ptr, i32 } poison, ptr %55, 0
  %59 = insertvalue { ptr, i32 } %58, i32 %57, 1
  br label %cleanup1.body

unreachable.i:                                    ; preds = %bb2.i
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h62b37049f0cd4fd1E.exit": ; preds = %bb14
  %60 = getelementptr inbounds i8, ptr %self.i, i64 4
  %t.i = load i32, ptr %60, align 4
  br label %bb15

bb15:                                             ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h62b37049f0cd4fd1E.exit"
  %61 = load i32, ptr %sum, align 4
  %62 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %61, i32 %t.i)
  %_20.0 = extractvalue { i32, i1 } %62, 0
  %_20.1 = extractvalue { i32, i1 } %62, 1
  br i1 %_20.1, label %panic2, label %bb16

bb16:                                             ; preds = %bb15
  store i32 %_20.0, ptr %sum, align 4
; invoke alloc::string::String::new
  invoke void @_ZN5alloc6string6String3new17h883df744f5d480adE(ptr sret([24 x i8]) align 8 %_21)
          to label %bb17 unwind label %cleanup1

panic2:                                           ; preds = %bb15
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_73715b1744035bbed401bf7ed23673f3) #24
          to label %unreachable unwind label %cleanup1

bb17:                                             ; preds = %bb16
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h90aae6d11478c896E"(ptr align 8 %temp)
          to label %bb18 unwind label %cleanup3

bb19:                                             ; preds = %cleanup3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %temp, ptr align 8 %_21, i64 24, i1 false)
  br label %bb26

cleanup3:                                         ; preds = %bb17
  %63 = landingpad { ptr, i32 }
          cleanup
  %64 = extractvalue { ptr, i32 } %63, 0
  %65 = extractvalue { ptr, i32 } %63, 1
  store ptr %64, ptr %8, align 8
  %66 = getelementptr inbounds i8, ptr %8, i64 8
  store i32 %65, ptr %66, align 8
  br label %bb19

bb18:                                             ; preds = %bb17
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %temp, ptr align 8 %_21, i64 24, i1 false)
  br label %bb5

bb29:                                             ; preds = %bb11
  br label %bb5

bb7:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb27, %bb26
  %67 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #18
  unreachable

bb28:                                             ; preds = %bb27
  %68 = load ptr, ptr %8, align 8
  %69 = getelementptr inbounds i8, ptr %8, i64 8
  %70 = load i32, ptr %69, align 8
  %71 = insertvalue { ptr, i32 } poison, ptr %68, 0
  %72 = insertvalue { ptr, i32 } %71, i32 %70, 1
  resume { ptr, i32 } %72
}
