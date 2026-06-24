; ModuleID = '0014_libcsv_init_emit.70dc269a1f499202-cgu.0'
source_filename = "0014_libcsv_init_emit.70dc269a1f499202-cgu.0"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@alloc_3a5e364b9189ebfaa936defa2fb44dc7 = private unnamed_addr constant [80 x i8] c"/root/es/vert/vert/rust_funcs/c_crown/0014_libcsv_init/0014_libcsv_init_emit.rs\00", align 1
@alloc_f2ced481aaa7a184a7e60da663e98bb2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_3a5e364b9189ebfaa936defa2fb44dc7, [16 x i8] c"O\00\00\00\00\00\00\00-\00\00\00\1B\00\00\00" }>, align 8
@alloc_858f0911349865816ce2146a3e25c912 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_3a5e364b9189ebfaa936defa2fb44dc7, [16 x i8] c"O\00\00\00\00\00\00\00.\00\00\00\05\00\00\00" }>, align 8
@alloc_8f7adb1aa1d65b10d95c900545fb54fe = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_3a5e364b9189ebfaa936defa2fb44dc7, [16 x i8] c"O\00\00\00\00\00\00\003\00\00\00\1B\00\00\00" }>, align 8
@alloc_3d9a5b04419eeb3d5024865a63929afa = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_3a5e364b9189ebfaa936defa2fb44dc7, [16 x i8] c"O\00\00\00\00\00\00\004\00\00\00\05\00\00\00" }>, align 8

; Function Attrs: nounwind nonlazybind uwtable
define void @cb1(ptr %s, i64 %len, ptr %data) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %_8 = ptrtoint ptr %data to i64
  %_10 = and i64 %_8, 7
  %_11 = icmp eq i64 %_10, 0
  br i1 %_11, label %bb2, label %panic

bb2:                                              ; preds = %start
  %_13 = ptrtoint ptr %data to i64
  %_14 = icmp eq i64 %_13, 0
  %_15 = and i1 %_14, true
  %_16 = xor i1 %_15, true
  br i1 %_16, label %bb3, label %panic1

panic:                                            ; preds = %start
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17h9d98dbac7d744dceE(i64 8, i64 %_8, ptr align 8 @alloc_f2ced481aaa7a184a7e60da663e98bb2) #3
  unreachable

bb3:                                              ; preds = %bb2
  %0 = load i64, ptr %data, align 8
  %_6.0 = add i64 %0, 1
  %_6.1 = icmp ult i64 %_6.0, %0
  br i1 %_6.1, label %panic2, label %bb1

panic1:                                           ; preds = %bb2
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hefb1ca6b42ef1bcfE(ptr align 8 @alloc_f2ced481aaa7a184a7e60da663e98bb2) #3
  unreachable

bb1:                                              ; preds = %bb3
  store i64 %_6.0, ptr %data, align 8
  ret void

panic2:                                           ; preds = %bb3
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_858f0911349865816ce2146a3e25c912) #4
          to label %unreachable unwind label %terminate

terminate:                                        ; preds = %panic2
  %1 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_cannot_unwind
  call void @_ZN4core9panicking19panic_cannot_unwind17h9d41c6c1d0e0d4e5E() #5
  unreachable

unreachable:                                      ; preds = %panic2
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
define void @cb2(i32 %c, ptr %data) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %_7 = ptrtoint ptr %data to i64
  %_9 = and i64 %_7, 7
  %_10 = icmp eq i64 %_9, 0
  br i1 %_10, label %bb2, label %panic

bb2:                                              ; preds = %start
  %_12 = ptrtoint ptr %data to i64
  %_13 = icmp eq i64 %_12, 0
  %_14 = and i1 %_13, true
  %_15 = xor i1 %_14, true
  br i1 %_15, label %bb3, label %panic1

panic:                                            ; preds = %start
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17h9d98dbac7d744dceE(i64 8, i64 %_7, ptr align 8 @alloc_8f7adb1aa1d65b10d95c900545fb54fe) #3
  unreachable

bb3:                                              ; preds = %bb2
  %0 = getelementptr inbounds i8, ptr %data, i64 8
  %1 = load i64, ptr %0, align 8
  %_5.0 = add i64 %1, 1
  %_5.1 = icmp ult i64 %_5.0, %1
  br i1 %_5.1, label %panic2, label %bb1

panic1:                                           ; preds = %bb2
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hefb1ca6b42ef1bcfE(ptr align 8 @alloc_8f7adb1aa1d65b10d95c900545fb54fe) #3
  unreachable

bb1:                                              ; preds = %bb3
  %2 = getelementptr inbounds i8, ptr %data, i64 8
  store i64 %_5.0, ptr %2, align 8
  ret void

panic2:                                           ; preds = %bb3
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_3d9a5b04419eeb3d5024865a63929afa) #4
          to label %unreachable unwind label %terminate

terminate:                                        ; preds = %panic2
  %3 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_cannot_unwind
  call void @_ZN4core9panicking19panic_cannot_unwind17h9d41c6c1d0e0d4e5E() #5
  unreachable

unreachable:                                      ; preds = %panic2
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
declare i32 @rust_eh_personality(i32, i32, i64, ptr, ptr) unnamed_addr #0

; core::panicking::panic_misaligned_pointer_dereference
; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_ZN4core9panicking36panic_misaligned_pointer_dereference17h9d98dbac7d744dceE(i64, i64, ptr align 8) unnamed_addr #1

; core::panicking::panic_null_pointer_dereference
; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_ZN4core9panicking30panic_null_pointer_dereference17hefb1ca6b42ef1bcfE(ptr align 8) unnamed_addr #1

; core::panicking::panic_const::panic_const_add_overflow
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8) unnamed_addr #2

; core::panicking::panic_cannot_unwind
; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_ZN4core9panicking19panic_cannot_unwind17h9d41c6c1d0e0d4e5E() unnamed_addr #1

attributes #0 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { noinline noreturn nounwind }
attributes #4 = { noreturn }
attributes #5 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.93.1 (01f6ddf75 2026-02-11)"}
