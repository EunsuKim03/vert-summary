; ModuleID = 'MAXIMUM_BINOMIAL_COEFFICIENT_TERM_VALUE_emit.f7d375e8244df32-cgu.0'
source_filename = "MAXIMUM_BINOMIAL_COEFFICIENT_TERM_VALUE_emit.f7d375e8244df32-cgu.0"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"core::mem::maybe_uninit::MaybeUninit<[u8; 8]>" = type { [8 x i8] }
%"alloc::vec::Vec<i32>" = type { %"alloc::raw_vec::RawVec<i32>", i64 }
%"alloc::raw_vec::RawVec<i32>" = type { %"alloc::raw_vec::RawVecInner", %"core::marker::PhantomData<i32>" }
%"alloc::raw_vec::RawVecInner" = type { i64, ptr, %"alloc::alloc::Global" }
%"alloc::alloc::Global" = type {}
%"core::marker::PhantomData<i32>" = type {}

@alloc_d1084648e479974e70c9329824bf76f9 = private unnamed_addr constant [9 x i8] c"mid > len", align 1
@alloc_e8e5fd9f509afcb950667480b3e3e42a = private unnamed_addr constant [126 x i8] c"/root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/sort/stable/quicksort.rs\00", align 1
@alloc_58d434a1e795f965ef82c8e9c5db822a = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_e8e5fd9f509afcb950667480b3e3e42a, [16 x i8] c"}\00\00\00\00\00\00\00J\00\00\00\1F\00\00\00" }>, align 8
@alloc_0766b232215672ee1bd2195fdb153938 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_e8e5fd9f509afcb950667480b3e3e42a, [16 x i8] c"}\00\00\00\00\00\00\00D\00\00\00\17\00\00\00" }>, align 8
@alloc_1a67cf7f8ed8036fc414ba176f36a534 = private unnamed_addr constant [131 x i8] c"/root/es/vert/vert/rust_funcs/c_transcoder/MAXIMUM_BINOMIAL_COEFFICIENT_TERM_VALUE/MAXIMUM_BINOMIAL_COEFFICIENT_TERM_VALUE_emit.rs\00", align 1
@alloc_e6278fc3b985cabc33cbe7253437c16e = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_1a67cf7f8ed8036fc414ba176f36a534, [16 x i8] c"\82\00\00\00\00\00\00\00#\00\00\00\1E\00\00\00" }>, align 8
@alloc_1e8fdd1104d261ad7f39a3c1d8a95235 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_1a67cf7f8ed8036fc414ba176f36a534, [16 x i8] c"\82\00\00\00\00\00\00\00#\00\00\00*\00\00\00" }>, align 8
@alloc_f2c1734d88cec735d43b795974dc6262 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_1a67cf7f8ed8036fc414ba176f36a534, [16 x i8] c"\82\00\00\00\00\00\00\00\1D\00\00\00&\00\00\00" }>, align 8
@alloc_af24b8a5666d2fb7ca96faa829b1425e = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_1a67cf7f8ed8036fc414ba176f36a534, [16 x i8] c"\82\00\00\00\00\00\00\00\1D\00\00\008\00\00\00" }>, align 8
@alloc_3fdbe2fb426dccaf98beefe3fb0f1f9c = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_1a67cf7f8ed8036fc414ba176f36a534, [16 x i8] c"\82\00\00\00\00\00\00\00\1D\00\00\00`\00\00\00" }>, align 8
@alloc_fd656603ea742b053409946d0f5af805 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_1a67cf7f8ed8036fc414ba176f36a534, [16 x i8] c"\82\00\00\00\00\00\00\00\1D\00\00\00\0A\00\00\00" }>, align 8
@alloc_7225f095e65c0582b35bc44551853c0f = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_1a67cf7f8ed8036fc414ba176f36a534, [16 x i8] c"\82\00\00\00\00\00\00\00\1D\00\00\00\16\00\00\00" }>, align 8
@alloc_75da181a9525c852c2a4162e25355896 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_1a67cf7f8ed8036fc414ba176f36a534, [16 x i8] c"\82\00\00\00\00\00\00\00\1B\00\00\00\0A\00\00\00" }>, align 8
@alloc_c18deb6965edcfb42a6bfb69b885e960 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_1a67cf7f8ed8036fc414ba176f36a534, [16 x i8] c"\82\00\00\00\00\00\00\00\1B\00\00\00\16\00\00\00" }>, align 8

; core::ptr::swap_nonoverlapping_bytes::swap_nonoverlapping_chunks
; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17h01678f1667f0172bE(ptr noundef captures(none) %x, ptr noundef captures(none) %y, i64 noundef range(i64 1, 0) %chunks) unnamed_addr #0 {
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

; core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h3a8b9c85b5d7ee4aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %_1) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12)
  %0 = getelementptr inbounds nuw i8, ptr %_1, i64 8
  %_5.i = load ptr, ptr %0, align 8, !alias.scope !12, !nonnull !15, !noundef !15
  %1 = getelementptr inbounds nuw i8, ptr %_1, i64 16
  %len.i = load i64, ptr %1, align 8, !alias.scope !12, !noundef !15
  br label %bb6.i.i

bb6.i.i:                                          ; preds = %bb5.i.i, %start
  %_3.sroa.0.0.i.i = phi i64 [ 0, %start ], [ %2, %bb5.i.i ]
  %_7.i.i = icmp eq i64 %_3.sroa.0.0.i.i, %len.i
  br i1 %_7.i.i, label %bb4, label %bb5.i.i

bb5.i.i:                                          ; preds = %bb6.i.i
  %_6.i.i = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_5.i, i64 %_3.sroa.0.0.i.i
  %2 = add i64 %_3.sroa.0.0.i.i, 1
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %_6.i.i, i64 noundef 4, i64 noundef 4)
          to label %bb6.i.i unwind label %cleanup.i.i, !noalias !12

bb4.i.i:                                          ; preds = %bb3.i.i, %cleanup.i.i
  %_3.sroa.0.1.i.i = phi i64 [ %2, %cleanup.i.i ], [ %4, %bb3.i.i ]
  %_5.i.i = icmp eq i64 %_3.sroa.0.1.i.i, %len.i
  br i1 %_5.i.i, label %cleanup.body, label %bb3.i.i

cleanup.i.i:                                      ; preds = %bb5.i.i
  %3 = landingpad { ptr, i32 }
          cleanup
  br label %bb4.i.i

bb3.i.i:                                          ; preds = %bb4.i.i
  %_4.i.i = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_5.i, i64 %_3.sroa.0.1.i.i
  %4 = add i64 %_3.sroa.0.1.i.i, 1
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %_4.i.i, i64 noundef 4, i64 noundef 4)
          to label %bb4.i.i unwind label %terminate.i.i, !noalias !12

terminate.i.i:                                    ; preds = %bb3.i.i
  %5 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #26, !noalias !12
  unreachable

cleanup.body:                                     ; preds = %bb4.i.i
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %_1, i64 noundef 8, i64 noundef 24)
          to label %bb1 unwind label %terminate

bb4:                                              ; preds = %bb6.i.i
; call alloc::raw_vec::RawVecInner<A>::deallocate
  tail call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %_1, i64 noundef 8, i64 noundef 24)
  ret void

terminate:                                        ; preds = %cleanup.body
  %6 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #26
  unreachable

bb1:                                              ; preds = %cleanup.body
  resume { ptr, i32 } %3
}

; core::slice::sort::shared::pivot::median3_rec
; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite) uwtable
define noundef nonnull ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h8e27644badaf6cc8E(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %n, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #2 {
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
  %4 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h8e27644badaf6cc8E(ptr noundef %0, ptr noundef %_10, ptr noundef %_13, i64 noundef %n84, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  %_16 = getelementptr inbounds nuw i32, ptr %1, i64 %count
  %_18 = getelementptr inbounds nuw i32, ptr %1, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %5 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h8e27644badaf6cc8E(ptr noundef %1, ptr noundef %_16, ptr noundef %_18, i64 noundef %n84, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  %_20 = getelementptr inbounds nuw i32, ptr %2, i64 %count
  %_22 = getelementptr inbounds nuw i32, ptr %2, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %6 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h8e27644badaf6cc8E(ptr noundef %2, ptr noundef %_20, ptr noundef %_22, i64 noundef %n84, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  br label %bb6

bb6:                                              ; preds = %start, %bb1
  %c.sroa.0.0 = phi ptr [ %6, %bb1 ], [ %2, %start ]
  %b.sroa.0.0 = phi ptr [ %5, %bb1 ], [ %1, %start ]
  %a.sroa.0.0 = phi ptr [ %4, %bb1 ], [ %0, %start ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21), !noalias !24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27), !noalias !24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29), !noalias !24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32), !noalias !24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34), !noalias !24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37), !noalias !24
  %_3.i.i.i.i = load i32, ptr %a.sroa.0.0, align 4, !alias.scope !39, !noalias !40, !noundef !15
  %_4.i.i.i.i = load i32, ptr %b.sroa.0.0, align 4, !alias.scope !41, !noalias !42, !noundef !15
  %_0.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %_4.i.i.i.i6 = load i32, ptr %c.sroa.0.0, align 4, !alias.scope !43, !noalias !52, !noundef !15
  %_0.i7 = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i6
  %7 = xor i1 %_0.i, %_0.i7
  %_0.i10 = icmp slt i32 %_4.i.i.i.i, %_4.i.i.i.i6
  %_12.i = xor i1 %_0.i, %_0.i10
  %c.b.i = select i1 %_12.i, ptr %c.sroa.0.0, ptr %b.sroa.0.0
  %_0.sroa.0.0.i = select i1 %7, ptr %a.sroa.0.0, ptr %c.b.i
  ret ptr %_0.sroa.0.0.i
}

; core::slice::sort::shared::smallsort::insert_tail
; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core5slice4sort6shared9smallsort11insert_tail17h588aa6ef78889c18E(ptr noundef readnone captures(address) %begin, ptr noundef captures(address) %tail, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %0 = getelementptr inbounds i8, ptr %tail, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75)
  %_3.i.i.i.i = load i32, ptr %tail, align 4, !alias.scope !77, !noalias !78, !noundef !15
  %_4.i.i.i.i = load i32, ptr %0, align 4, !alias.scope !78, !noalias !77, !noundef !15
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
  %_4.i.i.i.i2 = load i32, ptr %2, align 4, !alias.scope !79, !noalias !88, !noundef !15
  %_0.i3 = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i2
  br i1 %_0.i3, label %bb4, label %bb10

bb10:                                             ; preds = %bb6, %bb4
  store i32 %_3.i.i.i.i, ptr %sift.sroa.0.0, align 4, !noalias !93
  br label %bb12
}

; core::slice::sort::shared::smallsort::sort4_stable
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h62ec6890ddb3126cE(ptr noundef readonly captures(none) %v_base, ptr noundef writeonly captures(none) initializes((0, 16)) %dst, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_7 = getelementptr inbounds nuw i8, ptr %v_base, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !106)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !108)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !111)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !113)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116)
  %_3.i.i.i.i = load i32, ptr %_7, align 4, !alias.scope !118, !noalias !119, !noundef !15
  %_4.i.i.i.i = load i32, ptr %v_base, align 4, !alias.scope !119, !noalias !118, !noundef !15
  %_0.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %_12 = getelementptr inbounds nuw i8, ptr %v_base, i64 12
  %_14 = getelementptr inbounds nuw i8, ptr %v_base, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !120)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !125)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !135)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !138)
  %_3.i.i.i.i7 = load i32, ptr %_12, align 4, !alias.scope !140, !noalias !141, !noundef !15
  %_4.i.i.i.i8 = load i32, ptr %_14, align 4, !alias.scope !141, !noalias !140, !noundef !15
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !142)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !145)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !147)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !152)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !155)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !157)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !160)
  %_3.i.i.i.i10 = load i32, ptr %c, align 4, !alias.scope !162, !noalias !163, !noundef !15
  %_4.i.i.i.i11 = load i32, ptr %a, align 4, !alias.scope !163, !noalias !162, !noundef !15
  %_0.i12 = icmp slt i32 %_3.i.i.i.i10, %_4.i.i.i.i11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !164)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !167)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !169)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !172)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !174)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !177)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !179)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !182)
  %_3.i.i.i.i13 = load i32, ptr %d, align 4, !alias.scope !184, !noalias !185, !noundef !15
  %_4.i.i.i.i14 = load i32, ptr %b, align 4, !alias.scope !185, !noalias !184, !noundef !15
  %_0.i15 = icmp slt i32 %_3.i.i.i.i13, %_4.i.i.i.i14
  %0 = select i1 %_0.i12, ptr %c, ptr %a, !unpredictable !15
  %1 = select i1 %_0.i15, ptr %c, ptr %b, !unpredictable !15
  %2 = select i1 %_0.i12, ptr %a, ptr %1, !unpredictable !15
  %3 = select i1 %_0.i12, ptr %b, ptr %c, !unpredictable !15
  %4 = select i1 %_0.i15, ptr %d, ptr %3, !unpredictable !15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !189)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !191)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !194)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !196)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !201)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !204)
  %_3.i.i.i.i16 = load i32, ptr %4, align 4, !alias.scope !206, !noalias !207, !noundef !15
  %_4.i.i.i.i17 = load i32, ptr %2, align 4, !alias.scope !207, !noalias !206, !noundef !15
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
define void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17hc4aeee66088b1da7E(ptr noundef readonly captures(none) %v_base, ptr noundef writeonly captures(none) initializes((0, 32)) %dst, ptr noundef captures(address) initializes((0, 32)) %scratch_base, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_7.i = getelementptr inbounds nuw i8, ptr %v_base, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !208)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !211)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !213)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !216)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !218)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !221)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !223)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !226)
  %_3.i.i.i.i.i = load i32, ptr %_7.i, align 4, !alias.scope !228, !noalias !229, !noundef !15
  %_4.i.i.i.i.i = load i32, ptr %v_base, align 4, !alias.scope !229, !noalias !228, !noundef !15
  %_0.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %_12.i = getelementptr inbounds nuw i8, ptr %v_base, i64 12
  %_14.i = getelementptr inbounds nuw i8, ptr %v_base, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !230)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !233)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !235)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !238)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !240)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !243)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !245)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !248)
  %_3.i.i.i.i7.i = load i32, ptr %_12.i, align 4, !alias.scope !250, !noalias !251, !noundef !15
  %_4.i.i.i.i8.i = load i32, ptr %_14.i, align 4, !alias.scope !251, !noalias !250, !noundef !15
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !252)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !255)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !257)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !260)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !262)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !265)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !267)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !270)
  %_3.i.i.i.i10.i = load i32, ptr %c.i, align 4, !alias.scope !272, !noalias !273, !noundef !15
  %_4.i.i.i.i11.i = load i32, ptr %a.i, align 4, !alias.scope !273, !noalias !272, !noundef !15
  %_0.i12.i = icmp slt i32 %_3.i.i.i.i10.i, %_4.i.i.i.i11.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !274)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !277)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !279)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !282)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !284)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !287)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !289)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !292)
  %_3.i.i.i.i13.i = load i32, ptr %d.i, align 4, !alias.scope !294, !noalias !295, !noundef !15
  %_4.i.i.i.i14.i = load i32, ptr %b.i, align 4, !alias.scope !295, !noalias !294, !noundef !15
  %_0.i15.i = icmp slt i32 %_3.i.i.i.i13.i, %_4.i.i.i.i14.i
  %0 = select i1 %_0.i12.i, ptr %c.i, ptr %a.i, !unpredictable !15
  %1 = select i1 %_0.i15.i, ptr %c.i, ptr %b.i, !unpredictable !15
  %2 = select i1 %_0.i12.i, ptr %a.i, ptr %1, !unpredictable !15
  %3 = select i1 %_0.i12.i, ptr %b.i, ptr %c.i, !unpredictable !15
  %4 = select i1 %_0.i15.i, ptr %d.i, ptr %3, !unpredictable !15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !296)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !299)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !301)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !304)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !306)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !309)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !311)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !314)
  %_3.i.i.i.i16.i = load i32, ptr %4, align 4, !alias.scope !316, !noalias !317, !noundef !15
  %_4.i.i.i.i17.i = load i32, ptr %2, align 4, !alias.scope !317, !noalias !316, !noundef !15
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !318)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !321)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !323)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !326)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !328)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !331)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !333)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !336)
  %_3.i.i.i.i.i2 = load i32, ptr %_7.i1, align 4, !alias.scope !338, !noalias !339, !noundef !15
  %_4.i.i.i.i.i3 = load i32, ptr %_9, align 4, !alias.scope !339, !noalias !338, !noundef !15
  %_0.i.i4 = icmp slt i32 %_3.i.i.i.i.i2, %_4.i.i.i.i.i3
  %_12.i5 = getelementptr inbounds nuw i8, ptr %v_base, i64 28
  %_14.i6 = getelementptr inbounds nuw i8, ptr %v_base, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !340)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !343)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !345)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !348)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !350)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !353)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !355)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !358)
  %_3.i.i.i.i7.i7 = load i32, ptr %_12.i5, align 4, !alias.scope !360, !noalias !361, !noundef !15
  %_4.i.i.i.i8.i8 = load i32, ptr %_14.i6, align 4, !alias.scope !361, !noalias !360, !noundef !15
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !362)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !365)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !367)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !370)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !372)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !375)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !377)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !380)
  %_3.i.i.i.i10.i19 = load i32, ptr %c.i16, align 4, !alias.scope !382, !noalias !383, !noundef !15
  %_4.i.i.i.i11.i20 = load i32, ptr %a.i11, align 4, !alias.scope !383, !noalias !382, !noundef !15
  %_0.i12.i21 = icmp slt i32 %_3.i.i.i.i10.i19, %_4.i.i.i.i11.i20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !384)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !387)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !389)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !392)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !394)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !397)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !399)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !402)
  %_3.i.i.i.i13.i22 = load i32, ptr %d.i18, align 4, !alias.scope !404, !noalias !405, !noundef !15
  %_4.i.i.i.i14.i23 = load i32, ptr %b.i14, align 4, !alias.scope !405, !noalias !404, !noundef !15
  %_0.i15.i24 = icmp slt i32 %_3.i.i.i.i13.i22, %_4.i.i.i.i14.i23
  %10 = select i1 %_0.i12.i21, ptr %c.i16, ptr %a.i11, !unpredictable !15
  %11 = select i1 %_0.i15.i24, ptr %c.i16, ptr %b.i14, !unpredictable !15
  %12 = select i1 %_0.i12.i21, ptr %a.i11, ptr %11, !unpredictable !15
  %13 = select i1 %_0.i12.i21, ptr %b.i14, ptr %c.i16, !unpredictable !15
  %14 = select i1 %_0.i15.i24, ptr %d.i18, ptr %13, !unpredictable !15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !406)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !409)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !411)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !414)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !416)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !419)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !421)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !424)
  %_3.i.i.i.i16.i25 = load i32, ptr %14, align 4, !alias.scope !426, !noalias !427, !noundef !15
  %_4.i.i.i.i17.i26 = load i32, ptr %12, align 4, !alias.scope !427, !noalias !426, !noundef !15
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !428)
  %20 = getelementptr i8, ptr %scratch_base, i64 12
  %21 = getelementptr inbounds nuw i8, ptr %scratch_base, i64 28
  %22 = getelementptr inbounds nuw i8, ptr %dst, i64 28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !431)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !434)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !436), !noalias !439
  tail call void @llvm.experimental.noalias.scope.decl(metadata !442), !noalias !439
  tail call void @llvm.experimental.noalias.scope.decl(metadata !444), !noalias !439
  tail call void @llvm.experimental.noalias.scope.decl(metadata !447), !noalias !439
  tail call void @llvm.experimental.noalias.scope.decl(metadata !449), !noalias !439
  tail call void @llvm.experimental.noalias.scope.decl(metadata !452), !noalias !439
  %_3.i.i.i.i.i36 = load i32, ptr %_10, align 4, !alias.scope !454, !noalias !455, !noundef !15
  %_4.i.i.i.i.i37 = load i32, ptr %scratch_base, align 4, !alias.scope !456, !noalias !457, !noundef !15
  %_0.i.i38 = icmp slt i32 %_3.i.i.i.i.i36, %_4.i.i.i.i.i37
  %is_l.i18.i = xor i1 %_0.i.i38, true
  %23 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i36, i32 %_4.i.i.i.i.i37)
  store i32 %23, ptr %dst, align 4, !noalias !458
  %count.i.i = zext i1 %_0.i.i38 to i64
  %_12.i.i = getelementptr inbounds nuw i32, ptr %_10, i64 %count.i.i
  %count2.i.i = zext i1 %is_l.i18.i to i64
  %_14.i.i = getelementptr inbounds nuw i32, ptr %scratch_base, i64 %count2.i.i
  %_16.i.i = getelementptr inbounds nuw i8, ptr %dst, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !460)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !463)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !465), !noalias !468
  tail call void @llvm.experimental.noalias.scope.decl(metadata !471), !noalias !468
  tail call void @llvm.experimental.noalias.scope.decl(metadata !473), !noalias !468
  tail call void @llvm.experimental.noalias.scope.decl(metadata !476), !noalias !468
  tail call void @llvm.experimental.noalias.scope.decl(metadata !478), !noalias !468
  tail call void @llvm.experimental.noalias.scope.decl(metadata !481), !noalias !468
  %_3.i.i.i.i19.i = load i32, ptr %21, align 4, !alias.scope !483, !noalias !484, !noundef !15
  %_4.i.i.i.i20.i = load i32, ptr %20, align 4, !alias.scope !485, !noalias !486, !noundef !15
  %_0.i21.i = icmp slt i32 %_3.i.i.i.i19.i, %_4.i.i.i.i20.i
  %is_l.i.i = xor i1 %_0.i21.i, true
  %24 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19.i, i32 %_4.i.i.i.i20.i)
  store i32 %24, ptr %22, align 4, !noalias !487
  %count.neg.i.i = sext i1 %is_l.i.i to i64
  %25 = getelementptr i32, ptr %21, i64 %count.neg.i.i
  %count3.neg.i.i = sext i1 %_0.i21.i to i64
  %26 = getelementptr i32, ptr %20, i64 %count3.neg.i.i
  %27 = getelementptr inbounds nuw i8, ptr %dst, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !489)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !491)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !493), !noalias !439
  tail call void @llvm.experimental.noalias.scope.decl(metadata !495), !noalias !439
  tail call void @llvm.experimental.noalias.scope.decl(metadata !497), !noalias !439
  tail call void @llvm.experimental.noalias.scope.decl(metadata !499), !noalias !439
  tail call void @llvm.experimental.noalias.scope.decl(metadata !501), !noalias !439
  tail call void @llvm.experimental.noalias.scope.decl(metadata !503), !noalias !439
  %_3.i.i.i.i.i36.1 = load i32, ptr %_12.i.i, align 4, !alias.scope !505, !noalias !506, !noundef !15
  %_4.i.i.i.i.i37.1 = load i32, ptr %_14.i.i, align 4, !alias.scope !507, !noalias !508, !noundef !15
  %_0.i.i38.1 = icmp slt i32 %_3.i.i.i.i.i36.1, %_4.i.i.i.i.i37.1
  %is_l.i18.i.1 = xor i1 %_0.i.i38.1, true
  %28 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i36.1, i32 %_4.i.i.i.i.i37.1)
  store i32 %28, ptr %_16.i.i, align 4, !noalias !458
  %count.i.i.1 = zext i1 %_0.i.i38.1 to i64
  %_12.i.i.1 = getelementptr inbounds nuw i32, ptr %_12.i.i, i64 %count.i.i.1
  %count2.i.i.1 = zext i1 %is_l.i18.i.1 to i64
  %_14.i.i.1 = getelementptr inbounds nuw i32, ptr %_14.i.i, i64 %count2.i.i.1
  %_16.i.i.1 = getelementptr inbounds nuw i8, ptr %dst, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !509)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !511)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !513), !noalias !468
  tail call void @llvm.experimental.noalias.scope.decl(metadata !515), !noalias !468
  tail call void @llvm.experimental.noalias.scope.decl(metadata !517), !noalias !468
  tail call void @llvm.experimental.noalias.scope.decl(metadata !519), !noalias !468
  tail call void @llvm.experimental.noalias.scope.decl(metadata !521), !noalias !468
  tail call void @llvm.experimental.noalias.scope.decl(metadata !523), !noalias !468
  %_3.i.i.i.i19.i.1 = load i32, ptr %25, align 4, !alias.scope !525, !noalias !526, !noundef !15
  %_4.i.i.i.i20.i.1 = load i32, ptr %26, align 4, !alias.scope !527, !noalias !528, !noundef !15
  %_0.i21.i.1 = icmp slt i32 %_3.i.i.i.i19.i.1, %_4.i.i.i.i20.i.1
  %is_l.i.i.1 = xor i1 %_0.i21.i.1, true
  %29 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19.i.1, i32 %_4.i.i.i.i20.i.1)
  store i32 %29, ptr %27, align 4, !noalias !487
  %count.neg.i.i.1 = sext i1 %is_l.i.i.1 to i64
  %30 = getelementptr i32, ptr %25, i64 %count.neg.i.i.1
  %count3.neg.i.i.1 = sext i1 %_0.i21.i.1 to i64
  %31 = getelementptr i32, ptr %26, i64 %count3.neg.i.i.1
  %32 = getelementptr inbounds nuw i8, ptr %dst, i64 20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !529)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !531)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !533), !noalias !439
  tail call void @llvm.experimental.noalias.scope.decl(metadata !535), !noalias !439
  tail call void @llvm.experimental.noalias.scope.decl(metadata !537), !noalias !439
  tail call void @llvm.experimental.noalias.scope.decl(metadata !539), !noalias !439
  tail call void @llvm.experimental.noalias.scope.decl(metadata !541), !noalias !439
  tail call void @llvm.experimental.noalias.scope.decl(metadata !543), !noalias !439
  %_3.i.i.i.i.i36.2 = load i32, ptr %_12.i.i.1, align 4, !alias.scope !545, !noalias !546, !noundef !15
  %_4.i.i.i.i.i37.2 = load i32, ptr %_14.i.i.1, align 4, !alias.scope !547, !noalias !548, !noundef !15
  %_0.i.i38.2 = icmp slt i32 %_3.i.i.i.i.i36.2, %_4.i.i.i.i.i37.2
  %is_l.i18.i.2 = xor i1 %_0.i.i38.2, true
  %33 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i36.2, i32 %_4.i.i.i.i.i37.2)
  store i32 %33, ptr %_16.i.i.1, align 4, !noalias !458
  %count.i.i.2 = zext i1 %_0.i.i38.2 to i64
  %_12.i.i.2 = getelementptr inbounds nuw i32, ptr %_12.i.i.1, i64 %count.i.i.2
  %count2.i.i.2 = zext i1 %is_l.i18.i.2 to i64
  %_14.i.i.2 = getelementptr inbounds nuw i32, ptr %_14.i.i.1, i64 %count2.i.i.2
  %_16.i.i.2 = getelementptr inbounds nuw i8, ptr %dst, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !549)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !551)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !553), !noalias !468
  tail call void @llvm.experimental.noalias.scope.decl(metadata !555), !noalias !468
  tail call void @llvm.experimental.noalias.scope.decl(metadata !557), !noalias !468
  tail call void @llvm.experimental.noalias.scope.decl(metadata !559), !noalias !468
  tail call void @llvm.experimental.noalias.scope.decl(metadata !561), !noalias !468
  tail call void @llvm.experimental.noalias.scope.decl(metadata !563), !noalias !468
  %_3.i.i.i.i19.i.2 = load i32, ptr %30, align 4, !alias.scope !565, !noalias !566, !noundef !15
  %_4.i.i.i.i20.i.2 = load i32, ptr %31, align 4, !alias.scope !567, !noalias !568, !noundef !15
  %_0.i21.i.2 = icmp slt i32 %_3.i.i.i.i19.i.2, %_4.i.i.i.i20.i.2
  %is_l.i.i.2 = xor i1 %_0.i21.i.2, true
  %34 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19.i.2, i32 %_4.i.i.i.i20.i.2)
  store i32 %34, ptr %32, align 4, !noalias !487
  %count.neg.i.i.2 = sext i1 %is_l.i.i.2 to i64
  %35 = getelementptr i32, ptr %30, i64 %count.neg.i.i.2
  %count3.neg.i.i.2 = sext i1 %_0.i21.i.2 to i64
  %36 = getelementptr i32, ptr %31, i64 %count3.neg.i.i.2
  %37 = getelementptr inbounds nuw i8, ptr %dst, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !569)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !571)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !573), !noalias !439
  tail call void @llvm.experimental.noalias.scope.decl(metadata !575), !noalias !439
  tail call void @llvm.experimental.noalias.scope.decl(metadata !577), !noalias !439
  tail call void @llvm.experimental.noalias.scope.decl(metadata !579), !noalias !439
  tail call void @llvm.experimental.noalias.scope.decl(metadata !581), !noalias !439
  tail call void @llvm.experimental.noalias.scope.decl(metadata !583), !noalias !439
  %_3.i.i.i.i.i36.3 = load i32, ptr %_12.i.i.2, align 4, !alias.scope !585, !noalias !586, !noundef !15
  %_4.i.i.i.i.i37.3 = load i32, ptr %_14.i.i.2, align 4, !alias.scope !587, !noalias !588, !noundef !15
  %_0.i.i38.3 = icmp slt i32 %_3.i.i.i.i.i36.3, %_4.i.i.i.i.i37.3
  %is_l.i18.i.3 = xor i1 %_0.i.i38.3, true
  %38 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i36.3, i32 %_4.i.i.i.i.i37.3)
  store i32 %38, ptr %_16.i.i.2, align 4, !noalias !458
  %count.i.i.3 = zext i1 %_0.i.i38.3 to i64
  %_12.i.i.3 = getelementptr inbounds nuw i32, ptr %_12.i.i.2, i64 %count.i.i.3
  %count2.i.i.3 = zext i1 %is_l.i18.i.3 to i64
  %_14.i.i.3 = getelementptr inbounds nuw i32, ptr %_14.i.i.2, i64 %count2.i.i.3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !589)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !591)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !593), !noalias !468
  tail call void @llvm.experimental.noalias.scope.decl(metadata !595), !noalias !468
  tail call void @llvm.experimental.noalias.scope.decl(metadata !597), !noalias !468
  tail call void @llvm.experimental.noalias.scope.decl(metadata !599), !noalias !468
  tail call void @llvm.experimental.noalias.scope.decl(metadata !601), !noalias !468
  tail call void @llvm.experimental.noalias.scope.decl(metadata !603), !noalias !468
  %_3.i.i.i.i19.i.3 = load i32, ptr %35, align 4, !alias.scope !605, !noalias !606, !noundef !15
  %_4.i.i.i.i20.i.3 = load i32, ptr %36, align 4, !alias.scope !607, !noalias !608, !noundef !15
  %_0.i21.i.3 = icmp slt i32 %_3.i.i.i.i19.i.3, %_4.i.i.i.i20.i.3
  %is_l.i.i.3 = xor i1 %_0.i21.i.3, true
  %39 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19.i.3, i32 %_4.i.i.i.i20.i.3)
  store i32 %39, ptr %37, align 4, !noalias !487
  %count.neg.i.i.3 = sext i1 %is_l.i.i.3 to i64
  %40 = getelementptr i32, ptr %35, i64 %count.neg.i.i.3
  %count3.neg.i.i.3 = sext i1 %_0.i21.i.3 to i64
  %41 = getelementptr i32, ptr %36, i64 %count3.neg.i.i.3
  %42 = getelementptr i8, ptr %41, i64 4
  %43 = getelementptr i8, ptr %40, i64 4
  %_31.i = icmp ne ptr %_14.i.i.3, %42
  %_32.i = icmp ne ptr %_12.i.i.3, %43
  %or.cond.i = select i1 %_31.i, i1 true, i1 %_32.i
  br i1 %or.cond.i, label %bb13.i, label %_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h7d0a3015f778e7baE.exit, !prof !609

