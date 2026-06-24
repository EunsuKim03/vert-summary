; ModuleID = 'BREAKING_NUMBER_FIRST_PART_INTEGRAL_DIVISION_SECOND_POWER_10_emit.196a8e505bc16d91-cgu.0'
source_filename = "BREAKING_NUMBER_FIRST_PART_INTEGRAL_DIVISION_SECOND_POWER_10_emit.196a8e505bc16d91-cgu.0"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"core::mem::maybe_uninit::MaybeUninit<[u8; 8]>" = type { [8 x i8] }

@alloc_d1084648e479974e70c9329824bf76f9 = private unnamed_addr constant [9 x i8] c"mid > len", align 1
@alloc_e8e5fd9f509afcb950667480b3e3e42a = private unnamed_addr constant [126 x i8] c"/root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/sort/stable/quicksort.rs\00", align 1
@alloc_58d434a1e795f965ef82c8e9c5db822a = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_e8e5fd9f509afcb950667480b3e3e42a, [16 x i8] c"}\00\00\00\00\00\00\00J\00\00\00\1F\00\00\00" }>, align 8
@alloc_0766b232215672ee1bd2195fdb153938 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_e8e5fd9f509afcb950667480b3e3e42a, [16 x i8] c"}\00\00\00\00\00\00\00D\00\00\00\17\00\00\00" }>, align 8
@alloc_2bdfa8927f59fc56365d38427960fa68 = private unnamed_addr constant [175 x i8] c"/root/es/vert/vert/rust_funcs/cpp_transcoder/BREAKING_NUMBER_FIRST_PART_INTEGRAL_DIVISION_SECOND_POWER_10/BREAKING_NUMBER_FIRST_PART_INTEGRAL_DIVISION_SECOND_POWER_10_emit.rs\00", align 1
@alloc_4589facc9212bd32fc6a75ca289ca8b8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_2bdfa8927f59fc56365d38427960fa68, [16 x i8] c"\AE\00\00\00\00\00\00\00\1B\00\00\00\12\00\00\00" }>, align 8
@alloc_1ffb130ac39c8ca8f51bcb2b0095d451 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_2bdfa8927f59fc56365d38427960fa68, [16 x i8] c"\AE\00\00\00\00\00\00\00\1D\00\00\00\12\00\00\00" }>, align 8

; core::ptr::swap_nonoverlapping_bytes::swap_nonoverlapping_chunks
; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17hfccd2237ddde5e36E(ptr noundef captures(none) %x, ptr noundef captures(none) %y, i64 noundef range(i64 1, 0) %chunks) unnamed_addr #0 {
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
define internal fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h84cb0a6ff2d68fd9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %_1) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %_1)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h7c3842045c38c211E.exit" unwind label %cleanup.i

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
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #24
  unreachable

bb1.i:                                            ; preds = %cleanup.i
  resume { ptr, i32 } %0

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h7c3842045c38c211E.exit": ; preds = %start
; call <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %_1)
  ret void
}

; core::str::<impl str>::starts_with
; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN4core3str21_$LT$impl$u20$str$GT$11starts_with17ha4c7f5344bc721cdE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %self.0, i64 noundef %self.1, i32 noundef range(i32 0, 1114112) %pat) unnamed_addr #1 {
start:
  %_6.i = alloca [4 x i8], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_6.i), !noalias !12
  store i32 0, ptr %_6.i, align 4, !noalias !12
  %_11.i.i = icmp samesign ult i32 %pat, 128
  br i1 %_11.i.i, label %bb2.i.i, label %bb5.i.i

bb5.i.i:                                          ; preds = %start
  %_12.i.i = icmp samesign ult i32 %pat, 2048
  br i1 %_12.i.i, label %bb2.i.i, label %bb6.i.i

bb6.i.i:                                          ; preds = %bb5.i.i
  %_13.i.i = icmp samesign ult i32 %pat, 65536
  %..i.i = select i1 %_13.i.i, i64 3, i64 4
  br label %bb2.i.i

bb2.i.i:                                          ; preds = %bb6.i.i, %bb5.i.i, %start
  %len.sroa.0.0.i.i = phi i64 [ 1, %start ], [ %..i.i, %bb6.i.i ], [ 2, %bb5.i.i ]
  br i1 %_11.i.i, label %bb12.i.i.i, label %bb7.i.i.i

bb7.i.i.i:                                        ; preds = %bb2.i.i
  %_29.i.i.i = icmp samesign ult i32 %pat, 2048
  %0 = trunc i32 %pat to i8
  %_5.i.i.i = and i8 %0, 63
  %last1.i.i.i = or disjoint i8 %_5.i.i.i, -128
  %_10.i.i.i = lshr i32 %pat, 6
  %1 = trunc i32 %_10.i.i.i to i8
  %_8.i.i.i = and i8 %1, 63
  %last2.i.i.i = or disjoint i8 %_8.i.i.i, -128
  %_14.i.i.i = lshr i32 %pat, 12
  %2 = trunc i32 %_14.i.i.i to i8
  %_12.i.i.i = and i8 %2, 63
  %last3.i.i.i = or disjoint i8 %_12.i.i.i, -128
  %_18.i.i.i = lshr i32 %pat, 18
  %_16.i.i.i = trunc nuw nsw i32 %_18.i.i.i to i8
  %last4.i.i.i = or disjoint i8 %_16.i.i.i, -16
  br i1 %_29.i.i.i, label %bb1.i.i.i, label %bb2.i.i.i

bb12.i.i.i:                                       ; preds = %bb2.i.i
  %3 = trunc nuw nsw i32 %pat to i8
  store i8 %3, ptr %_6.i, align 4, !alias.scope !15, !noalias !12
  br label %"_ZN52_$LT$char$u20$as$u20$core..str..pattern..Pattern$GT$12is_prefix_of17h0ca10fe567e00243E.exit"

bb2.i.i.i:                                        ; preds = %bb7.i.i.i
  %_30.i.i.i = icmp samesign ult i32 %pat, 65536
  br i1 %_30.i.i.i, label %bb3.i.i.i, label %bb4.i.i.i

bb1.i.i.i:                                        ; preds = %bb7.i.i.i
  %4 = or disjoint i8 %1, -64
  store i8 %4, ptr %_6.i, align 4, !alias.scope !15, !noalias !12
  %_21.i.i.i = getelementptr inbounds nuw i8, ptr %_6.i, i64 1
  store i8 %last1.i.i.i, ptr %_21.i.i.i, align 1, !alias.scope !15, !noalias !12
  br label %"_ZN52_$LT$char$u20$as$u20$core..str..pattern..Pattern$GT$12is_prefix_of17h0ca10fe567e00243E.exit"

bb4.i.i.i:                                        ; preds = %bb2.i.i.i
  store i8 %last4.i.i.i, ptr %_6.i, align 4, !alias.scope !15, !noalias !12
  %_25.i.i.i = getelementptr inbounds nuw i8, ptr %_6.i, i64 1
  store i8 %last3.i.i.i, ptr %_25.i.i.i, align 1, !alias.scope !15, !noalias !12
  %_26.i.i.i = getelementptr inbounds nuw i8, ptr %_6.i, i64 2
  store i8 %last2.i.i.i, ptr %_26.i.i.i, align 2, !alias.scope !15, !noalias !12
  %_27.i.i.i = getelementptr inbounds nuw i8, ptr %_6.i, i64 3
  store i8 %last1.i.i.i, ptr %_27.i.i.i, align 1, !alias.scope !15, !noalias !12
  br label %"_ZN52_$LT$char$u20$as$u20$core..str..pattern..Pattern$GT$12is_prefix_of17h0ca10fe567e00243E.exit"

bb3.i.i.i:                                        ; preds = %bb2.i.i.i
  %5 = or disjoint i8 %2, -32
  store i8 %5, ptr %_6.i, align 4, !alias.scope !15, !noalias !12
  %_23.i.i.i = getelementptr inbounds nuw i8, ptr %_6.i, i64 1
  store i8 %last2.i.i.i, ptr %_23.i.i.i, align 1, !alias.scope !15, !noalias !12
  %_24.i.i.i = getelementptr inbounds nuw i8, ptr %_6.i, i64 2
  store i8 %last1.i.i.i, ptr %_24.i.i.i, align 2, !alias.scope !15, !noalias !12
  br label %"_ZN52_$LT$char$u20$as$u20$core..str..pattern..Pattern$GT$12is_prefix_of17h0ca10fe567e00243E.exit"

"_ZN52_$LT$char$u20$as$u20$core..str..pattern..Pattern$GT$12is_prefix_of17h0ca10fe567e00243E.exit": ; preds = %bb12.i.i.i, %bb1.i.i.i, %bb4.i.i.i, %bb3.i.i.i
; call core::slice::<impl [T]>::starts_with
  %_0.i = call noundef zeroext i1 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h64c1bc5a56da65e1E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %self.0, i64 noundef %self.1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %_6.i, i64 noundef %len.sroa.0.0.i.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_6.i), !noalias !12
  ret i1 %_0.i
}

; core::slice::sort::shared::pivot::median3_rec
; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite) uwtable
define noundef nonnull ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h2332e7caf23104a8E(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %n, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #2 {
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
  %4 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h2332e7caf23104a8E(ptr noundef %0, ptr noundef %_10, ptr noundef %_13, i64 noundef %n84, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  %_16 = getelementptr inbounds nuw i32, ptr %1, i64 %count
  %_18 = getelementptr inbounds nuw i32, ptr %1, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %5 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h2332e7caf23104a8E(ptr noundef %1, ptr noundef %_16, ptr noundef %_18, i64 noundef %n84, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  %_20 = getelementptr inbounds nuw i32, ptr %2, i64 %count
  %_22 = getelementptr inbounds nuw i32, ptr %2, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %6 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h2332e7caf23104a8E(ptr noundef %2, ptr noundef %_20, ptr noundef %_22, i64 noundef %n84, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  br label %bb6

bb6:                                              ; preds = %start, %bb1
  %c.sroa.0.0 = phi ptr [ %6, %bb1 ], [ %2, %start ]
  %b.sroa.0.0 = phi ptr [ %5, %bb1 ], [ %1, %start ]
  %a.sroa.0.0 = phi ptr [ %4, %bb1 ], [ %0, %start ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23), !noalias !26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29), !noalias !26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31), !noalias !26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34), !noalias !26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36), !noalias !26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39), !noalias !26
  %_3.i.i.i.i = load i32, ptr %a.sroa.0.0, align 4, !alias.scope !41, !noalias !42, !noundef !43
  %_4.i.i.i.i = load i32, ptr %b.sroa.0.0, align 4, !alias.scope !44, !noalias !45, !noundef !43
  %_0.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %_4.i.i.i.i6 = load i32, ptr %c.sroa.0.0, align 4, !alias.scope !46, !noalias !55, !noundef !43
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
define void @_ZN4core5slice4sort6shared9smallsort11insert_tail17hf58a87192878323bE(ptr noundef readnone captures(address) %begin, ptr noundef captures(address) %tail, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %0 = getelementptr inbounds i8, ptr %tail, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78)
  %_3.i.i.i.i = load i32, ptr %tail, align 4, !alias.scope !80, !noalias !81, !noundef !43
  %_4.i.i.i.i = load i32, ptr %0, align 4, !alias.scope !81, !noalias !80, !noundef !43
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
  %_4.i.i.i.i2 = load i32, ptr %2, align 4, !alias.scope !82, !noalias !91, !noundef !43
  %_0.i3 = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i2
  br i1 %_0.i3, label %bb4, label %bb10

bb10:                                             ; preds = %bb6, %bb4
  store i32 %_3.i.i.i.i, ptr %sift.sroa.0.0, align 4, !noalias !96
  br label %bb12
}

; core::slice::sort::shared::smallsort::sort4_stable
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h716712c3fade45adE(ptr noundef readonly captures(none) %v_base, ptr noundef writeonly captures(none) initializes((0, 16)) %dst, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_7 = getelementptr inbounds nuw i8, ptr %v_base, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !104)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !106)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !109)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !111)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !114)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !119)
  %_3.i.i.i.i = load i32, ptr %_7, align 4, !alias.scope !121, !noalias !122, !noundef !43
  %_4.i.i.i.i = load i32, ptr %v_base, align 4, !alias.scope !122, !noalias !121, !noundef !43
  %_0.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %_12 = getelementptr inbounds nuw i8, ptr %v_base, i64 12
  %_14 = getelementptr inbounds nuw i8, ptr %v_base, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !126)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !131)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !138)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !141)
  %_3.i.i.i.i7 = load i32, ptr %_12, align 4, !alias.scope !143, !noalias !144, !noundef !43
  %_4.i.i.i.i8 = load i32, ptr %_14, align 4, !alias.scope !144, !noalias !143, !noundef !43
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !145)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !153)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !155)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !158)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !160)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !163)
  %_3.i.i.i.i10 = load i32, ptr %c, align 4, !alias.scope !165, !noalias !166, !noundef !43
  %_4.i.i.i.i11 = load i32, ptr %a, align 4, !alias.scope !166, !noalias !165, !noundef !43
  %_0.i12 = icmp slt i32 %_3.i.i.i.i10, %_4.i.i.i.i11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !167)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !170)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !172)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !175)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !177)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !180)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !182)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !185)
  %_3.i.i.i.i13 = load i32, ptr %d, align 4, !alias.scope !187, !noalias !188, !noundef !43
  %_4.i.i.i.i14 = load i32, ptr %b, align 4, !alias.scope !188, !noalias !187, !noundef !43
  %_0.i15 = icmp slt i32 %_3.i.i.i.i13, %_4.i.i.i.i14
  %0 = select i1 %_0.i12, ptr %c, ptr %a, !unpredictable !43
  %1 = select i1 %_0.i15, ptr %c, ptr %b, !unpredictable !43
  %2 = select i1 %_0.i12, ptr %a, ptr %1, !unpredictable !43
  %3 = select i1 %_0.i12, ptr %b, ptr %c, !unpredictable !43
  %4 = select i1 %_0.i15, ptr %d, ptr %3, !unpredictable !43
  tail call void @llvm.experimental.noalias.scope.decl(metadata !189)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !192)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !194)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !197)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !202)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !204)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !207)
  %_3.i.i.i.i16 = load i32, ptr %4, align 4, !alias.scope !209, !noalias !210, !noundef !43
  %_4.i.i.i.i17 = load i32, ptr %2, align 4, !alias.scope !210, !noalias !209, !noundef !43
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
define void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17hf261dc0e08b244e0E(ptr noundef readonly captures(none) %v_base, ptr noundef writeonly captures(none) initializes((0, 32)) %dst, ptr noundef captures(address) initializes((0, 32)) %scratch_base, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_7.i = getelementptr inbounds nuw i8, ptr %v_base, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !211)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !214)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !216)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !219)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !221)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !224)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !226)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !229)
  %_3.i.i.i.i.i = load i32, ptr %_7.i, align 4, !alias.scope !231, !noalias !232, !noundef !43
  %_4.i.i.i.i.i = load i32, ptr %v_base, align 4, !alias.scope !232, !noalias !231, !noundef !43
  %_0.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %_12.i = getelementptr inbounds nuw i8, ptr %v_base, i64 12
  %_14.i = getelementptr inbounds nuw i8, ptr %v_base, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !233)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !236)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !238)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !243)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !246)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !248)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !251)
  %_3.i.i.i.i7.i = load i32, ptr %_12.i, align 4, !alias.scope !253, !noalias !254, !noundef !43
  %_4.i.i.i.i8.i = load i32, ptr %_14.i, align 4, !alias.scope !254, !noalias !253, !noundef !43
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !255)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !258)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !260)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !263)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !265)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !268)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !270)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !273)
  %_3.i.i.i.i10.i = load i32, ptr %c.i, align 4, !alias.scope !275, !noalias !276, !noundef !43
  %_4.i.i.i.i11.i = load i32, ptr %a.i, align 4, !alias.scope !276, !noalias !275, !noundef !43
  %_0.i12.i = icmp slt i32 %_3.i.i.i.i10.i, %_4.i.i.i.i11.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !277)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !280)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !282)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !285)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !287)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !290)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !292)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !295)
  %_3.i.i.i.i13.i = load i32, ptr %d.i, align 4, !alias.scope !297, !noalias !298, !noundef !43
  %_4.i.i.i.i14.i = load i32, ptr %b.i, align 4, !alias.scope !298, !noalias !297, !noundef !43
  %_0.i15.i = icmp slt i32 %_3.i.i.i.i13.i, %_4.i.i.i.i14.i
  %0 = select i1 %_0.i12.i, ptr %c.i, ptr %a.i, !unpredictable !43
  %1 = select i1 %_0.i15.i, ptr %c.i, ptr %b.i, !unpredictable !43
  %2 = select i1 %_0.i12.i, ptr %a.i, ptr %1, !unpredictable !43
  %3 = select i1 %_0.i12.i, ptr %b.i, ptr %c.i, !unpredictable !43
  %4 = select i1 %_0.i15.i, ptr %d.i, ptr %3, !unpredictable !43
  tail call void @llvm.experimental.noalias.scope.decl(metadata !299)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !302)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !304)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !307)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !309)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !312)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !314)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !317)
  %_3.i.i.i.i16.i = load i32, ptr %4, align 4, !alias.scope !319, !noalias !320, !noundef !43
  %_4.i.i.i.i17.i = load i32, ptr %2, align 4, !alias.scope !320, !noalias !319, !noundef !43
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !321)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !324)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !326)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !329)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !331)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !334)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !336)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !339)
  %_3.i.i.i.i.i2 = load i32, ptr %_7.i1, align 4, !alias.scope !341, !noalias !342, !noundef !43
  %_4.i.i.i.i.i3 = load i32, ptr %_9, align 4, !alias.scope !342, !noalias !341, !noundef !43
  %_0.i.i4 = icmp slt i32 %_3.i.i.i.i.i2, %_4.i.i.i.i.i3
  %_12.i5 = getelementptr inbounds nuw i8, ptr %v_base, i64 28
  %_14.i6 = getelementptr inbounds nuw i8, ptr %v_base, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !343)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !346)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !348)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !351)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !353)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !356)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !358)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !361)
  %_3.i.i.i.i7.i7 = load i32, ptr %_12.i5, align 4, !alias.scope !363, !noalias !364, !noundef !43
  %_4.i.i.i.i8.i8 = load i32, ptr %_14.i6, align 4, !alias.scope !364, !noalias !363, !noundef !43
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !365)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !368)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !370)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !373)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !375)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !378)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !380)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !383)
  %_3.i.i.i.i10.i19 = load i32, ptr %c.i16, align 4, !alias.scope !385, !noalias !386, !noundef !43
  %_4.i.i.i.i11.i20 = load i32, ptr %a.i11, align 4, !alias.scope !386, !noalias !385, !noundef !43
  %_0.i12.i21 = icmp slt i32 %_3.i.i.i.i10.i19, %_4.i.i.i.i11.i20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !387)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !390)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !392)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !395)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !397)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !400)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !402)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !405)
  %_3.i.i.i.i13.i22 = load i32, ptr %d.i18, align 4, !alias.scope !407, !noalias !408, !noundef !43
  %_4.i.i.i.i14.i23 = load i32, ptr %b.i14, align 4, !alias.scope !408, !noalias !407, !noundef !43
  %_0.i15.i24 = icmp slt i32 %_3.i.i.i.i13.i22, %_4.i.i.i.i14.i23
  %10 = select i1 %_0.i12.i21, ptr %c.i16, ptr %a.i11, !unpredictable !43
  %11 = select i1 %_0.i15.i24, ptr %c.i16, ptr %b.i14, !unpredictable !43
  %12 = select i1 %_0.i12.i21, ptr %a.i11, ptr %11, !unpredictable !43
  %13 = select i1 %_0.i12.i21, ptr %b.i14, ptr %c.i16, !unpredictable !43
  %14 = select i1 %_0.i15.i24, ptr %d.i18, ptr %13, !unpredictable !43
  tail call void @llvm.experimental.noalias.scope.decl(metadata !409)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !412)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !414)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !417)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !419)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !422)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !424)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !427)
  %_3.i.i.i.i16.i25 = load i32, ptr %14, align 4, !alias.scope !429, !noalias !430, !noundef !43
  %_4.i.i.i.i17.i26 = load i32, ptr %12, align 4, !alias.scope !430, !noalias !429, !noundef !43
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !431)
  %20 = getelementptr i8, ptr %scratch_base, i64 12
  %21 = getelementptr inbounds nuw i8, ptr %scratch_base, i64 28
  %22 = getelementptr inbounds nuw i8, ptr %dst, i64 28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !434)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !437)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !439), !noalias !442
  tail call void @llvm.experimental.noalias.scope.decl(metadata !445), !noalias !442
  tail call void @llvm.experimental.noalias.scope.decl(metadata !447), !noalias !442
  tail call void @llvm.experimental.noalias.scope.decl(metadata !450), !noalias !442
  tail call void @llvm.experimental.noalias.scope.decl(metadata !452), !noalias !442
  tail call void @llvm.experimental.noalias.scope.decl(metadata !455), !noalias !442
  %_3.i.i.i.i.i36 = load i32, ptr %_10, align 4, !alias.scope !457, !noalias !458, !noundef !43
  %_4.i.i.i.i.i37 = load i32, ptr %scratch_base, align 4, !alias.scope !459, !noalias !460, !noundef !43
  %_0.i.i38 = icmp slt i32 %_3.i.i.i.i.i36, %_4.i.i.i.i.i37
  %is_l.i18.i = xor i1 %_0.i.i38, true
  %23 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i36, i32 %_4.i.i.i.i.i37)
  store i32 %23, ptr %dst, align 4, !noalias !461
  %count.i.i = zext i1 %_0.i.i38 to i64
  %_12.i.i = getelementptr inbounds nuw i32, ptr %_10, i64 %count.i.i
  %count2.i.i = zext i1 %is_l.i18.i to i64
  %_14.i.i = getelementptr inbounds nuw i32, ptr %scratch_base, i64 %count2.i.i
  %_16.i.i = getelementptr inbounds nuw i8, ptr %dst, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !463)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !466)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !468), !noalias !471
  tail call void @llvm.experimental.noalias.scope.decl(metadata !474), !noalias !471
  tail call void @llvm.experimental.noalias.scope.decl(metadata !476), !noalias !471
  tail call void @llvm.experimental.noalias.scope.decl(metadata !479), !noalias !471
  tail call void @llvm.experimental.noalias.scope.decl(metadata !481), !noalias !471
  tail call void @llvm.experimental.noalias.scope.decl(metadata !484), !noalias !471
  %_3.i.i.i.i19.i = load i32, ptr %21, align 4, !alias.scope !486, !noalias !487, !noundef !43
  %_4.i.i.i.i20.i = load i32, ptr %20, align 4, !alias.scope !488, !noalias !489, !noundef !43
  %_0.i21.i = icmp slt i32 %_3.i.i.i.i19.i, %_4.i.i.i.i20.i
  %is_l.i.i = xor i1 %_0.i21.i, true
  %24 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19.i, i32 %_4.i.i.i.i20.i)
  store i32 %24, ptr %22, align 4, !noalias !490
  %count.neg.i.i = sext i1 %is_l.i.i to i64
  %25 = getelementptr i32, ptr %21, i64 %count.neg.i.i
  %count3.neg.i.i = sext i1 %_0.i21.i to i64
  %26 = getelementptr i32, ptr %20, i64 %count3.neg.i.i
  %27 = getelementptr inbounds nuw i8, ptr %dst, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !492)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !494)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496), !noalias !442
  tail call void @llvm.experimental.noalias.scope.decl(metadata !498), !noalias !442
  tail call void @llvm.experimental.noalias.scope.decl(metadata !500), !noalias !442
  tail call void @llvm.experimental.noalias.scope.decl(metadata !502), !noalias !442
  tail call void @llvm.experimental.noalias.scope.decl(metadata !504), !noalias !442
  tail call void @llvm.experimental.noalias.scope.decl(metadata !506), !noalias !442
  %_3.i.i.i.i.i36.1 = load i32, ptr %_12.i.i, align 4, !alias.scope !508, !noalias !509, !noundef !43
  %_4.i.i.i.i.i37.1 = load i32, ptr %_14.i.i, align 4, !alias.scope !510, !noalias !511, !noundef !43
  %_0.i.i38.1 = icmp slt i32 %_3.i.i.i.i.i36.1, %_4.i.i.i.i.i37.1
  %is_l.i18.i.1 = xor i1 %_0.i.i38.1, true
  %28 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i36.1, i32 %_4.i.i.i.i.i37.1)
  store i32 %28, ptr %_16.i.i, align 4, !noalias !461
  %count.i.i.1 = zext i1 %_0.i.i38.1 to i64
  %_12.i.i.1 = getelementptr inbounds nuw i32, ptr %_12.i.i, i64 %count.i.i.1
  %count2.i.i.1 = zext i1 %is_l.i18.i.1 to i64
  %_14.i.i.1 = getelementptr inbounds nuw i32, ptr %_14.i.i, i64 %count2.i.i.1
  %_16.i.i.1 = getelementptr inbounds nuw i8, ptr %dst, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !512)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !514)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !516), !noalias !471
  tail call void @llvm.experimental.noalias.scope.decl(metadata !518), !noalias !471
  tail call void @llvm.experimental.noalias.scope.decl(metadata !520), !noalias !471
  tail call void @llvm.experimental.noalias.scope.decl(metadata !522), !noalias !471
  tail call void @llvm.experimental.noalias.scope.decl(metadata !524), !noalias !471
  tail call void @llvm.experimental.noalias.scope.decl(metadata !526), !noalias !471
  %_3.i.i.i.i19.i.1 = load i32, ptr %25, align 4, !alias.scope !528, !noalias !529, !noundef !43
  %_4.i.i.i.i20.i.1 = load i32, ptr %26, align 4, !alias.scope !530, !noalias !531, !noundef !43
  %_0.i21.i.1 = icmp slt i32 %_3.i.i.i.i19.i.1, %_4.i.i.i.i20.i.1
  %is_l.i.i.1 = xor i1 %_0.i21.i.1, true
  %29 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19.i.1, i32 %_4.i.i.i.i20.i.1)
  store i32 %29, ptr %27, align 4, !noalias !490
  %count.neg.i.i.1 = sext i1 %is_l.i.i.1 to i64
  %30 = getelementptr i32, ptr %25, i64 %count.neg.i.i.1
  %count3.neg.i.i.1 = sext i1 %_0.i21.i.1 to i64
  %31 = getelementptr i32, ptr %26, i64 %count3.neg.i.i.1
  %32 = getelementptr inbounds nuw i8, ptr %dst, i64 20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !532)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !534)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !536), !noalias !442
  tail call void @llvm.experimental.noalias.scope.decl(metadata !538), !noalias !442
  tail call void @llvm.experimental.noalias.scope.decl(metadata !540), !noalias !442
  tail call void @llvm.experimental.noalias.scope.decl(metadata !542), !noalias !442
  tail call void @llvm.experimental.noalias.scope.decl(metadata !544), !noalias !442
  tail call void @llvm.experimental.noalias.scope.decl(metadata !546), !noalias !442
  %_3.i.i.i.i.i36.2 = load i32, ptr %_12.i.i.1, align 4, !alias.scope !548, !noalias !549, !noundef !43
  %_4.i.i.i.i.i37.2 = load i32, ptr %_14.i.i.1, align 4, !alias.scope !550, !noalias !551, !noundef !43
  %_0.i.i38.2 = icmp slt i32 %_3.i.i.i.i.i36.2, %_4.i.i.i.i.i37.2
  %is_l.i18.i.2 = xor i1 %_0.i.i38.2, true
  %33 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i36.2, i32 %_4.i.i.i.i.i37.2)
  store i32 %33, ptr %_16.i.i.1, align 4, !noalias !461
  %count.i.i.2 = zext i1 %_0.i.i38.2 to i64
  %_12.i.i.2 = getelementptr inbounds nuw i32, ptr %_12.i.i.1, i64 %count.i.i.2
  %count2.i.i.2 = zext i1 %is_l.i18.i.2 to i64
  %_14.i.i.2 = getelementptr inbounds nuw i32, ptr %_14.i.i.1, i64 %count2.i.i.2
  %_16.i.i.2 = getelementptr inbounds nuw i8, ptr %dst, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !552)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !554)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !556), !noalias !471
  tail call void @llvm.experimental.noalias.scope.decl(metadata !558), !noalias !471
  tail call void @llvm.experimental.noalias.scope.decl(metadata !560), !noalias !471
  tail call void @llvm.experimental.noalias.scope.decl(metadata !562), !noalias !471
  tail call void @llvm.experimental.noalias.scope.decl(metadata !564), !noalias !471
  tail call void @llvm.experimental.noalias.scope.decl(metadata !566), !noalias !471
  %_3.i.i.i.i19.i.2 = load i32, ptr %30, align 4, !alias.scope !568, !noalias !569, !noundef !43
  %_4.i.i.i.i20.i.2 = load i32, ptr %31, align 4, !alias.scope !570, !noalias !571, !noundef !43
  %_0.i21.i.2 = icmp slt i32 %_3.i.i.i.i19.i.2, %_4.i.i.i.i20.i.2
  %is_l.i.i.2 = xor i1 %_0.i21.i.2, true
  %34 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19.i.2, i32 %_4.i.i.i.i20.i.2)
  store i32 %34, ptr %32, align 4, !noalias !490
  %count.neg.i.i.2 = sext i1 %is_l.i.i.2 to i64
  %35 = getelementptr i32, ptr %30, i64 %count.neg.i.i.2
  %count3.neg.i.i.2 = sext i1 %_0.i21.i.2 to i64
  %36 = getelementptr i32, ptr %31, i64 %count3.neg.i.i.2
  %37 = getelementptr inbounds nuw i8, ptr %dst, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !572)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !574)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !576), !noalias !442
  tail call void @llvm.experimental.noalias.scope.decl(metadata !578), !noalias !442
  tail call void @llvm.experimental.noalias.scope.decl(metadata !580), !noalias !442
  tail call void @llvm.experimental.noalias.scope.decl(metadata !582), !noalias !442
  tail call void @llvm.experimental.noalias.scope.decl(metadata !584), !noalias !442
  tail call void @llvm.experimental.noalias.scope.decl(metadata !586), !noalias !442
  %_3.i.i.i.i.i36.3 = load i32, ptr %_12.i.i.2, align 4, !alias.scope !588, !noalias !589, !noundef !43
  %_4.i.i.i.i.i37.3 = load i32, ptr %_14.i.i.2, align 4, !alias.scope !590, !noalias !591, !noundef !43
  %_0.i.i38.3 = icmp slt i32 %_3.i.i.i.i.i36.3, %_4.i.i.i.i.i37.3
  %is_l.i18.i.3 = xor i1 %_0.i.i38.3, true
  %38 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i36.3, i32 %_4.i.i.i.i.i37.3)
  store i32 %38, ptr %_16.i.i.2, align 4, !noalias !461
  %count.i.i.3 = zext i1 %_0.i.i38.3 to i64
  %_12.i.i.3 = getelementptr inbounds nuw i32, ptr %_12.i.i.2, i64 %count.i.i.3
  %count2.i.i.3 = zext i1 %is_l.i18.i.3 to i64
  %_14.i.i.3 = getelementptr inbounds nuw i32, ptr %_14.i.i.2, i64 %count2.i.i.3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !592)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !594)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !596), !noalias !471
  tail call void @llvm.experimental.noalias.scope.decl(metadata !598), !noalias !471
  tail call void @llvm.experimental.noalias.scope.decl(metadata !600), !noalias !471
  tail call void @llvm.experimental.noalias.scope.decl(metadata !602), !noalias !471
  tail call void @llvm.experimental.noalias.scope.decl(metadata !604), !noalias !471
  tail call void @llvm.experimental.noalias.scope.decl(metadata !606), !noalias !471
  %_3.i.i.i.i19.i.3 = load i32, ptr %35, align 4, !alias.scope !608, !noalias !609, !noundef !43
  %_4.i.i.i.i20.i.3 = load i32, ptr %36, align 4, !alias.scope !610, !noalias !611, !noundef !43
  %_0.i21.i.3 = icmp slt i32 %_3.i.i.i.i19.i.3, %_4.i.i.i.i20.i.3
  %is_l.i.i.3 = xor i1 %_0.i21.i.3, true
  %39 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19.i.3, i32 %_4.i.i.i.i20.i.3)
  store i32 %39, ptr %37, align 4, !noalias !490
  %count.neg.i.i.3 = sext i1 %is_l.i.i.3 to i64
  %40 = getelementptr i32, ptr %35, i64 %count.neg.i.i.3
  %count3.neg.i.i.3 = sext i1 %_0.i21.i.3 to i64
  %41 = getelementptr i32, ptr %36, i64 %count3.neg.i.i.3
  %42 = getelementptr i8, ptr %41, i64 4
  %43 = getelementptr i8, ptr %40, i64 4
  %_31.i = icmp ne ptr %_14.i.i.3, %42
  %_32.i = icmp ne ptr %_12.i.i.3, %43
  %or.cond.i = select i1 %_31.i, i1 true, i1 %_32.i
  br i1 %or.cond.i, label %bb13.i, label %_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h2eab821d233d23dcE.exit, !prof !612

