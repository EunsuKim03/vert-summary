define i32 @f_gold(i32 %a, i32 %b) unnamed_addr #3 {
start:
  %_0 = alloca [4 x i8], align 4
  %_3 = icmp eq i32 %a, 0
  br i1 %_3, label %bb2, label %bb1

bb1:                                              ; preds = %start
  %_4 = icmp eq i32 %b, 0
  br i1 %_4, label %bb2, label %bb3

bb2:                                              ; preds = %bb1, %start
  store i32 1, ptr %_0, align 4
  br label %bb10

bb3:                                              ; preds = %bb1
  %a1 = sitofp i32 %a to float
  %b2 = sitofp i32 %b to float
; call core::f32::<impl f32>::abs
  %a3 = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$3abs17hed9650de91e85d08E"(float %a1) #20
; call core::f32::<impl f32>::abs
  %b4 = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$3abs17hed9650de91e85d08E"(float %b2) #20
; call std::f32::<impl f32>::log10
  %log_a = call float @"_ZN3std3f3221_$LT$impl$u20$f32$GT$5log1017h8b57a7496970863bE"(float %a3) #20
; call std::f32::<impl f32>::log10
  %log_b = call float @"_ZN3std3f3221_$LT$impl$u20$f32$GT$5log1017h8b57a7496970863bE"(float %b4) #20
  %sum = fadd float %log_a, %log_b
; call std::f32::<impl f32>::floor
  %_14 = call float @"_ZN3std3f3221_$LT$impl$u20$f32$GT$5floor17h51c72cfd23928684E"(float %sum) #20
  %_13 = call i32 @llvm.fptosi.sat.i32.f32(float %_14)
  %0 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_13, i32 1)
  %_15.0 = extractvalue { i32, i1 } %0, 0
  %_15.1 = extractvalue { i32, i1 } %0, 1
  br i1 %_15.1, label %panic, label %bb9

bb9:                                              ; preds = %bb3
  store i32 %_15.0, ptr %_0, align 4
  br label %bb10

panic:                                            ; preds = %bb3
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_3479edfa298e3572ac05750aafad5abd) #22
  unreachable

bb10:                                             ; preds = %bb2, %bb9
  %1 = load i32, ptr %_0, align 4
  ret i32 %1
}