bb13.i:                                           ; preds = %start
; call core::slice::sort::shared::smallsort::panic_on_ord_violation
  tail call void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #27, !noalias !428
  unreachable

_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h7d0a3015f778e7baE.exit: ; preds = %start
  ret void
}

; core::slice::sort::shared::smallsort::bidirectional_merge
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h7d0a3015f778e7baE(ptr noalias noundef nonnull readonly align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noundef writeonly captures(none) %0, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #1 {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !610)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !613)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !615), !noalias !618
  tail call void @llvm.experimental.noalias.scope.decl(metadata !621), !noalias !618
  tail call void @llvm.experimental.noalias.scope.decl(metadata !623), !noalias !618
  tail call void @llvm.experimental.noalias.scope.decl(metadata !626), !noalias !618
  tail call void @llvm.experimental.noalias.scope.decl(metadata !628), !noalias !618
  tail call void @llvm.experimental.noalias.scope.decl(metadata !631), !noalias !618
  %_3.i.i.i.i = load i32, ptr %right.sroa.0.026, align 4, !alias.scope !633, !noalias !634, !noundef !15
  %_4.i.i.i.i = load i32, ptr %left.sroa.0.027, align 4, !alias.scope !635, !noalias !636, !noundef !15
  %_0.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %is_l.i18 = xor i1 %_0.i, true
  %7 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i, i32 %_4.i.i.i.i)
  store i32 %7, ptr %dst.sroa.0.029, align 4, !noalias !637
  %count.i = zext i1 %_0.i to i64
  %_12.i = getelementptr inbounds nuw i32, ptr %right.sroa.0.026, i64 %count.i
  %count2.i = zext i1 %is_l.i18 to i64
  %_14.i = getelementptr inbounds nuw i32, ptr %left.sroa.0.027, i64 %count2.i
  %_16.i = getelementptr inbounds nuw i8, ptr %dst.sroa.0.029, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !639)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !642)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !644), !noalias !647
  tail call void @llvm.experimental.noalias.scope.decl(metadata !650), !noalias !647
  tail call void @llvm.experimental.noalias.scope.decl(metadata !652), !noalias !647
  tail call void @llvm.experimental.noalias.scope.decl(metadata !655), !noalias !647
  tail call void @llvm.experimental.noalias.scope.decl(metadata !657), !noalias !647
  tail call void @llvm.experimental.noalias.scope.decl(metadata !660), !noalias !647
  %_3.i.i.i.i19 = load i32, ptr %right_rev.sroa.0.024, align 4, !alias.scope !662, !noalias !663, !noundef !15
  %_4.i.i.i.i20 = load i32, ptr %left_rev.sroa.0.025, align 4, !alias.scope !664, !noalias !665, !noundef !15
  %_0.i21 = icmp slt i32 %_3.i.i.i.i19, %_4.i.i.i.i20
  %is_l.i = xor i1 %_0.i21, true
  %8 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19, i32 %_4.i.i.i.i20)
  store i32 %8, ptr %dst_rev.sroa.0.023, align 4, !noalias !666
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
  br i1 %or.cond, label %bb13, label %bb14, !prof !609

bb14:                                             ; preds = %bb9
  ret void

bb13:                                             ; preds = %bb9
; call core::slice::sort::shared::smallsort::panic_on_ord_violation
  tail call void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #27
  unreachable
}

; core::slice::sort::shared::smallsort::insertion_sort_shift_left
; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h1895662c7be8a561E(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, i64 noundef %offset, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #4 personality ptr @rust_eh_personality {
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

bb7:                                              ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h588aa6ef78889c18E.exit, %bb3
  ret void

bb5:                                              ; preds = %bb5.preheader, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h588aa6ef78889c18E.exit
  %tail.sroa.0.02 = phi ptr [ %_15, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h588aa6ef78889c18E.exit ], [ %1, %bb5.preheader ]
  %2 = getelementptr inbounds i8, ptr %tail.sroa.0.02, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !668)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !671)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !673)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !676)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !678)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !681)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !683)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !686)
  %_3.i.i.i.i.i = load i32, ptr %tail.sroa.0.02, align 4, !alias.scope !688, !noalias !689, !noundef !15
  %_4.i.i.i.i.i = load i32, ptr %2, align 4, !alias.scope !689, !noalias !688, !noundef !15
  %_0.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  br i1 %_0.i.i, label %bb4.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h588aa6ef78889c18E.exit

bb4.i:                                            ; preds = %bb5, %bb6.i
  %gap_guard.sroa.5.0.i = phi ptr [ %sift.sroa.0.0.i, %bb6.i ], [ %tail.sroa.0.02, %bb5 ]
  %sift.sroa.0.0.i = phi ptr [ %4, %bb6.i ], [ %2, %bb5 ]
  %3 = load i32, ptr %sift.sroa.0.0.i, align 4
  store i32 %3, ptr %gap_guard.sroa.5.0.i, align 4
  %_18.i = icmp eq ptr %sift.sroa.0.0.i, %v.0
  br i1 %_18.i, label %bb10.i, label %bb6.i

bb6.i:                                            ; preds = %bb4.i
  %4 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i, i64 -4
  %_4.i.i.i.i2.i = load i32, ptr %4, align 4, !alias.scope !690, !noalias !699, !noundef !15
  %_0.i3.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i2.i
  br i1 %_0.i3.i, label %bb4.i, label %bb10.i

bb10.i:                                           ; preds = %bb6.i, %bb4.i
  store i32 %_3.i.i.i.i.i, ptr %sift.sroa.0.0.i, align 4, !noalias !704
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h588aa6ef78889c18E.exit

_ZN4core5slice4sort6shared9smallsort11insert_tail17h588aa6ef78889c18E.exit: ; preds = %bb5, %bb10.i
  %_15 = getelementptr inbounds nuw i8, ptr %tail.sroa.0.02, i64 4
  %_11.not = icmp eq ptr %_15, %v_end
  br i1 %_11.not, label %bb7, label %bb5
}

; core::slice::sort::shared::smallsort::small_sort_general_with_scratch
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h007c383c673fc2a5E(ptr noalias noundef nonnull align 4 captures(none) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 captures(address) %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #1 personality ptr @rust_eh_personality {
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
  tail call void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17hc4aeee66088b1da7E(ptr noundef nonnull %v.0, ptr noundef nonnull %scratch.0, ptr noundef nonnull %_16, ptr noalias align 8 poison)
  %_18 = getelementptr inbounds nuw i32, ptr %v.0, i64 %len_div_211
  %_19 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211
  %_20 = getelementptr inbounds nuw i8, ptr %_16, i64 32
; call core::slice::sort::shared::smallsort::sort8_stable
  tail call void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17hc4aeee66088b1da7E(ptr noundef nonnull %_18, ptr noundef nonnull %_19, ptr noundef nonnull %_20, ptr noalias align 8 poison)
  br label %bb15

bb10:                                             ; preds = %bb9
  %_7.i = getelementptr inbounds nuw i8, ptr %v.0, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !709)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !712)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !714)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !717)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !719)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !722)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !724)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !727)
  %_3.i.i.i.i.i = load i32, ptr %_7.i, align 4, !alias.scope !729, !noalias !730, !noundef !15
  %_4.i.i.i.i.i = load i32, ptr %v.0, align 4, !alias.scope !730, !noalias !729, !noundef !15
  %_0.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %_12.i = getelementptr inbounds nuw i8, ptr %v.0, i64 12
  %_14.i = getelementptr inbounds nuw i8, ptr %v.0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !731)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !734)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !736)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !739)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !741)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !744)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !746)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !749)
  %_3.i.i.i.i7.i = load i32, ptr %_12.i, align 4, !alias.scope !751, !noalias !752, !noundef !15
  %_4.i.i.i.i8.i = load i32, ptr %_14.i, align 4, !alias.scope !752, !noalias !751, !noundef !15
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !753)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !756)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !758)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !761)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !763)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !766)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !768)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !771)
  %_3.i.i.i.i10.i = load i32, ptr %c.i, align 4, !alias.scope !773, !noalias !774, !noundef !15
  %_4.i.i.i.i11.i = load i32, ptr %a.i, align 4, !alias.scope !774, !noalias !773, !noundef !15
  %_0.i12.i = icmp slt i32 %_3.i.i.i.i10.i, %_4.i.i.i.i11.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !775)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !778)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !780)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !783)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !785)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !788)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !790)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !793)
  %_3.i.i.i.i13.i = load i32, ptr %d.i, align 4, !alias.scope !795, !noalias !796, !noundef !15
  %_4.i.i.i.i14.i = load i32, ptr %b.i, align 4, !alias.scope !796, !noalias !795, !noundef !15
  %_0.i15.i = icmp slt i32 %_3.i.i.i.i13.i, %_4.i.i.i.i14.i
  %0 = select i1 %_0.i12.i, ptr %c.i, ptr %a.i, !unpredictable !15
  %1 = select i1 %_0.i15.i, ptr %c.i, ptr %b.i, !unpredictable !15
  %2 = select i1 %_0.i12.i, ptr %a.i, ptr %1, !unpredictable !15
  %3 = select i1 %_0.i12.i, ptr %b.i, ptr %c.i, !unpredictable !15
  %4 = select i1 %_0.i15.i, ptr %d.i, ptr %3, !unpredictable !15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !797)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !800)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !802)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !805)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !807)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !810)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !812)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !815)
  %_3.i.i.i.i16.i = load i32, ptr %4, align 4, !alias.scope !817, !noalias !818, !noundef !15
  %_4.i.i.i.i17.i = load i32, ptr %2, align 4, !alias.scope !818, !noalias !817, !noundef !15
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !819)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !822)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !824)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !827)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !829)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !832)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !834)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !837)
  %_3.i.i.i.i.i14 = load i32, ptr %_7.i13, align 4, !alias.scope !839, !noalias !840, !noundef !15
  %_4.i.i.i.i.i15 = load i32, ptr %_27, align 4, !alias.scope !840, !noalias !839, !noundef !15
  %_0.i.i16 = icmp slt i32 %_3.i.i.i.i.i14, %_4.i.i.i.i.i15
  %_12.i17 = getelementptr inbounds nuw i8, ptr %_27, i64 12
  %_14.i18 = getelementptr inbounds nuw i8, ptr %_27, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !841)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !844)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !846)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !849)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !851)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !854)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !856)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !859)
  %_3.i.i.i.i7.i19 = load i32, ptr %_12.i17, align 4, !alias.scope !861, !noalias !862, !noundef !15
  %_4.i.i.i.i8.i20 = load i32, ptr %_14.i18, align 4, !alias.scope !862, !noalias !861, !noundef !15
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !863)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !866)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !868)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !871)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !873)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !876)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !878)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !881)
  %_3.i.i.i.i10.i31 = load i32, ptr %c.i28, align 4, !alias.scope !883, !noalias !884, !noundef !15
  %_4.i.i.i.i11.i32 = load i32, ptr %a.i23, align 4, !alias.scope !884, !noalias !883, !noundef !15
  %_0.i12.i33 = icmp slt i32 %_3.i.i.i.i10.i31, %_4.i.i.i.i11.i32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !885)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !888)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !890)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !893)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !895)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !898)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !900)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !903)
  %_3.i.i.i.i13.i34 = load i32, ptr %d.i30, align 4, !alias.scope !905, !noalias !906, !noundef !15
  %_4.i.i.i.i14.i35 = load i32, ptr %b.i26, align 4, !alias.scope !906, !noalias !905, !noundef !15
  %_0.i15.i36 = icmp slt i32 %_3.i.i.i.i13.i34, %_4.i.i.i.i14.i35
  %10 = select i1 %_0.i12.i33, ptr %c.i28, ptr %a.i23, !unpredictable !15
  %11 = select i1 %_0.i15.i36, ptr %c.i28, ptr %b.i26, !unpredictable !15
  %12 = select i1 %_0.i12.i33, ptr %a.i23, ptr %11, !unpredictable !15
  %13 = select i1 %_0.i12.i33, ptr %b.i26, ptr %c.i28, !unpredictable !15
  %14 = select i1 %_0.i15.i36, ptr %d.i30, ptr %13, !unpredictable !15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !907)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !910)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !912)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !915)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !917)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !920)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !922)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !925)
  %_3.i.i.i.i16.i37 = load i32, ptr %14, align 4, !alias.scope !927, !noalias !928, !noundef !15
  %_4.i.i.i.i17.i38 = load i32, ptr %12, align 4, !alias.scope !928, !noalias !927, !noundef !15
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
  br i1 %_5.not.i.not, label %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h0b441c192c3cf966E.exit", label %bb1.i

bb1.i:                                            ; preds = %bb16
  %_11.i = add nuw nsw i64 %24, 1
  store i64 %_11.i, ptr %iter, align 8, !alias.scope !929
  %_20.i = icmp ult i64 %24, 2
  tail call void @llvm.assume(i1 %_20.i)
  %self3.i = getelementptr inbounds nuw i64, ptr %_37.sroa.5.0.iter.sroa_idx, i64 %24
  %_15.i = load i64, ptr %self3.i, align 8, !alias.scope !929, !noundef !15
  br label %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h0b441c192c3cf966E.exit"

"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h0b441c192c3cf966E.exit": ; preds = %bb16, %bb1.i
  %25 = phi i64 [ %_11.i, %bb1.i ], [ %24, %bb16 ]
  %_0.sroa.3.0.i = phi i64 [ %_15.i, %bb1.i ], [ undef, %bb16 ]
  br i1 %_5.not.i.not, label %bb19, label %bb18

bb18:                                             ; preds = %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h0b441c192c3cf966E.exit"
  %src5 = getelementptr inbounds nuw i32, ptr %v.0, i64 %_0.sroa.3.0.i
  %dst6 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %_0.sroa.3.0.i
  %_47 = icmp eq i64 %_0.sroa.3.0.i, 0
  %desired_len.sroa.0.0 = select i1 %_47, i64 %len_div_211, i64 %23
  %_8059 = icmp ult i64 %presorted_len.sroa.0.0, %desired_len.sroa.0.0
  br i1 %_8059, label %bb24, label %bb16.backedge

bb16.backedge:                                    ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h588aa6ef78889c18E.exit, %bb18
  br label %bb16

bb19:                                             ; preds = %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h0b441c192c3cf966E.exit"
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %iter)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !932)
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !935)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !938)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !940), !noalias !943
  tail call void @llvm.experimental.noalias.scope.decl(metadata !946), !noalias !943
  tail call void @llvm.experimental.noalias.scope.decl(metadata !948), !noalias !943
  tail call void @llvm.experimental.noalias.scope.decl(metadata !951), !noalias !943
  tail call void @llvm.experimental.noalias.scope.decl(metadata !953), !noalias !943
  tail call void @llvm.experimental.noalias.scope.decl(metadata !956), !noalias !943
  %_3.i.i.i.i.i49 = load i32, ptr %right.sroa.0.026.i, align 4, !alias.scope !958, !noalias !959, !noundef !15
  %_4.i.i.i.i.i50 = load i32, ptr %left.sroa.0.027.i, align 4, !alias.scope !960, !noalias !961, !noundef !15
  %_0.i.i51 = icmp slt i32 %_3.i.i.i.i.i49, %_4.i.i.i.i.i50
  %is_l.i18.i = xor i1 %_0.i.i51, true
  %32 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i49, i32 %_4.i.i.i.i.i50)
  store i32 %32, ptr %dst.sroa.0.029.i, align 4, !noalias !962
  %count.i.i = zext i1 %_0.i.i51 to i64
  %_12.i.i = getelementptr inbounds nuw i32, ptr %right.sroa.0.026.i, i64 %count.i.i
  %count2.i.i = zext i1 %is_l.i18.i to i64
  %_14.i.i = getelementptr inbounds nuw i32, ptr %left.sroa.0.027.i, i64 %count2.i.i
  %_16.i.i = getelementptr inbounds nuw i8, ptr %dst.sroa.0.029.i, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !964)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !967)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !969), !noalias !972
  tail call void @llvm.experimental.noalias.scope.decl(metadata !975), !noalias !972
  tail call void @llvm.experimental.noalias.scope.decl(metadata !977), !noalias !972
  tail call void @llvm.experimental.noalias.scope.decl(metadata !980), !noalias !972
  tail call void @llvm.experimental.noalias.scope.decl(metadata !982), !noalias !972
  tail call void @llvm.experimental.noalias.scope.decl(metadata !985), !noalias !972
  %_3.i.i.i.i19.i = load i32, ptr %right_rev.sroa.0.024.i, align 4, !alias.scope !987, !noalias !988, !noundef !15
  %_4.i.i.i.i20.i = load i32, ptr %left_rev.sroa.0.025.i, align 4, !alias.scope !989, !noalias !990, !noundef !15
  %_0.i21.i = icmp slt i32 %_3.i.i.i.i19.i, %_4.i.i.i.i20.i
  %is_l.i.i = xor i1 %_0.i21.i, true
  %33 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19.i, i32 %_4.i.i.i.i20.i)
  store i32 %33, ptr %dst_rev.sroa.0.023.i, align 4, !noalias !991
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
  %37 = load i32, ptr %left.sroa.0.0.right.sroa.0.0.i, align 4, !alias.scope !932
  store i32 %37, ptr %_16.i.i, align 4, !noalias !932
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
  br i1 %or.cond.i, label %bb13.i, label %bb29, !prof !609

bb13.i:                                           ; preds = %bb9.i
; invoke core::slice::sort::shared::smallsort::panic_on_ord_violation
  invoke void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #27
          to label %.noexc unwind label %cleanup2

.noexc:                                           ; preds = %bb13.i
  unreachable

cleanup2:                                         ; preds = %bb13.i
  %38 = landingpad { ptr, i32 }
          cleanup
  %39 = shl nuw nsw i64 %v.1, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.0, ptr nonnull align 4 %scratch.0, i64 %39, i1 false), !noalias !993
  resume { ptr, i32 } %38

bb29:                                             ; preds = %bb9.i, %start
  ret void

bb24:                                             ; preds = %bb18, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h588aa6ef78889c18E.exit
  %iter1.sroa.0.163 = phi i64 [ %iter1.sroa.0.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h588aa6ef78889c18E.exit ], [ %iter1.sroa.0.161, %bb18 ]
  %iter1.sroa.0.062 = phi i64 [ %iter1.sroa.0.163, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h588aa6ef78889c18E.exit ], [ %presorted_len.sroa.0.0, %bb18 ]
  %_55 = getelementptr inbounds nuw i32, ptr %src5, i64 %iter1.sroa.0.062
  %dst7 = getelementptr inbounds nuw i32, ptr %dst6, i64 %iter1.sroa.0.062
  %40 = load i32, ptr %_55, align 4
  store i32 %40, ptr %dst7, align 4
  %41 = getelementptr inbounds i8, ptr %dst7, i64 -4
  %_4.i.i.i.i.i56 = load i32, ptr %41, align 4, !alias.scope !998, !noalias !1007, !noundef !15
  %_0.i.i57 = icmp slt i32 %40, %_4.i.i.i.i.i56
  br i1 %_0.i.i57, label %bb4.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h588aa6ef78889c18E.exit

bb4.i:                                            ; preds = %bb24, %bb6.i
  %gap_guard.sroa.5.0.i = phi ptr [ %sift.sroa.0.0.i, %bb6.i ], [ %dst7, %bb24 ]
  %sift.sroa.0.0.i = phi ptr [ %43, %bb6.i ], [ %41, %bb24 ]
  %42 = load i32, ptr %sift.sroa.0.0.i, align 4
  store i32 %42, ptr %gap_guard.sroa.5.0.i, align 4
  %_18.i = icmp eq ptr %sift.sroa.0.0.i, %dst6
  br i1 %_18.i, label %bb10.i, label %bb6.i

bb6.i:                                            ; preds = %bb4.i
  %43 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i, i64 -4
  %_4.i.i.i.i2.i = load i32, ptr %43, align 4, !alias.scope !1012, !noalias !1021, !noundef !15
  %_0.i3.i = icmp slt i32 %40, %_4.i.i.i.i2.i
  br i1 %_0.i3.i, label %bb4.i, label %bb10.i

bb10.i:                                           ; preds = %bb6.i, %bb4.i
  store i32 %40, ptr %sift.sroa.0.0.i, align 4, !noalias !1026
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h588aa6ef78889c18E.exit

_ZN4core5slice4sort6shared9smallsort11insert_tail17h588aa6ef78889c18E.exit: ; preds = %bb24, %bb10.i
  %_80 = icmp ult i64 %iter1.sroa.0.163, %desired_len.sroa.0.0
  %_84 = zext i1 %_80 to i64
  %iter1.sroa.0.1 = add nuw i64 %iter1.sroa.0.163, %_84
  br i1 %_80, label %bb24, label %bb16.backedge
}

; core::slice::sort::stable::driftsort_main
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable14driftsort_main17h304f1a5e493b4936E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #5 personality ptr @rust_eh_personality {
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
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4.i.i), !noalias !1031
; invoke alloc::raw_vec::RawVecInner<A>::try_allocate_in
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_4.i.i, i64 noundef %_0.sroa.0.0.i7, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %bb4
  %_5.i.i = load i64, ptr %_4.i.i, align 8, !range !1034, !noalias !1031, !noundef !15
  %0 = trunc nuw i64 %_5.i.i to i1
  %1 = getelementptr inbounds nuw i8, ptr %_4.i.i, i64 8
  %err.0.i.i = load i64, ptr %1, align 8, !range !1035, !noalias !1031, !noundef !15
  %2 = getelementptr inbounds nuw i8, ptr %_4.i.i, i64 16
  br i1 %0, label %bb3.i.i, label %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h72ada26c27c7a805E.exit", !prof !1036

bb3.i.i:                                          ; preds = %.noexc
  %err.1.i.i = load i64, ptr %2, align 8, !noalias !1031
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #28
          to label %.noexc8 unwind label %cleanup

.noexc8:                                          ; preds = %bb3.i.i
  unreachable

"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h72ada26c27c7a805E.exit": ; preds = %.noexc
  %this.1.i.i = load ptr, ptr %2, align 8, !noalias !1031, !nonnull !15, !noundef !15
  %_7.i.i = icmp ule i64 %_0.sroa.0.0.i7, %err.0.i.i
  tail call void @llvm.assume(i1 %_7.i.i)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4.i.i), !noalias !1031
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

bb8:                                              ; preds = %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h72ada26c27c7a805E.exit", %start
  %_24.sroa.0.1 = phi i8 [ 0, %start ], [ 1, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h72ada26c27c7a805E.exit" ]
  %stack_scratch.sroa.4.0 = phi i64 [ 1024, %start ], [ %err.0.i.i, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h72ada26c27c7a805E.exit" ]
  %stack_buf.pn = phi ptr [ %stack_buf, %start ], [ %this.1.i.i, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h72ada26c27c7a805E.exit" ]
  %eager_sort = icmp samesign ult i64 %v.1, 65
; invoke core::slice::sort::stable::drift::sort
  invoke void @_ZN4core5slice4sort6stable5drift4sort17h8d0e282ba82b466cE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 4 %stack_buf.pn, i64 noundef %stack_scratch.sroa.4.0, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #26
  unreachable
}

; core::slice::sort::stable::AlignedStorage<T,_>::as_uninit_slice_mut
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, i64 } @"_ZN4core5slice4sort6stable27AlignedStorage$LT$T$C$_$GT$19as_uninit_slice_mut17hcbc57567c8452073E"(ptr noalias noundef align 4 dereferenceable(4096) %self) unnamed_addr #6 {
start:
  %0 = insertvalue { ptr, i64 } poison, ptr %self, 0
  %1 = insertvalue { ptr, i64 } %0, i64 1024, 1
  ret { ptr, i64 } %1
}

; core::slice::sort::stable::drift::create_run
; Function Attrs: nonlazybind uwtable
define noundef range(i64 0, -1) i64 @_ZN4core5slice4sort6stable5drift10create_run17h5c6077362c854cfcE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %min_good_run_len, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_7.not = icmp ult i64 %v.1, %min_good_run_len
  br i1 %_7.not, label %bb7, label %bb1

bb7:                                              ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hc719b66955afa84eE.exit, %start
  br i1 %eager_sort, label %bb8, label %bb11

bb1:                                              ; preds = %start
  %_4.i = icmp samesign ult i64 %v.1, 2
  br i1 %_4.i, label %_ZN4core5slice4sort6shared17find_existing_run17hc719b66955afa84eE.exit, label %bb2.i

bb2.i:                                            ; preds = %bb1
  %_28.i = getelementptr inbounds nuw i8, ptr %v.0, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1037)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1040)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1042)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1045)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1047)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1050)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1052)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1055)
  %_3.i.i.i.i = load i32, ptr %_28.i, align 4, !alias.scope !1057, !noalias !1058, !noundef !15
  %_4.i.i.i.i = load i32, ptr %v.0, align 4, !alias.scope !1058, !noalias !1057, !noundef !15
  %_0.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %_10.i13.not = icmp eq i64 %v.1, 2
  br i1 %_0.i, label %bb4.i.preheader, label %bb11.i.preheader

bb11.i.preheader:                                 ; preds = %bb2.i
  br i1 %_10.i13.not, label %_ZN4core5slice4sort6shared17find_existing_run17hc719b66955afa84eE.exit, label %bb12.i.preheader

bb12.i.preheader:                                 ; preds = %bb11.i.preheader
  %invariant.gep = getelementptr i8, ptr %v.0, i64 -4
  br label %bb12.i

bb4.i.preheader:                                  ; preds = %bb2.i
  br i1 %_10.i13.not, label %_ZN4core5slice4sort6shared17find_existing_run17hc719b66955afa84eE.exit, label %bb5.i.preheader

bb5.i.preheader:                                  ; preds = %bb4.i.preheader
  %invariant.gep24 = getelementptr i8, ptr %v.0, i64 -4
  br label %bb5.i

bb12.i:                                           ; preds = %bb12.i.preheader, %bb15.i
  %run_len.sroa.0.0.i11 = phi i64 [ %1, %bb15.i ], [ 2, %bb12.i.preheader ]
  %0 = getelementptr inbounds nuw i32, ptr %v.0, i64 %run_len.sroa.0.0.i11
  %gep = getelementptr i32, ptr %invariant.gep, i64 %run_len.sroa.0.0.i11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1059)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1062)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1064)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1067)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1069)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1072)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1074)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1077)
  %_3.i.i.i.i1 = load i32, ptr %0, align 4, !alias.scope !1079, !noalias !1080, !noundef !15
  %_4.i.i.i.i2 = load i32, ptr %gep, align 4, !alias.scope !1080, !noalias !1079, !noundef !15
  %_0.i3 = icmp slt i32 %_3.i.i.i.i1, %_4.i.i.i.i2
  br i1 %_0.i3, label %_ZN4core5slice4sort6shared17find_existing_run17hc719b66955afa84eE.exit, label %bb15.i

bb15.i:                                           ; preds = %bb12.i
  %1 = add nuw nsw i64 %run_len.sroa.0.0.i11, 1
  %exitcond.not = icmp eq i64 %1, %v.1
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17hc719b66955afa84eE.exit, label %bb12.i

bb5.i:                                            ; preds = %bb5.i.preheader, %bb7.i
  %run_len.sroa.0.1.i14 = phi i64 [ %3, %bb7.i ], [ 2, %bb5.i.preheader ]
  %2 = getelementptr inbounds nuw i32, ptr %v.0, i64 %run_len.sroa.0.1.i14
  %gep25 = getelementptr i32, ptr %invariant.gep24, i64 %run_len.sroa.0.1.i14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1081)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1084)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1086)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1089)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1091)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1094)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1096)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1099)
  %_3.i.i.i.i4 = load i32, ptr %2, align 4, !alias.scope !1101, !noalias !1102, !noundef !15
  %_4.i.i.i.i5 = load i32, ptr %gep25, align 4, !alias.scope !1102, !noalias !1101, !noundef !15
  %_0.i6 = icmp slt i32 %_3.i.i.i.i4, %_4.i.i.i.i5
  br i1 %_0.i6, label %bb7.i, label %_ZN4core5slice4sort6shared17find_existing_run17hc719b66955afa84eE.exit

bb7.i:                                            ; preds = %bb5.i
  %3 = add nuw nsw i64 %run_len.sroa.0.1.i14, 1
  %exitcond19.not = icmp eq i64 %3, %v.1
  br i1 %exitcond19.not, label %_ZN4core5slice4sort6shared17find_existing_run17hc719b66955afa84eE.exit, label %bb5.i

