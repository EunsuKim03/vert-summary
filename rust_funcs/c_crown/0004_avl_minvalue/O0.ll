; ModuleID = '0004_avl_minvalue_emit.8a2c23209c66af79-cgu.0'
source_filename = "0004_avl_minvalue_emit.8a2c23209c66af79-cgu.0"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@alloc_64e308ef4babfeb8b6220184de794a17 = private unnamed_addr constant [221 x i8] c"unsafe precondition(s) violated: hint::assert_unchecked must never be called when the condition is false\0A\0AThis indicates a bug in the program. This Undefined Behavior check is optional, and cannot be relied on for safety.", align 1
@alloc_1be5ea12ba708d9a11b6e93a7d387a75 = private unnamed_addr constant [281 x i8] c"unsafe precondition(s) violated: Layout::from_size_align_unchecked requires that align is a power of 2 and the rounded-up allocation size does not exceed isize::MAX\0A\0AThis indicates a bug in the program. This Undefined Behavior check is optional, and cannot be relied on for safety.", align 1
@alloc_6e6d18dd23a06301e7bcdea5d50ca4f5 = private unnamed_addr constant [102 x i8] c"/root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/alloc/src/rc.rs\00", align 1
@alloc_f51adcc3b5f2b6d276824f5420fdad31 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_6e6d18dd23a06301e7bcdea5d50ca4f5, [16 x i8] c"e\00\00\00\00\00\00\00\9F\0E\00\00\0D\00\00\00" }>, align 8
@alloc_b6b0ded53e955169938b7a96fbee3cf5 = private unnamed_addr constant [111 x i8] c"/root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/alloc/layout.rs\00", align 1
@alloc_4ef147767b3985cfd2dd01cd0201791e = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_b6b0ded53e955169938b7a96fbee3cf5, [16 x i8] c"n\00\00\00\00\00\00\00\D2\00\00\00\12\00\00\00" }>, align 8

; <&A as core::alloc::Allocator>::deallocate
; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN48_$LT$$RF$A$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h393eed0d9341ab67E"(ptr align 8 %self, ptr %ptr, i64 %layout.0, i64 %layout.1) unnamed_addr #0 {
start:
  %_4 = load ptr, ptr %self, align 8
; call <alloc::alloc::Global as core::alloc::Allocator>::deallocate
  call void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h2036a71b595271e8E"(ptr align 1 %_4, ptr %ptr, i64 %layout.0, i64 %layout.1) #10
  ret void
}

; core::intrinsics::cold_path
; Function Attrs: cold nounwind nonlazybind uwtable
define internal void @_ZN4core10intrinsics9cold_path17he466acdddfc15190E() unnamed_addr #1 {
start:
  ret void
}

; core::ptr::drop_in_place<0004_avl_minvalue_emit::Node>
; Function Attrs: nonlazybind uwtable
define void @"_ZN4core3ptr49drop_in_place$LT$0004_avl_minvalue_emit..Node$GT$17h29bc349e7a2328a2E"(ptr align 8 %_1) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
; invoke core::ptr::drop_in_place<core::option::Option<alloc::rc::Rc<0004_avl_minvalue_emit::Node>>>
  invoke void @"_ZN4core3ptr98drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$0004_avl_minvalue_emit..Node$GT$$GT$$GT$17h28b04abe71695122E"(ptr align 8 %_1)
          to label %bb4 unwind label %cleanup

bb3:                                              ; preds = %cleanup
  %1 = getelementptr inbounds i8, ptr %_1, i64 8
; invoke core::ptr::drop_in_place<core::option::Option<alloc::rc::Rc<0004_avl_minvalue_emit::Node>>>
  invoke void @"_ZN4core3ptr98drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$0004_avl_minvalue_emit..Node$GT$$GT$$GT$17h28b04abe71695122E"(ptr align 8 %1) #11
          to label %bb1 unwind label %terminate

cleanup:                                          ; preds = %start
  %2 = landingpad { ptr, i32 }
          cleanup
  %3 = extractvalue { ptr, i32 } %2, 0
  %4 = extractvalue { ptr, i32 } %2, 1
  store ptr %3, ptr %0, align 8
  %5 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %4, ptr %5, align 8
  br label %bb3

bb4:                                              ; preds = %start
  %6 = getelementptr inbounds i8, ptr %_1, i64 8