bb13.i:                                           ; preds = %start
; call core::slice::sort::shared::smallsort::panic_on_ord_violation
  tail call void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #25, !noalias !431
  unreachable

_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h2eab821d233d23dcE.exit: ; preds = %start
  ret void
}

; core::slice::sort::shared::smallsort::bidirectional_merge
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h2eab821d233d23dcE(ptr noalias noundef nonnull readonly align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noundef writeonly captures(none) %0, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #1 {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !613)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !616)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !618), !noalias !621
  tail call void @llvm.experimental.noalias.scope.decl(metadata !624), !noalias !621
  tail call void @llvm.experimental.noalias.scope.decl(metadata !626), !noalias !621
  tail call void @llvm.experimental.noalias.scope.decl(metadata !629), !noalias !621
  tail call void @llvm.experimental.noalias.scope.decl(metadata !631), !noalias !621
  tail call void @llvm.experimental.noalias.scope.decl(metadata !634), !noalias !621
  %_3.i.i.i.i = load i32, ptr %right.sroa.0.026, align 4, !alias.scope !636, !noalias !637, !noundef !43
  %_4.i.i.i.i = load i32, ptr %left.sroa.0.027, align 4, !alias.scope !638, !noalias !639, !noundef !43
  %_0.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %is_l.i18 = xor i1 %_0.i, true
  %7 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i, i32 %_4.i.i.i.i)
  store i32 %7, ptr %dst.sroa.0.029, align 4, !noalias !640
  %count.i = zext i1 %_0.i to i64
  %_12.i = getelementptr inbounds nuw i32, ptr %right.sroa.0.026, i64 %count.i
  %count2.i = zext i1 %is_l.i18 to i64
  %_14.i = getelementptr inbounds nuw i32, ptr %left.sroa.0.027, i64 %count2.i
  %_16.i = getelementptr inbounds nuw i8, ptr %dst.sroa.0.029, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !642)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !645)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !647), !noalias !650
  tail call void @llvm.experimental.noalias.scope.decl(metadata !653), !noalias !650
  tail call void @llvm.experimental.noalias.scope.decl(metadata !655), !noalias !650
  tail call void @llvm.experimental.noalias.scope.decl(metadata !658), !noalias !650
  tail call void @llvm.experimental.noalias.scope.decl(metadata !660), !noalias !650
  tail call void @llvm.experimental.noalias.scope.decl(metadata !663), !noalias !650
  %_3.i.i.i.i19 = load i32, ptr %right_rev.sroa.0.024, align 4, !alias.scope !665, !noalias !666, !noundef !43
  %_4.i.i.i.i20 = load i32, ptr %left_rev.sroa.0.025, align 4, !alias.scope !667, !noalias !668, !noundef !43
  %_0.i21 = icmp slt i32 %_3.i.i.i.i19, %_4.i.i.i.i20
  %is_l.i = xor i1 %_0.i21, true
  %8 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19, i32 %_4.i.i.i.i20)
  store i32 %8, ptr %dst_rev.sroa.0.023, align 4, !noalias !669
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
  br i1 %or.cond, label %bb13, label %bb14, !prof !612

bb14:                                             ; preds = %bb9
  ret void

bb13:                                             ; preds = %bb9
; call core::slice::sort::shared::smallsort::panic_on_ord_violation
  tail call void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #25
  unreachable
}

; core::slice::sort::shared::smallsort::insertion_sort_shift_left
; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17hf5fc6491bfbf0716E(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, i64 noundef %offset, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #4 personality ptr @rust_eh_personality {
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

bb7:                                              ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17hf58a87192878323bE.exit, %bb3
  ret void

bb5:                                              ; preds = %bb5.preheader, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hf58a87192878323bE.exit
  %tail.sroa.0.02 = phi ptr [ %_15, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hf58a87192878323bE.exit ], [ %1, %bb5.preheader ]
  %2 = getelementptr inbounds i8, ptr %tail.sroa.0.02, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !671)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !674)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !676)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !679)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !681)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !684)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !686)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !689)
  %_3.i.i.i.i.i = load i32, ptr %tail.sroa.0.02, align 4, !alias.scope !691, !noalias !692, !noundef !43
  %_4.i.i.i.i.i = load i32, ptr %2, align 4, !alias.scope !692, !noalias !691, !noundef !43
  %_0.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  br i1 %_0.i.i, label %bb4.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hf58a87192878323bE.exit

bb4.i:                                            ; preds = %bb5, %bb6.i
  %gap_guard.sroa.5.0.i = phi ptr [ %sift.sroa.0.0.i, %bb6.i ], [ %tail.sroa.0.02, %bb5 ]
  %sift.sroa.0.0.i = phi ptr [ %4, %bb6.i ], [ %2, %bb5 ]
  %3 = load i32, ptr %sift.sroa.0.0.i, align 4
  store i32 %3, ptr %gap_guard.sroa.5.0.i, align 4
  %_18.i = icmp eq ptr %sift.sroa.0.0.i, %v.0
  br i1 %_18.i, label %bb10.i, label %bb6.i

bb6.i:                                            ; preds = %bb4.i
  %4 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i, i64 -4
  %_4.i.i.i.i2.i = load i32, ptr %4, align 4, !alias.scope !693, !noalias !702, !noundef !43
  %_0.i3.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i2.i
  br i1 %_0.i3.i, label %bb4.i, label %bb10.i

bb10.i:                                           ; preds = %bb6.i, %bb4.i
  store i32 %_3.i.i.i.i.i, ptr %sift.sroa.0.0.i, align 4, !noalias !707
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hf58a87192878323bE.exit

_ZN4core5slice4sort6shared9smallsort11insert_tail17hf58a87192878323bE.exit: ; preds = %bb5, %bb10.i
  %_15 = getelementptr inbounds nuw i8, ptr %tail.sroa.0.02, i64 4
  %_11.not = icmp eq ptr %_15, %v_end
  br i1 %_11.not, label %bb7, label %bb5
}

; core::slice::sort::shared::smallsort::small_sort_general_with_scratch
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17hb5e958cd5826678fE(ptr noalias noundef nonnull align 4 captures(none) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 captures(address) %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #1 personality ptr @rust_eh_personality {
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
  tail call void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17hf261dc0e08b244e0E(ptr noundef nonnull %v.0, ptr noundef nonnull %scratch.0, ptr noundef nonnull %_16, ptr noalias align 8 poison)
  %_18 = getelementptr inbounds nuw i32, ptr %v.0, i64 %len_div_211
  %_19 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211
  %_20 = getelementptr inbounds nuw i8, ptr %_16, i64 32
; call core::slice::sort::shared::smallsort::sort8_stable
  tail call void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17hf261dc0e08b244e0E(ptr noundef nonnull %_18, ptr noundef nonnull %_19, ptr noundef nonnull %_20, ptr noalias align 8 poison)
  br label %bb15

bb10:                                             ; preds = %bb9
  %_7.i = getelementptr inbounds nuw i8, ptr %v.0, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !712)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !715)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !717)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !720)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !722)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !725)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !727)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !730)
  %_3.i.i.i.i.i = load i32, ptr %_7.i, align 4, !alias.scope !732, !noalias !733, !noundef !43
  %_4.i.i.i.i.i = load i32, ptr %v.0, align 4, !alias.scope !733, !noalias !732, !noundef !43
  %_0.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %_12.i = getelementptr inbounds nuw i8, ptr %v.0, i64 12
  %_14.i = getelementptr inbounds nuw i8, ptr %v.0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !734)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !737)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !739)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !742)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !744)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !747)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !749)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !752)
  %_3.i.i.i.i7.i = load i32, ptr %_12.i, align 4, !alias.scope !754, !noalias !755, !noundef !43
  %_4.i.i.i.i8.i = load i32, ptr %_14.i, align 4, !alias.scope !755, !noalias !754, !noundef !43
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !756)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !759)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !761)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !764)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !766)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !769)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !771)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !774)
  %_3.i.i.i.i10.i = load i32, ptr %c.i, align 4, !alias.scope !776, !noalias !777, !noundef !43
  %_4.i.i.i.i11.i = load i32, ptr %a.i, align 4, !alias.scope !777, !noalias !776, !noundef !43
  %_0.i12.i = icmp slt i32 %_3.i.i.i.i10.i, %_4.i.i.i.i11.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !778)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !781)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !783)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !786)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !788)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !791)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !793)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !796)
  %_3.i.i.i.i13.i = load i32, ptr %d.i, align 4, !alias.scope !798, !noalias !799, !noundef !43
  %_4.i.i.i.i14.i = load i32, ptr %b.i, align 4, !alias.scope !799, !noalias !798, !noundef !43
  %_0.i15.i = icmp slt i32 %_3.i.i.i.i13.i, %_4.i.i.i.i14.i
  %0 = select i1 %_0.i12.i, ptr %c.i, ptr %a.i, !unpredictable !43
  %1 = select i1 %_0.i15.i, ptr %c.i, ptr %b.i, !unpredictable !43
  %2 = select i1 %_0.i12.i, ptr %a.i, ptr %1, !unpredictable !43
  %3 = select i1 %_0.i12.i, ptr %b.i, ptr %c.i, !unpredictable !43
  %4 = select i1 %_0.i15.i, ptr %d.i, ptr %3, !unpredictable !43
  tail call void @llvm.experimental.noalias.scope.decl(metadata !800)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !803)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !805)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !808)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !810)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !813)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !815)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !818)
  %_3.i.i.i.i16.i = load i32, ptr %4, align 4, !alias.scope !820, !noalias !821, !noundef !43
  %_4.i.i.i.i17.i = load i32, ptr %2, align 4, !alias.scope !821, !noalias !820, !noundef !43
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !822)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !825)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !827)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !830)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !832)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !835)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !837)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !840)
  %_3.i.i.i.i.i14 = load i32, ptr %_7.i13, align 4, !alias.scope !842, !noalias !843, !noundef !43
  %_4.i.i.i.i.i15 = load i32, ptr %_27, align 4, !alias.scope !843, !noalias !842, !noundef !43
  %_0.i.i16 = icmp slt i32 %_3.i.i.i.i.i14, %_4.i.i.i.i.i15
  %_12.i17 = getelementptr inbounds nuw i8, ptr %_27, i64 12
  %_14.i18 = getelementptr inbounds nuw i8, ptr %_27, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !844)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !847)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !849)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !852)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !854)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !857)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !859)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !862)
  %_3.i.i.i.i7.i19 = load i32, ptr %_12.i17, align 4, !alias.scope !864, !noalias !865, !noundef !43
  %_4.i.i.i.i8.i20 = load i32, ptr %_14.i18, align 4, !alias.scope !865, !noalias !864, !noundef !43
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !866)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !869)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !871)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !874)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !876)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !879)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !881)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !884)
  %_3.i.i.i.i10.i31 = load i32, ptr %c.i28, align 4, !alias.scope !886, !noalias !887, !noundef !43
  %_4.i.i.i.i11.i32 = load i32, ptr %a.i23, align 4, !alias.scope !887, !noalias !886, !noundef !43
  %_0.i12.i33 = icmp slt i32 %_3.i.i.i.i10.i31, %_4.i.i.i.i11.i32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !888)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !891)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !893)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !896)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !898)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !901)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !903)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !906)
  %_3.i.i.i.i13.i34 = load i32, ptr %d.i30, align 4, !alias.scope !908, !noalias !909, !noundef !43
  %_4.i.i.i.i14.i35 = load i32, ptr %b.i26, align 4, !alias.scope !909, !noalias !908, !noundef !43
  %_0.i15.i36 = icmp slt i32 %_3.i.i.i.i13.i34, %_4.i.i.i.i14.i35
  %10 = select i1 %_0.i12.i33, ptr %c.i28, ptr %a.i23, !unpredictable !43
  %11 = select i1 %_0.i15.i36, ptr %c.i28, ptr %b.i26, !unpredictable !43
  %12 = select i1 %_0.i12.i33, ptr %a.i23, ptr %11, !unpredictable !43
  %13 = select i1 %_0.i12.i33, ptr %b.i26, ptr %c.i28, !unpredictable !43
  %14 = select i1 %_0.i15.i36, ptr %d.i30, ptr %13, !unpredictable !43
  tail call void @llvm.experimental.noalias.scope.decl(metadata !910)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !913)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !915)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !918)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !920)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !923)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !925)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !928)
  %_3.i.i.i.i16.i37 = load i32, ptr %14, align 4, !alias.scope !930, !noalias !931, !noundef !43
  %_4.i.i.i.i17.i38 = load i32, ptr %12, align 4, !alias.scope !931, !noalias !930, !noundef !43
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
  br i1 %_5.not.i.not, label %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17hcdd491a175230b91E.exit", label %bb1.i

bb1.i:                                            ; preds = %bb16
  %_11.i = add nuw nsw i64 %24, 1
  store i64 %_11.i, ptr %iter, align 8, !alias.scope !932
  %_20.i = icmp ult i64 %24, 2
  tail call void @llvm.assume(i1 %_20.i)
  %self3.i = getelementptr inbounds nuw i64, ptr %_37.sroa.5.0.iter.sroa_idx, i64 %24
  %_15.i = load i64, ptr %self3.i, align 8, !alias.scope !932, !noundef !43
  br label %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17hcdd491a175230b91E.exit"

"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17hcdd491a175230b91E.exit": ; preds = %bb16, %bb1.i
  %25 = phi i64 [ %_11.i, %bb1.i ], [ %24, %bb16 ]
  %_0.sroa.3.0.i = phi i64 [ %_15.i, %bb1.i ], [ undef, %bb16 ]
  br i1 %_5.not.i.not, label %bb19, label %bb18

bb18:                                             ; preds = %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17hcdd491a175230b91E.exit"
  %src5 = getelementptr inbounds nuw i32, ptr %v.0, i64 %_0.sroa.3.0.i
  %dst6 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %_0.sroa.3.0.i
  %_47 = icmp eq i64 %_0.sroa.3.0.i, 0
  %desired_len.sroa.0.0 = select i1 %_47, i64 %len_div_211, i64 %23
  %_8059 = icmp ult i64 %presorted_len.sroa.0.0, %desired_len.sroa.0.0
  br i1 %_8059, label %bb24, label %bb16.backedge

bb16.backedge:                                    ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17hf58a87192878323bE.exit, %bb18
  br label %bb16

bb19:                                             ; preds = %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17hcdd491a175230b91E.exit"
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %iter)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !935)
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !938)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !941)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !943), !noalias !946
  tail call void @llvm.experimental.noalias.scope.decl(metadata !949), !noalias !946
  tail call void @llvm.experimental.noalias.scope.decl(metadata !951), !noalias !946
  tail call void @llvm.experimental.noalias.scope.decl(metadata !954), !noalias !946
  tail call void @llvm.experimental.noalias.scope.decl(metadata !956), !noalias !946
  tail call void @llvm.experimental.noalias.scope.decl(metadata !959), !noalias !946
  %_3.i.i.i.i.i49 = load i32, ptr %right.sroa.0.026.i, align 4, !alias.scope !961, !noalias !962, !noundef !43
  %_4.i.i.i.i.i50 = load i32, ptr %left.sroa.0.027.i, align 4, !alias.scope !963, !noalias !964, !noundef !43
  %_0.i.i51 = icmp slt i32 %_3.i.i.i.i.i49, %_4.i.i.i.i.i50
  %is_l.i18.i = xor i1 %_0.i.i51, true
  %32 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i49, i32 %_4.i.i.i.i.i50)
  store i32 %32, ptr %dst.sroa.0.029.i, align 4, !noalias !965
  %count.i.i = zext i1 %_0.i.i51 to i64
  %_12.i.i = getelementptr inbounds nuw i32, ptr %right.sroa.0.026.i, i64 %count.i.i
  %count2.i.i = zext i1 %is_l.i18.i to i64
  %_14.i.i = getelementptr inbounds nuw i32, ptr %left.sroa.0.027.i, i64 %count2.i.i
  %_16.i.i = getelementptr inbounds nuw i8, ptr %dst.sroa.0.029.i, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !967)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !970)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !972), !noalias !975
  tail call void @llvm.experimental.noalias.scope.decl(metadata !978), !noalias !975
  tail call void @llvm.experimental.noalias.scope.decl(metadata !980), !noalias !975
  tail call void @llvm.experimental.noalias.scope.decl(metadata !983), !noalias !975
  tail call void @llvm.experimental.noalias.scope.decl(metadata !985), !noalias !975
  tail call void @llvm.experimental.noalias.scope.decl(metadata !988), !noalias !975
  %_3.i.i.i.i19.i = load i32, ptr %right_rev.sroa.0.024.i, align 4, !alias.scope !990, !noalias !991, !noundef !43
  %_4.i.i.i.i20.i = load i32, ptr %left_rev.sroa.0.025.i, align 4, !alias.scope !992, !noalias !993, !noundef !43
  %_0.i21.i = icmp slt i32 %_3.i.i.i.i19.i, %_4.i.i.i.i20.i
  %is_l.i.i = xor i1 %_0.i21.i, true
  %33 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19.i, i32 %_4.i.i.i.i20.i)
  store i32 %33, ptr %dst_rev.sroa.0.023.i, align 4, !noalias !994
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
  %37 = load i32, ptr %left.sroa.0.0.right.sroa.0.0.i, align 4, !alias.scope !935
  store i32 %37, ptr %_16.i.i, align 4, !noalias !935
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
  br i1 %or.cond.i, label %bb13.i, label %bb29, !prof !612

