; ModuleID = 'LARGEST_SUBARRAY_WITH_EQUAL_NUMBER_OF_0S_AND_1S_emit.227fae25707c58d0-cgu.0'
source_filename = "LARGEST_SUBARRAY_WITH_EQUAL_NUMBER_OF_0S_AND_1S_emit.227fae25707c58d0-cgu.0"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"core::mem::maybe_uninit::MaybeUninit<[u8; 8]>" = type { [8 x i8] }

@vtable.0 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h816774b2c0afc7d7E" }>, align 8
@alloc_d1084648e479974e70c9329824bf76f9 = private unnamed_addr constant [9 x i8] c"mid > len", align 1
@alloc_e8e5fd9f509afcb950667480b3e3e42a = private unnamed_addr constant [126 x i8] c"/root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/sort/stable/quicksort.rs\00", align 1
@alloc_58d434a1e795f965ef82c8e9c5db822a = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_e8e5fd9f509afcb950667480b3e3e42a, [16 x i8] c"}\00\00\00\00\00\00\00J\00\00\00\1F\00\00\00" }>, align 8
@alloc_0766b232215672ee1bd2195fdb153938 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_e8e5fd9f509afcb950667480b3e3e42a, [16 x i8] c"}\00\00\00\00\00\00\00D\00\00\00\17\00\00\00" }>, align 8
@alloc_393134da9133e82fe2bcdc2c103726f6 = private unnamed_addr constant [147 x i8] c"/root/es/vert/vert/rust_funcs/c_transcoder/LARGEST_SUBARRAY_WITH_EQUAL_NUMBER_OF_0S_AND_1S/LARGEST_SUBARRAY_WITH_EQUAL_NUMBER_OF_0S_AND_1S_emit.rs\00", align 1
@alloc_24ef333251a3c887bd5d4c2542ca9b95 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_393134da9133e82fe2bcdc2c103726f6, [16 x i8] c"\92\00\00\00\00\00\00\00$\00\00\00!\00\00\00" }>, align 8
@alloc_61247b90e1706a3f65e71312b599d3d1 = private unnamed_addr constant [4 x i8] c"\C0\01\0A\00", align 1
@alloc_e35ef0db3ff0e2e52d9de27516a202e9 = private unnamed_addr constant [17 x i8] c"No such subarray\0A", align 1
@alloc_ccb14d481c10be9a532a00cf09598600 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_393134da9133e82fe2bcdc2c103726f6, [16 x i8] c"\92\00\00\00\00\00\00\00\1A\00\00\00\12\00\00\00" }>, align 8
@alloc_35e156b0d7fd1cc1230b36d600d69ef1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_393134da9133e82fe2bcdc2c103726f6, [16 x i8] c"\92\00\00\00\00\00\00\00\1C\00\00\00\17\00\00\00" }>, align 8

; <&T as core::fmt::Debug>::fmt
; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h816774b2c0afc7d7E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %self, ptr noalias noundef align 8 dereferenceable(24) %f) unnamed_addr #0 {
start:
  %_3 = load ptr, ptr %self, align 8, !nonnull !3, !align !4, !noundef !3
  %0 = getelementptr inbounds nuw i8, ptr %f, i64 16
  %_6.i = load i32, ptr %0, align 8, !alias.scope !5, !noalias !8, !noundef !3
  %_5.i = and i32 %_6.i, 33554432
  %_3.not.i = icmp eq i32 %_5.i, 0
  br i1 %_3.not.i, label %bb2.i, label %bb1.i

bb2.i:                                            ; preds = %start
  %_7.i = and i32 %_6.i, 67108864
  %_4.not.i = icmp eq i32 %_7.i, 0
  br i1 %_4.not.i, label %bb4.i, label %bb3.i

bb1.i:                                            ; preds = %start
; call core::fmt::num::<impl core::fmt::LowerHex for i32>::fmt
  %1 = tail call noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i32$GT$3fmt17hb2b73ec565bc315bE"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %_3, ptr noalias noundef nonnull align 8 dereferenceable(24) %f)
  br label %"_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$i32$GT$3fmt17h83a687c72d217fd2E.exit"

bb4.i:                                            ; preds = %bb2.i
; call core::fmt::num::imp::<impl core::fmt::Display for i32>::fmt
  %2 = tail call noundef zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h7fd7b150b5fcea6eE"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %_3, ptr noalias noundef nonnull align 8 dereferenceable(24) %f)
  br label %"_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$i32$GT$3fmt17h83a687c72d217fd2E.exit"

bb3.i:                                            ; preds = %bb2.i
; call core::fmt::num::<impl core::fmt::UpperHex for i32>::fmt
  %3 = tail call noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i32$GT$3fmt17hee87b56b40773786E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %_3, ptr noalias noundef nonnull align 8 dereferenceable(24) %f)
  br label %"_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$i32$GT$3fmt17h83a687c72d217fd2E.exit"

"_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$i32$GT$3fmt17h83a687c72d217fd2E.exit": ; preds = %bb1.i, %bb4.i, %bb3.i
  %_0.sroa.0.0.in.i = phi i1 [ %1, %bb1.i ], [ %3, %bb3.i ], [ %2, %bb4.i ]
  ret i1 %_0.sroa.0.0.in.i
}

; <&T as core::fmt::Debug>::fmt
; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hc1af96bc2d4cab3fE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %self, ptr noalias noundef align 8 dereferenceable(24) %f) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %entry.i.i = alloca [8 x i8], align 8
  %_5.i = alloca [16 x i8], align 8
  %_3.0 = load ptr, ptr %self, align 8, !nonnull !3, !align !4, !noundef !3
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %_3.1 = load i64, ptr %0, align 8, !noundef !3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_5.i), !noalias !10
; call core::fmt::Formatter::debug_list
  call void @_ZN4core3fmt9Formatter10debug_list17h86f8e830c3b2e8a1E(ptr noalias noundef sret([16 x i8]) align 8 captures(address) dereferenceable(16) %_5.i, ptr noalias noundef align 8 dereferenceable(24) %f), !noalias !14
  %_10.idx.i = shl nuw nsw i64 %_3.1, 2
  %_10.i = getelementptr inbounds nuw i8, ptr %_3.0, i64 %_10.idx.i
  %_7.i6.i.i = icmp eq i64 %_3.1, 0
  br i1 %_7.i6.i.i, label %"_ZN48_$LT$$u5b$T$u5d$$u20$as$u20$core..fmt..Debug$GT$3fmt17h76ac33862e5a2098E.exit", label %bb5.i.i

bb5.i.i:                                          ; preds = %start, %bb5.i.i
  %iter.sroa.0.07.i.i = phi ptr [ %spec.select.i.i, %bb5.i.i ], [ %_3.0, %start ]
  %spec.select.i.i = getelementptr inbounds nuw i8, ptr %iter.sroa.0.07.i.i, i64 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %entry.i.i), !noalias !15
  store ptr %iter.sroa.0.07.i.i, ptr %entry.i.i, align 8, !noalias !15
; call core::fmt::builders::DebugList::entry
  %_9.i.i = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders9DebugList5entry17h6a347a718df63e39E(ptr noalias noundef align 8 dereferenceable(16) %_5.i, ptr noundef nonnull align 1 %entry.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @vtable.0)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %entry.i.i), !noalias !15
  %_7.i.i.i = icmp eq ptr %spec.select.i.i, %_10.i
  br i1 %_7.i.i.i, label %"_ZN48_$LT$$u5b$T$u5d$$u20$as$u20$core..fmt..Debug$GT$3fmt17h76ac33862e5a2098E.exit", label %bb5.i.i

"_ZN48_$LT$$u5b$T$u5d$$u20$as$u20$core..fmt..Debug$GT$3fmt17h76ac33862e5a2098E.exit": ; preds = %bb5.i.i, %start
; call core::fmt::builders::DebugList::finish
  %_0.i = call noundef zeroext i1 @_ZN4core3fmt8builders9DebugList6finish17h71e8b1e747a3e8ffE(ptr noalias noundef align 8 dereferenceable(16) %_5.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_5.i), !noalias !10
  ret i1 %_0.i
}

; <[T] as core::fmt::Debug>::fmt
; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN48_$LT$$u5b$T$u5d$$u20$as$u20$core..fmt..Debug$GT$3fmt17h76ac33862e5a2098E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %self.0, i64 noundef range(i64 0, 2305843009213693952) %self.1, ptr noalias noundef align 8 dereferenceable(24) %f) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %entry.i = alloca [8 x i8], align 8
  %_5 = alloca [16 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_5)
; call core::fmt::Formatter::debug_list
  call void @_ZN4core3fmt9Formatter10debug_list17h86f8e830c3b2e8a1E(ptr noalias noundef sret([16 x i8]) align 8 captures(address) dereferenceable(16) %_5, ptr noalias noundef align 8 dereferenceable(24) %f)
  %_10.idx = shl nuw nsw i64 %self.1, 2
  %_10 = getelementptr inbounds nuw i8, ptr %self.0, i64 %_10.idx
  %_7.i6.i = icmp eq i64 %self.1, 0
  br i1 %_7.i6.i, label %_ZN4core3fmt8builders9DebugList7entries17he615e9cd4dcc6e11E.exit, label %bb5.i

bb5.i:                                            ; preds = %start, %bb5.i
  %iter.sroa.0.07.i = phi ptr [ %spec.select.i, %bb5.i ], [ %self.0, %start ]
  %spec.select.i = getelementptr inbounds nuw i8, ptr %iter.sroa.0.07.i, i64 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %entry.i), !noalias !18
  store ptr %iter.sroa.0.07.i, ptr %entry.i, align 8, !noalias !18
; call core::fmt::builders::DebugList::entry
  %_9.i = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders9DebugList5entry17h6a347a718df63e39E(ptr noalias noundef align 8 dereferenceable(16) %_5, ptr noundef nonnull align 1 %entry.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @vtable.0)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %entry.i), !noalias !18
  %_7.i.i = icmp eq ptr %spec.select.i, %_10
  br i1 %_7.i.i, label %_ZN4core3fmt8builders9DebugList7entries17he615e9cd4dcc6e11E.exit, label %bb5.i

_ZN4core3fmt8builders9DebugList7entries17he615e9cd4dcc6e11E.exit: ; preds = %bb5.i, %start
; call core::fmt::builders::DebugList::finish
  %_0 = call noundef zeroext i1 @_ZN4core3fmt8builders9DebugList6finish17h71e8b1e747a3e8ffE(ptr noalias noundef align 8 dereferenceable(16) %_5)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_5)
  ret i1 %_0
}

; core::fmt::builders::DebugList::entries
; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders9DebugList7entries17he615e9cd4dcc6e11E(ptr noalias noundef returned align 8 dereferenceable(16) %self, ptr noundef nonnull %entries.0, ptr noundef readnone captures(address) %entries.1) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %entry = alloca [8 x i8], align 8
  %0 = icmp ne ptr %entries.1, null
  tail call void @llvm.assume(i1 %0)
  %_7.i6 = icmp eq ptr %entries.0, %entries.1
  br i1 %_7.i6, label %bb6, label %bb5

bb5:                                              ; preds = %start, %bb5
  %iter.sroa.0.07 = phi ptr [ %spec.select, %bb5 ], [ %entries.0, %start ]
  %spec.select = getelementptr inbounds nuw i8, ptr %iter.sroa.0.07, i64 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %entry)
  store ptr %iter.sroa.0.07, ptr %entry, align 8
; call core::fmt::builders::DebugList::entry
  %_9 = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders9DebugList5entry17h6a347a718df63e39E(ptr noalias noundef align 8 dereferenceable(16) %self, ptr noundef nonnull align 1 %entry, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @vtable.0)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %entry)
  %_7.i = icmp eq ptr %spec.select, %entries.1
  br i1 %_7.i, label %bb6, label %bb5

bb6:                                              ; preds = %bb5, %start
  ret ptr %self
}

; core::ptr::swap_nonoverlapping_bytes::swap_nonoverlapping_chunks
; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17h7b369b3e65780f07E(ptr noundef captures(none) %x, ptr noundef captures(none) %y, i64 noundef range(i64 1, 0) %chunks) unnamed_addr #1 {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24)
  %_3.sroa.0.0.copyload.i.epil = load i64, ptr %_11.epil, align 1, !alias.scope !21, !noalias !24
  %_4.sroa.0.0.copyload.i.epil = load i64, ptr %_13.epil, align 1, !alias.scope !24, !noalias !21
  store i64 %_4.sroa.0.0.copyload.i.epil, ptr %_11.epil, align 1, !alias.scope !21, !noalias !24
  store i64 %_3.sroa.0.0.copyload.i.epil, ptr %_13.epil, align 1, !alias.scope !24, !noalias !21
  br label %bb4

bb4:                                              ; preds = %bb4.unr-lcssa, %bb3.epil
  ret void

bb3:                                              ; preds = %bb3, %start.new
  %iter.sroa.0.02 = phi i64 [ 0, %start.new ], [ %_18.1, %bb3 ]
  %niter = phi i64 [ 0, %start.new ], [ %niter.next.1, %bb3 ]
  %_18 = or disjoint i64 %iter.sroa.0.02, 1
  %_11 = getelementptr inbounds nuw %"core::mem::maybe_uninit::MaybeUninit<[u8; 8]>", ptr %x, i64 %iter.sroa.0.02
  %_13 = getelementptr inbounds nuw %"core::mem::maybe_uninit::MaybeUninit<[u8; 8]>", ptr %y, i64 %iter.sroa.0.02
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24)
  %_3.sroa.0.0.copyload.i = load i64, ptr %_11, align 1, !alias.scope !21, !noalias !24
  %_4.sroa.0.0.copyload.i = load i64, ptr %_13, align 1, !alias.scope !24, !noalias !21
  store i64 %_4.sroa.0.0.copyload.i, ptr %_11, align 1, !alias.scope !21, !noalias !24
  store i64 %_3.sroa.0.0.copyload.i, ptr %_13, align 1, !alias.scope !24, !noalias !21
  %_18.1 = add nuw i64 %iter.sroa.0.02, 2
  %_11.1 = getelementptr inbounds nuw %"core::mem::maybe_uninit::MaybeUninit<[u8; 8]>", ptr %x, i64 %_18
  %_13.1 = getelementptr inbounds nuw %"core::mem::maybe_uninit::MaybeUninit<[u8; 8]>", ptr %y, i64 %_18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28)
  %_3.sroa.0.0.copyload.i.1 = load i64, ptr %_11.1, align 1, !alias.scope !26, !noalias !28
  %_4.sroa.0.0.copyload.i.1 = load i64, ptr %_13.1, align 1, !alias.scope !28, !noalias !26
  store i64 %_4.sroa.0.0.copyload.i.1, ptr %_11.1, align 1, !alias.scope !26, !noalias !28
  store i64 %_3.sroa.0.0.copyload.i.1, ptr %_13.1, align 1, !alias.scope !28, !noalias !26
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %bb4.unr-lcssa, label %bb3
}

; core::slice::sort::shared::pivot::median3_rec
; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite) uwtable
define noundef nonnull ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h100f0d34d8fa5739E(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %n, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #2 {
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
  %4 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h100f0d34d8fa5739E(ptr noundef %0, ptr noundef %_10, ptr noundef %_13, i64 noundef %n84, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  %_16 = getelementptr inbounds nuw i32, ptr %1, i64 %count
  %_18 = getelementptr inbounds nuw i32, ptr %1, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %5 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h100f0d34d8fa5739E(ptr noundef %1, ptr noundef %_16, ptr noundef %_18, i64 noundef %n84, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  %_20 = getelementptr inbounds nuw i32, ptr %2, i64 %count
  %_22 = getelementptr inbounds nuw i32, ptr %2, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %6 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h100f0d34d8fa5739E(ptr noundef %2, ptr noundef %_20, ptr noundef %_22, i64 noundef %n84, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  br label %bb6

bb6:                                              ; preds = %start, %bb1
  %c.sroa.0.0 = phi ptr [ %6, %bb1 ], [ %2, %start ]
  %b.sroa.0.0 = phi ptr [ %5, %bb1 ], [ %1, %start ]
  %a.sroa.0.0 = phi ptr [ %4, %bb1 ], [ %0, %start ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35), !noalias !38
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41), !noalias !38
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43), !noalias !38
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46), !noalias !38
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48), !noalias !38
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51), !noalias !38
  %_3.i.i.i.i = load i32, ptr %a.sroa.0.0, align 4, !alias.scope !53, !noalias !54, !noundef !3
  %_4.i.i.i.i = load i32, ptr %b.sroa.0.0, align 4, !alias.scope !55, !noalias !56, !noundef !3
  %_0.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %_4.i.i.i.i6 = load i32, ptr %c.sroa.0.0, align 4, !alias.scope !57, !noalias !66, !noundef !3
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
define void @_ZN4core5slice4sort6shared9smallsort11insert_tail17h023798a31a73eaceE(ptr noundef readnone captures(address) %begin, ptr noundef captures(address) %tail, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %0 = getelementptr inbounds i8, ptr %tail, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89)
  %_3.i.i.i.i = load i32, ptr %tail, align 4, !alias.scope !91, !noalias !92, !noundef !3
  %_4.i.i.i.i = load i32, ptr %0, align 4, !alias.scope !92, !noalias !91, !noundef !3
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
  %_4.i.i.i.i2 = load i32, ptr %2, align 4, !alias.scope !93, !noalias !102, !noundef !3
  %_0.i3 = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i2
  br i1 %_0.i3, label %bb4, label %bb10

bb10:                                             ; preds = %bb6, %bb4
  store i32 %_3.i.i.i.i, ptr %sift.sroa.0.0, align 4, !noalias !107
  br label %bb12
}