; call core::ptr::drop_in_place<core::option::Option<alloc::rc::Rc<0004_avl_minvalue_emit::Node>>>
  call void @"_ZN4core3ptr98drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$0004_avl_minvalue_emit..Node$GT$$GT$$GT$17h28b04abe71695122E"(ptr align 8 %6)
  ret void

terminate:                                        ; preds = %bb3
  %7 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #12
  unreachable

bb1:                                              ; preds = %bb3
  %8 = load ptr, ptr %0, align 8
  %9 = getelementptr inbounds i8, ptr %0, i64 8
  %10 = load i32, ptr %9, align 8
  %11 = insertvalue { ptr, i32 } poison, ptr %8, 0
  %12 = insertvalue { ptr, i32 } %11, i32 %10, 1
  resume { ptr, i32 } %12
}

; core::ptr::drop_in_place<alloc::rc::Rc<0004_avl_minvalue_emit::Node>>
; Function Attrs: nonlazybind uwtable
define void @"_ZN4core3ptr70drop_in_place$LT$alloc..rc..Rc$LT$0004_avl_minvalue_emit..Node$GT$$GT$17h2d4ab66051153746E"(ptr align 8 %_1) unnamed_addr #2 {
start:
; call <alloc::rc::Rc<T,A> as core::ops::drop::Drop>::drop
  call void @"_ZN68_$LT$alloc..rc..Rc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hcb261583c1ebe238E"(ptr align 8 %_1) #10
  ret void
}

; core::ptr::drop_in_place<core::option::Option<alloc::rc::Rc<0004_avl_minvalue_emit::Node>>>
; Function Attrs: nonlazybind uwtable
define void @"_ZN4core3ptr98drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$0004_avl_minvalue_emit..Node$GT$$GT$$GT$17h28b04abe71695122E"(ptr align 8 %_1) unnamed_addr #2 {
start:
  %0 = load ptr, ptr %_1, align 8
  %1 = ptrtoint ptr %0 to i64
  %2 = icmp eq i64 %1, 0
  %_2 = select i1 %2, i64 0, i64 1
  %3 = icmp eq i64 %_2, 0
  br i1 %3, label %bb1, label %bb2

bb1:                                              ; preds = %bb2, %start
  ret void

bb2:                                              ; preds = %start
; call core::ptr::drop_in_place<alloc::rc::Rc<0004_avl_minvalue_emit::Node>>
  call void @"_ZN4core3ptr70drop_in_place$LT$alloc..rc..Rc$LT$0004_avl_minvalue_emit..Node$GT$$GT$17h2d4ab66051153746E"(ptr align 8 %_1)
  br label %bb1
}

; core::ptr::drop_in_place<alloc::rc::Weak<0004_avl_minvalue_emit::Node,&alloc::alloc::Global>>
; Function Attrs: nonlazybind uwtable
define void @"_ZN4core3ptr99drop_in_place$LT$alloc..rc..Weak$LT$0004_avl_minvalue_emit..Node$C$$RF$alloc..alloc..Global$GT$$GT$17hfa8f4672e68bc4bdE"(ptr align 8 %_1) unnamed_addr #2 {
start:
; call <alloc::rc::Weak<T,A> as core::ops::drop::Drop>::drop
  call void @"_ZN70_$LT$alloc..rc..Weak$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd391860fc6839242E"(ptr align 8 %_1)
  ret void
}

; core::hint::assert_unchecked::precondition_check
; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal void @_ZN4core4hint16assert_unchecked18precondition_check17h350d2adab9d2cdf5E(i1 zeroext %cond, ptr align 8 %0) unnamed_addr #3 {
start:
  br i1 %cond, label %bb2, label %bb1

bb1:                                              ; preds = %start
; call core::panicking::panic_nounwind_fmt
  call void @_ZN4core9panicking18panic_nounwind_fmt17hf349702e3facb1fdE(ptr @alloc_64e308ef4babfeb8b6220184de794a17, ptr inttoptr (i64 443 to ptr), i1 zeroext false, ptr align 8 %0) #13
  unreachable

bb2:                                              ; preds = %start
  ret void
}