bb13.i:                                           ; preds = %bb9.i
; invoke core::slice::sort::shared::smallsort::panic_on_ord_violation
  invoke void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #25
          to label %.noexc unwind label %cleanup2

.noexc:                                           ; preds = %bb13.i
  unreachable

cleanup2:                                         ; preds = %bb13.i
  %38 = landingpad { ptr, i32 }
          cleanup
  %39 = shl nuw nsw i64 %v.1, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.0, ptr nonnull align 4 %scratch.0, i64 %39, i1 false), !noalias !996
  resume { ptr, i32 } %38

bb29:                                             ; preds = %bb9.i, %start
  ret void

bb24:                                             ; preds = %bb18, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hf58a87192878323bE.exit
  %iter1.sroa.0.163 = phi i64 [ %iter1.sroa.0.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hf58a87192878323bE.exit ], [ %iter1.sroa.0.161, %bb18 ]
  %iter1.sroa.0.062 = phi i64 [ %iter1.sroa.0.163, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hf58a87192878323bE.exit ], [ %presorted_len.sroa.0.0, %bb18 ]
  %_55 = getelementptr inbounds nuw i32, ptr %src5, i64 %iter1.sroa.0.062
  %dst7 = getelementptr inbounds nuw i32, ptr %dst6, i64 %iter1.sroa.0.062
  %40 = load i32, ptr %_55, align 4
  store i32 %40, ptr %dst7, align 4
  %41 = getelementptr inbounds i8, ptr %dst7, i64 -4
  %_4.i.i.i.i.i56 = load i32, ptr %41, align 4, !alias.scope !1001, !noalias !1010, !noundef !43
  %_0.i.i57 = icmp slt i32 %40, %_4.i.i.i.i.i56
  br i1 %_0.i.i57, label %bb4.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hf58a87192878323bE.exit

bb4.i:                                            ; preds = %bb24, %bb6.i
  %gap_guard.sroa.5.0.i = phi ptr [ %sift.sroa.0.0.i, %bb6.i ], [ %dst7, %bb24 ]
  %sift.sroa.0.0.i = phi ptr [ %43, %bb6.i ], [ %41, %bb24 ]
  %42 = load i32, ptr %sift.sroa.0.0.i, align 4
  store i32 %42, ptr %gap_guard.sroa.5.0.i, align 4
  %_18.i = icmp eq ptr %sift.sroa.0.0.i, %dst6
  br i1 %_18.i, label %bb10.i, label %bb6.i

bb6.i:                                            ; preds = %bb4.i
  %43 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i, i64 -4
  %_4.i.i.i.i2.i = load i32, ptr %43, align 4, !alias.scope !1015, !noalias !1024, !noundef !43
  %_0.i3.i = icmp slt i32 %40, %_4.i.i.i.i2.i
  br i1 %_0.i3.i, label %bb4.i, label %bb10.i

bb10.i:                                           ; preds = %bb6.i, %bb4.i
  store i32 %40, ptr %sift.sroa.0.0.i, align 4, !noalias !1029
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hf58a87192878323bE.exit

_ZN4core5slice4sort6shared9smallsort11insert_tail17hf58a87192878323bE.exit: ; preds = %bb24, %bb10.i
  %_80 = icmp ult i64 %iter1.sroa.0.163, %desired_len.sroa.0.0
  %_84 = zext i1 %_80 to i64
  %iter1.sroa.0.1 = add nuw i64 %iter1.sroa.0.163, %_84
  br i1 %_80, label %bb24, label %bb16.backedge
}

; core::slice::sort::stable::driftsort_main
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable14driftsort_main17h5ad4fc2a99f18257E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #5 personality ptr @rust_eh_personality {
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
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4.i.i), !noalias !1034
; invoke alloc::raw_vec::RawVecInner<A>::try_allocate_in
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_4.i.i, i64 noundef %_0.sroa.0.0.i7, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %bb4
  %_5.i.i = load i64, ptr %_4.i.i, align 8, !range !1037, !noalias !1034, !noundef !43
  %0 = trunc nuw i64 %_5.i.i to i1
  %1 = getelementptr inbounds nuw i8, ptr %_4.i.i, i64 8
  %err.0.i.i = load i64, ptr %1, align 8, !range !1038, !noalias !1034, !noundef !43
  %2 = getelementptr inbounds nuw i8, ptr %_4.i.i, i64 16
  br i1 %0, label %bb3.i.i, label %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h896b9b83c9d4207fE.exit", !prof !1039

bb3.i.i:                                          ; preds = %.noexc
  %err.1.i.i = load i64, ptr %2, align 8, !noalias !1034
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #26
          to label %.noexc8 unwind label %cleanup

.noexc8:                                          ; preds = %bb3.i.i
  unreachable

"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h896b9b83c9d4207fE.exit": ; preds = %.noexc
  %this.1.i.i = load ptr, ptr %2, align 8, !noalias !1034, !nonnull !43, !noundef !43
  %_7.i.i = icmp ule i64 %_0.sroa.0.0.i7, %err.0.i.i
  tail call void @llvm.assume(i1 %_7.i.i)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4.i.i), !noalias !1034
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

bb8:                                              ; preds = %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h896b9b83c9d4207fE.exit", %start
  %_24.sroa.0.1 = phi i8 [ 0, %start ], [ 1, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h896b9b83c9d4207fE.exit" ]
  %stack_scratch.sroa.4.0 = phi i64 [ 1024, %start ], [ %err.0.i.i, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h896b9b83c9d4207fE.exit" ]
  %stack_buf.pn = phi ptr [ %stack_buf, %start ], [ %this.1.i.i, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h896b9b83c9d4207fE.exit" ]
  %eager_sort = icmp samesign ult i64 %v.1, 65
; invoke core::slice::sort::stable::drift::sort
  invoke void @_ZN4core5slice4sort6stable5drift4sort17h3eaec80a8a74e6beE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 4 %stack_buf.pn, i64 noundef %stack_scratch.sroa.4.0, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #24
  unreachable
}

; core::slice::sort::stable::AlignedStorage<T,_>::as_uninit_slice_mut
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, i64 } @"_ZN4core5slice4sort6stable27AlignedStorage$LT$T$C$_$GT$19as_uninit_slice_mut17h753a776278a4639cE"(ptr noalias noundef align 4 dereferenceable(4096) %self) unnamed_addr #6 {
start:
  %0 = insertvalue { ptr, i64 } poison, ptr %self, 0
  %1 = insertvalue { ptr, i64 } %0, i64 1024, 1
  ret { ptr, i64 } %1
}

; core::slice::sort::stable::drift::create_run
; Function Attrs: nonlazybind uwtable
define noundef range(i64 0, -1) i64 @_ZN4core5slice4sort6stable5drift10create_run17h0fa75fd19b513e71E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %min_good_run_len, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_7.not = icmp ult i64 %v.1, %min_good_run_len
  br i1 %_7.not, label %bb7, label %bb1

bb7:                                              ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h6e6fe3737f37adc0E.exit, %start
  br i1 %eager_sort, label %bb8, label %bb11

bb1:                                              ; preds = %start
  %_4.i = icmp samesign ult i64 %v.1, 2
  br i1 %_4.i, label %_ZN4core5slice4sort6shared17find_existing_run17h6e6fe3737f37adc0E.exit, label %bb2.i

bb2.i:                                            ; preds = %bb1
  %_28.i = getelementptr inbounds nuw i8, ptr %v.0, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1040)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1043)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1045)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1048)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1050)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1053)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1055)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1058)
  %_3.i.i.i.i = load i32, ptr %_28.i, align 4, !alias.scope !1060, !noalias !1061, !noundef !43
  %_4.i.i.i.i = load i32, ptr %v.0, align 4, !alias.scope !1061, !noalias !1060, !noundef !43
  %_0.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %_10.i13.not = icmp eq i64 %v.1, 2
  br i1 %_0.i, label %bb4.i.preheader, label %bb11.i.preheader

bb11.i.preheader:                                 ; preds = %bb2.i
  br i1 %_10.i13.not, label %_ZN4core5slice4sort6shared17find_existing_run17h6e6fe3737f37adc0E.exit, label %bb12.i.preheader

bb12.i.preheader:                                 ; preds = %bb11.i.preheader
  %invariant.gep = getelementptr i8, ptr %v.0, i64 -4
  br label %bb12.i

bb4.i.preheader:                                  ; preds = %bb2.i
  br i1 %_10.i13.not, label %_ZN4core5slice4sort6shared17find_existing_run17h6e6fe3737f37adc0E.exit, label %bb5.i.preheader

bb5.i.preheader:                                  ; preds = %bb4.i.preheader
  %invariant.gep24 = getelementptr i8, ptr %v.0, i64 -4
  br label %bb5.i

bb12.i:                                           ; preds = %bb12.i.preheader, %bb15.i
  %run_len.sroa.0.0.i11 = phi i64 [ %1, %bb15.i ], [ 2, %bb12.i.preheader ]
  %0 = getelementptr inbounds nuw i32, ptr %v.0, i64 %run_len.sroa.0.0.i11
  %gep = getelementptr i32, ptr %invariant.gep, i64 %run_len.sroa.0.0.i11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1062)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1065)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1067)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1070)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1072)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1075)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1077)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1080)
  %_3.i.i.i.i1 = load i32, ptr %0, align 4, !alias.scope !1082, !noalias !1083, !noundef !43
  %_4.i.i.i.i2 = load i32, ptr %gep, align 4, !alias.scope !1083, !noalias !1082, !noundef !43
  %_0.i3 = icmp slt i32 %_3.i.i.i.i1, %_4.i.i.i.i2
  br i1 %_0.i3, label %_ZN4core5slice4sort6shared17find_existing_run17h6e6fe3737f37adc0E.exit, label %bb15.i

bb15.i:                                           ; preds = %bb12.i
  %1 = add nuw nsw i64 %run_len.sroa.0.0.i11, 1
  %exitcond.not = icmp eq i64 %1, %v.1
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h6e6fe3737f37adc0E.exit, label %bb12.i

bb5.i:                                            ; preds = %bb5.i.preheader, %bb7.i
  %run_len.sroa.0.1.i14 = phi i64 [ %3, %bb7.i ], [ 2, %bb5.i.preheader ]
  %2 = getelementptr inbounds nuw i32, ptr %v.0, i64 %run_len.sroa.0.1.i14
  %gep25 = getelementptr i32, ptr %invariant.gep24, i64 %run_len.sroa.0.1.i14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1084)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1087)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1089)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1092)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1094)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1097)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1099)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1102)
  %_3.i.i.i.i4 = load i32, ptr %2, align 4, !alias.scope !1104, !noalias !1105, !noundef !43
  %_4.i.i.i.i5 = load i32, ptr %gep25, align 4, !alias.scope !1105, !noalias !1104, !noundef !43
  %_0.i6 = icmp slt i32 %_3.i.i.i.i4, %_4.i.i.i.i5
  br i1 %_0.i6, label %bb7.i, label %_ZN4core5slice4sort6shared17find_existing_run17h6e6fe3737f37adc0E.exit

bb7.i:                                            ; preds = %bb5.i
  %3 = add nuw nsw i64 %run_len.sroa.0.1.i14, 1
  %exitcond19.not = icmp eq i64 %3, %v.1
  br i1 %exitcond19.not, label %_ZN4core5slice4sort6shared17find_existing_run17h6e6fe3737f37adc0E.exit, label %bb5.i

_ZN4core5slice4sort6shared17find_existing_run17h6e6fe3737f37adc0E.exit: ; preds = %bb12.i, %bb15.i, %bb5.i, %bb7.i, %bb11.i.preheader, %bb4.i.preheader, %bb1
  %_0.sroa.3.0.i = phi i1 [ false, %bb1 ], [ true, %bb4.i.preheader ], [ false, %bb11.i.preheader ], [ true, %bb7.i ], [ true, %bb5.i ], [ false, %bb15.i ], [ false, %bb12.i ]
  %_0.sroa.0.0.i = phi i64 [ %v.1, %bb1 ], [ 2, %bb4.i.preheader ], [ 2, %bb11.i.preheader ], [ %run_len.sroa.0.1.i14, %bb5.i ], [ %v.1, %bb7.i ], [ %run_len.sroa.0.0.i11, %bb12.i ], [ %v.1, %bb15.i ]
  %_12 = icmp samesign ule i64 %_0.sroa.0.0.i, %v.1
  tail call void @llvm.assume(i1 %_12)
  %_13.not = icmp ult i64 %_0.sroa.0.0.i, %min_good_run_len
  br i1 %_13.not, label %bb7, label %bb3

bb3:                                              ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h6e6fe3737f37adc0E.exit
  br i1 %_0.sroa.3.0.i, label %bb14, label %bb5

bb11:                                             ; preds = %bb7
  %_0.sroa.0.0.i7 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 -2305843009213693950, 2305843009213693952) %v.1, i64 %min_good_run_len)
  %_36 = shl nuw nsw i64 %_0.sroa.0.0.i7, 1
  br label %bb12

bb8:                                              ; preds = %bb7
  %_0.sroa.0.0.i8 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 -2305843009213693950, 2305843009213693952) %v.1, i64 32)
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h6647a82a0a396831E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %_0.sroa.0.0.i8, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef 0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef align 8 dereferenceable(8) %is_less) #27
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
  %6 = load i32, ptr %x.i.i.epil, align 4, !alias.scope !1106, !noalias !1111, !noundef !43
  %7 = load i32, ptr %y.i.i.epil, align 4, !alias.scope !1113, !noalias !1114
  store i32 %7, ptr %x.i.i.epil, align 4, !alias.scope !1106, !noalias !1111
  store i32 %6, ptr %y.i.i.epil, align 4, !alias.scope !1113, !noalias !1114
  br label %bb5

bb5:                                              ; preds = %bb5.i.i.epil, %bb5.loopexit.unr-lcssa, %bb14, %bb3
  %_27 = shl nuw nsw i64 %_0.sroa.0.0.i, 1
  %_26 = or disjoint i64 %_27, 1
  br label %bb12

bb14:                                             ; preds = %bb3
  %half_len2.i = lshr i64 %_0.sroa.0.0.i, 1
  %end.i = getelementptr inbounds nuw i32, ptr %v.0, i64 %_0.sroa.0.0.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1114)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1111)
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
  %10 = load i32, ptr %x.i.i, align 4, !alias.scope !1106, !noalias !1111, !noundef !43
  %11 = load i32, ptr %y.i.i, align 4, !alias.scope !1113, !noalias !1114
  store i32 %11, ptr %x.i.i, align 4, !alias.scope !1106, !noalias !1111
  store i32 %10, ptr %y.i.i, align 4, !alias.scope !1113, !noalias !1114
  %12 = xor i64 %i.sroa.0.016.i.i, -2
  %gep27 = getelementptr inbounds i32, ptr %invariant.gep26, i64 %i.sroa.0.016.i.i
  %y.i.i.1 = getelementptr i32, ptr %end.i, i64 %12
  %13 = load i32, ptr %gep27, align 4, !alias.scope !1106, !noalias !1111, !noundef !43
  %14 = load i32, ptr %y.i.i.1, align 4, !alias.scope !1113, !noalias !1114
  store i32 %14, ptr %gep27, align 4, !alias.scope !1106, !noalias !1111
  store i32 %13, ptr %y.i.i.1, align 4, !alias.scope !1113, !noalias !1114
  %15 = add nuw nsw i64 %i.sroa.0.016.i.i, 2
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %bb5.loopexit.unr-lcssa, label %bb5.i.i
}

; core::slice::sort::stable::drift::stable_quicksort
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6stable5drift16stable_quicksort17h02478c81160cccbbE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #1 {
start:
  %self = or i64 %v.1, 1
  %0 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self, i1 true)
  %1 = trunc nuw nsw i64 %0 to i32
  %log = shl nuw nsw i32 %1, 1
  %limit = xor i32 %log, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h6647a82a0a396831E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef %limit, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef align 8 dereferenceable(8) %is_less) #27
  ret void
}

; core::slice::sort::stable::drift::sort
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6stable5drift4sort17h3eaec80a8a74e6beE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #1 personality ptr @rust_eh_personality {
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
  %2 = tail call noundef i64 @_ZN4core5slice4sort6stable5drift10create_run17h0fa75fd19b513e71E(ptr noalias noundef nonnull align 4 %_82, i64 noundef %new_len, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i64 noundef %min_good_run_len.sroa.0.0, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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

bb12:                                             ; preds = %bb12.lr.ph, %_ZN4core5slice4sort6stable5drift13logical_merge17hb4c6ed79eea7a13dE.exit
  %stack_len.sroa.0.150 = phi i64 [ %stack_len.sroa.0.0, %bb12.lr.ph ], [ %count, %_ZN4core5slice4sort6stable5drift13logical_merge17hb4c6ed79eea7a13dE.exit ]
  %prev_run.sroa.0.149 = phi i64 [ %prev_run.sroa.0.0, %bb12.lr.ph ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17hb4c6ed79eea7a13dE.exit ]
  %count = add i64 %stack_len.sroa.0.150, -1
  %_41 = getelementptr inbounds nuw i8, ptr %desired_depth_storage, i64 %count
  %_40 = load i8, ptr %_41, align 1, !noundef !43
  %_39.not = icmp ult i8 %_40, %desired_depth.sroa.0.0
  br i1 %_39.not, label %bb17, label %bb13

bb17:                                             ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17hb4c6ed79eea7a13dE.exit, %bb12, %bb10
  %prev_run.sroa.0.1.lcssa = phi i64 [ %prev_run.sroa.0.0, %bb10 ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17hb4c6ed79eea7a13dE.exit ], [ %prev_run.sroa.0.149, %bb12 ]
  %stack_len.sroa.0.1.lcssa = phi i64 [ %stack_len.sroa.0.0, %bb10 ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17hb4c6ed79eea7a13dE.exit ], [ %stack_len.sroa.0.150, %bb12 ]
  %_59 = getelementptr inbounds nuw i64, ptr %run_storage, i64 %stack_len.sroa.0.1.lcssa
  store i64 %prev_run.sroa.0.1.lcssa, ptr %_59, align 8
  %_61 = getelementptr inbounds nuw i8, ptr %desired_depth_storage, i64 %stack_len.sroa.0.1.lcssa
  store i8 %desired_depth.sroa.0.0, ptr %_61, align 1
  br i1 %_22, label %bb19, label %bb18

bb13:                                             ; preds = %bb12
  %_46 = getelementptr inbounds nuw i64, ptr %run_storage, i64 %count
  %left10 = load i64, ptr %_46, align 8, !noundef !43
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
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17hb4c6ed79eea7a13dE.exit

bb5.i:                                            ; preds = %bb11.i, %bb3.i
  br i1 %_10.not.i, label %bb16.i, label %bb7.i

bb11.i:                                           ; preds = %bb3.i
  %self.i = or i64 %_50, 1
  %8 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i, i1 true)
  %9 = trunc nuw nsw i64 %8 to i32
  %log.i = shl nuw nsw i32 %9, 1
  %limit.i = xor i32 %log.i, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h6647a82a0a396831E(ptr noalias noundef nonnull align 4 %_98, i64 noundef range(i64 0, 2305843009213693952) %_50, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #27
  br label %bb5.i

bb7.i:                                            ; preds = %bb16.i, %bb5.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1115)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1118)
  %_6.i = icmp ult i64 %left10, 2
  %_7.i = icmp ult i64 %prev_run.sroa.0.149, 2
  %or.cond.i = or i1 %_7.i, %_6.i
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17hbfe8b0a84467d755E.exit, label %bb2.i

bb2.i:                                            ; preds = %bb7.i
  %_0.sroa.0.0.i.i = tail call i64 @llvm.umin.i64(i64 %_51, i64 %_50)
  %_8.i = icmp samesign ult i64 %scratch.1, %_0.sroa.0.0.i.i
  br i1 %_8.i, label %_ZN4core5slice4sort6stable5merge5merge17hbfe8b0a84467d755E.exit, label %bb5.i37

bb5.i37:                                          ; preds = %bb2.i
  %v_mid.i = getelementptr inbounds nuw i32, ptr %_98, i64 %_50
  %left_is_shorter.not.i = icmp samesign ugt i64 %_50, %_51
  %spec.select.i = select i1 %left_is_shorter.not.i, ptr %v_mid.i, ptr %_98
  %10 = shl nuw nsw i64 %_0.sroa.0.0.i.i, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %scratch.0, ptr nonnull align 4 %spec.select.i, i64 %10, i1 false), !alias.scope !1120
  %_22.i38 = getelementptr inbounds nuw i8, ptr %scratch.0, i64 %10
  br i1 %left_is_shorter.not.i, label %bb1.i.i, label %bb3.i.i

bb1.i.i:                                          ; preds = %bb5.i37, %bb1.i.i
  %_2110.i.i = phi ptr [ %_21.i.i, %bb1.i.i ], [ %_22.i38, %bb5.i37 ]
  %_188.i.i = phi ptr [ %_18.i.i, %bb1.i.i ], [ %spec.select.i, %bb5.i37 ]
  %out.sroa.0.0.i.i = phi ptr [ %13, %bb1.i.i ], [ %v_end.i, %bb5.i37 ]
  %11 = getelementptr inbounds i8, ptr %_188.i.i, i64 -4
  %12 = getelementptr inbounds i8, ptr %_2110.i.i, i64 -4
  %13 = getelementptr inbounds i8, ptr %out.sroa.0.0.i.i, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1121)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1124)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1126)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1129)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1131)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1134)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1136)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1139)
  %_3.i.i.i.i.i.i = load i32, ptr %12, align 4, !alias.scope !1141, !noalias !1142, !noundef !43
  %_4.i.i.i.i.i.i = load i32, ptr %11, align 4, !alias.scope !1145, !noalias !1146, !noundef !43
  %_0.i.i.i = icmp slt i32 %_3.i.i.i.i.i.i, %_4.i.i.i.i.i.i
  %14 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i.i.i, i32 %_4.i.i.i.i.i.i)
  store i32 %14, ptr %13, align 4, !alias.scope !1115, !noalias !1147
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1148)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1151)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1153)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1156)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1158)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1161)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1163)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1166)
  %_3.i.i.i.i.i12.i = load i32, ptr %right.sroa.0.010.i.i, align 4, !alias.scope !1168, !noalias !1169, !noundef !43
  %_4.i.i.i.i.i13.i = load i32, ptr %_2059.i.i, align 4, !alias.scope !1172, !noalias !1173, !noundef !43
  %_0.i.i14.i = icmp slt i32 %_3.i.i.i.i.i12.i, %_4.i.i.i.i.i13.i
  %consume_left.i.i = xor i1 %_0.i.i14.i, true
  %15 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i12.i, i32 %_4.i.i.i.i.i13.i)
  store i32 %15, ptr %_2511.i.i, align 4, !alias.scope !1115, !noalias !1174
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %merge_state.sroa.13.0.i, ptr align 4 %merge_state.sroa.0.0.i, i64 %18, i1 false), !alias.scope !1120, !noalias !1175
  br label %_ZN4core5slice4sort6stable5merge5merge17hbfe8b0a84467d755E.exit

_ZN4core5slice4sort6stable5merge5merge17hbfe8b0a84467d755E.exit: ; preds = %bb7.i, %bb2.i, %bb16.i40
  %_39.i = shl nuw nsw i64 %merged_len, 1
  %_38.i = or disjoint i64 %_39.i, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17hb4c6ed79eea7a13dE.exit

bb16.i:                                           ; preds = %bb5.i
  %_37.i = getelementptr inbounds nuw i32, ptr %_98, i64 %_50
  %self.i41 = or i64 %_51, 1
  %19 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i41, i1 true)
  %20 = trunc nuw nsw i64 %19 to i32
  %log.i42 = shl nuw nsw i32 %20, 1
  %limit.i43 = xor i32 %log.i42, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h6647a82a0a396831E(ptr noalias noundef nonnull align 4 %_37.i, i64 noundef range(i64 0, 2305843009213693952) %_51, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i43, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #27
  br label %bb7.i

_ZN4core5slice4sort6stable5drift13logical_merge17hb4c6ed79eea7a13dE.exit: ; preds = %bb9.i, %_ZN4core5slice4sort6stable5merge5merge17hbfe8b0a84467d755E.exit
  %_0.sroa.0.0.i = phi i64 [ %_38.i, %_ZN4core5slice4sort6stable5merge5merge17hbfe8b0a84467d755E.exit ], [ %_40.i, %bb9.i ]
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
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h6647a82a0a396831E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i46, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef align 8 dereferenceable(8) %is_less) #27
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
define void @"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h9961e4dba1a0fcb7E"(ptr noalias noundef align 8 captures(none) dereferenceable(24) %self, ptr noundef readnone captures(address) %left_end, ptr noundef readnone captures(address) %right_end, ptr noundef writeonly captures(none) %0, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #7 {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1180)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1183)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1185)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1188)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1190)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1193)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1195)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1198)
  %_3.i.i.i.i = load i32, ptr %4, align 4, !alias.scope !1200, !noalias !1201, !noundef !43
  %_4.i.i.i.i = load i32, ptr %3, align 4, !alias.scope !1201, !noalias !1200, !noundef !43
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
define void @"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h7df0f27fc86e26baE"(ptr noalias noundef align 8 captures(none) dereferenceable(24) %self, ptr noundef readonly captures(address) %0, ptr noundef readnone captures(address) %right_end, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #8 {
start:
  %1 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %_9 = load ptr, ptr %1, align 8, !noundef !43
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1202)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1205)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1207)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1210)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1212)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1215)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1217)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1220)
  %_3.i.i.i.i = load i32, ptr %right.sroa.0.010, align 4, !alias.scope !1222, !noalias !1223, !noundef !43
  %_4.i.i.i.i = load i32, ptr %_2059, align 4, !alias.scope !1223, !noalias !1222, !noundef !43
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
define void @_ZN4core5slice4sort6stable5merge5merge17hbfe8b0a84467d755E(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %0, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1224)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1227)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1229)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1232)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1234)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1237)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1239)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1242)
  %_3.i.i.i.i.i = load i32, ptr %3, align 4, !alias.scope !1244, !noalias !1245, !noundef !43
  %_4.i.i.i.i.i = load i32, ptr %2, align 4, !alias.scope !1248, !noalias !1249, !noundef !43
  %_0.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %5 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i.i, i32 %_4.i.i.i.i.i)
  store i32 %5, ptr %4, align 4, !noalias !1250
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1251)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1254)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1256)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1259)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1261)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1264)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1266)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1269)
  %_3.i.i.i.i.i12 = load i32, ptr %right.sroa.0.010.i, align 4, !alias.scope !1271, !noalias !1272, !noundef !43
  %_4.i.i.i.i.i13 = load i32, ptr %_2059.i, align 4, !alias.scope !1275, !noalias !1276, !noundef !43
  %_0.i.i14 = icmp slt i32 %_3.i.i.i.i.i12, %_4.i.i.i.i.i13
  %consume_left.i = xor i1 %_0.i.i14, true
  %6 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i12, i32 %_4.i.i.i.i.i13)
  store i32 %6, ptr %_2511.i, align 4, !noalias !1277
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %merge_state.sroa.13.0, ptr align 4 %merge_state.sroa.0.0, i64 %9, i1 false), !noalias !1278
  br label %bb18

