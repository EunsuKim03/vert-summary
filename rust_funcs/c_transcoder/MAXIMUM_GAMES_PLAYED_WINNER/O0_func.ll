define i32 @f_gold(i32 %N) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %self.i18 = alloca [8 x i8], align 8
  %self.i12 = alloca [8 x i8], align 8
  %self.i6 = alloca [8 x i8], align 8
  %self.i = alloca [8 x i8], align 8
  %0 = alloca [16 x i8], align 8
  %_39 = alloca [4 x i8], align 4
  %_32 = alloca [4 x i8], align 4
  %_21 = alloca [4 x i8], align 4
  %_14 = alloca [4 x i8], align 4
  %i = alloca [4 x i8], align 4
  %dp = alloca [48 x i8], align 8
; call std::collections::hash::map::HashMap<K,V>::new
  call void @"_ZN3std11collections4hash3map20HashMap$LT$K$C$V$GT$3new17hfd1883de9fe6b1e7E"(ptr sret([48 x i8]) align 8 %dp) #24
; invoke std::collections::hash::map::HashMap<K,V,S>::insert
  %1 = invoke { i32, i32 } @"_ZN3std11collections4hash3map24HashMap$LT$K$C$V$C$S$GT$6insert17h2bbaf467dbed1d33E"(ptr align 8 %dp, i32 0, i32 1)
          to label %bb2 unwind label %cleanup

bb25:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<std::collections::hash::map::HashMap<i32,i32>>
  invoke void @"_ZN4core3ptr74drop_in_place$LT$std..collections..hash..map..HashMap$LT$i32$C$i32$GT$$GT$17haecec49db4630a32E"(ptr align 8 %dp) #28
          to label %bb26 unwind label %terminate

cleanup:                                          ; preds = %bb2.i20, %bb2.i14, %bb2.i8, %bb2.i, %panic5, %bb19, %bb18, %bb16, %panic4, %bb13, %panic3, %panic2, %bb10, %bb8, %panic1, %bb5, %panic, %bb2, %start
  %2 = landingpad { ptr, i32 }
          cleanup
  %3 = extractvalue { ptr, i32 } %2, 0
  %4 = extractvalue { ptr, i32 } %2, 1
  store ptr %3, ptr %0, align 8
  %5 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %4, ptr %5, align 8
  br label %bb25

bb2:                                              ; preds = %start
  %_3.0 = extractvalue { i32, i32 } %1, 0
  %_3.1 = extractvalue { i32, i32 } %1, 1
; invoke std::collections::hash::map::HashMap<K,V,S>::insert
  %6 = invoke { i32, i32 } @"_ZN3std11collections4hash3map24HashMap$LT$K$C$V$C$S$GT$6insert17h2bbaf467dbed1d33E"(ptr align 8 %dp, i32 1, i32 2)
          to label %bb3 unwind label %cleanup

bb3:                                              ; preds = %bb2
  %_5.0 = extractvalue { i32, i32 } %6, 0
  %_5.1 = extractvalue { i32, i32 } %6, 1
  store i32 2, ptr %i, align 4
  br label %bb4

bb4:                                              ; preds = %bb21, %bb3
  %_15 = load i32, ptr %i, align 4
  %7 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_15, i32 1)
  %_16.0 = extractvalue { i32, i1 } %7, 0
  %_16.1 = extractvalue { i32, i1 } %7, 1
  br i1 %_16.1, label %panic, label %bb5

bb5:                                              ; preds = %bb4
  store i32 %_16.0, ptr %_14, align 4
; invoke std::collections::hash::map::HashMap<K,V,S>::get
  %_11 = invoke align 4 ptr @"_ZN3std11collections4hash3map24HashMap$LT$K$C$V$C$S$GT$3get17h1abbfc889363e7eeE"(ptr align 8 %dp, ptr align 4 %_14)
          to label %bb6 unwind label %cleanup

panic:                                            ; preds = %bb4
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_c628948e3530c48665293666100fe0d3) #29
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic5, %panic4, %panic3, %panic2, %panic1, %panic
  unreachable

bb6:                                              ; preds = %bb5
  store ptr %_11, ptr %self.i18, align 8
  %8 = load ptr, ptr %self.i18, align 8
  %9 = ptrtoint ptr %8 to i64
  %10 = icmp eq i64 %9, 0
  %_2.i19 = select i1 %10, i64 0, i64 1
  %11 = trunc nuw i64 %_2.i19 to i1
  br i1 %11, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17hff669116e50ac77eE.exit23", label %bb2.i20