; core::alloc::layout::Layout::from_size_align_unchecked::precondition_check
; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal void @_ZN4core5alloc6layout6Layout25from_size_align_unchecked18precondition_check17h3e033a210b73d987E(i64 %size, i64 %align, ptr align 8 %0) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
; invoke core::alloc::layout::Layout::is_size_align_valid
  %_3 = invoke zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17ha4d1e0c08d063b83E(i64 %size, i64 %align)
          to label %bb1 unwind label %terminate

terminate:                                        ; preds = %start
  %1 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_cannot_unwind
  call void @_ZN4core9panicking19panic_cannot_unwind17h9d41c6c1d0e0d4e5E() #12
  unreachable

bb1:                                              ; preds = %start
  br i1 %_3, label %bb2, label %bb3

bb3:                                              ; preds = %bb1
; call core::panicking::panic_nounwind_fmt
  call void @_ZN4core9panicking18panic_nounwind_fmt17hf349702e3facb1fdE(ptr @alloc_1be5ea12ba708d9a11b6e93a7d387a75, ptr inttoptr (i64 563 to ptr), i1 zeroext false, ptr align 8 %0) #13
  unreachable

bb2:                                              ; preds = %bb1
  ret void
}

; core::option::Option<T>::as_ref
; Function Attrs: inlinehint nonlazybind uwtable
define align 8 ptr @"_ZN4core6option15Option$LT$T$GT$6as_ref17h0b5f4e3629e1cc4dE"(ptr align 8 %self) unnamed_addr #0 {
start:
  %_0 = alloca [8 x i8], align 8
  %0 = load ptr, ptr %self, align 8
  %1 = ptrtoint ptr %0 to i64
  %2 = icmp eq i64 %1, 0
  %_2 = select i1 %2, i64 0, i64 1
  %3 = trunc nuw i64 %_2 to i1
  br i1 %3, label %bb3, label %bb2

bb3:                                              ; preds = %start
  store ptr %self, ptr %_0, align 8
  br label %bb4

bb2:                                              ; preds = %start
  store ptr null, ptr %_0, align 8
  br label %bb4

bb4:                                              ; preds = %bb3, %bb2
  %4 = load ptr, ptr %_0, align 8
  ret ptr %4

bb1:                                              ; No predecessors!
  unreachable
}

; <alloc::alloc::Global as core::clone::Clone>::clone
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN59_$LT$alloc..alloc..Global$u20$as$u20$core..clone..Clone$GT$5clone17h31872c41ebd45f4aE"(ptr align 1 %self) unnamed_addr #0 {
start:
  ret void
}

; alloc::rc::RcInnerPtr::inc_strong
; Function Attrs: inlinehint nonlazybind uwtable
define void @_ZN5alloc2rc10RcInnerPtr10inc_strong17h116447749e242858E(ptr align 8 %self) unnamed_addr #0 {
start:
; call alloc::rc::RcInnerPtr::strong
  %strong = call i64 @_ZN5alloc2rc10RcInnerPtr6strong17h621337cde0fd50a5E(ptr align 8 %self) #10
  %cond = icmp ne i64 %strong, 0
  br label %bb3

bb3:                                              ; preds = %start
; call core::hint::assert_unchecked::precondition_check
  call void @_ZN4core4hint16assert_unchecked18precondition_check17h350d2adab9d2cdf5E(i1 zeroext %cond, ptr align 8 @alloc_f51adcc3b5f2b6d276824f5420fdad31) #14
  br label %bb4

bb4:                                              ; preds = %bb3
  %strong1 = add i64 %strong, 1
  store i64 %strong1, ptr %self, align 8
  %b = icmp eq i64 %strong1, 0
  br i1 %b, label %bb5, label %bb7

bb7:                                              ; preds = %bb4
  ret void

bb5:                                              ; preds = %bb4
  call void @llvm.trap()
  unreachable
}

; alloc::rc::RcInnerPtr::strong
; Function Attrs: inlinehint nonlazybind uwtable
define i64 @_ZN5alloc2rc10RcInnerPtr6strong17h621337cde0fd50a5E(ptr align 8 %self) unnamed_addr #0 {
start:
  %_0 = load i64, ptr %self, align 8
  ret i64 %_0
}