bb18:                                             ; preds = %bb2, %start, %bb16
  ret void
}

; core::slice::sort::stable::quicksort::stable_partition
; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17h2161dd4c5634a5d2E(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 captures(none) %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %0, i1 noundef zeroext %pivot_goes_left, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #4 {
start:
  %_8 = icmp samesign uge i64 %scratch.1, %v.1
  %.not = icmp ult i64 %0, %v.1
  %or.cond = and i1 %_8, %.not
  br i1 %or.cond, label %bb33, label %bb31, !prof !1283

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1284)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1287)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1289)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1292)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1294)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1297)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1299)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1302)
  %_3.i.i.i.i = load i32, ptr %state.sroa.9.187, align 4, !alias.scope !1304, !noalias !1305, !noundef !43
  %_4.i.i.i.i = load i32, ptr %pivot, align 4, !alias.scope !1305, !noalias !1304, !noundef !43
  %_0.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %2 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -4
  %dst_base.sroa.0.0.i = select i1 %_0.i, ptr %scratch.0, ptr %2
  %dst.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i, i64 %state.sroa.27.186
  store i32 %_3.i.i.i.i, ptr %dst.i, align 4, !noalias !1306
  %_8.i = zext i1 %_0.i to i64
  %3 = add i64 %state.sroa.27.186, %_8.i
  %_9.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1309)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1312)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1314)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1317)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1319)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1322)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1324)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1327)
  %_3.i.i.i.i25 = load i32, ptr %_9.i, align 4, !alias.scope !1329, !noalias !1330, !noundef !43
  %_4.i.i.i.i26 = load i32, ptr %pivot, align 4, !alias.scope !1330, !noalias !1329, !noundef !43
  %_0.i27 = icmp slt i32 %_3.i.i.i.i25, %_4.i.i.i.i26
  %4 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -8
  %dst_base.sroa.0.0.i29 = select i1 %_0.i27, ptr %scratch.0, ptr %4
  %dst.i31 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29, i64 %3
  store i32 %_3.i.i.i.i25, ptr %dst.i31, align 4, !noalias !1331
  %_8.i33 = zext i1 %_0.i27 to i64
  %5 = add i64 %3, %_8.i33
  %_9.i34 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1334)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1337)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1339)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1342)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1344)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1347)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1349)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1352)
  %_3.i.i.i.i35 = load i32, ptr %_9.i34, align 4, !alias.scope !1354, !noalias !1355, !noundef !43
  %_4.i.i.i.i36 = load i32, ptr %pivot, align 4, !alias.scope !1355, !noalias !1354, !noundef !43
  %_0.i37 = icmp slt i32 %_3.i.i.i.i35, %_4.i.i.i.i36
  %6 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -12
  %dst_base.sroa.0.0.i39 = select i1 %_0.i37, ptr %scratch.0, ptr %6
  %dst.i41 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39, i64 %5
  store i32 %_3.i.i.i.i35, ptr %dst.i41, align 4, !noalias !1356
  %_8.i43 = zext i1 %_0.i37 to i64
  %7 = add i64 %5, %_8.i43
  %_9.i44 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1359)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1362)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1364)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1367)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1369)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1372)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1374)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1377)
  %_3.i.i.i.i45 = load i32, ptr %_9.i44, align 4, !alias.scope !1379, !noalias !1380, !noundef !43
  %_4.i.i.i.i46 = load i32, ptr %pivot, align 4, !alias.scope !1380, !noalias !1379, !noundef !43
  %_0.i47 = icmp slt i32 %_3.i.i.i.i45, %_4.i.i.i.i46
  %8 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -16
  %dst_base.sroa.0.0.i49 = select i1 %_0.i47, ptr %scratch.0, ptr %8
  %dst.i51 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49, i64 %7
  store i32 %_3.i.i.i.i45, ptr %dst.i51, align 4, !noalias !1381
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1384)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1387)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1389)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1392)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1394)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1397)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1399)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1402)
  %_3.i.i.i.i55 = load i32, ptr %state.sroa.9.293, align 4, !alias.scope !1404, !noalias !1405, !noundef !43
  %_4.i.i.i.i56 = load i32, ptr %pivot, align 4, !alias.scope !1405, !noalias !1404, !noundef !43
  %_0.i57 = icmp slt i32 %_3.i.i.i.i55, %_4.i.i.i.i56
  %10 = getelementptr inbounds i8, ptr %state.sroa.43.294, i64 -4
  %dst_base.sroa.0.0.i59 = select i1 %_0.i57, ptr %scratch.0, ptr %10
  %dst.i61 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59, i64 %state.sroa.27.292
  store i32 %_3.i.i.i.i55, ptr %dst.i61, align 4, !noalias !1406
  %_8.i63 = zext i1 %_0.i57 to i64
  %11 = add i64 %state.sroa.27.292, %_8.i63
  %_9.i64 = getelementptr inbounds nuw i8, ptr %state.sroa.9.293, i64 4
  %_47 = icmp ult ptr %_9.i64, %loop_end
  br i1 %_47, label %bb18, label %bb21

bb23:                                             ; preds = %bb21
  %12 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa, i64 -4
  %dst_base.sroa.0.0.i66 = select i1 %pivot_goes_left, ptr %scratch.0, ptr %12
  %dst.i68 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i66, i64 %state.sroa.27.2.lcssa
  %13 = load i32, ptr %state.sroa.9.2.lcssa, align 4, !noalias !1409
  store i32 %13, ptr %dst.i68, align 4, !noalias !1409
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
  br i1 %epil.iter.cmp.not, label %bb30, label %bb42.epil, !llvm.loop !1412

bb30:                                             ; preds = %bb30.loopexit.unr-lcssa, %bb42.epil, %bb22
  ret i64 %state.sroa.27.2.lcssa
}

; core::slice::sort::stable::quicksort::stable_partition
; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17h881a56e65daf8d03E(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 captures(none) %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %0, i1 noundef zeroext %pivot_goes_left, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #4 {
start:
  %_8 = icmp samesign uge i64 %scratch.1, %v.1
  %.not = icmp ult i64 %0, %v.1
  %or.cond = and i1 %_8, %.not
  br i1 %or.cond, label %bb33, label %bb31, !prof !1283

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1414)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1417)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1419)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1422)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1424)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1427)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1429)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1432)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1434)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1437)
  %_3.i.i.i.i.i = load i32, ptr %pivot, align 4, !alias.scope !1439, !noalias !1440, !noundef !43
  %_4.i.i.i.i.i = load i32, ptr %state.sroa.9.187, align 4, !alias.scope !1440, !noalias !1439, !noundef !43
  %_0.i.i = icmp sge i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %2 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -4
  %dst_base.sroa.0.0.i = select i1 %_0.i.i, ptr %scratch.0, ptr %2
  %dst.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i, i64 %state.sroa.27.186
  store i32 %_4.i.i.i.i.i, ptr %dst.i, align 4, !noalias !1441
  %_8.i = zext i1 %_0.i.i to i64
  %3 = add i64 %state.sroa.27.186, %_8.i
  %_9.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1444)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1447)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1449)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1452)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1454)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1457)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1459)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1462)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1464)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1467)
  %_3.i.i.i.i.i25 = load i32, ptr %pivot, align 4, !alias.scope !1469, !noalias !1470, !noundef !43
  %_4.i.i.i.i.i26 = load i32, ptr %_9.i, align 4, !alias.scope !1470, !noalias !1469, !noundef !43
  %_0.i.i27 = icmp sge i32 %_3.i.i.i.i.i25, %_4.i.i.i.i.i26
  %4 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -8
  %dst_base.sroa.0.0.i29 = select i1 %_0.i.i27, ptr %scratch.0, ptr %4
  %dst.i31 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29, i64 %3
  store i32 %_4.i.i.i.i.i26, ptr %dst.i31, align 4, !noalias !1471
  %_8.i33 = zext i1 %_0.i.i27 to i64
  %5 = add i64 %3, %_8.i33
  %_9.i34 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1474)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1477)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1479)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1482)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1484)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1487)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1489)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1492)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1494)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1497)
  %_3.i.i.i.i.i35 = load i32, ptr %pivot, align 4, !alias.scope !1499, !noalias !1500, !noundef !43
  %_4.i.i.i.i.i36 = load i32, ptr %_9.i34, align 4, !alias.scope !1500, !noalias !1499, !noundef !43
  %_0.i.i37 = icmp sge i32 %_3.i.i.i.i.i35, %_4.i.i.i.i.i36
  %6 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -12
  %dst_base.sroa.0.0.i39 = select i1 %_0.i.i37, ptr %scratch.0, ptr %6
  %dst.i41 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39, i64 %5
  store i32 %_4.i.i.i.i.i36, ptr %dst.i41, align 4, !noalias !1501
  %_8.i43 = zext i1 %_0.i.i37 to i64
  %7 = add i64 %5, %_8.i43
  %_9.i44 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1504)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1507)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1509)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1512)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1514)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1517)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1519)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1522)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1524)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1527)
  %_3.i.i.i.i.i45 = load i32, ptr %pivot, align 4, !alias.scope !1529, !noalias !1530, !noundef !43
  %_4.i.i.i.i.i46 = load i32, ptr %_9.i44, align 4, !alias.scope !1530, !noalias !1529, !noundef !43
  %_0.i.i47 = icmp sge i32 %_3.i.i.i.i.i45, %_4.i.i.i.i.i46
  %8 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -16
  %dst_base.sroa.0.0.i49 = select i1 %_0.i.i47, ptr %scratch.0, ptr %8
  %dst.i51 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49, i64 %7
  store i32 %_4.i.i.i.i.i46, ptr %dst.i51, align 4, !noalias !1531
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1534)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1537)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1539)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1542)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1544)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1547)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1549)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1552)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1554)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1557)
  %_3.i.i.i.i.i55 = load i32, ptr %pivot, align 4, !alias.scope !1559, !noalias !1560, !noundef !43
  %_4.i.i.i.i.i56 = load i32, ptr %state.sroa.9.293, align 4, !alias.scope !1560, !noalias !1559, !noundef !43
  %_0.i.i57 = icmp sge i32 %_3.i.i.i.i.i55, %_4.i.i.i.i.i56
  %10 = getelementptr inbounds i8, ptr %state.sroa.43.294, i64 -4
  %dst_base.sroa.0.0.i59 = select i1 %_0.i.i57, ptr %scratch.0, ptr %10
  %dst.i61 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59, i64 %state.sroa.27.292
  store i32 %_4.i.i.i.i.i56, ptr %dst.i61, align 4, !noalias !1561
  %_8.i63 = zext i1 %_0.i.i57 to i64
  %11 = add i64 %state.sroa.27.292, %_8.i63
  %_9.i64 = getelementptr inbounds nuw i8, ptr %state.sroa.9.293, i64 4
  %_47 = icmp ult ptr %_9.i64, %loop_end
  br i1 %_47, label %bb18, label %bb21

bb23:                                             ; preds = %bb21
  %12 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa, i64 -4
  %dst_base.sroa.0.0.i66 = select i1 %pivot_goes_left, ptr %scratch.0, ptr %12
  %dst.i68 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i66, i64 %state.sroa.27.2.lcssa
  %13 = load i32, ptr %state.sroa.9.2.lcssa, align 4, !noalias !1564
  store i32 %13, ptr %dst.i68, align 4, !noalias !1564
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
  br i1 %epil.iter.cmp.not, label %bb30, label %bb42.epil, !llvm.loop !1567

bb30:                                             ; preds = %bb30.loopexit.unr-lcssa, %bb42.epil, %bb22
  ret i64 %state.sroa.27.2.lcssa
}

; core::slice::sort::stable::quicksort::PartitionState<T>::partition_one
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define noundef ptr @"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he7d3f9b93507f124E"(ptr noalias noundef align 8 captures(none) dereferenceable(32) %self, i1 noundef zeroext %towards_left) unnamed_addr #9 {
start:
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 24
  %self1 = load ptr, ptr %0, align 8, !noundef !43
  %1 = getelementptr inbounds i8, ptr %self1, i64 -4
  store ptr %1, ptr %0, align 8
  %2 = load ptr, ptr %self, align 8
  %dst_base.sroa.0.0 = select i1 %towards_left, ptr %2, ptr %1
  %3 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %count = load i64, ptr %3, align 8, !noundef !43
  %dst = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0, i64 %count
  %4 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %src = load ptr, ptr %4, align 8, !noundef !43
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
define void @_ZN4core5slice4sort6stable9quicksort9quicksort17h6647a82a0a396831E(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %2, ptr noalias noundef readonly align 4 captures(address) dereferenceable_or_null(4) %3, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #5 {
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

bb5:                                              ; preds = %bb5.lr.ph, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h643fc4f64ac43e04E.exit"
  %v.sroa.16.034 = phi i64 [ %v.sroa.16.0.ph41, %bb5.lr.ph ], [ %left_partition_len.sroa.0.0, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h643fc4f64ac43e04E.exit" ]
  %limit.sroa.0.033 = phi i32 [ %limit.sroa.0.0.ph40, %bb5.lr.ph ], [ %4, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h643fc4f64ac43e04E.exit" ]
  %_11 = icmp eq i32 %limit.sroa.0.033, 0
  br i1 %_11, label %bb6, label %bb7

bb3:                                              ; preds = %bb28, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h643fc4f64ac43e04E.exit", %start
  %v.sroa.0.0.ph.lcssa31 = phi ptr [ %0, %start ], [ %v.sroa.0.0.ph42, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h643fc4f64ac43e04E.exit" ], [ %_54, %bb28 ]
  %v.sroa.16.0.lcssa = phi i64 [ %1, %start ], [ %left_partition_len.sroa.0.0, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h643fc4f64ac43e04E.exit" ], [ %new_len, %bb28 ]
; call core::slice::sort::shared::smallsort::small_sort_general_with_scratch
  call void @_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17hb5e958cd5826678fE(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph.lcssa31, i64 noundef range(i64 0, 33) %v.sroa.16.0.lcssa, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, ptr noalias nonnull align 8 poison)
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
  %self.i = call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h2332e7caf23104a8E(ptr noundef nonnull readonly align 4 %v.sroa.0.0.ph42, ptr noundef nonnull readonly %b.i, ptr noundef nonnull readonly %c.i, i64 noundef %len_div_84.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less)
  br label %_ZN4core5slice4sort6shared5pivot12choose_pivot17h9de9e5da55815d47E.exit

bb3.i:                                            ; preds = %bb7
  call void @llvm.experimental.noalias.scope.decl(metadata !1568)
  call void @llvm.experimental.noalias.scope.decl(metadata !1571)
  call void @llvm.experimental.noalias.scope.decl(metadata !1573), !noalias !1576
  call void @llvm.experimental.noalias.scope.decl(metadata !1579), !noalias !1576
  call void @llvm.experimental.noalias.scope.decl(metadata !1581), !noalias !1576
  call void @llvm.experimental.noalias.scope.decl(metadata !1584), !noalias !1576
  call void @llvm.experimental.noalias.scope.decl(metadata !1586), !noalias !1576
  call void @llvm.experimental.noalias.scope.decl(metadata !1589), !noalias !1576
  %_3.i.i.i.i.i = load i32, ptr %v.sroa.0.0.ph42, align 4, !alias.scope !1591, !noalias !1594, !noundef !43
  %_4.i.i.i.i.i = load i32, ptr %b.i, align 4, !alias.scope !1596, !noalias !1597, !noundef !43
  %_0.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %_4.i.i.i.i6.i = load i32, ptr %c.i, align 4, !alias.scope !1598, !noalias !1607, !noundef !43
  %_0.i7.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i6.i
  %5 = xor i1 %_0.i.i, %_0.i7.i
  %_0.i10.i = icmp slt i32 %_4.i.i.i.i.i, %_4.i.i.i.i6.i
  %_12.i.i = xor i1 %_0.i.i, %_0.i10.i
  %c.b.i.i = select i1 %_12.i.i, ptr %c.i, ptr %b.i
  %_0.sroa.0.0.i.i = select i1 %5, ptr %v.sroa.0.0.ph42, ptr %c.b.i.i
  br label %_ZN4core5slice4sort6shared5pivot12choose_pivot17h9de9e5da55815d47E.exit

_ZN4core5slice4sort6shared5pivot12choose_pivot17h9de9e5da55815d47E.exit: ; preds = %bb5.i, %bb3.i
  %self.i.sink = phi ptr [ %self.i, %bb5.i ], [ %_0.sroa.0.0.i.i, %bb3.i ]
  %6 = ptrtoint ptr %self.i.sink to i64
  %7 = sub nuw i64 %6, %.sink77
  %index.sroa.0.0.i = lshr exact i64 %7, 2
  %cond.i = icmp samesign ult i64 %index.sroa.0.0.i, %v.sroa.16.034
  call void @llvm.assume(i1 %cond.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pivot_copy)
  %src = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph42, i64 %7
  %value = load i32, ptr %src, align 4, !noundef !43
  store i32 %value, ptr %pivot_copy, align 4
  br i1 %.not, label %bb14, label %bb12

bb6:                                              ; preds = %bb5
; call core::slice::sort::stable::drift::sort
  call void @_ZN4core5slice4sort6stable5drift4sort17h3eaec80a8a74e6beE(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph42, i64 noundef %v.sroa.16.034, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i1 noundef zeroext true, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  br label %bb22

bb12:                                             ; preds = %_ZN4core5slice4sort6shared5pivot12choose_pivot17h9de9e5da55815d47E.exit
  %_3.i.i.i.i = load i32, ptr %left_ancestor_pivot.sroa.0.0.ph39, align 4, !alias.scope !1612, !noalias !1621, !noundef !43
  %_0.i.not = icmp slt i32 %_3.i.i.i.i, %value
  br i1 %_0.i.not, label %bb14, label %bb16

bb14:                                             ; preds = %_ZN4core5slice4sort6shared5pivot12choose_pivot17h9de9e5da55815d47E.exit, %bb12
; call core::slice::sort::stable::quicksort::stable_partition
  %8 = call noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17h2161dd4c5634a5d2E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph42, i64 noundef %v.sroa.16.034, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i64 noundef %index.sroa.0.0.i, i1 noundef zeroext false, ptr noalias align 8 poison)
  %9 = icmp eq i64 %8, 0
  br label %bb16

bb16:                                             ; preds = %bb14, %bb12
  %left_partition_len.sroa.0.0 = phi i64 [ 0, %bb12 ], [ %8, %bb14 ]
  %perform_equal_partition.sroa.0.0.in = phi i1 [ true, %bb12 ], [ %9, %bb14 ]
  br i1 %perform_equal_partition.sroa.0.0.in, label %bb17, label %bb19

bb19:                                             ; preds = %bb16
  %_6.not.i = icmp ugt i64 %left_partition_len.sroa.0.0, %v.sroa.16.034
  br i1 %_6.not.i, label %bb3.i23, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h643fc4f64ac43e04E.exit", !prof !1039

bb3.i23:                                          ; preds = %bb19
; call core::panicking::panic_fmt
  call void @_ZN4core9panicking9panic_fmt17ha4414e4328fe24a0E(ptr noundef nonnull @alloc_d1084648e479974e70c9329824bf76f9, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_58d434a1e795f965ef82c8e9c5db822a) #25, !noalias !1626
  unreachable

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h643fc4f64ac43e04E.exit": ; preds = %bb19
  %10 = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph42, i64 %left_partition_len.sroa.0.0
  %11 = sub nuw nsw i64 %v.sroa.16.034, %left_partition_len.sroa.0.0
; call core::slice::sort::stable::quicksort::quicksort
  call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h6647a82a0a396831E(ptr noalias noundef nonnull align 4 %10, i64 noundef %11, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef %4, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) %pivot_copy, ptr noalias noundef align 8 dereferenceable(8) %is_less) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_8 = icmp ult i64 %left_partition_len.sroa.0.0, 33
  br i1 %_8, label %bb3, label %bb5

bb17:                                             ; preds = %bb16
; call core::slice::sort::stable::quicksort::stable_partition
  %mid_eq = call noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17h881a56e65daf8d03E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph42, i64 noundef %v.sroa.16.034, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i64 noundef %index.sroa.0.0.i, i1 noundef zeroext true, ptr noalias align 8 poison)
  %_47 = icmp ugt i64 %mid_eq, %v.sroa.16.034
  br i1 %_47, label %bb27, label %bb28, !prof !1039

bb28:                                             ; preds = %bb17
  %new_len = sub nuw i64 %v.sroa.16.034, %mid_eq
  %_54 = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph42, i64 %mid_eq
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_832 = icmp ult i64 %new_len, 33
  br i1 %_832, label %bb3, label %bb5.lr.ph

bb27:                                             ; preds = %bb17
; call core::slice::index::slice_index_fail
  call void @_ZN4core5slice5index16slice_index_fail17h62807bcaa490c9c1E(i64 noundef %mid_eq, i64 noundef %v.sroa.16.034, i64 noundef %v.sroa.16.034, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_0766b232215672ee1bd2195fdb153938) #25
  unreachable

bb22:                                             ; preds = %bb3, %bb6
  ret void
}

; alloc::slice::<impl core::slice::sort::stable::BufGuard<T> for alloc::vec::Vec<T>>::with_capacity
; Function Attrs: nonlazybind uwtable
define void @"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h896b9b83c9d4207fE"(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_0, i64 noundef %capacity) unnamed_addr #1 {
start:
  %_4.i = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4.i)
; call alloc::raw_vec::RawVecInner<A>::try_allocate_in
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_4.i, i64 noundef %capacity, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
  %_5.i = load i64, ptr %_4.i, align 8, !range !1037, !noundef !43
  %0 = trunc nuw i64 %_5.i to i1
  %1 = getelementptr inbounds nuw i8, ptr %_4.i, i64 8
  %err.0.i = load i64, ptr %1, align 8, !range !1038, !noundef !43
  %2 = getelementptr inbounds nuw i8, ptr %_4.i, i64 16
  br i1 %0, label %bb3.i, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h670c63e440fb8ae4E.exit", !prof !1039

bb3.i:                                            ; preds = %start
  %err.1.i = load i64, ptr %2, align 8
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i, i64 %err.1.i) #26
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h670c63e440fb8ae4E.exit": ; preds = %start
  %this.1.i = load ptr, ptr %2, align 8, !nonnull !43, !noundef !43
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
define { ptr, i64 } @"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$19as_uninit_slice_mut17h287889661786d695E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %self) unnamed_addr #10 {
start:
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %_10 = load ptr, ptr %0, align 8, !nonnull !43, !noundef !43
  %1 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %count = load i64, ptr %1, align 8, !noundef !43
  %_3 = getelementptr inbounds nuw i32, ptr %_10, i64 %count
  %self1 = load i64, ptr %self, align 8, !range !1630, !noundef !43
  %len = sub i64 %self1, %count
  %2 = insertvalue { ptr, i64 } poison, ptr %_3, 0
  %3 = insertvalue { ptr, i64 } %2, i64 %len, 1
  ret { ptr, i64 } %3
}

; <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7221c912d5afe6c9E"(ptr noalias noundef readnone align 8 captures(none) dereferenceable(24) %self) unnamed_addr #6 {
start:
  ret void
}

; <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: nonlazybind uwtable
define void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h921c78ea33357760E"(ptr noalias noundef align 8 dereferenceable(16) %self) unnamed_addr #1 {
start:
; call alloc::raw_vec::RawVecInner<A>::deallocate
  tail call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef align 8 dereferenceable(16) %self, i64 noundef 4, i64 noundef 4)
  ret void
}

