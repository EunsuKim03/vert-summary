; ModuleID = '0004_avl_minvalue_emit.8a2c23209c66af79-cgu.0'
source_filename = "0004_avl_minvalue_emit.8a2c23209c66af79-cgu.0"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; core::ptr::drop_in_place<alloc::rc::Weak<0004_avl_minvalue_emit::Node,&alloc::alloc::Global>>
; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr99drop_in_place$LT$alloc..rc..Weak$LT$0004_avl_minvalue_emit..Node$C$$RF$alloc..alloc..Global$GT$$GT$17hfa8f4672e68bc4bdE"(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %_1) unnamed_addr #0 {
start:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3)
  %self1.i = load ptr, ptr %_1, align 8, !alias.scope !3, !nonnull !6, !noundef !6
  %_16.i = icmp eq ptr %self1.i, inttoptr (i64 -1 to ptr)
  br i1 %_16.i, label %"_ZN70_$LT$alloc..rc..Weak$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd391860fc6839242E.exit", label %bb7.i

bb7.i:                                            ; preds = %start
  %_23.i = getelementptr inbounds nuw i8, ptr %self1.i, i64 8
  %_28.i = load i64, ptr %_23.i, align 8, !noalias !3, !noundef !6
  %val.i = add i64 %_28.i, -1
  store i64 %val.i, ptr %_23.i, align 8, !noalias !3
  %_6.i = icmp eq i64 %val.i, 0
  br i1 %_6.i, label %bb1.i, label %"_ZN70_$LT$alloc..rc..Weak$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd391860fc6839242E.exit"

bb1.i:                                            ; preds = %bb7.i
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self1.i, i64 noundef 40, i64 noundef 8) #9, !noalias !3
  br label %"_ZN70_$LT$alloc..rc..Weak$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd391860fc6839242E.exit"

"_ZN70_$LT$alloc..rc..Weak$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd391860fc6839242E.exit": ; preds = %start, %bb7.i, %bb1.i
  ret void
}

; alloc::rc::Rc<T,A>::drop_slow
; Function Attrs: noinline nonlazybind uwtable
define void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h722d4774d401be28E"(ptr noalias noundef align 8 dereferenceable(8) %self) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_weak = alloca [16 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_weak)
  %_3 = load ptr, ptr %self, align 8, !nonnull !6, !noundef !6
  %_4 = getelementptr inbounds nuw i8, ptr %self, i64 8
  store ptr %_3, ptr %_weak, align 8
  %0 = getelementptr inbounds nuw i8, ptr %_weak, i64 8
  store ptr %_4, ptr %0, align 8
  %_6 = getelementptr inbounds nuw i8, ptr %_3, i64 16
  %1 = load ptr, ptr %_6, align 8, !alias.scope !7, !noundef !6
  %2 = icmp eq ptr %1, null
  br i1 %2, label %bb4.i, label %bb2.i7

bb2.i7:                                           ; preds = %start
  %_9.i23 = load i64, ptr %1, align 8, !noalias !10, !noundef !6
  %val.i24 = add i64 %_9.i23, -1
  store i64 %val.i24, ptr %1, align 8, !noalias !10
  %_2.i27 = icmp eq i64 %val.i24, 0
  br i1 %_2.i27, label %bb1.i28, label %bb4.i

bb1.i28:                                          ; preds = %bb2.i7
; invoke alloc::rc::Rc<T,A>::drop_slow
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h722d4774d401be28E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %_6) #10
          to label %bb4.i unwind label %cleanup.i

cleanup.i:                                        ; preds = %bb1.i28
  %3 = landingpad { ptr, i32 }
          cleanup
  %4 = getelementptr inbounds nuw i8, ptr %_3, i64 24
  %5 = load ptr, ptr %4, align 8, !alias.scope !13, !noundef !6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %cleanup.body, label %bb2.i3

bb2.i3:                                           ; preds = %cleanup.i
  %_9.i14 = load i64, ptr %5, align 8, !noalias !16, !noundef !6
  %val.i15 = add i64 %_9.i14, -1
  store i64 %val.i15, ptr %5, align 8, !noalias !16
  %_2.i18 = icmp eq i64 %val.i15, 0
  br i1 %_2.i18, label %bb1.i19, label %cleanup.body