; alloc::rc::Rc<T,A>::drop_slow
; Function Attrs: noinline nonlazybind uwtable
define void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h722d4774d401be28E"(ptr align 8 %self) unnamed_addr #4 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_weak = alloca [16 x i8], align 8
  %_3 = load ptr, ptr %self, align 8
  %_4 = getelementptr inbounds i8, ptr %self, i64 8
  store ptr %_3, ptr %_weak, align 8
  %1 = getelementptr inbounds i8, ptr %_weak, i64 8
  store ptr %_4, ptr %1, align 8
  %self1 = load ptr, ptr %self, align 8
  %_6 = getelementptr inbounds i8, ptr %self1, i64 16
; invoke core::ptr::drop_in_place<0004_avl_minvalue_emit::Node>
  invoke void @"_ZN4core3ptr49drop_in_place$LT$0004_avl_minvalue_emit..Node$GT$17h29bc349e7a2328a2E"(ptr align 8 %_6)
          to label %bb1 unwind label %cleanup

bb3:                                              ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::rc::Weak<0004_avl_minvalue_emit::Node,&alloc::alloc::Global>>
  invoke void @"_ZN4core3ptr99drop_in_place$LT$alloc..rc..Weak$LT$0004_avl_minvalue_emit..Node$C$$RF$alloc..alloc..Global$GT$$GT$17hfa8f4672e68bc4bdE"(ptr align 8 %_weak) #11
          to label %bb4 unwind label %terminate

cleanup:                                          ; preds = %start
  %2 = landingpad { ptr, i32 }
          cleanup
  %3 = extractvalue { ptr, i32 } %2, 0
  %4 = extractvalue { ptr, i32 } %2, 1
  store ptr %3, ptr %0, align 8
  %5 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %4, ptr %5, align 8
  br label %bb3

bb1:                                              ; preds = %start
; call core::ptr::drop_in_place<alloc::rc::Weak<0004_avl_minvalue_emit::Node,&alloc::alloc::Global>>
  call void @"_ZN4core3ptr99drop_in_place$LT$alloc..rc..Weak$LT$0004_avl_minvalue_emit..Node$C$$RF$alloc..alloc..Global$GT$$GT$17hfa8f4672e68bc4bdE"(ptr align 8 %_weak)
  ret void

terminate:                                        ; preds = %bb3
  %6 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #12
  unreachable

bb4:                                              ; preds = %bb3
  %7 = load ptr, ptr %0, align 8
  %8 = getelementptr inbounds i8, ptr %0, i64 8
  %9 = load i32, ptr %8, align 8
  %10 = insertvalue { ptr, i32 } poison, ptr %7, 0
  %11 = insertvalue { ptr, i32 } %10, i32 %9, 1
  resume { ptr, i32 } %11
}

; <alloc::alloc::Global as core::alloc::Allocator>::deallocate
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h2036a71b595271e8E"(ptr align 1 %self, ptr %ptr, i64 %layout.0, i64 %layout.1) unnamed_addr #0 {
start:
  %_4 = icmp ne i64 %layout.1, 0
  br i1 %_4, label %bb1, label %bb2

bb2:                                              ; preds = %bb1, %start
  ret void

bb1:                                              ; preds = %start
; call __rustc::__rust_dealloc
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr %ptr, i64 %layout.1, i64 %layout.0) #15
  br label %bb2
}

; <alloc::rc::Rc<T,A> as core::clone::Clone>::clone
; Function Attrs: inlinehint nonlazybind uwtable
define ptr @"_ZN65_$LT$alloc..rc..Rc$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hf6a160709458ad38E"(ptr align 8 %self) unnamed_addr #0 {
start:
  %_8 = load ptr, ptr %self, align 8
; call alloc::rc::RcInnerPtr::inc_strong
  call void @_ZN5alloc2rc10RcInnerPtr10inc_strong17h116447749e242858E(ptr align 8 %_8) #10
  %ptr = load ptr, ptr %self, align 8
  %_6 = getelementptr inbounds i8, ptr %self, i64 8
; call <alloc::alloc::Global as core::clone::Clone>::clone
  call void @"_ZN59_$LT$alloc..alloc..Global$u20$as$u20$core..clone..Clone$GT$5clone17h31872c41ebd45f4aE"(ptr align 1 %_6) #10
  ret ptr %ptr
}