; <core::slice::sort::stable::merge::MergeState<T> as core::ops::drop::Drop>::drop
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define void @"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd21f88a1f402bcbfE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %self) unnamed_addr #9 {
start:
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %self1 = load ptr, ptr %0, align 8, !noundef !43
  %_5 = load ptr, ptr %self, align 8, !noundef !43
  %1 = ptrtoint ptr %self1 to i64
  %2 = ptrtoint ptr %_5 to i64
  %3 = sub nuw i64 %1, %2
  %4 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %5 = load ptr, ptr %4, align 8, !noundef !43
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %5, ptr align 4 %_5, i64 %3, i1 false)
  ret void
}

; <core::hint::select_unpredictable::DropOnPanic<T> as core::ops::drop::Drop>::drop
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define void @"_ZN96_$LT$core..hint..select_unpredictable..DropOnPanic$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hccacaceb11af3227E"(ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %self) unnamed_addr #6 {
start:
  ret void
}

; <core::slice::sort::shared::smallsort::CopyOnDrop<T> as core::ops::drop::Drop>::drop
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define void @"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2ccb70add1df79ceE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %self) unnamed_addr #9 {
start:
  %src = load ptr, ptr %self, align 8, !noundef !43
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %dst = load ptr, ptr %0, align 8, !noundef !43
  %1 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %count = load i64, ptr %1, align 8, !noundef !43
  %2 = shl i64 %count, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %dst, ptr align 4 %src, i64 %2, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: read) uwtable
define noundef range(i8 -1, 2) i8 @cmpfunc(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %a, ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %b) unnamed_addr #11 {
start:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1631)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1634)
  %_3.i = load i32, ptr %a, align 4, !alias.scope !1631, !noalias !1634, !noundef !43
  %_4.i = load i32, ptr %b, align 4, !alias.scope !1634, !noalias !1631, !noundef !43
  %_0.i = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i32(i32 %_3.i, i32 %_4.i)
  ret i8 %_0.i
}

; Function Attrs: nonlazybind uwtable
define noundef i32 @f_gold(ptr dead_on_return noalias noundef align 8 captures(address) dereferenceable(24) %N) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_6.i.i14 = alloca [4 x i8], align 4
  %_6.i.i = alloca [4 x i8], align 4
  %0 = getelementptr inbounds nuw i8, ptr %N, i64 16
  %_0.i = load i64, ptr %0, align 8, !alias.scope !1636, !noundef !43
  %_2.i = icmp sgt i64 %_0.i, -1
  tail call void @llvm.assume(i1 %_2.i)
  %l3 = lshr i64 %_0.i, 1
  %1 = getelementptr inbounds nuw i8, ptr %N, i64 8
  %_0.i.not.i.i107120 = icmp samesign ult i64 %_0.i, 2
  br i1 %_0.i.not.i.i107120, label %bb8, label %bb7.lr.ph.lr.ph

bb7.lr.ph.lr.ph:                                  ; preds = %start
  %2 = and i64 %_0.i, 9223372036854775806
  %.not = icmp eq i64 %2, 2
  %iter.sroa.7.1114126 = zext i1 %.not to i8
  %_0.i3.i.i109121 = icmp samesign ugt i64 %_0.i, 3
  %iter.sroa.0.1113125 = select i1 %_0.i3.i.i109121, i64 2, i64 1
  br label %bb7.lr.ph

bb7.lr.ph:                                        ; preds = %bb7.lr.ph.lr.ph, %bb15
  %_0.sroa.3.0.i.i115130 = phi i64 [ 1, %bb7.lr.ph.lr.ph ], [ %_0.sroa.3.0.i.i115, %bb15 ]
  %iter.sroa.7.1114129 = phi i8 [ %iter.sroa.7.1114126, %bb7.lr.ph.lr.ph ], [ %iter.sroa.7.1114, %bb15 ]
  %iter.sroa.0.1113128 = phi i64 [ %iter.sroa.0.1113125, %bb7.lr.ph.lr.ph ], [ %iter.sroa.0.1113, %bb15 ]
  %count.sroa.0.0.ph127 = phi i32 [ 0, %bb7.lr.ph.lr.ph ], [ %spec.select, %bb15 ]
  br label %bb7

cleanup.loopexit:                                 ; preds = %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h970b419e2fc04732E.exit", %bb13
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %cleanup

cleanup.loopexit.split-lp:                        ; preds = %bb3.i.i.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit.split-lp, %cleanup.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %cleanup.loopexit ], [ %lpad.loopexit.split-lp, %cleanup.loopexit.split-lp ]
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h84cb0a6ff2d68fd9E"(ptr noalias noundef align 8 dereferenceable(24) %N) #28
          to label %common.resume unwind label %terminate

bb7:                                              ; preds = %bb7.lr.ph, %bb20
  %_0.sroa.3.0.i.i118 = phi i64 [ %_0.sroa.3.0.i.i115130, %bb7.lr.ph ], [ %_0.sroa.3.0.i.i, %bb20 ]
  %iter.sroa.7.1117 = phi i8 [ %iter.sroa.7.1114129, %bb7.lr.ph ], [ %iter.sroa.7.1, %bb20 ]
  %iter.sroa.0.1116 = phi i64 [ %iter.sroa.0.1113128, %bb7.lr.ph ], [ %iter.sroa.0.1, %bb20 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1639)
  %_8.i = load ptr, ptr %1, align 8, !alias.scope !1639, !nonnull !43, !noundef !43
  %len.i = load i64, ptr %0, align 8, !alias.scope !1639, !noundef !43
  %_8.i.i.i = icmp eq i64 %_0.sroa.3.0.i.i118, 0
  br i1 %_8.i.i.i, label %bb12.i.i.i, label %bb5.i.i.i

bb5.i.i.i:                                        ; preds = %bb7
  %_9.not.i.i.i = icmp ult i64 %_0.sroa.3.0.i.i118, %len.i
  br i1 %_9.not.i.i.i, label %bb8.i.i.i, label %bb6.i.i.i

bb6.i.i.i:                                        ; preds = %bb5.i.i.i
  %3 = icmp eq i64 %_0.sroa.3.0.i.i118, %len.i
  br label %bb9.i.i.i

bb8.i.i.i:                                        ; preds = %bb5.i.i.i
  %4 = getelementptr inbounds nuw i8, ptr %_8.i, i64 %_0.sroa.3.0.i.i118
  %self1.i.i.i = load i8, ptr %4, align 1, !alias.scope !1642, !noalias !1639, !noundef !43
  %5 = icmp sgt i8 %self1.i.i.i, -65
  br label %bb9.i.i.i

bb9.i.i.i:                                        ; preds = %bb8.i.i.i, %bb6.i.i.i
  %_3.sroa.0.0.in.i.i.i = phi i1 [ %3, %bb6.i.i.i ], [ %5, %bb8.i.i.i ]
  br i1 %_3.sroa.0.0.in.i.i.i, label %bb12.i.i.i, label %"_ZN4core3str6traits110_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeTo$LT$usize$GT$$GT$3get17hd907b95d9410f36eE.exit.i.i"

bb12.i.i.i:                                       ; preds = %bb9.i.i.i, %bb7
  br label %"_ZN4core3str6traits110_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeTo$LT$usize$GT$$GT$3get17hd907b95d9410f36eE.exit.i.i"

"_ZN4core3str6traits110_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeTo$LT$usize$GT$$GT$3get17hd907b95d9410f36eE.exit.i.i": ; preds = %bb12.i.i.i, %bb9.i.i.i
  %_0.sroa.0.0.i.i.i = phi ptr [ %_8.i, %bb12.i.i.i ], [ null, %bb9.i.i.i ]
  %.not.i.i = icmp eq ptr %_0.sroa.0.0.i.i.i, null
  br i1 %.not.i.i, label %bb3.i.i.invoke, label %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he0433e3c615fe12fE.exit", !prof !1039

bb3.i.i.invoke:                                   ; preds = %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i", %"_ZN4core3str6traits110_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeTo$LT$usize$GT$$GT$3get17hd907b95d9410f36eE.exit.i.i"
  %6 = phi i64 [ 0, %"_ZN4core3str6traits110_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeTo$LT$usize$GT$$GT$3get17hd907b95d9410f36eE.exit.i.i" ], [ %_0.sroa.3.0.i.i118, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i" ]
  %7 = phi i64 [ %_0.sroa.3.0.i.i118, %"_ZN4core3str6traits110_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeTo$LT$usize$GT$$GT$3get17hd907b95d9410f36eE.exit.i.i" ], [ %_21, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i" ]
  %8 = phi ptr [ @alloc_4589facc9212bd32fc6a75ca289ca8b8, %"_ZN4core3str6traits110_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeTo$LT$usize$GT$$GT$3get17hd907b95d9410f36eE.exit.i.i" ], [ @alloc_1ffb130ac39c8ca8f51bcb2b0095d451, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i" ]
; invoke core::str::slice_error_fail
  invoke void @_ZN4core3str16slice_error_fail17h4678567854dd8858E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %_8.i, i64 noundef %len.i, i64 noundef %6, i64 noundef %7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %8) #25
          to label %bb3.i.i.cont unwind label %cleanup.loopexit.split-lp

bb3.i.i.cont:                                     ; preds = %bb3.i.i.invoke
  unreachable

"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he0433e3c615fe12fE.exit": ; preds = %"_ZN4core3str6traits110_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeTo$LT$usize$GT$$GT$3get17hd907b95d9410f36eE.exit.i.i"
  %_21 = shl i64 %_0.sroa.3.0.i.i118, 1
  br i1 %_8.i.i.i, label %bb2.i.i.i, label %bb9.i.i.i6

bb8:                                              ; preds = %bb15, %bb20, %start
  %count.sroa.0.0.ph.lcssa = phi i32 [ 0, %start ], [ %count.sroa.0.0.ph127, %bb20 ], [ %spec.select, %bb15 ]
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %N)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h84cb0a6ff2d68fd9E.exit" unwind label %cleanup.i.i

cleanup.i.i:                                      ; preds = %bb8
  %9 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %N)
          to label %common.resume unwind label %terminate.i.i

terminate.i.i:                                    ; preds = %cleanup.i.i
  %10 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #24
  unreachable

common.resume:                                    ; preds = %cleanup, %cleanup.i.i
  %common.resume.op = phi { ptr, i32 } [ %9, %cleanup.i.i ], [ %lpad.phi, %cleanup ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h84cb0a6ff2d68fd9E.exit": ; preds = %bb8
; call <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %N)
  ret i32 %count.sroa.0.0.ph.lcssa

bb9.i.i.i6:                                       ; preds = %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he0433e3c615fe12fE.exit"
  %_12.not.i.i.i = icmp ult i64 %_0.sroa.3.0.i.i118, %len.i
  br i1 %_12.not.i.i.i, label %bb12.i.i.i10, label %bb10.i.i.i

bb10.i.i.i:                                       ; preds = %bb9.i.i.i6
  %11 = icmp eq i64 %_0.sroa.3.0.i.i118, %len.i
  br label %bb13.i.i.i

bb12.i.i.i10:                                     ; preds = %bb9.i.i.i6
  %12 = getelementptr inbounds nuw i8, ptr %_8.i, i64 %_0.sroa.3.0.i.i118
  %self.i.i.i = load i8, ptr %12, align 1, !alias.scope !1647, !noalias !1652, !noundef !43
  %13 = icmp sgt i8 %self.i.i.i, -65
  br label %bb13.i.i.i

bb13.i.i.i:                                       ; preds = %bb12.i.i.i10, %bb10.i.i.i
  %_6.sroa.0.0.in.i.i.i = phi i1 [ %11, %bb10.i.i.i ], [ %13, %bb12.i.i.i10 ]
  br i1 %_6.sroa.0.0.in.i.i.i, label %bb2.i.i.i, label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i"

bb2.i.i.i:                                        ; preds = %bb13.i.i.i, %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he0433e3c615fe12fE.exit"
  %_18.i.i.i = icmp eq i64 %_21, 0
  br i1 %_18.i.i.i, label %bb22.i.i.i, label %bb15.i.i.i

bb15.i.i.i:                                       ; preds = %bb2.i.i.i
  %_19.not.i.i.i = icmp ult i64 %_21, %len.i
  br i1 %_19.not.i.i.i, label %bb18.i.i.i, label %bb16.i.i.i

bb16.i.i.i:                                       ; preds = %bb15.i.i.i
  %14 = icmp eq i64 %_21, %len.i
  br label %bb19.i.i.i

bb18.i.i.i:                                       ; preds = %bb15.i.i.i
  %15 = getelementptr inbounds nuw i8, ptr %_8.i, i64 %_21
  %self2.i.i.i = load i8, ptr %15, align 1, !alias.scope !1647, !noalias !1652, !noundef !43
  %16 = icmp sgt i8 %self2.i.i.i, -65
  br label %bb19.i.i.i

bb19.i.i.i:                                       ; preds = %bb18.i.i.i, %bb16.i.i.i
  %_7.sroa.0.0.in.i.i.i = phi i1 [ %14, %bb16.i.i.i ], [ %16, %bb18.i.i.i ]
  br i1 %_7.sroa.0.0.in.i.i.i, label %bb22.i.i.i, label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i"

bb22.i.i.i:                                       ; preds = %bb19.i.i.i, %bb2.i.i.i
  %data.i.i.i = getelementptr inbounds nuw i8, ptr %_8.i, i64 %_0.sroa.3.0.i.i118
  br label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i"

"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i": ; preds = %bb22.i.i.i, %bb19.i.i.i, %bb13.i.i.i
  %_0.sroa.0.0.i.i.i7 = phi ptr [ %data.i.i.i, %bb22.i.i.i ], [ null, %bb19.i.i.i ], [ null, %bb13.i.i.i ]
  %.not.i.i8 = icmp eq ptr %_0.sroa.0.0.i.i.i7, null
  br i1 %.not.i.i8, label %bb3.i.i.invoke, label %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h970b419e2fc04732E.exit", !prof !1039

"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h970b419e2fc04732E.exit": ; preds = %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i"
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_6.i.i), !noalias !1655
  store i32 0, ptr %_6.i.i, align 4, !noalias !1655
  store i8 48, ptr %_6.i.i, align 4, !alias.scope !1660, !noalias !1655
; invoke core::slice::<impl [T]>::starts_with
  %_0.i.i13 = invoke noundef zeroext i1 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h64c1bc5a56da65e1E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %_0.sroa.0.0.i.i.i, i64 noundef %_0.sroa.3.0.i.i118, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %_6.i.i, i64 noundef 1)
          to label %"_ZN4core3str21_$LT$impl$u20$str$GT$11starts_with17ha4c7f5344bc721cdE.exit" unwind label %cleanup.loopexit

"_ZN4core3str21_$LT$impl$u20$str$GT$11starts_with17ha4c7f5344bc721cdE.exit": ; preds = %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h970b419e2fc04732E.exit"
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_6.i.i), !noalias !1655
  br i1 %_0.i.i13, label %bb20, label %bb13

bb13:                                             ; preds = %"_ZN4core3str21_$LT$impl$u20$str$GT$11starts_with17ha4c7f5344bc721cdE.exit"
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_6.i.i14), !noalias !1663
  store i32 0, ptr %_6.i.i14, align 4, !noalias !1663
  store i8 48, ptr %_6.i.i14, align 4, !alias.scope !1668, !noalias !1663
; invoke core::slice::<impl [T]>::starts_with
  %_0.i.i16 = invoke noundef zeroext i1 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h64c1bc5a56da65e1E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %_0.sroa.0.0.i.i.i7, i64 noundef %_0.sroa.3.0.i.i118, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %_6.i.i14, i64 noundef 1)
          to label %"_ZN4core3str21_$LT$impl$u20$str$GT$11starts_with17ha4c7f5344bc721cdE.exit17" unwind label %cleanup.loopexit

"_ZN4core3str21_$LT$impl$u20$str$GT$11starts_with17ha4c7f5344bc721cdE.exit17": ; preds = %bb13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_6.i.i14), !noalias !1663
  br i1 %_0.i.i16, label %bb20, label %bb15

bb20:                                             ; preds = %"_ZN4core3str21_$LT$impl$u20$str$GT$11starts_with17ha4c7f5344bc721cdE.exit17", %"_ZN4core3str21_$LT$impl$u20$str$GT$11starts_with17ha4c7f5344bc721cdE.exit"
  %_10.i.i = trunc nuw i8 %iter.sroa.7.1117 to i1
  %_0.i.not.i.i = icmp ugt i64 %iter.sroa.0.1116, %l3
  %or.cond = select i1 %_10.i.i, i1 true, i1 %_0.i.not.i.i
  %_0.i3.i.i = icmp ult i64 %iter.sroa.0.1116, %l3
  %not.or.cond = xor i1 %or.cond, true
  %narrow = select i1 %not.or.cond, i1 %_0.i3.i.i, i1 false
  %spec.select20 = zext i1 %narrow to i64
  %iter.sroa.0.1 = add nuw i64 %iter.sroa.0.1116, %spec.select20
  %17 = select i1 %or.cond, i1 true, i1 %_0.i3.i.i
  %iter.sroa.7.1 = select i1 %17, i8 %iter.sroa.7.1117, i8 1
  %_0.sroa.3.0.i.i = select i1 %_10.i.i, i64 undef, i64 %iter.sroa.0.1116
  br i1 %or.cond, label %bb8, label %bb7

bb15:                                             ; preds = %"_ZN4core3str21_$LT$impl$u20$str$GT$11starts_with17ha4c7f5344bc721cdE.exit17"
  %bcmp.i.i = call i32 @bcmp(ptr nonnull readonly align 1 %_0.sroa.0.0.i.i.i, ptr nonnull readonly align 1 %_0.sroa.0.0.i.i.i7, i64 %_0.sroa.3.0.i.i118), !alias.scope !1671, !noalias !1675
  %18 = icmp eq i32 %bcmp.i.i, 0
  %19 = zext i1 %18 to i32
  %spec.select = add i32 %count.sroa.0.0.ph127, %19
  %_10.i.i106 = trunc nuw i8 %iter.sroa.7.1117 to i1
  %_0.i.not.i.i107 = icmp ugt i64 %iter.sroa.0.1116, %l3
  %or.cond108 = select i1 %_10.i.i106, i1 true, i1 %_0.i.not.i.i107
  %_0.i3.i.i109 = icmp ult i64 %iter.sroa.0.1116, %l3
  %not.or.cond110 = xor i1 %or.cond108, true
  %narrow111 = select i1 %not.or.cond110, i1 %_0.i3.i.i109, i1 false
  %spec.select20112 = zext i1 %narrow111 to i64
  %iter.sroa.0.1113 = add nuw i64 %iter.sroa.0.1116, %spec.select20112
  %20 = select i1 %or.cond108, i1 true, i1 %_0.i3.i.i109
  %iter.sroa.7.1114 = select i1 %20, i8 %iter.sroa.7.1117, i8 1
  %_0.sroa.3.0.i.i115 = select i1 %_10.i.i106, i64 undef, i64 %iter.sroa.0.1116
  br i1 %or.cond108, label %bb8, label %bb7.lr.ph

terminate:                                        ; preds = %cleanup
  %21 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #24
  unreachable
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
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !1679
  store ptr %compare.i, ptr %is_less.i.i, align 8, !noalias !1682
  %b.i.i = icmp samesign ult i64 %arr.1, 2
  br i1 %b.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hc184d46d00dbb9edE.exit", label %bb7.i.i, !prof !1686

bb7.i.i:                                          ; preds = %start
  %b1.i.i = icmp samesign ult i64 %arr.1, 21
  br i1 %b1.i.i, label %bb9.i.i, label %bb10.i.i, !prof !1686

bb10.i.i:                                         ; preds = %bb7.i.i
; call core::slice::sort::stable::driftsort_main
  call void @_ZN4core5slice4sort6stable14driftsort_main17h5ad4fc2a99f18257E(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, ptr noalias noundef align 8 dereferenceable(8) %is_less.i.i)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hc184d46d00dbb9edE.exit"

bb9.i.i:                                          ; preds = %bb7.i.i
; call core::slice::sort::shared::smallsort::insertion_sort_shift_left
  call void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17hf5fc6491bfbf0716E(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, i64 noundef 1, ptr noalias align 8 poison)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hc184d46d00dbb9edE.exit"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hc184d46d00dbb9edE.exit": ; preds = %start, %bb10.i.i, %bb9.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !1679
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %compare.i)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #12

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.scmp.i8.i32(i32, i32) #14

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #16

; <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: nonlazybind uwtable
declare void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; core::panicking::panic_in_cleanup
; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() unnamed_addr #17