; core::slice::sort::shared::smallsort::sort4_stable
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17hf29033a2d9c2c920E(ptr noundef readonly captures(none) %v_base, ptr noundef writeonly captures(none) initializes((0, 16)) %dst, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_7 = getelementptr inbounds nuw i8, ptr %v_base, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !112)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !120)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !122)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !125)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130)
  %_3.i.i.i.i = load i32, ptr %_7, align 4, !alias.scope !132, !noalias !133, !noundef !3
  %_4.i.i.i.i = load i32, ptr %v_base, align 4, !alias.scope !133, !noalias !132, !noundef !3
  %_0.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %_12 = getelementptr inbounds nuw i8, ptr %v_base, i64 12
  %_14 = getelementptr inbounds nuw i8, ptr %v_base, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !137)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !139)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !142)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !144)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !147)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !152)
  %_3.i.i.i.i7 = load i32, ptr %_12, align 4, !alias.scope !154, !noalias !155, !noundef !3
  %_4.i.i.i.i8 = load i32, ptr %_14, align 4, !alias.scope !155, !noalias !154, !noundef !3
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !156)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !159)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !164)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !166)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !169)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !171)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !174)
  %_3.i.i.i.i10 = load i32, ptr %c, align 4, !alias.scope !176, !noalias !177, !noundef !3
  %_4.i.i.i.i11 = load i32, ptr %a, align 4, !alias.scope !177, !noalias !176, !noundef !3
  %_0.i12 = icmp slt i32 %_3.i.i.i.i10, %_4.i.i.i.i11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !178)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !181)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !183)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !188)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !191)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !193)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !196)
  %_3.i.i.i.i13 = load i32, ptr %d, align 4, !alias.scope !198, !noalias !199, !noundef !3
  %_4.i.i.i.i14 = load i32, ptr %b, align 4, !alias.scope !199, !noalias !198, !noundef !3
  %_0.i15 = icmp slt i32 %_3.i.i.i.i13, %_4.i.i.i.i14
  %0 = select i1 %_0.i12, ptr %c, ptr %a, !unpredictable !3
  %1 = select i1 %_0.i15, ptr %c, ptr %b, !unpredictable !3
  %2 = select i1 %_0.i12, ptr %a, ptr %1, !unpredictable !3
  %3 = select i1 %_0.i12, ptr %b, ptr %c, !unpredictable !3
  %4 = select i1 %_0.i15, ptr %d, ptr %3, !unpredictable !3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !200)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !203)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !205)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !208)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !210)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !213)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !215)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !218)
  %_3.i.i.i.i16 = load i32, ptr %4, align 4, !alias.scope !220, !noalias !221, !noundef !3
  %_4.i.i.i.i17 = load i32, ptr %2, align 4, !alias.scope !221, !noalias !220, !noundef !3
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
define void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17ha82285e98882abc9E(ptr noundef readonly captures(none) %v_base, ptr noundef writeonly captures(none) initializes((0, 32)) %dst, ptr noundef captures(address) initializes((0, 32)) %scratch_base, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %_7.i = getelementptr inbounds nuw i8, ptr %v_base, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !222)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !225)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !227)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !230)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !232)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !235)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !237)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !240)
  %_3.i.i.i.i.i = load i32, ptr %_7.i, align 4, !alias.scope !242, !noalias !243, !noundef !3
  %_4.i.i.i.i.i = load i32, ptr %v_base, align 4, !alias.scope !243, !noalias !242, !noundef !3
  %_0.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %_12.i = getelementptr inbounds nuw i8, ptr %v_base, i64 12
  %_14.i = getelementptr inbounds nuw i8, ptr %v_base, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !244)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !247)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !249)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !252)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !254)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !257)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !259)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !262)
  %_3.i.i.i.i7.i = load i32, ptr %_12.i, align 4, !alias.scope !264, !noalias !265, !noundef !3
  %_4.i.i.i.i8.i = load i32, ptr %_14.i, align 4, !alias.scope !265, !noalias !264, !noundef !3
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !266)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !269)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !271)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !274)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !276)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !279)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !281)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !284)
  %_3.i.i.i.i10.i = load i32, ptr %c.i, align 4, !alias.scope !286, !noalias !287, !noundef !3
  %_4.i.i.i.i11.i = load i32, ptr %a.i, align 4, !alias.scope !287, !noalias !286, !noundef !3
  %_0.i12.i = icmp slt i32 %_3.i.i.i.i10.i, %_4.i.i.i.i11.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !288)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !291)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !293)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !296)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !298)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !301)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !303)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !306)
  %_3.i.i.i.i13.i = load i32, ptr %d.i, align 4, !alias.scope !308, !noalias !309, !noundef !3
  %_4.i.i.i.i14.i = load i32, ptr %b.i, align 4, !alias.scope !309, !noalias !308, !noundef !3
  %_0.i15.i = icmp slt i32 %_3.i.i.i.i13.i, %_4.i.i.i.i14.i
  %0 = select i1 %_0.i12.i, ptr %c.i, ptr %a.i, !unpredictable !3
  %1 = select i1 %_0.i15.i, ptr %c.i, ptr %b.i, !unpredictable !3
  %2 = select i1 %_0.i12.i, ptr %a.i, ptr %1, !unpredictable !3
  %3 = select i1 %_0.i12.i, ptr %b.i, ptr %c.i, !unpredictable !3
  %4 = select i1 %_0.i15.i, ptr %d.i, ptr %3, !unpredictable !3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !310)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !313)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !315)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !318)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !320)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !323)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !325)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !328)
  %_3.i.i.i.i16.i = load i32, ptr %4, align 4, !alias.scope !330, !noalias !331, !noundef !3
  %_4.i.i.i.i17.i = load i32, ptr %2, align 4, !alias.scope !331, !noalias !330, !noundef !3
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !332)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !335)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !337)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !340)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !342)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !345)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !347)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !350)
  %_3.i.i.i.i.i2 = load i32, ptr %_7.i1, align 4, !alias.scope !352, !noalias !353, !noundef !3
  %_4.i.i.i.i.i3 = load i32, ptr %_9, align 4, !alias.scope !353, !noalias !352, !noundef !3
  %_0.i.i4 = icmp slt i32 %_3.i.i.i.i.i2, %_4.i.i.i.i.i3
  %_12.i5 = getelementptr inbounds nuw i8, ptr %v_base, i64 28
  %_14.i6 = getelementptr inbounds nuw i8, ptr %v_base, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !354)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !357)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !359)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !362)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !364)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !367)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !369)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !372)
  %_3.i.i.i.i7.i7 = load i32, ptr %_12.i5, align 4, !alias.scope !374, !noalias !375, !noundef !3
  %_4.i.i.i.i8.i8 = load i32, ptr %_14.i6, align 4, !alias.scope !375, !noalias !374, !noundef !3
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !376)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !379)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !381)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !384)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !386)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !389)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !391)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !394)
  %_3.i.i.i.i10.i19 = load i32, ptr %c.i16, align 4, !alias.scope !396, !noalias !397, !noundef !3
  %_4.i.i.i.i11.i20 = load i32, ptr %a.i11, align 4, !alias.scope !397, !noalias !396, !noundef !3
  %_0.i12.i21 = icmp slt i32 %_3.i.i.i.i10.i19, %_4.i.i.i.i11.i20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !398)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !401)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !403)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !406)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !408)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !411)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !413)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !416)
  %_3.i.i.i.i13.i22 = load i32, ptr %d.i18, align 4, !alias.scope !418, !noalias !419, !noundef !3
  %_4.i.i.i.i14.i23 = load i32, ptr %b.i14, align 4, !alias.scope !419, !noalias !418, !noundef !3
  %_0.i15.i24 = icmp slt i32 %_3.i.i.i.i13.i22, %_4.i.i.i.i14.i23
  %10 = select i1 %_0.i12.i21, ptr %c.i16, ptr %a.i11, !unpredictable !3
  %11 = select i1 %_0.i15.i24, ptr %c.i16, ptr %b.i14, !unpredictable !3
  %12 = select i1 %_0.i12.i21, ptr %a.i11, ptr %11, !unpredictable !3
  %13 = select i1 %_0.i12.i21, ptr %b.i14, ptr %c.i16, !unpredictable !3
  %14 = select i1 %_0.i15.i24, ptr %d.i18, ptr %13, !unpredictable !3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !420)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !423)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !425)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !428)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !430)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !433)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !435)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !438)
  %_3.i.i.i.i16.i25 = load i32, ptr %14, align 4, !alias.scope !440, !noalias !441, !noundef !3
  %_4.i.i.i.i17.i26 = load i32, ptr %12, align 4, !alias.scope !441, !noalias !440, !noundef !3
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !442)
  %20 = getelementptr i8, ptr %scratch_base, i64 12
  %21 = getelementptr inbounds nuw i8, ptr %scratch_base, i64 28
  %22 = getelementptr inbounds nuw i8, ptr %dst, i64 28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !445)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !448)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !450), !noalias !453
  tail call void @llvm.experimental.noalias.scope.decl(metadata !456), !noalias !453
  tail call void @llvm.experimental.noalias.scope.decl(metadata !458), !noalias !453
  tail call void @llvm.experimental.noalias.scope.decl(metadata !461), !noalias !453
  tail call void @llvm.experimental.noalias.scope.decl(metadata !463), !noalias !453
  tail call void @llvm.experimental.noalias.scope.decl(metadata !466), !noalias !453
  %_3.i.i.i.i.i36 = load i32, ptr %_10, align 4, !alias.scope !468, !noalias !469, !noundef !3
  %_4.i.i.i.i.i37 = load i32, ptr %scratch_base, align 4, !alias.scope !470, !noalias !471, !noundef !3
  %_0.i.i38 = icmp slt i32 %_3.i.i.i.i.i36, %_4.i.i.i.i.i37
  %is_l.i18.i = xor i1 %_0.i.i38, true
  %23 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i36, i32 %_4.i.i.i.i.i37)
  store i32 %23, ptr %dst, align 4, !noalias !472
  %count.i.i = zext i1 %_0.i.i38 to i64
  %_12.i.i = getelementptr inbounds nuw i32, ptr %_10, i64 %count.i.i
  %count2.i.i = zext i1 %is_l.i18.i to i64
  %_14.i.i = getelementptr inbounds nuw i32, ptr %scratch_base, i64 %count2.i.i
  %_16.i.i = getelementptr inbounds nuw i8, ptr %dst, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !474)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !477)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !479), !noalias !482
  tail call void @llvm.experimental.noalias.scope.decl(metadata !485), !noalias !482
  tail call void @llvm.experimental.noalias.scope.decl(metadata !487), !noalias !482
  tail call void @llvm.experimental.noalias.scope.decl(metadata !490), !noalias !482
  tail call void @llvm.experimental.noalias.scope.decl(metadata !492), !noalias !482
  tail call void @llvm.experimental.noalias.scope.decl(metadata !495), !noalias !482
  %_3.i.i.i.i19.i = load i32, ptr %21, align 4, !alias.scope !497, !noalias !498, !noundef !3
  %_4.i.i.i.i20.i = load i32, ptr %20, align 4, !alias.scope !499, !noalias !500, !noundef !3
  %_0.i21.i = icmp slt i32 %_3.i.i.i.i19.i, %_4.i.i.i.i20.i
  %is_l.i.i = xor i1 %_0.i21.i, true
  %24 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19.i, i32 %_4.i.i.i.i20.i)
  store i32 %24, ptr %22, align 4, !noalias !501
  %count.neg.i.i = sext i1 %is_l.i.i to i64
  %25 = getelementptr i32, ptr %21, i64 %count.neg.i.i
  %count3.neg.i.i = sext i1 %_0.i21.i to i64
  %26 = getelementptr i32, ptr %20, i64 %count3.neg.i.i
  %27 = getelementptr inbounds nuw i8, ptr %dst, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !503)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !505)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !507), !noalias !453
  tail call void @llvm.experimental.noalias.scope.decl(metadata !509), !noalias !453
  tail call void @llvm.experimental.noalias.scope.decl(metadata !511), !noalias !453
  tail call void @llvm.experimental.noalias.scope.decl(metadata !513), !noalias !453
  tail call void @llvm.experimental.noalias.scope.decl(metadata !515), !noalias !453
  tail call void @llvm.experimental.noalias.scope.decl(metadata !517), !noalias !453
  %_3.i.i.i.i.i36.1 = load i32, ptr %_12.i.i, align 4, !alias.scope !519, !noalias !520, !noundef !3
  %_4.i.i.i.i.i37.1 = load i32, ptr %_14.i.i, align 4, !alias.scope !521, !noalias !522, !noundef !3
  %_0.i.i38.1 = icmp slt i32 %_3.i.i.i.i.i36.1, %_4.i.i.i.i.i37.1
  %is_l.i18.i.1 = xor i1 %_0.i.i38.1, true
  %28 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i36.1, i32 %_4.i.i.i.i.i37.1)
  store i32 %28, ptr %_16.i.i, align 4, !noalias !472
  %count.i.i.1 = zext i1 %_0.i.i38.1 to i64
  %_12.i.i.1 = getelementptr inbounds nuw i32, ptr %_12.i.i, i64 %count.i.i.1
  %count2.i.i.1 = zext i1 %is_l.i18.i.1 to i64
  %_14.i.i.1 = getelementptr inbounds nuw i32, ptr %_14.i.i, i64 %count2.i.i.1
  %_16.i.i.1 = getelementptr inbounds nuw i8, ptr %dst, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !523)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !525)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !527), !noalias !482
  tail call void @llvm.experimental.noalias.scope.decl(metadata !529), !noalias !482
  tail call void @llvm.experimental.noalias.scope.decl(metadata !531), !noalias !482
  tail call void @llvm.experimental.noalias.scope.decl(metadata !533), !noalias !482
  tail call void @llvm.experimental.noalias.scope.decl(metadata !535), !noalias !482
  tail call void @llvm.experimental.noalias.scope.decl(metadata !537), !noalias !482
  %_3.i.i.i.i19.i.1 = load i32, ptr %25, align 4, !alias.scope !539, !noalias !540, !noundef !3
  %_4.i.i.i.i20.i.1 = load i32, ptr %26, align 4, !alias.scope !541, !noalias !542, !noundef !3
  %_0.i21.i.1 = icmp slt i32 %_3.i.i.i.i19.i.1, %_4.i.i.i.i20.i.1
  %is_l.i.i.1 = xor i1 %_0.i21.i.1, true
  %29 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19.i.1, i32 %_4.i.i.i.i20.i.1)
  store i32 %29, ptr %27, align 4, !noalias !501
  %count.neg.i.i.1 = sext i1 %is_l.i.i.1 to i64
  %30 = getelementptr i32, ptr %25, i64 %count.neg.i.i.1
  %count3.neg.i.i.1 = sext i1 %_0.i21.i.1 to i64
  %31 = getelementptr i32, ptr %26, i64 %count3.neg.i.i.1
  %32 = getelementptr inbounds nuw i8, ptr %dst, i64 20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !543)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !545)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !547), !noalias !453
  tail call void @llvm.experimental.noalias.scope.decl(metadata !549), !noalias !453
  tail call void @llvm.experimental.noalias.scope.decl(metadata !551), !noalias !453
  tail call void @llvm.experimental.noalias.scope.decl(metadata !553), !noalias !453
  tail call void @llvm.experimental.noalias.scope.decl(metadata !555), !noalias !453
  tail call void @llvm.experimental.noalias.scope.decl(metadata !557), !noalias !453
  %_3.i.i.i.i.i36.2 = load i32, ptr %_12.i.i.1, align 4, !alias.scope !559, !noalias !560, !noundef !3
  %_4.i.i.i.i.i37.2 = load i32, ptr %_14.i.i.1, align 4, !alias.scope !561, !noalias !562, !noundef !3
  %_0.i.i38.2 = icmp slt i32 %_3.i.i.i.i.i36.2, %_4.i.i.i.i.i37.2
  %is_l.i18.i.2 = xor i1 %_0.i.i38.2, true
  %33 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i36.2, i32 %_4.i.i.i.i.i37.2)
  store i32 %33, ptr %_16.i.i.1, align 4, !noalias !472
  %count.i.i.2 = zext i1 %_0.i.i38.2 to i64
  %_12.i.i.2 = getelementptr inbounds nuw i32, ptr %_12.i.i.1, i64 %count.i.i.2
  %count2.i.i.2 = zext i1 %is_l.i18.i.2 to i64
  %_14.i.i.2 = getelementptr inbounds nuw i32, ptr %_14.i.i.1, i64 %count2.i.i.2
  %_16.i.i.2 = getelementptr inbounds nuw i8, ptr %dst, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !563)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !565)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !567), !noalias !482
  tail call void @llvm.experimental.noalias.scope.decl(metadata !569), !noalias !482
  tail call void @llvm.experimental.noalias.scope.decl(metadata !571), !noalias !482
  tail call void @llvm.experimental.noalias.scope.decl(metadata !573), !noalias !482
  tail call void @llvm.experimental.noalias.scope.decl(metadata !575), !noalias !482
  tail call void @llvm.experimental.noalias.scope.decl(metadata !577), !noalias !482
  %_3.i.i.i.i19.i.2 = load i32, ptr %30, align 4, !alias.scope !579, !noalias !580, !noundef !3
  %_4.i.i.i.i20.i.2 = load i32, ptr %31, align 4, !alias.scope !581, !noalias !582, !noundef !3
  %_0.i21.i.2 = icmp slt i32 %_3.i.i.i.i19.i.2, %_4.i.i.i.i20.i.2
  %is_l.i.i.2 = xor i1 %_0.i21.i.2, true
  %34 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19.i.2, i32 %_4.i.i.i.i20.i.2)
  store i32 %34, ptr %32, align 4, !noalias !501
  %count.neg.i.i.2 = sext i1 %is_l.i.i.2 to i64
  %35 = getelementptr i32, ptr %30, i64 %count.neg.i.i.2
  %count3.neg.i.i.2 = sext i1 %_0.i21.i.2 to i64
  %36 = getelementptr i32, ptr %31, i64 %count3.neg.i.i.2
  %37 = getelementptr inbounds nuw i8, ptr %dst, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !583)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !585)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !587), !noalias !453
  tail call void @llvm.experimental.noalias.scope.decl(metadata !589), !noalias !453
  tail call void @llvm.experimental.noalias.scope.decl(metadata !591), !noalias !453
  tail call void @llvm.experimental.noalias.scope.decl(metadata !593), !noalias !453
  tail call void @llvm.experimental.noalias.scope.decl(metadata !595), !noalias !453
  tail call void @llvm.experimental.noalias.scope.decl(metadata !597), !noalias !453
  %_3.i.i.i.i.i36.3 = load i32, ptr %_12.i.i.2, align 4, !alias.scope !599, !noalias !600, !noundef !3
  %_4.i.i.i.i.i37.3 = load i32, ptr %_14.i.i.2, align 4, !alias.scope !601, !noalias !602, !noundef !3
  %_0.i.i38.3 = icmp slt i32 %_3.i.i.i.i.i36.3, %_4.i.i.i.i.i37.3
  %is_l.i18.i.3 = xor i1 %_0.i.i38.3, true
  %38 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i36.3, i32 %_4.i.i.i.i.i37.3)
  store i32 %38, ptr %_16.i.i.2, align 4, !noalias !472
  %count.i.i.3 = zext i1 %_0.i.i38.3 to i64
  %_12.i.i.3 = getelementptr inbounds nuw i32, ptr %_12.i.i.2, i64 %count.i.i.3
  %count2.i.i.3 = zext i1 %is_l.i18.i.3 to i64
  %_14.i.i.3 = getelementptr inbounds nuw i32, ptr %_14.i.i.2, i64 %count2.i.i.3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !603)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !605)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !607), !noalias !482
  tail call void @llvm.experimental.noalias.scope.decl(metadata !609), !noalias !482
  tail call void @llvm.experimental.noalias.scope.decl(metadata !611), !noalias !482
  tail call void @llvm.experimental.noalias.scope.decl(metadata !613), !noalias !482
  tail call void @llvm.experimental.noalias.scope.decl(metadata !615), !noalias !482
  tail call void @llvm.experimental.noalias.scope.decl(metadata !617), !noalias !482
  %_3.i.i.i.i19.i.3 = load i32, ptr %35, align 4, !alias.scope !619, !noalias !620, !noundef !3
  %_4.i.i.i.i20.i.3 = load i32, ptr %36, align 4, !alias.scope !621, !noalias !622, !noundef !3
  %_0.i21.i.3 = icmp slt i32 %_3.i.i.i.i19.i.3, %_4.i.i.i.i20.i.3
  %is_l.i.i.3 = xor i1 %_0.i21.i.3, true
  %39 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19.i.3, i32 %_4.i.i.i.i20.i.3)
  store i32 %39, ptr %37, align 4, !noalias !501
  %count.neg.i.i.3 = sext i1 %is_l.i.i.3 to i64
  %40 = getelementptr i32, ptr %35, i64 %count.neg.i.i.3
  %count3.neg.i.i.3 = sext i1 %_0.i21.i.3 to i64
  %41 = getelementptr i32, ptr %36, i64 %count3.neg.i.i.3
  %42 = getelementptr i8, ptr %41, i64 4
  %43 = getelementptr i8, ptr %40, i64 4
  %_31.i = icmp ne ptr %_14.i.i.3, %42
  %_32.i = icmp ne ptr %_12.i.i.3, %43
  %or.cond.i = select i1 %_31.i, i1 true, i1 %_32.i
  br i1 %or.cond.i, label %bb13.i, label %_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h467471a0d9a845c1E.exit, !prof !623

bb13.i:                                           ; preds = %start
; call core::slice::sort::shared::smallsort::panic_on_ord_violation
  tail call void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #24, !noalias !442
  unreachable

_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h467471a0d9a845c1E.exit: ; preds = %start
  ret void
}

; core::slice::sort::shared::smallsort::bidirectional_merge
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h467471a0d9a845c1E(ptr noalias noundef nonnull readonly align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noundef writeonly captures(none) %0, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #0 {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !624)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !627)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !629), !noalias !632
  tail call void @llvm.experimental.noalias.scope.decl(metadata !635), !noalias !632
  tail call void @llvm.experimental.noalias.scope.decl(metadata !637), !noalias !632
  tail call void @llvm.experimental.noalias.scope.decl(metadata !640), !noalias !632
  tail call void @llvm.experimental.noalias.scope.decl(metadata !642), !noalias !632
  tail call void @llvm.experimental.noalias.scope.decl(metadata !645), !noalias !632
  %_3.i.i.i.i = load i32, ptr %right.sroa.0.026, align 4, !alias.scope !647, !noalias !648, !noundef !3
  %_4.i.i.i.i = load i32, ptr %left.sroa.0.027, align 4, !alias.scope !649, !noalias !650, !noundef !3
  %_0.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %is_l.i18 = xor i1 %_0.i, true
  %7 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i, i32 %_4.i.i.i.i)
  store i32 %7, ptr %dst.sroa.0.029, align 4, !noalias !651
  %count.i = zext i1 %_0.i to i64
  %_12.i = getelementptr inbounds nuw i32, ptr %right.sroa.0.026, i64 %count.i
  %count2.i = zext i1 %is_l.i18 to i64
  %_14.i = getelementptr inbounds nuw i32, ptr %left.sroa.0.027, i64 %count2.i
  %_16.i = getelementptr inbounds nuw i8, ptr %dst.sroa.0.029, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !653)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !656)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !658), !noalias !661
  tail call void @llvm.experimental.noalias.scope.decl(metadata !664), !noalias !661
  tail call void @llvm.experimental.noalias.scope.decl(metadata !666), !noalias !661
  tail call void @llvm.experimental.noalias.scope.decl(metadata !669), !noalias !661
  tail call void @llvm.experimental.noalias.scope.decl(metadata !671), !noalias !661
  tail call void @llvm.experimental.noalias.scope.decl(metadata !674), !noalias !661
  %_3.i.i.i.i19 = load i32, ptr %right_rev.sroa.0.024, align 4, !alias.scope !676, !noalias !677, !noundef !3
  %_4.i.i.i.i20 = load i32, ptr %left_rev.sroa.0.025, align 4, !alias.scope !678, !noalias !679, !noundef !3
  %_0.i21 = icmp slt i32 %_3.i.i.i.i19, %_4.i.i.i.i20
  %is_l.i = xor i1 %_0.i21, true
  %8 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19, i32 %_4.i.i.i.i20)
  store i32 %8, ptr %dst_rev.sroa.0.023, align 4, !noalias !680
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
  br i1 %or.cond, label %bb13, label %bb14, !prof !623

bb14:                                             ; preds = %bb9
  ret void

bb13:                                             ; preds = %bb9
; call core::slice::sort::shared::smallsort::panic_on_ord_violation
  tail call void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #24
  unreachable
}

; core::slice::sort::shared::smallsort::insertion_sort_shift_left
; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h7cb9a29b30363162E(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, i64 noundef %offset, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #4 personality ptr @rust_eh_personality {
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

bb7:                                              ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h023798a31a73eaceE.exit, %bb3
  ret void

bb5:                                              ; preds = %bb5.preheader, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h023798a31a73eaceE.exit
  %tail.sroa.0.02 = phi ptr [ %_15, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h023798a31a73eaceE.exit ], [ %1, %bb5.preheader ]
  %2 = getelementptr inbounds i8, ptr %tail.sroa.0.02, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !682)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !685)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !687)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !690)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !692)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !695)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !697)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !700)
  %_3.i.i.i.i.i = load i32, ptr %tail.sroa.0.02, align 4, !alias.scope !702, !noalias !703, !noundef !3
  %_4.i.i.i.i.i = load i32, ptr %2, align 4, !alias.scope !703, !noalias !702, !noundef !3
  %_0.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  br i1 %_0.i.i, label %bb4.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h023798a31a73eaceE.exit

bb4.i:                                            ; preds = %bb5, %bb6.i
  %gap_guard.sroa.5.0.i = phi ptr [ %sift.sroa.0.0.i, %bb6.i ], [ %tail.sroa.0.02, %bb5 ]
  %sift.sroa.0.0.i = phi ptr [ %4, %bb6.i ], [ %2, %bb5 ]
  %3 = load i32, ptr %sift.sroa.0.0.i, align 4
  store i32 %3, ptr %gap_guard.sroa.5.0.i, align 4
  %_18.i = icmp eq ptr %sift.sroa.0.0.i, %v.0
  br i1 %_18.i, label %bb10.i, label %bb6.i

bb6.i:                                            ; preds = %bb4.i
  %4 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i, i64 -4
  %_4.i.i.i.i2.i = load i32, ptr %4, align 4, !alias.scope !704, !noalias !713, !noundef !3
  %_0.i3.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i2.i
  br i1 %_0.i3.i, label %bb4.i, label %bb10.i

bb10.i:                                           ; preds = %bb6.i, %bb4.i
  store i32 %_3.i.i.i.i.i, ptr %sift.sroa.0.0.i, align 4, !noalias !718
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h023798a31a73eaceE.exit

_ZN4core5slice4sort6shared9smallsort11insert_tail17h023798a31a73eaceE.exit: ; preds = %bb5, %bb10.i
  %_15 = getelementptr inbounds nuw i8, ptr %tail.sroa.0.02, i64 4
  %_11.not = icmp eq ptr %_15, %v_end
  br i1 %_11.not, label %bb7, label %bb5
}

; core::slice::sort::shared::smallsort::small_sort_general_with_scratch
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17hdb236b9dbca3e730E(ptr noalias noundef nonnull align 4 captures(none) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 captures(address) %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  tail call void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17ha82285e98882abc9E(ptr noundef nonnull %v.0, ptr noundef nonnull %scratch.0, ptr noundef nonnull %_16, ptr noalias align 8 poison)
  %_18 = getelementptr inbounds nuw i32, ptr %v.0, i64 %len_div_211
  %_19 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211
  %_20 = getelementptr inbounds nuw i8, ptr %_16, i64 32
; call core::slice::sort::shared::smallsort::sort8_stable
  tail call void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17ha82285e98882abc9E(ptr noundef nonnull %_18, ptr noundef nonnull %_19, ptr noundef nonnull %_20, ptr noalias align 8 poison)
  br label %bb15

bb10:                                             ; preds = %bb9
  %_7.i = getelementptr inbounds nuw i8, ptr %v.0, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !723)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !726)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !728)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !731)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !733)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !736)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !738)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !741)
  %_3.i.i.i.i.i = load i32, ptr %_7.i, align 4, !alias.scope !743, !noalias !744, !noundef !3
  %_4.i.i.i.i.i = load i32, ptr %v.0, align 4, !alias.scope !744, !noalias !743, !noundef !3
  %_0.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %_12.i = getelementptr inbounds nuw i8, ptr %v.0, i64 12
  %_14.i = getelementptr inbounds nuw i8, ptr %v.0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !745)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !748)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !750)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !753)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !755)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !758)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !760)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !763)
  %_3.i.i.i.i7.i = load i32, ptr %_12.i, align 4, !alias.scope !765, !noalias !766, !noundef !3
  %_4.i.i.i.i8.i = load i32, ptr %_14.i, align 4, !alias.scope !766, !noalias !765, !noundef !3
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !767)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !770)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !772)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !775)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !777)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !780)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !782)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !785)
  %_3.i.i.i.i10.i = load i32, ptr %c.i, align 4, !alias.scope !787, !noalias !788, !noundef !3
  %_4.i.i.i.i11.i = load i32, ptr %a.i, align 4, !alias.scope !788, !noalias !787, !noundef !3
  %_0.i12.i = icmp slt i32 %_3.i.i.i.i10.i, %_4.i.i.i.i11.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !789)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !792)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !794)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !797)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !799)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !802)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !804)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !807)
  %_3.i.i.i.i13.i = load i32, ptr %d.i, align 4, !alias.scope !809, !noalias !810, !noundef !3
  %_4.i.i.i.i14.i = load i32, ptr %b.i, align 4, !alias.scope !810, !noalias !809, !noundef !3
  %_0.i15.i = icmp slt i32 %_3.i.i.i.i13.i, %_4.i.i.i.i14.i
  %0 = select i1 %_0.i12.i, ptr %c.i, ptr %a.i, !unpredictable !3
  %1 = select i1 %_0.i15.i, ptr %c.i, ptr %b.i, !unpredictable !3
  %2 = select i1 %_0.i12.i, ptr %a.i, ptr %1, !unpredictable !3
  %3 = select i1 %_0.i12.i, ptr %b.i, ptr %c.i, !unpredictable !3
  %4 = select i1 %_0.i15.i, ptr %d.i, ptr %3, !unpredictable !3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !811)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !814)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !816)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !819)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !821)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !824)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !826)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !829)
  %_3.i.i.i.i16.i = load i32, ptr %4, align 4, !alias.scope !831, !noalias !832, !noundef !3
  %_4.i.i.i.i17.i = load i32, ptr %2, align 4, !alias.scope !832, !noalias !831, !noundef !3
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !833)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !836)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !838)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !841)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !843)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !846)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !848)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !851)
  %_3.i.i.i.i.i14 = load i32, ptr %_7.i13, align 4, !alias.scope !853, !noalias !854, !noundef !3
  %_4.i.i.i.i.i15 = load i32, ptr %_27, align 4, !alias.scope !854, !noalias !853, !noundef !3
  %_0.i.i16 = icmp slt i32 %_3.i.i.i.i.i14, %_4.i.i.i.i.i15
  %_12.i17 = getelementptr inbounds nuw i8, ptr %_27, i64 12
  %_14.i18 = getelementptr inbounds nuw i8, ptr %_27, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !855)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !858)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !860)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !863)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !865)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !868)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !870)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !873)
  %_3.i.i.i.i7.i19 = load i32, ptr %_12.i17, align 4, !alias.scope !875, !noalias !876, !noundef !3
  %_4.i.i.i.i8.i20 = load i32, ptr %_14.i18, align 4, !alias.scope !876, !noalias !875, !noundef !3
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !877)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !880)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !882)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !885)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !887)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !890)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !892)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !895)
  %_3.i.i.i.i10.i31 = load i32, ptr %c.i28, align 4, !alias.scope !897, !noalias !898, !noundef !3
  %_4.i.i.i.i11.i32 = load i32, ptr %a.i23, align 4, !alias.scope !898, !noalias !897, !noundef !3
  %_0.i12.i33 = icmp slt i32 %_3.i.i.i.i10.i31, %_4.i.i.i.i11.i32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !899)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !902)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !904)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !907)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !909)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !912)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !914)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !917)
  %_3.i.i.i.i13.i34 = load i32, ptr %d.i30, align 4, !alias.scope !919, !noalias !920, !noundef !3
  %_4.i.i.i.i14.i35 = load i32, ptr %b.i26, align 4, !alias.scope !920, !noalias !919, !noundef !3
  %_0.i15.i36 = icmp slt i32 %_3.i.i.i.i13.i34, %_4.i.i.i.i14.i35
  %10 = select i1 %_0.i12.i33, ptr %c.i28, ptr %a.i23, !unpredictable !3
  %11 = select i1 %_0.i15.i36, ptr %c.i28, ptr %b.i26, !unpredictable !3
  %12 = select i1 %_0.i12.i33, ptr %a.i23, ptr %11, !unpredictable !3
  %13 = select i1 %_0.i12.i33, ptr %b.i26, ptr %c.i28, !unpredictable !3
  %14 = select i1 %_0.i15.i36, ptr %d.i30, ptr %13, !unpredictable !3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !921)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !924)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !926)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !929)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !931)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !934)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !936)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !939)
  %_3.i.i.i.i16.i37 = load i32, ptr %14, align 4, !alias.scope !941, !noalias !942, !noundef !3
  %_4.i.i.i.i17.i38 = load i32, ptr %12, align 4, !alias.scope !942, !noalias !941, !noundef !3
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
  br i1 %_5.not.i.not, label %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17hdb0fc08424a585beE.exit", label %bb1.i