; <alloc::rc::Rc<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN68_$LT$alloc..rc..Rc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hcb261583c1ebe238E"(ptr align 8 %self) unnamed_addr #0 {
start:
  %_6 = load ptr, ptr %self, align 8
  %_9 = load i64, ptr %_6, align 8
  %val = sub i64 %_9, 1
  store i64 %val, ptr %_6, align 8
  %_16 = load ptr, ptr %self, align 8
  %_3 = load i64, ptr %_16, align 8
  %_2 = icmp eq i64 %_3, 0
  br i1 %_2, label %bb1, label %bb2

bb2:                                              ; preds = %start
  br label %bb3

bb1:                                              ; preds = %start
; call alloc::rc::Rc<T,A>::drop_slow
  call void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h722d4774d401be28E"(ptr align 8 %self) #16
  br label %bb3

bb3:                                              ; preds = %bb1, %bb2
  ret void
}

; <alloc::rc::Weak<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: nonlazybind uwtable
define void @"_ZN70_$LT$alloc..rc..Weak$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd391860fc6839242E"(ptr align 8 %self) unnamed_addr #2 {
start:
  %0 = alloca [8 x i8], align 8
  %1 = alloca [8 x i8], align 8
  %_3 = alloca [16 x i8], align 8
  %self1 = load ptr, ptr %self, align 8
  %_24 = ptrtoint ptr %self1 to i64
  %_16 = icmp eq i64 %_24, -1
  br i1 %_16, label %bb6, label %bb7

bb7:                                              ; preds = %start
  %self2 = load ptr, ptr %self, align 8
  %_23 = getelementptr inbounds i8, ptr %self2, i64 8
  store ptr %_23, ptr %_3, align 8
  %2 = getelementptr inbounds i8, ptr %_3, i64 8
  store ptr %self2, ptr %2, align 8
  %inner.0 = load ptr, ptr %_3, align 8
  %3 = getelementptr inbounds i8, ptr %_3, i64 8
  %inner.1 = load ptr, ptr %3, align 8
  %_28 = load i64, ptr %inner.0, align 8
  %val = sub i64 %_28, 1
  store i64 %val, ptr %inner.0, align 8
  %_7 = load i64, ptr %inner.0, align 8
  %_6 = icmp eq i64 %_7, 0
  br i1 %_6, label %bb1, label %bb3

bb6:                                              ; preds = %start
  br label %bb5

bb3:                                              ; preds = %bb7
  br label %bb4

bb1:                                              ; preds = %bb7
  %_10 = getelementptr inbounds i8, ptr %self, i64 8
  %self3 = load ptr, ptr %self, align 8
  %self4 = load ptr, ptr %self, align 8
  store i64 40, ptr %1, align 8
  %size = load i64, ptr %1, align 8
  store i64 8, ptr %0, align 8
  %align = load i64, ptr %0, align 8
  br label %bb10

bb4:                                              ; preds = %bb11, %bb3
  br label %bb5

bb10:                                             ; preds = %bb1
; call core::alloc::layout::Layout::from_size_align_unchecked::precondition_check
  call void @_ZN4core5alloc6layout6Layout25from_size_align_unchecked18precondition_check17h3e033a210b73d987E(i64 %size, i64 %align, ptr align 8 @alloc_4ef147767b3985cfd2dd01cd0201791e) #14
  br label %bb11

bb11:                                             ; preds = %bb10
; call <&A as core::alloc::Allocator>::deallocate
  call void @"_ZN48_$LT$$RF$A$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h393eed0d9341ab67E"(ptr align 8 %_10, ptr %self3, i64 %align, i64 %size) #10
  br label %bb4

bb5:                                              ; preds = %bb6, %bb4
  ret void
}

; Function Attrs: nonlazybind uwtable
define ptr @min_value_node(ptr %node) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_3 = alloca [8 x i8], align 8
  %current = alloca [8 x i8], align 8
  store ptr %node, ptr %current, align 8
  br label %bb1

bb1:                                              ; preds = %bb6, %start
  %_3.i = load ptr, ptr %current, align 8
  %_0.i = getelementptr inbounds i8, ptr %_3.i, i64 16
  br label %bb2

bb9:                                              ; preds = %bb7, %cleanup
; invoke core::ptr::drop_in_place<alloc::rc::Rc<0004_avl_minvalue_emit::Node>>
  invoke void @"_ZN4core3ptr70drop_in_place$LT$alloc..rc..Rc$LT$0004_avl_minvalue_emit..Node$GT$$GT$17h2d4ab66051153746E"(ptr align 8 %current) #11
          to label %bb10 unwind label %terminate