bb1.i19:                                          ; preds = %bb2.i3
; invoke alloc::rc::Rc<T,A>::drop_slow
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h722d4774d401be28E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %4) #10
          to label %cleanup.body unwind label %terminate.i

bb4.i:                                            ; preds = %start, %bb2.i7, %bb1.i28
  %7 = getelementptr inbounds nuw i8, ptr %_3, i64 24
  %8 = load ptr, ptr %7, align 8, !alias.scope !19, !noundef !6
  %9 = icmp eq ptr %8, null
  br i1 %9, label %bb1, label %bb2.i

bb2.i:                                            ; preds = %bb4.i
  %_9.i = load i64, ptr %8, align 8, !noalias !22, !noundef !6
  %val.i = add i64 %_9.i, -1
  store i64 %val.i, ptr %8, align 8, !noalias !22
  %_2.i = icmp eq i64 %val.i, 0
  br i1 %_2.i, label %bb1.i11, label %bb1

bb1.i11:                                          ; preds = %bb2.i
; invoke alloc::rc::Rc<T,A>::drop_slow
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h722d4774d401be28E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %7) #10
          to label %bb1 unwind label %cleanup

terminate.i:                                      ; preds = %bb1.i19
  %10 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #11
  unreachable

cleanup:                                          ; preds = %bb1.i11
  %11 = landingpad { ptr, i32 }
          cleanup
  br label %cleanup.body

cleanup.body:                                     ; preds = %bb1.i19, %bb2.i3, %cleanup.i, %cleanup
  %eh.lpad-body = phi { ptr, i32 } [ %11, %cleanup ], [ %3, %cleanup.i ], [ %3, %bb2.i3 ], [ %3, %bb1.i19 ]
; call core::ptr::drop_in_place<alloc::rc::Weak<0004_avl_minvalue_emit::Node,&alloc::alloc::Global>>
  call fastcc void @"_ZN4core3ptr99drop_in_place$LT$alloc..rc..Weak$LT$0004_avl_minvalue_emit..Node$C$$RF$alloc..alloc..Global$GT$$GT$17hfa8f4672e68bc4bdE"(ptr noalias noundef align 8 dereferenceable(16) %_weak) #12
  resume { ptr, i32 } %eh.lpad-body

bb1:                                              ; preds = %bb1.i11, %bb2.i, %bb4.i
  %_16.i.i = icmp eq ptr %_3, inttoptr (i64 -1 to ptr)
  br i1 %_16.i.i, label %"_ZN4core3ptr99drop_in_place$LT$alloc..rc..Weak$LT$0004_avl_minvalue_emit..Node$C$$RF$alloc..alloc..Global$GT$$GT$17hfa8f4672e68bc4bdE.exit", label %bb7.i.i

bb7.i.i:                                          ; preds = %bb1
  %_23.i.i = getelementptr inbounds nuw i8, ptr %_3, i64 8
  %_28.i.i = load i64, ptr %_23.i.i, align 8, !noalias !25, !noundef !6
  %val.i.i = add i64 %_28.i.i, -1
  store i64 %val.i.i, ptr %_23.i.i, align 8, !noalias !25
  %_6.i.i = icmp eq i64 %val.i.i, 0
  br i1 %_6.i.i, label %bb1.i.i, label %"_ZN4core3ptr99drop_in_place$LT$alloc..rc..Weak$LT$0004_avl_minvalue_emit..Node$C$$RF$alloc..alloc..Global$GT$$GT$17hfa8f4672e68bc4bdE.exit"

bb1.i.i:                                          ; preds = %bb7.i.i
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_3, i64 noundef 40, i64 noundef 8) #9, !noalias !25
  br label %"_ZN4core3ptr99drop_in_place$LT$alloc..rc..Weak$LT$0004_avl_minvalue_emit..Node$C$$RF$alloc..alloc..Global$GT$$GT$17hfa8f4672e68bc4bdE.exit"

