define i32 @f_gold(ptr align 8 %s) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_34 = alloca [16 x i8], align 8
  %_32 = alloca [4 x i8], align 4
  %_28 = alloca [16 x i8], align 8
  %_26 = alloca [4 x i8], align 4
  %_17 = alloca [16 x i8], align 8
  %iter1 = alloca [16 x i8], align 8
  %back_up = alloca [4 x i8], align 4
  %_9 = alloca [16 x i8], align 8
  %iter = alloca [16 x i8], align 8
  %a = alloca [24 x i8], align 8
; invoke alloc::string::String::len
  %n = invoke i64 @_ZN5alloc6string6String3len17h3bd6dff3a2dda9aaE(ptr align 8 %s)
          to label %bb1 unwind label %cleanup

bb40:                                             ; preds = %bb39, %cleanup
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h2fdd6ecb3f0ebda0E"(ptr align 8 %s) #22
          to label %bb41 unwind label %terminate

cleanup:                                          ; preds = %bb36, %bb1, %start
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  store ptr %2, ptr %0, align 8
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %3, ptr %4, align 8
  br label %bb40

bb1:                                              ; preds = %start
; invoke alloc::vec::from_elem
  invoke void @_ZN5alloc3vec9from_elem17h7a7e93d078be4abeE(ptr sret([24 x i8]) align 8 %a, i32 0, i64 %n)
          to label %bb2 unwind label %cleanup

bb2:                                              ; preds = %bb1
; invoke core::iter::traits::iterator::Iterator::rev
  %5 = invoke { i64, i64 } @_ZN4core4iter6traits8iterator8Iterator3rev17hf9484086d5fe57adE(i64 0, i64 %n)
          to label %bb3 unwind label %cleanup2

bb39:                                             ; preds = %cleanup2
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hc38906b7ca65c7cfE"(ptr align 8 %a) #22
          to label %bb40 unwind label %terminate

cleanup2:                                         ; preds = %bb14, %bb26, %panic4, %bb24, %bb33, %bb32, %bb31, %bb30, %panic3, %bb28, %bb22, %bb21, %bb20, %bb19, %bb18, %bb17, %bb16, %bb11, %bb8, %bb35, %panic, %bb5, %bb3, %bb2
  %6 = landingpad { ptr, i32 }
          cleanup
  %7 = extractvalue { ptr, i32 } %6, 0
  %8 = extractvalue { ptr, i32 } %6, 1
  store ptr %7, ptr %0, align 8
  %9 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %8, ptr %9, align 8
  br label %bb39

