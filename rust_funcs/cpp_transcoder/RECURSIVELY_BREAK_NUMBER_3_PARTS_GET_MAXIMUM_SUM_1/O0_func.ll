define i32 @f_gold(i32 %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %self.i = alloca [4 x i8], align 4
  %0 = alloca [16 x i8], align 8
  %_11 = alloca [8 x i8], align 4
  %iter = alloca [12 x i8], align 4
  %_7 = alloca [12 x i8], align 4
  %_6 = alloca [12 x i8], align 4
  %dp = alloca [24 x i8], align 8
; call alloc::alloc::exchange_malloc
  %_4 = call ptr @_ZN5alloc5alloc15exchange_malloc17h67034d9944eb9ae9E(i64 8, i64 4) #19
  %_51 = ptrtoint ptr %_4 to i64
  %_53 = and i64 %_51, 3
  %_54 = icmp eq i64 %_53, 0
  br i1 %_54, label %bb23, label %panic

bb23:                                             ; preds = %start
  %_56 = ptrtoint ptr %_4 to i64
  %_58 = icmp eq i64 %_56, 0
  %_59 = and i1 %_58, true
  %_60 = xor i1 %_59, true
  br i1 %_60, label %bb24, label %panic1

panic:                                            ; preds = %start
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17h9d98dbac7d744dceE(i64 4, i64 %_51, ptr align 8 @alloc_47407285e3a035c9ecbdeb07e059fad5) #18
  unreachable

bb24:                                             ; preds = %bb23
  %1 = getelementptr inbounds nuw float, ptr %_4, i64 0
  store float 0.000000e+00, ptr %1, align 4
  %2 = getelementptr inbounds nuw float, ptr %_4, i64 1
  store float 1.000000e+00, ptr %2, align 4
; call alloc::slice::<impl [T]>::into_vec
  call void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$8into_vec17h0be92603cba965d7E"(ptr sret([24 x i8]) align 8 %dp, ptr align 4 %_4, i64 2) #19
; invoke <T as core::convert::TryFrom<U>>::try_from
  %_9 = invoke i32 @"_ZN53_$LT$T$u20$as$u20$core..convert..TryFrom$LT$U$GT$$GT$8try_from17h0ee42e490f67a3fcE"(i32 %n)
          to label %bb3 unwind label %cleanup

panic1:                                           ; preds = %bb23
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hefb1ca6b42ef1bcfE(ptr align 8 @alloc_47407285e3a035c9ecbdeb07e059fad5) #18
  unreachable

bb21:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<f32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17h102558e7599b4bcbE"(ptr align 8 %dp) #23
          to label %bb22 unwind label %terminate

cleanup:                                          ; preds = %bb18, %bb17, %bb16, %bb15, %bb14, %bb13, %bb12, %bb10, %bb11, %bb7, %bb5, %bb4, %bb24
  %3 = landingpad { ptr, i32 }
          cleanup
  %4 = extractvalue { ptr, i32 } %3, 0
  %5 = extractvalue { ptr, i32 } %3, 1
  store ptr %4, ptr %0, align 8
  %6 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %5, ptr %6, align 8
  br label %bb21

bb3:                                              ; preds = %bb24
  store i32 %_9, ptr %self.i, align 4
  %7 = load i32, ptr %self.i, align 4
  %t.i = load i32, ptr %self.i, align 4
  br label %bb4

bb4:                                              ; preds = %bb3
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17h3ae02d8c2092f00aE"(ptr sret([12 x i8]) align 4 %_7, i32 2, i32 %t.i)
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb4
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hb019bb63c33d8e5cE"(ptr sret([12 x i8]) align 4 %_6, ptr align 4 %_7)
          to label %bb6 unwind label %cleanup

bb6:                                              ; preds = %bb5
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter, ptr align 4 %_6, i64 12, i1 false)
  br label %bb7