"_ZN4core3ptr99drop_in_place$LT$alloc..rc..Weak$LT$0004_avl_minvalue_emit..Node$C$$RF$alloc..alloc..Global$GT$$GT$17hfa8f4672e68bc4bdE.exit": ; preds = %bb1, %bb7.i.i, %bb1.i.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_weak)
  ret void
}

; <alloc::rc::Weak<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: nounwind nonlazybind uwtable
define void @"_ZN70_$LT$alloc..rc..Weak$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd391860fc6839242E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %self) unnamed_addr #0 {
start:
  %self1 = load ptr, ptr %self, align 8, !nonnull !6, !noundef !6
  %_16 = icmp eq ptr %self1, inttoptr (i64 -1 to ptr)
  br i1 %_16, label %bb5, label %bb7

bb7:                                              ; preds = %start
  %_23 = getelementptr inbounds nuw i8, ptr %self1, i64 8
  %_28 = load i64, ptr %_23, align 8, !noundef !6
  %val = add i64 %_28, -1
  store i64 %val, ptr %_23, align 8
  %_6 = icmp eq i64 %val, 0
  br i1 %_6, label %bb1, label %bb5

bb1:                                              ; preds = %bb7
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self1, i64 noundef 40, i64 noundef 8) #9
  br label %bb5

bb5:                                              ; preds = %start, %bb1, %bb7
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull ptr @min_value_node(ptr noundef nonnull %node) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %current = alloca [8 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %current)
  store ptr %node, ptr %current, align 8
  %_0.i13 = getelementptr inbounds nuw i8, ptr %node, i64 16
  %0 = load ptr, ptr %_0.i13, align 8, !alias.scope !30, !noundef !6
  %.not.i14 = icmp eq ptr %0, null
  br i1 %.not.i14, label %bb8, label %bb4

bb1.i.i:                                          ; preds = %cleanup1
; invoke alloc::rc::Rc<T,A>::drop_slow
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h722d4774d401be28E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %current) #10
          to label %bb10 unwind label %terminate

bb4:                                              ; preds = %start, %"_ZN4core3ptr70drop_in_place$LT$alloc..rc..Rc$LT$0004_avl_minvalue_emit..Node$GT$$GT$17h2d4ab66051153746E.exit9"
  %_0.i15 = phi ptr [ %_0.i, %"_ZN4core3ptr70drop_in_place$LT$alloc..rc..Rc$LT$0004_avl_minvalue_emit..Node$GT$$GT$17h2d4ab66051153746E.exit9" ], [ %_0.i13, %start ]
  call void @llvm.experimental.noalias.scope.decl(metadata !33)
  %_8.i = load ptr, ptr %_0.i15, align 8, !alias.scope !33, !nonnull !6, !noundef !6
  %_0.i.i.i = load i64, ptr %_8.i, align 8, !noalias !33, !noundef !6
  %cond.i.i = icmp ne i64 %_0.i.i.i, 0
  call void @llvm.assume(i1 %cond.i.i)
  %strong1.i.i = add i64 %_0.i.i.i, 1
  store i64 %strong1.i.i, ptr %_8.i, align 8, !noalias !33
  %b.i.i = icmp eq i64 %strong1.i.i, 0
  br i1 %b.i.i, label %bb5.i.i, label %bb5, !prof !36

bb5.i.i:                                          ; preds = %bb4
  call void @llvm.trap()
  unreachable

bb8:                                              ; preds = %"_ZN4core3ptr70drop_in_place$LT$alloc..rc..Rc$LT$0004_avl_minvalue_emit..Node$GT$$GT$17h2d4ab66051153746E.exit9", %start
  %storemerge.lcssa = phi ptr [ %node, %start ], [ %_8.i, %"_ZN4core3ptr70drop_in_place$LT$alloc..rc..Rc$LT$0004_avl_minvalue_emit..Node$GT$$GT$17h2d4ab66051153746E.exit9" ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %current)
  ret ptr %storemerge.lcssa

