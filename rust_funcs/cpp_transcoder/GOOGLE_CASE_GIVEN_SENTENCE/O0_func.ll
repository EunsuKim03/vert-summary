define void @f_gold(ptr sret([24 x i8]) align 8 %_0, ptr align 8 %s) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
; invoke alloc::string::String::len
  %n = invoke i64 @_ZN5alloc6string6String3len17h38a1d08fb42dcd31E(ptr align 8 %s)
          to label %bb1 unwind label %cleanup

bb6:                                              ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h846fa052b897ef08E"(ptr align 8 %s) #21
          to label %bb7 unwind label %terminate

cleanup:                                          ; preds = %bb4, %bb3, %bb2, %bb1, %start
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  store ptr %2, ptr %0, align 8
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %3, ptr %4, align 8
  br label %bb6

bb1:                                              ; preds = %start
; invoke <alloc::string::String as core::ops::deref::DerefMut>::deref_mut
  %5 = invoke { ptr, i64 } @"_ZN68_$LT$alloc..string..String$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h322011f325ae7967E"(ptr align 8 %s)
          to label %bb2 unwind label %cleanup

bb2:                                              ; preds = %bb1
  %_5.0 = extractvalue { ptr, i64 } %5, 0
  %_5.1 = extractvalue { ptr, i64 } %5, 1
; invoke core::str::<impl str>::make_ascii_lowercase
  invoke void @"_ZN4core3str21_$LT$impl$u20$str$GT$20make_ascii_lowercase17h595dad16919f0ed9E"(ptr align 1 %_5.0, i64 %_5.1)
          to label %bb3 unwind label %cleanup

bb3:                                              ; preds = %bb2
; invoke <alloc::string::String as core::ops::deref::DerefMut>::deref_mut
  %6 = invoke { ptr, i64 } @"_ZN68_$LT$alloc..string..String$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h322011f325ae7967E"(ptr align 8 %s)
          to label %bb4 unwind label %cleanup

bb4:                                              ; preds = %bb3
  %_8.0 = extractvalue { ptr, i64 } %6, 0
  %_8.1 = extractvalue { ptr, i64 } %6, 1
; invoke core::str::<impl str>::make_ascii_uppercase
  invoke void @"_ZN4core3str21_$LT$impl$u20$str$GT$20make_ascii_uppercase17hfe3b4add960e60d1E"(ptr align 1 %_8.0, i64 %_8.1)
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %_0, ptr align 8 %s, i64 24, i1 false)
  ret void

terminate:                                        ; preds = %bb6
  %7 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #18
  unreachable

bb7:                                              ; preds = %bb6
  %8 = load ptr, ptr %0, align 8
  %9 = getelementptr inbounds i8, ptr %0, i64 8
  %10 = load i32, ptr %9, align 8
  %11 = insertvalue { ptr, i32 } poison, ptr %8, 0
  %12 = insertvalue { ptr, i32 } %11, i32 %10, 1
  resume { ptr, i32 } %12
}