bb7:                                              ; preds = %bb25, %bb6
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %8 = invoke { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17hb0cfa241faee38abE"(ptr align 4 %iter)
          to label %bb8 unwind label %cleanup

bb8:                                              ; preds = %bb7
  %9 = extractvalue { i32, i32 } %8, 0
  %10 = extractvalue { i32, i32 } %8, 1
  store i32 %9, ptr %_11, align 4
  %11 = getelementptr inbounds i8, ptr %_11, i64 4
  store i32 %10, ptr %11, align 4
  %12 = load i32, ptr %_11, align 4
  %13 = getelementptr inbounds i8, ptr %_11, i64 4
  %14 = load i32, ptr %13, align 4
  %_13 = zext i32 %12 to i64
  %15 = trunc nuw i64 %_13 to i1
  br i1 %15, label %bb10, label %bb11

bb10:                                             ; preds = %bb8
  %16 = getelementptr inbounds i8, ptr %_11, i64 4
  %i = load i32, ptr %16, align 4
  %_25 = sitofp i32 %i to float
  %_24 = fdiv float %_25, 2.000000e+00
; invoke std::f32::<impl f32>::floor
  %_23 = invoke float @"_ZN3std3f3221_$LT$impl$u20$f32$GT$5floor17h4a83574f9393c245E"(float %_24)
          to label %bb12 unwind label %cleanup

bb11:                                             ; preds = %bb8
  %_45 = sext i32 %n to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_43 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3baa20ffc5d066c9E"(ptr align 8 %dp, i64 %_45, ptr align 8 @alloc_626fdc5c4c8d27a3ca377302f8847dbe)
          to label %bb19 unwind label %cleanup

bb19:                                             ; preds = %bb11
  %_42 = load float, ptr %_43, align 4
  %_0 = call i32 @llvm.fptosi.sat.i32.f32(float %_42)
; call core::ptr::drop_in_place<alloc::vec::Vec<f32>>
  call void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17h102558e7599b4bcbE"(ptr align 8 %dp)
  ret i32 %_0

bb12:                                             ; preds = %bb10
  %_22 = call i64 @llvm.fptoui.sat.i64.f32(float %_23)
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_20 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3baa20ffc5d066c9E"(ptr align 8 %dp, i64 %_22, ptr align 8 @alloc_1bb020318762953f473ae120b591a00f)
          to label %bb13 unwind label %cleanup

bb13:                                             ; preds = %bb12
  %_19 = load float, ptr %_20, align 4
  %_32 = sitofp i32 %i to float
  %_31 = fdiv float %_32, 3.000000e+00
; invoke std::f32::<impl f32>::floor
  %_30 = invoke float @"_ZN3std3f3221_$LT$impl$u20$f32$GT$5floor17h4a83574f9393c245E"(float %_31)
          to label %bb14 unwind label %cleanup

bb14:                                             ; preds = %bb13
  %_29 = call i64 @llvm.fptoui.sat.i64.f32(float %_30)
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_27 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3baa20ffc5d066c9E"(ptr align 8 %dp, i64 %_29, ptr align 8 @alloc_a313795edd89d24c5704cd5708731bbb)
          to label %bb15 unwind label %cleanup

bb15:                                             ; preds = %bb14
  %_26 = load float, ptr %_27, align 4
  %_18 = fadd float %_19, %_26
  %_40 = sitofp i32 %i to float
  %_39 = fdiv float %_40, 4.000000e+00
; invoke std::f32::<impl f32>::floor
  %_38 = invoke float @"_ZN3std3f3221_$LT$impl$u20$f32$GT$5floor17h4a83574f9393c245E"(float %_39)
          to label %bb16 unwind label %cleanup

bb16:                                             ; preds = %bb15
  %_37 = call i64 @llvm.fptoui.sat.i64.f32(float %_38)
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_35 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3baa20ffc5d066c9E"(ptr align 8 %dp, i64 %_37, ptr align 8 @alloc_d241ec6b437c7a259dabe209df6e203c)
          to label %bb17 unwind label %cleanup

bb17:                                             ; preds = %bb16
  %_34 = load float, ptr %_35, align 4
  %_41 = sitofp i32 %i to float
; invoke core::f32::<impl f32>::max
  %_33 = invoke float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$3max17h48f15c340f7ed07dE"(float %_34, float %_41)
          to label %bb18 unwind label %cleanup

bb18:                                             ; preds = %bb17
  %_17 = fadd float %_18, %_33
; invoke alloc::vec::Vec<T,A>::push
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hfba65bc09c847cd6E"(ptr align 8 %dp, float %_17)
          to label %bb25 unwind label %cleanup

bb25:                                             ; preds = %bb18
  br label %bb7

bb9:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb21
  %17 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #22
  unreachable

bb22:                                             ; preds = %bb21
  %18 = load ptr, ptr %0, align 8
  %19 = getelementptr inbounds i8, ptr %0, i64 8
  %20 = load i32, ptr %19, align 8
  %21 = insertvalue { ptr, i32 } poison, ptr %18, 0
  %22 = insertvalue { ptr, i32 } %21, i32 %20, 1
  resume { ptr, i32 } %22
}