bb5:                                              ; preds = %bb4
  call void @llvm.experimental.noalias.scope.decl(metadata !37)
  call void @llvm.experimental.noalias.scope.decl(metadata !40)
  %_6.i.i3 = load ptr, ptr %current, align 8, !alias.scope !43, !nonnull !6, !noundef !6
  %_9.i.i4 = load i64, ptr %_6.i.i3, align 8, !noalias !43, !noundef !6
  %val.i.i5 = add i64 %_9.i.i4, -1
  store i64 %val.i.i5, ptr %_6.i.i3, align 8, !noalias !43
  %_2.i.i6 = icmp eq i64 %val.i.i5, 0
  br i1 %_2.i.i6, label %bb1.i.i7, label %"_ZN4core3ptr70drop_in_place$LT$alloc..rc..Rc$LT$0004_avl_minvalue_emit..Node$GT$$GT$17h2d4ab66051153746E.exit9"

bb1.i.i7:                                         ; preds = %bb5
; invoke alloc::rc::Rc<T,A>::drop_slow
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h722d4774d401be28E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %current) #10
          to label %"_ZN4core3ptr70drop_in_place$LT$alloc..rc..Rc$LT$0004_avl_minvalue_emit..Node$GT$$GT$17h2d4ab66051153746E.exit9" unwind label %cleanup1

"_ZN4core3ptr70drop_in_place$LT$alloc..rc..Rc$LT$0004_avl_minvalue_emit..Node$GT$$GT$17h2d4ab66051153746E.exit9": ; preds = %bb1.i.i7, %bb5
  store ptr %_8.i, ptr %current, align 8
  %_0.i = getelementptr inbounds nuw i8, ptr %_8.i, i64 16
  %1 = load ptr, ptr %_0.i, align 8, !alias.scope !30, !noundef !6
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb8, label %bb4

cleanup1:                                         ; preds = %bb1.i.i7
  %2 = landingpad { ptr, i32 }
          cleanup
  store ptr %_8.i, ptr %current, align 8
  %_9.i.i = load i64, ptr %_8.i, align 8, !noalias !44, !noundef !6
  %val.i.i = add i64 %_9.i.i, -1
  store i64 %val.i.i, ptr %_8.i, align 8, !noalias !44
  %_2.i.i = icmp eq i64 %val.i.i, 0
  br i1 %_2.i.i, label %bb1.i.i, label %bb10

terminate:                                        ; preds = %bb1.i.i
  %3 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #11
  unreachable

bb10:                                             ; preds = %cleanup1, %bb1.i.i
  resume { ptr, i32 } %2
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #3

; core::panicking::panic_in_cleanup
; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #6

; __rustc::__rust_dealloc
; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr allocptr noundef, i64 noundef, i64 noundef) unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #8