bb1.i:                                            ; preds = %bb16
  %_11.i = add nuw nsw i64 %24, 1
  store i64 %_11.i, ptr %iter, align 8, !alias.scope !943
  %_20.i = icmp ult i64 %24, 2
  tail call void @llvm.assume(i1 %_20.i)
  %self3.i = getelementptr inbounds nuw i64, ptr %_37.sroa.5.0.iter.sroa_idx, i64 %24
  %_15.i = load i64, ptr %self3.i, align 8, !alias.scope !943, !noundef !3
  br label %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17hdb0fc08424a585beE.exit"

"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17hdb0fc08424a585beE.exit": ; preds = %bb16, %bb1.i
  %25 = phi i64 [ %_11.i, %bb1.i ], [ %24, %bb16 ]
  %_0.sroa.3.0.i = phi i64 [ %_15.i, %bb1.i ], [ undef, %bb16 ]
  br i1 %_5.not.i.not, label %bb19, label %bb18

bb18:                                             ; preds = %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17hdb0fc08424a585beE.exit"
  %src5 = getelementptr inbounds nuw i32, ptr %v.0, i64 %_0.sroa.3.0.i
  %dst6 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %_0.sroa.3.0.i
  %_47 = icmp eq i64 %_0.sroa.3.0.i, 0
  %desired_len.sroa.0.0 = select i1 %_47, i64 %len_div_211, i64 %23
  %_8059 = icmp ult i64 %presorted_len.sroa.0.0, %desired_len.sroa.0.0
  br i1 %_8059, label %bb24, label %bb16.backedge

bb16.backedge:                                    ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h023798a31a73eaceE.exit, %bb18
  br label %bb16

bb19:                                             ; preds = %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17hdb0fc08424a585beE.exit"
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %iter)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !946)
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !949)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !952)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !954), !noalias !957
  tail call void @llvm.experimental.noalias.scope.decl(metadata !960), !noalias !957
  tail call void @llvm.experimental.noalias.scope.decl(metadata !962), !noalias !957
  tail call void @llvm.experimental.noalias.scope.decl(metadata !965), !noalias !957
  tail call void @llvm.experimental.noalias.scope.decl(metadata !967), !noalias !957
  tail call void @llvm.experimental.noalias.scope.decl(metadata !970), !noalias !957
  %_3.i.i.i.i.i49 = load i32, ptr %right.sroa.0.026.i, align 4, !alias.scope !972, !noalias !973, !noundef !3
  %_4.i.i.i.i.i50 = load i32, ptr %left.sroa.0.027.i, align 4, !alias.scope !974, !noalias !975, !noundef !3
  %_0.i.i51 = icmp slt i32 %_3.i.i.i.i.i49, %_4.i.i.i.i.i50
  %is_l.i18.i = xor i1 %_0.i.i51, true
  %32 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i49, i32 %_4.i.i.i.i.i50)
  store i32 %32, ptr %dst.sroa.0.029.i, align 4, !noalias !976
  %count.i.i = zext i1 %_0.i.i51 to i64
  %_12.i.i = getelementptr inbounds nuw i32, ptr %right.sroa.0.026.i, i64 %count.i.i
  %count2.i.i = zext i1 %is_l.i18.i to i64
  %_14.i.i = getelementptr inbounds nuw i32, ptr %left.sroa.0.027.i, i64 %count2.i.i
  %_16.i.i = getelementptr inbounds nuw i8, ptr %dst.sroa.0.029.i, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !978)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !981)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !983), !noalias !986
  tail call void @llvm.experimental.noalias.scope.decl(metadata !989), !noalias !986
  tail call void @llvm.experimental.noalias.scope.decl(metadata !991), !noalias !986
  tail call void @llvm.experimental.noalias.scope.decl(metadata !994), !noalias !986
  tail call void @llvm.experimental.noalias.scope.decl(metadata !996), !noalias !986
  tail call void @llvm.experimental.noalias.scope.decl(metadata !999), !noalias !986
  %_3.i.i.i.i19.i = load i32, ptr %right_rev.sroa.0.024.i, align 4, !alias.scope !1001, !noalias !1002, !noundef !3
  %_4.i.i.i.i20.i = load i32, ptr %left_rev.sroa.0.025.i, align 4, !alias.scope !1003, !noalias !1004, !noundef !3
  %_0.i21.i = icmp slt i32 %_3.i.i.i.i19.i, %_4.i.i.i.i20.i
  %is_l.i.i = xor i1 %_0.i21.i, true
  %33 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19.i, i32 %_4.i.i.i.i20.i)
  store i32 %33, ptr %dst_rev.sroa.0.023.i, align 4, !noalias !1005
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
  %37 = load i32, ptr %left.sroa.0.0.right.sroa.0.0.i, align 4, !alias.scope !946
  store i32 %37, ptr %_16.i.i, align 4, !noalias !946
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
  br i1 %or.cond.i, label %bb13.i, label %bb29, !prof !623

bb13.i:                                           ; preds = %bb9.i
; invoke core::slice::sort::shared::smallsort::panic_on_ord_violation
  invoke void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #24
          to label %.noexc unwind label %cleanup2

.noexc:                                           ; preds = %bb13.i
  unreachable

cleanup2:                                         ; preds = %bb13.i
  %38 = landingpad { ptr, i32 }
          cleanup
  %39 = shl nuw nsw i64 %v.1, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.0, ptr nonnull align 4 %scratch.0, i64 %39, i1 false), !noalias !1007
  resume { ptr, i32 } %38

bb29:                                             ; preds = %bb9.i, %start
  ret void

bb24:                                             ; preds = %bb18, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h023798a31a73eaceE.exit
  %iter1.sroa.0.163 = phi i64 [ %iter1.sroa.0.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h023798a31a73eaceE.exit ], [ %iter1.sroa.0.161, %bb18 ]
  %iter1.sroa.0.062 = phi i64 [ %iter1.sroa.0.163, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h023798a31a73eaceE.exit ], [ %presorted_len.sroa.0.0, %bb18 ]
  %_55 = getelementptr inbounds nuw i32, ptr %src5, i64 %iter1.sroa.0.062
  %dst7 = getelementptr inbounds nuw i32, ptr %dst6, i64 %iter1.sroa.0.062
  %40 = load i32, ptr %_55, align 4
  store i32 %40, ptr %dst7, align 4
  %41 = getelementptr inbounds i8, ptr %dst7, i64 -4
  %_4.i.i.i.i.i56 = load i32, ptr %41, align 4, !alias.scope !1012, !noalias !1021, !noundef !3
  %_0.i.i57 = icmp slt i32 %40, %_4.i.i.i.i.i56
  br i1 %_0.i.i57, label %bb4.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h023798a31a73eaceE.exit

bb4.i:                                            ; preds = %bb24, %bb6.i
  %gap_guard.sroa.5.0.i = phi ptr [ %sift.sroa.0.0.i, %bb6.i ], [ %dst7, %bb24 ]
  %sift.sroa.0.0.i = phi ptr [ %43, %bb6.i ], [ %41, %bb24 ]
  %42 = load i32, ptr %sift.sroa.0.0.i, align 4
  store i32 %42, ptr %gap_guard.sroa.5.0.i, align 4
  %_18.i = icmp eq ptr %sift.sroa.0.0.i, %dst6
  br i1 %_18.i, label %bb10.i, label %bb6.i

bb6.i:                                            ; preds = %bb4.i
  %43 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i, i64 -4
  %_4.i.i.i.i2.i = load i32, ptr %43, align 4, !alias.scope !1026, !noalias !1035, !noundef !3
  %_0.i3.i = icmp slt i32 %40, %_4.i.i.i.i2.i
  br i1 %_0.i3.i, label %bb4.i, label %bb10.i

bb10.i:                                           ; preds = %bb6.i, %bb4.i
  store i32 %40, ptr %sift.sroa.0.0.i, align 4, !noalias !1040
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h023798a31a73eaceE.exit

_ZN4core5slice4sort6shared9smallsort11insert_tail17h023798a31a73eaceE.exit: ; preds = %bb24, %bb10.i
  %_80 = icmp ult i64 %iter1.sroa.0.163, %desired_len.sroa.0.0
  %_84 = zext i1 %_80 to i64
  %iter1.sroa.0.1 = add nuw i64 %iter1.sroa.0.163, %_84
  br i1 %_80, label %bb24, label %bb16.backedge
}

; core::slice::sort::stable::driftsort_main
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable14driftsort_main17hbdd5e903be875fcdE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #5 personality ptr @rust_eh_personality {
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
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4.i.i), !noalias !1045
; invoke alloc::raw_vec::RawVecInner<A>::try_allocate_in
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_4.i.i, i64 noundef %_0.sroa.0.0.i7, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %bb4
  %_5.i.i = load i64, ptr %_4.i.i, align 8, !range !1048, !noalias !1045, !noundef !3
  %0 = trunc nuw i64 %_5.i.i to i1
  %1 = getelementptr inbounds nuw i8, ptr %_4.i.i, i64 8
  %err.0.i.i = load i64, ptr %1, align 8, !range !1049, !noalias !1045, !noundef !3
  %2 = getelementptr inbounds nuw i8, ptr %_4.i.i, i64 16
  br i1 %0, label %bb3.i.i, label %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17hccbf2b56117fc39aE.exit", !prof !1050

bb3.i.i:                                          ; preds = %.noexc
  %err.1.i.i = load i64, ptr %2, align 8, !noalias !1045
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #25
          to label %.noexc8 unwind label %cleanup

.noexc8:                                          ; preds = %bb3.i.i
  unreachable

"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17hccbf2b56117fc39aE.exit": ; preds = %.noexc
  %this.1.i.i = load ptr, ptr %2, align 8, !noalias !1045, !nonnull !3, !noundef !3
  %_7.i.i = icmp ule i64 %_0.sroa.0.0.i7, %err.0.i.i
  tail call void @llvm.assume(i1 %_7.i.i)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4.i.i), !noalias !1045
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

bb8:                                              ; preds = %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17hccbf2b56117fc39aE.exit", %start
  %_24.sroa.0.1 = phi i8 [ 0, %start ], [ 1, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17hccbf2b56117fc39aE.exit" ]
  %stack_scratch.sroa.4.0 = phi i64 [ 1024, %start ], [ %err.0.i.i, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17hccbf2b56117fc39aE.exit" ]
  %stack_buf.pn = phi ptr [ %stack_buf, %start ], [ %this.1.i.i, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17hccbf2b56117fc39aE.exit" ]
  %eager_sort = icmp samesign ult i64 %v.1, 65
; invoke core::slice::sort::stable::drift::sort
  invoke void @_ZN4core5slice4sort6stable5drift4sort17h47316847e463e330E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 4 %stack_buf.pn, i64 noundef %stack_scratch.sroa.4.0, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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
define { ptr, i64 } @"_ZN4core5slice4sort6stable27AlignedStorage$LT$T$C$_$GT$19as_uninit_slice_mut17h7a815a85c22bac82E"(ptr noalias noundef align 4 dereferenceable(4096) %self) unnamed_addr #6 {
start:
  %0 = insertvalue { ptr, i64 } poison, ptr %self, 0
  %1 = insertvalue { ptr, i64 } %0, i64 1024, 1
  ret { ptr, i64 } %1
}

; core::slice::sort::stable::drift::create_run
; Function Attrs: nonlazybind uwtable
define noundef range(i64 0, -1) i64 @_ZN4core5slice4sort6stable5drift10create_run17h4881f7c206ded8f9E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %min_good_run_len, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %_7.not = icmp ult i64 %v.1, %min_good_run_len
  br i1 %_7.not, label %bb7, label %bb1

bb7:                                              ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h20a37621609e2076E.exit, %start
  br i1 %eager_sort, label %bb8, label %bb11

bb1:                                              ; preds = %start
  %_4.i = icmp samesign ult i64 %v.1, 2
  br i1 %_4.i, label %_ZN4core5slice4sort6shared17find_existing_run17h20a37621609e2076E.exit, label %bb2.i

bb2.i:                                            ; preds = %bb1
  %_28.i = getelementptr inbounds nuw i8, ptr %v.0, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1051)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1054)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1056)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1059)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1061)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1064)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1066)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1069)
  %_3.i.i.i.i = load i32, ptr %_28.i, align 4, !alias.scope !1071, !noalias !1072, !noundef !3
  %_4.i.i.i.i = load i32, ptr %v.0, align 4, !alias.scope !1072, !noalias !1071, !noundef !3
  %_0.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %_10.i13.not = icmp eq i64 %v.1, 2
  br i1 %_0.i, label %bb4.i.preheader, label %bb11.i.preheader

bb11.i.preheader:                                 ; preds = %bb2.i
  br i1 %_10.i13.not, label %_ZN4core5slice4sort6shared17find_existing_run17h20a37621609e2076E.exit, label %bb12.i.preheader

bb12.i.preheader:                                 ; preds = %bb11.i.preheader
  %invariant.gep = getelementptr i8, ptr %v.0, i64 -4
  br label %bb12.i

bb4.i.preheader:                                  ; preds = %bb2.i
  br i1 %_10.i13.not, label %_ZN4core5slice4sort6shared17find_existing_run17h20a37621609e2076E.exit, label %bb5.i.preheader

bb5.i.preheader:                                  ; preds = %bb4.i.preheader
  %invariant.gep24 = getelementptr i8, ptr %v.0, i64 -4
  br label %bb5.i

bb12.i:                                           ; preds = %bb12.i.preheader, %bb15.i
  %run_len.sroa.0.0.i11 = phi i64 [ %1, %bb15.i ], [ 2, %bb12.i.preheader ]
  %0 = getelementptr inbounds nuw i32, ptr %v.0, i64 %run_len.sroa.0.0.i11
  %gep = getelementptr i32, ptr %invariant.gep, i64 %run_len.sroa.0.0.i11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1073)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1076)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1078)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1081)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1083)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1086)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1088)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1091)
  %_3.i.i.i.i1 = load i32, ptr %0, align 4, !alias.scope !1093, !noalias !1094, !noundef !3
  %_4.i.i.i.i2 = load i32, ptr %gep, align 4, !alias.scope !1094, !noalias !1093, !noundef !3
  %_0.i3 = icmp slt i32 %_3.i.i.i.i1, %_4.i.i.i.i2
  br i1 %_0.i3, label %_ZN4core5slice4sort6shared17find_existing_run17h20a37621609e2076E.exit, label %bb15.i

bb15.i:                                           ; preds = %bb12.i
  %1 = add nuw nsw i64 %run_len.sroa.0.0.i11, 1
  %exitcond.not = icmp eq i64 %1, %v.1
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h20a37621609e2076E.exit, label %bb12.i

bb5.i:                                            ; preds = %bb5.i.preheader, %bb7.i
  %run_len.sroa.0.1.i14 = phi i64 [ %3, %bb7.i ], [ 2, %bb5.i.preheader ]
  %2 = getelementptr inbounds nuw i32, ptr %v.0, i64 %run_len.sroa.0.1.i14
  %gep25 = getelementptr i32, ptr %invariant.gep24, i64 %run_len.sroa.0.1.i14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1095)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1098)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1100)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1103)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1105)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1108)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1110)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1113)
  %_3.i.i.i.i4 = load i32, ptr %2, align 4, !alias.scope !1115, !noalias !1116, !noundef !3
  %_4.i.i.i.i5 = load i32, ptr %gep25, align 4, !alias.scope !1116, !noalias !1115, !noundef !3
  %_0.i6 = icmp slt i32 %_3.i.i.i.i4, %_4.i.i.i.i5
  br i1 %_0.i6, label %bb7.i, label %_ZN4core5slice4sort6shared17find_existing_run17h20a37621609e2076E.exit

bb7.i:                                            ; preds = %bb5.i
  %3 = add nuw nsw i64 %run_len.sroa.0.1.i14, 1
  %exitcond19.not = icmp eq i64 %3, %v.1
  br i1 %exitcond19.not, label %_ZN4core5slice4sort6shared17find_existing_run17h20a37621609e2076E.exit, label %bb5.i

_ZN4core5slice4sort6shared17find_existing_run17h20a37621609e2076E.exit: ; preds = %bb12.i, %bb15.i, %bb5.i, %bb7.i, %bb11.i.preheader, %bb4.i.preheader, %bb1
  %_0.sroa.3.0.i = phi i1 [ false, %bb1 ], [ true, %bb4.i.preheader ], [ false, %bb11.i.preheader ], [ true, %bb7.i ], [ true, %bb5.i ], [ false, %bb15.i ], [ false, %bb12.i ]
  %_0.sroa.0.0.i = phi i64 [ %v.1, %bb1 ], [ 2, %bb4.i.preheader ], [ 2, %bb11.i.preheader ], [ %run_len.sroa.0.1.i14, %bb5.i ], [ %v.1, %bb7.i ], [ %run_len.sroa.0.0.i11, %bb12.i ], [ %v.1, %bb15.i ]
  %_12 = icmp samesign ule i64 %_0.sroa.0.0.i, %v.1
  tail call void @llvm.assume(i1 %_12)
  %_13.not = icmp ult i64 %_0.sroa.0.0.i, %min_good_run_len
  br i1 %_13.not, label %bb7, label %bb3

bb3:                                              ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h20a37621609e2076E.exit
  br i1 %_0.sroa.3.0.i, label %bb14, label %bb5

bb11:                                             ; preds = %bb7
  %_0.sroa.0.0.i7 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 -2305843009213693950, 2305843009213693952) %v.1, i64 %min_good_run_len)
  %_36 = shl nuw nsw i64 %_0.sroa.0.0.i7, 1
  br label %bb12

bb8:                                              ; preds = %bb7
  %_0.sroa.0.0.i8 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 -2305843009213693950, 2305843009213693952) %v.1, i64 32)
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h9e0d5d0b38d4fe50E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %_0.sroa.0.0.i8, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef 0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef align 8 dereferenceable(8) %is_less) #27
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
  %6 = load i32, ptr %x.i.i.epil, align 4, !alias.scope !1117, !noalias !1122, !noundef !3
  %7 = load i32, ptr %y.i.i.epil, align 4, !alias.scope !1124, !noalias !1125
  store i32 %7, ptr %x.i.i.epil, align 4, !alias.scope !1117, !noalias !1122
  store i32 %6, ptr %y.i.i.epil, align 4, !alias.scope !1124, !noalias !1125
  br label %bb5

bb5:                                              ; preds = %bb5.i.i.epil, %bb5.loopexit.unr-lcssa, %bb14, %bb3
  %_27 = shl nuw nsw i64 %_0.sroa.0.0.i, 1
  %_26 = or disjoint i64 %_27, 1
  br label %bb12

bb14:                                             ; preds = %bb3
  %half_len2.i = lshr i64 %_0.sroa.0.0.i, 1
  %end.i = getelementptr inbounds nuw i32, ptr %v.0, i64 %_0.sroa.0.0.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1125)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1122)
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
  %10 = load i32, ptr %x.i.i, align 4, !alias.scope !1117, !noalias !1122, !noundef !3
  %11 = load i32, ptr %y.i.i, align 4, !alias.scope !1124, !noalias !1125
  store i32 %11, ptr %x.i.i, align 4, !alias.scope !1117, !noalias !1122
  store i32 %10, ptr %y.i.i, align 4, !alias.scope !1124, !noalias !1125
  %12 = xor i64 %i.sroa.0.016.i.i, -2
  %gep27 = getelementptr inbounds i32, ptr %invariant.gep26, i64 %i.sroa.0.016.i.i
  %y.i.i.1 = getelementptr i32, ptr %end.i, i64 %12
  %13 = load i32, ptr %gep27, align 4, !alias.scope !1117, !noalias !1122, !noundef !3
  %14 = load i32, ptr %y.i.i.1, align 4, !alias.scope !1124, !noalias !1125
  store i32 %14, ptr %gep27, align 4, !alias.scope !1117, !noalias !1122
  store i32 %13, ptr %y.i.i.1, align 4, !alias.scope !1124, !noalias !1125
  %15 = add nuw nsw i64 %i.sroa.0.016.i.i, 2
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %bb5.loopexit.unr-lcssa, label %bb5.i.i
}

; core::slice::sort::stable::drift::stable_quicksort
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6stable5drift16stable_quicksort17h9bedf0d743f716c4E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #0 {
start:
  %self = or i64 %v.1, 1
  %0 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self, i1 true)
  %1 = trunc nuw nsw i64 %0 to i32
  %log = shl nuw nsw i32 %1, 1
  %limit = xor i32 %log, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h9e0d5d0b38d4fe50E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef %limit, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef align 8 dereferenceable(8) %is_less) #27
  ret void
}