bb2.i20:                                          ; preds = %bb6
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_259fc6b6cbee0e44773f194fbbadbd4a) #23
          to label %.noexc22 unwind label %cleanup

.noexc22:                                         ; preds = %bb2.i20
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17hff669116e50ac77eE.exit23": ; preds = %bb6
  %val.i21 = load ptr, ptr %self.i18, align 8
  br label %bb7

bb7:                                              ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hff669116e50ac77eE.exit23"
  %_22 = load i32, ptr %i, align 4
  %12 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_22, i32 2)
  %_23.0 = extractvalue { i32, i1 } %12, 0
  %_23.1 = extractvalue { i32, i1 } %12, 1
  br i1 %_23.1, label %panic1, label %bb8

bb8:                                              ; preds = %bb7
  store i32 %_23.0, ptr %_21, align 4
; invoke std::collections::hash::map::HashMap<K,V,S>::get
  %_18 = invoke align 4 ptr @"_ZN3std11collections4hash3map24HashMap$LT$K$C$V$C$S$GT$3get17h1abbfc889363e7eeE"(ptr align 8 %dp, ptr align 4 %_21)
          to label %bb9 unwind label %cleanup

panic1:                                           ; preds = %bb7
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_7cadb87beeffa680d95784f1e57b5d3d) #29
          to label %unreachable unwind label %cleanup

bb9:                                              ; preds = %bb8
  store ptr %_18, ptr %self.i12, align 8
  %13 = load ptr, ptr %self.i12, align 8
  %14 = ptrtoint ptr %13 to i64
  %15 = icmp eq i64 %14, 0
  %_2.i13 = select i1 %15, i64 0, i64 1
  %16 = trunc nuw i64 %_2.i13 to i1
  br i1 %16, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17hff669116e50ac77eE.exit17", label %bb2.i14

bb2.i14:                                          ; preds = %bb9
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_70a99ab46af915d240a8ccdd1b306a78) #23
          to label %.noexc16 unwind label %cleanup

.noexc16:                                         ; preds = %bb2.i14
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17hff669116e50ac77eE.exit17": ; preds = %bb9
  %val.i15 = load ptr, ptr %self.i12, align 8
  br label %bb10

bb10:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hff669116e50ac77eE.exit17"
; invoke <&i32 as core::ops::arith::Add>::add
  %_9 = invoke i32 @"_ZN49_$LT$$RF$i32$u20$as$u20$core..ops..arith..Add$GT$3add17h9ca9887162e076c6E"(ptr align 4 %val.i21, ptr align 4 %val.i15, ptr align 8 @alloc_702147b5a892cfde73ab4ea1374bcff3)
          to label %bb11 unwind label %cleanup

bb11:                                             ; preds = %bb10
  %_8 = icmp sle i32 %_9, %N
  br i1 %_8, label %bb12, label %bb22

bb22:                                             ; preds = %bb11
  %_43 = load i32, ptr %i, align 4
  %17 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_43, i32 2)
  %_44.0 = extractvalue { i32, i1 } %17, 0
  %_44.1 = extractvalue { i32, i1 } %17, 1
  br i1 %_44.1, label %panic2, label %bb23

bb12:                                             ; preds = %bb11
  %_26 = load i32, ptr %i, align 4
  %_33 = load i32, ptr %i, align 4
  %18 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_33, i32 1)
  %_34.0 = extractvalue { i32, i1 } %18, 0
  %_34.1 = extractvalue { i32, i1 } %18, 1
  br i1 %_34.1, label %panic3, label %bb13

bb23:                                             ; preds = %bb22
; call core::ptr::drop_in_place<std::collections::hash::map::HashMap<i32,i32>>
  call void @"_ZN4core3ptr74drop_in_place$LT$std..collections..hash..map..HashMap$LT$i32$C$i32$GT$$GT$17haecec49db4630a32E"(ptr align 8 %dp)
  ret i32 %_44.0

panic2:                                           ; preds = %bb22
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_4abe4e576db75962aecd18bcc4ba2b21) #29
          to label %unreachable unwind label %cleanup

bb13:                                             ; preds = %bb12
  store i32 %_34.0, ptr %_32, align 4
; invoke std::collections::hash::map::HashMap<K,V,S>::get
  %_29 = invoke align 4 ptr @"_ZN3std11collections4hash3map24HashMap$LT$K$C$V$C$S$GT$3get17h1abbfc889363e7eeE"(ptr align 8 %dp, ptr align 4 %_32)
          to label %bb14 unwind label %cleanup

panic3:                                           ; preds = %bb12
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_bf18a3fce0cac7293c64e0a90ab29347) #29
          to label %unreachable unwind label %cleanup