attributes #0 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #7 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #9 = { nounwind }
attributes #10 = { noinline }
attributes #11 = { cold noreturn nounwind }
attributes #12 = { cold }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.93.1 (01f6ddf75 2026-02-11)"}
!3 = !{!4}
!4 = distinct !{!4, !5, !"_ZN70_$LT$alloc..rc..Weak$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd391860fc6839242E: %self"}
!5 = distinct !{!5, !"_ZN70_$LT$alloc..rc..Weak$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd391860fc6839242E"}
!6 = !{}
!7 = !{!8}
!8 = distinct !{!8, !9, !"_ZN4core3ptr98drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$0004_avl_minvalue_emit..Node$GT$$GT$$GT$17h28b04abe71695122E: %_1"}
!9 = distinct !{!9, !"_ZN4core3ptr98drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$0004_avl_minvalue_emit..Node$GT$$GT$$GT$17h28b04abe71695122E"}
!10 = !{!11}
!11 = distinct !{!11, !12, !"_ZN68_$LT$alloc..rc..Rc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hcb261583c1ebe238E: %self"}
!12 = distinct !{!12, !"_ZN68_$LT$alloc..rc..Rc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hcb261583c1ebe238E"}
!13 = !{!14}
!14 = distinct !{!14, !15, !"_ZN4core3ptr98drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$0004_avl_minvalue_emit..Node$GT$$GT$$GT$17h28b04abe71695122E: %_1"}
!15 = distinct !{!15, !"_ZN4core3ptr98drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$0004_avl_minvalue_emit..Node$GT$$GT$$GT$17h28b04abe71695122E"}
!16 = !{!17}
!17 = distinct !{!17, !18, !"_ZN68_$LT$alloc..rc..Rc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hcb261583c1ebe238E: %self"}
!18 = distinct !{!18, !"_ZN68_$LT$alloc..rc..Rc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hcb261583c1ebe238E"}
!19 = !{!20}
!20 = distinct !{!20, !21, !"_ZN4core3ptr98drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$0004_avl_minvalue_emit..Node$GT$$GT$$GT$17h28b04abe71695122E: %_1"}
!21 = distinct !{!21, !"_ZN4core3ptr98drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$0004_avl_minvalue_emit..Node$GT$$GT$$GT$17h28b04abe71695122E"}
!22 = !{!23}
!23 = distinct !{!23, !24, !"_ZN68_$LT$alloc..rc..Rc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hcb261583c1ebe238E: %self"}
!24 = distinct !{!24, !"_ZN68_$LT$alloc..rc..Rc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hcb261583c1ebe238E"}
!25 = !{!26, !28}
!26 = distinct !{!26, !27, !"_ZN70_$LT$alloc..rc..Weak$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd391860fc6839242E: %self"}
!27 = distinct !{!27, !"_ZN70_$LT$alloc..rc..Weak$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd391860fc6839242E"}
!28 = distinct !{!28, !29, !"_ZN4core3ptr99drop_in_place$LT$alloc..rc..Weak$LT$0004_avl_minvalue_emit..Node$C$$RF$alloc..alloc..Global$GT$$GT$17hfa8f4672e68bc4bdE: %_1"}
!29 = distinct !{!29, !"_ZN4core3ptr99drop_in_place$LT$alloc..rc..Weak$LT$0004_avl_minvalue_emit..Node$C$$RF$alloc..alloc..Global$GT$$GT$17hfa8f4672e68bc4bdE"}
!30 = !{!31}
!31 = distinct !{!31, !32, !"_ZN4core6option15Option$LT$T$GT$6as_ref17h0b5f4e3629e1cc4dE: %self"}
!32 = distinct !{!32, !"_ZN4core6option15Option$LT$T$GT$6as_ref17h0b5f4e3629e1cc4dE"}
!33 = !{!34}
!34 = distinct !{!34, !35, !"_ZN65_$LT$alloc..rc..Rc$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hf6a160709458ad38E: %self"}
!35 = distinct !{!35, !"_ZN65_$LT$alloc..rc..Rc$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hf6a160709458ad38E"}
!36 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!37 = !{!38}
!38 = distinct !{!38, !39, !"_ZN4core3ptr70drop_in_place$LT$alloc..rc..Rc$LT$0004_avl_minvalue_emit..Node$GT$$GT$17h2d4ab66051153746E: %_1"}
!39 = distinct !{!39, !"_ZN4core3ptr70drop_in_place$LT$alloc..rc..Rc$LT$0004_avl_minvalue_emit..Node$GT$$GT$17h2d4ab66051153746E"}
!40 = !{!41}
!41 = distinct !{!41, !42, !"_ZN68_$LT$alloc..rc..Rc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hcb261583c1ebe238E: %self"}
!42 = distinct !{!42, !"_ZN68_$LT$alloc..rc..Rc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hcb261583c1ebe238E"}
!43 = !{!41, !38}
!44 = !{!45, !47}
!45 = distinct !{!45, !46, !"_ZN68_$LT$alloc..rc..Rc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hcb261583c1ebe238E: %self"}
!46 = distinct !{!46, !"_ZN68_$LT$alloc..rc..Rc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hcb261583c1ebe238E"}
!47 = distinct !{!47, !48, !"_ZN4core3ptr70drop_in_place$LT$alloc..rc..Rc$LT$0004_avl_minvalue_emit..Node$GT$$GT$17h2d4ab66051153746E: %_1"}
!48 = distinct !{!48, !"_ZN4core3ptr70drop_in_place$LT$alloc..rc..Rc$LT$0004_avl_minvalue_emit..Node$GT$$GT$17h2d4ab66051153746E"}