_ZN4core5slice4sort6shared17find_existing_run17hc719b66955afa84eE.exit: ; preds = %bb12.i, %bb15.i, %bb5.i, %bb7.i, %bb11.i.preheader, %bb4.i.preheader, %bb1
  %_0.sroa.3.0.i = phi i1 [ false, %bb1 ], [ true, %bb4.i.preheader ], [ false, %bb11.i.preheader ], [ true, %bb7.i ], [ true, %bb5.i ], [ false, %bb15.i ], [ false, %bb12.i ]
  %_0.sroa.0.0.i = phi i64 [ %v.1, %bb1 ], [ 2, %bb4.i.preheader ], [ 2, %bb11.i.preheader ], [ %run_len.sroa.0.1.i14, %bb5.i ], [ %v.1, %bb7.i ], [ %run_len.sroa.0.0.i11, %bb12.i ], [ %v.1, %bb15.i ]
  %_12 = icmp samesign ule i64 %_0.sroa.0.0.i, %v.1
  tail call void @llvm.assume(i1 %_12)
  %_13.not = icmp ult i64 %_0.sroa.0.0.i, %min_good_run_len
  br i1 %_13.not, label %bb7, label %bb3

bb3:                                              ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hc719b66955afa84eE.exit
  br i1 %_0.sroa.3.0.i, label %bb14, label %bb5

bb11:                                             ; preds = %bb7
  %_0.sroa.0.0.i7 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 -2305843009213693950, 2305843009213693952) %v.1, i64 %min_good_run_len)
  %_36 = shl nuw nsw i64 %_0.sroa.0.0.i7, 1
  br label %bb12

bb8:                                              ; preds = %bb7
  %_0.sroa.0.0.i8 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 -2305843009213693950, 2305843009213693952) %v.1, i64 32)
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hb77b1acb8821cc7cE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %_0.sroa.0.0.i8, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef 0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef align 8 dereferenceable(8) %is_less) #29
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
  %6 = load i32, ptr %x.i.i.epil, align 4, !alias.scope !1103, !noalias !1108, !noundef !15
  %7 = load i32, ptr %y.i.i.epil, align 4, !alias.scope !1110, !noalias !1111
  store i32 %7, ptr %x.i.i.epil, align 4, !alias.scope !1103, !noalias !1108
  store i32 %6, ptr %y.i.i.epil, align 4, !alias.scope !1110, !noalias !1111
  br label %bb5

bb5:                                              ; preds = %bb5.i.i.epil, %bb5.loopexit.unr-lcssa, %bb14, %bb3
  %_27 = shl nuw nsw i64 %_0.sroa.0.0.i, 1
  %_26 = or disjoint i64 %_27, 1
  br label %bb12

bb14:                                             ; preds = %bb3
  %half_len2.i = lshr i64 %_0.sroa.0.0.i, 1
  %end.i = getelementptr inbounds nuw i32, ptr %v.0, i64 %_0.sroa.0.0.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1111)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1108)
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
  %10 = load i32, ptr %x.i.i, align 4, !alias.scope !1103, !noalias !1108, !noundef !15
  %11 = load i32, ptr %y.i.i, align 4, !alias.scope !1110, !noalias !1111
  store i32 %11, ptr %x.i.i, align 4, !alias.scope !1103, !noalias !1108
  store i32 %10, ptr %y.i.i, align 4, !alias.scope !1110, !noalias !1111
  %12 = xor i64 %i.sroa.0.016.i.i, -2
  %gep27 = getelementptr inbounds i32, ptr %invariant.gep26, i64 %i.sroa.0.016.i.i
  %y.i.i.1 = getelementptr i32, ptr %end.i, i64 %12
  %13 = load i32, ptr %gep27, align 4, !alias.scope !1103, !noalias !1108, !noundef !15
  %14 = load i32, ptr %y.i.i.1, align 4, !alias.scope !1110, !noalias !1111
  store i32 %14, ptr %gep27, align 4, !alias.scope !1103, !noalias !1108
  store i32 %13, ptr %y.i.i.1, align 4, !alias.scope !1110, !noalias !1111
  %15 = add nuw nsw i64 %i.sroa.0.016.i.i, 2
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %bb5.loopexit.unr-lcssa, label %bb5.i.i
}

; core::slice::sort::stable::drift::stable_quicksort
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6stable5drift16stable_quicksort17hf0638f874fe06888E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #1 {
start:
  %self = or i64 %v.1, 1
  %0 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self, i1 true)
  %1 = trunc nuw nsw i64 %0 to i32
  %log = shl nuw nsw i32 %1, 1
  %limit = xor i32 %log, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hb77b1acb8821cc7cE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef %limit, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef align 8 dereferenceable(8) %is_less) #29
  ret void
}

; core::slice::sort::stable::drift::sort
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6stable5drift4sort17h8d0e282ba82b466cE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #1 personality ptr @rust_eh_personality {
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
  %2 = tail call noundef i64 @_ZN4core5slice4sort6stable5drift10create_run17h5c6077362c854cfcE(ptr noalias noundef nonnull align 4 %_82, i64 noundef %new_len, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i64 noundef %min_good_run_len.sroa.0.0, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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

bb12:                                             ; preds = %bb12.lr.ph, %_ZN4core5slice4sort6stable5drift13logical_merge17h4f0c34351e9a643eE.exit
  %stack_len.sroa.0.150 = phi i64 [ %stack_len.sroa.0.0, %bb12.lr.ph ], [ %count, %_ZN4core5slice4sort6stable5drift13logical_merge17h4f0c34351e9a643eE.exit ]
  %prev_run.sroa.0.149 = phi i64 [ %prev_run.sroa.0.0, %bb12.lr.ph ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h4f0c34351e9a643eE.exit ]
  %count = add i64 %stack_len.sroa.0.150, -1
  %_41 = getelementptr inbounds nuw i8, ptr %desired_depth_storage, i64 %count
  %_40 = load i8, ptr %_41, align 1, !noundef !15
  %_39.not = icmp ult i8 %_40, %desired_depth.sroa.0.0
  br i1 %_39.not, label %bb17, label %bb13

bb17:                                             ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17h4f0c34351e9a643eE.exit, %bb12, %bb10
  %prev_run.sroa.0.1.lcssa = phi i64 [ %prev_run.sroa.0.0, %bb10 ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h4f0c34351e9a643eE.exit ], [ %prev_run.sroa.0.149, %bb12 ]
  %stack_len.sroa.0.1.lcssa = phi i64 [ %stack_len.sroa.0.0, %bb10 ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17h4f0c34351e9a643eE.exit ], [ %stack_len.sroa.0.150, %bb12 ]
  %_59 = getelementptr inbounds nuw i64, ptr %run_storage, i64 %stack_len.sroa.0.1.lcssa
  store i64 %prev_run.sroa.0.1.lcssa, ptr %_59, align 8
  %_61 = getelementptr inbounds nuw i8, ptr %desired_depth_storage, i64 %stack_len.sroa.0.1.lcssa
  store i8 %desired_depth.sroa.0.0, ptr %_61, align 1
  br i1 %_22, label %bb19, label %bb18

bb13:                                             ; preds = %bb12
  %_46 = getelementptr inbounds nuw i64, ptr %run_storage, i64 %count
  %left10 = load i64, ptr %_46, align 8, !noundef !15
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
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h4f0c34351e9a643eE.exit

bb5.i:                                            ; preds = %bb11.i, %bb3.i
  br i1 %_10.not.i, label %bb16.i, label %bb7.i

bb11.i:                                           ; preds = %bb3.i
  %self.i = or i64 %_50, 1
  %8 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i, i1 true)
  %9 = trunc nuw nsw i64 %8 to i32
  %log.i = shl nuw nsw i32 %9, 1
  %limit.i = xor i32 %log.i, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hb77b1acb8821cc7cE(ptr noalias noundef nonnull align 4 %_98, i64 noundef range(i64 0, 2305843009213693952) %_50, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #29
  br label %bb5.i

bb7.i:                                            ; preds = %bb16.i, %bb5.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1112)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1115)
  %_6.i = icmp ult i64 %left10, 2
  %_7.i = icmp ult i64 %prev_run.sroa.0.149, 2
  %or.cond.i = or i1 %_7.i, %_6.i
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17hf88dd62c06665579E.exit, label %bb2.i

bb2.i:                                            ; preds = %bb7.i
  %_0.sroa.0.0.i.i = tail call i64 @llvm.umin.i64(i64 %_51, i64 %_50)
  %_8.i = icmp samesign ult i64 %scratch.1, %_0.sroa.0.0.i.i
  br i1 %_8.i, label %_ZN4core5slice4sort6stable5merge5merge17hf88dd62c06665579E.exit, label %bb5.i37

bb5.i37:                                          ; preds = %bb2.i
  %v_mid.i = getelementptr inbounds nuw i32, ptr %_98, i64 %_50
  %left_is_shorter.not.i = icmp samesign ugt i64 %_50, %_51
  %spec.select.i = select i1 %left_is_shorter.not.i, ptr %v_mid.i, ptr %_98
  %10 = shl nuw nsw i64 %_0.sroa.0.0.i.i, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %scratch.0, ptr nonnull align 4 %spec.select.i, i64 %10, i1 false), !alias.scope !1117
  %_22.i38 = getelementptr inbounds nuw i8, ptr %scratch.0, i64 %10
  br i1 %left_is_shorter.not.i, label %bb1.i.i, label %bb3.i.i

bb1.i.i:                                          ; preds = %bb5.i37, %bb1.i.i
  %_2110.i.i = phi ptr [ %_21.i.i, %bb1.i.i ], [ %_22.i38, %bb5.i37 ]
  %_188.i.i = phi ptr [ %_18.i.i, %bb1.i.i ], [ %spec.select.i, %bb5.i37 ]
  %out.sroa.0.0.i.i = phi ptr [ %13, %bb1.i.i ], [ %v_end.i, %bb5.i37 ]
  %11 = getelementptr inbounds i8, ptr %_188.i.i, i64 -4
  %12 = getelementptr inbounds i8, ptr %_2110.i.i, i64 -4
  %13 = getelementptr inbounds i8, ptr %out.sroa.0.0.i.i, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1118)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1121)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1123)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1126)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1128)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1131)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1133)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1136)
  %_3.i.i.i.i.i.i = load i32, ptr %12, align 4, !alias.scope !1138, !noalias !1139, !noundef !15
  %_4.i.i.i.i.i.i = load i32, ptr %11, align 4, !alias.scope !1142, !noalias !1143, !noundef !15
  %_0.i.i.i = icmp slt i32 %_3.i.i.i.i.i.i, %_4.i.i.i.i.i.i
  %14 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i.i.i, i32 %_4.i.i.i.i.i.i)
  store i32 %14, ptr %13, align 4, !alias.scope !1112, !noalias !1144
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1145)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1148)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1150)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1153)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1155)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1158)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1160)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1163)
  %_3.i.i.i.i.i12.i = load i32, ptr %right.sroa.0.010.i.i, align 4, !alias.scope !1165, !noalias !1166, !noundef !15
  %_4.i.i.i.i.i13.i = load i32, ptr %_2059.i.i, align 4, !alias.scope !1169, !noalias !1170, !noundef !15
  %_0.i.i14.i = icmp slt i32 %_3.i.i.i.i.i12.i, %_4.i.i.i.i.i13.i
  %consume_left.i.i = xor i1 %_0.i.i14.i, true
  %15 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i12.i, i32 %_4.i.i.i.i.i13.i)
  store i32 %15, ptr %_2511.i.i, align 4, !alias.scope !1112, !noalias !1171
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %merge_state.sroa.13.0.i, ptr align 4 %merge_state.sroa.0.0.i, i64 %18, i1 false), !alias.scope !1117, !noalias !1172
  br label %_ZN4core5slice4sort6stable5merge5merge17hf88dd62c06665579E.exit

_ZN4core5slice4sort6stable5merge5merge17hf88dd62c06665579E.exit: ; preds = %bb7.i, %bb2.i, %bb16.i40
  %_39.i = shl nuw nsw i64 %merged_len, 1
  %_38.i = or disjoint i64 %_39.i, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h4f0c34351e9a643eE.exit

bb16.i:                                           ; preds = %bb5.i
  %_37.i = getelementptr inbounds nuw i32, ptr %_98, i64 %_50
  %self.i41 = or i64 %_51, 1
  %19 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i41, i1 true)
  %20 = trunc nuw nsw i64 %19 to i32
  %log.i42 = shl nuw nsw i32 %20, 1
  %limit.i43 = xor i32 %log.i42, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hb77b1acb8821cc7cE(ptr noalias noundef nonnull align 4 %_37.i, i64 noundef range(i64 0, 2305843009213693952) %_51, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i43, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #29
  br label %bb7.i

_ZN4core5slice4sort6stable5drift13logical_merge17h4f0c34351e9a643eE.exit: ; preds = %bb9.i, %_ZN4core5slice4sort6stable5merge5merge17hf88dd62c06665579E.exit
  %_0.sroa.0.0.i = phi i64 [ %_38.i, %_ZN4core5slice4sort6stable5merge5merge17hf88dd62c06665579E.exit ], [ %_40.i, %bb9.i ]
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
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hb77b1acb8821cc7cE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i46, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef align 8 dereferenceable(8) %is_less) #29
  br label %bb21

bb21:                                             ; preds = %bb20, %bb18
  call void @llvm.lifetime.end.p0(i64 66, ptr nonnull %desired_depth_storage)
  call void @llvm.lifetime.end.p0(i64 528, ptr nonnull %run_storage)
  br label %bb22

bb22:                                             ; preds = %start, %bb21
  ret void
}

; core::slice::sort::stable::merge::MergeState<T>::merge_down
; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h12cc15152c225a50E"(ptr noalias noundef align 8 captures(none) dereferenceable(24) %self, ptr noundef readnone captures(address) %left_end, ptr noundef readnone captures(address) %right_end, ptr noundef writeonly captures(none) %0, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #7 {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1177)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1180)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1182)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1185)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1187)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1190)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1192)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1195)
  %_3.i.i.i.i = load i32, ptr %4, align 4, !alias.scope !1197, !noalias !1198, !noundef !15
  %_4.i.i.i.i = load i32, ptr %3, align 4, !alias.scope !1198, !noalias !1197, !noundef !15
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
define void @"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h376e0a01713378ffE"(ptr noalias noundef align 8 captures(none) dereferenceable(24) %self, ptr noundef readonly captures(address) %0, ptr noundef readnone captures(address) %right_end, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #8 {
start:
  %1 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %_9 = load ptr, ptr %1, align 8, !noundef !15
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1199)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1202)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1204)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1207)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1209)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1212)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1214)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1217)
  %_3.i.i.i.i = load i32, ptr %right.sroa.0.010, align 4, !alias.scope !1219, !noalias !1220, !noundef !15
  %_4.i.i.i.i = load i32, ptr %_2059, align 4, !alias.scope !1220, !noalias !1219, !noundef !15
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

; core::slice::sort::stable::merge::merge
; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core5slice4sort6stable5merge5merge17hf88dd62c06665579E(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %0, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1221)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1224)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1226)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1229)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1231)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1234)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1236)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1239)
  %_3.i.i.i.i.i = load i32, ptr %3, align 4, !alias.scope !1241, !noalias !1242, !noundef !15
  %_4.i.i.i.i.i = load i32, ptr %2, align 4, !alias.scope !1245, !noalias !1246, !noundef !15
  %_0.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %5 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i.i, i32 %_4.i.i.i.i.i)
  store i32 %5, ptr %4, align 4, !noalias !1247
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1248)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1251)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1253)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1256)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1258)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1261)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1263)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1266)
  %_3.i.i.i.i.i12 = load i32, ptr %right.sroa.0.010.i, align 4, !alias.scope !1268, !noalias !1269, !noundef !15
  %_4.i.i.i.i.i13 = load i32, ptr %_2059.i, align 4, !alias.scope !1272, !noalias !1273, !noundef !15
  %_0.i.i14 = icmp slt i32 %_3.i.i.i.i.i12, %_4.i.i.i.i.i13
  %consume_left.i = xor i1 %_0.i.i14, true
  %6 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i12, i32 %_4.i.i.i.i.i13)
  store i32 %6, ptr %_2511.i, align 4, !noalias !1274
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %merge_state.sroa.13.0, ptr align 4 %merge_state.sroa.0.0, i64 %9, i1 false), !noalias !1275
  br label %bb18

bb18:                                             ; preds = %bb2, %start, %bb16
  ret void
}

; core::slice::sort::stable::quicksort::stable_partition
; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17ha5a8b13027668922E(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 captures(none) %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %0, i1 noundef zeroext %pivot_goes_left, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #4 {
start:
  %_8 = icmp samesign uge i64 %scratch.1, %v.1
  %.not = icmp ult i64 %0, %v.1
  %or.cond = and i1 %_8, %.not
  br i1 %or.cond, label %bb33, label %bb31, !prof !1280

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1281)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1284)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1286)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1289)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1291)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1294)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1296)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1299)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1301)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1304)
  %_3.i.i.i.i.i = load i32, ptr %pivot, align 4, !alias.scope !1306, !noalias !1307, !noundef !15
  %_4.i.i.i.i.i = load i32, ptr %state.sroa.9.187, align 4, !alias.scope !1307, !noalias !1306, !noundef !15
  %_0.i.i = icmp sge i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %2 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -4
  %dst_base.sroa.0.0.i = select i1 %_0.i.i, ptr %scratch.0, ptr %2
  %dst.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i, i64 %state.sroa.27.186
  store i32 %_4.i.i.i.i.i, ptr %dst.i, align 4, !noalias !1308
  %_8.i = zext i1 %_0.i.i to i64
  %3 = add i64 %state.sroa.27.186, %_8.i
  %_9.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1311)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1314)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1316)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1319)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1321)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1324)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1326)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1329)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1331)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1334)
  %_3.i.i.i.i.i25 = load i32, ptr %pivot, align 4, !alias.scope !1336, !noalias !1337, !noundef !15
  %_4.i.i.i.i.i26 = load i32, ptr %_9.i, align 4, !alias.scope !1337, !noalias !1336, !noundef !15
  %_0.i.i27 = icmp sge i32 %_3.i.i.i.i.i25, %_4.i.i.i.i.i26
  %4 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -8
  %dst_base.sroa.0.0.i29 = select i1 %_0.i.i27, ptr %scratch.0, ptr %4
  %dst.i31 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29, i64 %3
  store i32 %_4.i.i.i.i.i26, ptr %dst.i31, align 4, !noalias !1338
  %_8.i33 = zext i1 %_0.i.i27 to i64
  %5 = add i64 %3, %_8.i33
  %_9.i34 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1341)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1344)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1346)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1349)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1351)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1354)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1356)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1359)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1361)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1364)
  %_3.i.i.i.i.i35 = load i32, ptr %pivot, align 4, !alias.scope !1366, !noalias !1367, !noundef !15
  %_4.i.i.i.i.i36 = load i32, ptr %_9.i34, align 4, !alias.scope !1367, !noalias !1366, !noundef !15
  %_0.i.i37 = icmp sge i32 %_3.i.i.i.i.i35, %_4.i.i.i.i.i36
  %6 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -12
  %dst_base.sroa.0.0.i39 = select i1 %_0.i.i37, ptr %scratch.0, ptr %6
  %dst.i41 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39, i64 %5
  store i32 %_4.i.i.i.i.i36, ptr %dst.i41, align 4, !noalias !1368
  %_8.i43 = zext i1 %_0.i.i37 to i64
  %7 = add i64 %5, %_8.i43
  %_9.i44 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1371)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1374)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1376)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1379)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1381)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1384)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1386)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1389)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1391)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1394)
  %_3.i.i.i.i.i45 = load i32, ptr %pivot, align 4, !alias.scope !1396, !noalias !1397, !noundef !15
  %_4.i.i.i.i.i46 = load i32, ptr %_9.i44, align 4, !alias.scope !1397, !noalias !1396, !noundef !15
  %_0.i.i47 = icmp sge i32 %_3.i.i.i.i.i45, %_4.i.i.i.i.i46
  %8 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -16
  %dst_base.sroa.0.0.i49 = select i1 %_0.i.i47, ptr %scratch.0, ptr %8
  %dst.i51 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49, i64 %7
  store i32 %_4.i.i.i.i.i46, ptr %dst.i51, align 4, !noalias !1398
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1401)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1404)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1406)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1409)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1411)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1414)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1416)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1419)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1421)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1424)
  %_3.i.i.i.i.i55 = load i32, ptr %pivot, align 4, !alias.scope !1426, !noalias !1427, !noundef !15
  %_4.i.i.i.i.i56 = load i32, ptr %state.sroa.9.293, align 4, !alias.scope !1427, !noalias !1426, !noundef !15
  %_0.i.i57 = icmp sge i32 %_3.i.i.i.i.i55, %_4.i.i.i.i.i56
  %10 = getelementptr inbounds i8, ptr %state.sroa.43.294, i64 -4
  %dst_base.sroa.0.0.i59 = select i1 %_0.i.i57, ptr %scratch.0, ptr %10
  %dst.i61 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59, i64 %state.sroa.27.292
  store i32 %_4.i.i.i.i.i56, ptr %dst.i61, align 4, !noalias !1428
  %_8.i63 = zext i1 %_0.i.i57 to i64
  %11 = add i64 %state.sroa.27.292, %_8.i63
  %_9.i64 = getelementptr inbounds nuw i8, ptr %state.sroa.9.293, i64 4
  %_47 = icmp ult ptr %_9.i64, %loop_end
  br i1 %_47, label %bb18, label %bb21

bb23:                                             ; preds = %bb21
  %12 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa, i64 -4
  %dst_base.sroa.0.0.i66 = select i1 %pivot_goes_left, ptr %scratch.0, ptr %12
  %dst.i68 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i66, i64 %state.sroa.27.2.lcssa
  %13 = load i32, ptr %state.sroa.9.2.lcssa, align 4, !noalias !1431
  store i32 %13, ptr %dst.i68, align 4, !noalias !1431
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
  br i1 %epil.iter.cmp.not, label %bb30, label %bb42.epil, !llvm.loop !1434

bb30:                                             ; preds = %bb30.loopexit.unr-lcssa, %bb42.epil, %bb22
  ret i64 %state.sroa.27.2.lcssa
}

; core::slice::sort::stable::quicksort::stable_partition
; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17hf31acde0d4fa2731E(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 captures(none) %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %0, i1 noundef zeroext %pivot_goes_left, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #4 {
start:
  %_8 = icmp samesign uge i64 %scratch.1, %v.1
  %.not = icmp ult i64 %0, %v.1
  %or.cond = and i1 %_8, %.not
  br i1 %or.cond, label %bb33, label %bb31, !prof !1280

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1436)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1439)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1441)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1444)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1446)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1449)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1451)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1454)
  %_3.i.i.i.i = load i32, ptr %state.sroa.9.187, align 4, !alias.scope !1456, !noalias !1457, !noundef !15
  %_4.i.i.i.i = load i32, ptr %pivot, align 4, !alias.scope !1457, !noalias !1456, !noundef !15
  %_0.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %2 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -4
  %dst_base.sroa.0.0.i = select i1 %_0.i, ptr %scratch.0, ptr %2
  %dst.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i, i64 %state.sroa.27.186
  store i32 %_3.i.i.i.i, ptr %dst.i, align 4, !noalias !1458
  %_8.i = zext i1 %_0.i to i64
  %3 = add i64 %state.sroa.27.186, %_8.i
  %_9.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1461)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1464)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1466)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1469)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1471)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1474)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1476)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1479)
  %_3.i.i.i.i25 = load i32, ptr %_9.i, align 4, !alias.scope !1481, !noalias !1482, !noundef !15
  %_4.i.i.i.i26 = load i32, ptr %pivot, align 4, !alias.scope !1482, !noalias !1481, !noundef !15
  %_0.i27 = icmp slt i32 %_3.i.i.i.i25, %_4.i.i.i.i26
  %4 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -8
  %dst_base.sroa.0.0.i29 = select i1 %_0.i27, ptr %scratch.0, ptr %4
  %dst.i31 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29, i64 %3
  store i32 %_3.i.i.i.i25, ptr %dst.i31, align 4, !noalias !1483
  %_8.i33 = zext i1 %_0.i27 to i64
  %5 = add i64 %3, %_8.i33
  %_9.i34 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1486)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1489)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1491)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1494)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1496)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1499)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1501)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1504)
  %_3.i.i.i.i35 = load i32, ptr %_9.i34, align 4, !alias.scope !1506, !noalias !1507, !noundef !15
  %_4.i.i.i.i36 = load i32, ptr %pivot, align 4, !alias.scope !1507, !noalias !1506, !noundef !15
  %_0.i37 = icmp slt i32 %_3.i.i.i.i35, %_4.i.i.i.i36
  %6 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -12
  %dst_base.sroa.0.0.i39 = select i1 %_0.i37, ptr %scratch.0, ptr %6
  %dst.i41 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39, i64 %5
  store i32 %_3.i.i.i.i35, ptr %dst.i41, align 4, !noalias !1508
  %_8.i43 = zext i1 %_0.i37 to i64
  %7 = add i64 %5, %_8.i43
  %_9.i44 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1511)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1514)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1516)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1519)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1521)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1524)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1526)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1529)
  %_3.i.i.i.i45 = load i32, ptr %_9.i44, align 4, !alias.scope !1531, !noalias !1532, !noundef !15
  %_4.i.i.i.i46 = load i32, ptr %pivot, align 4, !alias.scope !1532, !noalias !1531, !noundef !15
  %_0.i47 = icmp slt i32 %_3.i.i.i.i45, %_4.i.i.i.i46
  %8 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -16
  %dst_base.sroa.0.0.i49 = select i1 %_0.i47, ptr %scratch.0, ptr %8
  %dst.i51 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49, i64 %7
  store i32 %_3.i.i.i.i45, ptr %dst.i51, align 4, !noalias !1533
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1536)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1539)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1541)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1544)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1546)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1549)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1551)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1554)
  %_3.i.i.i.i55 = load i32, ptr %state.sroa.9.293, align 4, !alias.scope !1556, !noalias !1557, !noundef !15
  %_4.i.i.i.i56 = load i32, ptr %pivot, align 4, !alias.scope !1557, !noalias !1556, !noundef !15
  %_0.i57 = icmp slt i32 %_3.i.i.i.i55, %_4.i.i.i.i56
  %10 = getelementptr inbounds i8, ptr %state.sroa.43.294, i64 -4
  %dst_base.sroa.0.0.i59 = select i1 %_0.i57, ptr %scratch.0, ptr %10
  %dst.i61 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59, i64 %state.sroa.27.292
  store i32 %_3.i.i.i.i55, ptr %dst.i61, align 4, !noalias !1558
  %_8.i63 = zext i1 %_0.i57 to i64
  %11 = add i64 %state.sroa.27.292, %_8.i63
  %_9.i64 = getelementptr inbounds nuw i8, ptr %state.sroa.9.293, i64 4
  %_47 = icmp ult ptr %_9.i64, %loop_end
  br i1 %_47, label %bb18, label %bb21

bb23:                                             ; preds = %bb21
  %12 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa, i64 -4
  %dst_base.sroa.0.0.i66 = select i1 %pivot_goes_left, ptr %scratch.0, ptr %12
  %dst.i68 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i66, i64 %state.sroa.27.2.lcssa
  %13 = load i32, ptr %state.sroa.9.2.lcssa, align 4, !noalias !1561
  store i32 %13, ptr %dst.i68, align 4, !noalias !1561
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
  br i1 %epil.iter.cmp.not, label %bb30, label %bb42.epil, !llvm.loop !1564

bb30:                                             ; preds = %bb30.loopexit.unr-lcssa, %bb42.epil, %bb22
  ret i64 %state.sroa.27.2.lcssa
}

