; ModuleID = 'LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit.943fd80978e545e7-cgu.0'
source_filename = "LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit.943fd80978e545e7-cgu.0"
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
@alloc_8509a3c87a45bed5fb7d7125d0b4da5e = private unnamed_addr constant [137 x i8] c"/root/es/vert/vert/rust_funcs/cpp_transcoder/LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION/LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit.rs\00", align 1
@alloc_731aaa3b1d0e174abb75650cf8233bd4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_8509a3c87a45bed5fb7d7125d0b4da5e, [16 x i8] c"\88\00\00\00\00\00\00\00\1F\00\00\00\08\00\00\00" }>, align 8
@alloc_ca685516a45432c9ecfc325128ac9b4c = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_8509a3c87a45bed5fb7d7125d0b4da5e, [16 x i8] c"\88\00\00\00\00\00\00\00\1B\00\00\00\18\00\00\00" }>, align 8

; core::ptr::swap_nonoverlapping_bytes::swap_nonoverlapping_chunks
; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17hbdebce9a225c9d09E(ptr noundef captures(none) %x, ptr noundef captures(none) %y, i64 noundef range(i64 1, 0) %chunks) unnamed_addr #0 {
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
define internal fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17heba7bfbe8384b04bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %_1) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %_1)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hf142590ed85ce70dE.exit" unwind label %cleanup.i

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
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #30
  unreachable

bb1.i:                                            ; preds = %cleanup.i
  resume { ptr, i32 } %0

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hf142590ed85ce70dE.exit": ; preds = %start
; call <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %_1)
  ret void
}

; core::ptr::drop_in_place<alloc::vec::Vec<alloc::string::String>>
; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17ha5714b0b3d45e72aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %_1) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf51955c50d115126E"(ptr noalias noundef align 8 dereferenceable(24) %_1)
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
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #30
  unreachable

bb1:                                              ; preds = %cleanup
  resume { ptr, i32 } %0
}

; core::slice::sort::shared::pivot::median3_rec
; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite) uwtable
define noundef nonnull ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hf37be3b880a53badE(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %n, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #2 {
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
  %4 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hf37be3b880a53badE(ptr noundef %0, ptr noundef %_10, ptr noundef %_13, i64 noundef %n84, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  %_16 = getelementptr inbounds nuw i32, ptr %1, i64 %count
  %_18 = getelementptr inbounds nuw i32, ptr %1, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %5 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hf37be3b880a53badE(ptr noundef %1, ptr noundef %_16, ptr noundef %_18, i64 noundef %n84, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  %_20 = getelementptr inbounds nuw i32, ptr %2, i64 %count
  %_22 = getelementptr inbounds nuw i32, ptr %2, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %6 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hf37be3b880a53badE(ptr noundef %2, ptr noundef %_20, ptr noundef %_22, i64 noundef %n84, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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
define noundef nonnull ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hfb09d8ea71499d5cE(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %n, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #3 {
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
  %4 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hfb09d8ea71499d5cE(ptr noundef %0, ptr noundef %_10, ptr noundef %_13, i64 noundef %n84, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  %_16 = getelementptr inbounds nuw %"alloc::string::String", ptr %1, i64 %count
  %_18 = getelementptr inbounds nuw %"alloc::string::String", ptr %1, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %5 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hfb09d8ea71499d5cE(ptr noundef %1, ptr noundef %_16, ptr noundef %_18, i64 noundef %n84, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  %_20 = getelementptr inbounds nuw %"alloc::string::String", ptr %2, i64 %count
  %_22 = getelementptr inbounds nuw %"alloc::string::String", ptr %2, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %6 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hfb09d8ea71499d5cE(ptr noundef %2, ptr noundef %_20, ptr noundef %_22, i64 noundef %n84, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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
  %spec.store.select.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %len1.i.i.i.i, i64 range(i64 0, -9223372036854775808) %11)
  %12 = tail call i32 @memcmp(ptr nonnull readonly align 1 %_7.i.i.i.i, ptr nonnull readonly align 1 %_14.i.i.i.i, i64 %spec.store.select.i.i.i.i.i), !alias.scope !81, !noalias !85
  %13 = sext i32 %12 to i64
  %_15.i.i.i.i.i = icmp eq i32 %12, 0
  %diff.i.i.i.i.i = sub nsw i64 %len1.i.i.i.i, %11
  %spec.select.i.i.i.i.i = select i1 %_15.i.i.i.i.i, i64 %diff.i.i.i.i.i, i64 %13
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95)
  %14 = getelementptr inbounds nuw i8, ptr %c.sroa.0.0, i64 8
  %_14.i.i.i.i7 = load ptr, ptr %14, align 8, !alias.scope !98, !noalias !99, !nonnull !37, !noundef !37
  %15 = getelementptr inbounds nuw i8, ptr %c.sroa.0.0, i64 16
  %16 = load i64, ptr %15, align 8, !alias.scope !98, !noalias !99, !noundef !37
  %spec.store.select.i.i.i.i.i8 = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %len1.i.i.i.i, i64 range(i64 0, -9223372036854775808) %16)
  %17 = tail call i32 @memcmp(ptr nonnull readonly align 1 %_7.i.i.i.i, ptr nonnull readonly align 1 %_14.i.i.i.i7, i64 %spec.store.select.i.i.i.i.i8), !alias.scope !104, !noalias !108
  %18 = sext i32 %17 to i64
  %_15.i.i.i.i.i9 = icmp eq i32 %17, 0
  %diff.i.i.i.i.i10 = sub nsw i64 %len1.i.i.i.i, %16
  %spec.select.i.i.i.i.i11 = select i1 %_15.i.i.i.i.i9, i64 %diff.i.i.i.i.i10, i64 %18
  %19 = xor i64 %spec.select.i.i.i.i.i11, %spec.select.i.i.i.i.i
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %_ZN4core5slice4sort6shared5pivot7median317h0e5bc2dbc1971a6eE.exit, label %bb3.i

bb3.i:                                            ; preds = %bb6
  %spec.store.select.i.i.i.i.i16 = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %11, i64 range(i64 0, -9223372036854775808) %16)
  %21 = tail call i32 @memcmp(ptr nonnull readonly align 1 %_14.i.i.i.i, ptr nonnull readonly align 1 %_14.i.i.i.i7, i64 %spec.store.select.i.i.i.i.i16), !alias.scope !109, !noalias !113
  %22 = sext i32 %21 to i64
  %_15.i.i.i.i.i17 = icmp eq i32 %21, 0
  %diff.i.i.i.i.i18 = sub nsw i64 %11, %16
  %spec.select.i.i.i.i.i19 = select i1 %_15.i.i.i.i.i17, i64 %diff.i.i.i.i.i18, i64 %22
  %23 = xor i64 %spec.select.i.i.i.i.i19, %spec.select.i.i.i.i.i
  %_12.i = icmp slt i64 %23, 0
  %c.b.i = select i1 %_12.i, ptr %c.sroa.0.0, ptr %b.sroa.0.0
  br label %_ZN4core5slice4sort6shared5pivot7median317h0e5bc2dbc1971a6eE.exit

_ZN4core5slice4sort6shared5pivot7median317h0e5bc2dbc1971a6eE.exit: ; preds = %bb6, %bb3.i
  %_0.sroa.0.0.i = phi ptr [ %a.sroa.0.0, %bb6 ], [ %c.b.i, %bb3.i ]
  ret ptr %_0.sroa.0.0.i
}

; core::slice::sort::shared::smallsort::insert_tail
; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core5slice4sort6shared9smallsort11insert_tail17h33c1c8880b2fd19dE(ptr noundef readnone captures(address) %begin, ptr noundef captures(address) %tail, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %0 = getelementptr inbounds i8, ptr %tail, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !126)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !131)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !139)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !141)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !144)
  %_3.i.i.i.i = load i32, ptr %tail, align 4, !alias.scope !146, !noalias !147, !noundef !37
  %_4.i.i.i.i = load i32, ptr %0, align 4, !alias.scope !147, !noalias !146, !noundef !37
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
  %_4.i.i.i.i2 = load i32, ptr %2, align 4, !alias.scope !148, !noalias !157, !noundef !37
  %_0.i3 = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i2
  br i1 %_0.i3, label %bb4, label %bb10

bb10:                                             ; preds = %bb6, %bb4
  store i32 %_3.i.i.i.i, ptr %sift.sroa.0.0, align 4, !noalias !162
  br label %bb12
}

; core::slice::sort::shared::smallsort::insert_tail
; Function Attrs: nofree norecurse nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core5slice4sort6shared9smallsort11insert_tail17h8519b9f909450705E(ptr noundef readnone captures(address) %begin, ptr noundef captures(address) %tail, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #4 personality ptr @rust_eh_personality {
start:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !167)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !170)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !172)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !175)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !177)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !180)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !182)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !185)
  %0 = getelementptr inbounds nuw i8, ptr %tail, i64 8
  %_7.i.i.i.i = load ptr, ptr %0, align 8, !alias.scope !187, !noalias !188, !nonnull !37, !noundef !37
  %1 = getelementptr inbounds nuw i8, ptr %tail, i64 16
  %len1.i.i.i.i = load i64, ptr %1, align 8, !alias.scope !187, !noalias !188, !noundef !37
  %2 = getelementptr inbounds i8, ptr %tail, i64 -16
  %_14.i.i.i.i = load ptr, ptr %2, align 8, !alias.scope !188, !noalias !187, !nonnull !37, !noundef !37
  %3 = getelementptr inbounds i8, ptr %tail, i64 -8
  %4 = load i64, ptr %3, align 8, !alias.scope !188, !noalias !187, !noundef !37
  %spec.store.select.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %len1.i.i.i.i, i64 range(i64 0, -9223372036854775808) %4)
  %5 = tail call i32 @memcmp(ptr nonnull readonly align 1 %_7.i.i.i.i, ptr nonnull readonly align 1 %_14.i.i.i.i, i64 %spec.store.select.i.i.i.i.i), !alias.scope !189, !noalias !193
  %6 = sext i32 %5 to i64
  %_15.i.i.i.i.i = icmp eq i32 %5, 0
  %diff.i.i.i.i.i = sub nsw i64 %len1.i.i.i.i, %4
  %spec.select.i.i.i.i.i = select i1 %_15.i.i.i.i.i, i64 %diff.i.i.i.i.i, i64 %6
  %_0.i = icmp slt i64 %spec.select.i.i.i.i.i, 0
  br i1 %_0.i, label %bb2, label %bb12

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !194)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !197)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !200)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !203)
  %7 = getelementptr inbounds i8, ptr %gap_guard.sroa.5.0, i64 -40
  %_14.i.i.i.i3 = load ptr, ptr %7, align 8, !alias.scope !206, !noalias !207, !nonnull !37, !noundef !37
  %8 = getelementptr inbounds i8, ptr %gap_guard.sroa.5.0, i64 -32
  %9 = load i64, ptr %8, align 8, !alias.scope !206, !noalias !207, !noundef !37
  %spec.store.select.i.i.i.i.i4 = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %value.sroa.5.0.copyload, i64 range(i64 0, -9223372036854775808) %9)
  %10 = tail call i32 @memcmp(ptr nonnull readonly align 1 %value.sroa.4.0.copyload, ptr nonnull readonly align 1 %_14.i.i.i.i3, i64 %spec.store.select.i.i.i.i.i4), !alias.scope !212, !noalias !216
  %11 = sext i32 %10 to i64
  %_15.i.i.i.i.i5 = icmp eq i32 %10, 0
  %diff.i.i.i.i.i6 = sub nsw i64 %value.sroa.5.0.copyload, %9
  %spec.select.i.i.i.i.i7 = select i1 %_15.i.i.i.i.i5, i64 %diff.i.i.i.i.i6, i64 %11
  %_0.i8 = icmp slt i64 %spec.select.i.i.i.i.i7, 0
  br i1 %_0.i8, label %bb4, label %bb10

bb10:                                             ; preds = %bb6, %bb4
  store i64 %value.sroa.0.0.copyload, ptr %sift.sroa.0.0, align 8, !noalias !217
  %tmp.sroa.4.0.sift.sroa.0.0.lcssa.sroa_idx = getelementptr inbounds i8, ptr %gap_guard.sroa.5.0, i64 -16
  store ptr %value.sroa.4.0.copyload, ptr %tmp.sroa.4.0.sift.sroa.0.0.lcssa.sroa_idx, align 8, !noalias !217
  %tmp.sroa.5.0.sift.sroa.0.0.lcssa.sroa_idx = getelementptr inbounds i8, ptr %gap_guard.sroa.5.0, i64 -8
  store i64 %value.sroa.5.0.copyload, ptr %tmp.sroa.5.0.sift.sroa.0.0.lcssa.sroa_idx, align 8, !noalias !217
  br label %bb12
}

; core::slice::sort::shared::smallsort::sort4_stable
; Function Attrs: mustprogress nofree norecurse nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h3f04cd941118cad7E(ptr noundef readonly captures(none) %v_base, ptr noundef writeonly captures(none) initializes((0, 96)) %dst, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #5 personality ptr @rust_eh_personality {
start:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !222)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !225)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !227)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !230)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !232)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !235)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !237)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !240)
  %0 = getelementptr inbounds nuw i8, ptr %v_base, i64 32
  %_7.i.i.i.i = load ptr, ptr %0, align 8, !alias.scope !242, !noalias !243, !nonnull !37, !noundef !37
  %1 = getelementptr inbounds nuw i8, ptr %v_base, i64 40
  %len1.i.i.i.i = load i64, ptr %1, align 8, !alias.scope !242, !noalias !243, !noundef !37
  %2 = getelementptr inbounds nuw i8, ptr %v_base, i64 8
  %_14.i.i.i.i = load ptr, ptr %2, align 8, !alias.scope !243, !noalias !242, !nonnull !37, !noundef !37
  %3 = getelementptr inbounds nuw i8, ptr %v_base, i64 16
  %4 = load i64, ptr %3, align 8, !alias.scope !243, !noalias !242, !noundef !37
  %spec.store.select.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %len1.i.i.i.i, i64 range(i64 0, -9223372036854775808) %4)
  %5 = tail call i32 @memcmp(ptr nonnull readonly align 1 %_7.i.i.i.i, ptr nonnull readonly align 1 %_14.i.i.i.i, i64 %spec.store.select.i.i.i.i.i), !alias.scope !244, !noalias !248
  %6 = sext i32 %5 to i64
  %_15.i.i.i.i.i = icmp eq i32 %5, 0
  %diff.i.i.i.i.i = sub nsw i64 %len1.i.i.i.i, %4
  %spec.select.i.i.i.i.i = select i1 %_15.i.i.i.i.i, i64 %diff.i.i.i.i.i, i64 %6
  %_0.i = icmp sgt i64 %spec.select.i.i.i.i.i, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !249)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !252)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !254)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !257)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !259)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !262)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !264)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !267)
  %7 = getelementptr inbounds nuw i8, ptr %v_base, i64 80
  %_7.i.i.i.i7 = load ptr, ptr %7, align 8, !alias.scope !269, !noalias !270, !nonnull !37, !noundef !37
  %8 = getelementptr inbounds nuw i8, ptr %v_base, i64 88
  %len1.i.i.i.i8 = load i64, ptr %8, align 8, !alias.scope !269, !noalias !270, !noundef !37
  %9 = getelementptr inbounds nuw i8, ptr %v_base, i64 56
  %_14.i.i.i.i9 = load ptr, ptr %9, align 8, !alias.scope !270, !noalias !269, !nonnull !37, !noundef !37
  %10 = getelementptr inbounds nuw i8, ptr %v_base, i64 64
  %11 = load i64, ptr %10, align 8, !alias.scope !270, !noalias !269, !noundef !37
  %spec.store.select.i.i.i.i.i10 = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %len1.i.i.i.i8, i64 range(i64 0, -9223372036854775808) %11)
  %12 = tail call i32 @memcmp(ptr nonnull readonly align 1 %_7.i.i.i.i7, ptr nonnull readonly align 1 %_14.i.i.i.i9, i64 %spec.store.select.i.i.i.i.i10), !alias.scope !271, !noalias !275
  %13 = sext i32 %12 to i64
  %_15.i.i.i.i.i11 = icmp eq i32 %12, 0
  %diff.i.i.i.i.i12 = sub nsw i64 %len1.i.i.i.i8, %11
  %spec.select.i.i.i.i.i13 = select i1 %_15.i.i.i.i.i11, i64 %diff.i.i.i.i.i12, i64 %13
  %_0.i14 = icmp slt i64 %spec.select.i.i.i.i.i13, 0
  %spec.select.i.i.i.i.i.lobit = lshr i64 %spec.select.i.i.i.i.i, 63
  %a = getelementptr inbounds nuw %"alloc::string::String", ptr %v_base, i64 %spec.select.i.i.i.i.i.lobit
  %count2 = zext i1 %_0.i to i64
  %b = getelementptr inbounds nuw %"alloc::string::String", ptr %v_base, i64 %count2
  %count3 = select i1 %_0.i14, i64 3, i64 2
  %c = getelementptr inbounds nuw %"alloc::string::String", ptr %v_base, i64 %count3
  %count4 = select i1 %_0.i14, i64 2, i64 3
  %d = getelementptr inbounds nuw %"alloc::string::String", ptr %v_base, i64 %count4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !276)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !279)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !281)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !284)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !286)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !289)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !291)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !294)
  %14 = getelementptr inbounds nuw i8, ptr %c, i64 8
  %_7.i.i.i.i15 = load ptr, ptr %14, align 8, !alias.scope !296, !noalias !297, !nonnull !37, !noundef !37
  %15 = getelementptr inbounds nuw i8, ptr %c, i64 16
  %len1.i.i.i.i16 = load i64, ptr %15, align 8, !alias.scope !296, !noalias !297, !noundef !37
  %16 = getelementptr inbounds nuw i8, ptr %a, i64 8
  %_14.i.i.i.i17 = load ptr, ptr %16, align 8, !alias.scope !297, !noalias !296, !nonnull !37, !noundef !37
  %17 = getelementptr inbounds nuw i8, ptr %a, i64 16
  %18 = load i64, ptr %17, align 8, !alias.scope !297, !noalias !296, !noundef !37
  %spec.store.select.i.i.i.i.i18 = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %len1.i.i.i.i16, i64 range(i64 0, -9223372036854775808) %18)
  %19 = tail call i32 @memcmp(ptr nonnull readonly align 1 %_7.i.i.i.i15, ptr nonnull readonly align 1 %_14.i.i.i.i17, i64 %spec.store.select.i.i.i.i.i18), !alias.scope !298, !noalias !302
  %20 = sext i32 %19 to i64
  %_15.i.i.i.i.i19 = icmp eq i32 %19, 0
  %diff.i.i.i.i.i20 = sub nsw i64 %len1.i.i.i.i16, %18
  %spec.select.i.i.i.i.i21 = select i1 %_15.i.i.i.i.i19, i64 %diff.i.i.i.i.i20, i64 %20
  %_0.i22 = icmp slt i64 %spec.select.i.i.i.i.i21, 0
  tail call void @llvm.experimental.noalias.scope.decl(metadata !303)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !306)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !308)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !311)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !313)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !316)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !318)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !321)
  %21 = getelementptr inbounds nuw i8, ptr %d, i64 8
  %_7.i.i.i.i23 = load ptr, ptr %21, align 8, !alias.scope !323, !noalias !324, !nonnull !37, !noundef !37
  %22 = getelementptr inbounds nuw i8, ptr %d, i64 16
  %len1.i.i.i.i24 = load i64, ptr %22, align 8, !alias.scope !323, !noalias !324, !noundef !37
  %23 = getelementptr inbounds nuw i8, ptr %b, i64 8
  %_14.i.i.i.i25 = load ptr, ptr %23, align 8, !alias.scope !324, !noalias !323, !nonnull !37, !noundef !37
  %24 = getelementptr inbounds nuw i8, ptr %b, i64 16
  %25 = load i64, ptr %24, align 8, !alias.scope !324, !noalias !323, !noundef !37
  %spec.store.select.i.i.i.i.i26 = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %len1.i.i.i.i24, i64 range(i64 0, -9223372036854775808) %25)
  %26 = tail call i32 @memcmp(ptr nonnull readonly align 1 %_7.i.i.i.i23, ptr nonnull readonly align 1 %_14.i.i.i.i25, i64 %spec.store.select.i.i.i.i.i26), !alias.scope !325, !noalias !329
  %27 = sext i32 %26 to i64
  %_15.i.i.i.i.i27 = icmp eq i32 %26, 0
  %diff.i.i.i.i.i28 = sub nsw i64 %len1.i.i.i.i24, %25
  %spec.select.i.i.i.i.i29 = select i1 %_15.i.i.i.i.i27, i64 %diff.i.i.i.i.i28, i64 %27
  %_0.i30 = icmp slt i64 %spec.select.i.i.i.i.i29, 0
  %28 = select i1 %_0.i22, ptr %c, ptr %a, !unpredictable !37
  %29 = select i1 %_0.i30, ptr %b, ptr %d, !unpredictable !37
  %30 = select i1 %_0.i30, ptr %c, ptr %b, !unpredictable !37
  %31 = select i1 %_0.i22, ptr %a, ptr %30, !unpredictable !37
  %32 = select i1 %_0.i22, ptr %b, ptr %c, !unpredictable !37
  %33 = select i1 %_0.i30, ptr %d, ptr %32, !unpredictable !37
  tail call void @llvm.experimental.noalias.scope.decl(metadata !330)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !333)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !335)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !338)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !340)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !343)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !345)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !348)
  %34 = getelementptr inbounds nuw i8, ptr %33, i64 8
  %_7.i.i.i.i31 = load ptr, ptr %34, align 8, !alias.scope !350, !noalias !351, !nonnull !37, !noundef !37
  %35 = getelementptr inbounds nuw i8, ptr %33, i64 16
  %len1.i.i.i.i32 = load i64, ptr %35, align 8, !alias.scope !350, !noalias !351, !noundef !37
  %36 = getelementptr inbounds nuw i8, ptr %31, i64 8
  %_14.i.i.i.i33 = load ptr, ptr %36, align 8, !alias.scope !351, !noalias !350, !nonnull !37, !noundef !37
  %37 = getelementptr inbounds nuw i8, ptr %31, i64 16
  %38 = load i64, ptr %37, align 8, !alias.scope !351, !noalias !350, !noundef !37
  %spec.store.select.i.i.i.i.i34 = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %len1.i.i.i.i32, i64 range(i64 0, -9223372036854775808) %38)
  %39 = tail call i32 @memcmp(ptr nonnull readonly align 1 %_7.i.i.i.i31, ptr nonnull readonly align 1 %_14.i.i.i.i33, i64 %spec.store.select.i.i.i.i.i34), !alias.scope !352, !noalias !356
  %40 = sext i32 %39 to i64
  %_15.i.i.i.i.i35 = icmp eq i32 %39, 0
  %diff.i.i.i.i.i36 = sub nsw i64 %len1.i.i.i.i32, %38
  %spec.select.i.i.i.i.i37 = select i1 %_15.i.i.i.i.i35, i64 %diff.i.i.i.i.i36, i64 %40
  %_0.i38 = icmp slt i64 %spec.select.i.i.i.i.i37, 0
  %41 = select i1 %_0.i38, ptr %33, ptr %31, !unpredictable !37
  %42 = select i1 %_0.i38, ptr %31, ptr %33, !unpredictable !37
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %dst, ptr noundef nonnull align 8 dereferenceable(24) %28, i64 24, i1 false)
  %dst5 = getelementptr inbounds nuw i8, ptr %dst, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %dst5, ptr noundef nonnull align 8 dereferenceable(24) %41, i64 24, i1 false)
  %dst6 = getelementptr inbounds nuw i8, ptr %dst, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %dst6, ptr noundef nonnull align 8 dereferenceable(24) %42, i64 24, i1 false)
  %43 = getelementptr inbounds nuw i8, ptr %dst, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %43, ptr noundef nonnull align 8 dereferenceable(24) %29, i64 24, i1 false)
  ret void
}

; core::slice::sort::shared::smallsort::sort4_stable
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h89e3752af30d577dE(ptr noundef readonly captures(none) %v_base, ptr noundef writeonly captures(none) initializes((0, 16)) %dst, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #6 personality ptr @rust_eh_personality {
start:
  %_7 = getelementptr inbounds nuw i8, ptr %v_base, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !357)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !360)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !362)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !365)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !367)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !370)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !372)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !375)
  %_3.i.i.i.i = load i32, ptr %_7, align 4, !alias.scope !377, !noalias !378, !noundef !37
  %_4.i.i.i.i = load i32, ptr %v_base, align 4, !alias.scope !378, !noalias !377, !noundef !37
  %_0.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %_12 = getelementptr inbounds nuw i8, ptr %v_base, i64 12
  %_14 = getelementptr inbounds nuw i8, ptr %v_base, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !379)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !382)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !384)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !387)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !389)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !392)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !394)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !397)
  %_3.i.i.i.i7 = load i32, ptr %_12, align 4, !alias.scope !399, !noalias !400, !noundef !37
  %_4.i.i.i.i8 = load i32, ptr %_14, align 4, !alias.scope !400, !noalias !399, !noundef !37
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !401)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !404)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !406)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !409)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !411)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !414)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !416)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !419)
  %_3.i.i.i.i10 = load i32, ptr %c, align 4, !alias.scope !421, !noalias !422, !noundef !37
  %_4.i.i.i.i11 = load i32, ptr %a, align 4, !alias.scope !422, !noalias !421, !noundef !37
  %_0.i12 = icmp slt i32 %_3.i.i.i.i10, %_4.i.i.i.i11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !423)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !426)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !428)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !431)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !433)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !436)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !438)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !441)
  %_3.i.i.i.i13 = load i32, ptr %d, align 4, !alias.scope !443, !noalias !444, !noundef !37
  %_4.i.i.i.i14 = load i32, ptr %b, align 4, !alias.scope !444, !noalias !443, !noundef !37
  %_0.i15 = icmp slt i32 %_3.i.i.i.i13, %_4.i.i.i.i14
  %0 = select i1 %_0.i12, ptr %c, ptr %a, !unpredictable !37
  %1 = select i1 %_0.i15, ptr %c, ptr %b, !unpredictable !37
  %2 = select i1 %_0.i12, ptr %a, ptr %1, !unpredictable !37
  %3 = select i1 %_0.i12, ptr %b, ptr %c, !unpredictable !37
  %4 = select i1 %_0.i15, ptr %d, ptr %3, !unpredictable !37
  tail call void @llvm.experimental.noalias.scope.decl(metadata !445)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !448)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !450)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !453)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !455)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !458)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !460)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !463)
  %_3.i.i.i.i16 = load i32, ptr %4, align 4, !alias.scope !465, !noalias !466, !noundef !37
  %_4.i.i.i.i17 = load i32, ptr %2, align 4, !alias.scope !466, !noalias !465, !noundef !37
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
define void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h037ef7737253a409E(ptr noundef readonly captures(none) %v_base, ptr noundef writeonly captures(none) initializes((0, 32)) %dst, ptr noundef captures(address) initializes((0, 32)) %scratch_base, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_7.i = getelementptr inbounds nuw i8, ptr %v_base, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !467)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !470)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !472)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !475)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !477)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !480)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !482)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !485)
  %_3.i.i.i.i.i = load i32, ptr %_7.i, align 4, !alias.scope !487, !noalias !488, !noundef !37
  %_4.i.i.i.i.i = load i32, ptr %v_base, align 4, !alias.scope !488, !noalias !487, !noundef !37
  %_0.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %_12.i = getelementptr inbounds nuw i8, ptr %v_base, i64 12
  %_14.i = getelementptr inbounds nuw i8, ptr %v_base, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !489)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !492)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !494)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !497)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !499)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !502)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !504)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !507)
  %_3.i.i.i.i7.i = load i32, ptr %_12.i, align 4, !alias.scope !509, !noalias !510, !noundef !37
  %_4.i.i.i.i8.i = load i32, ptr %_14.i, align 4, !alias.scope !510, !noalias !509, !noundef !37
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !511)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !514)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !516)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !519)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !521)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !524)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !526)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !529)
  %_3.i.i.i.i10.i = load i32, ptr %c.i, align 4, !alias.scope !531, !noalias !532, !noundef !37
  %_4.i.i.i.i11.i = load i32, ptr %a.i, align 4, !alias.scope !532, !noalias !531, !noundef !37
  %_0.i12.i = icmp slt i32 %_3.i.i.i.i10.i, %_4.i.i.i.i11.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !533)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !536)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !538)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !541)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !543)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !546)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !548)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !551)
  %_3.i.i.i.i13.i = load i32, ptr %d.i, align 4, !alias.scope !553, !noalias !554, !noundef !37
  %_4.i.i.i.i14.i = load i32, ptr %b.i, align 4, !alias.scope !554, !noalias !553, !noundef !37
  %_0.i15.i = icmp slt i32 %_3.i.i.i.i13.i, %_4.i.i.i.i14.i
  %0 = select i1 %_0.i12.i, ptr %c.i, ptr %a.i, !unpredictable !37
  %1 = select i1 %_0.i15.i, ptr %c.i, ptr %b.i, !unpredictable !37
  %2 = select i1 %_0.i12.i, ptr %a.i, ptr %1, !unpredictable !37
  %3 = select i1 %_0.i12.i, ptr %b.i, ptr %c.i, !unpredictable !37
  %4 = select i1 %_0.i15.i, ptr %d.i, ptr %3, !unpredictable !37
  tail call void @llvm.experimental.noalias.scope.decl(metadata !555)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !558)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !560)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !563)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !565)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !568)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !570)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !573)
  %_3.i.i.i.i16.i = load i32, ptr %4, align 4, !alias.scope !575, !noalias !576, !noundef !37
  %_4.i.i.i.i17.i = load i32, ptr %2, align 4, !alias.scope !576, !noalias !575, !noundef !37
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !577)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !580)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !582)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !585)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !587)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !590)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !592)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !595)
  %_3.i.i.i.i.i2 = load i32, ptr %_7.i1, align 4, !alias.scope !597, !noalias !598, !noundef !37
  %_4.i.i.i.i.i3 = load i32, ptr %_9, align 4, !alias.scope !598, !noalias !597, !noundef !37
  %_0.i.i4 = icmp slt i32 %_3.i.i.i.i.i2, %_4.i.i.i.i.i3
  %_12.i5 = getelementptr inbounds nuw i8, ptr %v_base, i64 28
  %_14.i6 = getelementptr inbounds nuw i8, ptr %v_base, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !599)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !602)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !604)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !607)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !609)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !612)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !614)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !617)
  %_3.i.i.i.i7.i7 = load i32, ptr %_12.i5, align 4, !alias.scope !619, !noalias !620, !noundef !37
  %_4.i.i.i.i8.i8 = load i32, ptr %_14.i6, align 4, !alias.scope !620, !noalias !619, !noundef !37
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !621)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !624)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !626)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !629)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !631)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !634)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !636)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !639)
  %_3.i.i.i.i10.i19 = load i32, ptr %c.i16, align 4, !alias.scope !641, !noalias !642, !noundef !37
  %_4.i.i.i.i11.i20 = load i32, ptr %a.i11, align 4, !alias.scope !642, !noalias !641, !noundef !37
  %_0.i12.i21 = icmp slt i32 %_3.i.i.i.i10.i19, %_4.i.i.i.i11.i20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !643)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !646)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !648)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !651)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !653)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !656)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !658)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !661)
  %_3.i.i.i.i13.i22 = load i32, ptr %d.i18, align 4, !alias.scope !663, !noalias !664, !noundef !37
  %_4.i.i.i.i14.i23 = load i32, ptr %b.i14, align 4, !alias.scope !664, !noalias !663, !noundef !37
  %_0.i15.i24 = icmp slt i32 %_3.i.i.i.i13.i22, %_4.i.i.i.i14.i23
  %10 = select i1 %_0.i12.i21, ptr %c.i16, ptr %a.i11, !unpredictable !37
  %11 = select i1 %_0.i15.i24, ptr %c.i16, ptr %b.i14, !unpredictable !37
  %12 = select i1 %_0.i12.i21, ptr %a.i11, ptr %11, !unpredictable !37
  %13 = select i1 %_0.i12.i21, ptr %b.i14, ptr %c.i16, !unpredictable !37
  %14 = select i1 %_0.i15.i24, ptr %d.i18, ptr %13, !unpredictable !37
  tail call void @llvm.experimental.noalias.scope.decl(metadata !665)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !668)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !670)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !673)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !675)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !678)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !680)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !683)
  %_3.i.i.i.i16.i25 = load i32, ptr %14, align 4, !alias.scope !685, !noalias !686, !noundef !37
  %_4.i.i.i.i17.i26 = load i32, ptr %12, align 4, !alias.scope !686, !noalias !685, !noundef !37
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !687)
  %20 = getelementptr i8, ptr %scratch_base, i64 12
  %21 = getelementptr inbounds nuw i8, ptr %scratch_base, i64 28
  %22 = getelementptr inbounds nuw i8, ptr %dst, i64 28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !690)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !693)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !695), !noalias !698
  tail call void @llvm.experimental.noalias.scope.decl(metadata !701), !noalias !698
  tail call void @llvm.experimental.noalias.scope.decl(metadata !703), !noalias !698
  tail call void @llvm.experimental.noalias.scope.decl(metadata !706), !noalias !698
  tail call void @llvm.experimental.noalias.scope.decl(metadata !708), !noalias !698
  tail call void @llvm.experimental.noalias.scope.decl(metadata !711), !noalias !698
  %_3.i.i.i.i.i36 = load i32, ptr %_10, align 4, !alias.scope !713, !noalias !714, !noundef !37
  %_4.i.i.i.i.i37 = load i32, ptr %scratch_base, align 4, !alias.scope !715, !noalias !716, !noundef !37
  %_0.i.i38 = icmp slt i32 %_3.i.i.i.i.i36, %_4.i.i.i.i.i37
  %is_l.i18.i = xor i1 %_0.i.i38, true
  %23 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i36, i32 %_4.i.i.i.i.i37)
  store i32 %23, ptr %dst, align 4, !noalias !717
  %count.i.i = zext i1 %_0.i.i38 to i64
  %_12.i.i = getelementptr inbounds nuw i32, ptr %_10, i64 %count.i.i
  %count2.i.i = zext i1 %is_l.i18.i to i64
  %_14.i.i = getelementptr inbounds nuw i32, ptr %scratch_base, i64 %count2.i.i
  %_16.i.i = getelementptr inbounds nuw i8, ptr %dst, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !719)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !722)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !724), !noalias !727
  tail call void @llvm.experimental.noalias.scope.decl(metadata !730), !noalias !727
  tail call void @llvm.experimental.noalias.scope.decl(metadata !732), !noalias !727
  tail call void @llvm.experimental.noalias.scope.decl(metadata !735), !noalias !727
  tail call void @llvm.experimental.noalias.scope.decl(metadata !737), !noalias !727
  tail call void @llvm.experimental.noalias.scope.decl(metadata !740), !noalias !727
  %_3.i.i.i.i19.i = load i32, ptr %21, align 4, !alias.scope !742, !noalias !743, !noundef !37
  %_4.i.i.i.i20.i = load i32, ptr %20, align 4, !alias.scope !744, !noalias !745, !noundef !37
  %_0.i21.i = icmp slt i32 %_3.i.i.i.i19.i, %_4.i.i.i.i20.i
  %is_l.i.i = xor i1 %_0.i21.i, true
  %24 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19.i, i32 %_4.i.i.i.i20.i)
  store i32 %24, ptr %22, align 4, !noalias !746
  %count.neg.i.i = sext i1 %is_l.i.i to i64
  %25 = getelementptr i32, ptr %21, i64 %count.neg.i.i
  %count3.neg.i.i = sext i1 %_0.i21.i to i64
  %26 = getelementptr i32, ptr %20, i64 %count3.neg.i.i
  %27 = getelementptr inbounds nuw i8, ptr %dst, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !748)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !750)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !752), !noalias !698
  tail call void @llvm.experimental.noalias.scope.decl(metadata !754), !noalias !698
  tail call void @llvm.experimental.noalias.scope.decl(metadata !756), !noalias !698
  tail call void @llvm.experimental.noalias.scope.decl(metadata !758), !noalias !698
  tail call void @llvm.experimental.noalias.scope.decl(metadata !760), !noalias !698
  tail call void @llvm.experimental.noalias.scope.decl(metadata !762), !noalias !698
  %_3.i.i.i.i.i36.1 = load i32, ptr %_12.i.i, align 4, !alias.scope !764, !noalias !765, !noundef !37
  %_4.i.i.i.i.i37.1 = load i32, ptr %_14.i.i, align 4, !alias.scope !766, !noalias !767, !noundef !37
  %_0.i.i38.1 = icmp slt i32 %_3.i.i.i.i.i36.1, %_4.i.i.i.i.i37.1
  %is_l.i18.i.1 = xor i1 %_0.i.i38.1, true
  %28 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i36.1, i32 %_4.i.i.i.i.i37.1)
  store i32 %28, ptr %_16.i.i, align 4, !noalias !717
  %count.i.i.1 = zext i1 %_0.i.i38.1 to i64
  %_12.i.i.1 = getelementptr inbounds nuw i32, ptr %_12.i.i, i64 %count.i.i.1
  %count2.i.i.1 = zext i1 %is_l.i18.i.1 to i64
  %_14.i.i.1 = getelementptr inbounds nuw i32, ptr %_14.i.i, i64 %count2.i.i.1
  %_16.i.i.1 = getelementptr inbounds nuw i8, ptr %dst, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !768)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !770)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !772), !noalias !727
  tail call void @llvm.experimental.noalias.scope.decl(metadata !774), !noalias !727
  tail call void @llvm.experimental.noalias.scope.decl(metadata !776), !noalias !727
  tail call void @llvm.experimental.noalias.scope.decl(metadata !778), !noalias !727
  tail call void @llvm.experimental.noalias.scope.decl(metadata !780), !noalias !727
  tail call void @llvm.experimental.noalias.scope.decl(metadata !782), !noalias !727
  %_3.i.i.i.i19.i.1 = load i32, ptr %25, align 4, !alias.scope !784, !noalias !785, !noundef !37
  %_4.i.i.i.i20.i.1 = load i32, ptr %26, align 4, !alias.scope !786, !noalias !787, !noundef !37
  %_0.i21.i.1 = icmp slt i32 %_3.i.i.i.i19.i.1, %_4.i.i.i.i20.i.1
  %is_l.i.i.1 = xor i1 %_0.i21.i.1, true
  %29 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19.i.1, i32 %_4.i.i.i.i20.i.1)
  store i32 %29, ptr %27, align 4, !noalias !746
  %count.neg.i.i.1 = sext i1 %is_l.i.i.1 to i64
  %30 = getelementptr i32, ptr %25, i64 %count.neg.i.i.1
  %count3.neg.i.i.1 = sext i1 %_0.i21.i.1 to i64
  %31 = getelementptr i32, ptr %26, i64 %count3.neg.i.i.1
  %32 = getelementptr inbounds nuw i8, ptr %dst, i64 20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !788)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !790)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !792), !noalias !698
  tail call void @llvm.experimental.noalias.scope.decl(metadata !794), !noalias !698
  tail call void @llvm.experimental.noalias.scope.decl(metadata !796), !noalias !698
  tail call void @llvm.experimental.noalias.scope.decl(metadata !798), !noalias !698
  tail call void @llvm.experimental.noalias.scope.decl(metadata !800), !noalias !698
  tail call void @llvm.experimental.noalias.scope.decl(metadata !802), !noalias !698
  %_3.i.i.i.i.i36.2 = load i32, ptr %_12.i.i.1, align 4, !alias.scope !804, !noalias !805, !noundef !37
  %_4.i.i.i.i.i37.2 = load i32, ptr %_14.i.i.1, align 4, !alias.scope !806, !noalias !807, !noundef !37
  %_0.i.i38.2 = icmp slt i32 %_3.i.i.i.i.i36.2, %_4.i.i.i.i.i37.2
  %is_l.i18.i.2 = xor i1 %_0.i.i38.2, true
  %33 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i36.2, i32 %_4.i.i.i.i.i37.2)
  store i32 %33, ptr %_16.i.i.1, align 4, !noalias !717
  %count.i.i.2 = zext i1 %_0.i.i38.2 to i64
  %_12.i.i.2 = getelementptr inbounds nuw i32, ptr %_12.i.i.1, i64 %count.i.i.2
  %count2.i.i.2 = zext i1 %is_l.i18.i.2 to i64
  %_14.i.i.2 = getelementptr inbounds nuw i32, ptr %_14.i.i.1, i64 %count2.i.i.2
  %_16.i.i.2 = getelementptr inbounds nuw i8, ptr %dst, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !808)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !810)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !812), !noalias !727
  tail call void @llvm.experimental.noalias.scope.decl(metadata !814), !noalias !727
  tail call void @llvm.experimental.noalias.scope.decl(metadata !816), !noalias !727
  tail call void @llvm.experimental.noalias.scope.decl(metadata !818), !noalias !727
  tail call void @llvm.experimental.noalias.scope.decl(metadata !820), !noalias !727
  tail call void @llvm.experimental.noalias.scope.decl(metadata !822), !noalias !727
  %_3.i.i.i.i19.i.2 = load i32, ptr %30, align 4, !alias.scope !824, !noalias !825, !noundef !37
  %_4.i.i.i.i20.i.2 = load i32, ptr %31, align 4, !alias.scope !826, !noalias !827, !noundef !37
  %_0.i21.i.2 = icmp slt i32 %_3.i.i.i.i19.i.2, %_4.i.i.i.i20.i.2
  %is_l.i.i.2 = xor i1 %_0.i21.i.2, true
  %34 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19.i.2, i32 %_4.i.i.i.i20.i.2)
  store i32 %34, ptr %32, align 4, !noalias !746
  %count.neg.i.i.2 = sext i1 %is_l.i.i.2 to i64
  %35 = getelementptr i32, ptr %30, i64 %count.neg.i.i.2
  %count3.neg.i.i.2 = sext i1 %_0.i21.i.2 to i64
  %36 = getelementptr i32, ptr %31, i64 %count3.neg.i.i.2
  %37 = getelementptr inbounds nuw i8, ptr %dst, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !828)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !830)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !832), !noalias !698
  tail call void @llvm.experimental.noalias.scope.decl(metadata !834), !noalias !698
  tail call void @llvm.experimental.noalias.scope.decl(metadata !836), !noalias !698
  tail call void @llvm.experimental.noalias.scope.decl(metadata !838), !noalias !698
  tail call void @llvm.experimental.noalias.scope.decl(metadata !840), !noalias !698
  tail call void @llvm.experimental.noalias.scope.decl(metadata !842), !noalias !698
  %_3.i.i.i.i.i36.3 = load i32, ptr %_12.i.i.2, align 4, !alias.scope !844, !noalias !845, !noundef !37
  %_4.i.i.i.i.i37.3 = load i32, ptr %_14.i.i.2, align 4, !alias.scope !846, !noalias !847, !noundef !37
  %_0.i.i38.3 = icmp slt i32 %_3.i.i.i.i.i36.3, %_4.i.i.i.i.i37.3
  %is_l.i18.i.3 = xor i1 %_0.i.i38.3, true
  %38 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i36.3, i32 %_4.i.i.i.i.i37.3)
  store i32 %38, ptr %_16.i.i.2, align 4, !noalias !717
  %count.i.i.3 = zext i1 %_0.i.i38.3 to i64
  %_12.i.i.3 = getelementptr inbounds nuw i32, ptr %_12.i.i.2, i64 %count.i.i.3
  %count2.i.i.3 = zext i1 %is_l.i18.i.3 to i64
  %_14.i.i.3 = getelementptr inbounds nuw i32, ptr %_14.i.i.2, i64 %count2.i.i.3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !848)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !850)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !852), !noalias !727
  tail call void @llvm.experimental.noalias.scope.decl(metadata !854), !noalias !727
  tail call void @llvm.experimental.noalias.scope.decl(metadata !856), !noalias !727
  tail call void @llvm.experimental.noalias.scope.decl(metadata !858), !noalias !727
  tail call void @llvm.experimental.noalias.scope.decl(metadata !860), !noalias !727
  tail call void @llvm.experimental.noalias.scope.decl(metadata !862), !noalias !727
  %_3.i.i.i.i19.i.3 = load i32, ptr %35, align 4, !alias.scope !864, !noalias !865, !noundef !37
  %_4.i.i.i.i20.i.3 = load i32, ptr %36, align 4, !alias.scope !866, !noalias !867, !noundef !37
  %_0.i21.i.3 = icmp slt i32 %_3.i.i.i.i19.i.3, %_4.i.i.i.i20.i.3
  %is_l.i.i.3 = xor i1 %_0.i21.i.3, true
  %39 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19.i.3, i32 %_4.i.i.i.i20.i.3)
  store i32 %39, ptr %37, align 4, !noalias !746
  %count.neg.i.i.3 = sext i1 %is_l.i.i.3 to i64
  %40 = getelementptr i32, ptr %35, i64 %count.neg.i.i.3
  %count3.neg.i.i.3 = sext i1 %_0.i21.i.3 to i64
  %41 = getelementptr i32, ptr %36, i64 %count3.neg.i.i.3
  %42 = getelementptr i8, ptr %41, i64 4
  %43 = getelementptr i8, ptr %40, i64 4
  %_31.i = icmp ne ptr %_14.i.i.3, %42
  %_32.i = icmp ne ptr %_12.i.i.3, %43
  %or.cond.i = select i1 %_31.i, i1 true, i1 %_32.i
  br i1 %or.cond.i, label %bb13.i, label %_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h5d0d96e883197981E.exit, !prof !868

bb13.i:                                           ; preds = %start
; call core::slice::sort::shared::smallsort::panic_on_ord_violation
  tail call void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #31, !noalias !687
  unreachable

_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h5d0d96e883197981E.exit: ; preds = %start
  ret void
}

; core::slice::sort::shared::smallsort::bidirectional_merge
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h1c07a85081dc43d3E(ptr noalias noundef nonnull readonly align 8 captures(address) %v.0, i64 noundef range(i64 0, 384307168202282326) %v.1, ptr noundef writeonly captures(none) %0, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #1 {
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
  %5 = getelementptr i8, ptr %22, i64 24
  %6 = getelementptr i8, ptr %21, i64 24
  %_44 = and i64 %v.1, 1
  %_22 = icmp eq i64 %_44, 0
  br i1 %_22, label %bb9, label %bb5

bb15:                                             ; preds = %start, %bb15
  %dst.sroa.0.034 = phi ptr [ %_16.i, %bb15 ], [ %0, %start ]
  %iter.sroa.0.033 = phi i64 [ %_39, %bb15 ], [ 0, %start ]
  %left.sroa.0.032 = phi ptr [ %_14.i, %bb15 ], [ %v.0, %start ]
  %right.sroa.0.031 = phi ptr [ %_12.i, %bb15 ], [ %3, %start ]
  %left_rev.sroa.0.030 = phi ptr [ %22, %bb15 ], [ %4, %start ]
  %right_rev.sroa.0.029 = phi ptr [ %21, %bb15 ], [ %2, %start ]
  %dst_rev.sroa.0.028 = phi ptr [ %23, %bb15 ], [ %1, %start ]
  %_39 = add nuw nsw i64 %iter.sroa.0.033, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !869)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !872)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !874), !noalias !877
  tail call void @llvm.experimental.noalias.scope.decl(metadata !880), !noalias !877
  tail call void @llvm.experimental.noalias.scope.decl(metadata !882), !noalias !877
  tail call void @llvm.experimental.noalias.scope.decl(metadata !885), !noalias !877
  tail call void @llvm.experimental.noalias.scope.decl(metadata !887), !noalias !877
  tail call void @llvm.experimental.noalias.scope.decl(metadata !890), !noalias !877
  %7 = getelementptr inbounds nuw i8, ptr %right.sroa.0.031, i64 8
  %_7.i.i.i.i = load ptr, ptr %7, align 8, !alias.scope !892, !noalias !893, !nonnull !37, !noundef !37
  %8 = getelementptr inbounds nuw i8, ptr %right.sroa.0.031, i64 16
  %len1.i.i.i.i = load i64, ptr %8, align 8, !alias.scope !892, !noalias !893, !noundef !37
  %9 = getelementptr inbounds nuw i8, ptr %left.sroa.0.032, i64 8
  %_14.i.i.i.i = load ptr, ptr %9, align 8, !alias.scope !894, !noalias !895, !nonnull !37, !noundef !37
  %10 = getelementptr inbounds nuw i8, ptr %left.sroa.0.032, i64 16
  %11 = load i64, ptr %10, align 8, !alias.scope !894, !noalias !895, !noundef !37
  %spec.store.select.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %len1.i.i.i.i, i64 range(i64 0, -9223372036854775808) %11)
  %12 = tail call i32 @memcmp(ptr nonnull readonly align 1 %_7.i.i.i.i, ptr nonnull readonly align 1 %_14.i.i.i.i, i64 %spec.store.select.i.i.i.i.i), !alias.scope !896, !noalias !900
  %13 = sext i32 %12 to i64
  %_15.i.i.i.i.i = icmp eq i32 %12, 0
  %diff.i.i.i.i.i = sub nsw i64 %len1.i.i.i.i, %11
  %spec.select.i.i.i.i.i = select i1 %_15.i.i.i.i.i, i64 %diff.i.i.i.i.i, i64 %13
  %_0.i = icmp sgt i64 %spec.select.i.i.i.i.i, -1
  %..i17 = select i1 %_0.i, ptr %left.sroa.0.032, ptr %right.sroa.0.031
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %dst.sroa.0.034, ptr noundef nonnull align 8 dereferenceable(24) %..i17, i64 24, i1 false), !noalias !901
  %spec.select.i.i.i.i.i.lobit = lshr i64 %spec.select.i.i.i.i.i, 63
  %_12.i = getelementptr inbounds nuw %"alloc::string::String", ptr %right.sroa.0.031, i64 %spec.select.i.i.i.i.i.lobit
  %count2.i = zext i1 %_0.i to i64
  %_14.i = getelementptr inbounds nuw %"alloc::string::String", ptr %left.sroa.0.032, i64 %count2.i
  %_16.i = getelementptr inbounds nuw i8, ptr %dst.sroa.0.034, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !903)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !906)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !908), !noalias !911
  tail call void @llvm.experimental.noalias.scope.decl(metadata !914), !noalias !911
  tail call void @llvm.experimental.noalias.scope.decl(metadata !916), !noalias !911
  tail call void @llvm.experimental.noalias.scope.decl(metadata !919), !noalias !911
  tail call void @llvm.experimental.noalias.scope.decl(metadata !921), !noalias !911
  tail call void @llvm.experimental.noalias.scope.decl(metadata !924), !noalias !911
  %14 = getelementptr inbounds nuw i8, ptr %right_rev.sroa.0.029, i64 8
  %_7.i.i.i.i19 = load ptr, ptr %14, align 8, !alias.scope !926, !noalias !927, !nonnull !37, !noundef !37
  %15 = getelementptr inbounds nuw i8, ptr %right_rev.sroa.0.029, i64 16
  %len1.i.i.i.i20 = load i64, ptr %15, align 8, !alias.scope !926, !noalias !927, !noundef !37
  %16 = getelementptr inbounds nuw i8, ptr %left_rev.sroa.0.030, i64 8
  %_14.i.i.i.i21 = load ptr, ptr %16, align 8, !alias.scope !928, !noalias !929, !nonnull !37, !noundef !37
  %17 = getelementptr inbounds nuw i8, ptr %left_rev.sroa.0.030, i64 16
  %18 = load i64, ptr %17, align 8, !alias.scope !928, !noalias !929, !noundef !37
  %spec.store.select.i.i.i.i.i22 = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %len1.i.i.i.i20, i64 range(i64 0, -9223372036854775808) %18)
  %19 = tail call i32 @memcmp(ptr nonnull readonly align 1 %_7.i.i.i.i19, ptr nonnull readonly align 1 %_14.i.i.i.i21, i64 %spec.store.select.i.i.i.i.i22), !alias.scope !930, !noalias !934
  %20 = sext i32 %19 to i64
  %_15.i.i.i.i.i23 = icmp eq i32 %19, 0
  %diff.i.i.i.i.i24 = sub nsw i64 %len1.i.i.i.i20, %18
  %spec.select.i.i.i.i.i25 = select i1 %_15.i.i.i.i.i23, i64 %diff.i.i.i.i.i24, i64 %20
  %_0.i26 = icmp sgt i64 %spec.select.i.i.i.i.i25, -1
  %..i = select i1 %_0.i26, ptr %right_rev.sroa.0.029, ptr %left_rev.sroa.0.030
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %dst_rev.sroa.0.028, ptr noundef nonnull align 8 dereferenceable(24) %..i, i64 24, i1 false), !noalias !935
  %count.neg.i = sext i1 %_0.i26 to i64
  %21 = getelementptr %"alloc::string::String", ptr %right_rev.sroa.0.029, i64 %count.neg.i
  %spec.select.i.i.i.i.i25.lobit = ashr i64 %spec.select.i.i.i.i.i25, 63
  %22 = getelementptr %"alloc::string::String", ptr %left_rev.sroa.0.030, i64 %spec.select.i.i.i.i.i25.lobit
  %23 = getelementptr inbounds i8, ptr %dst_rev.sroa.0.028, i64 -24
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
  br i1 %or.cond, label %bb13, label %bb14, !prof !868

bb14:                                             ; preds = %bb9
  ret void

bb13:                                             ; preds = %bb9
; call core::slice::sort::shared::smallsort::panic_on_ord_violation
  tail call void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #31
  unreachable
}

; core::slice::sort::shared::smallsort::bidirectional_merge
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h5d0d96e883197981E(ptr noalias noundef nonnull readonly align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noundef writeonly captures(none) %0, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #1 {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !937)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !940)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !942), !noalias !945
  tail call void @llvm.experimental.noalias.scope.decl(metadata !948), !noalias !945
  tail call void @llvm.experimental.noalias.scope.decl(metadata !950), !noalias !945
  tail call void @llvm.experimental.noalias.scope.decl(metadata !953), !noalias !945
  tail call void @llvm.experimental.noalias.scope.decl(metadata !955), !noalias !945
  tail call void @llvm.experimental.noalias.scope.decl(metadata !958), !noalias !945
  %_3.i.i.i.i = load i32, ptr %right.sroa.0.026, align 4, !alias.scope !960, !noalias !961, !noundef !37
  %_4.i.i.i.i = load i32, ptr %left.sroa.0.027, align 4, !alias.scope !962, !noalias !963, !noundef !37
  %_0.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %is_l.i18 = xor i1 %_0.i, true
  %7 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i, i32 %_4.i.i.i.i)
  store i32 %7, ptr %dst.sroa.0.029, align 4, !noalias !964
  %count.i = zext i1 %_0.i to i64
  %_12.i = getelementptr inbounds nuw i32, ptr %right.sroa.0.026, i64 %count.i
  %count2.i = zext i1 %is_l.i18 to i64
  %_14.i = getelementptr inbounds nuw i32, ptr %left.sroa.0.027, i64 %count2.i
  %_16.i = getelementptr inbounds nuw i8, ptr %dst.sroa.0.029, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !966)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !969)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !971), !noalias !974
  tail call void @llvm.experimental.noalias.scope.decl(metadata !977), !noalias !974
  tail call void @llvm.experimental.noalias.scope.decl(metadata !979), !noalias !974
  tail call void @llvm.experimental.noalias.scope.decl(metadata !982), !noalias !974
  tail call void @llvm.experimental.noalias.scope.decl(metadata !984), !noalias !974
  tail call void @llvm.experimental.noalias.scope.decl(metadata !987), !noalias !974
  %_3.i.i.i.i19 = load i32, ptr %right_rev.sroa.0.024, align 4, !alias.scope !989, !noalias !990, !noundef !37
  %_4.i.i.i.i20 = load i32, ptr %left_rev.sroa.0.025, align 4, !alias.scope !991, !noalias !992, !noundef !37
  %_0.i21 = icmp slt i32 %_3.i.i.i.i19, %_4.i.i.i.i20
  %is_l.i = xor i1 %_0.i21, true
  %8 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19, i32 %_4.i.i.i.i20)
  store i32 %8, ptr %dst_rev.sroa.0.023, align 4, !noalias !993
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
  br i1 %or.cond, label %bb13, label %bb14, !prof !868

bb14:                                             ; preds = %bb9
  ret void

bb13:                                             ; preds = %bb9
; call core::slice::sort::shared::smallsort::panic_on_ord_violation
  tail call void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #31
  unreachable
}

; core::slice::sort::shared::smallsort::insertion_sort_shift_left
; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h274a17e59efaaf47E(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, i64 noundef %offset, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #7 personality ptr @rust_eh_personality {
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

bb7:                                              ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h33c1c8880b2fd19dE.exit, %bb3
  ret void

bb5:                                              ; preds = %bb5.preheader, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h33c1c8880b2fd19dE.exit
  %tail.sroa.0.02 = phi ptr [ %_15, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h33c1c8880b2fd19dE.exit ], [ %1, %bb5.preheader ]
  %2 = getelementptr inbounds i8, ptr %tail.sroa.0.02, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !995)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !998)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1000)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1003)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1005)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1008)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1010)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1013)
  %_3.i.i.i.i.i = load i32, ptr %tail.sroa.0.02, align 4, !alias.scope !1015, !noalias !1016, !noundef !37
  %_4.i.i.i.i.i = load i32, ptr %2, align 4, !alias.scope !1016, !noalias !1015, !noundef !37
  %_0.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  br i1 %_0.i.i, label %bb4.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h33c1c8880b2fd19dE.exit

bb4.i:                                            ; preds = %bb5, %bb6.i
  %gap_guard.sroa.5.0.i = phi ptr [ %sift.sroa.0.0.i, %bb6.i ], [ %tail.sroa.0.02, %bb5 ]
  %sift.sroa.0.0.i = phi ptr [ %4, %bb6.i ], [ %2, %bb5 ]
  %3 = load i32, ptr %sift.sroa.0.0.i, align 4
  store i32 %3, ptr %gap_guard.sroa.5.0.i, align 4
  %_18.i = icmp eq ptr %sift.sroa.0.0.i, %v.0
  br i1 %_18.i, label %bb10.i, label %bb6.i

bb6.i:                                            ; preds = %bb4.i
  %4 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i, i64 -4
  %_4.i.i.i.i2.i = load i32, ptr %4, align 4, !alias.scope !1017, !noalias !1026, !noundef !37
  %_0.i3.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i2.i
  br i1 %_0.i3.i, label %bb4.i, label %bb10.i

bb10.i:                                           ; preds = %bb6.i, %bb4.i
  store i32 %_3.i.i.i.i.i, ptr %sift.sroa.0.0.i, align 4, !noalias !1031
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h33c1c8880b2fd19dE.exit

_ZN4core5slice4sort6shared9smallsort11insert_tail17h33c1c8880b2fd19dE.exit: ; preds = %bb5, %bb10.i
  %_15 = getelementptr inbounds nuw i8, ptr %tail.sroa.0.02, i64 4
  %_11.not = icmp eq ptr %_15, %v_end
  br i1 %_11.not, label %bb7, label %bb5
}

; core::slice::sort::shared::smallsort::insertion_sort_shift_left
; Function Attrs: nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17hd9613328857599b6E(ptr noalias noundef nonnull align 8 captures(address) %v.0, i64 noundef range(i64 0, 384307168202282326) %v.1, i64 noundef %offset, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #8 personality ptr @rust_eh_personality {
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

bb7:                                              ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h8519b9f909450705E.exit, %bb3
  ret void

bb5:                                              ; preds = %bb5.preheader, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h8519b9f909450705E.exit
  %tail.sroa.0.02 = phi ptr [ %_15, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h8519b9f909450705E.exit ], [ %1, %bb5.preheader ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1036)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1039)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1041)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1044)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1046)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1049)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1051)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1054)
  %2 = getelementptr inbounds nuw i8, ptr %tail.sroa.0.02, i64 8
  %_7.i.i.i.i.i = load ptr, ptr %2, align 8, !alias.scope !1056, !noalias !1057, !nonnull !37, !noundef !37
  %3 = getelementptr inbounds nuw i8, ptr %tail.sroa.0.02, i64 16
  %len1.i.i.i.i.i = load i64, ptr %3, align 8, !alias.scope !1056, !noalias !1057, !noundef !37
  %4 = getelementptr inbounds i8, ptr %tail.sroa.0.02, i64 -16
  %_14.i.i.i.i.i = load ptr, ptr %4, align 8, !alias.scope !1057, !noalias !1056, !nonnull !37, !noundef !37
  %5 = getelementptr inbounds i8, ptr %tail.sroa.0.02, i64 -8
  %6 = load i64, ptr %5, align 8, !alias.scope !1057, !noalias !1056, !noundef !37
  %spec.store.select.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %len1.i.i.i.i.i, i64 range(i64 0, -9223372036854775808) %6)
  %7 = tail call i32 @memcmp(ptr nonnull readonly align 1 %_7.i.i.i.i.i, ptr nonnull readonly align 1 %_14.i.i.i.i.i, i64 %spec.store.select.i.i.i.i.i.i), !alias.scope !1058, !noalias !1062
  %8 = sext i32 %7 to i64
  %_15.i.i.i.i.i.i = icmp eq i32 %7, 0
  %diff.i.i.i.i.i.i = sub nsw i64 %len1.i.i.i.i.i, %6
  %spec.select.i.i.i.i.i.i = select i1 %_15.i.i.i.i.i.i, i64 %diff.i.i.i.i.i.i, i64 %8
  %_0.i.i = icmp slt i64 %spec.select.i.i.i.i.i.i, 0
  br i1 %_0.i.i, label %bb2.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h8519b9f909450705E.exit

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1063)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1066)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1069)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1072)
  %9 = getelementptr inbounds i8, ptr %gap_guard.sroa.5.0.i, i64 -40
  %_14.i.i.i.i3.i = load ptr, ptr %9, align 8, !alias.scope !1075, !noalias !1076, !nonnull !37, !noundef !37
  %10 = getelementptr inbounds i8, ptr %gap_guard.sroa.5.0.i, i64 -32
  %11 = load i64, ptr %10, align 8, !alias.scope !1075, !noalias !1076, !noundef !37
  %spec.store.select.i.i.i.i.i4.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %len1.i.i.i.i.i, i64 range(i64 0, -9223372036854775808) %11)
  %12 = tail call i32 @memcmp(ptr nonnull readonly align 1 %_7.i.i.i.i.i, ptr nonnull readonly align 1 %_14.i.i.i.i3.i, i64 %spec.store.select.i.i.i.i.i4.i), !alias.scope !1081, !noalias !1085
  %13 = sext i32 %12 to i64
  %_15.i.i.i.i.i5.i = icmp eq i32 %12, 0
  %diff.i.i.i.i.i6.i = sub nsw i64 %len1.i.i.i.i.i, %11
  %spec.select.i.i.i.i.i7.i = select i1 %_15.i.i.i.i.i5.i, i64 %diff.i.i.i.i.i6.i, i64 %13
  %_0.i8.i = icmp slt i64 %spec.select.i.i.i.i.i7.i, 0
  br i1 %_0.i8.i, label %bb4.i, label %bb10.i

bb10.i:                                           ; preds = %bb6.i, %bb4.i
  store i64 %value.sroa.0.0.copyload.i, ptr %sift.sroa.0.0.i, align 8, !noalias !1086
  %tmp.sroa.4.0.sift.sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds i8, ptr %gap_guard.sroa.5.0.i, i64 -16
  store ptr %_7.i.i.i.i.i, ptr %tmp.sroa.4.0.sift.sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !1086
  %tmp.sroa.5.0.sift.sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds i8, ptr %gap_guard.sroa.5.0.i, i64 -8
  store i64 %len1.i.i.i.i.i, ptr %tmp.sroa.5.0.sift.sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !1086
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h8519b9f909450705E.exit

_ZN4core5slice4sort6shared9smallsort11insert_tail17h8519b9f909450705E.exit: ; preds = %bb5, %bb10.i
  %_15 = getelementptr inbounds nuw i8, ptr %tail.sroa.0.02, i64 24
  %_11.not = icmp eq ptr %_15, %v_end
  br i1 %_11.not, label %bb7, label %bb5
}

; core::slice::sort::shared::smallsort::small_sort_general_with_scratch
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h75b3ad44d1140d77E(ptr noalias noundef nonnull align 4 captures(none) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 captures(address) %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #1 personality ptr @rust_eh_personality {
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
  tail call void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h037ef7737253a409E(ptr noundef nonnull %v.0, ptr noundef nonnull %scratch.0, ptr noundef nonnull %_16, ptr noalias align 8 poison)
  %_18 = getelementptr inbounds nuw i32, ptr %v.0, i64 %len_div_211
  %_19 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211
  %_20 = getelementptr inbounds nuw i8, ptr %_16, i64 32
; call core::slice::sort::shared::smallsort::sort8_stable
  tail call void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h037ef7737253a409E(ptr noundef nonnull %_18, ptr noundef nonnull %_19, ptr noundef nonnull %_20, ptr noalias align 8 poison)
  br label %bb15

bb10:                                             ; preds = %bb9
  %_7.i = getelementptr inbounds nuw i8, ptr %v.0, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1091)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1094)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1096)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1099)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1101)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1104)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1106)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1109)
  %_3.i.i.i.i.i = load i32, ptr %_7.i, align 4, !alias.scope !1111, !noalias !1112, !noundef !37
  %_4.i.i.i.i.i = load i32, ptr %v.0, align 4, !alias.scope !1112, !noalias !1111, !noundef !37
  %_0.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %_12.i = getelementptr inbounds nuw i8, ptr %v.0, i64 12
  %_14.i = getelementptr inbounds nuw i8, ptr %v.0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1113)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1116)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1118)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1121)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1123)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1126)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1128)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1131)
  %_3.i.i.i.i7.i = load i32, ptr %_12.i, align 4, !alias.scope !1133, !noalias !1134, !noundef !37
  %_4.i.i.i.i8.i = load i32, ptr %_14.i, align 4, !alias.scope !1134, !noalias !1133, !noundef !37
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1135)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1138)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1140)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1143)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1145)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1148)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1150)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1153)
  %_3.i.i.i.i10.i = load i32, ptr %c.i, align 4, !alias.scope !1155, !noalias !1156, !noundef !37
  %_4.i.i.i.i11.i = load i32, ptr %a.i, align 4, !alias.scope !1156, !noalias !1155, !noundef !37
  %_0.i12.i = icmp slt i32 %_3.i.i.i.i10.i, %_4.i.i.i.i11.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1157)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1160)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1162)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1165)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1167)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1170)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1172)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1175)
  %_3.i.i.i.i13.i = load i32, ptr %d.i, align 4, !alias.scope !1177, !noalias !1178, !noundef !37
  %_4.i.i.i.i14.i = load i32, ptr %b.i, align 4, !alias.scope !1178, !noalias !1177, !noundef !37
  %_0.i15.i = icmp slt i32 %_3.i.i.i.i13.i, %_4.i.i.i.i14.i
  %0 = select i1 %_0.i12.i, ptr %c.i, ptr %a.i, !unpredictable !37
  %1 = select i1 %_0.i15.i, ptr %c.i, ptr %b.i, !unpredictable !37
  %2 = select i1 %_0.i12.i, ptr %a.i, ptr %1, !unpredictable !37
  %3 = select i1 %_0.i12.i, ptr %b.i, ptr %c.i, !unpredictable !37
  %4 = select i1 %_0.i15.i, ptr %d.i, ptr %3, !unpredictable !37
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1179)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1182)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1184)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1187)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1189)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1192)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1194)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1197)
  %_3.i.i.i.i16.i = load i32, ptr %4, align 4, !alias.scope !1199, !noalias !1200, !noundef !37
  %_4.i.i.i.i17.i = load i32, ptr %2, align 4, !alias.scope !1200, !noalias !1199, !noundef !37
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1201)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1204)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1206)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1209)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1211)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1214)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1216)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1219)
  %_3.i.i.i.i.i14 = load i32, ptr %_7.i13, align 4, !alias.scope !1221, !noalias !1222, !noundef !37
  %_4.i.i.i.i.i15 = load i32, ptr %_27, align 4, !alias.scope !1222, !noalias !1221, !noundef !37
  %_0.i.i16 = icmp slt i32 %_3.i.i.i.i.i14, %_4.i.i.i.i.i15
  %_12.i17 = getelementptr inbounds nuw i8, ptr %_27, i64 12
  %_14.i18 = getelementptr inbounds nuw i8, ptr %_27, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1223)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1226)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1228)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1231)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1233)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1236)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1238)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1241)
  %_3.i.i.i.i7.i19 = load i32, ptr %_12.i17, align 4, !alias.scope !1243, !noalias !1244, !noundef !37
  %_4.i.i.i.i8.i20 = load i32, ptr %_14.i18, align 4, !alias.scope !1244, !noalias !1243, !noundef !37
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1245)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1248)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1250)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1253)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1255)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1258)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1260)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1263)
  %_3.i.i.i.i10.i31 = load i32, ptr %c.i28, align 4, !alias.scope !1265, !noalias !1266, !noundef !37
  %_4.i.i.i.i11.i32 = load i32, ptr %a.i23, align 4, !alias.scope !1266, !noalias !1265, !noundef !37
  %_0.i12.i33 = icmp slt i32 %_3.i.i.i.i10.i31, %_4.i.i.i.i11.i32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1267)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1270)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1272)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1275)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1277)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1280)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1282)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1285)
  %_3.i.i.i.i13.i34 = load i32, ptr %d.i30, align 4, !alias.scope !1287, !noalias !1288, !noundef !37
  %_4.i.i.i.i14.i35 = load i32, ptr %b.i26, align 4, !alias.scope !1288, !noalias !1287, !noundef !37
  %_0.i15.i36 = icmp slt i32 %_3.i.i.i.i13.i34, %_4.i.i.i.i14.i35
  %10 = select i1 %_0.i12.i33, ptr %c.i28, ptr %a.i23, !unpredictable !37
  %11 = select i1 %_0.i15.i36, ptr %c.i28, ptr %b.i26, !unpredictable !37
  %12 = select i1 %_0.i12.i33, ptr %a.i23, ptr %11, !unpredictable !37
  %13 = select i1 %_0.i12.i33, ptr %b.i26, ptr %c.i28, !unpredictable !37
  %14 = select i1 %_0.i15.i36, ptr %d.i30, ptr %13, !unpredictable !37
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1289)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1292)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1294)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1297)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1299)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1302)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1304)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1307)
  %_3.i.i.i.i16.i37 = load i32, ptr %14, align 4, !alias.scope !1309, !noalias !1310, !noundef !37
  %_4.i.i.i.i17.i38 = load i32, ptr %12, align 4, !alias.scope !1310, !noalias !1309, !noundef !37
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
  br i1 %_5.not.i.not, label %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17hc702f8f6a9c30009E.exit", label %bb1.i

bb1.i:                                            ; preds = %bb16
  %_11.i = add nuw nsw i64 %24, 1
  store i64 %_11.i, ptr %iter, align 8, !alias.scope !1311
  %_20.i = icmp ult i64 %24, 2
  tail call void @llvm.assume(i1 %_20.i)
  %self3.i = getelementptr inbounds nuw i64, ptr %_37.sroa.5.0.iter.sroa_idx, i64 %24
  %_15.i = load i64, ptr %self3.i, align 8, !alias.scope !1311, !noundef !37
  br label %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17hc702f8f6a9c30009E.exit"

"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17hc702f8f6a9c30009E.exit": ; preds = %bb16, %bb1.i
  %25 = phi i64 [ %_11.i, %bb1.i ], [ %24, %bb16 ]
  %_0.sroa.3.0.i = phi i64 [ %_15.i, %bb1.i ], [ undef, %bb16 ]
  br i1 %_5.not.i.not, label %bb19, label %bb18

bb18:                                             ; preds = %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17hc702f8f6a9c30009E.exit"
  %src5 = getelementptr inbounds nuw i32, ptr %v.0, i64 %_0.sroa.3.0.i
  %dst6 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %_0.sroa.3.0.i
  %_47 = icmp eq i64 %_0.sroa.3.0.i, 0
  %desired_len.sroa.0.0 = select i1 %_47, i64 %len_div_211, i64 %23
  %_8059 = icmp ult i64 %presorted_len.sroa.0.0, %desired_len.sroa.0.0
  br i1 %_8059, label %bb24, label %bb16.backedge

bb16.backedge:                                    ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h33c1c8880b2fd19dE.exit, %bb18
  br label %bb16

bb19:                                             ; preds = %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17hc702f8f6a9c30009E.exit"
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %iter)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1314)
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1317)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1320)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1322), !noalias !1325
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1328), !noalias !1325
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1330), !noalias !1325
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1333), !noalias !1325
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1335), !noalias !1325
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1338), !noalias !1325
  %_3.i.i.i.i.i49 = load i32, ptr %right.sroa.0.026.i, align 4, !alias.scope !1340, !noalias !1341, !noundef !37
  %_4.i.i.i.i.i50 = load i32, ptr %left.sroa.0.027.i, align 4, !alias.scope !1342, !noalias !1343, !noundef !37
  %_0.i.i51 = icmp slt i32 %_3.i.i.i.i.i49, %_4.i.i.i.i.i50
  %is_l.i18.i = xor i1 %_0.i.i51, true
  %32 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i49, i32 %_4.i.i.i.i.i50)
  store i32 %32, ptr %dst.sroa.0.029.i, align 4, !noalias !1344
  %count.i.i = zext i1 %_0.i.i51 to i64
  %_12.i.i = getelementptr inbounds nuw i32, ptr %right.sroa.0.026.i, i64 %count.i.i
  %count2.i.i = zext i1 %is_l.i18.i to i64
  %_14.i.i = getelementptr inbounds nuw i32, ptr %left.sroa.0.027.i, i64 %count2.i.i
  %_16.i.i = getelementptr inbounds nuw i8, ptr %dst.sroa.0.029.i, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1346)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1349)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1351), !noalias !1354
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1357), !noalias !1354
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1359), !noalias !1354
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1362), !noalias !1354
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1364), !noalias !1354
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1367), !noalias !1354
  %_3.i.i.i.i19.i = load i32, ptr %right_rev.sroa.0.024.i, align 4, !alias.scope !1369, !noalias !1370, !noundef !37
  %_4.i.i.i.i20.i = load i32, ptr %left_rev.sroa.0.025.i, align 4, !alias.scope !1371, !noalias !1372, !noundef !37
  %_0.i21.i = icmp slt i32 %_3.i.i.i.i19.i, %_4.i.i.i.i20.i
  %is_l.i.i = xor i1 %_0.i21.i, true
  %33 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19.i, i32 %_4.i.i.i.i20.i)
  store i32 %33, ptr %dst_rev.sroa.0.023.i, align 4, !noalias !1373
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
  %37 = load i32, ptr %left.sroa.0.0.right.sroa.0.0.i, align 4, !alias.scope !1314
  store i32 %37, ptr %_16.i.i, align 4, !noalias !1314
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
  br i1 %or.cond.i, label %bb13.i, label %bb29, !prof !868

bb13.i:                                           ; preds = %bb9.i
; invoke core::slice::sort::shared::smallsort::panic_on_ord_violation
  invoke void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #31
          to label %.noexc unwind label %cleanup2

.noexc:                                           ; preds = %bb13.i
  unreachable

cleanup2:                                         ; preds = %bb13.i
  %38 = landingpad { ptr, i32 }
          cleanup
  %39 = shl nuw nsw i64 %v.1, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.0, ptr nonnull align 4 %scratch.0, i64 %39, i1 false), !noalias !1375
  resume { ptr, i32 } %38

bb29:                                             ; preds = %bb9.i, %start
  ret void

bb24:                                             ; preds = %bb18, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h33c1c8880b2fd19dE.exit
  %iter1.sroa.0.163 = phi i64 [ %iter1.sroa.0.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h33c1c8880b2fd19dE.exit ], [ %iter1.sroa.0.161, %bb18 ]
  %iter1.sroa.0.062 = phi i64 [ %iter1.sroa.0.163, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h33c1c8880b2fd19dE.exit ], [ %presorted_len.sroa.0.0, %bb18 ]
  %_55 = getelementptr inbounds nuw i32, ptr %src5, i64 %iter1.sroa.0.062
  %dst7 = getelementptr inbounds nuw i32, ptr %dst6, i64 %iter1.sroa.0.062
  %40 = load i32, ptr %_55, align 4
  store i32 %40, ptr %dst7, align 4
  %41 = getelementptr inbounds i8, ptr %dst7, i64 -4
  %_4.i.i.i.i.i56 = load i32, ptr %41, align 4, !alias.scope !1380, !noalias !1389, !noundef !37
  %_0.i.i57 = icmp slt i32 %40, %_4.i.i.i.i.i56
  br i1 %_0.i.i57, label %bb4.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h33c1c8880b2fd19dE.exit

bb4.i:                                            ; preds = %bb24, %bb6.i
  %gap_guard.sroa.5.0.i = phi ptr [ %sift.sroa.0.0.i, %bb6.i ], [ %dst7, %bb24 ]
  %sift.sroa.0.0.i = phi ptr [ %43, %bb6.i ], [ %41, %bb24 ]
  %42 = load i32, ptr %sift.sroa.0.0.i, align 4
  store i32 %42, ptr %gap_guard.sroa.5.0.i, align 4
  %_18.i = icmp eq ptr %sift.sroa.0.0.i, %dst6
  br i1 %_18.i, label %bb10.i, label %bb6.i

bb6.i:                                            ; preds = %bb4.i
  %43 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i, i64 -4
  %_4.i.i.i.i2.i = load i32, ptr %43, align 4, !alias.scope !1394, !noalias !1403, !noundef !37
  %_0.i3.i = icmp slt i32 %40, %_4.i.i.i.i2.i
  br i1 %_0.i3.i, label %bb4.i, label %bb10.i

bb10.i:                                           ; preds = %bb6.i, %bb4.i
  store i32 %40, ptr %sift.sroa.0.0.i, align 4, !noalias !1408
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h33c1c8880b2fd19dE.exit

_ZN4core5slice4sort6shared9smallsort11insert_tail17h33c1c8880b2fd19dE.exit: ; preds = %bb24, %bb10.i
  %_80 = icmp ult i64 %iter1.sroa.0.163, %desired_len.sroa.0.0
  %_84 = zext i1 %_80 to i64
  %iter1.sroa.0.1 = add nuw i64 %iter1.sroa.0.163, %_84
  br i1 %_80, label %bb24, label %bb16.backedge
}

; core::slice::sort::shared::smallsort::small_sort_general_with_scratch
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17hd47b94b346eed11fE(ptr noalias noundef nonnull align 8 captures(none) %v.0, i64 noundef range(i64 0, 384307168202282326) %v.1, ptr noalias noundef nonnull align 8 captures(address) %scratch.0, i64 noundef range(i64 0, 384307168202282326) %scratch.1, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #1 personality ptr @rust_eh_personality {
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
  tail call void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h3f04cd941118cad7E(ptr noundef nonnull %v.0, ptr noundef nonnull %scratch.0, ptr noalias align 8 poison)
; call core::slice::sort::shared::smallsort::sort4_stable
  tail call void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h3f04cd941118cad7E(ptr noundef nonnull %_27, ptr noundef nonnull %_28, ptr noalias align 8 poison)
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
  br i1 %_5.not.i.not, label %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17hc702f8f6a9c30009E.exit", label %bb1.i

bb1.i:                                            ; preds = %bb16
  %_11.i = add nuw nsw i64 %1, 1
  %_20.i = icmp ult i64 %1, 2
  tail call void @llvm.assume(i1 %_20.i)
  %self3.i = getelementptr inbounds nuw i64, ptr %_37.sroa.5.0.iter.sroa_idx, i64 %1
  %_15.i = load i64, ptr %self3.i, align 8, !alias.scope !1413, !noundef !37
  br label %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17hc702f8f6a9c30009E.exit"

"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17hc702f8f6a9c30009E.exit": ; preds = %bb16, %bb1.i
  %_11.i19 = phi i64 [ %_11.i, %bb1.i ], [ %_11.i18, %bb16 ]
  %2 = phi i64 [ %_11.i, %bb1.i ], [ %1, %bb16 ]
  %_0.sroa.3.0.i = phi i64 [ %_15.i, %bb1.i ], [ undef, %bb16 ]
  br i1 %_5.not.i.not, label %bb19, label %bb18

bb18:                                             ; preds = %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17hc702f8f6a9c30009E.exit"
  %src5 = getelementptr inbounds nuw %"alloc::string::String", ptr %v.0, i64 %_0.sroa.3.0.i
  %dst6 = getelementptr inbounds nuw %"alloc::string::String", ptr %scratch.0, i64 %_0.sroa.3.0.i
  %_47 = icmp eq i64 %_0.sroa.3.0.i, 0
  %desired_len.sroa.0.0 = select i1 %_47, i64 %len_div_211, i64 %0
  %_8013 = icmp ult i64 %presorted_len.sroa.0.0, %desired_len.sroa.0.0
  br i1 %_8013, label %bb24, label %bb16.backedge

bb16.backedge:                                    ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h8519b9f909450705E.exit, %bb18
  br label %bb16

bb19:                                             ; preds = %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17hc702f8f6a9c30009E.exit"
  store i64 %_11.i19, ptr %iter, align 8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %iter)
; invoke core::slice::sort::shared::smallsort::bidirectional_merge
  invoke void @_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h1c07a85081dc43d3E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %scratch.0, i64 noundef %v.1, ptr noundef nonnull %v.0, ptr noalias align 8 poison)
          to label %bb29 unwind label %cleanup2

cleanup2:                                         ; preds = %bb19
  %3 = landingpad { ptr, i32 }
          cleanup
  %4 = mul nuw nsw i64 %v.1, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %v.0, ptr nonnull align 8 %scratch.0, i64 %4, i1 false), !noalias !1416
  resume { ptr, i32 } %3

bb29:                                             ; preds = %bb19, %start
  ret void

bb24:                                             ; preds = %bb18, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h8519b9f909450705E.exit
  %iter1.sroa.0.117 = phi i64 [ %iter1.sroa.0.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h8519b9f909450705E.exit ], [ %iter1.sroa.0.115, %bb18 ]
  %iter1.sroa.0.016 = phi i64 [ %iter1.sroa.0.117, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h8519b9f909450705E.exit ], [ %presorted_len.sroa.0.0, %bb18 ]
  %_55 = getelementptr inbounds nuw %"alloc::string::String", ptr %src5, i64 %iter1.sroa.0.016
  %dst7 = getelementptr inbounds nuw %"alloc::string::String", ptr %dst6, i64 %iter1.sroa.0.016
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %dst7, ptr noundef nonnull align 8 dereferenceable(24) %_55, i64 24, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1421)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1424)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1426)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1429)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1431)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1434)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1436)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1439)
  %5 = getelementptr inbounds nuw i8, ptr %dst7, i64 8
  %_7.i.i.i.i.i = load ptr, ptr %5, align 8, !alias.scope !1441, !noalias !1442, !nonnull !37, !noundef !37
  %6 = getelementptr inbounds nuw i8, ptr %dst7, i64 16
  %len1.i.i.i.i.i = load i64, ptr %6, align 8, !alias.scope !1441, !noalias !1442, !noundef !37
  %7 = getelementptr inbounds i8, ptr %dst7, i64 -16
  %_14.i.i.i.i.i = load ptr, ptr %7, align 8, !alias.scope !1442, !noalias !1441, !nonnull !37, !noundef !37
  %8 = getelementptr inbounds i8, ptr %dst7, i64 -8
  %9 = load i64, ptr %8, align 8, !alias.scope !1442, !noalias !1441, !noundef !37
  %spec.store.select.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %len1.i.i.i.i.i, i64 range(i64 0, -9223372036854775808) %9)
  %10 = tail call i32 @memcmp(ptr nonnull readonly align 1 %_7.i.i.i.i.i, ptr nonnull readonly align 1 %_14.i.i.i.i.i, i64 %spec.store.select.i.i.i.i.i.i), !alias.scope !1443, !noalias !1447
  %11 = sext i32 %10 to i64
  %_15.i.i.i.i.i.i = icmp eq i32 %10, 0
  %diff.i.i.i.i.i.i = sub nsw i64 %len1.i.i.i.i.i, %9
  %spec.select.i.i.i.i.i.i = select i1 %_15.i.i.i.i.i.i, i64 %diff.i.i.i.i.i.i, i64 %11
  %_0.i.i = icmp slt i64 %spec.select.i.i.i.i.i.i, 0
  br i1 %_0.i.i, label %bb2.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h8519b9f909450705E.exit

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1448)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1451)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1454)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1457)
  %12 = getelementptr inbounds i8, ptr %gap_guard.sroa.5.0.i, i64 -40
  %_14.i.i.i.i3.i = load ptr, ptr %12, align 8, !alias.scope !1460, !noalias !1461, !nonnull !37, !noundef !37
  %13 = getelementptr inbounds i8, ptr %gap_guard.sroa.5.0.i, i64 -32
  %14 = load i64, ptr %13, align 8, !alias.scope !1460, !noalias !1461, !noundef !37
  %spec.store.select.i.i.i.i.i4.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %len1.i.i.i.i.i, i64 range(i64 0, -9223372036854775808) %14)
  %15 = tail call i32 @memcmp(ptr nonnull readonly align 1 %_7.i.i.i.i.i, ptr nonnull readonly align 1 %_14.i.i.i.i3.i, i64 %spec.store.select.i.i.i.i.i4.i), !alias.scope !1466, !noalias !1470
  %16 = sext i32 %15 to i64
  %_15.i.i.i.i.i5.i = icmp eq i32 %15, 0
  %diff.i.i.i.i.i6.i = sub nsw i64 %len1.i.i.i.i.i, %14
  %spec.select.i.i.i.i.i7.i = select i1 %_15.i.i.i.i.i5.i, i64 %diff.i.i.i.i.i6.i, i64 %16
  %_0.i8.i = icmp slt i64 %spec.select.i.i.i.i.i7.i, 0
  br i1 %_0.i8.i, label %bb4.i, label %bb10.i

bb10.i:                                           ; preds = %bb6.i, %bb4.i
  store i64 %value.sroa.0.0.copyload.i, ptr %sift.sroa.0.0.i, align 8, !noalias !1471
  %tmp.sroa.4.0.sift.sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds i8, ptr %gap_guard.sroa.5.0.i, i64 -16
  store ptr %_7.i.i.i.i.i, ptr %tmp.sroa.4.0.sift.sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !1471
  %tmp.sroa.5.0.sift.sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds i8, ptr %gap_guard.sroa.5.0.i, i64 -8
  store i64 %len1.i.i.i.i.i, ptr %tmp.sroa.5.0.sift.sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !1471
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h8519b9f909450705E.exit

_ZN4core5slice4sort6shared9smallsort11insert_tail17h8519b9f909450705E.exit: ; preds = %bb24, %bb10.i
  %_80 = icmp ult i64 %iter1.sroa.0.117, %desired_len.sroa.0.0
  %_84 = zext i1 %_80 to i64
  %iter1.sroa.0.1 = add nuw i64 %iter1.sroa.0.117, %_84
  br i1 %_80, label %bb24, label %bb16.backedge
}

; core::slice::sort::stable::driftsort_main
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable14driftsort_main17hb21a17c31e7d60c9E(ptr noalias noundef nonnull align 8 %v.0, i64 noundef range(i64 0, 384307168202282326) %v.1, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #9 personality ptr @rust_eh_personality {
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
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4.i.i), !noalias !1476
; invoke alloc::raw_vec::RawVecInner<A>::try_allocate_in
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_4.i.i, i64 noundef %_0.sroa.0.0.i7, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24)
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %bb4
  %_5.i.i = load i64, ptr %_4.i.i, align 8, !range !1479, !noalias !1476, !noundef !37
  %0 = trunc nuw i64 %_5.i.i to i1
  %1 = getelementptr inbounds nuw i8, ptr %_4.i.i, i64 8
  %err.0.i.i = load i64, ptr %1, align 8, !range !1480, !noalias !1476, !noundef !37
  %2 = getelementptr inbounds nuw i8, ptr %_4.i.i, i64 16
  br i1 %0, label %bb3.i.i, label %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h45070663ee9cbcc5E.exit", !prof !1481

bb3.i.i:                                          ; preds = %.noexc
  %err.1.i.i = load i64, ptr %2, align 8, !noalias !1476
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #32
          to label %.noexc8 unwind label %cleanup

.noexc8:                                          ; preds = %bb3.i.i
  unreachable

"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h45070663ee9cbcc5E.exit": ; preds = %.noexc
  %this.1.i.i = load ptr, ptr %2, align 8, !noalias !1476, !nonnull !37, !noundef !37
  %_7.i.i = icmp ule i64 %_0.sroa.0.0.i7, %err.0.i.i
  tail call void @llvm.assume(i1 %_7.i.i)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4.i.i), !noalias !1476
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

bb8:                                              ; preds = %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h45070663ee9cbcc5E.exit", %start
  %_24.sroa.0.1 = phi i8 [ 0, %start ], [ 1, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h45070663ee9cbcc5E.exit" ]
  %stack_scratch.sroa.4.0 = phi i64 [ 170, %start ], [ %err.0.i.i, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h45070663ee9cbcc5E.exit" ]
  %stack_buf.pn = phi ptr [ %stack_buf, %start ], [ %this.1.i.i, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h45070663ee9cbcc5E.exit" ]
  %eager_sort = icmp samesign ult i64 %v.1, 65
; invoke core::slice::sort::stable::drift::sort
  invoke void @_ZN4core5slice4sort6stable5drift4sort17h6aa4f489c3c231eeE(ptr noalias noundef nonnull align 8 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 8 %stack_buf.pn, i64 noundef %stack_scratch.sroa.4.0, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less)
          to label %bb9 unwind label %cleanup

bb9:                                              ; preds = %bb8
  %5 = trunc nuw i8 %_24.sroa.0.1 to i1
  br i1 %5, label %bb12, label %bb10

bb10:                                             ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17ha5714b0b3d45e72aE.exit", %bb9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %heap_buf)
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %stack_buf)
  ret void

bb12:                                             ; preds = %bb9
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf51955c50d115126E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %heap_buf)
          to label %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17ha5714b0b3d45e72aE.exit" unwind label %cleanup.i

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
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #30
  unreachable

common.resume:                                    ; preds = %cleanup, %bb13, %cleanup.i
  %common.resume.op = phi { ptr, i32 } [ %6, %cleanup.i ], [ %3, %bb13 ], [ %3, %cleanup ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17ha5714b0b3d45e72aE.exit": ; preds = %bb12
; call alloc::raw_vec::RawVecInner<A>::deallocate
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %heap_buf, i64 noundef 8, i64 noundef 24)
  br label %bb10

bb13:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::string::String>>
  invoke fastcc void @"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17ha5714b0b3d45e72aE"(ptr noalias noundef align 8 dereferenceable(24) %heap_buf) #33
          to label %common.resume unwind label %terminate

terminate:                                        ; preds = %bb13
  %8 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #30
  unreachable
}

; core::slice::sort::stable::driftsort_main
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable14driftsort_main17hd81a1f6a05f6cdf3E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #9 personality ptr @rust_eh_personality {
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
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4.i.i), !noalias !1482
; invoke alloc::raw_vec::RawVecInner<A>::try_allocate_in
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_4.i.i, i64 noundef %_0.sroa.0.0.i7, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %bb4
  %_5.i.i = load i64, ptr %_4.i.i, align 8, !range !1479, !noalias !1482, !noundef !37
  %0 = trunc nuw i64 %_5.i.i to i1
  %1 = getelementptr inbounds nuw i8, ptr %_4.i.i, i64 8
  %err.0.i.i = load i64, ptr %1, align 8, !range !1480, !noalias !1482, !noundef !37
  %2 = getelementptr inbounds nuw i8, ptr %_4.i.i, i64 16
  br i1 %0, label %bb3.i.i, label %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h59648a08aba84018E.exit", !prof !1481

bb3.i.i:                                          ; preds = %.noexc
  %err.1.i.i = load i64, ptr %2, align 8, !noalias !1482
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #32
          to label %.noexc8 unwind label %cleanup

.noexc8:                                          ; preds = %bb3.i.i
  unreachable

"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h59648a08aba84018E.exit": ; preds = %.noexc
  %this.1.i.i = load ptr, ptr %2, align 8, !noalias !1482, !nonnull !37, !noundef !37
  %_7.i.i = icmp ule i64 %_0.sroa.0.0.i7, %err.0.i.i
  tail call void @llvm.assume(i1 %_7.i.i)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4.i.i), !noalias !1482
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

bb8:                                              ; preds = %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h59648a08aba84018E.exit", %start
  %_24.sroa.0.1 = phi i8 [ 0, %start ], [ 1, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h59648a08aba84018E.exit" ]
  %stack_scratch.sroa.4.0 = phi i64 [ 1024, %start ], [ %err.0.i.i, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h59648a08aba84018E.exit" ]
  %stack_buf.pn = phi ptr [ %stack_buf, %start ], [ %this.1.i.i, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h59648a08aba84018E.exit" ]
  %eager_sort = icmp samesign ult i64 %v.1, 65
; invoke core::slice::sort::stable::drift::sort
  invoke void @_ZN4core5slice4sort6stable5drift4sort17h5baa579da18fc185E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 4 %stack_buf.pn, i64 noundef %stack_scratch.sroa.4.0, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #30
  unreachable
}

; core::slice::sort::stable::AlignedStorage<T,_>::as_uninit_slice_mut
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, i64 } @"_ZN4core5slice4sort6stable27AlignedStorage$LT$T$C$_$GT$19as_uninit_slice_mut17h0f548d052d5ff896E"(ptr noalias noundef align 4 dereferenceable(4096) %self) unnamed_addr #10 {
start:
  %0 = insertvalue { ptr, i64 } poison, ptr %self, 0
  %1 = insertvalue { ptr, i64 } %0, i64 1024, 1
  ret { ptr, i64 } %1
}

; core::slice::sort::stable::AlignedStorage<T,_>::as_uninit_slice_mut
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, i64 } @"_ZN4core5slice4sort6stable27AlignedStorage$LT$T$C$_$GT$19as_uninit_slice_mut17he389b91207d6c1d5E"(ptr noalias noundef align 8 dereferenceable(4096) %self) unnamed_addr #10 {
start:
  %0 = insertvalue { ptr, i64 } poison, ptr %self, 0
  %1 = insertvalue { ptr, i64 } %0, i64 170, 1
  ret { ptr, i64 } %1
}

; core::slice::sort::stable::drift::create_run
; Function Attrs: nonlazybind uwtable
define noundef range(i64 0, -1) i64 @_ZN4core5slice4sort6stable5drift10create_run17h144e354a571d8fbeE(ptr noalias noundef nonnull align 8 %v.0, i64 noundef range(i64 0, 384307168202282326) %v.1, ptr noalias noundef nonnull align 8 %scratch.0, i64 noundef range(i64 0, 384307168202282326) %scratch.1, i64 noundef %min_good_run_len, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_7.not = icmp ult i64 %v.1, %min_good_run_len
  br i1 %_7.not, label %bb7, label %bb1

bb7:                                              ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h082bf3a2a560d49bE.exit, %start
  br i1 %eager_sort, label %bb8, label %bb11

bb1:                                              ; preds = %start
  %_4.i = icmp samesign ult i64 %v.1, 2
  br i1 %_4.i, label %_ZN4core5slice4sort6shared17find_existing_run17h082bf3a2a560d49bE.exit, label %bb2.i

bb2.i:                                            ; preds = %bb1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1485)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1488)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1490)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1493)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1495)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1498)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1500)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1503)
  %0 = getelementptr inbounds nuw i8, ptr %v.0, i64 32
  %_7.i.i.i.i = load ptr, ptr %0, align 8, !alias.scope !1505, !noalias !1506, !nonnull !37, !noundef !37
  %1 = getelementptr inbounds nuw i8, ptr %v.0, i64 40
  %len1.i.i.i.i = load i64, ptr %1, align 8, !alias.scope !1505, !noalias !1506, !noundef !37
  %2 = getelementptr inbounds nuw i8, ptr %v.0, i64 8
  %_14.i.i.i.i = load ptr, ptr %2, align 8, !alias.scope !1506, !noalias !1505, !nonnull !37, !noundef !37
  %3 = getelementptr inbounds nuw i8, ptr %v.0, i64 16
  %4 = load i64, ptr %3, align 8, !alias.scope !1506, !noalias !1505, !noundef !37
  %spec.store.select.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %len1.i.i.i.i, i64 range(i64 0, -9223372036854775808) %4)
  %5 = tail call i32 @memcmp(ptr nonnull readonly align 1 %_7.i.i.i.i, ptr nonnull readonly align 1 %_14.i.i.i.i, i64 %spec.store.select.i.i.i.i.i), !alias.scope !1507, !noalias !1511
  %6 = sext i32 %5 to i64
  %_15.i.i.i.i.i = icmp eq i32 %5, 0
  %diff.i.i.i.i.i = sub nsw i64 %len1.i.i.i.i, %4
  %spec.select.i.i.i.i.i = select i1 %_15.i.i.i.i.i, i64 %diff.i.i.i.i.i, i64 %6
  %_0.i = icmp slt i64 %spec.select.i.i.i.i.i, 0
  %_10.i23.not = icmp eq i64 %v.1, 2
  br i1 %_0.i, label %bb4.i.preheader, label %bb11.i.preheader

bb11.i.preheader:                                 ; preds = %bb2.i
  br i1 %_10.i23.not, label %_ZN4core5slice4sort6shared17find_existing_run17h082bf3a2a560d49bE.exit, label %bb12.i

bb4.i.preheader:                                  ; preds = %bb2.i
  br i1 %_10.i23.not, label %_ZN4core5slice4sort6shared17find_existing_run17h082bf3a2a560d49bE.exit, label %bb5.i

bb12.i:                                           ; preds = %bb11.i.preheader, %bb15.i
  %run_len.sroa.0.0.i21 = phi i64 [ %16, %bb15.i ], [ 2, %bb11.i.preheader ]
  %7 = getelementptr inbounds nuw %"alloc::string::String", ptr %v.0, i64 %run_len.sroa.0.0.i21
  %8 = getelementptr %"alloc::string::String", ptr %v.0, i64 %run_len.sroa.0.0.i21
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1512)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1515)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1517)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1520)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1522)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1525)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1527)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1530)
  %9 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %_7.i.i.i.i1 = load ptr, ptr %9, align 8, !alias.scope !1532, !noalias !1533, !nonnull !37, !noundef !37
  %10 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %len1.i.i.i.i2 = load i64, ptr %10, align 8, !alias.scope !1532, !noalias !1533, !noundef !37
  %11 = getelementptr i8, ptr %8, i64 -16
  %_14.i.i.i.i3 = load ptr, ptr %11, align 8, !alias.scope !1533, !noalias !1532, !nonnull !37, !noundef !37
  %12 = getelementptr i8, ptr %8, i64 -8
  %13 = load i64, ptr %12, align 8, !alias.scope !1533, !noalias !1532, !noundef !37
  %spec.store.select.i.i.i.i.i4 = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %len1.i.i.i.i2, i64 range(i64 0, -9223372036854775808) %13)
  %14 = tail call i32 @memcmp(ptr nonnull readonly align 1 %_7.i.i.i.i1, ptr nonnull readonly align 1 %_14.i.i.i.i3, i64 %spec.store.select.i.i.i.i.i4), !alias.scope !1534, !noalias !1538
  %15 = sext i32 %14 to i64
  %_15.i.i.i.i.i5 = icmp eq i32 %14, 0
  %diff.i.i.i.i.i6 = sub nsw i64 %len1.i.i.i.i2, %13
  %spec.select.i.i.i.i.i7 = select i1 %_15.i.i.i.i.i5, i64 %diff.i.i.i.i.i6, i64 %15
  %_0.i8 = icmp slt i64 %spec.select.i.i.i.i.i7, 0
  br i1 %_0.i8, label %_ZN4core5slice4sort6shared17find_existing_run17h082bf3a2a560d49bE.exit, label %bb15.i

bb15.i:                                           ; preds = %bb12.i
  %16 = add nuw nsw i64 %run_len.sroa.0.0.i21, 1
  %exitcond.not = icmp eq i64 %16, %v.1
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h082bf3a2a560d49bE.exit, label %bb12.i

bb5.i:                                            ; preds = %bb4.i.preheader, %bb7.i
  %run_len.sroa.0.1.i24 = phi i64 [ %26, %bb7.i ], [ 2, %bb4.i.preheader ]
  %17 = getelementptr inbounds nuw %"alloc::string::String", ptr %v.0, i64 %run_len.sroa.0.1.i24
  %18 = getelementptr %"alloc::string::String", ptr %v.0, i64 %run_len.sroa.0.1.i24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1539)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1542)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1544)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1547)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1549)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1552)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1554)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1557)
  %19 = getelementptr inbounds nuw i8, ptr %17, i64 8
  %_7.i.i.i.i9 = load ptr, ptr %19, align 8, !alias.scope !1559, !noalias !1560, !nonnull !37, !noundef !37
  %20 = getelementptr inbounds nuw i8, ptr %17, i64 16
  %len1.i.i.i.i10 = load i64, ptr %20, align 8, !alias.scope !1559, !noalias !1560, !noundef !37
  %21 = getelementptr i8, ptr %18, i64 -16
  %_14.i.i.i.i11 = load ptr, ptr %21, align 8, !alias.scope !1560, !noalias !1559, !nonnull !37, !noundef !37
  %22 = getelementptr i8, ptr %18, i64 -8
  %23 = load i64, ptr %22, align 8, !alias.scope !1560, !noalias !1559, !noundef !37
  %spec.store.select.i.i.i.i.i12 = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %len1.i.i.i.i10, i64 range(i64 0, -9223372036854775808) %23)
  %24 = tail call i32 @memcmp(ptr nonnull readonly align 1 %_7.i.i.i.i9, ptr nonnull readonly align 1 %_14.i.i.i.i11, i64 %spec.store.select.i.i.i.i.i12), !alias.scope !1561, !noalias !1565
  %25 = sext i32 %24 to i64
  %_15.i.i.i.i.i13 = icmp eq i32 %24, 0
  %diff.i.i.i.i.i14 = sub nsw i64 %len1.i.i.i.i10, %23
  %spec.select.i.i.i.i.i15 = select i1 %_15.i.i.i.i.i13, i64 %diff.i.i.i.i.i14, i64 %25
  %_0.i16 = icmp slt i64 %spec.select.i.i.i.i.i15, 0
  br i1 %_0.i16, label %bb7.i, label %_ZN4core5slice4sort6shared17find_existing_run17h082bf3a2a560d49bE.exit

bb7.i:                                            ; preds = %bb5.i
  %26 = add nuw nsw i64 %run_len.sroa.0.1.i24, 1
  %exitcond29.not = icmp eq i64 %26, %v.1
  br i1 %exitcond29.not, label %_ZN4core5slice4sort6shared17find_existing_run17h082bf3a2a560d49bE.exit, label %bb5.i

_ZN4core5slice4sort6shared17find_existing_run17h082bf3a2a560d49bE.exit: ; preds = %bb12.i, %bb15.i, %bb5.i, %bb7.i, %bb11.i.preheader, %bb4.i.preheader, %bb1
  %_0.sroa.3.0.i = phi i1 [ false, %bb1 ], [ true, %bb4.i.preheader ], [ false, %bb11.i.preheader ], [ true, %bb7.i ], [ true, %bb5.i ], [ false, %bb15.i ], [ false, %bb12.i ]
  %_0.sroa.0.0.i = phi i64 [ %v.1, %bb1 ], [ 2, %bb4.i.preheader ], [ 2, %bb11.i.preheader ], [ %run_len.sroa.0.1.i24, %bb5.i ], [ %v.1, %bb7.i ], [ %run_len.sroa.0.0.i21, %bb12.i ], [ %v.1, %bb15.i ]
  %_12 = icmp samesign ule i64 %_0.sroa.0.0.i, %v.1
  tail call void @llvm.assume(i1 %_12)
  %_13.not = icmp ult i64 %_0.sroa.0.0.i, %min_good_run_len
  br i1 %_13.not, label %bb7, label %bb3

bb3:                                              ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h082bf3a2a560d49bE.exit
  br i1 %_0.sroa.3.0.i, label %bb14, label %bb5

bb11:                                             ; preds = %bb7
  %_0.sroa.0.0.i17 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 -2305843009213693950, 2305843009213693952) %v.1, i64 %min_good_run_len)
  %_36 = shl nuw nsw i64 %_0.sroa.0.0.i17, 1
  br label %bb12

bb8:                                              ; preds = %bb7
  %_0.sroa.0.0.i18 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 -2305843009213693950, 2305843009213693952) %v.1, i64 32)
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h6aa3617edc74af8eE(ptr noalias noundef nonnull align 8 %v.0, i64 noundef %_0.sroa.0.0.i18, ptr noalias noundef nonnull align 8 %scratch.0, i64 noundef %scratch.1, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias noundef align 8 dereferenceable(8) %is_less) #34
  %_35 = shl nuw nsw i64 %_0.sroa.0.0.i18, 1
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1566)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1569)
  %_915.not.i.i = icmp samesign ult i64 %_0.sroa.0.0.i, 2
  br i1 %_915.not.i.i, label %bb5, label %bb5.i.i

bb5.i.i:                                          ; preds = %bb14, %bb5.i.i
  %i.sroa.0.016.i.i = phi i64 [ %28, %bb5.i.i ], [ 0, %bb14 ]
  %27 = xor i64 %i.sroa.0.016.i.i, -1
  %x.i.i = getelementptr inbounds nuw %"alloc::string::String", ptr %v.0, i64 %i.sroa.0.016.i.i
  %y.i.i = getelementptr %"alloc::string::String", ptr %end.i, i64 %27
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1571)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1574)
  %_3.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %x.i.i, align 8, !alias.scope !1576, !noalias !1579
  %_4.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %y.i.i, align 8, !alias.scope !1580, !noalias !1581
  store i64 %_4.sroa.0.0.copyload.i.i.i.i.i.i.i, ptr %x.i.i, align 8, !alias.scope !1576, !noalias !1579
  store i64 %_3.sroa.0.0.copyload.i.i.i.i.i.i.i, ptr %y.i.i, align 8, !alias.scope !1580, !noalias !1581
  %_11.i.1.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %x.i.i, i64 8
  %_13.i.1.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %y.i.i, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1582)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1584)
  %_3.sroa.0.0.copyload.i.i.1.i.i.i.i.i = load i64, ptr %_11.i.1.i.i.i.i.i, align 8, !alias.scope !1586, !noalias !1587
  %_4.sroa.0.0.copyload.i.i.1.i.i.i.i.i = load i64, ptr %_13.i.1.i.i.i.i.i, align 8, !alias.scope !1588, !noalias !1589
  store i64 %_4.sroa.0.0.copyload.i.i.1.i.i.i.i.i, ptr %_11.i.1.i.i.i.i.i, align 8, !alias.scope !1586, !noalias !1587
  store i64 %_3.sroa.0.0.copyload.i.i.1.i.i.i.i.i, ptr %_13.i.1.i.i.i.i.i, align 8, !alias.scope !1588, !noalias !1589
  %_11.i.2.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %x.i.i, i64 16
  %_13.i.2.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %y.i.i, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1590)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1592)
  %_3.sroa.0.0.copyload.i.i.2.i.i.i.i.i = load i64, ptr %_11.i.2.i.i.i.i.i, align 8, !alias.scope !1594, !noalias !1595
  %_4.sroa.0.0.copyload.i.i.2.i.i.i.i.i = load i64, ptr %_13.i.2.i.i.i.i.i, align 8, !alias.scope !1596, !noalias !1597
  store i64 %_4.sroa.0.0.copyload.i.i.2.i.i.i.i.i, ptr %_11.i.2.i.i.i.i.i, align 8, !alias.scope !1594, !noalias !1595
  store i64 %_3.sroa.0.0.copyload.i.i.2.i.i.i.i.i, ptr %_13.i.2.i.i.i.i.i, align 8, !alias.scope !1596, !noalias !1597
  %28 = add nuw nsw i64 %i.sroa.0.016.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %28, %half_len2.i
  br i1 %exitcond.not.i.i, label %bb5, label %bb5.i.i
}

; core::slice::sort::stable::drift::create_run
; Function Attrs: nonlazybind uwtable
define noundef range(i64 0, -1) i64 @_ZN4core5slice4sort6stable5drift10create_run17he4a5d5408d856782E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %min_good_run_len, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_7.not = icmp ult i64 %v.1, %min_good_run_len
  br i1 %_7.not, label %bb7, label %bb1

bb7:                                              ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h9858b652d1314ffdE.exit, %start
  br i1 %eager_sort, label %bb8, label %bb11

bb1:                                              ; preds = %start
  %_4.i = icmp samesign ult i64 %v.1, 2
  br i1 %_4.i, label %_ZN4core5slice4sort6shared17find_existing_run17h9858b652d1314ffdE.exit, label %bb2.i

bb2.i:                                            ; preds = %bb1
  %_28.i = getelementptr inbounds nuw i8, ptr %v.0, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1598)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1601)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1603)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1606)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1608)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1611)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1613)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1616)
  %_3.i.i.i.i = load i32, ptr %_28.i, align 4, !alias.scope !1618, !noalias !1619, !noundef !37
  %_4.i.i.i.i = load i32, ptr %v.0, align 4, !alias.scope !1619, !noalias !1618, !noundef !37
  %_0.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %_10.i13.not = icmp eq i64 %v.1, 2
  br i1 %_0.i, label %bb4.i.preheader, label %bb11.i.preheader

bb11.i.preheader:                                 ; preds = %bb2.i
  br i1 %_10.i13.not, label %_ZN4core5slice4sort6shared17find_existing_run17h9858b652d1314ffdE.exit, label %bb12.i.preheader

bb12.i.preheader:                                 ; preds = %bb11.i.preheader
  %invariant.gep = getelementptr i8, ptr %v.0, i64 -4
  br label %bb12.i

bb4.i.preheader:                                  ; preds = %bb2.i
  br i1 %_10.i13.not, label %_ZN4core5slice4sort6shared17find_existing_run17h9858b652d1314ffdE.exit, label %bb5.i.preheader

bb5.i.preheader:                                  ; preds = %bb4.i.preheader
  %invariant.gep24 = getelementptr i8, ptr %v.0, i64 -4
  br label %bb5.i

bb12.i:                                           ; preds = %bb12.i.preheader, %bb15.i
  %run_len.sroa.0.0.i11 = phi i64 [ %1, %bb15.i ], [ 2, %bb12.i.preheader ]
  %0 = getelementptr inbounds nuw i32, ptr %v.0, i64 %run_len.sroa.0.0.i11
  %gep = getelementptr i32, ptr %invariant.gep, i64 %run_len.sroa.0.0.i11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1620)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1623)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1625)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1628)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1630)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1633)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1635)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1638)
  %_3.i.i.i.i1 = load i32, ptr %0, align 4, !alias.scope !1640, !noalias !1641, !noundef !37
  %_4.i.i.i.i2 = load i32, ptr %gep, align 4, !alias.scope !1641, !noalias !1640, !noundef !37
  %_0.i3 = icmp slt i32 %_3.i.i.i.i1, %_4.i.i.i.i2
  br i1 %_0.i3, label %_ZN4core5slice4sort6shared17find_existing_run17h9858b652d1314ffdE.exit, label %bb15.i

bb15.i:                                           ; preds = %bb12.i
  %1 = add nuw nsw i64 %run_len.sroa.0.0.i11, 1
  %exitcond.not = icmp eq i64 %1, %v.1
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h9858b652d1314ffdE.exit, label %bb12.i

bb5.i:                                            ; preds = %bb5.i.preheader, %bb7.i
  %run_len.sroa.0.1.i14 = phi i64 [ %3, %bb7.i ], [ 2, %bb5.i.preheader ]
  %2 = getelementptr inbounds nuw i32, ptr %v.0, i64 %run_len.sroa.0.1.i14
  %gep25 = getelementptr i32, ptr %invariant.gep24, i64 %run_len.sroa.0.1.i14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1642)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1645)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1647)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1650)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1652)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1655)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1657)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1660)
  %_3.i.i.i.i4 = load i32, ptr %2, align 4, !alias.scope !1662, !noalias !1663, !noundef !37
  %_4.i.i.i.i5 = load i32, ptr %gep25, align 4, !alias.scope !1663, !noalias !1662, !noundef !37
  %_0.i6 = icmp slt i32 %_3.i.i.i.i4, %_4.i.i.i.i5
  br i1 %_0.i6, label %bb7.i, label %_ZN4core5slice4sort6shared17find_existing_run17h9858b652d1314ffdE.exit

bb7.i:                                            ; preds = %bb5.i
  %3 = add nuw nsw i64 %run_len.sroa.0.1.i14, 1
  %exitcond19.not = icmp eq i64 %3, %v.1
  br i1 %exitcond19.not, label %_ZN4core5slice4sort6shared17find_existing_run17h9858b652d1314ffdE.exit, label %bb5.i

_ZN4core5slice4sort6shared17find_existing_run17h9858b652d1314ffdE.exit: ; preds = %bb12.i, %bb15.i, %bb5.i, %bb7.i, %bb11.i.preheader, %bb4.i.preheader, %bb1
  %_0.sroa.3.0.i = phi i1 [ false, %bb1 ], [ true, %bb4.i.preheader ], [ false, %bb11.i.preheader ], [ true, %bb7.i ], [ true, %bb5.i ], [ false, %bb15.i ], [ false, %bb12.i ]
  %_0.sroa.0.0.i = phi i64 [ %v.1, %bb1 ], [ 2, %bb4.i.preheader ], [ 2, %bb11.i.preheader ], [ %run_len.sroa.0.1.i14, %bb5.i ], [ %v.1, %bb7.i ], [ %run_len.sroa.0.0.i11, %bb12.i ], [ %v.1, %bb15.i ]
  %_12 = icmp samesign ule i64 %_0.sroa.0.0.i, %v.1
  tail call void @llvm.assume(i1 %_12)
  %_13.not = icmp ult i64 %_0.sroa.0.0.i, %min_good_run_len
  br i1 %_13.not, label %bb7, label %bb3

bb3:                                              ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h9858b652d1314ffdE.exit
  br i1 %_0.sroa.3.0.i, label %bb14, label %bb5

bb11:                                             ; preds = %bb7
  %_0.sroa.0.0.i7 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 -2305843009213693950, 2305843009213693952) %v.1, i64 %min_good_run_len)
  %_36 = shl nuw nsw i64 %_0.sroa.0.0.i7, 1
  br label %bb12

bb8:                                              ; preds = %bb7
  %_0.sroa.0.0.i8 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 -2305843009213693950, 2305843009213693952) %v.1, i64 32)
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h29f47d65ff463170E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %_0.sroa.0.0.i8, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef 0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef align 8 dereferenceable(8) %is_less) #34
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
  %6 = load i32, ptr %x.i.i.epil, align 4, !alias.scope !1664, !noalias !1669, !noundef !37
  %7 = load i32, ptr %y.i.i.epil, align 4, !alias.scope !1671, !noalias !1672
  store i32 %7, ptr %x.i.i.epil, align 4, !alias.scope !1664, !noalias !1669
  store i32 %6, ptr %y.i.i.epil, align 4, !alias.scope !1671, !noalias !1672
  br label %bb5

bb5:                                              ; preds = %bb5.i.i.epil, %bb5.loopexit.unr-lcssa, %bb14, %bb3
  %_27 = shl nuw nsw i64 %_0.sroa.0.0.i, 1
  %_26 = or disjoint i64 %_27, 1
  br label %bb12

bb14:                                             ; preds = %bb3
  %half_len2.i = lshr i64 %_0.sroa.0.0.i, 1
  %end.i = getelementptr inbounds nuw i32, ptr %v.0, i64 %_0.sroa.0.0.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1672)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1669)
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
  %10 = load i32, ptr %x.i.i, align 4, !alias.scope !1664, !noalias !1669, !noundef !37
  %11 = load i32, ptr %y.i.i, align 4, !alias.scope !1671, !noalias !1672
  store i32 %11, ptr %x.i.i, align 4, !alias.scope !1664, !noalias !1669
  store i32 %10, ptr %y.i.i, align 4, !alias.scope !1671, !noalias !1672
  %12 = xor i64 %i.sroa.0.016.i.i, -2
  %gep27 = getelementptr inbounds i32, ptr %invariant.gep26, i64 %i.sroa.0.016.i.i
  %y.i.i.1 = getelementptr i32, ptr %end.i, i64 %12
  %13 = load i32, ptr %gep27, align 4, !alias.scope !1664, !noalias !1669, !noundef !37
  %14 = load i32, ptr %y.i.i.1, align 4, !alias.scope !1671, !noalias !1672
  store i32 %14, ptr %gep27, align 4, !alias.scope !1664, !noalias !1669
  store i32 %13, ptr %y.i.i.1, align 4, !alias.scope !1671, !noalias !1672
  %15 = add nuw nsw i64 %i.sroa.0.016.i.i, 2
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %bb5.loopexit.unr-lcssa, label %bb5.i.i
}

; core::slice::sort::stable::drift::stable_quicksort
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6stable5drift16stable_quicksort17h6fd14abd172e9014E(ptr noalias noundef nonnull align 8 %v.0, i64 noundef range(i64 0, 384307168202282326) %v.1, ptr noalias noundef nonnull align 8 %scratch.0, i64 noundef range(i64 0, 384307168202282326) %scratch.1, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #1 {
start:
  %self = or i64 %v.1, 1
  %0 = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %self, i1 true)
  %1 = trunc nuw nsw i64 %0 to i32
  %log = shl nuw nsw i32 %1, 1
  %limit = xor i32 %log, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h6aa3617edc74af8eE(ptr noalias noundef nonnull align 8 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 8 %scratch.0, i64 noundef %scratch.1, i32 noundef %limit, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias noundef align 8 dereferenceable(8) %is_less) #34
  ret void
}

; core::slice::sort::stable::drift::stable_quicksort
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6stable5drift16stable_quicksort17h8b40abe2c58c93c3E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #1 {
start:
  %self = or i64 %v.1, 1
  %0 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self, i1 true)
  %1 = trunc nuw nsw i64 %0 to i32
  %log = shl nuw nsw i32 %1, 1
  %limit = xor i32 %log, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h29f47d65ff463170E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef %limit, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef align 8 dereferenceable(8) %is_less) #34
  ret void
}

; core::slice::sort::stable::drift::sort
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6stable5drift4sort17h5baa579da18fc185E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #1 personality ptr @rust_eh_personality {
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
  %2 = tail call noundef i64 @_ZN4core5slice4sort6stable5drift10create_run17he4a5d5408d856782E(ptr noalias noundef nonnull align 4 %_82, i64 noundef %new_len, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i64 noundef %min_good_run_len.sroa.0.0, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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

bb12:                                             ; preds = %bb12.lr.ph, %_ZN4core5slice4sort6stable5drift13logical_merge17h77240b02d0b46790E.exit
  %stack_len.sroa.0.150 = phi i64 [ %stack_len.sroa.0.0, %bb12.lr.ph ], [ %count, %_ZN4core5slice4sort6stable5drift13logical_merge17h77240b02d0b46790E.exit ]
  %prev_run.sroa.0.149 = phi i64 [ %prev_run.sroa.0.0, %bb12.lr.ph ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h77240b02d0b46790E.exit ]
  %count = add i64 %stack_len.sroa.0.150, -1
  %_41 = getelementptr inbounds nuw i8, ptr %desired_depth_storage, i64 %count
  %_40 = load i8, ptr %_41, align 1, !noundef !37
  %_39.not = icmp ult i8 %_40, %desired_depth.sroa.0.0
  br i1 %_39.not, label %bb17, label %bb13

bb17:                                             ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17h77240b02d0b46790E.exit, %bb12, %bb10
  %prev_run.sroa.0.1.lcssa = phi i64 [ %prev_run.sroa.0.0, %bb10 ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h77240b02d0b46790E.exit ], [ %prev_run.sroa.0.149, %bb12 ]
  %stack_len.sroa.0.1.lcssa = phi i64 [ %stack_len.sroa.0.0, %bb10 ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17h77240b02d0b46790E.exit ], [ %stack_len.sroa.0.150, %bb12 ]
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
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h77240b02d0b46790E.exit

bb5.i:                                            ; preds = %bb11.i, %bb3.i
  br i1 %_10.not.i, label %bb16.i, label %bb7.i

bb11.i:                                           ; preds = %bb3.i
  %self.i = or i64 %_50, 1
  %8 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i, i1 true)
  %9 = trunc nuw nsw i64 %8 to i32
  %log.i = shl nuw nsw i32 %9, 1
  %limit.i = xor i32 %log.i, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h29f47d65ff463170E(ptr noalias noundef nonnull align 4 %_98, i64 noundef range(i64 0, 2305843009213693952) %_50, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #34
  br label %bb5.i

bb7.i:                                            ; preds = %bb16.i, %bb5.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1673)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1676)
  %_6.i = icmp ult i64 %left10, 2
  %_7.i = icmp ult i64 %prev_run.sroa.0.149, 2
  %or.cond.i = or i1 %_7.i, %_6.i
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17h688fe9b76dfd8950E.exit, label %bb2.i

bb2.i:                                            ; preds = %bb7.i
  %_0.sroa.0.0.i.i = tail call i64 @llvm.umin.i64(i64 %_51, i64 %_50)
  %_8.i = icmp samesign ult i64 %scratch.1, %_0.sroa.0.0.i.i
  br i1 %_8.i, label %_ZN4core5slice4sort6stable5merge5merge17h688fe9b76dfd8950E.exit, label %bb5.i37

bb5.i37:                                          ; preds = %bb2.i
  %v_mid.i = getelementptr inbounds nuw i32, ptr %_98, i64 %_50
  %left_is_shorter.not.i = icmp samesign ugt i64 %_50, %_51
  %spec.select.i = select i1 %left_is_shorter.not.i, ptr %v_mid.i, ptr %_98
  %10 = shl nuw nsw i64 %_0.sroa.0.0.i.i, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %scratch.0, ptr nonnull align 4 %spec.select.i, i64 %10, i1 false), !alias.scope !1678
  %_22.i38 = getelementptr inbounds nuw i8, ptr %scratch.0, i64 %10
  br i1 %left_is_shorter.not.i, label %bb1.i.i, label %bb3.i.i

bb1.i.i:                                          ; preds = %bb5.i37, %bb1.i.i
  %_2110.i.i = phi ptr [ %_21.i.i, %bb1.i.i ], [ %_22.i38, %bb5.i37 ]
  %_188.i.i = phi ptr [ %_18.i.i, %bb1.i.i ], [ %spec.select.i, %bb5.i37 ]
  %out.sroa.0.0.i.i = phi ptr [ %13, %bb1.i.i ], [ %v_end.i, %bb5.i37 ]
  %11 = getelementptr inbounds i8, ptr %_188.i.i, i64 -4
  %12 = getelementptr inbounds i8, ptr %_2110.i.i, i64 -4
  %13 = getelementptr inbounds i8, ptr %out.sroa.0.0.i.i, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1679)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1682)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1684)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1687)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1689)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1692)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1694)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1697)
  %_3.i.i.i.i.i.i = load i32, ptr %12, align 4, !alias.scope !1699, !noalias !1700, !noundef !37
  %_4.i.i.i.i.i.i = load i32, ptr %11, align 4, !alias.scope !1703, !noalias !1704, !noundef !37
  %_0.i.i.i = icmp slt i32 %_3.i.i.i.i.i.i, %_4.i.i.i.i.i.i
  %14 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i.i.i, i32 %_4.i.i.i.i.i.i)
  store i32 %14, ptr %13, align 4, !alias.scope !1673, !noalias !1705
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1706)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1709)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1711)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1714)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1716)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1719)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1721)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1724)
  %_3.i.i.i.i.i12.i = load i32, ptr %right.sroa.0.010.i.i, align 4, !alias.scope !1726, !noalias !1727, !noundef !37
  %_4.i.i.i.i.i13.i = load i32, ptr %_2059.i.i, align 4, !alias.scope !1730, !noalias !1731, !noundef !37
  %_0.i.i14.i = icmp slt i32 %_3.i.i.i.i.i12.i, %_4.i.i.i.i.i13.i
  %consume_left.i.i = xor i1 %_0.i.i14.i, true
  %15 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i12.i, i32 %_4.i.i.i.i.i13.i)
  store i32 %15, ptr %_2511.i.i, align 4, !alias.scope !1673, !noalias !1732
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %merge_state.sroa.13.0.i, ptr align 4 %merge_state.sroa.0.0.i, i64 %18, i1 false), !alias.scope !1678, !noalias !1733
  br label %_ZN4core5slice4sort6stable5merge5merge17h688fe9b76dfd8950E.exit

_ZN4core5slice4sort6stable5merge5merge17h688fe9b76dfd8950E.exit: ; preds = %bb7.i, %bb2.i, %bb16.i40
  %_39.i = shl nuw nsw i64 %merged_len, 1
  %_38.i = or disjoint i64 %_39.i, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h77240b02d0b46790E.exit

bb16.i:                                           ; preds = %bb5.i
  %_37.i = getelementptr inbounds nuw i32, ptr %_98, i64 %_50
  %self.i41 = or i64 %_51, 1
  %19 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i41, i1 true)
  %20 = trunc nuw nsw i64 %19 to i32
  %log.i42 = shl nuw nsw i32 %20, 1
  %limit.i43 = xor i32 %log.i42, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h29f47d65ff463170E(ptr noalias noundef nonnull align 4 %_37.i, i64 noundef range(i64 0, 2305843009213693952) %_51, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i43, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #34
  br label %bb7.i

_ZN4core5slice4sort6stable5drift13logical_merge17h77240b02d0b46790E.exit: ; preds = %bb9.i, %_ZN4core5slice4sort6stable5merge5merge17h688fe9b76dfd8950E.exit
  %_0.sroa.0.0.i = phi i64 [ %_38.i, %_ZN4core5slice4sort6stable5merge5merge17h688fe9b76dfd8950E.exit ], [ %_40.i, %bb9.i ]
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
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h29f47d65ff463170E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i46, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef align 8 dereferenceable(8) %is_less) #34
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
define void @_ZN4core5slice4sort6stable5drift4sort17h6aa4f489c3c231eeE(ptr noalias noundef nonnull align 8 %v.0, i64 noundef range(i64 0, 384307168202282326) %v.1, ptr noalias noundef nonnull align 8 %scratch.0, i64 noundef range(i64 0, 384307168202282326) %scratch.1, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #1 personality ptr @rust_eh_personality {
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
  %2 = tail call noundef i64 @_ZN4core5slice4sort6stable5drift10create_run17h144e354a571d8fbeE(ptr noalias noundef nonnull align 8 %_82, i64 noundef %new_len, ptr noalias noundef nonnull align 8 %scratch.0, i64 noundef %scratch.1, i64 noundef %min_good_run_len.sroa.0.0, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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

bb12:                                             ; preds = %bb10, %_ZN4core5slice4sort6stable5drift13logical_merge17h23bed48e6891bee4E.exit
  %stack_len.sroa.0.145 = phi i64 [ %count, %_ZN4core5slice4sort6stable5drift13logical_merge17h23bed48e6891bee4E.exit ], [ %stack_len.sroa.0.0, %bb10 ]
  %prev_run.sroa.0.144 = phi i64 [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h23bed48e6891bee4E.exit ], [ %prev_run.sroa.0.0, %bb10 ]
  %count = add i64 %stack_len.sroa.0.145, -1
  %_41 = getelementptr inbounds nuw i8, ptr %desired_depth_storage, i64 %count
  %_40 = load i8, ptr %_41, align 1, !noundef !37
  %_39.not = icmp ult i8 %_40, %desired_depth.sroa.0.0
  br i1 %_39.not, label %bb17, label %bb13

bb17:                                             ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17h23bed48e6891bee4E.exit, %bb12, %bb10
  %prev_run.sroa.0.1.lcssa = phi i64 [ %prev_run.sroa.0.0, %bb10 ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h23bed48e6891bee4E.exit ], [ %prev_run.sroa.0.144, %bb12 ]
  %stack_len.sroa.0.1.lcssa = phi i64 [ %stack_len.sroa.0.0, %bb10 ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17h23bed48e6891bee4E.exit ], [ %stack_len.sroa.0.145, %bb12 ]
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
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h23bed48e6891bee4E.exit

bb5.i:                                            ; preds = %bb11.i, %bb3.i
  br i1 %_10.not.i, label %bb16.i, label %bb7.i

bb11.i:                                           ; preds = %bb3.i
  %self.i = or i64 %_50, 1
  %8 = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %self.i, i1 true)
  %9 = trunc nuw nsw i64 %8 to i32
  %log.i = shl nuw nsw i32 %9, 1
  %limit.i = xor i32 %log.i, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h6aa3617edc74af8eE(ptr noalias noundef nonnull align 8 %_98, i64 noundef range(i64 0, 384307168202282326) %_50, ptr noalias noundef nonnull align 8 %scratch.0, i64 noundef range(i64 0, 384307168202282326) %scratch.1, i32 noundef %limit.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #34
  br label %bb5.i

bb7.i:                                            ; preds = %bb16.i, %bb5.i
; call core::slice::sort::stable::merge::merge
  tail call void @_ZN4core5slice4sort6stable5merge5merge17hc9e947f542eaded7E(ptr noalias noundef nonnull align 8 %_98, i64 noundef range(i64 0, 384307168202282326) %merged_len, ptr noalias noundef nonnull align 8 %scratch.0, i64 noundef range(i64 0, 384307168202282326) %scratch.1, i64 noundef %_50, ptr noalias nonnull align 8 poison)
  %_39.i = shl nuw nsw i64 %merged_len, 1
  %_38.i = or disjoint i64 %_39.i, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h23bed48e6891bee4E.exit

bb16.i:                                           ; preds = %bb5.i
  %_37.i = getelementptr inbounds nuw %"alloc::string::String", ptr %_98, i64 %_50
  %self.i37 = or i64 %_51, 1
  %10 = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %self.i37, i1 true)
  %11 = trunc nuw nsw i64 %10 to i32
  %log.i38 = shl nuw nsw i32 %11, 1
  %limit.i39 = xor i32 %log.i38, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h6aa3617edc74af8eE(ptr noalias noundef nonnull align 8 %_37.i, i64 noundef range(i64 0, 384307168202282326) %_51, ptr noalias noundef nonnull align 8 %scratch.0, i64 noundef range(i64 0, 384307168202282326) %scratch.1, i32 noundef %limit.i39, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #34
  br label %bb7.i

_ZN4core5slice4sort6stable5drift13logical_merge17h23bed48e6891bee4E.exit: ; preds = %bb9.i, %bb7.i
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
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h6aa3617edc74af8eE(ptr noalias noundef nonnull align 8 %v.0, i64 noundef range(i64 0, 384307168202282326) %v.1, ptr noalias noundef nonnull align 8 %scratch.0, i64 noundef range(i64 0, 384307168202282326) %scratch.1, i32 noundef %limit.i42, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias noundef align 8 dereferenceable(8) %is_less) #34
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
define void @"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h52789d2e34903b8eE"(ptr noalias noundef align 8 captures(none) dereferenceable(24) %self, ptr noundef readnone captures(address) %left_end, ptr noundef readnone captures(address) %right_end, ptr noundef writeonly captures(none) %0, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #11 {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1738)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1741)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1743)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1746)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1748)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1751)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1753)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1756)
  %6 = getelementptr inbounds i8, ptr %_219, i64 -16
  %_7.i.i.i.i = load ptr, ptr %6, align 8, !alias.scope !1758, !noalias !1759, !nonnull !37, !noundef !37
  %7 = getelementptr inbounds i8, ptr %_219, i64 -8
  %len1.i.i.i.i = load i64, ptr %7, align 8, !alias.scope !1758, !noalias !1759, !noundef !37
  %8 = getelementptr inbounds i8, ptr %_187, i64 -16
  %_14.i.i.i.i = load ptr, ptr %8, align 8, !alias.scope !1759, !noalias !1758, !nonnull !37, !noundef !37
  %9 = getelementptr inbounds i8, ptr %_187, i64 -8
  %10 = load i64, ptr %9, align 8, !alias.scope !1759, !noalias !1758, !noundef !37
  %spec.store.select.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %len1.i.i.i.i, i64 range(i64 0, -9223372036854775808) %10)
  %11 = tail call i32 @memcmp(ptr nonnull readonly align 1 %_7.i.i.i.i, ptr nonnull readonly align 1 %_14.i.i.i.i, i64 %spec.store.select.i.i.i.i.i), !alias.scope !1760, !noalias !1764
  %12 = sext i32 %11 to i64
  %_15.i.i.i.i.i = icmp eq i32 %11, 0
  %diff.i.i.i.i.i = sub nsw i64 %len1.i.i.i.i, %10
  %spec.select.i.i.i.i.i = select i1 %_15.i.i.i.i.i, i64 %diff.i.i.i.i.i, i64 %12
  %_0.i = icmp sgt i64 %spec.select.i.i.i.i.i, -1
  %. = select i1 %_0.i, ptr %4, ptr %3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %., i64 24, i1 false)
  %count = zext i1 %_0.i to i64
  %_18 = getelementptr inbounds nuw %"alloc::string::String", ptr %3, i64 %count
  %spec.select.i.i.i.i.i.lobit = lshr i64 %spec.select.i.i.i.i.i, 63
  %_21 = getelementptr inbounds nuw %"alloc::string::String", ptr %4, i64 %spec.select.i.i.i.i.i.lobit
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
define void @"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17ha30e0ffa61c3118fE"(ptr noalias noundef align 8 captures(none) dereferenceable(24) %self, ptr noundef readnone captures(address) %left_end, ptr noundef readnone captures(address) %right_end, ptr noundef writeonly captures(none) %0, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #12 {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1765)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1768)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1770)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1773)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1775)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1778)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1780)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1783)
  %_3.i.i.i.i = load i32, ptr %4, align 4, !alias.scope !1785, !noalias !1786, !noundef !37
  %_4.i.i.i.i = load i32, ptr %3, align 4, !alias.scope !1786, !noalias !1785, !noundef !37
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
define void @"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h47a31bbb4792befcE"(ptr noalias noundef align 8 captures(none) dereferenceable(24) %self, ptr noundef readonly captures(address) %0, ptr noundef readnone captures(address) %right_end, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #13 {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1787)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1790)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1792)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1795)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1797)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1800)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1802)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1805)
  %_3.i.i.i.i = load i32, ptr %right.sroa.0.010, align 4, !alias.scope !1807, !noalias !1808, !noundef !37
  %_4.i.i.i.i = load i32, ptr %_2059, align 4, !alias.scope !1808, !noalias !1807, !noundef !37
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
define void @"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17hfc2a01dc7156f439E"(ptr noalias noundef align 8 captures(none) dereferenceable(24) %self, ptr noundef readonly captures(address) %0, ptr noundef readnone captures(address) %right_end, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #11 {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1809)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1812)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1814)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1817)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1819)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1822)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1824)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1827)
  %3 = getelementptr inbounds nuw i8, ptr %right.sroa.0.010, i64 8
  %_7.i.i.i.i = load ptr, ptr %3, align 8, !alias.scope !1829, !noalias !1830, !nonnull !37, !noundef !37
  %4 = getelementptr inbounds nuw i8, ptr %right.sroa.0.010, i64 16
  %len1.i.i.i.i = load i64, ptr %4, align 8, !alias.scope !1829, !noalias !1830, !noundef !37
  %5 = getelementptr inbounds nuw i8, ptr %_2059, i64 8
  %_14.i.i.i.i = load ptr, ptr %5, align 8, !alias.scope !1830, !noalias !1829, !nonnull !37, !noundef !37
  %6 = getelementptr inbounds nuw i8, ptr %_2059, i64 16
  %7 = load i64, ptr %6, align 8, !alias.scope !1830, !noalias !1829, !noundef !37
  %spec.store.select.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %len1.i.i.i.i, i64 range(i64 0, -9223372036854775808) %7)
  %8 = tail call i32 @memcmp(ptr nonnull readonly align 1 %_7.i.i.i.i, ptr nonnull readonly align 1 %_14.i.i.i.i, i64 %spec.store.select.i.i.i.i.i), !alias.scope !1831, !noalias !1835
  %9 = sext i32 %8 to i64
  %_15.i.i.i.i.i = icmp eq i32 %8, 0
  %diff.i.i.i.i.i = sub nsw i64 %len1.i.i.i.i, %7
  %spec.select.i.i.i.i.i = select i1 %_15.i.i.i.i.i, i64 %diff.i.i.i.i.i, i64 %9
  %_0.i = icmp sgt i64 %spec.select.i.i.i.i.i, -1
  %src.sroa.0.0 = select i1 %_0.i, ptr %_2059, ptr %right.sroa.0.010
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_2511, ptr noundef nonnull align 8 dereferenceable(24) %src.sroa.0.0, i64 24, i1 false)
  %count = zext i1 %_0.i to i64
  %_20 = getelementptr inbounds nuw %"alloc::string::String", ptr %_2059, i64 %count
  %spec.select.i.i.i.i.i.lobit = lshr i64 %spec.select.i.i.i.i.i, 63
  %_23 = getelementptr inbounds nuw %"alloc::string::String", ptr %right.sroa.0.010, i64 %spec.select.i.i.i.i.i.lobit
  %_25 = getelementptr inbounds nuw i8, ptr %_2511, i64 24
  %_7 = icmp ne ptr %_20, %_9
  %_10 = icmp ne ptr %_23, %right_end
  %or.cond = select i1 %_7, i1 %_10, i1 false
  br i1 %or.cond, label %bb3, label %bb1.bb9_crit_edge
}

; core::slice::sort::stable::merge::merge
; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core5slice4sort6stable5merge5merge17h688fe9b76dfd8950E(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %0, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1836)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1839)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1841)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1844)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1846)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1849)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1851)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1854)
  %_3.i.i.i.i.i = load i32, ptr %3, align 4, !alias.scope !1856, !noalias !1857, !noundef !37
  %_4.i.i.i.i.i = load i32, ptr %2, align 4, !alias.scope !1860, !noalias !1861, !noundef !37
  %_0.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %5 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i.i, i32 %_4.i.i.i.i.i)
  store i32 %5, ptr %4, align 4, !noalias !1862
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1863)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1866)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1868)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1871)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1873)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1876)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1878)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1881)
  %_3.i.i.i.i.i12 = load i32, ptr %right.sroa.0.010.i, align 4, !alias.scope !1883, !noalias !1884, !noundef !37
  %_4.i.i.i.i.i13 = load i32, ptr %_2059.i, align 4, !alias.scope !1887, !noalias !1888, !noundef !37
  %_0.i.i14 = icmp slt i32 %_3.i.i.i.i.i12, %_4.i.i.i.i.i13
  %consume_left.i = xor i1 %_0.i.i14, true
  %6 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i12, i32 %_4.i.i.i.i.i13)
  store i32 %6, ptr %_2511.i, align 4, !noalias !1889
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %merge_state.sroa.13.0, ptr align 4 %merge_state.sroa.0.0, i64 %9, i1 false), !noalias !1890
  br label %bb18

bb18:                                             ; preds = %bb2, %start, %bb16
  ret void
}

; core::slice::sort::stable::merge::merge
; Function Attrs: nofree norecurse nounwind nonlazybind uwtable
define void @_ZN4core5slice4sort6stable5merge5merge17hc9e947f542eaded7E(ptr noalias noundef nonnull align 8 captures(address) %v.0, i64 noundef range(i64 0, 384307168202282326) %v.1, ptr noalias noundef nonnull align 8 %scratch.0, i64 noundef range(i64 0, 384307168202282326) %scratch.1, i64 noundef %0, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #11 personality ptr @rust_eh_personality {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1895)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1898)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1900)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1903)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1905)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1908)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1910)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1913)
  %5 = getelementptr inbounds i8, ptr %_219.i, i64 -16
  %_7.i.i.i.i.i = load ptr, ptr %5, align 8, !alias.scope !1915, !noalias !1916, !nonnull !37, !noundef !37
  %6 = getelementptr inbounds i8, ptr %_219.i, i64 -8
  %len1.i.i.i.i.i = load i64, ptr %6, align 8, !alias.scope !1915, !noalias !1916, !noundef !37
  %7 = getelementptr inbounds i8, ptr %_187.i, i64 -16
  %_14.i.i.i.i.i = load ptr, ptr %7, align 8, !alias.scope !1919, !noalias !1920, !nonnull !37, !noundef !37
  %8 = getelementptr inbounds i8, ptr %_187.i, i64 -8
  %9 = load i64, ptr %8, align 8, !alias.scope !1919, !noalias !1920, !noundef !37
  %spec.store.select.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %len1.i.i.i.i.i, i64 range(i64 0, -9223372036854775808) %9)
  %10 = tail call i32 @memcmp(ptr nonnull readonly align 1 %_7.i.i.i.i.i, ptr nonnull readonly align 1 %_14.i.i.i.i.i, i64 %spec.store.select.i.i.i.i.i.i), !alias.scope !1921, !noalias !1925
  %11 = sext i32 %10 to i64
  %_15.i.i.i.i.i.i = icmp eq i32 %10, 0
  %diff.i.i.i.i.i.i = sub nsw i64 %len1.i.i.i.i.i, %9
  %spec.select.i.i.i.i.i.i = select i1 %_15.i.i.i.i.i.i, i64 %diff.i.i.i.i.i.i, i64 %11
  %_0.i.i = icmp sgt i64 %spec.select.i.i.i.i.i.i, -1
  %..i = select i1 %_0.i.i, ptr %3, ptr %2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %..i, i64 24, i1 false), !noalias !1926
  %count.i = zext i1 %_0.i.i to i64
  %_18.i = getelementptr inbounds nuw %"alloc::string::String", ptr %2, i64 %count.i
  %spec.select.i.i.i.i.i.lobit.i = lshr i64 %spec.select.i.i.i.i.i.i, 63
  %_21.i = getelementptr inbounds nuw %"alloc::string::String", ptr %3, i64 %spec.select.i.i.i.i.i.lobit.i
  %_23.i = icmp eq ptr %_18.i, %v.0
  %_26.i = icmp eq ptr %_21.i, %scratch.0
  %or.cond.i = select i1 %_23.i, i1 true, i1 %_26.i
  br i1 %or.cond.i, label %bb16, label %bb1.i

bb12:                                             ; preds = %bb5
  %_76.i.not = icmp eq i64 %0, 0
  br i1 %_76.i.not, label %bb16, label %bb3.i

bb3.i:                                            ; preds = %bb12, %bb3.i
  %_2511.i = phi ptr [ %_25.i, %bb3.i ], [ %spec.select, %bb12 ]
  %right.sroa.0.010.i = phi ptr [ %_23.i22, %bb3.i ], [ %v_mid, %bb12 ]
  %_2059.i = phi ptr [ %_20.i, %bb3.i ], [ %scratch.0, %bb12 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1927)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1930)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1932)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1935)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1937)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1940)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1942)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1945)
  %12 = getelementptr inbounds nuw i8, ptr %right.sroa.0.010.i, i64 8
  %_7.i.i.i.i.i12 = load ptr, ptr %12, align 8, !alias.scope !1947, !noalias !1948, !nonnull !37, !noundef !37
  %13 = getelementptr inbounds nuw i8, ptr %right.sroa.0.010.i, i64 16
  %len1.i.i.i.i.i13 = load i64, ptr %13, align 8, !alias.scope !1947, !noalias !1948, !noundef !37
  %14 = getelementptr inbounds nuw i8, ptr %_2059.i, i64 8
  %_14.i.i.i.i.i14 = load ptr, ptr %14, align 8, !alias.scope !1951, !noalias !1952, !nonnull !37, !noundef !37
  %15 = getelementptr inbounds nuw i8, ptr %_2059.i, i64 16
  %16 = load i64, ptr %15, align 8, !alias.scope !1951, !noalias !1952, !noundef !37
  %spec.store.select.i.i.i.i.i.i15 = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %len1.i.i.i.i.i13, i64 range(i64 0, -9223372036854775808) %16)
  %17 = tail call i32 @memcmp(ptr nonnull readonly align 1 %_7.i.i.i.i.i12, ptr nonnull readonly align 1 %_14.i.i.i.i.i14, i64 %spec.store.select.i.i.i.i.i.i15), !alias.scope !1953, !noalias !1957
  %18 = sext i32 %17 to i64
  %_15.i.i.i.i.i.i16 = icmp eq i32 %17, 0
  %diff.i.i.i.i.i.i17 = sub nsw i64 %len1.i.i.i.i.i13, %16
  %spec.select.i.i.i.i.i.i18 = select i1 %_15.i.i.i.i.i.i16, i64 %diff.i.i.i.i.i.i17, i64 %18
  %_0.i.i19 = icmp sgt i64 %spec.select.i.i.i.i.i.i18, -1
  %src.sroa.0.0.i = select i1 %_0.i.i19, ptr %_2059.i, ptr %right.sroa.0.010.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_2511.i, ptr noundef nonnull align 8 dereferenceable(24) %src.sroa.0.0.i, i64 24, i1 false), !noalias !1958
  %count.i20 = zext i1 %_0.i.i19 to i64
  %_20.i = getelementptr inbounds nuw %"alloc::string::String", ptr %_2059.i, i64 %count.i20
  %spec.select.i.i.i.i.i.lobit.i21 = lshr i64 %spec.select.i.i.i.i.i.i18, 63
  %_23.i22 = getelementptr inbounds nuw %"alloc::string::String", ptr %right.sroa.0.010.i, i64 %spec.select.i.i.i.i.i.lobit.i21
  %_25.i = getelementptr inbounds nuw i8, ptr %_2511.i, i64 24
  %_7.i = icmp ne ptr %_20.i, %_22
  %_10.i = icmp ne ptr %_23.i22, %v_end
  %or.cond.i23 = select i1 %_7.i, i1 %_10.i, i1 false
  br i1 %or.cond.i23, label %bb3.i, label %bb16

bb16:                                             ; preds = %bb3.i, %bb1.i, %bb12
  %merge_state.sroa.13.0 = phi ptr [ %spec.select, %bb12 ], [ %_18.i, %bb1.i ], [ %_25.i, %bb3.i ]
  %merge_state.sroa.7.0 = phi ptr [ %_22, %bb12 ], [ %_21.i, %bb1.i ], [ %_22, %bb3.i ]
  %merge_state.sroa.0.0 = phi ptr [ %scratch.0, %bb12 ], [ %scratch.0, %bb1.i ], [ %_20.i, %bb3.i ]
  %19 = ptrtoint ptr %merge_state.sroa.7.0 to i64
  %20 = ptrtoint ptr %merge_state.sroa.0.0 to i64
  %21 = sub nuw i64 %19, %20
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %merge_state.sroa.13.0, ptr align 8 %merge_state.sroa.0.0, i64 %21, i1 false), !noalias !1959
  br label %bb18

bb18:                                             ; preds = %bb2, %start, %bb16
  ret void
}

; core::slice::sort::stable::quicksort::stable_partition
; Function Attrs: nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17h2d423c034a790133E(ptr noalias noundef nonnull align 8 captures(address) %v.0, i64 noundef range(i64 0, 384307168202282326) %v.1, ptr noalias noundef nonnull align 8 captures(none) %scratch.0, i64 noundef range(i64 0, 384307168202282326) %scratch.1, i64 noundef %0, i1 noundef zeroext %pivot_goes_left, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #8 {
start:
  %_8 = icmp samesign uge i64 %scratch.1, %v.1
  %.not = icmp ult i64 %0, %v.1
  %or.cond = and i1 %_8, %.not
  br i1 %or.cond, label %bb33, label %bb31, !prof !1964

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
  %state.sroa.11.0 = phi i64 [ 0, %bb33 ], [ %11, %bb23 ]
  %state.sroa.5.0 = phi ptr [ %v.0, %bb33 ], [ %_9.i28, %bb23 ]
  %state.sroa.19.0 = phi ptr [ %_86, %bb33 ], [ %10, %bb23 ]
  %pivot_pos.sroa.0.0 = phi i64 [ %0, %bb33 ], [ %v.1, %bb23 ]
  %loop_end = getelementptr inbounds nuw %"alloc::string::String", ptr %v.0, i64 %pivot_pos.sroa.0.0
  %_4734 = icmp ult ptr %state.sroa.5.0, %loop_end
  br i1 %_4734, label %bb18, label %bb21

bb21:                                             ; preds = %bb18, %bb3
  %state.sroa.11.1.lcssa = phi i64 [ %state.sroa.11.0, %bb3 ], [ %9, %bb18 ]
  %state.sroa.5.1.lcssa = phi ptr [ %state.sroa.5.0, %bb3 ], [ %_9.i, %bb18 ]
  %state.sroa.19.1.lcssa = phi ptr [ %state.sroa.19.0, %bb3 ], [ %8, %bb18 ]
  %_55 = icmp eq i64 %pivot_pos.sroa.0.0, %v.1
  br i1 %_55, label %bb22, label %bb23

bb18:                                             ; preds = %bb3, %bb18
  %state.sroa.19.137 = phi ptr [ %8, %bb18 ], [ %state.sroa.19.0, %bb3 ]
  %state.sroa.5.136 = phi ptr [ %_9.i, %bb18 ], [ %state.sroa.5.0, %bb3 ]
  %state.sroa.11.135 = phi i64 [ %9, %bb18 ], [ %state.sroa.11.0, %bb3 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1965)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1968)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1970)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1973)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1975)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1978)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1980)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1983)
  %3 = getelementptr inbounds nuw i8, ptr %state.sroa.5.136, i64 8
  %_7.i.i.i.i = load ptr, ptr %3, align 8, !alias.scope !1985, !noalias !1986, !nonnull !37, !noundef !37
  %4 = getelementptr inbounds nuw i8, ptr %state.sroa.5.136, i64 16
  %len1.i.i.i.i = load i64, ptr %4, align 8, !alias.scope !1985, !noalias !1986, !noundef !37
  %_14.i.i.i.i = load ptr, ptr %1, align 8, !alias.scope !1986, !noalias !1985, !nonnull !37, !noundef !37
  %5 = load i64, ptr %2, align 8, !alias.scope !1986, !noalias !1985, !noundef !37
  %spec.store.select.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %len1.i.i.i.i, i64 range(i64 0, -9223372036854775808) %5)
  %6 = tail call i32 @memcmp(ptr nonnull readonly align 1 %_7.i.i.i.i, ptr nonnull readonly align 1 %_14.i.i.i.i, i64 %spec.store.select.i.i.i.i.i), !alias.scope !1987, !noalias !1991
  %7 = sext i32 %6 to i64
  %_15.i.i.i.i.i = icmp eq i32 %6, 0
  %diff.i.i.i.i.i = sub nsw i64 %len1.i.i.i.i, %5
  %spec.select.i.i.i.i.i = select i1 %_15.i.i.i.i.i, i64 %diff.i.i.i.i.i, i64 %7
  %_0.i = icmp slt i64 %spec.select.i.i.i.i.i, 0
  %8 = getelementptr inbounds i8, ptr %state.sroa.19.137, i64 -24
  %dst_base.sroa.0.0.i = select i1 %_0.i, ptr %scratch.0, ptr %8
  %dst.i = getelementptr inbounds nuw %"alloc::string::String", ptr %dst_base.sroa.0.0.i, i64 %state.sroa.11.135
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %dst.i, ptr noundef nonnull align 8 dereferenceable(24) %state.sroa.5.136, i64 24, i1 false), !noalias !1992
  %spec.select.i.i.i.i.i.lobit = lshr i64 %spec.select.i.i.i.i.i, 63
  %9 = add i64 %spec.select.i.i.i.i.i.lobit, %state.sroa.11.135
  %_9.i = getelementptr inbounds nuw i8, ptr %state.sroa.5.136, i64 24
  %_47 = icmp ult ptr %_9.i, %loop_end
  br i1 %_47, label %bb18, label %bb21

bb23:                                             ; preds = %bb21
  %10 = getelementptr inbounds i8, ptr %state.sroa.19.1.lcssa, i64 -24
  %dst_base.sroa.0.0.i23 = select i1 %pivot_goes_left, ptr %scratch.0, ptr %10
  %dst.i25 = getelementptr inbounds nuw %"alloc::string::String", ptr %dst_base.sroa.0.0.i23, i64 %state.sroa.11.1.lcssa
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %dst.i25, ptr noundef nonnull align 8 dereferenceable(24) %state.sroa.5.1.lcssa, i64 24, i1 false), !noalias !1995
  %11 = add i64 %state.sroa.11.1.lcssa, %_8.i27
  %_9.i28 = getelementptr inbounds nuw i8, ptr %state.sroa.5.1.lcssa, i64 24
  br label %bb3

bb22:                                             ; preds = %bb21
  %12 = mul i64 %state.sroa.11.1.lcssa, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %v.0, ptr nonnull align 8 %scratch.0, i64 %12, i1 false)
  %_63 = sub i64 %v.1, %state.sroa.11.1.lcssa
  %_9740.not = icmp eq i64 %v.1, %state.sroa.11.1.lcssa
  br i1 %_9740.not, label %bb30, label %bb42.lr.ph

bb42.lr.ph:                                       ; preds = %bb22
  %13 = getelementptr %"alloc::string::String", ptr %v.0, i64 %state.sroa.11.1.lcssa
  %.neg = add i64 %state.sroa.11.1.lcssa, 1
  %xtraiter = and i64 %_63, 1
  %14 = icmp eq i64 %v.1, %.neg
  br i1 %14, label %bb30.loopexit.unr-lcssa, label %bb42.lr.ph.new

bb42.lr.ph.new:                                   ; preds = %bb42.lr.ph
  %unroll_iter = and i64 %_63, -2
  %invariant.gep = getelementptr i8, ptr %13, i64 24
  br label %bb42

bb42:                                             ; preds = %bb42, %bb42.lr.ph.new
  %iter.sroa.0.041 = phi i64 [ 0, %bb42.lr.ph.new ], [ %18, %bb42 ]
  %niter = phi i64 [ 0, %bb42.lr.ph.new ], [ %niter.next.1, %bb42 ]
  %15 = getelementptr %"alloc::string::String", ptr %13, i64 %iter.sroa.0.041
  %16 = xor i64 %iter.sroa.0.041, -1
  %17 = getelementptr %"alloc::string::String", ptr %_86, i64 %16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %17, i64 24, i1 false)
  %18 = add nuw i64 %iter.sroa.0.041, 2
  %gep = getelementptr %"alloc::string::String", ptr %invariant.gep, i64 %iter.sroa.0.041
  %19 = xor i64 %iter.sroa.0.041, -2
  %20 = getelementptr %"alloc::string::String", ptr %_86, i64 %19
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %gep, ptr noundef nonnull align 8 dereferenceable(24) %20, i64 24, i1 false)
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %bb30.loopexit.unr-lcssa, label %bb42

bb30.loopexit.unr-lcssa:                          ; preds = %bb42, %bb42.lr.ph
  %iter.sroa.0.041.unr = phi i64 [ 0, %bb42.lr.ph ], [ %18, %bb42 ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb30, label %bb42.epil

bb42.epil:                                        ; preds = %bb30.loopexit.unr-lcssa
  %21 = getelementptr %"alloc::string::String", ptr %13, i64 %iter.sroa.0.041.unr
  %22 = xor i64 %iter.sroa.0.041.unr, -1
  %23 = getelementptr %"alloc::string::String", ptr %_86, i64 %22
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %21, ptr noundef nonnull align 8 dereferenceable(24) %23, i64 24, i1 false)
  br label %bb30

bb30:                                             ; preds = %bb42.epil, %bb30.loopexit.unr-lcssa, %bb22
  ret i64 %state.sroa.11.1.lcssa
}

; core::slice::sort::stable::quicksort::stable_partition
; Function Attrs: nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17h2d823a91305b5458E(ptr noalias noundef nonnull align 8 captures(address) %v.0, i64 noundef range(i64 0, 384307168202282326) %v.1, ptr noalias noundef nonnull align 8 captures(none) %scratch.0, i64 noundef range(i64 0, 384307168202282326) %scratch.1, i64 noundef %0, i1 noundef zeroext %pivot_goes_left, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #8 {
start:
  %_8 = icmp samesign uge i64 %scratch.1, %v.1
  %.not = icmp ult i64 %0, %v.1
  %or.cond = and i1 %_8, %.not
  br i1 %or.cond, label %bb33, label %bb31, !prof !1964

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
  %state.sroa.11.0 = phi i64 [ 0, %bb33 ], [ %11, %bb23 ]
  %state.sroa.5.0 = phi ptr [ %v.0, %bb33 ], [ %_9.i28, %bb23 ]
  %state.sroa.19.0 = phi ptr [ %_86, %bb33 ], [ %10, %bb23 ]
  %pivot_pos.sroa.0.0 = phi i64 [ %0, %bb33 ], [ %v.1, %bb23 ]
  %loop_end = getelementptr inbounds nuw %"alloc::string::String", ptr %v.0, i64 %pivot_pos.sroa.0.0
  %_4734 = icmp ult ptr %state.sroa.5.0, %loop_end
  br i1 %_4734, label %bb18, label %bb21

bb21:                                             ; preds = %bb18, %bb3
  %state.sroa.11.1.lcssa = phi i64 [ %state.sroa.11.0, %bb3 ], [ %9, %bb18 ]
  %state.sroa.5.1.lcssa = phi ptr [ %state.sroa.5.0, %bb3 ], [ %_9.i, %bb18 ]
  %state.sroa.19.1.lcssa = phi ptr [ %state.sroa.19.0, %bb3 ], [ %8, %bb18 ]
  %_55 = icmp eq i64 %pivot_pos.sroa.0.0, %v.1
  br i1 %_55, label %bb22, label %bb23

bb18:                                             ; preds = %bb3, %bb18
  %state.sroa.19.137 = phi ptr [ %8, %bb18 ], [ %state.sroa.19.0, %bb3 ]
  %state.sroa.5.136 = phi ptr [ %_9.i, %bb18 ], [ %state.sroa.5.0, %bb3 ]
  %state.sroa.11.135 = phi i64 [ %9, %bb18 ], [ %state.sroa.11.0, %bb3 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1998)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2001)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2003)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2006)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2008)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2011)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2013)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2016)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2018)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2021)
  %_7.i.i.i.i.i = load ptr, ptr %1, align 8, !alias.scope !2023, !noalias !2024, !nonnull !37, !noundef !37
  %len1.i.i.i.i.i = load i64, ptr %2, align 8, !alias.scope !2023, !noalias !2024, !noundef !37
  %3 = getelementptr inbounds nuw i8, ptr %state.sroa.5.136, i64 8
  %_14.i.i.i.i.i = load ptr, ptr %3, align 8, !alias.scope !2024, !noalias !2023, !nonnull !37, !noundef !37
  %4 = getelementptr inbounds nuw i8, ptr %state.sroa.5.136, i64 16
  %5 = load i64, ptr %4, align 8, !alias.scope !2024, !noalias !2023, !noundef !37
  %spec.store.select.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %len1.i.i.i.i.i, i64 range(i64 0, -9223372036854775808) %5)
  %6 = tail call i32 @memcmp(ptr nonnull readonly align 1 %_7.i.i.i.i.i, ptr nonnull readonly align 1 %_14.i.i.i.i.i, i64 %spec.store.select.i.i.i.i.i.i), !alias.scope !2025, !noalias !2029
  %7 = sext i32 %6 to i64
  %_15.i.i.i.i.i.i = icmp eq i32 %6, 0
  %diff.i.i.i.i.i.i = sub nsw i64 %len1.i.i.i.i.i, %5
  %spec.select.i.i.i.i.i.i = select i1 %_15.i.i.i.i.i.i, i64 %diff.i.i.i.i.i.i, i64 %7
  %_0.i.i = icmp sgt i64 %spec.select.i.i.i.i.i.i, -1
  %8 = getelementptr inbounds i8, ptr %state.sroa.19.137, i64 -24
  %dst_base.sroa.0.0.i = select i1 %_0.i.i, ptr %scratch.0, ptr %8
  %dst.i = getelementptr inbounds nuw %"alloc::string::String", ptr %dst_base.sroa.0.0.i, i64 %state.sroa.11.135
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %dst.i, ptr noundef nonnull align 8 dereferenceable(24) %state.sroa.5.136, i64 24, i1 false), !noalias !2030
  %_8.i = zext i1 %_0.i.i to i64
  %9 = add i64 %state.sroa.11.135, %_8.i
  %_9.i = getelementptr inbounds nuw i8, ptr %state.sroa.5.136, i64 24
  %_47 = icmp ult ptr %_9.i, %loop_end
  br i1 %_47, label %bb18, label %bb21

bb23:                                             ; preds = %bb21
  %10 = getelementptr inbounds i8, ptr %state.sroa.19.1.lcssa, i64 -24
  %dst_base.sroa.0.0.i23 = select i1 %pivot_goes_left, ptr %scratch.0, ptr %10
  %dst.i25 = getelementptr inbounds nuw %"alloc::string::String", ptr %dst_base.sroa.0.0.i23, i64 %state.sroa.11.1.lcssa
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %dst.i25, ptr noundef nonnull align 8 dereferenceable(24) %state.sroa.5.1.lcssa, i64 24, i1 false), !noalias !2033
  %11 = add i64 %state.sroa.11.1.lcssa, %_8.i27
  %_9.i28 = getelementptr inbounds nuw i8, ptr %state.sroa.5.1.lcssa, i64 24
  br label %bb3

bb22:                                             ; preds = %bb21
  %12 = mul i64 %state.sroa.11.1.lcssa, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %v.0, ptr nonnull align 8 %scratch.0, i64 %12, i1 false)
  %_63 = sub i64 %v.1, %state.sroa.11.1.lcssa
  %_9740.not = icmp eq i64 %v.1, %state.sroa.11.1.lcssa
  br i1 %_9740.not, label %bb30, label %bb42.lr.ph

bb42.lr.ph:                                       ; preds = %bb22
  %13 = getelementptr %"alloc::string::String", ptr %v.0, i64 %state.sroa.11.1.lcssa
  %.neg = add i64 %state.sroa.11.1.lcssa, 1
  %xtraiter = and i64 %_63, 1
  %14 = icmp eq i64 %v.1, %.neg
  br i1 %14, label %bb30.loopexit.unr-lcssa, label %bb42.lr.ph.new

bb42.lr.ph.new:                                   ; preds = %bb42.lr.ph
  %unroll_iter = and i64 %_63, -2
  %invariant.gep = getelementptr i8, ptr %13, i64 24
  br label %bb42

bb42:                                             ; preds = %bb42, %bb42.lr.ph.new
  %iter.sroa.0.041 = phi i64 [ 0, %bb42.lr.ph.new ], [ %18, %bb42 ]
  %niter = phi i64 [ 0, %bb42.lr.ph.new ], [ %niter.next.1, %bb42 ]
  %15 = getelementptr %"alloc::string::String", ptr %13, i64 %iter.sroa.0.041
  %16 = xor i64 %iter.sroa.0.041, -1
  %17 = getelementptr %"alloc::string::String", ptr %_86, i64 %16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %17, i64 24, i1 false)
  %18 = add nuw i64 %iter.sroa.0.041, 2
  %gep = getelementptr %"alloc::string::String", ptr %invariant.gep, i64 %iter.sroa.0.041
  %19 = xor i64 %iter.sroa.0.041, -2
  %20 = getelementptr %"alloc::string::String", ptr %_86, i64 %19
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %gep, ptr noundef nonnull align 8 dereferenceable(24) %20, i64 24, i1 false)
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %bb30.loopexit.unr-lcssa, label %bb42

bb30.loopexit.unr-lcssa:                          ; preds = %bb42, %bb42.lr.ph
  %iter.sroa.0.041.unr = phi i64 [ 0, %bb42.lr.ph ], [ %18, %bb42 ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb30, label %bb42.epil

bb42.epil:                                        ; preds = %bb30.loopexit.unr-lcssa
  %21 = getelementptr %"alloc::string::String", ptr %13, i64 %iter.sroa.0.041.unr
  %22 = xor i64 %iter.sroa.0.041.unr, -1
  %23 = getelementptr %"alloc::string::String", ptr %_86, i64 %22
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %21, ptr noundef nonnull align 8 dereferenceable(24) %23, i64 24, i1 false)
  br label %bb30

bb30:                                             ; preds = %bb42.epil, %bb30.loopexit.unr-lcssa, %bb22
  ret i64 %state.sroa.11.1.lcssa
}

; core::slice::sort::stable::quicksort::stable_partition
; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17ha89e4690b9848335E(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 captures(none) %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %0, i1 noundef zeroext %pivot_goes_left, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #7 {
start:
  %_8 = icmp samesign uge i64 %scratch.1, %v.1
  %.not = icmp ult i64 %0, %v.1
  %or.cond = and i1 %_8, %.not
  br i1 %or.cond, label %bb33, label %bb31, !prof !1964

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2036)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2039)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2041)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2044)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2046)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2049)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2051)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2054)
  %_3.i.i.i.i = load i32, ptr %state.sroa.9.187, align 4, !alias.scope !2056, !noalias !2057, !noundef !37
  %_4.i.i.i.i = load i32, ptr %pivot, align 4, !alias.scope !2057, !noalias !2056, !noundef !37
  %_0.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %2 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -4
  %dst_base.sroa.0.0.i = select i1 %_0.i, ptr %scratch.0, ptr %2
  %dst.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i, i64 %state.sroa.27.186
  store i32 %_3.i.i.i.i, ptr %dst.i, align 4, !noalias !2058
  %_8.i = zext i1 %_0.i to i64
  %3 = add i64 %state.sroa.27.186, %_8.i
  %_9.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2061)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2064)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2066)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2069)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2071)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2074)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2076)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2079)
  %_3.i.i.i.i25 = load i32, ptr %_9.i, align 4, !alias.scope !2081, !noalias !2082, !noundef !37
  %_4.i.i.i.i26 = load i32, ptr %pivot, align 4, !alias.scope !2082, !noalias !2081, !noundef !37
  %_0.i27 = icmp slt i32 %_3.i.i.i.i25, %_4.i.i.i.i26
  %4 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -8
  %dst_base.sroa.0.0.i29 = select i1 %_0.i27, ptr %scratch.0, ptr %4
  %dst.i31 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29, i64 %3
  store i32 %_3.i.i.i.i25, ptr %dst.i31, align 4, !noalias !2083
  %_8.i33 = zext i1 %_0.i27 to i64
  %5 = add i64 %3, %_8.i33
  %_9.i34 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2086)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2089)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2091)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2094)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2096)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2099)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2101)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2104)
  %_3.i.i.i.i35 = load i32, ptr %_9.i34, align 4, !alias.scope !2106, !noalias !2107, !noundef !37
  %_4.i.i.i.i36 = load i32, ptr %pivot, align 4, !alias.scope !2107, !noalias !2106, !noundef !37
  %_0.i37 = icmp slt i32 %_3.i.i.i.i35, %_4.i.i.i.i36
  %6 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -12
  %dst_base.sroa.0.0.i39 = select i1 %_0.i37, ptr %scratch.0, ptr %6
  %dst.i41 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39, i64 %5
  store i32 %_3.i.i.i.i35, ptr %dst.i41, align 4, !noalias !2108
  %_8.i43 = zext i1 %_0.i37 to i64
  %7 = add i64 %5, %_8.i43
  %_9.i44 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2111)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2114)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2116)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2119)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2121)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2124)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2126)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2129)
  %_3.i.i.i.i45 = load i32, ptr %_9.i44, align 4, !alias.scope !2131, !noalias !2132, !noundef !37
  %_4.i.i.i.i46 = load i32, ptr %pivot, align 4, !alias.scope !2132, !noalias !2131, !noundef !37
  %_0.i47 = icmp slt i32 %_3.i.i.i.i45, %_4.i.i.i.i46
  %8 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -16
  %dst_base.sroa.0.0.i49 = select i1 %_0.i47, ptr %scratch.0, ptr %8
  %dst.i51 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49, i64 %7
  store i32 %_3.i.i.i.i45, ptr %dst.i51, align 4, !noalias !2133
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2136)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2139)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2141)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2144)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2146)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2149)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2151)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2154)
  %_3.i.i.i.i55 = load i32, ptr %state.sroa.9.293, align 4, !alias.scope !2156, !noalias !2157, !noundef !37
  %_4.i.i.i.i56 = load i32, ptr %pivot, align 4, !alias.scope !2157, !noalias !2156, !noundef !37
  %_0.i57 = icmp slt i32 %_3.i.i.i.i55, %_4.i.i.i.i56
  %10 = getelementptr inbounds i8, ptr %state.sroa.43.294, i64 -4
  %dst_base.sroa.0.0.i59 = select i1 %_0.i57, ptr %scratch.0, ptr %10
  %dst.i61 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59, i64 %state.sroa.27.292
  store i32 %_3.i.i.i.i55, ptr %dst.i61, align 4, !noalias !2158
  %_8.i63 = zext i1 %_0.i57 to i64
  %11 = add i64 %state.sroa.27.292, %_8.i63
  %_9.i64 = getelementptr inbounds nuw i8, ptr %state.sroa.9.293, i64 4
  %_47 = icmp ult ptr %_9.i64, %loop_end
  br i1 %_47, label %bb18, label %bb21

bb23:                                             ; preds = %bb21
  %12 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa, i64 -4
  %dst_base.sroa.0.0.i66 = select i1 %pivot_goes_left, ptr %scratch.0, ptr %12
  %dst.i68 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i66, i64 %state.sroa.27.2.lcssa
  %13 = load i32, ptr %state.sroa.9.2.lcssa, align 4, !noalias !2161
  store i32 %13, ptr %dst.i68, align 4, !noalias !2161
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
  br i1 %epil.iter.cmp.not, label %bb30, label %bb42.epil, !llvm.loop !2164

bb30:                                             ; preds = %bb30.loopexit.unr-lcssa, %bb42.epil, %bb22
  ret i64 %state.sroa.27.2.lcssa
}

; core::slice::sort::stable::quicksort::stable_partition
; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17hb6ded74fc6134ad0E(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 captures(none) %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %0, i1 noundef zeroext %pivot_goes_left, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #7 {
start:
  %_8 = icmp samesign uge i64 %scratch.1, %v.1
  %.not = icmp ult i64 %0, %v.1
  %or.cond = and i1 %_8, %.not
  br i1 %or.cond, label %bb33, label %bb31, !prof !1964

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2166)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2169)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2171)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2174)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2176)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2179)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2181)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2184)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2186)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2189)
  %_3.i.i.i.i.i = load i32, ptr %pivot, align 4, !alias.scope !2191, !noalias !2192, !noundef !37
  %_4.i.i.i.i.i = load i32, ptr %state.sroa.9.187, align 4, !alias.scope !2192, !noalias !2191, !noundef !37
  %_0.i.i = icmp sge i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %2 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -4
  %dst_base.sroa.0.0.i = select i1 %_0.i.i, ptr %scratch.0, ptr %2
  %dst.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i, i64 %state.sroa.27.186
  store i32 %_4.i.i.i.i.i, ptr %dst.i, align 4, !noalias !2193
  %_8.i = zext i1 %_0.i.i to i64
  %3 = add i64 %state.sroa.27.186, %_8.i
  %_9.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2196)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2199)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2201)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2204)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2206)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2209)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2211)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2214)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2216)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2219)
  %_3.i.i.i.i.i25 = load i32, ptr %pivot, align 4, !alias.scope !2221, !noalias !2222, !noundef !37
  %_4.i.i.i.i.i26 = load i32, ptr %_9.i, align 4, !alias.scope !2222, !noalias !2221, !noundef !37
  %_0.i.i27 = icmp sge i32 %_3.i.i.i.i.i25, %_4.i.i.i.i.i26
  %4 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -8
  %dst_base.sroa.0.0.i29 = select i1 %_0.i.i27, ptr %scratch.0, ptr %4
  %dst.i31 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29, i64 %3
  store i32 %_4.i.i.i.i.i26, ptr %dst.i31, align 4, !noalias !2223
  %_8.i33 = zext i1 %_0.i.i27 to i64
  %5 = add i64 %3, %_8.i33
  %_9.i34 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2226)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2229)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2231)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2234)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2236)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2239)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2241)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2244)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2246)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2249)
  %_3.i.i.i.i.i35 = load i32, ptr %pivot, align 4, !alias.scope !2251, !noalias !2252, !noundef !37
  %_4.i.i.i.i.i36 = load i32, ptr %_9.i34, align 4, !alias.scope !2252, !noalias !2251, !noundef !37
  %_0.i.i37 = icmp sge i32 %_3.i.i.i.i.i35, %_4.i.i.i.i.i36
  %6 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -12
  %dst_base.sroa.0.0.i39 = select i1 %_0.i.i37, ptr %scratch.0, ptr %6
  %dst.i41 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39, i64 %5
  store i32 %_4.i.i.i.i.i36, ptr %dst.i41, align 4, !noalias !2253
  %_8.i43 = zext i1 %_0.i.i37 to i64
  %7 = add i64 %5, %_8.i43
  %_9.i44 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2256)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2259)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2261)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2264)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2266)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2269)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2271)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2274)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2276)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2279)
  %_3.i.i.i.i.i45 = load i32, ptr %pivot, align 4, !alias.scope !2281, !noalias !2282, !noundef !37
  %_4.i.i.i.i.i46 = load i32, ptr %_9.i44, align 4, !alias.scope !2282, !noalias !2281, !noundef !37
  %_0.i.i47 = icmp sge i32 %_3.i.i.i.i.i45, %_4.i.i.i.i.i46
  %8 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -16
  %dst_base.sroa.0.0.i49 = select i1 %_0.i.i47, ptr %scratch.0, ptr %8
  %dst.i51 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49, i64 %7
  store i32 %_4.i.i.i.i.i46, ptr %dst.i51, align 4, !noalias !2283
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2286)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2289)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2291)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2294)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2296)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2299)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2301)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2304)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2306)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2309)
  %_3.i.i.i.i.i55 = load i32, ptr %pivot, align 4, !alias.scope !2311, !noalias !2312, !noundef !37
  %_4.i.i.i.i.i56 = load i32, ptr %state.sroa.9.293, align 4, !alias.scope !2312, !noalias !2311, !noundef !37
  %_0.i.i57 = icmp sge i32 %_3.i.i.i.i.i55, %_4.i.i.i.i.i56
  %10 = getelementptr inbounds i8, ptr %state.sroa.43.294, i64 -4
  %dst_base.sroa.0.0.i59 = select i1 %_0.i.i57, ptr %scratch.0, ptr %10
  %dst.i61 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59, i64 %state.sroa.27.292
  store i32 %_4.i.i.i.i.i56, ptr %dst.i61, align 4, !noalias !2313
  %_8.i63 = zext i1 %_0.i.i57 to i64
  %11 = add i64 %state.sroa.27.292, %_8.i63
  %_9.i64 = getelementptr inbounds nuw i8, ptr %state.sroa.9.293, i64 4
  %_47 = icmp ult ptr %_9.i64, %loop_end
  br i1 %_47, label %bb18, label %bb21

bb23:                                             ; preds = %bb21
  %12 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa, i64 -4
  %dst_base.sroa.0.0.i66 = select i1 %pivot_goes_left, ptr %scratch.0, ptr %12
  %dst.i68 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i66, i64 %state.sroa.27.2.lcssa
  %13 = load i32, ptr %state.sroa.9.2.lcssa, align 4, !noalias !2316
  store i32 %13, ptr %dst.i68, align 4, !noalias !2316
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
  br i1 %epil.iter.cmp.not, label %bb30, label %bb42.epil, !llvm.loop !2319

bb30:                                             ; preds = %bb30.loopexit.unr-lcssa, %bb42.epil, %bb22
  ret i64 %state.sroa.27.2.lcssa
}

; core::slice::sort::stable::quicksort::PartitionState<T>::partition_one
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define noundef ptr @"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h33b39459f975064aE"(ptr noalias noundef align 8 captures(none) dereferenceable(32) %self, i1 noundef zeroext %towards_left) unnamed_addr #14 {
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

; core::slice::sort::stable::quicksort::PartitionState<T>::partition_one
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define noundef ptr @"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h69277ab45df9696cE"(ptr noalias noundef align 8 captures(none) dereferenceable(32) %self, i1 noundef zeroext %towards_left) unnamed_addr #14 {
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

; core::slice::sort::stable::quicksort::quicksort
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable9quicksort9quicksort17h29f47d65ff463170E(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %2, ptr noalias noundef readonly align 4 captures(address) dereferenceable_or_null(4) %3, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #9 {
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

bb5:                                              ; preds = %bb5.lr.ph, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h0ceeda8e75cd17abE.exit"
  %v.sroa.16.034 = phi i64 [ %v.sroa.16.0.ph41, %bb5.lr.ph ], [ %left_partition_len.sroa.0.0, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h0ceeda8e75cd17abE.exit" ]
  %limit.sroa.0.033 = phi i32 [ %limit.sroa.0.0.ph40, %bb5.lr.ph ], [ %4, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h0ceeda8e75cd17abE.exit" ]
  %_11 = icmp eq i32 %limit.sroa.0.033, 0
  br i1 %_11, label %bb6, label %bb7

bb3:                                              ; preds = %bb28, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h0ceeda8e75cd17abE.exit", %start
  %v.sroa.0.0.ph.lcssa31 = phi ptr [ %0, %start ], [ %v.sroa.0.0.ph42, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h0ceeda8e75cd17abE.exit" ], [ %_54, %bb28 ]
  %v.sroa.16.0.lcssa = phi i64 [ %1, %start ], [ %left_partition_len.sroa.0.0, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h0ceeda8e75cd17abE.exit" ], [ %new_len, %bb28 ]
; call core::slice::sort::shared::smallsort::small_sort_general_with_scratch
  call void @_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h75b3ad44d1140d77E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph.lcssa31, i64 noundef range(i64 0, 33) %v.sroa.16.0.lcssa, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, ptr noalias nonnull align 8 poison)
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
  %self.i = call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hf37be3b880a53badE(ptr noundef nonnull readonly align 4 %v.sroa.0.0.ph42, ptr noundef nonnull readonly %b.i, ptr noundef nonnull readonly %c.i, i64 noundef %len_div_84.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less)
  br label %_ZN4core5slice4sort6shared5pivot12choose_pivot17hb8dcb72d6df55292E.exit

bb3.i:                                            ; preds = %bb7
  call void @llvm.experimental.noalias.scope.decl(metadata !2320)
  call void @llvm.experimental.noalias.scope.decl(metadata !2323)
  call void @llvm.experimental.noalias.scope.decl(metadata !2325), !noalias !2328
  call void @llvm.experimental.noalias.scope.decl(metadata !2331), !noalias !2328
  call void @llvm.experimental.noalias.scope.decl(metadata !2333), !noalias !2328
  call void @llvm.experimental.noalias.scope.decl(metadata !2336), !noalias !2328
  call void @llvm.experimental.noalias.scope.decl(metadata !2338), !noalias !2328
  call void @llvm.experimental.noalias.scope.decl(metadata !2341), !noalias !2328
  %_3.i.i.i.i.i = load i32, ptr %v.sroa.0.0.ph42, align 4, !alias.scope !2343, !noalias !2346, !noundef !37
  %_4.i.i.i.i.i = load i32, ptr %b.i, align 4, !alias.scope !2348, !noalias !2349, !noundef !37
  %_0.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %_4.i.i.i.i6.i = load i32, ptr %c.i, align 4, !alias.scope !2350, !noalias !2359, !noundef !37
  %_0.i7.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i6.i
  %5 = xor i1 %_0.i.i, %_0.i7.i
  %_0.i10.i = icmp slt i32 %_4.i.i.i.i.i, %_4.i.i.i.i6.i
  %_12.i.i = xor i1 %_0.i.i, %_0.i10.i
  %c.b.i.i = select i1 %_12.i.i, ptr %c.i, ptr %b.i
  %_0.sroa.0.0.i.i = select i1 %5, ptr %v.sroa.0.0.ph42, ptr %c.b.i.i
  br label %_ZN4core5slice4sort6shared5pivot12choose_pivot17hb8dcb72d6df55292E.exit

_ZN4core5slice4sort6shared5pivot12choose_pivot17hb8dcb72d6df55292E.exit: ; preds = %bb5.i, %bb3.i
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
  call void @_ZN4core5slice4sort6stable5drift4sort17h5baa579da18fc185E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph42, i64 noundef %v.sroa.16.034, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i1 noundef zeroext true, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  br label %bb22

bb12:                                             ; preds = %_ZN4core5slice4sort6shared5pivot12choose_pivot17hb8dcb72d6df55292E.exit
  %_3.i.i.i.i = load i32, ptr %left_ancestor_pivot.sroa.0.0.ph39, align 4, !alias.scope !2364, !noalias !2373, !noundef !37
  %_0.i.not = icmp slt i32 %_3.i.i.i.i, %value
  br i1 %_0.i.not, label %bb14, label %bb16

bb14:                                             ; preds = %_ZN4core5slice4sort6shared5pivot12choose_pivot17hb8dcb72d6df55292E.exit, %bb12
; call core::slice::sort::stable::quicksort::stable_partition
  %8 = call noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17ha89e4690b9848335E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph42, i64 noundef %v.sroa.16.034, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i64 noundef %index.sroa.0.0.i, i1 noundef zeroext false, ptr noalias align 8 poison)
  %9 = icmp eq i64 %8, 0
  br label %bb16

bb16:                                             ; preds = %bb14, %bb12
  %left_partition_len.sroa.0.0 = phi i64 [ 0, %bb12 ], [ %8, %bb14 ]
  %perform_equal_partition.sroa.0.0.in = phi i1 [ true, %bb12 ], [ %9, %bb14 ]
  br i1 %perform_equal_partition.sroa.0.0.in, label %bb17, label %bb19

bb19:                                             ; preds = %bb16
  %_6.not.i = icmp ugt i64 %left_partition_len.sroa.0.0, %v.sroa.16.034
  br i1 %_6.not.i, label %bb3.i23, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h0ceeda8e75cd17abE.exit", !prof !1481

bb3.i23:                                          ; preds = %bb19
; call core::panicking::panic_fmt
  call void @_ZN4core9panicking9panic_fmt17ha4414e4328fe24a0E(ptr noundef nonnull @alloc_d1084648e479974e70c9329824bf76f9, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_58d434a1e795f965ef82c8e9c5db822a) #31, !noalias !2378
  unreachable

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h0ceeda8e75cd17abE.exit": ; preds = %bb19
  %10 = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph42, i64 %left_partition_len.sroa.0.0
  %11 = sub nuw nsw i64 %v.sroa.16.034, %left_partition_len.sroa.0.0
; call core::slice::sort::stable::quicksort::quicksort
  call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h29f47d65ff463170E(ptr noalias noundef nonnull align 4 %10, i64 noundef %11, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef %4, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) %pivot_copy, ptr noalias noundef align 8 dereferenceable(8) %is_less) #34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_8 = icmp ult i64 %left_partition_len.sroa.0.0, 33
  br i1 %_8, label %bb3, label %bb5

bb17:                                             ; preds = %bb16
; call core::slice::sort::stable::quicksort::stable_partition
  %mid_eq = call noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17hb6ded74fc6134ad0E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph42, i64 noundef %v.sroa.16.034, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i64 noundef %index.sroa.0.0.i, i1 noundef zeroext true, ptr noalias align 8 poison)
  %_47 = icmp ugt i64 %mid_eq, %v.sroa.16.034
  br i1 %_47, label %bb27, label %bb28, !prof !1481

bb28:                                             ; preds = %bb17
  %new_len = sub nuw i64 %v.sroa.16.034, %mid_eq
  %_54 = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph42, i64 %mid_eq
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_832 = icmp ult i64 %new_len, 33
  br i1 %_832, label %bb3, label %bb5.lr.ph

bb27:                                             ; preds = %bb17
; call core::slice::index::slice_index_fail
  call void @_ZN4core5slice5index16slice_index_fail17h62807bcaa490c9c1E(i64 noundef %mid_eq, i64 noundef %v.sroa.16.034, i64 noundef %v.sroa.16.034, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_0766b232215672ee1bd2195fdb153938) #31
  unreachable

bb22:                                             ; preds = %bb3, %bb6
  ret void
}

; core::slice::sort::stable::quicksort::quicksort
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable9quicksort9quicksort17h6aa3617edc74af8eE(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias noundef nonnull align 8 %scratch.0, i64 noundef range(i64 0, 384307168202282326) %scratch.1, i32 noundef %2, ptr noalias noundef readonly align 8 captures(address) dereferenceable_or_null(24) %3, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #9 {
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

bb5:                                              ; preds = %bb5.lr.ph, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h7dd69a5499b58ed4E.exit"
  %v.sroa.16.091 = phi i64 [ %v.sroa.16.0.ph98, %bb5.lr.ph ], [ %left_partition_len.sroa.0.0, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h7dd69a5499b58ed4E.exit" ]
  %limit.sroa.0.090 = phi i32 [ %limit.sroa.0.0.ph97, %bb5.lr.ph ], [ %8, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h7dd69a5499b58ed4E.exit" ]
  %_11 = icmp eq i32 %limit.sroa.0.090, 0
  br i1 %_11, label %bb6, label %bb7

bb3:                                              ; preds = %bb28, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h7dd69a5499b58ed4E.exit", %start
  %v.sroa.0.0.ph.lcssa88 = phi ptr [ %0, %start ], [ %v.sroa.0.0.ph99, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h7dd69a5499b58ed4E.exit" ], [ %_54, %bb28 ]
  %v.sroa.16.0.lcssa = phi i64 [ %1, %start ], [ %left_partition_len.sroa.0.0, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h7dd69a5499b58ed4E.exit" ], [ %_63.i55, %bb28 ]
; call core::slice::sort::shared::smallsort::small_sort_general_with_scratch
  call void @_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17hd47b94b346eed11fE(ptr noalias noundef nonnull align 8 %v.sroa.0.0.ph.lcssa88, i64 noundef range(i64 0, 33) %v.sroa.16.0.lcssa, ptr noalias noundef nonnull align 8 %scratch.0, i64 noundef range(i64 0, 384307168202282326) %scratch.1, ptr noalias nonnull align 8 poison)
  br label %bb22

bb7:                                              ; preds = %bb5
  %8 = add i32 %limit.sroa.0.090, -1
  call void @llvm.experimental.noalias.scope.decl(metadata !2382)
  %len_div_84.i = lshr i64 %v.sroa.16.091, 3
  %b.idx.i = mul nuw nsw i64 %len_div_84.i, 96
  %b.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph99, i64 %b.idx.i
  %c.idx.i = mul nuw nsw i64 %len_div_84.i, 168
  %c.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph99, i64 %c.idx.i
  %_12.i = icmp samesign ult i64 %v.sroa.16.091, 64
  br i1 %_12.i, label %bb3.i, label %bb5.i

bb5.i:                                            ; preds = %bb7
; call core::slice::sort::shared::pivot::median3_rec
  %self.i = call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hfb09d8ea71499d5cE(ptr noundef nonnull readonly align 8 %v.sroa.0.0.ph99, ptr noundef nonnull readonly %b.i, ptr noundef nonnull readonly %c.i, i64 noundef %len_div_84.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less)
  br label %_ZN4core5slice4sort6shared5pivot12choose_pivot17h94e2005f3bd3de14E.exit

bb3.i:                                            ; preds = %bb7
  call void @llvm.experimental.noalias.scope.decl(metadata !2385)
  call void @llvm.experimental.noalias.scope.decl(metadata !2388)
  call void @llvm.experimental.noalias.scope.decl(metadata !2390), !noalias !2393
  call void @llvm.experimental.noalias.scope.decl(metadata !2396), !noalias !2393
  call void @llvm.experimental.noalias.scope.decl(metadata !2398), !noalias !2393
  call void @llvm.experimental.noalias.scope.decl(metadata !2401), !noalias !2393
  call void @llvm.experimental.noalias.scope.decl(metadata !2403), !noalias !2393
  call void @llvm.experimental.noalias.scope.decl(metadata !2406), !noalias !2393
  %_7.i.i.i.i.i = load ptr, ptr %4, align 8, !alias.scope !2408, !noalias !2409, !nonnull !37, !noundef !37
  %len1.i.i.i.i.i = load i64, ptr %5, align 8, !alias.scope !2408, !noalias !2409, !noundef !37
  %9 = getelementptr inbounds nuw i8, ptr %b.i, i64 8
  %_14.i.i.i.i.i = load ptr, ptr %9, align 8, !alias.scope !2411, !noalias !2412, !nonnull !37, !noundef !37
  %10 = getelementptr inbounds nuw i8, ptr %b.i, i64 16
  %11 = load i64, ptr %10, align 8, !alias.scope !2411, !noalias !2412, !noundef !37
  %spec.store.select.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %len1.i.i.i.i.i, i64 range(i64 0, -9223372036854775808) %11)
  %12 = call i32 @memcmp(ptr nonnull readonly align 1 %_7.i.i.i.i.i, ptr nonnull readonly align 1 %_14.i.i.i.i.i, i64 %spec.store.select.i.i.i.i.i.i), !alias.scope !2413, !noalias !2417
  %13 = sext i32 %12 to i64
  %_15.i.i.i.i.i.i = icmp eq i32 %12, 0
  %diff.i.i.i.i.i.i = sub nsw i64 %len1.i.i.i.i.i, %11
  %spec.select.i.i.i.i.i.i = select i1 %_15.i.i.i.i.i.i, i64 %diff.i.i.i.i.i.i, i64 %13
  call void @llvm.experimental.noalias.scope.decl(metadata !2418)
  call void @llvm.experimental.noalias.scope.decl(metadata !2421)
  call void @llvm.experimental.noalias.scope.decl(metadata !2424)
  call void @llvm.experimental.noalias.scope.decl(metadata !2427)
  %14 = getelementptr inbounds nuw i8, ptr %c.i, i64 8
  %_14.i.i.i.i7.i = load ptr, ptr %14, align 8, !alias.scope !2430, !noalias !2431, !nonnull !37, !noundef !37
  %15 = getelementptr inbounds nuw i8, ptr %c.i, i64 16
  %16 = load i64, ptr %15, align 8, !alias.scope !2430, !noalias !2431, !noundef !37
  %spec.store.select.i.i.i.i.i8.i = call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %len1.i.i.i.i.i, i64 range(i64 0, -9223372036854775808) %16)
  %17 = call i32 @memcmp(ptr nonnull readonly align 1 %_7.i.i.i.i.i, ptr nonnull readonly align 1 %_14.i.i.i.i7.i, i64 %spec.store.select.i.i.i.i.i8.i), !alias.scope !2436, !noalias !2440
  %18 = sext i32 %17 to i64
  %_15.i.i.i.i.i9.i = icmp eq i32 %17, 0
  %diff.i.i.i.i.i10.i = sub nsw i64 %len1.i.i.i.i.i, %16
  %spec.select.i.i.i.i.i11.i = select i1 %_15.i.i.i.i.i9.i, i64 %diff.i.i.i.i.i10.i, i64 %18
  %19 = xor i64 %spec.select.i.i.i.i.i11.i, %spec.select.i.i.i.i.i.i
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %_ZN4core5slice4sort6shared5pivot12choose_pivot17h94e2005f3bd3de14E.exit, label %bb3.i.i

bb3.i.i:                                          ; preds = %bb3.i
  %spec.store.select.i.i.i.i.i16.i = call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %11, i64 range(i64 0, -9223372036854775808) %16)
  %21 = call i32 @memcmp(ptr nonnull readonly align 1 %_14.i.i.i.i.i, ptr nonnull readonly align 1 %_14.i.i.i.i7.i, i64 %spec.store.select.i.i.i.i.i16.i), !alias.scope !2441, !noalias !2445
  %22 = sext i32 %21 to i64
  %_15.i.i.i.i.i17.i = icmp eq i32 %21, 0
  %diff.i.i.i.i.i18.i = sub nsw i64 %11, %16
  %spec.select.i.i.i.i.i19.i = select i1 %_15.i.i.i.i.i17.i, i64 %diff.i.i.i.i.i18.i, i64 %22
  %23 = xor i64 %spec.select.i.i.i.i.i19.i, %spec.select.i.i.i.i.i.i
  %_12.i.i = icmp slt i64 %23, 0
  %c.b.i.i = select i1 %_12.i.i, ptr %c.i, ptr %b.i
  br label %_ZN4core5slice4sort6shared5pivot12choose_pivot17h94e2005f3bd3de14E.exit

_ZN4core5slice4sort6shared5pivot12choose_pivot17h94e2005f3bd3de14E.exit: ; preds = %bb3.i, %bb3.i.i, %bb5.i
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
  call void @_ZN4core5slice4sort6stable5drift4sort17h6aa4f489c3c231eeE(ptr noalias noundef nonnull align 8 %v.sroa.0.0.ph99, i64 noundef %v.sroa.16.091, ptr noalias noundef nonnull align 8 %scratch.0, i64 noundef %scratch.1, i1 noundef zeroext true, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  br label %bb22

bb12:                                             ; preds = %_ZN4core5slice4sort6shared5pivot12choose_pivot17h94e2005f3bd3de14E.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !2458)
  call void @llvm.experimental.noalias.scope.decl(metadata !2461)
  call void @llvm.experimental.noalias.scope.decl(metadata !2463)
  call void @llvm.experimental.noalias.scope.decl(metadata !2466)
  call void @llvm.experimental.noalias.scope.decl(metadata !2468)
  call void @llvm.experimental.noalias.scope.decl(metadata !2471)
  call void @llvm.experimental.noalias.scope.decl(metadata !2473)
  call void @llvm.experimental.noalias.scope.decl(metadata !2476)
  %_7.i.i.i.i = load ptr, ptr %6, align 8, !alias.scope !2478, !noalias !2479, !nonnull !37, !noundef !37
  %len1.i.i.i.i = load i64, ptr %7, align 8, !alias.scope !2478, !noalias !2479, !noundef !37
  %26 = getelementptr inbounds nuw i8, ptr %src, i64 8
  %_14.i.i.i.i = load ptr, ptr %26, align 8, !alias.scope !2479, !noalias !2478, !nonnull !37, !noundef !37
  %27 = getelementptr inbounds nuw i8, ptr %src, i64 16
  %28 = load i64, ptr %27, align 8, !alias.scope !2479, !noalias !2478, !noundef !37
  %spec.store.select.i.i.i.i.i = call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %len1.i.i.i.i, i64 range(i64 0, -9223372036854775808) %28)
  %29 = call i32 @memcmp(ptr nonnull readonly align 1 %_7.i.i.i.i, ptr nonnull readonly align 1 %_14.i.i.i.i, i64 %spec.store.select.i.i.i.i.i), !alias.scope !2480, !noalias !2484
  %30 = sext i32 %29 to i64
  %_15.i.i.i.i.i = icmp eq i32 %29, 0
  %diff.i.i.i.i.i = sub nsw i64 %len1.i.i.i.i, %28
  %spec.select.i.i.i.i.i = select i1 %_15.i.i.i.i.i, i64 %diff.i.i.i.i.i, i64 %30
  %_0.i = icmp sgt i64 %spec.select.i.i.i.i.i, -1
  br i1 %_0.i, label %bb16, label %bb14

bb14:                                             ; preds = %_ZN4core5slice4sort6shared5pivot12choose_pivot17h94e2005f3bd3de14E.exit, %bb12
  call void @llvm.experimental.noalias.scope.decl(metadata !2485)
  call void @llvm.experimental.noalias.scope.decl(metadata !2488)
  %_8.i.not = icmp samesign ult i64 %scratch.1, %v.sroa.16.091
  br i1 %_8.i.not, label %bb31.i, label %bb33.i, !prof !868

bb33.i:                                           ; preds = %bb14
  %_86.i = getelementptr %"alloc::string::String", ptr %scratch.0, i64 %v.sroa.16.091
  %31 = getelementptr inbounds nuw i8, ptr %src, i64 8
  %32 = getelementptr inbounds nuw i8, ptr %src, i64 16
  br label %bb3.i23

bb31.i:                                           ; preds = %bb14
  call void @llvm.trap()
  unreachable

bb3.i23:                                          ; preds = %bb23.i, %bb33.i
  %state.sroa.11.0.i = phi i64 [ 0, %bb33.i ], [ %state.sroa.11.1.lcssa.i, %bb23.i ]
  %state.sroa.5.0.i = phi ptr [ %v.sroa.0.0.ph99, %bb33.i ], [ %_9.i28.i, %bb23.i ]
  %state.sroa.19.0.i = phi ptr [ %_86.i, %bb33.i ], [ %40, %bb23.i ]
  %pivot_pos.sroa.0.0.i = phi i64 [ %index.sroa.0.0.i, %bb33.i ], [ %v.sroa.16.091, %bb23.i ]
  %loop_end.i = getelementptr inbounds nuw %"alloc::string::String", ptr %v.sroa.0.0.ph99, i64 %pivot_pos.sroa.0.0.i
  %_4734.i = icmp ult ptr %state.sroa.5.0.i, %loop_end.i
  br i1 %_4734.i, label %bb18.i, label %bb21.i

bb21.i:                                           ; preds = %bb18.i, %bb3.i23
  %state.sroa.11.1.lcssa.i = phi i64 [ %state.sroa.11.0.i, %bb3.i23 ], [ %39, %bb18.i ]
  %state.sroa.5.1.lcssa.i = phi ptr [ %state.sroa.5.0.i, %bb3.i23 ], [ %_9.i.i, %bb18.i ]
  %state.sroa.19.1.lcssa.i = phi ptr [ %state.sroa.19.0.i, %bb3.i23 ], [ %38, %bb18.i ]
  %_55.i = icmp eq i64 %pivot_pos.sroa.0.0.i, %v.sroa.16.091
  br i1 %_55.i, label %bb22.i, label %bb23.i

bb18.i:                                           ; preds = %bb3.i23, %bb18.i
  %state.sroa.19.137.i = phi ptr [ %38, %bb18.i ], [ %state.sroa.19.0.i, %bb3.i23 ]
  %state.sroa.5.136.i = phi ptr [ %_9.i.i, %bb18.i ], [ %state.sroa.5.0.i, %bb3.i23 ]
  %state.sroa.11.135.i = phi i64 [ %39, %bb18.i ], [ %state.sroa.11.0.i, %bb3.i23 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !2490)
  call void @llvm.experimental.noalias.scope.decl(metadata !2493)
  call void @llvm.experimental.noalias.scope.decl(metadata !2495)
  call void @llvm.experimental.noalias.scope.decl(metadata !2498)
  call void @llvm.experimental.noalias.scope.decl(metadata !2500)
  call void @llvm.experimental.noalias.scope.decl(metadata !2503)
  call void @llvm.experimental.noalias.scope.decl(metadata !2505)
  call void @llvm.experimental.noalias.scope.decl(metadata !2508)
  %33 = getelementptr inbounds nuw i8, ptr %state.sroa.5.136.i, i64 8
  %_7.i.i.i.i.i24 = load ptr, ptr %33, align 8, !alias.scope !2510, !noalias !2511, !nonnull !37, !noundef !37
  %34 = getelementptr inbounds nuw i8, ptr %state.sroa.5.136.i, i64 16
  %len1.i.i.i.i.i25 = load i64, ptr %34, align 8, !alias.scope !2510, !noalias !2511, !noundef !37
  %_14.i.i.i.i.i26 = load ptr, ptr %31, align 8, !alias.scope !2512, !noalias !2513, !nonnull !37, !noundef !37
  %35 = load i64, ptr %32, align 8, !alias.scope !2512, !noalias !2513, !noundef !37
  %spec.store.select.i.i.i.i.i.i27 = call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %len1.i.i.i.i.i25, i64 range(i64 0, -9223372036854775808) %35)
  %36 = call i32 @memcmp(ptr nonnull readonly align 1 %_7.i.i.i.i.i24, ptr nonnull readonly align 1 %_14.i.i.i.i.i26, i64 %spec.store.select.i.i.i.i.i.i27), !alias.scope !2514, !noalias !2518
  %37 = sext i32 %36 to i64
  %_15.i.i.i.i.i.i28 = icmp eq i32 %36, 0
  %diff.i.i.i.i.i.i29 = sub nsw i64 %len1.i.i.i.i.i25, %35
  %spec.select.i.i.i.i.i.i30 = select i1 %_15.i.i.i.i.i.i28, i64 %diff.i.i.i.i.i.i29, i64 %37
  %_0.i.i = icmp slt i64 %spec.select.i.i.i.i.i.i30, 0
  %38 = getelementptr inbounds i8, ptr %state.sroa.19.137.i, i64 -24
  %dst_base.sroa.0.0.i.i = select i1 %_0.i.i, ptr %scratch.0, ptr %38
  %dst.i.i = getelementptr inbounds nuw %"alloc::string::String", ptr %dst_base.sroa.0.0.i.i, i64 %state.sroa.11.135.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %dst.i.i, ptr noundef nonnull align 8 dereferenceable(24) %state.sroa.5.136.i, i64 24, i1 false), !alias.scope !2519, !noalias !2520
  %spec.select.i.i.i.i.i.lobit.i = lshr i64 %spec.select.i.i.i.i.i.i30, 63
  %39 = add i64 %spec.select.i.i.i.i.i.lobit.i, %state.sroa.11.135.i
  %_9.i.i = getelementptr inbounds nuw i8, ptr %state.sroa.5.136.i, i64 24
  %_47.i = icmp ult ptr %_9.i.i, %loop_end.i
  br i1 %_47.i, label %bb18.i, label %bb21.i

bb23.i:                                           ; preds = %bb21.i
  %40 = getelementptr inbounds i8, ptr %state.sroa.19.1.lcssa.i, i64 -24
  %dst.i25.i = getelementptr inbounds nuw %"alloc::string::String", ptr %40, i64 %state.sroa.11.1.lcssa.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %dst.i25.i, ptr noundef nonnull align 8 dereferenceable(24) %state.sroa.5.1.lcssa.i, i64 24, i1 false), !alias.scope !2519, !noalias !2523
  %_9.i28.i = getelementptr inbounds nuw i8, ptr %state.sroa.5.1.lcssa.i, i64 24
  br label %bb3.i23

bb22.i:                                           ; preds = %bb21.i
  %41 = mul i64 %state.sroa.11.1.lcssa.i, 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %v.sroa.0.0.ph99, ptr nonnull align 8 %scratch.0, i64 %41, i1 false), !alias.scope !2519
  %_63.i = sub i64 %v.sroa.16.091, %state.sroa.11.1.lcssa.i
  %_9740.not.i = icmp eq i64 %v.sroa.16.091, %state.sroa.11.1.lcssa.i
  br i1 %_9740.not.i, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h2d423c034a790133E.exit, label %bb42.lr.ph.i

bb42.lr.ph.i:                                     ; preds = %bb22.i
  %42 = getelementptr %"alloc::string::String", ptr %v.sroa.0.0.ph99, i64 %state.sroa.11.1.lcssa.i
  %.neg = add i64 %state.sroa.11.1.lcssa.i, 1
  %xtraiter = and i64 %_63.i, 1
  %43 = icmp eq i64 %v.sroa.16.091, %.neg
  br i1 %43, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h2d423c034a790133E.exit.loopexit.unr-lcssa, label %bb42.lr.ph.i.new

bb42.lr.ph.i.new:                                 ; preds = %bb42.lr.ph.i
  %unroll_iter = and i64 %_63.i, -2
  %invariant.gep = getelementptr i8, ptr %42, i64 24
  br label %bb42.i

bb42.i:                                           ; preds = %bb42.i, %bb42.lr.ph.i.new
  %iter.sroa.0.041.i = phi i64 [ 0, %bb42.lr.ph.i.new ], [ %47, %bb42.i ]
  %niter = phi i64 [ 0, %bb42.lr.ph.i.new ], [ %niter.next.1, %bb42.i ]
  %44 = getelementptr %"alloc::string::String", ptr %42, i64 %iter.sroa.0.041.i
  %45 = xor i64 %iter.sroa.0.041.i, -1
  %46 = getelementptr %"alloc::string::String", ptr %_86.i, i64 %45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %44, ptr noundef nonnull align 8 dereferenceable(24) %46, i64 24, i1 false), !alias.scope !2519
  %47 = add nuw i64 %iter.sroa.0.041.i, 2
  %gep = getelementptr %"alloc::string::String", ptr %invariant.gep, i64 %iter.sroa.0.041.i
  %48 = xor i64 %iter.sroa.0.041.i, -2
  %49 = getelementptr %"alloc::string::String", ptr %_86.i, i64 %48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %gep, ptr noundef nonnull align 8 dereferenceable(24) %49, i64 24, i1 false), !alias.scope !2519
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h2d423c034a790133E.exit.loopexit.unr-lcssa, label %bb42.i

_ZN4core5slice4sort6stable9quicksort16stable_partition17h2d423c034a790133E.exit.loopexit.unr-lcssa: ; preds = %bb42.i, %bb42.lr.ph.i
  %iter.sroa.0.041.i.unr = phi i64 [ 0, %bb42.lr.ph.i ], [ %47, %bb42.i ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h2d423c034a790133E.exit, label %bb42.i.epil

bb42.i.epil:                                      ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h2d423c034a790133E.exit.loopexit.unr-lcssa
  %50 = getelementptr %"alloc::string::String", ptr %42, i64 %iter.sroa.0.041.i.unr
  %51 = xor i64 %iter.sroa.0.041.i.unr, -1
  %52 = getelementptr %"alloc::string::String", ptr %_86.i, i64 %51
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %50, ptr noundef nonnull align 8 dereferenceable(24) %52, i64 24, i1 false), !alias.scope !2519
  br label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h2d423c034a790133E.exit

_ZN4core5slice4sort6stable9quicksort16stable_partition17h2d423c034a790133E.exit: ; preds = %bb42.i.epil, %_ZN4core5slice4sort6stable9quicksort16stable_partition17h2d423c034a790133E.exit.loopexit.unr-lcssa, %bb22.i
  %53 = icmp eq i64 %state.sroa.11.1.lcssa.i, 0
  br label %bb16

bb16:                                             ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h2d423c034a790133E.exit, %bb12
  %left_partition_len.sroa.0.0 = phi i64 [ 0, %bb12 ], [ %state.sroa.11.1.lcssa.i, %_ZN4core5slice4sort6stable9quicksort16stable_partition17h2d423c034a790133E.exit ]
  %perform_equal_partition.sroa.0.0.in = phi i1 [ true, %bb12 ], [ %53, %_ZN4core5slice4sort6stable9quicksort16stable_partition17h2d423c034a790133E.exit ]
  br i1 %perform_equal_partition.sroa.0.0.in, label %bb17, label %bb19

bb19:                                             ; preds = %bb16
  %_6.not.i = icmp ugt i64 %left_partition_len.sroa.0.0, %v.sroa.16.091
  br i1 %_6.not.i, label %bb3.i31, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h7dd69a5499b58ed4E.exit", !prof !1481

bb3.i31:                                          ; preds = %bb19
; call core::panicking::panic_fmt
  call void @_ZN4core9panicking9panic_fmt17ha4414e4328fe24a0E(ptr noundef nonnull @alloc_d1084648e479974e70c9329824bf76f9, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_58d434a1e795f965ef82c8e9c5db822a) #31, !noalias !2526
  unreachable

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h7dd69a5499b58ed4E.exit": ; preds = %bb19
  %54 = getelementptr inbounds nuw %"alloc::string::String", ptr %v.sroa.0.0.ph99, i64 %left_partition_len.sroa.0.0
  %55 = sub nuw nsw i64 %v.sroa.16.091, %left_partition_len.sroa.0.0
; call core::slice::sort::stable::quicksort::quicksort
  call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h6aa3617edc74af8eE(ptr noalias noundef nonnull align 8 %54, i64 noundef %55, ptr noalias noundef nonnull align 8 %scratch.0, i64 noundef %scratch.1, i32 noundef %8, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %pivot_copy, ptr noalias noundef align 8 dereferenceable(8) %is_less) #34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %pivot_copy)
  %_8 = icmp ult i64 %left_partition_len.sroa.0.0, 33
  br i1 %_8, label %bb3, label %bb5

bb17:                                             ; preds = %bb16
  call void @llvm.experimental.noalias.scope.decl(metadata !2530)
  call void @llvm.experimental.noalias.scope.decl(metadata !2533)
  %_8.i32.not = icmp samesign ult i64 %scratch.1, %v.sroa.16.091
  br i1 %_8.i32.not, label %bb31.i35, label %bb33.i36, !prof !868

bb33.i36:                                         ; preds = %bb17
  %_86.i38 = getelementptr %"alloc::string::String", ptr %scratch.0, i64 %v.sroa.16.091
  %56 = getelementptr inbounds nuw i8, ptr %src, i64 8
  %57 = getelementptr inbounds nuw i8, ptr %src, i64 16
  br label %bb3.i39

bb31.i35:                                         ; preds = %bb17
  call void @llvm.trap()
  unreachable

bb3.i39:                                          ; preds = %bb23.i51, %bb33.i36
  %state.sroa.11.0.i40 = phi i64 [ 0, %bb33.i36 ], [ %66, %bb23.i51 ]
  %state.sroa.5.0.i41 = phi ptr [ %v.sroa.0.0.ph99, %bb33.i36 ], [ %_9.i28.i53, %bb23.i51 ]
  %state.sroa.19.0.i42 = phi ptr [ %_86.i38, %bb33.i36 ], [ %65, %bb23.i51 ]
  %pivot_pos.sroa.0.0.i43 = phi i64 [ %index.sroa.0.0.i, %bb33.i36 ], [ %v.sroa.16.091, %bb23.i51 ]
  %loop_end.i44 = getelementptr inbounds nuw %"alloc::string::String", ptr %v.sroa.0.0.ph99, i64 %pivot_pos.sroa.0.0.i43
  %_4734.i45 = icmp ult ptr %state.sroa.5.0.i41, %loop_end.i44
  br i1 %_4734.i45, label %bb18.i61, label %bb21.i46

bb21.i46:                                         ; preds = %bb18.i61, %bb3.i39
  %state.sroa.11.1.lcssa.i47 = phi i64 [ %state.sroa.11.0.i40, %bb3.i39 ], [ %64, %bb18.i61 ]
  %state.sroa.5.1.lcssa.i48 = phi ptr [ %state.sroa.5.0.i41, %bb3.i39 ], [ %_9.i.i67, %bb18.i61 ]
  %state.sroa.19.1.lcssa.i49 = phi ptr [ %state.sroa.19.0.i42, %bb3.i39 ], [ %63, %bb18.i61 ]
  %_55.i50 = icmp eq i64 %pivot_pos.sroa.0.0.i43, %v.sroa.16.091
  br i1 %_55.i50, label %bb22.i54, label %bb23.i51

bb18.i61:                                         ; preds = %bb3.i39, %bb18.i61
  %state.sroa.19.137.i62 = phi ptr [ %63, %bb18.i61 ], [ %state.sroa.19.0.i42, %bb3.i39 ]
  %state.sroa.5.136.i63 = phi ptr [ %_9.i.i67, %bb18.i61 ], [ %state.sroa.5.0.i41, %bb3.i39 ]
  %state.sroa.11.135.i64 = phi i64 [ %64, %bb18.i61 ], [ %state.sroa.11.0.i40, %bb3.i39 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !2535)
  call void @llvm.experimental.noalias.scope.decl(metadata !2538)
  call void @llvm.experimental.noalias.scope.decl(metadata !2540)
  call void @llvm.experimental.noalias.scope.decl(metadata !2543)
  call void @llvm.experimental.noalias.scope.decl(metadata !2545)
  call void @llvm.experimental.noalias.scope.decl(metadata !2548)
  call void @llvm.experimental.noalias.scope.decl(metadata !2550)
  call void @llvm.experimental.noalias.scope.decl(metadata !2553)
  call void @llvm.experimental.noalias.scope.decl(metadata !2555)
  call void @llvm.experimental.noalias.scope.decl(metadata !2558)
  %_7.i.i.i.i.i.i = load ptr, ptr %56, align 8, !alias.scope !2560, !noalias !2561, !nonnull !37, !noundef !37
  %len1.i.i.i.i.i.i = load i64, ptr %57, align 8, !alias.scope !2560, !noalias !2561, !noundef !37
  %58 = getelementptr inbounds nuw i8, ptr %state.sroa.5.136.i63, i64 8
  %_14.i.i.i.i.i.i = load ptr, ptr %58, align 8, !alias.scope !2562, !noalias !2563, !nonnull !37, !noundef !37
  %59 = getelementptr inbounds nuw i8, ptr %state.sroa.5.136.i63, i64 16
  %60 = load i64, ptr %59, align 8, !alias.scope !2562, !noalias !2563, !noundef !37
  %spec.store.select.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %len1.i.i.i.i.i.i, i64 range(i64 0, -9223372036854775808) %60)
  %61 = call i32 @memcmp(ptr nonnull readonly align 1 %_7.i.i.i.i.i.i, ptr nonnull readonly align 1 %_14.i.i.i.i.i.i, i64 %spec.store.select.i.i.i.i.i.i.i), !alias.scope !2564, !noalias !2568
  %62 = sext i32 %61 to i64
  %_15.i.i.i.i.i.i.i = icmp eq i32 %61, 0
  %diff.i.i.i.i.i.i.i = sub nsw i64 %len1.i.i.i.i.i.i, %60
  %spec.select.i.i.i.i.i.i.i = select i1 %_15.i.i.i.i.i.i.i, i64 %diff.i.i.i.i.i.i.i, i64 %62
  %_0.i.i.i = icmp sgt i64 %spec.select.i.i.i.i.i.i.i, -1
  %63 = getelementptr inbounds i8, ptr %state.sroa.19.137.i62, i64 -24
  %dst_base.sroa.0.0.i.i65 = select i1 %_0.i.i.i, ptr %scratch.0, ptr %63
  %dst.i.i66 = getelementptr inbounds nuw %"alloc::string::String", ptr %dst_base.sroa.0.0.i.i65, i64 %state.sroa.11.135.i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %dst.i.i66, ptr noundef nonnull align 8 dereferenceable(24) %state.sroa.5.136.i63, i64 24, i1 false), !alias.scope !2569, !noalias !2570
  %_8.i.i = zext i1 %_0.i.i.i to i64
  %64 = add i64 %state.sroa.11.135.i64, %_8.i.i
  %_9.i.i67 = getelementptr inbounds nuw i8, ptr %state.sroa.5.136.i63, i64 24
  %_47.i68 = icmp ult ptr %_9.i.i67, %loop_end.i44
  br i1 %_47.i68, label %bb18.i61, label %bb21.i46

bb23.i51:                                         ; preds = %bb21.i46
  %65 = getelementptr inbounds i8, ptr %state.sroa.19.1.lcssa.i49, i64 -24
  %dst.i25.i52 = getelementptr inbounds nuw %"alloc::string::String", ptr %scratch.0, i64 %state.sroa.11.1.lcssa.i47
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %dst.i25.i52, ptr noundef nonnull align 8 dereferenceable(24) %state.sroa.5.1.lcssa.i48, i64 24, i1 false), !alias.scope !2569, !noalias !2573
  %66 = add i64 %state.sroa.11.1.lcssa.i47, 1
  %_9.i28.i53 = getelementptr inbounds nuw i8, ptr %state.sroa.5.1.lcssa.i48, i64 24
  br label %bb3.i39

bb22.i54:                                         ; preds = %bb21.i46
  %67 = mul i64 %state.sroa.11.1.lcssa.i47, 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %v.sroa.0.0.ph99, ptr nonnull align 8 %scratch.0, i64 %67, i1 false), !alias.scope !2569
  %_63.i55 = sub i64 %v.sroa.16.091, %state.sroa.11.1.lcssa.i47
  %_9740.not.i56 = icmp eq i64 %v.sroa.16.091, %state.sroa.11.1.lcssa.i47
  br i1 %_9740.not.i56, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h2d823a91305b5458E.exit, label %bb42.lr.ph.i57

bb42.lr.ph.i57:                                   ; preds = %bb22.i54
  %68 = getelementptr %"alloc::string::String", ptr %v.sroa.0.0.ph99, i64 %state.sroa.11.1.lcssa.i47
  %.neg204 = add i64 %state.sroa.11.1.lcssa.i47, 1
  %xtraiter200 = and i64 %_63.i55, 1
  %69 = icmp eq i64 %v.sroa.16.091, %.neg204
  br i1 %69, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h2d823a91305b5458E.exit.loopexit.unr-lcssa, label %bb42.lr.ph.i57.new

bb42.lr.ph.i57.new:                               ; preds = %bb42.lr.ph.i57
  %unroll_iter202 = and i64 %_63.i55, -2
  %invariant.gep236 = getelementptr i8, ptr %68, i64 24
  br label %bb42.i58

bb42.i58:                                         ; preds = %bb42.i58, %bb42.lr.ph.i57.new
  %iter.sroa.0.041.i59 = phi i64 [ 0, %bb42.lr.ph.i57.new ], [ %73, %bb42.i58 ]
  %niter203 = phi i64 [ 0, %bb42.lr.ph.i57.new ], [ %niter203.next.1, %bb42.i58 ]
  %70 = getelementptr %"alloc::string::String", ptr %68, i64 %iter.sroa.0.041.i59
  %71 = xor i64 %iter.sroa.0.041.i59, -1
  %72 = getelementptr %"alloc::string::String", ptr %_86.i38, i64 %71
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %70, ptr noundef nonnull align 8 dereferenceable(24) %72, i64 24, i1 false), !alias.scope !2569
  %73 = add nuw i64 %iter.sroa.0.041.i59, 2
  %gep237 = getelementptr %"alloc::string::String", ptr %invariant.gep236, i64 %iter.sroa.0.041.i59
  %74 = xor i64 %iter.sroa.0.041.i59, -2
  %75 = getelementptr %"alloc::string::String", ptr %_86.i38, i64 %74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %gep237, ptr noundef nonnull align 8 dereferenceable(24) %75, i64 24, i1 false), !alias.scope !2569
  %niter203.next.1 = add i64 %niter203, 2
  %niter203.ncmp.1 = icmp eq i64 %niter203.next.1, %unroll_iter202
  br i1 %niter203.ncmp.1, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h2d823a91305b5458E.exit.loopexit.unr-lcssa, label %bb42.i58

_ZN4core5slice4sort6stable9quicksort16stable_partition17h2d823a91305b5458E.exit.loopexit.unr-lcssa: ; preds = %bb42.i58, %bb42.lr.ph.i57
  %iter.sroa.0.041.i59.unr = phi i64 [ 0, %bb42.lr.ph.i57 ], [ %73, %bb42.i58 ]
  %lcmp.mod201.not = icmp eq i64 %xtraiter200, 0
  br i1 %lcmp.mod201.not, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h2d823a91305b5458E.exit, label %bb42.i58.epil

bb42.i58.epil:                                    ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h2d823a91305b5458E.exit.loopexit.unr-lcssa
  %76 = getelementptr %"alloc::string::String", ptr %68, i64 %iter.sroa.0.041.i59.unr
  %77 = xor i64 %iter.sroa.0.041.i59.unr, -1
  %78 = getelementptr %"alloc::string::String", ptr %_86.i38, i64 %77
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %76, ptr noundef nonnull align 8 dereferenceable(24) %78, i64 24, i1 false), !alias.scope !2569
  br label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h2d823a91305b5458E.exit

_ZN4core5slice4sort6stable9quicksort16stable_partition17h2d823a91305b5458E.exit: ; preds = %bb42.i58.epil, %_ZN4core5slice4sort6stable9quicksort16stable_partition17h2d823a91305b5458E.exit.loopexit.unr-lcssa, %bb22.i54
  %_47 = icmp ugt i64 %state.sroa.11.1.lcssa.i47, %v.sroa.16.091
  br i1 %_47, label %bb27, label %bb28, !prof !1481

bb28:                                             ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h2d823a91305b5458E.exit
  %_54 = getelementptr inbounds nuw %"alloc::string::String", ptr %v.sroa.0.0.ph99, i64 %state.sroa.11.1.lcssa.i47
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %pivot_copy)
  %_889 = icmp ult i64 %_63.i55, 33
  br i1 %_889, label %bb3, label %bb5.lr.ph

bb27:                                             ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h2d823a91305b5458E.exit
; call core::slice::index::slice_index_fail
  call void @_ZN4core5slice5index16slice_index_fail17h62807bcaa490c9c1E(i64 noundef %state.sroa.11.1.lcssa.i47, i64 noundef %v.sroa.16.091, i64 noundef %v.sroa.16.091, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_0766b232215672ee1bd2195fdb153938) #31
  unreachable

bb22:                                             ; preds = %bb3, %bb6
  ret void
}

; alloc::slice::<impl core::slice::sort::stable::BufGuard<T> for alloc::vec::Vec<T>>::with_capacity
; Function Attrs: nonlazybind uwtable
define void @"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h45070663ee9cbcc5E"(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_0, i64 noundef %capacity) unnamed_addr #1 {
start:
  %_4.i = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4.i)
; call alloc::raw_vec::RawVecInner<A>::try_allocate_in
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_4.i, i64 noundef %capacity, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24)
  %_5.i = load i64, ptr %_4.i, align 8, !range !1479, !noundef !37
  %0 = trunc nuw i64 %_5.i to i1
  %1 = getelementptr inbounds nuw i8, ptr %_4.i, i64 8
  %err.0.i = load i64, ptr %1, align 8, !range !1480, !noundef !37
  %2 = getelementptr inbounds nuw i8, ptr %_4.i, i64 16
  br i1 %0, label %bb3.i, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9109846d2aea1d5fE.exit", !prof !1481

bb3.i:                                            ; preds = %start
  %err.1.i = load i64, ptr %2, align 8
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i, i64 %err.1.i) #32
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9109846d2aea1d5fE.exit": ; preds = %start
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
define void @"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h59648a08aba84018E"(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_0, i64 noundef %capacity) unnamed_addr #1 {
start:
  %_4.i = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4.i)
; call alloc::raw_vec::RawVecInner<A>::try_allocate_in
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_4.i, i64 noundef %capacity, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
  %_5.i = load i64, ptr %_4.i, align 8, !range !1479, !noundef !37
  %0 = trunc nuw i64 %_5.i to i1
  %1 = getelementptr inbounds nuw i8, ptr %_4.i, i64 8
  %err.0.i = load i64, ptr %1, align 8, !range !1480, !noundef !37
  %2 = getelementptr inbounds nuw i8, ptr %_4.i, i64 16
  br i1 %0, label %bb3.i, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9109846d2aea1d5fE.exit", !prof !1481

bb3.i:                                            ; preds = %start
  %err.1.i = load i64, ptr %2, align 8
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i, i64 %err.1.i) #32
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9109846d2aea1d5fE.exit": ; preds = %start
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
define { ptr, i64 } @"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$19as_uninit_slice_mut17h022f0d3603a12a3aE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %self) unnamed_addr #15 {
start:
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %_10 = load ptr, ptr %0, align 8, !nonnull !37, !noundef !37
  %1 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %count = load i64, ptr %1, align 8, !noundef !37
  %_3 = getelementptr inbounds nuw %"alloc::string::String", ptr %_10, i64 %count
  %self1 = load i64, ptr %self, align 8, !range !2576, !noundef !37
  %len = sub i64 %self1, %count
  %2 = insertvalue { ptr, i64 } poison, ptr %_3, 0
  %3 = insertvalue { ptr, i64 } %2, i64 %len, 1
  ret { ptr, i64 } %3
}

; alloc::slice::<impl core::slice::sort::stable::BufGuard<T> for alloc::vec::Vec<T>>::as_uninit_slice_mut
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { ptr, i64 } @"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$19as_uninit_slice_mut17h5ceb9893e729145dE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %self) unnamed_addr #15 {
start:
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %_10 = load ptr, ptr %0, align 8, !nonnull !37, !noundef !37
  %1 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %count = load i64, ptr %1, align 8, !noundef !37
  %_3 = getelementptr inbounds nuw i32, ptr %_10, i64 %count
  %self1 = load i64, ptr %self, align 8, !range !2576, !noundef !37
  %len = sub i64 %self1, %count
  %2 = insertvalue { ptr, i64 } poison, ptr %_3, 0
  %3 = insertvalue { ptr, i64 } %2, i64 %len, 1
  ret { ptr, i64 } %3
}

; <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hecd78bfc86ccd99eE"(ptr noalias noundef readnone align 8 captures(none) dereferenceable(24) %self) unnamed_addr #10 {
start:
  ret void
}

; <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: nonlazybind uwtable
define void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf51955c50d115126E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %self) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %_5 = load ptr, ptr %0, align 8, !nonnull !37, !noundef !37
  %1 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %len = load i64, ptr %1, align 8, !noundef !37
  br label %bb6.i

bb6.i:                                            ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hf142590ed85ce70dE.exit.i.i", %start
  %_3.sroa.0.0.i = phi i64 [ 0, %start ], [ %2, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hf142590ed85ce70dE.exit.i.i" ]
  %_7.i = icmp eq i64 %_3.sroa.0.0.i, %len
  br i1 %_7.i, label %"_ZN4core3ptr52drop_in_place$LT$$u5b$alloc..string..String$u5d$$GT$17ha282868240333e7fE.exit", label %bb5.i

bb5.i:                                            ; preds = %bb6.i
  %_6.i = getelementptr inbounds nuw %"alloc::string::String", ptr %_5, i64 %_3.sroa.0.0.i
  %2 = add i64 %_3.sroa.0.0.i, 1
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %_6.i)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hf142590ed85ce70dE.exit.i.i" unwind label %cleanup.i.i.i

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
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #30
  unreachable

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hf142590ed85ce70dE.exit.i.i": ; preds = %bb5.i
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %_6.i)
          to label %bb6.i unwind label %cleanup.i

bb4.i:                                            ; preds = %bb3.i, %cleanup.body.i
  %_3.sroa.0.1.i = phi i64 [ %2, %cleanup.body.i ], [ %6, %bb3.i ]
  %_5.i = icmp eq i64 %_3.sroa.0.1.i, %len
  br i1 %_5.i, label %bb2.i, label %bb3.i

cleanup.i:                                        ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hf142590ed85ce70dE.exit.i.i"
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
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17heba7bfbe8384b04bE"(ptr noalias noundef align 8 dereferenceable(24) %_4.i) #33
          to label %bb4.i unwind label %terminate.i

bb2.i:                                            ; preds = %bb4.i
  resume { ptr, i32 } %eh.lpad-body.i

terminate.i:                                      ; preds = %bb3.i
  %7 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #30
  unreachable

"_ZN4core3ptr52drop_in_place$LT$$u5b$alloc..string..String$u5d$$GT$17ha282868240333e7fE.exit": ; preds = %bb6.i
  ret void
}

; <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: nonlazybind uwtable
define void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17haef0916201dc82deE"(ptr noalias noundef align 8 dereferenceable(16) %self) unnamed_addr #1 {
start:
; call alloc::raw_vec::RawVecInner<A>::deallocate
  tail call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef align 8 dereferenceable(16) %self, i64 noundef 8, i64 noundef 24)
  ret void
}

; <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: nonlazybind uwtable
define void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc62b5a7e3fba7318E"(ptr noalias noundef align 8 dereferenceable(16) %self) unnamed_addr #1 {
start:
; call alloc::raw_vec::RawVecInner<A>::deallocate
  tail call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef align 8 dereferenceable(16) %self, i64 noundef 4, i64 noundef 4)
  ret void
}

; <core::slice::sort::stable::merge::MergeState<T> as core::ops::drop::Drop>::drop
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define void @"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4de11ff8d87db94eE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %self) unnamed_addr #14 {
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
define void @"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb207a984b01f7be2E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %self) unnamed_addr #14 {
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
define void @"_ZN96_$LT$core..hint..select_unpredictable..DropOnPanic$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0d12c060113a69e0E"(ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %self) unnamed_addr #10 {
start:
  ret void
}

; <core::hint::select_unpredictable::DropOnPanic<T> as core::ops::drop::Drop>::drop
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define void @"_ZN96_$LT$core..hint..select_unpredictable..DropOnPanic$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8fb4486cb85e91c4E"(ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %self) unnamed_addr #10 {
start:
  ret void
}

; <core::slice::sort::shared::smallsort::CopyOnDrop<T> as core::ops::drop::Drop>::drop
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define void @"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3b480042379563adE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %self) unnamed_addr #14 {
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

; <core::slice::sort::shared::smallsort::CopyOnDrop<T> as core::ops::drop::Drop>::drop
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define void @"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc0534965a749a53fE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %self) unnamed_addr #14 {
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: read) uwtable
define noundef range(i8 -1, 2) i8 @cmpfunc(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %a, ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %b) unnamed_addr #16 {
start:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2577)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2580)
  %_3.i = load i32, ptr %a, align 4, !alias.scope !2577, !noalias !2580, !noundef !37
  %_4.i = load i32, ptr %b, align 4, !alias.scope !2580, !noalias !2577, !noundef !37
  %_0.i = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i32(i32 %_3.i, i32 %_4.i)
  ret i8 %_0.i
}

; Function Attrs: nonlazybind uwtable
define void @f_gold(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_0, ptr dead_on_return noalias noundef align 8 captures(address) dereferenceable(24) %str) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %compare.i = alloca [0 x i8], align 1
  %_4.i.i.i.i = alloca [24 x i8], align 8
  %is_less.i.i = alloca [8 x i8], align 8
  %_4.i.i = alloca [24 x i8], align 8
  %_19 = alloca [24 x i8], align 8
  %_6 = alloca [24 x i8], align 8
  %concat = alloca [24 x i8], align 8
  %arr = alloca [24 x i8], align 8
  %0 = getelementptr inbounds nuw i8, ptr %str, i64 16
  %_0.i = load i64, ptr %0, align 8, !alias.scope !2582, !noundef !37
  %_2.i = icmp sgt i64 %_0.i, -1
  tail call void @llvm.assume(i1 %_2.i)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %arr)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2585)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4.i.i), !noalias !2585
; invoke alloc::raw_vec::RawVecInner<A>::try_allocate_in
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_4.i.i, i64 noundef range(i64 0, -9223372036854775808) %_0.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24)
          to label %.noexc unwind label %cleanup

bb24:                                             ; preds = %cleanup.i18, %cleanup, %bb23
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb23 ], [ %1, %cleanup ], [ %28, %cleanup.i18 ]
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17heba7bfbe8384b04bE"(ptr noalias noundef align 8 dereferenceable(24) %str) #33
          to label %common.resume unwind label %terminate

cleanup:                                          ; preds = %bb4.i, %bb3.i.i, %start
  %1 = landingpad { ptr, i32 }
          cleanup
  br label %bb24

.noexc:                                           ; preds = %start
  %_5.i.i = load i64, ptr %_4.i.i, align 8, !range !1479, !noalias !2585, !noundef !37
  %2 = trunc nuw i64 %_5.i.i to i1
  %3 = getelementptr inbounds nuw i8, ptr %_4.i.i, i64 8
  %err.0.i.i = load i64, ptr %3, align 8, !range !1480, !noalias !2585, !noundef !37
  %4 = getelementptr inbounds nuw i8, ptr %_4.i.i, i64 16
  br i1 %2, label %bb3.i.i, label %"_ZN5alloc3vec12Vec$LT$T$GT$13with_capacity17hab7a9d9e13404a55E.exit", !prof !1481

bb3.i.i:                                          ; preds = %.noexc
  %err.1.i.i = load i64, ptr %4, align 8, !noalias !2585
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #32
          to label %.noexc7 unwind label %cleanup

.noexc7:                                          ; preds = %bb3.i.i
  unreachable

"_ZN5alloc3vec12Vec$LT$T$GT$13with_capacity17hab7a9d9e13404a55E.exit": ; preds = %.noexc
  %this.1.i.i = load ptr, ptr %4, align 8, !noalias !2585, !nonnull !37, !noundef !37
  %_7.i.i = icmp samesign ule i64 %_0.i, %err.0.i.i
  tail call void @llvm.assume(i1 %_7.i.i)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4.i.i), !noalias !2585
  store i64 %err.0.i.i, ptr %arr, align 8, !alias.scope !2585
  %5 = getelementptr inbounds nuw i8, ptr %arr, i64 8
  store ptr %this.1.i.i, ptr %5, align 8, !alias.scope !2585
  %6 = getelementptr inbounds nuw i8, ptr %arr, i64 16
  store i64 0, ptr %6, align 8, !alias.scope !2585
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %concat)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_6)
; invoke <alloc::string::String as core::clone::Clone>::clone
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h3201baa471bff1abE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_6, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %str)
          to label %bb3 unwind label %cleanup1

bb23:                                             ; preds = %cleanup.i.i, %cleanup.i, %cleanup1, %cleanup3.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body34, %cleanup3.body ], [ %7, %cleanup1 ], [ %9, %cleanup.i ], [ %26, %cleanup.i.i ]
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::string::String>>
  invoke fastcc void @"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17ha5714b0b3d45e72aE"(ptr noalias noundef align 8 dereferenceable(24) %arr) #33
          to label %bb24 unwind label %terminate

cleanup1:                                         ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hf142590ed85ce70dE.exit.i", %"_ZN5alloc3vec12Vec$LT$T$GT$13with_capacity17hab7a9d9e13404a55E.exit"
  %7 = landingpad { ptr, i32 }
          cleanup
  br label %bb23

bb3:                                              ; preds = %"_ZN5alloc3vec12Vec$LT$T$GT$13with_capacity17hab7a9d9e13404a55E.exit"
  %8 = getelementptr inbounds nuw i8, ptr %str, i64 8
  %_6.i.i = load ptr, ptr %8, align 8, !alias.scope !2588, !nonnull !37, !noundef !37
  %len.i.i = load i64, ptr %0, align 8, !alias.scope !2588, !noundef !37
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2593)
  %_11.i = getelementptr inbounds nuw i8, ptr %_6.i.i, i64 %len.i.i
; invoke <alloc::vec::Vec<T,A> as alloc::vec::spec_extend::SpecExtend<&T,core::slice::iter::Iter<T>>>::spec_extend
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h50a987f7cf4aec42E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %_6, ptr noundef nonnull readonly align 1 %_6.i.i, ptr noundef nonnull readonly %_11.i)
          to label %"_ZN78_$LT$alloc..string..String$u20$as$u20$core..ops..arith..Add$LT$$RF$str$GT$$GT$3add17hee04dcb44bb2d172E.exit" unwind label %cleanup.i, !noalias !2593

cleanup.i:                                        ; preds = %bb3
  %9 = landingpad { ptr, i32 }
          cleanup
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17heba7bfbe8384b04bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %_6) #33
          to label %bb23 unwind label %terminate.i, !noalias !2593

terminate.i:                                      ; preds = %cleanup.i
  %10 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #30, !noalias !2593
  unreachable

"_ZN78_$LT$alloc..string..String$u20$as$u20$core..ops..arith..Add$LT$$RF$str$GT$$GT$3add17hee04dcb44bb2d172E.exit": ; preds = %bb3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %concat, ptr noundef nonnull align 8 dereferenceable(24) %_6, i64 24, i1 false), !alias.scope !2596, !noalias !2598
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_6)
  %_0.i.i.i49.not = icmp eq i64 %_0.i, 0
  br i1 %_0.i.i.i49.not, label %bb11, label %bb10.lr.ph

bb10.lr.ph:                                       ; preds = %"_ZN78_$LT$alloc..string..String$u20$as$u20$core..ops..arith..Add$LT$$RF$str$GT$$GT$3add17hee04dcb44bb2d172E.exit"
  %11 = getelementptr inbounds nuw i8, ptr %concat, i64 8
  %12 = getelementptr inbounds nuw i8, ptr %concat, i64 16
  %13 = getelementptr inbounds nuw i8, ptr %_4.i.i.i.i, i64 8
  %14 = getelementptr inbounds nuw i8, ptr %_4.i.i.i.i, i64 16
  %bytes.sroa.4.0._0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %_19, i64 8
  %bytes.sroa.5.0._0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %_19, i64 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_19)
  call void @llvm.experimental.noalias.scope.decl(metadata !2600)
  %_8.i.peel = load ptr, ptr %11, align 8, !alias.scope !2600, !nonnull !37, !noundef !37
  %len.i.peel = load i64, ptr %12, align 8, !alias.scope !2600, !noundef !37
  %_19.not.i.i.i.peel = icmp ult i64 %_0.i, %len.i.peel
  br i1 %_19.not.i.i.i.peel, label %bb18.i.i.i.peel, label %bb16.i.i.i.peel

bb16.i.i.i.peel:                                  ; preds = %bb10.lr.ph
  %15 = icmp eq i64 %_0.i, %len.i.peel
  br label %bb19.i.i.i.peel

bb18.i.i.i.peel:                                  ; preds = %bb10.lr.ph
  %16 = getelementptr inbounds nuw i8, ptr %_8.i.peel, i64 %_0.i
  %self2.i.i.i.peel = load i8, ptr %16, align 1, !alias.scope !2603, !noalias !2600, !noundef !37
  %17 = icmp sgt i8 %self2.i.i.i.peel, -65
  br label %bb19.i.i.i.peel

bb19.i.i.i.peel:                                  ; preds = %bb18.i.i.i.peel, %bb16.i.i.i.peel
  %_7.sroa.0.0.in.i.i.i.peel = phi i1 [ %15, %bb16.i.i.i.peel ], [ %17, %bb18.i.i.i.peel ]
  br i1 %_7.sroa.0.0.in.i.i.i.peel, label %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h990e5850e6ca3bbdE.exit.peel", label %bb3.i.i9, !prof !2608

"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h990e5850e6ca3bbdE.exit.peel": ; preds = %bb19.i.i.i.peel
  call void @llvm.experimental.noalias.scope.decl(metadata !2609)
  call void @llvm.experimental.noalias.scope.decl(metadata !2612)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4.i.i.i.i), !noalias !2615
; invoke alloc::raw_vec::RawVecInner<A>::try_allocate_in
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_4.i.i.i.i, i64 noundef range(i64 0, -9223372036854775808) %_0.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc27.peel unwind label %cleanup3.loopexit.loopexit.split-lp

.noexc27.peel:                                    ; preds = %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h990e5850e6ca3bbdE.exit.peel"
  %_5.i.i.i.i.peel = load i64, ptr %_4.i.i.i.i, align 8, !range !1479, !noalias !2615, !noundef !37
  %18 = trunc nuw i64 %_5.i.i.i.i.peel to i1
  br i1 %18, label %bb3.i.i.i.i, label %"_ZN45_$LT$T$u20$as$u20$alloc..string..ToString$GT$9to_string17h75b533de7c3f914dE.exit.peel", !prof !2621

"_ZN45_$LT$T$u20$as$u20$alloc..string..ToString$GT$9to_string17h75b533de7c3f914dE.exit.peel": ; preds = %.noexc27.peel
  %this.0.i.i.i.i.peel = load i64, ptr %13, align 8, !range !2576, !noalias !2615, !noundef !37
  %this.1.i.i.i.i.peel = load ptr, ptr %14, align 8, !noalias !2615, !nonnull !37, !noundef !37
  %_7.i.i.i.i.peel = icmp samesign ule i64 %_0.i, %this.0.i.i.i.i.peel
  call void @llvm.assume(i1 %_7.i.i.i.i.peel)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4.i.i.i.i), !noalias !2615
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %this.1.i.i.i.i.peel, ptr nonnull readonly align 1 %_8.i.peel, i64 range(i64 0, -9223372036854775808) %_0.i, i1 false), !noalias !2622
  store i64 %this.0.i.i.i.i.peel, ptr %_19, align 8, !alias.scope !2623, !noalias !2624
  store ptr %this.1.i.i.i.i.peel, ptr %bytes.sroa.4.0._0.sroa_idx.i.i, align 8, !alias.scope !2623, !noalias !2624
  store i64 %_0.i, ptr %bytes.sroa.5.0._0.sroa_idx.i.i, align 8, !alias.scope !2623, !noalias !2624
  %len.i.i29.peel = load i64, ptr %6, align 8, !alias.scope !2625, !noalias !2630, !noundef !37
  %self1.i.i.peel = load i64, ptr %arr, align 8, !range !2576, !alias.scope !2625, !noalias !2630, !noundef !37
  %_4.i.i30.peel = icmp eq i64 %len.i.i29.peel, %self1.i.i.peel
  br i1 %_4.i.i30.peel, label %bb1.i.i31.peel, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h5086dd1086a82772E.exit.peel"

bb1.i.i31.peel:                                   ; preds = %"_ZN45_$LT$T$u20$as$u20$alloc..string..ToString$GT$9to_string17h75b533de7c3f914dE.exit.peel"
; invoke alloc::raw_vec::RawVec<T,A>::grow_one
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17he6449fc15ab6cfeaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %arr)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h5086dd1086a82772E.exit.peel" unwind label %cleanup.i.i32.loopexit.split-lp, !noalias !2630

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h5086dd1086a82772E.exit.peel": ; preds = %bb1.i.i31.peel, %"_ZN45_$LT$T$u20$as$u20$alloc..string..ToString$GT$9to_string17h75b533de7c3f914dE.exit.peel"
  %_15.i.i.peel = load ptr, ptr %5, align 8, !alias.scope !2625, !noalias !2630, !nonnull !37, !noundef !37
  %end.i.i.peel = getelementptr inbounds nuw %"alloc::string::String", ptr %_15.i.i.peel, i64 %len.i.i29.peel
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %end.i.i.peel, ptr noundef nonnull align 8 dereferenceable(24) %_19, i64 24, i1 false)
  %19 = add i64 %len.i.i29.peel, 1
  store i64 %19, ptr %6, align 8, !alias.scope !2625, !noalias !2630
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_19)
  %_0.i.i.i.peel.not = icmp eq i64 %_0.i, 1
  br i1 %_0.i.i.i.peel.not, label %bb11, label %bb10

cleanup3.loopexit.loopexit:                       ; preds = %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h990e5850e6ca3bbdE.exit"
  %lpad.loopexit70 = landingpad { ptr, i32 }
          cleanup
  br label %cleanup3.body

cleanup3.loopexit.loopexit.split-lp:              ; preds = %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h990e5850e6ca3bbdE.exit.peel"
  %lpad.loopexit.split-lp71 = landingpad { ptr, i32 }
          cleanup
  br label %cleanup3.body

cleanup3.loopexit.split-lp:                       ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h75f61264603f890aE.exit", %bb3.i.i9, %bb10.i.i, %panic.i.i, %bb3.i.i.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %cleanup3.body

cleanup3.body:                                    ; preds = %cleanup3.loopexit.loopexit, %cleanup3.loopexit.loopexit.split-lp, %cleanup3.loopexit.split-lp, %cleanup.i.i32
  %eh.lpad-body34 = phi { ptr, i32 } [ %lpad.phi73, %cleanup.i.i32 ], [ %lpad.loopexit.split-lp, %cleanup3.loopexit.split-lp ], [ %lpad.loopexit70, %cleanup3.loopexit.loopexit ], [ %lpad.loopexit.split-lp71, %cleanup3.loopexit.loopexit.split-lp ]
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17heba7bfbe8384b04bE"(ptr noalias noundef align 8 dereferenceable(24) %concat) #33
          to label %bb23 unwind label %terminate

bb10:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h5086dd1086a82772E.exit.peel", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h5086dd1086a82772E.exit"
  %spec.select52 = phi i64 [ %spec.select, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h5086dd1086a82772E.exit" ], [ 2, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h5086dd1086a82772E.exit.peel" ]
  %iter.sroa.0.051 = phi i64 [ %spec.select52, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h5086dd1086a82772E.exit" ], [ 1, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h5086dd1086a82772E.exit.peel" ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_19)
  %_23 = add nuw i64 %iter.sroa.0.051, %_0.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2633)
  %_8.i = load ptr, ptr %11, align 8, !alias.scope !2633, !nonnull !37, !noundef !37
  %len.i = load i64, ptr %12, align 8, !alias.scope !2633, !noundef !37
  %_12.not.i.i.i = icmp ult i64 %iter.sroa.0.051, %len.i
  br i1 %_12.not.i.i.i, label %bb12.i.i.i, label %bb10.i.i.i

bb10.i.i.i:                                       ; preds = %bb10
  %20 = icmp eq i64 %iter.sroa.0.051, %len.i
  br label %bb13.i.i.i

bb12.i.i.i:                                       ; preds = %bb10
  %21 = getelementptr inbounds nuw i8, ptr %_8.i, i64 %iter.sroa.0.051
  %self.i.i.i = load i8, ptr %21, align 1, !alias.scope !2603, !noalias !2633, !noundef !37
  %22 = icmp sgt i8 %self.i.i.i, -65
  br label %bb13.i.i.i

bb13.i.i.i:                                       ; preds = %bb12.i.i.i, %bb10.i.i.i
  %_6.sroa.0.0.in.i.i.i = phi i1 [ %20, %bb10.i.i.i ], [ %22, %bb12.i.i.i ]
  br i1 %_6.sroa.0.0.in.i.i.i, label %bb15.i.i.i, label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i"

bb15.i.i.i:                                       ; preds = %bb13.i.i.i
  %_19.not.i.i.i = icmp ult i64 %_23, %len.i
  br i1 %_19.not.i.i.i, label %bb18.i.i.i, label %bb16.i.i.i

bb16.i.i.i:                                       ; preds = %bb15.i.i.i
  %23 = icmp eq i64 %_23, %len.i
  br label %bb19.i.i.i

bb18.i.i.i:                                       ; preds = %bb15.i.i.i
  %24 = getelementptr inbounds nuw i8, ptr %_8.i, i64 %_23
  %self2.i.i.i = load i8, ptr %24, align 1, !alias.scope !2603, !noalias !2633, !noundef !37
  %25 = icmp sgt i8 %self2.i.i.i, -65
  br label %bb19.i.i.i

bb19.i.i.i:                                       ; preds = %bb18.i.i.i, %bb16.i.i.i
  %_7.sroa.0.0.in.i.i.i = phi i1 [ %23, %bb16.i.i.i ], [ %25, %bb18.i.i.i ]
  %data.i.i.i = getelementptr inbounds nuw i8, ptr %_8.i, i64 %iter.sroa.0.051
  %spec.select75 = select i1 %_7.sroa.0.0.in.i.i.i, ptr %data.i.i.i, ptr null
  br label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i"

"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i": ; preds = %bb19.i.i.i, %bb13.i.i.i
  %_0.sroa.0.0.i.i.i = phi ptr [ null, %bb13.i.i.i ], [ %spec.select75, %bb19.i.i.i ]
  %.not.i.i = icmp eq ptr %_0.sroa.0.0.i.i.i, null
  br i1 %.not.i.i, label %bb3.i.i9, label %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h990e5850e6ca3bbdE.exit", !prof !2635

bb3.i.i9:                                         ; preds = %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i", %bb19.i.i.i.peel
  %iter.sroa.0.051.lcssa = phi i64 [ 0, %bb19.i.i.i.peel ], [ %iter.sroa.0.051, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i" ]
  %_23.lcssa = phi i64 [ %_0.i, %bb19.i.i.i.peel ], [ %_23, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i" ]
  %_8.i.lcssa = phi ptr [ %_8.i.peel, %bb19.i.i.i.peel ], [ %_8.i, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i" ]
  %len.i.lcssa = phi i64 [ %len.i.peel, %bb19.i.i.i.peel ], [ %len.i, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i" ]
; invoke core::str::slice_error_fail
  invoke void @_ZN4core3str16slice_error_fail17h4678567854dd8858E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %_8.i.lcssa, i64 noundef %len.i.lcssa, i64 noundef %iter.sroa.0.051.lcssa, i64 noundef %_23.lcssa, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_ca685516a45432c9ecfc325128ac9b4c) #31
          to label %.noexc10 unwind label %cleanup3.loopexit.split-lp

.noexc10:                                         ; preds = %bb3.i.i9
  unreachable

"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h990e5850e6ca3bbdE.exit": ; preds = %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !2636)
  call void @llvm.experimental.noalias.scope.decl(metadata !2638)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4.i.i.i.i), !noalias !2640
; invoke alloc::raw_vec::RawVecInner<A>::try_allocate_in
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_4.i.i.i.i, i64 noundef range(i64 0, -9223372036854775808) %_0.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc27 unwind label %cleanup3.loopexit.loopexit

bb11:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h5086dd1086a82772E.exit", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h5086dd1086a82772E.exit.peel", %"_ZN78_$LT$alloc..string..String$u20$as$u20$core..ops..arith..Add$LT$$RF$str$GT$$GT$3add17hee04dcb44bb2d172E.exit"
  %_4.i.i11 = load ptr, ptr %5, align 8, !alias.scope !2641, !nonnull !37, !noundef !37
  %len.i.i12 = load i64, ptr %6, align 8, !alias.scope !2641, !noundef !37
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %compare.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !2646
  store ptr %compare.i, ptr %is_less.i.i, align 8, !noalias !2649
  %b.i.i = icmp samesign ult i64 %len.i.i12, 2
  br i1 %b.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h594fa5ca3b51e285E.exit", label %bb7.i.i, !prof !2653

bb7.i.i:                                          ; preds = %bb11
  %b1.i.i = icmp samesign ult i64 %len.i.i12, 21
  br i1 %b1.i.i, label %bb9.i.i, label %bb10.i.i, !prof !2653

bb10.i.i:                                         ; preds = %bb7.i.i
; invoke core::slice::sort::stable::driftsort_main
  invoke void @_ZN4core5slice4sort6stable14driftsort_main17hb21a17c31e7d60c9E(ptr noalias noundef nonnull align 8 %_4.i.i11, i64 noundef range(i64 0, 384307168202282326) %len.i.i12, ptr noalias noundef align 8 dereferenceable(8) %is_less.i.i)
          to label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h594fa5ca3b51e285E.exit" unwind label %cleanup3.loopexit.split-lp

bb9.i.i:                                          ; preds = %bb7.i.i
; call core::slice::sort::shared::smallsort::insertion_sort_shift_left
  call void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17hd9613328857599b6E(ptr noalias noundef nonnull align 8 %_4.i.i11, i64 noundef range(i64 0, 384307168202282326) %len.i.i12, i64 noundef 1, ptr noalias align 8 poison)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h594fa5ca3b51e285E.exit"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h594fa5ca3b51e285E.exit": ; preds = %bb10.i.i, %bb11, %bb9.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !2646
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %compare.i)
  %len.i14 = load i64, ptr %6, align 8, !alias.scope !2654, !noundef !37
  %_4.not.i.i = icmp eq i64 %len.i14, 0
  br i1 %_4.not.i.i, label %panic.i.i, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h75f61264603f890aE.exit"

panic.i.i:                                        ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h594fa5ca3b51e285E.exit"
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_731aaa3b1d0e174abb75650cf8233bd4) #31
          to label %.noexc15 unwind label %cleanup3.loopexit.split-lp

.noexc15:                                         ; preds = %panic.i.i
  unreachable

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h75f61264603f890aE.exit": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h594fa5ca3b51e285E.exit"
  %_6.i = load ptr, ptr %5, align 8, !alias.scope !2654, !nonnull !37, !noundef !37
; invoke <alloc::string::String as core::clone::Clone>::clone
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h3201baa471bff1abE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %_6.i)
          to label %bb18 unwind label %cleanup3.loopexit.split-lp

bb18:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h75f61264603f890aE.exit"
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %concat)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hf142590ed85ce70dE.exit.i" unwind label %cleanup.i.i

cleanup.i.i:                                      ; preds = %bb18
  %26 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %concat)
          to label %bb23 unwind label %terminate.i.i

terminate.i.i:                                    ; preds = %cleanup.i.i
  %27 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #30
  unreachable

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hf142590ed85ce70dE.exit.i": ; preds = %bb18
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %concat)
          to label %bb19 unwind label %cleanup1

bb19:                                             ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hf142590ed85ce70dE.exit.i"
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %concat)
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf51955c50d115126E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %arr)
          to label %bb4.i unwind label %cleanup.i18

cleanup.i18:                                      ; preds = %bb19
  %28 = landingpad { ptr, i32 }
          cleanup
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %arr, i64 noundef 8, i64 noundef 24)
          to label %bb24 unwind label %terminate.i19

bb4.i:                                            ; preds = %bb19
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %arr, i64 noundef 8, i64 noundef 24)
          to label %bb20 unwind label %cleanup

terminate.i19:                                    ; preds = %cleanup.i18
  %29 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #30
  unreachable

bb20:                                             ; preds = %bb4.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %arr)
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17heba7bfbe8384b04bE.exit26" unwind label %cleanup.i.i22

cleanup.i.i22:                                    ; preds = %bb20
  %30 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
          to label %common.resume unwind label %terminate.i.i23

terminate.i.i23:                                  ; preds = %cleanup.i.i22
  %31 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #30
  unreachable

common.resume:                                    ; preds = %bb24, %cleanup.i.i22
  %common.resume.op = phi { ptr, i32 } [ %30, %cleanup.i.i22 ], [ %.pn.pn, %bb24 ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17heba7bfbe8384b04bE.exit26": ; preds = %bb20
; call <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
  ret void

.noexc27:                                         ; preds = %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h990e5850e6ca3bbdE.exit"
  %_5.i.i.i.i = load i64, ptr %_4.i.i.i.i, align 8, !range !1479, !noalias !2640, !noundef !37
  %32 = trunc nuw i64 %_5.i.i.i.i to i1
  br i1 %32, label %bb3.i.i.i.i, label %"_ZN45_$LT$T$u20$as$u20$alloc..string..ToString$GT$9to_string17h75b533de7c3f914dE.exit", !prof !2635

bb3.i.i.i.i:                                      ; preds = %.noexc27, %.noexc27.peel
  %33 = getelementptr inbounds nuw i8, ptr %_4.i.i.i.i, i64 8
  %err.0.i.i.i.i = load i64, ptr %33, align 8, !range !1480, !noalias !2640, !noundef !37
  %34 = getelementptr inbounds nuw i8, ptr %_4.i.i.i.i, i64 16
  %err.1.i.i.i.i = load i64, ptr %34, align 8, !noalias !2640
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i.i.i, i64 %err.1.i.i.i.i) #32
          to label %.noexc28 unwind label %cleanup3.loopexit.split-lp

.noexc28:                                         ; preds = %bb3.i.i.i.i
  unreachable

"_ZN45_$LT$T$u20$as$u20$alloc..string..ToString$GT$9to_string17h75b533de7c3f914dE.exit": ; preds = %.noexc27
  %this.0.i.i.i.i = load i64, ptr %13, align 8, !range !2576, !noalias !2640, !noundef !37
  %this.1.i.i.i.i = load ptr, ptr %14, align 8, !noalias !2640, !nonnull !37, !noundef !37
  %_7.i.i.i.i = icmp samesign ule i64 %_0.i, %this.0.i.i.i.i
  call void @llvm.assume(i1 %_7.i.i.i.i)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4.i.i.i.i), !noalias !2640
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %this.1.i.i.i.i, ptr nonnull readonly align 1 %_0.sroa.0.0.i.i.i, i64 range(i64 0, -9223372036854775808) %_0.i, i1 false), !noalias !2657
  store i64 %this.0.i.i.i.i, ptr %_19, align 8, !alias.scope !2658, !noalias !2624
  store ptr %this.1.i.i.i.i, ptr %bytes.sroa.4.0._0.sroa_idx.i.i, align 8, !alias.scope !2658, !noalias !2624
  store i64 %_0.i, ptr %bytes.sroa.5.0._0.sroa_idx.i.i, align 8, !alias.scope !2658, !noalias !2624
  %len.i.i29 = load i64, ptr %6, align 8, !alias.scope !2625, !noalias !2630, !noundef !37
  %self1.i.i = load i64, ptr %arr, align 8, !range !2576, !alias.scope !2625, !noalias !2630, !noundef !37
  %_4.i.i30 = icmp eq i64 %len.i.i29, %self1.i.i
  br i1 %_4.i.i30, label %bb1.i.i31, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h5086dd1086a82772E.exit"

bb1.i.i31:                                        ; preds = %"_ZN45_$LT$T$u20$as$u20$alloc..string..ToString$GT$9to_string17h75b533de7c3f914dE.exit"
; invoke alloc::raw_vec::RawVec<T,A>::grow_one
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17he6449fc15ab6cfeaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %arr)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h5086dd1086a82772E.exit" unwind label %cleanup.i.i32.loopexit, !noalias !2630

cleanup.i.i32.loopexit:                           ; preds = %bb1.i.i31
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %cleanup.i.i32

cleanup.i.i32.loopexit.split-lp:                  ; preds = %bb1.i.i31.peel
  %lpad.loopexit.split-lp72 = landingpad { ptr, i32 }
          cleanup
  br label %cleanup.i.i32

cleanup.i.i32:                                    ; preds = %cleanup.i.i32.loopexit.split-lp, %cleanup.i.i32.loopexit
  %lpad.phi73 = phi { ptr, i32 } [ %lpad.loopexit, %cleanup.i.i32.loopexit ], [ %lpad.loopexit.split-lp72, %cleanup.i.i32.loopexit.split-lp ]
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17heba7bfbe8384b04bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %_19) #33
          to label %cleanup3.body unwind label %terminate.i.i33

terminate.i.i33:                                  ; preds = %cleanup.i.i32
  %35 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #30
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h5086dd1086a82772E.exit": ; preds = %"_ZN45_$LT$T$u20$as$u20$alloc..string..ToString$GT$9to_string17h75b533de7c3f914dE.exit", %bb1.i.i31
  %_15.i.i = load ptr, ptr %5, align 8, !alias.scope !2625, !noalias !2630, !nonnull !37, !noundef !37
  %end.i.i = getelementptr inbounds nuw %"alloc::string::String", ptr %_15.i.i, i64 %len.i.i29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %end.i.i, ptr noundef nonnull align 8 dereferenceable(24) %_19, i64 24, i1 false)
  %36 = add i64 %len.i.i29, 1
  store i64 %36, ptr %6, align 8, !alias.scope !2625, !noalias !2630
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_19)
  %_0.i.i.i = icmp ult i64 %spec.select52, %_0.i
  %_0.i1.i.i = zext i1 %_0.i.i.i to i64
  %spec.select = add nuw i64 %spec.select52, %_0.i1.i.i
  br i1 %_0.i.i.i, label %bb10, label %bb11, !llvm.loop !2659

terminate:                                        ; preds = %bb24, %bb23, %cleanup3.body
  %37 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #30
  unreachable
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
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !2661
  store ptr %compare.i, ptr %is_less.i.i, align 8, !noalias !2664
  %b.i.i = icmp samesign ult i64 %arr.1, 2
  br i1 %b.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hff93ecb281ddd21eE.exit", label %bb7.i.i, !prof !2653

bb7.i.i:                                          ; preds = %start
  %b1.i.i = icmp samesign ult i64 %arr.1, 21
  br i1 %b1.i.i, label %bb9.i.i, label %bb10.i.i, !prof !2653

bb10.i.i:                                         ; preds = %bb7.i.i
; call core::slice::sort::stable::driftsort_main
  call void @_ZN4core5slice4sort6stable14driftsort_main17hd81a1f6a05f6cdf3E(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, ptr noalias noundef align 8 dereferenceable(8) %is_less.i.i)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hff93ecb281ddd21eE.exit"

bb9.i.i:                                          ; preds = %bb7.i.i
; call core::slice::sort::shared::smallsort::insertion_sort_shift_left
  call void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h274a17e59efaaf47E(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, i64 noundef 1, ptr noalias align 8 poison)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hff93ecb281ddd21eE.exit"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hff93ecb281ddd21eE.exit": ; preds = %start, %bb10.i.i, %bb9.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !2661
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %compare.i)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #17

; Function Attrs: mustprogress nocallback nofree nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @memcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #18

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #17

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #19

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.scmp.i8.i32(i32, i32) #20

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #22

; <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: nonlazybind uwtable
declare void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; core::panicking::panic_in_cleanup
; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() unnamed_addr #23

; <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: nonlazybind uwtable
declare void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; core::panicking::panic_fmt
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking9panic_fmt17ha4414e4328fe24a0E(ptr noundef nonnull, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #24

; core::panicking::panic_bounds_check
; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #25

; core::str::slice_error_fail
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core3str16slice_error_fail17h4678567854dd8858E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #24

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #26

; core::slice::sort::shared::smallsort::panic_on_ord_violation
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() unnamed_addr #24

; core::slice::index::slice_index_fail
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core5slice5index16slice_index_fail17h62807bcaa490c9c1E(i64 noundef, i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #24

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #20

; core::slice::sort::stable::drift::sqrt_approx
; Function Attrs: nonlazybind uwtable
declare noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h72a4dc1ae46294f4E(i64 noundef) unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #20

; alloc::raw_vec::RawVec<T,A>::grow_one
; Function Attrs: noinline nonlazybind uwtable
declare void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17he6449fc15ab6cfeaE"(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #9

; alloc::raw_vec::RawVecInner<A>::try_allocate_in
; Function Attrs: nonlazybind uwtable
declare void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #1

; alloc::raw_vec::handle_error
; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #27

; alloc::raw_vec::RawVecInner<A>::deallocate
; Function Attrs: nonlazybind uwtable
declare void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef align 8 dereferenceable(16), i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #1

; <alloc::vec::Vec<T,A> as alloc::vec::spec_extend::SpecExtend<&T,core::slice::iter::Iter<T>>>::spec_extend
; Function Attrs: nonlazybind uwtable
declare void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h50a987f7cf4aec42E"(ptr noalias noundef align 8 dereferenceable(24), ptr noundef nonnull, ptr noundef) unnamed_addr #1

; <alloc::string::String as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
declare void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h3201baa471bff1abE"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #28

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #29

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #28

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #28

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #28

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
attributes #15 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #18 = { mustprogress nocallback nofree nounwind nonlazybind willreturn memory(argmem: read) }
attributes #19 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #23 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #24 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #25 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #26 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #27 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #28 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #30 = { cold noreturn nounwind }
attributes #31 = { noinline noreturn }
attributes #32 = { noreturn }
attributes #33 = { cold }
attributes #34 = { noinline }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.93.1 (01f6ddf75 2026-02-11)"}
!3 = !{!4}
!4 = distinct !{!4, !5, !"_ZN4core3ptr10swap_chunk17ha05add989db5f2bcE: %x"}
!5 = distinct !{!5, !"_ZN4core3ptr10swap_chunk17ha05add989db5f2bcE"}
!6 = !{!7}
!7 = distinct !{!7, !5, !"_ZN4core3ptr10swap_chunk17ha05add989db5f2bcE: %y"}
!8 = !{!9}
!9 = distinct !{!9, !5, !"_ZN4core3ptr10swap_chunk17ha05add989db5f2bcE: %x:It1"}
!10 = !{!11}
!11 = distinct !{!11, !5, !"_ZN4core3ptr10swap_chunk17ha05add989db5f2bcE: %y:It1"}
!12 = !{!13}
!13 = distinct !{!13, !14, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a"}
!14 = distinct !{!14, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E"}
!15 = !{!16}
!16 = distinct !{!16, !14, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b"}
!17 = !{!18}
!18 = distinct !{!18, !19, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0"}
!19 = distinct !{!19, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E"}
!20 = !{!21}
!21 = distinct !{!21, !22, !"_ZN4core5slice4sort6shared5pivot7median317h007360abed772f57E: %c"}
!22 = distinct !{!22, !"_ZN4core5slice4sort6shared5pivot7median317h007360abed772f57E"}
!23 = !{!24}
!24 = distinct !{!24, !19, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1"}
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
!45 = distinct !{!45, !46, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1"}
!46 = distinct !{!46, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E"}
!47 = distinct !{!47, !48, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b"}
!48 = distinct !{!48, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E"}
!49 = !{!50, !51, !52, !53}
!50 = distinct !{!50, !42, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!51 = distinct !{!51, !44, !"cmpfunc: %a"}
!52 = distinct !{!52, !46, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0"}
!53 = distinct !{!53, !48, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a"}
!54 = !{!55}
!55 = distinct !{!55, !56, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %a"}
!56 = distinct !{!56, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E"}
!57 = !{!58}
!58 = distinct !{!58, !56, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %b"}
!59 = !{!60}
!60 = distinct !{!60, !61, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %a"}
!61 = distinct !{!61, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE"}
!62 = !{!63}
!63 = distinct !{!63, !64, !"_ZN4core5slice4sort6shared5pivot7median317h0e5bc2dbc1971a6eE: %c"}
!64 = distinct !{!64, !"_ZN4core5slice4sort6shared5pivot7median317h0e5bc2dbc1971a6eE"}
!65 = !{!66}
!66 = distinct !{!66, !61, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %b"}
!67 = !{!68}
!68 = distinct !{!68, !69, !"_ZN56_$LT$alloc..string..String$u20$as$u20$core..cmp..Ord$GT$3cmp17hea22ad2116efd3e7E: %self"}
!69 = distinct !{!69, !"_ZN56_$LT$alloc..string..String$u20$as$u20$core..cmp..Ord$GT$3cmp17hea22ad2116efd3e7E"}
!70 = !{!71}
!71 = distinct !{!71, !69, !"_ZN56_$LT$alloc..string..String$u20$as$u20$core..cmp..Ord$GT$3cmp17hea22ad2116efd3e7E: %other"}
!72 = !{!73}
!73 = distinct !{!73, !74, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %self"}
!74 = distinct !{!74, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE"}
!75 = !{!76}
!76 = distinct !{!76, !74, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %other"}
!77 = !{!73, !68, !60, !55}
!78 = !{!76, !71, !66, !58, !63}
!79 = !{!76, !71, !66, !58}
!80 = !{!73, !68, !60, !55, !63}
!81 = !{!82, !84}
!82 = distinct !{!82, !83, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E: %left.0"}
!83 = distinct !{!83, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E"}
!84 = distinct !{!84, !83, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E: %right.0"}
!85 = !{!73, !76, !68, !71, !60, !66, !55, !58, !63}
!86 = !{!87}
!87 = distinct !{!87, !88, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %b"}
!88 = distinct !{!88, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E"}
!89 = !{!90}
!90 = distinct !{!90, !91, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %b"}
!91 = distinct !{!91, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE"}
!92 = !{!93}
!93 = distinct !{!93, !94, !"_ZN56_$LT$alloc..string..String$u20$as$u20$core..cmp..Ord$GT$3cmp17hea22ad2116efd3e7E: %other"}
!94 = distinct !{!94, !"_ZN56_$LT$alloc..string..String$u20$as$u20$core..cmp..Ord$GT$3cmp17hea22ad2116efd3e7E"}
!95 = !{!96}
!96 = distinct !{!96, !97, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %other"}
!97 = distinct !{!97, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE"}
!98 = !{!96, !93, !90, !87}
!99 = !{!100, !101, !102, !103}
!100 = distinct !{!100, !97, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %self"}
!101 = distinct !{!101, !94, !"_ZN56_$LT$alloc..string..String$u20$as$u20$core..cmp..Ord$GT$3cmp17hea22ad2116efd3e7E: %self"}
!102 = distinct !{!102, !91, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %a"}
!103 = distinct !{!103, !88, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %a"}
!104 = !{!105, !107}
!105 = distinct !{!105, !106, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E: %left.0"}
!106 = distinct !{!106, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E"}
!107 = distinct !{!107, !106, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E: %right.0"}
!108 = !{!100, !96, !101, !93, !102, !90, !103, !87}
!109 = !{!110, !112}
!110 = distinct !{!110, !111, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E: %left.0"}
!111 = distinct !{!111, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E"}
!112 = distinct !{!112, !111, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E: %right.0"}
!113 = !{!114, !116, !117, !119, !120, !122, !123, !125}
!114 = distinct !{!114, !115, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %self"}
!115 = distinct !{!115, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE"}
!116 = distinct !{!116, !115, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %other"}
!117 = distinct !{!117, !118, !"_ZN56_$LT$alloc..string..String$u20$as$u20$core..cmp..Ord$GT$3cmp17hea22ad2116efd3e7E: %self"}
!118 = distinct !{!118, !"_ZN56_$LT$alloc..string..String$u20$as$u20$core..cmp..Ord$GT$3cmp17hea22ad2116efd3e7E"}
!119 = distinct !{!119, !118, !"_ZN56_$LT$alloc..string..String$u20$as$u20$core..cmp..Ord$GT$3cmp17hea22ad2116efd3e7E: %other"}
!120 = distinct !{!120, !121, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %a"}
!121 = distinct !{!121, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE"}
!122 = distinct !{!122, !121, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %b"}
!123 = distinct !{!123, !124, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %a"}
!124 = distinct !{!124, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E"}
!125 = distinct !{!125, !124, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %b"}
!126 = !{!127}
!127 = distinct !{!127, !128, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a"}
!128 = distinct !{!128, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E"}
!129 = !{!130}
!130 = distinct !{!130, !128, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b"}
!131 = !{!132}
!132 = distinct !{!132, !133, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0"}
!133 = distinct !{!133, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E"}
!134 = !{!135}
!135 = distinct !{!135, !133, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1"}
!136 = !{!137}
!137 = distinct !{!137, !138, !"cmpfunc: %a"}
!138 = distinct !{!138, !"cmpfunc"}
!139 = !{!140}
!140 = distinct !{!140, !138, !"cmpfunc: %b"}
!141 = !{!142}
!142 = distinct !{!142, !143, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!143 = distinct !{!143, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!144 = !{!145}
!145 = distinct !{!145, !143, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!146 = !{!142, !137, !132, !127}
!147 = !{!145, !140, !135, !130}
!148 = !{!149, !151, !153, !155}
!149 = distinct !{!149, !150, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!150 = distinct !{!150, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!151 = distinct !{!151, !152, !"cmpfunc: %b"}
!152 = distinct !{!152, !"cmpfunc"}
!153 = distinct !{!153, !154, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1"}
!154 = distinct !{!154, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E"}
!155 = distinct !{!155, !156, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b"}
!156 = distinct !{!156, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E"}
!157 = !{!158, !159, !160, !161}
!158 = distinct !{!158, !150, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!159 = distinct !{!159, !152, !"cmpfunc: %a"}
!160 = distinct !{!160, !154, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0"}
!161 = distinct !{!161, !156, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a"}
!162 = !{!163, !165}
!163 = distinct !{!163, !164, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3b480042379563adE: %self"}
!164 = distinct !{!164, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3b480042379563adE"}
!165 = distinct !{!165, !166, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h56c53bee49976bd1E: %_1"}
!166 = distinct !{!166, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h56c53bee49976bd1E"}
!167 = !{!168}
!168 = distinct !{!168, !169, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %a"}
!169 = distinct !{!169, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E"}
!170 = !{!171}
!171 = distinct !{!171, !169, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %b"}
!172 = !{!173}
!173 = distinct !{!173, !174, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %a"}
!174 = distinct !{!174, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE"}
!175 = !{!176}
!176 = distinct !{!176, !174, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %b"}
!177 = !{!178}
!178 = distinct !{!178, !179, !"_ZN56_$LT$alloc..string..String$u20$as$u20$core..cmp..Ord$GT$3cmp17hea22ad2116efd3e7E: %self"}
!179 = distinct !{!179, !"_ZN56_$LT$alloc..string..String$u20$as$u20$core..cmp..Ord$GT$3cmp17hea22ad2116efd3e7E"}
!180 = !{!181}
!181 = distinct !{!181, !179, !"_ZN56_$LT$alloc..string..String$u20$as$u20$core..cmp..Ord$GT$3cmp17hea22ad2116efd3e7E: %other"}
!182 = !{!183}
!183 = distinct !{!183, !184, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %self"}
!184 = distinct !{!184, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE"}
!185 = !{!186}
!186 = distinct !{!186, !184, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %other"}
!187 = !{!183, !178, !173, !168}
!188 = !{!186, !181, !176, !171}
!189 = !{!190, !192}
!190 = distinct !{!190, !191, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E: %left.0"}
!191 = distinct !{!191, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E"}
!192 = distinct !{!192, !191, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E: %right.0"}
!193 = !{!183, !186, !178, !181, !173, !176, !168, !171}
!194 = !{!195}
!195 = distinct !{!195, !196, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %b"}
!196 = distinct !{!196, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E"}
!197 = !{!198}
!198 = distinct !{!198, !199, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %b"}
!199 = distinct !{!199, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE"}
!200 = !{!201}
!201 = distinct !{!201, !202, !"_ZN56_$LT$alloc..string..String$u20$as$u20$core..cmp..Ord$GT$3cmp17hea22ad2116efd3e7E: %other"}
!202 = distinct !{!202, !"_ZN56_$LT$alloc..string..String$u20$as$u20$core..cmp..Ord$GT$3cmp17hea22ad2116efd3e7E"}
!203 = !{!204}
!204 = distinct !{!204, !205, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %other"}
!205 = distinct !{!205, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE"}
!206 = !{!204, !201, !198, !195}
!207 = !{!208, !209, !210, !211}
!208 = distinct !{!208, !205, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %self"}
!209 = distinct !{!209, !202, !"_ZN56_$LT$alloc..string..String$u20$as$u20$core..cmp..Ord$GT$3cmp17hea22ad2116efd3e7E: %self"}
!210 = distinct !{!210, !199, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %a"}
!211 = distinct !{!211, !196, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %a"}
!212 = !{!213, !215}
!213 = distinct !{!213, !214, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E: %left.0"}
!214 = distinct !{!214, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E"}
!215 = distinct !{!215, !214, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E: %right.0"}
!216 = !{!208, !204, !209, !201, !210, !198, !211, !195}
!217 = !{!218, !220}
!218 = distinct !{!218, !219, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc0534965a749a53fE: %self"}
!219 = distinct !{!219, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc0534965a749a53fE"}
!220 = distinct !{!220, !221, !"_ZN4core3ptr98drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$alloc..string..String$GT$$GT$17hd561170127796934E: %_1"}
!221 = distinct !{!221, !"_ZN4core3ptr98drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$alloc..string..String$GT$$GT$17hd561170127796934E"}
!222 = !{!223}
!223 = distinct !{!223, !224, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %a"}
!224 = distinct !{!224, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E"}
!225 = !{!226}
!226 = distinct !{!226, !224, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %b"}
!227 = !{!228}
!228 = distinct !{!228, !229, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %a"}
!229 = distinct !{!229, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE"}
!230 = !{!231}
!231 = distinct !{!231, !229, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %b"}
!232 = !{!233}
!233 = distinct !{!233, !234, !"_ZN56_$LT$alloc..string..String$u20$as$u20$core..cmp..Ord$GT$3cmp17hea22ad2116efd3e7E: %self"}
!234 = distinct !{!234, !"_ZN56_$LT$alloc..string..String$u20$as$u20$core..cmp..Ord$GT$3cmp17hea22ad2116efd3e7E"}
!235 = !{!236}
!236 = distinct !{!236, !234, !"_ZN56_$LT$alloc..string..String$u20$as$u20$core..cmp..Ord$GT$3cmp17hea22ad2116efd3e7E: %other"}
!237 = !{!238}
!238 = distinct !{!238, !239, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %self"}
!239 = distinct !{!239, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE"}
!240 = !{!241}
!241 = distinct !{!241, !239, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %other"}
!242 = !{!238, !233, !228, !223}
!243 = !{!241, !236, !231, !226}
!244 = !{!245, !247}
!245 = distinct !{!245, !246, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E: %left.0"}
!246 = distinct !{!246, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E"}
!247 = distinct !{!247, !246, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E: %right.0"}
!248 = !{!238, !241, !233, !236, !228, !231, !223, !226}
!249 = !{!250}
!250 = distinct !{!250, !251, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %a"}
!251 = distinct !{!251, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E"}
!252 = !{!253}
!253 = distinct !{!253, !251, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %b"}
!254 = !{!255}
!255 = distinct !{!255, !256, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %a"}
!256 = distinct !{!256, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE"}
!257 = !{!258}
!258 = distinct !{!258, !256, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %b"}
!259 = !{!260}
!260 = distinct !{!260, !261, !"_ZN56_$LT$alloc..string..String$u20$as$u20$core..cmp..Ord$GT$3cmp17hea22ad2116efd3e7E: %self"}
!261 = distinct !{!261, !"_ZN56_$LT$alloc..string..String$u20$as$u20$core..cmp..Ord$GT$3cmp17hea22ad2116efd3e7E"}
!262 = !{!263}
!263 = distinct !{!263, !261, !"_ZN56_$LT$alloc..string..String$u20$as$u20$core..cmp..Ord$GT$3cmp17hea22ad2116efd3e7E: %other"}
!264 = !{!265}
!265 = distinct !{!265, !266, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %self"}
!266 = distinct !{!266, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE"}
!267 = !{!268}
!268 = distinct !{!268, !266, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %other"}
!269 = !{!265, !260, !255, !250}
!270 = !{!268, !263, !258, !253}
!271 = !{!272, !274}
!272 = distinct !{!272, !273, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E: %left.0"}
!273 = distinct !{!273, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E"}
!274 = distinct !{!274, !273, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E: %right.0"}
!275 = !{!265, !268, !260, !263, !255, !258, !250, !253}
!276 = !{!277}
!277 = distinct !{!277, !278, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %a"}
!278 = distinct !{!278, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E"}
!279 = !{!280}
!280 = distinct !{!280, !278, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %b"}
!281 = !{!282}
!282 = distinct !{!282, !283, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %a"}
!283 = distinct !{!283, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE"}
!284 = !{!285}
!285 = distinct !{!285, !283, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %b"}
!286 = !{!287}
!287 = distinct !{!287, !288, !"_ZN56_$LT$alloc..string..String$u20$as$u20$core..cmp..Ord$GT$3cmp17hea22ad2116efd3e7E: %self"}
!288 = distinct !{!288, !"_ZN56_$LT$alloc..string..String$u20$as$u20$core..cmp..Ord$GT$3cmp17hea22ad2116efd3e7E"}
!289 = !{!290}
!290 = distinct !{!290, !288, !"_ZN56_$LT$alloc..string..String$u20$as$u20$core..cmp..Ord$GT$3cmp17hea22ad2116efd3e7E: %other"}
!291 = !{!292}
!292 = distinct !{!292, !293, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %self"}
!293 = distinct !{!293, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE"}
!294 = !{!295}
!295 = distinct !{!295, !293, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %other"}
!296 = !{!292, !287, !282, !277}
!297 = !{!295, !290, !285, !280}
!298 = !{!299, !301}
!299 = distinct !{!299, !300, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E: %left.0"}
!300 = distinct !{!300, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E"}
!301 = distinct !{!301, !300, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E: %right.0"}
!302 = !{!292, !295, !287, !290, !282, !285, !277, !280}
!303 = !{!304}
!304 = distinct !{!304, !305, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %a"}
!305 = distinct !{!305, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E"}
!306 = !{!307}
!307 = distinct !{!307, !305, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %b"}
!308 = !{!309}
!309 = distinct !{!309, !310, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %a"}
!310 = distinct !{!310, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE"}
!311 = !{!312}
!312 = distinct !{!312, !310, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %b"}
!313 = !{!314}
!314 = distinct !{!314, !315, !"_ZN56_$LT$alloc..string..String$u20$as$u20$core..cmp..Ord$GT$3cmp17hea22ad2116efd3e7E: %self"}
!315 = distinct !{!315, !"_ZN56_$LT$alloc..string..String$u20$as$u20$core..cmp..Ord$GT$3cmp17hea22ad2116efd3e7E"}
!316 = !{!317}
!317 = distinct !{!317, !315, !"_ZN56_$LT$alloc..string..String$u20$as$u20$core..cmp..Ord$GT$3cmp17hea22ad2116efd3e7E: %other"}
!318 = !{!319}
!319 = distinct !{!319, !320, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %self"}
!320 = distinct !{!320, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE"}
!321 = !{!322}
!322 = distinct !{!322, !320, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %other"}
!323 = !{!319, !314, !309, !304}
!324 = !{!322, !317, !312, !307}
!325 = !{!326, !328}
!326 = distinct !{!326, !327, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E: %left.0"}
!327 = distinct !{!327, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E"}
!328 = distinct !{!328, !327, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E: %right.0"}
!329 = !{!319, !322, !314, !317, !309, !312, !304, !307}
!330 = !{!331}
!331 = distinct !{!331, !332, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %a"}
!332 = distinct !{!332, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E"}
!333 = !{!334}
!334 = distinct !{!334, !332, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %b"}
!335 = !{!336}
!336 = distinct !{!336, !337, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %a"}
!337 = distinct !{!337, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE"}
!338 = !{!339}
!339 = distinct !{!339, !337, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %b"}
!340 = !{!341}
!341 = distinct !{!341, !342, !"_ZN56_$LT$alloc..string..String$u20$as$u20$core..cmp..Ord$GT$3cmp17hea22ad2116efd3e7E: %self"}
!342 = distinct !{!342, !"_ZN56_$LT$alloc..string..String$u20$as$u20$core..cmp..Ord$GT$3cmp17hea22ad2116efd3e7E"}
!343 = !{!344}
!344 = distinct !{!344, !342, !"_ZN56_$LT$alloc..string..String$u20$as$u20$core..cmp..Ord$GT$3cmp17hea22ad2116efd3e7E: %other"}
!345 = !{!346}
!346 = distinct !{!346, !347, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %self"}
!347 = distinct !{!347, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE"}
!348 = !{!349}
!349 = distinct !{!349, !347, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %other"}
!350 = !{!346, !341, !336, !331}
!351 = !{!349, !344, !339, !334}
!352 = !{!353, !355}
!353 = distinct !{!353, !354, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E: %left.0"}
!354 = distinct !{!354, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E"}
!355 = distinct !{!355, !354, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E: %right.0"}
!356 = !{!346, !349, !341, !344, !336, !339, !331, !334}
!357 = !{!358}
!358 = distinct !{!358, !359, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a"}
!359 = distinct !{!359, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E"}
!360 = !{!361}
!361 = distinct !{!361, !359, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b"}
!362 = !{!363}
!363 = distinct !{!363, !364, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0"}
!364 = distinct !{!364, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E"}
!365 = !{!366}
!366 = distinct !{!366, !364, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1"}
!367 = !{!368}
!368 = distinct !{!368, !369, !"cmpfunc: %a"}
!369 = distinct !{!369, !"cmpfunc"}
!370 = !{!371}
!371 = distinct !{!371, !369, !"cmpfunc: %b"}
!372 = !{!373}
!373 = distinct !{!373, !374, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!374 = distinct !{!374, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!375 = !{!376}
!376 = distinct !{!376, !374, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!377 = !{!373, !368, !363, !358}
!378 = !{!376, !371, !366, !361}
!379 = !{!380}
!380 = distinct !{!380, !381, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a"}
!381 = distinct !{!381, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E"}
!382 = !{!383}
!383 = distinct !{!383, !381, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b"}
!384 = !{!385}
!385 = distinct !{!385, !386, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0"}
!386 = distinct !{!386, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E"}
!387 = !{!388}
!388 = distinct !{!388, !386, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1"}
!389 = !{!390}
!390 = distinct !{!390, !391, !"cmpfunc: %a"}
!391 = distinct !{!391, !"cmpfunc"}
!392 = !{!393}
!393 = distinct !{!393, !391, !"cmpfunc: %b"}
!394 = !{!395}
!395 = distinct !{!395, !396, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!396 = distinct !{!396, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!397 = !{!398}
!398 = distinct !{!398, !396, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!399 = !{!395, !390, !385, !380}
!400 = !{!398, !393, !388, !383}
!401 = !{!402}
!402 = distinct !{!402, !403, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a"}
!403 = distinct !{!403, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E"}
!404 = !{!405}
!405 = distinct !{!405, !403, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b"}
!406 = !{!407}
!407 = distinct !{!407, !408, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0"}
!408 = distinct !{!408, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E"}
!409 = !{!410}
!410 = distinct !{!410, !408, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1"}
!411 = !{!412}
!412 = distinct !{!412, !413, !"cmpfunc: %a"}
!413 = distinct !{!413, !"cmpfunc"}
!414 = !{!415}
!415 = distinct !{!415, !413, !"cmpfunc: %b"}
!416 = !{!417}
!417 = distinct !{!417, !418, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!418 = distinct !{!418, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!419 = !{!420}
!420 = distinct !{!420, !418, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!421 = !{!417, !412, !407, !402}
!422 = !{!420, !415, !410, !405}
!423 = !{!424}
!424 = distinct !{!424, !425, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a"}
!425 = distinct !{!425, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E"}
!426 = !{!427}
!427 = distinct !{!427, !425, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b"}
!428 = !{!429}
!429 = distinct !{!429, !430, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0"}
!430 = distinct !{!430, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E"}
!431 = !{!432}
!432 = distinct !{!432, !430, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1"}
!433 = !{!434}
!434 = distinct !{!434, !435, !"cmpfunc: %a"}
!435 = distinct !{!435, !"cmpfunc"}
!436 = !{!437}
!437 = distinct !{!437, !435, !"cmpfunc: %b"}
!438 = !{!439}
!439 = distinct !{!439, !440, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!440 = distinct !{!440, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!441 = !{!442}
!442 = distinct !{!442, !440, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!443 = !{!439, !434, !429, !424}
!444 = !{!442, !437, !432, !427}
!445 = !{!446}
!446 = distinct !{!446, !447, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a"}
!447 = distinct !{!447, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E"}
!448 = !{!449}
!449 = distinct !{!449, !447, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b"}
!450 = !{!451}
!451 = distinct !{!451, !452, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0"}
!452 = distinct !{!452, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E"}
!453 = !{!454}
!454 = distinct !{!454, !452, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1"}
!455 = !{!456}
!456 = distinct !{!456, !457, !"cmpfunc: %a"}
!457 = distinct !{!457, !"cmpfunc"}
!458 = !{!459}
!459 = distinct !{!459, !457, !"cmpfunc: %b"}
!460 = !{!461}
!461 = distinct !{!461, !462, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!462 = distinct !{!462, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!463 = !{!464}
!464 = distinct !{!464, !462, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!465 = !{!461, !456, !451, !446}
!466 = !{!464, !459, !454, !449}
!467 = !{!468}
!468 = distinct !{!468, !469, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a"}
!469 = distinct !{!469, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E"}
!470 = !{!471}
!471 = distinct !{!471, !469, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b"}
!472 = !{!473}
!473 = distinct !{!473, !474, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0"}
!474 = distinct !{!474, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E"}
!475 = !{!476}
!476 = distinct !{!476, !474, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1"}
!477 = !{!478}
!478 = distinct !{!478, !479, !"cmpfunc: %a"}
!479 = distinct !{!479, !"cmpfunc"}
!480 = !{!481}
!481 = distinct !{!481, !479, !"cmpfunc: %b"}
!482 = !{!483}
!483 = distinct !{!483, !484, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!484 = distinct !{!484, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!485 = !{!486}
!486 = distinct !{!486, !484, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!487 = !{!483, !478, !473, !468}
!488 = !{!486, !481, !476, !471}
!489 = !{!490}
!490 = distinct !{!490, !491, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a"}
!491 = distinct !{!491, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E"}
!492 = !{!493}
!493 = distinct !{!493, !491, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b"}
!494 = !{!495}
!495 = distinct !{!495, !496, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0"}
!496 = distinct !{!496, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E"}
!497 = !{!498}
!498 = distinct !{!498, !496, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1"}
!499 = !{!500}
!500 = distinct !{!500, !501, !"cmpfunc: %a"}
!501 = distinct !{!501, !"cmpfunc"}
!502 = !{!503}
!503 = distinct !{!503, !501, !"cmpfunc: %b"}
!504 = !{!505}
!505 = distinct !{!505, !506, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!506 = distinct !{!506, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!507 = !{!508}
!508 = distinct !{!508, !506, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!509 = !{!505, !500, !495, !490}
!510 = !{!508, !503, !498, !493}
!511 = !{!512}
!512 = distinct !{!512, !513, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a"}
!513 = distinct !{!513, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E"}
!514 = !{!515}
!515 = distinct !{!515, !513, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b"}
!516 = !{!517}
!517 = distinct !{!517, !518, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0"}
!518 = distinct !{!518, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E"}
!519 = !{!520}
!520 = distinct !{!520, !518, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1"}
!521 = !{!522}
!522 = distinct !{!522, !523, !"cmpfunc: %a"}
!523 = distinct !{!523, !"cmpfunc"}
!524 = !{!525}
!525 = distinct !{!525, !523, !"cmpfunc: %b"}
!526 = !{!527}
!527 = distinct !{!527, !528, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!528 = distinct !{!528, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!529 = !{!530}
!530 = distinct !{!530, !528, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!531 = !{!527, !522, !517, !512}
!532 = !{!530, !525, !520, !515}
!533 = !{!534}
!534 = distinct !{!534, !535, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a"}
!535 = distinct !{!535, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E"}
!536 = !{!537}
!537 = distinct !{!537, !535, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b"}
!538 = !{!539}
!539 = distinct !{!539, !540, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0"}
!540 = distinct !{!540, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E"}
!541 = !{!542}
!542 = distinct !{!542, !540, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1"}
!543 = !{!544}
!544 = distinct !{!544, !545, !"cmpfunc: %a"}
!545 = distinct !{!545, !"cmpfunc"}
!546 = !{!547}
!547 = distinct !{!547, !545, !"cmpfunc: %b"}
!548 = !{!549}
!549 = distinct !{!549, !550, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!550 = distinct !{!550, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!551 = !{!552}
!552 = distinct !{!552, !550, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!553 = !{!549, !544, !539, !534}
!554 = !{!552, !547, !542, !537}
!555 = !{!556}
!556 = distinct !{!556, !557, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a"}
!557 = distinct !{!557, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E"}
!558 = !{!559}
!559 = distinct !{!559, !557, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b"}
!560 = !{!561}
!561 = distinct !{!561, !562, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0"}
!562 = distinct !{!562, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E"}
!563 = !{!564}
!564 = distinct !{!564, !562, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1"}
!565 = !{!566}
!566 = distinct !{!566, !567, !"cmpfunc: %a"}
!567 = distinct !{!567, !"cmpfunc"}
!568 = !{!569}
!569 = distinct !{!569, !567, !"cmpfunc: %b"}
!570 = !{!571}
!571 = distinct !{!571, !572, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!572 = distinct !{!572, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!573 = !{!574}
!574 = distinct !{!574, !572, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!575 = !{!571, !566, !561, !556}
!576 = !{!574, !569, !564, !559}
!577 = !{!578}
!578 = distinct !{!578, !579, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a"}
!579 = distinct !{!579, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E"}
!580 = !{!581}
!581 = distinct !{!581, !579, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b"}
!582 = !{!583}
!583 = distinct !{!583, !584, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0"}
!584 = distinct !{!584, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E"}
!585 = !{!586}
!586 = distinct !{!586, !584, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1"}
!587 = !{!588}
!588 = distinct !{!588, !589, !"cmpfunc: %a"}
!589 = distinct !{!589, !"cmpfunc"}
!590 = !{!591}
!591 = distinct !{!591, !589, !"cmpfunc: %b"}
!592 = !{!593}
!593 = distinct !{!593, !594, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!594 = distinct !{!594, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!595 = !{!596}
!596 = distinct !{!596, !594, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!597 = !{!593, !588, !583, !578}
!598 = !{!596, !591, !586, !581}
!599 = !{!600}
!600 = distinct !{!600, !601, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a"}
!601 = distinct !{!601, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E"}
!602 = !{!603}
!603 = distinct !{!603, !601, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b"}
!604 = !{!605}
!605 = distinct !{!605, !606, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0"}
!606 = distinct !{!606, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E"}
!607 = !{!608}
!608 = distinct !{!608, !606, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1"}
!609 = !{!610}
!610 = distinct !{!610, !611, !"cmpfunc: %a"}
!611 = distinct !{!611, !"cmpfunc"}
!612 = !{!613}
!613 = distinct !{!613, !611, !"cmpfunc: %b"}
!614 = !{!615}
!615 = distinct !{!615, !616, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!616 = distinct !{!616, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!617 = !{!618}
!618 = distinct !{!618, !616, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!619 = !{!615, !610, !605, !600}
!620 = !{!618, !613, !608, !603}
!621 = !{!622}
!622 = distinct !{!622, !623, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a"}
!623 = distinct !{!623, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E"}
!624 = !{!625}
!625 = distinct !{!625, !623, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b"}
!626 = !{!627}
!627 = distinct !{!627, !628, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0"}
!628 = distinct !{!628, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E"}
!629 = !{!630}
!630 = distinct !{!630, !628, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1"}
!631 = !{!632}
!632 = distinct !{!632, !633, !"cmpfunc: %a"}
!633 = distinct !{!633, !"cmpfunc"}
!634 = !{!635}
!635 = distinct !{!635, !633, !"cmpfunc: %b"}
!636 = !{!637}
!637 = distinct !{!637, !638, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!638 = distinct !{!638, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!639 = !{!640}
!640 = distinct !{!640, !638, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!641 = !{!637, !632, !627, !622}
!642 = !{!640, !635, !630, !625}
!643 = !{!644}
!644 = distinct !{!644, !645, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a"}
!645 = distinct !{!645, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E"}
!646 = !{!647}
!647 = distinct !{!647, !645, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b"}
!648 = !{!649}
!649 = distinct !{!649, !650, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0"}
!650 = distinct !{!650, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E"}
!651 = !{!652}
!652 = distinct !{!652, !650, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1"}
!653 = !{!654}
!654 = distinct !{!654, !655, !"cmpfunc: %a"}
!655 = distinct !{!655, !"cmpfunc"}
!656 = !{!657}
!657 = distinct !{!657, !655, !"cmpfunc: %b"}
!658 = !{!659}
!659 = distinct !{!659, !660, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!660 = distinct !{!660, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!661 = !{!662}
!662 = distinct !{!662, !660, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!663 = !{!659, !654, !649, !644}
!664 = !{!662, !657, !652, !647}
!665 = !{!666}
!666 = distinct !{!666, !667, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a"}
!667 = distinct !{!667, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E"}
!668 = !{!669}
!669 = distinct !{!669, !667, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b"}
!670 = !{!671}
!671 = distinct !{!671, !672, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0"}
!672 = distinct !{!672, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E"}
!673 = !{!674}
!674 = distinct !{!674, !672, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1"}
!675 = !{!676}
!676 = distinct !{!676, !677, !"cmpfunc: %a"}
!677 = distinct !{!677, !"cmpfunc"}
!678 = !{!679}
!679 = distinct !{!679, !677, !"cmpfunc: %b"}
!680 = !{!681}
!681 = distinct !{!681, !682, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!682 = distinct !{!682, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!683 = !{!684}
!684 = distinct !{!684, !682, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!685 = !{!681, !676, !671, !666}
!686 = !{!684, !679, !674, !669}
!687 = !{!688}
!688 = distinct !{!688, !689, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h5d0d96e883197981E: %v.0"}
!689 = distinct !{!689, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h5d0d96e883197981E"}
!690 = !{!691}
!691 = distinct !{!691, !692, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a"}
!692 = distinct !{!692, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E"}
!693 = !{!694}
!694 = distinct !{!694, !692, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b"}
!695 = !{!696}
!696 = distinct !{!696, !697, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0"}
!697 = distinct !{!697, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E"}
!698 = !{!699}
!699 = distinct !{!699, !700, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h7c75fa30ffafebdfE: %_0"}
!700 = distinct !{!700, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h7c75fa30ffafebdfE"}
!701 = !{!702}
!702 = distinct !{!702, !697, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1"}
!703 = !{!704}
!704 = distinct !{!704, !705, !"cmpfunc: %a"}
!705 = distinct !{!705, !"cmpfunc"}
!706 = !{!707}
!707 = distinct !{!707, !705, !"cmpfunc: %b"}
!708 = !{!709}
!709 = distinct !{!709, !710, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!710 = distinct !{!710, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!711 = !{!712}
!712 = distinct !{!712, !710, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!713 = !{!709, !704, !696, !691, !688}
!714 = !{!712, !707, !702, !694, !699}
!715 = !{!712, !707, !702, !694, !688}
!716 = !{!709, !704, !696, !691, !699}
!717 = !{!699, !718, !688}
!718 = distinct !{!718, !700, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h7c75fa30ffafebdfE: %is_less"}
!719 = !{!720}
!720 = distinct !{!720, !721, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a"}
!721 = distinct !{!721, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E"}
!722 = !{!723}
!723 = distinct !{!723, !721, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b"}
!724 = !{!725}
!725 = distinct !{!725, !726, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0"}
!726 = distinct !{!726, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E"}
!727 = !{!728}
!728 = distinct !{!728, !729, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hf63e1ad3cd27459aE: %_0"}
!729 = distinct !{!729, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hf63e1ad3cd27459aE"}
!730 = !{!731}
!731 = distinct !{!731, !726, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1"}
!732 = !{!733}
!733 = distinct !{!733, !734, !"cmpfunc: %a"}
!734 = distinct !{!734, !"cmpfunc"}
!735 = !{!736}
!736 = distinct !{!736, !734, !"cmpfunc: %b"}
!737 = !{!738}
!738 = distinct !{!738, !739, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!739 = distinct !{!739, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!740 = !{!741}
!741 = distinct !{!741, !739, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!742 = !{!738, !733, !725, !720, !688}
!743 = !{!741, !736, !731, !723, !728}
!744 = !{!741, !736, !731, !723, !688}
!745 = !{!738, !733, !725, !720, !728}
!746 = !{!728, !747, !688}
!747 = distinct !{!747, !729, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hf63e1ad3cd27459aE: %is_less"}
!748 = !{!749}
!749 = distinct !{!749, !692, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a:It1"}
!750 = !{!751}
!751 = distinct !{!751, !692, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b:It1"}
!752 = !{!753}
!753 = distinct !{!753, !697, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0:It1"}
!754 = !{!755}
!755 = distinct !{!755, !697, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1:It1"}
!756 = !{!757}
!757 = distinct !{!757, !705, !"cmpfunc: %a:It1"}
!758 = !{!759}
!759 = distinct !{!759, !705, !"cmpfunc: %b:It1"}
!760 = !{!761}
!761 = distinct !{!761, !710, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It1"}
!762 = !{!763}
!763 = distinct !{!763, !710, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It1"}
!764 = !{!761, !757, !753, !749, !688}
!765 = !{!763, !759, !755, !751, !699}
!766 = !{!763, !759, !755, !751, !688}
!767 = !{!761, !757, !753, !749, !699}
!768 = !{!769}
!769 = distinct !{!769, !721, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a:It1"}
!770 = !{!771}
!771 = distinct !{!771, !721, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b:It1"}
!772 = !{!773}
!773 = distinct !{!773, !726, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0:It1"}
!774 = !{!775}
!775 = distinct !{!775, !726, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1:It1"}
!776 = !{!777}
!777 = distinct !{!777, !734, !"cmpfunc: %a:It1"}
!778 = !{!779}
!779 = distinct !{!779, !734, !"cmpfunc: %b:It1"}
!780 = !{!781}
!781 = distinct !{!781, !739, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It1"}
!782 = !{!783}
!783 = distinct !{!783, !739, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It1"}
!784 = !{!781, !777, !773, !769, !688}
!785 = !{!783, !779, !775, !771, !728}
!786 = !{!783, !779, !775, !771, !688}
!787 = !{!781, !777, !773, !769, !728}
!788 = !{!789}
!789 = distinct !{!789, !692, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a:It2"}
!790 = !{!791}
!791 = distinct !{!791, !692, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b:It2"}
!792 = !{!793}
!793 = distinct !{!793, !697, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0:It2"}
!794 = !{!795}
!795 = distinct !{!795, !697, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1:It2"}
!796 = !{!797}
!797 = distinct !{!797, !705, !"cmpfunc: %a:It2"}
!798 = !{!799}
!799 = distinct !{!799, !705, !"cmpfunc: %b:It2"}
!800 = !{!801}
!801 = distinct !{!801, !710, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It2"}
!802 = !{!803}
!803 = distinct !{!803, !710, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It2"}
!804 = !{!801, !797, !793, !789, !688}
!805 = !{!803, !799, !795, !791, !699}
!806 = !{!803, !799, !795, !791, !688}
!807 = !{!801, !797, !793, !789, !699}
!808 = !{!809}
!809 = distinct !{!809, !721, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a:It2"}
!810 = !{!811}
!811 = distinct !{!811, !721, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b:It2"}
!812 = !{!813}
!813 = distinct !{!813, !726, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0:It2"}
!814 = !{!815}
!815 = distinct !{!815, !726, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1:It2"}
!816 = !{!817}
!817 = distinct !{!817, !734, !"cmpfunc: %a:It2"}
!818 = !{!819}
!819 = distinct !{!819, !734, !"cmpfunc: %b:It2"}
!820 = !{!821}
!821 = distinct !{!821, !739, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It2"}
!822 = !{!823}
!823 = distinct !{!823, !739, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It2"}
!824 = !{!821, !817, !813, !809, !688}
!825 = !{!823, !819, !815, !811, !728}
!826 = !{!823, !819, !815, !811, !688}
!827 = !{!821, !817, !813, !809, !728}
!828 = !{!829}
!829 = distinct !{!829, !692, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a:It3"}
!830 = !{!831}
!831 = distinct !{!831, !692, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b:It3"}
!832 = !{!833}
!833 = distinct !{!833, !697, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0:It3"}
!834 = !{!835}
!835 = distinct !{!835, !697, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1:It3"}
!836 = !{!837}
!837 = distinct !{!837, !705, !"cmpfunc: %a:It3"}
!838 = !{!839}
!839 = distinct !{!839, !705, !"cmpfunc: %b:It3"}
!840 = !{!841}
!841 = distinct !{!841, !710, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It3"}
!842 = !{!843}
!843 = distinct !{!843, !710, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It3"}
!844 = !{!841, !837, !833, !829, !688}
!845 = !{!843, !839, !835, !831, !699}
!846 = !{!843, !839, !835, !831, !688}
!847 = !{!841, !837, !833, !829, !699}
!848 = !{!849}
!849 = distinct !{!849, !721, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a:It3"}
!850 = !{!851}
!851 = distinct !{!851, !721, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b:It3"}
!852 = !{!853}
!853 = distinct !{!853, !726, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0:It3"}
!854 = !{!855}
!855 = distinct !{!855, !726, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1:It3"}
!856 = !{!857}
!857 = distinct !{!857, !734, !"cmpfunc: %a:It3"}
!858 = !{!859}
!859 = distinct !{!859, !734, !"cmpfunc: %b:It3"}
!860 = !{!861}
!861 = distinct !{!861, !739, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It3"}
!862 = !{!863}
!863 = distinct !{!863, !739, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It3"}
!864 = !{!861, !857, !853, !849, !688}
!865 = !{!863, !859, !855, !851, !728}
!866 = !{!863, !859, !855, !851, !688}
!867 = !{!861, !857, !853, !849, !728}
!868 = !{!"branch_weights", i32 4001, i32 4000000}
!869 = !{!870}
!870 = distinct !{!870, !871, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %a"}
!871 = distinct !{!871, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E"}
!872 = !{!873}
!873 = distinct !{!873, !871, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %b"}
!874 = !{!875}
!875 = distinct !{!875, !876, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %a"}
!876 = distinct !{!876, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE"}
!877 = !{!878}
!878 = distinct !{!878, !879, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hde12d15d10613531E: %_0"}
!879 = distinct !{!879, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hde12d15d10613531E"}
!880 = !{!881}
!881 = distinct !{!881, !876, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %b"}
!882 = !{!883}
!883 = distinct !{!883, !884, !"_ZN56_$LT$alloc..string..String$u20$as$u20$core..cmp..Ord$GT$3cmp17hea22ad2116efd3e7E: %self"}
!884 = distinct !{!884, !"_ZN56_$LT$alloc..string..String$u20$as$u20$core..cmp..Ord$GT$3cmp17hea22ad2116efd3e7E"}
!885 = !{!886}
!886 = distinct !{!886, !884, !"_ZN56_$LT$alloc..string..String$u20$as$u20$core..cmp..Ord$GT$3cmp17hea22ad2116efd3e7E: %other"}
!887 = !{!888}
!888 = distinct !{!888, !889, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %self"}
!889 = distinct !{!889, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE"}
!890 = !{!891}
!891 = distinct !{!891, !889, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %other"}
!892 = !{!888, !883, !875, !870}
!893 = !{!891, !886, !881, !873, !878}
!894 = !{!891, !886, !881, !873}
!895 = !{!888, !883, !875, !870, !878}
!896 = !{!897, !899}
!897 = distinct !{!897, !898, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E: %left.0"}
!898 = distinct !{!898, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E"}
!899 = distinct !{!899, !898, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E: %right.0"}
!900 = !{!888, !891, !883, !886, !875, !881, !870, !873, !878}
!901 = !{!878, !902}
!902 = distinct !{!902, !879, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hde12d15d10613531E: %is_less"}
!903 = !{!904}
!904 = distinct !{!904, !905, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %a"}
!905 = distinct !{!905, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E"}
!906 = !{!907}
!907 = distinct !{!907, !905, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %b"}
!908 = !{!909}
!909 = distinct !{!909, !910, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %a"}
!910 = distinct !{!910, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE"}
!911 = !{!912}
!912 = distinct !{!912, !913, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h3e448fa3174571f1E: %_0"}
!913 = distinct !{!913, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h3e448fa3174571f1E"}
!914 = !{!915}
!915 = distinct !{!915, !910, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %b"}
!916 = !{!917}
!917 = distinct !{!917, !918, !"_ZN56_$LT$alloc..string..String$u20$as$u20$core..cmp..Ord$GT$3cmp17hea22ad2116efd3e7E: %self"}
!918 = distinct !{!918, !"_ZN56_$LT$alloc..string..String$u20$as$u20$core..cmp..Ord$GT$3cmp17hea22ad2116efd3e7E"}
!919 = !{!920}
!920 = distinct !{!920, !918, !"_ZN56_$LT$alloc..string..String$u20$as$u20$core..cmp..Ord$GT$3cmp17hea22ad2116efd3e7E: %other"}
!921 = !{!922}
!922 = distinct !{!922, !923, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %self"}
!923 = distinct !{!923, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE"}
!924 = !{!925}
!925 = distinct !{!925, !923, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %other"}
!926 = !{!922, !917, !909, !904}
!927 = !{!925, !920, !915, !907, !912}
!928 = !{!925, !920, !915, !907}
!929 = !{!922, !917, !909, !904, !912}
!930 = !{!931, !933}
!931 = distinct !{!931, !932, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E: %left.0"}
!932 = distinct !{!932, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E"}
!933 = distinct !{!933, !932, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E: %right.0"}
!934 = !{!922, !925, !917, !920, !909, !915, !904, !907, !912}
!935 = !{!912, !936}
!936 = distinct !{!936, !913, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h3e448fa3174571f1E: %is_less"}
!937 = !{!938}
!938 = distinct !{!938, !939, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a"}
!939 = distinct !{!939, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E"}
!940 = !{!941}
!941 = distinct !{!941, !939, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b"}
!942 = !{!943}
!943 = distinct !{!943, !944, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0"}
!944 = distinct !{!944, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E"}
!945 = !{!946}
!946 = distinct !{!946, !947, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h7c75fa30ffafebdfE: %_0"}
!947 = distinct !{!947, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h7c75fa30ffafebdfE"}
!948 = !{!949}
!949 = distinct !{!949, !944, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1"}
!950 = !{!951}
!951 = distinct !{!951, !952, !"cmpfunc: %a"}
!952 = distinct !{!952, !"cmpfunc"}
!953 = !{!954}
!954 = distinct !{!954, !952, !"cmpfunc: %b"}
!955 = !{!956}
!956 = distinct !{!956, !957, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!957 = distinct !{!957, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!958 = !{!959}
!959 = distinct !{!959, !957, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!960 = !{!956, !951, !943, !938}
!961 = !{!959, !954, !949, !941, !946}
!962 = !{!959, !954, !949, !941}
!963 = !{!956, !951, !943, !938, !946}
!964 = !{!946, !965}
!965 = distinct !{!965, !947, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h7c75fa30ffafebdfE: %is_less"}
!966 = !{!967}
!967 = distinct !{!967, !968, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a"}
!968 = distinct !{!968, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E"}
!969 = !{!970}
!970 = distinct !{!970, !968, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b"}
!971 = !{!972}
!972 = distinct !{!972, !973, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0"}
!973 = distinct !{!973, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E"}
!974 = !{!975}
!975 = distinct !{!975, !976, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hf63e1ad3cd27459aE: %_0"}
!976 = distinct !{!976, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hf63e1ad3cd27459aE"}
!977 = !{!978}
!978 = distinct !{!978, !973, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1"}
!979 = !{!980}
!980 = distinct !{!980, !981, !"cmpfunc: %a"}
!981 = distinct !{!981, !"cmpfunc"}
!982 = !{!983}
!983 = distinct !{!983, !981, !"cmpfunc: %b"}
!984 = !{!985}
!985 = distinct !{!985, !986, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!986 = distinct !{!986, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!987 = !{!988}
!988 = distinct !{!988, !986, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!989 = !{!985, !980, !972, !967}
!990 = !{!988, !983, !978, !970, !975}
!991 = !{!988, !983, !978, !970}
!992 = !{!985, !980, !972, !967, !975}
!993 = !{!975, !994}
!994 = distinct !{!994, !976, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hf63e1ad3cd27459aE: %is_less"}
!995 = !{!996}
!996 = distinct !{!996, !997, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a"}
!997 = distinct !{!997, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E"}
!998 = !{!999}
!999 = distinct !{!999, !997, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b"}
!1000 = !{!1001}
!1001 = distinct !{!1001, !1002, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0"}
!1002 = distinct !{!1002, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E"}
!1003 = !{!1004}
!1004 = distinct !{!1004, !1002, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1"}
!1005 = !{!1006}
!1006 = distinct !{!1006, !1007, !"cmpfunc: %a"}
!1007 = distinct !{!1007, !"cmpfunc"}
!1008 = !{!1009}
!1009 = distinct !{!1009, !1007, !"cmpfunc: %b"}
!1010 = !{!1011}
!1011 = distinct !{!1011, !1012, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1012 = distinct !{!1012, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1013 = !{!1014}
!1014 = distinct !{!1014, !1012, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1015 = !{!1011, !1006, !1001, !996}
!1016 = !{!1014, !1009, !1004, !999}
!1017 = !{!1018, !1020, !1022, !1024}
!1018 = distinct !{!1018, !1019, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1019 = distinct !{!1019, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1020 = distinct !{!1020, !1021, !"cmpfunc: %b"}
!1021 = distinct !{!1021, !"cmpfunc"}
!1022 = distinct !{!1022, !1023, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1"}
!1023 = distinct !{!1023, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E"}
!1024 = distinct !{!1024, !1025, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b"}
!1025 = distinct !{!1025, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E"}
!1026 = !{!1027, !1028, !1029, !1030}
!1027 = distinct !{!1027, !1019, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1028 = distinct !{!1028, !1021, !"cmpfunc: %a"}
!1029 = distinct !{!1029, !1023, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0"}
!1030 = distinct !{!1030, !1025, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a"}
!1031 = !{!1032, !1034}
!1032 = distinct !{!1032, !1033, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3b480042379563adE: %self"}
!1033 = distinct !{!1033, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3b480042379563adE"}
!1034 = distinct !{!1034, !1035, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h56c53bee49976bd1E: %_1"}
!1035 = distinct !{!1035, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h56c53bee49976bd1E"}
!1036 = !{!1037}
!1037 = distinct !{!1037, !1038, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %a"}
!1038 = distinct !{!1038, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E"}
!1039 = !{!1040}
!1040 = distinct !{!1040, !1038, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %b"}
!1041 = !{!1042}
!1042 = distinct !{!1042, !1043, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %a"}
!1043 = distinct !{!1043, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE"}
!1044 = !{!1045}
!1045 = distinct !{!1045, !1043, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %b"}
!1046 = !{!1047}
!1047 = distinct !{!1047, !1048, !"_ZN56_$LT$alloc..string..String$u20$as$u20$core..cmp..Ord$GT$3cmp17hea22ad2116efd3e7E: %self"}
!1048 = distinct !{!1048, !"_ZN56_$LT$alloc..string..String$u20$as$u20$core..cmp..Ord$GT$3cmp17hea22ad2116efd3e7E"}
!1049 = !{!1050}
!1050 = distinct !{!1050, !1048, !"_ZN56_$LT$alloc..string..String$u20$as$u20$core..cmp..Ord$GT$3cmp17hea22ad2116efd3e7E: %other"}
!1051 = !{!1052}
!1052 = distinct !{!1052, !1053, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %self"}
!1053 = distinct !{!1053, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE"}
!1054 = !{!1055}
!1055 = distinct !{!1055, !1053, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %other"}
!1056 = !{!1052, !1047, !1042, !1037}
!1057 = !{!1055, !1050, !1045, !1040}
!1058 = !{!1059, !1061}
!1059 = distinct !{!1059, !1060, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E: %left.0"}
!1060 = distinct !{!1060, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E"}
!1061 = distinct !{!1061, !1060, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E: %right.0"}
!1062 = !{!1052, !1055, !1047, !1050, !1042, !1045, !1037, !1040}
!1063 = !{!1064}
!1064 = distinct !{!1064, !1065, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %b"}
!1065 = distinct !{!1065, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E"}
!1066 = !{!1067}
!1067 = distinct !{!1067, !1068, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %b"}
!1068 = distinct !{!1068, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE"}
!1069 = !{!1070}
!1070 = distinct !{!1070, !1071, !"_ZN56_$LT$alloc..string..String$u20$as$u20$core..cmp..Ord$GT$3cmp17hea22ad2116efd3e7E: %other"}
!1071 = distinct !{!1071, !"_ZN56_$LT$alloc..string..String$u20$as$u20$core..cmp..Ord$GT$3cmp17hea22ad2116efd3e7E"}
!1072 = !{!1073}
!1073 = distinct !{!1073, !1074, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %other"}
!1074 = distinct !{!1074, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE"}
!1075 = !{!1073, !1070, !1067, !1064}
!1076 = !{!1077, !1078, !1079, !1080}
!1077 = distinct !{!1077, !1074, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %self"}
!1078 = distinct !{!1078, !1071, !"_ZN56_$LT$alloc..string..String$u20$as$u20$core..cmp..Ord$GT$3cmp17hea22ad2116efd3e7E: %self"}
!1079 = distinct !{!1079, !1068, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %a"}
!1080 = distinct !{!1080, !1065, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %a"}
!1081 = !{!1082, !1084}
!1082 = distinct !{!1082, !1083, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E: %left.0"}
!1083 = distinct !{!1083, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E"}
!1084 = distinct !{!1084, !1083, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E: %right.0"}
!1085 = !{!1077, !1073, !1078, !1070, !1079, !1067, !1080, !1064}
!1086 = !{!1087, !1089}
!1087 = distinct !{!1087, !1088, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc0534965a749a53fE: %self"}
!1088 = distinct !{!1088, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc0534965a749a53fE"}
!1089 = distinct !{!1089, !1090, !"_ZN4core3ptr98drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$alloc..string..String$GT$$GT$17hd561170127796934E: %_1"}
!1090 = distinct !{!1090, !"_ZN4core3ptr98drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$alloc..string..String$GT$$GT$17hd561170127796934E"}
!1091 = !{!1092}
!1092 = distinct !{!1092, !1093, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a"}
!1093 = distinct !{!1093, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E"}
!1094 = !{!1095}
!1095 = distinct !{!1095, !1093, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b"}
!1096 = !{!1097}
!1097 = distinct !{!1097, !1098, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0"}
!1098 = distinct !{!1098, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E"}
!1099 = !{!1100}
!1100 = distinct !{!1100, !1098, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1"}
!1101 = !{!1102}
!1102 = distinct !{!1102, !1103, !"cmpfunc: %a"}
!1103 = distinct !{!1103, !"cmpfunc"}
!1104 = !{!1105}
!1105 = distinct !{!1105, !1103, !"cmpfunc: %b"}
!1106 = !{!1107}
!1107 = distinct !{!1107, !1108, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1108 = distinct !{!1108, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1109 = !{!1110}
!1110 = distinct !{!1110, !1108, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1111 = !{!1107, !1102, !1097, !1092}
!1112 = !{!1110, !1105, !1100, !1095}
!1113 = !{!1114}
!1114 = distinct !{!1114, !1115, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a"}
!1115 = distinct !{!1115, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E"}
!1116 = !{!1117}
!1117 = distinct !{!1117, !1115, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b"}
!1118 = !{!1119}
!1119 = distinct !{!1119, !1120, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0"}
!1120 = distinct !{!1120, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E"}
!1121 = !{!1122}
!1122 = distinct !{!1122, !1120, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1"}
!1123 = !{!1124}
!1124 = distinct !{!1124, !1125, !"cmpfunc: %a"}
!1125 = distinct !{!1125, !"cmpfunc"}
!1126 = !{!1127}
!1127 = distinct !{!1127, !1125, !"cmpfunc: %b"}
!1128 = !{!1129}
!1129 = distinct !{!1129, !1130, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1130 = distinct !{!1130, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1131 = !{!1132}
!1132 = distinct !{!1132, !1130, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1133 = !{!1129, !1124, !1119, !1114}
!1134 = !{!1132, !1127, !1122, !1117}
!1135 = !{!1136}
!1136 = distinct !{!1136, !1137, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a"}
!1137 = distinct !{!1137, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E"}
!1138 = !{!1139}
!1139 = distinct !{!1139, !1137, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b"}
!1140 = !{!1141}
!1141 = distinct !{!1141, !1142, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0"}
!1142 = distinct !{!1142, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E"}
!1143 = !{!1144}
!1144 = distinct !{!1144, !1142, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1"}
!1145 = !{!1146}
!1146 = distinct !{!1146, !1147, !"cmpfunc: %a"}
!1147 = distinct !{!1147, !"cmpfunc"}
!1148 = !{!1149}
!1149 = distinct !{!1149, !1147, !"cmpfunc: %b"}
!1150 = !{!1151}
!1151 = distinct !{!1151, !1152, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1152 = distinct !{!1152, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1153 = !{!1154}
!1154 = distinct !{!1154, !1152, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1155 = !{!1151, !1146, !1141, !1136}
!1156 = !{!1154, !1149, !1144, !1139}
!1157 = !{!1158}
!1158 = distinct !{!1158, !1159, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a"}
!1159 = distinct !{!1159, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E"}
!1160 = !{!1161}
!1161 = distinct !{!1161, !1159, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b"}
!1162 = !{!1163}
!1163 = distinct !{!1163, !1164, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0"}
!1164 = distinct !{!1164, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E"}
!1165 = !{!1166}
!1166 = distinct !{!1166, !1164, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1"}
!1167 = !{!1168}
!1168 = distinct !{!1168, !1169, !"cmpfunc: %a"}
!1169 = distinct !{!1169, !"cmpfunc"}
!1170 = !{!1171}
!1171 = distinct !{!1171, !1169, !"cmpfunc: %b"}
!1172 = !{!1173}
!1173 = distinct !{!1173, !1174, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1174 = distinct !{!1174, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1175 = !{!1176}
!1176 = distinct !{!1176, !1174, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1177 = !{!1173, !1168, !1163, !1158}
!1178 = !{!1176, !1171, !1166, !1161}
!1179 = !{!1180}
!1180 = distinct !{!1180, !1181, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a"}
!1181 = distinct !{!1181, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E"}
!1182 = !{!1183}
!1183 = distinct !{!1183, !1181, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b"}
!1184 = !{!1185}
!1185 = distinct !{!1185, !1186, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0"}
!1186 = distinct !{!1186, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E"}
!1187 = !{!1188}
!1188 = distinct !{!1188, !1186, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1"}
!1189 = !{!1190}
!1190 = distinct !{!1190, !1191, !"cmpfunc: %a"}
!1191 = distinct !{!1191, !"cmpfunc"}
!1192 = !{!1193}
!1193 = distinct !{!1193, !1191, !"cmpfunc: %b"}
!1194 = !{!1195}
!1195 = distinct !{!1195, !1196, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1196 = distinct !{!1196, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1197 = !{!1198}
!1198 = distinct !{!1198, !1196, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1199 = !{!1195, !1190, !1185, !1180}
!1200 = !{!1198, !1193, !1188, !1183}
!1201 = !{!1202}
!1202 = distinct !{!1202, !1203, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a"}
!1203 = distinct !{!1203, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E"}
!1204 = !{!1205}
!1205 = distinct !{!1205, !1203, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b"}
!1206 = !{!1207}
!1207 = distinct !{!1207, !1208, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0"}
!1208 = distinct !{!1208, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E"}
!1209 = !{!1210}
!1210 = distinct !{!1210, !1208, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1"}
!1211 = !{!1212}
!1212 = distinct !{!1212, !1213, !"cmpfunc: %a"}
!1213 = distinct !{!1213, !"cmpfunc"}
!1214 = !{!1215}
!1215 = distinct !{!1215, !1213, !"cmpfunc: %b"}
!1216 = !{!1217}
!1217 = distinct !{!1217, !1218, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1218 = distinct !{!1218, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1219 = !{!1220}
!1220 = distinct !{!1220, !1218, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1221 = !{!1217, !1212, !1207, !1202}
!1222 = !{!1220, !1215, !1210, !1205}
!1223 = !{!1224}
!1224 = distinct !{!1224, !1225, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a"}
!1225 = distinct !{!1225, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E"}
!1226 = !{!1227}
!1227 = distinct !{!1227, !1225, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b"}
!1228 = !{!1229}
!1229 = distinct !{!1229, !1230, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0"}
!1230 = distinct !{!1230, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E"}
!1231 = !{!1232}
!1232 = distinct !{!1232, !1230, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1"}
!1233 = !{!1234}
!1234 = distinct !{!1234, !1235, !"cmpfunc: %a"}
!1235 = distinct !{!1235, !"cmpfunc"}
!1236 = !{!1237}
!1237 = distinct !{!1237, !1235, !"cmpfunc: %b"}
!1238 = !{!1239}
!1239 = distinct !{!1239, !1240, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1240 = distinct !{!1240, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1241 = !{!1242}
!1242 = distinct !{!1242, !1240, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1243 = !{!1239, !1234, !1229, !1224}
!1244 = !{!1242, !1237, !1232, !1227}
!1245 = !{!1246}
!1246 = distinct !{!1246, !1247, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a"}
!1247 = distinct !{!1247, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E"}
!1248 = !{!1249}
!1249 = distinct !{!1249, !1247, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b"}
!1250 = !{!1251}
!1251 = distinct !{!1251, !1252, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0"}
!1252 = distinct !{!1252, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E"}
!1253 = !{!1254}
!1254 = distinct !{!1254, !1252, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1"}
!1255 = !{!1256}
!1256 = distinct !{!1256, !1257, !"cmpfunc: %a"}
!1257 = distinct !{!1257, !"cmpfunc"}
!1258 = !{!1259}
!1259 = distinct !{!1259, !1257, !"cmpfunc: %b"}
!1260 = !{!1261}
!1261 = distinct !{!1261, !1262, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1262 = distinct !{!1262, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1263 = !{!1264}
!1264 = distinct !{!1264, !1262, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1265 = !{!1261, !1256, !1251, !1246}
!1266 = !{!1264, !1259, !1254, !1249}
!1267 = !{!1268}
!1268 = distinct !{!1268, !1269, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a"}
!1269 = distinct !{!1269, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E"}
!1270 = !{!1271}
!1271 = distinct !{!1271, !1269, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b"}
!1272 = !{!1273}
!1273 = distinct !{!1273, !1274, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0"}
!1274 = distinct !{!1274, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E"}
!1275 = !{!1276}
!1276 = distinct !{!1276, !1274, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1"}
!1277 = !{!1278}
!1278 = distinct !{!1278, !1279, !"cmpfunc: %a"}
!1279 = distinct !{!1279, !"cmpfunc"}
!1280 = !{!1281}
!1281 = distinct !{!1281, !1279, !"cmpfunc: %b"}
!1282 = !{!1283}
!1283 = distinct !{!1283, !1284, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1284 = distinct !{!1284, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1285 = !{!1286}
!1286 = distinct !{!1286, !1284, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1287 = !{!1283, !1278, !1273, !1268}
!1288 = !{!1286, !1281, !1276, !1271}
!1289 = !{!1290}
!1290 = distinct !{!1290, !1291, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a"}
!1291 = distinct !{!1291, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E"}
!1292 = !{!1293}
!1293 = distinct !{!1293, !1291, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b"}
!1294 = !{!1295}
!1295 = distinct !{!1295, !1296, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0"}
!1296 = distinct !{!1296, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E"}
!1297 = !{!1298}
!1298 = distinct !{!1298, !1296, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1"}
!1299 = !{!1300}
!1300 = distinct !{!1300, !1301, !"cmpfunc: %a"}
!1301 = distinct !{!1301, !"cmpfunc"}
!1302 = !{!1303}
!1303 = distinct !{!1303, !1301, !"cmpfunc: %b"}
!1304 = !{!1305}
!1305 = distinct !{!1305, !1306, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1306 = distinct !{!1306, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1307 = !{!1308}
!1308 = distinct !{!1308, !1306, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1309 = !{!1305, !1300, !1295, !1290}
!1310 = !{!1308, !1303, !1298, !1293}
!1311 = !{!1312}
!1312 = distinct !{!1312, !1313, !"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17hc702f8f6a9c30009E: %self.0"}
!1313 = distinct !{!1313, !"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17hc702f8f6a9c30009E"}
!1314 = !{!1315}
!1315 = distinct !{!1315, !1316, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h5d0d96e883197981E: %v.0"}
!1316 = distinct !{!1316, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h5d0d96e883197981E"}
!1317 = !{!1318}
!1318 = distinct !{!1318, !1319, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a"}
!1319 = distinct !{!1319, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E"}
!1320 = !{!1321}
!1321 = distinct !{!1321, !1319, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b"}
!1322 = !{!1323}
!1323 = distinct !{!1323, !1324, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0"}
!1324 = distinct !{!1324, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E"}
!1325 = !{!1326}
!1326 = distinct !{!1326, !1327, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h7c75fa30ffafebdfE: %_0"}
!1327 = distinct !{!1327, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h7c75fa30ffafebdfE"}
!1328 = !{!1329}
!1329 = distinct !{!1329, !1324, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1"}
!1330 = !{!1331}
!1331 = distinct !{!1331, !1332, !"cmpfunc: %a"}
!1332 = distinct !{!1332, !"cmpfunc"}
!1333 = !{!1334}
!1334 = distinct !{!1334, !1332, !"cmpfunc: %b"}
!1335 = !{!1336}
!1336 = distinct !{!1336, !1337, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1337 = distinct !{!1337, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1338 = !{!1339}
!1339 = distinct !{!1339, !1337, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1340 = !{!1336, !1331, !1323, !1318, !1315}
!1341 = !{!1339, !1334, !1329, !1321, !1326}
!1342 = !{!1339, !1334, !1329, !1321, !1315}
!1343 = !{!1336, !1331, !1323, !1318, !1326}
!1344 = !{!1326, !1345, !1315}
!1345 = distinct !{!1345, !1327, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h7c75fa30ffafebdfE: %is_less"}
!1346 = !{!1347}
!1347 = distinct !{!1347, !1348, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a"}
!1348 = distinct !{!1348, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E"}
!1349 = !{!1350}
!1350 = distinct !{!1350, !1348, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b"}
!1351 = !{!1352}
!1352 = distinct !{!1352, !1353, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0"}
!1353 = distinct !{!1353, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E"}
!1354 = !{!1355}
!1355 = distinct !{!1355, !1356, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hf63e1ad3cd27459aE: %_0"}
!1356 = distinct !{!1356, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hf63e1ad3cd27459aE"}
!1357 = !{!1358}
!1358 = distinct !{!1358, !1353, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1"}
!1359 = !{!1360}
!1360 = distinct !{!1360, !1361, !"cmpfunc: %a"}
!1361 = distinct !{!1361, !"cmpfunc"}
!1362 = !{!1363}
!1363 = distinct !{!1363, !1361, !"cmpfunc: %b"}
!1364 = !{!1365}
!1365 = distinct !{!1365, !1366, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1366 = distinct !{!1366, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1367 = !{!1368}
!1368 = distinct !{!1368, !1366, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1369 = !{!1365, !1360, !1352, !1347, !1315}
!1370 = !{!1368, !1363, !1358, !1350, !1355}
!1371 = !{!1368, !1363, !1358, !1350, !1315}
!1372 = !{!1365, !1360, !1352, !1347, !1355}
!1373 = !{!1355, !1374, !1315}
!1374 = distinct !{!1374, !1356, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hf63e1ad3cd27459aE: %is_less"}
!1375 = !{!1376, !1378}
!1376 = distinct !{!1376, !1377, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3b480042379563adE: %self"}
!1377 = distinct !{!1377, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3b480042379563adE"}
!1378 = distinct !{!1378, !1379, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h56c53bee49976bd1E: %_1"}
!1379 = distinct !{!1379, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h56c53bee49976bd1E"}
!1380 = !{!1381, !1383, !1385, !1387}
!1381 = distinct !{!1381, !1382, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1382 = distinct !{!1382, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1383 = distinct !{!1383, !1384, !"cmpfunc: %b"}
!1384 = distinct !{!1384, !"cmpfunc"}
!1385 = distinct !{!1385, !1386, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1"}
!1386 = distinct !{!1386, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E"}
!1387 = distinct !{!1387, !1388, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b"}
!1388 = distinct !{!1388, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E"}
!1389 = !{!1390, !1391, !1392, !1393}
!1390 = distinct !{!1390, !1382, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1391 = distinct !{!1391, !1384, !"cmpfunc: %a"}
!1392 = distinct !{!1392, !1386, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0"}
!1393 = distinct !{!1393, !1388, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a"}
!1394 = !{!1395, !1397, !1399, !1401}
!1395 = distinct !{!1395, !1396, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1396 = distinct !{!1396, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1397 = distinct !{!1397, !1398, !"cmpfunc: %b"}
!1398 = distinct !{!1398, !"cmpfunc"}
!1399 = distinct !{!1399, !1400, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1"}
!1400 = distinct !{!1400, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E"}
!1401 = distinct !{!1401, !1402, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b"}
!1402 = distinct !{!1402, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E"}
!1403 = !{!1404, !1405, !1406, !1407}
!1404 = distinct !{!1404, !1396, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1405 = distinct !{!1405, !1398, !"cmpfunc: %a"}
!1406 = distinct !{!1406, !1400, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0"}
!1407 = distinct !{!1407, !1402, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a"}
!1408 = !{!1409, !1411}
!1409 = distinct !{!1409, !1410, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3b480042379563adE: %self"}
!1410 = distinct !{!1410, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3b480042379563adE"}
!1411 = distinct !{!1411, !1412, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h56c53bee49976bd1E: %_1"}
!1412 = distinct !{!1412, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h56c53bee49976bd1E"}
!1413 = !{!1414}
!1414 = distinct !{!1414, !1415, !"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17hc702f8f6a9c30009E: %self.0"}
!1415 = distinct !{!1415, !"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17hc702f8f6a9c30009E"}
!1416 = !{!1417, !1419}
!1417 = distinct !{!1417, !1418, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc0534965a749a53fE: %self"}
!1418 = distinct !{!1418, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc0534965a749a53fE"}
!1419 = distinct !{!1419, !1420, !"_ZN4core3ptr98drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$alloc..string..String$GT$$GT$17hd561170127796934E: %_1"}
!1420 = distinct !{!1420, !"_ZN4core3ptr98drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$alloc..string..String$GT$$GT$17hd561170127796934E"}
!1421 = !{!1422}
!1422 = distinct !{!1422, !1423, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %a"}
!1423 = distinct !{!1423, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E"}
!1424 = !{!1425}
!1425 = distinct !{!1425, !1423, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %b"}
!1426 = !{!1427}
!1427 = distinct !{!1427, !1428, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %a"}
!1428 = distinct !{!1428, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE"}
!1429 = !{!1430}
!1430 = distinct !{!1430, !1428, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %b"}
!1431 = !{!1432}
!1432 = distinct !{!1432, !1433, !"_ZN56_$LT$alloc..string..String$u20$as$u20$core..cmp..Ord$GT$3cmp17hea22ad2116efd3e7E: %self"}
!1433 = distinct !{!1433, !"_ZN56_$LT$alloc..string..String$u20$as$u20$core..cmp..Ord$GT$3cmp17hea22ad2116efd3e7E"}
!1434 = !{!1435}
!1435 = distinct !{!1435, !1433, !"_ZN56_$LT$alloc..string..String$u20$as$u20$core..cmp..Ord$GT$3cmp17hea22ad2116efd3e7E: %other"}
!1436 = !{!1437}
!1437 = distinct !{!1437, !1438, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %self"}
!1438 = distinct !{!1438, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE"}
!1439 = !{!1440}
!1440 = distinct !{!1440, !1438, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %other"}
!1441 = !{!1437, !1432, !1427, !1422}
!1442 = !{!1440, !1435, !1430, !1425}
!1443 = !{!1444, !1446}
!1444 = distinct !{!1444, !1445, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E: %left.0"}
!1445 = distinct !{!1445, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E"}
!1446 = distinct !{!1446, !1445, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E: %right.0"}
!1447 = !{!1437, !1440, !1432, !1435, !1427, !1430, !1422, !1425}
!1448 = !{!1449}
!1449 = distinct !{!1449, !1450, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %b"}
!1450 = distinct !{!1450, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E"}
!1451 = !{!1452}
!1452 = distinct !{!1452, !1453, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %b"}
!1453 = distinct !{!1453, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE"}
!1454 = !{!1455}
!1455 = distinct !{!1455, !1456, !"_ZN56_$LT$alloc..string..String$u20$as$u20$core..cmp..Ord$GT$3cmp17hea22ad2116efd3e7E: %other"}
!1456 = distinct !{!1456, !"_ZN56_$LT$alloc..string..String$u20$as$u20$core..cmp..Ord$GT$3cmp17hea22ad2116efd3e7E"}
!1457 = !{!1458}
!1458 = distinct !{!1458, !1459, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %other"}
!1459 = distinct !{!1459, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE"}
!1460 = !{!1458, !1455, !1452, !1449}
!1461 = !{!1462, !1463, !1464, !1465}
!1462 = distinct !{!1462, !1459, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %self"}
!1463 = distinct !{!1463, !1456, !"_ZN56_$LT$alloc..string..String$u20$as$u20$core..cmp..Ord$GT$3cmp17hea22ad2116efd3e7E: %self"}
!1464 = distinct !{!1464, !1453, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %a"}
!1465 = distinct !{!1465, !1450, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %a"}
!1466 = !{!1467, !1469}
!1467 = distinct !{!1467, !1468, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E: %left.0"}
!1468 = distinct !{!1468, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E"}
!1469 = distinct !{!1469, !1468, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E: %right.0"}
!1470 = !{!1462, !1458, !1463, !1455, !1464, !1452, !1465, !1449}
!1471 = !{!1472, !1474}
!1472 = distinct !{!1472, !1473, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc0534965a749a53fE: %self"}
!1473 = distinct !{!1473, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc0534965a749a53fE"}
!1474 = distinct !{!1474, !1475, !"_ZN4core3ptr98drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$alloc..string..String$GT$$GT$17hd561170127796934E: %_1"}
!1475 = distinct !{!1475, !"_ZN4core3ptr98drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$alloc..string..String$GT$$GT$17hd561170127796934E"}
!1476 = !{!1477}
!1477 = distinct !{!1477, !1478, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h45070663ee9cbcc5E: %_0"}
!1478 = distinct !{!1478, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h45070663ee9cbcc5E"}
!1479 = !{i64 0, i64 2}
!1480 = !{i64 0, i64 -9223372036854775807}
!1481 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!1482 = !{!1483}
!1483 = distinct !{!1483, !1484, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h59648a08aba84018E: %_0"}
!1484 = distinct !{!1484, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h59648a08aba84018E"}
!1485 = !{!1486}
!1486 = distinct !{!1486, !1487, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %a"}
!1487 = distinct !{!1487, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E"}
!1488 = !{!1489}
!1489 = distinct !{!1489, !1487, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %b"}
!1490 = !{!1491}
!1491 = distinct !{!1491, !1492, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %a"}
!1492 = distinct !{!1492, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE"}
!1493 = !{!1494}
!1494 = distinct !{!1494, !1492, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %b"}
!1495 = !{!1496}
!1496 = distinct !{!1496, !1497, !"_ZN56_$LT$alloc..string..String$u20$as$u20$core..cmp..Ord$GT$3cmp17hea22ad2116efd3e7E: %self"}
!1497 = distinct !{!1497, !"_ZN56_$LT$alloc..string..String$u20$as$u20$core..cmp..Ord$GT$3cmp17hea22ad2116efd3e7E"}
!1498 = !{!1499}
!1499 = distinct !{!1499, !1497, !"_ZN56_$LT$alloc..string..String$u20$as$u20$core..cmp..Ord$GT$3cmp17hea22ad2116efd3e7E: %other"}
!1500 = !{!1501}
!1501 = distinct !{!1501, !1502, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %self"}
!1502 = distinct !{!1502, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE"}
!1503 = !{!1504}
!1504 = distinct !{!1504, !1502, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %other"}
!1505 = !{!1501, !1496, !1491, !1486}
!1506 = !{!1504, !1499, !1494, !1489}
!1507 = !{!1508, !1510}
!1508 = distinct !{!1508, !1509, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E: %left.0"}
!1509 = distinct !{!1509, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E"}
!1510 = distinct !{!1510, !1509, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E: %right.0"}
!1511 = !{!1501, !1504, !1496, !1499, !1491, !1494, !1486, !1489}
!1512 = !{!1513}
!1513 = distinct !{!1513, !1514, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %a"}
!1514 = distinct !{!1514, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E"}
!1515 = !{!1516}
!1516 = distinct !{!1516, !1514, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %b"}
!1517 = !{!1518}
!1518 = distinct !{!1518, !1519, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %a"}
!1519 = distinct !{!1519, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE"}
!1520 = !{!1521}
!1521 = distinct !{!1521, !1519, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %b"}
!1522 = !{!1523}
!1523 = distinct !{!1523, !1524, !"_ZN56_$LT$alloc..string..String$u20$as$u20$core..cmp..Ord$GT$3cmp17hea22ad2116efd3e7E: %self"}
!1524 = distinct !{!1524, !"_ZN56_$LT$alloc..string..String$u20$as$u20$core..cmp..Ord$GT$3cmp17hea22ad2116efd3e7E"}
!1525 = !{!1526}
!1526 = distinct !{!1526, !1524, !"_ZN56_$LT$alloc..string..String$u20$as$u20$core..cmp..Ord$GT$3cmp17hea22ad2116efd3e7E: %other"}
!1527 = !{!1528}
!1528 = distinct !{!1528, !1529, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %self"}
!1529 = distinct !{!1529, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE"}
!1530 = !{!1531}
!1531 = distinct !{!1531, !1529, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %other"}
!1532 = !{!1528, !1523, !1518, !1513}
!1533 = !{!1531, !1526, !1521, !1516}
!1534 = !{!1535, !1537}
!1535 = distinct !{!1535, !1536, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E: %left.0"}
!1536 = distinct !{!1536, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E"}
!1537 = distinct !{!1537, !1536, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E: %right.0"}
!1538 = !{!1528, !1531, !1523, !1526, !1518, !1521, !1513, !1516}
!1539 = !{!1540}
!1540 = distinct !{!1540, !1541, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %a"}
!1541 = distinct !{!1541, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E"}
!1542 = !{!1543}
!1543 = distinct !{!1543, !1541, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %b"}
!1544 = !{!1545}
!1545 = distinct !{!1545, !1546, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %a"}
!1546 = distinct !{!1546, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE"}
!1547 = !{!1548}
!1548 = distinct !{!1548, !1546, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %b"}
!1549 = !{!1550}
!1550 = distinct !{!1550, !1551, !"_ZN56_$LT$alloc..string..String$u20$as$u20$core..cmp..Ord$GT$3cmp17hea22ad2116efd3e7E: %self"}
!1551 = distinct !{!1551, !"_ZN56_$LT$alloc..string..String$u20$as$u20$core..cmp..Ord$GT$3cmp17hea22ad2116efd3e7E"}
!1552 = !{!1553}
!1553 = distinct !{!1553, !1551, !"_ZN56_$LT$alloc..string..String$u20$as$u20$core..cmp..Ord$GT$3cmp17hea22ad2116efd3e7E: %other"}
!1554 = !{!1555}
!1555 = distinct !{!1555, !1556, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %self"}
!1556 = distinct !{!1556, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE"}
!1557 = !{!1558}
!1558 = distinct !{!1558, !1556, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %other"}
!1559 = !{!1555, !1550, !1545, !1540}
!1560 = !{!1558, !1553, !1548, !1543}
!1561 = !{!1562, !1564}
!1562 = distinct !{!1562, !1563, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E: %left.0"}
!1563 = distinct !{!1563, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E"}
!1564 = distinct !{!1564, !1563, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E: %right.0"}
!1565 = !{!1555, !1558, !1550, !1553, !1545, !1548, !1540, !1543}
!1566 = !{!1567}
!1567 = distinct !{!1567, !1568, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17hf3497fb12dece627E: %a.0"}
!1568 = distinct !{!1568, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17hf3497fb12dece627E"}
!1569 = !{!1570}
!1570 = distinct !{!1570, !1568, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17hf3497fb12dece627E: %b.0"}
!1571 = !{!1572}
!1572 = distinct !{!1572, !1573, !"_ZN4core3ptr10swap_chunk17ha05add989db5f2bcE: %x"}
!1573 = distinct !{!1573, !"_ZN4core3ptr10swap_chunk17ha05add989db5f2bcE"}
!1574 = !{!1575}
!1575 = distinct !{!1575, !1573, !"_ZN4core3ptr10swap_chunk17ha05add989db5f2bcE: %y"}
!1576 = !{!1572, !1567, !1577}
!1577 = distinct !{!1577, !1578, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h72569a6a22e41e6dE: %self.0"}
!1578 = distinct !{!1578, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h72569a6a22e41e6dE"}
!1579 = !{!1575, !1570}
!1580 = !{!1575, !1570, !1577}
!1581 = !{!1572, !1567}
!1582 = !{!1583}
!1583 = distinct !{!1583, !1573, !"_ZN4core3ptr10swap_chunk17ha05add989db5f2bcE: %x:It1"}
!1584 = !{!1585}
!1585 = distinct !{!1585, !1573, !"_ZN4core3ptr10swap_chunk17ha05add989db5f2bcE: %y:It1"}
!1586 = !{!1583, !1567, !1577}
!1587 = !{!1585, !1570}
!1588 = !{!1585, !1570, !1577}
!1589 = !{!1583, !1567}
!1590 = !{!1591}
!1591 = distinct !{!1591, !1573, !"_ZN4core3ptr10swap_chunk17ha05add989db5f2bcE: %x:It2"}
!1592 = !{!1593}
!1593 = distinct !{!1593, !1573, !"_ZN4core3ptr10swap_chunk17ha05add989db5f2bcE: %y:It2"}
!1594 = !{!1591, !1567, !1577}
!1595 = !{!1593, !1570}
!1596 = !{!1593, !1570, !1577}
!1597 = !{!1591, !1567}
!1598 = !{!1599}
!1599 = distinct !{!1599, !1600, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a"}
!1600 = distinct !{!1600, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E"}
!1601 = !{!1602}
!1602 = distinct !{!1602, !1600, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b"}
!1603 = !{!1604}
!1604 = distinct !{!1604, !1605, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0"}
!1605 = distinct !{!1605, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E"}
!1606 = !{!1607}
!1607 = distinct !{!1607, !1605, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1"}
!1608 = !{!1609}
!1609 = distinct !{!1609, !1610, !"cmpfunc: %a"}
!1610 = distinct !{!1610, !"cmpfunc"}
!1611 = !{!1612}
!1612 = distinct !{!1612, !1610, !"cmpfunc: %b"}
!1613 = !{!1614}
!1614 = distinct !{!1614, !1615, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1615 = distinct !{!1615, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1616 = !{!1617}
!1617 = distinct !{!1617, !1615, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1618 = !{!1614, !1609, !1604, !1599}
!1619 = !{!1617, !1612, !1607, !1602}
!1620 = !{!1621}
!1621 = distinct !{!1621, !1622, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a"}
!1622 = distinct !{!1622, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E"}
!1623 = !{!1624}
!1624 = distinct !{!1624, !1622, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b"}
!1625 = !{!1626}
!1626 = distinct !{!1626, !1627, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0"}
!1627 = distinct !{!1627, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E"}
!1628 = !{!1629}
!1629 = distinct !{!1629, !1627, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1"}
!1630 = !{!1631}
!1631 = distinct !{!1631, !1632, !"cmpfunc: %a"}
!1632 = distinct !{!1632, !"cmpfunc"}
!1633 = !{!1634}
!1634 = distinct !{!1634, !1632, !"cmpfunc: %b"}
!1635 = !{!1636}
!1636 = distinct !{!1636, !1637, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1637 = distinct !{!1637, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1638 = !{!1639}
!1639 = distinct !{!1639, !1637, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1640 = !{!1636, !1631, !1626, !1621}
!1641 = !{!1639, !1634, !1629, !1624}
!1642 = !{!1643}
!1643 = distinct !{!1643, !1644, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a"}
!1644 = distinct !{!1644, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E"}
!1645 = !{!1646}
!1646 = distinct !{!1646, !1644, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b"}
!1647 = !{!1648}
!1648 = distinct !{!1648, !1649, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0"}
!1649 = distinct !{!1649, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E"}
!1650 = !{!1651}
!1651 = distinct !{!1651, !1649, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1"}
!1652 = !{!1653}
!1653 = distinct !{!1653, !1654, !"cmpfunc: %a"}
!1654 = distinct !{!1654, !"cmpfunc"}
!1655 = !{!1656}
!1656 = distinct !{!1656, !1654, !"cmpfunc: %b"}
!1657 = !{!1658}
!1658 = distinct !{!1658, !1659, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1659 = distinct !{!1659, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1660 = !{!1661}
!1661 = distinct !{!1661, !1659, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1662 = !{!1658, !1653, !1648, !1643}
!1663 = !{!1661, !1656, !1651, !1646}
!1664 = !{!1665, !1667}
!1665 = distinct !{!1665, !1666, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17hf62e91445c6232e2E: %a.0"}
!1666 = distinct !{!1666, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17hf62e91445c6232e2E"}
!1667 = distinct !{!1667, !1668, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h9a541ad4d844a033E: %self.0"}
!1668 = distinct !{!1668, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h9a541ad4d844a033E"}
!1669 = !{!1670}
!1670 = distinct !{!1670, !1666, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17hf62e91445c6232e2E: %b.0"}
!1671 = !{!1670, !1667}
!1672 = !{!1665}
!1673 = !{!1674}
!1674 = distinct !{!1674, !1675, !"_ZN4core5slice4sort6stable5merge5merge17h688fe9b76dfd8950E: %v.0"}
!1675 = distinct !{!1675, !"_ZN4core5slice4sort6stable5merge5merge17h688fe9b76dfd8950E"}
!1676 = !{!1677}
!1677 = distinct !{!1677, !1675, !"_ZN4core5slice4sort6stable5merge5merge17h688fe9b76dfd8950E: %scratch.0"}
!1678 = !{!1674, !1677}
!1679 = !{!1680}
!1680 = distinct !{!1680, !1681, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a"}
!1681 = distinct !{!1681, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E"}
!1682 = !{!1683}
!1683 = distinct !{!1683, !1681, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b"}
!1684 = !{!1685}
!1685 = distinct !{!1685, !1686, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0"}
!1686 = distinct !{!1686, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E"}
!1687 = !{!1688}
!1688 = distinct !{!1688, !1686, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1"}
!1689 = !{!1690}
!1690 = distinct !{!1690, !1691, !"cmpfunc: %a"}
!1691 = distinct !{!1691, !"cmpfunc"}
!1692 = !{!1693}
!1693 = distinct !{!1693, !1691, !"cmpfunc: %b"}
!1694 = !{!1695}
!1695 = distinct !{!1695, !1696, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1696 = distinct !{!1696, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1697 = !{!1698}
!1698 = distinct !{!1698, !1696, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1699 = !{!1695, !1690, !1685, !1680, !1677}
!1700 = !{!1698, !1693, !1688, !1683, !1701, !1674}
!1701 = distinct !{!1701, !1702, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17ha30e0ffa61c3118fE: %self"}
!1702 = distinct !{!1702, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17ha30e0ffa61c3118fE"}
!1703 = !{!1698, !1693, !1688, !1683, !1674}
!1704 = !{!1695, !1690, !1685, !1680, !1701, !1677}
!1705 = !{!1701, !1677}
!1706 = !{!1707}
!1707 = distinct !{!1707, !1708, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a"}
!1708 = distinct !{!1708, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E"}
!1709 = !{!1710}
!1710 = distinct !{!1710, !1708, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b"}
!1711 = !{!1712}
!1712 = distinct !{!1712, !1713, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0"}
!1713 = distinct !{!1713, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E"}
!1714 = !{!1715}
!1715 = distinct !{!1715, !1713, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1"}
!1716 = !{!1717}
!1717 = distinct !{!1717, !1718, !"cmpfunc: %a"}
!1718 = distinct !{!1718, !"cmpfunc"}
!1719 = !{!1720}
!1720 = distinct !{!1720, !1718, !"cmpfunc: %b"}
!1721 = !{!1722}
!1722 = distinct !{!1722, !1723, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1723 = distinct !{!1723, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1724 = !{!1725}
!1725 = distinct !{!1725, !1723, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1726 = !{!1722, !1717, !1712, !1707, !1674}
!1727 = !{!1725, !1720, !1715, !1710, !1728, !1677}
!1728 = distinct !{!1728, !1729, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h47a31bbb4792befcE: %self"}
!1729 = distinct !{!1729, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h47a31bbb4792befcE"}
!1730 = !{!1725, !1720, !1715, !1710, !1677}
!1731 = !{!1722, !1717, !1712, !1707, !1728, !1674}
!1732 = !{!1728, !1677}
!1733 = !{!1734, !1736}
!1734 = distinct !{!1734, !1735, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb207a984b01f7be2E: %self"}
!1735 = distinct !{!1735, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb207a984b01f7be2E"}
!1736 = distinct !{!1736, !1737, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h256f95b97ec05b5cE: %_1"}
!1737 = distinct !{!1737, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h256f95b97ec05b5cE"}
!1738 = !{!1739}
!1739 = distinct !{!1739, !1740, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %a"}
!1740 = distinct !{!1740, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E"}
!1741 = !{!1742}
!1742 = distinct !{!1742, !1740, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %b"}
!1743 = !{!1744}
!1744 = distinct !{!1744, !1745, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %a"}
!1745 = distinct !{!1745, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE"}
!1746 = !{!1747}
!1747 = distinct !{!1747, !1745, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %b"}
!1748 = !{!1749}
!1749 = distinct !{!1749, !1750, !"_ZN56_$LT$alloc..string..String$u20$as$u20$core..cmp..Ord$GT$3cmp17hea22ad2116efd3e7E: %self"}
!1750 = distinct !{!1750, !"_ZN56_$LT$alloc..string..String$u20$as$u20$core..cmp..Ord$GT$3cmp17hea22ad2116efd3e7E"}
!1751 = !{!1752}
!1752 = distinct !{!1752, !1750, !"_ZN56_$LT$alloc..string..String$u20$as$u20$core..cmp..Ord$GT$3cmp17hea22ad2116efd3e7E: %other"}
!1753 = !{!1754}
!1754 = distinct !{!1754, !1755, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %self"}
!1755 = distinct !{!1755, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE"}
!1756 = !{!1757}
!1757 = distinct !{!1757, !1755, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %other"}
!1758 = !{!1754, !1749, !1744, !1739}
!1759 = !{!1757, !1752, !1747, !1742}
!1760 = !{!1761, !1763}
!1761 = distinct !{!1761, !1762, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E: %left.0"}
!1762 = distinct !{!1762, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E"}
!1763 = distinct !{!1763, !1762, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E: %right.0"}
!1764 = !{!1754, !1757, !1749, !1752, !1744, !1747, !1739, !1742}
!1765 = !{!1766}
!1766 = distinct !{!1766, !1767, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a"}
!1767 = distinct !{!1767, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E"}
!1768 = !{!1769}
!1769 = distinct !{!1769, !1767, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b"}
!1770 = !{!1771}
!1771 = distinct !{!1771, !1772, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0"}
!1772 = distinct !{!1772, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E"}
!1773 = !{!1774}
!1774 = distinct !{!1774, !1772, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1"}
!1775 = !{!1776}
!1776 = distinct !{!1776, !1777, !"cmpfunc: %a"}
!1777 = distinct !{!1777, !"cmpfunc"}
!1778 = !{!1779}
!1779 = distinct !{!1779, !1777, !"cmpfunc: %b"}
!1780 = !{!1781}
!1781 = distinct !{!1781, !1782, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1782 = distinct !{!1782, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1783 = !{!1784}
!1784 = distinct !{!1784, !1782, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1785 = !{!1781, !1776, !1771, !1766}
!1786 = !{!1784, !1779, !1774, !1769}
!1787 = !{!1788}
!1788 = distinct !{!1788, !1789, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a"}
!1789 = distinct !{!1789, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E"}
!1790 = !{!1791}
!1791 = distinct !{!1791, !1789, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b"}
!1792 = !{!1793}
!1793 = distinct !{!1793, !1794, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0"}
!1794 = distinct !{!1794, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E"}
!1795 = !{!1796}
!1796 = distinct !{!1796, !1794, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1"}
!1797 = !{!1798}
!1798 = distinct !{!1798, !1799, !"cmpfunc: %a"}
!1799 = distinct !{!1799, !"cmpfunc"}
!1800 = !{!1801}
!1801 = distinct !{!1801, !1799, !"cmpfunc: %b"}
!1802 = !{!1803}
!1803 = distinct !{!1803, !1804, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1804 = distinct !{!1804, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1805 = !{!1806}
!1806 = distinct !{!1806, !1804, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1807 = !{!1803, !1798, !1793, !1788}
!1808 = !{!1806, !1801, !1796, !1791}
!1809 = !{!1810}
!1810 = distinct !{!1810, !1811, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %a"}
!1811 = distinct !{!1811, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E"}
!1812 = !{!1813}
!1813 = distinct !{!1813, !1811, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %b"}
!1814 = !{!1815}
!1815 = distinct !{!1815, !1816, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %a"}
!1816 = distinct !{!1816, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE"}
!1817 = !{!1818}
!1818 = distinct !{!1818, !1816, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %b"}
!1819 = !{!1820}
!1820 = distinct !{!1820, !1821, !"_ZN56_$LT$alloc..string..String$u20$as$u20$core..cmp..Ord$GT$3cmp17hea22ad2116efd3e7E: %self"}
!1821 = distinct !{!1821, !"_ZN56_$LT$alloc..string..String$u20$as$u20$core..cmp..Ord$GT$3cmp17hea22ad2116efd3e7E"}
!1822 = !{!1823}
!1823 = distinct !{!1823, !1821, !"_ZN56_$LT$alloc..string..String$u20$as$u20$core..cmp..Ord$GT$3cmp17hea22ad2116efd3e7E: %other"}
!1824 = !{!1825}
!1825 = distinct !{!1825, !1826, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %self"}
!1826 = distinct !{!1826, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE"}
!1827 = !{!1828}
!1828 = distinct !{!1828, !1826, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %other"}
!1829 = !{!1825, !1820, !1815, !1810}
!1830 = !{!1828, !1823, !1818, !1813}
!1831 = !{!1832, !1834}
!1832 = distinct !{!1832, !1833, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E: %left.0"}
!1833 = distinct !{!1833, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E"}
!1834 = distinct !{!1834, !1833, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E: %right.0"}
!1835 = !{!1825, !1828, !1820, !1823, !1815, !1818, !1810, !1813}
!1836 = !{!1837}
!1837 = distinct !{!1837, !1838, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a"}
!1838 = distinct !{!1838, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E"}
!1839 = !{!1840}
!1840 = distinct !{!1840, !1838, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b"}
!1841 = !{!1842}
!1842 = distinct !{!1842, !1843, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0"}
!1843 = distinct !{!1843, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E"}
!1844 = !{!1845}
!1845 = distinct !{!1845, !1843, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1"}
!1846 = !{!1847}
!1847 = distinct !{!1847, !1848, !"cmpfunc: %a"}
!1848 = distinct !{!1848, !"cmpfunc"}
!1849 = !{!1850}
!1850 = distinct !{!1850, !1848, !"cmpfunc: %b"}
!1851 = !{!1852}
!1852 = distinct !{!1852, !1853, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1853 = distinct !{!1853, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1854 = !{!1855}
!1855 = distinct !{!1855, !1853, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1856 = !{!1852, !1847, !1842, !1837}
!1857 = !{!1855, !1850, !1845, !1840, !1858}
!1858 = distinct !{!1858, !1859, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17ha30e0ffa61c3118fE: %self"}
!1859 = distinct !{!1859, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17ha30e0ffa61c3118fE"}
!1860 = !{!1855, !1850, !1845, !1840}
!1861 = !{!1852, !1847, !1842, !1837, !1858}
!1862 = !{!1858}
!1863 = !{!1864}
!1864 = distinct !{!1864, !1865, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a"}
!1865 = distinct !{!1865, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E"}
!1866 = !{!1867}
!1867 = distinct !{!1867, !1865, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b"}
!1868 = !{!1869}
!1869 = distinct !{!1869, !1870, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0"}
!1870 = distinct !{!1870, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E"}
!1871 = !{!1872}
!1872 = distinct !{!1872, !1870, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1"}
!1873 = !{!1874}
!1874 = distinct !{!1874, !1875, !"cmpfunc: %a"}
!1875 = distinct !{!1875, !"cmpfunc"}
!1876 = !{!1877}
!1877 = distinct !{!1877, !1875, !"cmpfunc: %b"}
!1878 = !{!1879}
!1879 = distinct !{!1879, !1880, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1880 = distinct !{!1880, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1881 = !{!1882}
!1882 = distinct !{!1882, !1880, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1883 = !{!1879, !1874, !1869, !1864}
!1884 = !{!1882, !1877, !1872, !1867, !1885}
!1885 = distinct !{!1885, !1886, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h47a31bbb4792befcE: %self"}
!1886 = distinct !{!1886, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h47a31bbb4792befcE"}
!1887 = !{!1882, !1877, !1872, !1867}
!1888 = !{!1879, !1874, !1869, !1864, !1885}
!1889 = !{!1885}
!1890 = !{!1891, !1893}
!1891 = distinct !{!1891, !1892, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb207a984b01f7be2E: %self"}
!1892 = distinct !{!1892, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb207a984b01f7be2E"}
!1893 = distinct !{!1893, !1894, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h256f95b97ec05b5cE: %_1"}
!1894 = distinct !{!1894, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h256f95b97ec05b5cE"}
!1895 = !{!1896}
!1896 = distinct !{!1896, !1897, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %a"}
!1897 = distinct !{!1897, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E"}
!1898 = !{!1899}
!1899 = distinct !{!1899, !1897, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %b"}
!1900 = !{!1901}
!1901 = distinct !{!1901, !1902, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %a"}
!1902 = distinct !{!1902, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE"}
!1903 = !{!1904}
!1904 = distinct !{!1904, !1902, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %b"}
!1905 = !{!1906}
!1906 = distinct !{!1906, !1907, !"_ZN56_$LT$alloc..string..String$u20$as$u20$core..cmp..Ord$GT$3cmp17hea22ad2116efd3e7E: %self"}
!1907 = distinct !{!1907, !"_ZN56_$LT$alloc..string..String$u20$as$u20$core..cmp..Ord$GT$3cmp17hea22ad2116efd3e7E"}
!1908 = !{!1909}
!1909 = distinct !{!1909, !1907, !"_ZN56_$LT$alloc..string..String$u20$as$u20$core..cmp..Ord$GT$3cmp17hea22ad2116efd3e7E: %other"}
!1910 = !{!1911}
!1911 = distinct !{!1911, !1912, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %self"}
!1912 = distinct !{!1912, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE"}
!1913 = !{!1914}
!1914 = distinct !{!1914, !1912, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %other"}
!1915 = !{!1911, !1906, !1901, !1896}
!1916 = !{!1914, !1909, !1904, !1899, !1917}
!1917 = distinct !{!1917, !1918, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h52789d2e34903b8eE: %self"}
!1918 = distinct !{!1918, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h52789d2e34903b8eE"}
!1919 = !{!1914, !1909, !1904, !1899}
!1920 = !{!1911, !1906, !1901, !1896, !1917}
!1921 = !{!1922, !1924}
!1922 = distinct !{!1922, !1923, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E: %left.0"}
!1923 = distinct !{!1923, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E"}
!1924 = distinct !{!1924, !1923, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E: %right.0"}
!1925 = !{!1911, !1914, !1906, !1909, !1901, !1904, !1896, !1899, !1917}
!1926 = !{!1917}
!1927 = !{!1928}
!1928 = distinct !{!1928, !1929, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %a"}
!1929 = distinct !{!1929, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E"}
!1930 = !{!1931}
!1931 = distinct !{!1931, !1929, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %b"}
!1932 = !{!1933}
!1933 = distinct !{!1933, !1934, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %a"}
!1934 = distinct !{!1934, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE"}
!1935 = !{!1936}
!1936 = distinct !{!1936, !1934, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %b"}
!1937 = !{!1938}
!1938 = distinct !{!1938, !1939, !"_ZN56_$LT$alloc..string..String$u20$as$u20$core..cmp..Ord$GT$3cmp17hea22ad2116efd3e7E: %self"}
!1939 = distinct !{!1939, !"_ZN56_$LT$alloc..string..String$u20$as$u20$core..cmp..Ord$GT$3cmp17hea22ad2116efd3e7E"}
!1940 = !{!1941}
!1941 = distinct !{!1941, !1939, !"_ZN56_$LT$alloc..string..String$u20$as$u20$core..cmp..Ord$GT$3cmp17hea22ad2116efd3e7E: %other"}
!1942 = !{!1943}
!1943 = distinct !{!1943, !1944, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %self"}
!1944 = distinct !{!1944, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE"}
!1945 = !{!1946}
!1946 = distinct !{!1946, !1944, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %other"}
!1947 = !{!1943, !1938, !1933, !1928}
!1948 = !{!1946, !1941, !1936, !1931, !1949}
!1949 = distinct !{!1949, !1950, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17hfc2a01dc7156f439E: %self"}
!1950 = distinct !{!1950, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17hfc2a01dc7156f439E"}
!1951 = !{!1946, !1941, !1936, !1931}
!1952 = !{!1943, !1938, !1933, !1928, !1949}
!1953 = !{!1954, !1956}
!1954 = distinct !{!1954, !1955, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E: %left.0"}
!1955 = distinct !{!1955, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E"}
!1956 = distinct !{!1956, !1955, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E: %right.0"}
!1957 = !{!1943, !1946, !1938, !1941, !1933, !1936, !1928, !1931, !1949}
!1958 = !{!1949}
!1959 = !{!1960, !1962}
!1960 = distinct !{!1960, !1961, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4de11ff8d87db94eE: %self"}
!1961 = distinct !{!1961, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4de11ff8d87db94eE"}
!1962 = distinct !{!1962, !1963, !"_ZN4core3ptr94drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$alloc..string..String$GT$$GT$17h07c96e1996e7cee9E: %_1"}
!1963 = distinct !{!1963, !"_ZN4core3ptr94drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$alloc..string..String$GT$$GT$17h07c96e1996e7cee9E"}
!1964 = !{!"branch_weights", i32 4000000, i32 4001}
!1965 = !{!1966}
!1966 = distinct !{!1966, !1967, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %a"}
!1967 = distinct !{!1967, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E"}
!1968 = !{!1969}
!1969 = distinct !{!1969, !1967, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %b"}
!1970 = !{!1971}
!1971 = distinct !{!1971, !1972, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %a"}
!1972 = distinct !{!1972, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE"}
!1973 = !{!1974}
!1974 = distinct !{!1974, !1972, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %b"}
!1975 = !{!1976}
!1976 = distinct !{!1976, !1977, !"_ZN56_$LT$alloc..string..String$u20$as$u20$core..cmp..Ord$GT$3cmp17hea22ad2116efd3e7E: %self"}
!1977 = distinct !{!1977, !"_ZN56_$LT$alloc..string..String$u20$as$u20$core..cmp..Ord$GT$3cmp17hea22ad2116efd3e7E"}
!1978 = !{!1979}
!1979 = distinct !{!1979, !1977, !"_ZN56_$LT$alloc..string..String$u20$as$u20$core..cmp..Ord$GT$3cmp17hea22ad2116efd3e7E: %other"}
!1980 = !{!1981}
!1981 = distinct !{!1981, !1982, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %self"}
!1982 = distinct !{!1982, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE"}
!1983 = !{!1984}
!1984 = distinct !{!1984, !1982, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %other"}
!1985 = !{!1981, !1976, !1971, !1966}
!1986 = !{!1984, !1979, !1974, !1969}
!1987 = !{!1988, !1990}
!1988 = distinct !{!1988, !1989, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E: %left.0"}
!1989 = distinct !{!1989, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E"}
!1990 = distinct !{!1990, !1989, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E: %right.0"}
!1991 = !{!1981, !1984, !1976, !1979, !1971, !1974, !1966, !1969}
!1992 = !{!1993}
!1993 = distinct !{!1993, !1994, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h69277ab45df9696cE: %self"}
!1994 = distinct !{!1994, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h69277ab45df9696cE"}
!1995 = !{!1996}
!1996 = distinct !{!1996, !1997, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h69277ab45df9696cE: %self"}
!1997 = distinct !{!1997, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h69277ab45df9696cE"}
!1998 = !{!1999}
!1999 = distinct !{!1999, !2000, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h3c020b7027ab7d8bE: %a"}
!2000 = distinct !{!2000, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h3c020b7027ab7d8bE"}
!2001 = !{!2002}
!2002 = distinct !{!2002, !2000, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h3c020b7027ab7d8bE: %b"}
!2003 = !{!2004}
!2004 = distinct !{!2004, !2005, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %a"}
!2005 = distinct !{!2005, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E"}
!2006 = !{!2007}
!2007 = distinct !{!2007, !2005, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %b"}
!2008 = !{!2009}
!2009 = distinct !{!2009, !2010, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %a"}
!2010 = distinct !{!2010, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE"}
!2011 = !{!2012}
!2012 = distinct !{!2012, !2010, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %b"}
!2013 = !{!2014}
!2014 = distinct !{!2014, !2015, !"_ZN56_$LT$alloc..string..String$u20$as$u20$core..cmp..Ord$GT$3cmp17hea22ad2116efd3e7E: %self"}
!2015 = distinct !{!2015, !"_ZN56_$LT$alloc..string..String$u20$as$u20$core..cmp..Ord$GT$3cmp17hea22ad2116efd3e7E"}
!2016 = !{!2017}
!2017 = distinct !{!2017, !2015, !"_ZN56_$LT$alloc..string..String$u20$as$u20$core..cmp..Ord$GT$3cmp17hea22ad2116efd3e7E: %other"}
!2018 = !{!2019}
!2019 = distinct !{!2019, !2020, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %self"}
!2020 = distinct !{!2020, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE"}
!2021 = !{!2022}
!2022 = distinct !{!2022, !2020, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %other"}
!2023 = !{!2019, !2014, !2009, !2004, !2002}
!2024 = !{!2022, !2017, !2012, !2007, !1999}
!2025 = !{!2026, !2028}
!2026 = distinct !{!2026, !2027, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E: %left.0"}
!2027 = distinct !{!2027, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E"}
!2028 = distinct !{!2028, !2027, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E: %right.0"}
!2029 = !{!2019, !2022, !2014, !2017, !2009, !2012, !2004, !2007, !1999, !2002}
!2030 = !{!2031}
!2031 = distinct !{!2031, !2032, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h69277ab45df9696cE: %self"}
!2032 = distinct !{!2032, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h69277ab45df9696cE"}
!2033 = !{!2034}
!2034 = distinct !{!2034, !2035, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h69277ab45df9696cE: %self"}
!2035 = distinct !{!2035, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h69277ab45df9696cE"}
!2036 = !{!2037}
!2037 = distinct !{!2037, !2038, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a"}
!2038 = distinct !{!2038, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E"}
!2039 = !{!2040}
!2040 = distinct !{!2040, !2038, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b"}
!2041 = !{!2042}
!2042 = distinct !{!2042, !2043, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0"}
!2043 = distinct !{!2043, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E"}
!2044 = !{!2045}
!2045 = distinct !{!2045, !2043, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1"}
!2046 = !{!2047}
!2047 = distinct !{!2047, !2048, !"cmpfunc: %a"}
!2048 = distinct !{!2048, !"cmpfunc"}
!2049 = !{!2050}
!2050 = distinct !{!2050, !2048, !"cmpfunc: %b"}
!2051 = !{!2052}
!2052 = distinct !{!2052, !2053, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2053 = distinct !{!2053, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2054 = !{!2055}
!2055 = distinct !{!2055, !2053, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2056 = !{!2052, !2047, !2042, !2037}
!2057 = !{!2055, !2050, !2045, !2040}
!2058 = !{!2059}
!2059 = distinct !{!2059, !2060, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h33b39459f975064aE: %self"}
!2060 = distinct !{!2060, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h33b39459f975064aE"}
!2061 = !{!2062}
!2062 = distinct !{!2062, !2063, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a"}
!2063 = distinct !{!2063, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E"}
!2064 = !{!2065}
!2065 = distinct !{!2065, !2063, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b"}
!2066 = !{!2067}
!2067 = distinct !{!2067, !2068, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0"}
!2068 = distinct !{!2068, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E"}
!2069 = !{!2070}
!2070 = distinct !{!2070, !2068, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1"}
!2071 = !{!2072}
!2072 = distinct !{!2072, !2073, !"cmpfunc: %a"}
!2073 = distinct !{!2073, !"cmpfunc"}
!2074 = !{!2075}
!2075 = distinct !{!2075, !2073, !"cmpfunc: %b"}
!2076 = !{!2077}
!2077 = distinct !{!2077, !2078, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2078 = distinct !{!2078, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2079 = !{!2080}
!2080 = distinct !{!2080, !2078, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2081 = !{!2077, !2072, !2067, !2062}
!2082 = !{!2080, !2075, !2070, !2065}
!2083 = !{!2084}
!2084 = distinct !{!2084, !2085, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h33b39459f975064aE: %self"}
!2085 = distinct !{!2085, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h33b39459f975064aE"}
!2086 = !{!2087}
!2087 = distinct !{!2087, !2088, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a"}
!2088 = distinct !{!2088, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E"}
!2089 = !{!2090}
!2090 = distinct !{!2090, !2088, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b"}
!2091 = !{!2092}
!2092 = distinct !{!2092, !2093, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0"}
!2093 = distinct !{!2093, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E"}
!2094 = !{!2095}
!2095 = distinct !{!2095, !2093, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1"}
!2096 = !{!2097}
!2097 = distinct !{!2097, !2098, !"cmpfunc: %a"}
!2098 = distinct !{!2098, !"cmpfunc"}
!2099 = !{!2100}
!2100 = distinct !{!2100, !2098, !"cmpfunc: %b"}
!2101 = !{!2102}
!2102 = distinct !{!2102, !2103, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2103 = distinct !{!2103, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2104 = !{!2105}
!2105 = distinct !{!2105, !2103, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2106 = !{!2102, !2097, !2092, !2087}
!2107 = !{!2105, !2100, !2095, !2090}
!2108 = !{!2109}
!2109 = distinct !{!2109, !2110, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h33b39459f975064aE: %self"}
!2110 = distinct !{!2110, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h33b39459f975064aE"}
!2111 = !{!2112}
!2112 = distinct !{!2112, !2113, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a"}
!2113 = distinct !{!2113, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E"}
!2114 = !{!2115}
!2115 = distinct !{!2115, !2113, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b"}
!2116 = !{!2117}
!2117 = distinct !{!2117, !2118, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0"}
!2118 = distinct !{!2118, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E"}
!2119 = !{!2120}
!2120 = distinct !{!2120, !2118, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1"}
!2121 = !{!2122}
!2122 = distinct !{!2122, !2123, !"cmpfunc: %a"}
!2123 = distinct !{!2123, !"cmpfunc"}
!2124 = !{!2125}
!2125 = distinct !{!2125, !2123, !"cmpfunc: %b"}
!2126 = !{!2127}
!2127 = distinct !{!2127, !2128, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2128 = distinct !{!2128, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2129 = !{!2130}
!2130 = distinct !{!2130, !2128, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2131 = !{!2127, !2122, !2117, !2112}
!2132 = !{!2130, !2125, !2120, !2115}
!2133 = !{!2134}
!2134 = distinct !{!2134, !2135, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h33b39459f975064aE: %self"}
!2135 = distinct !{!2135, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h33b39459f975064aE"}
!2136 = !{!2137}
!2137 = distinct !{!2137, !2138, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a"}
!2138 = distinct !{!2138, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E"}
!2139 = !{!2140}
!2140 = distinct !{!2140, !2138, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b"}
!2141 = !{!2142}
!2142 = distinct !{!2142, !2143, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0"}
!2143 = distinct !{!2143, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E"}
!2144 = !{!2145}
!2145 = distinct !{!2145, !2143, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1"}
!2146 = !{!2147}
!2147 = distinct !{!2147, !2148, !"cmpfunc: %a"}
!2148 = distinct !{!2148, !"cmpfunc"}
!2149 = !{!2150}
!2150 = distinct !{!2150, !2148, !"cmpfunc: %b"}
!2151 = !{!2152}
!2152 = distinct !{!2152, !2153, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2153 = distinct !{!2153, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2154 = !{!2155}
!2155 = distinct !{!2155, !2153, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2156 = !{!2152, !2147, !2142, !2137}
!2157 = !{!2155, !2150, !2145, !2140}
!2158 = !{!2159}
!2159 = distinct !{!2159, !2160, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h33b39459f975064aE: %self"}
!2160 = distinct !{!2160, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h33b39459f975064aE"}
!2161 = !{!2162}
!2162 = distinct !{!2162, !2163, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h33b39459f975064aE: %self"}
!2163 = distinct !{!2163, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h33b39459f975064aE"}
!2164 = distinct !{!2164, !2165}
!2165 = !{!"llvm.loop.unroll.disable"}
!2166 = !{!2167}
!2167 = distinct !{!2167, !2168, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h85019edda0c3bfa5E: %a"}
!2168 = distinct !{!2168, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h85019edda0c3bfa5E"}
!2169 = !{!2170}
!2170 = distinct !{!2170, !2168, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h85019edda0c3bfa5E: %b"}
!2171 = !{!2172}
!2172 = distinct !{!2172, !2173, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a"}
!2173 = distinct !{!2173, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E"}
!2174 = !{!2175}
!2175 = distinct !{!2175, !2173, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b"}
!2176 = !{!2177}
!2177 = distinct !{!2177, !2178, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0"}
!2178 = distinct !{!2178, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E"}
!2179 = !{!2180}
!2180 = distinct !{!2180, !2178, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1"}
!2181 = !{!2182}
!2182 = distinct !{!2182, !2183, !"cmpfunc: %a"}
!2183 = distinct !{!2183, !"cmpfunc"}
!2184 = !{!2185}
!2185 = distinct !{!2185, !2183, !"cmpfunc: %b"}
!2186 = !{!2187}
!2187 = distinct !{!2187, !2188, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2188 = distinct !{!2188, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2189 = !{!2190}
!2190 = distinct !{!2190, !2188, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2191 = !{!2187, !2182, !2177, !2172, !2170}
!2192 = !{!2190, !2185, !2180, !2175, !2167}
!2193 = !{!2194}
!2194 = distinct !{!2194, !2195, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h33b39459f975064aE: %self"}
!2195 = distinct !{!2195, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h33b39459f975064aE"}
!2196 = !{!2197}
!2197 = distinct !{!2197, !2198, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h85019edda0c3bfa5E: %a"}
!2198 = distinct !{!2198, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h85019edda0c3bfa5E"}
!2199 = !{!2200}
!2200 = distinct !{!2200, !2198, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h85019edda0c3bfa5E: %b"}
!2201 = !{!2202}
!2202 = distinct !{!2202, !2203, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a"}
!2203 = distinct !{!2203, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E"}
!2204 = !{!2205}
!2205 = distinct !{!2205, !2203, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b"}
!2206 = !{!2207}
!2207 = distinct !{!2207, !2208, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0"}
!2208 = distinct !{!2208, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E"}
!2209 = !{!2210}
!2210 = distinct !{!2210, !2208, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1"}
!2211 = !{!2212}
!2212 = distinct !{!2212, !2213, !"cmpfunc: %a"}
!2213 = distinct !{!2213, !"cmpfunc"}
!2214 = !{!2215}
!2215 = distinct !{!2215, !2213, !"cmpfunc: %b"}
!2216 = !{!2217}
!2217 = distinct !{!2217, !2218, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2218 = distinct !{!2218, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2219 = !{!2220}
!2220 = distinct !{!2220, !2218, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2221 = !{!2217, !2212, !2207, !2202, !2200}
!2222 = !{!2220, !2215, !2210, !2205, !2197}
!2223 = !{!2224}
!2224 = distinct !{!2224, !2225, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h33b39459f975064aE: %self"}
!2225 = distinct !{!2225, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h33b39459f975064aE"}
!2226 = !{!2227}
!2227 = distinct !{!2227, !2228, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h85019edda0c3bfa5E: %a"}
!2228 = distinct !{!2228, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h85019edda0c3bfa5E"}
!2229 = !{!2230}
!2230 = distinct !{!2230, !2228, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h85019edda0c3bfa5E: %b"}
!2231 = !{!2232}
!2232 = distinct !{!2232, !2233, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a"}
!2233 = distinct !{!2233, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E"}
!2234 = !{!2235}
!2235 = distinct !{!2235, !2233, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b"}
!2236 = !{!2237}
!2237 = distinct !{!2237, !2238, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0"}
!2238 = distinct !{!2238, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E"}
!2239 = !{!2240}
!2240 = distinct !{!2240, !2238, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1"}
!2241 = !{!2242}
!2242 = distinct !{!2242, !2243, !"cmpfunc: %a"}
!2243 = distinct !{!2243, !"cmpfunc"}
!2244 = !{!2245}
!2245 = distinct !{!2245, !2243, !"cmpfunc: %b"}
!2246 = !{!2247}
!2247 = distinct !{!2247, !2248, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2248 = distinct !{!2248, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2249 = !{!2250}
!2250 = distinct !{!2250, !2248, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2251 = !{!2247, !2242, !2237, !2232, !2230}
!2252 = !{!2250, !2245, !2240, !2235, !2227}
!2253 = !{!2254}
!2254 = distinct !{!2254, !2255, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h33b39459f975064aE: %self"}
!2255 = distinct !{!2255, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h33b39459f975064aE"}
!2256 = !{!2257}
!2257 = distinct !{!2257, !2258, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h85019edda0c3bfa5E: %a"}
!2258 = distinct !{!2258, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h85019edda0c3bfa5E"}
!2259 = !{!2260}
!2260 = distinct !{!2260, !2258, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h85019edda0c3bfa5E: %b"}
!2261 = !{!2262}
!2262 = distinct !{!2262, !2263, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a"}
!2263 = distinct !{!2263, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E"}
!2264 = !{!2265}
!2265 = distinct !{!2265, !2263, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b"}
!2266 = !{!2267}
!2267 = distinct !{!2267, !2268, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0"}
!2268 = distinct !{!2268, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E"}
!2269 = !{!2270}
!2270 = distinct !{!2270, !2268, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1"}
!2271 = !{!2272}
!2272 = distinct !{!2272, !2273, !"cmpfunc: %a"}
!2273 = distinct !{!2273, !"cmpfunc"}
!2274 = !{!2275}
!2275 = distinct !{!2275, !2273, !"cmpfunc: %b"}
!2276 = !{!2277}
!2277 = distinct !{!2277, !2278, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2278 = distinct !{!2278, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2279 = !{!2280}
!2280 = distinct !{!2280, !2278, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2281 = !{!2277, !2272, !2267, !2262, !2260}
!2282 = !{!2280, !2275, !2270, !2265, !2257}
!2283 = !{!2284}
!2284 = distinct !{!2284, !2285, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h33b39459f975064aE: %self"}
!2285 = distinct !{!2285, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h33b39459f975064aE"}
!2286 = !{!2287}
!2287 = distinct !{!2287, !2288, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h85019edda0c3bfa5E: %a"}
!2288 = distinct !{!2288, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h85019edda0c3bfa5E"}
!2289 = !{!2290}
!2290 = distinct !{!2290, !2288, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h85019edda0c3bfa5E: %b"}
!2291 = !{!2292}
!2292 = distinct !{!2292, !2293, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a"}
!2293 = distinct !{!2293, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E"}
!2294 = !{!2295}
!2295 = distinct !{!2295, !2293, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b"}
!2296 = !{!2297}
!2297 = distinct !{!2297, !2298, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0"}
!2298 = distinct !{!2298, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E"}
!2299 = !{!2300}
!2300 = distinct !{!2300, !2298, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1"}
!2301 = !{!2302}
!2302 = distinct !{!2302, !2303, !"cmpfunc: %a"}
!2303 = distinct !{!2303, !"cmpfunc"}
!2304 = !{!2305}
!2305 = distinct !{!2305, !2303, !"cmpfunc: %b"}
!2306 = !{!2307}
!2307 = distinct !{!2307, !2308, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2308 = distinct !{!2308, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2309 = !{!2310}
!2310 = distinct !{!2310, !2308, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2311 = !{!2307, !2302, !2297, !2292, !2290}
!2312 = !{!2310, !2305, !2300, !2295, !2287}
!2313 = !{!2314}
!2314 = distinct !{!2314, !2315, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h33b39459f975064aE: %self"}
!2315 = distinct !{!2315, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h33b39459f975064aE"}
!2316 = !{!2317}
!2317 = distinct !{!2317, !2318, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h33b39459f975064aE: %self"}
!2318 = distinct !{!2318, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h33b39459f975064aE"}
!2319 = distinct !{!2319, !2165}
!2320 = !{!2321}
!2321 = distinct !{!2321, !2322, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a"}
!2322 = distinct !{!2322, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E"}
!2323 = !{!2324}
!2324 = distinct !{!2324, !2322, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b"}
!2325 = !{!2326}
!2326 = distinct !{!2326, !2327, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0"}
!2327 = distinct !{!2327, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E"}
!2328 = !{!2329}
!2329 = distinct !{!2329, !2330, !"_ZN4core5slice4sort6shared5pivot7median317h007360abed772f57E: %c"}
!2330 = distinct !{!2330, !"_ZN4core5slice4sort6shared5pivot7median317h007360abed772f57E"}
!2331 = !{!2332}
!2332 = distinct !{!2332, !2327, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1"}
!2333 = !{!2334}
!2334 = distinct !{!2334, !2335, !"cmpfunc: %a"}
!2335 = distinct !{!2335, !"cmpfunc"}
!2336 = !{!2337}
!2337 = distinct !{!2337, !2335, !"cmpfunc: %b"}
!2338 = !{!2339}
!2339 = distinct !{!2339, !2340, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2340 = distinct !{!2340, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2341 = !{!2342}
!2342 = distinct !{!2342, !2340, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2343 = !{!2339, !2334, !2326, !2321, !2344}
!2344 = distinct !{!2344, !2345, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17hb8dcb72d6df55292E: %v.0"}
!2345 = distinct !{!2345, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17hb8dcb72d6df55292E"}
!2346 = !{!2342, !2337, !2332, !2324, !2329, !2347}
!2347 = distinct !{!2347, !2345, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17hb8dcb72d6df55292E: %is_less"}
!2348 = !{!2342, !2337, !2332, !2324, !2344}
!2349 = !{!2339, !2334, !2326, !2321, !2329, !2347}
!2350 = !{!2351, !2353, !2355, !2357, !2344}
!2351 = distinct !{!2351, !2352, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2352 = distinct !{!2352, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2353 = distinct !{!2353, !2354, !"cmpfunc: %b"}
!2354 = distinct !{!2354, !"cmpfunc"}
!2355 = distinct !{!2355, !2356, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1"}
!2356 = distinct !{!2356, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E"}
!2357 = distinct !{!2357, !2358, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b"}
!2358 = distinct !{!2358, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E"}
!2359 = !{!2360, !2361, !2362, !2363, !2347}
!2360 = distinct !{!2360, !2352, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2361 = distinct !{!2361, !2354, !"cmpfunc: %a"}
!2362 = distinct !{!2362, !2356, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0"}
!2363 = distinct !{!2363, !2358, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a"}
!2364 = !{!2365, !2367, !2369, !2371}
!2365 = distinct !{!2365, !2366, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2366 = distinct !{!2366, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2367 = distinct !{!2367, !2368, !"cmpfunc: %a"}
!2368 = distinct !{!2368, !"cmpfunc"}
!2369 = distinct !{!2369, !2370, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0"}
!2370 = distinct !{!2370, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E"}
!2371 = distinct !{!2371, !2372, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a"}
!2372 = distinct !{!2372, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E"}
!2373 = !{!2374, !2375, !2376, !2377}
!2374 = distinct !{!2374, !2366, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2375 = distinct !{!2375, !2368, !"cmpfunc: %b"}
!2376 = distinct !{!2376, !2370, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1"}
!2377 = distinct !{!2377, !2372, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b"}
!2378 = !{!2379, !2381}
!2379 = distinct !{!2379, !2380, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h0ceeda8e75cd17abE: %pair"}
!2380 = distinct !{!2380, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h0ceeda8e75cd17abE"}
!2381 = distinct !{!2381, !2380, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h0ceeda8e75cd17abE: %self.0"}
!2382 = !{!2383}
!2383 = distinct !{!2383, !2384, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h94e2005f3bd3de14E: %v.0"}
!2384 = distinct !{!2384, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h94e2005f3bd3de14E"}
!2385 = !{!2386}
!2386 = distinct !{!2386, !2387, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %a"}
!2387 = distinct !{!2387, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E"}
!2388 = !{!2389}
!2389 = distinct !{!2389, !2387, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %b"}
!2390 = !{!2391}
!2391 = distinct !{!2391, !2392, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %a"}
!2392 = distinct !{!2392, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE"}
!2393 = !{!2394}
!2394 = distinct !{!2394, !2395, !"_ZN4core5slice4sort6shared5pivot7median317h0e5bc2dbc1971a6eE: %c"}
!2395 = distinct !{!2395, !"_ZN4core5slice4sort6shared5pivot7median317h0e5bc2dbc1971a6eE"}
!2396 = !{!2397}
!2397 = distinct !{!2397, !2392, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %b"}
!2398 = !{!2399}
!2399 = distinct !{!2399, !2400, !"_ZN56_$LT$alloc..string..String$u20$as$u20$core..cmp..Ord$GT$3cmp17hea22ad2116efd3e7E: %self"}
!2400 = distinct !{!2400, !"_ZN56_$LT$alloc..string..String$u20$as$u20$core..cmp..Ord$GT$3cmp17hea22ad2116efd3e7E"}
!2401 = !{!2402}
!2402 = distinct !{!2402, !2400, !"_ZN56_$LT$alloc..string..String$u20$as$u20$core..cmp..Ord$GT$3cmp17hea22ad2116efd3e7E: %other"}
!2403 = !{!2404}
!2404 = distinct !{!2404, !2405, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %self"}
!2405 = distinct !{!2405, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE"}
!2406 = !{!2407}
!2407 = distinct !{!2407, !2405, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %other"}
!2408 = !{!2404, !2399, !2391, !2386, !2383}
!2409 = !{!2407, !2402, !2397, !2389, !2394, !2410}
!2410 = distinct !{!2410, !2384, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h94e2005f3bd3de14E: %is_less"}
!2411 = !{!2407, !2402, !2397, !2389, !2383}
!2412 = !{!2404, !2399, !2391, !2386, !2394, !2410}
!2413 = !{!2414, !2416}
!2414 = distinct !{!2414, !2415, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E: %left.0"}
!2415 = distinct !{!2415, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E"}
!2416 = distinct !{!2416, !2415, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E: %right.0"}
!2417 = !{!2404, !2407, !2399, !2402, !2391, !2397, !2386, !2389, !2394, !2383, !2410}
!2418 = !{!2419}
!2419 = distinct !{!2419, !2420, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %b"}
!2420 = distinct !{!2420, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E"}
!2421 = !{!2422}
!2422 = distinct !{!2422, !2423, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %b"}
!2423 = distinct !{!2423, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE"}
!2424 = !{!2425}
!2425 = distinct !{!2425, !2426, !"_ZN56_$LT$alloc..string..String$u20$as$u20$core..cmp..Ord$GT$3cmp17hea22ad2116efd3e7E: %other"}
!2426 = distinct !{!2426, !"_ZN56_$LT$alloc..string..String$u20$as$u20$core..cmp..Ord$GT$3cmp17hea22ad2116efd3e7E"}
!2427 = !{!2428}
!2428 = distinct !{!2428, !2429, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %other"}
!2429 = distinct !{!2429, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE"}
!2430 = !{!2428, !2425, !2422, !2419, !2383}
!2431 = !{!2432, !2433, !2434, !2435, !2410}
!2432 = distinct !{!2432, !2429, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %self"}
!2433 = distinct !{!2433, !2426, !"_ZN56_$LT$alloc..string..String$u20$as$u20$core..cmp..Ord$GT$3cmp17hea22ad2116efd3e7E: %self"}
!2434 = distinct !{!2434, !2423, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %a"}
!2435 = distinct !{!2435, !2420, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %a"}
!2436 = !{!2437, !2439}
!2437 = distinct !{!2437, !2438, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E: %left.0"}
!2438 = distinct !{!2438, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E"}
!2439 = distinct !{!2439, !2438, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E: %right.0"}
!2440 = !{!2432, !2428, !2433, !2425, !2434, !2422, !2435, !2419, !2383, !2410}
!2441 = !{!2442, !2444}
!2442 = distinct !{!2442, !2443, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E: %left.0"}
!2443 = distinct !{!2443, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E"}
!2444 = distinct !{!2444, !2443, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E: %right.0"}
!2445 = !{!2446, !2448, !2449, !2451, !2452, !2454, !2455, !2457, !2383, !2410}
!2446 = distinct !{!2446, !2447, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %self"}
!2447 = distinct !{!2447, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE"}
!2448 = distinct !{!2448, !2447, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %other"}
!2449 = distinct !{!2449, !2450, !"_ZN56_$LT$alloc..string..String$u20$as$u20$core..cmp..Ord$GT$3cmp17hea22ad2116efd3e7E: %self"}
!2450 = distinct !{!2450, !"_ZN56_$LT$alloc..string..String$u20$as$u20$core..cmp..Ord$GT$3cmp17hea22ad2116efd3e7E"}
!2451 = distinct !{!2451, !2450, !"_ZN56_$LT$alloc..string..String$u20$as$u20$core..cmp..Ord$GT$3cmp17hea22ad2116efd3e7E: %other"}
!2452 = distinct !{!2452, !2453, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %a"}
!2453 = distinct !{!2453, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE"}
!2454 = distinct !{!2454, !2453, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %b"}
!2455 = distinct !{!2455, !2456, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %a"}
!2456 = distinct !{!2456, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E"}
!2457 = distinct !{!2457, !2456, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %b"}
!2458 = !{!2459}
!2459 = distinct !{!2459, !2460, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %a"}
!2460 = distinct !{!2460, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E"}
!2461 = !{!2462}
!2462 = distinct !{!2462, !2460, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %b"}
!2463 = !{!2464}
!2464 = distinct !{!2464, !2465, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %a"}
!2465 = distinct !{!2465, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE"}
!2466 = !{!2467}
!2467 = distinct !{!2467, !2465, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %b"}
!2468 = !{!2469}
!2469 = distinct !{!2469, !2470, !"_ZN56_$LT$alloc..string..String$u20$as$u20$core..cmp..Ord$GT$3cmp17hea22ad2116efd3e7E: %self"}
!2470 = distinct !{!2470, !"_ZN56_$LT$alloc..string..String$u20$as$u20$core..cmp..Ord$GT$3cmp17hea22ad2116efd3e7E"}
!2471 = !{!2472}
!2472 = distinct !{!2472, !2470, !"_ZN56_$LT$alloc..string..String$u20$as$u20$core..cmp..Ord$GT$3cmp17hea22ad2116efd3e7E: %other"}
!2473 = !{!2474}
!2474 = distinct !{!2474, !2475, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %self"}
!2475 = distinct !{!2475, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE"}
!2476 = !{!2477}
!2477 = distinct !{!2477, !2475, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %other"}
!2478 = !{!2474, !2469, !2464, !2459}
!2479 = !{!2477, !2472, !2467, !2462}
!2480 = !{!2481, !2483}
!2481 = distinct !{!2481, !2482, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E: %left.0"}
!2482 = distinct !{!2482, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E"}
!2483 = distinct !{!2483, !2482, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E: %right.0"}
!2484 = !{!2474, !2477, !2469, !2472, !2464, !2467, !2459, !2462}
!2485 = !{!2486}
!2486 = distinct !{!2486, !2487, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h2d423c034a790133E: %v.0"}
!2487 = distinct !{!2487, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h2d423c034a790133E"}
!2488 = !{!2489}
!2489 = distinct !{!2489, !2487, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h2d423c034a790133E: %scratch.0"}
!2490 = !{!2491}
!2491 = distinct !{!2491, !2492, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %a"}
!2492 = distinct !{!2492, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E"}
!2493 = !{!2494}
!2494 = distinct !{!2494, !2492, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %b"}
!2495 = !{!2496}
!2496 = distinct !{!2496, !2497, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %a"}
!2497 = distinct !{!2497, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE"}
!2498 = !{!2499}
!2499 = distinct !{!2499, !2497, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %b"}
!2500 = !{!2501}
!2501 = distinct !{!2501, !2502, !"_ZN56_$LT$alloc..string..String$u20$as$u20$core..cmp..Ord$GT$3cmp17hea22ad2116efd3e7E: %self"}
!2502 = distinct !{!2502, !"_ZN56_$LT$alloc..string..String$u20$as$u20$core..cmp..Ord$GT$3cmp17hea22ad2116efd3e7E"}
!2503 = !{!2504}
!2504 = distinct !{!2504, !2502, !"_ZN56_$LT$alloc..string..String$u20$as$u20$core..cmp..Ord$GT$3cmp17hea22ad2116efd3e7E: %other"}
!2505 = !{!2506}
!2506 = distinct !{!2506, !2507, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %self"}
!2507 = distinct !{!2507, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE"}
!2508 = !{!2509}
!2509 = distinct !{!2509, !2507, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %other"}
!2510 = !{!2506, !2501, !2496, !2491, !2486}
!2511 = !{!2509, !2504, !2499, !2494, !2489}
!2512 = !{!2509, !2504, !2499, !2494, !2486}
!2513 = !{!2506, !2501, !2496, !2491, !2489}
!2514 = !{!2515, !2517}
!2515 = distinct !{!2515, !2516, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E: %left.0"}
!2516 = distinct !{!2516, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E"}
!2517 = distinct !{!2517, !2516, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E: %right.0"}
!2518 = !{!2506, !2509, !2501, !2504, !2496, !2499, !2491, !2494, !2486, !2489}
!2519 = !{!2486, !2489}
!2520 = !{!2521}
!2521 = distinct !{!2521, !2522, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h69277ab45df9696cE: %self"}
!2522 = distinct !{!2522, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h69277ab45df9696cE"}
!2523 = !{!2524}
!2524 = distinct !{!2524, !2525, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h69277ab45df9696cE: %self"}
!2525 = distinct !{!2525, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h69277ab45df9696cE"}
!2526 = !{!2527, !2529}
!2527 = distinct !{!2527, !2528, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h7dd69a5499b58ed4E: %pair"}
!2528 = distinct !{!2528, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h7dd69a5499b58ed4E"}
!2529 = distinct !{!2529, !2528, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h7dd69a5499b58ed4E: %self.0"}
!2530 = !{!2531}
!2531 = distinct !{!2531, !2532, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h2d823a91305b5458E: %v.0"}
!2532 = distinct !{!2532, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h2d823a91305b5458E"}
!2533 = !{!2534}
!2534 = distinct !{!2534, !2532, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h2d823a91305b5458E: %scratch.0"}
!2535 = !{!2536}
!2536 = distinct !{!2536, !2537, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h3c020b7027ab7d8bE: %a"}
!2537 = distinct !{!2537, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h3c020b7027ab7d8bE"}
!2538 = !{!2539}
!2539 = distinct !{!2539, !2537, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h3c020b7027ab7d8bE: %b"}
!2540 = !{!2541}
!2541 = distinct !{!2541, !2542, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %a"}
!2542 = distinct !{!2542, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E"}
!2543 = !{!2544}
!2544 = distinct !{!2544, !2542, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %b"}
!2545 = !{!2546}
!2546 = distinct !{!2546, !2547, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %a"}
!2547 = distinct !{!2547, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE"}
!2548 = !{!2549}
!2549 = distinct !{!2549, !2547, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %b"}
!2550 = !{!2551}
!2551 = distinct !{!2551, !2552, !"_ZN56_$LT$alloc..string..String$u20$as$u20$core..cmp..Ord$GT$3cmp17hea22ad2116efd3e7E: %self"}
!2552 = distinct !{!2552, !"_ZN56_$LT$alloc..string..String$u20$as$u20$core..cmp..Ord$GT$3cmp17hea22ad2116efd3e7E"}
!2553 = !{!2554}
!2554 = distinct !{!2554, !2552, !"_ZN56_$LT$alloc..string..String$u20$as$u20$core..cmp..Ord$GT$3cmp17hea22ad2116efd3e7E: %other"}
!2555 = !{!2556}
!2556 = distinct !{!2556, !2557, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %self"}
!2557 = distinct !{!2557, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE"}
!2558 = !{!2559}
!2559 = distinct !{!2559, !2557, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %other"}
!2560 = !{!2556, !2551, !2546, !2541, !2539, !2531}
!2561 = !{!2559, !2554, !2549, !2544, !2536, !2534}
!2562 = !{!2559, !2554, !2549, !2544, !2536, !2531}
!2563 = !{!2556, !2551, !2546, !2541, !2539, !2534}
!2564 = !{!2565, !2567}
!2565 = distinct !{!2565, !2566, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E: %left.0"}
!2566 = distinct !{!2566, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E"}
!2567 = distinct !{!2567, !2566, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E: %right.0"}
!2568 = !{!2556, !2559, !2551, !2554, !2546, !2549, !2541, !2544, !2536, !2539, !2531, !2534}
!2569 = !{!2531, !2534}
!2570 = !{!2571}
!2571 = distinct !{!2571, !2572, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h69277ab45df9696cE: %self"}
!2572 = distinct !{!2572, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h69277ab45df9696cE"}
!2573 = !{!2574}
!2574 = distinct !{!2574, !2575, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h69277ab45df9696cE: %self"}
!2575 = distinct !{!2575, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h69277ab45df9696cE"}
!2576 = !{i64 0, i64 -9223372036854775808}
!2577 = !{!2578}
!2578 = distinct !{!2578, !2579, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2579 = distinct !{!2579, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2580 = !{!2581}
!2581 = distinct !{!2581, !2579, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2582 = !{!2583}
!2583 = distinct !{!2583, !2584, !"_ZN5alloc6string6String3len17hc147619d2ad1db0cE: %self"}
!2584 = distinct !{!2584, !"_ZN5alloc6string6String3len17hc147619d2ad1db0cE"}
!2585 = !{!2586}
!2586 = distinct !{!2586, !2587, !"_ZN5alloc3vec12Vec$LT$T$GT$13with_capacity17hab7a9d9e13404a55E: %_0"}
!2587 = distinct !{!2587, !"_ZN5alloc3vec12Vec$LT$T$GT$13with_capacity17hab7a9d9e13404a55E"}
!2588 = !{!2589, !2591}
!2589 = distinct !{!2589, !2590, !"_ZN5alloc6string6String6as_str17h5d0f4124dd88b637E: %self"}
!2590 = distinct !{!2590, !"_ZN5alloc6string6String6as_str17h5d0f4124dd88b637E"}
!2591 = distinct !{!2591, !2592, !"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17hf2dd8c0f474e3d11E: %self"}
!2592 = distinct !{!2592, !"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17hf2dd8c0f474e3d11E"}
!2593 = !{!2594}
!2594 = distinct !{!2594, !2595, !"_ZN78_$LT$alloc..string..String$u20$as$u20$core..ops..arith..Add$LT$$RF$str$GT$$GT$3add17hee04dcb44bb2d172E: %_0"}
!2595 = distinct !{!2595, !"_ZN78_$LT$alloc..string..String$u20$as$u20$core..ops..arith..Add$LT$$RF$str$GT$$GT$3add17hee04dcb44bb2d172E"}
!2596 = !{!2594, !2597}
!2597 = distinct !{!2597, !2595, !"_ZN78_$LT$alloc..string..String$u20$as$u20$core..ops..arith..Add$LT$$RF$str$GT$$GT$3add17hee04dcb44bb2d172E: %self"}
!2598 = !{!2599}
!2599 = distinct !{!2599, !2595, !"_ZN78_$LT$alloc..string..String$u20$as$u20$core..ops..arith..Add$LT$$RF$str$GT$$GT$3add17hee04dcb44bb2d172E: %other.0"}
!2600 = !{!2601}
!2601 = distinct !{!2601, !2602, !"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h990e5850e6ca3bbdE: %self:Peel0"}
!2602 = distinct !{!2602, !"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h990e5850e6ca3bbdE"}
!2603 = !{!2604, !2606}
!2604 = distinct !{!2604, !2605, !"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E: %slice.0"}
!2605 = distinct !{!2605, !"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E"}
!2606 = distinct !{!2606, !2607, !"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$5index17h7cbc932e0a9173c6E: %slice.0"}
!2607 = distinct !{!2607, !"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$5index17h7cbc932e0a9173c6E"}
!2608 = !{!"branch_weights", i32 2000, i32 1}
!2609 = !{!2610}
!2610 = distinct !{!2610, !2611, !"_ZN45_$LT$T$u20$as$u20$alloc..string..ToString$GT$9to_string17h75b533de7c3f914dE: %_0:Peel0"}
!2611 = distinct !{!2611, !"_ZN45_$LT$T$u20$as$u20$alloc..string..ToString$GT$9to_string17h75b533de7c3f914dE"}
!2612 = !{!2613}
!2613 = distinct !{!2613, !2614, !"_ZN51_$LT$str$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17hf3e4b814fcee6f95E: %_0:Peel0"}
!2614 = distinct !{!2614, !"_ZN51_$LT$str$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17hf3e4b814fcee6f95E"}
!2615 = !{!2616, !2618, !2613, !2619, !2610, !2620}
!2616 = distinct !{!2616, !2617, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h5c63dbb8fefceecbE: %v"}
!2617 = distinct !{!2617, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h5c63dbb8fefceecbE"}
!2618 = distinct !{!2618, !2617, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h5c63dbb8fefceecbE: %s.0"}
!2619 = distinct !{!2619, !2614, !"_ZN51_$LT$str$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17hf3e4b814fcee6f95E: %self.0"}
!2620 = distinct !{!2620, !2611, !"_ZN45_$LT$T$u20$as$u20$alloc..string..ToString$GT$9to_string17h75b533de7c3f914dE: %self.0"}
!2621 = !{!"branch_weights", i32 1, i32 2000}
!2622 = !{!2616, !2613, !2610}
!2623 = !{!2613, !2610}
!2624 = !{!2619, !2620}
!2625 = !{!2626, !2628}
!2626 = distinct !{!2626, !2627, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hc6135c4d1222d67eE: %self"}
!2627 = distinct !{!2627, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hc6135c4d1222d67eE"}
!2628 = distinct !{!2628, !2629, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h5086dd1086a82772E: %self"}
!2629 = distinct !{!2629, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h5086dd1086a82772E"}
!2630 = !{!2631, !2632}
!2631 = distinct !{!2631, !2627, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hc6135c4d1222d67eE: %value"}
!2632 = distinct !{!2632, !2629, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h5086dd1086a82772E: %value"}
!2633 = !{!2634}
!2634 = distinct !{!2634, !2602, !"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h990e5850e6ca3bbdE: %self"}
!2635 = !{!"branch_weights", i32 1, i32 1999}
!2636 = !{!2637}
!2637 = distinct !{!2637, !2611, !"_ZN45_$LT$T$u20$as$u20$alloc..string..ToString$GT$9to_string17h75b533de7c3f914dE: %_0"}
!2638 = !{!2639}
!2639 = distinct !{!2639, !2614, !"_ZN51_$LT$str$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17hf3e4b814fcee6f95E: %_0"}
!2640 = !{!2616, !2618, !2639, !2619, !2637, !2620}
!2641 = !{!2642, !2644}
!2642 = distinct !{!2642, !2643, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$12as_mut_slice17ha069257fe56882b1E: %self"}
!2643 = distinct !{!2643, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$12as_mut_slice17ha069257fe56882b1E"}
!2644 = distinct !{!2644, !2645, !"_ZN75_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17ha0d745e2ed625488E: %self"}
!2645 = distinct !{!2645, !"_ZN75_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17ha0d745e2ed625488E"}
!2646 = !{!2647}
!2647 = distinct !{!2647, !2648, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h594fa5ca3b51e285E: %self.0"}
!2648 = distinct !{!2648, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h594fa5ca3b51e285E"}
!2649 = !{!2650, !2652, !2647}
!2650 = distinct !{!2650, !2651, !"_ZN5alloc5slice11stable_sort17h9a8b1694e71f747dE: %v.0"}
!2651 = distinct !{!2651, !"_ZN5alloc5slice11stable_sort17h9a8b1694e71f747dE"}
!2652 = distinct !{!2652, !2651, !"_ZN5alloc5slice11stable_sort17h9a8b1694e71f747dE: argument 1"}
!2653 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!2654 = !{!2655}
!2655 = distinct !{!2655, !2656, !"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h75f61264603f890aE: %self"}
!2656 = distinct !{!2656, !"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h75f61264603f890aE"}
!2657 = !{!2616, !2639, !2637}
!2658 = !{!2639, !2637}
!2659 = distinct !{!2659, !2660}
!2660 = !{!"llvm.loop.peeled.count", i32 1}
!2661 = !{!2662}
!2662 = distinct !{!2662, !2663, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hff93ecb281ddd21eE: %self.0"}
!2663 = distinct !{!2663, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hff93ecb281ddd21eE"}
!2664 = !{!2665, !2667, !2662}
!2665 = distinct !{!2665, !2666, !"_ZN5alloc5slice11stable_sort17h6ed8d9e1c847df5dE: %v.0"}
!2666 = distinct !{!2666, !"_ZN5alloc5slice11stable_sort17h6ed8d9e1c847df5dE"}
!2667 = distinct !{!2667, !2666, !"_ZN5alloc5slice11stable_sort17h6ed8d9e1c847df5dE: argument 1"}