; core::slice::sort::stable::drift::sort
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6stable5drift4sort17h47316847e463e330E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %2 = tail call noundef i64 @_ZN4core5slice4sort6stable5drift10create_run17h4881f7c206ded8f9E(ptr noalias noundef nonnull align 4 %_82, i64 noundef %new_len, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i64 noundef %min_good_run_len.sroa.0.0, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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

bb12:                                             ; preds = %bb12.lr.ph, %_ZN4core5slice4sort6stable5drift13logical_merge17h15db09b64e43f763E.exit
  %stack_len.sroa.0.150 = phi i64 [ %stack_len.sroa.0.0, %bb12.lr.ph ], [ %count, %_ZN4core5slice4sort6stable5drift13logical_merge17h15db09b64e43f763E.exit ]
  %prev_run.sroa.0.149 = phi i64 [ %prev_run.sroa.0.0, %bb12.lr.ph ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h15db09b64e43f763E.exit ]
  %count = add i64 %stack_len.sroa.0.150, -1
  %_41 = getelementptr inbounds nuw i8, ptr %desired_depth_storage, i64 %count
  %_40 = load i8, ptr %_41, align 1, !noundef !3
  %_39.not = icmp ult i8 %_40, %desired_depth.sroa.0.0
  br i1 %_39.not, label %bb17, label %bb13

bb17:                                             ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17h15db09b64e43f763E.exit, %bb12, %bb10
  %prev_run.sroa.0.1.lcssa = phi i64 [ %prev_run.sroa.0.0, %bb10 ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h15db09b64e43f763E.exit ], [ %prev_run.sroa.0.149, %bb12 ]
  %stack_len.sroa.0.1.lcssa = phi i64 [ %stack_len.sroa.0.0, %bb10 ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17h15db09b64e43f763E.exit ], [ %stack_len.sroa.0.150, %bb12 ]
  %_59 = getelementptr inbounds nuw i64, ptr %run_storage, i64 %stack_len.sroa.0.1.lcssa
  store i64 %prev_run.sroa.0.1.lcssa, ptr %_59, align 8
  %_61 = getelementptr inbounds nuw i8, ptr %desired_depth_storage, i64 %stack_len.sroa.0.1.lcssa
  store i8 %desired_depth.sroa.0.0, ptr %_61, align 1
  br i1 %_22, label %bb19, label %bb18

bb13:                                             ; preds = %bb12
  %_46 = getelementptr inbounds nuw i64, ptr %run_storage, i64 %count
  %left10 = load i64, ptr %_46, align 8, !noundef !3
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
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h15db09b64e43f763E.exit

bb5.i:                                            ; preds = %bb11.i, %bb3.i
  br i1 %_10.not.i, label %bb16.i, label %bb7.i

bb11.i:                                           ; preds = %bb3.i
  %self.i = or i64 %_50, 1
  %8 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i, i1 true)
  %9 = trunc nuw nsw i64 %8 to i32
  %log.i = shl nuw nsw i32 %9, 1
  %limit.i = xor i32 %log.i, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h9e0d5d0b38d4fe50E(ptr noalias noundef nonnull align 4 %_98, i64 noundef range(i64 0, 2305843009213693952) %_50, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #27
  br label %bb5.i

bb7.i:                                            ; preds = %bb16.i, %bb5.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1126)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1129)
  %_6.i = icmp ult i64 %left10, 2
  %_7.i = icmp ult i64 %prev_run.sroa.0.149, 2
  %or.cond.i = or i1 %_7.i, %_6.i
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17h58c75b7ed0d5d8edE.exit, label %bb2.i

bb2.i:                                            ; preds = %bb7.i
  %_0.sroa.0.0.i.i = tail call i64 @llvm.umin.i64(i64 %_51, i64 %_50)
  %_8.i = icmp samesign ult i64 %scratch.1, %_0.sroa.0.0.i.i
  br i1 %_8.i, label %_ZN4core5slice4sort6stable5merge5merge17h58c75b7ed0d5d8edE.exit, label %bb5.i37

bb5.i37:                                          ; preds = %bb2.i
  %v_mid.i = getelementptr inbounds nuw i32, ptr %_98, i64 %_50
  %left_is_shorter.not.i = icmp samesign ugt i64 %_50, %_51
  %spec.select.i = select i1 %left_is_shorter.not.i, ptr %v_mid.i, ptr %_98
  %10 = shl nuw nsw i64 %_0.sroa.0.0.i.i, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %scratch.0, ptr nonnull align 4 %spec.select.i, i64 %10, i1 false), !alias.scope !1131
  %_22.i38 = getelementptr inbounds nuw i8, ptr %scratch.0, i64 %10
  br i1 %left_is_shorter.not.i, label %bb1.i.i, label %bb3.i.i

bb1.i.i:                                          ; preds = %bb5.i37, %bb1.i.i
  %_2110.i.i = phi ptr [ %_21.i.i, %bb1.i.i ], [ %_22.i38, %bb5.i37 ]
  %_188.i.i = phi ptr [ %_18.i.i, %bb1.i.i ], [ %spec.select.i, %bb5.i37 ]
  %out.sroa.0.0.i.i = phi ptr [ %13, %bb1.i.i ], [ %v_end.i, %bb5.i37 ]
  %11 = getelementptr inbounds i8, ptr %_188.i.i, i64 -4
  %12 = getelementptr inbounds i8, ptr %_2110.i.i, i64 -4
  %13 = getelementptr inbounds i8, ptr %out.sroa.0.0.i.i, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1132)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1135)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1137)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1140)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1142)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1145)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1147)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1150)
  %_3.i.i.i.i.i.i = load i32, ptr %12, align 4, !alias.scope !1152, !noalias !1153, !noundef !3
  %_4.i.i.i.i.i.i = load i32, ptr %11, align 4, !alias.scope !1156, !noalias !1157, !noundef !3
  %_0.i.i.i = icmp slt i32 %_3.i.i.i.i.i.i, %_4.i.i.i.i.i.i
  %14 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i.i.i, i32 %_4.i.i.i.i.i.i)
  store i32 %14, ptr %13, align 4, !alias.scope !1126, !noalias !1158
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1159)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1162)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1164)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1167)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1169)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1172)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1174)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1177)
  %_3.i.i.i.i.i12.i = load i32, ptr %right.sroa.0.010.i.i, align 4, !alias.scope !1179, !noalias !1180, !noundef !3
  %_4.i.i.i.i.i13.i = load i32, ptr %_2059.i.i, align 4, !alias.scope !1183, !noalias !1184, !noundef !3
  %_0.i.i14.i = icmp slt i32 %_3.i.i.i.i.i12.i, %_4.i.i.i.i.i13.i
  %consume_left.i.i = xor i1 %_0.i.i14.i, true
  %15 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i12.i, i32 %_4.i.i.i.i.i13.i)
  store i32 %15, ptr %_2511.i.i, align 4, !alias.scope !1126, !noalias !1185
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %merge_state.sroa.13.0.i, ptr align 4 %merge_state.sroa.0.0.i, i64 %18, i1 false), !alias.scope !1131, !noalias !1186
  br label %_ZN4core5slice4sort6stable5merge5merge17h58c75b7ed0d5d8edE.exit

_ZN4core5slice4sort6stable5merge5merge17h58c75b7ed0d5d8edE.exit: ; preds = %bb7.i, %bb2.i, %bb16.i40
  %_39.i = shl nuw nsw i64 %merged_len, 1
  %_38.i = or disjoint i64 %_39.i, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h15db09b64e43f763E.exit

bb16.i:                                           ; preds = %bb5.i
  %_37.i = getelementptr inbounds nuw i32, ptr %_98, i64 %_50
  %self.i41 = or i64 %_51, 1
  %19 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i41, i1 true)
  %20 = trunc nuw nsw i64 %19 to i32
  %log.i42 = shl nuw nsw i32 %20, 1
  %limit.i43 = xor i32 %log.i42, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h9e0d5d0b38d4fe50E(ptr noalias noundef nonnull align 4 %_37.i, i64 noundef range(i64 0, 2305843009213693952) %_51, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i43, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #27
  br label %bb7.i

_ZN4core5slice4sort6stable5drift13logical_merge17h15db09b64e43f763E.exit: ; preds = %bb9.i, %_ZN4core5slice4sort6stable5merge5merge17h58c75b7ed0d5d8edE.exit
  %_0.sroa.0.0.i = phi i64 [ %_38.i, %_ZN4core5slice4sort6stable5merge5merge17h58c75b7ed0d5d8edE.exit ], [ %_40.i, %bb9.i ]
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
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h9e0d5d0b38d4fe50E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i46, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef align 8 dereferenceable(8) %is_less) #27
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
define void @"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h9ee9a77a5c34b7f0E"(ptr noalias noundef align 8 captures(none) dereferenceable(24) %self, ptr noundef readnone captures(address) %left_end, ptr noundef readnone captures(address) %right_end, ptr noundef writeonly captures(none) %0, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #7 {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1191)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1194)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1196)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1199)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1201)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1204)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1206)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1209)
  %_3.i.i.i.i = load i32, ptr %4, align 4, !alias.scope !1211, !noalias !1212, !noundef !3
  %_4.i.i.i.i = load i32, ptr %3, align 4, !alias.scope !1212, !noalias !1211, !noundef !3
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
define void @"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h912ec597818e1622E"(ptr noalias noundef align 8 captures(none) dereferenceable(24) %self, ptr noundef readonly captures(address) %0, ptr noundef readnone captures(address) %right_end, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #8 {
start:
  %1 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %_9 = load ptr, ptr %1, align 8, !noundef !3
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1213)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1216)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1218)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1221)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1223)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1226)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1228)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1231)
  %_3.i.i.i.i = load i32, ptr %right.sroa.0.010, align 4, !alias.scope !1233, !noalias !1234, !noundef !3
  %_4.i.i.i.i = load i32, ptr %_2059, align 4, !alias.scope !1234, !noalias !1233, !noundef !3
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
define void @_ZN4core5slice4sort6stable5merge5merge17h58c75b7ed0d5d8edE(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %0, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #1 personality ptr @rust_eh_personality {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1235)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1238)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1240)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1243)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1245)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1248)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1250)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1253)
  %_3.i.i.i.i.i = load i32, ptr %3, align 4, !alias.scope !1255, !noalias !1256, !noundef !3
  %_4.i.i.i.i.i = load i32, ptr %2, align 4, !alias.scope !1259, !noalias !1260, !noundef !3
  %_0.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %5 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i.i, i32 %_4.i.i.i.i.i)
  store i32 %5, ptr %4, align 4, !noalias !1261
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1262)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1265)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1267)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1270)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1272)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1275)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1277)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1280)
  %_3.i.i.i.i.i12 = load i32, ptr %right.sroa.0.010.i, align 4, !alias.scope !1282, !noalias !1283, !noundef !3
  %_4.i.i.i.i.i13 = load i32, ptr %_2059.i, align 4, !alias.scope !1286, !noalias !1287, !noundef !3
  %_0.i.i14 = icmp slt i32 %_3.i.i.i.i.i12, %_4.i.i.i.i.i13
  %consume_left.i = xor i1 %_0.i.i14, true
  %6 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i12, i32 %_4.i.i.i.i.i13)
  store i32 %6, ptr %_2511.i, align 4, !noalias !1288
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %merge_state.sroa.13.0, ptr align 4 %merge_state.sroa.0.0, i64 %9, i1 false), !noalias !1289
  br label %bb18

bb18:                                             ; preds = %bb2, %start, %bb16
  ret void
}

; core::slice::sort::stable::quicksort::stable_partition
; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17h1c1ce6d4491c2768E(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 captures(none) %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %0, i1 noundef zeroext %pivot_goes_left, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #4 {
start:
  %_8 = icmp samesign uge i64 %scratch.1, %v.1
  %.not = icmp ult i64 %0, %v.1
  %or.cond = and i1 %_8, %.not
  br i1 %or.cond, label %bb33, label %bb31, !prof !1294

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1295)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1298)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1300)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1303)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1305)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1308)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1310)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1313)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1315)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1318)
  %_3.i.i.i.i.i = load i32, ptr %pivot, align 4, !alias.scope !1320, !noalias !1321, !noundef !3
  %_4.i.i.i.i.i = load i32, ptr %state.sroa.9.187, align 4, !alias.scope !1321, !noalias !1320, !noundef !3
  %_0.i.i = icmp sge i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %2 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -4
  %dst_base.sroa.0.0.i = select i1 %_0.i.i, ptr %scratch.0, ptr %2
  %dst.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i, i64 %state.sroa.27.186
  store i32 %_4.i.i.i.i.i, ptr %dst.i, align 4, !noalias !1322
  %_8.i = zext i1 %_0.i.i to i64
  %3 = add i64 %state.sroa.27.186, %_8.i
  %_9.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1325)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1328)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1330)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1333)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1335)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1338)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1340)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1343)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1345)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1348)
  %_3.i.i.i.i.i25 = load i32, ptr %pivot, align 4, !alias.scope !1350, !noalias !1351, !noundef !3
  %_4.i.i.i.i.i26 = load i32, ptr %_9.i, align 4, !alias.scope !1351, !noalias !1350, !noundef !3
  %_0.i.i27 = icmp sge i32 %_3.i.i.i.i.i25, %_4.i.i.i.i.i26
  %4 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -8
  %dst_base.sroa.0.0.i29 = select i1 %_0.i.i27, ptr %scratch.0, ptr %4
  %dst.i31 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29, i64 %3
  store i32 %_4.i.i.i.i.i26, ptr %dst.i31, align 4, !noalias !1352
  %_8.i33 = zext i1 %_0.i.i27 to i64
  %5 = add i64 %3, %_8.i33
  %_9.i34 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1355)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1358)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1360)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1363)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1365)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1368)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1370)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1373)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1375)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1378)
  %_3.i.i.i.i.i35 = load i32, ptr %pivot, align 4, !alias.scope !1380, !noalias !1381, !noundef !3
  %_4.i.i.i.i.i36 = load i32, ptr %_9.i34, align 4, !alias.scope !1381, !noalias !1380, !noundef !3
  %_0.i.i37 = icmp sge i32 %_3.i.i.i.i.i35, %_4.i.i.i.i.i36
  %6 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -12
  %dst_base.sroa.0.0.i39 = select i1 %_0.i.i37, ptr %scratch.0, ptr %6
  %dst.i41 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39, i64 %5
  store i32 %_4.i.i.i.i.i36, ptr %dst.i41, align 4, !noalias !1382
  %_8.i43 = zext i1 %_0.i.i37 to i64
  %7 = add i64 %5, %_8.i43
  %_9.i44 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1385)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1388)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1390)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1393)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1395)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1398)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1400)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1403)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1405)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1408)
  %_3.i.i.i.i.i45 = load i32, ptr %pivot, align 4, !alias.scope !1410, !noalias !1411, !noundef !3
  %_4.i.i.i.i.i46 = load i32, ptr %_9.i44, align 4, !alias.scope !1411, !noalias !1410, !noundef !3
  %_0.i.i47 = icmp sge i32 %_3.i.i.i.i.i45, %_4.i.i.i.i.i46
  %8 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -16
  %dst_base.sroa.0.0.i49 = select i1 %_0.i.i47, ptr %scratch.0, ptr %8
  %dst.i51 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49, i64 %7
  store i32 %_4.i.i.i.i.i46, ptr %dst.i51, align 4, !noalias !1412
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1415)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1418)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1420)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1423)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1425)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1428)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1430)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1433)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1435)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1438)
  %_3.i.i.i.i.i55 = load i32, ptr %pivot, align 4, !alias.scope !1440, !noalias !1441, !noundef !3
  %_4.i.i.i.i.i56 = load i32, ptr %state.sroa.9.293, align 4, !alias.scope !1441, !noalias !1440, !noundef !3
  %_0.i.i57 = icmp sge i32 %_3.i.i.i.i.i55, %_4.i.i.i.i.i56
  %10 = getelementptr inbounds i8, ptr %state.sroa.43.294, i64 -4
  %dst_base.sroa.0.0.i59 = select i1 %_0.i.i57, ptr %scratch.0, ptr %10
  %dst.i61 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59, i64 %state.sroa.27.292
  store i32 %_4.i.i.i.i.i56, ptr %dst.i61, align 4, !noalias !1442
  %_8.i63 = zext i1 %_0.i.i57 to i64
  %11 = add i64 %state.sroa.27.292, %_8.i63
  %_9.i64 = getelementptr inbounds nuw i8, ptr %state.sroa.9.293, i64 4
  %_47 = icmp ult ptr %_9.i64, %loop_end
  br i1 %_47, label %bb18, label %bb21

bb23:                                             ; preds = %bb21
  %12 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa, i64 -4
  %dst_base.sroa.0.0.i66 = select i1 %pivot_goes_left, ptr %scratch.0, ptr %12
  %dst.i68 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i66, i64 %state.sroa.27.2.lcssa
  %13 = load i32, ptr %state.sroa.9.2.lcssa, align 4, !noalias !1445
  store i32 %13, ptr %dst.i68, align 4, !noalias !1445
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
  br i1 %epil.iter.cmp.not, label %bb30, label %bb42.epil, !llvm.loop !1448

bb30:                                             ; preds = %bb30.loopexit.unr-lcssa, %bb42.epil, %bb22
  ret i64 %state.sroa.27.2.lcssa
}

; core::slice::sort::stable::quicksort::stable_partition
; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17hc0d283a798e182a9E(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 captures(none) %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %0, i1 noundef zeroext %pivot_goes_left, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #4 {
start:
  %_8 = icmp samesign uge i64 %scratch.1, %v.1
  %.not = icmp ult i64 %0, %v.1
  %or.cond = and i1 %_8, %.not
  br i1 %or.cond, label %bb33, label %bb31, !prof !1294

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1450)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1453)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1455)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1458)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1460)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1463)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1465)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1468)
  %_3.i.i.i.i = load i32, ptr %state.sroa.9.187, align 4, !alias.scope !1470, !noalias !1471, !noundef !3
  %_4.i.i.i.i = load i32, ptr %pivot, align 4, !alias.scope !1471, !noalias !1470, !noundef !3
  %_0.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %2 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -4
  %dst_base.sroa.0.0.i = select i1 %_0.i, ptr %scratch.0, ptr %2
  %dst.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i, i64 %state.sroa.27.186
  store i32 %_3.i.i.i.i, ptr %dst.i, align 4, !noalias !1472
  %_8.i = zext i1 %_0.i to i64
  %3 = add i64 %state.sroa.27.186, %_8.i
  %_9.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1475)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1478)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1480)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1483)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1485)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1488)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1490)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1493)
  %_3.i.i.i.i25 = load i32, ptr %_9.i, align 4, !alias.scope !1495, !noalias !1496, !noundef !3
  %_4.i.i.i.i26 = load i32, ptr %pivot, align 4, !alias.scope !1496, !noalias !1495, !noundef !3
  %_0.i27 = icmp slt i32 %_3.i.i.i.i25, %_4.i.i.i.i26
  %4 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -8
  %dst_base.sroa.0.0.i29 = select i1 %_0.i27, ptr %scratch.0, ptr %4
  %dst.i31 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29, i64 %3
  store i32 %_3.i.i.i.i25, ptr %dst.i31, align 4, !noalias !1497
  %_8.i33 = zext i1 %_0.i27 to i64
  %5 = add i64 %3, %_8.i33
  %_9.i34 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1500)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1503)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1505)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1508)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1510)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1513)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1515)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1518)
  %_3.i.i.i.i35 = load i32, ptr %_9.i34, align 4, !alias.scope !1520, !noalias !1521, !noundef !3
  %_4.i.i.i.i36 = load i32, ptr %pivot, align 4, !alias.scope !1521, !noalias !1520, !noundef !3
  %_0.i37 = icmp slt i32 %_3.i.i.i.i35, %_4.i.i.i.i36
  %6 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -12
  %dst_base.sroa.0.0.i39 = select i1 %_0.i37, ptr %scratch.0, ptr %6
  %dst.i41 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39, i64 %5
  store i32 %_3.i.i.i.i35, ptr %dst.i41, align 4, !noalias !1522
  %_8.i43 = zext i1 %_0.i37 to i64
  %7 = add i64 %5, %_8.i43
  %_9.i44 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1525)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1528)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1530)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1533)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1535)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1538)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1540)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1543)
  %_3.i.i.i.i45 = load i32, ptr %_9.i44, align 4, !alias.scope !1545, !noalias !1546, !noundef !3
  %_4.i.i.i.i46 = load i32, ptr %pivot, align 4, !alias.scope !1546, !noalias !1545, !noundef !3
  %_0.i47 = icmp slt i32 %_3.i.i.i.i45, %_4.i.i.i.i46
  %8 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -16
  %dst_base.sroa.0.0.i49 = select i1 %_0.i47, ptr %scratch.0, ptr %8
  %dst.i51 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49, i64 %7
  store i32 %_3.i.i.i.i45, ptr %dst.i51, align 4, !noalias !1547
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1550)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1553)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1555)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1558)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1560)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1563)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1565)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1568)
  %_3.i.i.i.i55 = load i32, ptr %state.sroa.9.293, align 4, !alias.scope !1570, !noalias !1571, !noundef !3
  %_4.i.i.i.i56 = load i32, ptr %pivot, align 4, !alias.scope !1571, !noalias !1570, !noundef !3
  %_0.i57 = icmp slt i32 %_3.i.i.i.i55, %_4.i.i.i.i56
  %10 = getelementptr inbounds i8, ptr %state.sroa.43.294, i64 -4
  %dst_base.sroa.0.0.i59 = select i1 %_0.i57, ptr %scratch.0, ptr %10
  %dst.i61 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59, i64 %state.sroa.27.292
  store i32 %_3.i.i.i.i55, ptr %dst.i61, align 4, !noalias !1572
  %_8.i63 = zext i1 %_0.i57 to i64
  %11 = add i64 %state.sroa.27.292, %_8.i63
  %_9.i64 = getelementptr inbounds nuw i8, ptr %state.sroa.9.293, i64 4
  %_47 = icmp ult ptr %_9.i64, %loop_end
  br i1 %_47, label %bb18, label %bb21

bb23:                                             ; preds = %bb21
  %12 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa, i64 -4
  %dst_base.sroa.0.0.i66 = select i1 %pivot_goes_left, ptr %scratch.0, ptr %12
  %dst.i68 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i66, i64 %state.sroa.27.2.lcssa
  %13 = load i32, ptr %state.sroa.9.2.lcssa, align 4, !noalias !1575
  store i32 %13, ptr %dst.i68, align 4, !noalias !1575
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
  br i1 %epil.iter.cmp.not, label %bb30, label %bb42.epil, !llvm.loop !1578

bb30:                                             ; preds = %bb30.loopexit.unr-lcssa, %bb42.epil, %bb22
  ret i64 %state.sroa.27.2.lcssa
}