; core::slice::sort::stable::quicksort::PartitionState<T>::partition_one
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define noundef ptr @"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h71f6933434906a8fE"(ptr noalias noundef align 8 captures(none) dereferenceable(32) %self, i1 noundef zeroext %towards_left) unnamed_addr #9 {
start:
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 24
  %self1 = load ptr, ptr %0, align 8, !noundef !15
  %1 = getelementptr inbounds i8, ptr %self1, i64 -4
  store ptr %1, ptr %0, align 8
  %2 = load ptr, ptr %self, align 8
  %dst_base.sroa.0.0 = select i1 %towards_left, ptr %2, ptr %1
  %3 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %count = load i64, ptr %3, align 8, !noundef !15
  %dst = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0, i64 %count
  %4 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %src = load ptr, ptr %4, align 8, !noundef !15
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
define void @_ZN4core5slice4sort6stable9quicksort9quicksort17hb77b1acb8821cc7cE(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %2, ptr noalias noundef readonly align 4 captures(address) dereferenceable_or_null(4) %3, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #5 {
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

bb5:                                              ; preds = %bb5.lr.ph, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h63c6dcd49d710c6bE.exit"
  %v.sroa.16.034 = phi i64 [ %v.sroa.16.0.ph41, %bb5.lr.ph ], [ %left_partition_len.sroa.0.0, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h63c6dcd49d710c6bE.exit" ]
  %limit.sroa.0.033 = phi i32 [ %limit.sroa.0.0.ph40, %bb5.lr.ph ], [ %4, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h63c6dcd49d710c6bE.exit" ]
  %_11 = icmp eq i32 %limit.sroa.0.033, 0
  br i1 %_11, label %bb6, label %bb7

bb3:                                              ; preds = %bb28, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h63c6dcd49d710c6bE.exit", %start
  %v.sroa.0.0.ph.lcssa31 = phi ptr [ %0, %start ], [ %v.sroa.0.0.ph42, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h63c6dcd49d710c6bE.exit" ], [ %_54, %bb28 ]
  %v.sroa.16.0.lcssa = phi i64 [ %1, %start ], [ %left_partition_len.sroa.0.0, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h63c6dcd49d710c6bE.exit" ], [ %new_len, %bb28 ]
; call core::slice::sort::shared::smallsort::small_sort_general_with_scratch
  call void @_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h007c383c673fc2a5E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph.lcssa31, i64 noundef range(i64 0, 33) %v.sroa.16.0.lcssa, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, ptr noalias nonnull align 8 poison)
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
  %self.i = call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h8e27644badaf6cc8E(ptr noundef nonnull readonly align 4 %v.sroa.0.0.ph42, ptr noundef nonnull readonly %b.i, ptr noundef nonnull readonly %c.i, i64 noundef %len_div_84.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less)
  br label %_ZN4core5slice4sort6shared5pivot12choose_pivot17h23102a79409d8b4bE.exit

bb3.i:                                            ; preds = %bb7
  call void @llvm.experimental.noalias.scope.decl(metadata !1565)
  call void @llvm.experimental.noalias.scope.decl(metadata !1568)
  call void @llvm.experimental.noalias.scope.decl(metadata !1570), !noalias !1573
  call void @llvm.experimental.noalias.scope.decl(metadata !1576), !noalias !1573
  call void @llvm.experimental.noalias.scope.decl(metadata !1578), !noalias !1573
  call void @llvm.experimental.noalias.scope.decl(metadata !1581), !noalias !1573
  call void @llvm.experimental.noalias.scope.decl(metadata !1583), !noalias !1573
  call void @llvm.experimental.noalias.scope.decl(metadata !1586), !noalias !1573
  %_3.i.i.i.i.i = load i32, ptr %v.sroa.0.0.ph42, align 4, !alias.scope !1588, !noalias !1591, !noundef !15
  %_4.i.i.i.i.i = load i32, ptr %b.i, align 4, !alias.scope !1593, !noalias !1594, !noundef !15
  %_0.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %_4.i.i.i.i6.i = load i32, ptr %c.i, align 4, !alias.scope !1595, !noalias !1604, !noundef !15
  %_0.i7.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i6.i
  %5 = xor i1 %_0.i.i, %_0.i7.i
  %_0.i10.i = icmp slt i32 %_4.i.i.i.i.i, %_4.i.i.i.i6.i
  %_12.i.i = xor i1 %_0.i.i, %_0.i10.i
  %c.b.i.i = select i1 %_12.i.i, ptr %c.i, ptr %b.i
  %_0.sroa.0.0.i.i = select i1 %5, ptr %v.sroa.0.0.ph42, ptr %c.b.i.i
  br label %_ZN4core5slice4sort6shared5pivot12choose_pivot17h23102a79409d8b4bE.exit

_ZN4core5slice4sort6shared5pivot12choose_pivot17h23102a79409d8b4bE.exit: ; preds = %bb5.i, %bb3.i
  %self.i.sink = phi ptr [ %self.i, %bb5.i ], [ %_0.sroa.0.0.i.i, %bb3.i ]
  %6 = ptrtoint ptr %self.i.sink to i64
  %7 = sub nuw i64 %6, %.sink77
  %index.sroa.0.0.i = lshr exact i64 %7, 2
  %cond.i = icmp samesign ult i64 %index.sroa.0.0.i, %v.sroa.16.034
  call void @llvm.assume(i1 %cond.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pivot_copy)
  %src = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph42, i64 %7
  %value = load i32, ptr %src, align 4, !noundef !15
  store i32 %value, ptr %pivot_copy, align 4
  br i1 %.not, label %bb14, label %bb12

bb6:                                              ; preds = %bb5
; call core::slice::sort::stable::drift::sort
  call void @_ZN4core5slice4sort6stable5drift4sort17h8d0e282ba82b466cE(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph42, i64 noundef %v.sroa.16.034, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i1 noundef zeroext true, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  br label %bb22

bb12:                                             ; preds = %_ZN4core5slice4sort6shared5pivot12choose_pivot17h23102a79409d8b4bE.exit
  %_3.i.i.i.i = load i32, ptr %left_ancestor_pivot.sroa.0.0.ph39, align 4, !alias.scope !1609, !noalias !1618, !noundef !15
  %_0.i.not = icmp slt i32 %_3.i.i.i.i, %value
  br i1 %_0.i.not, label %bb14, label %bb16

bb14:                                             ; preds = %_ZN4core5slice4sort6shared5pivot12choose_pivot17h23102a79409d8b4bE.exit, %bb12
; call core::slice::sort::stable::quicksort::stable_partition
  %8 = call noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17hf31acde0d4fa2731E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph42, i64 noundef %v.sroa.16.034, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i64 noundef %index.sroa.0.0.i, i1 noundef zeroext false, ptr noalias align 8 poison)
  %9 = icmp eq i64 %8, 0
  br label %bb16

bb16:                                             ; preds = %bb14, %bb12
  %left_partition_len.sroa.0.0 = phi i64 [ 0, %bb12 ], [ %8, %bb14 ]
  %perform_equal_partition.sroa.0.0.in = phi i1 [ true, %bb12 ], [ %9, %bb14 ]
  br i1 %perform_equal_partition.sroa.0.0.in, label %bb17, label %bb19

bb19:                                             ; preds = %bb16
  %_6.not.i = icmp ugt i64 %left_partition_len.sroa.0.0, %v.sroa.16.034
  br i1 %_6.not.i, label %bb3.i23, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h63c6dcd49d710c6bE.exit", !prof !1036

bb3.i23:                                          ; preds = %bb19
; call core::panicking::panic_fmt
  call void @_ZN4core9panicking9panic_fmt17ha4414e4328fe24a0E(ptr noundef nonnull @alloc_d1084648e479974e70c9329824bf76f9, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_58d434a1e795f965ef82c8e9c5db822a) #27, !noalias !1623
  unreachable

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h63c6dcd49d710c6bE.exit": ; preds = %bb19
  %10 = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph42, i64 %left_partition_len.sroa.0.0
  %11 = sub nuw nsw i64 %v.sroa.16.034, %left_partition_len.sroa.0.0
; call core::slice::sort::stable::quicksort::quicksort
  call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hb77b1acb8821cc7cE(ptr noalias noundef nonnull align 4 %10, i64 noundef %11, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef %4, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) %pivot_copy, ptr noalias noundef align 8 dereferenceable(8) %is_less) #29
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_8 = icmp ult i64 %left_partition_len.sroa.0.0, 33
  br i1 %_8, label %bb3, label %bb5

bb17:                                             ; preds = %bb16
; call core::slice::sort::stable::quicksort::stable_partition
  %mid_eq = call noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17ha5a8b13027668922E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph42, i64 noundef %v.sroa.16.034, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i64 noundef %index.sroa.0.0.i, i1 noundef zeroext true, ptr noalias align 8 poison)
  %_47 = icmp ugt i64 %mid_eq, %v.sroa.16.034
  br i1 %_47, label %bb27, label %bb28, !prof !1036

bb28:                                             ; preds = %bb17
  %new_len = sub nuw i64 %v.sroa.16.034, %mid_eq
  %_54 = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph42, i64 %mid_eq
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_832 = icmp ult i64 %new_len, 33
  br i1 %_832, label %bb3, label %bb5.lr.ph

bb27:                                             ; preds = %bb17
; call core::slice::index::slice_index_fail
  call void @_ZN4core5slice5index16slice_index_fail17h62807bcaa490c9c1E(i64 noundef %mid_eq, i64 noundef %v.sroa.16.034, i64 noundef %v.sroa.16.034, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_0766b232215672ee1bd2195fdb153938) #27
  unreachable

bb22:                                             ; preds = %bb3, %bb6
  ret void
}

; alloc::vec::Vec<T,A>::extend_with
; Function Attrs: nonlazybind uwtable
define void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$11extend_with17h495d4afb6f9d053bE"(ptr noalias noundef align 8 dereferenceable(24) %self, i64 noundef %n, i32 noundef %0) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %1 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %len.i = load i64, ptr %1, align 8, !alias.scope !1627, !noundef !15
  %self2.i = load i64, ptr %self, align 8, !range !1630, !alias.scope !1627, !noundef !15
  %_9.i = sub i64 %self2.i, %len.i
  %_7.i = icmp ugt i64 %n, %_9.i
  br i1 %_7.i, label %bb1.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h3a593d68f4581716E.exit", !prof !1036

bb1.i:                                            ; preds = %start
; call alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle
  tail call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h3fb8db3e79fd71d4E"(ptr noalias noundef align 8 dereferenceable(24) %self, i64 noundef %len.i, i64 noundef %n, i64 noundef 4, i64 noundef 4)
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h3a593d68f4581716E.exit"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h3a593d68f4581716E.exit": ; preds = %start, %bb1.i
  %2 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %_21 = load ptr, ptr %2, align 8, !nonnull !15, !noundef !15
  %count = load i64, ptr %1, align 8, !noundef !15
  %_22 = icmp ult i64 %count, 2305843009213693952
  tail call void @llvm.assume(i1 %_22)
  %3 = getelementptr inbounds nuw i32, ptr %_21, i64 %count
  %_2415 = icmp ugt i64 %n, 1
  br i1 %_2415, label %bb13.preheader, label %bb14

bb13.preheader:                                   ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h3a593d68f4581716E.exit"
  %4 = add i64 %n, -1
  %5 = add i64 %n, -2
  %xtraiter = and i64 %4, 7
  %6 = icmp ult i64 %5, 7
  br i1 %6, label %bb14.loopexit.unr-lcssa, label %bb13.preheader.new

bb13.preheader.new:                               ; preds = %bb13.preheader
  %unroll_iter = and i64 %4, -8
  br label %bb13

bb14.loopexit.unr-lcssa:                          ; preds = %bb13, %bb13.preheader
  %_15.lcssa.ph = phi ptr [ poison, %bb13.preheader ], [ %_15.7, %bb13 ]
  %ptr.sroa.0.018.unr = phi ptr [ %3, %bb13.preheader ], [ %_15.7, %bb13 ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb14.loopexit, label %bb13.epil

bb13.epil:                                        ; preds = %bb14.loopexit.unr-lcssa, %bb13.epil
  %ptr.sroa.0.018.epil = phi ptr [ %_15.epil, %bb13.epil ], [ %ptr.sroa.0.018.unr, %bb14.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %bb13.epil ], [ 0, %bb14.loopexit.unr-lcssa ]
  store i32 %0, ptr %ptr.sroa.0.018.epil, align 4
  %_15.epil = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.epil, i64 4
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %bb14.loopexit, label %bb13.epil, !llvm.loop !1631

bb14.loopexit:                                    ; preds = %bb13.epil, %bb14.loopexit.unr-lcssa
  %_15.lcssa = phi ptr [ %_15.lcssa.ph, %bb14.loopexit.unr-lcssa ], [ %_15.epil, %bb13.epil ]
  %7 = add i64 %count, %n
  %8 = add i64 %7, -1
  br label %bb14

bb14:                                             ; preds = %bb14.loopexit, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h3a593d68f4581716E.exit"
  %storemerge.lcssa = phi i64 [ %count, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h3a593d68f4581716E.exit" ], [ %8, %bb14.loopexit ]
  %ptr.sroa.0.0.lcssa = phi ptr [ %3, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h3a593d68f4581716E.exit" ], [ %_15.lcssa, %bb14.loopexit ]
  %_17.not = icmp eq i64 %n, 0
  br i1 %_17.not, label %bb7, label %bb4

bb13:                                             ; preds = %bb13, %bb13.preheader.new
  %ptr.sroa.0.018 = phi ptr [ %3, %bb13.preheader.new ], [ %_15.7, %bb13 ]
  %niter = phi i64 [ 0, %bb13.preheader.new ], [ %niter.next.7, %bb13 ]
  store i32 %0, ptr %ptr.sroa.0.018, align 4
  %_15 = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018, i64 4
  store i32 %0, ptr %_15, align 4
  %_15.1 = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018, i64 8
  store i32 %0, ptr %_15.1, align 4
  %_15.2 = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018, i64 12
  store i32 %0, ptr %_15.2, align 4
  %_15.3 = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018, i64 16
  store i32 %0, ptr %_15.3, align 4
  %_15.4 = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018, i64 20
  store i32 %0, ptr %_15.4, align 4
  %_15.5 = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018, i64 24
  store i32 %0, ptr %_15.5, align 4
  %_15.6 = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018, i64 28
  store i32 %0, ptr %_15.6, align 4
  %_15.7 = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018, i64 32
  %niter.next.7 = add i64 %niter, 8
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %bb14.loopexit.unr-lcssa, label %bb13

bb4:                                              ; preds = %bb14
  store i32 %0, ptr %ptr.sroa.0.0.lcssa, align 4
  %9 = add i64 %storemerge.lcssa, 1
  br label %bb7

bb7:                                              ; preds = %bb14, %bb4
  %storemerge14 = phi i64 [ %9, %bb4 ], [ %storemerge.lcssa, %bb14 ]
  store i64 %storemerge14, ptr %1, align 8, !noalias !15
  ret void
}

; alloc::vec::Vec<T,A>::extend_with
; Function Attrs: nonlazybind uwtable
define void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$11extend_with17ha273e21d9f440fedE"(ptr noalias noundef align 8 dereferenceable(24) %self, i64 noundef %n, ptr dead_on_return noalias noundef align 8 captures(address) dereferenceable(24) %value) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_4.i.i.i = alloca [24 x i8], align 8
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %len.i = load i64, ptr %0, align 8, !alias.scope !1632, !noundef !15
  %self2.i = load i64, ptr %self, align 8, !range !1630, !alias.scope !1632, !noundef !15
  %_9.i = sub i64 %self2.i, %len.i
  %_7.i = icmp ugt i64 %n, %_9.i
  br i1 %_7.i, label %bb1.i, label %bb1, !prof !1036

bb1.i:                                            ; preds = %start
; invoke alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h3fb8db3e79fd71d4E"(ptr noalias noundef align 8 dereferenceable(24) %self, i64 noundef %len.i, i64 noundef %n, i64 noundef 8, i64 noundef 24)
          to label %bb1 unwind label %cleanup

cleanup:                                          ; preds = %bb1.i
  %1 = landingpad { ptr, i32 }
          cleanup
  br label %bb11

bb1:                                              ; preds = %start, %bb1.i
  %2 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %_21 = load ptr, ptr %2, align 8, !nonnull !15, !noundef !15
  %count = load i64, ptr %0, align 8, !noundef !15
  %_22 = icmp ult i64 %count, 384307168202282326
  tail call void @llvm.assume(i1 %_22)
  %3 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_21, i64 %count
  %_2425 = icmp ugt i64 %n, 1
  br i1 %_2425, label %bb13.lr.ph, label %bb14

bb13.lr.ph:                                       ; preds = %bb1
  %_3.i = getelementptr inbounds nuw i8, ptr %value, i64 16
  %4 = getelementptr inbounds nuw i8, ptr %value, i64 8
  %5 = getelementptr inbounds nuw i8, ptr %_4.i.i.i, i64 8
  %6 = getelementptr inbounds nuw i8, ptr %_4.i.i.i, i64 16
  %7 = add i64 %count, %n
  %8 = add i64 %7, -1
  br label %bb13

bb14:                                             ; preds = %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17he37b00fe672cfbc1E.exit", %bb1
  %storemerge.lcssa = phi i64 [ %count, %bb1 ], [ %8, %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17he37b00fe672cfbc1E.exit" ]
  %ptr.sroa.0.0.lcssa = phi ptr [ %3, %bb1 ], [ %_15, %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17he37b00fe672cfbc1E.exit" ]
  %_17.not = icmp eq i64 %n, 0
  br i1 %_17.not, label %bb5, label %bb4

bb13:                                             ; preds = %bb13.lr.ph, %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17he37b00fe672cfbc1E.exit"
  %ptr.sroa.0.028 = phi ptr [ %3, %bb13.lr.ph ], [ %_15, %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17he37b00fe672cfbc1E.exit" ]
  %iter.sroa.0.027 = phi i64 [ 1, %bb13.lr.ph ], [ %_28, %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17he37b00fe672cfbc1E.exit" ]
  %storemerge26 = phi i64 [ %count, %bb13.lr.ph ], [ %13, %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17he37b00fe672cfbc1E.exit" ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1635)
  %_7.i7 = load ptr, ptr %4, align 8, !alias.scope !1635, !noalias !1638, !nonnull !15, !noundef !15
  %len.i8 = load i64, ptr %_3.i, align 8, !alias.scope !1635, !noalias !1638, !noundef !15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4.i.i.i), !noalias !1640
; invoke alloc::raw_vec::RawVecInner<A>::try_allocate_in
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_4.i.i.i, i64 noundef range(i64 0, 2305843009213693952) %len.i8, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc9 unwind label %cleanup2.loopexit

.noexc9:                                          ; preds = %bb13
  %_5.i.i.i = load i64, ptr %_4.i.i.i, align 8, !range !1034, !noalias !1640, !noundef !15
  %9 = trunc nuw i64 %_5.i.i.i to i1
  br i1 %9, label %bb3.i.i.i, label %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17he37b00fe672cfbc1E.exit", !prof !1036

bb3.i.i.i:                                        ; preds = %.noexc9
  %10 = getelementptr inbounds nuw i8, ptr %_4.i.i.i, i64 8
  %err.0.i.i.i = load i64, ptr %10, align 8, !range !1035, !noalias !1640, !noundef !15
  %11 = getelementptr inbounds nuw i8, ptr %_4.i.i.i, i64 16
  %err.1.i.i.i = load i64, ptr %11, align 8, !noalias !1640
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i.i, i64 %err.1.i.i.i) #28
          to label %.noexc10 unwind label %cleanup2.loopexit.split-lp

.noexc10:                                         ; preds = %bb3.i.i.i
  unreachable

"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17he37b00fe672cfbc1E.exit": ; preds = %.noexc9
  %this.0.i.i.i = load i64, ptr %5, align 8, !range !1630, !noalias !1640, !noundef !15
  %this.1.i.i.i = load ptr, ptr %6, align 8, !noalias !1640, !nonnull !15, !noundef !15
  %_7.i.i.i = icmp samesign ule i64 %len.i8, %this.0.i.i.i
  tail call void @llvm.assume(i1 %_7.i.i.i)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4.i.i.i), !noalias !1640
  %12 = shl nuw nsw i64 %len.i8, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %this.1.i.i.i, ptr nonnull readonly align 4 %_7.i7, i64 %12, i1 false), !noalias !1644
  %_28 = add nuw i64 %iter.sroa.0.027, 1
  store i64 %this.0.i.i.i, ptr %ptr.sroa.0.028, align 8
  %src.sroa.4.0.ptr.sroa.0.0.sroa_idx = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.028, i64 8
  store ptr %this.1.i.i.i, ptr %src.sroa.4.0.ptr.sroa.0.0.sroa_idx, align 8
  %src.sroa.5.0.ptr.sroa.0.0.sroa_idx = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.028, i64 16
  store i64 %len.i8, ptr %src.sroa.5.0.ptr.sroa.0.0.sroa_idx, align 8
  %_15 = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.028, i64 24
  %13 = add i64 %storemerge26, 1
  %exitcond.not = icmp eq i64 %_28, %n
  br i1 %exitcond.not, label %bb14, label %bb13

bb5:                                              ; preds = %bb14
  store i64 %storemerge.lcssa, ptr %0, align 8, !noalias !1645
; call alloc::raw_vec::RawVecInner<A>::deallocate
  tail call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %value, i64 noundef 4, i64 noundef 4)
  br label %bb7

bb4:                                              ; preds = %bb14
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %ptr.sroa.0.0.lcssa, ptr noundef nonnull align 8 dereferenceable(24) %value, i64 24, i1 false)
  %14 = add i64 %storemerge.lcssa, 1
  store i64 %14, ptr %0, align 8, !noalias !1650
  br label %bb7

bb7:                                              ; preds = %bb4, %bb5
  ret void

cleanup2.loopexit:                                ; preds = %bb13
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %cleanup2

cleanup2.loopexit.split-lp:                       ; preds = %bb3.i.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %cleanup2

cleanup2:                                         ; preds = %cleanup2.loopexit.split-lp, %cleanup2.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %cleanup2.loopexit ], [ %lpad.loopexit.split-lp, %cleanup2.loopexit.split-lp ]
  store i64 %storemerge26, ptr %0, align 8, !noalias !1655
  br label %bb11

terminate:                                        ; preds = %bb11
  %15 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #26
  unreachable

bb11:                                             ; preds = %cleanup, %cleanup2
  %.pn = phi { ptr, i32 } [ %lpad.phi, %cleanup2 ], [ %1, %cleanup ]
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %value, i64 noundef 4, i64 noundef 4)
          to label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h91c0f77914fce6b2E.exit" unwind label %terminate

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h91c0f77914fce6b2E.exit": ; preds = %bb11
  resume { ptr, i32 } %.pn
}

; alloc::vec::Vec<T,A>::reserve
; Function Attrs: nonlazybind uwtable
define void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h3a593d68f4581716E"(ptr noalias noundef align 8 dereferenceable(24) %self, i64 noundef %additional) unnamed_addr #1 {
start:
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %len = load i64, ptr %0, align 8, !noundef !15
  %self2 = load i64, ptr %self, align 8, !range !1630, !noundef !15
  %_9 = sub i64 %self2, %len
  %_7 = icmp ugt i64 %additional, %_9
  br i1 %_7, label %bb1, label %bb2, !prof !1036

bb2:                                              ; preds = %bb1, %start
  ret void

bb1:                                              ; preds = %start
; call alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle
  tail call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h3fb8db3e79fd71d4E"(ptr noalias noundef align 8 dereferenceable(16) %self, i64 noundef %len, i64 noundef %additional, i64 noundef 4, i64 noundef 4)
  br label %bb2
}

; alloc::vec::Vec<T,A>::reserve
; Function Attrs: nonlazybind uwtable
define void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf13b94cb6f3d09d2E"(ptr noalias noundef align 8 dereferenceable(24) %self, i64 noundef %additional) unnamed_addr #1 {
start:
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %len = load i64, ptr %0, align 8, !noundef !15
  %self2 = load i64, ptr %self, align 8, !range !1630, !noundef !15
  %_9 = sub i64 %self2, %len
  %_7 = icmp ugt i64 %additional, %_9
  br i1 %_7, label %bb1, label %bb2, !prof !1036

bb2:                                              ; preds = %bb1, %start
  ret void

bb1:                                              ; preds = %start
; call alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle
  tail call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h3fb8db3e79fd71d4E"(ptr noalias noundef align 8 dereferenceable(16) %self, i64 noundef %len, i64 noundef %additional, i64 noundef 8, i64 noundef 24)
  br label %bb2
}

; alloc::vec::from_elem
; Function Attrs: nonlazybind uwtable
define void @_ZN5alloc3vec9from_elem17h14b5f5cbe6dd6650E(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_0, ptr dead_on_return noalias noundef align 8 captures(address) dereferenceable(24) %elem, i64 noundef %n) unnamed_addr #1 {
start:
; call <T as alloc::vec::spec_from_elem::SpecFromElem>::from_elem
  tail call void @"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h34e7ec5e134c1d43E"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %elem, i64 noundef %n)
  ret void
}

; alloc::vec::from_elem
; Function Attrs: nonlazybind uwtable
define void @_ZN5alloc3vec9from_elem17h6df2ce29ad3e9a4eE(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_0, i32 noundef %elem, i64 noundef %n) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_4.i.i = alloca [24 x i8], align 8
  %_16.i = alloca [24 x i8], align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1660)
  %_0.i.i = icmp eq i32 %elem, 0
  br i1 %_0.i.i, label %bb2.i, label %bb3.i

bb3.i:                                            ; preds = %start
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4.i.i), !noalias !1660
; call alloc::raw_vec::RawVecInner<A>::try_allocate_in
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_4.i.i, i64 noundef %n, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4), !noalias !1660
  %_5.i.i = load i64, ptr %_4.i.i, align 8, !range !1034, !noalias !1660, !noundef !15
  %0 = trunc nuw i64 %_5.i.i to i1
  %1 = getelementptr inbounds nuw i8, ptr %_4.i.i, i64 8
  %err.0.i.i = load i64, ptr %1, align 8, !range !1035, !noalias !1660, !noundef !15
  %2 = getelementptr inbounds nuw i8, ptr %_4.i.i, i64 16
  br i1 %0, label %bb3.i.i, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17ha469c8339a8f86c2E.exit.i", !prof !1036

bb3.i.i:                                          ; preds = %bb3.i
  %err.1.i.i = load i64, ptr %2, align 8, !noalias !1660
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #28, !noalias !1660
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17ha469c8339a8f86c2E.exit.i": ; preds = %bb3.i
  %this.1.i.i = load ptr, ptr %2, align 8, !noalias !1660, !nonnull !15, !noundef !15
  %_7.i.i = icmp ule i64 %n, %err.0.i.i
  tail call void @llvm.assume(i1 %_7.i.i)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4.i.i), !noalias !1660
  %_2415.i.i = icmp ugt i64 %n, 1
  br i1 %_2415.i.i, label %bb13.i.i.preheader, label %bb14.i.i

bb13.i.i.preheader:                               ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17ha469c8339a8f86c2E.exit.i"
  %3 = add i64 %n, -1
  %4 = add i64 %n, -2
  %xtraiter = and i64 %3, 7
  %5 = icmp ult i64 %4, 7
  br i1 %5, label %bb14.loopexit.i.i.unr-lcssa, label %bb13.i.i.preheader.new

bb13.i.i.preheader.new:                           ; preds = %bb13.i.i.preheader
  %unroll_iter = and i64 %3, -8
  br label %bb13.i.i

bb14.loopexit.i.i.unr-lcssa:                      ; preds = %bb13.i.i, %bb13.i.i.preheader
  %_15.i.i.lcssa.ph = phi ptr [ poison, %bb13.i.i.preheader ], [ %_15.i.i.7, %bb13.i.i ]
  %ptr.sroa.0.018.i.i.unr = phi ptr [ %this.1.i.i, %bb13.i.i.preheader ], [ %_15.i.i.7, %bb13.i.i ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb14.loopexit.i.i, label %bb13.i.i.epil

bb13.i.i.epil:                                    ; preds = %bb14.loopexit.i.i.unr-lcssa, %bb13.i.i.epil
  %ptr.sroa.0.018.i.i.epil = phi ptr [ %_15.i.i.epil, %bb13.i.i.epil ], [ %ptr.sroa.0.018.i.i.unr, %bb14.loopexit.i.i.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %bb13.i.i.epil ], [ 0, %bb14.loopexit.i.i.unr-lcssa ]
  store i32 %elem, ptr %ptr.sroa.0.018.i.i.epil, align 4, !noalias !1660
  %_15.i.i.epil = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i.epil, i64 4
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %bb14.loopexit.i.i, label %bb13.i.i.epil, !llvm.loop !1663

bb14.loopexit.i.i:                                ; preds = %bb13.i.i.epil, %bb14.loopexit.i.i.unr-lcssa
  %_15.i.i.lcssa = phi ptr [ %_15.i.i.lcssa.ph, %bb14.loopexit.i.i.unr-lcssa ], [ %_15.i.i.epil, %bb13.i.i.epil ]
  %6 = add i64 %n, -1
  br label %bb14.i.i

bb14.i.i:                                         ; preds = %bb14.loopexit.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17ha469c8339a8f86c2E.exit.i"
  %storemerge.lcssa.i.i = phi i64 [ 0, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17ha469c8339a8f86c2E.exit.i" ], [ %6, %bb14.loopexit.i.i ]
  %ptr.sroa.0.0.lcssa.i.i = phi ptr [ %this.1.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17ha469c8339a8f86c2E.exit.i" ], [ %_15.i.i.lcssa, %bb14.loopexit.i.i ]
  %_17.not.i.i = icmp eq i64 %n, 0
  br i1 %_17.not.i.i, label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h3477d8a424cb15c8E.exit", label %bb4.i.i

bb13.i.i:                                         ; preds = %bb13.i.i, %bb13.i.i.preheader.new
  %ptr.sroa.0.018.i.i = phi ptr [ %this.1.i.i, %bb13.i.i.preheader.new ], [ %_15.i.i.7, %bb13.i.i ]
  %niter = phi i64 [ 0, %bb13.i.i.preheader.new ], [ %niter.next.7, %bb13.i.i ]
  store i32 %elem, ptr %ptr.sroa.0.018.i.i, align 4, !noalias !1660
  %_15.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i, i64 4
  store i32 %elem, ptr %_15.i.i, align 4, !noalias !1660
  %_15.i.i.1 = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i, i64 8
  store i32 %elem, ptr %_15.i.i.1, align 4, !noalias !1660
  %_15.i.i.2 = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i, i64 12
  store i32 %elem, ptr %_15.i.i.2, align 4, !noalias !1660
  %_15.i.i.3 = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i, i64 16
  store i32 %elem, ptr %_15.i.i.3, align 4, !noalias !1660
  %_15.i.i.4 = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i, i64 20
  store i32 %elem, ptr %_15.i.i.4, align 4, !noalias !1660
  %_15.i.i.5 = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i, i64 24
  store i32 %elem, ptr %_15.i.i.5, align 4, !noalias !1660
  %_15.i.i.6 = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i, i64 28
  store i32 %elem, ptr %_15.i.i.6, align 4, !noalias !1660
  %_15.i.i.7 = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i, i64 32
  %niter.next.7 = add i64 %niter, 8
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %bb14.loopexit.i.i.unr-lcssa, label %bb13.i.i

bb4.i.i:                                          ; preds = %bb14.i.i
  store i32 %elem, ptr %ptr.sroa.0.0.lcssa.i.i, align 4, !noalias !1660
  %7 = add i64 %storemerge.lcssa.i.i, 1
  br label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h3477d8a424cb15c8E.exit"

bb2.i:                                            ; preds = %start
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_16.i), !noalias !1660
; call alloc::raw_vec::RawVecInner<A>::try_allocate_in
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_16.i, i64 noundef %n, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4), !noalias !1660
  %_17.i = load i64, ptr %_16.i, align 8, !range !1034, !noalias !1660, !noundef !15
  %8 = trunc nuw i64 %_17.i to i1
  %9 = getelementptr inbounds nuw i8, ptr %_16.i, i64 8
  %err.0.i = load i64, ptr %9, align 8, !range !1035, !noalias !1660, !noundef !15
  %10 = getelementptr inbounds nuw i8, ptr %_16.i, i64 16
  br i1 %8, label %bb14.i, label %bb15.i, !prof !1036

bb14.i:                                           ; preds = %bb2.i
  %err.1.i = load i64, ptr %10, align 8, !noalias !1660
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i, i64 %err.1.i) #28, !noalias !1660
  unreachable

