; ModuleID = 'LEXICOGRAPHICAL_CONCATENATION_SUBSTRINGS_STRING_emit.aa11a84f957bb06-cgu.0'
source_filename = "LEXICOGRAPHICAL_CONCATENATION_SUBSTRINGS_STRING_emit.aa11a84f957bb06-cgu.0"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"core::mem::maybe_uninit::MaybeUninit<[u8; 8]>" = type { [8 x i8] }
%"alloc::string::String" = type { %"alloc::vec::Vec<u8>" }
%"alloc::vec::Vec<u8>" = type { %"alloc::raw_vec::RawVec<u8>", i64 }
%"alloc::raw_vec::RawVec<u8>" = type { %"alloc::raw_vec::RawVecInner", %"core::marker::PhantomData<u8>" }
%"alloc::raw_vec::RawVecInner" = type { i64, ptr, %"alloc::alloc::Global" }
%"alloc::alloc::Global" = type {}
%"core::marker::PhantomData<u8>" = type {}

@alloc_d1084648e479974e70c9329824bf76f9 = private unnamed_addr constant [9 x i8] c"mid > len", align 1
@alloc_e8e5fd9f509afcb950667480b3e3e42a = private unnamed_addr constant [126 x i8] c"/root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/sort/stable/quicksort.rs\00", align 1
@alloc_58d434a1e795f965ef82c8e9c5db822a = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_e8e5fd9f509afcb950667480b3e3e42a, [16 x i8] c"}\00\00\00\00\00\00\00J\00\00\00\1F\00\00\00" }>, align 8
@alloc_0766b232215672ee1bd2195fdb153938 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_e8e5fd9f509afcb950667480b3e3e42a, [16 x i8] c"}\00\00\00\00\00\00\00D\00\00\00\17\00\00\00" }>, align 8
@alloc_b70df69cce52d7d76923f104d33422fb = private unnamed_addr constant [149 x i8] c"/root/es/vert/vert/rust_funcs/cpp_transcoder/LEXICOGRAPHICAL_CONCATENATION_SUBSTRINGS_STRING/LEXICOGRAPHICAL_CONCATENATION_SUBSTRINGS_STRING_emit.rs\00", align 1
@alloc_4cce44244d9639ad41a74bd16b875a27 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_b70df69cce52d7d76923f104d33422fb, [16 x i8] c"\94\00\00\00\00\00\00\00#\00\00\00\1A\00\00\00" }>, align 8
@alloc_04774e36529a2f0ec64e4c14b859aaab = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_b70df69cce52d7d76923f104d33422fb, [16 x i8] c"\94\00\00\00\00\00\00\00\1C\00\00\00\17\00\00\00" }>, align 8

; core::ptr::swap_nonoverlapping_bytes::swap_nonoverlapping_chunks
; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17h4ae9e6ef425335d4E(ptr noundef captures(none) %x, ptr noundef captures(none) %y, i64 noundef range(i64 1, 0) %chunks) unnamed_addr #0 {
start:
  %xtraiter = and i64 %chunks, 1
  %0 = icmp eq i64 %chunks, 1
  br i1 %0, label %bb4.unr-lcssa, label %start.new

start.new:                                        ; preds = %start
  %unroll_iter = and i64 %chunks, -2
  br label %bb3

bb4.unr-lcssa:                                    ; preds = %bb3, %start
  %iter.sroa.0.02.unr = phi i64 [ 0, %start ], [ %_18.1, %bb3 ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb4, label %bb3.epil

bb3.epil:                                         ; preds = %bb4.unr-lcssa
  %_11.epil = getelementptr inbounds nuw %"core::mem::maybe_uninit::MaybeUninit<[u8; 8]>", ptr %x, i64 %iter.sroa.0.02.unr
  %_13.epil = getelementptr inbounds nuw %"core::mem::maybe_uninit::MaybeUninit<[u8; 8]>", ptr %y, i64 %iter.sroa.0.02.unr
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6)
  %_3.sroa.0.0.copyload.i.epil = load i64, ptr %_11.epil, align 1, !alias.scope !3, !noalias !6
  %_4.sroa.0.0.copyload.i.epil = load i64, ptr %_13.epil, align 1, !alias.scope !6, !noalias !3
  store i64 %_4.sroa.0.0.copyload.i.epil, ptr %_11.epil, align 1, !alias.scope !3, !noalias !6
  store i64 %_3.sroa.0.0.copyload.i.epil, ptr %_13.epil, align 1, !alias.scope !6, !noalias !3
  br label %bb4

bb4:                                              ; preds = %bb4.unr-lcssa, %bb3.epil
  ret void

bb3:                                              ; preds = %bb3, %start.new
  %iter.sroa.0.02 = phi i64 [ 0, %start.new ], [ %_18.1, %bb3 ]
  %niter = phi i64 [ 0, %start.new ], [ %niter.next.1, %bb3 ]
  %_18 = or disjoint i64 %iter.sroa.0.02, 1
  %_11 = getelementptr inbounds nuw %"core::mem::maybe_uninit::MaybeUninit<[u8; 8]>", ptr %x, i64 %iter.sroa.0.02
  %_13 = getelementptr inbounds nuw %"core::mem::maybe_uninit::MaybeUninit<[u8; 8]>", ptr %y, i64 %iter.sroa.0.02
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6)
  %_3.sroa.0.0.copyload.i = load i64, ptr %_11, align 1, !alias.scope !3, !noalias !6
  %_4.sroa.0.0.copyload.i = load i64, ptr %_13, align 1, !alias.scope !6, !noalias !3
  store i64 %_4.sroa.0.0.copyload.i, ptr %_11, align 1, !alias.scope !3, !noalias !6
  store i64 %_3.sroa.0.0.copyload.i, ptr %_13, align 1, !alias.scope !6, !noalias !3
  %_18.1 = add nuw i64 %iter.sroa.0.02, 2
  %_11.1 = getelementptr inbounds nuw %"core::mem::maybe_uninit::MaybeUninit<[u8; 8]>", ptr %x, i64 %_18
  %_13.1 = getelementptr inbounds nuw %"core::mem::maybe_uninit::MaybeUninit<[u8; 8]>", ptr %y, i64 %_18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10)
  %_3.sroa.0.0.copyload.i.1 = load i64, ptr %_11.1, align 1, !alias.scope !8, !noalias !10
  %_4.sroa.0.0.copyload.i.1 = load i64, ptr %_13.1, align 1, !alias.scope !10, !noalias !8
  store i64 %_4.sroa.0.0.copyload.i.1, ptr %_11.1, align 1, !alias.scope !8, !noalias !10
  store i64 %_3.sroa.0.0.copyload.i.1, ptr %_13.1, align 1, !alias.scope !10, !noalias !8
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %bb4.unr-lcssa, label %bb3
}

; core::ptr::drop_in_place<alloc::string::String>
; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hde14ea688b292269E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %_1) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %_1)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hed4fea2f99745addE.exit" unwind label %cleanup.i

cleanup.i:                                        ; preds = %start
  %0 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %_1)
          to label %bb1.i unwind label %terminate.i

terminate.i:                                      ; preds = %cleanup.i
  %1 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #31
  unreachable

bb1.i:                                            ; preds = %cleanup.i
  resume { ptr, i32 } %0

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hed4fea2f99745addE.exit": ; preds = %start
; call <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %_1)
  ret void
}

; core::ptr::drop_in_place<alloc::vec::Vec<alloc::string::String>>
; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17he3d388727106a310E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %_1) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3a1990cca6413e04E"(ptr noalias noundef align 8 dereferenceable(24) %_1)
          to label %bb4 unwind label %cleanup

cleanup:                                          ; preds = %start
  %0 = landingpad { ptr, i32 }
          cleanup
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %_1, i64 noundef 8, i64 noundef 24)
          to label %bb1 unwind label %terminate

bb4:                                              ; preds = %start
; call alloc::raw_vec::RawVecInner<A>::deallocate
  tail call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %_1, i64 noundef 8, i64 noundef 24)
  ret void

terminate:                                        ; preds = %cleanup
  %1 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #31
  unreachable

bb1:                                              ; preds = %cleanup
  resume { ptr, i32 } %0
}

; core::slice::sort::shared::pivot::median3_rec
; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite) uwtable
define noundef nonnull ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h0a600e94c9b56343E(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %n, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #2 {
start:
  %3 = and i64 %n, 2305843009213693944
  %_6.not = icmp eq i64 %3, 0
  br i1 %_6.not, label %bb6, label %bb1

bb1:                                              ; preds = %start
  %n84 = lshr i64 %n, 3
  %count = shl nuw nsw i64 %n84, 2
  %_10 = getelementptr inbounds nuw i32, ptr %0, i64 %count
  %count1 = mul nuw i64 %n84, 7
  %_13 = getelementptr inbounds nuw i32, ptr %0, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %4 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h0a600e94c9b56343E(ptr noundef %0, ptr noundef %_10, ptr noundef %_13, i64 noundef %n84, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  %_16 = getelementptr inbounds nuw i32, ptr %1, i64 %count
  %_18 = getelementptr inbounds nuw i32, ptr %1, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %5 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h0a600e94c9b56343E(ptr noundef %1, ptr noundef %_16, ptr noundef %_18, i64 noundef %n84, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  %_20 = getelementptr inbounds nuw i32, ptr %2, i64 %count
  %_22 = getelementptr inbounds nuw i32, ptr %2, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %6 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h0a600e94c9b56343E(ptr noundef %2, ptr noundef %_20, ptr noundef %_22, i64 noundef %n84, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  br label %bb6

bb6:                                              ; preds = %start, %bb1
  %c.sroa.0.0 = phi ptr [ %6, %bb1 ], [ %2, %start ]
  %b.sroa.0.0 = phi ptr [ %5, %bb1 ], [ %1, %start ]
  %a.sroa.0.0 = phi ptr [ %4, %bb1 ], [ %0, %start ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17), !noalias !20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23), !noalias !20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25), !noalias !20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28), !noalias !20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30), !noalias !20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33), !noalias !20
  %_3.i.i.i.i = load i32, ptr %a.sroa.0.0, align 4, !alias.scope !35, !noalias !36, !noundef !37
  %_4.i.i.i.i = load i32, ptr %b.sroa.0.0, align 4, !alias.scope !38, !noalias !39, !noundef !37
  %_0.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %_4.i.i.i.i6 = load i32, ptr %c.sroa.0.0, align 4, !alias.scope !40, !noalias !49, !noundef !37
  %_0.i7 = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i6
  %7 = xor i1 %_0.i, %_0.i7
  %_0.i10 = icmp slt i32 %_4.i.i.i.i, %_4.i.i.i.i6
  %_12.i = xor i1 %_0.i, %_0.i10
  %c.b.i = select i1 %_12.i, ptr %c.sroa.0.0, ptr %b.sroa.0.0
  %_0.sroa.0.0.i = select i1 %7, ptr %a.sroa.0.0, ptr %c.b.i
  ret ptr %_0.sroa.0.0.i
}

; core::slice::sort::shared::pivot::median3_rec
; Function Attrs: nofree nounwind nonlazybind memory(read, inaccessiblemem: readwrite) uwtable
define noundef nonnull ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h99e7361c9dd75cc6E(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %n, ptr noalias noundef nonnull align 1 %is_less) unnamed_addr #3 {
start:
  %3 = and i64 %n, 2305843009213693944
  %_6.not = icmp eq i64 %3, 0
  br i1 %_6.not, label %bb6, label %bb1

bb1:                                              ; preds = %start
  %n84 = lshr i64 %n, 3
  %count = shl nuw nsw i64 %n84, 2
  %_10 = getelementptr inbounds nuw %"alloc::string::String", ptr %0, i64 %count
  %count1 = mul nuw i64 %n84, 7
  %_13 = getelementptr inbounds nuw %"alloc::string::String", ptr %0, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %4 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h99e7361c9dd75cc6E(ptr noundef %0, ptr noundef %_10, ptr noundef %_13, i64 noundef %n84, ptr noalias noundef nonnull align 1 %is_less)
  %_16 = getelementptr inbounds nuw %"alloc::string::String", ptr %1, i64 %count
  %_18 = getelementptr inbounds nuw %"alloc::string::String", ptr %1, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %5 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h99e7361c9dd75cc6E(ptr noundef %1, ptr noundef %_16, ptr noundef %_18, i64 noundef %n84, ptr noalias noundef nonnull align 1 %is_less)
  %_20 = getelementptr inbounds nuw %"alloc::string::String", ptr %2, i64 %count
  %_22 = getelementptr inbounds nuw %"alloc::string::String", ptr %2, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %6 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h99e7361c9dd75cc6E(ptr noundef %2, ptr noundef %_20, ptr noundef %_22, i64 noundef %n84, ptr noalias noundef nonnull align 1 %is_less)
  br label %bb6

bb6:                                              ; preds = %start, %bb1
  %c.sroa.0.0 = phi ptr [ %6, %bb1 ], [ %2, %start ]
  %b.sroa.0.0 = phi ptr [ %5, %bb1 ], [ %1, %start ]
  %a.sroa.0.0 = phi ptr [ %4, %bb1 ], [ %0, %start ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59), !noalias !62
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65), !noalias !62
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67), !noalias !62
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70), !noalias !62
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72), !noalias !62
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75), !noalias !62
  %7 = getelementptr inbounds nuw i8, ptr %a.sroa.0.0, i64 8
  %_7.i.i.i.i = load ptr, ptr %7, align 8, !alias.scope !77, !noalias !78, !nonnull !37, !noundef !37
  %8 = getelementptr inbounds nuw i8, ptr %a.sroa.0.0, i64 16
  %len1.i.i.i.i = load i64, ptr %8, align 8, !alias.scope !77, !noalias !78, !noundef !37
  %9 = getelementptr inbounds nuw i8, ptr %b.sroa.0.0, i64 8
  %_14.i.i.i.i = load ptr, ptr %9, align 8, !alias.scope !79, !noalias !80, !nonnull !37, !noundef !37
  %10 = getelementptr inbounds nuw i8, ptr %b.sroa.0.0, i64 16
  %11 = load i64, ptr %10, align 8, !alias.scope !79, !noalias !80, !noundef !37
  %spec.store.select.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %len1.i.i.i.i, i64 range(i64 0, -9223372036854775808) %11)
  %12 = tail call i32 @memcmp(ptr nonnull readonly align 1 %_7.i.i.i.i, ptr nonnull readonly align 1 %_14.i.i.i.i, i64 %spec.store.select.i.i.i.i.i.i), !alias.scope !81, !noalias !88
  %13 = sext i32 %12 to i64
  %_15.i.i.i.i.i.i = icmp eq i32 %12, 0
  %diff.i.i.i.i.i.i = sub nsw i64 %len1.i.i.i.i, %11
  %spec.select.i.i.i.i.i.i = select i1 %_15.i.i.i.i.i.i, i64 %diff.i.i.i.i.i.i, i64 %13
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98)
  %14 = getelementptr inbounds nuw i8, ptr %c.sroa.0.0, i64 8
  %_14.i.i.i.i7 = load ptr, ptr %14, align 8, !alias.scope !101, !noalias !102, !nonnull !37, !noundef !37
  %15 = getelementptr inbounds nuw i8, ptr %c.sroa.0.0, i64 16
  %16 = load i64, ptr %15, align 8, !alias.scope !101, !noalias !102, !noundef !37
  %spec.store.select.i.i.i.i.i.i8 = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %len1.i.i.i.i, i64 range(i64 0, -9223372036854775808) %16)
  %17 = tail call i32 @memcmp(ptr nonnull readonly align 1 %_7.i.i.i.i, ptr nonnull readonly align 1 %_14.i.i.i.i7, i64 %spec.store.select.i.i.i.i.i.i8), !alias.scope !107, !noalias !114
  %18 = sext i32 %17 to i64
  %_15.i.i.i.i.i.i9 = icmp eq i32 %17, 0
  %diff.i.i.i.i.i.i10 = sub nsw i64 %len1.i.i.i.i, %16
  %spec.select.i.i.i.i.i.i11 = select i1 %_15.i.i.i.i.i.i9, i64 %diff.i.i.i.i.i.i10, i64 %18
  %19 = xor i64 %spec.select.i.i.i.i.i.i11, %spec.select.i.i.i.i.i.i
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %_ZN4core5slice4sort6shared5pivot7median317h22c231397570fc7bE.exit, label %bb3.i

bb3.i:                                            ; preds = %bb6
  %spec.store.select.i.i.i.i.i.i15 = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %11, i64 range(i64 0, -9223372036854775808) %16)
  %21 = tail call i32 @memcmp(ptr nonnull readonly align 1 %_14.i.i.i.i, ptr nonnull readonly align 1 %_14.i.i.i.i7, i64 %spec.store.select.i.i.i.i.i.i15), !alias.scope !115, !noalias !122
  %22 = sext i32 %21 to i64
  %_15.i.i.i.i.i.i16 = icmp eq i32 %21, 0
  %diff.i.i.i.i.i.i17 = sub nsw i64 %11, %16
  %spec.select.i.i.i.i.i.i18 = select i1 %_15.i.i.i.i.i.i16, i64 %diff.i.i.i.i.i.i17, i64 %22
  %23 = xor i64 %spec.select.i.i.i.i.i.i18, %spec.select.i.i.i.i.i.i
  %_12.i = icmp slt i64 %23, 0
  %c.b.i = select i1 %_12.i, ptr %c.sroa.0.0, ptr %b.sroa.0.0
  br label %_ZN4core5slice4sort6shared5pivot7median317h22c231397570fc7bE.exit

_ZN4core5slice4sort6shared5pivot7median317h22c231397570fc7bE.exit: ; preds = %bb6, %bb3.i
  %_0.sroa.0.0.i = phi ptr [ %a.sroa.0.0, %bb6 ], [ %c.b.i, %bb3.i ]
  ret ptr %_0.sroa.0.0.i
}

; core::slice::sort::shared::smallsort::insert_tail
; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core5slice4sort6shared9smallsort11insert_tail17h8d444b17020be90bE(ptr noundef readnone captures(address) %begin, ptr noundef captures(address) %tail, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %0 = getelementptr inbounds i8, ptr %tail, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !135)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !138)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !140)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !143)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !145)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !153)
  %_3.i.i.i.i = load i32, ptr %tail, align 4, !alias.scope !155, !noalias !156, !noundef !37
  %_4.i.i.i.i = load i32, ptr %0, align 4, !alias.scope !156, !noalias !155, !noundef !37
  %_0.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  br i1 %_0.i, label %bb4, label %bb12

bb12:                                             ; preds = %start, %bb10
  ret void

bb4:                                              ; preds = %start, %bb6
  %gap_guard.sroa.5.0 = phi ptr [ %sift.sroa.0.0, %bb6 ], [ %tail, %start ]
  %sift.sroa.0.0 = phi ptr [ %2, %bb6 ], [ %0, %start ]
  %1 = load i32, ptr %sift.sroa.0.0, align 4
  store i32 %1, ptr %gap_guard.sroa.5.0, align 4
  %_18 = icmp eq ptr %sift.sroa.0.0, %begin
  br i1 %_18, label %bb10, label %bb6

bb6:                                              ; preds = %bb4
  %2 = getelementptr inbounds i8, ptr %sift.sroa.0.0, i64 -4
  %_4.i.i.i.i2 = load i32, ptr %2, align 4, !alias.scope !157, !noalias !166, !noundef !37
  %_0.i3 = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i2
  br i1 %_0.i3, label %bb4, label %bb10

bb10:                                             ; preds = %bb6, %bb4
  store i32 %_3.i.i.i.i, ptr %sift.sroa.0.0, align 4, !noalias !171
  br label %bb12
}

; core::slice::sort::shared::smallsort::insert_tail
; Function Attrs: nofree norecurse nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core5slice4sort6shared9smallsort11insert_tail17haddbce5dcdcd8aa9E(ptr noundef readnone captures(address) %begin, ptr noundef captures(address) %tail, ptr noalias noundef nonnull readnone align 1 captures(none) %is_less) unnamed_addr #4 personality ptr @rust_eh_personality {
start:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !176)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !179)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !181)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !184)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !189)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !191)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !194)
  %0 = getelementptr inbounds nuw i8, ptr %tail, i64 8
  %_7.i.i.i.i = load ptr, ptr %0, align 8, !alias.scope !196, !noalias !197, !nonnull !37, !noundef !37
  %1 = getelementptr inbounds nuw i8, ptr %tail, i64 16
  %len1.i.i.i.i = load i64, ptr %1, align 8, !alias.scope !196, !noalias !197, !noundef !37
  %2 = getelementptr inbounds i8, ptr %tail, i64 -16
  %_14.i.i.i.i = load ptr, ptr %2, align 8, !alias.scope !197, !noalias !196, !nonnull !37, !noundef !37
  %3 = getelementptr inbounds i8, ptr %tail, i64 -8
  %4 = load i64, ptr %3, align 8, !alias.scope !197, !noalias !196, !noundef !37
  %spec.store.select.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %len1.i.i.i.i, i64 range(i64 0, -9223372036854775808) %4)
  %5 = tail call i32 @memcmp(ptr nonnull readonly align 1 %_7.i.i.i.i, ptr nonnull readonly align 1 %_14.i.i.i.i, i64 %spec.store.select.i.i.i.i.i.i), !alias.scope !198, !noalias !205
  %6 = sext i32 %5 to i64
  %_15.i.i.i.i.i.i = icmp eq i32 %5, 0
  %diff.i.i.i.i.i.i = sub nsw i64 %len1.i.i.i.i, %4
  %spec.select.i.i.i.i.i.i = select i1 %_15.i.i.i.i.i.i, i64 %diff.i.i.i.i.i.i, i64 %6
  %7 = icmp slt i64 %spec.select.i.i.i.i.i.i, 0
  br i1 %7, label %bb2, label %bb12

bb2:                                              ; preds = %start
  %value.sroa.0.0.copyload = load i64, ptr %tail, align 8
  %value.sroa.4.0.tail.sroa_idx = getelementptr inbounds nuw i8, ptr %tail, i64 8
  %value.sroa.4.0.copyload = load ptr, ptr %value.sroa.4.0.tail.sroa_idx, align 8
  %value.sroa.5.0.tail.sroa_idx = getelementptr inbounds nuw i8, ptr %tail, i64 16
  %value.sroa.5.0.copyload = load i64, ptr %value.sroa.5.0.tail.sroa_idx, align 8
  br label %bb4

bb12:                                             ; preds = %start, %bb10
  ret void

bb4:                                              ; preds = %bb6, %bb2
  %gap_guard.sroa.5.0 = phi ptr [ %tail, %bb2 ], [ %sift.sroa.0.0, %bb6 ]
  %sift.sroa.0.0 = getelementptr inbounds i8, ptr %gap_guard.sroa.5.0, i64 -24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %gap_guard.sroa.5.0, ptr noundef nonnull align 8 dereferenceable(24) %sift.sroa.0.0, i64 24, i1 false)
  %_18 = icmp eq ptr %sift.sroa.0.0, %begin
  br i1 %_18, label %bb10, label %bb6

bb6:                                              ; preds = %bb4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !206)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !209)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !212)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !215)
  %8 = getelementptr inbounds i8, ptr %gap_guard.sroa.5.0, i64 -40
  %_14.i.i.i.i3 = load ptr, ptr %8, align 8, !alias.scope !218, !noalias !219, !nonnull !37, !noundef !37
  %9 = getelementptr inbounds i8, ptr %gap_guard.sroa.5.0, i64 -32
  %10 = load i64, ptr %9, align 8, !alias.scope !218, !noalias !219, !noundef !37
  %spec.store.select.i.i.i.i.i.i4 = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %value.sroa.5.0.copyload, i64 range(i64 0, -9223372036854775808) %10)
  %11 = tail call i32 @memcmp(ptr nonnull readonly align 1 %value.sroa.4.0.copyload, ptr nonnull readonly align 1 %_14.i.i.i.i3, i64 %spec.store.select.i.i.i.i.i.i4), !alias.scope !224, !noalias !231
  %12 = sext i32 %11 to i64
  %_15.i.i.i.i.i.i5 = icmp eq i32 %11, 0
  %diff.i.i.i.i.i.i6 = sub nsw i64 %value.sroa.5.0.copyload, %10
  %spec.select.i.i.i.i.i.i7 = select i1 %_15.i.i.i.i.i.i5, i64 %diff.i.i.i.i.i.i6, i64 %12
  %13 = icmp slt i64 %spec.select.i.i.i.i.i.i7, 0
  br i1 %13, label %bb4, label %bb10

bb10:                                             ; preds = %bb6, %bb4
  store i64 %value.sroa.0.0.copyload, ptr %sift.sroa.0.0, align 8, !noalias !232
  %tmp.sroa.4.0.sift.sroa.0.0.lcssa.sroa_idx = getelementptr inbounds i8, ptr %gap_guard.sroa.5.0, i64 -16
  store ptr %value.sroa.4.0.copyload, ptr %tmp.sroa.4.0.sift.sroa.0.0.lcssa.sroa_idx, align 8, !noalias !232
  %tmp.sroa.5.0.sift.sroa.0.0.lcssa.sroa_idx = getelementptr inbounds i8, ptr %gap_guard.sroa.5.0, i64 -8
  store i64 %value.sroa.5.0.copyload, ptr %tmp.sroa.5.0.sift.sroa.0.0.lcssa.sroa_idx, align 8, !noalias !232
  br label %bb12
}

; core::slice::sort::shared::smallsort::sort4_stable
; Function Attrs: mustprogress nofree norecurse nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h8dbcb2c0d021ad35E(ptr noundef readonly captures(none) %v_base, ptr noundef writeonly captures(none) initializes((0, 96)) %dst, ptr noalias nonnull readnone align 1 captures(none) %is_less) unnamed_addr #5 personality ptr @rust_eh_personality {
start:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !237)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !240)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !245)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !247)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !250)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !252)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !255)
  %0 = getelementptr inbounds nuw i8, ptr %v_base, i64 32
  %_7.i.i.i.i = load ptr, ptr %0, align 8, !alias.scope !257, !noalias !258, !nonnull !37, !noundef !37
  %1 = getelementptr inbounds nuw i8, ptr %v_base, i64 40
  %len1.i.i.i.i = load i64, ptr %1, align 8, !alias.scope !257, !noalias !258, !noundef !37
  %2 = getelementptr inbounds nuw i8, ptr %v_base, i64 8
  %_14.i.i.i.i = load ptr, ptr %2, align 8, !alias.scope !258, !noalias !257, !nonnull !37, !noundef !37
  %3 = getelementptr inbounds nuw i8, ptr %v_base, i64 16
  %4 = load i64, ptr %3, align 8, !alias.scope !258, !noalias !257, !noundef !37
  %spec.store.select.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %len1.i.i.i.i, i64 range(i64 0, -9223372036854775808) %4)
  %5 = tail call i32 @memcmp(ptr nonnull readonly align 1 %_7.i.i.i.i, ptr nonnull readonly align 1 %_14.i.i.i.i, i64 %spec.store.select.i.i.i.i.i.i), !alias.scope !259, !noalias !266
  %6 = sext i32 %5 to i64
  %_15.i.i.i.i.i.i = icmp eq i32 %5, 0
  %diff.i.i.i.i.i.i = sub nsw i64 %len1.i.i.i.i, %4
  %spec.select.i.i.i.i.i.i = select i1 %_15.i.i.i.i.i.i, i64 %diff.i.i.i.i.i.i, i64 %6
  %7 = icmp sgt i64 %spec.select.i.i.i.i.i.i, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !267)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !270)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !272)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !275)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !277)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !280)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !282)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !285)
  %8 = getelementptr inbounds nuw i8, ptr %v_base, i64 80
  %_7.i.i.i.i7 = load ptr, ptr %8, align 8, !alias.scope !287, !noalias !288, !nonnull !37, !noundef !37
  %9 = getelementptr inbounds nuw i8, ptr %v_base, i64 88
  %len1.i.i.i.i8 = load i64, ptr %9, align 8, !alias.scope !287, !noalias !288, !noundef !37
  %10 = getelementptr inbounds nuw i8, ptr %v_base, i64 56
  %_14.i.i.i.i9 = load ptr, ptr %10, align 8, !alias.scope !288, !noalias !287, !nonnull !37, !noundef !37
  %11 = getelementptr inbounds nuw i8, ptr %v_base, i64 64
  %12 = load i64, ptr %11, align 8, !alias.scope !288, !noalias !287, !noundef !37
  %spec.store.select.i.i.i.i.i.i10 = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %len1.i.i.i.i8, i64 range(i64 0, -9223372036854775808) %12)
  %13 = tail call i32 @memcmp(ptr nonnull readonly align 1 %_7.i.i.i.i7, ptr nonnull readonly align 1 %_14.i.i.i.i9, i64 %spec.store.select.i.i.i.i.i.i10), !alias.scope !289, !noalias !296
  %14 = sext i32 %13 to i64
  %_15.i.i.i.i.i.i11 = icmp eq i32 %13, 0
  %diff.i.i.i.i.i.i12 = sub nsw i64 %len1.i.i.i.i8, %12
  %spec.select.i.i.i.i.i.i13 = select i1 %_15.i.i.i.i.i.i11, i64 %diff.i.i.i.i.i.i12, i64 %14
  %15 = icmp slt i64 %spec.select.i.i.i.i.i.i13, 0
  %spec.select.i.i.i.i.i.i.lobit = lshr i64 %spec.select.i.i.i.i.i.i, 63
  %a = getelementptr inbounds nuw %"alloc::string::String", ptr %v_base, i64 %spec.select.i.i.i.i.i.i.lobit
  %count2 = zext i1 %7 to i64
  %b = getelementptr inbounds nuw %"alloc::string::String", ptr %v_base, i64 %count2
  %count3 = select i1 %15, i64 3, i64 2
  %c = getelementptr inbounds nuw %"alloc::string::String", ptr %v_base, i64 %count3
  %count4 = select i1 %15, i64 2, i64 3
  %d = getelementptr inbounds nuw %"alloc::string::String", ptr %v_base, i64 %count4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !297)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !300)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !302)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !305)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !307)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !310)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !312)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !315)
  %16 = getelementptr inbounds nuw i8, ptr %c, i64 8
  %_7.i.i.i.i14 = load ptr, ptr %16, align 8, !alias.scope !317, !noalias !318, !nonnull !37, !noundef !37
  %17 = getelementptr inbounds nuw i8, ptr %c, i64 16
  %len1.i.i.i.i15 = load i64, ptr %17, align 8, !alias.scope !317, !noalias !318, !noundef !37
  %18 = getelementptr inbounds nuw i8, ptr %a, i64 8
  %_14.i.i.i.i16 = load ptr, ptr %18, align 8, !alias.scope !318, !noalias !317, !nonnull !37, !noundef !37
  %19 = getelementptr inbounds nuw i8, ptr %a, i64 16
  %20 = load i64, ptr %19, align 8, !alias.scope !318, !noalias !317, !noundef !37
  %spec.store.select.i.i.i.i.i.i17 = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %len1.i.i.i.i15, i64 range(i64 0, -9223372036854775808) %20)
  %21 = tail call i32 @memcmp(ptr nonnull readonly align 1 %_7.i.i.i.i14, ptr nonnull readonly align 1 %_14.i.i.i.i16, i64 %spec.store.select.i.i.i.i.i.i17), !alias.scope !319, !noalias !326
  %22 = sext i32 %21 to i64
  %_15.i.i.i.i.i.i18 = icmp eq i32 %21, 0
  %diff.i.i.i.i.i.i19 = sub nsw i64 %len1.i.i.i.i15, %20
  %spec.select.i.i.i.i.i.i20 = select i1 %_15.i.i.i.i.i.i18, i64 %diff.i.i.i.i.i.i19, i64 %22
  %23 = icmp slt i64 %spec.select.i.i.i.i.i.i20, 0
  tail call void @llvm.experimental.noalias.scope.decl(metadata !327)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !330)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !332)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !335)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !337)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !340)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !342)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !345)
  %24 = getelementptr inbounds nuw i8, ptr %d, i64 8
  %_7.i.i.i.i21 = load ptr, ptr %24, align 8, !alias.scope !347, !noalias !348, !nonnull !37, !noundef !37
  %25 = getelementptr inbounds nuw i8, ptr %d, i64 16
  %len1.i.i.i.i22 = load i64, ptr %25, align 8, !alias.scope !347, !noalias !348, !noundef !37
  %26 = getelementptr inbounds nuw i8, ptr %b, i64 8
  %_14.i.i.i.i23 = load ptr, ptr %26, align 8, !alias.scope !348, !noalias !347, !nonnull !37, !noundef !37
  %27 = getelementptr inbounds nuw i8, ptr %b, i64 16
  %28 = load i64, ptr %27, align 8, !alias.scope !348, !noalias !347, !noundef !37
  %spec.store.select.i.i.i.i.i.i24 = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %len1.i.i.i.i22, i64 range(i64 0, -9223372036854775808) %28)
  %29 = tail call i32 @memcmp(ptr nonnull readonly align 1 %_7.i.i.i.i21, ptr nonnull readonly align 1 %_14.i.i.i.i23, i64 %spec.store.select.i.i.i.i.i.i24), !alias.scope !349, !noalias !356
  %30 = sext i32 %29 to i64
  %_15.i.i.i.i.i.i25 = icmp eq i32 %29, 0
  %diff.i.i.i.i.i.i26 = sub nsw i64 %len1.i.i.i.i22, %28
  %spec.select.i.i.i.i.i.i27 = select i1 %_15.i.i.i.i.i.i25, i64 %diff.i.i.i.i.i.i26, i64 %30
  %31 = icmp slt i64 %spec.select.i.i.i.i.i.i27, 0
  %32 = select i1 %23, ptr %c, ptr %a, !unpredictable !37
  %33 = select i1 %31, ptr %b, ptr %d, !unpredictable !37
  %34 = select i1 %31, ptr %c, ptr %b, !unpredictable !37
  %35 = select i1 %23, ptr %a, ptr %34, !unpredictable !37
  %36 = select i1 %23, ptr %b, ptr %c, !unpredictable !37
  %37 = select i1 %31, ptr %d, ptr %36, !unpredictable !37
  tail call void @llvm.experimental.noalias.scope.decl(metadata !357)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !360)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !362)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !365)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !367)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !370)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !372)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !375)
  %38 = getelementptr inbounds nuw i8, ptr %37, i64 8
  %_7.i.i.i.i28 = load ptr, ptr %38, align 8, !alias.scope !377, !noalias !378, !nonnull !37, !noundef !37
  %39 = getelementptr inbounds nuw i8, ptr %37, i64 16
  %len1.i.i.i.i29 = load i64, ptr %39, align 8, !alias.scope !377, !noalias !378, !noundef !37
  %40 = getelementptr inbounds nuw i8, ptr %35, i64 8
  %_14.i.i.i.i30 = load ptr, ptr %40, align 8, !alias.scope !378, !noalias !377, !nonnull !37, !noundef !37
  %41 = getelementptr inbounds nuw i8, ptr %35, i64 16
  %42 = load i64, ptr %41, align 8, !alias.scope !378, !noalias !377, !noundef !37
  %spec.store.select.i.i.i.i.i.i31 = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %len1.i.i.i.i29, i64 range(i64 0, -9223372036854775808) %42)
  %43 = tail call i32 @memcmp(ptr nonnull readonly align 1 %_7.i.i.i.i28, ptr nonnull readonly align 1 %_14.i.i.i.i30, i64 %spec.store.select.i.i.i.i.i.i31), !alias.scope !379, !noalias !386
  %44 = sext i32 %43 to i64
  %_15.i.i.i.i.i.i32 = icmp eq i32 %43, 0
  %diff.i.i.i.i.i.i33 = sub nsw i64 %len1.i.i.i.i29, %42
  %spec.select.i.i.i.i.i.i34 = select i1 %_15.i.i.i.i.i.i32, i64 %diff.i.i.i.i.i.i33, i64 %44
  %45 = icmp slt i64 %spec.select.i.i.i.i.i.i34, 0
  %46 = select i1 %45, ptr %37, ptr %35, !unpredictable !37
  %47 = select i1 %45, ptr %35, ptr %37, !unpredictable !37
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %dst, ptr noundef nonnull align 8 dereferenceable(24) %32, i64 24, i1 false)
  %dst5 = getelementptr inbounds nuw i8, ptr %dst, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %dst5, ptr noundef nonnull align 8 dereferenceable(24) %46, i64 24, i1 false)
  %dst6 = getelementptr inbounds nuw i8, ptr %dst, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %dst6, ptr noundef nonnull align 8 dereferenceable(24) %47, i64 24, i1 false)
  %48 = getelementptr inbounds nuw i8, ptr %dst, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %48, ptr noundef nonnull align 8 dereferenceable(24) %33, i64 24, i1 false)
  ret void
}

; core::slice::sort::shared::smallsort::sort4_stable
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17hdf74f2b460780f44E(ptr noundef readonly captures(none) %v_base, ptr noundef writeonly captures(none) initializes((0, 16)) %dst, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #6 personality ptr @rust_eh_personality {
start:
  %_7 = getelementptr inbounds nuw i8, ptr %v_base, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !387)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !390)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !392)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !395)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !397)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !400)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !402)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !405)
  %_3.i.i.i.i = load i32, ptr %_7, align 4, !alias.scope !407, !noalias !408, !noundef !37
  %_4.i.i.i.i = load i32, ptr %v_base, align 4, !alias.scope !408, !noalias !407, !noundef !37
  %_0.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %_12 = getelementptr inbounds nuw i8, ptr %v_base, i64 12
  %_14 = getelementptr inbounds nuw i8, ptr %v_base, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !409)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !412)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !414)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !417)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !419)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !422)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !424)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !427)
  %_3.i.i.i.i7 = load i32, ptr %_12, align 4, !alias.scope !429, !noalias !430, !noundef !37
  %_4.i.i.i.i8 = load i32, ptr %_14, align 4, !alias.scope !430, !noalias !429, !noundef !37
  %_0.i9 = icmp slt i32 %_3.i.i.i.i7, %_4.i.i.i.i8
  %count = zext i1 %_0.i to i64
  %a = getelementptr inbounds nuw i32, ptr %v_base, i64 %count
  %_19 = xor i1 %_0.i, true
  %count2 = zext i1 %_19 to i64
  %b = getelementptr inbounds nuw i32, ptr %v_base, i64 %count2
  %count3 = select i1 %_0.i9, i64 3, i64 2
  %c = getelementptr inbounds nuw i32, ptr %v_base, i64 %count3
  %count4 = select i1 %_0.i9, i64 2, i64 3
  %d = getelementptr inbounds nuw i32, ptr %v_base, i64 %count4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !431)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !434)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !436)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !439)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !441)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !444)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !446)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !449)
  %_3.i.i.i.i10 = load i32, ptr %c, align 4, !alias.scope !451, !noalias !452, !noundef !37
  %_4.i.i.i.i11 = load i32, ptr %a, align 4, !alias.scope !452, !noalias !451, !noundef !37
  %_0.i12 = icmp slt i32 %_3.i.i.i.i10, %_4.i.i.i.i11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !453)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !456)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !458)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !461)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !463)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !466)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !468)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !471)
  %_3.i.i.i.i13 = load i32, ptr %d, align 4, !alias.scope !473, !noalias !474, !noundef !37
  %_4.i.i.i.i14 = load i32, ptr %b, align 4, !alias.scope !474, !noalias !473, !noundef !37
  %_0.i15 = icmp slt i32 %_3.i.i.i.i13, %_4.i.i.i.i14
  %0 = select i1 %_0.i12, ptr %c, ptr %a, !unpredictable !37
  %1 = select i1 %_0.i15, ptr %c, ptr %b, !unpredictable !37
  %2 = select i1 %_0.i12, ptr %a, ptr %1, !unpredictable !37
  %3 = select i1 %_0.i12, ptr %b, ptr %c, !unpredictable !37
  %4 = select i1 %_0.i15, ptr %d, ptr %3, !unpredictable !37
  tail call void @llvm.experimental.noalias.scope.decl(metadata !475)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !478)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !480)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !483)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !485)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !488)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !490)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !493)
  %_3.i.i.i.i16 = load i32, ptr %4, align 4, !alias.scope !495, !noalias !496, !noundef !37
  %_4.i.i.i.i17 = load i32, ptr %2, align 4, !alias.scope !496, !noalias !495, !noundef !37
  %_0.i18 = icmp slt i32 %_3.i.i.i.i16, %_4.i.i.i.i17
  %5 = load i32, ptr %0, align 4
  store i32 %5, ptr %dst, align 4
  %dst5 = getelementptr inbounds nuw i8, ptr %dst, i64 4
  %.val = load i32, ptr %4, align 4
  %.val19 = load i32, ptr %2, align 4
  %6 = select i1 %_0.i18, i32 %.val, i32 %.val19
  store i32 %6, ptr %dst5, align 4
  %dst6 = getelementptr inbounds nuw i8, ptr %dst, i64 8
  %.val20 = load i32, ptr %2, align 4
  %.val21 = load i32, ptr %4, align 4
  %7 = select i1 %_0.i18, i32 %.val20, i32 %.val21
  store i32 %7, ptr %dst6, align 4
  %8 = getelementptr inbounds nuw i8, ptr %dst, i64 12
  %b.val = load i32, ptr %b, align 4
  %d.val = load i32, ptr %d, align 4
  %9 = select i1 %_0.i15, i32 %b.val, i32 %d.val
  store i32 %9, ptr %8, align 4
  ret void
}

; core::slice::sort::shared::smallsort::sort8_stable
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17hed0c5b8627756ff6E(ptr noundef readonly captures(none) %v_base, ptr noundef writeonly captures(none) initializes((0, 32)) %dst, ptr noundef captures(address) initializes((0, 32)) %scratch_base, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_7.i = getelementptr inbounds nuw i8, ptr %v_base, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !497)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !500)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !502)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !505)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !507)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !510)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !512)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !515)
  %_3.i.i.i.i.i = load i32, ptr %_7.i, align 4, !alias.scope !517, !noalias !518, !noundef !37
  %_4.i.i.i.i.i = load i32, ptr %v_base, align 4, !alias.scope !518, !noalias !517, !noundef !37
  %_0.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %_12.i = getelementptr inbounds nuw i8, ptr %v_base, i64 12
  %_14.i = getelementptr inbounds nuw i8, ptr %v_base, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !519)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !522)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !524)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !527)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !529)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !532)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !534)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !537)
  %_3.i.i.i.i7.i = load i32, ptr %_12.i, align 4, !alias.scope !539, !noalias !540, !noundef !37
  %_4.i.i.i.i8.i = load i32, ptr %_14.i, align 4, !alias.scope !540, !noalias !539, !noundef !37
  %_0.i9.i = icmp slt i32 %_3.i.i.i.i7.i, %_4.i.i.i.i8.i
  %count.i = zext i1 %_0.i.i to i64
  %a.i = getelementptr inbounds nuw i32, ptr %v_base, i64 %count.i
  %_19.i = xor i1 %_0.i.i, true
  %count2.i = zext i1 %_19.i to i64
  %b.i = getelementptr inbounds nuw i32, ptr %v_base, i64 %count2.i
  %count3.i = select i1 %_0.i9.i, i64 3, i64 2
  %c.i = getelementptr inbounds nuw i32, ptr %v_base, i64 %count3.i
  %count4.i = select i1 %_0.i9.i, i64 2, i64 3
  %d.i = getelementptr inbounds nuw i32, ptr %v_base, i64 %count4.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !541)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !544)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !546)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !549)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !551)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !554)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !556)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !559)
  %_3.i.i.i.i10.i = load i32, ptr %c.i, align 4, !alias.scope !561, !noalias !562, !noundef !37
  %_4.i.i.i.i11.i = load i32, ptr %a.i, align 4, !alias.scope !562, !noalias !561, !noundef !37
  %_0.i12.i = icmp slt i32 %_3.i.i.i.i10.i, %_4.i.i.i.i11.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !563)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !566)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !568)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !571)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !573)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !576)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !578)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !581)
  %_3.i.i.i.i13.i = load i32, ptr %d.i, align 4, !alias.scope !583, !noalias !584, !noundef !37
  %_4.i.i.i.i14.i = load i32, ptr %b.i, align 4, !alias.scope !584, !noalias !583, !noundef !37
  %_0.i15.i = icmp slt i32 %_3.i.i.i.i13.i, %_4.i.i.i.i14.i
  %0 = select i1 %_0.i12.i, ptr %c.i, ptr %a.i, !unpredictable !37
  %1 = select i1 %_0.i15.i, ptr %c.i, ptr %b.i, !unpredictable !37
  %2 = select i1 %_0.i12.i, ptr %a.i, ptr %1, !unpredictable !37
  %3 = select i1 %_0.i12.i, ptr %b.i, ptr %c.i, !unpredictable !37
  %4 = select i1 %_0.i15.i, ptr %d.i, ptr %3, !unpredictable !37
  tail call void @llvm.experimental.noalias.scope.decl(metadata !585)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !588)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !590)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !593)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !595)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !598)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !600)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !603)
  %_3.i.i.i.i16.i = load i32, ptr %4, align 4, !alias.scope !605, !noalias !606, !noundef !37
  %_4.i.i.i.i17.i = load i32, ptr %2, align 4, !alias.scope !606, !noalias !605, !noundef !37
  %_0.i18.i = icmp slt i32 %_3.i.i.i.i16.i, %_4.i.i.i.i17.i
  %5 = load i32, ptr %0, align 4
  store i32 %5, ptr %scratch_base, align 4
  %dst5.i = getelementptr inbounds nuw i8, ptr %scratch_base, i64 4
  %.val.i = load i32, ptr %4, align 4
  %.val19.i = load i32, ptr %2, align 4
  %6 = select i1 %_0.i18.i, i32 %.val.i, i32 %.val19.i
  store i32 %6, ptr %dst5.i, align 4
  %dst6.i = getelementptr inbounds nuw i8, ptr %scratch_base, i64 8
  %.val20.i = load i32, ptr %2, align 4
  %.val21.i = load i32, ptr %4, align 4
  %7 = select i1 %_0.i18.i, i32 %.val20.i, i32 %.val21.i
  store i32 %7, ptr %dst6.i, align 4
  %8 = getelementptr inbounds nuw i8, ptr %scratch_base, i64 12
  %b.val.i = load i32, ptr %b.i, align 4
  %d.val.i = load i32, ptr %d.i, align 4
  %9 = select i1 %_0.i15.i, i32 %b.val.i, i32 %d.val.i
  store i32 %9, ptr %8, align 4
  %_9 = getelementptr inbounds nuw i8, ptr %v_base, i64 16
  %_10 = getelementptr i8, ptr %scratch_base, i64 16
  %_7.i1 = getelementptr inbounds nuw i8, ptr %v_base, i64 20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !607)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !610)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !612)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !615)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !617)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !620)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !622)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !625)
  %_3.i.i.i.i.i2 = load i32, ptr %_7.i1, align 4, !alias.scope !627, !noalias !628, !noundef !37
  %_4.i.i.i.i.i3 = load i32, ptr %_9, align 4, !alias.scope !628, !noalias !627, !noundef !37
  %_0.i.i4 = icmp slt i32 %_3.i.i.i.i.i2, %_4.i.i.i.i.i3
  %_12.i5 = getelementptr inbounds nuw i8, ptr %v_base, i64 28
  %_14.i6 = getelementptr inbounds nuw i8, ptr %v_base, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !629)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !632)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !634)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !637)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !639)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !642)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !644)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !647)
  %_3.i.i.i.i7.i7 = load i32, ptr %_12.i5, align 4, !alias.scope !649, !noalias !650, !noundef !37
  %_4.i.i.i.i8.i8 = load i32, ptr %_14.i6, align 4, !alias.scope !650, !noalias !649, !noundef !37
  %_0.i9.i9 = icmp slt i32 %_3.i.i.i.i7.i7, %_4.i.i.i.i8.i8
  %count.i10 = zext i1 %_0.i.i4 to i64
  %a.i11 = getelementptr inbounds nuw i32, ptr %_9, i64 %count.i10
  %_19.i12 = xor i1 %_0.i.i4, true
  %count2.i13 = zext i1 %_19.i12 to i64
  %b.i14 = getelementptr inbounds nuw i32, ptr %_9, i64 %count2.i13
  %count3.i15 = select i1 %_0.i9.i9, i64 3, i64 2
  %c.i16 = getelementptr inbounds nuw i32, ptr %_9, i64 %count3.i15
  %count4.i17 = select i1 %_0.i9.i9, i64 2, i64 3
  %d.i18 = getelementptr inbounds nuw i32, ptr %_9, i64 %count4.i17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !651)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !654)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !656)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !659)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !661)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !664)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !666)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !669)
  %_3.i.i.i.i10.i19 = load i32, ptr %c.i16, align 4, !alias.scope !671, !noalias !672, !noundef !37
  %_4.i.i.i.i11.i20 = load i32, ptr %a.i11, align 4, !alias.scope !672, !noalias !671, !noundef !37
  %_0.i12.i21 = icmp slt i32 %_3.i.i.i.i10.i19, %_4.i.i.i.i11.i20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !673)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !676)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !678)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !681)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !683)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !686)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !688)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !691)
  %_3.i.i.i.i13.i22 = load i32, ptr %d.i18, align 4, !alias.scope !693, !noalias !694, !noundef !37
  %_4.i.i.i.i14.i23 = load i32, ptr %b.i14, align 4, !alias.scope !694, !noalias !693, !noundef !37
  %_0.i15.i24 = icmp slt i32 %_3.i.i.i.i13.i22, %_4.i.i.i.i14.i23
  %10 = select i1 %_0.i12.i21, ptr %c.i16, ptr %a.i11, !unpredictable !37
  %11 = select i1 %_0.i15.i24, ptr %c.i16, ptr %b.i14, !unpredictable !37
  %12 = select i1 %_0.i12.i21, ptr %a.i11, ptr %11, !unpredictable !37
  %13 = select i1 %_0.i12.i21, ptr %b.i14, ptr %c.i16, !unpredictable !37
  %14 = select i1 %_0.i15.i24, ptr %d.i18, ptr %13, !unpredictable !37
  tail call void @llvm.experimental.noalias.scope.decl(metadata !695)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !698)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !700)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !703)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !705)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !708)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !710)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !713)
  %_3.i.i.i.i16.i25 = load i32, ptr %14, align 4, !alias.scope !715, !noalias !716, !noundef !37
  %_4.i.i.i.i17.i26 = load i32, ptr %12, align 4, !alias.scope !716, !noalias !715, !noundef !37
  %_0.i18.i27 = icmp slt i32 %_3.i.i.i.i16.i25, %_4.i.i.i.i17.i26
  %15 = load i32, ptr %10, align 4
  store i32 %15, ptr %_10, align 4
  %dst5.i28 = getelementptr i8, ptr %scratch_base, i64 20
  %.val.i29 = load i32, ptr %14, align 4
  %.val19.i30 = load i32, ptr %12, align 4
  %16 = select i1 %_0.i18.i27, i32 %.val.i29, i32 %.val19.i30
  store i32 %16, ptr %dst5.i28, align 4
  %dst6.i31 = getelementptr i8, ptr %scratch_base, i64 24
  %.val20.i32 = load i32, ptr %12, align 4
  %.val21.i33 = load i32, ptr %14, align 4
  %17 = select i1 %_0.i18.i27, i32 %.val20.i32, i32 %.val21.i33
  store i32 %17, ptr %dst6.i31, align 4
  %18 = getelementptr i8, ptr %scratch_base, i64 28
  %b.val.i34 = load i32, ptr %b.i14, align 4
  %d.val.i35 = load i32, ptr %d.i18, align 4
  %19 = select i1 %_0.i15.i24, i32 %b.val.i34, i32 %d.val.i35
  store i32 %19, ptr %18, align 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !717)
  %20 = getelementptr i8, ptr %scratch_base, i64 12
  %21 = getelementptr inbounds nuw i8, ptr %scratch_base, i64 28
  %22 = getelementptr inbounds nuw i8, ptr %dst, i64 28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !720)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !723)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !725), !noalias !728
  tail call void @llvm.experimental.noalias.scope.decl(metadata !731), !noalias !728
  tail call void @llvm.experimental.noalias.scope.decl(metadata !733), !noalias !728
  tail call void @llvm.experimental.noalias.scope.decl(metadata !736), !noalias !728
  tail call void @llvm.experimental.noalias.scope.decl(metadata !738), !noalias !728
  tail call void @llvm.experimental.noalias.scope.decl(metadata !741), !noalias !728
  %_3.i.i.i.i.i36 = load i32, ptr %_10, align 4, !alias.scope !743, !noalias !744, !noundef !37
  %_4.i.i.i.i.i37 = load i32, ptr %scratch_base, align 4, !alias.scope !745, !noalias !746, !noundef !37
  %_0.i.i38 = icmp slt i32 %_3.i.i.i.i.i36, %_4.i.i.i.i.i37
  %is_l.i18.i = xor i1 %_0.i.i38, true
  %23 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i36, i32 %_4.i.i.i.i.i37)
  store i32 %23, ptr %dst, align 4, !noalias !747
  %count.i.i = zext i1 %_0.i.i38 to i64
  %_12.i.i = getelementptr inbounds nuw i32, ptr %_10, i64 %count.i.i
  %count2.i.i = zext i1 %is_l.i18.i to i64
  %_14.i.i = getelementptr inbounds nuw i32, ptr %scratch_base, i64 %count2.i.i
  %_16.i.i = getelementptr inbounds nuw i8, ptr %dst, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !749)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !752)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !754), !noalias !757
  tail call void @llvm.experimental.noalias.scope.decl(metadata !760), !noalias !757
  tail call void @llvm.experimental.noalias.scope.decl(metadata !762), !noalias !757
  tail call void @llvm.experimental.noalias.scope.decl(metadata !765), !noalias !757
  tail call void @llvm.experimental.noalias.scope.decl(metadata !767), !noalias !757
  tail call void @llvm.experimental.noalias.scope.decl(metadata !770), !noalias !757
  %_3.i.i.i.i19.i = load i32, ptr %21, align 4, !alias.scope !772, !noalias !773, !noundef !37
  %_4.i.i.i.i20.i = load i32, ptr %20, align 4, !alias.scope !774, !noalias !775, !noundef !37
  %_0.i21.i = icmp slt i32 %_3.i.i.i.i19.i, %_4.i.i.i.i20.i
  %is_l.i.i = xor i1 %_0.i21.i, true
  %24 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19.i, i32 %_4.i.i.i.i20.i)
  store i32 %24, ptr %22, align 4, !noalias !776
  %count.neg.i.i = sext i1 %is_l.i.i to i64
  %25 = getelementptr i32, ptr %21, i64 %count.neg.i.i
  %count3.neg.i.i = sext i1 %_0.i21.i to i64
  %26 = getelementptr i32, ptr %20, i64 %count3.neg.i.i
  %27 = getelementptr inbounds nuw i8, ptr %dst, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !778)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !780)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !782), !noalias !728
  tail call void @llvm.experimental.noalias.scope.decl(metadata !784), !noalias !728
  tail call void @llvm.experimental.noalias.scope.decl(metadata !786), !noalias !728
  tail call void @llvm.experimental.noalias.scope.decl(metadata !788), !noalias !728
  tail call void @llvm.experimental.noalias.scope.decl(metadata !790), !noalias !728
  tail call void @llvm.experimental.noalias.scope.decl(metadata !792), !noalias !728
  %_3.i.i.i.i.i36.1 = load i32, ptr %_12.i.i, align 4, !alias.scope !794, !noalias !795, !noundef !37
  %_4.i.i.i.i.i37.1 = load i32, ptr %_14.i.i, align 4, !alias.scope !796, !noalias !797, !noundef !37
  %_0.i.i38.1 = icmp slt i32 %_3.i.i.i.i.i36.1, %_4.i.i.i.i.i37.1
  %is_l.i18.i.1 = xor i1 %_0.i.i38.1, true
  %28 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i36.1, i32 %_4.i.i.i.i.i37.1)
  store i32 %28, ptr %_16.i.i, align 4, !noalias !747
  %count.i.i.1 = zext i1 %_0.i.i38.1 to i64
  %_12.i.i.1 = getelementptr inbounds nuw i32, ptr %_12.i.i, i64 %count.i.i.1
  %count2.i.i.1 = zext i1 %is_l.i18.i.1 to i64
  %_14.i.i.1 = getelementptr inbounds nuw i32, ptr %_14.i.i, i64 %count2.i.i.1
  %_16.i.i.1 = getelementptr inbounds nuw i8, ptr %dst, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !798)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !800)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !802), !noalias !757
  tail call void @llvm.experimental.noalias.scope.decl(metadata !804), !noalias !757
  tail call void @llvm.experimental.noalias.scope.decl(metadata !806), !noalias !757
  tail call void @llvm.experimental.noalias.scope.decl(metadata !808), !noalias !757
  tail call void @llvm.experimental.noalias.scope.decl(metadata !810), !noalias !757
  tail call void @llvm.experimental.noalias.scope.decl(metadata !812), !noalias !757
  %_3.i.i.i.i19.i.1 = load i32, ptr %25, align 4, !alias.scope !814, !noalias !815, !noundef !37
  %_4.i.i.i.i20.i.1 = load i32, ptr %26, align 4, !alias.scope !816, !noalias !817, !noundef !37
  %_0.i21.i.1 = icmp slt i32 %_3.i.i.i.i19.i.1, %_4.i.i.i.i20.i.1
  %is_l.i.i.1 = xor i1 %_0.i21.i.1, true
  %29 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19.i.1, i32 %_4.i.i.i.i20.i.1)
  store i32 %29, ptr %27, align 4, !noalias !776
  %count.neg.i.i.1 = sext i1 %is_l.i.i.1 to i64
  %30 = getelementptr i32, ptr %25, i64 %count.neg.i.i.1
  %count3.neg.i.i.1 = sext i1 %_0.i21.i.1 to i64
  %31 = getelementptr i32, ptr %26, i64 %count3.neg.i.i.1
  %32 = getelementptr inbounds nuw i8, ptr %dst, i64 20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !818)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !820)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !822), !noalias !728
  tail call void @llvm.experimental.noalias.scope.decl(metadata !824), !noalias !728
  tail call void @llvm.experimental.noalias.scope.decl(metadata !826), !noalias !728
  tail call void @llvm.experimental.noalias.scope.decl(metadata !828), !noalias !728
  tail call void @llvm.experimental.noalias.scope.decl(metadata !830), !noalias !728
  tail call void @llvm.experimental.noalias.scope.decl(metadata !832), !noalias !728
  %_3.i.i.i.i.i36.2 = load i32, ptr %_12.i.i.1, align 4, !alias.scope !834, !noalias !835, !noundef !37
  %_4.i.i.i.i.i37.2 = load i32, ptr %_14.i.i.1, align 4, !alias.scope !836, !noalias !837, !noundef !37
  %_0.i.i38.2 = icmp slt i32 %_3.i.i.i.i.i36.2, %_4.i.i.i.i.i37.2
  %is_l.i18.i.2 = xor i1 %_0.i.i38.2, true
  %33 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i36.2, i32 %_4.i.i.i.i.i37.2)
  store i32 %33, ptr %_16.i.i.1, align 4, !noalias !747
  %count.i.i.2 = zext i1 %_0.i.i38.2 to i64
  %_12.i.i.2 = getelementptr inbounds nuw i32, ptr %_12.i.i.1, i64 %count.i.i.2
  %count2.i.i.2 = zext i1 %is_l.i18.i.2 to i64
  %_14.i.i.2 = getelementptr inbounds nuw i32, ptr %_14.i.i.1, i64 %count2.i.i.2
  %_16.i.i.2 = getelementptr inbounds nuw i8, ptr %dst, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !838)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !840)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !842), !noalias !757
  tail call void @llvm.experimental.noalias.scope.decl(metadata !844), !noalias !757
  tail call void @llvm.experimental.noalias.scope.decl(metadata !846), !noalias !757
  tail call void @llvm.experimental.noalias.scope.decl(metadata !848), !noalias !757
  tail call void @llvm.experimental.noalias.scope.decl(metadata !850), !noalias !757
  tail call void @llvm.experimental.noalias.scope.decl(metadata !852), !noalias !757
  %_3.i.i.i.i19.i.2 = load i32, ptr %30, align 4, !alias.scope !854, !noalias !855, !noundef !37
  %_4.i.i.i.i20.i.2 = load i32, ptr %31, align 4, !alias.scope !856, !noalias !857, !noundef !37
  %_0.i21.i.2 = icmp slt i32 %_3.i.i.i.i19.i.2, %_4.i.i.i.i20.i.2
  %is_l.i.i.2 = xor i1 %_0.i21.i.2, true
  %34 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19.i.2, i32 %_4.i.i.i.i20.i.2)
  store i32 %34, ptr %32, align 4, !noalias !776
  %count.neg.i.i.2 = sext i1 %is_l.i.i.2 to i64
  %35 = getelementptr i32, ptr %30, i64 %count.neg.i.i.2
  %count3.neg.i.i.2 = sext i1 %_0.i21.i.2 to i64
  %36 = getelementptr i32, ptr %31, i64 %count3.neg.i.i.2
  %37 = getelementptr inbounds nuw i8, ptr %dst, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !858)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !860)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !862), !noalias !728
  tail call void @llvm.experimental.noalias.scope.decl(metadata !864), !noalias !728
  tail call void @llvm.experimental.noalias.scope.decl(metadata !866), !noalias !728
  tail call void @llvm.experimental.noalias.scope.decl(metadata !868), !noalias !728
  tail call void @llvm.experimental.noalias.scope.decl(metadata !870), !noalias !728
  tail call void @llvm.experimental.noalias.scope.decl(metadata !872), !noalias !728
  %_3.i.i.i.i.i36.3 = load i32, ptr %_12.i.i.2, align 4, !alias.scope !874, !noalias !875, !noundef !37
  %_4.i.i.i.i.i37.3 = load i32, ptr %_14.i.i.2, align 4, !alias.scope !876, !noalias !877, !noundef !37
  %_0.i.i38.3 = icmp slt i32 %_3.i.i.i.i.i36.3, %_4.i.i.i.i.i37.3
  %is_l.i18.i.3 = xor i1 %_0.i.i38.3, true
  %38 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i36.3, i32 %_4.i.i.i.i.i37.3)
  store i32 %38, ptr %_16.i.i.2, align 4, !noalias !747
  %count.i.i.3 = zext i1 %_0.i.i38.3 to i64
  %_12.i.i.3 = getelementptr inbounds nuw i32, ptr %_12.i.i.2, i64 %count.i.i.3
  %count2.i.i.3 = zext i1 %is_l.i18.i.3 to i64
  %_14.i.i.3 = getelementptr inbounds nuw i32, ptr %_14.i.i.2, i64 %count2.i.i.3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !878)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !880)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !882), !noalias !757
  tail call void @llvm.experimental.noalias.scope.decl(metadata !884), !noalias !757
  tail call void @llvm.experimental.noalias.scope.decl(metadata !886), !noalias !757
  tail call void @llvm.experimental.noalias.scope.decl(metadata !888), !noalias !757
  tail call void @llvm.experimental.noalias.scope.decl(metadata !890), !noalias !757
  tail call void @llvm.experimental.noalias.scope.decl(metadata !892), !noalias !757
  %_3.i.i.i.i19.i.3 = load i32, ptr %35, align 4, !alias.scope !894, !noalias !895, !noundef !37
  %_4.i.i.i.i20.i.3 = load i32, ptr %36, align 4, !alias.scope !896, !noalias !897, !noundef !37
  %_0.i21.i.3 = icmp slt i32 %_3.i.i.i.i19.i.3, %_4.i.i.i.i20.i.3
  %is_l.i.i.3 = xor i1 %_0.i21.i.3, true
  %39 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19.i.3, i32 %_4.i.i.i.i20.i.3)
  store i32 %39, ptr %37, align 4, !noalias !776
  %count.neg.i.i.3 = sext i1 %is_l.i.i.3 to i64
  %40 = getelementptr i32, ptr %35, i64 %count.neg.i.i.3
  %count3.neg.i.i.3 = sext i1 %_0.i21.i.3 to i64
  %41 = getelementptr i32, ptr %36, i64 %count3.neg.i.i.3
  %42 = getelementptr i8, ptr %41, i64 4
  %43 = getelementptr i8, ptr %40, i64 4
  %_31.i = icmp ne ptr %_14.i.i.3, %42
  %_32.i = icmp ne ptr %_12.i.i.3, %43
  %or.cond.i = select i1 %_31.i, i1 true, i1 %_32.i
  br i1 %or.cond.i, label %bb13.i, label %_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17he3b0c15c05973dbcE.exit, !prof !898

bb13.i:                                           ; preds = %start
; call core::slice::sort::shared::smallsort::panic_on_ord_violation
  tail call void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #32, !noalias !717
  unreachable

_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17he3b0c15c05973dbcE.exit: ; preds = %start
  ret void
}

; core::slice::sort::shared::smallsort::bidirectional_merge
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h5782bbec6bc4ca12E(ptr noalias noundef nonnull readonly align 8 captures(address) %v.0, i64 noundef range(i64 0, 384307168202282326) %v.1, ptr noundef writeonly captures(none) %0, ptr noalias nonnull readnone align 1 captures(none) %is_less) unnamed_addr #1 {
start:
  %len_div_215 = lshr i64 %v.1, 1
  %_7 = icmp samesign ugt i64 %v.1, 1
  tail call void @llvm.assume(i1 %_7)
  %count1 = add nsw i64 %v.1, -1
  %1 = getelementptr inbounds nuw %"alloc::string::String", ptr %0, i64 %count1
  %2 = getelementptr inbounds nuw %"alloc::string::String", ptr %v.0, i64 %count1
  %3 = getelementptr %"alloc::string::String", ptr %v.0, i64 %len_div_215
  %4 = getelementptr i8, ptr %3, i64 -24
  br label %bb15

bb16:                                             ; preds = %bb15
  %5 = getelementptr i8, ptr %24, i64 24
  %6 = getelementptr i8, ptr %23, i64 24
  %_44 = and i64 %v.1, 1
  %_22 = icmp eq i64 %_44, 0
  br i1 %_22, label %bb9, label %bb5

bb15:                                             ; preds = %start, %bb15
  %dst.sroa.0.033 = phi ptr [ %_16.i, %bb15 ], [ %0, %start ]
  %iter.sroa.0.032 = phi i64 [ %_39, %bb15 ], [ 0, %start ]
  %left.sroa.0.031 = phi ptr [ %_14.i, %bb15 ], [ %v.0, %start ]
  %right.sroa.0.030 = phi ptr [ %_12.i, %bb15 ], [ %3, %start ]
  %left_rev.sroa.0.029 = phi ptr [ %24, %bb15 ], [ %4, %start ]
  %right_rev.sroa.0.028 = phi ptr [ %23, %bb15 ], [ %2, %start ]
  %dst_rev.sroa.0.027 = phi ptr [ %25, %bb15 ], [ %1, %start ]
  %_39 = add nuw nsw i64 %iter.sroa.0.032, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !899)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !902)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !904), !noalias !907
  tail call void @llvm.experimental.noalias.scope.decl(metadata !910), !noalias !907
  tail call void @llvm.experimental.noalias.scope.decl(metadata !912), !noalias !907
  tail call void @llvm.experimental.noalias.scope.decl(metadata !915), !noalias !907
  tail call void @llvm.experimental.noalias.scope.decl(metadata !917), !noalias !907
  tail call void @llvm.experimental.noalias.scope.decl(metadata !920), !noalias !907
  %7 = getelementptr inbounds nuw i8, ptr %right.sroa.0.030, i64 8
  %_7.i.i.i.i = load ptr, ptr %7, align 8, !alias.scope !922, !noalias !923, !nonnull !37, !noundef !37
  %8 = getelementptr inbounds nuw i8, ptr %right.sroa.0.030, i64 16
  %len1.i.i.i.i = load i64, ptr %8, align 8, !alias.scope !922, !noalias !923, !noundef !37
  %9 = getelementptr inbounds nuw i8, ptr %left.sroa.0.031, i64 8
  %_14.i.i.i.i = load ptr, ptr %9, align 8, !alias.scope !924, !noalias !925, !nonnull !37, !noundef !37
  %10 = getelementptr inbounds nuw i8, ptr %left.sroa.0.031, i64 16
  %11 = load i64, ptr %10, align 8, !alias.scope !924, !noalias !925, !noundef !37
  %spec.store.select.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %len1.i.i.i.i, i64 range(i64 0, -9223372036854775808) %11)
  %12 = tail call i32 @memcmp(ptr nonnull readonly align 1 %_7.i.i.i.i, ptr nonnull readonly align 1 %_14.i.i.i.i, i64 %spec.store.select.i.i.i.i.i.i), !alias.scope !926, !noalias !933
  %13 = sext i32 %12 to i64
  %_15.i.i.i.i.i.i = icmp eq i32 %12, 0
  %diff.i.i.i.i.i.i = sub nsw i64 %len1.i.i.i.i, %11
  %spec.select.i.i.i.i.i.i = select i1 %_15.i.i.i.i.i.i, i64 %diff.i.i.i.i.i.i, i64 %13
  %14 = icmp sgt i64 %spec.select.i.i.i.i.i.i, -1
  %..i17 = select i1 %14, ptr %left.sroa.0.031, ptr %right.sroa.0.030
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %dst.sroa.0.033, ptr noundef nonnull align 8 dereferenceable(24) %..i17, i64 24, i1 false), !noalias !934
  %spec.select.i.i.i.i.i.i.lobit = lshr i64 %spec.select.i.i.i.i.i.i, 63
  %_12.i = getelementptr inbounds nuw %"alloc::string::String", ptr %right.sroa.0.030, i64 %spec.select.i.i.i.i.i.i.lobit
  %count2.i = zext i1 %14 to i64
  %_14.i = getelementptr inbounds nuw %"alloc::string::String", ptr %left.sroa.0.031, i64 %count2.i
  %_16.i = getelementptr inbounds nuw i8, ptr %dst.sroa.0.033, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !936)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !939)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !941), !noalias !944
  tail call void @llvm.experimental.noalias.scope.decl(metadata !947), !noalias !944
  tail call void @llvm.experimental.noalias.scope.decl(metadata !949), !noalias !944
  tail call void @llvm.experimental.noalias.scope.decl(metadata !952), !noalias !944
  tail call void @llvm.experimental.noalias.scope.decl(metadata !954), !noalias !944
  tail call void @llvm.experimental.noalias.scope.decl(metadata !957), !noalias !944
  %15 = getelementptr inbounds nuw i8, ptr %right_rev.sroa.0.028, i64 8
  %_7.i.i.i.i19 = load ptr, ptr %15, align 8, !alias.scope !959, !noalias !960, !nonnull !37, !noundef !37
  %16 = getelementptr inbounds nuw i8, ptr %right_rev.sroa.0.028, i64 16
  %len1.i.i.i.i20 = load i64, ptr %16, align 8, !alias.scope !959, !noalias !960, !noundef !37
  %17 = getelementptr inbounds nuw i8, ptr %left_rev.sroa.0.029, i64 8
  %_14.i.i.i.i21 = load ptr, ptr %17, align 8, !alias.scope !961, !noalias !962, !nonnull !37, !noundef !37
  %18 = getelementptr inbounds nuw i8, ptr %left_rev.sroa.0.029, i64 16
  %19 = load i64, ptr %18, align 8, !alias.scope !961, !noalias !962, !noundef !37
  %spec.store.select.i.i.i.i.i.i22 = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %len1.i.i.i.i20, i64 range(i64 0, -9223372036854775808) %19)
  %20 = tail call i32 @memcmp(ptr nonnull readonly align 1 %_7.i.i.i.i19, ptr nonnull readonly align 1 %_14.i.i.i.i21, i64 %spec.store.select.i.i.i.i.i.i22), !alias.scope !963, !noalias !970
  %21 = sext i32 %20 to i64
  %_15.i.i.i.i.i.i23 = icmp eq i32 %20, 0
  %diff.i.i.i.i.i.i24 = sub nsw i64 %len1.i.i.i.i20, %19
  %spec.select.i.i.i.i.i.i25 = select i1 %_15.i.i.i.i.i.i23, i64 %diff.i.i.i.i.i.i24, i64 %21
  %22 = icmp sgt i64 %spec.select.i.i.i.i.i.i25, -1
  %..i = select i1 %22, ptr %right_rev.sroa.0.028, ptr %left_rev.sroa.0.029
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %dst_rev.sroa.0.027, ptr noundef nonnull align 8 dereferenceable(24) %..i, i64 24, i1 false), !noalias !971
  %count.neg.i = sext i1 %22 to i64
  %23 = getelementptr %"alloc::string::String", ptr %right_rev.sroa.0.028, i64 %count.neg.i
  %spec.select.i.i.i.i.i.i25.lobit = ashr i64 %spec.select.i.i.i.i.i.i25, 63
  %24 = getelementptr %"alloc::string::String", ptr %left_rev.sroa.0.029, i64 %spec.select.i.i.i.i.i.i25.lobit
  %25 = getelementptr inbounds i8, ptr %dst_rev.sroa.0.027, i64 -24
  %exitcond.not = icmp eq i64 %_39, %len_div_215
  br i1 %exitcond.not, label %bb16, label %bb15

bb5:                                              ; preds = %bb16
  %left_nonempty = icmp ult ptr %_14.i, %5
  %left.sroa.0.0.right.sroa.0.0 = select i1 %left_nonempty, ptr %_14.i, ptr %_12.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_16.i, ptr noundef nonnull align 8 dereferenceable(24) %left.sroa.0.0.right.sroa.0.0, i64 24, i1 false)
  %count2 = zext i1 %left_nonempty to i64
  %_26 = getelementptr inbounds nuw %"alloc::string::String", ptr %_14.i, i64 %count2
  %_30 = xor i1 %left_nonempty, true
  %count3 = zext i1 %_30 to i64
  %_28 = getelementptr inbounds nuw %"alloc::string::String", ptr %_12.i, i64 %count3
  br label %bb9

bb9:                                              ; preds = %bb16, %bb5
  %right.sroa.0.1 = phi ptr [ %_12.i, %bb16 ], [ %_28, %bb5 ]
  %left.sroa.0.1 = phi ptr [ %_14.i, %bb16 ], [ %_26, %bb5 ]
  %_31 = icmp ne ptr %left.sroa.0.1, %5
  %_32 = icmp ne ptr %right.sroa.0.1, %6
  %or.cond = select i1 %_31, i1 true, i1 %_32
  br i1 %or.cond, label %bb13, label %bb14, !prof !898

bb14:                                             ; preds = %bb9
  ret void

bb13:                                             ; preds = %bb9
; call core::slice::sort::shared::smallsort::panic_on_ord_violation
  tail call void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #32
  unreachable
}

; core::slice::sort::shared::smallsort::bidirectional_merge
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17he3b0c15c05973dbcE(ptr noalias noundef nonnull readonly align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noundef writeonly captures(none) %0, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #1 {
start:
  %len_div_215 = lshr i64 %v.1, 1
  %_7 = icmp samesign ugt i64 %v.1, 1
  tail call void @llvm.assume(i1 %_7)
  %count1 = add nsw i64 %v.1, -1
  %1 = getelementptr inbounds nuw i32, ptr %0, i64 %count1
  %2 = getelementptr inbounds nuw i32, ptr %v.0, i64 %count1
  %3 = getelementptr i32, ptr %v.0, i64 %len_div_215
  %4 = getelementptr i8, ptr %3, i64 -4
  br label %bb15

bb16:                                             ; preds = %bb15
  %5 = getelementptr i8, ptr %10, i64 4
  %6 = getelementptr i8, ptr %9, i64 4
  %_44 = and i64 %v.1, 1
  %_22 = icmp eq i64 %_44, 0
  br i1 %_22, label %bb9, label %bb5

bb15:                                             ; preds = %start, %bb15
  %dst.sroa.0.029 = phi ptr [ %_16.i, %bb15 ], [ %0, %start ]
  %iter.sroa.0.028 = phi i64 [ %_39, %bb15 ], [ 0, %start ]
  %left.sroa.0.027 = phi ptr [ %_14.i, %bb15 ], [ %v.0, %start ]
  %right.sroa.0.026 = phi ptr [ %_12.i, %bb15 ], [ %3, %start ]
  %left_rev.sroa.0.025 = phi ptr [ %10, %bb15 ], [ %4, %start ]
  %right_rev.sroa.0.024 = phi ptr [ %9, %bb15 ], [ %2, %start ]
  %dst_rev.sroa.0.023 = phi ptr [ %11, %bb15 ], [ %1, %start ]
  %_39 = add nuw nsw i64 %iter.sroa.0.028, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !973)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !976)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !978), !noalias !981
  tail call void @llvm.experimental.noalias.scope.decl(metadata !984), !noalias !981
  tail call void @llvm.experimental.noalias.scope.decl(metadata !986), !noalias !981
  tail call void @llvm.experimental.noalias.scope.decl(metadata !989), !noalias !981
  tail call void @llvm.experimental.noalias.scope.decl(metadata !991), !noalias !981
  tail call void @llvm.experimental.noalias.scope.decl(metadata !994), !noalias !981
  %_3.i.i.i.i = load i32, ptr %right.sroa.0.026, align 4, !alias.scope !996, !noalias !997, !noundef !37
  %_4.i.i.i.i = load i32, ptr %left.sroa.0.027, align 4, !alias.scope !998, !noalias !999, !noundef !37
  %_0.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %is_l.i18 = xor i1 %_0.i, true
  %7 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i, i32 %_4.i.i.i.i)
  store i32 %7, ptr %dst.sroa.0.029, align 4, !noalias !1000
  %count.i = zext i1 %_0.i to i64
  %_12.i = getelementptr inbounds nuw i32, ptr %right.sroa.0.026, i64 %count.i
  %count2.i = zext i1 %is_l.i18 to i64
  %_14.i = getelementptr inbounds nuw i32, ptr %left.sroa.0.027, i64 %count2.i
  %_16.i = getelementptr inbounds nuw i8, ptr %dst.sroa.0.029, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1002)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1005)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1007), !noalias !1010
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1013), !noalias !1010
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1015), !noalias !1010
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1018), !noalias !1010
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1020), !noalias !1010
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1023), !noalias !1010
  %_3.i.i.i.i19 = load i32, ptr %right_rev.sroa.0.024, align 4, !alias.scope !1025, !noalias !1026, !noundef !37
  %_4.i.i.i.i20 = load i32, ptr %left_rev.sroa.0.025, align 4, !alias.scope !1027, !noalias !1028, !noundef !37
  %_0.i21 = icmp slt i32 %_3.i.i.i.i19, %_4.i.i.i.i20
  %is_l.i = xor i1 %_0.i21, true
  %8 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19, i32 %_4.i.i.i.i20)
  store i32 %8, ptr %dst_rev.sroa.0.023, align 4, !noalias !1029
  %count.neg.i = sext i1 %is_l.i to i64
  %9 = getelementptr i32, ptr %right_rev.sroa.0.024, i64 %count.neg.i
  %count3.neg.i = sext i1 %_0.i21 to i64
  %10 = getelementptr i32, ptr %left_rev.sroa.0.025, i64 %count3.neg.i
  %11 = getelementptr inbounds i8, ptr %dst_rev.sroa.0.023, i64 -4
  %exitcond.not = icmp eq i64 %_39, %len_div_215
  br i1 %exitcond.not, label %bb16, label %bb15

bb5:                                              ; preds = %bb16
  %left_nonempty = icmp ult ptr %_14.i, %5
  %left.sroa.0.0.right.sroa.0.0 = select i1 %left_nonempty, ptr %_14.i, ptr %_12.i
  %12 = load i32, ptr %left.sroa.0.0.right.sroa.0.0, align 4
  store i32 %12, ptr %_16.i, align 4
  %count2 = zext i1 %left_nonempty to i64
  %_26 = getelementptr inbounds nuw i32, ptr %_14.i, i64 %count2
  %_30 = xor i1 %left_nonempty, true
  %count3 = zext i1 %_30 to i64
  %_28 = getelementptr inbounds nuw i32, ptr %_12.i, i64 %count3
  br label %bb9

bb9:                                              ; preds = %bb16, %bb5
  %right.sroa.0.1 = phi ptr [ %_12.i, %bb16 ], [ %_28, %bb5 ]
  %left.sroa.0.1 = phi ptr [ %_14.i, %bb16 ], [ %_26, %bb5 ]
  %_31 = icmp ne ptr %left.sroa.0.1, %5
  %_32 = icmp ne ptr %right.sroa.0.1, %6
  %or.cond = select i1 %_31, i1 true, i1 %_32
  br i1 %or.cond, label %bb13, label %bb14, !prof !898

bb14:                                             ; preds = %bb9
  ret void

bb13:                                             ; preds = %bb9
; call core::slice::sort::shared::smallsort::panic_on_ord_violation
  tail call void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #32
  unreachable
}

; core::slice::sort::shared::smallsort::insertion_sort_shift_left
; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h0ae00b1ab412e7dbE(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, i64 noundef %offset, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #7 personality ptr @rust_eh_personality {
start:
  %0 = add i64 %offset, -1
  %or.cond.not = icmp ult i64 %0, %v.1
  br i1 %or.cond.not, label %bb3, label %bb2

bb2:                                              ; preds = %start
  tail call void @llvm.trap()
  unreachable

bb3:                                              ; preds = %start
  %v_end = getelementptr inbounds nuw i32, ptr %v.0, i64 %v.1
  %_11.not1 = icmp samesign eq i64 %offset, %v.1
  br i1 %_11.not1, label %bb7, label %bb5.preheader

bb5.preheader:                                    ; preds = %bb3
  %1 = getelementptr inbounds nuw i32, ptr %v.0, i64 %offset
  br label %bb5

bb7:                                              ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h8d444b17020be90bE.exit, %bb3
  ret void

bb5:                                              ; preds = %bb5.preheader, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h8d444b17020be90bE.exit
  %tail.sroa.0.02 = phi ptr [ %_15, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h8d444b17020be90bE.exit ], [ %1, %bb5.preheader ]
  %2 = getelementptr inbounds i8, ptr %tail.sroa.0.02, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1031)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1034)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1036)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1039)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1041)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1044)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1046)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1049)
  %_3.i.i.i.i.i = load i32, ptr %tail.sroa.0.02, align 4, !alias.scope !1051, !noalias !1052, !noundef !37
  %_4.i.i.i.i.i = load i32, ptr %2, align 4, !alias.scope !1052, !noalias !1051, !noundef !37
  %_0.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  br i1 %_0.i.i, label %bb4.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h8d444b17020be90bE.exit

bb4.i:                                            ; preds = %bb5, %bb6.i
  %gap_guard.sroa.5.0.i = phi ptr [ %sift.sroa.0.0.i, %bb6.i ], [ %tail.sroa.0.02, %bb5 ]
  %sift.sroa.0.0.i = phi ptr [ %4, %bb6.i ], [ %2, %bb5 ]
  %3 = load i32, ptr %sift.sroa.0.0.i, align 4
  store i32 %3, ptr %gap_guard.sroa.5.0.i, align 4
  %_18.i = icmp eq ptr %sift.sroa.0.0.i, %v.0
  br i1 %_18.i, label %bb10.i, label %bb6.i

bb6.i:                                            ; preds = %bb4.i
  %4 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i, i64 -4
  %_4.i.i.i.i2.i = load i32, ptr %4, align 4, !alias.scope !1053, !noalias !1062, !noundef !37
  %_0.i3.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i2.i
  br i1 %_0.i3.i, label %bb4.i, label %bb10.i

bb10.i:                                           ; preds = %bb6.i, %bb4.i
  store i32 %_3.i.i.i.i.i, ptr %sift.sroa.0.0.i, align 4, !noalias !1067
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h8d444b17020be90bE.exit

_ZN4core5slice4sort6shared9smallsort11insert_tail17h8d444b17020be90bE.exit: ; preds = %bb5, %bb10.i
  %_15 = getelementptr inbounds nuw i8, ptr %tail.sroa.0.02, i64 4
  %_11.not = icmp eq ptr %_15, %v_end
  br i1 %_11.not, label %bb7, label %bb5
}

; core::slice::sort::shared::smallsort::insertion_sort_shift_left
; Function Attrs: nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h5881bc39b88732acE(ptr noalias noundef nonnull align 8 captures(address) %v.0, i64 noundef range(i64 0, 384307168202282326) %v.1, i64 noundef %offset, ptr noalias nonnull readnone align 1 captures(none) %is_less) unnamed_addr #8 personality ptr @rust_eh_personality {
start:
  %0 = add i64 %offset, -1
  %or.cond.not = icmp ult i64 %0, %v.1
  br i1 %or.cond.not, label %bb3, label %bb2

bb2:                                              ; preds = %start
  tail call void @llvm.trap()
  unreachable

bb3:                                              ; preds = %start
  %v_end = getelementptr inbounds nuw %"alloc::string::String", ptr %v.0, i64 %v.1
  %_11.not1 = icmp samesign eq i64 %offset, %v.1
  br i1 %_11.not1, label %bb7, label %bb5.preheader

bb5.preheader:                                    ; preds = %bb3
  %1 = getelementptr inbounds nuw %"alloc::string::String", ptr %v.0, i64 %offset
  br label %bb5

bb7:                                              ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17haddbce5dcdcd8aa9E.exit, %bb3
  ret void

bb5:                                              ; preds = %bb5.preheader, %_ZN4core5slice4sort6shared9smallsort11insert_tail17haddbce5dcdcd8aa9E.exit
  %tail.sroa.0.02 = phi ptr [ %_15, %_ZN4core5slice4sort6shared9smallsort11insert_tail17haddbce5dcdcd8aa9E.exit ], [ %1, %bb5.preheader ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1072)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1075)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1077)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1080)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1082)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1085)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1087)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1090)
  %2 = getelementptr inbounds nuw i8, ptr %tail.sroa.0.02, i64 8
  %_7.i.i.i.i.i = load ptr, ptr %2, align 8, !alias.scope !1092, !noalias !1093, !nonnull !37, !noundef !37
  %3 = getelementptr inbounds nuw i8, ptr %tail.sroa.0.02, i64 16
  %len1.i.i.i.i.i = load i64, ptr %3, align 8, !alias.scope !1092, !noalias !1093, !noundef !37
  %4 = getelementptr inbounds i8, ptr %tail.sroa.0.02, i64 -16
  %_14.i.i.i.i.i = load ptr, ptr %4, align 8, !alias.scope !1093, !noalias !1092, !nonnull !37, !noundef !37
  %5 = getelementptr inbounds i8, ptr %tail.sroa.0.02, i64 -8
  %6 = load i64, ptr %5, align 8, !alias.scope !1093, !noalias !1092, !noundef !37
  %spec.store.select.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %len1.i.i.i.i.i, i64 range(i64 0, -9223372036854775808) %6)
  %7 = tail call i32 @memcmp(ptr nonnull readonly align 1 %_7.i.i.i.i.i, ptr nonnull readonly align 1 %_14.i.i.i.i.i, i64 %spec.store.select.i.i.i.i.i.i.i), !alias.scope !1094, !noalias !1101
  %8 = sext i32 %7 to i64
  %_15.i.i.i.i.i.i.i = icmp eq i32 %7, 0
  %diff.i.i.i.i.i.i.i = sub nsw i64 %len1.i.i.i.i.i, %6
  %spec.select.i.i.i.i.i.i.i = select i1 %_15.i.i.i.i.i.i.i, i64 %diff.i.i.i.i.i.i.i, i64 %8
  %9 = icmp slt i64 %spec.select.i.i.i.i.i.i.i, 0
  br i1 %9, label %bb2.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17haddbce5dcdcd8aa9E.exit

bb2.i:                                            ; preds = %bb5
  %value.sroa.0.0.copyload.i = load i64, ptr %tail.sroa.0.02, align 8
  br label %bb4.i

bb4.i:                                            ; preds = %bb6.i, %bb2.i
  %gap_guard.sroa.5.0.i = phi ptr [ %tail.sroa.0.02, %bb2.i ], [ %sift.sroa.0.0.i, %bb6.i ]
  %sift.sroa.0.0.i = getelementptr inbounds i8, ptr %gap_guard.sroa.5.0.i, i64 -24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %gap_guard.sroa.5.0.i, ptr noundef nonnull align 8 dereferenceable(24) %sift.sroa.0.0.i, i64 24, i1 false)
  %_18.i = icmp eq ptr %sift.sroa.0.0.i, %v.0
  br i1 %_18.i, label %bb10.i, label %bb6.i

bb6.i:                                            ; preds = %bb4.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1102)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1105)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1108)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1111)
  %10 = getelementptr inbounds i8, ptr %gap_guard.sroa.5.0.i, i64 -40
  %_14.i.i.i.i3.i = load ptr, ptr %10, align 8, !alias.scope !1114, !noalias !1115, !nonnull !37, !noundef !37
  %11 = getelementptr inbounds i8, ptr %gap_guard.sroa.5.0.i, i64 -32
  %12 = load i64, ptr %11, align 8, !alias.scope !1114, !noalias !1115, !noundef !37
  %spec.store.select.i.i.i.i.i.i4.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %len1.i.i.i.i.i, i64 range(i64 0, -9223372036854775808) %12)
  %13 = tail call i32 @memcmp(ptr nonnull readonly align 1 %_7.i.i.i.i.i, ptr nonnull readonly align 1 %_14.i.i.i.i3.i, i64 %spec.store.select.i.i.i.i.i.i4.i), !alias.scope !1120, !noalias !1127
  %14 = sext i32 %13 to i64
  %_15.i.i.i.i.i.i5.i = icmp eq i32 %13, 0
  %diff.i.i.i.i.i.i6.i = sub nsw i64 %len1.i.i.i.i.i, %12
  %spec.select.i.i.i.i.i.i7.i = select i1 %_15.i.i.i.i.i.i5.i, i64 %diff.i.i.i.i.i.i6.i, i64 %14
  %15 = icmp slt i64 %spec.select.i.i.i.i.i.i7.i, 0
  br i1 %15, label %bb4.i, label %bb10.i

bb10.i:                                           ; preds = %bb6.i, %bb4.i
  store i64 %value.sroa.0.0.copyload.i, ptr %sift.sroa.0.0.i, align 8, !noalias !1128
  %tmp.sroa.4.0.sift.sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds i8, ptr %gap_guard.sroa.5.0.i, i64 -16
  store ptr %_7.i.i.i.i.i, ptr %tmp.sroa.4.0.sift.sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !1128
  %tmp.sroa.5.0.sift.sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds i8, ptr %gap_guard.sroa.5.0.i, i64 -8
  store i64 %len1.i.i.i.i.i, ptr %tmp.sroa.5.0.sift.sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !1128
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17haddbce5dcdcd8aa9E.exit

_ZN4core5slice4sort6shared9smallsort11insert_tail17haddbce5dcdcd8aa9E.exit: ; preds = %bb5, %bb10.i
  %_15 = getelementptr inbounds nuw i8, ptr %tail.sroa.0.02, i64 24
  %_11.not = icmp eq ptr %_15, %v_end
  br i1 %_11.not, label %bb7, label %bb5
}

; core::slice::sort::shared::smallsort::small_sort_general_with_scratch
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h810f0cca5566cd17E(ptr noalias noundef nonnull align 8 captures(none) %v.0, i64 noundef range(i64 0, 384307168202282326) %v.1, ptr noalias noundef nonnull align 8 captures(address) %scratch.0, i64 noundef range(i64 0, 384307168202282326) %scratch.1, ptr noalias nonnull readnone align 1 captures(none) %is_less) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %iter = alloca [32 x i8], align 8
  %_5 = icmp samesign ult i64 %v.1, 2
  br i1 %_5, label %bb29, label %bb2

bb2:                                              ; preds = %start
  %_8 = add nuw nsw i64 %v.1, 16
  %_6 = icmp samesign ult i64 %scratch.1, %_8
  br i1 %_6, label %bb3, label %bb4

bb4:                                              ; preds = %bb2
  %len_div_211 = lshr i64 %v.1, 1
  %_22 = icmp samesign ugt i64 %v.1, 7
  %_27 = getelementptr inbounds nuw %"alloc::string::String", ptr %v.0, i64 %len_div_211
  %_28 = getelementptr inbounds nuw %"alloc::string::String", ptr %scratch.0, i64 %len_div_211
  br i1 %_22, label %bb10, label %bb46

bb3:                                              ; preds = %bb2
  tail call void @llvm.trap()
  unreachable

bb10:                                             ; preds = %bb4
; call core::slice::sort::shared::smallsort::sort4_stable
  tail call void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h8dbcb2c0d021ad35E(ptr noundef nonnull %v.0, ptr noundef nonnull %scratch.0, ptr noalias nonnull align 1 poison)
; call core::slice::sort::shared::smallsort::sort4_stable
  tail call void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h8dbcb2c0d021ad35E(ptr noundef nonnull %_27, ptr noundef nonnull %_28, ptr noalias nonnull align 1 poison)
  br label %bb15

bb46:                                             ; preds = %bb4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %scratch.0, ptr noundef nonnull align 8 dereferenceable(24) %v.0, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_28, ptr noundef nonnull align 8 dereferenceable(24) %_27, i64 24, i1 false)
  br label %bb15

bb15:                                             ; preds = %bb46, %bb10
  %presorted_len.sroa.0.0 = phi i64 [ 4, %bb10 ], [ 1, %bb46 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %iter)
  store i64 0, ptr %iter, align 8
  %_37.sroa.4.0.iter.sroa_idx = getelementptr inbounds nuw i8, ptr %iter, i64 8
  store i64 2, ptr %_37.sroa.4.0.iter.sroa_idx, align 8
  %_37.sroa.5.0.iter.sroa_idx = getelementptr inbounds nuw i8, ptr %iter, i64 16
  store i64 0, ptr %_37.sroa.5.0.iter.sroa_idx, align 8
  %_37.sroa.6.0.iter.sroa_idx = getelementptr inbounds nuw i8, ptr %iter, i64 24
  store i64 %len_div_211, ptr %_37.sroa.6.0.iter.sroa_idx, align 8
  %0 = sub nsw i64 %v.1, %len_div_211
  %iter1.sroa.0.115 = add nuw nsw i64 %presorted_len.sroa.0.0, 1
  br label %bb16

bb16:                                             ; preds = %bb16.backedge, %bb15
  %_11.i18 = phi i64 [ 0, %bb15 ], [ %_11.i19, %bb16.backedge ]
  %1 = phi i64 [ 0, %bb15 ], [ %2, %bb16.backedge ]
  %_5.not.i.not = icmp eq i64 %1, 2
  br i1 %_5.not.i.not, label %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17hb49c9d1ba10adf46E.exit", label %bb1.i

bb1.i:                                            ; preds = %bb16
  %_11.i = add nuw nsw i64 %1, 1
  %_20.i = icmp ult i64 %1, 2
  tail call void @llvm.assume(i1 %_20.i)
  %self3.i = getelementptr inbounds nuw i64, ptr %_37.sroa.5.0.iter.sroa_idx, i64 %1
  %_15.i = load i64, ptr %self3.i, align 8, !alias.scope !1133, !noundef !37
  br label %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17hb49c9d1ba10adf46E.exit"

"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17hb49c9d1ba10adf46E.exit": ; preds = %bb16, %bb1.i
  %_11.i19 = phi i64 [ %_11.i, %bb1.i ], [ %_11.i18, %bb16 ]
  %2 = phi i64 [ %_11.i, %bb1.i ], [ %1, %bb16 ]
  %_0.sroa.3.0.i = phi i64 [ %_15.i, %bb1.i ], [ undef, %bb16 ]
  br i1 %_5.not.i.not, label %bb19, label %bb18

bb18:                                             ; preds = %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17hb49c9d1ba10adf46E.exit"
  %src5 = getelementptr inbounds nuw %"alloc::string::String", ptr %v.0, i64 %_0.sroa.3.0.i
  %dst6 = getelementptr inbounds nuw %"alloc::string::String", ptr %scratch.0, i64 %_0.sroa.3.0.i
  %_47 = icmp eq i64 %_0.sroa.3.0.i, 0
  %desired_len.sroa.0.0 = select i1 %_47, i64 %len_div_211, i64 %0
  %_8013 = icmp ult i64 %presorted_len.sroa.0.0, %desired_len.sroa.0.0
  br i1 %_8013, label %bb24, label %bb16.backedge

bb16.backedge:                                    ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17haddbce5dcdcd8aa9E.exit, %bb18
  br label %bb16

bb19:                                             ; preds = %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17hb49c9d1ba10adf46E.exit"
  store i64 %_11.i19, ptr %iter, align 8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %iter)
; invoke core::slice::sort::shared::smallsort::bidirectional_merge
  invoke void @_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h5782bbec6bc4ca12E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %scratch.0, i64 noundef %v.1, ptr noundef nonnull %v.0, ptr noalias nonnull align 1 poison)
          to label %bb29 unwind label %cleanup2

cleanup2:                                         ; preds = %bb19
  %3 = landingpad { ptr, i32 }
          cleanup
  %4 = mul nuw nsw i64 %v.1, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %v.0, ptr nonnull align 8 %scratch.0, i64 %4, i1 false), !noalias !1136
  resume { ptr, i32 } %3

bb29:                                             ; preds = %bb19, %start
  ret void

bb24:                                             ; preds = %bb18, %_ZN4core5slice4sort6shared9smallsort11insert_tail17haddbce5dcdcd8aa9E.exit
  %iter1.sroa.0.117 = phi i64 [ %iter1.sroa.0.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17haddbce5dcdcd8aa9E.exit ], [ %iter1.sroa.0.115, %bb18 ]
  %iter1.sroa.0.016 = phi i64 [ %iter1.sroa.0.117, %_ZN4core5slice4sort6shared9smallsort11insert_tail17haddbce5dcdcd8aa9E.exit ], [ %presorted_len.sroa.0.0, %bb18 ]
  %_55 = getelementptr inbounds nuw %"alloc::string::String", ptr %src5, i64 %iter1.sroa.0.016
  %dst7 = getelementptr inbounds nuw %"alloc::string::String", ptr %dst6, i64 %iter1.sroa.0.016
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %dst7, ptr noundef nonnull align 8 dereferenceable(24) %_55, i64 24, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1141)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1144)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1146)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1149)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1151)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1154)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1156)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1159)
  %5 = getelementptr inbounds nuw i8, ptr %dst7, i64 8
  %_7.i.i.i.i.i = load ptr, ptr %5, align 8, !alias.scope !1161, !noalias !1162, !nonnull !37, !noundef !37
  %6 = getelementptr inbounds nuw i8, ptr %dst7, i64 16
  %len1.i.i.i.i.i = load i64, ptr %6, align 8, !alias.scope !1161, !noalias !1162, !noundef !37
  %7 = getelementptr inbounds i8, ptr %dst7, i64 -16
  %_14.i.i.i.i.i = load ptr, ptr %7, align 8, !alias.scope !1162, !noalias !1161, !nonnull !37, !noundef !37
  %8 = getelementptr inbounds i8, ptr %dst7, i64 -8
  %9 = load i64, ptr %8, align 8, !alias.scope !1162, !noalias !1161, !noundef !37
  %spec.store.select.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %len1.i.i.i.i.i, i64 range(i64 0, -9223372036854775808) %9)
  %10 = tail call i32 @memcmp(ptr nonnull readonly align 1 %_7.i.i.i.i.i, ptr nonnull readonly align 1 %_14.i.i.i.i.i, i64 %spec.store.select.i.i.i.i.i.i.i), !alias.scope !1163, !noalias !1170
  %11 = sext i32 %10 to i64
  %_15.i.i.i.i.i.i.i = icmp eq i32 %10, 0
  %diff.i.i.i.i.i.i.i = sub nsw i64 %len1.i.i.i.i.i, %9
  %spec.select.i.i.i.i.i.i.i = select i1 %_15.i.i.i.i.i.i.i, i64 %diff.i.i.i.i.i.i.i, i64 %11
  %12 = icmp slt i64 %spec.select.i.i.i.i.i.i.i, 0
  br i1 %12, label %bb2.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17haddbce5dcdcd8aa9E.exit

bb2.i:                                            ; preds = %bb24
  %value.sroa.0.0.copyload.i = load i64, ptr %dst7, align 8
  br label %bb4.i

bb4.i:                                            ; preds = %bb6.i, %bb2.i
  %gap_guard.sroa.5.0.i = phi ptr [ %dst7, %bb2.i ], [ %sift.sroa.0.0.i, %bb6.i ]
  %sift.sroa.0.0.i = getelementptr inbounds i8, ptr %gap_guard.sroa.5.0.i, i64 -24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %gap_guard.sroa.5.0.i, ptr noundef nonnull align 8 dereferenceable(24) %sift.sroa.0.0.i, i64 24, i1 false)
  %_18.i = icmp eq ptr %sift.sroa.0.0.i, %dst6
  br i1 %_18.i, label %bb10.i, label %bb6.i

bb6.i:                                            ; preds = %bb4.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1171)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1174)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1177)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1180)
  %13 = getelementptr inbounds i8, ptr %gap_guard.sroa.5.0.i, i64 -40
  %_14.i.i.i.i3.i = load ptr, ptr %13, align 8, !alias.scope !1183, !noalias !1184, !nonnull !37, !noundef !37
  %14 = getelementptr inbounds i8, ptr %gap_guard.sroa.5.0.i, i64 -32
  %15 = load i64, ptr %14, align 8, !alias.scope !1183, !noalias !1184, !noundef !37
  %spec.store.select.i.i.i.i.i.i4.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %len1.i.i.i.i.i, i64 range(i64 0, -9223372036854775808) %15)
  %16 = tail call i32 @memcmp(ptr nonnull readonly align 1 %_7.i.i.i.i.i, ptr nonnull readonly align 1 %_14.i.i.i.i3.i, i64 %spec.store.select.i.i.i.i.i.i4.i), !alias.scope !1189, !noalias !1196
  %17 = sext i32 %16 to i64
  %_15.i.i.i.i.i.i5.i = icmp eq i32 %16, 0
  %diff.i.i.i.i.i.i6.i = sub nsw i64 %len1.i.i.i.i.i, %15
  %spec.select.i.i.i.i.i.i7.i = select i1 %_15.i.i.i.i.i.i5.i, i64 %diff.i.i.i.i.i.i6.i, i64 %17
  %18 = icmp slt i64 %spec.select.i.i.i.i.i.i7.i, 0
  br i1 %18, label %bb4.i, label %bb10.i

bb10.i:                                           ; preds = %bb6.i, %bb4.i
  store i64 %value.sroa.0.0.copyload.i, ptr %sift.sroa.0.0.i, align 8, !noalias !1197
  %tmp.sroa.4.0.sift.sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds i8, ptr %gap_guard.sroa.5.0.i, i64 -16
  store ptr %_7.i.i.i.i.i, ptr %tmp.sroa.4.0.sift.sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !1197
  %tmp.sroa.5.0.sift.sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds i8, ptr %gap_guard.sroa.5.0.i, i64 -8
  store i64 %len1.i.i.i.i.i, ptr %tmp.sroa.5.0.sift.sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !1197
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17haddbce5dcdcd8aa9E.exit

_ZN4core5slice4sort6shared9smallsort11insert_tail17haddbce5dcdcd8aa9E.exit: ; preds = %bb24, %bb10.i
  %_80 = icmp ult i64 %iter1.sroa.0.117, %desired_len.sroa.0.0
  %_84 = zext i1 %_80 to i64
  %iter1.sroa.0.1 = add nuw i64 %iter1.sroa.0.117, %_84
  br i1 %_80, label %bb24, label %bb16.backedge
}

; core::slice::sort::shared::smallsort::small_sort_general_with_scratch
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17hb45e4134945bd316E(ptr noalias noundef nonnull align 4 captures(none) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 captures(address) %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %iter = alloca [32 x i8], align 8
  %_5 = icmp samesign ult i64 %v.1, 2
  br i1 %_5, label %bb29, label %bb2

bb2:                                              ; preds = %start
  %_8 = add nuw nsw i64 %v.1, 16
  %_6 = icmp samesign ult i64 %scratch.1, %_8
  br i1 %_6, label %bb3, label %bb4

bb4:                                              ; preds = %bb2
  %len_div_211 = lshr i64 %v.1, 1
  %_14 = icmp samesign ugt i64 %v.1, 15
  br i1 %_14, label %bb6, label %bb9

bb3:                                              ; preds = %bb2
  tail call void @llvm.trap()
  unreachable

bb9:                                              ; preds = %bb4
  %_22 = icmp samesign ugt i64 %v.1, 7
  br i1 %_22, label %bb10, label %bb46

bb6:                                              ; preds = %bb4
  %_16 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %v.1
; call core::slice::sort::shared::smallsort::sort8_stable
  tail call void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17hed0c5b8627756ff6E(ptr noundef nonnull %v.0, ptr noundef nonnull %scratch.0, ptr noundef nonnull %_16, ptr noalias align 8 poison)
  %_18 = getelementptr inbounds nuw i32, ptr %v.0, i64 %len_div_211
  %_19 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211
  %_20 = getelementptr inbounds nuw i8, ptr %_16, i64 32
; call core::slice::sort::shared::smallsort::sort8_stable
  tail call void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17hed0c5b8627756ff6E(ptr noundef nonnull %_18, ptr noundef nonnull %_19, ptr noundef nonnull %_20, ptr noalias align 8 poison)
  br label %bb15

bb10:                                             ; preds = %bb9
  %_7.i = getelementptr inbounds nuw i8, ptr %v.0, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1202)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1205)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1207)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1210)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1212)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1215)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1217)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1220)
  %_3.i.i.i.i.i = load i32, ptr %_7.i, align 4, !alias.scope !1222, !noalias !1223, !noundef !37
  %_4.i.i.i.i.i = load i32, ptr %v.0, align 4, !alias.scope !1223, !noalias !1222, !noundef !37
  %_0.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %_12.i = getelementptr inbounds nuw i8, ptr %v.0, i64 12
  %_14.i = getelementptr inbounds nuw i8, ptr %v.0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1224)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1227)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1229)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1232)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1234)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1237)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1239)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1242)
  %_3.i.i.i.i7.i = load i32, ptr %_12.i, align 4, !alias.scope !1244, !noalias !1245, !noundef !37
  %_4.i.i.i.i8.i = load i32, ptr %_14.i, align 4, !alias.scope !1245, !noalias !1244, !noundef !37
  %_0.i9.i = icmp slt i32 %_3.i.i.i.i7.i, %_4.i.i.i.i8.i
  %count.i = zext i1 %_0.i.i to i64
  %a.i = getelementptr inbounds nuw i32, ptr %v.0, i64 %count.i
  %_19.i = xor i1 %_0.i.i, true
  %count2.i = zext i1 %_19.i to i64
  %b.i = getelementptr inbounds nuw i32, ptr %v.0, i64 %count2.i
  %count3.i = select i1 %_0.i9.i, i64 3, i64 2
  %c.i = getelementptr inbounds nuw i32, ptr %v.0, i64 %count3.i
  %count4.i = select i1 %_0.i9.i, i64 2, i64 3
  %d.i = getelementptr inbounds nuw i32, ptr %v.0, i64 %count4.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1246)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1249)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1251)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1254)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1256)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1259)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1261)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1264)
  %_3.i.i.i.i10.i = load i32, ptr %c.i, align 4, !alias.scope !1266, !noalias !1267, !noundef !37
  %_4.i.i.i.i11.i = load i32, ptr %a.i, align 4, !alias.scope !1267, !noalias !1266, !noundef !37
  %_0.i12.i = icmp slt i32 %_3.i.i.i.i10.i, %_4.i.i.i.i11.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1268)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1271)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1273)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1276)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1278)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1281)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1283)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1286)
  %_3.i.i.i.i13.i = load i32, ptr %d.i, align 4, !alias.scope !1288, !noalias !1289, !noundef !37
  %_4.i.i.i.i14.i = load i32, ptr %b.i, align 4, !alias.scope !1289, !noalias !1288, !noundef !37
  %_0.i15.i = icmp slt i32 %_3.i.i.i.i13.i, %_4.i.i.i.i14.i
  %0 = select i1 %_0.i12.i, ptr %c.i, ptr %a.i, !unpredictable !37
  %1 = select i1 %_0.i15.i, ptr %c.i, ptr %b.i, !unpredictable !37
  %2 = select i1 %_0.i12.i, ptr %a.i, ptr %1, !unpredictable !37
  %3 = select i1 %_0.i12.i, ptr %b.i, ptr %c.i, !unpredictable !37
  %4 = select i1 %_0.i15.i, ptr %d.i, ptr %3, !unpredictable !37
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1290)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1293)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1295)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1298)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1300)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1303)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1305)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1308)
  %_3.i.i.i.i16.i = load i32, ptr %4, align 4, !alias.scope !1310, !noalias !1311, !noundef !37
  %_4.i.i.i.i17.i = load i32, ptr %2, align 4, !alias.scope !1311, !noalias !1310, !noundef !37
  %5 = load i32, ptr %0, align 4
  store i32 %5, ptr %scratch.0, align 4
  %dst5.i = getelementptr inbounds nuw i8, ptr %scratch.0, i64 4
  %6 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i16.i, i32 %_4.i.i.i.i17.i)
  store i32 %6, ptr %dst5.i, align 4
  %dst6.i = getelementptr inbounds nuw i8, ptr %scratch.0, i64 8
  %7 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i16.i, i32 %_4.i.i.i.i17.i)
  store i32 %7, ptr %dst6.i, align 4
  %8 = getelementptr inbounds nuw i8, ptr %scratch.0, i64 12
  %9 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i13.i, i32 %_4.i.i.i.i14.i)
  store i32 %9, ptr %8, align 4
  %_27 = getelementptr inbounds nuw i32, ptr %v.0, i64 %len_div_211
  %_28 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211
  %_7.i13 = getelementptr inbounds nuw i8, ptr %_27, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1312)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1315)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1317)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1320)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1322)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1325)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1327)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1330)
  %_3.i.i.i.i.i14 = load i32, ptr %_7.i13, align 4, !alias.scope !1332, !noalias !1333, !noundef !37
  %_4.i.i.i.i.i15 = load i32, ptr %_27, align 4, !alias.scope !1333, !noalias !1332, !noundef !37
  %_0.i.i16 = icmp slt i32 %_3.i.i.i.i.i14, %_4.i.i.i.i.i15
  %_12.i17 = getelementptr inbounds nuw i8, ptr %_27, i64 12
  %_14.i18 = getelementptr inbounds nuw i8, ptr %_27, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1334)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1337)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1339)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1342)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1344)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1347)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1349)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1352)
  %_3.i.i.i.i7.i19 = load i32, ptr %_12.i17, align 4, !alias.scope !1354, !noalias !1355, !noundef !37
  %_4.i.i.i.i8.i20 = load i32, ptr %_14.i18, align 4, !alias.scope !1355, !noalias !1354, !noundef !37
  %_0.i9.i21 = icmp slt i32 %_3.i.i.i.i7.i19, %_4.i.i.i.i8.i20
  %count.i22 = zext i1 %_0.i.i16 to i64
  %a.i23 = getelementptr inbounds nuw i32, ptr %_27, i64 %count.i22
  %_19.i24 = xor i1 %_0.i.i16, true
  %count2.i25 = zext i1 %_19.i24 to i64
  %b.i26 = getelementptr inbounds nuw i32, ptr %_27, i64 %count2.i25
  %count3.i27 = select i1 %_0.i9.i21, i64 3, i64 2
  %c.i28 = getelementptr inbounds nuw i32, ptr %_27, i64 %count3.i27
  %count4.i29 = select i1 %_0.i9.i21, i64 2, i64 3
  %d.i30 = getelementptr inbounds nuw i32, ptr %_27, i64 %count4.i29
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1356)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1359)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1361)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1364)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1366)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1369)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1371)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1374)
  %_3.i.i.i.i10.i31 = load i32, ptr %c.i28, align 4, !alias.scope !1376, !noalias !1377, !noundef !37
  %_4.i.i.i.i11.i32 = load i32, ptr %a.i23, align 4, !alias.scope !1377, !noalias !1376, !noundef !37
  %_0.i12.i33 = icmp slt i32 %_3.i.i.i.i10.i31, %_4.i.i.i.i11.i32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1378)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1381)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1383)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1386)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1388)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1391)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1393)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1396)
  %_3.i.i.i.i13.i34 = load i32, ptr %d.i30, align 4, !alias.scope !1398, !noalias !1399, !noundef !37
  %_4.i.i.i.i14.i35 = load i32, ptr %b.i26, align 4, !alias.scope !1399, !noalias !1398, !noundef !37
  %_0.i15.i36 = icmp slt i32 %_3.i.i.i.i13.i34, %_4.i.i.i.i14.i35
  %10 = select i1 %_0.i12.i33, ptr %c.i28, ptr %a.i23, !unpredictable !37
  %11 = select i1 %_0.i15.i36, ptr %c.i28, ptr %b.i26, !unpredictable !37
  %12 = select i1 %_0.i12.i33, ptr %a.i23, ptr %11, !unpredictable !37
  %13 = select i1 %_0.i12.i33, ptr %b.i26, ptr %c.i28, !unpredictable !37
  %14 = select i1 %_0.i15.i36, ptr %d.i30, ptr %13, !unpredictable !37
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1400)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1403)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1405)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1408)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1410)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1413)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1415)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1418)
  %_3.i.i.i.i16.i37 = load i32, ptr %14, align 4, !alias.scope !1420, !noalias !1421, !noundef !37
  %_4.i.i.i.i17.i38 = load i32, ptr %12, align 4, !alias.scope !1421, !noalias !1420, !noundef !37
  %15 = load i32, ptr %10, align 4
  store i32 %15, ptr %_28, align 4
  %dst5.i40 = getelementptr inbounds nuw i8, ptr %_28, i64 4
  %16 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i16.i37, i32 %_4.i.i.i.i17.i38)
  store i32 %16, ptr %dst5.i40, align 4
  %dst6.i43 = getelementptr inbounds nuw i8, ptr %_28, i64 8
  %17 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i16.i37, i32 %_4.i.i.i.i17.i38)
  store i32 %17, ptr %dst6.i43, align 4
  %18 = getelementptr inbounds nuw i8, ptr %_28, i64 12
  %19 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i13.i34, i32 %_4.i.i.i.i14.i35)
  store i32 %19, ptr %18, align 4
  br label %bb15

bb46:                                             ; preds = %bb9
  %20 = load i32, ptr %v.0, align 4
  store i32 %20, ptr %scratch.0, align 4
  %_31 = getelementptr inbounds nuw i32, ptr %v.0, i64 %len_div_211
  %21 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211
  %22 = load i32, ptr %_31, align 4
  store i32 %22, ptr %21, align 4
  br label %bb15

bb15:                                             ; preds = %bb46, %bb10, %bb6
  %presorted_len.sroa.0.0 = phi i64 [ 8, %bb6 ], [ 4, %bb10 ], [ 1, %bb46 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %iter)
  store i64 0, ptr %iter, align 8
  %_37.sroa.4.0.iter.sroa_idx = getelementptr inbounds nuw i8, ptr %iter, i64 8
  store i64 2, ptr %_37.sroa.4.0.iter.sroa_idx, align 8
  %_37.sroa.5.0.iter.sroa_idx = getelementptr inbounds nuw i8, ptr %iter, i64 16
  store i64 0, ptr %_37.sroa.5.0.iter.sroa_idx, align 8
  %_37.sroa.6.0.iter.sroa_idx = getelementptr inbounds nuw i8, ptr %iter, i64 24
  store i64 %len_div_211, ptr %_37.sroa.6.0.iter.sroa_idx, align 8
  %23 = sub nsw i64 %v.1, %len_div_211
  %iter1.sroa.0.161 = add nuw nsw i64 %presorted_len.sroa.0.0, 1
  br label %bb16

bb16:                                             ; preds = %bb16.backedge, %bb15
  %24 = phi i64 [ 0, %bb15 ], [ %25, %bb16.backedge ]
  %_5.not.i.not = icmp eq i64 %24, 2
  br i1 %_5.not.i.not, label %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17hb49c9d1ba10adf46E.exit", label %bb1.i

bb1.i:                                            ; preds = %bb16
  %_11.i = add nuw nsw i64 %24, 1
  store i64 %_11.i, ptr %iter, align 8, !alias.scope !1422
  %_20.i = icmp ult i64 %24, 2
  tail call void @llvm.assume(i1 %_20.i)
  %self3.i = getelementptr inbounds nuw i64, ptr %_37.sroa.5.0.iter.sroa_idx, i64 %24
  %_15.i = load i64, ptr %self3.i, align 8, !alias.scope !1422, !noundef !37
  br label %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17hb49c9d1ba10adf46E.exit"

"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17hb49c9d1ba10adf46E.exit": ; preds = %bb16, %bb1.i
  %25 = phi i64 [ %_11.i, %bb1.i ], [ %24, %bb16 ]
  %_0.sroa.3.0.i = phi i64 [ %_15.i, %bb1.i ], [ undef, %bb16 ]
  br i1 %_5.not.i.not, label %bb19, label %bb18

bb18:                                             ; preds = %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17hb49c9d1ba10adf46E.exit"
  %src5 = getelementptr inbounds nuw i32, ptr %v.0, i64 %_0.sroa.3.0.i
  %dst6 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %_0.sroa.3.0.i
  %_47 = icmp eq i64 %_0.sroa.3.0.i, 0
  %desired_len.sroa.0.0 = select i1 %_47, i64 %len_div_211, i64 %23
  %_8059 = icmp ult i64 %presorted_len.sroa.0.0, %desired_len.sroa.0.0
  br i1 %_8059, label %bb24, label %bb16.backedge

bb16.backedge:                                    ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h8d444b17020be90bE.exit, %bb18
  br label %bb16

bb19:                                             ; preds = %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17hb49c9d1ba10adf46E.exit"
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %iter)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1425)
  %count1.i = add nsw i64 %v.1, -1
  %26 = getelementptr inbounds nuw i32, ptr %v.0, i64 %count1.i
  %27 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %count1.i
  %28 = getelementptr i32, ptr %scratch.0, i64 %len_div_211
  %29 = getelementptr i8, ptr %28, i64 -4
  br label %bb15.i

bb16.i:                                           ; preds = %bb15.i
  %30 = getelementptr i8, ptr %35, i64 4
  %31 = getelementptr i8, ptr %34, i64 4
  %_44.i = and i64 %v.1, 1
  %_22.i = icmp eq i64 %_44.i, 0
  br i1 %_22.i, label %bb9.i, label %bb5.i

bb15.i:                                           ; preds = %bb15.i, %bb19
  %dst.sroa.0.029.i = phi ptr [ %_16.i.i, %bb15.i ], [ %v.0, %bb19 ]
  %iter.sroa.0.028.i = phi i64 [ %_39.i, %bb15.i ], [ 0, %bb19 ]
  %left.sroa.0.027.i = phi ptr [ %_14.i.i, %bb15.i ], [ %scratch.0, %bb19 ]
  %right.sroa.0.026.i = phi ptr [ %_12.i.i, %bb15.i ], [ %28, %bb19 ]
  %left_rev.sroa.0.025.i = phi ptr [ %35, %bb15.i ], [ %29, %bb19 ]
  %right_rev.sroa.0.024.i = phi ptr [ %34, %bb15.i ], [ %27, %bb19 ]
  %dst_rev.sroa.0.023.i = phi ptr [ %36, %bb15.i ], [ %26, %bb19 ]
  %_39.i = add nuw nsw i64 %iter.sroa.0.028.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1428)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1431)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1433), !noalias !1436
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1439), !noalias !1436
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1441), !noalias !1436
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1444), !noalias !1436
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1446), !noalias !1436
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1449), !noalias !1436
  %_3.i.i.i.i.i49 = load i32, ptr %right.sroa.0.026.i, align 4, !alias.scope !1451, !noalias !1452, !noundef !37
  %_4.i.i.i.i.i50 = load i32, ptr %left.sroa.0.027.i, align 4, !alias.scope !1453, !noalias !1454, !noundef !37
  %_0.i.i51 = icmp slt i32 %_3.i.i.i.i.i49, %_4.i.i.i.i.i50
  %is_l.i18.i = xor i1 %_0.i.i51, true
  %32 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i49, i32 %_4.i.i.i.i.i50)
  store i32 %32, ptr %dst.sroa.0.029.i, align 4, !noalias !1455
  %count.i.i = zext i1 %_0.i.i51 to i64
  %_12.i.i = getelementptr inbounds nuw i32, ptr %right.sroa.0.026.i, i64 %count.i.i
  %count2.i.i = zext i1 %is_l.i18.i to i64
  %_14.i.i = getelementptr inbounds nuw i32, ptr %left.sroa.0.027.i, i64 %count2.i.i
  %_16.i.i = getelementptr inbounds nuw i8, ptr %dst.sroa.0.029.i, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1457)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1460)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1462), !noalias !1465
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1468), !noalias !1465
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1470), !noalias !1465
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1473), !noalias !1465
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1475), !noalias !1465
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1478), !noalias !1465
  %_3.i.i.i.i19.i = load i32, ptr %right_rev.sroa.0.024.i, align 4, !alias.scope !1480, !noalias !1481, !noundef !37
  %_4.i.i.i.i20.i = load i32, ptr %left_rev.sroa.0.025.i, align 4, !alias.scope !1482, !noalias !1483, !noundef !37
  %_0.i21.i = icmp slt i32 %_3.i.i.i.i19.i, %_4.i.i.i.i20.i
  %is_l.i.i = xor i1 %_0.i21.i, true
  %33 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19.i, i32 %_4.i.i.i.i20.i)
  store i32 %33, ptr %dst_rev.sroa.0.023.i, align 4, !noalias !1484
  %count.neg.i.i = sext i1 %is_l.i.i to i64
  %34 = getelementptr i32, ptr %right_rev.sroa.0.024.i, i64 %count.neg.i.i
  %count3.neg.i.i = sext i1 %_0.i21.i to i64
  %35 = getelementptr i32, ptr %left_rev.sroa.0.025.i, i64 %count3.neg.i.i
  %36 = getelementptr inbounds i8, ptr %dst_rev.sroa.0.023.i, i64 -4
  %exitcond.not.i = icmp eq i64 %_39.i, %len_div_211
  br i1 %exitcond.not.i, label %bb16.i, label %bb15.i

bb5.i:                                            ; preds = %bb16.i
  %left_nonempty.i = icmp ult ptr %_14.i.i, %30
  %left.sroa.0.0.right.sroa.0.0.i = select i1 %left_nonempty.i, ptr %_14.i.i, ptr %_12.i.i
  %37 = load i32, ptr %left.sroa.0.0.right.sroa.0.0.i, align 4, !alias.scope !1425
  store i32 %37, ptr %_16.i.i, align 4, !noalias !1425
  %count2.i52 = zext i1 %left_nonempty.i to i64
  %_26.i = getelementptr inbounds nuw i32, ptr %_14.i.i, i64 %count2.i52
  %_30.i = xor i1 %left_nonempty.i, true
  %count3.i53 = zext i1 %_30.i to i64
  %_28.i = getelementptr inbounds nuw i32, ptr %_12.i.i, i64 %count3.i53
  br label %bb9.i

bb9.i:                                            ; preds = %bb5.i, %bb16.i
  %right.sroa.0.1.i = phi ptr [ %_12.i.i, %bb16.i ], [ %_28.i, %bb5.i ]
  %left.sroa.0.1.i = phi ptr [ %_14.i.i, %bb16.i ], [ %_26.i, %bb5.i ]
  %_31.i = icmp ne ptr %left.sroa.0.1.i, %30
  %_32.i = icmp ne ptr %right.sroa.0.1.i, %31
  %or.cond.i = select i1 %_31.i, i1 true, i1 %_32.i
  br i1 %or.cond.i, label %bb13.i, label %bb29, !prof !898

bb13.i:                                           ; preds = %bb9.i
; invoke core::slice::sort::shared::smallsort::panic_on_ord_violation
  invoke void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #32
          to label %.noexc unwind label %cleanup2

.noexc:                                           ; preds = %bb13.i
  unreachable

cleanup2:                                         ; preds = %bb13.i
  %38 = landingpad { ptr, i32 }
          cleanup
  %39 = shl nuw nsw i64 %v.1, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.0, ptr nonnull align 4 %scratch.0, i64 %39, i1 false), !noalias !1486
  resume { ptr, i32 } %38

bb29:                                             ; preds = %bb9.i, %start
  ret void

bb24:                                             ; preds = %bb18, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h8d444b17020be90bE.exit
  %iter1.sroa.0.163 = phi i64 [ %iter1.sroa.0.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h8d444b17020be90bE.exit ], [ %iter1.sroa.0.161, %bb18 ]
  %iter1.sroa.0.062 = phi i64 [ %iter1.sroa.0.163, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h8d444b17020be90bE.exit ], [ %presorted_len.sroa.0.0, %bb18 ]
  %_55 = getelementptr inbounds nuw i32, ptr %src5, i64 %iter1.sroa.0.062
  %dst7 = getelementptr inbounds nuw i32, ptr %dst6, i64 %iter1.sroa.0.062
  %40 = load i32, ptr %_55, align 4
  store i32 %40, ptr %dst7, align 4
  %41 = getelementptr inbounds i8, ptr %dst7, i64 -4
  %_4.i.i.i.i.i56 = load i32, ptr %41, align 4, !alias.scope !1491, !noalias !1500, !noundef !37
  %_0.i.i57 = icmp slt i32 %40, %_4.i.i.i.i.i56
  br i1 %_0.i.i57, label %bb4.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h8d444b17020be90bE.exit

bb4.i:                                            ; preds = %bb24, %bb6.i
  %gap_guard.sroa.5.0.i = phi ptr [ %sift.sroa.0.0.i, %bb6.i ], [ %dst7, %bb24 ]
  %sift.sroa.0.0.i = phi ptr [ %43, %bb6.i ], [ %41, %bb24 ]
  %42 = load i32, ptr %sift.sroa.0.0.i, align 4
  store i32 %42, ptr %gap_guard.sroa.5.0.i, align 4
  %_18.i = icmp eq ptr %sift.sroa.0.0.i, %dst6
  br i1 %_18.i, label %bb10.i, label %bb6.i

bb6.i:                                            ; preds = %bb4.i
  %43 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i, i64 -4
  %_4.i.i.i.i2.i = load i32, ptr %43, align 4, !alias.scope !1505, !noalias !1514, !noundef !37
  %_0.i3.i = icmp slt i32 %40, %_4.i.i.i.i2.i
  br i1 %_0.i3.i, label %bb4.i, label %bb10.i

bb10.i:                                           ; preds = %bb6.i, %bb4.i
  store i32 %40, ptr %sift.sroa.0.0.i, align 4, !noalias !1519
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h8d444b17020be90bE.exit

_ZN4core5slice4sort6shared9smallsort11insert_tail17h8d444b17020be90bE.exit: ; preds = %bb24, %bb10.i
  %_80 = icmp ult i64 %iter1.sroa.0.163, %desired_len.sroa.0.0
  %_84 = zext i1 %_80 to i64
  %iter1.sroa.0.1 = add nuw i64 %iter1.sroa.0.163, %_84
  br i1 %_80, label %bb24, label %bb16.backedge
}

; core::slice::sort::stable::driftsort_main
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable14driftsort_main17h4e47b3ce28504335E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #9 personality ptr @rust_eh_personality {
start:
  %_4.i.i = alloca [24 x i8], align 8
  %heap_buf = alloca [24 x i8], align 8
  %stack_buf = alloca [4096 x i8], align 4
  %_105 = lshr i64 %v.1, 1
  %v1 = sub nsw i64 %v.1, %_105
  %_0.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %v.1, i64 2000000)
  %_0.sroa.0.0.i6 = tail call noundef i64 @llvm.umax.i64(i64 %_0.sroa.0.0.i, i64 %v1)
  %_0.sroa.0.0.i7 = tail call noundef i64 @llvm.umax.i64(i64 %_0.sroa.0.0.i6, i64 48)
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %stack_buf)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %heap_buf)
  %_15 = icmp ult i64 %_0.sroa.0.0.i6, 1025
  br i1 %_15, label %bb8, label %bb4

bb4:                                              ; preds = %start
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4.i.i), !noalias !1524
; invoke alloc::raw_vec::RawVecInner<A>::try_allocate_in
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_4.i.i, i64 noundef %_0.sroa.0.0.i7, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %bb4
  %_5.i.i = load i64, ptr %_4.i.i, align 8, !range !1527, !noalias !1524, !noundef !37
  %0 = trunc nuw i64 %_5.i.i to i1
  %1 = getelementptr inbounds nuw i8, ptr %_4.i.i, i64 8
  %err.0.i.i = load i64, ptr %1, align 8, !range !1528, !noalias !1524, !noundef !37
  %2 = getelementptr inbounds nuw i8, ptr %_4.i.i, i64 16
  br i1 %0, label %bb3.i.i, label %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h902fd1cdf4522e46E.exit", !prof !1529

bb3.i.i:                                          ; preds = %.noexc
  %err.1.i.i = load i64, ptr %2, align 8, !noalias !1524
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #33
          to label %.noexc8 unwind label %cleanup

.noexc8:                                          ; preds = %bb3.i.i
  unreachable

"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h902fd1cdf4522e46E.exit": ; preds = %.noexc
  %this.1.i.i = load ptr, ptr %2, align 8, !noalias !1524, !nonnull !37, !noundef !37
  %_7.i.i = icmp ule i64 %_0.sroa.0.0.i7, %err.0.i.i
  tail call void @llvm.assume(i1 %_7.i.i)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4.i.i), !noalias !1524
  store i64 %err.0.i.i, ptr %heap_buf, align 8
  %_18.sroa.4.0.heap_buf.sroa_idx = getelementptr inbounds nuw i8, ptr %heap_buf, i64 8
  store ptr %this.1.i.i, ptr %_18.sroa.4.0.heap_buf.sroa_idx, align 8
  %_18.sroa.5.0.heap_buf.sroa_idx = getelementptr inbounds nuw i8, ptr %heap_buf, i64 16
  store i64 0, ptr %_18.sroa.5.0.heap_buf.sroa_idx, align 8
  br label %bb8

cleanup:                                          ; preds = %bb3.i.i, %bb4, %bb8
  %_24.sroa.0.0 = phi i8 [ %_24.sroa.0.1, %bb8 ], [ 0, %bb4 ], [ 0, %bb3.i.i ]
  %3 = landingpad { ptr, i32 }
          cleanup
  %4 = trunc nuw i8 %_24.sroa.0.0 to i1
  br i1 %4, label %bb13, label %bb11

bb8:                                              ; preds = %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h902fd1cdf4522e46E.exit", %start
  %_24.sroa.0.1 = phi i8 [ 0, %start ], [ 1, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h902fd1cdf4522e46E.exit" ]
  %stack_scratch.sroa.4.0 = phi i64 [ 1024, %start ], [ %err.0.i.i, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h902fd1cdf4522e46E.exit" ]
  %stack_buf.pn = phi ptr [ %stack_buf, %start ], [ %this.1.i.i, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h902fd1cdf4522e46E.exit" ]
  %eager_sort = icmp samesign ult i64 %v.1, 65
; invoke core::slice::sort::stable::drift::sort
  invoke void @_ZN4core5slice4sort6stable5drift4sort17h753da6aa311033faE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 4 %stack_buf.pn, i64 noundef %stack_scratch.sroa.4.0, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less)
          to label %bb9 unwind label %cleanup

bb9:                                              ; preds = %bb8
  %5 = trunc nuw i8 %_24.sroa.0.1 to i1
  br i1 %5, label %bb12, label %bb10

bb10:                                             ; preds = %bb12, %bb9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %heap_buf)
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %stack_buf)
  ret void

bb12:                                             ; preds = %bb9
; call alloc::raw_vec::RawVecInner<A>::deallocate
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %heap_buf, i64 noundef 4, i64 noundef 4)
  br label %bb10

bb11:                                             ; preds = %bb13, %cleanup
  resume { ptr, i32 } %3

bb13:                                             ; preds = %cleanup
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %heap_buf, i64 noundef 4, i64 noundef 4)
          to label %bb11 unwind label %terminate

terminate:                                        ; preds = %bb13
  %6 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #31
  unreachable
}

; core::slice::sort::stable::driftsort_main
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable14driftsort_main17had053cf2c77a0b49E(ptr noalias noundef nonnull align 8 %v.0, i64 noundef range(i64 0, 384307168202282326) %v.1, ptr noalias noundef nonnull align 1 %is_less) unnamed_addr #9 personality ptr @rust_eh_personality {
start:
  %_4.i.i = alloca [24 x i8], align 8
  %heap_buf = alloca [24 x i8], align 8
  %stack_buf = alloca [4096 x i8], align 8
  %_105 = lshr i64 %v.1, 1
  %v1 = sub nsw i64 %v.1, %_105
  %_0.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %v.1, i64 333333)
  %_0.sroa.0.0.i6 = tail call noundef i64 @llvm.umax.i64(i64 %_0.sroa.0.0.i, i64 %v1)
  %_0.sroa.0.0.i7 = tail call noundef i64 @llvm.umax.i64(i64 %_0.sroa.0.0.i6, i64 48)
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %stack_buf)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %heap_buf)
  %_15 = icmp ult i64 %_0.sroa.0.0.i6, 171
  br i1 %_15, label %bb8, label %bb4

bb4:                                              ; preds = %start
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4.i.i), !noalias !1530
; invoke alloc::raw_vec::RawVecInner<A>::try_allocate_in
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_4.i.i, i64 noundef %_0.sroa.0.0.i7, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24)
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %bb4
  %_5.i.i = load i64, ptr %_4.i.i, align 8, !range !1527, !noalias !1530, !noundef !37
  %0 = trunc nuw i64 %_5.i.i to i1
  %1 = getelementptr inbounds nuw i8, ptr %_4.i.i, i64 8
  %err.0.i.i = load i64, ptr %1, align 8, !range !1528, !noalias !1530, !noundef !37
  %2 = getelementptr inbounds nuw i8, ptr %_4.i.i, i64 16
  br i1 %0, label %bb3.i.i, label %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h7c1b0be8a5f89fe9E.exit", !prof !1529

bb3.i.i:                                          ; preds = %.noexc
  %err.1.i.i = load i64, ptr %2, align 8, !noalias !1530
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #33
          to label %.noexc8 unwind label %cleanup

.noexc8:                                          ; preds = %bb3.i.i
  unreachable

"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h7c1b0be8a5f89fe9E.exit": ; preds = %.noexc
  %this.1.i.i = load ptr, ptr %2, align 8, !noalias !1530, !nonnull !37, !noundef !37
  %_7.i.i = icmp ule i64 %_0.sroa.0.0.i7, %err.0.i.i
  tail call void @llvm.assume(i1 %_7.i.i)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4.i.i), !noalias !1530
  store i64 %err.0.i.i, ptr %heap_buf, align 8
  %_18.sroa.4.0.heap_buf.sroa_idx = getelementptr inbounds nuw i8, ptr %heap_buf, i64 8
  store ptr %this.1.i.i, ptr %_18.sroa.4.0.heap_buf.sroa_idx, align 8
  %_18.sroa.5.0.heap_buf.sroa_idx = getelementptr inbounds nuw i8, ptr %heap_buf, i64 16
  store i64 0, ptr %_18.sroa.5.0.heap_buf.sroa_idx, align 8
  br label %bb8

cleanup:                                          ; preds = %bb3.i.i, %bb4, %bb8
  %_24.sroa.0.0 = phi i8 [ %_24.sroa.0.1, %bb8 ], [ 0, %bb4 ], [ 0, %bb3.i.i ]
  %3 = landingpad { ptr, i32 }
          cleanup
  %4 = trunc nuw i8 %_24.sroa.0.0 to i1
  br i1 %4, label %bb13, label %common.resume

bb8:                                              ; preds = %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h7c1b0be8a5f89fe9E.exit", %start
  %_24.sroa.0.1 = phi i8 [ 0, %start ], [ 1, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h7c1b0be8a5f89fe9E.exit" ]
  %stack_scratch.sroa.4.0 = phi i64 [ 170, %start ], [ %err.0.i.i, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h7c1b0be8a5f89fe9E.exit" ]
  %stack_buf.pn = phi ptr [ %stack_buf, %start ], [ %this.1.i.i, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h7c1b0be8a5f89fe9E.exit" ]
  %eager_sort = icmp samesign ult i64 %v.1, 65
; invoke core::slice::sort::stable::drift::sort
  invoke void @_ZN4core5slice4sort6stable5drift4sort17h0c433fc08a1d1e26E(ptr noalias noundef nonnull align 8 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 8 %stack_buf.pn, i64 noundef %stack_scratch.sroa.4.0, i1 noundef zeroext %eager_sort, ptr noalias noundef nonnull align 1 %is_less)
          to label %bb9 unwind label %cleanup

bb9:                                              ; preds = %bb8
  %5 = trunc nuw i8 %_24.sroa.0.1 to i1
  br i1 %5, label %bb12, label %bb10

bb10:                                             ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17he3d388727106a310E.exit", %bb9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %heap_buf)
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %stack_buf)
  ret void

bb12:                                             ; preds = %bb9
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3a1990cca6413e04E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %heap_buf)
          to label %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17he3d388727106a310E.exit" unwind label %cleanup.i

cleanup.i:                                        ; preds = %bb12
  %6 = landingpad { ptr, i32 }
          cleanup
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %heap_buf, i64 noundef 8, i64 noundef 24)
          to label %common.resume unwind label %terminate.i

terminate.i:                                      ; preds = %cleanup.i
  %7 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #31
  unreachable

common.resume:                                    ; preds = %cleanup, %bb13, %cleanup.i
  %common.resume.op = phi { ptr, i32 } [ %6, %cleanup.i ], [ %3, %bb13 ], [ %3, %cleanup ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17he3d388727106a310E.exit": ; preds = %bb12
; call alloc::raw_vec::RawVecInner<A>::deallocate
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %heap_buf, i64 noundef 8, i64 noundef 24)
  br label %bb10

bb13:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::string::String>>
  invoke fastcc void @"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17he3d388727106a310E"(ptr noalias noundef align 8 dereferenceable(24) %heap_buf) #34
          to label %common.resume unwind label %terminate

terminate:                                        ; preds = %bb13
  %8 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #31
  unreachable
}

; core::slice::sort::stable::AlignedStorage<T,_>::as_uninit_slice_mut
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, i64 } @"_ZN4core5slice4sort6stable27AlignedStorage$LT$T$C$_$GT$19as_uninit_slice_mut17h26c0b4b5889ad583E"(ptr noalias noundef align 4 dereferenceable(4096) %self) unnamed_addr #10 {
start:
  %0 = insertvalue { ptr, i64 } poison, ptr %self, 0
  %1 = insertvalue { ptr, i64 } %0, i64 1024, 1
  ret { ptr, i64 } %1
}

; core::slice::sort::stable::AlignedStorage<T,_>::as_uninit_slice_mut
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, i64 } @"_ZN4core5slice4sort6stable27AlignedStorage$LT$T$C$_$GT$19as_uninit_slice_mut17haaff0ca1c4fa1fb7E"(ptr noalias noundef align 8 dereferenceable(4096) %self) unnamed_addr #10 {
start:
  %0 = insertvalue { ptr, i64 } poison, ptr %self, 0
  %1 = insertvalue { ptr, i64 } %0, i64 170, 1
  ret { ptr, i64 } %1
}

; core::slice::sort::stable::drift::create_run
; Function Attrs: nonlazybind uwtable
define noundef range(i64 0, -1) i64 @_ZN4core5slice4sort6stable5drift10create_run17h01028071545c4604E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %min_good_run_len, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_7.not = icmp ult i64 %v.1, %min_good_run_len
  br i1 %_7.not, label %bb7, label %bb1

bb7:                                              ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h5487a28fb4abfd8fE.exit, %start
  br i1 %eager_sort, label %bb8, label %bb11

bb1:                                              ; preds = %start
  %_4.i = icmp samesign ult i64 %v.1, 2
  br i1 %_4.i, label %_ZN4core5slice4sort6shared17find_existing_run17h5487a28fb4abfd8fE.exit, label %bb2.i

bb2.i:                                            ; preds = %bb1
  %_28.i = getelementptr inbounds nuw i8, ptr %v.0, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1533)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1536)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1538)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1541)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1543)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1546)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1548)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1551)
  %_3.i.i.i.i = load i32, ptr %_28.i, align 4, !alias.scope !1553, !noalias !1554, !noundef !37
  %_4.i.i.i.i = load i32, ptr %v.0, align 4, !alias.scope !1554, !noalias !1553, !noundef !37
  %_0.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %_10.i13.not = icmp eq i64 %v.1, 2
  br i1 %_0.i, label %bb4.i.preheader, label %bb11.i.preheader

bb11.i.preheader:                                 ; preds = %bb2.i
  br i1 %_10.i13.not, label %_ZN4core5slice4sort6shared17find_existing_run17h5487a28fb4abfd8fE.exit, label %bb12.i.preheader

bb12.i.preheader:                                 ; preds = %bb11.i.preheader
  %invariant.gep = getelementptr i8, ptr %v.0, i64 -4
  br label %bb12.i

bb4.i.preheader:                                  ; preds = %bb2.i
  br i1 %_10.i13.not, label %_ZN4core5slice4sort6shared17find_existing_run17h5487a28fb4abfd8fE.exit, label %bb5.i.preheader

bb5.i.preheader:                                  ; preds = %bb4.i.preheader
  %invariant.gep24 = getelementptr i8, ptr %v.0, i64 -4
  br label %bb5.i

bb12.i:                                           ; preds = %bb12.i.preheader, %bb15.i
  %run_len.sroa.0.0.i11 = phi i64 [ %1, %bb15.i ], [ 2, %bb12.i.preheader ]
  %0 = getelementptr inbounds nuw i32, ptr %v.0, i64 %run_len.sroa.0.0.i11
  %gep = getelementptr i32, ptr %invariant.gep, i64 %run_len.sroa.0.0.i11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1555)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1558)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1560)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1563)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1565)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1568)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1570)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1573)
  %_3.i.i.i.i1 = load i32, ptr %0, align 4, !alias.scope !1575, !noalias !1576, !noundef !37
  %_4.i.i.i.i2 = load i32, ptr %gep, align 4, !alias.scope !1576, !noalias !1575, !noundef !37
  %_0.i3 = icmp slt i32 %_3.i.i.i.i1, %_4.i.i.i.i2
  br i1 %_0.i3, label %_ZN4core5slice4sort6shared17find_existing_run17h5487a28fb4abfd8fE.exit, label %bb15.i

bb15.i:                                           ; preds = %bb12.i
  %1 = add nuw nsw i64 %run_len.sroa.0.0.i11, 1
  %exitcond.not = icmp eq i64 %1, %v.1
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h5487a28fb4abfd8fE.exit, label %bb12.i

bb5.i:                                            ; preds = %bb5.i.preheader, %bb7.i
  %run_len.sroa.0.1.i14 = phi i64 [ %3, %bb7.i ], [ 2, %bb5.i.preheader ]
  %2 = getelementptr inbounds nuw i32, ptr %v.0, i64 %run_len.sroa.0.1.i14
  %gep25 = getelementptr i32, ptr %invariant.gep24, i64 %run_len.sroa.0.1.i14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1577)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1580)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1582)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1585)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1587)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1590)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1592)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1595)
  %_3.i.i.i.i4 = load i32, ptr %2, align 4, !alias.scope !1597, !noalias !1598, !noundef !37
  %_4.i.i.i.i5 = load i32, ptr %gep25, align 4, !alias.scope !1598, !noalias !1597, !noundef !37
  %_0.i6 = icmp slt i32 %_3.i.i.i.i4, %_4.i.i.i.i5
  br i1 %_0.i6, label %bb7.i, label %_ZN4core5slice4sort6shared17find_existing_run17h5487a28fb4abfd8fE.exit

bb7.i:                                            ; preds = %bb5.i
  %3 = add nuw nsw i64 %run_len.sroa.0.1.i14, 1
  %exitcond19.not = icmp eq i64 %3, %v.1
  br i1 %exitcond19.not, label %_ZN4core5slice4sort6shared17find_existing_run17h5487a28fb4abfd8fE.exit, label %bb5.i

_ZN4core5slice4sort6shared17find_existing_run17h5487a28fb4abfd8fE.exit: ; preds = %bb12.i, %bb15.i, %bb5.i, %bb7.i, %bb11.i.preheader, %bb4.i.preheader, %bb1
  %_0.sroa.3.0.i = phi i1 [ false, %bb1 ], [ true, %bb4.i.preheader ], [ false, %bb11.i.preheader ], [ true, %bb7.i ], [ true, %bb5.i ], [ false, %bb15.i ], [ false, %bb12.i ]
  %_0.sroa.0.0.i = phi i64 [ %v.1, %bb1 ], [ 2, %bb4.i.preheader ], [ 2, %bb11.i.preheader ], [ %run_len.sroa.0.1.i14, %bb5.i ], [ %v.1, %bb7.i ], [ %run_len.sroa.0.0.i11, %bb12.i ], [ %v.1, %bb15.i ]
  %_12 = icmp samesign ule i64 %_0.sroa.0.0.i, %v.1
  tail call void @llvm.assume(i1 %_12)
  %_13.not = icmp ult i64 %_0.sroa.0.0.i, %min_good_run_len
  br i1 %_13.not, label %bb7, label %bb3

bb3:                                              ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h5487a28fb4abfd8fE.exit
  br i1 %_0.sroa.3.0.i, label %bb14, label %bb5

bb11:                                             ; preds = %bb7
  %_0.sroa.0.0.i7 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 -2305843009213693950, 2305843009213693952) %v.1, i64 %min_good_run_len)
  %_36 = shl nuw nsw i64 %_0.sroa.0.0.i7, 1
  br label %bb12

bb8:                                              ; preds = %bb7
  %_0.sroa.0.0.i8 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 -2305843009213693950, 2305843009213693952) %v.1, i64 32)
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hdfb2cdee762e95a0E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %_0.sroa.0.0.i8, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef 0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef align 8 dereferenceable(8) %is_less) #35
  %_35 = shl nuw nsw i64 %_0.sroa.0.0.i8, 1
  %_34 = or disjoint i64 %_35, 1
  br label %bb12

bb12:                                             ; preds = %bb5, %bb8, %bb11
  %_0.sroa.0.0 = phi i64 [ %_26, %bb5 ], [ %_34, %bb8 ], [ %_36, %bb11 ]
  ret i64 %_0.sroa.0.0

bb5.loopexit.unr-lcssa:                           ; preds = %bb5.i.i, %bb5.i.i.preheader
  %i.sroa.0.016.i.i.unr = phi i64 [ 0, %bb5.i.i.preheader ], [ %15, %bb5.i.i ]
  %4 = and i64 %_0.sroa.0.0.i, 2
  %lcmp.mod.not = icmp eq i64 %4, 0
  br i1 %lcmp.mod.not, label %bb5, label %bb5.i.i.epil

bb5.i.i.epil:                                     ; preds = %bb5.loopexit.unr-lcssa
  %5 = xor i64 %i.sroa.0.016.i.i.unr, -1
  %x.i.i.epil = getelementptr inbounds nuw i32, ptr %v.0, i64 %i.sroa.0.016.i.i.unr
  %y.i.i.epil = getelementptr i32, ptr %end.i, i64 %5
  %6 = load i32, ptr %x.i.i.epil, align 4, !alias.scope !1599, !noalias !1604, !noundef !37
  %7 = load i32, ptr %y.i.i.epil, align 4, !alias.scope !1606, !noalias !1607
  store i32 %7, ptr %x.i.i.epil, align 4, !alias.scope !1599, !noalias !1604
  store i32 %6, ptr %y.i.i.epil, align 4, !alias.scope !1606, !noalias !1607
  br label %bb5

bb5:                                              ; preds = %bb5.i.i.epil, %bb5.loopexit.unr-lcssa, %bb14, %bb3
  %_27 = shl nuw nsw i64 %_0.sroa.0.0.i, 1
  %_26 = or disjoint i64 %_27, 1
  br label %bb12

bb14:                                             ; preds = %bb3
  %half_len2.i = lshr i64 %_0.sroa.0.0.i, 1
  %end.i = getelementptr inbounds nuw i32, ptr %v.0, i64 %_0.sroa.0.0.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1607)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1604)
  %_915.not.i.i = icmp samesign ult i64 %_0.sroa.0.0.i, 2
  br i1 %_915.not.i.i, label %bb5, label %bb5.i.i.preheader

bb5.i.i.preheader:                                ; preds = %bb14
  %8 = icmp eq i64 %half_len2.i, 1
  br i1 %8, label %bb5.loopexit.unr-lcssa, label %bb5.i.i.preheader.new

bb5.i.i.preheader.new:                            ; preds = %bb5.i.i.preheader
  %unroll_iter = and i64 %half_len2.i, 9223372036854775806
  %invariant.gep26 = getelementptr inbounds i8, ptr %v.0, i64 4
  br label %bb5.i.i

bb5.i.i:                                          ; preds = %bb5.i.i, %bb5.i.i.preheader.new
  %i.sroa.0.016.i.i = phi i64 [ 0, %bb5.i.i.preheader.new ], [ %15, %bb5.i.i ]
  %niter = phi i64 [ 0, %bb5.i.i.preheader.new ], [ %niter.next.1, %bb5.i.i ]
  %9 = xor i64 %i.sroa.0.016.i.i, -1
  %x.i.i = getelementptr inbounds nuw i32, ptr %v.0, i64 %i.sroa.0.016.i.i
  %y.i.i = getelementptr i32, ptr %end.i, i64 %9
  %10 = load i32, ptr %x.i.i, align 4, !alias.scope !1599, !noalias !1604, !noundef !37
  %11 = load i32, ptr %y.i.i, align 4, !alias.scope !1606, !noalias !1607
  store i32 %11, ptr %x.i.i, align 4, !alias.scope !1599, !noalias !1604
  store i32 %10, ptr %y.i.i, align 4, !alias.scope !1606, !noalias !1607
  %12 = xor i64 %i.sroa.0.016.i.i, -2
  %gep27 = getelementptr inbounds i32, ptr %invariant.gep26, i64 %i.sroa.0.016.i.i
  %y.i.i.1 = getelementptr i32, ptr %end.i, i64 %12
  %13 = load i32, ptr %gep27, align 4, !alias.scope !1599, !noalias !1604, !noundef !37
  %14 = load i32, ptr %y.i.i.1, align 4, !alias.scope !1606, !noalias !1607
  store i32 %14, ptr %gep27, align 4, !alias.scope !1599, !noalias !1604
  store i32 %13, ptr %y.i.i.1, align 4, !alias.scope !1606, !noalias !1607
  %15 = add nuw nsw i64 %i.sroa.0.016.i.i, 2
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %bb5.loopexit.unr-lcssa, label %bb5.i.i
}

; core::slice::sort::stable::drift::create_run
; Function Attrs: nonlazybind uwtable
define noundef range(i64 0, -1) i64 @_ZN4core5slice4sort6stable5drift10create_run17haa65d1d7eff1e388E(ptr noalias noundef nonnull align 8 %v.0, i64 noundef range(i64 0, 384307168202282326) %v.1, ptr noalias noundef nonnull align 8 %scratch.0, i64 noundef range(i64 0, 384307168202282326) %scratch.1, i64 noundef %min_good_run_len, i1 noundef zeroext %eager_sort, ptr noalias noundef nonnull align 1 %is_less) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_7.not = icmp ult i64 %v.1, %min_good_run_len
  br i1 %_7.not, label %bb7, label %bb1

bb7:                                              ; preds = %_ZN4core5slice4sort6shared17find_existing_run17ha85e74fa05112b79E.exit, %start
  br i1 %eager_sort, label %bb8, label %bb11

bb1:                                              ; preds = %start
  %_4.i = icmp samesign ult i64 %v.1, 2
  br i1 %_4.i, label %_ZN4core5slice4sort6shared17find_existing_run17ha85e74fa05112b79E.exit, label %bb2.i

bb2.i:                                            ; preds = %bb1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1608)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1611)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1613)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1616)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1618)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1621)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1623)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1626)
  %0 = getelementptr inbounds nuw i8, ptr %v.0, i64 32
  %_7.i.i.i.i = load ptr, ptr %0, align 8, !alias.scope !1628, !noalias !1629, !nonnull !37, !noundef !37
  %1 = getelementptr inbounds nuw i8, ptr %v.0, i64 40
  %len1.i.i.i.i = load i64, ptr %1, align 8, !alias.scope !1628, !noalias !1629, !noundef !37
  %2 = getelementptr inbounds nuw i8, ptr %v.0, i64 8
  %_14.i.i.i.i = load ptr, ptr %2, align 8, !alias.scope !1629, !noalias !1628, !nonnull !37, !noundef !37
  %3 = getelementptr inbounds nuw i8, ptr %v.0, i64 16
  %4 = load i64, ptr %3, align 8, !alias.scope !1629, !noalias !1628, !noundef !37
  %spec.store.select.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %len1.i.i.i.i, i64 range(i64 0, -9223372036854775808) %4)
  %5 = tail call i32 @memcmp(ptr nonnull readonly align 1 %_7.i.i.i.i, ptr nonnull readonly align 1 %_14.i.i.i.i, i64 %spec.store.select.i.i.i.i.i.i), !alias.scope !1630, !noalias !1637
  %6 = sext i32 %5 to i64
  %_15.i.i.i.i.i.i = icmp eq i32 %5, 0
  %diff.i.i.i.i.i.i = sub nsw i64 %len1.i.i.i.i, %4
  %spec.select.i.i.i.i.i.i = select i1 %_15.i.i.i.i.i.i, i64 %diff.i.i.i.i.i.i, i64 %6
  %7 = icmp slt i64 %spec.select.i.i.i.i.i.i, 0
  %_10.i21.not = icmp eq i64 %v.1, 2
  br i1 %7, label %bb4.i.preheader, label %bb11.i.preheader

bb11.i.preheader:                                 ; preds = %bb2.i
  br i1 %_10.i21.not, label %_ZN4core5slice4sort6shared17find_existing_run17ha85e74fa05112b79E.exit, label %bb12.i

bb4.i.preheader:                                  ; preds = %bb2.i
  br i1 %_10.i21.not, label %_ZN4core5slice4sort6shared17find_existing_run17ha85e74fa05112b79E.exit, label %bb5.i

bb12.i:                                           ; preds = %bb11.i.preheader, %bb15.i
  %run_len.sroa.0.0.i19 = phi i64 [ %18, %bb15.i ], [ 2, %bb11.i.preheader ]
  %8 = getelementptr inbounds nuw %"alloc::string::String", ptr %v.0, i64 %run_len.sroa.0.0.i19
  %9 = getelementptr %"alloc::string::String", ptr %v.0, i64 %run_len.sroa.0.0.i19
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1638)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1641)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1643)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1646)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1648)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1651)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1653)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1656)
  %10 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %_7.i.i.i.i1 = load ptr, ptr %10, align 8, !alias.scope !1658, !noalias !1659, !nonnull !37, !noundef !37
  %11 = getelementptr inbounds nuw i8, ptr %8, i64 16
  %len1.i.i.i.i2 = load i64, ptr %11, align 8, !alias.scope !1658, !noalias !1659, !noundef !37
  %12 = getelementptr i8, ptr %9, i64 -16
  %_14.i.i.i.i3 = load ptr, ptr %12, align 8, !alias.scope !1659, !noalias !1658, !nonnull !37, !noundef !37
  %13 = getelementptr i8, ptr %9, i64 -8
  %14 = load i64, ptr %13, align 8, !alias.scope !1659, !noalias !1658, !noundef !37
  %spec.store.select.i.i.i.i.i.i4 = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %len1.i.i.i.i2, i64 range(i64 0, -9223372036854775808) %14)
  %15 = tail call i32 @memcmp(ptr nonnull readonly align 1 %_7.i.i.i.i1, ptr nonnull readonly align 1 %_14.i.i.i.i3, i64 %spec.store.select.i.i.i.i.i.i4), !alias.scope !1660, !noalias !1667
  %16 = sext i32 %15 to i64
  %_15.i.i.i.i.i.i5 = icmp eq i32 %15, 0
  %diff.i.i.i.i.i.i6 = sub nsw i64 %len1.i.i.i.i2, %14
  %spec.select.i.i.i.i.i.i7 = select i1 %_15.i.i.i.i.i.i5, i64 %diff.i.i.i.i.i.i6, i64 %16
  %17 = icmp slt i64 %spec.select.i.i.i.i.i.i7, 0
  br i1 %17, label %_ZN4core5slice4sort6shared17find_existing_run17ha85e74fa05112b79E.exit, label %bb15.i

bb15.i:                                           ; preds = %bb12.i
  %18 = add nuw nsw i64 %run_len.sroa.0.0.i19, 1
  %exitcond.not = icmp eq i64 %18, %v.1
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17ha85e74fa05112b79E.exit, label %bb12.i

bb5.i:                                            ; preds = %bb4.i.preheader, %bb7.i
  %run_len.sroa.0.1.i22 = phi i64 [ %29, %bb7.i ], [ 2, %bb4.i.preheader ]
  %19 = getelementptr inbounds nuw %"alloc::string::String", ptr %v.0, i64 %run_len.sroa.0.1.i22
  %20 = getelementptr %"alloc::string::String", ptr %v.0, i64 %run_len.sroa.0.1.i22
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1668)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1671)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1673)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1676)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1678)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1681)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1683)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1686)
  %21 = getelementptr inbounds nuw i8, ptr %19, i64 8
  %_7.i.i.i.i8 = load ptr, ptr %21, align 8, !alias.scope !1688, !noalias !1689, !nonnull !37, !noundef !37
  %22 = getelementptr inbounds nuw i8, ptr %19, i64 16
  %len1.i.i.i.i9 = load i64, ptr %22, align 8, !alias.scope !1688, !noalias !1689, !noundef !37
  %23 = getelementptr i8, ptr %20, i64 -16
  %_14.i.i.i.i10 = load ptr, ptr %23, align 8, !alias.scope !1689, !noalias !1688, !nonnull !37, !noundef !37
  %24 = getelementptr i8, ptr %20, i64 -8
  %25 = load i64, ptr %24, align 8, !alias.scope !1689, !noalias !1688, !noundef !37
  %spec.store.select.i.i.i.i.i.i11 = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %len1.i.i.i.i9, i64 range(i64 0, -9223372036854775808) %25)
  %26 = tail call i32 @memcmp(ptr nonnull readonly align 1 %_7.i.i.i.i8, ptr nonnull readonly align 1 %_14.i.i.i.i10, i64 %spec.store.select.i.i.i.i.i.i11), !alias.scope !1690, !noalias !1697
  %27 = sext i32 %26 to i64
  %_15.i.i.i.i.i.i12 = icmp eq i32 %26, 0
  %diff.i.i.i.i.i.i13 = sub nsw i64 %len1.i.i.i.i9, %25
  %spec.select.i.i.i.i.i.i14 = select i1 %_15.i.i.i.i.i.i12, i64 %diff.i.i.i.i.i.i13, i64 %27
  %28 = icmp slt i64 %spec.select.i.i.i.i.i.i14, 0
  br i1 %28, label %bb7.i, label %_ZN4core5slice4sort6shared17find_existing_run17ha85e74fa05112b79E.exit

bb7.i:                                            ; preds = %bb5.i
  %29 = add nuw nsw i64 %run_len.sroa.0.1.i22, 1
  %exitcond27.not = icmp eq i64 %29, %v.1
  br i1 %exitcond27.not, label %_ZN4core5slice4sort6shared17find_existing_run17ha85e74fa05112b79E.exit, label %bb5.i

_ZN4core5slice4sort6shared17find_existing_run17ha85e74fa05112b79E.exit: ; preds = %bb12.i, %bb15.i, %bb5.i, %bb7.i, %bb11.i.preheader, %bb4.i.preheader, %bb1
  %_0.sroa.3.0.i = phi i1 [ false, %bb1 ], [ true, %bb4.i.preheader ], [ false, %bb11.i.preheader ], [ true, %bb7.i ], [ true, %bb5.i ], [ false, %bb15.i ], [ false, %bb12.i ]
  %_0.sroa.0.0.i = phi i64 [ %v.1, %bb1 ], [ 2, %bb4.i.preheader ], [ 2, %bb11.i.preheader ], [ %run_len.sroa.0.1.i22, %bb5.i ], [ %v.1, %bb7.i ], [ %run_len.sroa.0.0.i19, %bb12.i ], [ %v.1, %bb15.i ]
  %_12 = icmp samesign ule i64 %_0.sroa.0.0.i, %v.1
  tail call void @llvm.assume(i1 %_12)
  %_13.not = icmp ult i64 %_0.sroa.0.0.i, %min_good_run_len
  br i1 %_13.not, label %bb7, label %bb3

bb3:                                              ; preds = %_ZN4core5slice4sort6shared17find_existing_run17ha85e74fa05112b79E.exit
  br i1 %_0.sroa.3.0.i, label %bb14, label %bb5

bb11:                                             ; preds = %bb7
  %_0.sroa.0.0.i15 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 -2305843009213693950, 2305843009213693952) %v.1, i64 %min_good_run_len)
  %_36 = shl nuw nsw i64 %_0.sroa.0.0.i15, 1
  br label %bb12

bb8:                                              ; preds = %bb7
  %_0.sroa.0.0.i16 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 -2305843009213693950, 2305843009213693952) %v.1, i64 32)
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hd7748f61f1e7fd1dE(ptr noalias noundef nonnull align 8 %v.0, i64 noundef %_0.sroa.0.0.i16, ptr noalias noundef nonnull align 8 %scratch.0, i64 noundef %scratch.1, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias noundef nonnull align 1 %is_less) #35
  %_35 = shl nuw nsw i64 %_0.sroa.0.0.i16, 1
  %_34 = or disjoint i64 %_35, 1
  br label %bb12

bb12:                                             ; preds = %bb5, %bb8, %bb11
  %_0.sroa.0.0 = phi i64 [ %_26, %bb5 ], [ %_34, %bb8 ], [ %_36, %bb11 ]
  ret i64 %_0.sroa.0.0

bb5:                                              ; preds = %bb5.i.i, %bb14, %bb3
  %_27 = shl nuw nsw i64 %_0.sroa.0.0.i, 1
  %_26 = or disjoint i64 %_27, 1
  br label %bb12

bb14:                                             ; preds = %bb3
  %half_len2.i = lshr i64 %_0.sroa.0.0.i, 1
  %end.i = getelementptr inbounds nuw %"alloc::string::String", ptr %v.0, i64 %_0.sroa.0.0.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1698)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1701)
  %_915.not.i.i = icmp samesign ult i64 %_0.sroa.0.0.i, 2
  br i1 %_915.not.i.i, label %bb5, label %bb5.i.i

bb5.i.i:                                          ; preds = %bb14, %bb5.i.i
  %i.sroa.0.016.i.i = phi i64 [ %31, %bb5.i.i ], [ 0, %bb14 ]
  %30 = xor i64 %i.sroa.0.016.i.i, -1
  %x.i.i = getelementptr inbounds nuw %"alloc::string::String", ptr %v.0, i64 %i.sroa.0.016.i.i
  %y.i.i = getelementptr %"alloc::string::String", ptr %end.i, i64 %30
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1703)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1706)
  %_3.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %x.i.i, align 8, !alias.scope !1708, !noalias !1711
  %_4.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %y.i.i, align 8, !alias.scope !1712, !noalias !1713
  store i64 %_4.sroa.0.0.copyload.i.i.i.i.i.i.i, ptr %x.i.i, align 8, !alias.scope !1708, !noalias !1711
  store i64 %_3.sroa.0.0.copyload.i.i.i.i.i.i.i, ptr %y.i.i, align 8, !alias.scope !1712, !noalias !1713
  %_11.i.1.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %x.i.i, i64 8
  %_13.i.1.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %y.i.i, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1714)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1716)
  %_3.sroa.0.0.copyload.i.i.1.i.i.i.i.i = load i64, ptr %_11.i.1.i.i.i.i.i, align 8, !alias.scope !1718, !noalias !1719
  %_4.sroa.0.0.copyload.i.i.1.i.i.i.i.i = load i64, ptr %_13.i.1.i.i.i.i.i, align 8, !alias.scope !1720, !noalias !1721
  store i64 %_4.sroa.0.0.copyload.i.i.1.i.i.i.i.i, ptr %_11.i.1.i.i.i.i.i, align 8, !alias.scope !1718, !noalias !1719
  store i64 %_3.sroa.0.0.copyload.i.i.1.i.i.i.i.i, ptr %_13.i.1.i.i.i.i.i, align 8, !alias.scope !1720, !noalias !1721
  %_11.i.2.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %x.i.i, i64 16
  %_13.i.2.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %y.i.i, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1722)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1724)
  %_3.sroa.0.0.copyload.i.i.2.i.i.i.i.i = load i64, ptr %_11.i.2.i.i.i.i.i, align 8, !alias.scope !1726, !noalias !1727
  %_4.sroa.0.0.copyload.i.i.2.i.i.i.i.i = load i64, ptr %_13.i.2.i.i.i.i.i, align 8, !alias.scope !1728, !noalias !1729
  store i64 %_4.sroa.0.0.copyload.i.i.2.i.i.i.i.i, ptr %_11.i.2.i.i.i.i.i, align 8, !alias.scope !1726, !noalias !1727
  store i64 %_3.sroa.0.0.copyload.i.i.2.i.i.i.i.i, ptr %_13.i.2.i.i.i.i.i, align 8, !alias.scope !1728, !noalias !1729
  %31 = add nuw nsw i64 %i.sroa.0.016.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %31, %half_len2.i
  br i1 %exitcond.not.i.i, label %bb5, label %bb5.i.i
}

; core::slice::sort::stable::drift::stable_quicksort
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6stable5drift16stable_quicksort17h9ded91ad7880dc0bE(ptr noalias noundef nonnull align 8 %v.0, i64 noundef range(i64 0, 384307168202282326) %v.1, ptr noalias noundef nonnull align 8 %scratch.0, i64 noundef range(i64 0, 384307168202282326) %scratch.1, ptr noalias noundef nonnull align 1 %is_less) unnamed_addr #1 {
start:
  %self = or i64 %v.1, 1
  %0 = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %self, i1 true)
  %1 = trunc nuw nsw i64 %0 to i32
  %log = shl nuw nsw i32 %1, 1
  %limit = xor i32 %log, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hd7748f61f1e7fd1dE(ptr noalias noundef nonnull align 8 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 8 %scratch.0, i64 noundef %scratch.1, i32 noundef %limit, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias noundef nonnull align 1 %is_less) #35
  ret void
}

; core::slice::sort::stable::drift::stable_quicksort
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6stable5drift16stable_quicksort17hcc1cf40f3d3ce6dfE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #1 {
start:
  %self = or i64 %v.1, 1
  %0 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self, i1 true)
  %1 = trunc nuw nsw i64 %0 to i32
  %log = shl nuw nsw i32 %1, 1
  %limit = xor i32 %log, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hdfb2cdee762e95a0E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef %limit, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef align 8 dereferenceable(8) %is_less) #35
  ret void
}

; core::slice::sort::stable::drift::sort
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6stable5drift4sort17h0c433fc08a1d1e26E(ptr noalias noundef nonnull align 8 %v.0, i64 noundef range(i64 0, 384307168202282326) %v.1, ptr noalias noundef nonnull align 8 %scratch.0, i64 noundef range(i64 0, 384307168202282326) %scratch.1, i1 noundef zeroext %eager_sort, ptr noalias noundef nonnull align 1 %is_less) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %desired_depth_storage = alloca [66 x i8], align 1
  %run_storage = alloca [528 x i8], align 8
  %_6 = icmp samesign ult i64 %v.1, 2
  br i1 %_6, label %bb22, label %bb2

bb2:                                              ; preds = %start
  %d = udiv i64 4611686018427387904, %v.1
  %r = urem i64 4611686018427387904, %v.1
  %_73.not = icmp ne i64 %r, 0
  %0 = zext i1 %_73.not to i64
  %scale_factor.sroa.0.0 = add nuw nsw i64 %d, %0
  %_9 = icmp samesign ult i64 %v.1, 4097
  br i1 %_9, label %bb3, label %bb4

bb4:                                              ; preds = %bb2
; call core::slice::sort::stable::drift::sqrt_approx
  %1 = tail call noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h72a4dc1ae46294f4E(i64 noundef %v.1)
  br label %bb5

bb3:                                              ; preds = %bb2
  %_1135 = lshr i64 %v.1, 1
  %v1 = sub nsw i64 %v.1, %_1135
  %_0.sroa.0.0.i36 = tail call noundef i64 @llvm.umin.i64(i64 %v1, i64 64)
  br label %bb5

bb5:                                              ; preds = %bb3, %bb4
  %min_good_run_len.sroa.0.0 = phi i64 [ %_0.sroa.0.0.i36, %bb3 ], [ %1, %bb4 ]
  call void @llvm.lifetime.start.p0(i64 528, ptr nonnull %run_storage)
  call void @llvm.lifetime.start.p0(i64 66, ptr nonnull %desired_depth_storage)
  br label %bb6

bb6:                                              ; preds = %bb19, %bb5
  %prev_run.sroa.0.0 = phi i64 [ 1, %bb5 ], [ %next_run.sroa.0.0, %bb19 ]
  %scan_idx.sroa.0.0 = phi i64 [ 0, %bb5 ], [ %13, %bb19 ]
  %stack_len.sroa.0.0 = phi i64 [ 0, %bb5 ], [ %12, %bb19 ]
  %_22 = icmp ult i64 %scan_idx.sroa.0.0, %v.1
  br i1 %_22, label %bb30, label %bb10

bb10:                                             ; preds = %bb6, %bb30
  %desired_depth.sroa.0.0 = phi i8 [ %4, %bb30 ], [ 0, %bb6 ]
  %next_run.sroa.0.0 = phi i64 [ %2, %bb30 ], [ 1, %bb6 ]
  %_3743 = icmp ugt i64 %stack_len.sroa.0.0, 1
  br i1 %_3743, label %bb12, label %bb17

bb30:                                             ; preds = %bb6
  %new_len = sub nuw nsw i64 %v.1, %scan_idx.sroa.0.0
  %_82 = getelementptr inbounds nuw %"alloc::string::String", ptr %v.0, i64 %scan_idx.sroa.0.0
; call core::slice::sort::stable::drift::create_run
  %2 = tail call noundef i64 @_ZN4core5slice4sort6stable5drift10create_run17haa65d1d7eff1e388E(ptr noalias noundef nonnull align 8 %_82, i64 noundef %new_len, ptr noalias noundef nonnull align 8 %scratch.0, i64 noundef %scratch.1, i64 noundef %min_good_run_len.sroa.0.0, i1 noundef zeroext %eager_sort, ptr noalias noundef nonnull align 1 %is_less)
  %_31 = lshr i64 %prev_run.sroa.0.0, 1
  %_35 = lshr i64 %2, 1
  %factor = shl i64 %scan_idx.sroa.0.0, 1
  %x = sub i64 %factor, %_31
  %reass.add = shl i64 %scan_idx.sroa.0.0, 1
  %y = add i64 %_35, %reass.add
  %_90 = mul i64 %x, %scale_factor.sroa.0.0
  %_91 = mul i64 %y, %scale_factor.sroa.0.0
  %self4 = xor i64 %_91, %_90
  %3 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %self4, i1 false)
  %4 = trunc nuw nsw i64 %3 to i8
  br label %bb10

bb12:                                             ; preds = %bb10, %_ZN4core5slice4sort6stable5drift13logical_merge17h7498cdca0d127bebE.exit
  %stack_len.sroa.0.145 = phi i64 [ %count, %_ZN4core5slice4sort6stable5drift13logical_merge17h7498cdca0d127bebE.exit ], [ %stack_len.sroa.0.0, %bb10 ]
  %prev_run.sroa.0.144 = phi i64 [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h7498cdca0d127bebE.exit ], [ %prev_run.sroa.0.0, %bb10 ]
  %count = add i64 %stack_len.sroa.0.145, -1
  %_41 = getelementptr inbounds nuw i8, ptr %desired_depth_storage, i64 %count
  %_40 = load i8, ptr %_41, align 1, !noundef !37
  %_39.not = icmp ult i8 %_40, %desired_depth.sroa.0.0
  br i1 %_39.not, label %bb17, label %bb13

bb17:                                             ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17h7498cdca0d127bebE.exit, %bb12, %bb10
  %prev_run.sroa.0.1.lcssa = phi i64 [ %prev_run.sroa.0.0, %bb10 ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h7498cdca0d127bebE.exit ], [ %prev_run.sroa.0.144, %bb12 ]
  %stack_len.sroa.0.1.lcssa = phi i64 [ %stack_len.sroa.0.0, %bb10 ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17h7498cdca0d127bebE.exit ], [ %stack_len.sroa.0.145, %bb12 ]
  %_59 = getelementptr inbounds nuw i64, ptr %run_storage, i64 %stack_len.sroa.0.1.lcssa
  store i64 %prev_run.sroa.0.1.lcssa, ptr %_59, align 8
  %_61 = getelementptr inbounds nuw i8, ptr %desired_depth_storage, i64 %stack_len.sroa.0.1.lcssa
  store i8 %desired_depth.sroa.0.0, ptr %_61, align 1
  br i1 %_22, label %bb19, label %bb18

bb13:                                             ; preds = %bb12
  %_46 = getelementptr inbounds nuw i64, ptr %run_storage, i64 %count
  %left10 = load i64, ptr %_46, align 8, !noundef !37
  %_50 = lshr i64 %left10, 1
  %_51 = lshr i64 %prev_run.sroa.0.144, 1
  %merged_len = add nuw i64 %_50, %_51
  %merge_start_idx = sub i64 %scan_idx.sroa.0.0, %merged_len
  %_98 = getelementptr inbounds nuw %"alloc::string::String", ptr %v.0, i64 %merge_start_idx
  %can_fit_in_scratch.i = icmp samesign ugt i64 %merged_len, %scratch.1
  %_22.i = and i64 %prev_run.sroa.0.144, 1
  %_10.not.i = icmp eq i64 %_22.i, 0
  %5 = or i64 %left10, %prev_run.sroa.0.144
  %6 = and i64 %5, 1
  %7 = icmp ne i64 %6, 0
  %or.cond2.i = or i1 %can_fit_in_scratch.i, %7
  br i1 %or.cond2.i, label %bb3.i, label %bb9.i

bb3.i:                                            ; preds = %bb13
  %_21.i = and i64 %left10, 1
  %_9.not.i = icmp eq i64 %_21.i, 0
  br i1 %_9.not.i, label %bb11.i, label %bb5.i

bb9.i:                                            ; preds = %bb13
  %_40.i = shl nuw nsw i64 %merged_len, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h7498cdca0d127bebE.exit

bb5.i:                                            ; preds = %bb11.i, %bb3.i
  br i1 %_10.not.i, label %bb16.i, label %bb7.i

bb11.i:                                           ; preds = %bb3.i
  %self.i = or i64 %_50, 1
  %8 = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %self.i, i1 true)
  %9 = trunc nuw nsw i64 %8 to i32
  %log.i = shl nuw nsw i32 %9, 1
  %limit.i = xor i32 %log.i, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hd7748f61f1e7fd1dE(ptr noalias noundef nonnull align 8 %_98, i64 noundef range(i64 0, 384307168202282326) %_50, ptr noalias noundef nonnull align 8 %scratch.0, i64 noundef range(i64 0, 384307168202282326) %scratch.1, i32 noundef %limit.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias noundef nonnull align 1 %is_less) #35
  br label %bb5.i

bb7.i:                                            ; preds = %bb16.i, %bb5.i
; call core::slice::sort::stable::merge::merge
  tail call void @_ZN4core5slice4sort6stable5merge5merge17h6e59d25376e5c569E(ptr noalias noundef nonnull align 8 %_98, i64 noundef range(i64 0, 384307168202282326) %merged_len, ptr noalias noundef nonnull align 8 %scratch.0, i64 noundef range(i64 0, 384307168202282326) %scratch.1, i64 noundef %_50, ptr noalias nonnull align 1 poison)
  %_39.i = shl nuw nsw i64 %merged_len, 1
  %_38.i = or disjoint i64 %_39.i, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h7498cdca0d127bebE.exit

bb16.i:                                           ; preds = %bb5.i
  %_37.i = getelementptr inbounds nuw %"alloc::string::String", ptr %_98, i64 %_50
  %self.i37 = or i64 %_51, 1
  %10 = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %self.i37, i1 true)
  %11 = trunc nuw nsw i64 %10 to i32
  %log.i38 = shl nuw nsw i32 %11, 1
  %limit.i39 = xor i32 %log.i38, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hd7748f61f1e7fd1dE(ptr noalias noundef nonnull align 8 %_37.i, i64 noundef range(i64 0, 384307168202282326) %_51, ptr noalias noundef nonnull align 8 %scratch.0, i64 noundef range(i64 0, 384307168202282326) %scratch.1, i32 noundef %limit.i39, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias noundef nonnull align 1 %is_less) #35
  br label %bb7.i

_ZN4core5slice4sort6stable5drift13logical_merge17h7498cdca0d127bebE.exit: ; preds = %bb9.i, %bb7.i
  %_0.sroa.0.0.i = phi i64 [ %_38.i, %bb7.i ], [ %_40.i, %bb9.i ]
  %_37 = icmp ugt i64 %count, 1
  br i1 %_37, label %bb12, label %bb17

bb19:                                             ; preds = %bb17
  %12 = add i64 %stack_len.sroa.0.1.lcssa, 1
  %_65 = lshr i64 %next_run.sroa.0.0, 1
  %13 = add nuw i64 %_65, %scan_idx.sroa.0.0
  br label %bb6

bb18:                                             ; preds = %bb17
  %_99 = and i64 %prev_run.sroa.0.1.lcssa, 1
  %_66.not = icmp eq i64 %_99, 0
  br i1 %_66.not, label %bb20, label %bb21

bb20:                                             ; preds = %bb18
  %self.i40 = or i64 %v.1, 1
  %14 = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %self.i40, i1 true)
  %15 = trunc nuw nsw i64 %14 to i32
  %log.i41 = shl nuw nsw i32 %15, 1
  %limit.i42 = xor i32 %log.i41, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hd7748f61f1e7fd1dE(ptr noalias noundef nonnull align 8 %v.0, i64 noundef range(i64 0, 384307168202282326) %v.1, ptr noalias noundef nonnull align 8 %scratch.0, i64 noundef range(i64 0, 384307168202282326) %scratch.1, i32 noundef %limit.i42, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias noundef nonnull align 1 %is_less) #35
  br label %bb21

bb21:                                             ; preds = %bb20, %bb18
  call void @llvm.lifetime.end.p0(i64 66, ptr nonnull %desired_depth_storage)
  call void @llvm.lifetime.end.p0(i64 528, ptr nonnull %run_storage)
  br label %bb22

bb22:                                             ; preds = %start, %bb21
  ret void
}

; core::slice::sort::stable::drift::sort
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6stable5drift4sort17h753da6aa311033faE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %desired_depth_storage = alloca [66 x i8], align 1
  %run_storage = alloca [528 x i8], align 8
  %_6 = icmp samesign ult i64 %v.1, 2
  br i1 %_6, label %bb22, label %bb2

bb2:                                              ; preds = %start
  %d = udiv i64 4611686018427387904, %v.1
  %r = urem i64 4611686018427387904, %v.1
  %_73.not = icmp ne i64 %r, 0
  %0 = zext i1 %_73.not to i64
  %scale_factor.sroa.0.0 = add nuw nsw i64 %d, %0
  %_9 = icmp samesign ult i64 %v.1, 4097
  br i1 %_9, label %bb3, label %bb4

bb4:                                              ; preds = %bb2
; call core::slice::sort::stable::drift::sqrt_approx
  %1 = tail call noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h72a4dc1ae46294f4E(i64 noundef %v.1)
  br label %bb5

bb3:                                              ; preds = %bb2
  %_1135 = lshr i64 %v.1, 1
  %v1 = sub nsw i64 %v.1, %_1135
  %_0.sroa.0.0.i36 = tail call noundef i64 @llvm.umin.i64(i64 %v1, i64 64)
  br label %bb5

bb5:                                              ; preds = %bb3, %bb4
  %min_good_run_len.sroa.0.0 = phi i64 [ %_0.sroa.0.0.i36, %bb3 ], [ %1, %bb4 ]
  call void @llvm.lifetime.start.p0(i64 528, ptr nonnull %run_storage)
  call void @llvm.lifetime.start.p0(i64 66, ptr nonnull %desired_depth_storage)
  br label %bb6

bb6:                                              ; preds = %bb19, %bb5
  %prev_run.sroa.0.0 = phi i64 [ 1, %bb5 ], [ %next_run.sroa.0.0, %bb19 ]
  %scan_idx.sroa.0.0 = phi i64 [ 0, %bb5 ], [ %22, %bb19 ]
  %stack_len.sroa.0.0 = phi i64 [ 0, %bb5 ], [ %21, %bb19 ]
  %_22 = icmp ult i64 %scan_idx.sroa.0.0, %v.1
  br i1 %_22, label %bb30, label %bb10

bb10:                                             ; preds = %bb6, %bb30
  %desired_depth.sroa.0.0 = phi i8 [ %4, %bb30 ], [ 0, %bb6 ]
  %next_run.sroa.0.0 = phi i64 [ %2, %bb30 ], [ 1, %bb6 ]
  %_3748 = icmp ugt i64 %stack_len.sroa.0.0, 1
  br i1 %_3748, label %bb12.lr.ph, label %bb17

bb12.lr.ph:                                       ; preds = %bb10
  %v_end.i = getelementptr inbounds nuw i32, ptr %v.0, i64 %scan_idx.sroa.0.0
  br label %bb12

bb30:                                             ; preds = %bb6
  %new_len = sub nuw nsw i64 %v.1, %scan_idx.sroa.0.0
  %_82 = getelementptr inbounds nuw i32, ptr %v.0, i64 %scan_idx.sroa.0.0
; call core::slice::sort::stable::drift::create_run
  %2 = tail call noundef i64 @_ZN4core5slice4sort6stable5drift10create_run17h01028071545c4604E(ptr noalias noundef nonnull align 4 %_82, i64 noundef %new_len, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i64 noundef %min_good_run_len.sroa.0.0, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  %_31 = lshr i64 %prev_run.sroa.0.0, 1
  %_35 = lshr i64 %2, 1
  %factor = shl i64 %scan_idx.sroa.0.0, 1
  %x = sub i64 %factor, %_31
  %reass.add = shl i64 %scan_idx.sroa.0.0, 1
  %y = add i64 %_35, %reass.add
  %_90 = mul i64 %x, %scale_factor.sroa.0.0
  %_91 = mul i64 %y, %scale_factor.sroa.0.0
  %self4 = xor i64 %_91, %_90
  %3 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %self4, i1 false)
  %4 = trunc nuw nsw i64 %3 to i8
  br label %bb10

bb12:                                             ; preds = %bb12.lr.ph, %_ZN4core5slice4sort6stable5drift13logical_merge17h1088f9560b9ace83E.exit
  %stack_len.sroa.0.150 = phi i64 [ %stack_len.sroa.0.0, %bb12.lr.ph ], [ %count, %_ZN4core5slice4sort6stable5drift13logical_merge17h1088f9560b9ace83E.exit ]
  %prev_run.sroa.0.149 = phi i64 [ %prev_run.sroa.0.0, %bb12.lr.ph ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h1088f9560b9ace83E.exit ]
  %count = add i64 %stack_len.sroa.0.150, -1
  %_41 = getelementptr inbounds nuw i8, ptr %desired_depth_storage, i64 %count
  %_40 = load i8, ptr %_41, align 1, !noundef !37
  %_39.not = icmp ult i8 %_40, %desired_depth.sroa.0.0
  br i1 %_39.not, label %bb17, label %bb13

bb17:                                             ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17h1088f9560b9ace83E.exit, %bb12, %bb10
  %prev_run.sroa.0.1.lcssa = phi i64 [ %prev_run.sroa.0.0, %bb10 ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h1088f9560b9ace83E.exit ], [ %prev_run.sroa.0.149, %bb12 ]
  %stack_len.sroa.0.1.lcssa = phi i64 [ %stack_len.sroa.0.0, %bb10 ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17h1088f9560b9ace83E.exit ], [ %stack_len.sroa.0.150, %bb12 ]
  %_59 = getelementptr inbounds nuw i64, ptr %run_storage, i64 %stack_len.sroa.0.1.lcssa
  store i64 %prev_run.sroa.0.1.lcssa, ptr %_59, align 8
  %_61 = getelementptr inbounds nuw i8, ptr %desired_depth_storage, i64 %stack_len.sroa.0.1.lcssa
  store i8 %desired_depth.sroa.0.0, ptr %_61, align 1
  br i1 %_22, label %bb19, label %bb18

bb13:                                             ; preds = %bb12
  %_46 = getelementptr inbounds nuw i64, ptr %run_storage, i64 %count
  %left10 = load i64, ptr %_46, align 8, !noundef !37
  %_50 = lshr i64 %left10, 1
  %_51 = lshr i64 %prev_run.sroa.0.149, 1
  %merged_len = add nuw i64 %_50, %_51
  %merge_start_idx = sub i64 %scan_idx.sroa.0.0, %merged_len
  %_98 = getelementptr inbounds nuw i32, ptr %v.0, i64 %merge_start_idx
  %can_fit_in_scratch.i = icmp samesign ugt i64 %merged_len, %scratch.1
  %_22.i = and i64 %prev_run.sroa.0.149, 1
  %_10.not.i = icmp eq i64 %_22.i, 0
  %5 = or i64 %left10, %prev_run.sroa.0.149
  %6 = and i64 %5, 1
  %7 = icmp ne i64 %6, 0
  %or.cond2.i = or i1 %can_fit_in_scratch.i, %7
  br i1 %or.cond2.i, label %bb3.i, label %bb9.i

bb3.i:                                            ; preds = %bb13
  %_21.i = and i64 %left10, 1
  %_9.not.i = icmp eq i64 %_21.i, 0
  br i1 %_9.not.i, label %bb11.i, label %bb5.i

bb9.i:                                            ; preds = %bb13
  %_40.i = shl nuw nsw i64 %merged_len, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h1088f9560b9ace83E.exit

bb5.i:                                            ; preds = %bb11.i, %bb3.i
  br i1 %_10.not.i, label %bb16.i, label %bb7.i

bb11.i:                                           ; preds = %bb3.i
  %self.i = or i64 %_50, 1
  %8 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i, i1 true)
  %9 = trunc nuw nsw i64 %8 to i32
  %log.i = shl nuw nsw i32 %9, 1
  %limit.i = xor i32 %log.i, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hdfb2cdee762e95a0E(ptr noalias noundef nonnull align 4 %_98, i64 noundef range(i64 0, 2305843009213693952) %_50, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #35
  br label %bb5.i

bb7.i:                                            ; preds = %bb16.i, %bb5.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1730)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1733)
  %_6.i = icmp ult i64 %left10, 2
  %_7.i = icmp ult i64 %prev_run.sroa.0.149, 2
  %or.cond.i = or i1 %_7.i, %_6.i
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17h4968745bd835e12cE.exit, label %bb2.i

bb2.i:                                            ; preds = %bb7.i
  %_0.sroa.0.0.i.i = tail call i64 @llvm.umin.i64(i64 %_51, i64 %_50)
  %_8.i = icmp samesign ult i64 %scratch.1, %_0.sroa.0.0.i.i
  br i1 %_8.i, label %_ZN4core5slice4sort6stable5merge5merge17h4968745bd835e12cE.exit, label %bb5.i37

bb5.i37:                                          ; preds = %bb2.i
  %v_mid.i = getelementptr inbounds nuw i32, ptr %_98, i64 %_50
  %left_is_shorter.not.i = icmp samesign ugt i64 %_50, %_51
  %spec.select.i = select i1 %left_is_shorter.not.i, ptr %v_mid.i, ptr %_98
  %10 = shl nuw nsw i64 %_0.sroa.0.0.i.i, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %scratch.0, ptr nonnull align 4 %spec.select.i, i64 %10, i1 false), !alias.scope !1735
  %_22.i38 = getelementptr inbounds nuw i8, ptr %scratch.0, i64 %10
  br i1 %left_is_shorter.not.i, label %bb1.i.i, label %bb3.i.i

bb1.i.i:                                          ; preds = %bb5.i37, %bb1.i.i
  %_2110.i.i = phi ptr [ %_21.i.i, %bb1.i.i ], [ %_22.i38, %bb5.i37 ]
  %_188.i.i = phi ptr [ %_18.i.i, %bb1.i.i ], [ %spec.select.i, %bb5.i37 ]
  %out.sroa.0.0.i.i = phi ptr [ %13, %bb1.i.i ], [ %v_end.i, %bb5.i37 ]
  %11 = getelementptr inbounds i8, ptr %_188.i.i, i64 -4
  %12 = getelementptr inbounds i8, ptr %_2110.i.i, i64 -4
  %13 = getelementptr inbounds i8, ptr %out.sroa.0.0.i.i, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1736)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1739)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1741)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1744)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1746)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1749)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1751)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1754)
  %_3.i.i.i.i.i.i = load i32, ptr %12, align 4, !alias.scope !1756, !noalias !1757, !noundef !37
  %_4.i.i.i.i.i.i = load i32, ptr %11, align 4, !alias.scope !1760, !noalias !1761, !noundef !37
  %_0.i.i.i = icmp slt i32 %_3.i.i.i.i.i.i, %_4.i.i.i.i.i.i
  %14 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i.i.i, i32 %_4.i.i.i.i.i.i)
  store i32 %14, ptr %13, align 4, !alias.scope !1730, !noalias !1762
  %_20.i.i = xor i1 %_0.i.i.i, true
  %count.i.i = zext i1 %_20.i.i to i64
  %_18.i.i = getelementptr inbounds nuw i32, ptr %11, i64 %count.i.i
  %count4.i.i = zext i1 %_0.i.i.i to i64
  %_21.i.i = getelementptr inbounds nuw i32, ptr %12, i64 %count4.i.i
  %_23.i.i = icmp eq ptr %_18.i.i, %_98
  %_26.i.i = icmp eq ptr %_21.i.i, %scratch.0
  %or.cond.i.i = select i1 %_23.i.i, i1 true, i1 %_26.i.i
  br i1 %or.cond.i.i, label %bb16.i40, label %bb1.i.i

bb3.i.i:                                          ; preds = %bb5.i37, %bb3.i.i
  %_2511.i.i = phi ptr [ %_25.i.i, %bb3.i.i ], [ %spec.select.i, %bb5.i37 ]
  %right.sroa.0.010.i.i = phi ptr [ %_23.i17.i, %bb3.i.i ], [ %v_mid.i, %bb5.i37 ]
  %_2059.i.i = phi ptr [ %_20.i16.i, %bb3.i.i ], [ %scratch.0, %bb5.i37 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1763)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1766)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1768)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1771)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1773)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1776)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1778)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1781)
  %_3.i.i.i.i.i12.i = load i32, ptr %right.sroa.0.010.i.i, align 4, !alias.scope !1783, !noalias !1784, !noundef !37
  %_4.i.i.i.i.i13.i = load i32, ptr %_2059.i.i, align 4, !alias.scope !1787, !noalias !1788, !noundef !37
  %_0.i.i14.i = icmp slt i32 %_3.i.i.i.i.i12.i, %_4.i.i.i.i.i13.i
  %consume_left.i.i = xor i1 %_0.i.i14.i, true
  %15 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i12.i, i32 %_4.i.i.i.i.i13.i)
  store i32 %15, ptr %_2511.i.i, align 4, !alias.scope !1730, !noalias !1789
  %count.i15.i = zext i1 %consume_left.i.i to i64
  %_20.i16.i = getelementptr inbounds nuw i32, ptr %_2059.i.i, i64 %count.i15.i
  %count2.i.i = zext i1 %_0.i.i14.i to i64
  %_23.i17.i = getelementptr inbounds nuw i32, ptr %right.sroa.0.010.i.i, i64 %count2.i.i
  %_25.i.i = getelementptr inbounds nuw i8, ptr %_2511.i.i, i64 4
  %_7.i.i = icmp ne ptr %_20.i16.i, %_22.i38
  %_10.i.i = icmp ne ptr %_23.i17.i, %v_end.i
  %or.cond.i18.i = select i1 %_7.i.i, i1 %_10.i.i, i1 false
  br i1 %or.cond.i18.i, label %bb3.i.i, label %bb16.i40

bb16.i40:                                         ; preds = %bb3.i.i, %bb1.i.i
  %merge_state.sroa.13.0.i = phi ptr [ %_18.i.i, %bb1.i.i ], [ %_25.i.i, %bb3.i.i ]
  %merge_state.sroa.7.0.i = phi ptr [ %_21.i.i, %bb1.i.i ], [ %_22.i38, %bb3.i.i ]
  %merge_state.sroa.0.0.i = phi ptr [ %scratch.0, %bb1.i.i ], [ %_20.i16.i, %bb3.i.i ]
  %16 = ptrtoint ptr %merge_state.sroa.7.0.i to i64
  %17 = ptrtoint ptr %merge_state.sroa.0.0.i to i64
  %18 = sub nuw i64 %16, %17
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %merge_state.sroa.13.0.i, ptr align 4 %merge_state.sroa.0.0.i, i64 %18, i1 false), !alias.scope !1735, !noalias !1790
  br label %_ZN4core5slice4sort6stable5merge5merge17h4968745bd835e12cE.exit

_ZN4core5slice4sort6stable5merge5merge17h4968745bd835e12cE.exit: ; preds = %bb7.i, %bb2.i, %bb16.i40
  %_39.i = shl nuw nsw i64 %merged_len, 1
  %_38.i = or disjoint i64 %_39.i, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h1088f9560b9ace83E.exit

bb16.i:                                           ; preds = %bb5.i
  %_37.i = getelementptr inbounds nuw i32, ptr %_98, i64 %_50
  %self.i41 = or i64 %_51, 1
  %19 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i41, i1 true)
  %20 = trunc nuw nsw i64 %19 to i32
  %log.i42 = shl nuw nsw i32 %20, 1
  %limit.i43 = xor i32 %log.i42, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hdfb2cdee762e95a0E(ptr noalias noundef nonnull align 4 %_37.i, i64 noundef range(i64 0, 2305843009213693952) %_51, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i43, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #35
  br label %bb7.i

_ZN4core5slice4sort6stable5drift13logical_merge17h1088f9560b9ace83E.exit: ; preds = %bb9.i, %_ZN4core5slice4sort6stable5merge5merge17h4968745bd835e12cE.exit
  %_0.sroa.0.0.i = phi i64 [ %_38.i, %_ZN4core5slice4sort6stable5merge5merge17h4968745bd835e12cE.exit ], [ %_40.i, %bb9.i ]
  %_37 = icmp ugt i64 %count, 1
  br i1 %_37, label %bb12, label %bb17

bb19:                                             ; preds = %bb17
  %21 = add i64 %stack_len.sroa.0.1.lcssa, 1
  %_65 = lshr i64 %next_run.sroa.0.0, 1
  %22 = add nuw i64 %_65, %scan_idx.sroa.0.0
  br label %bb6

bb18:                                             ; preds = %bb17
  %_99 = and i64 %prev_run.sroa.0.1.lcssa, 1
  %_66.not = icmp eq i64 %_99, 0
  br i1 %_66.not, label %bb20, label %bb21

bb20:                                             ; preds = %bb18
  %self.i44 = or i64 %v.1, 1
  %23 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i44, i1 true)
  %24 = trunc nuw nsw i64 %23 to i32
  %log.i45 = shl nuw nsw i32 %24, 1
  %limit.i46 = xor i32 %log.i45, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hdfb2cdee762e95a0E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i46, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef align 8 dereferenceable(8) %is_less) #35
  br label %bb21

bb21:                                             ; preds = %bb20, %bb18
  call void @llvm.lifetime.end.p0(i64 66, ptr nonnull %desired_depth_storage)
  call void @llvm.lifetime.end.p0(i64 528, ptr nonnull %run_storage)
  br label %bb22

bb22:                                             ; preds = %start, %bb21
  ret void
}

; core::slice::sort::stable::merge::MergeState<T>::merge_down
; Function Attrs: nofree norecurse nounwind nonlazybind uwtable
define void @"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h00af413aa662353fE"(ptr noalias noundef align 8 captures(none) dereferenceable(24) %self, ptr noundef readnone captures(address) %left_end, ptr noundef readnone captures(address) %right_end, ptr noundef writeonly captures(none) %0, ptr noalias noundef nonnull readnone align 1 captures(none) %is_less) unnamed_addr #11 {
start:
  %1 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %2 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %.promoted = load ptr, ptr %1, align 8
  %.promoted8 = load ptr, ptr %2, align 8
  br label %bb1

bb1:                                              ; preds = %bb1, %start
  %_219 = phi ptr [ %.promoted8, %start ], [ %_21, %bb1 ]
  %_187 = phi ptr [ %.promoted, %start ], [ %_18, %bb1 ]
  %out.sroa.0.0 = phi ptr [ %0, %start ], [ %5, %bb1 ]
  %3 = getelementptr inbounds i8, ptr %_187, i64 -24
  %4 = getelementptr inbounds i8, ptr %_219, i64 -24
  %5 = getelementptr inbounds i8, ptr %out.sroa.0.0, i64 -24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1795)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1798)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1800)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1803)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1805)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1808)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1810)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1813)
  %6 = getelementptr inbounds i8, ptr %_219, i64 -16
  %_7.i.i.i.i = load ptr, ptr %6, align 8, !alias.scope !1815, !noalias !1816, !nonnull !37, !noundef !37
  %7 = getelementptr inbounds i8, ptr %_219, i64 -8
  %len1.i.i.i.i = load i64, ptr %7, align 8, !alias.scope !1815, !noalias !1816, !noundef !37
  %8 = getelementptr inbounds i8, ptr %_187, i64 -16
  %_14.i.i.i.i = load ptr, ptr %8, align 8, !alias.scope !1816, !noalias !1815, !nonnull !37, !noundef !37
  %9 = getelementptr inbounds i8, ptr %_187, i64 -8
  %10 = load i64, ptr %9, align 8, !alias.scope !1816, !noalias !1815, !noundef !37
  %spec.store.select.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %len1.i.i.i.i, i64 range(i64 0, -9223372036854775808) %10)
  %11 = tail call i32 @memcmp(ptr nonnull readonly align 1 %_7.i.i.i.i, ptr nonnull readonly align 1 %_14.i.i.i.i, i64 %spec.store.select.i.i.i.i.i.i), !alias.scope !1817, !noalias !1824
  %12 = sext i32 %11 to i64
  %_15.i.i.i.i.i.i = icmp eq i32 %11, 0
  %diff.i.i.i.i.i.i = sub nsw i64 %len1.i.i.i.i, %10
  %spec.select.i.i.i.i.i.i = select i1 %_15.i.i.i.i.i.i, i64 %diff.i.i.i.i.i.i, i64 %12
  %13 = icmp sgt i64 %spec.select.i.i.i.i.i.i, -1
  %. = select i1 %13, ptr %4, ptr %3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %., i64 24, i1 false)
  %count = zext i1 %13 to i64
  %_18 = getelementptr inbounds nuw %"alloc::string::String", ptr %3, i64 %count
  %spec.select.i.i.i.i.i.i.lobit = lshr i64 %spec.select.i.i.i.i.i.i, 63
  %_21 = getelementptr inbounds nuw %"alloc::string::String", ptr %4, i64 %spec.select.i.i.i.i.i.i.lobit
  %_23 = icmp eq ptr %_18, %left_end
  %_26 = icmp eq ptr %_21, %right_end
  %or.cond = select i1 %_23, i1 true, i1 %_26
  br i1 %or.cond, label %bb7, label %bb1

bb7:                                              ; preds = %bb1
  store ptr %_18, ptr %1, align 8
  store ptr %_21, ptr %2, align 8
  ret void
}

; core::slice::sort::stable::merge::MergeState<T>::merge_down
; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h483b621008603c76E"(ptr noalias noundef align 8 captures(none) dereferenceable(24) %self, ptr noundef readnone captures(address) %left_end, ptr noundef readnone captures(address) %right_end, ptr noundef writeonly captures(none) %0, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #12 {
start:
  %1 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %2 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %.promoted = load ptr, ptr %1, align 8
  %.promoted9 = load ptr, ptr %2, align 8
  br label %bb1

bb1:                                              ; preds = %bb1, %start
  %_2110 = phi ptr [ %.promoted9, %start ], [ %_21, %bb1 ]
  %_188 = phi ptr [ %.promoted, %start ], [ %_18, %bb1 ]
  %out.sroa.0.0 = phi ptr [ %0, %start ], [ %5, %bb1 ]
  %3 = getelementptr inbounds i8, ptr %_188, i64 -4
  %4 = getelementptr inbounds i8, ptr %_2110, i64 -4
  %5 = getelementptr inbounds i8, ptr %out.sroa.0.0, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1825)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1828)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1830)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1833)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1835)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1838)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1840)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1843)
  %_3.i.i.i.i = load i32, ptr %4, align 4, !alias.scope !1845, !noalias !1846, !noundef !37
  %_4.i.i.i.i = load i32, ptr %3, align 4, !alias.scope !1846, !noalias !1845, !noundef !37
  %_0.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %6 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i, i32 %_4.i.i.i.i)
  store i32 %6, ptr %5, align 4
  %_20 = xor i1 %_0.i, true
  %count = zext i1 %_20 to i64
  %_18 = getelementptr inbounds nuw i32, ptr %3, i64 %count
  %count4 = zext i1 %_0.i to i64
  %_21 = getelementptr inbounds nuw i32, ptr %4, i64 %count4
  %_23 = icmp eq ptr %_18, %left_end
  %_26 = icmp eq ptr %_21, %right_end
  %or.cond = select i1 %_23, i1 true, i1 %_26
  br i1 %or.cond, label %bb7, label %bb1

bb7:                                              ; preds = %bb1
  store ptr %_18, ptr %1, align 8
  store ptr %_21, ptr %2, align 8
  ret void
}

; core::slice::sort::stable::merge::MergeState<T>::merge_up
; Function Attrs: nofree norecurse nosync nounwind nonlazybind uwtable
define void @"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h25e782789069064cE"(ptr noalias noundef align 8 captures(none) dereferenceable(24) %self, ptr noundef readonly captures(address) %0, ptr noundef readnone captures(address) %right_end, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #13 {
start:
  %1 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %_9 = load ptr, ptr %1, align 8, !noundef !37
  %self.promoted = load ptr, ptr %self, align 8
  %_76 = icmp ne ptr %self.promoted, %_9
  %_107 = icmp ne ptr %0, %right_end
  %or.cond8 = and i1 %_76, %_107
  br i1 %or.cond8, label %bb3.lr.ph, label %bb9

bb3.lr.ph:                                        ; preds = %start
  %2 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %.promoted = load ptr, ptr %2, align 8
  br label %bb3

bb1.bb9_crit_edge:                                ; preds = %bb3
  store ptr %_25, ptr %2, align 8
  store ptr %_20, ptr %self, align 8
  br label %bb9

bb9:                                              ; preds = %bb1.bb9_crit_edge, %start
  ret void

bb3:                                              ; preds = %bb3.lr.ph, %bb3
  %_2511 = phi ptr [ %.promoted, %bb3.lr.ph ], [ %_25, %bb3 ]
  %right.sroa.0.010 = phi ptr [ %0, %bb3.lr.ph ], [ %_23, %bb3 ]
  %_2059 = phi ptr [ %self.promoted, %bb3.lr.ph ], [ %_20, %bb3 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1847)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1850)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1852)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1855)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1857)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1860)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1862)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1865)
  %_3.i.i.i.i = load i32, ptr %right.sroa.0.010, align 4, !alias.scope !1867, !noalias !1868, !noundef !37
  %_4.i.i.i.i = load i32, ptr %_2059, align 4, !alias.scope !1868, !noalias !1867, !noundef !37
  %_0.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %consume_left = xor i1 %_0.i, true
  %3 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i, i32 %_4.i.i.i.i)
  store i32 %3, ptr %_2511, align 4
  %count = zext i1 %consume_left to i64
  %_20 = getelementptr inbounds nuw i32, ptr %_2059, i64 %count
  %count2 = zext i1 %_0.i to i64
  %_23 = getelementptr inbounds nuw i32, ptr %right.sroa.0.010, i64 %count2
  %_25 = getelementptr inbounds nuw i8, ptr %_2511, i64 4
  %_7 = icmp ne ptr %_20, %_9
  %_10 = icmp ne ptr %_23, %right_end
  %or.cond = select i1 %_7, i1 %_10, i1 false
  br i1 %or.cond, label %bb3, label %bb1.bb9_crit_edge
}

; core::slice::sort::stable::merge::MergeState<T>::merge_up
; Function Attrs: nofree norecurse nounwind nonlazybind uwtable
define void @"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17hbe38bf00a951b59aE"(ptr noalias noundef align 8 captures(none) dereferenceable(24) %self, ptr noundef readonly captures(address) %0, ptr noundef readnone captures(address) %right_end, ptr noalias noundef nonnull readnone align 1 captures(none) %is_less) unnamed_addr #11 {
start:
  %1 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %_9 = load ptr, ptr %1, align 8, !noundef !37
  %self.promoted = load ptr, ptr %self, align 8
  %_76 = icmp ne ptr %self.promoted, %_9
  %_107 = icmp ne ptr %0, %right_end
  %or.cond8 = and i1 %_76, %_107
  br i1 %or.cond8, label %bb3.lr.ph, label %bb9

bb3.lr.ph:                                        ; preds = %start
  %2 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %.promoted = load ptr, ptr %2, align 8
  br label %bb3

bb1.bb9_crit_edge:                                ; preds = %bb3
  store ptr %_25, ptr %2, align 8
  store ptr %_20, ptr %self, align 8
  br label %bb9

bb9:                                              ; preds = %bb1.bb9_crit_edge, %start
  ret void

bb3:                                              ; preds = %bb3.lr.ph, %bb3
  %_2511 = phi ptr [ %.promoted, %bb3.lr.ph ], [ %_25, %bb3 ]
  %right.sroa.0.010 = phi ptr [ %0, %bb3.lr.ph ], [ %_23, %bb3 ]
  %_2059 = phi ptr [ %self.promoted, %bb3.lr.ph ], [ %_20, %bb3 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1869)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1872)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1874)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1877)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1879)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1882)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1884)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1887)
  %3 = getelementptr inbounds nuw i8, ptr %right.sroa.0.010, i64 8
  %_7.i.i.i.i = load ptr, ptr %3, align 8, !alias.scope !1889, !noalias !1890, !nonnull !37, !noundef !37
  %4 = getelementptr inbounds nuw i8, ptr %right.sroa.0.010, i64 16
  %len1.i.i.i.i = load i64, ptr %4, align 8, !alias.scope !1889, !noalias !1890, !noundef !37
  %5 = getelementptr inbounds nuw i8, ptr %_2059, i64 8
  %_14.i.i.i.i = load ptr, ptr %5, align 8, !alias.scope !1890, !noalias !1889, !nonnull !37, !noundef !37
  %6 = getelementptr inbounds nuw i8, ptr %_2059, i64 16
  %7 = load i64, ptr %6, align 8, !alias.scope !1890, !noalias !1889, !noundef !37
  %spec.store.select.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %len1.i.i.i.i, i64 range(i64 0, -9223372036854775808) %7)
  %8 = tail call i32 @memcmp(ptr nonnull readonly align 1 %_7.i.i.i.i, ptr nonnull readonly align 1 %_14.i.i.i.i, i64 %spec.store.select.i.i.i.i.i.i), !alias.scope !1891, !noalias !1898
  %9 = sext i32 %8 to i64
  %_15.i.i.i.i.i.i = icmp eq i32 %8, 0
  %diff.i.i.i.i.i.i = sub nsw i64 %len1.i.i.i.i, %7
  %spec.select.i.i.i.i.i.i = select i1 %_15.i.i.i.i.i.i, i64 %diff.i.i.i.i.i.i, i64 %9
  %10 = icmp sgt i64 %spec.select.i.i.i.i.i.i, -1
  %src.sroa.0.0 = select i1 %10, ptr %_2059, ptr %right.sroa.0.010
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_2511, ptr noundef nonnull align 8 dereferenceable(24) %src.sroa.0.0, i64 24, i1 false)
  %count = zext i1 %10 to i64
  %_20 = getelementptr inbounds nuw %"alloc::string::String", ptr %_2059, i64 %count
  %spec.select.i.i.i.i.i.i.lobit = lshr i64 %spec.select.i.i.i.i.i.i, 63
  %_23 = getelementptr inbounds nuw %"alloc::string::String", ptr %right.sroa.0.010, i64 %spec.select.i.i.i.i.i.i.lobit
  %_25 = getelementptr inbounds nuw i8, ptr %_2511, i64 24
  %_7 = icmp ne ptr %_20, %_9
  %_10 = icmp ne ptr %_23, %right_end
  %or.cond = select i1 %_7, i1 %_10, i1 false
  br i1 %or.cond, label %bb3, label %bb1.bb9_crit_edge
}

; core::slice::sort::stable::merge::merge
; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core5slice4sort6stable5merge5merge17h4968745bd835e12cE(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %0, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %_6 = icmp eq i64 %0, 0
  %_7 = icmp uge i64 %0, %v.1
  %or.cond = or i1 %_6, %_7
  br i1 %or.cond, label %bb18, label %bb2

bb2:                                              ; preds = %start
  %right_len = sub nuw nsw i64 %v.1, %0
  %_0.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 -2305843009213693950, 2305843009213693952) %right_len, i64 %0)
  %_8 = icmp samesign ult i64 %scratch.1, %_0.sroa.0.0.i
  br i1 %_8, label %bb18, label %bb5

bb5:                                              ; preds = %bb2
  %v_mid = getelementptr inbounds nuw i32, ptr %v.0, i64 %0
  %v_end = getelementptr inbounds nuw i32, ptr %v.0, i64 %v.1
  %left_is_shorter.not = icmp ugt i64 %0, %right_len
  %spec.select = select i1 %left_is_shorter.not, ptr %v_mid, ptr %v.0
  %spec.select10 = tail call i64 @llvm.umin.i64(i64 %0, i64 %right_len)
  %1 = shl nuw nsw i64 %spec.select10, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %scratch.0, ptr nonnull align 4 %spec.select, i64 %1, i1 false)
  %_22.idx = shl nuw nsw i64 %spec.select10, 2
  %_22 = getelementptr inbounds nuw i8, ptr %scratch.0, i64 %_22.idx
  br i1 %left_is_shorter.not, label %bb1.i, label %bb12

bb1.i:                                            ; preds = %bb5, %bb1.i
  %_2110.i = phi ptr [ %_21.i, %bb1.i ], [ %_22, %bb5 ]
  %_188.i = phi ptr [ %_18.i, %bb1.i ], [ %spec.select, %bb5 ]
  %out.sroa.0.0.i = phi ptr [ %4, %bb1.i ], [ %v_end, %bb5 ]
  %2 = getelementptr inbounds i8, ptr %_188.i, i64 -4
  %3 = getelementptr inbounds i8, ptr %_2110.i, i64 -4
  %4 = getelementptr inbounds i8, ptr %out.sroa.0.0.i, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1899)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1902)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1904)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1907)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1909)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1912)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1914)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1917)
  %_3.i.i.i.i.i = load i32, ptr %3, align 4, !alias.scope !1919, !noalias !1920, !noundef !37
  %_4.i.i.i.i.i = load i32, ptr %2, align 4, !alias.scope !1923, !noalias !1924, !noundef !37
  %_0.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %5 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i.i, i32 %_4.i.i.i.i.i)
  store i32 %5, ptr %4, align 4, !noalias !1925
  %_20.i = xor i1 %_0.i.i, true
  %count.i = zext i1 %_20.i to i64
  %_18.i = getelementptr inbounds nuw i32, ptr %2, i64 %count.i
  %count4.i = zext i1 %_0.i.i to i64
  %_21.i = getelementptr inbounds nuw i32, ptr %3, i64 %count4.i
  %_23.i = icmp eq ptr %_18.i, %v.0
  %_26.i = icmp eq ptr %_21.i, %scratch.0
  %or.cond.i = select i1 %_23.i, i1 true, i1 %_26.i
  br i1 %or.cond.i, label %bb16, label %bb1.i

bb12:                                             ; preds = %bb5
  %_76.i.not = icmp eq i64 %0, 0
  br i1 %_76.i.not, label %bb16, label %bb3.i

bb3.i:                                            ; preds = %bb12, %bb3.i
  %_2511.i = phi ptr [ %_25.i, %bb3.i ], [ %spec.select, %bb12 ]
  %right.sroa.0.010.i = phi ptr [ %_23.i17, %bb3.i ], [ %v_mid, %bb12 ]
  %_2059.i = phi ptr [ %_20.i16, %bb3.i ], [ %scratch.0, %bb12 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1926)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1929)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1931)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1934)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1936)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1939)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1941)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1944)
  %_3.i.i.i.i.i12 = load i32, ptr %right.sroa.0.010.i, align 4, !alias.scope !1946, !noalias !1947, !noundef !37
  %_4.i.i.i.i.i13 = load i32, ptr %_2059.i, align 4, !alias.scope !1950, !noalias !1951, !noundef !37
  %_0.i.i14 = icmp slt i32 %_3.i.i.i.i.i12, %_4.i.i.i.i.i13
  %consume_left.i = xor i1 %_0.i.i14, true
  %6 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i12, i32 %_4.i.i.i.i.i13)
  store i32 %6, ptr %_2511.i, align 4, !noalias !1952
  %count.i15 = zext i1 %consume_left.i to i64
  %_20.i16 = getelementptr inbounds nuw i32, ptr %_2059.i, i64 %count.i15
  %count2.i = zext i1 %_0.i.i14 to i64
  %_23.i17 = getelementptr inbounds nuw i32, ptr %right.sroa.0.010.i, i64 %count2.i
  %_25.i = getelementptr inbounds nuw i8, ptr %_2511.i, i64 4
  %_7.i = icmp ne ptr %_20.i16, %_22
  %_10.i = icmp ne ptr %_23.i17, %v_end
  %or.cond.i18 = select i1 %_7.i, i1 %_10.i, i1 false
  br i1 %or.cond.i18, label %bb3.i, label %bb16

bb16:                                             ; preds = %bb3.i, %bb1.i, %bb12
  %merge_state.sroa.13.0 = phi ptr [ %spec.select, %bb12 ], [ %_18.i, %bb1.i ], [ %_25.i, %bb3.i ]
  %merge_state.sroa.7.0 = phi ptr [ %_22, %bb12 ], [ %_21.i, %bb1.i ], [ %_22, %bb3.i ]
  %merge_state.sroa.0.0 = phi ptr [ %scratch.0, %bb12 ], [ %scratch.0, %bb1.i ], [ %_20.i16, %bb3.i ]
  %7 = ptrtoint ptr %merge_state.sroa.7.0 to i64
  %8 = ptrtoint ptr %merge_state.sroa.0.0 to i64
  %9 = sub nuw i64 %7, %8
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %merge_state.sroa.13.0, ptr align 4 %merge_state.sroa.0.0, i64 %9, i1 false), !noalias !1953
  br label %bb18

bb18:                                             ; preds = %bb2, %start, %bb16
  ret void
}

; core::slice::sort::stable::merge::merge
; Function Attrs: nofree norecurse nounwind nonlazybind uwtable
define void @_ZN4core5slice4sort6stable5merge5merge17h6e59d25376e5c569E(ptr noalias noundef nonnull align 8 captures(address) %v.0, i64 noundef range(i64 0, 384307168202282326) %v.1, ptr noalias noundef nonnull align 8 %scratch.0, i64 noundef range(i64 0, 384307168202282326) %scratch.1, i64 noundef %0, ptr noalias nonnull readnone align 1 captures(none) %is_less) unnamed_addr #11 personality ptr @rust_eh_personality {
start:
  %_6 = icmp eq i64 %0, 0
  %_7 = icmp uge i64 %0, %v.1
  %or.cond = or i1 %_6, %_7
  br i1 %or.cond, label %bb18, label %bb2

bb2:                                              ; preds = %start
  %right_len = sub nuw nsw i64 %v.1, %0
  %_0.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 -2305843009213693950, 2305843009213693952) %right_len, i64 %0)
  %_8 = icmp samesign ult i64 %scratch.1, %_0.sroa.0.0.i
  br i1 %_8, label %bb18, label %bb5

bb5:                                              ; preds = %bb2
  %v_mid = getelementptr inbounds nuw %"alloc::string::String", ptr %v.0, i64 %0
  %v_end = getelementptr inbounds nuw %"alloc::string::String", ptr %v.0, i64 %v.1
  %left_is_shorter.not = icmp ugt i64 %0, %right_len
  %spec.select = select i1 %left_is_shorter.not, ptr %v_mid, ptr %v.0
  %spec.select10 = tail call i64 @llvm.umin.i64(i64 %0, i64 %right_len)
  %1 = mul nuw nsw i64 %spec.select10, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %scratch.0, ptr nonnull align 8 %spec.select, i64 %1, i1 false)
  %_22.idx = mul nuw nsw i64 %spec.select10, 24
  %_22 = getelementptr inbounds nuw i8, ptr %scratch.0, i64 %_22.idx
  br i1 %left_is_shorter.not, label %bb1.i, label %bb12

bb1.i:                                            ; preds = %bb5, %bb1.i
  %_219.i = phi ptr [ %_21.i, %bb1.i ], [ %_22, %bb5 ]
  %_187.i = phi ptr [ %_18.i, %bb1.i ], [ %spec.select, %bb5 ]
  %out.sroa.0.0.i = phi ptr [ %4, %bb1.i ], [ %v_end, %bb5 ]
  %2 = getelementptr inbounds i8, ptr %_187.i, i64 -24
  %3 = getelementptr inbounds i8, ptr %_219.i, i64 -24
  %4 = getelementptr inbounds i8, ptr %out.sroa.0.0.i, i64 -24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1958)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1961)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1963)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1966)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1968)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1971)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1973)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1976)
  %5 = getelementptr inbounds i8, ptr %_219.i, i64 -16
  %_7.i.i.i.i.i = load ptr, ptr %5, align 8, !alias.scope !1978, !noalias !1979, !nonnull !37, !noundef !37
  %6 = getelementptr inbounds i8, ptr %_219.i, i64 -8
  %len1.i.i.i.i.i = load i64, ptr %6, align 8, !alias.scope !1978, !noalias !1979, !noundef !37
  %7 = getelementptr inbounds i8, ptr %_187.i, i64 -16
  %_14.i.i.i.i.i = load ptr, ptr %7, align 8, !alias.scope !1982, !noalias !1983, !nonnull !37, !noundef !37
  %8 = getelementptr inbounds i8, ptr %_187.i, i64 -8
  %9 = load i64, ptr %8, align 8, !alias.scope !1982, !noalias !1983, !noundef !37
  %spec.store.select.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %len1.i.i.i.i.i, i64 range(i64 0, -9223372036854775808) %9)
  %10 = tail call i32 @memcmp(ptr nonnull readonly align 1 %_7.i.i.i.i.i, ptr nonnull readonly align 1 %_14.i.i.i.i.i, i64 %spec.store.select.i.i.i.i.i.i.i), !alias.scope !1984, !noalias !1991
  %11 = sext i32 %10 to i64
  %_15.i.i.i.i.i.i.i = icmp eq i32 %10, 0
  %diff.i.i.i.i.i.i.i = sub nsw i64 %len1.i.i.i.i.i, %9
  %spec.select.i.i.i.i.i.i.i = select i1 %_15.i.i.i.i.i.i.i, i64 %diff.i.i.i.i.i.i.i, i64 %11
  %12 = icmp sgt i64 %spec.select.i.i.i.i.i.i.i, -1
  %..i = select i1 %12, ptr %3, ptr %2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %..i, i64 24, i1 false), !noalias !1992
  %count.i = zext i1 %12 to i64
  %_18.i = getelementptr inbounds nuw %"alloc::string::String", ptr %2, i64 %count.i
  %spec.select.i.i.i.i.i.i.lobit.i = lshr i64 %spec.select.i.i.i.i.i.i.i, 63
  %_21.i = getelementptr inbounds nuw %"alloc::string::String", ptr %3, i64 %spec.select.i.i.i.i.i.i.lobit.i
  %_23.i = icmp eq ptr %_18.i, %v.0
  %_26.i = icmp eq ptr %_21.i, %scratch.0
  %or.cond.i = select i1 %_23.i, i1 true, i1 %_26.i
  br i1 %or.cond.i, label %bb16, label %bb1.i

bb12:                                             ; preds = %bb5
  %_76.i.not = icmp eq i64 %0, 0
  br i1 %_76.i.not, label %bb16, label %bb3.i

bb3.i:                                            ; preds = %bb12, %bb3.i
  %_2511.i = phi ptr [ %_25.i, %bb3.i ], [ %spec.select, %bb12 ]
  %right.sroa.0.010.i = phi ptr [ %_23.i21, %bb3.i ], [ %v_mid, %bb12 ]
  %_2059.i = phi ptr [ %_20.i, %bb3.i ], [ %scratch.0, %bb12 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1993)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1996)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1998)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2001)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2003)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2006)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2008)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2011)
  %13 = getelementptr inbounds nuw i8, ptr %right.sroa.0.010.i, i64 8
  %_7.i.i.i.i.i12 = load ptr, ptr %13, align 8, !alias.scope !2013, !noalias !2014, !nonnull !37, !noundef !37
  %14 = getelementptr inbounds nuw i8, ptr %right.sroa.0.010.i, i64 16
  %len1.i.i.i.i.i13 = load i64, ptr %14, align 8, !alias.scope !2013, !noalias !2014, !noundef !37
  %15 = getelementptr inbounds nuw i8, ptr %_2059.i, i64 8
  %_14.i.i.i.i.i14 = load ptr, ptr %15, align 8, !alias.scope !2017, !noalias !2018, !nonnull !37, !noundef !37
  %16 = getelementptr inbounds nuw i8, ptr %_2059.i, i64 16
  %17 = load i64, ptr %16, align 8, !alias.scope !2017, !noalias !2018, !noundef !37
  %spec.store.select.i.i.i.i.i.i.i15 = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %len1.i.i.i.i.i13, i64 range(i64 0, -9223372036854775808) %17)
  %18 = tail call i32 @memcmp(ptr nonnull readonly align 1 %_7.i.i.i.i.i12, ptr nonnull readonly align 1 %_14.i.i.i.i.i14, i64 %spec.store.select.i.i.i.i.i.i.i15), !alias.scope !2019, !noalias !2026
  %19 = sext i32 %18 to i64
  %_15.i.i.i.i.i.i.i16 = icmp eq i32 %18, 0
  %diff.i.i.i.i.i.i.i17 = sub nsw i64 %len1.i.i.i.i.i13, %17
  %spec.select.i.i.i.i.i.i.i18 = select i1 %_15.i.i.i.i.i.i.i16, i64 %diff.i.i.i.i.i.i.i17, i64 %19
  %20 = icmp sgt i64 %spec.select.i.i.i.i.i.i.i18, -1
  %src.sroa.0.0.i = select i1 %20, ptr %_2059.i, ptr %right.sroa.0.010.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_2511.i, ptr noundef nonnull align 8 dereferenceable(24) %src.sroa.0.0.i, i64 24, i1 false), !noalias !2027
  %count.i19 = zext i1 %20 to i64
  %_20.i = getelementptr inbounds nuw %"alloc::string::String", ptr %_2059.i, i64 %count.i19
  %spec.select.i.i.i.i.i.i.lobit.i20 = lshr i64 %spec.select.i.i.i.i.i.i.i18, 63
  %_23.i21 = getelementptr inbounds nuw %"alloc::string::String", ptr %right.sroa.0.010.i, i64 %spec.select.i.i.i.i.i.i.lobit.i20
  %_25.i = getelementptr inbounds nuw i8, ptr %_2511.i, i64 24
  %_7.i = icmp ne ptr %_20.i, %_22
  %_10.i = icmp ne ptr %_23.i21, %v_end
  %or.cond.i22 = select i1 %_7.i, i1 %_10.i, i1 false
  br i1 %or.cond.i22, label %bb3.i, label %bb16

bb16:                                             ; preds = %bb3.i, %bb1.i, %bb12
  %merge_state.sroa.13.0 = phi ptr [ %spec.select, %bb12 ], [ %_18.i, %bb1.i ], [ %_25.i, %bb3.i ]
  %merge_state.sroa.7.0 = phi ptr [ %_22, %bb12 ], [ %_21.i, %bb1.i ], [ %_22, %bb3.i ]
  %merge_state.sroa.0.0 = phi ptr [ %scratch.0, %bb12 ], [ %scratch.0, %bb1.i ], [ %_20.i, %bb3.i ]
  %21 = ptrtoint ptr %merge_state.sroa.7.0 to i64
  %22 = ptrtoint ptr %merge_state.sroa.0.0 to i64
  %23 = sub nuw i64 %21, %22
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %merge_state.sroa.13.0, ptr align 8 %merge_state.sroa.0.0, i64 %23, i1 false), !noalias !2028
  br label %bb18

bb18:                                             ; preds = %bb2, %start, %bb16
  ret void
}

; core::slice::sort::stable::quicksort::stable_partition
; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17h4eb5a3e8e16257b0E(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 captures(none) %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %0, i1 noundef zeroext %pivot_goes_left, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #7 {
start:
  %_8 = icmp samesign uge i64 %scratch.1, %v.1
  %.not = icmp ult i64 %0, %v.1
  %or.cond = and i1 %_8, %.not
  br i1 %or.cond, label %bb33, label %bb31, !prof !2033

bb33:                                             ; preds = %start
  %pivot = getelementptr inbounds nuw i32, ptr %v.0, i64 %0
  %_86 = getelementptr i32, ptr %scratch.0, i64 %v.1
  %_8.i70 = zext i1 %pivot_goes_left to i64
  br label %bb3

bb31:                                             ; preds = %start
  tail call void @llvm.trap()
  unreachable

bb3:                                              ; preds = %bb23, %bb33
  %state.sroa.27.0 = phi i64 [ 0, %bb33 ], [ %14, %bb23 ]
  %state.sroa.9.0 = phi ptr [ %v.0, %bb33 ], [ %_9.i71, %bb23 ]
  %state.sroa.43.0 = phi ptr [ %_86, %bb33 ], [ %12, %bb23 ]
  %pivot_pos.sroa.0.0 = phi i64 [ %0, %bb33 ], [ %v.1, %bb23 ]
  %1 = tail call i64 @llvm.usub.sat.i64(i64 %pivot_pos.sroa.0.0, i64 3)
  %unroll_end = getelementptr inbounds nuw i32, ptr %v.0, i64 %1
  %_1985 = icmp ult ptr %state.sroa.9.0, %unroll_end
  br i1 %_1985, label %bb6, label %bb16

bb6:                                              ; preds = %bb3, %bb6
  %state.sroa.43.188 = phi ptr [ %8, %bb6 ], [ %state.sroa.43.0, %bb3 ]
  %state.sroa.9.187 = phi ptr [ %_9.i54, %bb6 ], [ %state.sroa.9.0, %bb3 ]
  %state.sroa.27.186 = phi i64 [ %9, %bb6 ], [ %state.sroa.27.0, %bb3 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2034)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2037)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2039)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2042)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2044)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2047)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2049)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2052)
  %_3.i.i.i.i = load i32, ptr %state.sroa.9.187, align 4, !alias.scope !2054, !noalias !2055, !noundef !37
  %_4.i.i.i.i = load i32, ptr %pivot, align 4, !alias.scope !2055, !noalias !2054, !noundef !37
  %_0.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %2 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -4
  %dst_base.sroa.0.0.i = select i1 %_0.i, ptr %scratch.0, ptr %2
  %dst.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i, i64 %state.sroa.27.186
  store i32 %_3.i.i.i.i, ptr %dst.i, align 4, !noalias !2056
  %_8.i = zext i1 %_0.i to i64
  %3 = add i64 %state.sroa.27.186, %_8.i
  %_9.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2059)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2062)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2064)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2067)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2069)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2072)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2074)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2077)
  %_3.i.i.i.i25 = load i32, ptr %_9.i, align 4, !alias.scope !2079, !noalias !2080, !noundef !37
  %_4.i.i.i.i26 = load i32, ptr %pivot, align 4, !alias.scope !2080, !noalias !2079, !noundef !37
  %_0.i27 = icmp slt i32 %_3.i.i.i.i25, %_4.i.i.i.i26
  %4 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -8
  %dst_base.sroa.0.0.i29 = select i1 %_0.i27, ptr %scratch.0, ptr %4
  %dst.i31 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29, i64 %3
  store i32 %_3.i.i.i.i25, ptr %dst.i31, align 4, !noalias !2081
  %_8.i33 = zext i1 %_0.i27 to i64
  %5 = add i64 %3, %_8.i33
  %_9.i34 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2084)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2087)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2089)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2092)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2094)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2097)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2099)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2102)
  %_3.i.i.i.i35 = load i32, ptr %_9.i34, align 4, !alias.scope !2104, !noalias !2105, !noundef !37
  %_4.i.i.i.i36 = load i32, ptr %pivot, align 4, !alias.scope !2105, !noalias !2104, !noundef !37
  %_0.i37 = icmp slt i32 %_3.i.i.i.i35, %_4.i.i.i.i36
  %6 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -12
  %dst_base.sroa.0.0.i39 = select i1 %_0.i37, ptr %scratch.0, ptr %6
  %dst.i41 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39, i64 %5
  store i32 %_3.i.i.i.i35, ptr %dst.i41, align 4, !noalias !2106
  %_8.i43 = zext i1 %_0.i37 to i64
  %7 = add i64 %5, %_8.i43
  %_9.i44 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2109)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2112)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2114)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2117)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2119)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2122)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2124)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2127)
  %_3.i.i.i.i45 = load i32, ptr %_9.i44, align 4, !alias.scope !2129, !noalias !2130, !noundef !37
  %_4.i.i.i.i46 = load i32, ptr %pivot, align 4, !alias.scope !2130, !noalias !2129, !noundef !37
  %_0.i47 = icmp slt i32 %_3.i.i.i.i45, %_4.i.i.i.i46
  %8 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -16
  %dst_base.sroa.0.0.i49 = select i1 %_0.i47, ptr %scratch.0, ptr %8
  %dst.i51 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49, i64 %7
  store i32 %_3.i.i.i.i45, ptr %dst.i51, align 4, !noalias !2131
  %_8.i53 = zext i1 %_0.i47 to i64
  %9 = add i64 %7, %_8.i53
  %_9.i54 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 16
  %_19 = icmp ult ptr %_9.i54, %unroll_end
  br i1 %_19, label %bb6, label %bb16

bb16:                                             ; preds = %bb6, %bb3
  %state.sroa.27.1.lcssa = phi i64 [ %state.sroa.27.0, %bb3 ], [ %9, %bb6 ]
  %state.sroa.9.1.lcssa = phi ptr [ %state.sroa.9.0, %bb3 ], [ %_9.i54, %bb6 ]
  %state.sroa.43.1.lcssa = phi ptr [ %state.sroa.43.0, %bb3 ], [ %8, %bb6 ]
  %loop_end = getelementptr inbounds nuw i32, ptr %v.0, i64 %pivot_pos.sroa.0.0
  %_4791 = icmp ult ptr %state.sroa.9.1.lcssa, %loop_end
  br i1 %_4791, label %bb18, label %bb21

bb21:                                             ; preds = %bb18, %bb16
  %state.sroa.27.2.lcssa = phi i64 [ %state.sroa.27.1.lcssa, %bb16 ], [ %11, %bb18 ]
  %state.sroa.9.2.lcssa = phi ptr [ %state.sroa.9.1.lcssa, %bb16 ], [ %_9.i64, %bb18 ]
  %state.sroa.43.2.lcssa = phi ptr [ %state.sroa.43.1.lcssa, %bb16 ], [ %10, %bb18 ]
  %_55 = icmp eq i64 %pivot_pos.sroa.0.0, %v.1
  br i1 %_55, label %bb22, label %bb23

bb18:                                             ; preds = %bb16, %bb18
  %state.sroa.43.294 = phi ptr [ %10, %bb18 ], [ %state.sroa.43.1.lcssa, %bb16 ]
  %state.sroa.9.293 = phi ptr [ %_9.i64, %bb18 ], [ %state.sroa.9.1.lcssa, %bb16 ]
  %state.sroa.27.292 = phi i64 [ %11, %bb18 ], [ %state.sroa.27.1.lcssa, %bb16 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2134)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2137)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2139)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2142)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2144)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2147)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2149)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2152)
  %_3.i.i.i.i55 = load i32, ptr %state.sroa.9.293, align 4, !alias.scope !2154, !noalias !2155, !noundef !37
  %_4.i.i.i.i56 = load i32, ptr %pivot, align 4, !alias.scope !2155, !noalias !2154, !noundef !37
  %_0.i57 = icmp slt i32 %_3.i.i.i.i55, %_4.i.i.i.i56
  %10 = getelementptr inbounds i8, ptr %state.sroa.43.294, i64 -4
  %dst_base.sroa.0.0.i59 = select i1 %_0.i57, ptr %scratch.0, ptr %10
  %dst.i61 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59, i64 %state.sroa.27.292
  store i32 %_3.i.i.i.i55, ptr %dst.i61, align 4, !noalias !2156
  %_8.i63 = zext i1 %_0.i57 to i64
  %11 = add i64 %state.sroa.27.292, %_8.i63
  %_9.i64 = getelementptr inbounds nuw i8, ptr %state.sroa.9.293, i64 4
  %_47 = icmp ult ptr %_9.i64, %loop_end
  br i1 %_47, label %bb18, label %bb21

bb23:                                             ; preds = %bb21
  %12 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa, i64 -4
  %dst_base.sroa.0.0.i66 = select i1 %pivot_goes_left, ptr %scratch.0, ptr %12
  %dst.i68 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i66, i64 %state.sroa.27.2.lcssa
  %13 = load i32, ptr %state.sroa.9.2.lcssa, align 4, !noalias !2159
  store i32 %13, ptr %dst.i68, align 4, !noalias !2159
  %14 = add i64 %state.sroa.27.2.lcssa, %_8.i70
  %_9.i71 = getelementptr inbounds nuw i8, ptr %state.sroa.9.2.lcssa, i64 4
  br label %bb3

bb22:                                             ; preds = %bb21
  %15 = shl i64 %state.sroa.27.2.lcssa, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.0, ptr nonnull align 4 %scratch.0, i64 %15, i1 false)
  %_63 = sub i64 %v.1, %state.sroa.27.2.lcssa
  %_9798.not = icmp eq i64 %v.1, %state.sroa.27.2.lcssa
  br i1 %_9798.not, label %bb30, label %bb42.lr.ph

bb42.lr.ph:                                       ; preds = %bb22
  %16 = getelementptr i32, ptr %v.0, i64 %state.sroa.27.2.lcssa
  %xtraiter = and i64 %_63, 3
  %17 = sub i64 %state.sroa.27.2.lcssa, %v.1
  %18 = icmp ugt i64 %17, -4
  br i1 %18, label %bb30.loopexit.unr-lcssa, label %bb42.lr.ph.new

bb42.lr.ph.new:                                   ; preds = %bb42.lr.ph
  %unroll_iter = and i64 %_63, -4
  %invariant.gep = getelementptr i8, ptr %16, i64 4
  %invariant.gep114 = getelementptr i8, ptr %16, i64 8
  %invariant.gep116 = getelementptr i8, ptr %16, i64 12
  br label %bb42

bb42:                                             ; preds = %bb42, %bb42.lr.ph.new
  %iter.sroa.0.099 = phi i64 [ 0, %bb42.lr.ph.new ], [ %29, %bb42 ]
  %niter = phi i64 [ 0, %bb42.lr.ph.new ], [ %niter.next.3, %bb42 ]
  %19 = getelementptr i32, ptr %16, i64 %iter.sroa.0.099
  %20 = xor i64 %iter.sroa.0.099, -1
  %21 = getelementptr i32, ptr %_86, i64 %20
  %22 = load i32, ptr %21, align 4
  store i32 %22, ptr %19, align 4
  %gep = getelementptr i32, ptr %invariant.gep, i64 %iter.sroa.0.099
  %23 = xor i64 %iter.sroa.0.099, -2
  %24 = getelementptr i32, ptr %_86, i64 %23
  %25 = load i32, ptr %24, align 4
  store i32 %25, ptr %gep, align 4
  %gep115 = getelementptr i32, ptr %invariant.gep114, i64 %iter.sroa.0.099
  %26 = xor i64 %iter.sroa.0.099, -3
  %27 = getelementptr i32, ptr %_86, i64 %26
  %28 = load i32, ptr %27, align 4
  store i32 %28, ptr %gep115, align 4
  %29 = add nuw i64 %iter.sroa.0.099, 4
  %gep117 = getelementptr i32, ptr %invariant.gep116, i64 %iter.sroa.0.099
  %30 = xor i64 %iter.sroa.0.099, -4
  %31 = getelementptr i32, ptr %_86, i64 %30
  %32 = load i32, ptr %31, align 4
  store i32 %32, ptr %gep117, align 4
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %bb30.loopexit.unr-lcssa, label %bb42

bb30.loopexit.unr-lcssa:                          ; preds = %bb42, %bb42.lr.ph
  %iter.sroa.0.099.unr = phi i64 [ 0, %bb42.lr.ph ], [ %29, %bb42 ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb30, label %bb42.epil

bb42.epil:                                        ; preds = %bb30.loopexit.unr-lcssa, %bb42.epil
  %iter.sroa.0.099.epil = phi i64 [ %33, %bb42.epil ], [ %iter.sroa.0.099.unr, %bb30.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %bb42.epil ], [ 0, %bb30.loopexit.unr-lcssa ]
  %33 = add nuw i64 %iter.sroa.0.099.epil, 1
  %34 = getelementptr i32, ptr %16, i64 %iter.sroa.0.099.epil
  %35 = xor i64 %iter.sroa.0.099.epil, -1
  %36 = getelementptr i32, ptr %_86, i64 %35
  %37 = load i32, ptr %36, align 4
  store i32 %37, ptr %34, align 4
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %bb30, label %bb42.epil, !llvm.loop !2162

bb30:                                             ; preds = %bb30.loopexit.unr-lcssa, %bb42.epil, %bb22
  ret i64 %state.sroa.27.2.lcssa
}

; core::slice::sort::stable::quicksort::stable_partition
; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17h5440239c8a650de6E(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 captures(none) %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %0, i1 noundef zeroext %pivot_goes_left, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #7 {
start:
  %_8 = icmp samesign uge i64 %scratch.1, %v.1
  %.not = icmp ult i64 %0, %v.1
  %or.cond = and i1 %_8, %.not
  br i1 %or.cond, label %bb33, label %bb31, !prof !2033

bb33:                                             ; preds = %start
  %pivot = getelementptr inbounds nuw i32, ptr %v.0, i64 %0
  %_86 = getelementptr i32, ptr %scratch.0, i64 %v.1
  %_8.i70 = zext i1 %pivot_goes_left to i64
  br label %bb3

bb31:                                             ; preds = %start
  tail call void @llvm.trap()
  unreachable

bb3:                                              ; preds = %bb23, %bb33
  %state.sroa.27.0 = phi i64 [ 0, %bb33 ], [ %14, %bb23 ]
  %state.sroa.9.0 = phi ptr [ %v.0, %bb33 ], [ %_9.i71, %bb23 ]
  %state.sroa.43.0 = phi ptr [ %_86, %bb33 ], [ %12, %bb23 ]
  %pivot_pos.sroa.0.0 = phi i64 [ %0, %bb33 ], [ %v.1, %bb23 ]
  %1 = tail call i64 @llvm.usub.sat.i64(i64 %pivot_pos.sroa.0.0, i64 3)
  %unroll_end = getelementptr inbounds nuw i32, ptr %v.0, i64 %1
  %_1985 = icmp ult ptr %state.sroa.9.0, %unroll_end
  br i1 %_1985, label %bb6, label %bb16

bb6:                                              ; preds = %bb3, %bb6
  %state.sroa.43.188 = phi ptr [ %8, %bb6 ], [ %state.sroa.43.0, %bb3 ]
  %state.sroa.9.187 = phi ptr [ %_9.i54, %bb6 ], [ %state.sroa.9.0, %bb3 ]
  %state.sroa.27.186 = phi i64 [ %9, %bb6 ], [ %state.sroa.27.0, %bb3 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2164)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2167)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2169)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2172)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2174)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2177)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2179)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2182)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2184)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2187)
  %_3.i.i.i.i.i = load i32, ptr %pivot, align 4, !alias.scope !2189, !noalias !2190, !noundef !37
  %_4.i.i.i.i.i = load i32, ptr %state.sroa.9.187, align 4, !alias.scope !2190, !noalias !2189, !noundef !37
  %_0.i.i = icmp sge i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %2 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -4
  %dst_base.sroa.0.0.i = select i1 %_0.i.i, ptr %scratch.0, ptr %2
  %dst.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i, i64 %state.sroa.27.186
  store i32 %_4.i.i.i.i.i, ptr %dst.i, align 4, !noalias !2191
  %_8.i = zext i1 %_0.i.i to i64
  %3 = add i64 %state.sroa.27.186, %_8.i
  %_9.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2194)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2197)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2199)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2202)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2204)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2207)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2209)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2212)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2214)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2217)
  %_3.i.i.i.i.i25 = load i32, ptr %pivot, align 4, !alias.scope !2219, !noalias !2220, !noundef !37
  %_4.i.i.i.i.i26 = load i32, ptr %_9.i, align 4, !alias.scope !2220, !noalias !2219, !noundef !37
  %_0.i.i27 = icmp sge i32 %_3.i.i.i.i.i25, %_4.i.i.i.i.i26
  %4 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -8
  %dst_base.sroa.0.0.i29 = select i1 %_0.i.i27, ptr %scratch.0, ptr %4
  %dst.i31 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29, i64 %3
  store i32 %_4.i.i.i.i.i26, ptr %dst.i31, align 4, !noalias !2221
  %_8.i33 = zext i1 %_0.i.i27 to i64
  %5 = add i64 %3, %_8.i33
  %_9.i34 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2224)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2227)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2229)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2232)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2234)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2237)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2239)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2242)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2244)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2247)
  %_3.i.i.i.i.i35 = load i32, ptr %pivot, align 4, !alias.scope !2249, !noalias !2250, !noundef !37
  %_4.i.i.i.i.i36 = load i32, ptr %_9.i34, align 4, !alias.scope !2250, !noalias !2249, !noundef !37
  %_0.i.i37 = icmp sge i32 %_3.i.i.i.i.i35, %_4.i.i.i.i.i36
  %6 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -12
  %dst_base.sroa.0.0.i39 = select i1 %_0.i.i37, ptr %scratch.0, ptr %6
  %dst.i41 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39, i64 %5
  store i32 %_4.i.i.i.i.i36, ptr %dst.i41, align 4, !noalias !2251
  %_8.i43 = zext i1 %_0.i.i37 to i64
  %7 = add i64 %5, %_8.i43
  %_9.i44 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2254)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2257)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2259)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2262)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2264)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2267)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2269)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2272)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2274)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2277)
  %_3.i.i.i.i.i45 = load i32, ptr %pivot, align 4, !alias.scope !2279, !noalias !2280, !noundef !37
  %_4.i.i.i.i.i46 = load i32, ptr %_9.i44, align 4, !alias.scope !2280, !noalias !2279, !noundef !37
  %_0.i.i47 = icmp sge i32 %_3.i.i.i.i.i45, %_4.i.i.i.i.i46
  %8 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -16
  %dst_base.sroa.0.0.i49 = select i1 %_0.i.i47, ptr %scratch.0, ptr %8
  %dst.i51 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49, i64 %7
  store i32 %_4.i.i.i.i.i46, ptr %dst.i51, align 4, !noalias !2281
  %_8.i53 = zext i1 %_0.i.i47 to i64
  %9 = add i64 %7, %_8.i53
  %_9.i54 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 16
  %_19 = icmp ult ptr %_9.i54, %unroll_end
  br i1 %_19, label %bb6, label %bb16

bb16:                                             ; preds = %bb6, %bb3
  %state.sroa.27.1.lcssa = phi i64 [ %state.sroa.27.0, %bb3 ], [ %9, %bb6 ]
  %state.sroa.9.1.lcssa = phi ptr [ %state.sroa.9.0, %bb3 ], [ %_9.i54, %bb6 ]
  %state.sroa.43.1.lcssa = phi ptr [ %state.sroa.43.0, %bb3 ], [ %8, %bb6 ]
  %loop_end = getelementptr inbounds nuw i32, ptr %v.0, i64 %pivot_pos.sroa.0.0
  %_4791 = icmp ult ptr %state.sroa.9.1.lcssa, %loop_end
  br i1 %_4791, label %bb18, label %bb21

bb21:                                             ; preds = %bb18, %bb16
  %state.sroa.27.2.lcssa = phi i64 [ %state.sroa.27.1.lcssa, %bb16 ], [ %11, %bb18 ]
  %state.sroa.9.2.lcssa = phi ptr [ %state.sroa.9.1.lcssa, %bb16 ], [ %_9.i64, %bb18 ]
  %state.sroa.43.2.lcssa = phi ptr [ %state.sroa.43.1.lcssa, %bb16 ], [ %10, %bb18 ]
  %_55 = icmp eq i64 %pivot_pos.sroa.0.0, %v.1
  br i1 %_55, label %bb22, label %bb23

bb18:                                             ; preds = %bb16, %bb18
  %state.sroa.43.294 = phi ptr [ %10, %bb18 ], [ %state.sroa.43.1.lcssa, %bb16 ]
  %state.sroa.9.293 = phi ptr [ %_9.i64, %bb18 ], [ %state.sroa.9.1.lcssa, %bb16 ]
  %state.sroa.27.292 = phi i64 [ %11, %bb18 ], [ %state.sroa.27.1.lcssa, %bb16 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2284)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2287)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2289)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2292)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2294)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2297)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2299)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2302)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2304)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2307)
  %_3.i.i.i.i.i55 = load i32, ptr %pivot, align 4, !alias.scope !2309, !noalias !2310, !noundef !37
  %_4.i.i.i.i.i56 = load i32, ptr %state.sroa.9.293, align 4, !alias.scope !2310, !noalias !2309, !noundef !37
  %_0.i.i57 = icmp sge i32 %_3.i.i.i.i.i55, %_4.i.i.i.i.i56
  %10 = getelementptr inbounds i8, ptr %state.sroa.43.294, i64 -4
  %dst_base.sroa.0.0.i59 = select i1 %_0.i.i57, ptr %scratch.0, ptr %10
  %dst.i61 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59, i64 %state.sroa.27.292
  store i32 %_4.i.i.i.i.i56, ptr %dst.i61, align 4, !noalias !2311
  %_8.i63 = zext i1 %_0.i.i57 to i64
  %11 = add i64 %state.sroa.27.292, %_8.i63
  %_9.i64 = getelementptr inbounds nuw i8, ptr %state.sroa.9.293, i64 4
  %_47 = icmp ult ptr %_9.i64, %loop_end
  br i1 %_47, label %bb18, label %bb21

bb23:                                             ; preds = %bb21
  %12 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa, i64 -4
  %dst_base.sroa.0.0.i66 = select i1 %pivot_goes_left, ptr %scratch.0, ptr %12
  %dst.i68 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i66, i64 %state.sroa.27.2.lcssa
  %13 = load i32, ptr %state.sroa.9.2.lcssa, align 4, !noalias !2314
  store i32 %13, ptr %dst.i68, align 4, !noalias !2314
  %14 = add i64 %state.sroa.27.2.lcssa, %_8.i70
  %_9.i71 = getelementptr inbounds nuw i8, ptr %state.sroa.9.2.lcssa, i64 4
  br label %bb3

bb22:                                             ; preds = %bb21
  %15 = shl i64 %state.sroa.27.2.lcssa, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.0, ptr nonnull align 4 %scratch.0, i64 %15, i1 false)
  %_63 = sub i64 %v.1, %state.sroa.27.2.lcssa
  %_9798.not = icmp eq i64 %v.1, %state.sroa.27.2.lcssa
  br i1 %_9798.not, label %bb30, label %bb42.lr.ph

bb42.lr.ph:                                       ; preds = %bb22
  %16 = getelementptr i32, ptr %v.0, i64 %state.sroa.27.2.lcssa
  %xtraiter = and i64 %_63, 3
  %17 = sub i64 %state.sroa.27.2.lcssa, %v.1
  %18 = icmp ugt i64 %17, -4
  br i1 %18, label %bb30.loopexit.unr-lcssa, label %bb42.lr.ph.new

bb42.lr.ph.new:                                   ; preds = %bb42.lr.ph
  %unroll_iter = and i64 %_63, -4
  %invariant.gep = getelementptr i8, ptr %16, i64 4
  %invariant.gep114 = getelementptr i8, ptr %16, i64 8
  %invariant.gep116 = getelementptr i8, ptr %16, i64 12
  br label %bb42

bb42:                                             ; preds = %bb42, %bb42.lr.ph.new
  %iter.sroa.0.099 = phi i64 [ 0, %bb42.lr.ph.new ], [ %29, %bb42 ]
  %niter = phi i64 [ 0, %bb42.lr.ph.new ], [ %niter.next.3, %bb42 ]
  %19 = getelementptr i32, ptr %16, i64 %iter.sroa.0.099
  %20 = xor i64 %iter.sroa.0.099, -1
  %21 = getelementptr i32, ptr %_86, i64 %20
  %22 = load i32, ptr %21, align 4
  store i32 %22, ptr %19, align 4
  %gep = getelementptr i32, ptr %invariant.gep, i64 %iter.sroa.0.099
  %23 = xor i64 %iter.sroa.0.099, -2
  %24 = getelementptr i32, ptr %_86, i64 %23
  %25 = load i32, ptr %24, align 4
  store i32 %25, ptr %gep, align 4
  %gep115 = getelementptr i32, ptr %invariant.gep114, i64 %iter.sroa.0.099
  %26 = xor i64 %iter.sroa.0.099, -3
  %27 = getelementptr i32, ptr %_86, i64 %26
  %28 = load i32, ptr %27, align 4
  store i32 %28, ptr %gep115, align 4
  %29 = add nuw i64 %iter.sroa.0.099, 4
  %gep117 = getelementptr i32, ptr %invariant.gep116, i64 %iter.sroa.0.099
  %30 = xor i64 %iter.sroa.0.099, -4
  %31 = getelementptr i32, ptr %_86, i64 %30
  %32 = load i32, ptr %31, align 4
  store i32 %32, ptr %gep117, align 4
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %bb30.loopexit.unr-lcssa, label %bb42

bb30.loopexit.unr-lcssa:                          ; preds = %bb42, %bb42.lr.ph
  %iter.sroa.0.099.unr = phi i64 [ 0, %bb42.lr.ph ], [ %29, %bb42 ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb30, label %bb42.epil

bb42.epil:                                        ; preds = %bb30.loopexit.unr-lcssa, %bb42.epil
  %iter.sroa.0.099.epil = phi i64 [ %33, %bb42.epil ], [ %iter.sroa.0.099.unr, %bb30.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %bb42.epil ], [ 0, %bb30.loopexit.unr-lcssa ]
  %33 = add nuw i64 %iter.sroa.0.099.epil, 1
  %34 = getelementptr i32, ptr %16, i64 %iter.sroa.0.099.epil
  %35 = xor i64 %iter.sroa.0.099.epil, -1
  %36 = getelementptr i32, ptr %_86, i64 %35
  %37 = load i32, ptr %36, align 4
  store i32 %37, ptr %34, align 4
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %bb30, label %bb42.epil, !llvm.loop !2317

bb30:                                             ; preds = %bb30.loopexit.unr-lcssa, %bb42.epil, %bb22
  ret i64 %state.sroa.27.2.lcssa
}

; core::slice::sort::stable::quicksort::stable_partition
; Function Attrs: nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17h7194912e7af17dfcE(ptr noalias noundef nonnull align 8 captures(address) %v.0, i64 noundef range(i64 0, 384307168202282326) %v.1, ptr noalias noundef nonnull align 8 captures(none) %scratch.0, i64 noundef range(i64 0, 384307168202282326) %scratch.1, i64 noundef %0, i1 noundef zeroext %pivot_goes_left, ptr noalias noundef nonnull readnone align 1 captures(none) %is_less) unnamed_addr #8 {
start:
  %_8 = icmp samesign uge i64 %scratch.1, %v.1
  %.not = icmp ult i64 %0, %v.1
  %or.cond = and i1 %_8, %.not
  br i1 %or.cond, label %bb33, label %bb31, !prof !2033

bb33:                                             ; preds = %start
  %pivot = getelementptr inbounds nuw %"alloc::string::String", ptr %v.0, i64 %0
  %_86 = getelementptr %"alloc::string::String", ptr %scratch.0, i64 %v.1
  %1 = getelementptr inbounds nuw i8, ptr %pivot, i64 8
  %2 = getelementptr inbounds nuw i8, ptr %pivot, i64 16
  %_8.i27 = zext i1 %pivot_goes_left to i64
  br label %bb3

bb31:                                             ; preds = %start
  tail call void @llvm.trap()
  unreachable

bb3:                                              ; preds = %bb23, %bb33
  %state.sroa.11.0 = phi i64 [ 0, %bb33 ], [ %12, %bb23 ]
  %state.sroa.5.0 = phi ptr [ %v.0, %bb33 ], [ %_9.i28, %bb23 ]
  %state.sroa.19.0 = phi ptr [ %_86, %bb33 ], [ %11, %bb23 ]
  %pivot_pos.sroa.0.0 = phi i64 [ %0, %bb33 ], [ %v.1, %bb23 ]
  %loop_end = getelementptr inbounds nuw %"alloc::string::String", ptr %v.0, i64 %pivot_pos.sroa.0.0
  %_4734 = icmp ult ptr %state.sroa.5.0, %loop_end
  br i1 %_4734, label %bb18, label %bb21

bb21:                                             ; preds = %bb18, %bb3
  %state.sroa.11.1.lcssa = phi i64 [ %state.sroa.11.0, %bb3 ], [ %10, %bb18 ]
  %state.sroa.5.1.lcssa = phi ptr [ %state.sroa.5.0, %bb3 ], [ %_9.i, %bb18 ]
  %state.sroa.19.1.lcssa = phi ptr [ %state.sroa.19.0, %bb3 ], [ %9, %bb18 ]
  %_55 = icmp eq i64 %pivot_pos.sroa.0.0, %v.1
  br i1 %_55, label %bb22, label %bb23

bb18:                                             ; preds = %bb3, %bb18
  %state.sroa.19.137 = phi ptr [ %9, %bb18 ], [ %state.sroa.19.0, %bb3 ]
  %state.sroa.5.136 = phi ptr [ %_9.i, %bb18 ], [ %state.sroa.5.0, %bb3 ]
  %state.sroa.11.135 = phi i64 [ %10, %bb18 ], [ %state.sroa.11.0, %bb3 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2318)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2321)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2323)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2326)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2328)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2331)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2333)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2336)
  %3 = getelementptr inbounds nuw i8, ptr %state.sroa.5.136, i64 8
  %_7.i.i.i.i = load ptr, ptr %3, align 8, !alias.scope !2338, !noalias !2339, !nonnull !37, !noundef !37
  %4 = getelementptr inbounds nuw i8, ptr %state.sroa.5.136, i64 16
  %len1.i.i.i.i = load i64, ptr %4, align 8, !alias.scope !2338, !noalias !2339, !noundef !37
  %_14.i.i.i.i = load ptr, ptr %1, align 8, !alias.scope !2339, !noalias !2338, !nonnull !37, !noundef !37
  %5 = load i64, ptr %2, align 8, !alias.scope !2339, !noalias !2338, !noundef !37
  %spec.store.select.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %len1.i.i.i.i, i64 range(i64 0, -9223372036854775808) %5)
  %6 = tail call i32 @memcmp(ptr nonnull readonly align 1 %_7.i.i.i.i, ptr nonnull readonly align 1 %_14.i.i.i.i, i64 %spec.store.select.i.i.i.i.i.i), !alias.scope !2340, !noalias !2347
  %7 = sext i32 %6 to i64
  %_15.i.i.i.i.i.i = icmp eq i32 %6, 0
  %diff.i.i.i.i.i.i = sub nsw i64 %len1.i.i.i.i, %5
  %spec.select.i.i.i.i.i.i = select i1 %_15.i.i.i.i.i.i, i64 %diff.i.i.i.i.i.i, i64 %7
  %8 = icmp slt i64 %spec.select.i.i.i.i.i.i, 0
  %9 = getelementptr inbounds i8, ptr %state.sroa.19.137, i64 -24
  %dst_base.sroa.0.0.i = select i1 %8, ptr %scratch.0, ptr %9
  %dst.i = getelementptr inbounds nuw %"alloc::string::String", ptr %dst_base.sroa.0.0.i, i64 %state.sroa.11.135
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %dst.i, ptr noundef nonnull align 8 dereferenceable(24) %state.sroa.5.136, i64 24, i1 false), !noalias !2348
  %spec.select.i.i.i.i.i.i.lobit = lshr i64 %spec.select.i.i.i.i.i.i, 63
  %10 = add i64 %spec.select.i.i.i.i.i.i.lobit, %state.sroa.11.135
  %_9.i = getelementptr inbounds nuw i8, ptr %state.sroa.5.136, i64 24
  %_47 = icmp ult ptr %_9.i, %loop_end
  br i1 %_47, label %bb18, label %bb21

bb23:                                             ; preds = %bb21
  %11 = getelementptr inbounds i8, ptr %state.sroa.19.1.lcssa, i64 -24
  %dst_base.sroa.0.0.i23 = select i1 %pivot_goes_left, ptr %scratch.0, ptr %11
  %dst.i25 = getelementptr inbounds nuw %"alloc::string::String", ptr %dst_base.sroa.0.0.i23, i64 %state.sroa.11.1.lcssa
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %dst.i25, ptr noundef nonnull align 8 dereferenceable(24) %state.sroa.5.1.lcssa, i64 24, i1 false), !noalias !2351
  %12 = add i64 %state.sroa.11.1.lcssa, %_8.i27
  %_9.i28 = getelementptr inbounds nuw i8, ptr %state.sroa.5.1.lcssa, i64 24
  br label %bb3

bb22:                                             ; preds = %bb21
  %13 = mul i64 %state.sroa.11.1.lcssa, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %v.0, ptr nonnull align 8 %scratch.0, i64 %13, i1 false)
  %_63 = sub i64 %v.1, %state.sroa.11.1.lcssa
  %_9740.not = icmp eq i64 %v.1, %state.sroa.11.1.lcssa
  br i1 %_9740.not, label %bb30, label %bb42.lr.ph

bb42.lr.ph:                                       ; preds = %bb22
  %14 = getelementptr %"alloc::string::String", ptr %v.0, i64 %state.sroa.11.1.lcssa
  %.neg = add i64 %state.sroa.11.1.lcssa, 1
  %xtraiter = and i64 %_63, 1
  %15 = icmp eq i64 %v.1, %.neg
  br i1 %15, label %bb30.loopexit.unr-lcssa, label %bb42.lr.ph.new

bb42.lr.ph.new:                                   ; preds = %bb42.lr.ph
  %unroll_iter = and i64 %_63, -2
  %invariant.gep = getelementptr i8, ptr %14, i64 24
  br label %bb42

bb42:                                             ; preds = %bb42, %bb42.lr.ph.new
  %iter.sroa.0.041 = phi i64 [ 0, %bb42.lr.ph.new ], [ %19, %bb42 ]
  %niter = phi i64 [ 0, %bb42.lr.ph.new ], [ %niter.next.1, %bb42 ]
  %16 = getelementptr %"alloc::string::String", ptr %14, i64 %iter.sroa.0.041
  %17 = xor i64 %iter.sroa.0.041, -1
  %18 = getelementptr %"alloc::string::String", ptr %_86, i64 %17
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(24) %18, i64 24, i1 false)
  %19 = add nuw i64 %iter.sroa.0.041, 2
  %gep = getelementptr %"alloc::string::String", ptr %invariant.gep, i64 %iter.sroa.0.041
  %20 = xor i64 %iter.sroa.0.041, -2
  %21 = getelementptr %"alloc::string::String", ptr %_86, i64 %20
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %gep, ptr noundef nonnull align 8 dereferenceable(24) %21, i64 24, i1 false)
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %bb30.loopexit.unr-lcssa, label %bb42

bb30.loopexit.unr-lcssa:                          ; preds = %bb42, %bb42.lr.ph
  %iter.sroa.0.041.unr = phi i64 [ 0, %bb42.lr.ph ], [ %19, %bb42 ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb30, label %bb42.epil

bb42.epil:                                        ; preds = %bb30.loopexit.unr-lcssa
  %22 = getelementptr %"alloc::string::String", ptr %14, i64 %iter.sroa.0.041.unr
  %23 = xor i64 %iter.sroa.0.041.unr, -1
  %24 = getelementptr %"alloc::string::String", ptr %_86, i64 %23
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %22, ptr noundef nonnull align 8 dereferenceable(24) %24, i64 24, i1 false)
  br label %bb30

bb30:                                             ; preds = %bb42.epil, %bb30.loopexit.unr-lcssa, %bb22
  ret i64 %state.sroa.11.1.lcssa
}

; core::slice::sort::stable::quicksort::stable_partition
; Function Attrs: nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17hb669f6af3ca404a3E(ptr noalias noundef nonnull align 8 captures(address) %v.0, i64 noundef range(i64 0, 384307168202282326) %v.1, ptr noalias noundef nonnull align 8 captures(none) %scratch.0, i64 noundef range(i64 0, 384307168202282326) %scratch.1, i64 noundef %0, i1 noundef zeroext %pivot_goes_left, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #8 {
start:
  %_8 = icmp samesign uge i64 %scratch.1, %v.1
  %.not = icmp ult i64 %0, %v.1
  %or.cond = and i1 %_8, %.not
  br i1 %or.cond, label %bb33, label %bb31, !prof !2033

bb33:                                             ; preds = %start
  %pivot = getelementptr inbounds nuw %"alloc::string::String", ptr %v.0, i64 %0
  %_86 = getelementptr %"alloc::string::String", ptr %scratch.0, i64 %v.1
  %1 = getelementptr inbounds nuw i8, ptr %pivot, i64 8
  %2 = getelementptr inbounds nuw i8, ptr %pivot, i64 16
  %_8.i27 = zext i1 %pivot_goes_left to i64
  br label %bb3

bb31:                                             ; preds = %start
  tail call void @llvm.trap()
  unreachable

bb3:                                              ; preds = %bb23, %bb33
  %state.sroa.11.0 = phi i64 [ 0, %bb33 ], [ %12, %bb23 ]
  %state.sroa.5.0 = phi ptr [ %v.0, %bb33 ], [ %_9.i28, %bb23 ]
  %state.sroa.19.0 = phi ptr [ %_86, %bb33 ], [ %11, %bb23 ]
  %pivot_pos.sroa.0.0 = phi i64 [ %0, %bb33 ], [ %v.1, %bb23 ]
  %loop_end = getelementptr inbounds nuw %"alloc::string::String", ptr %v.0, i64 %pivot_pos.sroa.0.0
  %_4734 = icmp ult ptr %state.sroa.5.0, %loop_end
  br i1 %_4734, label %bb18, label %bb21

bb21:                                             ; preds = %bb18, %bb3
  %state.sroa.11.1.lcssa = phi i64 [ %state.sroa.11.0, %bb3 ], [ %10, %bb18 ]
  %state.sroa.5.1.lcssa = phi ptr [ %state.sroa.5.0, %bb3 ], [ %_9.i, %bb18 ]
  %state.sroa.19.1.lcssa = phi ptr [ %state.sroa.19.0, %bb3 ], [ %9, %bb18 ]
  %_55 = icmp eq i64 %pivot_pos.sroa.0.0, %v.1
  br i1 %_55, label %bb22, label %bb23

bb18:                                             ; preds = %bb3, %bb18
  %state.sroa.19.137 = phi ptr [ %9, %bb18 ], [ %state.sroa.19.0, %bb3 ]
  %state.sroa.5.136 = phi ptr [ %_9.i, %bb18 ], [ %state.sroa.5.0, %bb3 ]
  %state.sroa.11.135 = phi i64 [ %10, %bb18 ], [ %state.sroa.11.0, %bb3 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2354)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2357)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2359)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2362)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2364)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2367)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2369)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2372)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2374)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2377)
  %_7.i.i.i.i.i = load ptr, ptr %1, align 8, !alias.scope !2379, !noalias !2380, !nonnull !37, !noundef !37
  %len1.i.i.i.i.i = load i64, ptr %2, align 8, !alias.scope !2379, !noalias !2380, !noundef !37
  %3 = getelementptr inbounds nuw i8, ptr %state.sroa.5.136, i64 8
  %_14.i.i.i.i.i = load ptr, ptr %3, align 8, !alias.scope !2380, !noalias !2379, !nonnull !37, !noundef !37
  %4 = getelementptr inbounds nuw i8, ptr %state.sroa.5.136, i64 16
  %5 = load i64, ptr %4, align 8, !alias.scope !2380, !noalias !2379, !noundef !37
  %spec.store.select.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %len1.i.i.i.i.i, i64 range(i64 0, -9223372036854775808) %5)
  %6 = tail call i32 @memcmp(ptr nonnull readonly align 1 %_7.i.i.i.i.i, ptr nonnull readonly align 1 %_14.i.i.i.i.i, i64 %spec.store.select.i.i.i.i.i.i.i), !alias.scope !2381, !noalias !2388
  %7 = sext i32 %6 to i64
  %_15.i.i.i.i.i.i.i = icmp eq i32 %6, 0
  %diff.i.i.i.i.i.i.i = sub nsw i64 %len1.i.i.i.i.i, %5
  %spec.select.i.i.i.i.i.i.i = select i1 %_15.i.i.i.i.i.i.i, i64 %diff.i.i.i.i.i.i.i, i64 %7
  %8 = icmp sgt i64 %spec.select.i.i.i.i.i.i.i, -1
  %9 = getelementptr inbounds i8, ptr %state.sroa.19.137, i64 -24
  %dst_base.sroa.0.0.i = select i1 %8, ptr %scratch.0, ptr %9
  %dst.i = getelementptr inbounds nuw %"alloc::string::String", ptr %dst_base.sroa.0.0.i, i64 %state.sroa.11.135
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %dst.i, ptr noundef nonnull align 8 dereferenceable(24) %state.sroa.5.136, i64 24, i1 false), !noalias !2389
  %_8.i = zext i1 %8 to i64
  %10 = add i64 %state.sroa.11.135, %_8.i
  %_9.i = getelementptr inbounds nuw i8, ptr %state.sroa.5.136, i64 24
  %_47 = icmp ult ptr %_9.i, %loop_end
  br i1 %_47, label %bb18, label %bb21

bb23:                                             ; preds = %bb21
  %11 = getelementptr inbounds i8, ptr %state.sroa.19.1.lcssa, i64 -24
  %dst_base.sroa.0.0.i23 = select i1 %pivot_goes_left, ptr %scratch.0, ptr %11
  %dst.i25 = getelementptr inbounds nuw %"alloc::string::String", ptr %dst_base.sroa.0.0.i23, i64 %state.sroa.11.1.lcssa
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %dst.i25, ptr noundef nonnull align 8 dereferenceable(24) %state.sroa.5.1.lcssa, i64 24, i1 false), !noalias !2392
  %12 = add i64 %state.sroa.11.1.lcssa, %_8.i27
  %_9.i28 = getelementptr inbounds nuw i8, ptr %state.sroa.5.1.lcssa, i64 24
  br label %bb3

bb22:                                             ; preds = %bb21
  %13 = mul i64 %state.sroa.11.1.lcssa, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %v.0, ptr nonnull align 8 %scratch.0, i64 %13, i1 false)
  %_63 = sub i64 %v.1, %state.sroa.11.1.lcssa
  %_9740.not = icmp eq i64 %v.1, %state.sroa.11.1.lcssa
  br i1 %_9740.not, label %bb30, label %bb42.lr.ph

bb42.lr.ph:                                       ; preds = %bb22
  %14 = getelementptr %"alloc::string::String", ptr %v.0, i64 %state.sroa.11.1.lcssa
  %.neg = add i64 %state.sroa.11.1.lcssa, 1
  %xtraiter = and i64 %_63, 1
  %15 = icmp eq i64 %v.1, %.neg
  br i1 %15, label %bb30.loopexit.unr-lcssa, label %bb42.lr.ph.new

bb42.lr.ph.new:                                   ; preds = %bb42.lr.ph
  %unroll_iter = and i64 %_63, -2
  %invariant.gep = getelementptr i8, ptr %14, i64 24
  br label %bb42

bb42:                                             ; preds = %bb42, %bb42.lr.ph.new
  %iter.sroa.0.041 = phi i64 [ 0, %bb42.lr.ph.new ], [ %19, %bb42 ]
  %niter = phi i64 [ 0, %bb42.lr.ph.new ], [ %niter.next.1, %bb42 ]
  %16 = getelementptr %"alloc::string::String", ptr %14, i64 %iter.sroa.0.041
  %17 = xor i64 %iter.sroa.0.041, -1
  %18 = getelementptr %"alloc::string::String", ptr %_86, i64 %17
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(24) %18, i64 24, i1 false)
  %19 = add nuw i64 %iter.sroa.0.041, 2
  %gep = getelementptr %"alloc::string::String", ptr %invariant.gep, i64 %iter.sroa.0.041
  %20 = xor i64 %iter.sroa.0.041, -2
  %21 = getelementptr %"alloc::string::String", ptr %_86, i64 %20
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %gep, ptr noundef nonnull align 8 dereferenceable(24) %21, i64 24, i1 false)
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %bb30.loopexit.unr-lcssa, label %bb42

bb30.loopexit.unr-lcssa:                          ; preds = %bb42, %bb42.lr.ph
  %iter.sroa.0.041.unr = phi i64 [ 0, %bb42.lr.ph ], [ %19, %bb42 ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb30, label %bb42.epil

bb42.epil:                                        ; preds = %bb30.loopexit.unr-lcssa
  %22 = getelementptr %"alloc::string::String", ptr %14, i64 %iter.sroa.0.041.unr
  %23 = xor i64 %iter.sroa.0.041.unr, -1
  %24 = getelementptr %"alloc::string::String", ptr %_86, i64 %23
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %22, ptr noundef nonnull align 8 dereferenceable(24) %24, i64 24, i1 false)
  br label %bb30

bb30:                                             ; preds = %bb42.epil, %bb30.loopexit.unr-lcssa, %bb22
  ret i64 %state.sroa.11.1.lcssa
}

; core::slice::sort::stable::quicksort::PartitionState<T>::partition_one
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define noundef ptr @"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h853fe1197b1ea66aE"(ptr noalias noundef align 8 captures(none) dereferenceable(32) %self, i1 noundef zeroext %towards_left) unnamed_addr #14 {
start:
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 24
  %self1 = load ptr, ptr %0, align 8, !noundef !37
  %1 = getelementptr inbounds i8, ptr %self1, i64 -24
  store ptr %1, ptr %0, align 8
  %2 = load ptr, ptr %self, align 8
  %dst_base.sroa.0.0 = select i1 %towards_left, ptr %2, ptr %1
  %3 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %count = load i64, ptr %3, align 8, !noundef !37
  %dst = getelementptr inbounds nuw %"alloc::string::String", ptr %dst_base.sroa.0.0, i64 %count
  %4 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %src = load ptr, ptr %4, align 8, !noundef !37
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %dst, ptr noundef nonnull align 8 dereferenceable(24) %src, i64 24, i1 false)
  %_8 = zext i1 %towards_left to i64
  %5 = add i64 %count, %_8
  store i64 %5, ptr %3, align 8
  %_9 = getelementptr inbounds nuw i8, ptr %src, i64 24
  store ptr %_9, ptr %4, align 8
  ret ptr %dst
}

; core::slice::sort::stable::quicksort::PartitionState<T>::partition_one
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define noundef ptr @"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17haf29ddd56ec7721fE"(ptr noalias noundef align 8 captures(none) dereferenceable(32) %self, i1 noundef zeroext %towards_left) unnamed_addr #14 {
start:
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 24
  %self1 = load ptr, ptr %0, align 8, !noundef !37
  %1 = getelementptr inbounds i8, ptr %self1, i64 -4
  store ptr %1, ptr %0, align 8
  %2 = load ptr, ptr %self, align 8
  %dst_base.sroa.0.0 = select i1 %towards_left, ptr %2, ptr %1
  %3 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %count = load i64, ptr %3, align 8, !noundef !37
  %dst = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0, i64 %count
  %4 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %src = load ptr, ptr %4, align 8, !noundef !37
  %5 = load i32, ptr %src, align 4
  store i32 %5, ptr %dst, align 4
  %_8 = zext i1 %towards_left to i64
  %6 = add i64 %count, %_8
  store i64 %6, ptr %3, align 8
  %_9 = getelementptr inbounds nuw i8, ptr %src, i64 4
  store ptr %_9, ptr %4, align 8
  ret ptr %dst
}

; core::slice::sort::stable::quicksort::quicksort
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable9quicksort9quicksort17hd7748f61f1e7fd1dE(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias noundef nonnull align 8 %scratch.0, i64 noundef range(i64 0, 384307168202282326) %scratch.1, i32 noundef %2, ptr noalias noundef readonly align 8 captures(address) dereferenceable_or_null(24) %3, ptr noalias noundef nonnull align 1 %is_less) unnamed_addr #9 {
start:
  %pivot_copy = alloca [24 x i8], align 8
  %_88995 = icmp samesign ult i64 %1, 33
  br i1 %_88995, label %bb3, label %bb5.lr.ph

bb5.lr.ph:                                        ; preds = %start, %bb28
  %v.sroa.0.0.ph99 = phi ptr [ %_54, %bb28 ], [ %0, %start ]
  %v.sroa.16.0.ph98 = phi i64 [ %_63.i55, %bb28 ], [ %1, %start ]
  %limit.sroa.0.0.ph97 = phi i32 [ %8, %bb28 ], [ %2, %start ]
  %left_ancestor_pivot.sroa.0.0.ph96 = phi ptr [ null, %bb28 ], [ %3, %start ]
  %4 = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph99, i64 8
  %5 = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph99, i64 16
  %.not = icmp eq ptr %left_ancestor_pivot.sroa.0.0.ph96, null
  %6 = getelementptr inbounds nuw i8, ptr %left_ancestor_pivot.sroa.0.0.ph96, i64 8
  %7 = getelementptr inbounds nuw i8, ptr %left_ancestor_pivot.sroa.0.0.ph96, i64 16
  %.sink162 = ptrtoint ptr %v.sroa.0.0.ph99 to i64
  br label %bb5

bb5:                                              ; preds = %bb5.lr.ph, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h4435b8972d6cd45dE.exit"
  %v.sroa.16.091 = phi i64 [ %v.sroa.16.0.ph98, %bb5.lr.ph ], [ %left_partition_len.sroa.0.0, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h4435b8972d6cd45dE.exit" ]
  %limit.sroa.0.090 = phi i32 [ %limit.sroa.0.0.ph97, %bb5.lr.ph ], [ %8, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h4435b8972d6cd45dE.exit" ]
  %_11 = icmp eq i32 %limit.sroa.0.090, 0
  br i1 %_11, label %bb6, label %bb7

bb3:                                              ; preds = %bb28, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h4435b8972d6cd45dE.exit", %start
  %v.sroa.0.0.ph.lcssa88 = phi ptr [ %0, %start ], [ %v.sroa.0.0.ph99, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h4435b8972d6cd45dE.exit" ], [ %_54, %bb28 ]
  %v.sroa.16.0.lcssa = phi i64 [ %1, %start ], [ %left_partition_len.sroa.0.0, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h4435b8972d6cd45dE.exit" ], [ %_63.i55, %bb28 ]
; call core::slice::sort::shared::smallsort::small_sort_general_with_scratch
  call void @_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h810f0cca5566cd17E(ptr noalias noundef nonnull align 8 %v.sroa.0.0.ph.lcssa88, i64 noundef range(i64 0, 33) %v.sroa.16.0.lcssa, ptr noalias noundef nonnull align 8 %scratch.0, i64 noundef range(i64 0, 384307168202282326) %scratch.1, ptr noalias nonnull align 1 poison)
  br label %bb22

bb7:                                              ; preds = %bb5
  %8 = add i32 %limit.sroa.0.090, -1
  call void @llvm.experimental.noalias.scope.decl(metadata !2395)
  %len_div_84.i = lshr i64 %v.sroa.16.091, 3
  %b.idx.i = mul nuw nsw i64 %len_div_84.i, 96
  %b.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph99, i64 %b.idx.i
  %c.idx.i = mul nuw nsw i64 %len_div_84.i, 168
  %c.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph99, i64 %c.idx.i
  %_12.i = icmp samesign ult i64 %v.sroa.16.091, 64
  br i1 %_12.i, label %bb3.i, label %bb5.i

bb5.i:                                            ; preds = %bb7
; call core::slice::sort::shared::pivot::median3_rec
  %self.i = call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h99e7361c9dd75cc6E(ptr noundef nonnull readonly align 8 %v.sroa.0.0.ph99, ptr noundef nonnull readonly %b.i, ptr noundef nonnull readonly %c.i, i64 noundef %len_div_84.i, ptr noalias noundef nonnull align 1 %is_less)
  br label %_ZN4core5slice4sort6shared5pivot12choose_pivot17h60f1f4f039a5481fE.exit

bb3.i:                                            ; preds = %bb7
  call void @llvm.experimental.noalias.scope.decl(metadata !2398)
  call void @llvm.experimental.noalias.scope.decl(metadata !2401)
  call void @llvm.experimental.noalias.scope.decl(metadata !2403), !noalias !2406
  call void @llvm.experimental.noalias.scope.decl(metadata !2409), !noalias !2406
  call void @llvm.experimental.noalias.scope.decl(metadata !2411), !noalias !2406
  call void @llvm.experimental.noalias.scope.decl(metadata !2414), !noalias !2406
  call void @llvm.experimental.noalias.scope.decl(metadata !2416), !noalias !2406
  call void @llvm.experimental.noalias.scope.decl(metadata !2419), !noalias !2406
  %_7.i.i.i.i.i = load ptr, ptr %4, align 8, !alias.scope !2421, !noalias !2422, !nonnull !37, !noundef !37
  %len1.i.i.i.i.i = load i64, ptr %5, align 8, !alias.scope !2421, !noalias !2422, !noundef !37
  %9 = getelementptr inbounds nuw i8, ptr %b.i, i64 8
  %_14.i.i.i.i.i = load ptr, ptr %9, align 8, !alias.scope !2424, !noalias !2425, !nonnull !37, !noundef !37
  %10 = getelementptr inbounds nuw i8, ptr %b.i, i64 16
  %11 = load i64, ptr %10, align 8, !alias.scope !2424, !noalias !2425, !noundef !37
  %spec.store.select.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %len1.i.i.i.i.i, i64 range(i64 0, -9223372036854775808) %11)
  %12 = call i32 @memcmp(ptr nonnull readonly align 1 %_7.i.i.i.i.i, ptr nonnull readonly align 1 %_14.i.i.i.i.i, i64 %spec.store.select.i.i.i.i.i.i.i), !alias.scope !2426, !noalias !2433
  %13 = sext i32 %12 to i64
  %_15.i.i.i.i.i.i.i = icmp eq i32 %12, 0
  %diff.i.i.i.i.i.i.i = sub nsw i64 %len1.i.i.i.i.i, %11
  %spec.select.i.i.i.i.i.i.i = select i1 %_15.i.i.i.i.i.i.i, i64 %diff.i.i.i.i.i.i.i, i64 %13
  call void @llvm.experimental.noalias.scope.decl(metadata !2434)
  call void @llvm.experimental.noalias.scope.decl(metadata !2437)
  call void @llvm.experimental.noalias.scope.decl(metadata !2440)
  call void @llvm.experimental.noalias.scope.decl(metadata !2443)
  %14 = getelementptr inbounds nuw i8, ptr %c.i, i64 8
  %_14.i.i.i.i7.i = load ptr, ptr %14, align 8, !alias.scope !2446, !noalias !2447, !nonnull !37, !noundef !37
  %15 = getelementptr inbounds nuw i8, ptr %c.i, i64 16
  %16 = load i64, ptr %15, align 8, !alias.scope !2446, !noalias !2447, !noundef !37
  %spec.store.select.i.i.i.i.i.i8.i = call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %len1.i.i.i.i.i, i64 range(i64 0, -9223372036854775808) %16)
  %17 = call i32 @memcmp(ptr nonnull readonly align 1 %_7.i.i.i.i.i, ptr nonnull readonly align 1 %_14.i.i.i.i7.i, i64 %spec.store.select.i.i.i.i.i.i8.i), !alias.scope !2452, !noalias !2459
  %18 = sext i32 %17 to i64
  %_15.i.i.i.i.i.i9.i = icmp eq i32 %17, 0
  %diff.i.i.i.i.i.i10.i = sub nsw i64 %len1.i.i.i.i.i, %16
  %spec.select.i.i.i.i.i.i11.i = select i1 %_15.i.i.i.i.i.i9.i, i64 %diff.i.i.i.i.i.i10.i, i64 %18
  %19 = xor i64 %spec.select.i.i.i.i.i.i11.i, %spec.select.i.i.i.i.i.i.i
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %_ZN4core5slice4sort6shared5pivot12choose_pivot17h60f1f4f039a5481fE.exit, label %bb3.i.i

bb3.i.i:                                          ; preds = %bb3.i
  %spec.store.select.i.i.i.i.i.i15.i = call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %11, i64 range(i64 0, -9223372036854775808) %16)
  %21 = call i32 @memcmp(ptr nonnull readonly align 1 %_14.i.i.i.i.i, ptr nonnull readonly align 1 %_14.i.i.i.i7.i, i64 %spec.store.select.i.i.i.i.i.i15.i), !alias.scope !2460, !noalias !2467
  %22 = sext i32 %21 to i64
  %_15.i.i.i.i.i.i16.i = icmp eq i32 %21, 0
  %diff.i.i.i.i.i.i17.i = sub nsw i64 %11, %16
  %spec.select.i.i.i.i.i.i18.i = select i1 %_15.i.i.i.i.i.i16.i, i64 %diff.i.i.i.i.i.i17.i, i64 %22
  %23 = xor i64 %spec.select.i.i.i.i.i.i18.i, %spec.select.i.i.i.i.i.i.i
  %_12.i.i = icmp slt i64 %23, 0
  %c.b.i.i = select i1 %_12.i.i, ptr %c.i, ptr %b.i
  br label %_ZN4core5slice4sort6shared5pivot12choose_pivot17h60f1f4f039a5481fE.exit

_ZN4core5slice4sort6shared5pivot12choose_pivot17h60f1f4f039a5481fE.exit: ; preds = %bb3.i, %bb3.i.i, %bb5.i
  %self.i.sink = phi ptr [ %self.i, %bb5.i ], [ %v.sroa.0.0.ph99, %bb3.i ], [ %c.b.i.i, %bb3.i.i ]
  %24 = ptrtoint ptr %self.i.sink to i64
  %25 = sub nuw i64 %24, %.sink162
  %index.sroa.0.0.i = udiv exact i64 %25, 24
  %cond.i = icmp samesign ult i64 %index.sroa.0.0.i, %v.sroa.16.091
  call void @llvm.assume(i1 %cond.i)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %pivot_copy)
  %src = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph99, i64 %25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %pivot_copy, ptr noundef nonnull align 8 dereferenceable(24) %src, i64 24, i1 false)
  br i1 %.not, label %bb14, label %bb12

bb6:                                              ; preds = %bb5
; call core::slice::sort::stable::drift::sort
  call void @_ZN4core5slice4sort6stable5drift4sort17h0c433fc08a1d1e26E(ptr noalias noundef nonnull align 8 %v.sroa.0.0.ph99, i64 noundef %v.sroa.16.091, ptr noalias noundef nonnull align 8 %scratch.0, i64 noundef %scratch.1, i1 noundef zeroext true, ptr noalias noundef nonnull align 1 %is_less)
  br label %bb22

bb12:                                             ; preds = %_ZN4core5slice4sort6shared5pivot12choose_pivot17h60f1f4f039a5481fE.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !2480)
  call void @llvm.experimental.noalias.scope.decl(metadata !2483)
  call void @llvm.experimental.noalias.scope.decl(metadata !2485)
  call void @llvm.experimental.noalias.scope.decl(metadata !2488)
  call void @llvm.experimental.noalias.scope.decl(metadata !2490)
  call void @llvm.experimental.noalias.scope.decl(metadata !2493)
  call void @llvm.experimental.noalias.scope.decl(metadata !2495)
  call void @llvm.experimental.noalias.scope.decl(metadata !2498)
  %_7.i.i.i.i = load ptr, ptr %6, align 8, !alias.scope !2500, !noalias !2501, !nonnull !37, !noundef !37
  %len1.i.i.i.i = load i64, ptr %7, align 8, !alias.scope !2500, !noalias !2501, !noundef !37
  %26 = getelementptr inbounds nuw i8, ptr %src, i64 8
  %_14.i.i.i.i = load ptr, ptr %26, align 8, !alias.scope !2501, !noalias !2500, !nonnull !37, !noundef !37
  %27 = getelementptr inbounds nuw i8, ptr %src, i64 16
  %28 = load i64, ptr %27, align 8, !alias.scope !2501, !noalias !2500, !noundef !37
  %spec.store.select.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %len1.i.i.i.i, i64 range(i64 0, -9223372036854775808) %28)
  %29 = call i32 @memcmp(ptr nonnull readonly align 1 %_7.i.i.i.i, ptr nonnull readonly align 1 %_14.i.i.i.i, i64 %spec.store.select.i.i.i.i.i.i), !alias.scope !2502, !noalias !2509
  %30 = sext i32 %29 to i64
  %_15.i.i.i.i.i.i = icmp eq i32 %29, 0
  %diff.i.i.i.i.i.i = sub nsw i64 %len1.i.i.i.i, %28
  %spec.select.i.i.i.i.i.i = select i1 %_15.i.i.i.i.i.i, i64 %diff.i.i.i.i.i.i, i64 %30
  %31 = icmp sgt i64 %spec.select.i.i.i.i.i.i, -1
  br i1 %31, label %bb16, label %bb14

bb14:                                             ; preds = %_ZN4core5slice4sort6shared5pivot12choose_pivot17h60f1f4f039a5481fE.exit, %bb12
  call void @llvm.experimental.noalias.scope.decl(metadata !2510)
  call void @llvm.experimental.noalias.scope.decl(metadata !2513)
  %_8.i.not = icmp samesign ult i64 %scratch.1, %v.sroa.16.091
  br i1 %_8.i.not, label %bb31.i, label %bb33.i, !prof !898

bb33.i:                                           ; preds = %bb14
  %_86.i = getelementptr %"alloc::string::String", ptr %scratch.0, i64 %v.sroa.16.091
  %32 = getelementptr inbounds nuw i8, ptr %src, i64 8
  %33 = getelementptr inbounds nuw i8, ptr %src, i64 16
  br label %bb3.i23

bb31.i:                                           ; preds = %bb14
  call void @llvm.trap()
  unreachable

bb3.i23:                                          ; preds = %bb23.i, %bb33.i
  %state.sroa.11.0.i = phi i64 [ 0, %bb33.i ], [ %state.sroa.11.1.lcssa.i, %bb23.i ]
  %state.sroa.5.0.i = phi ptr [ %v.sroa.0.0.ph99, %bb33.i ], [ %_9.i28.i, %bb23.i ]
  %state.sroa.19.0.i = phi ptr [ %_86.i, %bb33.i ], [ %42, %bb23.i ]
  %pivot_pos.sroa.0.0.i = phi i64 [ %index.sroa.0.0.i, %bb33.i ], [ %v.sroa.16.091, %bb23.i ]
  %loop_end.i = getelementptr inbounds nuw %"alloc::string::String", ptr %v.sroa.0.0.ph99, i64 %pivot_pos.sroa.0.0.i
  %_4734.i = icmp ult ptr %state.sroa.5.0.i, %loop_end.i
  br i1 %_4734.i, label %bb18.i, label %bb21.i

bb21.i:                                           ; preds = %bb18.i, %bb3.i23
  %state.sroa.11.1.lcssa.i = phi i64 [ %state.sroa.11.0.i, %bb3.i23 ], [ %41, %bb18.i ]
  %state.sroa.5.1.lcssa.i = phi ptr [ %state.sroa.5.0.i, %bb3.i23 ], [ %_9.i.i, %bb18.i ]
  %state.sroa.19.1.lcssa.i = phi ptr [ %state.sroa.19.0.i, %bb3.i23 ], [ %40, %bb18.i ]
  %_55.i = icmp eq i64 %pivot_pos.sroa.0.0.i, %v.sroa.16.091
  br i1 %_55.i, label %bb22.i, label %bb23.i

bb18.i:                                           ; preds = %bb3.i23, %bb18.i
  %state.sroa.19.137.i = phi ptr [ %40, %bb18.i ], [ %state.sroa.19.0.i, %bb3.i23 ]
  %state.sroa.5.136.i = phi ptr [ %_9.i.i, %bb18.i ], [ %state.sroa.5.0.i, %bb3.i23 ]
  %state.sroa.11.135.i = phi i64 [ %41, %bb18.i ], [ %state.sroa.11.0.i, %bb3.i23 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !2515)
  call void @llvm.experimental.noalias.scope.decl(metadata !2518)
  call void @llvm.experimental.noalias.scope.decl(metadata !2520)
  call void @llvm.experimental.noalias.scope.decl(metadata !2523)
  call void @llvm.experimental.noalias.scope.decl(metadata !2525)
  call void @llvm.experimental.noalias.scope.decl(metadata !2528)
  call void @llvm.experimental.noalias.scope.decl(metadata !2530)
  call void @llvm.experimental.noalias.scope.decl(metadata !2533)
  %34 = getelementptr inbounds nuw i8, ptr %state.sroa.5.136.i, i64 8
  %_7.i.i.i.i.i24 = load ptr, ptr %34, align 8, !alias.scope !2535, !noalias !2536, !nonnull !37, !noundef !37
  %35 = getelementptr inbounds nuw i8, ptr %state.sroa.5.136.i, i64 16
  %len1.i.i.i.i.i25 = load i64, ptr %35, align 8, !alias.scope !2535, !noalias !2536, !noundef !37
  %_14.i.i.i.i.i26 = load ptr, ptr %32, align 8, !alias.scope !2537, !noalias !2538, !nonnull !37, !noundef !37
  %36 = load i64, ptr %33, align 8, !alias.scope !2537, !noalias !2538, !noundef !37
  %spec.store.select.i.i.i.i.i.i.i27 = call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %len1.i.i.i.i.i25, i64 range(i64 0, -9223372036854775808) %36)
  %37 = call i32 @memcmp(ptr nonnull readonly align 1 %_7.i.i.i.i.i24, ptr nonnull readonly align 1 %_14.i.i.i.i.i26, i64 %spec.store.select.i.i.i.i.i.i.i27), !alias.scope !2539, !noalias !2546
  %38 = sext i32 %37 to i64
  %_15.i.i.i.i.i.i.i28 = icmp eq i32 %37, 0
  %diff.i.i.i.i.i.i.i29 = sub nsw i64 %len1.i.i.i.i.i25, %36
  %spec.select.i.i.i.i.i.i.i30 = select i1 %_15.i.i.i.i.i.i.i28, i64 %diff.i.i.i.i.i.i.i29, i64 %38
  %39 = icmp slt i64 %spec.select.i.i.i.i.i.i.i30, 0
  %40 = getelementptr inbounds i8, ptr %state.sroa.19.137.i, i64 -24
  %dst_base.sroa.0.0.i.i = select i1 %39, ptr %scratch.0, ptr %40
  %dst.i.i = getelementptr inbounds nuw %"alloc::string::String", ptr %dst_base.sroa.0.0.i.i, i64 %state.sroa.11.135.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %dst.i.i, ptr noundef nonnull align 8 dereferenceable(24) %state.sroa.5.136.i, i64 24, i1 false), !alias.scope !2547, !noalias !2548
  %spec.select.i.i.i.i.i.i.lobit.i = lshr i64 %spec.select.i.i.i.i.i.i.i30, 63
  %41 = add i64 %spec.select.i.i.i.i.i.i.lobit.i, %state.sroa.11.135.i
  %_9.i.i = getelementptr inbounds nuw i8, ptr %state.sroa.5.136.i, i64 24
  %_47.i = icmp ult ptr %_9.i.i, %loop_end.i
  br i1 %_47.i, label %bb18.i, label %bb21.i

bb23.i:                                           ; preds = %bb21.i
  %42 = getelementptr inbounds i8, ptr %state.sroa.19.1.lcssa.i, i64 -24
  %dst.i25.i = getelementptr inbounds nuw %"alloc::string::String", ptr %42, i64 %state.sroa.11.1.lcssa.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %dst.i25.i, ptr noundef nonnull align 8 dereferenceable(24) %state.sroa.5.1.lcssa.i, i64 24, i1 false), !alias.scope !2547, !noalias !2551
  %_9.i28.i = getelementptr inbounds nuw i8, ptr %state.sroa.5.1.lcssa.i, i64 24
  br label %bb3.i23

bb22.i:                                           ; preds = %bb21.i
  %43 = mul i64 %state.sroa.11.1.lcssa.i, 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %v.sroa.0.0.ph99, ptr nonnull align 8 %scratch.0, i64 %43, i1 false), !alias.scope !2547
  %_63.i = sub i64 %v.sroa.16.091, %state.sroa.11.1.lcssa.i
  %_9740.not.i = icmp eq i64 %v.sroa.16.091, %state.sroa.11.1.lcssa.i
  br i1 %_9740.not.i, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h7194912e7af17dfcE.exit, label %bb42.lr.ph.i

bb42.lr.ph.i:                                     ; preds = %bb22.i
  %44 = getelementptr %"alloc::string::String", ptr %v.sroa.0.0.ph99, i64 %state.sroa.11.1.lcssa.i
  %.neg = add i64 %state.sroa.11.1.lcssa.i, 1
  %xtraiter = and i64 %_63.i, 1
  %45 = icmp eq i64 %v.sroa.16.091, %.neg
  br i1 %45, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h7194912e7af17dfcE.exit.loopexit.unr-lcssa, label %bb42.lr.ph.i.new

bb42.lr.ph.i.new:                                 ; preds = %bb42.lr.ph.i
  %unroll_iter = and i64 %_63.i, -2
  %invariant.gep = getelementptr i8, ptr %44, i64 24
  br label %bb42.i

bb42.i:                                           ; preds = %bb42.i, %bb42.lr.ph.i.new
  %iter.sroa.0.041.i = phi i64 [ 0, %bb42.lr.ph.i.new ], [ %49, %bb42.i ]
  %niter = phi i64 [ 0, %bb42.lr.ph.i.new ], [ %niter.next.1, %bb42.i ]
  %46 = getelementptr %"alloc::string::String", ptr %44, i64 %iter.sroa.0.041.i
  %47 = xor i64 %iter.sroa.0.041.i, -1
  %48 = getelementptr %"alloc::string::String", ptr %_86.i, i64 %47
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %46, ptr noundef nonnull align 8 dereferenceable(24) %48, i64 24, i1 false), !alias.scope !2547
  %49 = add nuw i64 %iter.sroa.0.041.i, 2
  %gep = getelementptr %"alloc::string::String", ptr %invariant.gep, i64 %iter.sroa.0.041.i
  %50 = xor i64 %iter.sroa.0.041.i, -2
  %51 = getelementptr %"alloc::string::String", ptr %_86.i, i64 %50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %gep, ptr noundef nonnull align 8 dereferenceable(24) %51, i64 24, i1 false), !alias.scope !2547
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h7194912e7af17dfcE.exit.loopexit.unr-lcssa, label %bb42.i

_ZN4core5slice4sort6stable9quicksort16stable_partition17h7194912e7af17dfcE.exit.loopexit.unr-lcssa: ; preds = %bb42.i, %bb42.lr.ph.i
  %iter.sroa.0.041.i.unr = phi i64 [ 0, %bb42.lr.ph.i ], [ %49, %bb42.i ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h7194912e7af17dfcE.exit, label %bb42.i.epil

bb42.i.epil:                                      ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h7194912e7af17dfcE.exit.loopexit.unr-lcssa
  %52 = getelementptr %"alloc::string::String", ptr %44, i64 %iter.sroa.0.041.i.unr
  %53 = xor i64 %iter.sroa.0.041.i.unr, -1
  %54 = getelementptr %"alloc::string::String", ptr %_86.i, i64 %53
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %52, ptr noundef nonnull align 8 dereferenceable(24) %54, i64 24, i1 false), !alias.scope !2547
  br label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h7194912e7af17dfcE.exit

_ZN4core5slice4sort6stable9quicksort16stable_partition17h7194912e7af17dfcE.exit: ; preds = %bb42.i.epil, %_ZN4core5slice4sort6stable9quicksort16stable_partition17h7194912e7af17dfcE.exit.loopexit.unr-lcssa, %bb22.i
  %55 = icmp eq i64 %state.sroa.11.1.lcssa.i, 0
  br label %bb16

bb16:                                             ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h7194912e7af17dfcE.exit, %bb12
  %left_partition_len.sroa.0.0 = phi i64 [ 0, %bb12 ], [ %state.sroa.11.1.lcssa.i, %_ZN4core5slice4sort6stable9quicksort16stable_partition17h7194912e7af17dfcE.exit ]
  %perform_equal_partition.sroa.0.0.in = phi i1 [ true, %bb12 ], [ %55, %_ZN4core5slice4sort6stable9quicksort16stable_partition17h7194912e7af17dfcE.exit ]
  br i1 %perform_equal_partition.sroa.0.0.in, label %bb17, label %bb19

bb19:                                             ; preds = %bb16
  %_6.not.i = icmp ugt i64 %left_partition_len.sroa.0.0, %v.sroa.16.091
  br i1 %_6.not.i, label %bb3.i31, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h4435b8972d6cd45dE.exit", !prof !1529

bb3.i31:                                          ; preds = %bb19
; call core::panicking::panic_fmt
  call void @_ZN4core9panicking9panic_fmt17ha4414e4328fe24a0E(ptr noundef nonnull @alloc_d1084648e479974e70c9329824bf76f9, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_58d434a1e795f965ef82c8e9c5db822a) #32, !noalias !2554
  unreachable

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h4435b8972d6cd45dE.exit": ; preds = %bb19
  %56 = getelementptr inbounds nuw %"alloc::string::String", ptr %v.sroa.0.0.ph99, i64 %left_partition_len.sroa.0.0
  %57 = sub nuw nsw i64 %v.sroa.16.091, %left_partition_len.sroa.0.0
; call core::slice::sort::stable::quicksort::quicksort
  call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hd7748f61f1e7fd1dE(ptr noalias noundef nonnull align 8 %56, i64 noundef %57, ptr noalias noundef nonnull align 8 %scratch.0, i64 noundef %scratch.1, i32 noundef %8, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %pivot_copy, ptr noalias noundef nonnull align 1 %is_less) #35
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %pivot_copy)
  %_8 = icmp ult i64 %left_partition_len.sroa.0.0, 33
  br i1 %_8, label %bb3, label %bb5

bb17:                                             ; preds = %bb16
  call void @llvm.experimental.noalias.scope.decl(metadata !2558)
  call void @llvm.experimental.noalias.scope.decl(metadata !2561)
  %_8.i32.not = icmp samesign ult i64 %scratch.1, %v.sroa.16.091
  br i1 %_8.i32.not, label %bb31.i35, label %bb33.i36, !prof !898

bb33.i36:                                         ; preds = %bb17
  %_86.i38 = getelementptr %"alloc::string::String", ptr %scratch.0, i64 %v.sroa.16.091
  %58 = getelementptr inbounds nuw i8, ptr %src, i64 8
  %59 = getelementptr inbounds nuw i8, ptr %src, i64 16
  br label %bb3.i39

bb31.i35:                                         ; preds = %bb17
  call void @llvm.trap()
  unreachable

bb3.i39:                                          ; preds = %bb23.i51, %bb33.i36
  %state.sroa.11.0.i40 = phi i64 [ 0, %bb33.i36 ], [ %69, %bb23.i51 ]
  %state.sroa.5.0.i41 = phi ptr [ %v.sroa.0.0.ph99, %bb33.i36 ], [ %_9.i28.i53, %bb23.i51 ]
  %state.sroa.19.0.i42 = phi ptr [ %_86.i38, %bb33.i36 ], [ %68, %bb23.i51 ]
  %pivot_pos.sroa.0.0.i43 = phi i64 [ %index.sroa.0.0.i, %bb33.i36 ], [ %v.sroa.16.091, %bb23.i51 ]
  %loop_end.i44 = getelementptr inbounds nuw %"alloc::string::String", ptr %v.sroa.0.0.ph99, i64 %pivot_pos.sroa.0.0.i43
  %_4734.i45 = icmp ult ptr %state.sroa.5.0.i41, %loop_end.i44
  br i1 %_4734.i45, label %bb18.i61, label %bb21.i46

bb21.i46:                                         ; preds = %bb18.i61, %bb3.i39
  %state.sroa.11.1.lcssa.i47 = phi i64 [ %state.sroa.11.0.i40, %bb3.i39 ], [ %67, %bb18.i61 ]
  %state.sroa.5.1.lcssa.i48 = phi ptr [ %state.sroa.5.0.i41, %bb3.i39 ], [ %_9.i.i67, %bb18.i61 ]
  %state.sroa.19.1.lcssa.i49 = phi ptr [ %state.sroa.19.0.i42, %bb3.i39 ], [ %66, %bb18.i61 ]
  %_55.i50 = icmp eq i64 %pivot_pos.sroa.0.0.i43, %v.sroa.16.091
  br i1 %_55.i50, label %bb22.i54, label %bb23.i51

bb18.i61:                                         ; preds = %bb3.i39, %bb18.i61
  %state.sroa.19.137.i62 = phi ptr [ %66, %bb18.i61 ], [ %state.sroa.19.0.i42, %bb3.i39 ]
  %state.sroa.5.136.i63 = phi ptr [ %_9.i.i67, %bb18.i61 ], [ %state.sroa.5.0.i41, %bb3.i39 ]
  %state.sroa.11.135.i64 = phi i64 [ %67, %bb18.i61 ], [ %state.sroa.11.0.i40, %bb3.i39 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !2563)
  call void @llvm.experimental.noalias.scope.decl(metadata !2566)
  call void @llvm.experimental.noalias.scope.decl(metadata !2568)
  call void @llvm.experimental.noalias.scope.decl(metadata !2571)
  call void @llvm.experimental.noalias.scope.decl(metadata !2573)
  call void @llvm.experimental.noalias.scope.decl(metadata !2576)
  call void @llvm.experimental.noalias.scope.decl(metadata !2578)
  call void @llvm.experimental.noalias.scope.decl(metadata !2581)
  call void @llvm.experimental.noalias.scope.decl(metadata !2583)
  call void @llvm.experimental.noalias.scope.decl(metadata !2586)
  %_7.i.i.i.i.i.i = load ptr, ptr %58, align 8, !alias.scope !2588, !noalias !2589, !nonnull !37, !noundef !37
  %len1.i.i.i.i.i.i = load i64, ptr %59, align 8, !alias.scope !2588, !noalias !2589, !noundef !37
  %60 = getelementptr inbounds nuw i8, ptr %state.sroa.5.136.i63, i64 8
  %_14.i.i.i.i.i.i = load ptr, ptr %60, align 8, !alias.scope !2590, !noalias !2591, !nonnull !37, !noundef !37
  %61 = getelementptr inbounds nuw i8, ptr %state.sroa.5.136.i63, i64 16
  %62 = load i64, ptr %61, align 8, !alias.scope !2590, !noalias !2591, !noundef !37
  %spec.store.select.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %len1.i.i.i.i.i.i, i64 range(i64 0, -9223372036854775808) %62)
  %63 = call i32 @memcmp(ptr nonnull readonly align 1 %_7.i.i.i.i.i.i, ptr nonnull readonly align 1 %_14.i.i.i.i.i.i, i64 %spec.store.select.i.i.i.i.i.i.i.i), !alias.scope !2592, !noalias !2599
  %64 = sext i32 %63 to i64
  %_15.i.i.i.i.i.i.i.i = icmp eq i32 %63, 0
  %diff.i.i.i.i.i.i.i.i = sub nsw i64 %len1.i.i.i.i.i.i, %62
  %spec.select.i.i.i.i.i.i.i.i = select i1 %_15.i.i.i.i.i.i.i.i, i64 %diff.i.i.i.i.i.i.i.i, i64 %64
  %65 = icmp sgt i64 %spec.select.i.i.i.i.i.i.i.i, -1
  %66 = getelementptr inbounds i8, ptr %state.sroa.19.137.i62, i64 -24
  %dst_base.sroa.0.0.i.i65 = select i1 %65, ptr %scratch.0, ptr %66
  %dst.i.i66 = getelementptr inbounds nuw %"alloc::string::String", ptr %dst_base.sroa.0.0.i.i65, i64 %state.sroa.11.135.i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %dst.i.i66, ptr noundef nonnull align 8 dereferenceable(24) %state.sroa.5.136.i63, i64 24, i1 false), !alias.scope !2600, !noalias !2601
  %_8.i.i = zext i1 %65 to i64
  %67 = add i64 %state.sroa.11.135.i64, %_8.i.i
  %_9.i.i67 = getelementptr inbounds nuw i8, ptr %state.sroa.5.136.i63, i64 24
  %_47.i68 = icmp ult ptr %_9.i.i67, %loop_end.i44
  br i1 %_47.i68, label %bb18.i61, label %bb21.i46

bb23.i51:                                         ; preds = %bb21.i46
  %68 = getelementptr inbounds i8, ptr %state.sroa.19.1.lcssa.i49, i64 -24
  %dst.i25.i52 = getelementptr inbounds nuw %"alloc::string::String", ptr %scratch.0, i64 %state.sroa.11.1.lcssa.i47
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %dst.i25.i52, ptr noundef nonnull align 8 dereferenceable(24) %state.sroa.5.1.lcssa.i48, i64 24, i1 false), !alias.scope !2600, !noalias !2604
  %69 = add i64 %state.sroa.11.1.lcssa.i47, 1
  %_9.i28.i53 = getelementptr inbounds nuw i8, ptr %state.sroa.5.1.lcssa.i48, i64 24
  br label %bb3.i39

bb22.i54:                                         ; preds = %bb21.i46
  %70 = mul i64 %state.sroa.11.1.lcssa.i47, 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %v.sroa.0.0.ph99, ptr nonnull align 8 %scratch.0, i64 %70, i1 false), !alias.scope !2600
  %_63.i55 = sub i64 %v.sroa.16.091, %state.sroa.11.1.lcssa.i47
  %_9740.not.i56 = icmp eq i64 %v.sroa.16.091, %state.sroa.11.1.lcssa.i47
  br i1 %_9740.not.i56, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17hb669f6af3ca404a3E.exit, label %bb42.lr.ph.i57

bb42.lr.ph.i57:                                   ; preds = %bb22.i54
  %71 = getelementptr %"alloc::string::String", ptr %v.sroa.0.0.ph99, i64 %state.sroa.11.1.lcssa.i47
  %.neg204 = add i64 %state.sroa.11.1.lcssa.i47, 1
  %xtraiter200 = and i64 %_63.i55, 1
  %72 = icmp eq i64 %v.sroa.16.091, %.neg204
  br i1 %72, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17hb669f6af3ca404a3E.exit.loopexit.unr-lcssa, label %bb42.lr.ph.i57.new

bb42.lr.ph.i57.new:                               ; preds = %bb42.lr.ph.i57
  %unroll_iter202 = and i64 %_63.i55, -2
  %invariant.gep236 = getelementptr i8, ptr %71, i64 24
  br label %bb42.i58

bb42.i58:                                         ; preds = %bb42.i58, %bb42.lr.ph.i57.new
  %iter.sroa.0.041.i59 = phi i64 [ 0, %bb42.lr.ph.i57.new ], [ %76, %bb42.i58 ]
  %niter203 = phi i64 [ 0, %bb42.lr.ph.i57.new ], [ %niter203.next.1, %bb42.i58 ]
  %73 = getelementptr %"alloc::string::String", ptr %71, i64 %iter.sroa.0.041.i59
  %74 = xor i64 %iter.sroa.0.041.i59, -1
  %75 = getelementptr %"alloc::string::String", ptr %_86.i38, i64 %74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %73, ptr noundef nonnull align 8 dereferenceable(24) %75, i64 24, i1 false), !alias.scope !2600
  %76 = add nuw i64 %iter.sroa.0.041.i59, 2
  %gep237 = getelementptr %"alloc::string::String", ptr %invariant.gep236, i64 %iter.sroa.0.041.i59
  %77 = xor i64 %iter.sroa.0.041.i59, -2
  %78 = getelementptr %"alloc::string::String", ptr %_86.i38, i64 %77
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %gep237, ptr noundef nonnull align 8 dereferenceable(24) %78, i64 24, i1 false), !alias.scope !2600
  %niter203.next.1 = add i64 %niter203, 2
  %niter203.ncmp.1 = icmp eq i64 %niter203.next.1, %unroll_iter202
  br i1 %niter203.ncmp.1, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17hb669f6af3ca404a3E.exit.loopexit.unr-lcssa, label %bb42.i58

_ZN4core5slice4sort6stable9quicksort16stable_partition17hb669f6af3ca404a3E.exit.loopexit.unr-lcssa: ; preds = %bb42.i58, %bb42.lr.ph.i57
  %iter.sroa.0.041.i59.unr = phi i64 [ 0, %bb42.lr.ph.i57 ], [ %76, %bb42.i58 ]
  %lcmp.mod201.not = icmp eq i64 %xtraiter200, 0
  br i1 %lcmp.mod201.not, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17hb669f6af3ca404a3E.exit, label %bb42.i58.epil

bb42.i58.epil:                                    ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17hb669f6af3ca404a3E.exit.loopexit.unr-lcssa
  %79 = getelementptr %"alloc::string::String", ptr %71, i64 %iter.sroa.0.041.i59.unr
  %80 = xor i64 %iter.sroa.0.041.i59.unr, -1
  %81 = getelementptr %"alloc::string::String", ptr %_86.i38, i64 %80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %79, ptr noundef nonnull align 8 dereferenceable(24) %81, i64 24, i1 false), !alias.scope !2600
  br label %_ZN4core5slice4sort6stable9quicksort16stable_partition17hb669f6af3ca404a3E.exit

_ZN4core5slice4sort6stable9quicksort16stable_partition17hb669f6af3ca404a3E.exit: ; preds = %bb42.i58.epil, %_ZN4core5slice4sort6stable9quicksort16stable_partition17hb669f6af3ca404a3E.exit.loopexit.unr-lcssa, %bb22.i54
  %_47 = icmp ugt i64 %state.sroa.11.1.lcssa.i47, %v.sroa.16.091
  br i1 %_47, label %bb27, label %bb28, !prof !1529

bb28:                                             ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17hb669f6af3ca404a3E.exit
  %_54 = getelementptr inbounds nuw %"alloc::string::String", ptr %v.sroa.0.0.ph99, i64 %state.sroa.11.1.lcssa.i47
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %pivot_copy)
  %_889 = icmp ult i64 %_63.i55, 33
  br i1 %_889, label %bb3, label %bb5.lr.ph

bb27:                                             ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17hb669f6af3ca404a3E.exit
; call core::slice::index::slice_index_fail
  call void @_ZN4core5slice5index16slice_index_fail17h62807bcaa490c9c1E(i64 noundef %state.sroa.11.1.lcssa.i47, i64 noundef %v.sroa.16.091, i64 noundef %v.sroa.16.091, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_0766b232215672ee1bd2195fdb153938) #32
  unreachable

bb22:                                             ; preds = %bb3, %bb6
  ret void
}

; core::slice::sort::stable::quicksort::quicksort
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable9quicksort9quicksort17hdfb2cdee762e95a0E(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %2, ptr noalias noundef readonly align 4 captures(address) dereferenceable_or_null(4) %3, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #9 {
start:
  %pivot_copy = alloca [4 x i8], align 4
  %_83238 = icmp samesign ult i64 %1, 33
  br i1 %_83238, label %bb3, label %bb5.lr.ph

bb5.lr.ph:                                        ; preds = %start, %bb28
  %v.sroa.0.0.ph42 = phi ptr [ %_54, %bb28 ], [ %0, %start ]
  %v.sroa.16.0.ph41 = phi i64 [ %new_len, %bb28 ], [ %1, %start ]
  %limit.sroa.0.0.ph40 = phi i32 [ %4, %bb28 ], [ %2, %start ]
  %left_ancestor_pivot.sroa.0.0.ph39 = phi ptr [ null, %bb28 ], [ %3, %start ]
  %.not = icmp eq ptr %left_ancestor_pivot.sroa.0.0.ph39, null
  %.sink77 = ptrtoint ptr %v.sroa.0.0.ph42 to i64
  br label %bb5

bb5:                                              ; preds = %bb5.lr.ph, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h57750b98ef4419ecE.exit"
  %v.sroa.16.034 = phi i64 [ %v.sroa.16.0.ph41, %bb5.lr.ph ], [ %left_partition_len.sroa.0.0, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h57750b98ef4419ecE.exit" ]
  %limit.sroa.0.033 = phi i32 [ %limit.sroa.0.0.ph40, %bb5.lr.ph ], [ %4, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h57750b98ef4419ecE.exit" ]
  %_11 = icmp eq i32 %limit.sroa.0.033, 0
  br i1 %_11, label %bb6, label %bb7

bb3:                                              ; preds = %bb28, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h57750b98ef4419ecE.exit", %start
  %v.sroa.0.0.ph.lcssa31 = phi ptr [ %0, %start ], [ %v.sroa.0.0.ph42, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h57750b98ef4419ecE.exit" ], [ %_54, %bb28 ]
  %v.sroa.16.0.lcssa = phi i64 [ %1, %start ], [ %left_partition_len.sroa.0.0, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h57750b98ef4419ecE.exit" ], [ %new_len, %bb28 ]
; call core::slice::sort::shared::smallsort::small_sort_general_with_scratch
  call void @_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17hb45e4134945bd316E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph.lcssa31, i64 noundef range(i64 0, 33) %v.sroa.16.0.lcssa, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, ptr noalias nonnull align 8 poison)
  br label %bb22

bb7:                                              ; preds = %bb5
  %4 = add i32 %limit.sroa.0.033, -1
  %len_div_84.i = lshr i64 %v.sroa.16.034, 3
  %b.idx.i = shl nuw nsw i64 %len_div_84.i, 4
  %b.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph42, i64 %b.idx.i
  %c.idx.i = mul nuw nsw i64 %len_div_84.i, 28
  %c.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph42, i64 %c.idx.i
  %_12.i = icmp samesign ult i64 %v.sroa.16.034, 64
  br i1 %_12.i, label %bb3.i, label %bb5.i

bb5.i:                                            ; preds = %bb7
; call core::slice::sort::shared::pivot::median3_rec
  %self.i = call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h0a600e94c9b56343E(ptr noundef nonnull readonly align 4 %v.sroa.0.0.ph42, ptr noundef nonnull readonly %b.i, ptr noundef nonnull readonly %c.i, i64 noundef %len_div_84.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less)
  br label %_ZN4core5slice4sort6shared5pivot12choose_pivot17hcdbe6da45425f3e4E.exit

bb3.i:                                            ; preds = %bb7
  call void @llvm.experimental.noalias.scope.decl(metadata !2607)
  call void @llvm.experimental.noalias.scope.decl(metadata !2610)
  call void @llvm.experimental.noalias.scope.decl(metadata !2612), !noalias !2615
  call void @llvm.experimental.noalias.scope.decl(metadata !2618), !noalias !2615
  call void @llvm.experimental.noalias.scope.decl(metadata !2620), !noalias !2615
  call void @llvm.experimental.noalias.scope.decl(metadata !2623), !noalias !2615
  call void @llvm.experimental.noalias.scope.decl(metadata !2625), !noalias !2615
  call void @llvm.experimental.noalias.scope.decl(metadata !2628), !noalias !2615
  %_3.i.i.i.i.i = load i32, ptr %v.sroa.0.0.ph42, align 4, !alias.scope !2630, !noalias !2633, !noundef !37
  %_4.i.i.i.i.i = load i32, ptr %b.i, align 4, !alias.scope !2635, !noalias !2636, !noundef !37
  %_0.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %_4.i.i.i.i6.i = load i32, ptr %c.i, align 4, !alias.scope !2637, !noalias !2646, !noundef !37
  %_0.i7.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i6.i
  %5 = xor i1 %_0.i.i, %_0.i7.i
  %_0.i10.i = icmp slt i32 %_4.i.i.i.i.i, %_4.i.i.i.i6.i
  %_12.i.i = xor i1 %_0.i.i, %_0.i10.i
  %c.b.i.i = select i1 %_12.i.i, ptr %c.i, ptr %b.i
  %_0.sroa.0.0.i.i = select i1 %5, ptr %v.sroa.0.0.ph42, ptr %c.b.i.i
  br label %_ZN4core5slice4sort6shared5pivot12choose_pivot17hcdbe6da45425f3e4E.exit

_ZN4core5slice4sort6shared5pivot12choose_pivot17hcdbe6da45425f3e4E.exit: ; preds = %bb5.i, %bb3.i
  %self.i.sink = phi ptr [ %self.i, %bb5.i ], [ %_0.sroa.0.0.i.i, %bb3.i ]
  %6 = ptrtoint ptr %self.i.sink to i64
  %7 = sub nuw i64 %6, %.sink77
  %index.sroa.0.0.i = lshr exact i64 %7, 2
  %cond.i = icmp samesign ult i64 %index.sroa.0.0.i, %v.sroa.16.034
  call void @llvm.assume(i1 %cond.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pivot_copy)
  %src = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph42, i64 %7
  %value = load i32, ptr %src, align 4, !noundef !37
  store i32 %value, ptr %pivot_copy, align 4
  br i1 %.not, label %bb14, label %bb12

bb6:                                              ; preds = %bb5
; call core::slice::sort::stable::drift::sort
  call void @_ZN4core5slice4sort6stable5drift4sort17h753da6aa311033faE(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph42, i64 noundef %v.sroa.16.034, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i1 noundef zeroext true, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  br label %bb22

bb12:                                             ; preds = %_ZN4core5slice4sort6shared5pivot12choose_pivot17hcdbe6da45425f3e4E.exit
  %_3.i.i.i.i = load i32, ptr %left_ancestor_pivot.sroa.0.0.ph39, align 4, !alias.scope !2651, !noalias !2660, !noundef !37
  %_0.i.not = icmp slt i32 %_3.i.i.i.i, %value
  br i1 %_0.i.not, label %bb14, label %bb16

bb14:                                             ; preds = %_ZN4core5slice4sort6shared5pivot12choose_pivot17hcdbe6da45425f3e4E.exit, %bb12
; call core::slice::sort::stable::quicksort::stable_partition
  %8 = call noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17h4eb5a3e8e16257b0E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph42, i64 noundef %v.sroa.16.034, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i64 noundef %index.sroa.0.0.i, i1 noundef zeroext false, ptr noalias align 8 poison)
  %9 = icmp eq i64 %8, 0
  br label %bb16

bb16:                                             ; preds = %bb14, %bb12
  %left_partition_len.sroa.0.0 = phi i64 [ 0, %bb12 ], [ %8, %bb14 ]
  %perform_equal_partition.sroa.0.0.in = phi i1 [ true, %bb12 ], [ %9, %bb14 ]
  br i1 %perform_equal_partition.sroa.0.0.in, label %bb17, label %bb19

bb19:                                             ; preds = %bb16
  %_6.not.i = icmp ugt i64 %left_partition_len.sroa.0.0, %v.sroa.16.034
  br i1 %_6.not.i, label %bb3.i23, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h57750b98ef4419ecE.exit", !prof !1529

bb3.i23:                                          ; preds = %bb19
; call core::panicking::panic_fmt
  call void @_ZN4core9panicking9panic_fmt17ha4414e4328fe24a0E(ptr noundef nonnull @alloc_d1084648e479974e70c9329824bf76f9, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_58d434a1e795f965ef82c8e9c5db822a) #32, !noalias !2665
  unreachable

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h57750b98ef4419ecE.exit": ; preds = %bb19
  %10 = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph42, i64 %left_partition_len.sroa.0.0
  %11 = sub nuw nsw i64 %v.sroa.16.034, %left_partition_len.sroa.0.0
; call core::slice::sort::stable::quicksort::quicksort
  call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hdfb2cdee762e95a0E(ptr noalias noundef nonnull align 4 %10, i64 noundef %11, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef %4, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) %pivot_copy, ptr noalias noundef align 8 dereferenceable(8) %is_less) #35
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_8 = icmp ult i64 %left_partition_len.sroa.0.0, 33
  br i1 %_8, label %bb3, label %bb5

bb17:                                             ; preds = %bb16
; call core::slice::sort::stable::quicksort::stable_partition
  %mid_eq = call noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17h5440239c8a650de6E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph42, i64 noundef %v.sroa.16.034, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i64 noundef %index.sroa.0.0.i, i1 noundef zeroext true, ptr noalias align 8 poison)
  %_47 = icmp ugt i64 %mid_eq, %v.sroa.16.034
  br i1 %_47, label %bb27, label %bb28, !prof !1529

bb28:                                             ; preds = %bb17
  %new_len = sub nuw i64 %v.sroa.16.034, %mid_eq
  %_54 = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph42, i64 %mid_eq
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_832 = icmp ult i64 %new_len, 33
  br i1 %_832, label %bb3, label %bb5.lr.ph

bb27:                                             ; preds = %bb17
; call core::slice::index::slice_index_fail
  call void @_ZN4core5slice5index16slice_index_fail17h62807bcaa490c9c1E(i64 noundef %mid_eq, i64 noundef %v.sroa.16.034, i64 noundef %v.sroa.16.034, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_0766b232215672ee1bd2195fdb153938) #32
  unreachable

bb22:                                             ; preds = %bb3, %bb6
  ret void
}

; <A as core::slice::cmp::SlicePartialOrd>::partial_compare
; Function Attrs: mustprogress nofree norecurse nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef range(i8 -1, 3) i8 @"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E"(ptr noalias noundef nonnull readonly align 1 captures(none) %left.0, i64 noundef range(i64 0, -9223372036854775808) %left.1, ptr noalias noundef nonnull readonly align 1 captures(none) %right.0, i64 noundef range(i64 0, -9223372036854775808) %right.1) unnamed_addr #15 {
start:
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %left.1, i64 range(i64 0, -9223372036854775808) %right.1)
  %0 = tail call i32 @memcmp(ptr nonnull readonly align 1 %left.0, ptr nonnull readonly align 1 %right.0, i64 %spec.store.select.i), !alias.scope !2669
  %1 = sext i32 %0 to i64
  %_15.i = icmp eq i32 %0, 0
  %diff.i = sub nsw i64 %left.1, %right.1
  %spec.select.i = select i1 %_15.i, i64 %diff.i, i64 %1
  %_0.i = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.select.i, i64 0)
  ret i8 %_0.i
}

; alloc::slice::<impl core::slice::sort::stable::BufGuard<T> for alloc::vec::Vec<T>>::with_capacity
; Function Attrs: nonlazybind uwtable
define void @"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h7c1b0be8a5f89fe9E"(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_0, i64 noundef %capacity) unnamed_addr #1 {
start:
  %_4.i = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4.i)
; call alloc::raw_vec::RawVecInner<A>::try_allocate_in
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_4.i, i64 noundef %capacity, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24)
  %_5.i = load i64, ptr %_4.i, align 8, !range !1527, !noundef !37
  %0 = trunc nuw i64 %_5.i to i1
  %1 = getelementptr inbounds nuw i8, ptr %_4.i, i64 8
  %err.0.i = load i64, ptr %1, align 8, !range !1528, !noundef !37
  %2 = getelementptr inbounds nuw i8, ptr %_4.i, i64 16
  br i1 %0, label %bb3.i, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h5110a663f2431b70E.exit", !prof !1529

bb3.i:                                            ; preds = %start
  %err.1.i = load i64, ptr %2, align 8
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i, i64 %err.1.i) #33
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h5110a663f2431b70E.exit": ; preds = %start
  %this.1.i = load ptr, ptr %2, align 8, !nonnull !37, !noundef !37
  %_7.i = icmp ule i64 %capacity, %err.0.i
  tail call void @llvm.assume(i1 %_7.i)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4.i)
  store i64 %err.0.i, ptr %_0, align 8
  %3 = getelementptr inbounds nuw i8, ptr %_0, i64 8
  store ptr %this.1.i, ptr %3, align 8
  %4 = getelementptr inbounds nuw i8, ptr %_0, i64 16
  store i64 0, ptr %4, align 8
  ret void
}

; alloc::slice::<impl core::slice::sort::stable::BufGuard<T> for alloc::vec::Vec<T>>::with_capacity
; Function Attrs: nonlazybind uwtable
define void @"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h902fd1cdf4522e46E"(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_0, i64 noundef %capacity) unnamed_addr #1 {
start:
  %_4.i = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4.i)
; call alloc::raw_vec::RawVecInner<A>::try_allocate_in
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_4.i, i64 noundef %capacity, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
  %_5.i = load i64, ptr %_4.i, align 8, !range !1527, !noundef !37
  %0 = trunc nuw i64 %_5.i to i1
  %1 = getelementptr inbounds nuw i8, ptr %_4.i, i64 8
  %err.0.i = load i64, ptr %1, align 8, !range !1528, !noundef !37
  %2 = getelementptr inbounds nuw i8, ptr %_4.i, i64 16
  br i1 %0, label %bb3.i, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h5110a663f2431b70E.exit", !prof !1529

bb3.i:                                            ; preds = %start
  %err.1.i = load i64, ptr %2, align 8
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i, i64 %err.1.i) #33
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h5110a663f2431b70E.exit": ; preds = %start
  %this.1.i = load ptr, ptr %2, align 8, !nonnull !37, !noundef !37
  %_7.i = icmp ule i64 %capacity, %err.0.i
  tail call void @llvm.assume(i1 %_7.i)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4.i)
  store i64 %err.0.i, ptr %_0, align 8
  %3 = getelementptr inbounds nuw i8, ptr %_0, i64 8
  store ptr %this.1.i, ptr %3, align 8
  %4 = getelementptr inbounds nuw i8, ptr %_0, i64 16
  store i64 0, ptr %4, align 8
  ret void
}

; alloc::slice::<impl core::slice::sort::stable::BufGuard<T> for alloc::vec::Vec<T>>::as_uninit_slice_mut
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { ptr, i64 } @"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$19as_uninit_slice_mut17h97757f0cdcc9e49cE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %self) unnamed_addr #16 {
start:
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %_10 = load ptr, ptr %0, align 8, !nonnull !37, !noundef !37
  %1 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %count = load i64, ptr %1, align 8, !noundef !37
  %_3 = getelementptr inbounds nuw i32, ptr %_10, i64 %count
  %self1 = load i64, ptr %self, align 8, !range !2673, !noundef !37
  %len = sub i64 %self1, %count
  %2 = insertvalue { ptr, i64 } poison, ptr %_3, 0
  %3 = insertvalue { ptr, i64 } %2, i64 %len, 1
  ret { ptr, i64 } %3
}

; alloc::slice::<impl core::slice::sort::stable::BufGuard<T> for alloc::vec::Vec<T>>::as_uninit_slice_mut
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { ptr, i64 } @"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$19as_uninit_slice_mut17h9a27c2076df9629aE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %self) unnamed_addr #16 {
start:
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %_10 = load ptr, ptr %0, align 8, !nonnull !37, !noundef !37
  %1 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %count = load i64, ptr %1, align 8, !noundef !37
  %_3 = getelementptr inbounds nuw %"alloc::string::String", ptr %_10, i64 %count
  %self1 = load i64, ptr %self, align 8, !range !2673, !noundef !37
  %len = sub i64 %self1, %count
  %2 = insertvalue { ptr, i64 } poison, ptr %_3, 0
  %3 = insertvalue { ptr, i64 } %2, i64 %len, 1
  ret { ptr, i64 } %3
}

; <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: nonlazybind uwtable
define void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3a1990cca6413e04E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %self) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %_5 = load ptr, ptr %0, align 8, !nonnull !37, !noundef !37
  %1 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %len = load i64, ptr %1, align 8, !noundef !37
  br label %bb6.i

bb6.i:                                            ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hed4fea2f99745addE.exit.i.i", %start
  %_3.sroa.0.0.i = phi i64 [ 0, %start ], [ %2, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hed4fea2f99745addE.exit.i.i" ]
  %_7.i = icmp eq i64 %_3.sroa.0.0.i, %len
  br i1 %_7.i, label %"_ZN4core3ptr52drop_in_place$LT$$u5b$alloc..string..String$u5d$$GT$17h3e6ccc6a4bfa930dE.exit", label %bb5.i

bb5.i:                                            ; preds = %bb6.i
  %_6.i = getelementptr inbounds nuw %"alloc::string::String", ptr %_5, i64 %_3.sroa.0.0.i
  %2 = add i64 %_3.sroa.0.0.i, 1
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %_6.i)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hed4fea2f99745addE.exit.i.i" unwind label %cleanup.i.i.i

cleanup.i.i.i:                                    ; preds = %bb5.i
  %3 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %_6.i)
          to label %cleanup.body.i unwind label %terminate.i.i.i

terminate.i.i.i:                                  ; preds = %cleanup.i.i.i
  %4 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #31
  unreachable

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hed4fea2f99745addE.exit.i.i": ; preds = %bb5.i
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %_6.i)
          to label %bb6.i unwind label %cleanup.i

bb4.i:                                            ; preds = %bb3.i, %cleanup.body.i
  %_3.sroa.0.1.i = phi i64 [ %2, %cleanup.body.i ], [ %6, %bb3.i ]
  %_5.i = icmp eq i64 %_3.sroa.0.1.i, %len
  br i1 %_5.i, label %bb2.i, label %bb3.i

cleanup.i:                                        ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hed4fea2f99745addE.exit.i.i"
  %5 = landingpad { ptr, i32 }
          cleanup
  br label %cleanup.body.i

cleanup.body.i:                                   ; preds = %cleanup.i, %cleanup.i.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %5, %cleanup.i ], [ %3, %cleanup.i.i.i ]
  br label %bb4.i

bb3.i:                                            ; preds = %bb4.i
  %_4.i = getelementptr inbounds nuw %"alloc::string::String", ptr %_5, i64 %_3.sroa.0.1.i
  %6 = add i64 %_3.sroa.0.1.i, 1
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hde14ea688b292269E"(ptr noalias noundef align 8 dereferenceable(24) %_4.i) #34
          to label %bb4.i unwind label %terminate.i

bb2.i:                                            ; preds = %bb4.i
  resume { ptr, i32 } %eh.lpad-body.i

terminate.i:                                      ; preds = %bb3.i
  %7 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #31
  unreachable

"_ZN4core3ptr52drop_in_place$LT$$u5b$alloc..string..String$u5d$$GT$17h3e6ccc6a4bfa930dE.exit": ; preds = %bb6.i
  ret void
}

; <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he0c19d9527009fe9E"(ptr noalias noundef readnone align 8 captures(none) dereferenceable(24) %self) unnamed_addr #10 {
start:
  ret void
}

; <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: nonlazybind uwtable
define void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha06b537214d2b455E"(ptr noalias noundef align 8 dereferenceable(16) %self) unnamed_addr #1 {
start:
; call alloc::raw_vec::RawVecInner<A>::deallocate
  tail call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef align 8 dereferenceable(16) %self, i64 noundef 8, i64 noundef 24)
  ret void
}

; <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: nonlazybind uwtable
define void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he72c092594a68a6aE"(ptr noalias noundef align 8 dereferenceable(16) %self) unnamed_addr #1 {
start:
; call alloc::raw_vec::RawVecInner<A>::deallocate
  tail call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef align 8 dereferenceable(16) %self, i64 noundef 4, i64 noundef 4)
  ret void
}

; <core::slice::sort::stable::merge::MergeState<T> as core::ops::drop::Drop>::drop
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define void @"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1026d09a29655880E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %self) unnamed_addr #14 {
start:
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %self1 = load ptr, ptr %0, align 8, !noundef !37
  %_5 = load ptr, ptr %self, align 8, !noundef !37
  %1 = ptrtoint ptr %self1 to i64
  %2 = ptrtoint ptr %_5 to i64
  %3 = sub nuw i64 %1, %2
  %4 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %5 = load ptr, ptr %4, align 8, !noundef !37
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %5, ptr align 8 %_5, i64 %3, i1 false)
  ret void
}

; <core::slice::sort::stable::merge::MergeState<T> as core::ops::drop::Drop>::drop
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define void @"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hddbf6677d5cb6c3aE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %self) unnamed_addr #14 {
start:
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %self1 = load ptr, ptr %0, align 8, !noundef !37
  %_5 = load ptr, ptr %self, align 8, !noundef !37
  %1 = ptrtoint ptr %self1 to i64
  %2 = ptrtoint ptr %_5 to i64
  %3 = sub nuw i64 %1, %2
  %4 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %5 = load ptr, ptr %4, align 8, !noundef !37
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %5, ptr align 4 %_5, i64 %3, i1 false)
  ret void
}

; <core::hint::select_unpredictable::DropOnPanic<T> as core::ops::drop::Drop>::drop
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define void @"_ZN96_$LT$core..hint..select_unpredictable..DropOnPanic$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbbd1e88ea34c228cE"(ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %self) unnamed_addr #10 {
start:
  ret void
}

; <core::hint::select_unpredictable::DropOnPanic<T> as core::ops::drop::Drop>::drop
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define void @"_ZN96_$LT$core..hint..select_unpredictable..DropOnPanic$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he405588d67e6f340E"(ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %self) unnamed_addr #10 {
start:
  ret void
}

; <core::slice::sort::shared::smallsort::CopyOnDrop<T> as core::ops::drop::Drop>::drop
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define void @"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h905e47fd61ee7147E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %self) unnamed_addr #14 {
start:
  %src = load ptr, ptr %self, align 8, !noundef !37
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %dst = load ptr, ptr %0, align 8, !noundef !37
  %1 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %count = load i64, ptr %1, align 8, !noundef !37
  %2 = mul i64 %count, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %dst, ptr align 8 %src, i64 %2, i1 false)
  ret void
}

; <core::slice::sort::shared::smallsort::CopyOnDrop<T> as core::ops::drop::Drop>::drop
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define void @"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha803dd85e90fe87bE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %self) unnamed_addr #14 {
start:
  %src = load ptr, ptr %self, align 8, !noundef !37
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %dst = load ptr, ptr %0, align 8, !noundef !37
  %1 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %count = load i64, ptr %1, align 8, !noundef !37
  %2 = shl i64 %count, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %dst, ptr align 4 %src, i64 %2, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: read) uwtable
define noundef range(i8 -1, 2) i8 @cmpfunc(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %a, ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %b) unnamed_addr #17 {
start:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2674)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2677)
  %_3.i = load i32, ptr %a, align 4, !alias.scope !2674, !noalias !2677, !noundef !37
  %_4.i = load i32, ptr %b, align 4, !alias.scope !2677, !noalias !2674, !noundef !37
  %_0.i = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i32(i32 %_3.i, i32 %_4.i)
  ret i8 %_0.i
}

; Function Attrs: nonlazybind uwtable
define void @f_gold(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_0, ptr dead_on_return noalias noundef align 8 captures(address) dereferenceable(24) %s) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %is_less.i.i = alloca [0 x i8], align 1
  %_4.i.i.i.i = alloca [24 x i8], align 8
  %_4.i.i = alloca [24 x i8], align 8
  %res = alloca [24 x i8], align 8
  %_26 = alloca [24 x i8], align 8
  %arr = alloca [24 x i8], align 8
  %0 = getelementptr inbounds nuw i8, ptr %s, i64 16
  %_0.i = load i64, ptr %0, align 8, !alias.scope !2679, !noundef !37
  %_2.i = icmp sgt i64 %_0.i, -1
  tail call void @llvm.assume(i1 %_2.i)
  %_6 = add nuw i64 %_0.i, 1
  %_5 = mul i64 %_6, %_0.i
  %sub_count9 = lshr i64 %_5, 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %arr)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2682)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4.i.i), !noalias !2682
; invoke alloc::raw_vec::RawVecInner<A>::try_allocate_in
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_4.i.i, i64 noundef range(i64 0, -9223372036854775808) %sub_count9, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24)
          to label %.noexc unwind label %cleanup

bb33:                                             ; preds = %cleanup.i, %cleanup, %bb32
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb32 ], [ %1, %cleanup ], [ %12, %cleanup.i ]
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hde14ea688b292269E"(ptr noalias noundef align 8 dereferenceable(24) %s) #34
          to label %common.resume unwind label %terminate

cleanup:                                          ; preds = %bb4.i, %bb3.i.i, %start
  %1 = landingpad { ptr, i32 }
          cleanup
  br label %bb33

.noexc:                                           ; preds = %start
  %_5.i.i = load i64, ptr %_4.i.i, align 8, !range !1527, !noalias !2682, !noundef !37
  %2 = trunc nuw i64 %_5.i.i to i1
  %3 = getelementptr inbounds nuw i8, ptr %_4.i.i, i64 8
  %err.0.i.i = load i64, ptr %3, align 8, !range !1528, !noalias !2682, !noundef !37
  %4 = getelementptr inbounds nuw i8, ptr %_4.i.i, i64 16
  br i1 %2, label %bb3.i.i, label %"_ZN5alloc3vec12Vec$LT$T$GT$13with_capacity17hc928b7f9ad73e3d1E.exit", !prof !1529

bb3.i.i:                                          ; preds = %.noexc
  %err.1.i.i = load i64, ptr %4, align 8, !noalias !2682
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #33
          to label %.noexc12 unwind label %cleanup

.noexc12:                                         ; preds = %bb3.i.i
  unreachable

"_ZN5alloc3vec12Vec$LT$T$GT$13with_capacity17hc928b7f9ad73e3d1E.exit": ; preds = %.noexc
  %this.1.i.i = load ptr, ptr %4, align 8, !noalias !2682, !nonnull !37, !noundef !37
  %_7.i.i = icmp samesign ule i64 %sub_count9, %err.0.i.i
  tail call void @llvm.assume(i1 %_7.i.i)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4.i.i), !noalias !2682
  store i64 %err.0.i.i, ptr %arr, align 8, !alias.scope !2682
  %5 = getelementptr inbounds nuw i8, ptr %arr, i64 8
  store ptr %this.1.i.i, ptr %5, align 8, !alias.scope !2682
  %6 = getelementptr inbounds nuw i8, ptr %arr, i64 16
  store i64 0, ptr %6, align 8, !alias.scope !2682
  %_0.i.i.i73.not = icmp eq i64 %_0.i, 0
  br i1 %_0.i.i.i73.not, label %bb8, label %bb7.lr.ph

bb7.lr.ph:                                        ; preds = %"_ZN5alloc3vec12Vec$LT$T$GT$13with_capacity17hc928b7f9ad73e3d1E.exit"
  %7 = getelementptr inbounds nuw i8, ptr %s, i64 8
  %8 = getelementptr inbounds nuw i8, ptr %_4.i.i.i.i, i64 8
  %9 = getelementptr inbounds nuw i8, ptr %_4.i.i.i.i, i64 16
  %bytes.sroa.4.0._0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %_26, i64 8
  %bytes.sroa.5.0._0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %_26, i64 16
  br label %bb7

bb32:                                             ; preds = %cleanup3.loopexit, %cleanup3.loopexit.split-lp, %cleanup.i.i42, %cleanup4
  %.pn = phi { ptr, i32 } [ %lpad.phi, %cleanup4 ], [ %26, %cleanup.i.i42 ], [ %lpad.loopexit50, %cleanup3.loopexit ], [ %lpad.loopexit.split-lp51, %cleanup3.loopexit.split-lp ]
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::string::String>>
  invoke fastcc void @"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17he3d388727106a310E"(ptr noalias noundef align 8 dereferenceable(24) %arr) #34
          to label %bb33 unwind label %terminate

cleanup3.loopexit:                                ; preds = %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hfe698e6e582fce30E.exit"
  %lpad.loopexit50 = landingpad { ptr, i32 }
          cleanup
  br label %bb32

cleanup3.loopexit.split-lp:                       ; preds = %bb10.i.i, %bb3.i.i35, %bb3.i.i.i.i
  %lpad.loopexit.split-lp51 = landingpad { ptr, i32 }
          cleanup
  br label %bb32

bb4.loopexit:                                     ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hd2ba8b311de680cfE.exit", %bb7
  %_0.i.i.i = icmp ult i64 %spec.select77, %_0.i
  %_0.i1.i.i = zext i1 %_0.i.i.i to i64
  %spec.select = add nuw i64 %spec.select77, %_0.i1.i.i
  br i1 %_0.i.i.i, label %bb7, label %bb8

bb7:                                              ; preds = %bb7.lr.ph, %bb4.loopexit
  %spec.select77 = phi i64 [ 1, %bb7.lr.ph ], [ %spec.select, %bb4.loopexit ]
  %iter.sroa.0.075 = phi i64 [ 0, %bb7.lr.ph ], [ %spec.select77, %bb4.loopexit ]
  %_18 = sub nuw nsw i64 %_0.i, %iter.sroa.0.075
  %_11.i.i.i = icmp eq i64 %iter.sroa.0.075, 0
  %_0.i.not.i.i114.not = icmp eq i64 %_0.i, %iter.sroa.0.075
  br i1 %_0.i.not.i.i114.not, label %bb4.loopexit, label %bb13.lr.ph

bb13.lr.ph:                                       ; preds = %bb7
  %_0.i3.i.i115 = icmp samesign ult i64 %_18, 2
  %iter1.sroa.7.1120 = zext i1 %_0.i3.i.i115 to i8
  %iter1.sroa.0.1119 = select i1 %_0.i3.i.i115, i64 1, i64 2
  br label %bb13

bb8:                                              ; preds = %bb4.loopexit, %"_ZN5alloc3vec12Vec$LT$T$GT$13with_capacity17hc928b7f9ad73e3d1E.exit"
  %_4.i.i14 = load ptr, ptr %5, align 8, !alias.scope !2685, !nonnull !37, !noundef !37
  %len.i.i = load i64, ptr %6, align 8, !alias.scope !2685, !noundef !37
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %is_less.i.i), !noalias !2690
  %b.i.i = icmp samesign ult i64 %len.i.i, 2
  br i1 %b.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h90c08e9f316f5eb7E.exit", label %bb7.i.i, !prof !2693

bb7.i.i:                                          ; preds = %bb8
  %b1.i.i = icmp samesign ult i64 %len.i.i, 21
  br i1 %b1.i.i, label %bb9.i.i, label %bb10.i.i, !prof !2693

bb10.i.i:                                         ; preds = %bb7.i.i
; invoke core::slice::sort::stable::driftsort_main
  invoke void @_ZN4core5slice4sort6stable14driftsort_main17had053cf2c77a0b49E(ptr noalias noundef nonnull align 8 %_4.i.i14, i64 noundef range(i64 0, 384307168202282326) %len.i.i, ptr noalias noundef nonnull align 1 %is_less.i.i)
          to label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h90c08e9f316f5eb7E.exit" unwind label %cleanup3.loopexit.split-lp

bb9.i.i:                                          ; preds = %bb7.i.i
; call core::slice::sort::shared::smallsort::insertion_sort_shift_left
  call void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h5881bc39b88732acE(ptr noalias noundef nonnull align 8 %_4.i.i14, i64 noundef range(i64 0, 384307168202282326) %len.i.i, i64 noundef 1, ptr noalias nonnull align 1 poison)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h90c08e9f316f5eb7E.exit"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h90c08e9f316f5eb7E.exit": ; preds = %bb10.i.i, %bb8, %bb9.i.i
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %is_less.i.i), !noalias !2690
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %res)
  store i64 0, ptr %res, align 8, !alias.scope !2694
  %_1.sroa.4.0._0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %res, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %_1.sroa.4.0._0.sroa_idx.i, align 8, !alias.scope !2694
  %_1.sroa.5.0._0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %res, i64 16
  store i64 0, ptr %_1.sroa.5.0._0.sroa_idx.i, align 8, !alias.scope !2694
  br label %bb22

cleanup4.loopexit:                                ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha34fe7f7b17dd054E.exit"
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %cleanup4

cleanup4.loopexit.split-lp:                       ; preds = %panic.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %cleanup4

cleanup4:                                         ; preds = %cleanup4.loopexit.split-lp, %cleanup4.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %cleanup4.loopexit ], [ %lpad.loopexit.split-lp, %cleanup4.loopexit.split-lp ]
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hde14ea688b292269E"(ptr noalias noundef align 8 dereferenceable(24) %res) #34
          to label %bb32 unwind label %terminate

bb22:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha34fe7f7b17dd054E.exit", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h90c08e9f316f5eb7E.exit"
  %iter2.sroa.0.0 = phi i64 [ 0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h90c08e9f316f5eb7E.exit" ], [ %spec.select46, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha34fe7f7b17dd054E.exit" ]
  %_0.i.i.i19 = icmp ult i64 %iter2.sroa.0.0, %sub_count9
  %_0.i1.i.i22 = zext i1 %_0.i.i.i19 to i64
  %spec.select46 = add nuw i64 %iter2.sroa.0.0, %_0.i1.i.i22
  br i1 %_0.i.i.i19, label %bb24, label %bb25

bb24:                                             ; preds = %bb22
  %len.i = load i64, ptr %6, align 8, !alias.scope !2697, !noundef !37
  %_4.i.i24 = icmp ult i64 %iter2.sroa.0.0, %len.i
  br i1 %_4.i.i24, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha34fe7f7b17dd054E.exit", label %panic.i.i

panic.i.i:                                        ; preds = %bb24
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %iter2.sroa.0.0, i64 noundef range(i64 0, 384307168202282326) %len.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_4cce44244d9639ad41a74bd16b875a27) #32
          to label %.noexc25 unwind label %cleanup4.loopexit.split-lp

.noexc25:                                         ; preds = %panic.i.i
  unreachable

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha34fe7f7b17dd054E.exit": ; preds = %bb24
  %_6.i = load ptr, ptr %5, align 8, !alias.scope !2697, !nonnull !37, !noundef !37
  %_0.i.i = getelementptr inbounds nuw %"alloc::string::String", ptr %_6.i, i64 %iter2.sroa.0.0
  %10 = getelementptr inbounds nuw i8, ptr %_0.i.i, i64 8
  %_6.i.i = load ptr, ptr %10, align 8, !alias.scope !2700, !nonnull !37, !noundef !37
  %11 = getelementptr inbounds nuw i8, ptr %_0.i.i, i64 16
  %len.i.i27 = load i64, ptr %11, align 8, !alias.scope !2700, !noundef !37
  %_9.i = getelementptr inbounds nuw i8, ptr %_6.i.i, i64 %len.i.i27
; invoke <alloc::vec::Vec<T,A> as alloc::vec::spec_extend::SpecExtend<&T,core::slice::iter::Iter<T>>>::spec_extend
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h50a987f7cf4aec42E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %res, ptr noundef nonnull readonly align 1 %_6.i.i, ptr noundef nonnull readonly %_9.i)
          to label %bb22 unwind label %cleanup4.loopexit

bb25:                                             ; preds = %bb22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_0, ptr noundef nonnull align 8 dereferenceable(24) %res, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %res)
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3a1990cca6413e04E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %arr)
          to label %bb4.i unwind label %cleanup.i

cleanup.i:                                        ; preds = %bb25
  %12 = landingpad { ptr, i32 }
          cleanup
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %arr, i64 noundef 8, i64 noundef 24)
          to label %bb33 unwind label %terminate.i

bb4.i:                                            ; preds = %bb25
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %arr, i64 noundef 8, i64 noundef 24)
          to label %bb29 unwind label %cleanup

terminate.i:                                      ; preds = %cleanup.i
  %13 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #31
  unreachable

bb29:                                             ; preds = %bb4.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %arr)
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %s)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hde14ea688b292269E.exit" unwind label %cleanup.i.i

cleanup.i.i:                                      ; preds = %bb29
  %14 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %s)
          to label %common.resume unwind label %terminate.i.i

terminate.i.i:                                    ; preds = %cleanup.i.i
  %15 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #31
  unreachable

common.resume:                                    ; preds = %bb33, %cleanup.i.i
  %common.resume.op = phi { ptr, i32 } [ %14, %cleanup.i.i ], [ %.pn.pn, %bb33 ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hde14ea688b292269E.exit": ; preds = %bb29
; call <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %s)
  ret void

terminate:                                        ; preds = %bb33, %bb32, %cleanup4
  %16 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #31
  unreachable

bb13:                                             ; preds = %bb13.lr.ph, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hd2ba8b311de680cfE.exit"
  %_0.sroa.3.0.i.i123 = phi i64 [ 1, %bb13.lr.ph ], [ %_0.sroa.3.0.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hd2ba8b311de680cfE.exit" ]
  %iter1.sroa.7.1122 = phi i8 [ %iter1.sroa.7.1120, %bb13.lr.ph ], [ %iter1.sroa.7.1, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hd2ba8b311de680cfE.exit" ]
  %iter1.sroa.0.1121 = phi i64 [ %iter1.sroa.0.1119, %bb13.lr.ph ], [ %iter1.sroa.0.1, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hd2ba8b311de680cfE.exit" ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_26)
  %_30 = add i64 %_0.sroa.3.0.i.i123, %iter.sroa.0.075
  call void @llvm.experimental.noalias.scope.decl(metadata !2705)
  %_8.i = load ptr, ptr %7, align 8, !alias.scope !2705, !nonnull !37, !noundef !37
  %len.i34 = load i64, ptr %0, align 8, !alias.scope !2705, !noundef !37
  %_3.not.i.i.i = icmp ugt i64 %iter.sroa.0.075, %_30
  br i1 %_3.not.i.i.i, label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i", label %bb1.i.i.i

bb1.i.i.i:                                        ; preds = %bb13
  br i1 %_11.i.i.i, label %bb2.i.i.i, label %bb9.i.i.i

bb9.i.i.i:                                        ; preds = %bb1.i.i.i
  %_12.not.i.i.i = icmp ult i64 %iter.sroa.0.075, %len.i34
  br i1 %_12.not.i.i.i, label %bb12.i.i.i, label %bb10.i.i.i

bb10.i.i.i:                                       ; preds = %bb9.i.i.i
  %17 = icmp eq i64 %iter.sroa.0.075, %len.i34
  br label %bb13.i.i.i

bb12.i.i.i:                                       ; preds = %bb9.i.i.i
  %18 = getelementptr inbounds nuw i8, ptr %_8.i, i64 %iter.sroa.0.075
  %self.i.i.i = load i8, ptr %18, align 1, !alias.scope !2708, !noalias !2705, !noundef !37
  %19 = icmp sgt i8 %self.i.i.i, -65
  br label %bb13.i.i.i

bb13.i.i.i:                                       ; preds = %bb12.i.i.i, %bb10.i.i.i
  %_6.sroa.0.0.in.i.i.i = phi i1 [ %17, %bb10.i.i.i ], [ %19, %bb12.i.i.i ]
  br i1 %_6.sroa.0.0.in.i.i.i, label %bb2.i.i.i, label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i"

bb2.i.i.i:                                        ; preds = %bb13.i.i.i, %bb1.i.i.i
  %_18.i.i.i = icmp eq i64 %_30, 0
  br i1 %_18.i.i.i, label %bb22.i.i.i, label %bb15.i.i.i

bb15.i.i.i:                                       ; preds = %bb2.i.i.i
  %_19.not.i.i.i = icmp ult i64 %_30, %len.i34
  br i1 %_19.not.i.i.i, label %bb18.i.i.i, label %bb16.i.i.i

bb16.i.i.i:                                       ; preds = %bb15.i.i.i
  %20 = icmp eq i64 %_30, %len.i34
  br label %bb19.i.i.i

bb18.i.i.i:                                       ; preds = %bb15.i.i.i
  %21 = getelementptr inbounds nuw i8, ptr %_8.i, i64 %_30
  %self2.i.i.i = load i8, ptr %21, align 1, !alias.scope !2708, !noalias !2705, !noundef !37
  %22 = icmp sgt i8 %self2.i.i.i, -65
  br label %bb19.i.i.i

bb19.i.i.i:                                       ; preds = %bb18.i.i.i, %bb16.i.i.i
  %_7.sroa.0.0.in.i.i.i = phi i1 [ %20, %bb16.i.i.i ], [ %22, %bb18.i.i.i ]
  br i1 %_7.sroa.0.0.in.i.i.i, label %bb22.i.i.i, label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i"

bb22.i.i.i:                                       ; preds = %bb19.i.i.i, %bb2.i.i.i
  %data.i.i.i = getelementptr inbounds nuw i8, ptr %_8.i, i64 %iter.sroa.0.075
  br label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i"

"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i": ; preds = %bb22.i.i.i, %bb19.i.i.i, %bb13.i.i.i, %bb13
  %_0.sroa.0.0.i.i.i = phi ptr [ %data.i.i.i, %bb22.i.i.i ], [ null, %bb19.i.i.i ], [ null, %bb13.i.i.i ], [ null, %bb13 ]
  %.not.i.i = icmp eq ptr %_0.sroa.0.0.i.i.i, null
  br i1 %.not.i.i, label %bb3.i.i35, label %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hfe698e6e582fce30E.exit", !prof !1529

bb3.i.i35:                                        ; preds = %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i"
; invoke core::str::slice_error_fail
  invoke void @_ZN4core3str16slice_error_fail17h4678567854dd8858E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %_8.i, i64 noundef %len.i34, i64 noundef %iter.sroa.0.075, i64 noundef %_30, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_04774e36529a2f0ec64e4c14b859aaab) #32
          to label %.noexc36 unwind label %cleanup3.loopexit.split-lp

.noexc36:                                         ; preds = %bb3.i.i35
  unreachable

"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hfe698e6e582fce30E.exit": ; preds = %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !2713)
  call void @llvm.experimental.noalias.scope.decl(metadata !2716)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4.i.i.i.i), !noalias !2719
; invoke alloc::raw_vec::RawVecInner<A>::try_allocate_in
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_4.i.i.i.i, i64 noundef range(i64 0, -9223372036854775808) %_0.sroa.3.0.i.i123, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc37 unwind label %cleanup3.loopexit

.noexc37:                                         ; preds = %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hfe698e6e582fce30E.exit"
  %_5.i.i.i.i = load i64, ptr %_4.i.i.i.i, align 8, !range !1527, !noalias !2719, !noundef !37
  %23 = trunc nuw i64 %_5.i.i.i.i to i1
  br i1 %23, label %bb3.i.i.i.i, label %"_ZN45_$LT$T$u20$as$u20$alloc..string..ToString$GT$9to_string17h861ff246b96a8bb3E.exit", !prof !1529

bb3.i.i.i.i:                                      ; preds = %.noexc37
  %24 = getelementptr inbounds nuw i8, ptr %_4.i.i.i.i, i64 8
  %err.0.i.i.i.i = load i64, ptr %24, align 8, !range !1528, !noalias !2719, !noundef !37
  %25 = getelementptr inbounds nuw i8, ptr %_4.i.i.i.i, i64 16
  %err.1.i.i.i.i = load i64, ptr %25, align 8, !noalias !2719
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i.i.i, i64 %err.1.i.i.i.i) #33
          to label %.noexc38 unwind label %cleanup3.loopexit.split-lp

.noexc38:                                         ; preds = %bb3.i.i.i.i
  unreachable

"_ZN45_$LT$T$u20$as$u20$alloc..string..ToString$GT$9to_string17h861ff246b96a8bb3E.exit": ; preds = %.noexc37
  %this.0.i.i.i.i = load i64, ptr %8, align 8, !range !2673, !noalias !2719, !noundef !37
  %this.1.i.i.i.i = load ptr, ptr %9, align 8, !noalias !2719, !nonnull !37, !noundef !37
  %_7.i.i.i.i = icmp samesign ule i64 %_0.sroa.3.0.i.i123, %this.0.i.i.i.i
  call void @llvm.assume(i1 %_7.i.i.i.i)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4.i.i.i.i), !noalias !2719
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %this.1.i.i.i.i, ptr nonnull readonly align 1 %_0.sroa.0.0.i.i.i, i64 range(i64 0, -9223372036854775808) %_0.sroa.3.0.i.i123, i1 false), !noalias !2725
  store i64 %this.0.i.i.i.i, ptr %_26, align 8, !alias.scope !2726, !noalias !2727
  store ptr %this.1.i.i.i.i, ptr %bytes.sroa.4.0._0.sroa_idx.i.i, align 8, !alias.scope !2726, !noalias !2727
  store i64 %_0.sroa.3.0.i.i123, ptr %bytes.sroa.5.0._0.sroa_idx.i.i, align 8, !alias.scope !2726, !noalias !2727
  %len.i.i39 = load i64, ptr %6, align 8, !alias.scope !2728, !noalias !2733, !noundef !37
  %self1.i.i = load i64, ptr %arr, align 8, !range !2673, !alias.scope !2728, !noalias !2733, !noundef !37
  %_4.i.i40 = icmp eq i64 %len.i.i39, %self1.i.i
  br i1 %_4.i.i40, label %bb1.i.i41, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hd2ba8b311de680cfE.exit"

bb1.i.i41:                                        ; preds = %"_ZN45_$LT$T$u20$as$u20$alloc..string..ToString$GT$9to_string17h861ff246b96a8bb3E.exit"
; invoke alloc::raw_vec::RawVec<T,A>::grow_one
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17he6449fc15ab6cfeaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %arr)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hd2ba8b311de680cfE.exit" unwind label %cleanup.i.i42, !noalias !2733

cleanup.i.i42:                                    ; preds = %bb1.i.i41
  %26 = landingpad { ptr, i32 }
          cleanup
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hde14ea688b292269E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %_26) #34
          to label %bb32 unwind label %terminate.i.i43

terminate.i.i43:                                  ; preds = %cleanup.i.i42
  %27 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #31
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hd2ba8b311de680cfE.exit": ; preds = %"_ZN45_$LT$T$u20$as$u20$alloc..string..ToString$GT$9to_string17h861ff246b96a8bb3E.exit", %bb1.i.i41
  %_15.i.i = load ptr, ptr %5, align 8, !alias.scope !2728, !noalias !2733, !nonnull !37, !noundef !37
  %end.i.i = getelementptr inbounds nuw %"alloc::string::String", ptr %_15.i.i, i64 %len.i.i39
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %end.i.i, ptr noundef nonnull align 8 dereferenceable(24) %_26, i64 24, i1 false)
  %28 = add i64 %len.i.i39, 1
  store i64 %28, ptr %6, align 8, !alias.scope !2728, !noalias !2733
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_26)
  %_10.i.i = trunc nuw i8 %iter1.sroa.7.1122 to i1
  %_0.i.not.i.i = icmp ugt i64 %iter1.sroa.0.1121, %_18
  %or.cond = select i1 %_10.i.i, i1 true, i1 %_0.i.not.i.i
  %_0.i3.i.i = icmp ult i64 %iter1.sroa.0.1121, %_18
  %not.or.cond = xor i1 %or.cond, true
  %narrow = select i1 %not.or.cond, i1 %_0.i3.i.i, i1 false
  %spec.select48 = zext i1 %narrow to i64
  %iter1.sroa.0.1 = add nuw i64 %iter1.sroa.0.1121, %spec.select48
  %29 = select i1 %or.cond, i1 true, i1 %_0.i3.i.i
  %iter1.sroa.7.1 = select i1 %29, i8 %iter1.sroa.7.1122, i8 1
  %_0.sroa.3.0.i.i = select i1 %_10.i.i, i64 undef, i64 %iter1.sroa.0.1121
  br i1 %or.cond, label %bb4.loopexit, label %bb13
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef range(i64 0, 2305843009213693952) i64 @len(ptr noalias noundef nonnull readonly align 4 captures(none) %arr.0, i64 noundef returned range(i64 0, 2305843009213693952) %arr.1) unnamed_addr #10 {
start:
  ret i64 %arr.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef i32 @max(i32 noundef %x, i32 noundef %y) unnamed_addr #10 {
start:
  %x.y = tail call i32 @llvm.smax.i32(i32 %x, i32 %y)
  ret i32 %x.y
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef i32 @min(i32 noundef %x, i32 noundef %y) unnamed_addr #10 {
start:
  %x.y = tail call i32 @llvm.smin.i32(i32 %x, i32 %y)
  ret i32 %x.y
}

; Function Attrs: nonlazybind uwtable
define void @sort(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %compare.i = alloca [0 x i8], align 1
  %is_less.i.i = alloca [8 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %compare.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !2736
  store ptr %compare.i, ptr %is_less.i.i, align 8, !noalias !2739
  %b.i.i = icmp samesign ult i64 %arr.1, 2
  br i1 %b.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h16f9ccc62947ce1cE.exit", label %bb7.i.i, !prof !2693

bb7.i.i:                                          ; preds = %start
  %b1.i.i = icmp samesign ult i64 %arr.1, 21
  br i1 %b1.i.i, label %bb9.i.i, label %bb10.i.i, !prof !2693

bb10.i.i:                                         ; preds = %bb7.i.i
; call core::slice::sort::stable::driftsort_main
  call void @_ZN4core5slice4sort6stable14driftsort_main17h4e47b3ce28504335E(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, ptr noalias noundef align 8 dereferenceable(8) %is_less.i.i)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h16f9ccc62947ce1cE.exit"

bb9.i.i:                                          ; preds = %bb7.i.i
; call core::slice::sort::shared::smallsort::insertion_sort_shift_left
  call void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h0ae00b1ab412e7dbE(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, i64 noundef 1, ptr noalias align 8 poison)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h16f9ccc62947ce1cE.exit"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h16f9ccc62947ce1cE.exit": ; preds = %start, %bb10.i.i, %bb9.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !2736
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %compare.i)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #18

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #18

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

; Function Attrs: mustprogress nocallback nofree nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @memcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #20

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64, i64) #21

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #22

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.scmp.i8.i32(i32, i32) #21

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #23

; <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: nonlazybind uwtable
declare void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; core::panicking::panic_in_cleanup
; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() unnamed_addr #24

; <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: nonlazybind uwtable
declare void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; core::panicking::panic_fmt
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking9panic_fmt17ha4414e4328fe24a0E(ptr noundef nonnull, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #25

; core::panicking::panic_bounds_check
; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #26

; core::str::slice_error_fail
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core3str16slice_error_fail17h4678567854dd8858E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #25

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #27

; core::slice::sort::shared::smallsort::panic_on_ord_violation
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() unnamed_addr #25

; core::slice::index::slice_index_fail
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core5slice5index16slice_index_fail17h62807bcaa490c9c1E(i64 noundef, i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #25

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #21

; core::slice::sort::stable::drift::sqrt_approx
; Function Attrs: nonlazybind uwtable
declare noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h72a4dc1ae46294f4E(i64 noundef) unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #21

; alloc::raw_vec::RawVec<T,A>::grow_one
; Function Attrs: noinline nonlazybind uwtable
declare void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17he6449fc15ab6cfeaE"(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #9

; <alloc::vec::Vec<T,A> as alloc::vec::spec_extend::SpecExtend<&T,core::slice::iter::Iter<T>>>::spec_extend
; Function Attrs: nonlazybind uwtable
declare void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h50a987f7cf4aec42E"(ptr noalias noundef align 8 dereferenceable(24), ptr noundef nonnull, ptr noundef) unnamed_addr #1

; alloc::raw_vec::RawVecInner<A>::try_allocate_in
; Function Attrs: nonlazybind uwtable
declare void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #1

; alloc::raw_vec::handle_error
; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #28

; alloc::raw_vec::RawVecInner<A>::deallocate
; Function Attrs: nonlazybind uwtable
declare void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef align 8 dereferenceable(16), i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #29

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #30

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #29

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #29

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #29

attributes #0 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nofree nounwind nonlazybind memory(read, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nofree norecurse nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { mustprogress nofree norecurse nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nofree norecurse nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { nofree norecurse nosync nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { mustprogress nofree norecurse nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #19 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { mustprogress nocallback nofree nounwind nonlazybind willreturn memory(argmem: read) }
attributes #21 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #24 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #25 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #26 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #27 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #28 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #29 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #31 = { cold noreturn nounwind }
attributes #32 = { noinline noreturn }
attributes #33 = { noreturn }
attributes #34 = { cold }
attributes #35 = { noinline }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.93.1 (01f6ddf75 2026-02-11)"}
!3 = !{!4}
!4 = distinct !{!4, !5, !"_ZN4core3ptr10swap_chunk17hbcef857f30cc55b3E: %x"}
!5 = distinct !{!5, !"_ZN4core3ptr10swap_chunk17hbcef857f30cc55b3E"}
!6 = !{!7}
!7 = distinct !{!7, !5, !"_ZN4core3ptr10swap_chunk17hbcef857f30cc55b3E: %y"}
!8 = !{!9}
!9 = distinct !{!9, !5, !"_ZN4core3ptr10swap_chunk17hbcef857f30cc55b3E: %x:It1"}
!10 = !{!11}
!11 = distinct !{!11, !5, !"_ZN4core3ptr10swap_chunk17hbcef857f30cc55b3E: %y:It1"}
!12 = !{!13}
!13 = distinct !{!13, !14, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a"}
!14 = distinct !{!14, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E"}
!15 = !{!16}
!16 = distinct !{!16, !14, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b"}
!17 = !{!18}
!18 = distinct !{!18, !19, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0"}
!19 = distinct !{!19, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E"}
!20 = !{!21}
!21 = distinct !{!21, !22, !"_ZN4core5slice4sort6shared5pivot7median317h068dee1cc059cbf5E: %c"}
!22 = distinct !{!22, !"_ZN4core5slice4sort6shared5pivot7median317h068dee1cc059cbf5E"}
!23 = !{!24}
!24 = distinct !{!24, !19, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1"}
!25 = !{!26}
!26 = distinct !{!26, !27, !"cmpfunc: %a"}
!27 = distinct !{!27, !"cmpfunc"}
!28 = !{!29}
!29 = distinct !{!29, !27, !"cmpfunc: %b"}
!30 = !{!31}
!31 = distinct !{!31, !32, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!32 = distinct !{!32, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!33 = !{!34}
!34 = distinct !{!34, !32, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!35 = !{!31, !26, !18, !13}
!36 = !{!34, !29, !24, !16, !21}
!37 = !{}
!38 = !{!34, !29, !24, !16}
!39 = !{!31, !26, !18, !13, !21}
!40 = !{!41, !43, !45, !47}
!41 = distinct !{!41, !42, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!42 = distinct !{!42, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!43 = distinct !{!43, !44, !"cmpfunc: %b"}
!44 = distinct !{!44, !"cmpfunc"}
!45 = distinct !{!45, !46, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1"}
!46 = distinct !{!46, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E"}
!47 = distinct !{!47, !48, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b"}
!48 = distinct !{!48, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E"}
!49 = !{!50, !51, !52, !53}
!50 = distinct !{!50, !42, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!51 = distinct !{!51, !44, !"cmpfunc: %a"}
!52 = distinct !{!52, !46, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0"}
!53 = distinct !{!53, !48, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a"}
!54 = !{!55}
!55 = distinct !{!55, !56, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 0"}
!56 = distinct !{!56, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E"}
!57 = !{!58}
!58 = distinct !{!58, !56, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 1"}
!59 = !{!60}
!60 = distinct !{!60, !61, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %self"}
!61 = distinct !{!61, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E"}
!62 = !{!63}
!63 = distinct !{!63, !64, !"_ZN4core5slice4sort6shared5pivot7median317h22c231397570fc7bE: %c"}
!64 = distinct !{!64, !"_ZN4core5slice4sort6shared5pivot7median317h22c231397570fc7bE"}
!65 = !{!66}
!66 = distinct !{!66, !61, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %other"}
!67 = !{!68}
!68 = distinct !{!68, !69, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %self"}
!69 = distinct !{!69, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE"}
!70 = !{!71}
!71 = distinct !{!71, !69, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %other"}
!72 = !{!73}
!73 = distinct !{!73, !74, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %self"}
!74 = distinct !{!74, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE"}
!75 = !{!76}
!76 = distinct !{!76, !74, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %other"}
!77 = !{!73, !68, !60, !55}
!78 = !{!76, !71, !66, !58, !63}
!79 = !{!76, !71, !66, !58}
!80 = !{!73, !68, !60, !55, !63}
!81 = !{!82, !84, !85, !87}
!82 = distinct !{!82, !83, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E: %left.0"}
!83 = distinct !{!83, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E"}
!84 = distinct !{!84, !83, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E: %right.0"}
!85 = distinct !{!85, !86, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E: %left.0"}
!86 = distinct !{!86, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E"}
!87 = distinct !{!87, !86, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E: %right.0"}
!88 = !{!73, !76, !68, !71, !60, !66, !55, !58, !63}
!89 = !{!90}
!90 = distinct !{!90, !91, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 1"}
!91 = distinct !{!91, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E"}
!92 = !{!93}
!93 = distinct !{!93, !94, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %other"}
!94 = distinct !{!94, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E"}
!95 = !{!96}
!96 = distinct !{!96, !97, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %other"}
!97 = distinct !{!97, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE"}
!98 = !{!99}
!99 = distinct !{!99, !100, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %other"}
!100 = distinct !{!100, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE"}
!101 = !{!99, !96, !93, !90}
!102 = !{!103, !104, !105, !106}
!103 = distinct !{!103, !100, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %self"}
!104 = distinct !{!104, !97, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %self"}
!105 = distinct !{!105, !94, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %self"}
!106 = distinct !{!106, !91, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 0"}
!107 = !{!108, !110, !111, !113}
!108 = distinct !{!108, !109, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E: %left.0"}
!109 = distinct !{!109, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E"}
!110 = distinct !{!110, !109, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E: %right.0"}
!111 = distinct !{!111, !112, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E: %left.0"}
!112 = distinct !{!112, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E"}
!113 = distinct !{!113, !112, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E: %right.0"}
!114 = !{!103, !99, !104, !96, !105, !93, !106, !90}
!115 = !{!116, !118, !119, !121}
!116 = distinct !{!116, !117, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E: %left.0"}
!117 = distinct !{!117, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E"}
!118 = distinct !{!118, !117, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E: %right.0"}
!119 = distinct !{!119, !120, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E: %left.0"}
!120 = distinct !{!120, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E"}
!121 = distinct !{!121, !120, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E: %right.0"}
!122 = !{!123, !125, !126, !128, !129, !131, !132, !134}
!123 = distinct !{!123, !124, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %self"}
!124 = distinct !{!124, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE"}
!125 = distinct !{!125, !124, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %other"}
!126 = distinct !{!126, !127, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %self"}
!127 = distinct !{!127, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE"}
!128 = distinct !{!128, !127, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %other"}
!129 = distinct !{!129, !130, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %self"}
!130 = distinct !{!130, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E"}
!131 = distinct !{!131, !130, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %other"}
!132 = distinct !{!132, !133, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 0"}
!133 = distinct !{!133, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E"}
!134 = distinct !{!134, !133, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 1"}
!135 = !{!136}
!136 = distinct !{!136, !137, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a"}
!137 = distinct !{!137, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E"}
!138 = !{!139}
!139 = distinct !{!139, !137, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b"}
!140 = !{!141}
!141 = distinct !{!141, !142, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0"}
!142 = distinct !{!142, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E"}
!143 = !{!144}
!144 = distinct !{!144, !142, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1"}
!145 = !{!146}
!146 = distinct !{!146, !147, !"cmpfunc: %a"}
!147 = distinct !{!147, !"cmpfunc"}
!148 = !{!149}
!149 = distinct !{!149, !147, !"cmpfunc: %b"}
!150 = !{!151}
!151 = distinct !{!151, !152, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!152 = distinct !{!152, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!153 = !{!154}
!154 = distinct !{!154, !152, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!155 = !{!151, !146, !141, !136}
!156 = !{!154, !149, !144, !139}
!157 = !{!158, !160, !162, !164}
!158 = distinct !{!158, !159, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!159 = distinct !{!159, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!160 = distinct !{!160, !161, !"cmpfunc: %b"}
!161 = distinct !{!161, !"cmpfunc"}
!162 = distinct !{!162, !163, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1"}
!163 = distinct !{!163, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E"}
!164 = distinct !{!164, !165, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b"}
!165 = distinct !{!165, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E"}
!166 = !{!167, !168, !169, !170}
!167 = distinct !{!167, !159, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!168 = distinct !{!168, !161, !"cmpfunc: %a"}
!169 = distinct !{!169, !163, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0"}
!170 = distinct !{!170, !165, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a"}
!171 = !{!172, !174}
!172 = distinct !{!172, !173, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha803dd85e90fe87bE: %self"}
!173 = distinct !{!173, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha803dd85e90fe87bE"}
!174 = distinct !{!174, !175, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h58f80c573f02939aE: %_1"}
!175 = distinct !{!175, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h58f80c573f02939aE"}
!176 = !{!177}
!177 = distinct !{!177, !178, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 0"}
!178 = distinct !{!178, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E"}
!179 = !{!180}
!180 = distinct !{!180, !178, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 1"}
!181 = !{!182}
!182 = distinct !{!182, !183, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %self"}
!183 = distinct !{!183, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E"}
!184 = !{!185}
!185 = distinct !{!185, !183, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %other"}
!186 = !{!187}
!187 = distinct !{!187, !188, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %self"}
!188 = distinct !{!188, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE"}
!189 = !{!190}
!190 = distinct !{!190, !188, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %other"}
!191 = !{!192}
!192 = distinct !{!192, !193, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %self"}
!193 = distinct !{!193, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE"}
!194 = !{!195}
!195 = distinct !{!195, !193, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %other"}
!196 = !{!192, !187, !182, !177}
!197 = !{!195, !190, !185, !180}
!198 = !{!199, !201, !202, !204}
!199 = distinct !{!199, !200, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E: %left.0"}
!200 = distinct !{!200, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E"}
!201 = distinct !{!201, !200, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E: %right.0"}
!202 = distinct !{!202, !203, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E: %left.0"}
!203 = distinct !{!203, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E"}
!204 = distinct !{!204, !203, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E: %right.0"}
!205 = !{!192, !195, !187, !190, !182, !185, !177, !180}
!206 = !{!207}
!207 = distinct !{!207, !208, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 1"}
!208 = distinct !{!208, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E"}
!209 = !{!210}
!210 = distinct !{!210, !211, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %other"}
!211 = distinct !{!211, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E"}
!212 = !{!213}
!213 = distinct !{!213, !214, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %other"}
!214 = distinct !{!214, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE"}
!215 = !{!216}
!216 = distinct !{!216, !217, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %other"}
!217 = distinct !{!217, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE"}
!218 = !{!216, !213, !210, !207}
!219 = !{!220, !221, !222, !223}
!220 = distinct !{!220, !217, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %self"}
!221 = distinct !{!221, !214, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %self"}
!222 = distinct !{!222, !211, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %self"}
!223 = distinct !{!223, !208, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 0"}
!224 = !{!225, !227, !228, !230}
!225 = distinct !{!225, !226, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E: %left.0"}
!226 = distinct !{!226, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E"}
!227 = distinct !{!227, !226, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E: %right.0"}
!228 = distinct !{!228, !229, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E: %left.0"}
!229 = distinct !{!229, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E"}
!230 = distinct !{!230, !229, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E: %right.0"}
!231 = !{!220, !216, !221, !213, !222, !210, !223, !207}
!232 = !{!233, !235}
!233 = distinct !{!233, !234, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h905e47fd61ee7147E: %self"}
!234 = distinct !{!234, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h905e47fd61ee7147E"}
!235 = distinct !{!235, !236, !"_ZN4core3ptr98drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$alloc..string..String$GT$$GT$17h17c5101470b5ac6eE: %_1"}
!236 = distinct !{!236, !"_ZN4core3ptr98drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$alloc..string..String$GT$$GT$17h17c5101470b5ac6eE"}
!237 = !{!238}
!238 = distinct !{!238, !239, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 0"}
!239 = distinct !{!239, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E"}
!240 = !{!241}
!241 = distinct !{!241, !239, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 1"}
!242 = !{!243}
!243 = distinct !{!243, !244, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %self"}
!244 = distinct !{!244, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E"}
!245 = !{!246}
!246 = distinct !{!246, !244, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %other"}
!247 = !{!248}
!248 = distinct !{!248, !249, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %self"}
!249 = distinct !{!249, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE"}
!250 = !{!251}
!251 = distinct !{!251, !249, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %other"}
!252 = !{!253}
!253 = distinct !{!253, !254, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %self"}
!254 = distinct !{!254, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE"}
!255 = !{!256}
!256 = distinct !{!256, !254, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %other"}
!257 = !{!253, !248, !243, !238}
!258 = !{!256, !251, !246, !241}
!259 = !{!260, !262, !263, !265}
!260 = distinct !{!260, !261, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E: %left.0"}
!261 = distinct !{!261, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E"}
!262 = distinct !{!262, !261, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E: %right.0"}
!263 = distinct !{!263, !264, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E: %left.0"}
!264 = distinct !{!264, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E"}
!265 = distinct !{!265, !264, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E: %right.0"}
!266 = !{!253, !256, !248, !251, !243, !246, !238, !241}
!267 = !{!268}
!268 = distinct !{!268, !269, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 0"}
!269 = distinct !{!269, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E"}
!270 = !{!271}
!271 = distinct !{!271, !269, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 1"}
!272 = !{!273}
!273 = distinct !{!273, !274, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %self"}
!274 = distinct !{!274, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E"}
!275 = !{!276}
!276 = distinct !{!276, !274, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %other"}
!277 = !{!278}
!278 = distinct !{!278, !279, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %self"}
!279 = distinct !{!279, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE"}
!280 = !{!281}
!281 = distinct !{!281, !279, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %other"}
!282 = !{!283}
!283 = distinct !{!283, !284, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %self"}
!284 = distinct !{!284, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE"}
!285 = !{!286}
!286 = distinct !{!286, !284, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %other"}
!287 = !{!283, !278, !273, !268}
!288 = !{!286, !281, !276, !271}
!289 = !{!290, !292, !293, !295}
!290 = distinct !{!290, !291, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E: %left.0"}
!291 = distinct !{!291, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E"}
!292 = distinct !{!292, !291, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E: %right.0"}
!293 = distinct !{!293, !294, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E: %left.0"}
!294 = distinct !{!294, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E"}
!295 = distinct !{!295, !294, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E: %right.0"}
!296 = !{!283, !286, !278, !281, !273, !276, !268, !271}
!297 = !{!298}
!298 = distinct !{!298, !299, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 0"}
!299 = distinct !{!299, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E"}
!300 = !{!301}
!301 = distinct !{!301, !299, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 1"}
!302 = !{!303}
!303 = distinct !{!303, !304, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %self"}
!304 = distinct !{!304, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E"}
!305 = !{!306}
!306 = distinct !{!306, !304, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %other"}
!307 = !{!308}
!308 = distinct !{!308, !309, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %self"}
!309 = distinct !{!309, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE"}
!310 = !{!311}
!311 = distinct !{!311, !309, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %other"}
!312 = !{!313}
!313 = distinct !{!313, !314, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %self"}
!314 = distinct !{!314, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE"}
!315 = !{!316}
!316 = distinct !{!316, !314, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %other"}
!317 = !{!313, !308, !303, !298}
!318 = !{!316, !311, !306, !301}
!319 = !{!320, !322, !323, !325}
!320 = distinct !{!320, !321, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E: %left.0"}
!321 = distinct !{!321, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E"}
!322 = distinct !{!322, !321, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E: %right.0"}
!323 = distinct !{!323, !324, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E: %left.0"}
!324 = distinct !{!324, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E"}
!325 = distinct !{!325, !324, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E: %right.0"}
!326 = !{!313, !316, !308, !311, !303, !306, !298, !301}
!327 = !{!328}
!328 = distinct !{!328, !329, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 0"}
!329 = distinct !{!329, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E"}
!330 = !{!331}
!331 = distinct !{!331, !329, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 1"}
!332 = !{!333}
!333 = distinct !{!333, !334, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %self"}
!334 = distinct !{!334, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E"}
!335 = !{!336}
!336 = distinct !{!336, !334, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %other"}
!337 = !{!338}
!338 = distinct !{!338, !339, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %self"}
!339 = distinct !{!339, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE"}
!340 = !{!341}
!341 = distinct !{!341, !339, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %other"}
!342 = !{!343}
!343 = distinct !{!343, !344, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %self"}
!344 = distinct !{!344, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE"}
!345 = !{!346}
!346 = distinct !{!346, !344, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %other"}
!347 = !{!343, !338, !333, !328}
!348 = !{!346, !341, !336, !331}
!349 = !{!350, !352, !353, !355}
!350 = distinct !{!350, !351, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E: %left.0"}
!351 = distinct !{!351, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E"}
!352 = distinct !{!352, !351, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E: %right.0"}
!353 = distinct !{!353, !354, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E: %left.0"}
!354 = distinct !{!354, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E"}
!355 = distinct !{!355, !354, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E: %right.0"}
!356 = !{!343, !346, !338, !341, !333, !336, !328, !331}
!357 = !{!358}
!358 = distinct !{!358, !359, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 0"}
!359 = distinct !{!359, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E"}
!360 = !{!361}
!361 = distinct !{!361, !359, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 1"}
!362 = !{!363}
!363 = distinct !{!363, !364, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %self"}
!364 = distinct !{!364, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E"}
!365 = !{!366}
!366 = distinct !{!366, !364, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %other"}
!367 = !{!368}
!368 = distinct !{!368, !369, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %self"}
!369 = distinct !{!369, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE"}
!370 = !{!371}
!371 = distinct !{!371, !369, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %other"}
!372 = !{!373}
!373 = distinct !{!373, !374, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %self"}
!374 = distinct !{!374, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE"}
!375 = !{!376}
!376 = distinct !{!376, !374, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %other"}
!377 = !{!373, !368, !363, !358}
!378 = !{!376, !371, !366, !361}
!379 = !{!380, !382, !383, !385}
!380 = distinct !{!380, !381, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E: %left.0"}
!381 = distinct !{!381, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E"}
!382 = distinct !{!382, !381, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E: %right.0"}
!383 = distinct !{!383, !384, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E: %left.0"}
!384 = distinct !{!384, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E"}
!385 = distinct !{!385, !384, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E: %right.0"}
!386 = !{!373, !376, !368, !371, !363, !366, !358, !361}
!387 = !{!388}
!388 = distinct !{!388, !389, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a"}
!389 = distinct !{!389, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E"}
!390 = !{!391}
!391 = distinct !{!391, !389, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b"}
!392 = !{!393}
!393 = distinct !{!393, !394, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0"}
!394 = distinct !{!394, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E"}
!395 = !{!396}
!396 = distinct !{!396, !394, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1"}
!397 = !{!398}
!398 = distinct !{!398, !399, !"cmpfunc: %a"}
!399 = distinct !{!399, !"cmpfunc"}
!400 = !{!401}
!401 = distinct !{!401, !399, !"cmpfunc: %b"}
!402 = !{!403}
!403 = distinct !{!403, !404, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!404 = distinct !{!404, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!405 = !{!406}
!406 = distinct !{!406, !404, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!407 = !{!403, !398, !393, !388}
!408 = !{!406, !401, !396, !391}
!409 = !{!410}
!410 = distinct !{!410, !411, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a"}
!411 = distinct !{!411, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E"}
!412 = !{!413}
!413 = distinct !{!413, !411, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b"}
!414 = !{!415}
!415 = distinct !{!415, !416, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0"}
!416 = distinct !{!416, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E"}
!417 = !{!418}
!418 = distinct !{!418, !416, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1"}
!419 = !{!420}
!420 = distinct !{!420, !421, !"cmpfunc: %a"}
!421 = distinct !{!421, !"cmpfunc"}
!422 = !{!423}
!423 = distinct !{!423, !421, !"cmpfunc: %b"}
!424 = !{!425}
!425 = distinct !{!425, !426, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!426 = distinct !{!426, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!427 = !{!428}
!428 = distinct !{!428, !426, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!429 = !{!425, !420, !415, !410}
!430 = !{!428, !423, !418, !413}
!431 = !{!432}
!432 = distinct !{!432, !433, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a"}
!433 = distinct !{!433, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E"}
!434 = !{!435}
!435 = distinct !{!435, !433, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b"}
!436 = !{!437}
!437 = distinct !{!437, !438, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0"}
!438 = distinct !{!438, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E"}
!439 = !{!440}
!440 = distinct !{!440, !438, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1"}
!441 = !{!442}
!442 = distinct !{!442, !443, !"cmpfunc: %a"}
!443 = distinct !{!443, !"cmpfunc"}
!444 = !{!445}
!445 = distinct !{!445, !443, !"cmpfunc: %b"}
!446 = !{!447}
!447 = distinct !{!447, !448, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!448 = distinct !{!448, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!449 = !{!450}
!450 = distinct !{!450, !448, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!451 = !{!447, !442, !437, !432}
!452 = !{!450, !445, !440, !435}
!453 = !{!454}
!454 = distinct !{!454, !455, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a"}
!455 = distinct !{!455, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E"}
!456 = !{!457}
!457 = distinct !{!457, !455, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b"}
!458 = !{!459}
!459 = distinct !{!459, !460, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0"}
!460 = distinct !{!460, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E"}
!461 = !{!462}
!462 = distinct !{!462, !460, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1"}
!463 = !{!464}
!464 = distinct !{!464, !465, !"cmpfunc: %a"}
!465 = distinct !{!465, !"cmpfunc"}
!466 = !{!467}
!467 = distinct !{!467, !465, !"cmpfunc: %b"}
!468 = !{!469}
!469 = distinct !{!469, !470, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!470 = distinct !{!470, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!471 = !{!472}
!472 = distinct !{!472, !470, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!473 = !{!469, !464, !459, !454}
!474 = !{!472, !467, !462, !457}
!475 = !{!476}
!476 = distinct !{!476, !477, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a"}
!477 = distinct !{!477, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E"}
!478 = !{!479}
!479 = distinct !{!479, !477, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b"}
!480 = !{!481}
!481 = distinct !{!481, !482, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0"}
!482 = distinct !{!482, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E"}
!483 = !{!484}
!484 = distinct !{!484, !482, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1"}
!485 = !{!486}
!486 = distinct !{!486, !487, !"cmpfunc: %a"}
!487 = distinct !{!487, !"cmpfunc"}
!488 = !{!489}
!489 = distinct !{!489, !487, !"cmpfunc: %b"}
!490 = !{!491}
!491 = distinct !{!491, !492, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!492 = distinct !{!492, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!493 = !{!494}
!494 = distinct !{!494, !492, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!495 = !{!491, !486, !481, !476}
!496 = !{!494, !489, !484, !479}
!497 = !{!498}
!498 = distinct !{!498, !499, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a"}
!499 = distinct !{!499, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E"}
!500 = !{!501}
!501 = distinct !{!501, !499, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b"}
!502 = !{!503}
!503 = distinct !{!503, !504, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0"}
!504 = distinct !{!504, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E"}
!505 = !{!506}
!506 = distinct !{!506, !504, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1"}
!507 = !{!508}
!508 = distinct !{!508, !509, !"cmpfunc: %a"}
!509 = distinct !{!509, !"cmpfunc"}
!510 = !{!511}
!511 = distinct !{!511, !509, !"cmpfunc: %b"}
!512 = !{!513}
!513 = distinct !{!513, !514, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!514 = distinct !{!514, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!515 = !{!516}
!516 = distinct !{!516, !514, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!517 = !{!513, !508, !503, !498}
!518 = !{!516, !511, !506, !501}
!519 = !{!520}
!520 = distinct !{!520, !521, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a"}
!521 = distinct !{!521, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E"}
!522 = !{!523}
!523 = distinct !{!523, !521, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b"}
!524 = !{!525}
!525 = distinct !{!525, !526, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0"}
!526 = distinct !{!526, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E"}
!527 = !{!528}
!528 = distinct !{!528, !526, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1"}
!529 = !{!530}
!530 = distinct !{!530, !531, !"cmpfunc: %a"}
!531 = distinct !{!531, !"cmpfunc"}
!532 = !{!533}
!533 = distinct !{!533, !531, !"cmpfunc: %b"}
!534 = !{!535}
!535 = distinct !{!535, !536, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!536 = distinct !{!536, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!537 = !{!538}
!538 = distinct !{!538, !536, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!539 = !{!535, !530, !525, !520}
!540 = !{!538, !533, !528, !523}
!541 = !{!542}
!542 = distinct !{!542, !543, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a"}
!543 = distinct !{!543, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E"}
!544 = !{!545}
!545 = distinct !{!545, !543, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b"}
!546 = !{!547}
!547 = distinct !{!547, !548, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0"}
!548 = distinct !{!548, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E"}
!549 = !{!550}
!550 = distinct !{!550, !548, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1"}
!551 = !{!552}
!552 = distinct !{!552, !553, !"cmpfunc: %a"}
!553 = distinct !{!553, !"cmpfunc"}
!554 = !{!555}
!555 = distinct !{!555, !553, !"cmpfunc: %b"}
!556 = !{!557}
!557 = distinct !{!557, !558, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!558 = distinct !{!558, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!559 = !{!560}
!560 = distinct !{!560, !558, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!561 = !{!557, !552, !547, !542}
!562 = !{!560, !555, !550, !545}
!563 = !{!564}
!564 = distinct !{!564, !565, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a"}
!565 = distinct !{!565, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E"}
!566 = !{!567}
!567 = distinct !{!567, !565, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b"}
!568 = !{!569}
!569 = distinct !{!569, !570, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0"}
!570 = distinct !{!570, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E"}
!571 = !{!572}
!572 = distinct !{!572, !570, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1"}
!573 = !{!574}
!574 = distinct !{!574, !575, !"cmpfunc: %a"}
!575 = distinct !{!575, !"cmpfunc"}
!576 = !{!577}
!577 = distinct !{!577, !575, !"cmpfunc: %b"}
!578 = !{!579}
!579 = distinct !{!579, !580, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!580 = distinct !{!580, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!581 = !{!582}
!582 = distinct !{!582, !580, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!583 = !{!579, !574, !569, !564}
!584 = !{!582, !577, !572, !567}
!585 = !{!586}
!586 = distinct !{!586, !587, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a"}
!587 = distinct !{!587, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E"}
!588 = !{!589}
!589 = distinct !{!589, !587, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b"}
!590 = !{!591}
!591 = distinct !{!591, !592, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0"}
!592 = distinct !{!592, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E"}
!593 = !{!594}
!594 = distinct !{!594, !592, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1"}
!595 = !{!596}
!596 = distinct !{!596, !597, !"cmpfunc: %a"}
!597 = distinct !{!597, !"cmpfunc"}
!598 = !{!599}
!599 = distinct !{!599, !597, !"cmpfunc: %b"}
!600 = !{!601}
!601 = distinct !{!601, !602, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!602 = distinct !{!602, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!603 = !{!604}
!604 = distinct !{!604, !602, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!605 = !{!601, !596, !591, !586}
!606 = !{!604, !599, !594, !589}
!607 = !{!608}
!608 = distinct !{!608, !609, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a"}
!609 = distinct !{!609, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E"}
!610 = !{!611}
!611 = distinct !{!611, !609, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b"}
!612 = !{!613}
!613 = distinct !{!613, !614, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0"}
!614 = distinct !{!614, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E"}
!615 = !{!616}
!616 = distinct !{!616, !614, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1"}
!617 = !{!618}
!618 = distinct !{!618, !619, !"cmpfunc: %a"}
!619 = distinct !{!619, !"cmpfunc"}
!620 = !{!621}
!621 = distinct !{!621, !619, !"cmpfunc: %b"}
!622 = !{!623}
!623 = distinct !{!623, !624, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!624 = distinct !{!624, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!625 = !{!626}
!626 = distinct !{!626, !624, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!627 = !{!623, !618, !613, !608}
!628 = !{!626, !621, !616, !611}
!629 = !{!630}
!630 = distinct !{!630, !631, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a"}
!631 = distinct !{!631, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E"}
!632 = !{!633}
!633 = distinct !{!633, !631, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b"}
!634 = !{!635}
!635 = distinct !{!635, !636, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0"}
!636 = distinct !{!636, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E"}
!637 = !{!638}
!638 = distinct !{!638, !636, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1"}
!639 = !{!640}
!640 = distinct !{!640, !641, !"cmpfunc: %a"}
!641 = distinct !{!641, !"cmpfunc"}
!642 = !{!643}
!643 = distinct !{!643, !641, !"cmpfunc: %b"}
!644 = !{!645}
!645 = distinct !{!645, !646, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!646 = distinct !{!646, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!647 = !{!648}
!648 = distinct !{!648, !646, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!649 = !{!645, !640, !635, !630}
!650 = !{!648, !643, !638, !633}
!651 = !{!652}
!652 = distinct !{!652, !653, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a"}
!653 = distinct !{!653, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E"}
!654 = !{!655}
!655 = distinct !{!655, !653, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b"}
!656 = !{!657}
!657 = distinct !{!657, !658, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0"}
!658 = distinct !{!658, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E"}
!659 = !{!660}
!660 = distinct !{!660, !658, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1"}
!661 = !{!662}
!662 = distinct !{!662, !663, !"cmpfunc: %a"}
!663 = distinct !{!663, !"cmpfunc"}
!664 = !{!665}
!665 = distinct !{!665, !663, !"cmpfunc: %b"}
!666 = !{!667}
!667 = distinct !{!667, !668, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!668 = distinct !{!668, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!669 = !{!670}
!670 = distinct !{!670, !668, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!671 = !{!667, !662, !657, !652}
!672 = !{!670, !665, !660, !655}
!673 = !{!674}
!674 = distinct !{!674, !675, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a"}
!675 = distinct !{!675, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E"}
!676 = !{!677}
!677 = distinct !{!677, !675, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b"}
!678 = !{!679}
!679 = distinct !{!679, !680, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0"}
!680 = distinct !{!680, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E"}
!681 = !{!682}
!682 = distinct !{!682, !680, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1"}
!683 = !{!684}
!684 = distinct !{!684, !685, !"cmpfunc: %a"}
!685 = distinct !{!685, !"cmpfunc"}
!686 = !{!687}
!687 = distinct !{!687, !685, !"cmpfunc: %b"}
!688 = !{!689}
!689 = distinct !{!689, !690, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!690 = distinct !{!690, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!691 = !{!692}
!692 = distinct !{!692, !690, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!693 = !{!689, !684, !679, !674}
!694 = !{!692, !687, !682, !677}
!695 = !{!696}
!696 = distinct !{!696, !697, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a"}
!697 = distinct !{!697, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E"}
!698 = !{!699}
!699 = distinct !{!699, !697, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b"}
!700 = !{!701}
!701 = distinct !{!701, !702, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0"}
!702 = distinct !{!702, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E"}
!703 = !{!704}
!704 = distinct !{!704, !702, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1"}
!705 = !{!706}
!706 = distinct !{!706, !707, !"cmpfunc: %a"}
!707 = distinct !{!707, !"cmpfunc"}
!708 = !{!709}
!709 = distinct !{!709, !707, !"cmpfunc: %b"}
!710 = !{!711}
!711 = distinct !{!711, !712, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!712 = distinct !{!712, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!713 = !{!714}
!714 = distinct !{!714, !712, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!715 = !{!711, !706, !701, !696}
!716 = !{!714, !709, !704, !699}
!717 = !{!718}
!718 = distinct !{!718, !719, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17he3b0c15c05973dbcE: %v.0"}
!719 = distinct !{!719, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17he3b0c15c05973dbcE"}
!720 = !{!721}
!721 = distinct !{!721, !722, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a"}
!722 = distinct !{!722, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E"}
!723 = !{!724}
!724 = distinct !{!724, !722, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b"}
!725 = !{!726}
!726 = distinct !{!726, !727, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0"}
!727 = distinct !{!727, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E"}
!728 = !{!729}
!729 = distinct !{!729, !730, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h87af30d5ea6004d6E: %_0"}
!730 = distinct !{!730, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h87af30d5ea6004d6E"}
!731 = !{!732}
!732 = distinct !{!732, !727, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1"}
!733 = !{!734}
!734 = distinct !{!734, !735, !"cmpfunc: %a"}
!735 = distinct !{!735, !"cmpfunc"}
!736 = !{!737}
!737 = distinct !{!737, !735, !"cmpfunc: %b"}
!738 = !{!739}
!739 = distinct !{!739, !740, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!740 = distinct !{!740, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!741 = !{!742}
!742 = distinct !{!742, !740, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!743 = !{!739, !734, !726, !721, !718}
!744 = !{!742, !737, !732, !724, !729}
!745 = !{!742, !737, !732, !724, !718}
!746 = !{!739, !734, !726, !721, !729}
!747 = !{!729, !748, !718}
!748 = distinct !{!748, !730, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h87af30d5ea6004d6E: %is_less"}
!749 = !{!750}
!750 = distinct !{!750, !751, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a"}
!751 = distinct !{!751, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E"}
!752 = !{!753}
!753 = distinct !{!753, !751, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b"}
!754 = !{!755}
!755 = distinct !{!755, !756, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0"}
!756 = distinct !{!756, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E"}
!757 = !{!758}
!758 = distinct !{!758, !759, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h6903fe85dc3b9733E: %_0"}
!759 = distinct !{!759, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h6903fe85dc3b9733E"}
!760 = !{!761}
!761 = distinct !{!761, !756, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1"}
!762 = !{!763}
!763 = distinct !{!763, !764, !"cmpfunc: %a"}
!764 = distinct !{!764, !"cmpfunc"}
!765 = !{!766}
!766 = distinct !{!766, !764, !"cmpfunc: %b"}
!767 = !{!768}
!768 = distinct !{!768, !769, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!769 = distinct !{!769, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!770 = !{!771}
!771 = distinct !{!771, !769, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!772 = !{!768, !763, !755, !750, !718}
!773 = !{!771, !766, !761, !753, !758}
!774 = !{!771, !766, !761, !753, !718}
!775 = !{!768, !763, !755, !750, !758}
!776 = !{!758, !777, !718}
!777 = distinct !{!777, !759, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h6903fe85dc3b9733E: %is_less"}
!778 = !{!779}
!779 = distinct !{!779, !722, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a:It1"}
!780 = !{!781}
!781 = distinct !{!781, !722, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b:It1"}
!782 = !{!783}
!783 = distinct !{!783, !727, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0:It1"}
!784 = !{!785}
!785 = distinct !{!785, !727, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1:It1"}
!786 = !{!787}
!787 = distinct !{!787, !735, !"cmpfunc: %a:It1"}
!788 = !{!789}
!789 = distinct !{!789, !735, !"cmpfunc: %b:It1"}
!790 = !{!791}
!791 = distinct !{!791, !740, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It1"}
!792 = !{!793}
!793 = distinct !{!793, !740, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It1"}
!794 = !{!791, !787, !783, !779, !718}
!795 = !{!793, !789, !785, !781, !729}
!796 = !{!793, !789, !785, !781, !718}
!797 = !{!791, !787, !783, !779, !729}
!798 = !{!799}
!799 = distinct !{!799, !751, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a:It1"}
!800 = !{!801}
!801 = distinct !{!801, !751, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b:It1"}
!802 = !{!803}
!803 = distinct !{!803, !756, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0:It1"}
!804 = !{!805}
!805 = distinct !{!805, !756, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1:It1"}
!806 = !{!807}
!807 = distinct !{!807, !764, !"cmpfunc: %a:It1"}
!808 = !{!809}
!809 = distinct !{!809, !764, !"cmpfunc: %b:It1"}
!810 = !{!811}
!811 = distinct !{!811, !769, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It1"}
!812 = !{!813}
!813 = distinct !{!813, !769, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It1"}
!814 = !{!811, !807, !803, !799, !718}
!815 = !{!813, !809, !805, !801, !758}
!816 = !{!813, !809, !805, !801, !718}
!817 = !{!811, !807, !803, !799, !758}
!818 = !{!819}
!819 = distinct !{!819, !722, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a:It2"}
!820 = !{!821}
!821 = distinct !{!821, !722, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b:It2"}
!822 = !{!823}
!823 = distinct !{!823, !727, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0:It2"}
!824 = !{!825}
!825 = distinct !{!825, !727, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1:It2"}
!826 = !{!827}
!827 = distinct !{!827, !735, !"cmpfunc: %a:It2"}
!828 = !{!829}
!829 = distinct !{!829, !735, !"cmpfunc: %b:It2"}
!830 = !{!831}
!831 = distinct !{!831, !740, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It2"}
!832 = !{!833}
!833 = distinct !{!833, !740, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It2"}
!834 = !{!831, !827, !823, !819, !718}
!835 = !{!833, !829, !825, !821, !729}
!836 = !{!833, !829, !825, !821, !718}
!837 = !{!831, !827, !823, !819, !729}
!838 = !{!839}
!839 = distinct !{!839, !751, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a:It2"}
!840 = !{!841}
!841 = distinct !{!841, !751, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b:It2"}
!842 = !{!843}
!843 = distinct !{!843, !756, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0:It2"}
!844 = !{!845}
!845 = distinct !{!845, !756, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1:It2"}
!846 = !{!847}
!847 = distinct !{!847, !764, !"cmpfunc: %a:It2"}
!848 = !{!849}
!849 = distinct !{!849, !764, !"cmpfunc: %b:It2"}
!850 = !{!851}
!851 = distinct !{!851, !769, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It2"}
!852 = !{!853}
!853 = distinct !{!853, !769, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It2"}
!854 = !{!851, !847, !843, !839, !718}
!855 = !{!853, !849, !845, !841, !758}
!856 = !{!853, !849, !845, !841, !718}
!857 = !{!851, !847, !843, !839, !758}
!858 = !{!859}
!859 = distinct !{!859, !722, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a:It3"}
!860 = !{!861}
!861 = distinct !{!861, !722, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b:It3"}
!862 = !{!863}
!863 = distinct !{!863, !727, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0:It3"}
!864 = !{!865}
!865 = distinct !{!865, !727, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1:It3"}
!866 = !{!867}
!867 = distinct !{!867, !735, !"cmpfunc: %a:It3"}
!868 = !{!869}
!869 = distinct !{!869, !735, !"cmpfunc: %b:It3"}
!870 = !{!871}
!871 = distinct !{!871, !740, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It3"}
!872 = !{!873}
!873 = distinct !{!873, !740, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It3"}
!874 = !{!871, !867, !863, !859, !718}
!875 = !{!873, !869, !865, !861, !729}
!876 = !{!873, !869, !865, !861, !718}
!877 = !{!871, !867, !863, !859, !729}
!878 = !{!879}
!879 = distinct !{!879, !751, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a:It3"}
!880 = !{!881}
!881 = distinct !{!881, !751, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b:It3"}
!882 = !{!883}
!883 = distinct !{!883, !756, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0:It3"}
!884 = !{!885}
!885 = distinct !{!885, !756, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1:It3"}
!886 = !{!887}
!887 = distinct !{!887, !764, !"cmpfunc: %a:It3"}
!888 = !{!889}
!889 = distinct !{!889, !764, !"cmpfunc: %b:It3"}
!890 = !{!891}
!891 = distinct !{!891, !769, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It3"}
!892 = !{!893}
!893 = distinct !{!893, !769, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It3"}
!894 = !{!891, !887, !883, !879, !718}
!895 = !{!893, !889, !885, !881, !758}
!896 = !{!893, !889, !885, !881, !718}
!897 = !{!891, !887, !883, !879, !758}
!898 = !{!"branch_weights", i32 4001, i32 4000000}
!899 = !{!900}
!900 = distinct !{!900, !901, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 0"}
!901 = distinct !{!901, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E"}
!902 = !{!903}
!903 = distinct !{!903, !901, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 1"}
!904 = !{!905}
!905 = distinct !{!905, !906, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %self"}
!906 = distinct !{!906, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E"}
!907 = !{!908}
!908 = distinct !{!908, !909, !"_ZN4core5slice4sort6shared9smallsort8merge_up17ha9364d7f7b5f3a27E: %_0"}
!909 = distinct !{!909, !"_ZN4core5slice4sort6shared9smallsort8merge_up17ha9364d7f7b5f3a27E"}
!910 = !{!911}
!911 = distinct !{!911, !906, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %other"}
!912 = !{!913}
!913 = distinct !{!913, !914, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %self"}
!914 = distinct !{!914, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE"}
!915 = !{!916}
!916 = distinct !{!916, !914, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %other"}
!917 = !{!918}
!918 = distinct !{!918, !919, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %self"}
!919 = distinct !{!919, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE"}
!920 = !{!921}
!921 = distinct !{!921, !919, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %other"}
!922 = !{!918, !913, !905, !900}
!923 = !{!921, !916, !911, !903, !908}
!924 = !{!921, !916, !911, !903}
!925 = !{!918, !913, !905, !900, !908}
!926 = !{!927, !929, !930, !932}
!927 = distinct !{!927, !928, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E: %left.0"}
!928 = distinct !{!928, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E"}
!929 = distinct !{!929, !928, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E: %right.0"}
!930 = distinct !{!930, !931, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E: %left.0"}
!931 = distinct !{!931, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E"}
!932 = distinct !{!932, !931, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E: %right.0"}
!933 = !{!918, !921, !913, !916, !905, !911, !900, !903, !908}
!934 = !{!908, !935}
!935 = distinct !{!935, !909, !"_ZN4core5slice4sort6shared9smallsort8merge_up17ha9364d7f7b5f3a27E: %is_less"}
!936 = !{!937}
!937 = distinct !{!937, !938, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 0"}
!938 = distinct !{!938, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E"}
!939 = !{!940}
!940 = distinct !{!940, !938, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 1"}
!941 = !{!942}
!942 = distinct !{!942, !943, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %self"}
!943 = distinct !{!943, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E"}
!944 = !{!945}
!945 = distinct !{!945, !946, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h2cd5a12547d0c741E: %_0"}
!946 = distinct !{!946, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h2cd5a12547d0c741E"}
!947 = !{!948}
!948 = distinct !{!948, !943, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %other"}
!949 = !{!950}
!950 = distinct !{!950, !951, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %self"}
!951 = distinct !{!951, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE"}
!952 = !{!953}
!953 = distinct !{!953, !951, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %other"}
!954 = !{!955}
!955 = distinct !{!955, !956, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %self"}
!956 = distinct !{!956, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE"}
!957 = !{!958}
!958 = distinct !{!958, !956, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %other"}
!959 = !{!955, !950, !942, !937}
!960 = !{!958, !953, !948, !940, !945}
!961 = !{!958, !953, !948, !940}
!962 = !{!955, !950, !942, !937, !945}
!963 = !{!964, !966, !967, !969}
!964 = distinct !{!964, !965, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E: %left.0"}
!965 = distinct !{!965, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E"}
!966 = distinct !{!966, !965, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E: %right.0"}
!967 = distinct !{!967, !968, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E: %left.0"}
!968 = distinct !{!968, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E"}
!969 = distinct !{!969, !968, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E: %right.0"}
!970 = !{!955, !958, !950, !953, !942, !948, !937, !940, !945}
!971 = !{!945, !972}
!972 = distinct !{!972, !946, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h2cd5a12547d0c741E: %is_less"}
!973 = !{!974}
!974 = distinct !{!974, !975, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a"}
!975 = distinct !{!975, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E"}
!976 = !{!977}
!977 = distinct !{!977, !975, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b"}
!978 = !{!979}
!979 = distinct !{!979, !980, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0"}
!980 = distinct !{!980, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E"}
!981 = !{!982}
!982 = distinct !{!982, !983, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h87af30d5ea6004d6E: %_0"}
!983 = distinct !{!983, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h87af30d5ea6004d6E"}
!984 = !{!985}
!985 = distinct !{!985, !980, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1"}
!986 = !{!987}
!987 = distinct !{!987, !988, !"cmpfunc: %a"}
!988 = distinct !{!988, !"cmpfunc"}
!989 = !{!990}
!990 = distinct !{!990, !988, !"cmpfunc: %b"}
!991 = !{!992}
!992 = distinct !{!992, !993, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!993 = distinct !{!993, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!994 = !{!995}
!995 = distinct !{!995, !993, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!996 = !{!992, !987, !979, !974}
!997 = !{!995, !990, !985, !977, !982}
!998 = !{!995, !990, !985, !977}
!999 = !{!992, !987, !979, !974, !982}
!1000 = !{!982, !1001}
!1001 = distinct !{!1001, !983, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h87af30d5ea6004d6E: %is_less"}
!1002 = !{!1003}
!1003 = distinct !{!1003, !1004, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a"}
!1004 = distinct !{!1004, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E"}
!1005 = !{!1006}
!1006 = distinct !{!1006, !1004, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b"}
!1007 = !{!1008}
!1008 = distinct !{!1008, !1009, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0"}
!1009 = distinct !{!1009, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E"}
!1010 = !{!1011}
!1011 = distinct !{!1011, !1012, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h6903fe85dc3b9733E: %_0"}
!1012 = distinct !{!1012, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h6903fe85dc3b9733E"}
!1013 = !{!1014}
!1014 = distinct !{!1014, !1009, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1"}
!1015 = !{!1016}
!1016 = distinct !{!1016, !1017, !"cmpfunc: %a"}
!1017 = distinct !{!1017, !"cmpfunc"}
!1018 = !{!1019}
!1019 = distinct !{!1019, !1017, !"cmpfunc: %b"}
!1020 = !{!1021}
!1021 = distinct !{!1021, !1022, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1022 = distinct !{!1022, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1023 = !{!1024}
!1024 = distinct !{!1024, !1022, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1025 = !{!1021, !1016, !1008, !1003}
!1026 = !{!1024, !1019, !1014, !1006, !1011}
!1027 = !{!1024, !1019, !1014, !1006}
!1028 = !{!1021, !1016, !1008, !1003, !1011}
!1029 = !{!1011, !1030}
!1030 = distinct !{!1030, !1012, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h6903fe85dc3b9733E: %is_less"}
!1031 = !{!1032}
!1032 = distinct !{!1032, !1033, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a"}
!1033 = distinct !{!1033, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E"}
!1034 = !{!1035}
!1035 = distinct !{!1035, !1033, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b"}
!1036 = !{!1037}
!1037 = distinct !{!1037, !1038, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0"}
!1038 = distinct !{!1038, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E"}
!1039 = !{!1040}
!1040 = distinct !{!1040, !1038, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1"}
!1041 = !{!1042}
!1042 = distinct !{!1042, !1043, !"cmpfunc: %a"}
!1043 = distinct !{!1043, !"cmpfunc"}
!1044 = !{!1045}
!1045 = distinct !{!1045, !1043, !"cmpfunc: %b"}
!1046 = !{!1047}
!1047 = distinct !{!1047, !1048, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1048 = distinct !{!1048, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1049 = !{!1050}
!1050 = distinct !{!1050, !1048, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1051 = !{!1047, !1042, !1037, !1032}
!1052 = !{!1050, !1045, !1040, !1035}
!1053 = !{!1054, !1056, !1058, !1060}
!1054 = distinct !{!1054, !1055, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1055 = distinct !{!1055, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1056 = distinct !{!1056, !1057, !"cmpfunc: %b"}
!1057 = distinct !{!1057, !"cmpfunc"}
!1058 = distinct !{!1058, !1059, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1"}
!1059 = distinct !{!1059, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E"}
!1060 = distinct !{!1060, !1061, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b"}
!1061 = distinct !{!1061, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E"}
!1062 = !{!1063, !1064, !1065, !1066}
!1063 = distinct !{!1063, !1055, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1064 = distinct !{!1064, !1057, !"cmpfunc: %a"}
!1065 = distinct !{!1065, !1059, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0"}
!1066 = distinct !{!1066, !1061, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a"}
!1067 = !{!1068, !1070}
!1068 = distinct !{!1068, !1069, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha803dd85e90fe87bE: %self"}
!1069 = distinct !{!1069, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha803dd85e90fe87bE"}
!1070 = distinct !{!1070, !1071, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h58f80c573f02939aE: %_1"}
!1071 = distinct !{!1071, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h58f80c573f02939aE"}
!1072 = !{!1073}
!1073 = distinct !{!1073, !1074, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 0"}
!1074 = distinct !{!1074, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E"}
!1075 = !{!1076}
!1076 = distinct !{!1076, !1074, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 1"}
!1077 = !{!1078}
!1078 = distinct !{!1078, !1079, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %self"}
!1079 = distinct !{!1079, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E"}
!1080 = !{!1081}
!1081 = distinct !{!1081, !1079, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %other"}
!1082 = !{!1083}
!1083 = distinct !{!1083, !1084, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %self"}
!1084 = distinct !{!1084, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE"}
!1085 = !{!1086}
!1086 = distinct !{!1086, !1084, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %other"}
!1087 = !{!1088}
!1088 = distinct !{!1088, !1089, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %self"}
!1089 = distinct !{!1089, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE"}
!1090 = !{!1091}
!1091 = distinct !{!1091, !1089, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %other"}
!1092 = !{!1088, !1083, !1078, !1073}
!1093 = !{!1091, !1086, !1081, !1076}
!1094 = !{!1095, !1097, !1098, !1100}
!1095 = distinct !{!1095, !1096, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E: %left.0"}
!1096 = distinct !{!1096, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E"}
!1097 = distinct !{!1097, !1096, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E: %right.0"}
!1098 = distinct !{!1098, !1099, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E: %left.0"}
!1099 = distinct !{!1099, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E"}
!1100 = distinct !{!1100, !1099, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E: %right.0"}
!1101 = !{!1088, !1091, !1083, !1086, !1078, !1081, !1073, !1076}
!1102 = !{!1103}
!1103 = distinct !{!1103, !1104, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 1"}
!1104 = distinct !{!1104, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E"}
!1105 = !{!1106}
!1106 = distinct !{!1106, !1107, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %other"}
!1107 = distinct !{!1107, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E"}
!1108 = !{!1109}
!1109 = distinct !{!1109, !1110, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %other"}
!1110 = distinct !{!1110, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE"}
!1111 = !{!1112}
!1112 = distinct !{!1112, !1113, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %other"}
!1113 = distinct !{!1113, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE"}
!1114 = !{!1112, !1109, !1106, !1103}
!1115 = !{!1116, !1117, !1118, !1119}
!1116 = distinct !{!1116, !1113, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %self"}
!1117 = distinct !{!1117, !1110, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %self"}
!1118 = distinct !{!1118, !1107, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %self"}
!1119 = distinct !{!1119, !1104, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 0"}
!1120 = !{!1121, !1123, !1124, !1126}
!1121 = distinct !{!1121, !1122, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E: %left.0"}
!1122 = distinct !{!1122, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E"}
!1123 = distinct !{!1123, !1122, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E: %right.0"}
!1124 = distinct !{!1124, !1125, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E: %left.0"}
!1125 = distinct !{!1125, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E"}
!1126 = distinct !{!1126, !1125, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E: %right.0"}
!1127 = !{!1116, !1112, !1117, !1109, !1118, !1106, !1119, !1103}
!1128 = !{!1129, !1131}
!1129 = distinct !{!1129, !1130, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h905e47fd61ee7147E: %self"}
!1130 = distinct !{!1130, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h905e47fd61ee7147E"}
!1131 = distinct !{!1131, !1132, !"_ZN4core3ptr98drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$alloc..string..String$GT$$GT$17h17c5101470b5ac6eE: %_1"}
!1132 = distinct !{!1132, !"_ZN4core3ptr98drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$alloc..string..String$GT$$GT$17h17c5101470b5ac6eE"}
!1133 = !{!1134}
!1134 = distinct !{!1134, !1135, !"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17hb49c9d1ba10adf46E: %self.0"}
!1135 = distinct !{!1135, !"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17hb49c9d1ba10adf46E"}
!1136 = !{!1137, !1139}
!1137 = distinct !{!1137, !1138, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h905e47fd61ee7147E: %self"}
!1138 = distinct !{!1138, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h905e47fd61ee7147E"}
!1139 = distinct !{!1139, !1140, !"_ZN4core3ptr98drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$alloc..string..String$GT$$GT$17h17c5101470b5ac6eE: %_1"}
!1140 = distinct !{!1140, !"_ZN4core3ptr98drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$alloc..string..String$GT$$GT$17h17c5101470b5ac6eE"}
!1141 = !{!1142}
!1142 = distinct !{!1142, !1143, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 0"}
!1143 = distinct !{!1143, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E"}
!1144 = !{!1145}
!1145 = distinct !{!1145, !1143, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 1"}
!1146 = !{!1147}
!1147 = distinct !{!1147, !1148, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %self"}
!1148 = distinct !{!1148, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E"}
!1149 = !{!1150}
!1150 = distinct !{!1150, !1148, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %other"}
!1151 = !{!1152}
!1152 = distinct !{!1152, !1153, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %self"}
!1153 = distinct !{!1153, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE"}
!1154 = !{!1155}
!1155 = distinct !{!1155, !1153, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %other"}
!1156 = !{!1157}
!1157 = distinct !{!1157, !1158, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %self"}
!1158 = distinct !{!1158, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE"}
!1159 = !{!1160}
!1160 = distinct !{!1160, !1158, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %other"}
!1161 = !{!1157, !1152, !1147, !1142}
!1162 = !{!1160, !1155, !1150, !1145}
!1163 = !{!1164, !1166, !1167, !1169}
!1164 = distinct !{!1164, !1165, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E: %left.0"}
!1165 = distinct !{!1165, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E"}
!1166 = distinct !{!1166, !1165, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E: %right.0"}
!1167 = distinct !{!1167, !1168, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E: %left.0"}
!1168 = distinct !{!1168, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E"}
!1169 = distinct !{!1169, !1168, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E: %right.0"}
!1170 = !{!1157, !1160, !1152, !1155, !1147, !1150, !1142, !1145}
!1171 = !{!1172}
!1172 = distinct !{!1172, !1173, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 1"}
!1173 = distinct !{!1173, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E"}
!1174 = !{!1175}
!1175 = distinct !{!1175, !1176, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %other"}
!1176 = distinct !{!1176, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E"}
!1177 = !{!1178}
!1178 = distinct !{!1178, !1179, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %other"}
!1179 = distinct !{!1179, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE"}
!1180 = !{!1181}
!1181 = distinct !{!1181, !1182, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %other"}
!1182 = distinct !{!1182, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE"}
!1183 = !{!1181, !1178, !1175, !1172}
!1184 = !{!1185, !1186, !1187, !1188}
!1185 = distinct !{!1185, !1182, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %self"}
!1186 = distinct !{!1186, !1179, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %self"}
!1187 = distinct !{!1187, !1176, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %self"}
!1188 = distinct !{!1188, !1173, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 0"}
!1189 = !{!1190, !1192, !1193, !1195}
!1190 = distinct !{!1190, !1191, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E: %left.0"}
!1191 = distinct !{!1191, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E"}
!1192 = distinct !{!1192, !1191, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E: %right.0"}
!1193 = distinct !{!1193, !1194, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E: %left.0"}
!1194 = distinct !{!1194, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E"}
!1195 = distinct !{!1195, !1194, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E: %right.0"}
!1196 = !{!1185, !1181, !1186, !1178, !1187, !1175, !1188, !1172}
!1197 = !{!1198, !1200}
!1198 = distinct !{!1198, !1199, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h905e47fd61ee7147E: %self"}
!1199 = distinct !{!1199, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h905e47fd61ee7147E"}
!1200 = distinct !{!1200, !1201, !"_ZN4core3ptr98drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$alloc..string..String$GT$$GT$17h17c5101470b5ac6eE: %_1"}
!1201 = distinct !{!1201, !"_ZN4core3ptr98drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$alloc..string..String$GT$$GT$17h17c5101470b5ac6eE"}
!1202 = !{!1203}
!1203 = distinct !{!1203, !1204, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a"}
!1204 = distinct !{!1204, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E"}
!1205 = !{!1206}
!1206 = distinct !{!1206, !1204, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b"}
!1207 = !{!1208}
!1208 = distinct !{!1208, !1209, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0"}
!1209 = distinct !{!1209, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E"}
!1210 = !{!1211}
!1211 = distinct !{!1211, !1209, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1"}
!1212 = !{!1213}
!1213 = distinct !{!1213, !1214, !"cmpfunc: %a"}
!1214 = distinct !{!1214, !"cmpfunc"}
!1215 = !{!1216}
!1216 = distinct !{!1216, !1214, !"cmpfunc: %b"}
!1217 = !{!1218}
!1218 = distinct !{!1218, !1219, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1219 = distinct !{!1219, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1220 = !{!1221}
!1221 = distinct !{!1221, !1219, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1222 = !{!1218, !1213, !1208, !1203}
!1223 = !{!1221, !1216, !1211, !1206}
!1224 = !{!1225}
!1225 = distinct !{!1225, !1226, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a"}
!1226 = distinct !{!1226, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E"}
!1227 = !{!1228}
!1228 = distinct !{!1228, !1226, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b"}
!1229 = !{!1230}
!1230 = distinct !{!1230, !1231, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0"}
!1231 = distinct !{!1231, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E"}
!1232 = !{!1233}
!1233 = distinct !{!1233, !1231, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1"}
!1234 = !{!1235}
!1235 = distinct !{!1235, !1236, !"cmpfunc: %a"}
!1236 = distinct !{!1236, !"cmpfunc"}
!1237 = !{!1238}
!1238 = distinct !{!1238, !1236, !"cmpfunc: %b"}
!1239 = !{!1240}
!1240 = distinct !{!1240, !1241, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1241 = distinct !{!1241, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1242 = !{!1243}
!1243 = distinct !{!1243, !1241, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1244 = !{!1240, !1235, !1230, !1225}
!1245 = !{!1243, !1238, !1233, !1228}
!1246 = !{!1247}
!1247 = distinct !{!1247, !1248, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a"}
!1248 = distinct !{!1248, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E"}
!1249 = !{!1250}
!1250 = distinct !{!1250, !1248, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b"}
!1251 = !{!1252}
!1252 = distinct !{!1252, !1253, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0"}
!1253 = distinct !{!1253, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E"}
!1254 = !{!1255}
!1255 = distinct !{!1255, !1253, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1"}
!1256 = !{!1257}
!1257 = distinct !{!1257, !1258, !"cmpfunc: %a"}
!1258 = distinct !{!1258, !"cmpfunc"}
!1259 = !{!1260}
!1260 = distinct !{!1260, !1258, !"cmpfunc: %b"}
!1261 = !{!1262}
!1262 = distinct !{!1262, !1263, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1263 = distinct !{!1263, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1264 = !{!1265}
!1265 = distinct !{!1265, !1263, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1266 = !{!1262, !1257, !1252, !1247}
!1267 = !{!1265, !1260, !1255, !1250}
!1268 = !{!1269}
!1269 = distinct !{!1269, !1270, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a"}
!1270 = distinct !{!1270, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E"}
!1271 = !{!1272}
!1272 = distinct !{!1272, !1270, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b"}
!1273 = !{!1274}
!1274 = distinct !{!1274, !1275, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0"}
!1275 = distinct !{!1275, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E"}
!1276 = !{!1277}
!1277 = distinct !{!1277, !1275, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1"}
!1278 = !{!1279}
!1279 = distinct !{!1279, !1280, !"cmpfunc: %a"}
!1280 = distinct !{!1280, !"cmpfunc"}
!1281 = !{!1282}
!1282 = distinct !{!1282, !1280, !"cmpfunc: %b"}
!1283 = !{!1284}
!1284 = distinct !{!1284, !1285, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1285 = distinct !{!1285, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1286 = !{!1287}
!1287 = distinct !{!1287, !1285, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1288 = !{!1284, !1279, !1274, !1269}
!1289 = !{!1287, !1282, !1277, !1272}
!1290 = !{!1291}
!1291 = distinct !{!1291, !1292, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a"}
!1292 = distinct !{!1292, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E"}
!1293 = !{!1294}
!1294 = distinct !{!1294, !1292, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b"}
!1295 = !{!1296}
!1296 = distinct !{!1296, !1297, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0"}
!1297 = distinct !{!1297, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E"}
!1298 = !{!1299}
!1299 = distinct !{!1299, !1297, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1"}
!1300 = !{!1301}
!1301 = distinct !{!1301, !1302, !"cmpfunc: %a"}
!1302 = distinct !{!1302, !"cmpfunc"}
!1303 = !{!1304}
!1304 = distinct !{!1304, !1302, !"cmpfunc: %b"}
!1305 = !{!1306}
!1306 = distinct !{!1306, !1307, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1307 = distinct !{!1307, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1308 = !{!1309}
!1309 = distinct !{!1309, !1307, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1310 = !{!1306, !1301, !1296, !1291}
!1311 = !{!1309, !1304, !1299, !1294}
!1312 = !{!1313}
!1313 = distinct !{!1313, !1314, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a"}
!1314 = distinct !{!1314, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E"}
!1315 = !{!1316}
!1316 = distinct !{!1316, !1314, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b"}
!1317 = !{!1318}
!1318 = distinct !{!1318, !1319, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0"}
!1319 = distinct !{!1319, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E"}
!1320 = !{!1321}
!1321 = distinct !{!1321, !1319, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1"}
!1322 = !{!1323}
!1323 = distinct !{!1323, !1324, !"cmpfunc: %a"}
!1324 = distinct !{!1324, !"cmpfunc"}
!1325 = !{!1326}
!1326 = distinct !{!1326, !1324, !"cmpfunc: %b"}
!1327 = !{!1328}
!1328 = distinct !{!1328, !1329, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1329 = distinct !{!1329, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1330 = !{!1331}
!1331 = distinct !{!1331, !1329, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1332 = !{!1328, !1323, !1318, !1313}
!1333 = !{!1331, !1326, !1321, !1316}
!1334 = !{!1335}
!1335 = distinct !{!1335, !1336, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a"}
!1336 = distinct !{!1336, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E"}
!1337 = !{!1338}
!1338 = distinct !{!1338, !1336, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b"}
!1339 = !{!1340}
!1340 = distinct !{!1340, !1341, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0"}
!1341 = distinct !{!1341, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E"}
!1342 = !{!1343}
!1343 = distinct !{!1343, !1341, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1"}
!1344 = !{!1345}
!1345 = distinct !{!1345, !1346, !"cmpfunc: %a"}
!1346 = distinct !{!1346, !"cmpfunc"}
!1347 = !{!1348}
!1348 = distinct !{!1348, !1346, !"cmpfunc: %b"}
!1349 = !{!1350}
!1350 = distinct !{!1350, !1351, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1351 = distinct !{!1351, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1352 = !{!1353}
!1353 = distinct !{!1353, !1351, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1354 = !{!1350, !1345, !1340, !1335}
!1355 = !{!1353, !1348, !1343, !1338}
!1356 = !{!1357}
!1357 = distinct !{!1357, !1358, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a"}
!1358 = distinct !{!1358, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E"}
!1359 = !{!1360}
!1360 = distinct !{!1360, !1358, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b"}
!1361 = !{!1362}
!1362 = distinct !{!1362, !1363, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0"}
!1363 = distinct !{!1363, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E"}
!1364 = !{!1365}
!1365 = distinct !{!1365, !1363, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1"}
!1366 = !{!1367}
!1367 = distinct !{!1367, !1368, !"cmpfunc: %a"}
!1368 = distinct !{!1368, !"cmpfunc"}
!1369 = !{!1370}
!1370 = distinct !{!1370, !1368, !"cmpfunc: %b"}
!1371 = !{!1372}
!1372 = distinct !{!1372, !1373, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1373 = distinct !{!1373, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1374 = !{!1375}
!1375 = distinct !{!1375, !1373, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1376 = !{!1372, !1367, !1362, !1357}
!1377 = !{!1375, !1370, !1365, !1360}
!1378 = !{!1379}
!1379 = distinct !{!1379, !1380, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a"}
!1380 = distinct !{!1380, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E"}
!1381 = !{!1382}
!1382 = distinct !{!1382, !1380, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b"}
!1383 = !{!1384}
!1384 = distinct !{!1384, !1385, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0"}
!1385 = distinct !{!1385, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E"}
!1386 = !{!1387}
!1387 = distinct !{!1387, !1385, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1"}
!1388 = !{!1389}
!1389 = distinct !{!1389, !1390, !"cmpfunc: %a"}
!1390 = distinct !{!1390, !"cmpfunc"}
!1391 = !{!1392}
!1392 = distinct !{!1392, !1390, !"cmpfunc: %b"}
!1393 = !{!1394}
!1394 = distinct !{!1394, !1395, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1395 = distinct !{!1395, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1396 = !{!1397}
!1397 = distinct !{!1397, !1395, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1398 = !{!1394, !1389, !1384, !1379}
!1399 = !{!1397, !1392, !1387, !1382}
!1400 = !{!1401}
!1401 = distinct !{!1401, !1402, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a"}
!1402 = distinct !{!1402, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E"}
!1403 = !{!1404}
!1404 = distinct !{!1404, !1402, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b"}
!1405 = !{!1406}
!1406 = distinct !{!1406, !1407, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0"}
!1407 = distinct !{!1407, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E"}
!1408 = !{!1409}
!1409 = distinct !{!1409, !1407, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1"}
!1410 = !{!1411}
!1411 = distinct !{!1411, !1412, !"cmpfunc: %a"}
!1412 = distinct !{!1412, !"cmpfunc"}
!1413 = !{!1414}
!1414 = distinct !{!1414, !1412, !"cmpfunc: %b"}
!1415 = !{!1416}
!1416 = distinct !{!1416, !1417, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1417 = distinct !{!1417, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1418 = !{!1419}
!1419 = distinct !{!1419, !1417, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1420 = !{!1416, !1411, !1406, !1401}
!1421 = !{!1419, !1414, !1409, !1404}
!1422 = !{!1423}
!1423 = distinct !{!1423, !1424, !"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17hb49c9d1ba10adf46E: %self.0"}
!1424 = distinct !{!1424, !"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17hb49c9d1ba10adf46E"}
!1425 = !{!1426}
!1426 = distinct !{!1426, !1427, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17he3b0c15c05973dbcE: %v.0"}
!1427 = distinct !{!1427, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17he3b0c15c05973dbcE"}
!1428 = !{!1429}
!1429 = distinct !{!1429, !1430, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a"}
!1430 = distinct !{!1430, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E"}
!1431 = !{!1432}
!1432 = distinct !{!1432, !1430, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b"}
!1433 = !{!1434}
!1434 = distinct !{!1434, !1435, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0"}
!1435 = distinct !{!1435, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E"}
!1436 = !{!1437}
!1437 = distinct !{!1437, !1438, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h87af30d5ea6004d6E: %_0"}
!1438 = distinct !{!1438, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h87af30d5ea6004d6E"}
!1439 = !{!1440}
!1440 = distinct !{!1440, !1435, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1"}
!1441 = !{!1442}
!1442 = distinct !{!1442, !1443, !"cmpfunc: %a"}
!1443 = distinct !{!1443, !"cmpfunc"}
!1444 = !{!1445}
!1445 = distinct !{!1445, !1443, !"cmpfunc: %b"}
!1446 = !{!1447}
!1447 = distinct !{!1447, !1448, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1448 = distinct !{!1448, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1449 = !{!1450}
!1450 = distinct !{!1450, !1448, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1451 = !{!1447, !1442, !1434, !1429, !1426}
!1452 = !{!1450, !1445, !1440, !1432, !1437}
!1453 = !{!1450, !1445, !1440, !1432, !1426}
!1454 = !{!1447, !1442, !1434, !1429, !1437}
!1455 = !{!1437, !1456, !1426}
!1456 = distinct !{!1456, !1438, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h87af30d5ea6004d6E: %is_less"}
!1457 = !{!1458}
!1458 = distinct !{!1458, !1459, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a"}
!1459 = distinct !{!1459, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E"}
!1460 = !{!1461}
!1461 = distinct !{!1461, !1459, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b"}
!1462 = !{!1463}
!1463 = distinct !{!1463, !1464, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0"}
!1464 = distinct !{!1464, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E"}
!1465 = !{!1466}
!1466 = distinct !{!1466, !1467, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h6903fe85dc3b9733E: %_0"}
!1467 = distinct !{!1467, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h6903fe85dc3b9733E"}
!1468 = !{!1469}
!1469 = distinct !{!1469, !1464, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1"}
!1470 = !{!1471}
!1471 = distinct !{!1471, !1472, !"cmpfunc: %a"}
!1472 = distinct !{!1472, !"cmpfunc"}
!1473 = !{!1474}
!1474 = distinct !{!1474, !1472, !"cmpfunc: %b"}
!1475 = !{!1476}
!1476 = distinct !{!1476, !1477, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1477 = distinct !{!1477, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1478 = !{!1479}
!1479 = distinct !{!1479, !1477, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1480 = !{!1476, !1471, !1463, !1458, !1426}
!1481 = !{!1479, !1474, !1469, !1461, !1466}
!1482 = !{!1479, !1474, !1469, !1461, !1426}
!1483 = !{!1476, !1471, !1463, !1458, !1466}
!1484 = !{!1466, !1485, !1426}
!1485 = distinct !{!1485, !1467, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h6903fe85dc3b9733E: %is_less"}
!1486 = !{!1487, !1489}
!1487 = distinct !{!1487, !1488, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha803dd85e90fe87bE: %self"}
!1488 = distinct !{!1488, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha803dd85e90fe87bE"}
!1489 = distinct !{!1489, !1490, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h58f80c573f02939aE: %_1"}
!1490 = distinct !{!1490, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h58f80c573f02939aE"}
!1491 = !{!1492, !1494, !1496, !1498}
!1492 = distinct !{!1492, !1493, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1493 = distinct !{!1493, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1494 = distinct !{!1494, !1495, !"cmpfunc: %b"}
!1495 = distinct !{!1495, !"cmpfunc"}
!1496 = distinct !{!1496, !1497, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1"}
!1497 = distinct !{!1497, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E"}
!1498 = distinct !{!1498, !1499, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b"}
!1499 = distinct !{!1499, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E"}
!1500 = !{!1501, !1502, !1503, !1504}
!1501 = distinct !{!1501, !1493, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1502 = distinct !{!1502, !1495, !"cmpfunc: %a"}
!1503 = distinct !{!1503, !1497, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0"}
!1504 = distinct !{!1504, !1499, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a"}
!1505 = !{!1506, !1508, !1510, !1512}
!1506 = distinct !{!1506, !1507, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1507 = distinct !{!1507, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1508 = distinct !{!1508, !1509, !"cmpfunc: %b"}
!1509 = distinct !{!1509, !"cmpfunc"}
!1510 = distinct !{!1510, !1511, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1"}
!1511 = distinct !{!1511, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E"}
!1512 = distinct !{!1512, !1513, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b"}
!1513 = distinct !{!1513, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E"}
!1514 = !{!1515, !1516, !1517, !1518}
!1515 = distinct !{!1515, !1507, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1516 = distinct !{!1516, !1509, !"cmpfunc: %a"}
!1517 = distinct !{!1517, !1511, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0"}
!1518 = distinct !{!1518, !1513, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a"}
!1519 = !{!1520, !1522}
!1520 = distinct !{!1520, !1521, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha803dd85e90fe87bE: %self"}
!1521 = distinct !{!1521, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha803dd85e90fe87bE"}
!1522 = distinct !{!1522, !1523, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h58f80c573f02939aE: %_1"}
!1523 = distinct !{!1523, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h58f80c573f02939aE"}
!1524 = !{!1525}
!1525 = distinct !{!1525, !1526, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h902fd1cdf4522e46E: %_0"}
!1526 = distinct !{!1526, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h902fd1cdf4522e46E"}
!1527 = !{i64 0, i64 2}
!1528 = !{i64 0, i64 -9223372036854775807}
!1529 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!1530 = !{!1531}
!1531 = distinct !{!1531, !1532, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h7c1b0be8a5f89fe9E: %_0"}
!1532 = distinct !{!1532, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h7c1b0be8a5f89fe9E"}
!1533 = !{!1534}
!1534 = distinct !{!1534, !1535, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a"}
!1535 = distinct !{!1535, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E"}
!1536 = !{!1537}
!1537 = distinct !{!1537, !1535, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b"}
!1538 = !{!1539}
!1539 = distinct !{!1539, !1540, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0"}
!1540 = distinct !{!1540, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E"}
!1541 = !{!1542}
!1542 = distinct !{!1542, !1540, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1"}
!1543 = !{!1544}
!1544 = distinct !{!1544, !1545, !"cmpfunc: %a"}
!1545 = distinct !{!1545, !"cmpfunc"}
!1546 = !{!1547}
!1547 = distinct !{!1547, !1545, !"cmpfunc: %b"}
!1548 = !{!1549}
!1549 = distinct !{!1549, !1550, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1550 = distinct !{!1550, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1551 = !{!1552}
!1552 = distinct !{!1552, !1550, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1553 = !{!1549, !1544, !1539, !1534}
!1554 = !{!1552, !1547, !1542, !1537}
!1555 = !{!1556}
!1556 = distinct !{!1556, !1557, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a"}
!1557 = distinct !{!1557, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E"}
!1558 = !{!1559}
!1559 = distinct !{!1559, !1557, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b"}
!1560 = !{!1561}
!1561 = distinct !{!1561, !1562, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0"}
!1562 = distinct !{!1562, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E"}
!1563 = !{!1564}
!1564 = distinct !{!1564, !1562, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1"}
!1565 = !{!1566}
!1566 = distinct !{!1566, !1567, !"cmpfunc: %a"}
!1567 = distinct !{!1567, !"cmpfunc"}
!1568 = !{!1569}
!1569 = distinct !{!1569, !1567, !"cmpfunc: %b"}
!1570 = !{!1571}
!1571 = distinct !{!1571, !1572, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1572 = distinct !{!1572, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1573 = !{!1574}
!1574 = distinct !{!1574, !1572, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1575 = !{!1571, !1566, !1561, !1556}
!1576 = !{!1574, !1569, !1564, !1559}
!1577 = !{!1578}
!1578 = distinct !{!1578, !1579, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a"}
!1579 = distinct !{!1579, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E"}
!1580 = !{!1581}
!1581 = distinct !{!1581, !1579, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b"}
!1582 = !{!1583}
!1583 = distinct !{!1583, !1584, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0"}
!1584 = distinct !{!1584, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E"}
!1585 = !{!1586}
!1586 = distinct !{!1586, !1584, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1"}
!1587 = !{!1588}
!1588 = distinct !{!1588, !1589, !"cmpfunc: %a"}
!1589 = distinct !{!1589, !"cmpfunc"}
!1590 = !{!1591}
!1591 = distinct !{!1591, !1589, !"cmpfunc: %b"}
!1592 = !{!1593}
!1593 = distinct !{!1593, !1594, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1594 = distinct !{!1594, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1595 = !{!1596}
!1596 = distinct !{!1596, !1594, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1597 = !{!1593, !1588, !1583, !1578}
!1598 = !{!1596, !1591, !1586, !1581}
!1599 = !{!1600, !1602}
!1600 = distinct !{!1600, !1601, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17h545e5c864fe699d9E: %a.0"}
!1601 = distinct !{!1601, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17h545e5c864fe699d9E"}
!1602 = distinct !{!1602, !1603, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h590dfe862d453c00E: %self.0"}
!1603 = distinct !{!1603, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h590dfe862d453c00E"}
!1604 = !{!1605}
!1605 = distinct !{!1605, !1601, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17h545e5c864fe699d9E: %b.0"}
!1606 = !{!1605, !1602}
!1607 = !{!1600}
!1608 = !{!1609}
!1609 = distinct !{!1609, !1610, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 0"}
!1610 = distinct !{!1610, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E"}
!1611 = !{!1612}
!1612 = distinct !{!1612, !1610, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 1"}
!1613 = !{!1614}
!1614 = distinct !{!1614, !1615, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %self"}
!1615 = distinct !{!1615, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E"}
!1616 = !{!1617}
!1617 = distinct !{!1617, !1615, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %other"}
!1618 = !{!1619}
!1619 = distinct !{!1619, !1620, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %self"}
!1620 = distinct !{!1620, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE"}
!1621 = !{!1622}
!1622 = distinct !{!1622, !1620, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %other"}
!1623 = !{!1624}
!1624 = distinct !{!1624, !1625, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %self"}
!1625 = distinct !{!1625, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE"}
!1626 = !{!1627}
!1627 = distinct !{!1627, !1625, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %other"}
!1628 = !{!1624, !1619, !1614, !1609}
!1629 = !{!1627, !1622, !1617, !1612}
!1630 = !{!1631, !1633, !1634, !1636}
!1631 = distinct !{!1631, !1632, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E: %left.0"}
!1632 = distinct !{!1632, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E"}
!1633 = distinct !{!1633, !1632, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E: %right.0"}
!1634 = distinct !{!1634, !1635, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E: %left.0"}
!1635 = distinct !{!1635, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E"}
!1636 = distinct !{!1636, !1635, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E: %right.0"}
!1637 = !{!1624, !1627, !1619, !1622, !1614, !1617, !1609, !1612}
!1638 = !{!1639}
!1639 = distinct !{!1639, !1640, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 0"}
!1640 = distinct !{!1640, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E"}
!1641 = !{!1642}
!1642 = distinct !{!1642, !1640, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 1"}
!1643 = !{!1644}
!1644 = distinct !{!1644, !1645, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %self"}
!1645 = distinct !{!1645, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E"}
!1646 = !{!1647}
!1647 = distinct !{!1647, !1645, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %other"}
!1648 = !{!1649}
!1649 = distinct !{!1649, !1650, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %self"}
!1650 = distinct !{!1650, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE"}
!1651 = !{!1652}
!1652 = distinct !{!1652, !1650, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %other"}
!1653 = !{!1654}
!1654 = distinct !{!1654, !1655, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %self"}
!1655 = distinct !{!1655, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE"}
!1656 = !{!1657}
!1657 = distinct !{!1657, !1655, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %other"}
!1658 = !{!1654, !1649, !1644, !1639}
!1659 = !{!1657, !1652, !1647, !1642}
!1660 = !{!1661, !1663, !1664, !1666}
!1661 = distinct !{!1661, !1662, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E: %left.0"}
!1662 = distinct !{!1662, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E"}
!1663 = distinct !{!1663, !1662, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E: %right.0"}
!1664 = distinct !{!1664, !1665, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E: %left.0"}
!1665 = distinct !{!1665, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E"}
!1666 = distinct !{!1666, !1665, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E: %right.0"}
!1667 = !{!1654, !1657, !1649, !1652, !1644, !1647, !1639, !1642}
!1668 = !{!1669}
!1669 = distinct !{!1669, !1670, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 0"}
!1670 = distinct !{!1670, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E"}
!1671 = !{!1672}
!1672 = distinct !{!1672, !1670, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 1"}
!1673 = !{!1674}
!1674 = distinct !{!1674, !1675, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %self"}
!1675 = distinct !{!1675, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E"}
!1676 = !{!1677}
!1677 = distinct !{!1677, !1675, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %other"}
!1678 = !{!1679}
!1679 = distinct !{!1679, !1680, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %self"}
!1680 = distinct !{!1680, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE"}
!1681 = !{!1682}
!1682 = distinct !{!1682, !1680, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %other"}
!1683 = !{!1684}
!1684 = distinct !{!1684, !1685, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %self"}
!1685 = distinct !{!1685, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE"}
!1686 = !{!1687}
!1687 = distinct !{!1687, !1685, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %other"}
!1688 = !{!1684, !1679, !1674, !1669}
!1689 = !{!1687, !1682, !1677, !1672}
!1690 = !{!1691, !1693, !1694, !1696}
!1691 = distinct !{!1691, !1692, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E: %left.0"}
!1692 = distinct !{!1692, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E"}
!1693 = distinct !{!1693, !1692, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E: %right.0"}
!1694 = distinct !{!1694, !1695, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E: %left.0"}
!1695 = distinct !{!1695, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E"}
!1696 = distinct !{!1696, !1695, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E: %right.0"}
!1697 = !{!1684, !1687, !1679, !1682, !1674, !1677, !1669, !1672}
!1698 = !{!1699}
!1699 = distinct !{!1699, !1700, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17hf43cf371a434dcedE: %a.0"}
!1700 = distinct !{!1700, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17hf43cf371a434dcedE"}
!1701 = !{!1702}
!1702 = distinct !{!1702, !1700, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17hf43cf371a434dcedE: %b.0"}
!1703 = !{!1704}
!1704 = distinct !{!1704, !1705, !"_ZN4core3ptr10swap_chunk17hbcef857f30cc55b3E: %x"}
!1705 = distinct !{!1705, !"_ZN4core3ptr10swap_chunk17hbcef857f30cc55b3E"}
!1706 = !{!1707}
!1707 = distinct !{!1707, !1705, !"_ZN4core3ptr10swap_chunk17hbcef857f30cc55b3E: %y"}
!1708 = !{!1704, !1699, !1709}
!1709 = distinct !{!1709, !1710, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17he9e4f888e151918aE: %self.0"}
!1710 = distinct !{!1710, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17he9e4f888e151918aE"}
!1711 = !{!1707, !1702}
!1712 = !{!1707, !1702, !1709}
!1713 = !{!1704, !1699}
!1714 = !{!1715}
!1715 = distinct !{!1715, !1705, !"_ZN4core3ptr10swap_chunk17hbcef857f30cc55b3E: %x:It1"}
!1716 = !{!1717}
!1717 = distinct !{!1717, !1705, !"_ZN4core3ptr10swap_chunk17hbcef857f30cc55b3E: %y:It1"}
!1718 = !{!1715, !1699, !1709}
!1719 = !{!1717, !1702}
!1720 = !{!1717, !1702, !1709}
!1721 = !{!1715, !1699}
!1722 = !{!1723}
!1723 = distinct !{!1723, !1705, !"_ZN4core3ptr10swap_chunk17hbcef857f30cc55b3E: %x:It2"}
!1724 = !{!1725}
!1725 = distinct !{!1725, !1705, !"_ZN4core3ptr10swap_chunk17hbcef857f30cc55b3E: %y:It2"}
!1726 = !{!1723, !1699, !1709}
!1727 = !{!1725, !1702}
!1728 = !{!1725, !1702, !1709}
!1729 = !{!1723, !1699}
!1730 = !{!1731}
!1731 = distinct !{!1731, !1732, !"_ZN4core5slice4sort6stable5merge5merge17h4968745bd835e12cE: %v.0"}
!1732 = distinct !{!1732, !"_ZN4core5slice4sort6stable5merge5merge17h4968745bd835e12cE"}
!1733 = !{!1734}
!1734 = distinct !{!1734, !1732, !"_ZN4core5slice4sort6stable5merge5merge17h4968745bd835e12cE: %scratch.0"}
!1735 = !{!1731, !1734}
!1736 = !{!1737}
!1737 = distinct !{!1737, !1738, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a"}
!1738 = distinct !{!1738, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E"}
!1739 = !{!1740}
!1740 = distinct !{!1740, !1738, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b"}
!1741 = !{!1742}
!1742 = distinct !{!1742, !1743, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0"}
!1743 = distinct !{!1743, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E"}
!1744 = !{!1745}
!1745 = distinct !{!1745, !1743, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1"}
!1746 = !{!1747}
!1747 = distinct !{!1747, !1748, !"cmpfunc: %a"}
!1748 = distinct !{!1748, !"cmpfunc"}
!1749 = !{!1750}
!1750 = distinct !{!1750, !1748, !"cmpfunc: %b"}
!1751 = !{!1752}
!1752 = distinct !{!1752, !1753, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1753 = distinct !{!1753, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1754 = !{!1755}
!1755 = distinct !{!1755, !1753, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1756 = !{!1752, !1747, !1742, !1737, !1734}
!1757 = !{!1755, !1750, !1745, !1740, !1758, !1731}
!1758 = distinct !{!1758, !1759, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h483b621008603c76E: %self"}
!1759 = distinct !{!1759, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h483b621008603c76E"}
!1760 = !{!1755, !1750, !1745, !1740, !1731}
!1761 = !{!1752, !1747, !1742, !1737, !1758, !1734}
!1762 = !{!1758, !1734}
!1763 = !{!1764}
!1764 = distinct !{!1764, !1765, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a"}
!1765 = distinct !{!1765, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E"}
!1766 = !{!1767}
!1767 = distinct !{!1767, !1765, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b"}
!1768 = !{!1769}
!1769 = distinct !{!1769, !1770, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0"}
!1770 = distinct !{!1770, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E"}
!1771 = !{!1772}
!1772 = distinct !{!1772, !1770, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1"}
!1773 = !{!1774}
!1774 = distinct !{!1774, !1775, !"cmpfunc: %a"}
!1775 = distinct !{!1775, !"cmpfunc"}
!1776 = !{!1777}
!1777 = distinct !{!1777, !1775, !"cmpfunc: %b"}
!1778 = !{!1779}
!1779 = distinct !{!1779, !1780, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1780 = distinct !{!1780, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1781 = !{!1782}
!1782 = distinct !{!1782, !1780, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1783 = !{!1779, !1774, !1769, !1764, !1731}
!1784 = !{!1782, !1777, !1772, !1767, !1785, !1734}
!1785 = distinct !{!1785, !1786, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h25e782789069064cE: %self"}
!1786 = distinct !{!1786, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h25e782789069064cE"}
!1787 = !{!1782, !1777, !1772, !1767, !1734}
!1788 = !{!1779, !1774, !1769, !1764, !1785, !1731}
!1789 = !{!1785, !1734}
!1790 = !{!1791, !1793}
!1791 = distinct !{!1791, !1792, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hddbf6677d5cb6c3aE: %self"}
!1792 = distinct !{!1792, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hddbf6677d5cb6c3aE"}
!1793 = distinct !{!1793, !1794, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17ha2ac36118d2e0a75E: %_1"}
!1794 = distinct !{!1794, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17ha2ac36118d2e0a75E"}
!1795 = !{!1796}
!1796 = distinct !{!1796, !1797, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 0"}
!1797 = distinct !{!1797, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E"}
!1798 = !{!1799}
!1799 = distinct !{!1799, !1797, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 1"}
!1800 = !{!1801}
!1801 = distinct !{!1801, !1802, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %self"}
!1802 = distinct !{!1802, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E"}
!1803 = !{!1804}
!1804 = distinct !{!1804, !1802, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %other"}
!1805 = !{!1806}
!1806 = distinct !{!1806, !1807, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %self"}
!1807 = distinct !{!1807, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE"}
!1808 = !{!1809}
!1809 = distinct !{!1809, !1807, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %other"}
!1810 = !{!1811}
!1811 = distinct !{!1811, !1812, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %self"}
!1812 = distinct !{!1812, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE"}
!1813 = !{!1814}
!1814 = distinct !{!1814, !1812, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %other"}
!1815 = !{!1811, !1806, !1801, !1796}
!1816 = !{!1814, !1809, !1804, !1799}
!1817 = !{!1818, !1820, !1821, !1823}
!1818 = distinct !{!1818, !1819, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E: %left.0"}
!1819 = distinct !{!1819, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E"}
!1820 = distinct !{!1820, !1819, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E: %right.0"}
!1821 = distinct !{!1821, !1822, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E: %left.0"}
!1822 = distinct !{!1822, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E"}
!1823 = distinct !{!1823, !1822, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E: %right.0"}
!1824 = !{!1811, !1814, !1806, !1809, !1801, !1804, !1796, !1799}
!1825 = !{!1826}
!1826 = distinct !{!1826, !1827, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a"}
!1827 = distinct !{!1827, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E"}
!1828 = !{!1829}
!1829 = distinct !{!1829, !1827, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b"}
!1830 = !{!1831}
!1831 = distinct !{!1831, !1832, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0"}
!1832 = distinct !{!1832, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E"}
!1833 = !{!1834}
!1834 = distinct !{!1834, !1832, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1"}
!1835 = !{!1836}
!1836 = distinct !{!1836, !1837, !"cmpfunc: %a"}
!1837 = distinct !{!1837, !"cmpfunc"}
!1838 = !{!1839}
!1839 = distinct !{!1839, !1837, !"cmpfunc: %b"}
!1840 = !{!1841}
!1841 = distinct !{!1841, !1842, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1842 = distinct !{!1842, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1843 = !{!1844}
!1844 = distinct !{!1844, !1842, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1845 = !{!1841, !1836, !1831, !1826}
!1846 = !{!1844, !1839, !1834, !1829}
!1847 = !{!1848}
!1848 = distinct !{!1848, !1849, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a"}
!1849 = distinct !{!1849, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E"}
!1850 = !{!1851}
!1851 = distinct !{!1851, !1849, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b"}
!1852 = !{!1853}
!1853 = distinct !{!1853, !1854, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0"}
!1854 = distinct !{!1854, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E"}
!1855 = !{!1856}
!1856 = distinct !{!1856, !1854, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1"}
!1857 = !{!1858}
!1858 = distinct !{!1858, !1859, !"cmpfunc: %a"}
!1859 = distinct !{!1859, !"cmpfunc"}
!1860 = !{!1861}
!1861 = distinct !{!1861, !1859, !"cmpfunc: %b"}
!1862 = !{!1863}
!1863 = distinct !{!1863, !1864, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1864 = distinct !{!1864, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1865 = !{!1866}
!1866 = distinct !{!1866, !1864, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1867 = !{!1863, !1858, !1853, !1848}
!1868 = !{!1866, !1861, !1856, !1851}
!1869 = !{!1870}
!1870 = distinct !{!1870, !1871, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 0"}
!1871 = distinct !{!1871, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E"}
!1872 = !{!1873}
!1873 = distinct !{!1873, !1871, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 1"}
!1874 = !{!1875}
!1875 = distinct !{!1875, !1876, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %self"}
!1876 = distinct !{!1876, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E"}
!1877 = !{!1878}
!1878 = distinct !{!1878, !1876, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %other"}
!1879 = !{!1880}
!1880 = distinct !{!1880, !1881, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %self"}
!1881 = distinct !{!1881, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE"}
!1882 = !{!1883}
!1883 = distinct !{!1883, !1881, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %other"}
!1884 = !{!1885}
!1885 = distinct !{!1885, !1886, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %self"}
!1886 = distinct !{!1886, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE"}
!1887 = !{!1888}
!1888 = distinct !{!1888, !1886, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %other"}
!1889 = !{!1885, !1880, !1875, !1870}
!1890 = !{!1888, !1883, !1878, !1873}
!1891 = !{!1892, !1894, !1895, !1897}
!1892 = distinct !{!1892, !1893, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E: %left.0"}
!1893 = distinct !{!1893, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E"}
!1894 = distinct !{!1894, !1893, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E: %right.0"}
!1895 = distinct !{!1895, !1896, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E: %left.0"}
!1896 = distinct !{!1896, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E"}
!1897 = distinct !{!1897, !1896, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E: %right.0"}
!1898 = !{!1885, !1888, !1880, !1883, !1875, !1878, !1870, !1873}
!1899 = !{!1900}
!1900 = distinct !{!1900, !1901, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a"}
!1901 = distinct !{!1901, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E"}
!1902 = !{!1903}
!1903 = distinct !{!1903, !1901, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b"}
!1904 = !{!1905}
!1905 = distinct !{!1905, !1906, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0"}
!1906 = distinct !{!1906, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E"}
!1907 = !{!1908}
!1908 = distinct !{!1908, !1906, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1"}
!1909 = !{!1910}
!1910 = distinct !{!1910, !1911, !"cmpfunc: %a"}
!1911 = distinct !{!1911, !"cmpfunc"}
!1912 = !{!1913}
!1913 = distinct !{!1913, !1911, !"cmpfunc: %b"}
!1914 = !{!1915}
!1915 = distinct !{!1915, !1916, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1916 = distinct !{!1916, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1917 = !{!1918}
!1918 = distinct !{!1918, !1916, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1919 = !{!1915, !1910, !1905, !1900}
!1920 = !{!1918, !1913, !1908, !1903, !1921}
!1921 = distinct !{!1921, !1922, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h483b621008603c76E: %self"}
!1922 = distinct !{!1922, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h483b621008603c76E"}
!1923 = !{!1918, !1913, !1908, !1903}
!1924 = !{!1915, !1910, !1905, !1900, !1921}
!1925 = !{!1921}
!1926 = !{!1927}
!1927 = distinct !{!1927, !1928, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a"}
!1928 = distinct !{!1928, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E"}
!1929 = !{!1930}
!1930 = distinct !{!1930, !1928, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b"}
!1931 = !{!1932}
!1932 = distinct !{!1932, !1933, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0"}
!1933 = distinct !{!1933, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E"}
!1934 = !{!1935}
!1935 = distinct !{!1935, !1933, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1"}
!1936 = !{!1937}
!1937 = distinct !{!1937, !1938, !"cmpfunc: %a"}
!1938 = distinct !{!1938, !"cmpfunc"}
!1939 = !{!1940}
!1940 = distinct !{!1940, !1938, !"cmpfunc: %b"}
!1941 = !{!1942}
!1942 = distinct !{!1942, !1943, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1943 = distinct !{!1943, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1944 = !{!1945}
!1945 = distinct !{!1945, !1943, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1946 = !{!1942, !1937, !1932, !1927}
!1947 = !{!1945, !1940, !1935, !1930, !1948}
!1948 = distinct !{!1948, !1949, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h25e782789069064cE: %self"}
!1949 = distinct !{!1949, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h25e782789069064cE"}
!1950 = !{!1945, !1940, !1935, !1930}
!1951 = !{!1942, !1937, !1932, !1927, !1948}
!1952 = !{!1948}
!1953 = !{!1954, !1956}
!1954 = distinct !{!1954, !1955, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hddbf6677d5cb6c3aE: %self"}
!1955 = distinct !{!1955, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hddbf6677d5cb6c3aE"}
!1956 = distinct !{!1956, !1957, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17ha2ac36118d2e0a75E: %_1"}
!1957 = distinct !{!1957, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17ha2ac36118d2e0a75E"}
!1958 = !{!1959}
!1959 = distinct !{!1959, !1960, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 0"}
!1960 = distinct !{!1960, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E"}
!1961 = !{!1962}
!1962 = distinct !{!1962, !1960, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 1"}
!1963 = !{!1964}
!1964 = distinct !{!1964, !1965, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %self"}
!1965 = distinct !{!1965, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E"}
!1966 = !{!1967}
!1967 = distinct !{!1967, !1965, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %other"}
!1968 = !{!1969}
!1969 = distinct !{!1969, !1970, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %self"}
!1970 = distinct !{!1970, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE"}
!1971 = !{!1972}
!1972 = distinct !{!1972, !1970, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %other"}
!1973 = !{!1974}
!1974 = distinct !{!1974, !1975, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %self"}
!1975 = distinct !{!1975, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE"}
!1976 = !{!1977}
!1977 = distinct !{!1977, !1975, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %other"}
!1978 = !{!1974, !1969, !1964, !1959}
!1979 = !{!1977, !1972, !1967, !1962, !1980}
!1980 = distinct !{!1980, !1981, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h00af413aa662353fE: %self"}
!1981 = distinct !{!1981, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h00af413aa662353fE"}
!1982 = !{!1977, !1972, !1967, !1962}
!1983 = !{!1974, !1969, !1964, !1959, !1980}
!1984 = !{!1985, !1987, !1988, !1990}
!1985 = distinct !{!1985, !1986, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E: %left.0"}
!1986 = distinct !{!1986, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E"}
!1987 = distinct !{!1987, !1986, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E: %right.0"}
!1988 = distinct !{!1988, !1989, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E: %left.0"}
!1989 = distinct !{!1989, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E"}
!1990 = distinct !{!1990, !1989, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E: %right.0"}
!1991 = !{!1974, !1977, !1969, !1972, !1964, !1967, !1959, !1962, !1980}
!1992 = !{!1980}
!1993 = !{!1994}
!1994 = distinct !{!1994, !1995, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 0"}
!1995 = distinct !{!1995, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E"}
!1996 = !{!1997}
!1997 = distinct !{!1997, !1995, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 1"}
!1998 = !{!1999}
!1999 = distinct !{!1999, !2000, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %self"}
!2000 = distinct !{!2000, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E"}
!2001 = !{!2002}
!2002 = distinct !{!2002, !2000, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %other"}
!2003 = !{!2004}
!2004 = distinct !{!2004, !2005, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %self"}
!2005 = distinct !{!2005, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE"}
!2006 = !{!2007}
!2007 = distinct !{!2007, !2005, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %other"}
!2008 = !{!2009}
!2009 = distinct !{!2009, !2010, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %self"}
!2010 = distinct !{!2010, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE"}
!2011 = !{!2012}
!2012 = distinct !{!2012, !2010, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %other"}
!2013 = !{!2009, !2004, !1999, !1994}
!2014 = !{!2012, !2007, !2002, !1997, !2015}
!2015 = distinct !{!2015, !2016, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17hbe38bf00a951b59aE: %self"}
!2016 = distinct !{!2016, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17hbe38bf00a951b59aE"}
!2017 = !{!2012, !2007, !2002, !1997}
!2018 = !{!2009, !2004, !1999, !1994, !2015}
!2019 = !{!2020, !2022, !2023, !2025}
!2020 = distinct !{!2020, !2021, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E: %left.0"}
!2021 = distinct !{!2021, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E"}
!2022 = distinct !{!2022, !2021, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E: %right.0"}
!2023 = distinct !{!2023, !2024, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E: %left.0"}
!2024 = distinct !{!2024, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E"}
!2025 = distinct !{!2025, !2024, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E: %right.0"}
!2026 = !{!2009, !2012, !2004, !2007, !1999, !2002, !1994, !1997, !2015}
!2027 = !{!2015}
!2028 = !{!2029, !2031}
!2029 = distinct !{!2029, !2030, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1026d09a29655880E: %self"}
!2030 = distinct !{!2030, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1026d09a29655880E"}
!2031 = distinct !{!2031, !2032, !"_ZN4core3ptr94drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$alloc..string..String$GT$$GT$17hdb2ba51bb1343d28E: %_1"}
!2032 = distinct !{!2032, !"_ZN4core3ptr94drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$alloc..string..String$GT$$GT$17hdb2ba51bb1343d28E"}
!2033 = !{!"branch_weights", i32 4000000, i32 4001}
!2034 = !{!2035}
!2035 = distinct !{!2035, !2036, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a"}
!2036 = distinct !{!2036, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E"}
!2037 = !{!2038}
!2038 = distinct !{!2038, !2036, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b"}
!2039 = !{!2040}
!2040 = distinct !{!2040, !2041, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0"}
!2041 = distinct !{!2041, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E"}
!2042 = !{!2043}
!2043 = distinct !{!2043, !2041, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1"}
!2044 = !{!2045}
!2045 = distinct !{!2045, !2046, !"cmpfunc: %a"}
!2046 = distinct !{!2046, !"cmpfunc"}
!2047 = !{!2048}
!2048 = distinct !{!2048, !2046, !"cmpfunc: %b"}
!2049 = !{!2050}
!2050 = distinct !{!2050, !2051, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2051 = distinct !{!2051, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2052 = !{!2053}
!2053 = distinct !{!2053, !2051, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2054 = !{!2050, !2045, !2040, !2035}
!2055 = !{!2053, !2048, !2043, !2038}
!2056 = !{!2057}
!2057 = distinct !{!2057, !2058, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17haf29ddd56ec7721fE: %self"}
!2058 = distinct !{!2058, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17haf29ddd56ec7721fE"}
!2059 = !{!2060}
!2060 = distinct !{!2060, !2061, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a"}
!2061 = distinct !{!2061, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E"}
!2062 = !{!2063}
!2063 = distinct !{!2063, !2061, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b"}
!2064 = !{!2065}
!2065 = distinct !{!2065, !2066, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0"}
!2066 = distinct !{!2066, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E"}
!2067 = !{!2068}
!2068 = distinct !{!2068, !2066, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1"}
!2069 = !{!2070}
!2070 = distinct !{!2070, !2071, !"cmpfunc: %a"}
!2071 = distinct !{!2071, !"cmpfunc"}
!2072 = !{!2073}
!2073 = distinct !{!2073, !2071, !"cmpfunc: %b"}
!2074 = !{!2075}
!2075 = distinct !{!2075, !2076, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2076 = distinct !{!2076, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2077 = !{!2078}
!2078 = distinct !{!2078, !2076, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2079 = !{!2075, !2070, !2065, !2060}
!2080 = !{!2078, !2073, !2068, !2063}
!2081 = !{!2082}
!2082 = distinct !{!2082, !2083, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17haf29ddd56ec7721fE: %self"}
!2083 = distinct !{!2083, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17haf29ddd56ec7721fE"}
!2084 = !{!2085}
!2085 = distinct !{!2085, !2086, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a"}
!2086 = distinct !{!2086, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E"}
!2087 = !{!2088}
!2088 = distinct !{!2088, !2086, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b"}
!2089 = !{!2090}
!2090 = distinct !{!2090, !2091, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0"}
!2091 = distinct !{!2091, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E"}
!2092 = !{!2093}
!2093 = distinct !{!2093, !2091, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1"}
!2094 = !{!2095}
!2095 = distinct !{!2095, !2096, !"cmpfunc: %a"}
!2096 = distinct !{!2096, !"cmpfunc"}
!2097 = !{!2098}
!2098 = distinct !{!2098, !2096, !"cmpfunc: %b"}
!2099 = !{!2100}
!2100 = distinct !{!2100, !2101, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2101 = distinct !{!2101, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2102 = !{!2103}
!2103 = distinct !{!2103, !2101, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2104 = !{!2100, !2095, !2090, !2085}
!2105 = !{!2103, !2098, !2093, !2088}
!2106 = !{!2107}
!2107 = distinct !{!2107, !2108, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17haf29ddd56ec7721fE: %self"}
!2108 = distinct !{!2108, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17haf29ddd56ec7721fE"}
!2109 = !{!2110}
!2110 = distinct !{!2110, !2111, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a"}
!2111 = distinct !{!2111, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E"}
!2112 = !{!2113}
!2113 = distinct !{!2113, !2111, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b"}
!2114 = !{!2115}
!2115 = distinct !{!2115, !2116, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0"}
!2116 = distinct !{!2116, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E"}
!2117 = !{!2118}
!2118 = distinct !{!2118, !2116, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1"}
!2119 = !{!2120}
!2120 = distinct !{!2120, !2121, !"cmpfunc: %a"}
!2121 = distinct !{!2121, !"cmpfunc"}
!2122 = !{!2123}
!2123 = distinct !{!2123, !2121, !"cmpfunc: %b"}
!2124 = !{!2125}
!2125 = distinct !{!2125, !2126, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2126 = distinct !{!2126, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2127 = !{!2128}
!2128 = distinct !{!2128, !2126, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2129 = !{!2125, !2120, !2115, !2110}
!2130 = !{!2128, !2123, !2118, !2113}
!2131 = !{!2132}
!2132 = distinct !{!2132, !2133, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17haf29ddd56ec7721fE: %self"}
!2133 = distinct !{!2133, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17haf29ddd56ec7721fE"}
!2134 = !{!2135}
!2135 = distinct !{!2135, !2136, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a"}
!2136 = distinct !{!2136, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E"}
!2137 = !{!2138}
!2138 = distinct !{!2138, !2136, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b"}
!2139 = !{!2140}
!2140 = distinct !{!2140, !2141, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0"}
!2141 = distinct !{!2141, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E"}
!2142 = !{!2143}
!2143 = distinct !{!2143, !2141, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1"}
!2144 = !{!2145}
!2145 = distinct !{!2145, !2146, !"cmpfunc: %a"}
!2146 = distinct !{!2146, !"cmpfunc"}
!2147 = !{!2148}
!2148 = distinct !{!2148, !2146, !"cmpfunc: %b"}
!2149 = !{!2150}
!2150 = distinct !{!2150, !2151, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2151 = distinct !{!2151, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2152 = !{!2153}
!2153 = distinct !{!2153, !2151, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2154 = !{!2150, !2145, !2140, !2135}
!2155 = !{!2153, !2148, !2143, !2138}
!2156 = !{!2157}
!2157 = distinct !{!2157, !2158, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17haf29ddd56ec7721fE: %self"}
!2158 = distinct !{!2158, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17haf29ddd56ec7721fE"}
!2159 = !{!2160}
!2160 = distinct !{!2160, !2161, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17haf29ddd56ec7721fE: %self"}
!2161 = distinct !{!2161, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17haf29ddd56ec7721fE"}
!2162 = distinct !{!2162, !2163}
!2163 = !{!"llvm.loop.unroll.disable"}
!2164 = !{!2165}
!2165 = distinct !{!2165, !2166, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17haf7fb341c01d574eE: %a"}
!2166 = distinct !{!2166, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17haf7fb341c01d574eE"}
!2167 = !{!2168}
!2168 = distinct !{!2168, !2166, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17haf7fb341c01d574eE: %b"}
!2169 = !{!2170}
!2170 = distinct !{!2170, !2171, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a"}
!2171 = distinct !{!2171, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E"}
!2172 = !{!2173}
!2173 = distinct !{!2173, !2171, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b"}
!2174 = !{!2175}
!2175 = distinct !{!2175, !2176, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0"}
!2176 = distinct !{!2176, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E"}
!2177 = !{!2178}
!2178 = distinct !{!2178, !2176, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1"}
!2179 = !{!2180}
!2180 = distinct !{!2180, !2181, !"cmpfunc: %a"}
!2181 = distinct !{!2181, !"cmpfunc"}
!2182 = !{!2183}
!2183 = distinct !{!2183, !2181, !"cmpfunc: %b"}
!2184 = !{!2185}
!2185 = distinct !{!2185, !2186, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2186 = distinct !{!2186, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2187 = !{!2188}
!2188 = distinct !{!2188, !2186, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2189 = !{!2185, !2180, !2175, !2170, !2168}
!2190 = !{!2188, !2183, !2178, !2173, !2165}
!2191 = !{!2192}
!2192 = distinct !{!2192, !2193, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17haf29ddd56ec7721fE: %self"}
!2193 = distinct !{!2193, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17haf29ddd56ec7721fE"}
!2194 = !{!2195}
!2195 = distinct !{!2195, !2196, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17haf7fb341c01d574eE: %a"}
!2196 = distinct !{!2196, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17haf7fb341c01d574eE"}
!2197 = !{!2198}
!2198 = distinct !{!2198, !2196, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17haf7fb341c01d574eE: %b"}
!2199 = !{!2200}
!2200 = distinct !{!2200, !2201, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a"}
!2201 = distinct !{!2201, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E"}
!2202 = !{!2203}
!2203 = distinct !{!2203, !2201, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b"}
!2204 = !{!2205}
!2205 = distinct !{!2205, !2206, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0"}
!2206 = distinct !{!2206, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E"}
!2207 = !{!2208}
!2208 = distinct !{!2208, !2206, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1"}
!2209 = !{!2210}
!2210 = distinct !{!2210, !2211, !"cmpfunc: %a"}
!2211 = distinct !{!2211, !"cmpfunc"}
!2212 = !{!2213}
!2213 = distinct !{!2213, !2211, !"cmpfunc: %b"}
!2214 = !{!2215}
!2215 = distinct !{!2215, !2216, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2216 = distinct !{!2216, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2217 = !{!2218}
!2218 = distinct !{!2218, !2216, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2219 = !{!2215, !2210, !2205, !2200, !2198}
!2220 = !{!2218, !2213, !2208, !2203, !2195}
!2221 = !{!2222}
!2222 = distinct !{!2222, !2223, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17haf29ddd56ec7721fE: %self"}
!2223 = distinct !{!2223, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17haf29ddd56ec7721fE"}
!2224 = !{!2225}
!2225 = distinct !{!2225, !2226, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17haf7fb341c01d574eE: %a"}
!2226 = distinct !{!2226, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17haf7fb341c01d574eE"}
!2227 = !{!2228}
!2228 = distinct !{!2228, !2226, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17haf7fb341c01d574eE: %b"}
!2229 = !{!2230}
!2230 = distinct !{!2230, !2231, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a"}
!2231 = distinct !{!2231, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E"}
!2232 = !{!2233}
!2233 = distinct !{!2233, !2231, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b"}
!2234 = !{!2235}
!2235 = distinct !{!2235, !2236, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0"}
!2236 = distinct !{!2236, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E"}
!2237 = !{!2238}
!2238 = distinct !{!2238, !2236, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1"}
!2239 = !{!2240}
!2240 = distinct !{!2240, !2241, !"cmpfunc: %a"}
!2241 = distinct !{!2241, !"cmpfunc"}
!2242 = !{!2243}
!2243 = distinct !{!2243, !2241, !"cmpfunc: %b"}
!2244 = !{!2245}
!2245 = distinct !{!2245, !2246, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2246 = distinct !{!2246, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2247 = !{!2248}
!2248 = distinct !{!2248, !2246, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2249 = !{!2245, !2240, !2235, !2230, !2228}
!2250 = !{!2248, !2243, !2238, !2233, !2225}
!2251 = !{!2252}
!2252 = distinct !{!2252, !2253, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17haf29ddd56ec7721fE: %self"}
!2253 = distinct !{!2253, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17haf29ddd56ec7721fE"}
!2254 = !{!2255}
!2255 = distinct !{!2255, !2256, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17haf7fb341c01d574eE: %a"}
!2256 = distinct !{!2256, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17haf7fb341c01d574eE"}
!2257 = !{!2258}
!2258 = distinct !{!2258, !2256, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17haf7fb341c01d574eE: %b"}
!2259 = !{!2260}
!2260 = distinct !{!2260, !2261, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a"}
!2261 = distinct !{!2261, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E"}
!2262 = !{!2263}
!2263 = distinct !{!2263, !2261, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b"}
!2264 = !{!2265}
!2265 = distinct !{!2265, !2266, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0"}
!2266 = distinct !{!2266, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E"}
!2267 = !{!2268}
!2268 = distinct !{!2268, !2266, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1"}
!2269 = !{!2270}
!2270 = distinct !{!2270, !2271, !"cmpfunc: %a"}
!2271 = distinct !{!2271, !"cmpfunc"}
!2272 = !{!2273}
!2273 = distinct !{!2273, !2271, !"cmpfunc: %b"}
!2274 = !{!2275}
!2275 = distinct !{!2275, !2276, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2276 = distinct !{!2276, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2277 = !{!2278}
!2278 = distinct !{!2278, !2276, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2279 = !{!2275, !2270, !2265, !2260, !2258}
!2280 = !{!2278, !2273, !2268, !2263, !2255}
!2281 = !{!2282}
!2282 = distinct !{!2282, !2283, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17haf29ddd56ec7721fE: %self"}
!2283 = distinct !{!2283, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17haf29ddd56ec7721fE"}
!2284 = !{!2285}
!2285 = distinct !{!2285, !2286, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17haf7fb341c01d574eE: %a"}
!2286 = distinct !{!2286, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17haf7fb341c01d574eE"}
!2287 = !{!2288}
!2288 = distinct !{!2288, !2286, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17haf7fb341c01d574eE: %b"}
!2289 = !{!2290}
!2290 = distinct !{!2290, !2291, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a"}
!2291 = distinct !{!2291, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E"}
!2292 = !{!2293}
!2293 = distinct !{!2293, !2291, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b"}
!2294 = !{!2295}
!2295 = distinct !{!2295, !2296, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0"}
!2296 = distinct !{!2296, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E"}
!2297 = !{!2298}
!2298 = distinct !{!2298, !2296, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1"}
!2299 = !{!2300}
!2300 = distinct !{!2300, !2301, !"cmpfunc: %a"}
!2301 = distinct !{!2301, !"cmpfunc"}
!2302 = !{!2303}
!2303 = distinct !{!2303, !2301, !"cmpfunc: %b"}
!2304 = !{!2305}
!2305 = distinct !{!2305, !2306, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2306 = distinct !{!2306, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2307 = !{!2308}
!2308 = distinct !{!2308, !2306, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2309 = !{!2305, !2300, !2295, !2290, !2288}
!2310 = !{!2308, !2303, !2298, !2293, !2285}
!2311 = !{!2312}
!2312 = distinct !{!2312, !2313, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17haf29ddd56ec7721fE: %self"}
!2313 = distinct !{!2313, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17haf29ddd56ec7721fE"}
!2314 = !{!2315}
!2315 = distinct !{!2315, !2316, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17haf29ddd56ec7721fE: %self"}
!2316 = distinct !{!2316, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17haf29ddd56ec7721fE"}
!2317 = distinct !{!2317, !2163}
!2318 = !{!2319}
!2319 = distinct !{!2319, !2320, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 0"}
!2320 = distinct !{!2320, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E"}
!2321 = !{!2322}
!2322 = distinct !{!2322, !2320, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 1"}
!2323 = !{!2324}
!2324 = distinct !{!2324, !2325, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %self"}
!2325 = distinct !{!2325, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E"}
!2326 = !{!2327}
!2327 = distinct !{!2327, !2325, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %other"}
!2328 = !{!2329}
!2329 = distinct !{!2329, !2330, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %self"}
!2330 = distinct !{!2330, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE"}
!2331 = !{!2332}
!2332 = distinct !{!2332, !2330, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %other"}
!2333 = !{!2334}
!2334 = distinct !{!2334, !2335, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %self"}
!2335 = distinct !{!2335, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE"}
!2336 = !{!2337}
!2337 = distinct !{!2337, !2335, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %other"}
!2338 = !{!2334, !2329, !2324, !2319}
!2339 = !{!2337, !2332, !2327, !2322}
!2340 = !{!2341, !2343, !2344, !2346}
!2341 = distinct !{!2341, !2342, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E: %left.0"}
!2342 = distinct !{!2342, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E"}
!2343 = distinct !{!2343, !2342, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E: %right.0"}
!2344 = distinct !{!2344, !2345, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E: %left.0"}
!2345 = distinct !{!2345, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E"}
!2346 = distinct !{!2346, !2345, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E: %right.0"}
!2347 = !{!2334, !2337, !2329, !2332, !2324, !2327, !2319, !2322}
!2348 = !{!2349}
!2349 = distinct !{!2349, !2350, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h853fe1197b1ea66aE: %self"}
!2350 = distinct !{!2350, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h853fe1197b1ea66aE"}
!2351 = !{!2352}
!2352 = distinct !{!2352, !2353, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h853fe1197b1ea66aE: %self"}
!2353 = distinct !{!2353, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h853fe1197b1ea66aE"}
!2354 = !{!2355}
!2355 = distinct !{!2355, !2356, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hcb346b6138321484E: %a"}
!2356 = distinct !{!2356, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hcb346b6138321484E"}
!2357 = !{!2358}
!2358 = distinct !{!2358, !2356, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hcb346b6138321484E: %b"}
!2359 = !{!2360}
!2360 = distinct !{!2360, !2361, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 0"}
!2361 = distinct !{!2361, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E"}
!2362 = !{!2363}
!2363 = distinct !{!2363, !2361, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 1"}
!2364 = !{!2365}
!2365 = distinct !{!2365, !2366, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %self"}
!2366 = distinct !{!2366, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E"}
!2367 = !{!2368}
!2368 = distinct !{!2368, !2366, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %other"}
!2369 = !{!2370}
!2370 = distinct !{!2370, !2371, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %self"}
!2371 = distinct !{!2371, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE"}
!2372 = !{!2373}
!2373 = distinct !{!2373, !2371, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %other"}
!2374 = !{!2375}
!2375 = distinct !{!2375, !2376, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %self"}
!2376 = distinct !{!2376, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE"}
!2377 = !{!2378}
!2378 = distinct !{!2378, !2376, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %other"}
!2379 = !{!2375, !2370, !2365, !2360, !2358}
!2380 = !{!2378, !2373, !2368, !2363, !2355}
!2381 = !{!2382, !2384, !2385, !2387}
!2382 = distinct !{!2382, !2383, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E: %left.0"}
!2383 = distinct !{!2383, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E"}
!2384 = distinct !{!2384, !2383, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E: %right.0"}
!2385 = distinct !{!2385, !2386, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E: %left.0"}
!2386 = distinct !{!2386, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E"}
!2387 = distinct !{!2387, !2386, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E: %right.0"}
!2388 = !{!2375, !2378, !2370, !2373, !2365, !2368, !2360, !2363, !2355, !2358}
!2389 = !{!2390}
!2390 = distinct !{!2390, !2391, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h853fe1197b1ea66aE: %self"}
!2391 = distinct !{!2391, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h853fe1197b1ea66aE"}
!2392 = !{!2393}
!2393 = distinct !{!2393, !2394, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h853fe1197b1ea66aE: %self"}
!2394 = distinct !{!2394, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h853fe1197b1ea66aE"}
!2395 = !{!2396}
!2396 = distinct !{!2396, !2397, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h60f1f4f039a5481fE: %v.0"}
!2397 = distinct !{!2397, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h60f1f4f039a5481fE"}
!2398 = !{!2399}
!2399 = distinct !{!2399, !2400, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 0"}
!2400 = distinct !{!2400, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E"}
!2401 = !{!2402}
!2402 = distinct !{!2402, !2400, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 1"}
!2403 = !{!2404}
!2404 = distinct !{!2404, !2405, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %self"}
!2405 = distinct !{!2405, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E"}
!2406 = !{!2407}
!2407 = distinct !{!2407, !2408, !"_ZN4core5slice4sort6shared5pivot7median317h22c231397570fc7bE: %c"}
!2408 = distinct !{!2408, !"_ZN4core5slice4sort6shared5pivot7median317h22c231397570fc7bE"}
!2409 = !{!2410}
!2410 = distinct !{!2410, !2405, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %other"}
!2411 = !{!2412}
!2412 = distinct !{!2412, !2413, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %self"}
!2413 = distinct !{!2413, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE"}
!2414 = !{!2415}
!2415 = distinct !{!2415, !2413, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %other"}
!2416 = !{!2417}
!2417 = distinct !{!2417, !2418, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %self"}
!2418 = distinct !{!2418, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE"}
!2419 = !{!2420}
!2420 = distinct !{!2420, !2418, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %other"}
!2421 = !{!2417, !2412, !2404, !2399, !2396}
!2422 = !{!2420, !2415, !2410, !2402, !2407, !2423}
!2423 = distinct !{!2423, !2397, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h60f1f4f039a5481fE: %is_less"}
!2424 = !{!2420, !2415, !2410, !2402, !2396}
!2425 = !{!2417, !2412, !2404, !2399, !2407, !2423}
!2426 = !{!2427, !2429, !2430, !2432}
!2427 = distinct !{!2427, !2428, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E: %left.0"}
!2428 = distinct !{!2428, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E"}
!2429 = distinct !{!2429, !2428, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E: %right.0"}
!2430 = distinct !{!2430, !2431, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E: %left.0"}
!2431 = distinct !{!2431, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E"}
!2432 = distinct !{!2432, !2431, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E: %right.0"}
!2433 = !{!2417, !2420, !2412, !2415, !2404, !2410, !2399, !2402, !2407, !2396, !2423}
!2434 = !{!2435}
!2435 = distinct !{!2435, !2436, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 1"}
!2436 = distinct !{!2436, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E"}
!2437 = !{!2438}
!2438 = distinct !{!2438, !2439, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %other"}
!2439 = distinct !{!2439, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E"}
!2440 = !{!2441}
!2441 = distinct !{!2441, !2442, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %other"}
!2442 = distinct !{!2442, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE"}
!2443 = !{!2444}
!2444 = distinct !{!2444, !2445, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %other"}
!2445 = distinct !{!2445, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE"}
!2446 = !{!2444, !2441, !2438, !2435, !2396}
!2447 = !{!2448, !2449, !2450, !2451, !2423}
!2448 = distinct !{!2448, !2445, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %self"}
!2449 = distinct !{!2449, !2442, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %self"}
!2450 = distinct !{!2450, !2439, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %self"}
!2451 = distinct !{!2451, !2436, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 0"}
!2452 = !{!2453, !2455, !2456, !2458}
!2453 = distinct !{!2453, !2454, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E: %left.0"}
!2454 = distinct !{!2454, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E"}
!2455 = distinct !{!2455, !2454, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E: %right.0"}
!2456 = distinct !{!2456, !2457, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E: %left.0"}
!2457 = distinct !{!2457, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E"}
!2458 = distinct !{!2458, !2457, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E: %right.0"}
!2459 = !{!2448, !2444, !2449, !2441, !2450, !2438, !2451, !2435, !2396, !2423}
!2460 = !{!2461, !2463, !2464, !2466}
!2461 = distinct !{!2461, !2462, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E: %left.0"}
!2462 = distinct !{!2462, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E"}
!2463 = distinct !{!2463, !2462, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E: %right.0"}
!2464 = distinct !{!2464, !2465, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E: %left.0"}
!2465 = distinct !{!2465, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E"}
!2466 = distinct !{!2466, !2465, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E: %right.0"}
!2467 = !{!2468, !2470, !2471, !2473, !2474, !2476, !2477, !2479, !2396, !2423}
!2468 = distinct !{!2468, !2469, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %self"}
!2469 = distinct !{!2469, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE"}
!2470 = distinct !{!2470, !2469, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %other"}
!2471 = distinct !{!2471, !2472, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %self"}
!2472 = distinct !{!2472, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE"}
!2473 = distinct !{!2473, !2472, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %other"}
!2474 = distinct !{!2474, !2475, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %self"}
!2475 = distinct !{!2475, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E"}
!2476 = distinct !{!2476, !2475, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %other"}
!2477 = distinct !{!2477, !2478, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 0"}
!2478 = distinct !{!2478, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E"}
!2479 = distinct !{!2479, !2478, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 1"}
!2480 = !{!2481}
!2481 = distinct !{!2481, !2482, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 0"}
!2482 = distinct !{!2482, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E"}
!2483 = !{!2484}
!2484 = distinct !{!2484, !2482, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 1"}
!2485 = !{!2486}
!2486 = distinct !{!2486, !2487, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %self"}
!2487 = distinct !{!2487, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E"}
!2488 = !{!2489}
!2489 = distinct !{!2489, !2487, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %other"}
!2490 = !{!2491}
!2491 = distinct !{!2491, !2492, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %self"}
!2492 = distinct !{!2492, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE"}
!2493 = !{!2494}
!2494 = distinct !{!2494, !2492, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %other"}
!2495 = !{!2496}
!2496 = distinct !{!2496, !2497, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %self"}
!2497 = distinct !{!2497, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE"}
!2498 = !{!2499}
!2499 = distinct !{!2499, !2497, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %other"}
!2500 = !{!2496, !2491, !2486, !2481}
!2501 = !{!2499, !2494, !2489, !2484}
!2502 = !{!2503, !2505, !2506, !2508}
!2503 = distinct !{!2503, !2504, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E: %left.0"}
!2504 = distinct !{!2504, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E"}
!2505 = distinct !{!2505, !2504, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E: %right.0"}
!2506 = distinct !{!2506, !2507, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E: %left.0"}
!2507 = distinct !{!2507, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E"}
!2508 = distinct !{!2508, !2507, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E: %right.0"}
!2509 = !{!2496, !2499, !2491, !2494, !2486, !2489, !2481, !2484}
!2510 = !{!2511}
!2511 = distinct !{!2511, !2512, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h7194912e7af17dfcE: %v.0"}
!2512 = distinct !{!2512, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h7194912e7af17dfcE"}
!2513 = !{!2514}
!2514 = distinct !{!2514, !2512, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h7194912e7af17dfcE: %scratch.0"}
!2515 = !{!2516}
!2516 = distinct !{!2516, !2517, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 0"}
!2517 = distinct !{!2517, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E"}
!2518 = !{!2519}
!2519 = distinct !{!2519, !2517, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 1"}
!2520 = !{!2521}
!2521 = distinct !{!2521, !2522, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %self"}
!2522 = distinct !{!2522, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E"}
!2523 = !{!2524}
!2524 = distinct !{!2524, !2522, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %other"}
!2525 = !{!2526}
!2526 = distinct !{!2526, !2527, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %self"}
!2527 = distinct !{!2527, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE"}
!2528 = !{!2529}
!2529 = distinct !{!2529, !2527, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %other"}
!2530 = !{!2531}
!2531 = distinct !{!2531, !2532, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %self"}
!2532 = distinct !{!2532, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE"}
!2533 = !{!2534}
!2534 = distinct !{!2534, !2532, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %other"}
!2535 = !{!2531, !2526, !2521, !2516, !2511}
!2536 = !{!2534, !2529, !2524, !2519, !2514}
!2537 = !{!2534, !2529, !2524, !2519, !2511}
!2538 = !{!2531, !2526, !2521, !2516, !2514}
!2539 = !{!2540, !2542, !2543, !2545}
!2540 = distinct !{!2540, !2541, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E: %left.0"}
!2541 = distinct !{!2541, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E"}
!2542 = distinct !{!2542, !2541, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E: %right.0"}
!2543 = distinct !{!2543, !2544, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E: %left.0"}
!2544 = distinct !{!2544, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E"}
!2545 = distinct !{!2545, !2544, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E: %right.0"}
!2546 = !{!2531, !2534, !2526, !2529, !2521, !2524, !2516, !2519, !2511, !2514}
!2547 = !{!2511, !2514}
!2548 = !{!2549}
!2549 = distinct !{!2549, !2550, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h853fe1197b1ea66aE: %self"}
!2550 = distinct !{!2550, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h853fe1197b1ea66aE"}
!2551 = !{!2552}
!2552 = distinct !{!2552, !2553, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h853fe1197b1ea66aE: %self"}
!2553 = distinct !{!2553, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h853fe1197b1ea66aE"}
!2554 = !{!2555, !2557}
!2555 = distinct !{!2555, !2556, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h4435b8972d6cd45dE: %pair"}
!2556 = distinct !{!2556, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h4435b8972d6cd45dE"}
!2557 = distinct !{!2557, !2556, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h4435b8972d6cd45dE: %self.0"}
!2558 = !{!2559}
!2559 = distinct !{!2559, !2560, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17hb669f6af3ca404a3E: %v.0"}
!2560 = distinct !{!2560, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17hb669f6af3ca404a3E"}
!2561 = !{!2562}
!2562 = distinct !{!2562, !2560, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17hb669f6af3ca404a3E: %scratch.0"}
!2563 = !{!2564}
!2564 = distinct !{!2564, !2565, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hcb346b6138321484E: %a"}
!2565 = distinct !{!2565, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hcb346b6138321484E"}
!2566 = !{!2567}
!2567 = distinct !{!2567, !2565, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hcb346b6138321484E: %b"}
!2568 = !{!2569}
!2569 = distinct !{!2569, !2570, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 0"}
!2570 = distinct !{!2570, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E"}
!2571 = !{!2572}
!2572 = distinct !{!2572, !2570, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 1"}
!2573 = !{!2574}
!2574 = distinct !{!2574, !2575, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %self"}
!2575 = distinct !{!2575, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E"}
!2576 = !{!2577}
!2577 = distinct !{!2577, !2575, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %other"}
!2578 = !{!2579}
!2579 = distinct !{!2579, !2580, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %self"}
!2580 = distinct !{!2580, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE"}
!2581 = !{!2582}
!2582 = distinct !{!2582, !2580, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %other"}
!2583 = !{!2584}
!2584 = distinct !{!2584, !2585, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %self"}
!2585 = distinct !{!2585, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE"}
!2586 = !{!2587}
!2587 = distinct !{!2587, !2585, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %other"}
!2588 = !{!2584, !2579, !2574, !2569, !2567, !2559}
!2589 = !{!2587, !2582, !2577, !2572, !2564, !2562}
!2590 = !{!2587, !2582, !2577, !2572, !2564, !2559}
!2591 = !{!2584, !2579, !2574, !2569, !2567, !2562}
!2592 = !{!2593, !2595, !2596, !2598}
!2593 = distinct !{!2593, !2594, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E: %left.0"}
!2594 = distinct !{!2594, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E"}
!2595 = distinct !{!2595, !2594, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E: %right.0"}
!2596 = distinct !{!2596, !2597, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E: %left.0"}
!2597 = distinct !{!2597, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E"}
!2598 = distinct !{!2598, !2597, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E: %right.0"}
!2599 = !{!2584, !2587, !2579, !2582, !2574, !2577, !2569, !2572, !2564, !2567, !2559, !2562}
!2600 = !{!2559, !2562}
!2601 = !{!2602}
!2602 = distinct !{!2602, !2603, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h853fe1197b1ea66aE: %self"}
!2603 = distinct !{!2603, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h853fe1197b1ea66aE"}
!2604 = !{!2605}
!2605 = distinct !{!2605, !2606, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h853fe1197b1ea66aE: %self"}
!2606 = distinct !{!2606, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h853fe1197b1ea66aE"}
!2607 = !{!2608}
!2608 = distinct !{!2608, !2609, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a"}
!2609 = distinct !{!2609, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E"}
!2610 = !{!2611}
!2611 = distinct !{!2611, !2609, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b"}
!2612 = !{!2613}
!2613 = distinct !{!2613, !2614, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0"}
!2614 = distinct !{!2614, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E"}
!2615 = !{!2616}
!2616 = distinct !{!2616, !2617, !"_ZN4core5slice4sort6shared5pivot7median317h068dee1cc059cbf5E: %c"}
!2617 = distinct !{!2617, !"_ZN4core5slice4sort6shared5pivot7median317h068dee1cc059cbf5E"}
!2618 = !{!2619}
!2619 = distinct !{!2619, !2614, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1"}
!2620 = !{!2621}
!2621 = distinct !{!2621, !2622, !"cmpfunc: %a"}
!2622 = distinct !{!2622, !"cmpfunc"}
!2623 = !{!2624}
!2624 = distinct !{!2624, !2622, !"cmpfunc: %b"}
!2625 = !{!2626}
!2626 = distinct !{!2626, !2627, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2627 = distinct !{!2627, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2628 = !{!2629}
!2629 = distinct !{!2629, !2627, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2630 = !{!2626, !2621, !2613, !2608, !2631}
!2631 = distinct !{!2631, !2632, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17hcdbe6da45425f3e4E: %v.0"}
!2632 = distinct !{!2632, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17hcdbe6da45425f3e4E"}
!2633 = !{!2629, !2624, !2619, !2611, !2616, !2634}
!2634 = distinct !{!2634, !2632, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17hcdbe6da45425f3e4E: %is_less"}
!2635 = !{!2629, !2624, !2619, !2611, !2631}
!2636 = !{!2626, !2621, !2613, !2608, !2616, !2634}
!2637 = !{!2638, !2640, !2642, !2644, !2631}
!2638 = distinct !{!2638, !2639, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2639 = distinct !{!2639, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2640 = distinct !{!2640, !2641, !"cmpfunc: %b"}
!2641 = distinct !{!2641, !"cmpfunc"}
!2642 = distinct !{!2642, !2643, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1"}
!2643 = distinct !{!2643, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E"}
!2644 = distinct !{!2644, !2645, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b"}
!2645 = distinct !{!2645, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E"}
!2646 = !{!2647, !2648, !2649, !2650, !2634}
!2647 = distinct !{!2647, !2639, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2648 = distinct !{!2648, !2641, !"cmpfunc: %a"}
!2649 = distinct !{!2649, !2643, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0"}
!2650 = distinct !{!2650, !2645, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a"}
!2651 = !{!2652, !2654, !2656, !2658}
!2652 = distinct !{!2652, !2653, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2653 = distinct !{!2653, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2654 = distinct !{!2654, !2655, !"cmpfunc: %a"}
!2655 = distinct !{!2655, !"cmpfunc"}
!2656 = distinct !{!2656, !2657, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0"}
!2657 = distinct !{!2657, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E"}
!2658 = distinct !{!2658, !2659, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a"}
!2659 = distinct !{!2659, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E"}
!2660 = !{!2661, !2662, !2663, !2664}
!2661 = distinct !{!2661, !2653, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2662 = distinct !{!2662, !2655, !"cmpfunc: %b"}
!2663 = distinct !{!2663, !2657, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1"}
!2664 = distinct !{!2664, !2659, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b"}
!2665 = !{!2666, !2668}
!2666 = distinct !{!2666, !2667, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h57750b98ef4419ecE: %pair"}
!2667 = distinct !{!2667, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h57750b98ef4419ecE"}
!2668 = distinct !{!2668, !2667, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h57750b98ef4419ecE: %self.0"}
!2669 = !{!2670, !2672}
!2670 = distinct !{!2670, !2671, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E: %left.0"}
!2671 = distinct !{!2671, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E"}
!2672 = distinct !{!2672, !2671, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E: %right.0"}
!2673 = !{i64 0, i64 -9223372036854775808}
!2674 = !{!2675}
!2675 = distinct !{!2675, !2676, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2676 = distinct !{!2676, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2677 = !{!2678}
!2678 = distinct !{!2678, !2676, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2679 = !{!2680}
!2680 = distinct !{!2680, !2681, !"_ZN5alloc6string6String3len17hc147619d2ad1db0cE: %self"}
!2681 = distinct !{!2681, !"_ZN5alloc6string6String3len17hc147619d2ad1db0cE"}
!2682 = !{!2683}
!2683 = distinct !{!2683, !2684, !"_ZN5alloc3vec12Vec$LT$T$GT$13with_capacity17hc928b7f9ad73e3d1E: %_0"}
!2684 = distinct !{!2684, !"_ZN5alloc3vec12Vec$LT$T$GT$13with_capacity17hc928b7f9ad73e3d1E"}
!2685 = !{!2686, !2688}
!2686 = distinct !{!2686, !2687, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$12as_mut_slice17h9dd77381289fbdc7E: %self"}
!2687 = distinct !{!2687, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$12as_mut_slice17h9dd77381289fbdc7E"}
!2688 = distinct !{!2688, !2689, !"_ZN75_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h854cdac677096adeE: %self"}
!2689 = distinct !{!2689, !"_ZN75_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h854cdac677096adeE"}
!2690 = !{!2691}
!2691 = distinct !{!2691, !2692, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h90c08e9f316f5eb7E: %self.0"}
!2692 = distinct !{!2692, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h90c08e9f316f5eb7E"}
!2693 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!2694 = !{!2695}
!2695 = distinct !{!2695, !2696, !"_ZN5alloc6string6String3new17h365994a08ba9cd06E: %_0"}
!2696 = distinct !{!2696, !"_ZN5alloc6string6String3new17h365994a08ba9cd06E"}
!2697 = !{!2698}
!2698 = distinct !{!2698, !2699, !"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha34fe7f7b17dd054E: %self"}
!2699 = distinct !{!2699, !"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha34fe7f7b17dd054E"}
!2700 = !{!2701, !2703}
!2701 = distinct !{!2701, !2702, !"_ZN5alloc6string6String6as_str17h5d0f4124dd88b637E: %self"}
!2702 = distinct !{!2702, !"_ZN5alloc6string6String6as_str17h5d0f4124dd88b637E"}
!2703 = distinct !{!2703, !2704, !"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17hf2dd8c0f474e3d11E: %self"}
!2704 = distinct !{!2704, !"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17hf2dd8c0f474e3d11E"}
!2705 = !{!2706}
!2706 = distinct !{!2706, !2707, !"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hfe698e6e582fce30E: %self"}
!2707 = distinct !{!2707, !"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hfe698e6e582fce30E"}
!2708 = !{!2709, !2711}
!2709 = distinct !{!2709, !2710, !"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E: %slice.0"}
!2710 = distinct !{!2710, !"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E"}
!2711 = distinct !{!2711, !2712, !"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$5index17h7cbc932e0a9173c6E: %slice.0"}
!2712 = distinct !{!2712, !"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$5index17h7cbc932e0a9173c6E"}
!2713 = !{!2714}
!2714 = distinct !{!2714, !2715, !"_ZN45_$LT$T$u20$as$u20$alloc..string..ToString$GT$9to_string17h861ff246b96a8bb3E: %_0"}
!2715 = distinct !{!2715, !"_ZN45_$LT$T$u20$as$u20$alloc..string..ToString$GT$9to_string17h861ff246b96a8bb3E"}
!2716 = !{!2717}
!2717 = distinct !{!2717, !2718, !"_ZN51_$LT$str$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17hf3e4b814fcee6f95E: %_0"}
!2718 = distinct !{!2718, !"_ZN51_$LT$str$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17hf3e4b814fcee6f95E"}
!2719 = !{!2720, !2722, !2717, !2723, !2714, !2724}
!2720 = distinct !{!2720, !2721, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h3abb0e4a9bd2d41dE: %v"}
!2721 = distinct !{!2721, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h3abb0e4a9bd2d41dE"}
!2722 = distinct !{!2722, !2721, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h3abb0e4a9bd2d41dE: %s.0"}
!2723 = distinct !{!2723, !2718, !"_ZN51_$LT$str$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17hf3e4b814fcee6f95E: %self.0"}
!2724 = distinct !{!2724, !2715, !"_ZN45_$LT$T$u20$as$u20$alloc..string..ToString$GT$9to_string17h861ff246b96a8bb3E: %self.0"}
!2725 = !{!2720, !2717, !2714}
!2726 = !{!2717, !2714}
!2727 = !{!2723, !2724}
!2728 = !{!2729, !2731}
!2729 = distinct !{!2729, !2730, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h4bbcb001d6600bd5E: %self"}
!2730 = distinct !{!2730, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h4bbcb001d6600bd5E"}
!2731 = distinct !{!2731, !2732, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hd2ba8b311de680cfE: %self"}
!2732 = distinct !{!2732, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hd2ba8b311de680cfE"}
!2733 = !{!2734, !2735}
!2734 = distinct !{!2734, !2730, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h4bbcb001d6600bd5E: %value"}
!2735 = distinct !{!2735, !2732, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hd2ba8b311de680cfE: %value"}
!2736 = !{!2737}
!2737 = distinct !{!2737, !2738, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h16f9ccc62947ce1cE: %self.0"}
!2738 = distinct !{!2738, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h16f9ccc62947ce1cE"}
!2739 = !{!2740, !2742, !2737}
!2740 = distinct !{!2740, !2741, !"_ZN5alloc5slice11stable_sort17head739209195ddeeE: %v.0"}
!2741 = distinct !{!2741, !"_ZN5alloc5slice11stable_sort17head739209195ddeeE"}
!2742 = distinct !{!2742, !2741, !"_ZN5alloc5slice11stable_sort17head739209195ddeeE: argument 1"}