; core::slice::sort::stable::quicksort::PartitionState<T>::partition_one
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define noundef ptr @"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h3e882c6cb7ea627eE"(ptr noalias noundef align 8 captures(none) dereferenceable(32) %self, i1 noundef zeroext %towards_left) unnamed_addr #9 {
start:
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 24
  %self1 = load ptr, ptr %0, align 8, !noundef !3
  %1 = getelementptr inbounds i8, ptr %self1, i64 -4
  store ptr %1, ptr %0, align 8
  %2 = load ptr, ptr %self, align 8
  %dst_base.sroa.0.0 = select i1 %towards_left, ptr %2, ptr %1
  %3 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %count = load i64, ptr %3, align 8, !noundef !3
  %dst = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0, i64 %count
  %4 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %src = load ptr, ptr %4, align 8, !noundef !3
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
define void @_ZN4core5slice4sort6stable9quicksort9quicksort17h9e0d5d0b38d4fe50E(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %2, ptr noalias noundef readonly align 4 captures(address) dereferenceable_or_null(4) %3, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #5 {
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

bb5:                                              ; preds = %bb5.lr.ph, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h447654892ce49de7E.exit"
  %v.sroa.16.034 = phi i64 [ %v.sroa.16.0.ph41, %bb5.lr.ph ], [ %left_partition_len.sroa.0.0, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h447654892ce49de7E.exit" ]
  %limit.sroa.0.033 = phi i32 [ %limit.sroa.0.0.ph40, %bb5.lr.ph ], [ %4, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h447654892ce49de7E.exit" ]
  %_11 = icmp eq i32 %limit.sroa.0.033, 0
  br i1 %_11, label %bb6, label %bb7

bb3:                                              ; preds = %bb28, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h447654892ce49de7E.exit", %start
  %v.sroa.0.0.ph.lcssa31 = phi ptr [ %0, %start ], [ %v.sroa.0.0.ph42, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h447654892ce49de7E.exit" ], [ %_54, %bb28 ]
  %v.sroa.16.0.lcssa = phi i64 [ %1, %start ], [ %left_partition_len.sroa.0.0, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h447654892ce49de7E.exit" ], [ %new_len, %bb28 ]
; call core::slice::sort::shared::smallsort::small_sort_general_with_scratch
  call void @_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17hdb236b9dbca3e730E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph.lcssa31, i64 noundef range(i64 0, 33) %v.sroa.16.0.lcssa, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, ptr noalias nonnull align 8 poison)
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
  %self.i = call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h100f0d34d8fa5739E(ptr noundef nonnull readonly align 4 %v.sroa.0.0.ph42, ptr noundef nonnull readonly %b.i, ptr noundef nonnull readonly %c.i, i64 noundef %len_div_84.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less)
  br label %_ZN4core5slice4sort6shared5pivot12choose_pivot17ha498864309532c56E.exit

bb3.i:                                            ; preds = %bb7
  call void @llvm.experimental.noalias.scope.decl(metadata !1579)
  call void @llvm.experimental.noalias.scope.decl(metadata !1582)
  call void @llvm.experimental.noalias.scope.decl(metadata !1584), !noalias !1587
  call void @llvm.experimental.noalias.scope.decl(metadata !1590), !noalias !1587
  call void @llvm.experimental.noalias.scope.decl(metadata !1592), !noalias !1587
  call void @llvm.experimental.noalias.scope.decl(metadata !1595), !noalias !1587
  call void @llvm.experimental.noalias.scope.decl(metadata !1597), !noalias !1587
  call void @llvm.experimental.noalias.scope.decl(metadata !1600), !noalias !1587
  %_3.i.i.i.i.i = load i32, ptr %v.sroa.0.0.ph42, align 4, !alias.scope !1602, !noalias !1605, !noundef !3
  %_4.i.i.i.i.i = load i32, ptr %b.i, align 4, !alias.scope !1607, !noalias !1608, !noundef !3
  %_0.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %_4.i.i.i.i6.i = load i32, ptr %c.i, align 4, !alias.scope !1609, !noalias !1618, !noundef !3
  %_0.i7.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i6.i
  %5 = xor i1 %_0.i.i, %_0.i7.i
  %_0.i10.i = icmp slt i32 %_4.i.i.i.i.i, %_4.i.i.i.i6.i
  %_12.i.i = xor i1 %_0.i.i, %_0.i10.i
  %c.b.i.i = select i1 %_12.i.i, ptr %c.i, ptr %b.i
  %_0.sroa.0.0.i.i = select i1 %5, ptr %v.sroa.0.0.ph42, ptr %c.b.i.i
  br label %_ZN4core5slice4sort6shared5pivot12choose_pivot17ha498864309532c56E.exit

_ZN4core5slice4sort6shared5pivot12choose_pivot17ha498864309532c56E.exit: ; preds = %bb5.i, %bb3.i
  %self.i.sink = phi ptr [ %self.i, %bb5.i ], [ %_0.sroa.0.0.i.i, %bb3.i ]
  %6 = ptrtoint ptr %self.i.sink to i64
  %7 = sub nuw i64 %6, %.sink77
  %index.sroa.0.0.i = lshr exact i64 %7, 2
  %cond.i = icmp samesign ult i64 %index.sroa.0.0.i, %v.sroa.16.034
  call void @llvm.assume(i1 %cond.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pivot_copy)
  %src = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph42, i64 %7
  %value = load i32, ptr %src, align 4, !noundef !3
  store i32 %value, ptr %pivot_copy, align 4
  br i1 %.not, label %bb14, label %bb12

bb6:                                              ; preds = %bb5
; call core::slice::sort::stable::drift::sort
  call void @_ZN4core5slice4sort6stable5drift4sort17h47316847e463e330E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph42, i64 noundef %v.sroa.16.034, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i1 noundef zeroext true, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  br label %bb22

bb12:                                             ; preds = %_ZN4core5slice4sort6shared5pivot12choose_pivot17ha498864309532c56E.exit
  %_3.i.i.i.i = load i32, ptr %left_ancestor_pivot.sroa.0.0.ph39, align 4, !alias.scope !1623, !noalias !1632, !noundef !3
  %_0.i.not = icmp slt i32 %_3.i.i.i.i, %value
  br i1 %_0.i.not, label %bb14, label %bb16

bb14:                                             ; preds = %_ZN4core5slice4sort6shared5pivot12choose_pivot17ha498864309532c56E.exit, %bb12
; call core::slice::sort::stable::quicksort::stable_partition
  %8 = call noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17hc0d283a798e182a9E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph42, i64 noundef %v.sroa.16.034, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i64 noundef %index.sroa.0.0.i, i1 noundef zeroext false, ptr noalias align 8 poison)
  %9 = icmp eq i64 %8, 0
  br label %bb16

bb16:                                             ; preds = %bb14, %bb12
  %left_partition_len.sroa.0.0 = phi i64 [ 0, %bb12 ], [ %8, %bb14 ]
  %perform_equal_partition.sroa.0.0.in = phi i1 [ true, %bb12 ], [ %9, %bb14 ]
  br i1 %perform_equal_partition.sroa.0.0.in, label %bb17, label %bb19

bb19:                                             ; preds = %bb16
  %_6.not.i = icmp ugt i64 %left_partition_len.sroa.0.0, %v.sroa.16.034
  br i1 %_6.not.i, label %bb3.i23, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h447654892ce49de7E.exit", !prof !1050

bb3.i23:                                          ; preds = %bb19
; call core::panicking::panic_fmt
  call void @_ZN4core9panicking9panic_fmt17ha4414e4328fe24a0E(ptr noundef nonnull @alloc_d1084648e479974e70c9329824bf76f9, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_58d434a1e795f965ef82c8e9c5db822a) #24, !noalias !1637
  unreachable

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h447654892ce49de7E.exit": ; preds = %bb19
  %10 = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph42, i64 %left_partition_len.sroa.0.0
  %11 = sub nuw nsw i64 %v.sroa.16.034, %left_partition_len.sroa.0.0
; call core::slice::sort::stable::quicksort::quicksort
  call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h9e0d5d0b38d4fe50E(ptr noalias noundef nonnull align 4 %10, i64 noundef %11, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef %4, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) %pivot_copy, ptr noalias noundef align 8 dereferenceable(8) %is_less) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_8 = icmp ult i64 %left_partition_len.sroa.0.0, 33
  br i1 %_8, label %bb3, label %bb5

bb17:                                             ; preds = %bb16
; call core::slice::sort::stable::quicksort::stable_partition
  %mid_eq = call noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17h1c1ce6d4491c2768E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph42, i64 noundef %v.sroa.16.034, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i64 noundef %index.sroa.0.0.i, i1 noundef zeroext true, ptr noalias align 8 poison)
  %_47 = icmp ugt i64 %mid_eq, %v.sroa.16.034
  br i1 %_47, label %bb27, label %bb28, !prof !1050

bb28:                                             ; preds = %bb17
  %new_len = sub nuw i64 %v.sroa.16.034, %mid_eq
  %_54 = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph42, i64 %mid_eq
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_832 = icmp ult i64 %new_len, 33
  br i1 %_832, label %bb3, label %bb5.lr.ph

bb27:                                             ; preds = %bb17
; call core::slice::index::slice_index_fail
  call void @_ZN4core5slice5index16slice_index_fail17h62807bcaa490c9c1E(i64 noundef %mid_eq, i64 noundef %v.sroa.16.034, i64 noundef %v.sroa.16.034, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_0766b232215672ee1bd2195fdb153938) #24
  unreachable

bb22:                                             ; preds = %bb3, %bb6
  ret void
}

; alloc::slice::<impl core::slice::sort::stable::BufGuard<T> for alloc::vec::Vec<T>>::with_capacity
; Function Attrs: nonlazybind uwtable
define void @"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17hccbf2b56117fc39aE"(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_0, i64 noundef %capacity) unnamed_addr #0 {
start:
  %_4.i = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4.i)
; call alloc::raw_vec::RawVecInner<A>::try_allocate_in
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_4.i, i64 noundef %capacity, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
  %_5.i = load i64, ptr %_4.i, align 8, !range !1048, !noundef !3
  %0 = trunc nuw i64 %_5.i to i1
  %1 = getelementptr inbounds nuw i8, ptr %_4.i, i64 8
  %err.0.i = load i64, ptr %1, align 8, !range !1049, !noundef !3
  %2 = getelementptr inbounds nuw i8, ptr %_4.i, i64 16
  br i1 %0, label %bb3.i, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h7b15ea3cd8694698E.exit", !prof !1050

bb3.i:                                            ; preds = %start
  %err.1.i = load i64, ptr %2, align 8
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i, i64 %err.1.i) #25
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h7b15ea3cd8694698E.exit": ; preds = %start
  %this.1.i = load ptr, ptr %2, align 8, !nonnull !3, !noundef !3
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
define { ptr, i64 } @"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$19as_uninit_slice_mut17hfba268e3af56e3c6E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %self) unnamed_addr #10 {
start:
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %_10 = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %1 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %count = load i64, ptr %1, align 8, !noundef !3
  %_3 = getelementptr inbounds nuw i32, ptr %_10, i64 %count
  %self1 = load i64, ptr %self, align 8, !range !1641, !noundef !3
  %len = sub i64 %self1, %count
  %2 = insertvalue { ptr, i64 } poison, ptr %_3, 0
  %3 = insertvalue { ptr, i64 } %2, i64 %len, 1
  ret { ptr, i64 } %3
}

; <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h72ba0f53cd61434dE"(ptr noalias noundef readnone align 8 captures(none) dereferenceable(24) %self) unnamed_addr #6 {
start:
  ret void
}

; <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: nonlazybind uwtable
define void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h747bbec5aab1c7a4E"(ptr noalias noundef align 8 dereferenceable(16) %self) unnamed_addr #0 {
start:
; call alloc::raw_vec::RawVecInner<A>::deallocate
  tail call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef align 8 dereferenceable(16) %self, i64 noundef 4, i64 noundef 4)
  ret void
}

; <core::slice::sort::stable::merge::MergeState<T> as core::ops::drop::Drop>::drop
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define void @"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3be0bc7f3fb095cfE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %self) unnamed_addr #9 {
start:
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %self1 = load ptr, ptr %0, align 8, !noundef !3
  %_5 = load ptr, ptr %self, align 8, !noundef !3
  %1 = ptrtoint ptr %self1 to i64
  %2 = ptrtoint ptr %_5 to i64
  %3 = sub nuw i64 %1, %2
  %4 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %5 = load ptr, ptr %4, align 8, !noundef !3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %5, ptr align 4 %_5, i64 %3, i1 false)
  ret void
}

; <core::hint::select_unpredictable::DropOnPanic<T> as core::ops::drop::Drop>::drop
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define void @"_ZN96_$LT$core..hint..select_unpredictable..DropOnPanic$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h98cc229b0f2d57b5E"(ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %self) unnamed_addr #6 {
start:
  ret void
}

; <core::slice::sort::shared::smallsort::CopyOnDrop<T> as core::ops::drop::Drop>::drop
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define void @"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha305904ef6894d71E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %self) unnamed_addr #9 {
start:
  %src = load ptr, ptr %self, align 8, !noundef !3
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %dst = load ptr, ptr %0, align 8, !noundef !3
  %1 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %count = load i64, ptr %1, align 8, !noundef !3
  %2 = shl i64 %count, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %dst, ptr align 4 %src, i64 %2, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: read) uwtable
define noundef range(i8 -1, 2) i8 @cmpfunc(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %a, ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %b) unnamed_addr #11 {
start:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1642)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1645)
  %_3.i = load i32, ptr %a, align 4, !alias.scope !1642, !noalias !1645, !noundef !3
  %_4.i = load i32, ptr %b, align 4, !alias.scope !1645, !noalias !1642, !noundef !3
  %_0.i = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i32(i32 %_3.i, i32 %_4.i)
  ret i8 %_0.i
}

; Function Attrs: nonlazybind uwtable
define noundef range(i32 -1, -2147483648) i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #0 {
start:
  %args = alloca [16 x i8], align 8
  %_43 = alloca [16 x i8], align 8
  %arr = alloca [8 x i8], align 8
  store i64 %0, ptr %arr, align 8
  %_6 = add i32 %n, -1
  %_0.i.i.i38 = icmp sgt i32 %_6, 0
  br i1 %_0.i.i.i38, label %bb7, label %bb6

bb2.loopexit:                                     ; preds = %bb14.preheader, %bb7
  %maxsize.sroa.0.1.lcssa = phi i32 [ -1, %bb7 ], [ %maxsize.sroa.0.2, %bb14.preheader ]
  %_0.i.i.i.not = icmp eq i32 %_6, 1
  %spec.select19 = select i1 %_0.i.i.i.not, i32 1, i32 2
  br i1 %_0.i.i.i.not, label %bb6, label %bb7.1

bb7.1:                                            ; preds = %bb2.loopexit
  %_0.i.i.i1530.1 = icmp sgt i32 %n, 2
  br i1 %_0.i.i.i1530.1, label %panic2, label %bb2.loopexit.1

bb2.loopexit.1:                                   ; preds = %bb7.1
  %_0.i.i.i.1 = icmp slt i32 %spec.select19, %_6
  br i1 %_0.i.i.i.1, label %bb5.2, label %bb6

bb5.2:                                            ; preds = %bb2.loopexit.1
  br i1 %_0.i.i.i.not, label %bb7.2, label %panic

bb7.2:                                            ; preds = %bb5.2
  %_19.2 = add nuw nsw i32 %spec.select19, 1
  %_0.i.i.i1530.2 = icmp slt i32 %_19.2, %n
  br i1 %_0.i.i.i1530.2, label %bb14.2, label %bb6

bb14.2:                                           ; preds = %bb7.2
  %_28.2 = zext nneg i32 %_19.2 to i64
  br label %panic2

bb6:                                              ; preds = %bb2.loopexit, %bb2.loopexit.1, %bb7.2, %start
  %maxsize.sroa.0.0.lcssa = phi i32 [ -1, %start ], [ %maxsize.sroa.0.1.lcssa, %bb7.2 ], [ %maxsize.sroa.0.1.lcssa, %bb2.loopexit.1 ], [ %maxsize.sroa.0.1.lcssa, %bb2.loopexit ]
  %_36 = icmp eq i32 %maxsize.sroa.0.0.lcssa, -1
  br i1 %_36, label %bb25, label %bb26

bb26:                                             ; preds = %bb6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_43)
  %_51 = zext nneg i32 %maxsize.sroa.0.0.lcssa to i64
  %_7.i.i.i = icmp ult i32 %maxsize.sroa.0.0.lcssa, 3
  br i1 %_7.i.i.i, label %"_ZN4core5array85_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$5index17he69c5425cdd68754E.exit", label %bb3.i.i.i, !prof !1294

bb3.i.i.i:                                        ; preds = %bb26
; call core::slice::index::slice_index_fail
  tail call void @_ZN4core5slice5index16slice_index_fail17h62807bcaa490c9c1E(i64 noundef range(i64 -2147483648, 2147483648) 0, i64 noundef range(i64 -2147483648, 4294967295) %_51, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_24ef333251a3c887bd5d4c2542ca9b95) #24, !noalias !1647
  unreachable

"_ZN4core5array85_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$5index17he69c5425cdd68754E.exit": ; preds = %bb26
  store ptr %arr, ptr %_43, align 8
  %1 = getelementptr inbounds nuw i8, ptr %_43, i64 8
  store i64 %_51, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %args)
  store ptr %_43, ptr %args, align 8
  %_54.sroa.4.0.args.sroa_idx = getelementptr inbounds nuw i8, ptr %args, i64 8
  store ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hc1af96bc2d4cab3fE", ptr %_54.sroa.4.0.args.sroa_idx, align 8
; call std::io::stdio::_print
  call void @_ZN3std2io5stdio6_print17hba8f5eda1e4e495eE(ptr noundef nonnull @alloc_61247b90e1706a3f65e71312b599d3d1, ptr noundef nonnull %args)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %args)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_43)
  br label %bb33

bb25:                                             ; preds = %bb6
; call std::io::stdio::_print
  tail call void @_ZN3std2io5stdio6_print17hba8f5eda1e4e495eE(ptr noundef nonnull @alloc_e35ef0db3ff0e2e52d9de27516a202e9, ptr noundef nonnull inttoptr (i64 35 to ptr))
  br label %bb33

bb33:                                             ; preds = %bb25, %"_ZN4core5array85_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$5index17he69c5425cdd68754E.exit"
  ret i32 %maxsize.sroa.0.0.lcssa

bb7:                                              ; preds = %start
  %_0.i.i.i1530 = icmp sgt i32 %n, 1
  br i1 %_0.i.i.i1530, label %bb14.preheader, label %bb2.loopexit

bb14.preheader:                                   ; preds = %bb7
  %_14 = load i32, ptr %arr, align 8, !noundef !3
  %_13 = icmp eq i32 %_14, 0
  %2 = getelementptr inbounds nuw i8, ptr %arr, i64 4
  %_27 = load i32, ptr %2, align 4, !noundef !3
  %_26 = icmp eq i32 %_27, 0
  %_30 = xor i1 %_13, %_26
  %maxsize.sroa.0.2 = select i1 %_30, i32 2, i32 -1
  %_0.i.i.i15.not = icmp eq i32 %n, 2
  br i1 %_0.i.i.i15.not, label %bb2.loopexit, label %panic2

panic:                                            ; preds = %bb5.2
  %_15.2 = zext nneg i32 %spec.select19 to i64
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_15.2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_ccb14d481c10be9a532a00cf09598600) #24
  unreachable