; <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: nonlazybind uwtable
declare void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; core::panicking::panic_fmt
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking9panic_fmt17ha4414e4328fe24a0E(ptr noundef nonnull, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #18

; core::str::slice_error_fail
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core3str16slice_error_fail17h4678567854dd8858E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #18

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #19

; core::slice::sort::shared::smallsort::panic_on_ord_violation
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() unnamed_addr #18

; core::slice::index::slice_index_fail
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core5slice5index16slice_index_fail17h62807bcaa490c9c1E(i64 noundef, i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #18

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #14

; core::slice::sort::stable::drift::sqrt_approx
; Function Attrs: nonlazybind uwtable
declare noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h72a4dc1ae46294f4E(i64 noundef) unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #14

; core::slice::<impl [T]>::starts_with
; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h64c1bc5a56da65e1E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; alloc::raw_vec::RawVecInner<A>::try_allocate_in
; Function Attrs: nonlazybind uwtable
declare void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #1

; alloc::raw_vec::handle_error
; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #20

; alloc::raw_vec::RawVecInner<A>::deallocate
; Function Attrs: nonlazybind uwtable
declare void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef align 8 dereferenceable(16), i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #23

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
attributes #13 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #17 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #20 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { nocallback nofree nounwind nonlazybind willreturn memory(argmem: read) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #23 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { cold noreturn nounwind }
attributes #25 = { noinline noreturn }
attributes #26 = { noreturn }
attributes #27 = { noinline }
attributes #28 = { cold }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.93.1 (01f6ddf75 2026-02-11)"}
!3 = !{!4}
!4 = distinct !{!4, !5, !"_ZN4core3ptr10swap_chunk17h35b8566f5b13f027E: %x"}
!5 = distinct !{!5, !"_ZN4core3ptr10swap_chunk17h35b8566f5b13f027E"}
!6 = !{!7}
!7 = distinct !{!7, !5, !"_ZN4core3ptr10swap_chunk17h35b8566f5b13f027E: %y"}
!8 = !{!9}
!9 = distinct !{!9, !5, !"_ZN4core3ptr10swap_chunk17h35b8566f5b13f027E: %x:It1"}
!10 = !{!11}
!11 = distinct !{!11, !5, !"_ZN4core3ptr10swap_chunk17h35b8566f5b13f027E: %y:It1"}
!12 = !{!13}
!13 = distinct !{!13, !14, !"_ZN52_$LT$char$u20$as$u20$core..str..pattern..Pattern$GT$12is_prefix_of17h0ca10fe567e00243E: %haystack.0"}
!14 = distinct !{!14, !"_ZN52_$LT$char$u20$as$u20$core..str..pattern..Pattern$GT$12is_prefix_of17h0ca10fe567e00243E"}
!15 = !{!16}
!16 = distinct !{!16, !17, !"_ZN4core4char7methods15encode_utf8_raw17hc175ebbaeebc4df9E: %dst.0"}
!17 = distinct !{!17, !"_ZN4core4char7methods15encode_utf8_raw17hc175ebbaeebc4df9E"}
!18 = !{!19}
!19 = distinct !{!19, !20, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %a"}
!20 = distinct !{!20, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E"}
!21 = !{!22}
!22 = distinct !{!22, !20, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %b"}
!23 = !{!24}
!24 = distinct !{!24, !25, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 0"}
!25 = distinct !{!25, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E"}
!26 = !{!27}
!27 = distinct !{!27, !28, !"_ZN4core5slice4sort6shared5pivot7median317had417e5ad4aa9185E: %c"}
!28 = distinct !{!28, !"_ZN4core5slice4sort6shared5pivot7median317had417e5ad4aa9185E"}
!29 = !{!30}
!30 = distinct !{!30, !25, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 1"}
!31 = !{!32}
!32 = distinct !{!32, !33, !"cmpfunc: %a"}
!33 = distinct !{!33, !"cmpfunc"}
!34 = !{!35}
!35 = distinct !{!35, !33, !"cmpfunc: %b"}
!36 = !{!37}
!37 = distinct !{!37, !38, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!38 = distinct !{!38, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!39 = !{!40}
!40 = distinct !{!40, !38, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!41 = !{!37, !32, !24, !19}
!42 = !{!40, !35, !30, !22, !27}
!43 = !{}
!44 = !{!40, !35, !30, !22}
!45 = !{!37, !32, !24, !19, !27}
!46 = !{!47, !49, !51, !53}
!47 = distinct !{!47, !48, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!48 = distinct !{!48, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!49 = distinct !{!49, !50, !"cmpfunc: %b"}
!50 = distinct !{!50, !"cmpfunc"}
!51 = distinct !{!51, !52, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 1"}
!52 = distinct !{!52, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E"}
!53 = distinct !{!53, !54, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %b"}
!54 = distinct !{!54, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E"}
!55 = !{!56, !57, !58, !59}
!56 = distinct !{!56, !48, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!57 = distinct !{!57, !50, !"cmpfunc: %a"}
!58 = distinct !{!58, !52, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 0"}
!59 = distinct !{!59, !54, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %a"}
!60 = !{!61}
!61 = distinct !{!61, !62, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %a"}
!62 = distinct !{!62, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E"}
!63 = !{!64}
!64 = distinct !{!64, !62, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %b"}
!65 = !{!66}
!66 = distinct !{!66, !67, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 0"}
!67 = distinct !{!67, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E"}
!68 = !{!69}
!69 = distinct !{!69, !67, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 1"}
!70 = !{!71}
!71 = distinct !{!71, !72, !"cmpfunc: %a"}
!72 = distinct !{!72, !"cmpfunc"}
!73 = !{!74}
!74 = distinct !{!74, !72, !"cmpfunc: %b"}
!75 = !{!76}
!76 = distinct !{!76, !77, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!77 = distinct !{!77, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!78 = !{!79}
!79 = distinct !{!79, !77, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!80 = !{!76, !71, !66, !61}
!81 = !{!79, !74, !69, !64}
!82 = !{!83, !85, !87, !89}
!83 = distinct !{!83, !84, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!84 = distinct !{!84, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!85 = distinct !{!85, !86, !"cmpfunc: %b"}
!86 = distinct !{!86, !"cmpfunc"}
!87 = distinct !{!87, !88, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 1"}
!88 = distinct !{!88, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E"}
!89 = distinct !{!89, !90, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %b"}
!90 = distinct !{!90, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E"}
!91 = !{!92, !93, !94, !95}
!92 = distinct !{!92, !84, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!93 = distinct !{!93, !86, !"cmpfunc: %a"}
!94 = distinct !{!94, !88, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 0"}
!95 = distinct !{!95, !90, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %a"}
!96 = !{!97, !99}
!97 = distinct !{!97, !98, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2ccb70add1df79ceE: %self"}
!98 = distinct !{!98, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2ccb70add1df79ceE"}
!99 = distinct !{!99, !100, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h9a594e74a7a4c60eE: %_1"}
!100 = distinct !{!100, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h9a594e74a7a4c60eE"}
!101 = !{!102}
!102 = distinct !{!102, !103, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %a"}
!103 = distinct !{!103, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E"}
!104 = !{!105}
!105 = distinct !{!105, !103, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %b"}
!106 = !{!107}
!107 = distinct !{!107, !108, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 0"}
!108 = distinct !{!108, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E"}
!109 = !{!110}
!110 = distinct !{!110, !108, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 1"}
!111 = !{!112}
!112 = distinct !{!112, !113, !"cmpfunc: %a"}
!113 = distinct !{!113, !"cmpfunc"}
!114 = !{!115}
!115 = distinct !{!115, !113, !"cmpfunc: %b"}
!116 = !{!117}
!117 = distinct !{!117, !118, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!118 = distinct !{!118, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!119 = !{!120}
!120 = distinct !{!120, !118, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!121 = !{!117, !112, !107, !102}
!122 = !{!120, !115, !110, !105}
!123 = !{!124}
!124 = distinct !{!124, !125, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %a"}
!125 = distinct !{!125, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E"}
!126 = !{!127}
!127 = distinct !{!127, !125, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %b"}
!128 = !{!129}
!129 = distinct !{!129, !130, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 0"}
!130 = distinct !{!130, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E"}
!131 = !{!132}
!132 = distinct !{!132, !130, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 1"}
!133 = !{!134}
!134 = distinct !{!134, !135, !"cmpfunc: %a"}
!135 = distinct !{!135, !"cmpfunc"}
!136 = !{!137}
!137 = distinct !{!137, !135, !"cmpfunc: %b"}
!138 = !{!139}
!139 = distinct !{!139, !140, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!140 = distinct !{!140, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!141 = !{!142}
!142 = distinct !{!142, !140, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!143 = !{!139, !134, !129, !124}
!144 = !{!142, !137, !132, !127}
!145 = !{!146}
!146 = distinct !{!146, !147, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %a"}
!147 = distinct !{!147, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E"}
!148 = !{!149}
!149 = distinct !{!149, !147, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %b"}
!150 = !{!151}
!151 = distinct !{!151, !152, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 0"}
!152 = distinct !{!152, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E"}
!153 = !{!154}
!154 = distinct !{!154, !152, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 1"}
!155 = !{!156}
!156 = distinct !{!156, !157, !"cmpfunc: %a"}
!157 = distinct !{!157, !"cmpfunc"}
!158 = !{!159}
!159 = distinct !{!159, !157, !"cmpfunc: %b"}
!160 = !{!161}
!161 = distinct !{!161, !162, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!162 = distinct !{!162, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!163 = !{!164}
!164 = distinct !{!164, !162, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!165 = !{!161, !156, !151, !146}
!166 = !{!164, !159, !154, !149}
!167 = !{!168}
!168 = distinct !{!168, !169, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %a"}
!169 = distinct !{!169, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E"}
!170 = !{!171}
!171 = distinct !{!171, !169, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %b"}
!172 = !{!173}
!173 = distinct !{!173, !174, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 0"}
!174 = distinct !{!174, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E"}
!175 = !{!176}
!176 = distinct !{!176, !174, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 1"}
!177 = !{!178}
!178 = distinct !{!178, !179, !"cmpfunc: %a"}
!179 = distinct !{!179, !"cmpfunc"}
!180 = !{!181}
!181 = distinct !{!181, !179, !"cmpfunc: %b"}
!182 = !{!183}
!183 = distinct !{!183, !184, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!184 = distinct !{!184, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!185 = !{!186}
!186 = distinct !{!186, !184, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!187 = !{!183, !178, !173, !168}
!188 = !{!186, !181, !176, !171}
!189 = !{!190}
!190 = distinct !{!190, !191, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %a"}
!191 = distinct !{!191, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E"}
!192 = !{!193}
!193 = distinct !{!193, !191, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %b"}
!194 = !{!195}
!195 = distinct !{!195, !196, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 0"}
!196 = distinct !{!196, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E"}
!197 = !{!198}
!198 = distinct !{!198, !196, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 1"}
!199 = !{!200}
!200 = distinct !{!200, !201, !"cmpfunc: %a"}
!201 = distinct !{!201, !"cmpfunc"}
!202 = !{!203}
!203 = distinct !{!203, !201, !"cmpfunc: %b"}
!204 = !{!205}
!205 = distinct !{!205, !206, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!206 = distinct !{!206, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!207 = !{!208}
!208 = distinct !{!208, !206, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!209 = !{!205, !200, !195, !190}
!210 = !{!208, !203, !198, !193}
!211 = !{!212}
!212 = distinct !{!212, !213, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %a"}
!213 = distinct !{!213, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E"}
!214 = !{!215}
!215 = distinct !{!215, !213, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %b"}
!216 = !{!217}
!217 = distinct !{!217, !218, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 0"}
!218 = distinct !{!218, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E"}
!219 = !{!220}
!220 = distinct !{!220, !218, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 1"}
!221 = !{!222}
!222 = distinct !{!222, !223, !"cmpfunc: %a"}
!223 = distinct !{!223, !"cmpfunc"}
!224 = !{!225}
!225 = distinct !{!225, !223, !"cmpfunc: %b"}
!226 = !{!227}
!227 = distinct !{!227, !228, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!228 = distinct !{!228, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!229 = !{!230}
!230 = distinct !{!230, !228, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!231 = !{!227, !222, !217, !212}
!232 = !{!230, !225, !220, !215}
!233 = !{!234}
!234 = distinct !{!234, !235, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %a"}
!235 = distinct !{!235, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E"}
!236 = !{!237}
!237 = distinct !{!237, !235, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %b"}
!238 = !{!239}
!239 = distinct !{!239, !240, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 0"}
!240 = distinct !{!240, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E"}
!241 = !{!242}
!242 = distinct !{!242, !240, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 1"}
!243 = !{!244}
!244 = distinct !{!244, !245, !"cmpfunc: %a"}
!245 = distinct !{!245, !"cmpfunc"}
!246 = !{!247}
!247 = distinct !{!247, !245, !"cmpfunc: %b"}
!248 = !{!249}
!249 = distinct !{!249, !250, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!250 = distinct !{!250, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!251 = !{!252}
!252 = distinct !{!252, !250, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!253 = !{!249, !244, !239, !234}
!254 = !{!252, !247, !242, !237}
!255 = !{!256}
!256 = distinct !{!256, !257, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %a"}
!257 = distinct !{!257, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E"}
!258 = !{!259}
!259 = distinct !{!259, !257, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %b"}
!260 = !{!261}
!261 = distinct !{!261, !262, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 0"}
!262 = distinct !{!262, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E"}
!263 = !{!264}
!264 = distinct !{!264, !262, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 1"}
!265 = !{!266}
!266 = distinct !{!266, !267, !"cmpfunc: %a"}
!267 = distinct !{!267, !"cmpfunc"}
!268 = !{!269}
!269 = distinct !{!269, !267, !"cmpfunc: %b"}
!270 = !{!271}
!271 = distinct !{!271, !272, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!272 = distinct !{!272, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!273 = !{!274}
!274 = distinct !{!274, !272, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!275 = !{!271, !266, !261, !256}
!276 = !{!274, !269, !264, !259}
!277 = !{!278}
!278 = distinct !{!278, !279, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %a"}
!279 = distinct !{!279, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E"}
!280 = !{!281}
!281 = distinct !{!281, !279, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %b"}
!282 = !{!283}
!283 = distinct !{!283, !284, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 0"}
!284 = distinct !{!284, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E"}
!285 = !{!286}
!286 = distinct !{!286, !284, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 1"}
!287 = !{!288}
!288 = distinct !{!288, !289, !"cmpfunc: %a"}
!289 = distinct !{!289, !"cmpfunc"}
!290 = !{!291}
!291 = distinct !{!291, !289, !"cmpfunc: %b"}
!292 = !{!293}
!293 = distinct !{!293, !294, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!294 = distinct !{!294, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!295 = !{!296}
!296 = distinct !{!296, !294, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!297 = !{!293, !288, !283, !278}
!298 = !{!296, !291, !286, !281}
!299 = !{!300}
!300 = distinct !{!300, !301, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %a"}
!301 = distinct !{!301, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E"}
!302 = !{!303}
!303 = distinct !{!303, !301, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %b"}
!304 = !{!305}
!305 = distinct !{!305, !306, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 0"}
!306 = distinct !{!306, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E"}
!307 = !{!308}
!308 = distinct !{!308, !306, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 1"}
!309 = !{!310}
!310 = distinct !{!310, !311, !"cmpfunc: %a"}
!311 = distinct !{!311, !"cmpfunc"}
!312 = !{!313}
!313 = distinct !{!313, !311, !"cmpfunc: %b"}
!314 = !{!315}
!315 = distinct !{!315, !316, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!316 = distinct !{!316, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!317 = !{!318}
!318 = distinct !{!318, !316, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!319 = !{!315, !310, !305, !300}
!320 = !{!318, !313, !308, !303}
!321 = !{!322}
!322 = distinct !{!322, !323, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %a"}
!323 = distinct !{!323, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E"}
!324 = !{!325}
!325 = distinct !{!325, !323, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %b"}
!326 = !{!327}
!327 = distinct !{!327, !328, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 0"}
!328 = distinct !{!328, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E"}
!329 = !{!330}
!330 = distinct !{!330, !328, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 1"}
!331 = !{!332}
!332 = distinct !{!332, !333, !"cmpfunc: %a"}
!333 = distinct !{!333, !"cmpfunc"}
!334 = !{!335}
!335 = distinct !{!335, !333, !"cmpfunc: %b"}
!336 = !{!337}
!337 = distinct !{!337, !338, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!338 = distinct !{!338, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!339 = !{!340}
!340 = distinct !{!340, !338, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!341 = !{!337, !332, !327, !322}
!342 = !{!340, !335, !330, !325}
!343 = !{!344}
!344 = distinct !{!344, !345, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %a"}
!345 = distinct !{!345, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E"}
!346 = !{!347}
!347 = distinct !{!347, !345, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %b"}
!348 = !{!349}
!349 = distinct !{!349, !350, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 0"}
!350 = distinct !{!350, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E"}
!351 = !{!352}
!352 = distinct !{!352, !350, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 1"}
!353 = !{!354}
!354 = distinct !{!354, !355, !"cmpfunc: %a"}
!355 = distinct !{!355, !"cmpfunc"}
!356 = !{!357}
!357 = distinct !{!357, !355, !"cmpfunc: %b"}
!358 = !{!359}
!359 = distinct !{!359, !360, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!360 = distinct !{!360, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!361 = !{!362}
!362 = distinct !{!362, !360, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!363 = !{!359, !354, !349, !344}
!364 = !{!362, !357, !352, !347}
!365 = !{!366}
!366 = distinct !{!366, !367, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %a"}
!367 = distinct !{!367, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E"}
!368 = !{!369}
!369 = distinct !{!369, !367, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %b"}
!370 = !{!371}
!371 = distinct !{!371, !372, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 0"}
!372 = distinct !{!372, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E"}
!373 = !{!374}
!374 = distinct !{!374, !372, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 1"}
!375 = !{!376}
!376 = distinct !{!376, !377, !"cmpfunc: %a"}
!377 = distinct !{!377, !"cmpfunc"}
!378 = !{!379}
!379 = distinct !{!379, !377, !"cmpfunc: %b"}
!380 = !{!381}
!381 = distinct !{!381, !382, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!382 = distinct !{!382, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!383 = !{!384}
!384 = distinct !{!384, !382, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!385 = !{!381, !376, !371, !366}
!386 = !{!384, !379, !374, !369}
!387 = !{!388}
!388 = distinct !{!388, !389, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %a"}
!389 = distinct !{!389, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E"}
!390 = !{!391}
!391 = distinct !{!391, !389, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %b"}
!392 = !{!393}
!393 = distinct !{!393, !394, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 0"}
!394 = distinct !{!394, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E"}
!395 = !{!396}
!396 = distinct !{!396, !394, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 1"}
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
!410 = distinct !{!410, !411, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %a"}
!411 = distinct !{!411, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E"}
!412 = !{!413}
!413 = distinct !{!413, !411, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %b"}
!414 = !{!415}
!415 = distinct !{!415, !416, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 0"}
!416 = distinct !{!416, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E"}
!417 = !{!418}
!418 = distinct !{!418, !416, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 1"}
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
!432 = distinct !{!432, !433, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h2eab821d233d23dcE: %v.0"}
!433 = distinct !{!433, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h2eab821d233d23dcE"}
!434 = !{!435}
!435 = distinct !{!435, !436, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %a"}
!436 = distinct !{!436, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E"}
!437 = !{!438}
!438 = distinct !{!438, !436, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %b"}
!439 = !{!440}
!440 = distinct !{!440, !441, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 0"}
!441 = distinct !{!441, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E"}
!442 = !{!443}
!443 = distinct !{!443, !444, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h8f57d3b530d10981E: %_0"}
!444 = distinct !{!444, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h8f57d3b530d10981E"}
!445 = !{!446}
!446 = distinct !{!446, !441, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 1"}
!447 = !{!448}
!448 = distinct !{!448, !449, !"cmpfunc: %a"}
!449 = distinct !{!449, !"cmpfunc"}
!450 = !{!451}
!451 = distinct !{!451, !449, !"cmpfunc: %b"}
!452 = !{!453}
!453 = distinct !{!453, !454, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!454 = distinct !{!454, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!455 = !{!456}
!456 = distinct !{!456, !454, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!457 = !{!453, !448, !440, !435, !432}
!458 = !{!456, !451, !446, !438, !443}
!459 = !{!456, !451, !446, !438, !432}
!460 = !{!453, !448, !440, !435, !443}
!461 = !{!443, !462, !432}
!462 = distinct !{!462, !444, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h8f57d3b530d10981E: %is_less"}
!463 = !{!464}
!464 = distinct !{!464, !465, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %a"}
!465 = distinct !{!465, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E"}
!466 = !{!467}
!467 = distinct !{!467, !465, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %b"}
!468 = !{!469}
!469 = distinct !{!469, !470, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 0"}
!470 = distinct !{!470, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E"}
!471 = !{!472}
!472 = distinct !{!472, !473, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h343838c0fb37b4d6E: %_0"}
!473 = distinct !{!473, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h343838c0fb37b4d6E"}
!474 = !{!475}
!475 = distinct !{!475, !470, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 1"}
!476 = !{!477}
!477 = distinct !{!477, !478, !"cmpfunc: %a"}
!478 = distinct !{!478, !"cmpfunc"}
!479 = !{!480}
!480 = distinct !{!480, !478, !"cmpfunc: %b"}
!481 = !{!482}
!482 = distinct !{!482, !483, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!483 = distinct !{!483, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!484 = !{!485}
!485 = distinct !{!485, !483, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!486 = !{!482, !477, !469, !464, !432}
!487 = !{!485, !480, !475, !467, !472}
!488 = !{!485, !480, !475, !467, !432}
!489 = !{!482, !477, !469, !464, !472}
!490 = !{!472, !491, !432}
!491 = distinct !{!491, !473, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h343838c0fb37b4d6E: %is_less"}
!492 = !{!493}
!493 = distinct !{!493, !436, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %a:It1"}
!494 = !{!495}
!495 = distinct !{!495, !436, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %b:It1"}
!496 = !{!497}
!497 = distinct !{!497, !441, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 0:It1"}
!498 = !{!499}
!499 = distinct !{!499, !441, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 1:It1"}
!500 = !{!501}
!501 = distinct !{!501, !449, !"cmpfunc: %a:It1"}
!502 = !{!503}
!503 = distinct !{!503, !449, !"cmpfunc: %b:It1"}
!504 = !{!505}
!505 = distinct !{!505, !454, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It1"}
!506 = !{!507}
!507 = distinct !{!507, !454, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It1"}
!508 = !{!505, !501, !497, !493, !432}
!509 = !{!507, !503, !499, !495, !443}
!510 = !{!507, !503, !499, !495, !432}
!511 = !{!505, !501, !497, !493, !443}
!512 = !{!513}
!513 = distinct !{!513, !465, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %a:It1"}
!514 = !{!515}
!515 = distinct !{!515, !465, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %b:It1"}
!516 = !{!517}
!517 = distinct !{!517, !470, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 0:It1"}
!518 = !{!519}
!519 = distinct !{!519, !470, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 1:It1"}
!520 = !{!521}
!521 = distinct !{!521, !478, !"cmpfunc: %a:It1"}
!522 = !{!523}
!523 = distinct !{!523, !478, !"cmpfunc: %b:It1"}
!524 = !{!525}
!525 = distinct !{!525, !483, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It1"}
!526 = !{!527}
!527 = distinct !{!527, !483, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It1"}
!528 = !{!525, !521, !517, !513, !432}
!529 = !{!527, !523, !519, !515, !472}
!530 = !{!527, !523, !519, !515, !432}
!531 = !{!525, !521, !517, !513, !472}
!532 = !{!533}
!533 = distinct !{!533, !436, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %a:It2"}
!534 = !{!535}
!535 = distinct !{!535, !436, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %b:It2"}
!536 = !{!537}
!537 = distinct !{!537, !441, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 0:It2"}
!538 = !{!539}
!539 = distinct !{!539, !441, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 1:It2"}
!540 = !{!541}
!541 = distinct !{!541, !449, !"cmpfunc: %a:It2"}
!542 = !{!543}
!543 = distinct !{!543, !449, !"cmpfunc: %b:It2"}
!544 = !{!545}
!545 = distinct !{!545, !454, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It2"}
!546 = !{!547}
!547 = distinct !{!547, !454, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It2"}
!548 = !{!545, !541, !537, !533, !432}
!549 = !{!547, !543, !539, !535, !443}
!550 = !{!547, !543, !539, !535, !432}
!551 = !{!545, !541, !537, !533, !443}
!552 = !{!553}
!553 = distinct !{!553, !465, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %a:It2"}
!554 = !{!555}
!555 = distinct !{!555, !465, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %b:It2"}
!556 = !{!557}
!557 = distinct !{!557, !470, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 0:It2"}
!558 = !{!559}
!559 = distinct !{!559, !470, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 1:It2"}
!560 = !{!561}
!561 = distinct !{!561, !478, !"cmpfunc: %a:It2"}
!562 = !{!563}
!563 = distinct !{!563, !478, !"cmpfunc: %b:It2"}
!564 = !{!565}
!565 = distinct !{!565, !483, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It2"}
!566 = !{!567}
!567 = distinct !{!567, !483, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It2"}
!568 = !{!565, !561, !557, !553, !432}
!569 = !{!567, !563, !559, !555, !472}
!570 = !{!567, !563, !559, !555, !432}
!571 = !{!565, !561, !557, !553, !472}
!572 = !{!573}
!573 = distinct !{!573, !436, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %a:It3"}
!574 = !{!575}
!575 = distinct !{!575, !436, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %b:It3"}
!576 = !{!577}
!577 = distinct !{!577, !441, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 0:It3"}
!578 = !{!579}
!579 = distinct !{!579, !441, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 1:It3"}
!580 = !{!581}
!581 = distinct !{!581, !449, !"cmpfunc: %a:It3"}
!582 = !{!583}
!583 = distinct !{!583, !449, !"cmpfunc: %b:It3"}
!584 = !{!585}
!585 = distinct !{!585, !454, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It3"}
!586 = !{!587}
!587 = distinct !{!587, !454, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It3"}
!588 = !{!585, !581, !577, !573, !432}
!589 = !{!587, !583, !579, !575, !443}
!590 = !{!587, !583, !579, !575, !432}
!591 = !{!585, !581, !577, !573, !443}
!592 = !{!593}
!593 = distinct !{!593, !465, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %a:It3"}
!594 = !{!595}
!595 = distinct !{!595, !465, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %b:It3"}
!596 = !{!597}
!597 = distinct !{!597, !470, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 0:It3"}
!598 = !{!599}
!599 = distinct !{!599, !470, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 1:It3"}
!600 = !{!601}
!601 = distinct !{!601, !478, !"cmpfunc: %a:It3"}
!602 = !{!603}
!603 = distinct !{!603, !478, !"cmpfunc: %b:It3"}
!604 = !{!605}
!605 = distinct !{!605, !483, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It3"}
!606 = !{!607}
!607 = distinct !{!607, !483, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It3"}
!608 = !{!605, !601, !597, !593, !432}
!609 = !{!607, !603, !599, !595, !472}
!610 = !{!607, !603, !599, !595, !432}
!611 = !{!605, !601, !597, !593, !472}
!612 = !{!"branch_weights", i32 4001, i32 4000000}
!613 = !{!614}
!614 = distinct !{!614, !615, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %a"}
!615 = distinct !{!615, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E"}
!616 = !{!617}
!617 = distinct !{!617, !615, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %b"}
!618 = !{!619}
!619 = distinct !{!619, !620, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 0"}
!620 = distinct !{!620, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E"}
!621 = !{!622}
!622 = distinct !{!622, !623, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h8f57d3b530d10981E: %_0"}
!623 = distinct !{!623, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h8f57d3b530d10981E"}
!624 = !{!625}
!625 = distinct !{!625, !620, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 1"}
!626 = !{!627}
!627 = distinct !{!627, !628, !"cmpfunc: %a"}
!628 = distinct !{!628, !"cmpfunc"}
!629 = !{!630}
!630 = distinct !{!630, !628, !"cmpfunc: %b"}
!631 = !{!632}
!632 = distinct !{!632, !633, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!633 = distinct !{!633, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!634 = !{!635}
!635 = distinct !{!635, !633, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!636 = !{!632, !627, !619, !614}
!637 = !{!635, !630, !625, !617, !622}
!638 = !{!635, !630, !625, !617}
!639 = !{!632, !627, !619, !614, !622}
!640 = !{!622, !641}
!641 = distinct !{!641, !623, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h8f57d3b530d10981E: %is_less"}
!642 = !{!643}
!643 = distinct !{!643, !644, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %a"}
!644 = distinct !{!644, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E"}
!645 = !{!646}
!646 = distinct !{!646, !644, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %b"}
!647 = !{!648}
!648 = distinct !{!648, !649, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 0"}
!649 = distinct !{!649, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E"}
!650 = !{!651}
!651 = distinct !{!651, !652, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h343838c0fb37b4d6E: %_0"}
!652 = distinct !{!652, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h343838c0fb37b4d6E"}
!653 = !{!654}
!654 = distinct !{!654, !649, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 1"}
!655 = !{!656}
!656 = distinct !{!656, !657, !"cmpfunc: %a"}
!657 = distinct !{!657, !"cmpfunc"}
!658 = !{!659}
!659 = distinct !{!659, !657, !"cmpfunc: %b"}
!660 = !{!661}
!661 = distinct !{!661, !662, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!662 = distinct !{!662, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!663 = !{!664}
!664 = distinct !{!664, !662, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!665 = !{!661, !656, !648, !643}
!666 = !{!664, !659, !654, !646, !651}
!667 = !{!664, !659, !654, !646}
!668 = !{!661, !656, !648, !643, !651}
!669 = !{!651, !670}
!670 = distinct !{!670, !652, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h343838c0fb37b4d6E: %is_less"}
!671 = !{!672}
!672 = distinct !{!672, !673, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %a"}
!673 = distinct !{!673, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E"}
!674 = !{!675}
!675 = distinct !{!675, !673, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %b"}
!676 = !{!677}
!677 = distinct !{!677, !678, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 0"}
!678 = distinct !{!678, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E"}
!679 = !{!680}
!680 = distinct !{!680, !678, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 1"}
!681 = !{!682}
!682 = distinct !{!682, !683, !"cmpfunc: %a"}
!683 = distinct !{!683, !"cmpfunc"}
!684 = !{!685}
!685 = distinct !{!685, !683, !"cmpfunc: %b"}
!686 = !{!687}
!687 = distinct !{!687, !688, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!688 = distinct !{!688, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!689 = !{!690}
!690 = distinct !{!690, !688, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!691 = !{!687, !682, !677, !672}
!692 = !{!690, !685, !680, !675}
!693 = !{!694, !696, !698, !700}
!694 = distinct !{!694, !695, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!695 = distinct !{!695, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!696 = distinct !{!696, !697, !"cmpfunc: %b"}
!697 = distinct !{!697, !"cmpfunc"}
!698 = distinct !{!698, !699, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 1"}
!699 = distinct !{!699, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E"}
!700 = distinct !{!700, !701, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %b"}
!701 = distinct !{!701, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E"}
!702 = !{!703, !704, !705, !706}
!703 = distinct !{!703, !695, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!704 = distinct !{!704, !697, !"cmpfunc: %a"}
!705 = distinct !{!705, !699, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 0"}
!706 = distinct !{!706, !701, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %a"}
!707 = !{!708, !710}
!708 = distinct !{!708, !709, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2ccb70add1df79ceE: %self"}
!709 = distinct !{!709, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2ccb70add1df79ceE"}
!710 = distinct !{!710, !711, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h9a594e74a7a4c60eE: %_1"}
!711 = distinct !{!711, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h9a594e74a7a4c60eE"}
!712 = !{!713}
!713 = distinct !{!713, !714, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %a"}
!714 = distinct !{!714, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E"}
!715 = !{!716}
!716 = distinct !{!716, !714, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %b"}
!717 = !{!718}
!718 = distinct !{!718, !719, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 0"}
!719 = distinct !{!719, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E"}
!720 = !{!721}
!721 = distinct !{!721, !719, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 1"}
!722 = !{!723}
!723 = distinct !{!723, !724, !"cmpfunc: %a"}
!724 = distinct !{!724, !"cmpfunc"}
!725 = !{!726}
!726 = distinct !{!726, !724, !"cmpfunc: %b"}
!727 = !{!728}
!728 = distinct !{!728, !729, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!729 = distinct !{!729, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!730 = !{!731}
!731 = distinct !{!731, !729, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!732 = !{!728, !723, !718, !713}
!733 = !{!731, !726, !721, !716}
!734 = !{!735}
!735 = distinct !{!735, !736, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %a"}
!736 = distinct !{!736, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E"}
!737 = !{!738}
!738 = distinct !{!738, !736, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %b"}
!739 = !{!740}
!740 = distinct !{!740, !741, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 0"}
!741 = distinct !{!741, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E"}
!742 = !{!743}
!743 = distinct !{!743, !741, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 1"}
!744 = !{!745}
!745 = distinct !{!745, !746, !"cmpfunc: %a"}
!746 = distinct !{!746, !"cmpfunc"}
!747 = !{!748}
!748 = distinct !{!748, !746, !"cmpfunc: %b"}
!749 = !{!750}
!750 = distinct !{!750, !751, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!751 = distinct !{!751, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!752 = !{!753}
!753 = distinct !{!753, !751, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!754 = !{!750, !745, !740, !735}
!755 = !{!753, !748, !743, !738}
!756 = !{!757}
!757 = distinct !{!757, !758, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %a"}
!758 = distinct !{!758, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E"}
!759 = !{!760}
!760 = distinct !{!760, !758, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %b"}
!761 = !{!762}
!762 = distinct !{!762, !763, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 0"}
!763 = distinct !{!763, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E"}
!764 = !{!765}
!765 = distinct !{!765, !763, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 1"}
!766 = !{!767}
!767 = distinct !{!767, !768, !"cmpfunc: %a"}
!768 = distinct !{!768, !"cmpfunc"}
!769 = !{!770}
!770 = distinct !{!770, !768, !"cmpfunc: %b"}
!771 = !{!772}
!772 = distinct !{!772, !773, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!773 = distinct !{!773, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!774 = !{!775}
!775 = distinct !{!775, !773, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!776 = !{!772, !767, !762, !757}
!777 = !{!775, !770, !765, !760}
!778 = !{!779}
!779 = distinct !{!779, !780, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %a"}
!780 = distinct !{!780, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E"}
!781 = !{!782}
!782 = distinct !{!782, !780, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %b"}
!783 = !{!784}
!784 = distinct !{!784, !785, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 0"}
!785 = distinct !{!785, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E"}
!786 = !{!787}
!787 = distinct !{!787, !785, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 1"}
!788 = !{!789}
!789 = distinct !{!789, !790, !"cmpfunc: %a"}
!790 = distinct !{!790, !"cmpfunc"}
!791 = !{!792}
!792 = distinct !{!792, !790, !"cmpfunc: %b"}
!793 = !{!794}
!794 = distinct !{!794, !795, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!795 = distinct !{!795, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!796 = !{!797}
!797 = distinct !{!797, !795, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!798 = !{!794, !789, !784, !779}
!799 = !{!797, !792, !787, !782}
!800 = !{!801}
!801 = distinct !{!801, !802, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %a"}
!802 = distinct !{!802, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E"}
!803 = !{!804}
!804 = distinct !{!804, !802, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %b"}
!805 = !{!806}
!806 = distinct !{!806, !807, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 0"}
!807 = distinct !{!807, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E"}
!808 = !{!809}
!809 = distinct !{!809, !807, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 1"}
!810 = !{!811}
!811 = distinct !{!811, !812, !"cmpfunc: %a"}
!812 = distinct !{!812, !"cmpfunc"}
!813 = !{!814}
!814 = distinct !{!814, !812, !"cmpfunc: %b"}
!815 = !{!816}
!816 = distinct !{!816, !817, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!817 = distinct !{!817, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!818 = !{!819}
!819 = distinct !{!819, !817, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!820 = !{!816, !811, !806, !801}
!821 = !{!819, !814, !809, !804}
!822 = !{!823}
!823 = distinct !{!823, !824, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %a"}
!824 = distinct !{!824, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E"}
!825 = !{!826}
!826 = distinct !{!826, !824, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %b"}
!827 = !{!828}
!828 = distinct !{!828, !829, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 0"}
!829 = distinct !{!829, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E"}
!830 = !{!831}
!831 = distinct !{!831, !829, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 1"}
!832 = !{!833}
!833 = distinct !{!833, !834, !"cmpfunc: %a"}
!834 = distinct !{!834, !"cmpfunc"}
!835 = !{!836}
!836 = distinct !{!836, !834, !"cmpfunc: %b"}
!837 = !{!838}
!838 = distinct !{!838, !839, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!839 = distinct !{!839, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!840 = !{!841}
!841 = distinct !{!841, !839, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!842 = !{!838, !833, !828, !823}
!843 = !{!841, !836, !831, !826}
!844 = !{!845}
!845 = distinct !{!845, !846, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %a"}
!846 = distinct !{!846, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E"}
!847 = !{!848}
!848 = distinct !{!848, !846, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %b"}
!849 = !{!850}
!850 = distinct !{!850, !851, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 0"}
!851 = distinct !{!851, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E"}
!852 = !{!853}
!853 = distinct !{!853, !851, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 1"}
!854 = !{!855}
!855 = distinct !{!855, !856, !"cmpfunc: %a"}
!856 = distinct !{!856, !"cmpfunc"}
!857 = !{!858}
!858 = distinct !{!858, !856, !"cmpfunc: %b"}
!859 = !{!860}
!860 = distinct !{!860, !861, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!861 = distinct !{!861, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!862 = !{!863}
!863 = distinct !{!863, !861, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!864 = !{!860, !855, !850, !845}
!865 = !{!863, !858, !853, !848}
!866 = !{!867}
!867 = distinct !{!867, !868, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %a"}
!868 = distinct !{!868, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E"}
!869 = !{!870}
!870 = distinct !{!870, !868, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %b"}
!871 = !{!872}
!872 = distinct !{!872, !873, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 0"}
!873 = distinct !{!873, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E"}
!874 = !{!875}
!875 = distinct !{!875, !873, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 1"}
!876 = !{!877}
!877 = distinct !{!877, !878, !"cmpfunc: %a"}
!878 = distinct !{!878, !"cmpfunc"}
!879 = !{!880}
!880 = distinct !{!880, !878, !"cmpfunc: %b"}
!881 = !{!882}
!882 = distinct !{!882, !883, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!883 = distinct !{!883, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!884 = !{!885}
!885 = distinct !{!885, !883, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!886 = !{!882, !877, !872, !867}
!887 = !{!885, !880, !875, !870}
!888 = !{!889}
!889 = distinct !{!889, !890, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %a"}
!890 = distinct !{!890, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E"}
!891 = !{!892}
!892 = distinct !{!892, !890, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %b"}
!893 = !{!894}
!894 = distinct !{!894, !895, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 0"}
!895 = distinct !{!895, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E"}
!896 = !{!897}
!897 = distinct !{!897, !895, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 1"}
!898 = !{!899}
!899 = distinct !{!899, !900, !"cmpfunc: %a"}
!900 = distinct !{!900, !"cmpfunc"}
!901 = !{!902}
!902 = distinct !{!902, !900, !"cmpfunc: %b"}
!903 = !{!904}
!904 = distinct !{!904, !905, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!905 = distinct !{!905, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!906 = !{!907}
!907 = distinct !{!907, !905, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!908 = !{!904, !899, !894, !889}
!909 = !{!907, !902, !897, !892}
!910 = !{!911}
!911 = distinct !{!911, !912, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %a"}
!912 = distinct !{!912, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E"}
!913 = !{!914}
!914 = distinct !{!914, !912, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %b"}
!915 = !{!916}
!916 = distinct !{!916, !917, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 0"}
!917 = distinct !{!917, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E"}
!918 = !{!919}
!919 = distinct !{!919, !917, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 1"}
!920 = !{!921}
!921 = distinct !{!921, !922, !"cmpfunc: %a"}
!922 = distinct !{!922, !"cmpfunc"}
!923 = !{!924}
!924 = distinct !{!924, !922, !"cmpfunc: %b"}
!925 = !{!926}
!926 = distinct !{!926, !927, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!927 = distinct !{!927, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!928 = !{!929}
!929 = distinct !{!929, !927, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!930 = !{!926, !921, !916, !911}
!931 = !{!929, !924, !919, !914}
!932 = !{!933}
!933 = distinct !{!933, !934, !"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17hcdd491a175230b91E: %self.0"}
!934 = distinct !{!934, !"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17hcdd491a175230b91E"}
!935 = !{!936}
!936 = distinct !{!936, !937, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h2eab821d233d23dcE: %v.0"}
!937 = distinct !{!937, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h2eab821d233d23dcE"}
!938 = !{!939}
!939 = distinct !{!939, !940, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %a"}
!940 = distinct !{!940, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E"}
!941 = !{!942}
!942 = distinct !{!942, !940, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %b"}
!943 = !{!944}
!944 = distinct !{!944, !945, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 0"}
!945 = distinct !{!945, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E"}
!946 = !{!947}
!947 = distinct !{!947, !948, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h8f57d3b530d10981E: %_0"}
!948 = distinct !{!948, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h8f57d3b530d10981E"}
!949 = !{!950}
!950 = distinct !{!950, !945, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 1"}
!951 = !{!952}
!952 = distinct !{!952, !953, !"cmpfunc: %a"}
!953 = distinct !{!953, !"cmpfunc"}
!954 = !{!955}
!955 = distinct !{!955, !953, !"cmpfunc: %b"}
!956 = !{!957}
!957 = distinct !{!957, !958, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!958 = distinct !{!958, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!959 = !{!960}
!960 = distinct !{!960, !958, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!961 = !{!957, !952, !944, !939, !936}
!962 = !{!960, !955, !950, !942, !947}
!963 = !{!960, !955, !950, !942, !936}
!964 = !{!957, !952, !944, !939, !947}
!965 = !{!947, !966, !936}
!966 = distinct !{!966, !948, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h8f57d3b530d10981E: %is_less"}
!967 = !{!968}
!968 = distinct !{!968, !969, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %a"}
!969 = distinct !{!969, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E"}
!970 = !{!971}
!971 = distinct !{!971, !969, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %b"}
!972 = !{!973}
!973 = distinct !{!973, !974, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 0"}
!974 = distinct !{!974, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E"}
!975 = !{!976}
!976 = distinct !{!976, !977, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h343838c0fb37b4d6E: %_0"}
!977 = distinct !{!977, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h343838c0fb37b4d6E"}
!978 = !{!979}
!979 = distinct !{!979, !974, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 1"}
!980 = !{!981}
!981 = distinct !{!981, !982, !"cmpfunc: %a"}
!982 = distinct !{!982, !"cmpfunc"}
!983 = !{!984}
!984 = distinct !{!984, !982, !"cmpfunc: %b"}
!985 = !{!986}
!986 = distinct !{!986, !987, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!987 = distinct !{!987, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!988 = !{!989}
!989 = distinct !{!989, !987, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!990 = !{!986, !981, !973, !968, !936}
!991 = !{!989, !984, !979, !971, !976}
!992 = !{!989, !984, !979, !971, !936}
!993 = !{!986, !981, !973, !968, !976}
!994 = !{!976, !995, !936}
!995 = distinct !{!995, !977, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h343838c0fb37b4d6E: %is_less"}
!996 = !{!997, !999}
!997 = distinct !{!997, !998, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2ccb70add1df79ceE: %self"}
!998 = distinct !{!998, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2ccb70add1df79ceE"}
!999 = distinct !{!999, !1000, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h9a594e74a7a4c60eE: %_1"}
!1000 = distinct !{!1000, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h9a594e74a7a4c60eE"}
!1001 = !{!1002, !1004, !1006, !1008}
!1002 = distinct !{!1002, !1003, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1003 = distinct !{!1003, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1004 = distinct !{!1004, !1005, !"cmpfunc: %b"}
!1005 = distinct !{!1005, !"cmpfunc"}
!1006 = distinct !{!1006, !1007, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 1"}
!1007 = distinct !{!1007, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E"}
!1008 = distinct !{!1008, !1009, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %b"}
!1009 = distinct !{!1009, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E"}
!1010 = !{!1011, !1012, !1013, !1014}
!1011 = distinct !{!1011, !1003, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1012 = distinct !{!1012, !1005, !"cmpfunc: %a"}
!1013 = distinct !{!1013, !1007, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 0"}
!1014 = distinct !{!1014, !1009, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %a"}
!1015 = !{!1016, !1018, !1020, !1022}
!1016 = distinct !{!1016, !1017, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1017 = distinct !{!1017, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1018 = distinct !{!1018, !1019, !"cmpfunc: %b"}
!1019 = distinct !{!1019, !"cmpfunc"}
!1020 = distinct !{!1020, !1021, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 1"}
!1021 = distinct !{!1021, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E"}
!1022 = distinct !{!1022, !1023, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %b"}
!1023 = distinct !{!1023, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E"}
!1024 = !{!1025, !1026, !1027, !1028}
!1025 = distinct !{!1025, !1017, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1026 = distinct !{!1026, !1019, !"cmpfunc: %a"}
!1027 = distinct !{!1027, !1021, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 0"}
!1028 = distinct !{!1028, !1023, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %a"}
!1029 = !{!1030, !1032}
!1030 = distinct !{!1030, !1031, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2ccb70add1df79ceE: %self"}
!1031 = distinct !{!1031, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2ccb70add1df79ceE"}
!1032 = distinct !{!1032, !1033, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h9a594e74a7a4c60eE: %_1"}
!1033 = distinct !{!1033, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h9a594e74a7a4c60eE"}
!1034 = !{!1035}
!1035 = distinct !{!1035, !1036, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h896b9b83c9d4207fE: %_0"}
!1036 = distinct !{!1036, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h896b9b83c9d4207fE"}
!1037 = !{i64 0, i64 2}
!1038 = !{i64 0, i64 -9223372036854775807}
!1039 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!1040 = !{!1041}
!1041 = distinct !{!1041, !1042, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %a"}
!1042 = distinct !{!1042, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E"}
!1043 = !{!1044}
!1044 = distinct !{!1044, !1042, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %b"}
!1045 = !{!1046}
!1046 = distinct !{!1046, !1047, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 0"}
!1047 = distinct !{!1047, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E"}
!1048 = !{!1049}
!1049 = distinct !{!1049, !1047, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 1"}
!1050 = !{!1051}
!1051 = distinct !{!1051, !1052, !"cmpfunc: %a"}
!1052 = distinct !{!1052, !"cmpfunc"}
!1053 = !{!1054}
!1054 = distinct !{!1054, !1052, !"cmpfunc: %b"}
!1055 = !{!1056}
!1056 = distinct !{!1056, !1057, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1057 = distinct !{!1057, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1058 = !{!1059}
!1059 = distinct !{!1059, !1057, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1060 = !{!1056, !1051, !1046, !1041}
!1061 = !{!1059, !1054, !1049, !1044}
!1062 = !{!1063}
!1063 = distinct !{!1063, !1064, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %a"}
!1064 = distinct !{!1064, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E"}
!1065 = !{!1066}
!1066 = distinct !{!1066, !1064, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %b"}
!1067 = !{!1068}
!1068 = distinct !{!1068, !1069, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 0"}
!1069 = distinct !{!1069, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E"}
!1070 = !{!1071}
!1071 = distinct !{!1071, !1069, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 1"}
!1072 = !{!1073}
!1073 = distinct !{!1073, !1074, !"cmpfunc: %a"}
!1074 = distinct !{!1074, !"cmpfunc"}
!1075 = !{!1076}
!1076 = distinct !{!1076, !1074, !"cmpfunc: %b"}
!1077 = !{!1078}
!1078 = distinct !{!1078, !1079, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1079 = distinct !{!1079, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1080 = !{!1081}
!1081 = distinct !{!1081, !1079, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1082 = !{!1078, !1073, !1068, !1063}
!1083 = !{!1081, !1076, !1071, !1066}
!1084 = !{!1085}
!1085 = distinct !{!1085, !1086, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %a"}
!1086 = distinct !{!1086, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E"}
!1087 = !{!1088}
!1088 = distinct !{!1088, !1086, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %b"}
!1089 = !{!1090}
!1090 = distinct !{!1090, !1091, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 0"}
!1091 = distinct !{!1091, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E"}
!1092 = !{!1093}
!1093 = distinct !{!1093, !1091, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 1"}
!1094 = !{!1095}
!1095 = distinct !{!1095, !1096, !"cmpfunc: %a"}
!1096 = distinct !{!1096, !"cmpfunc"}
!1097 = !{!1098}
!1098 = distinct !{!1098, !1096, !"cmpfunc: %b"}
!1099 = !{!1100}
!1100 = distinct !{!1100, !1101, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1101 = distinct !{!1101, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1102 = !{!1103}
!1103 = distinct !{!1103, !1101, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1104 = !{!1100, !1095, !1090, !1085}
!1105 = !{!1103, !1098, !1093, !1088}
!1106 = !{!1107, !1109}
!1107 = distinct !{!1107, !1108, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17h8eef0e32148cb544E: %a.0"}
!1108 = distinct !{!1108, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17h8eef0e32148cb544E"}
!1109 = distinct !{!1109, !1110, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h942427f3d86b6681E: %self.0"}
!1110 = distinct !{!1110, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h942427f3d86b6681E"}
!1111 = !{!1112}
!1112 = distinct !{!1112, !1108, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17h8eef0e32148cb544E: %b.0"}
!1113 = !{!1112, !1109}
!1114 = !{!1107}
!1115 = !{!1116}
!1116 = distinct !{!1116, !1117, !"_ZN4core5slice4sort6stable5merge5merge17hbfe8b0a84467d755E: %v.0"}
!1117 = distinct !{!1117, !"_ZN4core5slice4sort6stable5merge5merge17hbfe8b0a84467d755E"}
!1118 = !{!1119}
!1119 = distinct !{!1119, !1117, !"_ZN4core5slice4sort6stable5merge5merge17hbfe8b0a84467d755E: %scratch.0"}
!1120 = !{!1116, !1119}
!1121 = !{!1122}
!1122 = distinct !{!1122, !1123, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %a"}
!1123 = distinct !{!1123, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E"}
!1124 = !{!1125}
!1125 = distinct !{!1125, !1123, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %b"}
!1126 = !{!1127}
!1127 = distinct !{!1127, !1128, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 0"}
!1128 = distinct !{!1128, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E"}
!1129 = !{!1130}
!1130 = distinct !{!1130, !1128, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 1"}
!1131 = !{!1132}
!1132 = distinct !{!1132, !1133, !"cmpfunc: %a"}
!1133 = distinct !{!1133, !"cmpfunc"}
!1134 = !{!1135}
!1135 = distinct !{!1135, !1133, !"cmpfunc: %b"}
!1136 = !{!1137}
!1137 = distinct !{!1137, !1138, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1138 = distinct !{!1138, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1139 = !{!1140}
!1140 = distinct !{!1140, !1138, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1141 = !{!1137, !1132, !1127, !1122, !1119}
!1142 = !{!1140, !1135, !1130, !1125, !1143, !1116}
!1143 = distinct !{!1143, !1144, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h9961e4dba1a0fcb7E: %self"}
!1144 = distinct !{!1144, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h9961e4dba1a0fcb7E"}
!1145 = !{!1140, !1135, !1130, !1125, !1116}
!1146 = !{!1137, !1132, !1127, !1122, !1143, !1119}
!1147 = !{!1143, !1119}
!1148 = !{!1149}
!1149 = distinct !{!1149, !1150, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %a"}
!1150 = distinct !{!1150, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E"}
!1151 = !{!1152}
!1152 = distinct !{!1152, !1150, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %b"}
!1153 = !{!1154}
!1154 = distinct !{!1154, !1155, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 0"}
!1155 = distinct !{!1155, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E"}
!1156 = !{!1157}
!1157 = distinct !{!1157, !1155, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 1"}
!1158 = !{!1159}
!1159 = distinct !{!1159, !1160, !"cmpfunc: %a"}
!1160 = distinct !{!1160, !"cmpfunc"}
!1161 = !{!1162}
!1162 = distinct !{!1162, !1160, !"cmpfunc: %b"}
!1163 = !{!1164}
!1164 = distinct !{!1164, !1165, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1165 = distinct !{!1165, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1166 = !{!1167}
!1167 = distinct !{!1167, !1165, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1168 = !{!1164, !1159, !1154, !1149, !1116}
!1169 = !{!1167, !1162, !1157, !1152, !1170, !1119}
!1170 = distinct !{!1170, !1171, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h7df0f27fc86e26baE: %self"}
!1171 = distinct !{!1171, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h7df0f27fc86e26baE"}
!1172 = !{!1167, !1162, !1157, !1152, !1119}
!1173 = !{!1164, !1159, !1154, !1149, !1170, !1116}
!1174 = !{!1170, !1119}
!1175 = !{!1176, !1178}
!1176 = distinct !{!1176, !1177, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd21f88a1f402bcbfE: %self"}
!1177 = distinct !{!1177, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd21f88a1f402bcbfE"}
!1178 = distinct !{!1178, !1179, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17had3fbc3c0d1c5ab6E: %_1"}
!1179 = distinct !{!1179, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17had3fbc3c0d1c5ab6E"}
!1180 = !{!1181}
!1181 = distinct !{!1181, !1182, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %a"}
!1182 = distinct !{!1182, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E"}
!1183 = !{!1184}
!1184 = distinct !{!1184, !1182, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %b"}
!1185 = !{!1186}
!1186 = distinct !{!1186, !1187, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 0"}
!1187 = distinct !{!1187, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E"}
!1188 = !{!1189}
!1189 = distinct !{!1189, !1187, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 1"}
!1190 = !{!1191}
!1191 = distinct !{!1191, !1192, !"cmpfunc: %a"}
!1192 = distinct !{!1192, !"cmpfunc"}
!1193 = !{!1194}
!1194 = distinct !{!1194, !1192, !"cmpfunc: %b"}
!1195 = !{!1196}
!1196 = distinct !{!1196, !1197, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1197 = distinct !{!1197, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1198 = !{!1199}
!1199 = distinct !{!1199, !1197, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1200 = !{!1196, !1191, !1186, !1181}
!1201 = !{!1199, !1194, !1189, !1184}
!1202 = !{!1203}
!1203 = distinct !{!1203, !1204, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %a"}
!1204 = distinct !{!1204, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E"}
!1205 = !{!1206}
!1206 = distinct !{!1206, !1204, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %b"}
!1207 = !{!1208}
!1208 = distinct !{!1208, !1209, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 0"}
!1209 = distinct !{!1209, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E"}
!1210 = !{!1211}
!1211 = distinct !{!1211, !1209, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 1"}
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
!1225 = distinct !{!1225, !1226, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %a"}
!1226 = distinct !{!1226, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E"}
!1227 = !{!1228}
!1228 = distinct !{!1228, !1226, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %b"}
!1229 = !{!1230}
!1230 = distinct !{!1230, !1231, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 0"}
!1231 = distinct !{!1231, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E"}
!1232 = !{!1233}
!1233 = distinct !{!1233, !1231, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 1"}
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
!1245 = !{!1243, !1238, !1233, !1228, !1246}
!1246 = distinct !{!1246, !1247, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h9961e4dba1a0fcb7E: %self"}
!1247 = distinct !{!1247, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h9961e4dba1a0fcb7E"}
!1248 = !{!1243, !1238, !1233, !1228}
!1249 = !{!1240, !1235, !1230, !1225, !1246}
!1250 = !{!1246}
!1251 = !{!1252}
!1252 = distinct !{!1252, !1253, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %a"}
!1253 = distinct !{!1253, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E"}
!1254 = !{!1255}
!1255 = distinct !{!1255, !1253, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %b"}
!1256 = !{!1257}
!1257 = distinct !{!1257, !1258, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 0"}
!1258 = distinct !{!1258, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E"}
!1259 = !{!1260}
!1260 = distinct !{!1260, !1258, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 1"}
!1261 = !{!1262}
!1262 = distinct !{!1262, !1263, !"cmpfunc: %a"}
!1263 = distinct !{!1263, !"cmpfunc"}
!1264 = !{!1265}
!1265 = distinct !{!1265, !1263, !"cmpfunc: %b"}
!1266 = !{!1267}
!1267 = distinct !{!1267, !1268, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1268 = distinct !{!1268, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1269 = !{!1270}
!1270 = distinct !{!1270, !1268, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1271 = !{!1267, !1262, !1257, !1252}
!1272 = !{!1270, !1265, !1260, !1255, !1273}
!1273 = distinct !{!1273, !1274, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h7df0f27fc86e26baE: %self"}
!1274 = distinct !{!1274, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h7df0f27fc86e26baE"}
!1275 = !{!1270, !1265, !1260, !1255}
!1276 = !{!1267, !1262, !1257, !1252, !1273}
!1277 = !{!1273}
!1278 = !{!1279, !1281}
!1279 = distinct !{!1279, !1280, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd21f88a1f402bcbfE: %self"}
!1280 = distinct !{!1280, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd21f88a1f402bcbfE"}
!1281 = distinct !{!1281, !1282, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17had3fbc3c0d1c5ab6E: %_1"}
!1282 = distinct !{!1282, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17had3fbc3c0d1c5ab6E"}
!1283 = !{!"branch_weights", i32 4000000, i32 4001}
!1284 = !{!1285}
!1285 = distinct !{!1285, !1286, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %a"}
!1286 = distinct !{!1286, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E"}
!1287 = !{!1288}
!1288 = distinct !{!1288, !1286, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %b"}
!1289 = !{!1290}
!1290 = distinct !{!1290, !1291, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 0"}
!1291 = distinct !{!1291, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E"}
!1292 = !{!1293}
!1293 = distinct !{!1293, !1291, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 1"}
!1294 = !{!1295}
!1295 = distinct !{!1295, !1296, !"cmpfunc: %a"}
!1296 = distinct !{!1296, !"cmpfunc"}
!1297 = !{!1298}
!1298 = distinct !{!1298, !1296, !"cmpfunc: %b"}
!1299 = !{!1300}
!1300 = distinct !{!1300, !1301, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1301 = distinct !{!1301, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1302 = !{!1303}
!1303 = distinct !{!1303, !1301, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1304 = !{!1300, !1295, !1290, !1285}
!1305 = !{!1303, !1298, !1293, !1288}
!1306 = !{!1307}
!1307 = distinct !{!1307, !1308, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he7d3f9b93507f124E: %self"}
!1308 = distinct !{!1308, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he7d3f9b93507f124E"}
!1309 = !{!1310}
!1310 = distinct !{!1310, !1311, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %a"}
!1311 = distinct !{!1311, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E"}
!1312 = !{!1313}
!1313 = distinct !{!1313, !1311, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %b"}
!1314 = !{!1315}
!1315 = distinct !{!1315, !1316, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 0"}
!1316 = distinct !{!1316, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E"}
!1317 = !{!1318}
!1318 = distinct !{!1318, !1316, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 1"}
!1319 = !{!1320}
!1320 = distinct !{!1320, !1321, !"cmpfunc: %a"}
!1321 = distinct !{!1321, !"cmpfunc"}
!1322 = !{!1323}
!1323 = distinct !{!1323, !1321, !"cmpfunc: %b"}
!1324 = !{!1325}
!1325 = distinct !{!1325, !1326, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1326 = distinct !{!1326, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1327 = !{!1328}
!1328 = distinct !{!1328, !1326, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1329 = !{!1325, !1320, !1315, !1310}
!1330 = !{!1328, !1323, !1318, !1313}
!1331 = !{!1332}
!1332 = distinct !{!1332, !1333, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he7d3f9b93507f124E: %self"}
!1333 = distinct !{!1333, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he7d3f9b93507f124E"}
!1334 = !{!1335}
!1335 = distinct !{!1335, !1336, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %a"}
!1336 = distinct !{!1336, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E"}
!1337 = !{!1338}
!1338 = distinct !{!1338, !1336, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %b"}
!1339 = !{!1340}
!1340 = distinct !{!1340, !1341, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 0"}
!1341 = distinct !{!1341, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E"}
!1342 = !{!1343}
!1343 = distinct !{!1343, !1341, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 1"}
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
!1357 = distinct !{!1357, !1358, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he7d3f9b93507f124E: %self"}
!1358 = distinct !{!1358, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he7d3f9b93507f124E"}
!1359 = !{!1360}
!1360 = distinct !{!1360, !1361, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %a"}
!1361 = distinct !{!1361, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E"}
!1362 = !{!1363}
!1363 = distinct !{!1363, !1361, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %b"}
!1364 = !{!1365}
!1365 = distinct !{!1365, !1366, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 0"}
!1366 = distinct !{!1366, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E"}
!1367 = !{!1368}
!1368 = distinct !{!1368, !1366, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 1"}
!1369 = !{!1370}
!1370 = distinct !{!1370, !1371, !"cmpfunc: %a"}
!1371 = distinct !{!1371, !"cmpfunc"}
!1372 = !{!1373}
!1373 = distinct !{!1373, !1371, !"cmpfunc: %b"}
!1374 = !{!1375}
!1375 = distinct !{!1375, !1376, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1376 = distinct !{!1376, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1377 = !{!1378}
!1378 = distinct !{!1378, !1376, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1379 = !{!1375, !1370, !1365, !1360}
!1380 = !{!1378, !1373, !1368, !1363}
!1381 = !{!1382}
!1382 = distinct !{!1382, !1383, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he7d3f9b93507f124E: %self"}
!1383 = distinct !{!1383, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he7d3f9b93507f124E"}
!1384 = !{!1385}
!1385 = distinct !{!1385, !1386, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %a"}
!1386 = distinct !{!1386, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E"}
!1387 = !{!1388}
!1388 = distinct !{!1388, !1386, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %b"}
!1389 = !{!1390}
!1390 = distinct !{!1390, !1391, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 0"}
!1391 = distinct !{!1391, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E"}
!1392 = !{!1393}
!1393 = distinct !{!1393, !1391, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 1"}
!1394 = !{!1395}
!1395 = distinct !{!1395, !1396, !"cmpfunc: %a"}
!1396 = distinct !{!1396, !"cmpfunc"}
!1397 = !{!1398}
!1398 = distinct !{!1398, !1396, !"cmpfunc: %b"}
!1399 = !{!1400}
!1400 = distinct !{!1400, !1401, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1401 = distinct !{!1401, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1402 = !{!1403}
!1403 = distinct !{!1403, !1401, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1404 = !{!1400, !1395, !1390, !1385}
!1405 = !{!1403, !1398, !1393, !1388}
!1406 = !{!1407}
!1407 = distinct !{!1407, !1408, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he7d3f9b93507f124E: %self"}
!1408 = distinct !{!1408, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he7d3f9b93507f124E"}
!1409 = !{!1410}
!1410 = distinct !{!1410, !1411, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he7d3f9b93507f124E: %self"}
!1411 = distinct !{!1411, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he7d3f9b93507f124E"}
!1412 = distinct !{!1412, !1413}
!1413 = !{!"llvm.loop.unroll.disable"}
!1414 = !{!1415}
!1415 = distinct !{!1415, !1416, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hd32305c2e60ead21E: %a"}
!1416 = distinct !{!1416, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hd32305c2e60ead21E"}
!1417 = !{!1418}
!1418 = distinct !{!1418, !1416, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hd32305c2e60ead21E: %b"}
!1419 = !{!1420}
!1420 = distinct !{!1420, !1421, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %a"}
!1421 = distinct !{!1421, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E"}
!1422 = !{!1423}
!1423 = distinct !{!1423, !1421, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %b"}
!1424 = !{!1425}
!1425 = distinct !{!1425, !1426, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 0"}
!1426 = distinct !{!1426, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E"}
!1427 = !{!1428}
!1428 = distinct !{!1428, !1426, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 1"}
!1429 = !{!1430}
!1430 = distinct !{!1430, !1431, !"cmpfunc: %a"}
!1431 = distinct !{!1431, !"cmpfunc"}
!1432 = !{!1433}
!1433 = distinct !{!1433, !1431, !"cmpfunc: %b"}
!1434 = !{!1435}
!1435 = distinct !{!1435, !1436, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1436 = distinct !{!1436, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1437 = !{!1438}
!1438 = distinct !{!1438, !1436, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1439 = !{!1435, !1430, !1425, !1420, !1418}
!1440 = !{!1438, !1433, !1428, !1423, !1415}
!1441 = !{!1442}
!1442 = distinct !{!1442, !1443, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he7d3f9b93507f124E: %self"}
!1443 = distinct !{!1443, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he7d3f9b93507f124E"}
!1444 = !{!1445}
!1445 = distinct !{!1445, !1446, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hd32305c2e60ead21E: %a"}
!1446 = distinct !{!1446, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hd32305c2e60ead21E"}
!1447 = !{!1448}
!1448 = distinct !{!1448, !1446, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hd32305c2e60ead21E: %b"}
!1449 = !{!1450}
!1450 = distinct !{!1450, !1451, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %a"}
!1451 = distinct !{!1451, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E"}
!1452 = !{!1453}
!1453 = distinct !{!1453, !1451, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %b"}
!1454 = !{!1455}
!1455 = distinct !{!1455, !1456, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 0"}
!1456 = distinct !{!1456, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E"}
!1457 = !{!1458}
!1458 = distinct !{!1458, !1456, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 1"}
!1459 = !{!1460}
!1460 = distinct !{!1460, !1461, !"cmpfunc: %a"}
!1461 = distinct !{!1461, !"cmpfunc"}
!1462 = !{!1463}
!1463 = distinct !{!1463, !1461, !"cmpfunc: %b"}
!1464 = !{!1465}
!1465 = distinct !{!1465, !1466, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1466 = distinct !{!1466, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1467 = !{!1468}
!1468 = distinct !{!1468, !1466, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1469 = !{!1465, !1460, !1455, !1450, !1448}
!1470 = !{!1468, !1463, !1458, !1453, !1445}
!1471 = !{!1472}
!1472 = distinct !{!1472, !1473, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he7d3f9b93507f124E: %self"}
!1473 = distinct !{!1473, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he7d3f9b93507f124E"}
!1474 = !{!1475}
!1475 = distinct !{!1475, !1476, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hd32305c2e60ead21E: %a"}
!1476 = distinct !{!1476, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hd32305c2e60ead21E"}
!1477 = !{!1478}
!1478 = distinct !{!1478, !1476, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hd32305c2e60ead21E: %b"}
!1479 = !{!1480}
!1480 = distinct !{!1480, !1481, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %a"}
!1481 = distinct !{!1481, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E"}
!1482 = !{!1483}
!1483 = distinct !{!1483, !1481, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %b"}
!1484 = !{!1485}
!1485 = distinct !{!1485, !1486, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 0"}
!1486 = distinct !{!1486, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E"}
!1487 = !{!1488}
!1488 = distinct !{!1488, !1486, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 1"}
!1489 = !{!1490}
!1490 = distinct !{!1490, !1491, !"cmpfunc: %a"}
!1491 = distinct !{!1491, !"cmpfunc"}
!1492 = !{!1493}
!1493 = distinct !{!1493, !1491, !"cmpfunc: %b"}
!1494 = !{!1495}
!1495 = distinct !{!1495, !1496, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1496 = distinct !{!1496, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1497 = !{!1498}
!1498 = distinct !{!1498, !1496, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1499 = !{!1495, !1490, !1485, !1480, !1478}
!1500 = !{!1498, !1493, !1488, !1483, !1475}
!1501 = !{!1502}
!1502 = distinct !{!1502, !1503, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he7d3f9b93507f124E: %self"}
!1503 = distinct !{!1503, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he7d3f9b93507f124E"}
!1504 = !{!1505}
!1505 = distinct !{!1505, !1506, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hd32305c2e60ead21E: %a"}
!1506 = distinct !{!1506, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hd32305c2e60ead21E"}
!1507 = !{!1508}
!1508 = distinct !{!1508, !1506, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hd32305c2e60ead21E: %b"}
!1509 = !{!1510}
!1510 = distinct !{!1510, !1511, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %a"}
!1511 = distinct !{!1511, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E"}
!1512 = !{!1513}
!1513 = distinct !{!1513, !1511, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %b"}
!1514 = !{!1515}
!1515 = distinct !{!1515, !1516, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 0"}
!1516 = distinct !{!1516, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E"}
!1517 = !{!1518}
!1518 = distinct !{!1518, !1516, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 1"}
!1519 = !{!1520}
!1520 = distinct !{!1520, !1521, !"cmpfunc: %a"}
!1521 = distinct !{!1521, !"cmpfunc"}
!1522 = !{!1523}
!1523 = distinct !{!1523, !1521, !"cmpfunc: %b"}
!1524 = !{!1525}
!1525 = distinct !{!1525, !1526, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1526 = distinct !{!1526, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1527 = !{!1528}
!1528 = distinct !{!1528, !1526, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1529 = !{!1525, !1520, !1515, !1510, !1508}
!1530 = !{!1528, !1523, !1518, !1513, !1505}
!1531 = !{!1532}
!1532 = distinct !{!1532, !1533, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he7d3f9b93507f124E: %self"}
!1533 = distinct !{!1533, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he7d3f9b93507f124E"}
!1534 = !{!1535}
!1535 = distinct !{!1535, !1536, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hd32305c2e60ead21E: %a"}
!1536 = distinct !{!1536, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hd32305c2e60ead21E"}
!1537 = !{!1538}
!1538 = distinct !{!1538, !1536, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hd32305c2e60ead21E: %b"}
!1539 = !{!1540}
!1540 = distinct !{!1540, !1541, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %a"}
!1541 = distinct !{!1541, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E"}
!1542 = !{!1543}
!1543 = distinct !{!1543, !1541, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %b"}
!1544 = !{!1545}
!1545 = distinct !{!1545, !1546, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 0"}
!1546 = distinct !{!1546, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E"}
!1547 = !{!1548}
!1548 = distinct !{!1548, !1546, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 1"}
!1549 = !{!1550}
!1550 = distinct !{!1550, !1551, !"cmpfunc: %a"}
!1551 = distinct !{!1551, !"cmpfunc"}
!1552 = !{!1553}
!1553 = distinct !{!1553, !1551, !"cmpfunc: %b"}
!1554 = !{!1555}
!1555 = distinct !{!1555, !1556, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1556 = distinct !{!1556, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1557 = !{!1558}
!1558 = distinct !{!1558, !1556, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1559 = !{!1555, !1550, !1545, !1540, !1538}
!1560 = !{!1558, !1553, !1548, !1543, !1535}
!1561 = !{!1562}
!1562 = distinct !{!1562, !1563, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he7d3f9b93507f124E: %self"}
!1563 = distinct !{!1563, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he7d3f9b93507f124E"}
!1564 = !{!1565}
!1565 = distinct !{!1565, !1566, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he7d3f9b93507f124E: %self"}
!1566 = distinct !{!1566, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he7d3f9b93507f124E"}
!1567 = distinct !{!1567, !1413}
!1568 = !{!1569}
!1569 = distinct !{!1569, !1570, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %a"}
!1570 = distinct !{!1570, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E"}
!1571 = !{!1572}
!1572 = distinct !{!1572, !1570, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %b"}
!1573 = !{!1574}
!1574 = distinct !{!1574, !1575, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 0"}
!1575 = distinct !{!1575, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E"}
!1576 = !{!1577}
!1577 = distinct !{!1577, !1578, !"_ZN4core5slice4sort6shared5pivot7median317had417e5ad4aa9185E: %c"}
!1578 = distinct !{!1578, !"_ZN4core5slice4sort6shared5pivot7median317had417e5ad4aa9185E"}
!1579 = !{!1580}
!1580 = distinct !{!1580, !1575, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 1"}
!1581 = !{!1582}
!1582 = distinct !{!1582, !1583, !"cmpfunc: %a"}
!1583 = distinct !{!1583, !"cmpfunc"}
!1584 = !{!1585}
!1585 = distinct !{!1585, !1583, !"cmpfunc: %b"}
!1586 = !{!1587}
!1587 = distinct !{!1587, !1588, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1588 = distinct !{!1588, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1589 = !{!1590}
!1590 = distinct !{!1590, !1588, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1591 = !{!1587, !1582, !1574, !1569, !1592}
!1592 = distinct !{!1592, !1593, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h9de9e5da55815d47E: %v.0"}
!1593 = distinct !{!1593, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h9de9e5da55815d47E"}
!1594 = !{!1590, !1585, !1580, !1572, !1577, !1595}
!1595 = distinct !{!1595, !1593, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h9de9e5da55815d47E: %is_less"}
!1596 = !{!1590, !1585, !1580, !1572, !1592}
!1597 = !{!1587, !1582, !1574, !1569, !1577, !1595}
!1598 = !{!1599, !1601, !1603, !1605, !1592}
!1599 = distinct !{!1599, !1600, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1600 = distinct !{!1600, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1601 = distinct !{!1601, !1602, !"cmpfunc: %b"}
!1602 = distinct !{!1602, !"cmpfunc"}
!1603 = distinct !{!1603, !1604, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 1"}
!1604 = distinct !{!1604, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E"}
!1605 = distinct !{!1605, !1606, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %b"}
!1606 = distinct !{!1606, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E"}
!1607 = !{!1608, !1609, !1610, !1611, !1595}
!1608 = distinct !{!1608, !1600, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1609 = distinct !{!1609, !1602, !"cmpfunc: %a"}
!1610 = distinct !{!1610, !1604, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 0"}
!1611 = distinct !{!1611, !1606, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %a"}
!1612 = !{!1613, !1615, !1617, !1619}
!1613 = distinct !{!1613, !1614, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1614 = distinct !{!1614, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1615 = distinct !{!1615, !1616, !"cmpfunc: %a"}
!1616 = distinct !{!1616, !"cmpfunc"}
!1617 = distinct !{!1617, !1618, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 0"}
!1618 = distinct !{!1618, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E"}
!1619 = distinct !{!1619, !1620, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %a"}
!1620 = distinct !{!1620, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E"}
!1621 = !{!1622, !1623, !1624, !1625}
!1622 = distinct !{!1622, !1614, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1623 = distinct !{!1623, !1616, !"cmpfunc: %b"}
!1624 = distinct !{!1624, !1618, !"_ZN4core3ops8function5FnMut8call_mut17h1050fe5aa29cd628E: argument 1"}
!1625 = distinct !{!1625, !1620, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he50cf53bf938f705E: %b"}
!1626 = !{!1627, !1629}
!1627 = distinct !{!1627, !1628, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h643fc4f64ac43e04E: %pair"}
!1628 = distinct !{!1628, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h643fc4f64ac43e04E"}
!1629 = distinct !{!1629, !1628, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h643fc4f64ac43e04E: %self.0"}
!1630 = !{i64 0, i64 -9223372036854775808}
!1631 = !{!1632}
!1632 = distinct !{!1632, !1633, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1633 = distinct !{!1633, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1634 = !{!1635}
!1635 = distinct !{!1635, !1633, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1636 = !{!1637}
!1637 = distinct !{!1637, !1638, !"_ZN5alloc6string6String3len17hc147619d2ad1db0cE: %self"}
!1638 = distinct !{!1638, !"_ZN5alloc6string6String3len17hc147619d2ad1db0cE"}
!1639 = !{!1640}
!1640 = distinct !{!1640, !1641, !"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he0433e3c615fe12fE: %self"}
!1641 = distinct !{!1641, !"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he0433e3c615fe12fE"}
!1642 = !{!1643, !1645}
!1643 = distinct !{!1643, !1644, !"_ZN4core3str6traits110_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeTo$LT$usize$GT$$GT$3get17hd907b95d9410f36eE: %slice.0"}
!1644 = distinct !{!1644, !"_ZN4core3str6traits110_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeTo$LT$usize$GT$$GT$3get17hd907b95d9410f36eE"}
!1645 = distinct !{!1645, !1646, !"_ZN4core3str6traits110_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeTo$LT$usize$GT$$GT$5index17hd923df69dab348ffE: %slice.0"}
!1646 = distinct !{!1646, !"_ZN4core3str6traits110_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeTo$LT$usize$GT$$GT$5index17hd923df69dab348ffE"}
!1647 = !{!1648, !1650}
!1648 = distinct !{!1648, !1649, !"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E: %slice.0"}
!1649 = distinct !{!1649, !"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E"}
!1650 = distinct !{!1650, !1651, !"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$5index17h7cbc932e0a9173c6E: %slice.0"}
!1651 = distinct !{!1651, !"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$5index17h7cbc932e0a9173c6E"}
!1652 = !{!1653}
!1653 = distinct !{!1653, !1654, !"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h970b419e2fc04732E: %self"}
!1654 = distinct !{!1654, !"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h970b419e2fc04732E"}
!1655 = !{!1656, !1658}
!1656 = distinct !{!1656, !1657, !"_ZN52_$LT$char$u20$as$u20$core..str..pattern..Pattern$GT$12is_prefix_of17h0ca10fe567e00243E: %haystack.0"}
!1657 = distinct !{!1657, !"_ZN52_$LT$char$u20$as$u20$core..str..pattern..Pattern$GT$12is_prefix_of17h0ca10fe567e00243E"}
!1658 = distinct !{!1658, !1659, !"_ZN4core3str21_$LT$impl$u20$str$GT$11starts_with17ha4c7f5344bc721cdE: %self.0"}
!1659 = distinct !{!1659, !"_ZN4core3str21_$LT$impl$u20$str$GT$11starts_with17ha4c7f5344bc721cdE"}
!1660 = !{!1661}
!1661 = distinct !{!1661, !1662, !"_ZN4core4char7methods15encode_utf8_raw17hc175ebbaeebc4df9E: %dst.0"}
!1662 = distinct !{!1662, !"_ZN4core4char7methods15encode_utf8_raw17hc175ebbaeebc4df9E"}
!1663 = !{!1664, !1666}
!1664 = distinct !{!1664, !1665, !"_ZN52_$LT$char$u20$as$u20$core..str..pattern..Pattern$GT$12is_prefix_of17h0ca10fe567e00243E: %haystack.0"}
!1665 = distinct !{!1665, !"_ZN52_$LT$char$u20$as$u20$core..str..pattern..Pattern$GT$12is_prefix_of17h0ca10fe567e00243E"}
!1666 = distinct !{!1666, !1667, !"_ZN4core3str21_$LT$impl$u20$str$GT$11starts_with17ha4c7f5344bc721cdE: %self.0"}
!1667 = distinct !{!1667, !"_ZN4core3str21_$LT$impl$u20$str$GT$11starts_with17ha4c7f5344bc721cdE"}
!1668 = !{!1669}
!1669 = distinct !{!1669, !1670, !"_ZN4core4char7methods15encode_utf8_raw17hc175ebbaeebc4df9E: %dst.0"}
!1670 = distinct !{!1670, !"_ZN4core4char7methods15encode_utf8_raw17hc175ebbaeebc4df9E"}
!1671 = !{!1672, !1674}
!1672 = distinct !{!1672, !1673, !"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h0401209d78bf7315E: %self.0"}
!1673 = distinct !{!1673, !"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h0401209d78bf7315E"}
!1674 = distinct !{!1674, !1673, !"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h0401209d78bf7315E: %other.0"}
!1675 = !{!1676, !1678}
!1676 = distinct !{!1676, !1677, !"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h245db563f56abb8dE: %self"}
!1677 = distinct !{!1677, !"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h245db563f56abb8dE"}
!1678 = distinct !{!1678, !1677, !"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h245db563f56abb8dE: %other"}
!1679 = !{!1680}
!1680 = distinct !{!1680, !1681, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hc184d46d00dbb9edE: %self.0"}
!1681 = distinct !{!1681, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hc184d46d00dbb9edE"}
!1682 = !{!1683, !1685, !1680}
!1683 = distinct !{!1683, !1684, !"_ZN5alloc5slice11stable_sort17h8cea0c56deea20d5E: %v.0"}
!1684 = distinct !{!1684, !"_ZN5alloc5slice11stable_sort17h8cea0c56deea20d5E"}
!1685 = distinct !{!1685, !1684, !"_ZN5alloc5slice11stable_sort17h8cea0c56deea20d5E: argument 1"}
!1686 = !{!"branch_weights", !"expected", i32 2000, i32 1}