bb15.i:                                           ; preds = %bb2.i
  %res.1.i = load ptr, ptr %10, align 8, !noalias !1660, !nonnull !15, !noundef !15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_16.i), !noalias !1660
  br label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h3477d8a424cb15c8E.exit"

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h3477d8a424cb15c8E.exit": ; preds = %bb14.i.i, %bb4.i.i, %bb15.i
  %err.0.i.i.sink = phi i64 [ %err.0.i, %bb15.i ], [ %err.0.i.i, %bb4.i.i ], [ %err.0.i.i, %bb14.i.i ]
  %this.1.i.i.sink = phi ptr [ %res.1.i, %bb15.i ], [ %this.1.i.i, %bb4.i.i ], [ %this.1.i.i, %bb14.i.i ]
  %storemerge14.i.i.sink = phi i64 [ %n, %bb15.i ], [ %7, %bb4.i.i ], [ %storemerge.lcssa.i.i, %bb14.i.i ]
  store i64 %err.0.i.i.sink, ptr %_0, align 8, !alias.scope !1660
  %v.sroa.4.0._0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %_0, i64 8
  store ptr %this.1.i.i.sink, ptr %v.sroa.4.0._0.sroa_idx.i, align 8, !alias.scope !1660
  %v.sroa.5.0._0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %_0, i64 16
  store i64 %storemerge14.i.i.sink, ptr %v.sroa.5.0._0.sroa_idx.i, align 8, !alias.scope !1660
  ret void
}

; alloc::slice::<impl core::slice::sort::stable::BufGuard<T> for alloc::vec::Vec<T>>::with_capacity
; Function Attrs: nonlazybind uwtable
define void @"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h72ada26c27c7a805E"(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_0, i64 noundef %capacity) unnamed_addr #1 {
start:
  %_4.i = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4.i)
; call alloc::raw_vec::RawVecInner<A>::try_allocate_in
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_4.i, i64 noundef %capacity, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
  %_5.i = load i64, ptr %_4.i, align 8, !range !1034, !noundef !15
  %0 = trunc nuw i64 %_5.i to i1
  %1 = getelementptr inbounds nuw i8, ptr %_4.i, i64 8
  %err.0.i = load i64, ptr %1, align 8, !range !1035, !noundef !15
  %2 = getelementptr inbounds nuw i8, ptr %_4.i, i64 16
  br i1 %0, label %bb3.i, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17ha469c8339a8f86c2E.exit", !prof !1036

bb3.i:                                            ; preds = %start
  %err.1.i = load i64, ptr %2, align 8
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i, i64 %err.1.i) #28
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17ha469c8339a8f86c2E.exit": ; preds = %start
  %this.1.i = load ptr, ptr %2, align 8, !nonnull !15, !noundef !15
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
define { ptr, i64 } @"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$19as_uninit_slice_mut17h1862f402e353411bE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %self) unnamed_addr #10 {
start:
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %_10 = load ptr, ptr %0, align 8, !nonnull !15, !noundef !15
  %1 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %count = load i64, ptr %1, align 8, !noundef !15
  %_3 = getelementptr inbounds nuw i32, ptr %_10, i64 %count
  %self1 = load i64, ptr %self, align 8, !range !1630, !noundef !15
  %len = sub i64 %self1, %count
  %2 = insertvalue { ptr, i64 } poison, ptr %_3, 0
  %3 = insertvalue { ptr, i64 } %2, i64 %len, 1
  ret { ptr, i64 } %3
}

; <T as alloc::vec::spec_from_elem::SpecFromElem>::from_elem
; Function Attrs: nonlazybind uwtable
define void @"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h34e7ec5e134c1d43E"(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_0, ptr dead_on_return noalias noundef align 8 captures(address) dereferenceable(24) %elem, i64 noundef %n) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_4.i = alloca [24 x i8], align 8
  %_7 = alloca [24 x i8], align 8
  %v = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %v)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4.i)
; invoke alloc::raw_vec::RawVecInner<A>::try_allocate_in
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_4.i, i64 noundef %n, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24)
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %start
  %_5.i = load i64, ptr %_4.i, align 8, !range !1034, !noundef !15
  %0 = trunc nuw i64 %_5.i to i1
  %1 = getelementptr inbounds nuw i8, ptr %_4.i, i64 8
  %err.0.i = load i64, ptr %1, align 8, !range !1035, !noundef !15
  %2 = getelementptr inbounds nuw i8, ptr %_4.i, i64 16
  br i1 %0, label %bb3.i, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17ha469c8339a8f86c2E.exit", !prof !1036

bb3.i:                                            ; preds = %.noexc
  %err.1.i = load i64, ptr %2, align 8
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i, i64 %err.1.i) #28
          to label %.noexc3 unwind label %cleanup

.noexc3:                                          ; preds = %bb3.i
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17ha469c8339a8f86c2E.exit": ; preds = %.noexc
  %this.1.i = load ptr, ptr %2, align 8, !nonnull !15, !noundef !15
  %_7.i = icmp ule i64 %n, %err.0.i
  tail call void @llvm.assume(i1 %_7.i)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4.i)
  store i64 %err.0.i, ptr %v, align 8
  %3 = getelementptr inbounds nuw i8, ptr %v, i64 8
  store ptr %this.1.i, ptr %3, align 8
  %4 = getelementptr inbounds nuw i8, ptr %v, i64 16
  store i64 0, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_7, ptr noundef nonnull align 8 dereferenceable(24) %elem, i64 24, i1 false)
; invoke alloc::vec::Vec<T,A>::extend_with
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$11extend_with17ha273e21d9f440fedE"(ptr noalias noundef align 8 dereferenceable(24) %v, i64 noundef %n, ptr noalias noundef align 8 captures(address) dereferenceable(24) %_7)
          to label %bb1 unwind label %cleanup1

bb5:                                              ; preds = %cleanup1, %cleanup
  %.pn = phi { ptr, i32 } [ %6, %cleanup1 ], [ %5, %cleanup ]
  %_8.sroa.0.0 = phi i1 [ false, %cleanup1 ], [ true, %cleanup ]
  br i1 %_8.sroa.0.0, label %bb4, label %bb3

cleanup:                                          ; preds = %bb3.i, %start
  %5 = landingpad { ptr, i32 }
          cleanup
  br label %bb5

cleanup1:                                         ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17ha469c8339a8f86c2E.exit"
  %6 = landingpad { ptr, i32 }
          cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h3a8b9c85b5d7ee4aE"(ptr noalias noundef align 8 dereferenceable(24) %v) #30
          to label %bb5 unwind label %terminate

bb1:                                              ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17ha469c8339a8f86c2E.exit"
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_0, ptr noundef nonnull align 8 dereferenceable(24) %v, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %v)
  ret void

terminate:                                        ; preds = %bb4, %cleanup1
  %7 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #26
  unreachable

bb3:                                              ; preds = %bb4, %bb5
  resume { ptr, i32 } %.pn

bb4:                                              ; preds = %bb5
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %elem, i64 noundef 4, i64 noundef 4)
          to label %bb3 unwind label %terminate
}

; <alloc::vec::Vec<T,A> as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17he37b00fe672cfbc1E"(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %self) unnamed_addr #1 {
start:
  %_4.i.i = alloca [24 x i8], align 8
  %_3 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %_7 = load ptr, ptr %0, align 8, !nonnull !15, !noundef !15
  %len = load i64, ptr %_3, align 8, !noundef !15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1664)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4.i.i), !noalias !1667
; call alloc::raw_vec::RawVecInner<A>::try_allocate_in
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_4.i.i, i64 noundef range(i64 0, 2305843009213693952) %len, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4), !noalias !1667
  %_5.i.i = load i64, ptr %_4.i.i, align 8, !range !1034, !noalias !1667, !noundef !15
  %1 = trunc nuw i64 %_5.i.i to i1
  %2 = getelementptr inbounds nuw i8, ptr %_4.i.i, i64 8
  %err.0.i.i = load i64, ptr %2, align 8, !range !1035, !noalias !1667, !noundef !15
  %3 = getelementptr inbounds nuw i8, ptr %_4.i.i, i64 16
  br i1 %1, label %bb3.i.i, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hbc1df9b7f83ec616E.exit", !prof !1036

bb3.i.i:                                          ; preds = %start
  %err.1.i.i = load i64, ptr %3, align 8, !noalias !1667
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #28, !noalias !1667
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hbc1df9b7f83ec616E.exit": ; preds = %start
  %this.1.i.i = load ptr, ptr %3, align 8, !noalias !1667, !nonnull !15, !noundef !15
  %_7.i.i = icmp samesign ule i64 %len, %err.0.i.i
  tail call void @llvm.assume(i1 %_7.i.i)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4.i.i), !noalias !1667
  store i64 %err.0.i.i, ptr %_0, align 8, !alias.scope !1664, !noalias !1669
  %4 = getelementptr inbounds nuw i8, ptr %_0, i64 8
  store ptr %this.1.i.i, ptr %4, align 8, !alias.scope !1664, !noalias !1669
  %5 = getelementptr inbounds nuw i8, ptr %_0, i64 16
  store i64 0, ptr %5, align 8, !alias.scope !1664, !noalias !1669
  %6 = shl nuw nsw i64 %len, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %this.1.i.i, ptr nonnull readonly align 4 %_7, i64 %6, i1 false), !noalias !1664
  store i64 %len, ptr %5, align 8, !alias.scope !1664, !noalias !1669
  ret void
}

; <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1ad952b8de400569E"(ptr noalias noundef readnone align 8 captures(none) dereferenceable(24) %self) unnamed_addr #6 {
start:
  ret void
}

; <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: nonlazybind uwtable
define void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb53c353610fc9419E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %self) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %_5 = load ptr, ptr %0, align 8, !nonnull !15, !noundef !15
  %1 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %len = load i64, ptr %1, align 8, !noundef !15
  br label %bb6.i

bb6.i:                                            ; preds = %bb5.i, %start
  %_3.sroa.0.0.i = phi i64 [ 0, %start ], [ %2, %bb5.i ]
  %_7.i = icmp eq i64 %_3.sroa.0.0.i, %len
  br i1 %_7.i, label %"_ZN4core3ptr57drop_in_place$LT$$u5b$alloc..vec..Vec$LT$i32$GT$$u5d$$GT$17h2ec8408a5fd298e0E.exit", label %bb5.i

bb5.i:                                            ; preds = %bb6.i
  %_6.i = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_5, i64 %_3.sroa.0.0.i
  %2 = add i64 %_3.sroa.0.0.i, 1
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %_6.i, i64 noundef 4, i64 noundef 4)
          to label %bb6.i unwind label %cleanup.i

bb4.i:                                            ; preds = %bb3.i, %cleanup.i
  %_3.sroa.0.1.i = phi i64 [ %2, %cleanup.i ], [ %4, %bb3.i ]
  %_5.i = icmp eq i64 %_3.sroa.0.1.i, %len
  br i1 %_5.i, label %bb2.i, label %bb3.i

cleanup.i:                                        ; preds = %bb5.i
  %3 = landingpad { ptr, i32 }
          cleanup
  br label %bb4.i

bb3.i:                                            ; preds = %bb4.i
  %_4.i = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_5, i64 %_3.sroa.0.1.i
  %4 = add i64 %_3.sroa.0.1.i, 1
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %_4.i, i64 noundef 4, i64 noundef 4)
          to label %bb4.i unwind label %terminate.i

bb2.i:                                            ; preds = %bb4.i
  resume { ptr, i32 } %3

terminate.i:                                      ; preds = %bb3.i
  %5 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #26
  unreachable

"_ZN4core3ptr57drop_in_place$LT$$u5b$alloc..vec..Vec$LT$i32$GT$$u5d$$GT$17h2ec8408a5fd298e0E.exit": ; preds = %bb6.i
  ret void
}

; <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: nonlazybind uwtable
define void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ec3e298bda40ccfE"(ptr noalias noundef align 8 dereferenceable(16) %self) unnamed_addr #1 {
start:
; call alloc::raw_vec::RawVecInner<A>::deallocate
  tail call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef align 8 dereferenceable(16) %self, i64 noundef 4, i64 noundef 4)
  ret void
}

; <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: nonlazybind uwtable
define void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7ac4dd9e71017b6eE"(ptr noalias noundef align 8 dereferenceable(16) %self) unnamed_addr #1 {
start:
; call alloc::raw_vec::RawVecInner<A>::deallocate
  tail call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef align 8 dereferenceable(16) %self, i64 noundef 8, i64 noundef 24)
  ret void
}

; <core::slice::sort::stable::merge::MergeState<T> as core::ops::drop::Drop>::drop
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define void @"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd8b328cacf1fdc59E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %self) unnamed_addr #9 {
start:
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %self1 = load ptr, ptr %0, align 8, !noundef !15
  %_5 = load ptr, ptr %self, align 8, !noundef !15
  %1 = ptrtoint ptr %self1 to i64
  %2 = ptrtoint ptr %_5 to i64
  %3 = sub nuw i64 %1, %2
  %4 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %5 = load ptr, ptr %4, align 8, !noundef !15
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %5, ptr align 4 %_5, i64 %3, i1 false)
  ret void
}

; <core::hint::select_unpredictable::DropOnPanic<T> as core::ops::drop::Drop>::drop
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define void @"_ZN96_$LT$core..hint..select_unpredictable..DropOnPanic$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h57774a621bfa8198E"(ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %self) unnamed_addr #6 {
start:
  ret void
}

; <core::slice::sort::shared::smallsort::CopyOnDrop<T> as core::ops::drop::Drop>::drop
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define void @"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9aec70313b8fe040E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %self) unnamed_addr #9 {
start:
  %src = load ptr, ptr %self, align 8, !noundef !15
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %dst = load ptr, ptr %0, align 8, !noundef !15
  %1 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %count = load i64, ptr %1, align 8, !noundef !15
  %2 = shl i64 %count, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %dst, ptr align 4 %src, i64 %2, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: read) uwtable
define noundef range(i8 -1, 2) i8 @cmpfunc(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %a, ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %b) unnamed_addr #11 {
start:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1670)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1673)
  %_3.i = load i32, ptr %a, align 4, !alias.scope !1670, !noalias !1673, !noundef !15
  %_4.i = load i32, ptr %b, align 4, !alias.scope !1673, !noalias !1670, !noundef !15
  %_0.i = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i32(i32 %_3.i, i32 %_4.i)
  ret i8 %_0.i
}

; Function Attrs: nonlazybind uwtable
define noundef range(i32 0, -2147483648) i32 @f_gold(i32 noundef %n) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_16.i.i = alloca [24 x i8], align 8
  %_3 = alloca [24 x i8], align 8
  %c = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %c)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_3)
  %_5 = sext i32 %n to i64
  %_4 = add nsw i64 %_5, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1675)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1678)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1681
; call alloc::raw_vec::RawVecInner<A>::try_allocate_in
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_16.i.i, i64 noundef %_4, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4), !noalias !1681
  %_17.i.i = load i64, ptr %_16.i.i, align 8, !range !1034, !noalias !1681, !noundef !15
  %0 = trunc nuw i64 %_17.i.i to i1
  %1 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 8
  %err.0.i.i = load i64, ptr %1, align 8, !range !1035, !noalias !1681, !noundef !15
  %2 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 16
  br i1 %0, label %bb14.i.i, label %_ZN5alloc3vec9from_elem17h6df2ce29ad3e9a4eE.exit, !prof !1036

bb14.i.i:                                         ; preds = %start
  %err.1.i.i = load i64, ptr %2, align 8, !noalias !1681
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #28, !noalias !1681
  unreachable

_ZN5alloc3vec9from_elem17h6df2ce29ad3e9a4eE.exit: ; preds = %start
  %res.1.i.i = load ptr, ptr %2, align 8, !noalias !1681, !nonnull !15, !noundef !15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1681
  store i64 %err.0.i.i, ptr %_3, align 8, !alias.scope !1681
  %3 = getelementptr inbounds nuw i8, ptr %_3, i64 8
  store ptr %res.1.i.i, ptr %3, align 8, !alias.scope !1681
  %4 = getelementptr inbounds nuw i8, ptr %_3, i64 16
  store i64 %_4, ptr %4, align 8, !alias.scope !1681
; call <T as alloc::vec::spec_from_elem::SpecFromElem>::from_elem
  call void @"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h34e7ec5e134c1d43E"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %c, ptr noalias noundef align 8 captures(address) dereferenceable(24) %_3, i64 noundef %_4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_3)
  %5 = getelementptr inbounds nuw i8, ptr %c, i64 16
  %6 = getelementptr inbounds nuw i8, ptr %c, i64 8
  %7 = getelementptr inbounds nuw i8, ptr %c, i64 16
  %8 = getelementptr inbounds nuw i8, ptr %c, i64 8
  %_0.i.not.i.i208 = icmp slt i32 %n, 0
  br i1 %_0.i.not.i.i208, label %bb31.preheader, label %bb8.lr.ph

bb8.lr.ph:                                        ; preds = %_ZN5alloc3vec9from_elem17h6df2ce29ad3e9a4eE.exit
  %.not = icmp eq i32 %n, 0
  %iter.sroa.7.1213 = zext i1 %.not to i8
  %_0.i3.i.i209 = icmp ne i32 %n, 0
  %spec.select212 = zext i1 %_0.i3.i.i209 to i32
  br label %bb8

cleanup:                                          ; preds = %panic.i.i91.invoke
  %9 = landingpad { ptr, i32 }
          cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h3a8b9c85b5d7ee4aE"(ptr noalias noundef align 8 dereferenceable(24) %c) #30
          to label %bb40 unwind label %terminate

bb5.loopexit:                                     ; preds = %bb28
  %_10.i.i = trunc nuw i8 %iter.sroa.7.1215 to i1
  %_0.i.not.i.i = icmp sgt i32 %iter.sroa.0.1214, %n
  %or.cond101 = select i1 %_10.i.i, i1 true, i1 %_0.i.not.i.i
  %_0.i3.i.i = icmp slt i32 %iter.sroa.0.1214, %n
  %not.or.cond101 = xor i1 %or.cond101, true
  %narrow = select i1 %not.or.cond101, i1 %_0.i3.i.i, i1 false
  %spec.select = zext i1 %narrow to i32
  %iter.sroa.0.1 = add nuw nsw i32 %iter.sroa.0.1214, %spec.select
  %10 = select i1 %or.cond101, i1 true, i1 %_0.i3.i.i
  %iter.sroa.7.1 = select i1 %10, i8 %iter.sroa.7.1215, i8 1
  %_0.sroa.3.0.i.i = select i1 %_10.i.i, i32 undef, i32 %iter.sroa.0.1214
  br i1 %or.cond101, label %bb31.preheader, label %bb8

bb31.preheader:                                   ; preds = %bb5.loopexit, %_ZN5alloc3vec9from_elem17h6df2ce29ad3e9a4eE.exit
  %11 = getelementptr inbounds nuw i8, ptr %c, i64 16
  %len.i = load i64, ptr %11, align 8
  %_4.i.i = icmp ugt i64 %len.i, %_5
  %12 = getelementptr inbounds nuw i8, ptr %c, i64 8
  %_6.i = load ptr, ptr %12, align 8, !nonnull !15
  %_0.i.i = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i, i64 %_5
  %13 = getelementptr inbounds nuw i8, ptr %_0.i.i, i64 16
  %14 = getelementptr inbounds nuw i8, ptr %_0.i.i, i64 8
  br label %bb31

bb8:                                              ; preds = %bb8.lr.ph, %bb5.loopexit
  %_0.sroa.3.0.i.i216 = phi i32 [ 0, %bb8.lr.ph ], [ %_0.sroa.3.0.i.i, %bb5.loopexit ]
  %iter.sroa.7.1215 = phi i8 [ %iter.sroa.7.1213, %bb8.lr.ph ], [ %iter.sroa.7.1, %bb5.loopexit ]
  %iter.sroa.0.1214 = phi i32 [ %spec.select212, %bb8.lr.ph ], [ %iter.sroa.0.1, %bb5.loopexit ]
  %_0.sroa.0.0.i = call noundef i32 @llvm.smin.i32(i32 %n, i32 %_0.sroa.3.0.i.i216)
  %_33 = add i32 %_0.sroa.3.0.i.i216, -1
  %_32 = sext i32 %_33 to i64
  %_44 = sext i32 %_0.sroa.3.0.i.i216 to i64
  %_26 = sext i32 %_0.sroa.3.0.i.i216 to i64
  %_0.i3.i.i36200 = icmp sgt i32 %_0.sroa.0.0.i, 0
  %not._0.i3.i.i36200 = xor i1 %_0.i3.i.i36200, true
  %iter1.sroa.7.1204 = zext i1 %not._0.i3.i.i36200 to i8
  %spec.select99203 = zext i1 %_0.i3.i.i36200 to i32
  br label %bb15