panic2:                                           ; preds = %bb14.preheader, %bb7.1, %bb14.2
  %_28.lcssa = phi i64 [ %_28.2, %bb14.2 ], [ 2, %bb7.1 ], [ 2, %bb14.preheader ]
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_28.lcssa, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_35e156b0d7fd1cc1230b36d600d69ef1) #24
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
define void @sort(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %compare.i = alloca [0 x i8], align 1
  %is_less.i.i = alloca [8 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %compare.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !1654
  store ptr %compare.i, ptr %is_less.i.i, align 8, !noalias !1657
  %b.i.i = icmp samesign ult i64 %arr.1, 2
  br i1 %b.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17ha8832592c6732141E.exit", label %bb7.i.i, !prof !1661

bb7.i.i:                                          ; preds = %start
  %b1.i.i = icmp samesign ult i64 %arr.1, 21
  br i1 %b1.i.i, label %bb9.i.i, label %bb10.i.i, !prof !1661

bb10.i.i:                                         ; preds = %bb7.i.i
; call core::slice::sort::stable::driftsort_main
  call void @_ZN4core5slice4sort6stable14driftsort_main17hbdd5e903be875fcdE(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, ptr noalias noundef align 8 dereferenceable(8) %is_less.i.i)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17ha8832592c6732141E.exit"

bb9.i.i:                                          ; preds = %bb7.i.i
; call core::slice::sort::shared::smallsort::insertion_sort_shift_left
  call void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h7cb9a29b30363162E(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, i64 noundef 1, ptr noalias align 8 poison)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17ha8832592c6732141E.exit"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17ha8832592c6732141E.exit": ; preds = %start, %bb10.i.i, %bb9.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !1654
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %compare.i)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #12

; core::slice::index::slice_index_fail
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core5slice5index16slice_index_fail17h62807bcaa490c9c1E(i64 noundef, i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; core::fmt::Formatter::debug_list
; Function Attrs: nonlazybind uwtable
declare void @_ZN4core3fmt9Formatter10debug_list17h86f8e830c3b2e8a1E(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; core::fmt::builders::DebugList::finish
; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_ZN4core3fmt8builders9DebugList6finish17h71e8b1e747a3e8ffE(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #15

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.scmp.i8.i32(i32, i32) #16

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #17

; core::fmt::num::imp::<impl core::fmt::Display for i32>::fmt
; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h7fd7b150b5fcea6eE"(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; core::fmt::num::<impl core::fmt::UpperHex for i32>::fmt
; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i32$GT$3fmt17hee87b56b40773786E"(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; core::fmt::num::<impl core::fmt::LowerHex for i32>::fmt
; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i32$GT$3fmt17hb2b73ec565bc315bE"(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; core::fmt::builders::DebugList::entry
; Function Attrs: nonlazybind uwtable
declare noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders9DebugList5entry17h6a347a718df63e39E(ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull align 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; core::panicking::panic_in_cleanup
; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() unnamed_addr #18

; core::panicking::panic_fmt
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking9panic_fmt17ha4414e4328fe24a0E(ptr noundef nonnull, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #13

; core::panicking::panic_bounds_check
; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #19

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #20

; core::slice::sort::shared::smallsort::panic_on_ord_violation
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #16

; core::slice::sort::stable::drift::sqrt_approx
; Function Attrs: nonlazybind uwtable
declare noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h72a4dc1ae46294f4E(i64 noundef) unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #16

; alloc::raw_vec::RawVecInner<A>::try_allocate_in
; Function Attrs: nonlazybind uwtable
declare void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; alloc::raw_vec::handle_error
; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #21

; alloc::raw_vec::RawVecInner<A>::deallocate
; Function Attrs: nonlazybind uwtable
declare void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef align 8 dereferenceable(16), i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; std::io::stdio::_print
; Function Attrs: nonlazybind uwtable
declare void @_ZN3std2io5stdio6_print17hba8f5eda1e4e495eE(ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

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

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
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
attributes #13 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #18 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #21 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #23 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { noinline noreturn }
attributes #25 = { noreturn }
attributes #26 = { cold noreturn nounwind }
attributes #27 = { noinline }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.93.1 (01f6ddf75 2026-02-11)"}
!3 = !{}
!4 = !{i64 4}
!5 = !{!6}
!6 = distinct !{!6, !7, !"_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$i32$GT$3fmt17h83a687c72d217fd2E: %f"}
!7 = distinct !{!7, !"_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$i32$GT$3fmt17h83a687c72d217fd2E"}
!8 = !{!9}
!9 = distinct !{!9, !7, !"_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$i32$GT$3fmt17h83a687c72d217fd2E: %self"}
!10 = !{!11, !13}
!11 = distinct !{!11, !12, !"_ZN48_$LT$$u5b$T$u5d$$u20$as$u20$core..fmt..Debug$GT$3fmt17h76ac33862e5a2098E: %self.0"}
!12 = distinct !{!12, !"_ZN48_$LT$$u5b$T$u5d$$u20$as$u20$core..fmt..Debug$GT$3fmt17h76ac33862e5a2098E"}
!13 = distinct !{!13, !12, !"_ZN48_$LT$$u5b$T$u5d$$u20$as$u20$core..fmt..Debug$GT$3fmt17h76ac33862e5a2098E: %f"}
!14 = !{!11}
!15 = !{!16, !11, !13}
!16 = distinct !{!16, !17, !"_ZN4core3fmt8builders9DebugList7entries17he615e9cd4dcc6e11E: %self"}
!17 = distinct !{!17, !"_ZN4core3fmt8builders9DebugList7entries17he615e9cd4dcc6e11E"}
!18 = !{!19}
!19 = distinct !{!19, !20, !"_ZN4core3fmt8builders9DebugList7entries17he615e9cd4dcc6e11E: %self"}
!20 = distinct !{!20, !"_ZN4core3fmt8builders9DebugList7entries17he615e9cd4dcc6e11E"}
!21 = !{!22}
!22 = distinct !{!22, !23, !"_ZN4core3ptr10swap_chunk17hb9bdb32d9ba3ad91E: %x"}
!23 = distinct !{!23, !"_ZN4core3ptr10swap_chunk17hb9bdb32d9ba3ad91E"}
!24 = !{!25}
!25 = distinct !{!25, !23, !"_ZN4core3ptr10swap_chunk17hb9bdb32d9ba3ad91E: %y"}
!26 = !{!27}
!27 = distinct !{!27, !23, !"_ZN4core3ptr10swap_chunk17hb9bdb32d9ba3ad91E: %x:It1"}
!28 = !{!29}
!29 = distinct !{!29, !23, !"_ZN4core3ptr10swap_chunk17hb9bdb32d9ba3ad91E: %y:It1"}
!30 = !{!31}
!31 = distinct !{!31, !32, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a"}
!32 = distinct !{!32, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE"}
!33 = !{!34}
!34 = distinct !{!34, !32, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b"}
!35 = !{!36}
!36 = distinct !{!36, !37, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0"}
!37 = distinct !{!37, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE"}
!38 = !{!39}
!39 = distinct !{!39, !40, !"_ZN4core5slice4sort6shared5pivot7median317hf12ce116837ecf40E: %c"}
!40 = distinct !{!40, !"_ZN4core5slice4sort6shared5pivot7median317hf12ce116837ecf40E"}
!41 = !{!42}
!42 = distinct !{!42, !37, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1"}
!43 = !{!44}
!44 = distinct !{!44, !45, !"cmpfunc: %a"}
!45 = distinct !{!45, !"cmpfunc"}
!46 = !{!47}
!47 = distinct !{!47, !45, !"cmpfunc: %b"}
!48 = !{!49}
!49 = distinct !{!49, !50, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!50 = distinct !{!50, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!51 = !{!52}
!52 = distinct !{!52, !50, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!53 = !{!49, !44, !36, !31}
!54 = !{!52, !47, !42, !34, !39}
!55 = !{!52, !47, !42, !34}
!56 = !{!49, !44, !36, !31, !39}
!57 = !{!58, !60, !62, !64}
!58 = distinct !{!58, !59, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!59 = distinct !{!59, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!60 = distinct !{!60, !61, !"cmpfunc: %b"}
!61 = distinct !{!61, !"cmpfunc"}
!62 = distinct !{!62, !63, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1"}
!63 = distinct !{!63, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE"}
!64 = distinct !{!64, !65, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b"}
!65 = distinct !{!65, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE"}
!66 = !{!67, !68, !69, !70}
!67 = distinct !{!67, !59, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!68 = distinct !{!68, !61, !"cmpfunc: %a"}
!69 = distinct !{!69, !63, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0"}
!70 = distinct !{!70, !65, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a"}
!71 = !{!72}
!72 = distinct !{!72, !73, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a"}
!73 = distinct !{!73, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE"}
!74 = !{!75}
!75 = distinct !{!75, !73, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b"}
!76 = !{!77}
!77 = distinct !{!77, !78, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0"}
!78 = distinct !{!78, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE"}
!79 = !{!80}
!80 = distinct !{!80, !78, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1"}
!81 = !{!82}
!82 = distinct !{!82, !83, !"cmpfunc: %a"}
!83 = distinct !{!83, !"cmpfunc"}
!84 = !{!85}
!85 = distinct !{!85, !83, !"cmpfunc: %b"}
!86 = !{!87}
!87 = distinct !{!87, !88, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!88 = distinct !{!88, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!89 = !{!90}
!90 = distinct !{!90, !88, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!91 = !{!87, !82, !77, !72}
!92 = !{!90, !85, !80, !75}
!93 = !{!94, !96, !98, !100}
!94 = distinct !{!94, !95, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!95 = distinct !{!95, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!96 = distinct !{!96, !97, !"cmpfunc: %b"}
!97 = distinct !{!97, !"cmpfunc"}
!98 = distinct !{!98, !99, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1"}
!99 = distinct !{!99, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE"}
!100 = distinct !{!100, !101, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b"}
!101 = distinct !{!101, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE"}
!102 = !{!103, !104, !105, !106}
!103 = distinct !{!103, !95, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!104 = distinct !{!104, !97, !"cmpfunc: %a"}
!105 = distinct !{!105, !99, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0"}
!106 = distinct !{!106, !101, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a"}
!107 = !{!108, !110}
!108 = distinct !{!108, !109, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha305904ef6894d71E: %self"}
!109 = distinct !{!109, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha305904ef6894d71E"}
!110 = distinct !{!110, !111, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hc81cb7910e943fa4E: %_1"}
!111 = distinct !{!111, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hc81cb7910e943fa4E"}
!112 = !{!113}
!113 = distinct !{!113, !114, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a"}
!114 = distinct !{!114, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE"}
!115 = !{!116}
!116 = distinct !{!116, !114, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b"}
!117 = !{!118}
!118 = distinct !{!118, !119, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0"}
!119 = distinct !{!119, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE"}
!120 = !{!121}
!121 = distinct !{!121, !119, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1"}
!122 = !{!123}
!123 = distinct !{!123, !124, !"cmpfunc: %a"}
!124 = distinct !{!124, !"cmpfunc"}
!125 = !{!126}
!126 = distinct !{!126, !124, !"cmpfunc: %b"}
!127 = !{!128}
!128 = distinct !{!128, !129, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!129 = distinct !{!129, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!130 = !{!131}
!131 = distinct !{!131, !129, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!132 = !{!128, !123, !118, !113}
!133 = !{!131, !126, !121, !116}
!134 = !{!135}
!135 = distinct !{!135, !136, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a"}
!136 = distinct !{!136, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE"}
!137 = !{!138}
!138 = distinct !{!138, !136, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b"}
!139 = !{!140}
!140 = distinct !{!140, !141, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0"}
!141 = distinct !{!141, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE"}
!142 = !{!143}
!143 = distinct !{!143, !141, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1"}
!144 = !{!145}
!145 = distinct !{!145, !146, !"cmpfunc: %a"}
!146 = distinct !{!146, !"cmpfunc"}
!147 = !{!148}
!148 = distinct !{!148, !146, !"cmpfunc: %b"}
!149 = !{!150}
!150 = distinct !{!150, !151, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!151 = distinct !{!151, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!152 = !{!153}
!153 = distinct !{!153, !151, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!154 = !{!150, !145, !140, !135}
!155 = !{!153, !148, !143, !138}
!156 = !{!157}
!157 = distinct !{!157, !158, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a"}
!158 = distinct !{!158, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE"}
!159 = !{!160}
!160 = distinct !{!160, !158, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b"}
!161 = !{!162}
!162 = distinct !{!162, !163, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0"}
!163 = distinct !{!163, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE"}
!164 = !{!165}
!165 = distinct !{!165, !163, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1"}
!166 = !{!167}
!167 = distinct !{!167, !168, !"cmpfunc: %a"}
!168 = distinct !{!168, !"cmpfunc"}
!169 = !{!170}
!170 = distinct !{!170, !168, !"cmpfunc: %b"}
!171 = !{!172}
!172 = distinct !{!172, !173, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!173 = distinct !{!173, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!174 = !{!175}
!175 = distinct !{!175, !173, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!176 = !{!172, !167, !162, !157}
!177 = !{!175, !170, !165, !160}
!178 = !{!179}
!179 = distinct !{!179, !180, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a"}
!180 = distinct !{!180, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE"}
!181 = !{!182}
!182 = distinct !{!182, !180, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b"}
!183 = !{!184}
!184 = distinct !{!184, !185, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0"}
!185 = distinct !{!185, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE"}
!186 = !{!187}
!187 = distinct !{!187, !185, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1"}
!188 = !{!189}
!189 = distinct !{!189, !190, !"cmpfunc: %a"}
!190 = distinct !{!190, !"cmpfunc"}
!191 = !{!192}
!192 = distinct !{!192, !190, !"cmpfunc: %b"}
!193 = !{!194}
!194 = distinct !{!194, !195, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!195 = distinct !{!195, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!196 = !{!197}
!197 = distinct !{!197, !195, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!198 = !{!194, !189, !184, !179}
!199 = !{!197, !192, !187, !182}
!200 = !{!201}
!201 = distinct !{!201, !202, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a"}
!202 = distinct !{!202, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE"}
!203 = !{!204}
!204 = distinct !{!204, !202, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b"}
!205 = !{!206}
!206 = distinct !{!206, !207, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0"}
!207 = distinct !{!207, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE"}
!208 = !{!209}
!209 = distinct !{!209, !207, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1"}
!210 = !{!211}
!211 = distinct !{!211, !212, !"cmpfunc: %a"}
!212 = distinct !{!212, !"cmpfunc"}
!213 = !{!214}
!214 = distinct !{!214, !212, !"cmpfunc: %b"}
!215 = !{!216}
!216 = distinct !{!216, !217, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!217 = distinct !{!217, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!218 = !{!219}
!219 = distinct !{!219, !217, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!220 = !{!216, !211, !206, !201}
!221 = !{!219, !214, !209, !204}
!222 = !{!223}
!223 = distinct !{!223, !224, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a"}
!224 = distinct !{!224, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE"}
!225 = !{!226}
!226 = distinct !{!226, !224, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b"}
!227 = !{!228}
!228 = distinct !{!228, !229, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0"}
!229 = distinct !{!229, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE"}
!230 = !{!231}
!231 = distinct !{!231, !229, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1"}
!232 = !{!233}
!233 = distinct !{!233, !234, !"cmpfunc: %a"}
!234 = distinct !{!234, !"cmpfunc"}
!235 = !{!236}
!236 = distinct !{!236, !234, !"cmpfunc: %b"}
!237 = !{!238}
!238 = distinct !{!238, !239, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!239 = distinct !{!239, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!240 = !{!241}
!241 = distinct !{!241, !239, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!242 = !{!238, !233, !228, !223}
!243 = !{!241, !236, !231, !226}
!244 = !{!245}
!245 = distinct !{!245, !246, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a"}
!246 = distinct !{!246, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE"}
!247 = !{!248}
!248 = distinct !{!248, !246, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b"}
!249 = !{!250}
!250 = distinct !{!250, !251, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0"}
!251 = distinct !{!251, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE"}
!252 = !{!253}
!253 = distinct !{!253, !251, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1"}
!254 = !{!255}
!255 = distinct !{!255, !256, !"cmpfunc: %a"}
!256 = distinct !{!256, !"cmpfunc"}
!257 = !{!258}
!258 = distinct !{!258, !256, !"cmpfunc: %b"}
!259 = !{!260}
!260 = distinct !{!260, !261, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!261 = distinct !{!261, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!262 = !{!263}
!263 = distinct !{!263, !261, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!264 = !{!260, !255, !250, !245}
!265 = !{!263, !258, !253, !248}
!266 = !{!267}
!267 = distinct !{!267, !268, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a"}
!268 = distinct !{!268, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE"}
!269 = !{!270}
!270 = distinct !{!270, !268, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b"}
!271 = !{!272}
!272 = distinct !{!272, !273, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0"}
!273 = distinct !{!273, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE"}
!274 = !{!275}
!275 = distinct !{!275, !273, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1"}
!276 = !{!277}
!277 = distinct !{!277, !278, !"cmpfunc: %a"}
!278 = distinct !{!278, !"cmpfunc"}
!279 = !{!280}
!280 = distinct !{!280, !278, !"cmpfunc: %b"}
!281 = !{!282}
!282 = distinct !{!282, !283, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!283 = distinct !{!283, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!284 = !{!285}
!285 = distinct !{!285, !283, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!286 = !{!282, !277, !272, !267}
!287 = !{!285, !280, !275, !270}
!288 = !{!289}
!289 = distinct !{!289, !290, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a"}
!290 = distinct !{!290, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE"}
!291 = !{!292}
!292 = distinct !{!292, !290, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b"}
!293 = !{!294}
!294 = distinct !{!294, !295, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0"}
!295 = distinct !{!295, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE"}
!296 = !{!297}
!297 = distinct !{!297, !295, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1"}
!298 = !{!299}
!299 = distinct !{!299, !300, !"cmpfunc: %a"}
!300 = distinct !{!300, !"cmpfunc"}
!301 = !{!302}
!302 = distinct !{!302, !300, !"cmpfunc: %b"}
!303 = !{!304}
!304 = distinct !{!304, !305, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!305 = distinct !{!305, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!306 = !{!307}
!307 = distinct !{!307, !305, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!308 = !{!304, !299, !294, !289}
!309 = !{!307, !302, !297, !292}
!310 = !{!311}
!311 = distinct !{!311, !312, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a"}
!312 = distinct !{!312, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE"}
!313 = !{!314}
!314 = distinct !{!314, !312, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b"}
!315 = !{!316}
!316 = distinct !{!316, !317, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0"}
!317 = distinct !{!317, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE"}
!318 = !{!319}
!319 = distinct !{!319, !317, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1"}
!320 = !{!321}
!321 = distinct !{!321, !322, !"cmpfunc: %a"}
!322 = distinct !{!322, !"cmpfunc"}
!323 = !{!324}
!324 = distinct !{!324, !322, !"cmpfunc: %b"}
!325 = !{!326}
!326 = distinct !{!326, !327, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!327 = distinct !{!327, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!328 = !{!329}
!329 = distinct !{!329, !327, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!330 = !{!326, !321, !316, !311}
!331 = !{!329, !324, !319, !314}
!332 = !{!333}
!333 = distinct !{!333, !334, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a"}
!334 = distinct !{!334, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE"}
!335 = !{!336}
!336 = distinct !{!336, !334, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b"}
!337 = !{!338}
!338 = distinct !{!338, !339, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0"}
!339 = distinct !{!339, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE"}
!340 = !{!341}
!341 = distinct !{!341, !339, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1"}
!342 = !{!343}
!343 = distinct !{!343, !344, !"cmpfunc: %a"}
!344 = distinct !{!344, !"cmpfunc"}
!345 = !{!346}
!346 = distinct !{!346, !344, !"cmpfunc: %b"}
!347 = !{!348}
!348 = distinct !{!348, !349, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!349 = distinct !{!349, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!350 = !{!351}
!351 = distinct !{!351, !349, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!352 = !{!348, !343, !338, !333}
!353 = !{!351, !346, !341, !336}
!354 = !{!355}
!355 = distinct !{!355, !356, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a"}
!356 = distinct !{!356, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE"}
!357 = !{!358}
!358 = distinct !{!358, !356, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b"}
!359 = !{!360}
!360 = distinct !{!360, !361, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0"}
!361 = distinct !{!361, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE"}
!362 = !{!363}
!363 = distinct !{!363, !361, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1"}
!364 = !{!365}
!365 = distinct !{!365, !366, !"cmpfunc: %a"}
!366 = distinct !{!366, !"cmpfunc"}
!367 = !{!368}
!368 = distinct !{!368, !366, !"cmpfunc: %b"}
!369 = !{!370}
!370 = distinct !{!370, !371, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!371 = distinct !{!371, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!372 = !{!373}
!373 = distinct !{!373, !371, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!374 = !{!370, !365, !360, !355}
!375 = !{!373, !368, !363, !358}
!376 = !{!377}
!377 = distinct !{!377, !378, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a"}
!378 = distinct !{!378, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE"}
!379 = !{!380}
!380 = distinct !{!380, !378, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b"}
!381 = !{!382}
!382 = distinct !{!382, !383, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0"}
!383 = distinct !{!383, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE"}
!384 = !{!385}
!385 = distinct !{!385, !383, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1"}
!386 = !{!387}
!387 = distinct !{!387, !388, !"cmpfunc: %a"}
!388 = distinct !{!388, !"cmpfunc"}
!389 = !{!390}
!390 = distinct !{!390, !388, !"cmpfunc: %b"}
!391 = !{!392}
!392 = distinct !{!392, !393, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!393 = distinct !{!393, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!394 = !{!395}
!395 = distinct !{!395, !393, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!396 = !{!392, !387, !382, !377}
!397 = !{!395, !390, !385, !380}
!398 = !{!399}
!399 = distinct !{!399, !400, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a"}
!400 = distinct !{!400, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE"}
!401 = !{!402}
!402 = distinct !{!402, !400, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b"}
!403 = !{!404}
!404 = distinct !{!404, !405, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0"}
!405 = distinct !{!405, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE"}
!406 = !{!407}
!407 = distinct !{!407, !405, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1"}
!408 = !{!409}
!409 = distinct !{!409, !410, !"cmpfunc: %a"}
!410 = distinct !{!410, !"cmpfunc"}
!411 = !{!412}
!412 = distinct !{!412, !410, !"cmpfunc: %b"}
!413 = !{!414}
!414 = distinct !{!414, !415, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!415 = distinct !{!415, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!416 = !{!417}
!417 = distinct !{!417, !415, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!418 = !{!414, !409, !404, !399}
!419 = !{!417, !412, !407, !402}
!420 = !{!421}
!421 = distinct !{!421, !422, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a"}
!422 = distinct !{!422, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE"}
!423 = !{!424}
!424 = distinct !{!424, !422, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b"}
!425 = !{!426}
!426 = distinct !{!426, !427, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0"}
!427 = distinct !{!427, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE"}
!428 = !{!429}
!429 = distinct !{!429, !427, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1"}
!430 = !{!431}
!431 = distinct !{!431, !432, !"cmpfunc: %a"}
!432 = distinct !{!432, !"cmpfunc"}
!433 = !{!434}
!434 = distinct !{!434, !432, !"cmpfunc: %b"}
!435 = !{!436}
!436 = distinct !{!436, !437, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!437 = distinct !{!437, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!438 = !{!439}
!439 = distinct !{!439, !437, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!440 = !{!436, !431, !426, !421}
!441 = !{!439, !434, !429, !424}
!442 = !{!443}
!443 = distinct !{!443, !444, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h467471a0d9a845c1E: %v.0"}
!444 = distinct !{!444, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h467471a0d9a845c1E"}
!445 = !{!446}
!446 = distinct !{!446, !447, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a"}
!447 = distinct !{!447, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE"}
!448 = !{!449}
!449 = distinct !{!449, !447, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b"}
!450 = !{!451}
!451 = distinct !{!451, !452, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0"}
!452 = distinct !{!452, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE"}
!453 = !{!454}
!454 = distinct !{!454, !455, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h36e7daef282500b9E: %_0"}
!455 = distinct !{!455, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h36e7daef282500b9E"}
!456 = !{!457}
!457 = distinct !{!457, !452, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1"}
!458 = !{!459}
!459 = distinct !{!459, !460, !"cmpfunc: %a"}
!460 = distinct !{!460, !"cmpfunc"}
!461 = !{!462}
!462 = distinct !{!462, !460, !"cmpfunc: %b"}
!463 = !{!464}
!464 = distinct !{!464, !465, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!465 = distinct !{!465, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!466 = !{!467}
!467 = distinct !{!467, !465, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!468 = !{!464, !459, !451, !446, !443}
!469 = !{!467, !462, !457, !449, !454}
!470 = !{!467, !462, !457, !449, !443}
!471 = !{!464, !459, !451, !446, !454}
!472 = !{!454, !473, !443}
!473 = distinct !{!473, !455, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h36e7daef282500b9E: %is_less"}
!474 = !{!475}
!475 = distinct !{!475, !476, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a"}
!476 = distinct !{!476, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE"}
!477 = !{!478}
!478 = distinct !{!478, !476, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b"}
!479 = !{!480}
!480 = distinct !{!480, !481, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0"}
!481 = distinct !{!481, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE"}
!482 = !{!483}
!483 = distinct !{!483, !484, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h4bc2352a39a620c2E: %_0"}
!484 = distinct !{!484, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h4bc2352a39a620c2E"}
!485 = !{!486}
!486 = distinct !{!486, !481, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1"}
!487 = !{!488}
!488 = distinct !{!488, !489, !"cmpfunc: %a"}
!489 = distinct !{!489, !"cmpfunc"}
!490 = !{!491}
!491 = distinct !{!491, !489, !"cmpfunc: %b"}
!492 = !{!493}
!493 = distinct !{!493, !494, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!494 = distinct !{!494, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!495 = !{!496}
!496 = distinct !{!496, !494, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!497 = !{!493, !488, !480, !475, !443}
!498 = !{!496, !491, !486, !478, !483}
!499 = !{!496, !491, !486, !478, !443}
!500 = !{!493, !488, !480, !475, !483}
!501 = !{!483, !502, !443}
!502 = distinct !{!502, !484, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h4bc2352a39a620c2E: %is_less"}
!503 = !{!504}
!504 = distinct !{!504, !447, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a:It1"}
!505 = !{!506}
!506 = distinct !{!506, !447, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b:It1"}
!507 = !{!508}
!508 = distinct !{!508, !452, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0:It1"}
!509 = !{!510}
!510 = distinct !{!510, !452, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1:It1"}
!511 = !{!512}
!512 = distinct !{!512, !460, !"cmpfunc: %a:It1"}
!513 = !{!514}
!514 = distinct !{!514, !460, !"cmpfunc: %b:It1"}
!515 = !{!516}
!516 = distinct !{!516, !465, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It1"}
!517 = !{!518}
!518 = distinct !{!518, !465, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It1"}
!519 = !{!516, !512, !508, !504, !443}
!520 = !{!518, !514, !510, !506, !454}
!521 = !{!518, !514, !510, !506, !443}
!522 = !{!516, !512, !508, !504, !454}
!523 = !{!524}
!524 = distinct !{!524, !476, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a:It1"}
!525 = !{!526}
!526 = distinct !{!526, !476, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b:It1"}
!527 = !{!528}
!528 = distinct !{!528, !481, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0:It1"}
!529 = !{!530}
!530 = distinct !{!530, !481, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1:It1"}
!531 = !{!532}
!532 = distinct !{!532, !489, !"cmpfunc: %a:It1"}
!533 = !{!534}
!534 = distinct !{!534, !489, !"cmpfunc: %b:It1"}
!535 = !{!536}
!536 = distinct !{!536, !494, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It1"}
!537 = !{!538}
!538 = distinct !{!538, !494, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It1"}
!539 = !{!536, !532, !528, !524, !443}
!540 = !{!538, !534, !530, !526, !483}
!541 = !{!538, !534, !530, !526, !443}
!542 = !{!536, !532, !528, !524, !483}
!543 = !{!544}
!544 = distinct !{!544, !447, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a:It2"}
!545 = !{!546}
!546 = distinct !{!546, !447, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b:It2"}
!547 = !{!548}
!548 = distinct !{!548, !452, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0:It2"}
!549 = !{!550}
!550 = distinct !{!550, !452, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1:It2"}
!551 = !{!552}
!552 = distinct !{!552, !460, !"cmpfunc: %a:It2"}
!553 = !{!554}
!554 = distinct !{!554, !460, !"cmpfunc: %b:It2"}
!555 = !{!556}
!556 = distinct !{!556, !465, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It2"}
!557 = !{!558}
!558 = distinct !{!558, !465, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It2"}
!559 = !{!556, !552, !548, !544, !443}
!560 = !{!558, !554, !550, !546, !454}
!561 = !{!558, !554, !550, !546, !443}
!562 = !{!556, !552, !548, !544, !454}
!563 = !{!564}
!564 = distinct !{!564, !476, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a:It2"}
!565 = !{!566}
!566 = distinct !{!566, !476, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b:It2"}
!567 = !{!568}
!568 = distinct !{!568, !481, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0:It2"}
!569 = !{!570}
!570 = distinct !{!570, !481, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1:It2"}
!571 = !{!572}
!572 = distinct !{!572, !489, !"cmpfunc: %a:It2"}
!573 = !{!574}
!574 = distinct !{!574, !489, !"cmpfunc: %b:It2"}
!575 = !{!576}
!576 = distinct !{!576, !494, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It2"}
!577 = !{!578}
!578 = distinct !{!578, !494, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It2"}
!579 = !{!576, !572, !568, !564, !443}
!580 = !{!578, !574, !570, !566, !483}
!581 = !{!578, !574, !570, !566, !443}
!582 = !{!576, !572, !568, !564, !483}
!583 = !{!584}
!584 = distinct !{!584, !447, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a:It3"}
!585 = !{!586}
!586 = distinct !{!586, !447, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b:It3"}
!587 = !{!588}
!588 = distinct !{!588, !452, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0:It3"}
!589 = !{!590}
!590 = distinct !{!590, !452, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1:It3"}
!591 = !{!592}
!592 = distinct !{!592, !460, !"cmpfunc: %a:It3"}
!593 = !{!594}
!594 = distinct !{!594, !460, !"cmpfunc: %b:It3"}
!595 = !{!596}
!596 = distinct !{!596, !465, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It3"}
!597 = !{!598}
!598 = distinct !{!598, !465, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It3"}
!599 = !{!596, !592, !588, !584, !443}
!600 = !{!598, !594, !590, !586, !454}
!601 = !{!598, !594, !590, !586, !443}
!602 = !{!596, !592, !588, !584, !454}
!603 = !{!604}
!604 = distinct !{!604, !476, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a:It3"}
!605 = !{!606}
!606 = distinct !{!606, !476, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b:It3"}
!607 = !{!608}
!608 = distinct !{!608, !481, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0:It3"}
!609 = !{!610}
!610 = distinct !{!610, !481, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1:It3"}
!611 = !{!612}
!612 = distinct !{!612, !489, !"cmpfunc: %a:It3"}
!613 = !{!614}
!614 = distinct !{!614, !489, !"cmpfunc: %b:It3"}
!615 = !{!616}
!616 = distinct !{!616, !494, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It3"}
!617 = !{!618}
!618 = distinct !{!618, !494, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It3"}
!619 = !{!616, !612, !608, !604, !443}
!620 = !{!618, !614, !610, !606, !483}
!621 = !{!618, !614, !610, !606, !443}
!622 = !{!616, !612, !608, !604, !483}
!623 = !{!"branch_weights", i32 4001, i32 4000000}
!624 = !{!625}
!625 = distinct !{!625, !626, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a"}
!626 = distinct !{!626, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE"}
!627 = !{!628}
!628 = distinct !{!628, !626, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b"}
!629 = !{!630}
!630 = distinct !{!630, !631, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0"}
!631 = distinct !{!631, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE"}
!632 = !{!633}
!633 = distinct !{!633, !634, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h36e7daef282500b9E: %_0"}
!634 = distinct !{!634, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h36e7daef282500b9E"}
!635 = !{!636}
!636 = distinct !{!636, !631, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1"}
!637 = !{!638}
!638 = distinct !{!638, !639, !"cmpfunc: %a"}
!639 = distinct !{!639, !"cmpfunc"}
!640 = !{!641}
!641 = distinct !{!641, !639, !"cmpfunc: %b"}
!642 = !{!643}
!643 = distinct !{!643, !644, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!644 = distinct !{!644, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!645 = !{!646}
!646 = distinct !{!646, !644, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!647 = !{!643, !638, !630, !625}
!648 = !{!646, !641, !636, !628, !633}
!649 = !{!646, !641, !636, !628}
!650 = !{!643, !638, !630, !625, !633}
!651 = !{!633, !652}
!652 = distinct !{!652, !634, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h36e7daef282500b9E: %is_less"}
!653 = !{!654}
!654 = distinct !{!654, !655, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a"}
!655 = distinct !{!655, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE"}
!656 = !{!657}
!657 = distinct !{!657, !655, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b"}
!658 = !{!659}
!659 = distinct !{!659, !660, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0"}
!660 = distinct !{!660, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE"}
!661 = !{!662}
!662 = distinct !{!662, !663, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h4bc2352a39a620c2E: %_0"}
!663 = distinct !{!663, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h4bc2352a39a620c2E"}
!664 = !{!665}
!665 = distinct !{!665, !660, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1"}
!666 = !{!667}
!667 = distinct !{!667, !668, !"cmpfunc: %a"}
!668 = distinct !{!668, !"cmpfunc"}
!669 = !{!670}
!670 = distinct !{!670, !668, !"cmpfunc: %b"}
!671 = !{!672}
!672 = distinct !{!672, !673, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!673 = distinct !{!673, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!674 = !{!675}
!675 = distinct !{!675, !673, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!676 = !{!672, !667, !659, !654}
!677 = !{!675, !670, !665, !657, !662}
!678 = !{!675, !670, !665, !657}
!679 = !{!672, !667, !659, !654, !662}
!680 = !{!662, !681}
!681 = distinct !{!681, !663, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h4bc2352a39a620c2E: %is_less"}
!682 = !{!683}
!683 = distinct !{!683, !684, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a"}
!684 = distinct !{!684, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE"}
!685 = !{!686}
!686 = distinct !{!686, !684, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b"}
!687 = !{!688}
!688 = distinct !{!688, !689, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0"}
!689 = distinct !{!689, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE"}
!690 = !{!691}
!691 = distinct !{!691, !689, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1"}
!692 = !{!693}
!693 = distinct !{!693, !694, !"cmpfunc: %a"}
!694 = distinct !{!694, !"cmpfunc"}
!695 = !{!696}
!696 = distinct !{!696, !694, !"cmpfunc: %b"}
!697 = !{!698}
!698 = distinct !{!698, !699, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!699 = distinct !{!699, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!700 = !{!701}
!701 = distinct !{!701, !699, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!702 = !{!698, !693, !688, !683}
!703 = !{!701, !696, !691, !686}
!704 = !{!705, !707, !709, !711}
!705 = distinct !{!705, !706, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!706 = distinct !{!706, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!707 = distinct !{!707, !708, !"cmpfunc: %b"}
!708 = distinct !{!708, !"cmpfunc"}
!709 = distinct !{!709, !710, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1"}
!710 = distinct !{!710, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE"}
!711 = distinct !{!711, !712, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b"}
!712 = distinct !{!712, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE"}
!713 = !{!714, !715, !716, !717}
!714 = distinct !{!714, !706, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!715 = distinct !{!715, !708, !"cmpfunc: %a"}
!716 = distinct !{!716, !710, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0"}
!717 = distinct !{!717, !712, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a"}
!718 = !{!719, !721}
!719 = distinct !{!719, !720, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha305904ef6894d71E: %self"}
!720 = distinct !{!720, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha305904ef6894d71E"}
!721 = distinct !{!721, !722, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hc81cb7910e943fa4E: %_1"}
!722 = distinct !{!722, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hc81cb7910e943fa4E"}
!723 = !{!724}
!724 = distinct !{!724, !725, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a"}
!725 = distinct !{!725, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE"}
!726 = !{!727}
!727 = distinct !{!727, !725, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b"}
!728 = !{!729}
!729 = distinct !{!729, !730, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0"}
!730 = distinct !{!730, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE"}
!731 = !{!732}
!732 = distinct !{!732, !730, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1"}
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
!743 = !{!739, !734, !729, !724}
!744 = !{!742, !737, !732, !727}
!745 = !{!746}
!746 = distinct !{!746, !747, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a"}
!747 = distinct !{!747, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE"}
!748 = !{!749}
!749 = distinct !{!749, !747, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b"}
!750 = !{!751}
!751 = distinct !{!751, !752, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0"}
!752 = distinct !{!752, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE"}
!753 = !{!754}
!754 = distinct !{!754, !752, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1"}
!755 = !{!756}
!756 = distinct !{!756, !757, !"cmpfunc: %a"}
!757 = distinct !{!757, !"cmpfunc"}
!758 = !{!759}
!759 = distinct !{!759, !757, !"cmpfunc: %b"}
!760 = !{!761}
!761 = distinct !{!761, !762, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!762 = distinct !{!762, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!763 = !{!764}
!764 = distinct !{!764, !762, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!765 = !{!761, !756, !751, !746}
!766 = !{!764, !759, !754, !749}
!767 = !{!768}
!768 = distinct !{!768, !769, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a"}
!769 = distinct !{!769, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE"}
!770 = !{!771}
!771 = distinct !{!771, !769, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b"}
!772 = !{!773}
!773 = distinct !{!773, !774, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0"}
!774 = distinct !{!774, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE"}
!775 = !{!776}
!776 = distinct !{!776, !774, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1"}
!777 = !{!778}
!778 = distinct !{!778, !779, !"cmpfunc: %a"}
!779 = distinct !{!779, !"cmpfunc"}
!780 = !{!781}
!781 = distinct !{!781, !779, !"cmpfunc: %b"}
!782 = !{!783}
!783 = distinct !{!783, !784, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!784 = distinct !{!784, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!785 = !{!786}
!786 = distinct !{!786, !784, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!787 = !{!783, !778, !773, !768}
!788 = !{!786, !781, !776, !771}
!789 = !{!790}
!790 = distinct !{!790, !791, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a"}
!791 = distinct !{!791, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE"}
!792 = !{!793}
!793 = distinct !{!793, !791, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b"}
!794 = !{!795}
!795 = distinct !{!795, !796, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0"}
!796 = distinct !{!796, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE"}
!797 = !{!798}
!798 = distinct !{!798, !796, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1"}
!799 = !{!800}
!800 = distinct !{!800, !801, !"cmpfunc: %a"}
!801 = distinct !{!801, !"cmpfunc"}
!802 = !{!803}
!803 = distinct !{!803, !801, !"cmpfunc: %b"}
!804 = !{!805}
!805 = distinct !{!805, !806, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!806 = distinct !{!806, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!807 = !{!808}
!808 = distinct !{!808, !806, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!809 = !{!805, !800, !795, !790}
!810 = !{!808, !803, !798, !793}
!811 = !{!812}
!812 = distinct !{!812, !813, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a"}
!813 = distinct !{!813, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE"}
!814 = !{!815}
!815 = distinct !{!815, !813, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b"}
!816 = !{!817}
!817 = distinct !{!817, !818, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0"}
!818 = distinct !{!818, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE"}
!819 = !{!820}
!820 = distinct !{!820, !818, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1"}
!821 = !{!822}
!822 = distinct !{!822, !823, !"cmpfunc: %a"}
!823 = distinct !{!823, !"cmpfunc"}
!824 = !{!825}
!825 = distinct !{!825, !823, !"cmpfunc: %b"}
!826 = !{!827}
!827 = distinct !{!827, !828, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!828 = distinct !{!828, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!829 = !{!830}
!830 = distinct !{!830, !828, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!831 = !{!827, !822, !817, !812}
!832 = !{!830, !825, !820, !815}
!833 = !{!834}
!834 = distinct !{!834, !835, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a"}
!835 = distinct !{!835, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE"}
!836 = !{!837}
!837 = distinct !{!837, !835, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b"}
!838 = !{!839}
!839 = distinct !{!839, !840, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0"}
!840 = distinct !{!840, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE"}
!841 = !{!842}
!842 = distinct !{!842, !840, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1"}
!843 = !{!844}
!844 = distinct !{!844, !845, !"cmpfunc: %a"}
!845 = distinct !{!845, !"cmpfunc"}
!846 = !{!847}
!847 = distinct !{!847, !845, !"cmpfunc: %b"}
!848 = !{!849}
!849 = distinct !{!849, !850, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!850 = distinct !{!850, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!851 = !{!852}
!852 = distinct !{!852, !850, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!853 = !{!849, !844, !839, !834}
!854 = !{!852, !847, !842, !837}
!855 = !{!856}
!856 = distinct !{!856, !857, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a"}
!857 = distinct !{!857, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE"}
!858 = !{!859}
!859 = distinct !{!859, !857, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b"}
!860 = !{!861}
!861 = distinct !{!861, !862, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0"}
!862 = distinct !{!862, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE"}
!863 = !{!864}
!864 = distinct !{!864, !862, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1"}
!865 = !{!866}
!866 = distinct !{!866, !867, !"cmpfunc: %a"}
!867 = distinct !{!867, !"cmpfunc"}
!868 = !{!869}
!869 = distinct !{!869, !867, !"cmpfunc: %b"}
!870 = !{!871}
!871 = distinct !{!871, !872, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!872 = distinct !{!872, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!873 = !{!874}
!874 = distinct !{!874, !872, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!875 = !{!871, !866, !861, !856}
!876 = !{!874, !869, !864, !859}
!877 = !{!878}
!878 = distinct !{!878, !879, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a"}
!879 = distinct !{!879, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE"}
!880 = !{!881}
!881 = distinct !{!881, !879, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b"}
!882 = !{!883}
!883 = distinct !{!883, !884, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0"}
!884 = distinct !{!884, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE"}
!885 = !{!886}
!886 = distinct !{!886, !884, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1"}
!887 = !{!888}
!888 = distinct !{!888, !889, !"cmpfunc: %a"}
!889 = distinct !{!889, !"cmpfunc"}
!890 = !{!891}
!891 = distinct !{!891, !889, !"cmpfunc: %b"}
!892 = !{!893}
!893 = distinct !{!893, !894, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!894 = distinct !{!894, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!895 = !{!896}
!896 = distinct !{!896, !894, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!897 = !{!893, !888, !883, !878}
!898 = !{!896, !891, !886, !881}
!899 = !{!900}
!900 = distinct !{!900, !901, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a"}
!901 = distinct !{!901, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE"}
!902 = !{!903}
!903 = distinct !{!903, !901, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b"}
!904 = !{!905}
!905 = distinct !{!905, !906, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0"}
!906 = distinct !{!906, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE"}
!907 = !{!908}
!908 = distinct !{!908, !906, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1"}
!909 = !{!910}
!910 = distinct !{!910, !911, !"cmpfunc: %a"}
!911 = distinct !{!911, !"cmpfunc"}
!912 = !{!913}
!913 = distinct !{!913, !911, !"cmpfunc: %b"}
!914 = !{!915}
!915 = distinct !{!915, !916, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!916 = distinct !{!916, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!917 = !{!918}
!918 = distinct !{!918, !916, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!919 = !{!915, !910, !905, !900}
!920 = !{!918, !913, !908, !903}
!921 = !{!922}
!922 = distinct !{!922, !923, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a"}
!923 = distinct !{!923, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE"}
!924 = !{!925}
!925 = distinct !{!925, !923, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b"}
!926 = !{!927}
!927 = distinct !{!927, !928, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0"}
!928 = distinct !{!928, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE"}
!929 = !{!930}
!930 = distinct !{!930, !928, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1"}
!931 = !{!932}
!932 = distinct !{!932, !933, !"cmpfunc: %a"}
!933 = distinct !{!933, !"cmpfunc"}
!934 = !{!935}
!935 = distinct !{!935, !933, !"cmpfunc: %b"}
!936 = !{!937}
!937 = distinct !{!937, !938, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!938 = distinct !{!938, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!939 = !{!940}
!940 = distinct !{!940, !938, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!941 = !{!937, !932, !927, !922}
!942 = !{!940, !935, !930, !925}
!943 = !{!944}
!944 = distinct !{!944, !945, !"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17hdb0fc08424a585beE: %self.0"}
!945 = distinct !{!945, !"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17hdb0fc08424a585beE"}
!946 = !{!947}
!947 = distinct !{!947, !948, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h467471a0d9a845c1E: %v.0"}
!948 = distinct !{!948, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h467471a0d9a845c1E"}
!949 = !{!950}
!950 = distinct !{!950, !951, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a"}
!951 = distinct !{!951, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE"}
!952 = !{!953}
!953 = distinct !{!953, !951, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b"}
!954 = !{!955}
!955 = distinct !{!955, !956, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0"}
!956 = distinct !{!956, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE"}
!957 = !{!958}
!958 = distinct !{!958, !959, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h36e7daef282500b9E: %_0"}
!959 = distinct !{!959, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h36e7daef282500b9E"}
!960 = !{!961}
!961 = distinct !{!961, !956, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1"}
!962 = !{!963}
!963 = distinct !{!963, !964, !"cmpfunc: %a"}
!964 = distinct !{!964, !"cmpfunc"}
!965 = !{!966}
!966 = distinct !{!966, !964, !"cmpfunc: %b"}
!967 = !{!968}
!968 = distinct !{!968, !969, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!969 = distinct !{!969, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!970 = !{!971}
!971 = distinct !{!971, !969, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!972 = !{!968, !963, !955, !950, !947}
!973 = !{!971, !966, !961, !953, !958}
!974 = !{!971, !966, !961, !953, !947}
!975 = !{!968, !963, !955, !950, !958}
!976 = !{!958, !977, !947}
!977 = distinct !{!977, !959, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h36e7daef282500b9E: %is_less"}
!978 = !{!979}
!979 = distinct !{!979, !980, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a"}
!980 = distinct !{!980, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE"}
!981 = !{!982}
!982 = distinct !{!982, !980, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b"}
!983 = !{!984}
!984 = distinct !{!984, !985, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0"}
!985 = distinct !{!985, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE"}
!986 = !{!987}
!987 = distinct !{!987, !988, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h4bc2352a39a620c2E: %_0"}
!988 = distinct !{!988, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h4bc2352a39a620c2E"}
!989 = !{!990}
!990 = distinct !{!990, !985, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1"}
!991 = !{!992}
!992 = distinct !{!992, !993, !"cmpfunc: %a"}
!993 = distinct !{!993, !"cmpfunc"}
!994 = !{!995}
!995 = distinct !{!995, !993, !"cmpfunc: %b"}
!996 = !{!997}
!997 = distinct !{!997, !998, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!998 = distinct !{!998, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!999 = !{!1000}
!1000 = distinct !{!1000, !998, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1001 = !{!997, !992, !984, !979, !947}
!1002 = !{!1000, !995, !990, !982, !987}
!1003 = !{!1000, !995, !990, !982, !947}
!1004 = !{!997, !992, !984, !979, !987}
!1005 = !{!987, !1006, !947}
!1006 = distinct !{!1006, !988, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h4bc2352a39a620c2E: %is_less"}
!1007 = !{!1008, !1010}
!1008 = distinct !{!1008, !1009, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha305904ef6894d71E: %self"}
!1009 = distinct !{!1009, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha305904ef6894d71E"}
!1010 = distinct !{!1010, !1011, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hc81cb7910e943fa4E: %_1"}
!1011 = distinct !{!1011, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hc81cb7910e943fa4E"}
!1012 = !{!1013, !1015, !1017, !1019}
!1013 = distinct !{!1013, !1014, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1014 = distinct !{!1014, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1015 = distinct !{!1015, !1016, !"cmpfunc: %b"}
!1016 = distinct !{!1016, !"cmpfunc"}
!1017 = distinct !{!1017, !1018, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1"}
!1018 = distinct !{!1018, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE"}
!1019 = distinct !{!1019, !1020, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b"}
!1020 = distinct !{!1020, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE"}
!1021 = !{!1022, !1023, !1024, !1025}
!1022 = distinct !{!1022, !1014, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1023 = distinct !{!1023, !1016, !"cmpfunc: %a"}
!1024 = distinct !{!1024, !1018, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0"}
!1025 = distinct !{!1025, !1020, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a"}
!1026 = !{!1027, !1029, !1031, !1033}
!1027 = distinct !{!1027, !1028, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1028 = distinct !{!1028, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1029 = distinct !{!1029, !1030, !"cmpfunc: %b"}
!1030 = distinct !{!1030, !"cmpfunc"}
!1031 = distinct !{!1031, !1032, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1"}
!1032 = distinct !{!1032, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE"}
!1033 = distinct !{!1033, !1034, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b"}
!1034 = distinct !{!1034, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE"}
!1035 = !{!1036, !1037, !1038, !1039}
!1036 = distinct !{!1036, !1028, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1037 = distinct !{!1037, !1030, !"cmpfunc: %a"}
!1038 = distinct !{!1038, !1032, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0"}
!1039 = distinct !{!1039, !1034, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a"}
!1040 = !{!1041, !1043}
!1041 = distinct !{!1041, !1042, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha305904ef6894d71E: %self"}
!1042 = distinct !{!1042, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha305904ef6894d71E"}
!1043 = distinct !{!1043, !1044, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hc81cb7910e943fa4E: %_1"}
!1044 = distinct !{!1044, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hc81cb7910e943fa4E"}
!1045 = !{!1046}
!1046 = distinct !{!1046, !1047, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17hccbf2b56117fc39aE: %_0"}
!1047 = distinct !{!1047, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17hccbf2b56117fc39aE"}
!1048 = !{i64 0, i64 2}
!1049 = !{i64 0, i64 -9223372036854775807}
!1050 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!1051 = !{!1052}
!1052 = distinct !{!1052, !1053, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a"}
!1053 = distinct !{!1053, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE"}
!1054 = !{!1055}
!1055 = distinct !{!1055, !1053, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b"}
!1056 = !{!1057}
!1057 = distinct !{!1057, !1058, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0"}
!1058 = distinct !{!1058, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE"}
!1059 = !{!1060}
!1060 = distinct !{!1060, !1058, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1"}
!1061 = !{!1062}
!1062 = distinct !{!1062, !1063, !"cmpfunc: %a"}
!1063 = distinct !{!1063, !"cmpfunc"}
!1064 = !{!1065}
!1065 = distinct !{!1065, !1063, !"cmpfunc: %b"}
!1066 = !{!1067}
!1067 = distinct !{!1067, !1068, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1068 = distinct !{!1068, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1069 = !{!1070}
!1070 = distinct !{!1070, !1068, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1071 = !{!1067, !1062, !1057, !1052}
!1072 = !{!1070, !1065, !1060, !1055}
!1073 = !{!1074}
!1074 = distinct !{!1074, !1075, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a"}
!1075 = distinct !{!1075, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE"}
!1076 = !{!1077}
!1077 = distinct !{!1077, !1075, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b"}
!1078 = !{!1079}
!1079 = distinct !{!1079, !1080, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0"}
!1080 = distinct !{!1080, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE"}
!1081 = !{!1082}
!1082 = distinct !{!1082, !1080, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1"}
!1083 = !{!1084}
!1084 = distinct !{!1084, !1085, !"cmpfunc: %a"}
!1085 = distinct !{!1085, !"cmpfunc"}
!1086 = !{!1087}
!1087 = distinct !{!1087, !1085, !"cmpfunc: %b"}
!1088 = !{!1089}
!1089 = distinct !{!1089, !1090, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1090 = distinct !{!1090, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1091 = !{!1092}
!1092 = distinct !{!1092, !1090, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1093 = !{!1089, !1084, !1079, !1074}
!1094 = !{!1092, !1087, !1082, !1077}
!1095 = !{!1096}
!1096 = distinct !{!1096, !1097, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a"}
!1097 = distinct !{!1097, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE"}
!1098 = !{!1099}
!1099 = distinct !{!1099, !1097, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b"}
!1100 = !{!1101}
!1101 = distinct !{!1101, !1102, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0"}
!1102 = distinct !{!1102, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE"}
!1103 = !{!1104}
!1104 = distinct !{!1104, !1102, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1"}
!1105 = !{!1106}
!1106 = distinct !{!1106, !1107, !"cmpfunc: %a"}
!1107 = distinct !{!1107, !"cmpfunc"}
!1108 = !{!1109}
!1109 = distinct !{!1109, !1107, !"cmpfunc: %b"}
!1110 = !{!1111}
!1111 = distinct !{!1111, !1112, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1112 = distinct !{!1112, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1113 = !{!1114}
!1114 = distinct !{!1114, !1112, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1115 = !{!1111, !1106, !1101, !1096}
!1116 = !{!1114, !1109, !1104, !1099}
!1117 = !{!1118, !1120}
!1118 = distinct !{!1118, !1119, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17h2843b12fe950926bE: %a.0"}
!1119 = distinct !{!1119, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17h2843b12fe950926bE"}
!1120 = distinct !{!1120, !1121, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hb09d409c77950cdcE: %self.0"}
!1121 = distinct !{!1121, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hb09d409c77950cdcE"}
!1122 = !{!1123}
!1123 = distinct !{!1123, !1119, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17h2843b12fe950926bE: %b.0"}
!1124 = !{!1123, !1120}
!1125 = !{!1118}
!1126 = !{!1127}
!1127 = distinct !{!1127, !1128, !"_ZN4core5slice4sort6stable5merge5merge17h58c75b7ed0d5d8edE: %v.0"}
!1128 = distinct !{!1128, !"_ZN4core5slice4sort6stable5merge5merge17h58c75b7ed0d5d8edE"}
!1129 = !{!1130}
!1130 = distinct !{!1130, !1128, !"_ZN4core5slice4sort6stable5merge5merge17h58c75b7ed0d5d8edE: %scratch.0"}
!1131 = !{!1127, !1130}
!1132 = !{!1133}
!1133 = distinct !{!1133, !1134, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a"}
!1134 = distinct !{!1134, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE"}
!1135 = !{!1136}
!1136 = distinct !{!1136, !1134, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b"}
!1137 = !{!1138}
!1138 = distinct !{!1138, !1139, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0"}
!1139 = distinct !{!1139, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE"}
!1140 = !{!1141}
!1141 = distinct !{!1141, !1139, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1"}
!1142 = !{!1143}
!1143 = distinct !{!1143, !1144, !"cmpfunc: %a"}
!1144 = distinct !{!1144, !"cmpfunc"}
!1145 = !{!1146}
!1146 = distinct !{!1146, !1144, !"cmpfunc: %b"}
!1147 = !{!1148}
!1148 = distinct !{!1148, !1149, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1149 = distinct !{!1149, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1150 = !{!1151}
!1151 = distinct !{!1151, !1149, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1152 = !{!1148, !1143, !1138, !1133, !1130}
!1153 = !{!1151, !1146, !1141, !1136, !1154, !1127}
!1154 = distinct !{!1154, !1155, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h9ee9a77a5c34b7f0E: %self"}
!1155 = distinct !{!1155, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h9ee9a77a5c34b7f0E"}
!1156 = !{!1151, !1146, !1141, !1136, !1127}
!1157 = !{!1148, !1143, !1138, !1133, !1154, !1130}
!1158 = !{!1154, !1130}
!1159 = !{!1160}
!1160 = distinct !{!1160, !1161, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a"}
!1161 = distinct !{!1161, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE"}
!1162 = !{!1163}
!1163 = distinct !{!1163, !1161, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b"}
!1164 = !{!1165}
!1165 = distinct !{!1165, !1166, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0"}
!1166 = distinct !{!1166, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE"}
!1167 = !{!1168}
!1168 = distinct !{!1168, !1166, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1"}
!1169 = !{!1170}
!1170 = distinct !{!1170, !1171, !"cmpfunc: %a"}
!1171 = distinct !{!1171, !"cmpfunc"}
!1172 = !{!1173}
!1173 = distinct !{!1173, !1171, !"cmpfunc: %b"}
!1174 = !{!1175}
!1175 = distinct !{!1175, !1176, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1176 = distinct !{!1176, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1177 = !{!1178}
!1178 = distinct !{!1178, !1176, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1179 = !{!1175, !1170, !1165, !1160, !1127}
!1180 = !{!1178, !1173, !1168, !1163, !1181, !1130}
!1181 = distinct !{!1181, !1182, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h912ec597818e1622E: %self"}
!1182 = distinct !{!1182, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h912ec597818e1622E"}
!1183 = !{!1178, !1173, !1168, !1163, !1130}
!1184 = !{!1175, !1170, !1165, !1160, !1181, !1127}
!1185 = !{!1181, !1130}
!1186 = !{!1187, !1189}
!1187 = distinct !{!1187, !1188, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3be0bc7f3fb095cfE: %self"}
!1188 = distinct !{!1188, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3be0bc7f3fb095cfE"}
!1189 = distinct !{!1189, !1190, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h0a1cdf161b695b70E: %_1"}
!1190 = distinct !{!1190, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h0a1cdf161b695b70E"}
!1191 = !{!1192}
!1192 = distinct !{!1192, !1193, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a"}
!1193 = distinct !{!1193, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE"}
!1194 = !{!1195}
!1195 = distinct !{!1195, !1193, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b"}
!1196 = !{!1197}
!1197 = distinct !{!1197, !1198, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0"}
!1198 = distinct !{!1198, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE"}
!1199 = !{!1200}
!1200 = distinct !{!1200, !1198, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1"}
!1201 = !{!1202}
!1202 = distinct !{!1202, !1203, !"cmpfunc: %a"}
!1203 = distinct !{!1203, !"cmpfunc"}
!1204 = !{!1205}
!1205 = distinct !{!1205, !1203, !"cmpfunc: %b"}
!1206 = !{!1207}
!1207 = distinct !{!1207, !1208, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1208 = distinct !{!1208, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1209 = !{!1210}
!1210 = distinct !{!1210, !1208, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1211 = !{!1207, !1202, !1197, !1192}
!1212 = !{!1210, !1205, !1200, !1195}
!1213 = !{!1214}
!1214 = distinct !{!1214, !1215, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a"}
!1215 = distinct !{!1215, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE"}
!1216 = !{!1217}
!1217 = distinct !{!1217, !1215, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b"}
!1218 = !{!1219}
!1219 = distinct !{!1219, !1220, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0"}
!1220 = distinct !{!1220, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE"}
!1221 = !{!1222}
!1222 = distinct !{!1222, !1220, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1"}
!1223 = !{!1224}
!1224 = distinct !{!1224, !1225, !"cmpfunc: %a"}
!1225 = distinct !{!1225, !"cmpfunc"}
!1226 = !{!1227}
!1227 = distinct !{!1227, !1225, !"cmpfunc: %b"}
!1228 = !{!1229}
!1229 = distinct !{!1229, !1230, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1230 = distinct !{!1230, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1231 = !{!1232}
!1232 = distinct !{!1232, !1230, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1233 = !{!1229, !1224, !1219, !1214}
!1234 = !{!1232, !1227, !1222, !1217}
!1235 = !{!1236}
!1236 = distinct !{!1236, !1237, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a"}
!1237 = distinct !{!1237, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE"}
!1238 = !{!1239}
!1239 = distinct !{!1239, !1237, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b"}
!1240 = !{!1241}
!1241 = distinct !{!1241, !1242, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0"}
!1242 = distinct !{!1242, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE"}
!1243 = !{!1244}
!1244 = distinct !{!1244, !1242, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1"}
!1245 = !{!1246}
!1246 = distinct !{!1246, !1247, !"cmpfunc: %a"}
!1247 = distinct !{!1247, !"cmpfunc"}
!1248 = !{!1249}
!1249 = distinct !{!1249, !1247, !"cmpfunc: %b"}
!1250 = !{!1251}
!1251 = distinct !{!1251, !1252, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1252 = distinct !{!1252, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1253 = !{!1254}
!1254 = distinct !{!1254, !1252, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1255 = !{!1251, !1246, !1241, !1236}
!1256 = !{!1254, !1249, !1244, !1239, !1257}
!1257 = distinct !{!1257, !1258, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h9ee9a77a5c34b7f0E: %self"}
!1258 = distinct !{!1258, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h9ee9a77a5c34b7f0E"}
!1259 = !{!1254, !1249, !1244, !1239}
!1260 = !{!1251, !1246, !1241, !1236, !1257}
!1261 = !{!1257}
!1262 = !{!1263}
!1263 = distinct !{!1263, !1264, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a"}
!1264 = distinct !{!1264, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE"}
!1265 = !{!1266}
!1266 = distinct !{!1266, !1264, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b"}
!1267 = !{!1268}
!1268 = distinct !{!1268, !1269, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0"}
!1269 = distinct !{!1269, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE"}
!1270 = !{!1271}
!1271 = distinct !{!1271, !1269, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1"}
!1272 = !{!1273}
!1273 = distinct !{!1273, !1274, !"cmpfunc: %a"}
!1274 = distinct !{!1274, !"cmpfunc"}
!1275 = !{!1276}
!1276 = distinct !{!1276, !1274, !"cmpfunc: %b"}
!1277 = !{!1278}
!1278 = distinct !{!1278, !1279, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1279 = distinct !{!1279, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1280 = !{!1281}
!1281 = distinct !{!1281, !1279, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1282 = !{!1278, !1273, !1268, !1263}
!1283 = !{!1281, !1276, !1271, !1266, !1284}
!1284 = distinct !{!1284, !1285, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h912ec597818e1622E: %self"}
!1285 = distinct !{!1285, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h912ec597818e1622E"}
!1286 = !{!1281, !1276, !1271, !1266}
!1287 = !{!1278, !1273, !1268, !1263, !1284}
!1288 = !{!1284}
!1289 = !{!1290, !1292}
!1290 = distinct !{!1290, !1291, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3be0bc7f3fb095cfE: %self"}
!1291 = distinct !{!1291, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3be0bc7f3fb095cfE"}
!1292 = distinct !{!1292, !1293, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h0a1cdf161b695b70E: %_1"}
!1293 = distinct !{!1293, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h0a1cdf161b695b70E"}
!1294 = !{!"branch_weights", i32 4000000, i32 4001}
!1295 = !{!1296}
!1296 = distinct !{!1296, !1297, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h32f1592a52897e82E: %a"}
!1297 = distinct !{!1297, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h32f1592a52897e82E"}
!1298 = !{!1299}
!1299 = distinct !{!1299, !1297, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h32f1592a52897e82E: %b"}
!1300 = !{!1301}
!1301 = distinct !{!1301, !1302, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a"}
!1302 = distinct !{!1302, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE"}
!1303 = !{!1304}
!1304 = distinct !{!1304, !1302, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b"}
!1305 = !{!1306}
!1306 = distinct !{!1306, !1307, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0"}
!1307 = distinct !{!1307, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE"}
!1308 = !{!1309}
!1309 = distinct !{!1309, !1307, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1"}
!1310 = !{!1311}
!1311 = distinct !{!1311, !1312, !"cmpfunc: %a"}
!1312 = distinct !{!1312, !"cmpfunc"}
!1313 = !{!1314}
!1314 = distinct !{!1314, !1312, !"cmpfunc: %b"}
!1315 = !{!1316}
!1316 = distinct !{!1316, !1317, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1317 = distinct !{!1317, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1318 = !{!1319}
!1319 = distinct !{!1319, !1317, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1320 = !{!1316, !1311, !1306, !1301, !1299}
!1321 = !{!1319, !1314, !1309, !1304, !1296}
!1322 = !{!1323}
!1323 = distinct !{!1323, !1324, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h3e882c6cb7ea627eE: %self"}
!1324 = distinct !{!1324, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h3e882c6cb7ea627eE"}
!1325 = !{!1326}
!1326 = distinct !{!1326, !1327, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h32f1592a52897e82E: %a"}
!1327 = distinct !{!1327, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h32f1592a52897e82E"}
!1328 = !{!1329}
!1329 = distinct !{!1329, !1327, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h32f1592a52897e82E: %b"}
!1330 = !{!1331}
!1331 = distinct !{!1331, !1332, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a"}
!1332 = distinct !{!1332, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE"}
!1333 = !{!1334}
!1334 = distinct !{!1334, !1332, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b"}
!1335 = !{!1336}
!1336 = distinct !{!1336, !1337, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0"}
!1337 = distinct !{!1337, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE"}
!1338 = !{!1339}
!1339 = distinct !{!1339, !1337, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1"}
!1340 = !{!1341}
!1341 = distinct !{!1341, !1342, !"cmpfunc: %a"}
!1342 = distinct !{!1342, !"cmpfunc"}
!1343 = !{!1344}
!1344 = distinct !{!1344, !1342, !"cmpfunc: %b"}
!1345 = !{!1346}
!1346 = distinct !{!1346, !1347, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1347 = distinct !{!1347, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1348 = !{!1349}
!1349 = distinct !{!1349, !1347, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1350 = !{!1346, !1341, !1336, !1331, !1329}
!1351 = !{!1349, !1344, !1339, !1334, !1326}
!1352 = !{!1353}
!1353 = distinct !{!1353, !1354, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h3e882c6cb7ea627eE: %self"}
!1354 = distinct !{!1354, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h3e882c6cb7ea627eE"}
!1355 = !{!1356}
!1356 = distinct !{!1356, !1357, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h32f1592a52897e82E: %a"}
!1357 = distinct !{!1357, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h32f1592a52897e82E"}
!1358 = !{!1359}
!1359 = distinct !{!1359, !1357, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h32f1592a52897e82E: %b"}
!1360 = !{!1361}
!1361 = distinct !{!1361, !1362, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a"}
!1362 = distinct !{!1362, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE"}
!1363 = !{!1364}
!1364 = distinct !{!1364, !1362, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b"}
!1365 = !{!1366}
!1366 = distinct !{!1366, !1367, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0"}
!1367 = distinct !{!1367, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE"}
!1368 = !{!1369}
!1369 = distinct !{!1369, !1367, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1"}
!1370 = !{!1371}
!1371 = distinct !{!1371, !1372, !"cmpfunc: %a"}
!1372 = distinct !{!1372, !"cmpfunc"}
!1373 = !{!1374}
!1374 = distinct !{!1374, !1372, !"cmpfunc: %b"}
!1375 = !{!1376}
!1376 = distinct !{!1376, !1377, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1377 = distinct !{!1377, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1378 = !{!1379}
!1379 = distinct !{!1379, !1377, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1380 = !{!1376, !1371, !1366, !1361, !1359}
!1381 = !{!1379, !1374, !1369, !1364, !1356}
!1382 = !{!1383}
!1383 = distinct !{!1383, !1384, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h3e882c6cb7ea627eE: %self"}
!1384 = distinct !{!1384, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h3e882c6cb7ea627eE"}
!1385 = !{!1386}
!1386 = distinct !{!1386, !1387, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h32f1592a52897e82E: %a"}
!1387 = distinct !{!1387, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h32f1592a52897e82E"}
!1388 = !{!1389}
!1389 = distinct !{!1389, !1387, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h32f1592a52897e82E: %b"}
!1390 = !{!1391}
!1391 = distinct !{!1391, !1392, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a"}
!1392 = distinct !{!1392, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE"}
!1393 = !{!1394}
!1394 = distinct !{!1394, !1392, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b"}
!1395 = !{!1396}
!1396 = distinct !{!1396, !1397, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0"}
!1397 = distinct !{!1397, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE"}
!1398 = !{!1399}
!1399 = distinct !{!1399, !1397, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1"}
!1400 = !{!1401}
!1401 = distinct !{!1401, !1402, !"cmpfunc: %a"}
!1402 = distinct !{!1402, !"cmpfunc"}
!1403 = !{!1404}
!1404 = distinct !{!1404, !1402, !"cmpfunc: %b"}
!1405 = !{!1406}
!1406 = distinct !{!1406, !1407, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1407 = distinct !{!1407, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1408 = !{!1409}
!1409 = distinct !{!1409, !1407, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1410 = !{!1406, !1401, !1396, !1391, !1389}
!1411 = !{!1409, !1404, !1399, !1394, !1386}
!1412 = !{!1413}
!1413 = distinct !{!1413, !1414, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h3e882c6cb7ea627eE: %self"}
!1414 = distinct !{!1414, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h3e882c6cb7ea627eE"}
!1415 = !{!1416}
!1416 = distinct !{!1416, !1417, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h32f1592a52897e82E: %a"}
!1417 = distinct !{!1417, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h32f1592a52897e82E"}
!1418 = !{!1419}
!1419 = distinct !{!1419, !1417, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h32f1592a52897e82E: %b"}
!1420 = !{!1421}
!1421 = distinct !{!1421, !1422, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a"}
!1422 = distinct !{!1422, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE"}
!1423 = !{!1424}
!1424 = distinct !{!1424, !1422, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b"}
!1425 = !{!1426}
!1426 = distinct !{!1426, !1427, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0"}
!1427 = distinct !{!1427, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE"}
!1428 = !{!1429}
!1429 = distinct !{!1429, !1427, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1"}
!1430 = !{!1431}
!1431 = distinct !{!1431, !1432, !"cmpfunc: %a"}
!1432 = distinct !{!1432, !"cmpfunc"}
!1433 = !{!1434}
!1434 = distinct !{!1434, !1432, !"cmpfunc: %b"}
!1435 = !{!1436}
!1436 = distinct !{!1436, !1437, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1437 = distinct !{!1437, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1438 = !{!1439}
!1439 = distinct !{!1439, !1437, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1440 = !{!1436, !1431, !1426, !1421, !1419}
!1441 = !{!1439, !1434, !1429, !1424, !1416}
!1442 = !{!1443}
!1443 = distinct !{!1443, !1444, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h3e882c6cb7ea627eE: %self"}
!1444 = distinct !{!1444, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h3e882c6cb7ea627eE"}
!1445 = !{!1446}
!1446 = distinct !{!1446, !1447, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h3e882c6cb7ea627eE: %self"}
!1447 = distinct !{!1447, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h3e882c6cb7ea627eE"}
!1448 = distinct !{!1448, !1449}
!1449 = !{!"llvm.loop.unroll.disable"}
!1450 = !{!1451}
!1451 = distinct !{!1451, !1452, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a"}
!1452 = distinct !{!1452, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE"}
!1453 = !{!1454}
!1454 = distinct !{!1454, !1452, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b"}
!1455 = !{!1456}
!1456 = distinct !{!1456, !1457, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0"}
!1457 = distinct !{!1457, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE"}
!1458 = !{!1459}
!1459 = distinct !{!1459, !1457, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1"}
!1460 = !{!1461}
!1461 = distinct !{!1461, !1462, !"cmpfunc: %a"}
!1462 = distinct !{!1462, !"cmpfunc"}
!1463 = !{!1464}
!1464 = distinct !{!1464, !1462, !"cmpfunc: %b"}
!1465 = !{!1466}
!1466 = distinct !{!1466, !1467, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1467 = distinct !{!1467, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1468 = !{!1469}
!1469 = distinct !{!1469, !1467, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1470 = !{!1466, !1461, !1456, !1451}
!1471 = !{!1469, !1464, !1459, !1454}
!1472 = !{!1473}
!1473 = distinct !{!1473, !1474, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h3e882c6cb7ea627eE: %self"}
!1474 = distinct !{!1474, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h3e882c6cb7ea627eE"}
!1475 = !{!1476}
!1476 = distinct !{!1476, !1477, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a"}
!1477 = distinct !{!1477, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE"}
!1478 = !{!1479}
!1479 = distinct !{!1479, !1477, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b"}
!1480 = !{!1481}
!1481 = distinct !{!1481, !1482, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0"}
!1482 = distinct !{!1482, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE"}
!1483 = !{!1484}
!1484 = distinct !{!1484, !1482, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1"}
!1485 = !{!1486}
!1486 = distinct !{!1486, !1487, !"cmpfunc: %a"}
!1487 = distinct !{!1487, !"cmpfunc"}
!1488 = !{!1489}
!1489 = distinct !{!1489, !1487, !"cmpfunc: %b"}
!1490 = !{!1491}
!1491 = distinct !{!1491, !1492, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1492 = distinct !{!1492, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1493 = !{!1494}
!1494 = distinct !{!1494, !1492, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1495 = !{!1491, !1486, !1481, !1476}
!1496 = !{!1494, !1489, !1484, !1479}
!1497 = !{!1498}
!1498 = distinct !{!1498, !1499, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h3e882c6cb7ea627eE: %self"}
!1499 = distinct !{!1499, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h3e882c6cb7ea627eE"}
!1500 = !{!1501}
!1501 = distinct !{!1501, !1502, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a"}
!1502 = distinct !{!1502, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE"}
!1503 = !{!1504}
!1504 = distinct !{!1504, !1502, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b"}
!1505 = !{!1506}
!1506 = distinct !{!1506, !1507, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0"}
!1507 = distinct !{!1507, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE"}
!1508 = !{!1509}
!1509 = distinct !{!1509, !1507, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1"}
!1510 = !{!1511}
!1511 = distinct !{!1511, !1512, !"cmpfunc: %a"}
!1512 = distinct !{!1512, !"cmpfunc"}
!1513 = !{!1514}
!1514 = distinct !{!1514, !1512, !"cmpfunc: %b"}
!1515 = !{!1516}
!1516 = distinct !{!1516, !1517, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1517 = distinct !{!1517, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1518 = !{!1519}
!1519 = distinct !{!1519, !1517, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1520 = !{!1516, !1511, !1506, !1501}
!1521 = !{!1519, !1514, !1509, !1504}
!1522 = !{!1523}
!1523 = distinct !{!1523, !1524, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h3e882c6cb7ea627eE: %self"}
!1524 = distinct !{!1524, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h3e882c6cb7ea627eE"}
!1525 = !{!1526}
!1526 = distinct !{!1526, !1527, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a"}
!1527 = distinct !{!1527, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE"}
!1528 = !{!1529}
!1529 = distinct !{!1529, !1527, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b"}
!1530 = !{!1531}
!1531 = distinct !{!1531, !1532, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0"}
!1532 = distinct !{!1532, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE"}
!1533 = !{!1534}
!1534 = distinct !{!1534, !1532, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1"}
!1535 = !{!1536}
!1536 = distinct !{!1536, !1537, !"cmpfunc: %a"}
!1537 = distinct !{!1537, !"cmpfunc"}
!1538 = !{!1539}
!1539 = distinct !{!1539, !1537, !"cmpfunc: %b"}
!1540 = !{!1541}
!1541 = distinct !{!1541, !1542, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1542 = distinct !{!1542, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1543 = !{!1544}
!1544 = distinct !{!1544, !1542, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1545 = !{!1541, !1536, !1531, !1526}
!1546 = !{!1544, !1539, !1534, !1529}
!1547 = !{!1548}
!1548 = distinct !{!1548, !1549, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h3e882c6cb7ea627eE: %self"}
!1549 = distinct !{!1549, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h3e882c6cb7ea627eE"}
!1550 = !{!1551}
!1551 = distinct !{!1551, !1552, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a"}
!1552 = distinct !{!1552, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE"}
!1553 = !{!1554}
!1554 = distinct !{!1554, !1552, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b"}
!1555 = !{!1556}
!1556 = distinct !{!1556, !1557, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0"}
!1557 = distinct !{!1557, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE"}
!1558 = !{!1559}
!1559 = distinct !{!1559, !1557, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1"}
!1560 = !{!1561}
!1561 = distinct !{!1561, !1562, !"cmpfunc: %a"}
!1562 = distinct !{!1562, !"cmpfunc"}
!1563 = !{!1564}
!1564 = distinct !{!1564, !1562, !"cmpfunc: %b"}
!1565 = !{!1566}
!1566 = distinct !{!1566, !1567, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1567 = distinct !{!1567, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1568 = !{!1569}
!1569 = distinct !{!1569, !1567, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1570 = !{!1566, !1561, !1556, !1551}
!1571 = !{!1569, !1564, !1559, !1554}
!1572 = !{!1573}
!1573 = distinct !{!1573, !1574, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h3e882c6cb7ea627eE: %self"}
!1574 = distinct !{!1574, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h3e882c6cb7ea627eE"}
!1575 = !{!1576}
!1576 = distinct !{!1576, !1577, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h3e882c6cb7ea627eE: %self"}
!1577 = distinct !{!1577, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h3e882c6cb7ea627eE"}
!1578 = distinct !{!1578, !1449}
!1579 = !{!1580}
!1580 = distinct !{!1580, !1581, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a"}
!1581 = distinct !{!1581, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE"}
!1582 = !{!1583}
!1583 = distinct !{!1583, !1581, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b"}
!1584 = !{!1585}
!1585 = distinct !{!1585, !1586, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0"}
!1586 = distinct !{!1586, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE"}
!1587 = !{!1588}
!1588 = distinct !{!1588, !1589, !"_ZN4core5slice4sort6shared5pivot7median317hf12ce116837ecf40E: %c"}
!1589 = distinct !{!1589, !"_ZN4core5slice4sort6shared5pivot7median317hf12ce116837ecf40E"}
!1590 = !{!1591}
!1591 = distinct !{!1591, !1586, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1"}
!1592 = !{!1593}
!1593 = distinct !{!1593, !1594, !"cmpfunc: %a"}
!1594 = distinct !{!1594, !"cmpfunc"}
!1595 = !{!1596}
!1596 = distinct !{!1596, !1594, !"cmpfunc: %b"}
!1597 = !{!1598}
!1598 = distinct !{!1598, !1599, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1599 = distinct !{!1599, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1600 = !{!1601}
!1601 = distinct !{!1601, !1599, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1602 = !{!1598, !1593, !1585, !1580, !1603}
!1603 = distinct !{!1603, !1604, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17ha498864309532c56E: %v.0"}
!1604 = distinct !{!1604, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17ha498864309532c56E"}
!1605 = !{!1601, !1596, !1591, !1583, !1588, !1606}
!1606 = distinct !{!1606, !1604, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17ha498864309532c56E: %is_less"}
!1607 = !{!1601, !1596, !1591, !1583, !1603}
!1608 = !{!1598, !1593, !1585, !1580, !1588, !1606}
!1609 = !{!1610, !1612, !1614, !1616, !1603}
!1610 = distinct !{!1610, !1611, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1611 = distinct !{!1611, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1612 = distinct !{!1612, !1613, !"cmpfunc: %b"}
!1613 = distinct !{!1613, !"cmpfunc"}
!1614 = distinct !{!1614, !1615, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1"}
!1615 = distinct !{!1615, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE"}
!1616 = distinct !{!1616, !1617, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b"}
!1617 = distinct !{!1617, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE"}
!1618 = !{!1619, !1620, !1621, !1622, !1606}
!1619 = distinct !{!1619, !1611, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1620 = distinct !{!1620, !1613, !"cmpfunc: %a"}
!1621 = distinct !{!1621, !1615, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0"}
!1622 = distinct !{!1622, !1617, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a"}
!1623 = !{!1624, !1626, !1628, !1630}
!1624 = distinct !{!1624, !1625, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1625 = distinct !{!1625, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1626 = distinct !{!1626, !1627, !"cmpfunc: %a"}
!1627 = distinct !{!1627, !"cmpfunc"}
!1628 = distinct !{!1628, !1629, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0"}
!1629 = distinct !{!1629, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE"}
!1630 = distinct !{!1630, !1631, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a"}
!1631 = distinct !{!1631, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE"}
!1632 = !{!1633, !1634, !1635, !1636}
!1633 = distinct !{!1633, !1625, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1634 = distinct !{!1634, !1627, !"cmpfunc: %b"}
!1635 = distinct !{!1635, !1629, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1"}
!1636 = distinct !{!1636, !1631, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b"}
!1637 = !{!1638, !1640}
!1638 = distinct !{!1638, !1639, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h447654892ce49de7E: %pair"}
!1639 = distinct !{!1639, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h447654892ce49de7E"}
!1640 = distinct !{!1640, !1639, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h447654892ce49de7E: %self.0"}
!1641 = !{i64 0, i64 -9223372036854775808}
!1642 = !{!1643}
!1643 = distinct !{!1643, !1644, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1644 = distinct !{!1644, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1645 = !{!1646}
!1646 = distinct !{!1646, !1644, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1647 = !{!1648, !1650, !1652}
!1648 = distinct !{!1648, !1649, !"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17ha09288335cabff44E: %slice.0"}
!1649 = distinct !{!1649, !"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17ha09288335cabff44E"}
!1650 = distinct !{!1650, !1651, !"_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17hb83d66ba3f9e3440E: %self.0"}
!1651 = distinct !{!1651, !"_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17hb83d66ba3f9e3440E"}
!1652 = distinct !{!1652, !1653, !"_ZN4core5array85_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$5index17he69c5425cdd68754E: %self"}
!1653 = distinct !{!1653, !"_ZN4core5array85_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$5index17he69c5425cdd68754E"}
!1654 = !{!1655}
!1655 = distinct !{!1655, !1656, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17ha8832592c6732141E: %self.0"}
!1656 = distinct !{!1656, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17ha8832592c6732141E"}
!1657 = !{!1658, !1660, !1655}
!1658 = distinct !{!1658, !1659, !"_ZN5alloc5slice11stable_sort17hed67ff61dbbb49faE: %v.0"}
!1659 = distinct !{!1659, !"_ZN5alloc5slice11stable_sort17hed67ff61dbbb49faE"}
!1660 = distinct !{!1660, !1659, !"_ZN5alloc5slice11stable_sort17hed67ff61dbbb49faE: argument 1"}
!1661 = !{!"branch_weights", !"expected", i32 2000, i32 1}