bb3:                                              ; preds = %bb2
  %_6.0 = extractvalue { i64, i64 } %5, 0
  %_6.1 = extractvalue { i64, i64 } %5, 1
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %10 = invoke { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17ha250cd78d2f2ad13E"(i64 %_6.0, i64 %_6.1)
          to label %bb4 unwind label %cleanup2

bb4:                                              ; preds = %bb3
  %_5.0 = extractvalue { i64, i64 } %10, 0
  %_5.1 = extractvalue { i64, i64 } %10, 1
  store i64 %_5.0, ptr %iter, align 8
  %11 = getelementptr inbounds i8, ptr %iter, i64 8
  store i64 %_5.1, ptr %11, align 8
  br label %bb5

bb5:                                              ; preds = %bb12, %bb4
; invoke <core::iter::adapters::rev::Rev<I> as core::iter::traits::iterator::Iterator>::next
  %12 = invoke { i64, i64 } @"_ZN98_$LT$core..iter..adapters..rev..Rev$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5e92e09658639f6cE"(ptr align 8 %iter)
          to label %bb6 unwind label %cleanup2

bb6:                                              ; preds = %bb5
  %13 = extractvalue { i64, i64 } %12, 0
  %14 = extractvalue { i64, i64 } %12, 1
  store i64 %13, ptr %_9, align 8
  %15 = getelementptr inbounds i8, ptr %_9, i64 8
  store i64 %14, ptr %15, align 8
  %_11 = load i64, ptr %_9, align 8
  %16 = getelementptr inbounds i8, ptr %_9, i64 8
  %17 = load i64, ptr %16, align 8
  %18 = trunc nuw i64 %_11 to i1
  br i1 %18, label %bb8, label %bb9

bb8:                                              ; preds = %bb6
  %19 = getelementptr inbounds i8, ptr %_9, i64 8
  %i = load i64, ptr %19, align 8
  store i32 0, ptr %back_up, align 4
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %20 = invoke { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17he560fb700a603a87E"(i64 %i, i64 %n)
          to label %bb10 unwind label %cleanup2

bb9:                                              ; preds = %bb6
  %_61.0 = sub i64 %n, 1
  %_61.1 = icmp ult i64 %n, 1
  br i1 %_61.1, label %panic, label %bb35

bb35:                                             ; preds = %bb9
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_58 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3b8e08f56f529132E"(ptr align 8 %a, i64 %_61.0, ptr align 8 @alloc_2c66dce60e0a21df08c3fb555b23b154)
          to label %bb36 unwind label %cleanup2

panic:                                            ; preds = %bb9
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_0871ca99e1faf1162701d0b6eca527fb) #24
          to label %unreachable unwind label %cleanup2

unreachable:                                      ; preds = %panic4, %panic3, %panic
  unreachable

bb36:                                             ; preds = %bb35
  %_0 = load i32, ptr %_58, align 4
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hc38906b7ca65c7cfE"(ptr align 8 %a)
          to label %bb37 unwind label %cleanup

bb37:                                             ; preds = %bb36
; call core::ptr::drop_in_place<alloc::string::String>
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h2fdd6ecb3f0ebda0E"(ptr align 8 %s)
  ret i32 %_0

bb10:                                             ; preds = %bb8
  %_14.0 = extractvalue { i64, i64 } %20, 0
  %_14.1 = extractvalue { i64, i64 } %20, 1
  store i64 %_14.0, ptr %iter1, align 8
  %21 = getelementptr inbounds i8, ptr %iter1, i64 8
  store i64 %_14.1, ptr %21, align 8
  br label %bb11

bb11:                                             ; preds = %bb15, %bb27, %bb34, %bb10
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %22 = invoke { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h3b7149980fa12b25E"(ptr align 8 %iter1)
          to label %bb12 unwind label %cleanup2

bb12:                                             ; preds = %bb11
  %23 = extractvalue { i64, i64 } %22, 0
  %24 = extractvalue { i64, i64 } %22, 1
  store i64 %23, ptr %_17, align 8
  %25 = getelementptr inbounds i8, ptr %_17, i64 8
  store i64 %24, ptr %25, align 8
  %_19 = load i64, ptr %_17, align 8
  %26 = getelementptr inbounds i8, ptr %_17, i64 8
  %27 = load i64, ptr %26, align 8
  %28 = trunc nuw i64 %_19 to i1
  br i1 %28, label %bb13, label %bb5

bb13:                                             ; preds = %bb12
  %29 = getelementptr inbounds i8, ptr %_17, i64 8
  %j = load i64, ptr %29, align 8
  %_21 = icmp eq i64 %j, %i
  br i1 %_21, label %bb14, label %bb16

bb16:                                             ; preds = %bb13
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %30 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h2bed9b5478496d39E"(ptr align 8 %s)
          to label %bb17 unwind label %cleanup2

bb14:                                             ; preds = %bb13
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_22 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hbaf11ea0e1cd69dcE"(ptr align 8 %a, i64 %j, ptr align 8 @alloc_fbc73e4db9f0246799f40da116f9295e)
          to label %bb15 unwind label %cleanup2

bb17:                                             ; preds = %bb16
  %_29.0 = extractvalue { ptr, i64 } %30, 0
  %_29.1 = extractvalue { ptr, i64 } %30, 1
; invoke core::str::<impl str>::chars
  %31 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h99e91584f044b2e8E"(ptr align 1 %_29.0, i64 %_29.1)
          to label %bb18 unwind label %cleanup2

bb18:                                             ; preds = %bb17
  %32 = extractvalue { ptr, ptr } %31, 0
  %33 = extractvalue { ptr, ptr } %31, 1
  store ptr %32, ptr %_28, align 8
  %34 = getelementptr inbounds i8, ptr %_28, i64 8
  store ptr %33, ptr %34, align 8
; invoke core::iter::traits::iterator::Iterator::nth
  %35 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h3ceba1e92de1b884E(ptr align 8 %_28, i64 %i)
          to label %bb19 unwind label %cleanup2

bb19:                                             ; preds = %bb18
  store i32 %35, ptr %_26, align 4
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %36 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h2bed9b5478496d39E"(ptr align 8 %s)
          to label %bb20 unwind label %cleanup2

bb20:                                             ; preds = %bb19
  %_35.0 = extractvalue { ptr, i64 } %36, 0
  %_35.1 = extractvalue { ptr, i64 } %36, 1
; invoke core::str::<impl str>::chars
  %37 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h99e91584f044b2e8E"(ptr align 1 %_35.0, i64 %_35.1)
          to label %bb21 unwind label %cleanup2

bb21:                                             ; preds = %bb20
  %38 = extractvalue { ptr, ptr } %37, 0
  %39 = extractvalue { ptr, ptr } %37, 1
  store ptr %38, ptr %_34, align 8
  %40 = getelementptr inbounds i8, ptr %_34, i64 8
  store ptr %39, ptr %40, align 8
; invoke core::iter::traits::iterator::Iterator::nth
  %41 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h3ceba1e92de1b884E(ptr align 8 %_34, i64 %j)
          to label %bb22 unwind label %cleanup2

bb22:                                             ; preds = %bb21
  store i32 %41, ptr %_32, align 4
; invoke <core::option::Option<T> as core::cmp::PartialEq>::eq
  %_24 = invoke zeroext i1 @"_ZN70_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h5827aece50d8092eE"(ptr align 4 %_26, ptr align 4 %_32)
          to label %bb23 unwind label %cleanup2

bb23:                                             ; preds = %bb22
  br i1 %_24, label %bb24, label %bb28

bb28:                                             ; preds = %bb23
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_45 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3b8e08f56f529132E"(ptr align 8 %a, i64 %j, ptr align 8 @alloc_c2de0ba88ff554d3adb36f4927883a29)
          to label %bb29 unwind label %cleanup2

bb24:                                             ; preds = %bb23
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_38 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3b8e08f56f529132E"(ptr align 8 %a, i64 %j, ptr align 8 @alloc_8085eb300284139bdaab5ef616ba542a)
          to label %bb25 unwind label %cleanup2

bb29:                                             ; preds = %bb28
  %_44 = load i32, ptr %_45, align 4
  store i32 %_44, ptr %back_up, align 4
  %_52.0 = sub i64 %j, 1
  %_52.1 = icmp ult i64 %j, 1
  br i1 %_52.1, label %panic3, label %bb30

bb30:                                             ; preds = %bb29
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_49 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3b8e08f56f529132E"(ptr align 8 %a, i64 %_52.0, ptr align 8 @alloc_35c5e9b812b73477d57228355f68ef6c)
          to label %bb31 unwind label %cleanup2

panic3:                                           ; preds = %bb29
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_3bff5bf82beaf4f242a85a51f3a070a8) #24
          to label %unreachable unwind label %cleanup2

bb31:                                             ; preds = %bb30
  %_48 = load i32, ptr %_49, align 4
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_54 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3b8e08f56f529132E"(ptr align 8 %a, i64 %j, ptr align 8 @alloc_ae781a05818c30e229611c7a1fe983d3)
          to label %bb32 unwind label %cleanup2

bb32:                                             ; preds = %bb31
  %_53 = load i32, ptr %_54, align 4
; invoke core::cmp::Ord::max
  %_47 = invoke i32 @_ZN4core3cmp3Ord3max17h23cbe5de74597e18E(i32 %_48, i32 %_53)
          to label %bb33 unwind label %cleanup2

bb33:                                             ; preds = %bb32
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_56 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hbaf11ea0e1cd69dcE"(ptr align 8 %a, i64 %j, ptr align 8 @alloc_e88c7cf86d1858fc3f91d9428a5d045c)
          to label %bb34 unwind label %cleanup2

bb34:                                             ; preds = %bb33
  store i32 %_47, ptr %_56, align 4
  br label %bb11

bb25:                                             ; preds = %bb24
  %temp = load i32, ptr %_38, align 4
  %_40 = load i32, ptr %back_up, align 4
  %42 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_40, i32 2)
  %_41.0 = extractvalue { i32, i1 } %42, 0
  %_41.1 = extractvalue { i32, i1 } %42, 1
  br i1 %_41.1, label %panic4, label %bb26

bb26:                                             ; preds = %bb25
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_42 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hbaf11ea0e1cd69dcE"(ptr align 8 %a, i64 %j, ptr align 8 @alloc_ea569ea6f452e06f0ca72738334c67f1)
          to label %bb27 unwind label %cleanup2

panic4:                                           ; preds = %bb25
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_0eb8ab7884ffbcab4a02cb23086fce7d) #24
          to label %unreachable unwind label %cleanup2

bb27:                                             ; preds = %bb26
  store i32 %_41.0, ptr %_42, align 4
  store i32 %temp, ptr %back_up, align 4
  br label %bb11

bb15:                                             ; preds = %bb14
  store i32 1, ptr %_22, align 4
  br label %bb11

bb7:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb40, %bb39
  %43 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #20
  unreachable

bb41:                                             ; preds = %bb40
  %44 = load ptr, ptr %0, align 8
  %45 = getelementptr inbounds i8, ptr %0, i64 8
  %46 = load i32, ptr %45, align 8
  %47 = insertvalue { ptr, i32 } poison, ptr %44, 0
  %48 = insertvalue { ptr, i32 } %47, i32 %46, 1
  resume { ptr, i32 } %48
}