cleanup:                                          ; preds = %bb4, %bb2
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  store ptr %2, ptr %0, align 8
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %3, ptr %4, align 8
  br label %bb9

bb2:                                              ; preds = %bb1
; invoke core::option::Option<T>::as_ref
  %5 = invoke align 8 ptr @"_ZN4core6option15Option$LT$T$GT$6as_ref17h0b5f4e3629e1cc4dE"(ptr align 8 %_0.i)
          to label %bb3 unwind label %cleanup

bb3:                                              ; preds = %bb2
  store ptr %5, ptr %_3, align 8
  %6 = load ptr, ptr %_3, align 8
  %7 = ptrtoint ptr %6 to i64
  %8 = icmp eq i64 %7, 0
  %_7 = select i1 %8, i64 0, i64 1
  %9 = trunc nuw i64 %_7 to i1
  br i1 %9, label %bb4, label %bb8

bb4:                                              ; preds = %bb3
  %left = load ptr, ptr %_3, align 8
; invoke <alloc::rc::Rc<T,A> as core::clone::Clone>::clone
  %_9 = invoke ptr @"_ZN65_$LT$alloc..rc..Rc$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hf6a160709458ad38E"(ptr align 8 %left)
          to label %bb5 unwind label %cleanup

bb8:                                              ; preds = %bb3
  %_0 = load ptr, ptr %current, align 8
  ret ptr %_0

bb5:                                              ; preds = %bb4
; invoke core::ptr::drop_in_place<alloc::rc::Rc<0004_avl_minvalue_emit::Node>>
  invoke void @"_ZN4core3ptr70drop_in_place$LT$alloc..rc..Rc$LT$0004_avl_minvalue_emit..Node$GT$$GT$17h2d4ab66051153746E"(ptr align 8 %current)
          to label %bb6 unwind label %cleanup1

bb7:                                              ; preds = %cleanup1
  store ptr %_9, ptr %current, align 8
  br label %bb9

cleanup1:                                         ; preds = %bb5
  %10 = landingpad { ptr, i32 }
          cleanup
  %11 = extractvalue { ptr, i32 } %10, 0
  %12 = extractvalue { ptr, i32 } %10, 1
  store ptr %11, ptr %0, align 8
  %13 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %12, ptr %13, align 8
  br label %bb7

bb6:                                              ; preds = %bb5
  store ptr %_9, ptr %current, align 8
  br label %bb1

bb11:                                             ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb9
  %14 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #12
  unreachable

bb10:                                             ; preds = %bb9
  %15 = load ptr, ptr %0, align 8
  %16 = getelementptr inbounds i8, ptr %0, i64 8
  %17 = load i32, ptr %16, align 8
  %18 = insertvalue { ptr, i32 } poison, ptr %15, 0
  %19 = insertvalue { ptr, i32 } %18, i32 %17, 1
  resume { ptr, i32 } %19
}

; Function Attrs: nounwind nonlazybind uwtable
declare i32 @rust_eh_personality(i32, i32, i64, ptr, ptr) unnamed_addr #5

; core::panicking::panic_in_cleanup
; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() unnamed_addr #6

; core::panicking::panic_nounwind_fmt
; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_ZN4core9panicking18panic_nounwind_fmt17hf349702e3facb1fdE(ptr, ptr, i1 zeroext, ptr align 8) unnamed_addr #7

; core::alloc::layout::Layout::is_size_align_valid
; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17ha4d1e0c08d063b83E(i64, i64) unnamed_addr #2

; core::panicking::panic_cannot_unwind
; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_ZN4core9panicking19panic_cannot_unwind17h9d41c6c1d0e0d4e5E() unnamed_addr #6

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #8

; __rustc::__rust_dealloc
; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr allocptr, i64, i64) unnamed_addr #9

attributes #0 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { cold nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { inlinehint nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { cold noinline noreturn nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #9 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { inlinehint }
attributes #11 = { cold }
attributes #12 = { cold noreturn nounwind }
attributes #13 = { noinline noreturn nounwind }
attributes #14 = { inlinehint nounwind }
attributes #15 = { nounwind }
attributes #16 = { noinline }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.93.1 (01f6ddf75 2026-02-11)"}