bb14:                                             ; preds = %bb13
  store ptr %_29, ptr %self.i6, align 8
  %19 = load ptr, ptr %self.i6, align 8
  %20 = ptrtoint ptr %19 to i64
  %21 = icmp eq i64 %20, 0
  %_2.i7 = select i1 %21, i64 0, i64 1
  %22 = trunc nuw i64 %_2.i7 to i1
  br i1 %22, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17hff669116e50ac77eE.exit11", label %bb2.i8

bb2.i8:                                           ; preds = %bb14
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_92d6528911e7980a8c7d58abe4cdd652) #23
          to label %.noexc10 unwind label %cleanup

.noexc10:                                         ; preds = %bb2.i8
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17hff669116e50ac77eE.exit11": ; preds = %bb14
  %val.i9 = load ptr, ptr %self.i6, align 8
  br label %bb15

bb15:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hff669116e50ac77eE.exit11"
  %_40 = load i32, ptr %i, align 4
  %23 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_40, i32 2)
  %_41.0 = extractvalue { i32, i1 } %23, 0
  %_41.1 = extractvalue { i32, i1 } %23, 1
  br i1 %_41.1, label %panic4, label %bb16

bb16:                                             ; preds = %bb15
  store i32 %_41.0, ptr %_39, align 4
; invoke std::collections::hash::map::HashMap<K,V,S>::get
  %_36 = invoke align 4 ptr @"_ZN3std11collections4hash3map24HashMap$LT$K$C$V$C$S$GT$3get17h1abbfc889363e7eeE"(ptr align 8 %dp, ptr align 4 %_39)
          to label %bb17 unwind label %cleanup

panic4:                                           ; preds = %bb15
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_7d0982d3710b64a7c789f2d7ff2a5e25) #29
          to label %unreachable unwind label %cleanup

bb17:                                             ; preds = %bb16
  store ptr %_36, ptr %self.i, align 8
  %24 = load ptr, ptr %self.i, align 8
  %25 = ptrtoint ptr %24 to i64
  %26 = icmp eq i64 %25, 0
  %_2.i = select i1 %26, i64 0, i64 1
  %27 = trunc nuw i64 %_2.i to i1
  br i1 %27, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17hff669116e50ac77eE.exit", label %bb2.i

bb2.i:                                            ; preds = %bb17
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_848a8850280af43732882781277670ff) #23
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %bb2.i
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17hff669116e50ac77eE.exit": ; preds = %bb17
  %val.i = load ptr, ptr %self.i, align 8
  br label %bb18

bb18:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hff669116e50ac77eE.exit"
; invoke <&i32 as core::ops::arith::Add>::add
  %_27 = invoke i32 @"_ZN49_$LT$$RF$i32$u20$as$u20$core..ops..arith..Add$GT$3add17h9ca9887162e076c6E"(ptr align 4 %val.i9, ptr align 4 %val.i, ptr align 8 @alloc_51bb40a3f33ce10a74adeb463e5bdff4)
          to label %bb19 unwind label %cleanup

bb19:                                             ; preds = %bb18
; invoke std::collections::hash::map::HashMap<K,V,S>::insert
  %28 = invoke { i32, i32 } @"_ZN3std11collections4hash3map24HashMap$LT$K$C$V$C$S$GT$6insert17h2bbaf467dbed1d33E"(ptr align 8 %dp, i32 %_26, i32 %_27)
          to label %bb20 unwind label %cleanup

bb20:                                             ; preds = %bb19
  %_24.0 = extractvalue { i32, i32 } %28, 0
  %_24.1 = extractvalue { i32, i32 } %28, 1
  %29 = load i32, ptr %i, align 4
  %30 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %29, i32 1)
  %_42.0 = extractvalue { i32, i1 } %30, 0
  %_42.1 = extractvalue { i32, i1 } %30, 1
  br i1 %_42.1, label %panic5, label %bb21

bb21:                                             ; preds = %bb20
  store i32 %_42.0, ptr %i, align 4
  br label %bb4

panic5:                                           ; preds = %bb20
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_92f8e2d18efc1c93950de51e508aa550) #29
          to label %unreachable unwind label %cleanup

terminate:                                        ; preds = %bb25
  %31 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #26
  unreachable

bb26:                                             ; preds = %bb25
  %32 = load ptr, ptr %0, align 8
  %33 = getelementptr inbounds i8, ptr %0, i64 8
  %34 = load i32, ptr %33, align 8
  %35 = insertvalue { ptr, i32 } poison, ptr %32, 0
  %36 = insertvalue { ptr, i32 } %35, i32 %34, 1
  resume { ptr, i32 } %36
}