bb31:                                             ; preds = %bb31.preheader, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h15d643618ef514cbE.exit"
  %iter2.sroa.0.0 = phi i32 [ %iter2.sroa.0.1, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h15d643618ef514cbE.exit" ], [ 0, %bb31.preheader ]
  %iter2.sroa.7.0 = phi i8 [ %iter2.sroa.7.1, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h15d643618ef514cbE.exit" ], [ 0, %bb31.preheader ]
  %maxvalue.sroa.0.0 = phi i32 [ %_0.sroa.0.0.i28, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h15d643618ef514cbE.exit" ], [ 0, %bb31.preheader ]
  %_10.i.i9 = trunc nuw i8 %iter2.sroa.7.0 to i1
  %_0.i.not.i.i14 = icmp sgt i32 %iter2.sroa.0.0, %n
  %or.cond102 = select i1 %_10.i.i9, i1 true, i1 %_0.i.not.i.i14
  br i1 %or.cond102, label %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17he4a309e31477d70aE.exit21", label %bb2.i.i15

bb2.i.i15:                                        ; preds = %bb31
  %_0.i3.i.i16 = icmp slt i32 %iter2.sroa.0.0, %n
  %15 = zext i1 %_0.i3.i.i16 to i32
  %spec.select97 = add nsw i32 %iter2.sroa.0.0, %15
  %spec.select98 = select i1 %_0.i3.i.i16, i8 %iter2.sroa.7.0, i8 1
  %16 = sext i32 %iter2.sroa.0.0 to i64
  br label %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17he4a309e31477d70aE.exit21"

"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17he4a309e31477d70aE.exit21": ; preds = %bb2.i.i15, %bb31
  %iter2.sroa.0.1 = phi i32 [ %iter2.sroa.0.0, %bb31 ], [ %spec.select97, %bb2.i.i15 ]
  %iter2.sroa.7.1 = phi i8 [ %iter2.sroa.7.0, %bb31 ], [ %spec.select98, %bb2.i.i15 ]
  %_0.sroa.3.0.i.i18 = phi i64 [ 0, %bb31 ], [ %16, %bb2.i.i15 ]
  br i1 %or.cond102, label %bb34, label %bb33

bb33:                                             ; preds = %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17he4a309e31477d70aE.exit21"
  br i1 %_4.i.i, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5089ef636e9585e4E.exit", label %panic.i.i91.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5089ef636e9585e4E.exit": ; preds = %bb33
  %len.i22 = load i64, ptr %13, align 8, !alias.scope !1682, !noalias !1685, !noundef !15
  %_4.i.i23 = icmp ult i64 %_0.sroa.3.0.i.i18, %len.i22
  br i1 %_4.i.i23, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h15d643618ef514cbE.exit", label %panic.i.i91.invoke

bb34:                                             ; preds = %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17he4a309e31477d70aE.exit21"
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h3a8b9c85b5d7ee4aE"(ptr noalias noundef align 8 dereferenceable(24) %c)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %c)
  ret i32 %maxvalue.sroa.0.0

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h15d643618ef514cbE.exit": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5089ef636e9585e4E.exit"
  %_6.i25 = load ptr, ptr %14, align 8, !alias.scope !1682, !noalias !1685, !nonnull !15, !noundef !15
  %_0.i.i26 = getelementptr inbounds nuw i32, ptr %_6.i25, i64 %_0.sroa.3.0.i.i18
  %_53 = load i32, ptr %_0.i.i26, align 4, !noundef !15
  %_0.sroa.0.0.i28 = call noundef i32 @llvm.smax.i32(i32 %_53, i32 %maxvalue.sroa.0.0)
  br label %bb31

bb15:                                             ; preds = %bb8, %bb28
  %_0.sroa.3.0.i.i38207 = phi i32 [ 0, %bb8 ], [ %_0.sroa.3.0.i.i38, %bb28 ]
  %iter1.sroa.7.1206 = phi i8 [ %iter1.sroa.7.1204, %bb8 ], [ %iter1.sroa.7.1, %bb28 ]
  %iter1.sroa.0.1205 = phi i32 [ %spec.select99203, %bb8 ], [ %iter1.sroa.0.1, %bb28 ]
  %_21 = icmp eq i32 %_0.sroa.3.0.i.i38207, 0
  %_22 = icmp eq i32 %_0.sroa.3.0.i.i38207, %_0.sroa.3.0.i.i216
  %or.cond = or i1 %_21, %_22
  br i1 %or.cond, label %bb18, label %bb21

bb18:                                             ; preds = %bb15
  %len.i42 = load i64, ptr %7, align 8, !alias.scope !1687, !noalias !1690, !noundef !15
  %_4.i.i43 = icmp ugt i64 %len.i42, %_26
  br i1 %_4.i.i43, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc28fb23a363afff4E.exit", label %panic.i.i91.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc28fb23a363afff4E.exit": ; preds = %bb18
  %_6.i45 = load ptr, ptr %8, align 8, !alias.scope !1687, !noalias !1690, !nonnull !15, !noundef !15
  %_0.i.i46 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i45, i64 %_26
  %_27 = sext i32 %_0.sroa.3.0.i.i38207 to i64
  %17 = getelementptr inbounds nuw i8, ptr %_0.i.i46, i64 16
  %len.i89 = load i64, ptr %17, align 8, !alias.scope !1692, !noalias !1695, !noundef !15
  %_4.i.i90 = icmp ugt i64 %len.i89, %_27
  br i1 %_4.i.i90, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hdbc3c48ed40c3435E.exit95", label %panic.i.i91.invoke

bb21:                                             ; preds = %bb15
  %len.i48 = load i64, ptr %5, align 8, !alias.scope !1697, !noalias !1700, !noundef !15
  %_4.i.i49 = icmp ugt i64 %len.i48, %_32
  br i1 %_4.i.i49, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5089ef636e9585e4E.exit54", label %panic.i.i91.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5089ef636e9585e4E.exit54": ; preds = %bb21
  %_6.i51 = load ptr, ptr %6, align 8, !alias.scope !1697, !noalias !1700, !nonnull !15, !noundef !15
  %_0.i.i52 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i51, i64 %_32
  %_35 = add i32 %_0.sroa.3.0.i.i38207, -1
  %_34 = sext i32 %_35 to i64
  %18 = getelementptr inbounds nuw i8, ptr %_0.i.i52, i64 16
  %len.i55 = load i64, ptr %18, align 8, !alias.scope !1702, !noalias !1705, !noundef !15
  %_4.i.i56 = icmp ugt i64 %len.i55, %_34
  br i1 %_4.i.i56, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h15d643618ef514cbE.exit61", label %panic.i.i91.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h15d643618ef514cbE.exit61": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5089ef636e9585e4E.exit54"
  %19 = getelementptr inbounds nuw i8, ptr %_0.i.i52, i64 8
  %_6.i58 = load ptr, ptr %19, align 8, !alias.scope !1702, !noalias !1705, !nonnull !15, !noundef !15
  %_0.i.i59 = getelementptr inbounds nuw i32, ptr %_6.i58, i64 %_34
  %_28 = load i32, ptr %_0.i.i59, align 4, !noundef !15
  %_40 = sext i32 %_0.sroa.3.0.i.i38207 to i64
  %_4.i.i70 = icmp ugt i64 %len.i55, %_40
  br i1 %_4.i.i70, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h15d643618ef514cbE.exit75", label %panic.i.i91.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h15d643618ef514cbE.exit75": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h15d643618ef514cbE.exit61"
  %_0.i.i73 = getelementptr inbounds nuw i32, ptr %_6.i58, i64 %_40
  %_36 = load i32, ptr %_0.i.i73, align 4, !noundef !15
  %_4.i.i77 = icmp ugt i64 %len.i48, %_44
  br i1 %_4.i.i77, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc28fb23a363afff4E.exit82", label %panic.i.i91.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc28fb23a363afff4E.exit82": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h15d643618ef514cbE.exit75"
  %_0.i.i80 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i51, i64 %_44
  %20 = getelementptr inbounds nuw i8, ptr %_0.i.i80, i64 16
  %len.i83 = load i64, ptr %20, align 8, !alias.scope !1707, !noalias !1710, !noundef !15
  %_4.i.i84 = icmp ugt i64 %len.i83, %_40
  br i1 %_4.i.i84, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hdbc3c48ed40c3435E.exit", label %panic.i.i91.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hdbc3c48ed40c3435E.exit": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc28fb23a363afff4E.exit82"
  %21 = getelementptr inbounds nuw i8, ptr %_0.i.i80, i64 8
  %_6.i86 = load ptr, ptr %21, align 8, !alias.scope !1707, !noalias !1710, !nonnull !15, !noundef !15
  %_0.i.i87 = getelementptr inbounds nuw i32, ptr %_6.i86, i64 %_40
  %22 = add i32 %_36, %_28
  store i32 %22, ptr %_0.i.i87, align 4
  br label %bb28

bb28:                                             ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hdbc3c48ed40c3435E.exit95", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hdbc3c48ed40c3435E.exit"
  %_10.i.i29 = trunc nuw i8 %iter1.sroa.7.1206 to i1
  %_0.i.not.i.i34 = icmp sgt i32 %iter1.sroa.0.1205, %_0.sroa.0.0.i
  %or.cond103 = select i1 %_10.i.i29, i1 true, i1 %_0.i.not.i.i34
  %_0.i3.i.i36 = icmp slt i32 %iter1.sroa.0.1205, %_0.sroa.0.0.i
  %not.or.cond103 = xor i1 %or.cond103, true
  %narrow163 = select i1 %not.or.cond103, i1 %_0.i3.i.i36, i1 false
  %spec.select99 = zext i1 %narrow163 to i32
  %iter1.sroa.0.1 = add nuw nsw i32 %iter1.sroa.0.1205, %spec.select99
  %23 = select i1 %or.cond103, i1 true, i1 %_0.i3.i.i36
  %iter1.sroa.7.1 = select i1 %23, i8 %iter1.sroa.7.1206, i8 1
  %_0.sroa.3.0.i.i38 = select i1 %_10.i.i29, i32 undef, i32 %iter1.sroa.0.1205
  br i1 %or.cond103, label %bb5.loopexit, label %bb15

panic.i.i91.invoke:                               ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc28fb23a363afff4E.exit", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc28fb23a363afff4E.exit82", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h15d643618ef514cbE.exit75", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h15d643618ef514cbE.exit61", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5089ef636e9585e4E.exit54", %bb21, %bb18, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5089ef636e9585e4E.exit", %bb33
  %24 = phi i64 [ %_0.sroa.3.0.i.i18, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5089ef636e9585e4E.exit" ], [ %_5, %bb33 ], [ %_27, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc28fb23a363afff4E.exit" ], [ %_40, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc28fb23a363afff4E.exit82" ], [ %_44, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h15d643618ef514cbE.exit75" ], [ %_40, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h15d643618ef514cbE.exit61" ], [ %_34, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5089ef636e9585e4E.exit54" ], [ %_32, %bb21 ], [ %_26, %bb18 ]
  %25 = phi i64 [ %len.i22, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5089ef636e9585e4E.exit" ], [ %len.i, %bb33 ], [ %len.i89, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc28fb23a363afff4E.exit" ], [ %len.i83, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc28fb23a363afff4E.exit82" ], [ %len.i48, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h15d643618ef514cbE.exit75" ], [ %len.i55, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h15d643618ef514cbE.exit61" ], [ %len.i55, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5089ef636e9585e4E.exit54" ], [ %len.i48, %bb21 ], [ %len.i42, %bb18 ]
  %26 = phi ptr [ @alloc_1e8fdd1104d261ad7f39a3c1d8a95235, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5089ef636e9585e4E.exit" ], [ @alloc_e6278fc3b985cabc33cbe7253437c16e, %bb33 ], [ @alloc_c18deb6965edcfb42a6bfb69b885e960, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc28fb23a363afff4E.exit" ], [ @alloc_7225f095e65c0582b35bc44551853c0f, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc28fb23a363afff4E.exit82" ], [ @alloc_fd656603ea742b053409946d0f5af805, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h15d643618ef514cbE.exit75" ], [ @alloc_3fdbe2fb426dccaf98beefe3fb0f1f9c, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h15d643618ef514cbE.exit61" ], [ @alloc_af24b8a5666d2fb7ca96faa829b1425e, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5089ef636e9585e4E.exit54" ], [ @alloc_f2c1734d88cec735d43b795974dc6262, %bb21 ], [ @alloc_75da181a9525c852c2a4162e25355896, %bb18 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef range(i64 -2147483648, 2147483648) %24, i64 noundef range(i64 0, 2305843009213693952) %25, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %26) #27
          to label %panic.i.i91.cont unwind label %cleanup

panic.i.i91.cont:                                 ; preds = %panic.i.i91.invoke
  unreachable

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hdbc3c48ed40c3435E.exit95": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc28fb23a363afff4E.exit"
  %27 = getelementptr inbounds nuw i8, ptr %_0.i.i46, i64 8
  %_6.i92 = load ptr, ptr %27, align 8, !alias.scope !1692, !noalias !1695, !nonnull !15, !noundef !15
  %_0.i.i93 = getelementptr inbounds nuw i32, ptr %_6.i92, i64 %_27
  store i32 1, ptr %_0.i.i93, align 4
  br label %bb28

terminate:                                        ; preds = %cleanup
  %28 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #26
  unreachable

bb40:                                             ; preds = %cleanup
  resume { ptr, i32 } %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef range(i64 0, 2305843009213693952) i64 @len(ptr noalias noundef nonnull readonly align 4 captures(none) %arr.0, i64 noundef returned range(i64 0, 2305843009213693952) %arr.1) unnamed_addr #6 {
start:
  ret i64 %arr.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef i32 @max(i32 noundef %x, i32 noundef %y) unnamed_addr #6 {
start:
  %x.y = tail call i32 @llvm.smax.i32(i32 %x, i32 %y)
  ret i32 %x.y
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef i32 @min(i32 noundef %x, i32 noundef %y) unnamed_addr #6 {
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
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !1712
  store ptr %compare.i, ptr %is_less.i.i, align 8, !noalias !1715
  %b.i.i = icmp samesign ult i64 %arr.1, 2
  br i1 %b.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h09a227222c30777aE.exit", label %bb7.i.i, !prof !1719

bb7.i.i:                                          ; preds = %start
  %b1.i.i = icmp samesign ult i64 %arr.1, 21
  br i1 %b1.i.i, label %bb9.i.i, label %bb10.i.i, !prof !1719

bb10.i.i:                                         ; preds = %bb7.i.i
; call core::slice::sort::stable::driftsort_main
  call void @_ZN4core5slice4sort6stable14driftsort_main17h304f1a5e493b4936E(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, ptr noalias noundef align 8 dereferenceable(8) %is_less.i.i)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h09a227222c30777aE.exit"

bb9.i.i:                                          ; preds = %bb7.i.i
; call core::slice::sort::shared::smallsort::insertion_sort_shift_left
  call void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h1895662c7be8a561E(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, i64 noundef 1, ptr noalias align 8 poison)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h09a227222c30777aE.exit"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h09a227222c30777aE.exit": ; preds = %start, %bb10.i.i, %bb9.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !1712
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %compare.i)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #14

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.scmp.i8.i32(i32, i32) #15

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #16

; core::panicking::panic_in_cleanup
; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() unnamed_addr #17

; core::panicking::panic_fmt
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking9panic_fmt17ha4414e4328fe24a0E(ptr noundef nonnull, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #18

; core::panicking::panic_bounds_check
; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #19

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #20

; core::slice::sort::shared::smallsort::panic_on_ord_violation
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() unnamed_addr #18

; core::slice::index::slice_index_fail
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core5slice5index16slice_index_fail17h62807bcaa490c9c1E(i64 noundef, i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #18

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #15

; core::slice::sort::stable::drift::sqrt_approx
; Function Attrs: nonlazybind uwtable
declare noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h72a4dc1ae46294f4E(i64 noundef) unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #15

; alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle
; Function Attrs: cold nonlazybind uwtable
declare void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h3fb8db3e79fd71d4E"(ptr noalias noundef align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #21

; alloc::raw_vec::RawVecInner<A>::try_allocate_in
; Function Attrs: nonlazybind uwtable
declare void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #1

; alloc::raw_vec::handle_error
; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #22

; alloc::raw_vec::RawVecInner<A>::deallocate
; Function Attrs: nonlazybind uwtable
declare void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef align 8 dereferenceable(16), i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #24

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #25

attributes #0 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nofree norecurse nosync nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #17 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #21 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #26 = { cold noreturn nounwind }
attributes #27 = { noinline noreturn }
attributes #28 = { noreturn }
attributes #29 = { noinline }
attributes #30 = { cold }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.93.1 (01f6ddf75 2026-02-11)"}
!3 = !{!4}
!4 = distinct !{!4, !5, !"_ZN4core3ptr10swap_chunk17hb5942ad2788d39a2E: %x"}
!5 = distinct !{!5, !"_ZN4core3ptr10swap_chunk17hb5942ad2788d39a2E"}
!6 = !{!7}
!7 = distinct !{!7, !5, !"_ZN4core3ptr10swap_chunk17hb5942ad2788d39a2E: %y"}
!8 = !{!9}
!9 = distinct !{!9, !5, !"_ZN4core3ptr10swap_chunk17hb5942ad2788d39a2E: %x:It1"}
!10 = !{!11}
!11 = distinct !{!11, !5, !"_ZN4core3ptr10swap_chunk17hb5942ad2788d39a2E: %y:It1"}
!12 = !{!13}
!13 = distinct !{!13, !14, !"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb53c353610fc9419E: %self"}
!14 = distinct !{!14, !"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb53c353610fc9419E"}
!15 = !{}
!16 = !{!17}
!17 = distinct !{!17, !18, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %a"}
!18 = distinct !{!18, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE"}
!19 = !{!20}
!20 = distinct !{!20, !18, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %b"}
!21 = !{!22}
!22 = distinct !{!22, !23, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 0"}
!23 = distinct !{!23, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE"}
!24 = !{!25}
!25 = distinct !{!25, !26, !"_ZN4core5slice4sort6shared5pivot7median317hb13549aa539deb4fE: %c"}
!26 = distinct !{!26, !"_ZN4core5slice4sort6shared5pivot7median317hb13549aa539deb4fE"}
!27 = !{!28}
!28 = distinct !{!28, !23, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 1"}
!29 = !{!30}
!30 = distinct !{!30, !31, !"cmpfunc: %a"}
!31 = distinct !{!31, !"cmpfunc"}
!32 = !{!33}
!33 = distinct !{!33, !31, !"cmpfunc: %b"}
!34 = !{!35}
!35 = distinct !{!35, !36, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!36 = distinct !{!36, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!37 = !{!38}
!38 = distinct !{!38, !36, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!39 = !{!35, !30, !22, !17}
!40 = !{!38, !33, !28, !20, !25}
!41 = !{!38, !33, !28, !20}
!42 = !{!35, !30, !22, !17, !25}
!43 = !{!44, !46, !48, !50}
!44 = distinct !{!44, !45, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!45 = distinct !{!45, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!46 = distinct !{!46, !47, !"cmpfunc: %b"}
!47 = distinct !{!47, !"cmpfunc"}
!48 = distinct !{!48, !49, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 1"}
!49 = distinct !{!49, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE"}
!50 = distinct !{!50, !51, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %b"}
!51 = distinct !{!51, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE"}
!52 = !{!53, !54, !55, !56}
!53 = distinct !{!53, !45, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!54 = distinct !{!54, !47, !"cmpfunc: %a"}
!55 = distinct !{!55, !49, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 0"}
!56 = distinct !{!56, !51, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %a"}
!57 = !{!58}
!58 = distinct !{!58, !59, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %a"}
!59 = distinct !{!59, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE"}
!60 = !{!61}
!61 = distinct !{!61, !59, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %b"}
!62 = !{!63}
!63 = distinct !{!63, !64, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 0"}
!64 = distinct !{!64, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE"}
!65 = !{!66}
!66 = distinct !{!66, !64, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 1"}
!67 = !{!68}
!68 = distinct !{!68, !69, !"cmpfunc: %a"}
!69 = distinct !{!69, !"cmpfunc"}
!70 = !{!71}
!71 = distinct !{!71, !69, !"cmpfunc: %b"}
!72 = !{!73}
!73 = distinct !{!73, !74, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!74 = distinct !{!74, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!75 = !{!76}
!76 = distinct !{!76, !74, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!77 = !{!73, !68, !63, !58}
!78 = !{!76, !71, !66, !61}
!79 = !{!80, !82, !84, !86}
!80 = distinct !{!80, !81, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!81 = distinct !{!81, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!82 = distinct !{!82, !83, !"cmpfunc: %b"}
!83 = distinct !{!83, !"cmpfunc"}
!84 = distinct !{!84, !85, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 1"}
!85 = distinct !{!85, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE"}
!86 = distinct !{!86, !87, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %b"}
!87 = distinct !{!87, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE"}
!88 = !{!89, !90, !91, !92}
!89 = distinct !{!89, !81, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!90 = distinct !{!90, !83, !"cmpfunc: %a"}
!91 = distinct !{!91, !85, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 0"}
!92 = distinct !{!92, !87, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %a"}
!93 = !{!94, !96}
!94 = distinct !{!94, !95, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9aec70313b8fe040E: %self"}
!95 = distinct !{!95, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9aec70313b8fe040E"}
!96 = distinct !{!96, !97, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h2fc4fca717f08f03E: %_1"}
!97 = distinct !{!97, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h2fc4fca717f08f03E"}
!98 = !{!99}
!99 = distinct !{!99, !100, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %a"}
!100 = distinct !{!100, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE"}
!101 = !{!102}
!102 = distinct !{!102, !100, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %b"}
!103 = !{!104}
!104 = distinct !{!104, !105, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 0"}
!105 = distinct !{!105, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE"}
!106 = !{!107}
!107 = distinct !{!107, !105, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 1"}
!108 = !{!109}
!109 = distinct !{!109, !110, !"cmpfunc: %a"}
!110 = distinct !{!110, !"cmpfunc"}
!111 = !{!112}
!112 = distinct !{!112, !110, !"cmpfunc: %b"}
!113 = !{!114}
!114 = distinct !{!114, !115, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!115 = distinct !{!115, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!116 = !{!117}
!117 = distinct !{!117, !115, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!118 = !{!114, !109, !104, !99}
!119 = !{!117, !112, !107, !102}
!120 = !{!121}
!121 = distinct !{!121, !122, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %a"}
!122 = distinct !{!122, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE"}
!123 = !{!124}
!124 = distinct !{!124, !122, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %b"}
!125 = !{!126}
!126 = distinct !{!126, !127, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 0"}
!127 = distinct !{!127, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE"}
!128 = !{!129}
!129 = distinct !{!129, !127, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 1"}
!130 = !{!131}
!131 = distinct !{!131, !132, !"cmpfunc: %a"}
!132 = distinct !{!132, !"cmpfunc"}
!133 = !{!134}
!134 = distinct !{!134, !132, !"cmpfunc: %b"}
!135 = !{!136}
!136 = distinct !{!136, !137, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!137 = distinct !{!137, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!138 = !{!139}
!139 = distinct !{!139, !137, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!140 = !{!136, !131, !126, !121}
!141 = !{!139, !134, !129, !124}
!142 = !{!143}
!143 = distinct !{!143, !144, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %a"}
!144 = distinct !{!144, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE"}
!145 = !{!146}
!146 = distinct !{!146, !144, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %b"}
!147 = !{!148}
!148 = distinct !{!148, !149, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 0"}
!149 = distinct !{!149, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE"}
!150 = !{!151}
!151 = distinct !{!151, !149, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 1"}
!152 = !{!153}
!153 = distinct !{!153, !154, !"cmpfunc: %a"}
!154 = distinct !{!154, !"cmpfunc"}
!155 = !{!156}
!156 = distinct !{!156, !154, !"cmpfunc: %b"}
!157 = !{!158}
!158 = distinct !{!158, !159, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!159 = distinct !{!159, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!160 = !{!161}
!161 = distinct !{!161, !159, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!162 = !{!158, !153, !148, !143}
!163 = !{!161, !156, !151, !146}
!164 = !{!165}
!165 = distinct !{!165, !166, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %a"}
!166 = distinct !{!166, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE"}
!167 = !{!168}
!168 = distinct !{!168, !166, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %b"}
!169 = !{!170}
!170 = distinct !{!170, !171, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 0"}
!171 = distinct !{!171, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE"}
!172 = !{!173}
!173 = distinct !{!173, !171, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 1"}
!174 = !{!175}
!175 = distinct !{!175, !176, !"cmpfunc: %a"}
!176 = distinct !{!176, !"cmpfunc"}
!177 = !{!178}
!178 = distinct !{!178, !176, !"cmpfunc: %b"}
!179 = !{!180}
!180 = distinct !{!180, !181, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!181 = distinct !{!181, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!182 = !{!183}
!183 = distinct !{!183, !181, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!184 = !{!180, !175, !170, !165}
!185 = !{!183, !178, !173, !168}
!186 = !{!187}
!187 = distinct !{!187, !188, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %a"}
!188 = distinct !{!188, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE"}
!189 = !{!190}
!190 = distinct !{!190, !188, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %b"}
!191 = !{!192}
!192 = distinct !{!192, !193, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 0"}
!193 = distinct !{!193, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE"}
!194 = !{!195}
!195 = distinct !{!195, !193, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 1"}
!196 = !{!197}
!197 = distinct !{!197, !198, !"cmpfunc: %a"}
!198 = distinct !{!198, !"cmpfunc"}
!199 = !{!200}
!200 = distinct !{!200, !198, !"cmpfunc: %b"}
!201 = !{!202}
!202 = distinct !{!202, !203, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!203 = distinct !{!203, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!204 = !{!205}
!205 = distinct !{!205, !203, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!206 = !{!202, !197, !192, !187}
!207 = !{!205, !200, !195, !190}
!208 = !{!209}
!209 = distinct !{!209, !210, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %a"}
!210 = distinct !{!210, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE"}
!211 = !{!212}
!212 = distinct !{!212, !210, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %b"}
!213 = !{!214}
!214 = distinct !{!214, !215, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 0"}
!215 = distinct !{!215, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE"}
!216 = !{!217}
!217 = distinct !{!217, !215, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 1"}
!218 = !{!219}
!219 = distinct !{!219, !220, !"cmpfunc: %a"}
!220 = distinct !{!220, !"cmpfunc"}
!221 = !{!222}
!222 = distinct !{!222, !220, !"cmpfunc: %b"}
!223 = !{!224}
!224 = distinct !{!224, !225, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!225 = distinct !{!225, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!226 = !{!227}
!227 = distinct !{!227, !225, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!228 = !{!224, !219, !214, !209}
!229 = !{!227, !222, !217, !212}
!230 = !{!231}
!231 = distinct !{!231, !232, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %a"}
!232 = distinct !{!232, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE"}
!233 = !{!234}
!234 = distinct !{!234, !232, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %b"}
!235 = !{!236}
!236 = distinct !{!236, !237, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 0"}
!237 = distinct !{!237, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE"}
!238 = !{!239}
!239 = distinct !{!239, !237, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 1"}
!240 = !{!241}
!241 = distinct !{!241, !242, !"cmpfunc: %a"}
!242 = distinct !{!242, !"cmpfunc"}
!243 = !{!244}
!244 = distinct !{!244, !242, !"cmpfunc: %b"}
!245 = !{!246}
!246 = distinct !{!246, !247, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!247 = distinct !{!247, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!248 = !{!249}
!249 = distinct !{!249, !247, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!250 = !{!246, !241, !236, !231}
!251 = !{!249, !244, !239, !234}
!252 = !{!253}
!253 = distinct !{!253, !254, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %a"}
!254 = distinct !{!254, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE"}
!255 = !{!256}
!256 = distinct !{!256, !254, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %b"}
!257 = !{!258}
!258 = distinct !{!258, !259, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 0"}
!259 = distinct !{!259, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE"}
!260 = !{!261}
!261 = distinct !{!261, !259, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 1"}
!262 = !{!263}
!263 = distinct !{!263, !264, !"cmpfunc: %a"}
!264 = distinct !{!264, !"cmpfunc"}
!265 = !{!266}
!266 = distinct !{!266, !264, !"cmpfunc: %b"}
!267 = !{!268}
!268 = distinct !{!268, !269, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!269 = distinct !{!269, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!270 = !{!271}
!271 = distinct !{!271, !269, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!272 = !{!268, !263, !258, !253}
!273 = !{!271, !266, !261, !256}
!274 = !{!275}
!275 = distinct !{!275, !276, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %a"}
!276 = distinct !{!276, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE"}
!277 = !{!278}
!278 = distinct !{!278, !276, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %b"}
!279 = !{!280}
!280 = distinct !{!280, !281, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 0"}
!281 = distinct !{!281, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE"}
!282 = !{!283}
!283 = distinct !{!283, !281, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 1"}
!284 = !{!285}
!285 = distinct !{!285, !286, !"cmpfunc: %a"}
!286 = distinct !{!286, !"cmpfunc"}
!287 = !{!288}
!288 = distinct !{!288, !286, !"cmpfunc: %b"}
!289 = !{!290}
!290 = distinct !{!290, !291, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!291 = distinct !{!291, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!292 = !{!293}
!293 = distinct !{!293, !291, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!294 = !{!290, !285, !280, !275}
!295 = !{!293, !288, !283, !278}
!296 = !{!297}
!297 = distinct !{!297, !298, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %a"}
!298 = distinct !{!298, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE"}
!299 = !{!300}
!300 = distinct !{!300, !298, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %b"}
!301 = !{!302}
!302 = distinct !{!302, !303, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 0"}
!303 = distinct !{!303, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE"}
!304 = !{!305}
!305 = distinct !{!305, !303, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 1"}
!306 = !{!307}
!307 = distinct !{!307, !308, !"cmpfunc: %a"}
!308 = distinct !{!308, !"cmpfunc"}
!309 = !{!310}
!310 = distinct !{!310, !308, !"cmpfunc: %b"}
!311 = !{!312}
!312 = distinct !{!312, !313, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!313 = distinct !{!313, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!314 = !{!315}
!315 = distinct !{!315, !313, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!316 = !{!312, !307, !302, !297}
!317 = !{!315, !310, !305, !300}
!318 = !{!319}
!319 = distinct !{!319, !320, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %a"}
!320 = distinct !{!320, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE"}
!321 = !{!322}
!322 = distinct !{!322, !320, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %b"}
!323 = !{!324}
!324 = distinct !{!324, !325, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 0"}
!325 = distinct !{!325, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE"}
!326 = !{!327}
!327 = distinct !{!327, !325, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 1"}
!328 = !{!329}
!329 = distinct !{!329, !330, !"cmpfunc: %a"}
!330 = distinct !{!330, !"cmpfunc"}
!331 = !{!332}
!332 = distinct !{!332, !330, !"cmpfunc: %b"}
!333 = !{!334}
!334 = distinct !{!334, !335, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!335 = distinct !{!335, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!336 = !{!337}
!337 = distinct !{!337, !335, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!338 = !{!334, !329, !324, !319}
!339 = !{!337, !332, !327, !322}
!340 = !{!341}
!341 = distinct !{!341, !342, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %a"}
!342 = distinct !{!342, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE"}
!343 = !{!344}
!344 = distinct !{!344, !342, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %b"}
!345 = !{!346}
!346 = distinct !{!346, !347, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 0"}
!347 = distinct !{!347, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE"}
!348 = !{!349}
!349 = distinct !{!349, !347, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 1"}
!350 = !{!351}
!351 = distinct !{!351, !352, !"cmpfunc: %a"}
!352 = distinct !{!352, !"cmpfunc"}
!353 = !{!354}
!354 = distinct !{!354, !352, !"cmpfunc: %b"}
!355 = !{!356}
!356 = distinct !{!356, !357, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!357 = distinct !{!357, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!358 = !{!359}
!359 = distinct !{!359, !357, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!360 = !{!356, !351, !346, !341}
!361 = !{!359, !354, !349, !344}
!362 = !{!363}
!363 = distinct !{!363, !364, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %a"}
!364 = distinct !{!364, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE"}
!365 = !{!366}
!366 = distinct !{!366, !364, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %b"}
!367 = !{!368}
!368 = distinct !{!368, !369, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 0"}
!369 = distinct !{!369, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE"}
!370 = !{!371}
!371 = distinct !{!371, !369, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 1"}
!372 = !{!373}
!373 = distinct !{!373, !374, !"cmpfunc: %a"}
!374 = distinct !{!374, !"cmpfunc"}
!375 = !{!376}
!376 = distinct !{!376, !374, !"cmpfunc: %b"}
!377 = !{!378}
!378 = distinct !{!378, !379, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!379 = distinct !{!379, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!380 = !{!381}
!381 = distinct !{!381, !379, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!382 = !{!378, !373, !368, !363}
!383 = !{!381, !376, !371, !366}
!384 = !{!385}
!385 = distinct !{!385, !386, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %a"}
!386 = distinct !{!386, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE"}
!387 = !{!388}
!388 = distinct !{!388, !386, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %b"}
!389 = !{!390}
!390 = distinct !{!390, !391, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 0"}
!391 = distinct !{!391, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE"}
!392 = !{!393}
!393 = distinct !{!393, !391, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 1"}
!394 = !{!395}
!395 = distinct !{!395, !396, !"cmpfunc: %a"}
!396 = distinct !{!396, !"cmpfunc"}
!397 = !{!398}
!398 = distinct !{!398, !396, !"cmpfunc: %b"}
!399 = !{!400}
!400 = distinct !{!400, !401, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!401 = distinct !{!401, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!402 = !{!403}
!403 = distinct !{!403, !401, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!404 = !{!400, !395, !390, !385}
!405 = !{!403, !398, !393, !388}
!406 = !{!407}
!407 = distinct !{!407, !408, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %a"}
!408 = distinct !{!408, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE"}
!409 = !{!410}
!410 = distinct !{!410, !408, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %b"}
!411 = !{!412}
!412 = distinct !{!412, !413, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 0"}
!413 = distinct !{!413, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE"}
!414 = !{!415}
!415 = distinct !{!415, !413, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 1"}
!416 = !{!417}
!417 = distinct !{!417, !418, !"cmpfunc: %a"}
!418 = distinct !{!418, !"cmpfunc"}
!419 = !{!420}
!420 = distinct !{!420, !418, !"cmpfunc: %b"}
!421 = !{!422}
!422 = distinct !{!422, !423, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!423 = distinct !{!423, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!424 = !{!425}
!425 = distinct !{!425, !423, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!426 = !{!422, !417, !412, !407}
!427 = !{!425, !420, !415, !410}
!428 = !{!429}
!429 = distinct !{!429, !430, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h7d0a3015f778e7baE: %v.0"}
!430 = distinct !{!430, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h7d0a3015f778e7baE"}
!431 = !{!432}
!432 = distinct !{!432, !433, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %a"}
!433 = distinct !{!433, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE"}
!434 = !{!435}
!435 = distinct !{!435, !433, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %b"}
!436 = !{!437}
!437 = distinct !{!437, !438, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 0"}
!438 = distinct !{!438, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE"}
!439 = !{!440}
!440 = distinct !{!440, !441, !"_ZN4core5slice4sort6shared9smallsort8merge_up17he16f60486b84d45bE: %_0"}
!441 = distinct !{!441, !"_ZN4core5slice4sort6shared9smallsort8merge_up17he16f60486b84d45bE"}
!442 = !{!443}
!443 = distinct !{!443, !438, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 1"}
!444 = !{!445}
!445 = distinct !{!445, !446, !"cmpfunc: %a"}
!446 = distinct !{!446, !"cmpfunc"}
!447 = !{!448}
!448 = distinct !{!448, !446, !"cmpfunc: %b"}
!449 = !{!450}
!450 = distinct !{!450, !451, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!451 = distinct !{!451, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!452 = !{!453}
!453 = distinct !{!453, !451, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!454 = !{!450, !445, !437, !432, !429}
!455 = !{!453, !448, !443, !435, !440}
!456 = !{!453, !448, !443, !435, !429}
!457 = !{!450, !445, !437, !432, !440}
!458 = !{!440, !459, !429}
!459 = distinct !{!459, !441, !"_ZN4core5slice4sort6shared9smallsort8merge_up17he16f60486b84d45bE: %is_less"}
!460 = !{!461}
!461 = distinct !{!461, !462, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %a"}
!462 = distinct !{!462, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE"}
!463 = !{!464}
!464 = distinct !{!464, !462, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %b"}
!465 = !{!466}
!466 = distinct !{!466, !467, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 0"}
!467 = distinct !{!467, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE"}
!468 = !{!469}
!469 = distinct !{!469, !470, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hcc765a4e436233bdE: %_0"}
!470 = distinct !{!470, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hcc765a4e436233bdE"}
!471 = !{!472}
!472 = distinct !{!472, !467, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 1"}
!473 = !{!474}
!474 = distinct !{!474, !475, !"cmpfunc: %a"}
!475 = distinct !{!475, !"cmpfunc"}
!476 = !{!477}
!477 = distinct !{!477, !475, !"cmpfunc: %b"}
!478 = !{!479}
!479 = distinct !{!479, !480, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!480 = distinct !{!480, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!481 = !{!482}
!482 = distinct !{!482, !480, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!483 = !{!479, !474, !466, !461, !429}
!484 = !{!482, !477, !472, !464, !469}
!485 = !{!482, !477, !472, !464, !429}
!486 = !{!479, !474, !466, !461, !469}
!487 = !{!469, !488, !429}
!488 = distinct !{!488, !470, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hcc765a4e436233bdE: %is_less"}
!489 = !{!490}
!490 = distinct !{!490, !433, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %a:It1"}
!491 = !{!492}
!492 = distinct !{!492, !433, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %b:It1"}
!493 = !{!494}
!494 = distinct !{!494, !438, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 0:It1"}
!495 = !{!496}
!496 = distinct !{!496, !438, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 1:It1"}
!497 = !{!498}
!498 = distinct !{!498, !446, !"cmpfunc: %a:It1"}
!499 = !{!500}
!500 = distinct !{!500, !446, !"cmpfunc: %b:It1"}
!501 = !{!502}
!502 = distinct !{!502, !451, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It1"}
!503 = !{!504}
!504 = distinct !{!504, !451, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It1"}
!505 = !{!502, !498, !494, !490, !429}
!506 = !{!504, !500, !496, !492, !440}
!507 = !{!504, !500, !496, !492, !429}
!508 = !{!502, !498, !494, !490, !440}
!509 = !{!510}
!510 = distinct !{!510, !462, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %a:It1"}
!511 = !{!512}
!512 = distinct !{!512, !462, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %b:It1"}
!513 = !{!514}
!514 = distinct !{!514, !467, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 0:It1"}
!515 = !{!516}
!516 = distinct !{!516, !467, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 1:It1"}
!517 = !{!518}
!518 = distinct !{!518, !475, !"cmpfunc: %a:It1"}
!519 = !{!520}
!520 = distinct !{!520, !475, !"cmpfunc: %b:It1"}
!521 = !{!522}
!522 = distinct !{!522, !480, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It1"}
!523 = !{!524}
!524 = distinct !{!524, !480, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It1"}
!525 = !{!522, !518, !514, !510, !429}
!526 = !{!524, !520, !516, !512, !469}
!527 = !{!524, !520, !516, !512, !429}
!528 = !{!522, !518, !514, !510, !469}
!529 = !{!530}
!530 = distinct !{!530, !433, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %a:It2"}
!531 = !{!532}
!532 = distinct !{!532, !433, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %b:It2"}
!533 = !{!534}
!534 = distinct !{!534, !438, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 0:It2"}
!535 = !{!536}
!536 = distinct !{!536, !438, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 1:It2"}
!537 = !{!538}
!538 = distinct !{!538, !446, !"cmpfunc: %a:It2"}
!539 = !{!540}
!540 = distinct !{!540, !446, !"cmpfunc: %b:It2"}
!541 = !{!542}
!542 = distinct !{!542, !451, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It2"}
!543 = !{!544}
!544 = distinct !{!544, !451, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It2"}
!545 = !{!542, !538, !534, !530, !429}
!546 = !{!544, !540, !536, !532, !440}
!547 = !{!544, !540, !536, !532, !429}
!548 = !{!542, !538, !534, !530, !440}
!549 = !{!550}
!550 = distinct !{!550, !462, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %a:It2"}
!551 = !{!552}
!552 = distinct !{!552, !462, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %b:It2"}
!553 = !{!554}
!554 = distinct !{!554, !467, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 0:It2"}
!555 = !{!556}
!556 = distinct !{!556, !467, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 1:It2"}
!557 = !{!558}
!558 = distinct !{!558, !475, !"cmpfunc: %a:It2"}
!559 = !{!560}
!560 = distinct !{!560, !475, !"cmpfunc: %b:It2"}
!561 = !{!562}
!562 = distinct !{!562, !480, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It2"}
!563 = !{!564}
!564 = distinct !{!564, !480, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It2"}
!565 = !{!562, !558, !554, !550, !429}
!566 = !{!564, !560, !556, !552, !469}
!567 = !{!564, !560, !556, !552, !429}
!568 = !{!562, !558, !554, !550, !469}
!569 = !{!570}
!570 = distinct !{!570, !433, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %a:It3"}
!571 = !{!572}
!572 = distinct !{!572, !433, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %b:It3"}
!573 = !{!574}
!574 = distinct !{!574, !438, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 0:It3"}
!575 = !{!576}
!576 = distinct !{!576, !438, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 1:It3"}
!577 = !{!578}
!578 = distinct !{!578, !446, !"cmpfunc: %a:It3"}
!579 = !{!580}
!580 = distinct !{!580, !446, !"cmpfunc: %b:It3"}
!581 = !{!582}
!582 = distinct !{!582, !451, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It3"}
!583 = !{!584}
!584 = distinct !{!584, !451, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It3"}
!585 = !{!582, !578, !574, !570, !429}
!586 = !{!584, !580, !576, !572, !440}
!587 = !{!584, !580, !576, !572, !429}
!588 = !{!582, !578, !574, !570, !440}
!589 = !{!590}
!590 = distinct !{!590, !462, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %a:It3"}
!591 = !{!592}
!592 = distinct !{!592, !462, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %b:It3"}
!593 = !{!594}
!594 = distinct !{!594, !467, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 0:It3"}
!595 = !{!596}
!596 = distinct !{!596, !467, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 1:It3"}
!597 = !{!598}
!598 = distinct !{!598, !475, !"cmpfunc: %a:It3"}
!599 = !{!600}
!600 = distinct !{!600, !475, !"cmpfunc: %b:It3"}
!601 = !{!602}
!602 = distinct !{!602, !480, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It3"}
!603 = !{!604}
!604 = distinct !{!604, !480, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It3"}
!605 = !{!602, !598, !594, !590, !429}
!606 = !{!604, !600, !596, !592, !469}
!607 = !{!604, !600, !596, !592, !429}
!608 = !{!602, !598, !594, !590, !469}
!609 = !{!"branch_weights", i32 4001, i32 4000000}
!610 = !{!611}
!611 = distinct !{!611, !612, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %a"}
!612 = distinct !{!612, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE"}
!613 = !{!614}
!614 = distinct !{!614, !612, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %b"}
!615 = !{!616}
!616 = distinct !{!616, !617, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 0"}
!617 = distinct !{!617, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE"}
!618 = !{!619}
!619 = distinct !{!619, !620, !"_ZN4core5slice4sort6shared9smallsort8merge_up17he16f60486b84d45bE: %_0"}
!620 = distinct !{!620, !"_ZN4core5slice4sort6shared9smallsort8merge_up17he16f60486b84d45bE"}
!621 = !{!622}
!622 = distinct !{!622, !617, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 1"}
!623 = !{!624}
!624 = distinct !{!624, !625, !"cmpfunc: %a"}
!625 = distinct !{!625, !"cmpfunc"}
!626 = !{!627}
!627 = distinct !{!627, !625, !"cmpfunc: %b"}
!628 = !{!629}
!629 = distinct !{!629, !630, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!630 = distinct !{!630, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!631 = !{!632}
!632 = distinct !{!632, !630, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!633 = !{!629, !624, !616, !611}
!634 = !{!632, !627, !622, !614, !619}
!635 = !{!632, !627, !622, !614}
!636 = !{!629, !624, !616, !611, !619}
!637 = !{!619, !638}
!638 = distinct !{!638, !620, !"_ZN4core5slice4sort6shared9smallsort8merge_up17he16f60486b84d45bE: %is_less"}
!639 = !{!640}
!640 = distinct !{!640, !641, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %a"}
!641 = distinct !{!641, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE"}
!642 = !{!643}
!643 = distinct !{!643, !641, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %b"}
!644 = !{!645}
!645 = distinct !{!645, !646, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 0"}
!646 = distinct !{!646, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE"}
!647 = !{!648}
!648 = distinct !{!648, !649, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hcc765a4e436233bdE: %_0"}
!649 = distinct !{!649, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hcc765a4e436233bdE"}
!650 = !{!651}
!651 = distinct !{!651, !646, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 1"}
!652 = !{!653}
!653 = distinct !{!653, !654, !"cmpfunc: %a"}
!654 = distinct !{!654, !"cmpfunc"}
!655 = !{!656}
!656 = distinct !{!656, !654, !"cmpfunc: %b"}
!657 = !{!658}
!658 = distinct !{!658, !659, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!659 = distinct !{!659, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!660 = !{!661}
!661 = distinct !{!661, !659, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!662 = !{!658, !653, !645, !640}
!663 = !{!661, !656, !651, !643, !648}
!664 = !{!661, !656, !651, !643}
!665 = !{!658, !653, !645, !640, !648}
!666 = !{!648, !667}
!667 = distinct !{!667, !649, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hcc765a4e436233bdE: %is_less"}
!668 = !{!669}
!669 = distinct !{!669, !670, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %a"}
!670 = distinct !{!670, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE"}
!671 = !{!672}
!672 = distinct !{!672, !670, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %b"}
!673 = !{!674}
!674 = distinct !{!674, !675, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 0"}
!675 = distinct !{!675, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE"}
!676 = !{!677}
!677 = distinct !{!677, !675, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 1"}
!678 = !{!679}
!679 = distinct !{!679, !680, !"cmpfunc: %a"}
!680 = distinct !{!680, !"cmpfunc"}
!681 = !{!682}
!682 = distinct !{!682, !680, !"cmpfunc: %b"}
!683 = !{!684}
!684 = distinct !{!684, !685, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!685 = distinct !{!685, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!686 = !{!687}
!687 = distinct !{!687, !685, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!688 = !{!684, !679, !674, !669}
!689 = !{!687, !682, !677, !672}
!690 = !{!691, !693, !695, !697}
!691 = distinct !{!691, !692, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!692 = distinct !{!692, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!693 = distinct !{!693, !694, !"cmpfunc: %b"}
!694 = distinct !{!694, !"cmpfunc"}
!695 = distinct !{!695, !696, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 1"}
!696 = distinct !{!696, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE"}
!697 = distinct !{!697, !698, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %b"}
!698 = distinct !{!698, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE"}
!699 = !{!700, !701, !702, !703}
!700 = distinct !{!700, !692, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!701 = distinct !{!701, !694, !"cmpfunc: %a"}
!702 = distinct !{!702, !696, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 0"}
!703 = distinct !{!703, !698, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %a"}
!704 = !{!705, !707}
!705 = distinct !{!705, !706, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9aec70313b8fe040E: %self"}
!706 = distinct !{!706, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9aec70313b8fe040E"}
!707 = distinct !{!707, !708, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h2fc4fca717f08f03E: %_1"}
!708 = distinct !{!708, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h2fc4fca717f08f03E"}
!709 = !{!710}
!710 = distinct !{!710, !711, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %a"}
!711 = distinct !{!711, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE"}
!712 = !{!713}
!713 = distinct !{!713, !711, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %b"}
!714 = !{!715}
!715 = distinct !{!715, !716, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 0"}
!716 = distinct !{!716, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE"}
!717 = !{!718}
!718 = distinct !{!718, !716, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 1"}
!719 = !{!720}
!720 = distinct !{!720, !721, !"cmpfunc: %a"}
!721 = distinct !{!721, !"cmpfunc"}
!722 = !{!723}
!723 = distinct !{!723, !721, !"cmpfunc: %b"}
!724 = !{!725}
!725 = distinct !{!725, !726, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!726 = distinct !{!726, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!727 = !{!728}
!728 = distinct !{!728, !726, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!729 = !{!725, !720, !715, !710}
!730 = !{!728, !723, !718, !713}
!731 = !{!732}
!732 = distinct !{!732, !733, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %a"}
!733 = distinct !{!733, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE"}
!734 = !{!735}
!735 = distinct !{!735, !733, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %b"}
!736 = !{!737}
!737 = distinct !{!737, !738, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 0"}
!738 = distinct !{!738, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE"}
!739 = !{!740}
!740 = distinct !{!740, !738, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 1"}
!741 = !{!742}
!742 = distinct !{!742, !743, !"cmpfunc: %a"}
!743 = distinct !{!743, !"cmpfunc"}
!744 = !{!745}
!745 = distinct !{!745, !743, !"cmpfunc: %b"}
!746 = !{!747}
!747 = distinct !{!747, !748, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!748 = distinct !{!748, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!749 = !{!750}
!750 = distinct !{!750, !748, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!751 = !{!747, !742, !737, !732}
!752 = !{!750, !745, !740, !735}
!753 = !{!754}
!754 = distinct !{!754, !755, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %a"}
!755 = distinct !{!755, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE"}
!756 = !{!757}
!757 = distinct !{!757, !755, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %b"}
!758 = !{!759}
!759 = distinct !{!759, !760, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 0"}
!760 = distinct !{!760, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE"}
!761 = !{!762}
!762 = distinct !{!762, !760, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 1"}
!763 = !{!764}
!764 = distinct !{!764, !765, !"cmpfunc: %a"}
!765 = distinct !{!765, !"cmpfunc"}
!766 = !{!767}
!767 = distinct !{!767, !765, !"cmpfunc: %b"}
!768 = !{!769}
!769 = distinct !{!769, !770, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!770 = distinct !{!770, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!771 = !{!772}
!772 = distinct !{!772, !770, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!773 = !{!769, !764, !759, !754}
!774 = !{!772, !767, !762, !757}
!775 = !{!776}
!776 = distinct !{!776, !777, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %a"}
!777 = distinct !{!777, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE"}
!778 = !{!779}
!779 = distinct !{!779, !777, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %b"}
!780 = !{!781}
!781 = distinct !{!781, !782, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 0"}
!782 = distinct !{!782, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE"}
!783 = !{!784}
!784 = distinct !{!784, !782, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 1"}
!785 = !{!786}
!786 = distinct !{!786, !787, !"cmpfunc: %a"}
!787 = distinct !{!787, !"cmpfunc"}
!788 = !{!789}
!789 = distinct !{!789, !787, !"cmpfunc: %b"}
!790 = !{!791}
!791 = distinct !{!791, !792, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!792 = distinct !{!792, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!793 = !{!794}
!794 = distinct !{!794, !792, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!795 = !{!791, !786, !781, !776}
!796 = !{!794, !789, !784, !779}
!797 = !{!798}
!798 = distinct !{!798, !799, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %a"}
!799 = distinct !{!799, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE"}
!800 = !{!801}
!801 = distinct !{!801, !799, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %b"}
!802 = !{!803}
!803 = distinct !{!803, !804, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 0"}
!804 = distinct !{!804, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE"}
!805 = !{!806}
!806 = distinct !{!806, !804, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 1"}
!807 = !{!808}
!808 = distinct !{!808, !809, !"cmpfunc: %a"}
!809 = distinct !{!809, !"cmpfunc"}
!810 = !{!811}
!811 = distinct !{!811, !809, !"cmpfunc: %b"}
!812 = !{!813}
!813 = distinct !{!813, !814, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!814 = distinct !{!814, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!815 = !{!816}
!816 = distinct !{!816, !814, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!817 = !{!813, !808, !803, !798}
!818 = !{!816, !811, !806, !801}
!819 = !{!820}
!820 = distinct !{!820, !821, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %a"}
!821 = distinct !{!821, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE"}
!822 = !{!823}
!823 = distinct !{!823, !821, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %b"}
!824 = !{!825}
!825 = distinct !{!825, !826, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 0"}
!826 = distinct !{!826, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE"}
!827 = !{!828}
!828 = distinct !{!828, !826, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 1"}
!829 = !{!830}
!830 = distinct !{!830, !831, !"cmpfunc: %a"}
!831 = distinct !{!831, !"cmpfunc"}
!832 = !{!833}
!833 = distinct !{!833, !831, !"cmpfunc: %b"}
!834 = !{!835}
!835 = distinct !{!835, !836, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!836 = distinct !{!836, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!837 = !{!838}
!838 = distinct !{!838, !836, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!839 = !{!835, !830, !825, !820}
!840 = !{!838, !833, !828, !823}
!841 = !{!842}
!842 = distinct !{!842, !843, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %a"}
!843 = distinct !{!843, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE"}
!844 = !{!845}
!845 = distinct !{!845, !843, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %b"}
!846 = !{!847}
!847 = distinct !{!847, !848, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 0"}
!848 = distinct !{!848, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE"}
!849 = !{!850}
!850 = distinct !{!850, !848, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 1"}
!851 = !{!852}
!852 = distinct !{!852, !853, !"cmpfunc: %a"}
!853 = distinct !{!853, !"cmpfunc"}
!854 = !{!855}
!855 = distinct !{!855, !853, !"cmpfunc: %b"}
!856 = !{!857}
!857 = distinct !{!857, !858, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!858 = distinct !{!858, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!859 = !{!860}
!860 = distinct !{!860, !858, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!861 = !{!857, !852, !847, !842}
!862 = !{!860, !855, !850, !845}
!863 = !{!864}
!864 = distinct !{!864, !865, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %a"}
!865 = distinct !{!865, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE"}
!866 = !{!867}
!867 = distinct !{!867, !865, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %b"}
!868 = !{!869}
!869 = distinct !{!869, !870, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 0"}
!870 = distinct !{!870, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE"}
!871 = !{!872}
!872 = distinct !{!872, !870, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 1"}
!873 = !{!874}
!874 = distinct !{!874, !875, !"cmpfunc: %a"}
!875 = distinct !{!875, !"cmpfunc"}
!876 = !{!877}
!877 = distinct !{!877, !875, !"cmpfunc: %b"}
!878 = !{!879}
!879 = distinct !{!879, !880, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!880 = distinct !{!880, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!881 = !{!882}
!882 = distinct !{!882, !880, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!883 = !{!879, !874, !869, !864}
!884 = !{!882, !877, !872, !867}
!885 = !{!886}
!886 = distinct !{!886, !887, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %a"}
!887 = distinct !{!887, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE"}
!888 = !{!889}
!889 = distinct !{!889, !887, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %b"}
!890 = !{!891}
!891 = distinct !{!891, !892, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 0"}
!892 = distinct !{!892, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE"}
!893 = !{!894}
!894 = distinct !{!894, !892, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 1"}
!895 = !{!896}
!896 = distinct !{!896, !897, !"cmpfunc: %a"}
!897 = distinct !{!897, !"cmpfunc"}
!898 = !{!899}
!899 = distinct !{!899, !897, !"cmpfunc: %b"}
!900 = !{!901}
!901 = distinct !{!901, !902, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!902 = distinct !{!902, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!903 = !{!904}
!904 = distinct !{!904, !902, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!905 = !{!901, !896, !891, !886}
!906 = !{!904, !899, !894, !889}
!907 = !{!908}
!908 = distinct !{!908, !909, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %a"}
!909 = distinct !{!909, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE"}
!910 = !{!911}
!911 = distinct !{!911, !909, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %b"}
!912 = !{!913}
!913 = distinct !{!913, !914, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 0"}
!914 = distinct !{!914, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE"}
!915 = !{!916}
!916 = distinct !{!916, !914, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 1"}
!917 = !{!918}
!918 = distinct !{!918, !919, !"cmpfunc: %a"}
!919 = distinct !{!919, !"cmpfunc"}
!920 = !{!921}
!921 = distinct !{!921, !919, !"cmpfunc: %b"}
!922 = !{!923}
!923 = distinct !{!923, !924, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!924 = distinct !{!924, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!925 = !{!926}
!926 = distinct !{!926, !924, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!927 = !{!923, !918, !913, !908}
!928 = !{!926, !921, !916, !911}
!929 = !{!930}
!930 = distinct !{!930, !931, !"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h0b441c192c3cf966E: %self.0"}
!931 = distinct !{!931, !"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h0b441c192c3cf966E"}
!932 = !{!933}
!933 = distinct !{!933, !934, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h7d0a3015f778e7baE: %v.0"}
!934 = distinct !{!934, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h7d0a3015f778e7baE"}
!935 = !{!936}
!936 = distinct !{!936, !937, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %a"}
!937 = distinct !{!937, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE"}
!938 = !{!939}
!939 = distinct !{!939, !937, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %b"}
!940 = !{!941}
!941 = distinct !{!941, !942, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 0"}
!942 = distinct !{!942, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE"}
!943 = !{!944}
!944 = distinct !{!944, !945, !"_ZN4core5slice4sort6shared9smallsort8merge_up17he16f60486b84d45bE: %_0"}
!945 = distinct !{!945, !"_ZN4core5slice4sort6shared9smallsort8merge_up17he16f60486b84d45bE"}
!946 = !{!947}
!947 = distinct !{!947, !942, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 1"}
!948 = !{!949}
!949 = distinct !{!949, !950, !"cmpfunc: %a"}
!950 = distinct !{!950, !"cmpfunc"}
!951 = !{!952}
!952 = distinct !{!952, !950, !"cmpfunc: %b"}
!953 = !{!954}
!954 = distinct !{!954, !955, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!955 = distinct !{!955, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!956 = !{!957}
!957 = distinct !{!957, !955, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!958 = !{!954, !949, !941, !936, !933}
!959 = !{!957, !952, !947, !939, !944}
!960 = !{!957, !952, !947, !939, !933}
!961 = !{!954, !949, !941, !936, !944}
!962 = !{!944, !963, !933}
!963 = distinct !{!963, !945, !"_ZN4core5slice4sort6shared9smallsort8merge_up17he16f60486b84d45bE: %is_less"}
!964 = !{!965}
!965 = distinct !{!965, !966, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %a"}
!966 = distinct !{!966, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE"}
!967 = !{!968}
!968 = distinct !{!968, !966, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %b"}
!969 = !{!970}
!970 = distinct !{!970, !971, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 0"}
!971 = distinct !{!971, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE"}
!972 = !{!973}
!973 = distinct !{!973, !974, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hcc765a4e436233bdE: %_0"}
!974 = distinct !{!974, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hcc765a4e436233bdE"}
!975 = !{!976}
!976 = distinct !{!976, !971, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 1"}
!977 = !{!978}
!978 = distinct !{!978, !979, !"cmpfunc: %a"}
!979 = distinct !{!979, !"cmpfunc"}
!980 = !{!981}
!981 = distinct !{!981, !979, !"cmpfunc: %b"}
!982 = !{!983}
!983 = distinct !{!983, !984, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!984 = distinct !{!984, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!985 = !{!986}
!986 = distinct !{!986, !984, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!987 = !{!983, !978, !970, !965, !933}
!988 = !{!986, !981, !976, !968, !973}
!989 = !{!986, !981, !976, !968, !933}
!990 = !{!983, !978, !970, !965, !973}
!991 = !{!973, !992, !933}
!992 = distinct !{!992, !974, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hcc765a4e436233bdE: %is_less"}
!993 = !{!994, !996}
!994 = distinct !{!994, !995, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9aec70313b8fe040E: %self"}
!995 = distinct !{!995, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9aec70313b8fe040E"}
!996 = distinct !{!996, !997, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h2fc4fca717f08f03E: %_1"}
!997 = distinct !{!997, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h2fc4fca717f08f03E"}
!998 = !{!999, !1001, !1003, !1005}
!999 = distinct !{!999, !1000, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1000 = distinct !{!1000, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1001 = distinct !{!1001, !1002, !"cmpfunc: %b"}
!1002 = distinct !{!1002, !"cmpfunc"}
!1003 = distinct !{!1003, !1004, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 1"}
!1004 = distinct !{!1004, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE"}
!1005 = distinct !{!1005, !1006, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %b"}
!1006 = distinct !{!1006, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE"}
!1007 = !{!1008, !1009, !1010, !1011}
!1008 = distinct !{!1008, !1000, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1009 = distinct !{!1009, !1002, !"cmpfunc: %a"}
!1010 = distinct !{!1010, !1004, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 0"}
!1011 = distinct !{!1011, !1006, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %a"}
!1012 = !{!1013, !1015, !1017, !1019}
!1013 = distinct !{!1013, !1014, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1014 = distinct !{!1014, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1015 = distinct !{!1015, !1016, !"cmpfunc: %b"}
!1016 = distinct !{!1016, !"cmpfunc"}
!1017 = distinct !{!1017, !1018, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 1"}
!1018 = distinct !{!1018, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE"}
!1019 = distinct !{!1019, !1020, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %b"}
!1020 = distinct !{!1020, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE"}
!1021 = !{!1022, !1023, !1024, !1025}
!1022 = distinct !{!1022, !1014, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1023 = distinct !{!1023, !1016, !"cmpfunc: %a"}
!1024 = distinct !{!1024, !1018, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 0"}
!1025 = distinct !{!1025, !1020, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %a"}
!1026 = !{!1027, !1029}
!1027 = distinct !{!1027, !1028, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9aec70313b8fe040E: %self"}
!1028 = distinct !{!1028, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9aec70313b8fe040E"}
!1029 = distinct !{!1029, !1030, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h2fc4fca717f08f03E: %_1"}
!1030 = distinct !{!1030, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h2fc4fca717f08f03E"}
!1031 = !{!1032}
!1032 = distinct !{!1032, !1033, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h72ada26c27c7a805E: %_0"}
!1033 = distinct !{!1033, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h72ada26c27c7a805E"}
!1034 = !{i64 0, i64 2}
!1035 = !{i64 0, i64 -9223372036854775807}
!1036 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!1037 = !{!1038}
!1038 = distinct !{!1038, !1039, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %a"}
!1039 = distinct !{!1039, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE"}
!1040 = !{!1041}
!1041 = distinct !{!1041, !1039, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %b"}
!1042 = !{!1043}
!1043 = distinct !{!1043, !1044, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 0"}
!1044 = distinct !{!1044, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE"}
!1045 = !{!1046}
!1046 = distinct !{!1046, !1044, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 1"}
!1047 = !{!1048}
!1048 = distinct !{!1048, !1049, !"cmpfunc: %a"}
!1049 = distinct !{!1049, !"cmpfunc"}
!1050 = !{!1051}
!1051 = distinct !{!1051, !1049, !"cmpfunc: %b"}
!1052 = !{!1053}
!1053 = distinct !{!1053, !1054, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1054 = distinct !{!1054, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1055 = !{!1056}
!1056 = distinct !{!1056, !1054, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1057 = !{!1053, !1048, !1043, !1038}
!1058 = !{!1056, !1051, !1046, !1041}
!1059 = !{!1060}
!1060 = distinct !{!1060, !1061, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %a"}
!1061 = distinct !{!1061, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE"}
!1062 = !{!1063}
!1063 = distinct !{!1063, !1061, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %b"}
!1064 = !{!1065}
!1065 = distinct !{!1065, !1066, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 0"}
!1066 = distinct !{!1066, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE"}
!1067 = !{!1068}
!1068 = distinct !{!1068, !1066, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 1"}
!1069 = !{!1070}
!1070 = distinct !{!1070, !1071, !"cmpfunc: %a"}
!1071 = distinct !{!1071, !"cmpfunc"}
!1072 = !{!1073}
!1073 = distinct !{!1073, !1071, !"cmpfunc: %b"}
!1074 = !{!1075}
!1075 = distinct !{!1075, !1076, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1076 = distinct !{!1076, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1077 = !{!1078}
!1078 = distinct !{!1078, !1076, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1079 = !{!1075, !1070, !1065, !1060}
!1080 = !{!1078, !1073, !1068, !1063}
!1081 = !{!1082}
!1082 = distinct !{!1082, !1083, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %a"}
!1083 = distinct !{!1083, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE"}
!1084 = !{!1085}
!1085 = distinct !{!1085, !1083, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %b"}
!1086 = !{!1087}
!1087 = distinct !{!1087, !1088, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 0"}
!1088 = distinct !{!1088, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE"}
!1089 = !{!1090}
!1090 = distinct !{!1090, !1088, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 1"}
!1091 = !{!1092}
!1092 = distinct !{!1092, !1093, !"cmpfunc: %a"}
!1093 = distinct !{!1093, !"cmpfunc"}
!1094 = !{!1095}
!1095 = distinct !{!1095, !1093, !"cmpfunc: %b"}
!1096 = !{!1097}
!1097 = distinct !{!1097, !1098, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1098 = distinct !{!1098, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1099 = !{!1100}
!1100 = distinct !{!1100, !1098, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1101 = !{!1097, !1092, !1087, !1082}
!1102 = !{!1100, !1095, !1090, !1085}
!1103 = !{!1104, !1106}
!1104 = distinct !{!1104, !1105, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17hafffc996d7f572f0E: %a.0"}
!1105 = distinct !{!1105, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17hafffc996d7f572f0E"}
!1106 = distinct !{!1106, !1107, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h14aff91fd62e2171E: %self.0"}
!1107 = distinct !{!1107, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h14aff91fd62e2171E"}
!1108 = !{!1109}
!1109 = distinct !{!1109, !1105, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17hafffc996d7f572f0E: %b.0"}
!1110 = !{!1109, !1106}
!1111 = !{!1104}
!1112 = !{!1113}
!1113 = distinct !{!1113, !1114, !"_ZN4core5slice4sort6stable5merge5merge17hf88dd62c06665579E: %v.0"}
!1114 = distinct !{!1114, !"_ZN4core5slice4sort6stable5merge5merge17hf88dd62c06665579E"}
!1115 = !{!1116}
!1116 = distinct !{!1116, !1114, !"_ZN4core5slice4sort6stable5merge5merge17hf88dd62c06665579E: %scratch.0"}
!1117 = !{!1113, !1116}
!1118 = !{!1119}
!1119 = distinct !{!1119, !1120, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %a"}
!1120 = distinct !{!1120, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE"}
!1121 = !{!1122}
!1122 = distinct !{!1122, !1120, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %b"}
!1123 = !{!1124}
!1124 = distinct !{!1124, !1125, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 0"}
!1125 = distinct !{!1125, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE"}
!1126 = !{!1127}
!1127 = distinct !{!1127, !1125, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 1"}
!1128 = !{!1129}
!1129 = distinct !{!1129, !1130, !"cmpfunc: %a"}
!1130 = distinct !{!1130, !"cmpfunc"}
!1131 = !{!1132}
!1132 = distinct !{!1132, !1130, !"cmpfunc: %b"}
!1133 = !{!1134}
!1134 = distinct !{!1134, !1135, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1135 = distinct !{!1135, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1136 = !{!1137}
!1137 = distinct !{!1137, !1135, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1138 = !{!1134, !1129, !1124, !1119, !1116}
!1139 = !{!1137, !1132, !1127, !1122, !1140, !1113}
!1140 = distinct !{!1140, !1141, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h12cc15152c225a50E: %self"}
!1141 = distinct !{!1141, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h12cc15152c225a50E"}
!1142 = !{!1137, !1132, !1127, !1122, !1113}
!1143 = !{!1134, !1129, !1124, !1119, !1140, !1116}
!1144 = !{!1140, !1116}
!1145 = !{!1146}
!1146 = distinct !{!1146, !1147, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %a"}
!1147 = distinct !{!1147, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE"}
!1148 = !{!1149}
!1149 = distinct !{!1149, !1147, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %b"}
!1150 = !{!1151}
!1151 = distinct !{!1151, !1152, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 0"}
!1152 = distinct !{!1152, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE"}
!1153 = !{!1154}
!1154 = distinct !{!1154, !1152, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 1"}
!1155 = !{!1156}
!1156 = distinct !{!1156, !1157, !"cmpfunc: %a"}
!1157 = distinct !{!1157, !"cmpfunc"}
!1158 = !{!1159}
!1159 = distinct !{!1159, !1157, !"cmpfunc: %b"}
!1160 = !{!1161}
!1161 = distinct !{!1161, !1162, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1162 = distinct !{!1162, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1163 = !{!1164}
!1164 = distinct !{!1164, !1162, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1165 = !{!1161, !1156, !1151, !1146, !1113}
!1166 = !{!1164, !1159, !1154, !1149, !1167, !1116}
!1167 = distinct !{!1167, !1168, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h376e0a01713378ffE: %self"}
!1168 = distinct !{!1168, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h376e0a01713378ffE"}
!1169 = !{!1164, !1159, !1154, !1149, !1116}
!1170 = !{!1161, !1156, !1151, !1146, !1167, !1113}
!1171 = !{!1167, !1116}
!1172 = !{!1173, !1175}
!1173 = distinct !{!1173, !1174, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd8b328cacf1fdc59E: %self"}
!1174 = distinct !{!1174, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd8b328cacf1fdc59E"}
!1175 = distinct !{!1175, !1176, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h480aff6585ffb047E: %_1"}
!1176 = distinct !{!1176, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h480aff6585ffb047E"}
!1177 = !{!1178}
!1178 = distinct !{!1178, !1179, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %a"}
!1179 = distinct !{!1179, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE"}
!1180 = !{!1181}
!1181 = distinct !{!1181, !1179, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %b"}
!1182 = !{!1183}
!1183 = distinct !{!1183, !1184, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 0"}
!1184 = distinct !{!1184, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE"}
!1185 = !{!1186}
!1186 = distinct !{!1186, !1184, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 1"}
!1187 = !{!1188}
!1188 = distinct !{!1188, !1189, !"cmpfunc: %a"}
!1189 = distinct !{!1189, !"cmpfunc"}
!1190 = !{!1191}
!1191 = distinct !{!1191, !1189, !"cmpfunc: %b"}
!1192 = !{!1193}
!1193 = distinct !{!1193, !1194, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1194 = distinct !{!1194, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1195 = !{!1196}
!1196 = distinct !{!1196, !1194, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1197 = !{!1193, !1188, !1183, !1178}
!1198 = !{!1196, !1191, !1186, !1181}
!1199 = !{!1200}
!1200 = distinct !{!1200, !1201, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %a"}
!1201 = distinct !{!1201, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE"}
!1202 = !{!1203}
!1203 = distinct !{!1203, !1201, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %b"}
!1204 = !{!1205}
!1205 = distinct !{!1205, !1206, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 0"}
!1206 = distinct !{!1206, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE"}
!1207 = !{!1208}
!1208 = distinct !{!1208, !1206, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 1"}
!1209 = !{!1210}
!1210 = distinct !{!1210, !1211, !"cmpfunc: %a"}
!1211 = distinct !{!1211, !"cmpfunc"}
!1212 = !{!1213}
!1213 = distinct !{!1213, !1211, !"cmpfunc: %b"}
!1214 = !{!1215}
!1215 = distinct !{!1215, !1216, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1216 = distinct !{!1216, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1217 = !{!1218}
!1218 = distinct !{!1218, !1216, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1219 = !{!1215, !1210, !1205, !1200}
!1220 = !{!1218, !1213, !1208, !1203}
!1221 = !{!1222}
!1222 = distinct !{!1222, !1223, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %a"}
!1223 = distinct !{!1223, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE"}
!1224 = !{!1225}
!1225 = distinct !{!1225, !1223, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %b"}
!1226 = !{!1227}
!1227 = distinct !{!1227, !1228, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 0"}
!1228 = distinct !{!1228, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE"}
!1229 = !{!1230}
!1230 = distinct !{!1230, !1228, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 1"}
!1231 = !{!1232}
!1232 = distinct !{!1232, !1233, !"cmpfunc: %a"}
!1233 = distinct !{!1233, !"cmpfunc"}
!1234 = !{!1235}
!1235 = distinct !{!1235, !1233, !"cmpfunc: %b"}
!1236 = !{!1237}
!1237 = distinct !{!1237, !1238, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1238 = distinct !{!1238, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1239 = !{!1240}
!1240 = distinct !{!1240, !1238, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1241 = !{!1237, !1232, !1227, !1222}
!1242 = !{!1240, !1235, !1230, !1225, !1243}
!1243 = distinct !{!1243, !1244, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h12cc15152c225a50E: %self"}
!1244 = distinct !{!1244, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h12cc15152c225a50E"}
!1245 = !{!1240, !1235, !1230, !1225}
!1246 = !{!1237, !1232, !1227, !1222, !1243}
!1247 = !{!1243}
!1248 = !{!1249}
!1249 = distinct !{!1249, !1250, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %a"}
!1250 = distinct !{!1250, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE"}
!1251 = !{!1252}
!1252 = distinct !{!1252, !1250, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %b"}
!1253 = !{!1254}
!1254 = distinct !{!1254, !1255, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 0"}
!1255 = distinct !{!1255, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE"}
!1256 = !{!1257}
!1257 = distinct !{!1257, !1255, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 1"}
!1258 = !{!1259}
!1259 = distinct !{!1259, !1260, !"cmpfunc: %a"}
!1260 = distinct !{!1260, !"cmpfunc"}
!1261 = !{!1262}
!1262 = distinct !{!1262, !1260, !"cmpfunc: %b"}
!1263 = !{!1264}
!1264 = distinct !{!1264, !1265, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1265 = distinct !{!1265, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1266 = !{!1267}
!1267 = distinct !{!1267, !1265, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1268 = !{!1264, !1259, !1254, !1249}
!1269 = !{!1267, !1262, !1257, !1252, !1270}
!1270 = distinct !{!1270, !1271, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h376e0a01713378ffE: %self"}
!1271 = distinct !{!1271, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h376e0a01713378ffE"}
!1272 = !{!1267, !1262, !1257, !1252}
!1273 = !{!1264, !1259, !1254, !1249, !1270}
!1274 = !{!1270}
!1275 = !{!1276, !1278}
!1276 = distinct !{!1276, !1277, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd8b328cacf1fdc59E: %self"}
!1277 = distinct !{!1277, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd8b328cacf1fdc59E"}
!1278 = distinct !{!1278, !1279, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h480aff6585ffb047E: %_1"}
!1279 = distinct !{!1279, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h480aff6585ffb047E"}
!1280 = !{!"branch_weights", i32 4000000, i32 4001}
!1281 = !{!1282}
!1282 = distinct !{!1282, !1283, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17he334f978379cccceE: %a"}
!1283 = distinct !{!1283, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17he334f978379cccceE"}
!1284 = !{!1285}
!1285 = distinct !{!1285, !1283, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17he334f978379cccceE: %b"}
!1286 = !{!1287}
!1287 = distinct !{!1287, !1288, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %a"}
!1288 = distinct !{!1288, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE"}
!1289 = !{!1290}
!1290 = distinct !{!1290, !1288, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %b"}
!1291 = !{!1292}
!1292 = distinct !{!1292, !1293, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 0"}
!1293 = distinct !{!1293, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE"}
!1294 = !{!1295}
!1295 = distinct !{!1295, !1293, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 1"}
!1296 = !{!1297}
!1297 = distinct !{!1297, !1298, !"cmpfunc: %a"}
!1298 = distinct !{!1298, !"cmpfunc"}
!1299 = !{!1300}
!1300 = distinct !{!1300, !1298, !"cmpfunc: %b"}
!1301 = !{!1302}
!1302 = distinct !{!1302, !1303, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1303 = distinct !{!1303, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1304 = !{!1305}
!1305 = distinct !{!1305, !1303, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1306 = !{!1302, !1297, !1292, !1287, !1285}
!1307 = !{!1305, !1300, !1295, !1290, !1282}
!1308 = !{!1309}
!1309 = distinct !{!1309, !1310, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h71f6933434906a8fE: %self"}
!1310 = distinct !{!1310, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h71f6933434906a8fE"}
!1311 = !{!1312}
!1312 = distinct !{!1312, !1313, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17he334f978379cccceE: %a"}
!1313 = distinct !{!1313, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17he334f978379cccceE"}
!1314 = !{!1315}
!1315 = distinct !{!1315, !1313, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17he334f978379cccceE: %b"}
!1316 = !{!1317}
!1317 = distinct !{!1317, !1318, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %a"}
!1318 = distinct !{!1318, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE"}
!1319 = !{!1320}
!1320 = distinct !{!1320, !1318, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %b"}
!1321 = !{!1322}
!1322 = distinct !{!1322, !1323, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 0"}
!1323 = distinct !{!1323, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE"}
!1324 = !{!1325}
!1325 = distinct !{!1325, !1323, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 1"}
!1326 = !{!1327}
!1327 = distinct !{!1327, !1328, !"cmpfunc: %a"}
!1328 = distinct !{!1328, !"cmpfunc"}
!1329 = !{!1330}
!1330 = distinct !{!1330, !1328, !"cmpfunc: %b"}
!1331 = !{!1332}
!1332 = distinct !{!1332, !1333, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1333 = distinct !{!1333, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1334 = !{!1335}
!1335 = distinct !{!1335, !1333, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1336 = !{!1332, !1327, !1322, !1317, !1315}
!1337 = !{!1335, !1330, !1325, !1320, !1312}
!1338 = !{!1339}
!1339 = distinct !{!1339, !1340, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h71f6933434906a8fE: %self"}
!1340 = distinct !{!1340, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h71f6933434906a8fE"}
!1341 = !{!1342}
!1342 = distinct !{!1342, !1343, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17he334f978379cccceE: %a"}
!1343 = distinct !{!1343, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17he334f978379cccceE"}
!1344 = !{!1345}
!1345 = distinct !{!1345, !1343, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17he334f978379cccceE: %b"}
!1346 = !{!1347}
!1347 = distinct !{!1347, !1348, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %a"}
!1348 = distinct !{!1348, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE"}
!1349 = !{!1350}
!1350 = distinct !{!1350, !1348, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %b"}
!1351 = !{!1352}
!1352 = distinct !{!1352, !1353, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 0"}
!1353 = distinct !{!1353, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE"}
!1354 = !{!1355}
!1355 = distinct !{!1355, !1353, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 1"}
!1356 = !{!1357}
!1357 = distinct !{!1357, !1358, !"cmpfunc: %a"}
!1358 = distinct !{!1358, !"cmpfunc"}
!1359 = !{!1360}
!1360 = distinct !{!1360, !1358, !"cmpfunc: %b"}
!1361 = !{!1362}
!1362 = distinct !{!1362, !1363, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1363 = distinct !{!1363, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1364 = !{!1365}
!1365 = distinct !{!1365, !1363, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1366 = !{!1362, !1357, !1352, !1347, !1345}
!1367 = !{!1365, !1360, !1355, !1350, !1342}
!1368 = !{!1369}
!1369 = distinct !{!1369, !1370, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h71f6933434906a8fE: %self"}
!1370 = distinct !{!1370, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h71f6933434906a8fE"}
!1371 = !{!1372}
!1372 = distinct !{!1372, !1373, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17he334f978379cccceE: %a"}
!1373 = distinct !{!1373, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17he334f978379cccceE"}
!1374 = !{!1375}
!1375 = distinct !{!1375, !1373, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17he334f978379cccceE: %b"}
!1376 = !{!1377}
!1377 = distinct !{!1377, !1378, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %a"}
!1378 = distinct !{!1378, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE"}
!1379 = !{!1380}
!1380 = distinct !{!1380, !1378, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %b"}
!1381 = !{!1382}
!1382 = distinct !{!1382, !1383, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 0"}
!1383 = distinct !{!1383, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE"}
!1384 = !{!1385}
!1385 = distinct !{!1385, !1383, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 1"}
!1386 = !{!1387}
!1387 = distinct !{!1387, !1388, !"cmpfunc: %a"}
!1388 = distinct !{!1388, !"cmpfunc"}
!1389 = !{!1390}
!1390 = distinct !{!1390, !1388, !"cmpfunc: %b"}
!1391 = !{!1392}
!1392 = distinct !{!1392, !1393, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1393 = distinct !{!1393, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1394 = !{!1395}
!1395 = distinct !{!1395, !1393, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1396 = !{!1392, !1387, !1382, !1377, !1375}
!1397 = !{!1395, !1390, !1385, !1380, !1372}
!1398 = !{!1399}
!1399 = distinct !{!1399, !1400, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h71f6933434906a8fE: %self"}
!1400 = distinct !{!1400, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h71f6933434906a8fE"}
!1401 = !{!1402}
!1402 = distinct !{!1402, !1403, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17he334f978379cccceE: %a"}
!1403 = distinct !{!1403, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17he334f978379cccceE"}
!1404 = !{!1405}
!1405 = distinct !{!1405, !1403, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17he334f978379cccceE: %b"}
!1406 = !{!1407}
!1407 = distinct !{!1407, !1408, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %a"}
!1408 = distinct !{!1408, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE"}
!1409 = !{!1410}
!1410 = distinct !{!1410, !1408, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %b"}
!1411 = !{!1412}
!1412 = distinct !{!1412, !1413, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 0"}
!1413 = distinct !{!1413, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE"}
!1414 = !{!1415}
!1415 = distinct !{!1415, !1413, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 1"}
!1416 = !{!1417}
!1417 = distinct !{!1417, !1418, !"cmpfunc: %a"}
!1418 = distinct !{!1418, !"cmpfunc"}
!1419 = !{!1420}
!1420 = distinct !{!1420, !1418, !"cmpfunc: %b"}
!1421 = !{!1422}
!1422 = distinct !{!1422, !1423, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1423 = distinct !{!1423, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1424 = !{!1425}
!1425 = distinct !{!1425, !1423, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1426 = !{!1422, !1417, !1412, !1407, !1405}
!1427 = !{!1425, !1420, !1415, !1410, !1402}
!1428 = !{!1429}
!1429 = distinct !{!1429, !1430, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h71f6933434906a8fE: %self"}
!1430 = distinct !{!1430, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h71f6933434906a8fE"}
!1431 = !{!1432}
!1432 = distinct !{!1432, !1433, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h71f6933434906a8fE: %self"}
!1433 = distinct !{!1433, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h71f6933434906a8fE"}
!1434 = distinct !{!1434, !1435}
!1435 = !{!"llvm.loop.unroll.disable"}
!1436 = !{!1437}
!1437 = distinct !{!1437, !1438, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %a"}
!1438 = distinct !{!1438, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE"}
!1439 = !{!1440}
!1440 = distinct !{!1440, !1438, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %b"}
!1441 = !{!1442}
!1442 = distinct !{!1442, !1443, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 0"}
!1443 = distinct !{!1443, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE"}
!1444 = !{!1445}
!1445 = distinct !{!1445, !1443, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 1"}
!1446 = !{!1447}
!1447 = distinct !{!1447, !1448, !"cmpfunc: %a"}
!1448 = distinct !{!1448, !"cmpfunc"}
!1449 = !{!1450}
!1450 = distinct !{!1450, !1448, !"cmpfunc: %b"}
!1451 = !{!1452}
!1452 = distinct !{!1452, !1453, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1453 = distinct !{!1453, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1454 = !{!1455}
!1455 = distinct !{!1455, !1453, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1456 = !{!1452, !1447, !1442, !1437}
!1457 = !{!1455, !1450, !1445, !1440}
!1458 = !{!1459}
!1459 = distinct !{!1459, !1460, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h71f6933434906a8fE: %self"}
!1460 = distinct !{!1460, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h71f6933434906a8fE"}
!1461 = !{!1462}
!1462 = distinct !{!1462, !1463, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %a"}
!1463 = distinct !{!1463, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE"}
!1464 = !{!1465}
!1465 = distinct !{!1465, !1463, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %b"}
!1466 = !{!1467}
!1467 = distinct !{!1467, !1468, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 0"}
!1468 = distinct !{!1468, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE"}
!1469 = !{!1470}
!1470 = distinct !{!1470, !1468, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 1"}
!1471 = !{!1472}
!1472 = distinct !{!1472, !1473, !"cmpfunc: %a"}
!1473 = distinct !{!1473, !"cmpfunc"}
!1474 = !{!1475}
!1475 = distinct !{!1475, !1473, !"cmpfunc: %b"}
!1476 = !{!1477}
!1477 = distinct !{!1477, !1478, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1478 = distinct !{!1478, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1479 = !{!1480}
!1480 = distinct !{!1480, !1478, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1481 = !{!1477, !1472, !1467, !1462}
!1482 = !{!1480, !1475, !1470, !1465}
!1483 = !{!1484}
!1484 = distinct !{!1484, !1485, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h71f6933434906a8fE: %self"}
!1485 = distinct !{!1485, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h71f6933434906a8fE"}
!1486 = !{!1487}
!1487 = distinct !{!1487, !1488, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %a"}
!1488 = distinct !{!1488, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE"}
!1489 = !{!1490}
!1490 = distinct !{!1490, !1488, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %b"}
!1491 = !{!1492}
!1492 = distinct !{!1492, !1493, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 0"}
!1493 = distinct !{!1493, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE"}
!1494 = !{!1495}
!1495 = distinct !{!1495, !1493, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 1"}
!1496 = !{!1497}
!1497 = distinct !{!1497, !1498, !"cmpfunc: %a"}
!1498 = distinct !{!1498, !"cmpfunc"}
!1499 = !{!1500}
!1500 = distinct !{!1500, !1498, !"cmpfunc: %b"}
!1501 = !{!1502}
!1502 = distinct !{!1502, !1503, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1503 = distinct !{!1503, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1504 = !{!1505}
!1505 = distinct !{!1505, !1503, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1506 = !{!1502, !1497, !1492, !1487}
!1507 = !{!1505, !1500, !1495, !1490}
!1508 = !{!1509}
!1509 = distinct !{!1509, !1510, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h71f6933434906a8fE: %self"}
!1510 = distinct !{!1510, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h71f6933434906a8fE"}
!1511 = !{!1512}
!1512 = distinct !{!1512, !1513, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %a"}
!1513 = distinct !{!1513, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE"}
!1514 = !{!1515}
!1515 = distinct !{!1515, !1513, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %b"}
!1516 = !{!1517}
!1517 = distinct !{!1517, !1518, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 0"}
!1518 = distinct !{!1518, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE"}
!1519 = !{!1520}
!1520 = distinct !{!1520, !1518, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 1"}
!1521 = !{!1522}
!1522 = distinct !{!1522, !1523, !"cmpfunc: %a"}
!1523 = distinct !{!1523, !"cmpfunc"}
!1524 = !{!1525}
!1525 = distinct !{!1525, !1523, !"cmpfunc: %b"}
!1526 = !{!1527}
!1527 = distinct !{!1527, !1528, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1528 = distinct !{!1528, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1529 = !{!1530}
!1530 = distinct !{!1530, !1528, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1531 = !{!1527, !1522, !1517, !1512}
!1532 = !{!1530, !1525, !1520, !1515}
!1533 = !{!1534}
!1534 = distinct !{!1534, !1535, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h71f6933434906a8fE: %self"}
!1535 = distinct !{!1535, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h71f6933434906a8fE"}
!1536 = !{!1537}
!1537 = distinct !{!1537, !1538, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %a"}
!1538 = distinct !{!1538, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE"}
!1539 = !{!1540}
!1540 = distinct !{!1540, !1538, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %b"}
!1541 = !{!1542}
!1542 = distinct !{!1542, !1543, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 0"}
!1543 = distinct !{!1543, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE"}
!1544 = !{!1545}
!1545 = distinct !{!1545, !1543, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 1"}
!1546 = !{!1547}
!1547 = distinct !{!1547, !1548, !"cmpfunc: %a"}
!1548 = distinct !{!1548, !"cmpfunc"}
!1549 = !{!1550}
!1550 = distinct !{!1550, !1548, !"cmpfunc: %b"}
!1551 = !{!1552}
!1552 = distinct !{!1552, !1553, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1553 = distinct !{!1553, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1554 = !{!1555}
!1555 = distinct !{!1555, !1553, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1556 = !{!1552, !1547, !1542, !1537}
!1557 = !{!1555, !1550, !1545, !1540}
!1558 = !{!1559}
!1559 = distinct !{!1559, !1560, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h71f6933434906a8fE: %self"}
!1560 = distinct !{!1560, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h71f6933434906a8fE"}
!1561 = !{!1562}
!1562 = distinct !{!1562, !1563, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h71f6933434906a8fE: %self"}
!1563 = distinct !{!1563, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h71f6933434906a8fE"}
!1564 = distinct !{!1564, !1435}
!1565 = !{!1566}
!1566 = distinct !{!1566, !1567, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %a"}
!1567 = distinct !{!1567, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE"}
!1568 = !{!1569}
!1569 = distinct !{!1569, !1567, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %b"}
!1570 = !{!1571}
!1571 = distinct !{!1571, !1572, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 0"}
!1572 = distinct !{!1572, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE"}
!1573 = !{!1574}
!1574 = distinct !{!1574, !1575, !"_ZN4core5slice4sort6shared5pivot7median317hb13549aa539deb4fE: %c"}
!1575 = distinct !{!1575, !"_ZN4core5slice4sort6shared5pivot7median317hb13549aa539deb4fE"}
!1576 = !{!1577}
!1577 = distinct !{!1577, !1572, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 1"}
!1578 = !{!1579}
!1579 = distinct !{!1579, !1580, !"cmpfunc: %a"}
!1580 = distinct !{!1580, !"cmpfunc"}
!1581 = !{!1582}
!1582 = distinct !{!1582, !1580, !"cmpfunc: %b"}
!1583 = !{!1584}
!1584 = distinct !{!1584, !1585, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1585 = distinct !{!1585, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1586 = !{!1587}
!1587 = distinct !{!1587, !1585, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1588 = !{!1584, !1579, !1571, !1566, !1589}
!1589 = distinct !{!1589, !1590, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h23102a79409d8b4bE: %v.0"}
!1590 = distinct !{!1590, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h23102a79409d8b4bE"}
!1591 = !{!1587, !1582, !1577, !1569, !1574, !1592}
!1592 = distinct !{!1592, !1590, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h23102a79409d8b4bE: %is_less"}
!1593 = !{!1587, !1582, !1577, !1569, !1589}
!1594 = !{!1584, !1579, !1571, !1566, !1574, !1592}
!1595 = !{!1596, !1598, !1600, !1602, !1589}
!1596 = distinct !{!1596, !1597, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1597 = distinct !{!1597, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1598 = distinct !{!1598, !1599, !"cmpfunc: %b"}
!1599 = distinct !{!1599, !"cmpfunc"}
!1600 = distinct !{!1600, !1601, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 1"}
!1601 = distinct !{!1601, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE"}
!1602 = distinct !{!1602, !1603, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %b"}
!1603 = distinct !{!1603, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE"}
!1604 = !{!1605, !1606, !1607, !1608, !1592}
!1605 = distinct !{!1605, !1597, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1606 = distinct !{!1606, !1599, !"cmpfunc: %a"}
!1607 = distinct !{!1607, !1601, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 0"}
!1608 = distinct !{!1608, !1603, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %a"}
!1609 = !{!1610, !1612, !1614, !1616}
!1610 = distinct !{!1610, !1611, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1611 = distinct !{!1611, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1612 = distinct !{!1612, !1613, !"cmpfunc: %a"}
!1613 = distinct !{!1613, !"cmpfunc"}
!1614 = distinct !{!1614, !1615, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 0"}
!1615 = distinct !{!1615, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE"}
!1616 = distinct !{!1616, !1617, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %a"}
!1617 = distinct !{!1617, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE"}
!1618 = !{!1619, !1620, !1621, !1622}
!1619 = distinct !{!1619, !1611, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1620 = distinct !{!1620, !1613, !"cmpfunc: %b"}
!1621 = distinct !{!1621, !1615, !"_ZN4core3ops8function5FnMut8call_mut17h4a2a14a415734fdaE: argument 1"}
!1622 = distinct !{!1622, !1617, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc70d57bfd038b0adE: %b"}
!1623 = !{!1624, !1626}
!1624 = distinct !{!1624, !1625, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h63c6dcd49d710c6bE: %pair"}
!1625 = distinct !{!1625, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h63c6dcd49d710c6bE"}
!1626 = distinct !{!1626, !1625, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h63c6dcd49d710c6bE: %self.0"}
!1627 = !{!1628}
!1628 = distinct !{!1628, !1629, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h3a593d68f4581716E: %self"}
!1629 = distinct !{!1629, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h3a593d68f4581716E"}
!1630 = !{i64 0, i64 -9223372036854775808}
!1631 = distinct !{!1631, !1435}
!1632 = !{!1633}
!1633 = distinct !{!1633, !1634, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf13b94cb6f3d09d2E: %self"}
!1634 = distinct !{!1634, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf13b94cb6f3d09d2E"}
!1635 = !{!1636}
!1636 = distinct !{!1636, !1637, !"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17he37b00fe672cfbc1E: %self"}
!1637 = distinct !{!1637, !"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17he37b00fe672cfbc1E"}
!1638 = !{!1639}
!1639 = distinct !{!1639, !1637, !"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17he37b00fe672cfbc1E: %_0"}
!1640 = !{!1641, !1643, !1639, !1636}
!1641 = distinct !{!1641, !1642, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hbc1df9b7f83ec616E: %v"}
!1642 = distinct !{!1642, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hbc1df9b7f83ec616E"}
!1643 = distinct !{!1643, !1642, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hbc1df9b7f83ec616E: %s.0"}
!1644 = !{!1641, !1639, !1636}
!1645 = !{!1646, !1648}
!1646 = distinct !{!1646, !1647, !"_ZN83_$LT$alloc..vec..set_len_on_drop..SetLenOnDrop$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc595cb6c8b2aa3efE: %self"}
!1647 = distinct !{!1647, !"_ZN83_$LT$alloc..vec..set_len_on_drop..SetLenOnDrop$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc595cb6c8b2aa3efE"}
!1648 = distinct !{!1648, !1649, !"_ZN4core3ptr62drop_in_place$LT$alloc..vec..set_len_on_drop..SetLenOnDrop$GT$17h859936f0d13d6b2aE: %_1"}
!1649 = distinct !{!1649, !"_ZN4core3ptr62drop_in_place$LT$alloc..vec..set_len_on_drop..SetLenOnDrop$GT$17h859936f0d13d6b2aE"}
!1650 = !{!1651, !1653}
!1651 = distinct !{!1651, !1652, !"_ZN83_$LT$alloc..vec..set_len_on_drop..SetLenOnDrop$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc595cb6c8b2aa3efE: %self"}
!1652 = distinct !{!1652, !"_ZN83_$LT$alloc..vec..set_len_on_drop..SetLenOnDrop$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc595cb6c8b2aa3efE"}
!1653 = distinct !{!1653, !1654, !"_ZN4core3ptr62drop_in_place$LT$alloc..vec..set_len_on_drop..SetLenOnDrop$GT$17h859936f0d13d6b2aE: %_1"}
!1654 = distinct !{!1654, !"_ZN4core3ptr62drop_in_place$LT$alloc..vec..set_len_on_drop..SetLenOnDrop$GT$17h859936f0d13d6b2aE"}
!1655 = !{!1656, !1658}
!1656 = distinct !{!1656, !1657, !"_ZN83_$LT$alloc..vec..set_len_on_drop..SetLenOnDrop$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc595cb6c8b2aa3efE: %self"}
!1657 = distinct !{!1657, !"_ZN83_$LT$alloc..vec..set_len_on_drop..SetLenOnDrop$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc595cb6c8b2aa3efE"}
!1658 = distinct !{!1658, !1659, !"_ZN4core3ptr62drop_in_place$LT$alloc..vec..set_len_on_drop..SetLenOnDrop$GT$17h859936f0d13d6b2aE: %_1"}
!1659 = distinct !{!1659, !"_ZN4core3ptr62drop_in_place$LT$alloc..vec..set_len_on_drop..SetLenOnDrop$GT$17h859936f0d13d6b2aE"}
!1660 = !{!1661}
!1661 = distinct !{!1661, !1662, !"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h3477d8a424cb15c8E: %_0"}
!1662 = distinct !{!1662, !"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h3477d8a424cb15c8E"}
!1663 = distinct !{!1663, !1435}
!1664 = !{!1665}
!1665 = distinct !{!1665, !1666, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hbc1df9b7f83ec616E: %v"}
!1666 = distinct !{!1666, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hbc1df9b7f83ec616E"}
!1667 = !{!1665, !1668}
!1668 = distinct !{!1668, !1666, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hbc1df9b7f83ec616E: %s.0"}
!1669 = !{!1668}
!1670 = !{!1671}
!1671 = distinct !{!1671, !1672, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1672 = distinct !{!1672, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1673 = !{!1674}
!1674 = distinct !{!1674, !1672, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1675 = !{!1676}
!1676 = distinct !{!1676, !1677, !"_ZN5alloc3vec9from_elem17h6df2ce29ad3e9a4eE: %_0"}
!1677 = distinct !{!1677, !"_ZN5alloc3vec9from_elem17h6df2ce29ad3e9a4eE"}
!1678 = !{!1679}
!1679 = distinct !{!1679, !1680, !"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h3477d8a424cb15c8E: %_0"}
!1680 = distinct !{!1680, !"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h3477d8a424cb15c8E"}
!1681 = !{!1679, !1676}
!1682 = !{!1683}
!1683 = distinct !{!1683, !1684, !"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h15d643618ef514cbE: %self"}
!1684 = distinct !{!1684, !"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h15d643618ef514cbE"}
!1685 = !{!1686}
!1686 = distinct !{!1686, !1684, !"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h15d643618ef514cbE: argument 1"}
!1687 = !{!1688}
!1688 = distinct !{!1688, !1689, !"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc28fb23a363afff4E: %self"}
!1689 = distinct !{!1689, !"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc28fb23a363afff4E"}
!1690 = !{!1691}
!1691 = distinct !{!1691, !1689, !"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc28fb23a363afff4E: argument 1"}
!1692 = !{!1693}
!1693 = distinct !{!1693, !1694, !"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hdbc3c48ed40c3435E: %self"}
!1694 = distinct !{!1694, !"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hdbc3c48ed40c3435E"}
!1695 = !{!1696}
!1696 = distinct !{!1696, !1694, !"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hdbc3c48ed40c3435E: argument 1"}
!1697 = !{!1698}
!1698 = distinct !{!1698, !1699, !"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5089ef636e9585e4E: %self"}
!1699 = distinct !{!1699, !"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5089ef636e9585e4E"}
!1700 = !{!1701}
!1701 = distinct !{!1701, !1699, !"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5089ef636e9585e4E: argument 1"}
!1702 = !{!1703}
!1703 = distinct !{!1703, !1704, !"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h15d643618ef514cbE: %self"}
!1704 = distinct !{!1704, !"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h15d643618ef514cbE"}
!1705 = !{!1706}
!1706 = distinct !{!1706, !1704, !"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h15d643618ef514cbE: argument 1"}
!1707 = !{!1708}
!1708 = distinct !{!1708, !1709, !"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hdbc3c48ed40c3435E: %self"}
!1709 = distinct !{!1709, !"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hdbc3c48ed40c3435E"}
!1710 = !{!1711}
!1711 = distinct !{!1711, !1709, !"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hdbc3c48ed40c3435E: argument 1"}
!1712 = !{!1713}
!1713 = distinct !{!1713, !1714, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h09a227222c30777aE: %self.0"}
!1714 = distinct !{!1714, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h09a227222c30777aE"}
!1715 = !{!1716, !1718, !1713}
!1716 = distinct !{!1716, !1717, !"_ZN5alloc5slice11stable_sort17h876177db3ca98b4cE: %v.0"}
!1717 = distinct !{!1717, !"_ZN5alloc5slice11stable_sort17h876177db3ca98b4cE"}
!1718 = distinct !{!1718, !1717, !"_ZN5alloc5slice11stable_sort17h876177db3ca98b4cE: argument 1"}
!1719 = !{!"branch_weights", !"expected", i32 2000, i32 1}
