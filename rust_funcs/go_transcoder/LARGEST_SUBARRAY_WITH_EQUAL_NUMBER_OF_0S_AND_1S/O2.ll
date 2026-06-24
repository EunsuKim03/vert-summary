; ModuleID = 'LARGEST_SUBARRAY_WITH_EQUAL_NUMBER_OF_0S_AND_1S_emit.227fae25707c58d0-cgu.0'
source_filename = "LARGEST_SUBARRAY_WITH_EQUAL_NUMBER_OF_0S_AND_1S_emit.227fae25707c58d0-cgu.0"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vtable.0 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h816774b2c0afc7d7E" }>, align 8
@alloc_d1084648e479974e70c9329824bf76f9 = private unnamed_addr constant [9 x i8] c"mid > len", align 1
@alloc_e8e5fd9f509afcb950667480b3e3e42a = private unnamed_addr constant [126 x i8] c"/root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/sort/stable/quicksort.rs\00", align 1
@alloc_58d434a1e795f965ef82c8e9c5db822a = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_e8e5fd9f509afcb950667480b3e3e42a, [16 x i8] c"}\00\00\00\00\00\00\00J\00\00\00\1F\00\00\00" }>, align 8
@alloc_0766b232215672ee1bd2195fdb153938 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_e8e5fd9f509afcb950667480b3e3e42a, [16 x i8] c"}\00\00\00\00\00\00\00D\00\00\00\17\00\00\00" }>, align 8
@alloc_61247b90e1706a3f65e71312b599d3d1 = private unnamed_addr constant [4 x i8] c"\C0\01\0A\00", align 1
@alloc_0d10560cfe7adf708b06301e68060bd0 = private unnamed_addr constant [148 x i8] c"/root/es/vert/vert/rust_funcs/go_transcoder/LARGEST_SUBARRAY_WITH_EQUAL_NUMBER_OF_0S_AND_1S/LARGEST_SUBARRAY_WITH_EQUAL_NUMBER_OF_0S_AND_1S_emit.rs\00", align 1
@alloc_e35ef0db3ff0e2e52d9de27516a202e9 = private unnamed_addr constant [17 x i8] c"No such subarray\0A", align 1
@alloc_9a773fcc3e883de64111d3dc1931b030 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_0d10560cfe7adf708b06301e68060bd0, [16 x i8] c"\93\00\00\00\00\00\00\00\1A\00\00\00\12\00\00\00" }>, align 8
@alloc_ba62de7ca345cedcea20b56148fe58ba = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_0d10560cfe7adf708b06301e68060bd0, [16 x i8] c"\93\00\00\00\00\00\00\00\1C\00\00\00\17\00\00\00" }>, align 8

; <&T as core::fmt::Debug>::fmt
; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h816774b2c0afc7d7E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %self, ptr noalias noundef align 8 dereferenceable(24) %f) unnamed_addr #0 {
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
define internal noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hc1af96bc2d4cab3fE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %self, ptr noalias noundef align 8 dereferenceable(24) %f) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %entry.i.i = alloca [8 x i8], align 8
  %_5.i = alloca [16 x i8], align 8
  %_3.0 = load ptr, ptr %self, align 8, !nonnull !3, !align !4, !noundef !3
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %_3.1 = load i64, ptr %0, align 8, !noundef !3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_5.i), !noalias !10
; call core::fmt::Formatter::debug_list
  call void @_ZN4core3fmt9Formatter10debug_list17h86f8e830c3b2e8a1E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %_5.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %f), !noalias !14
  %_10.idx.i = shl nuw nsw i64 %_3.1, 2
  %_10.i = getelementptr inbounds nuw i8, ptr %_3.0, i64 %_10.idx.i
  %_7.i7.i.i = icmp eq i64 %_3.1, 0
  br i1 %_7.i7.i.i, label %"_ZN48_$LT$$u5b$T$u5d$$u20$as$u20$core..fmt..Debug$GT$3fmt17h76ac33862e5a2098E.exit", label %bb5.i.i

bb5.i.i:                                          ; preds = %start, %bb5.i.i
  %iter.sroa.0.08.i.i = phi ptr [ %_18.i.i.i, %bb5.i.i ], [ %_3.0, %start ]
  %_18.i.i.i = getelementptr inbounds nuw i8, ptr %iter.sroa.0.08.i.i, i64 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %entry.i.i), !noalias !15
  store ptr %iter.sroa.0.08.i.i, ptr %entry.i.i, align 8, !noalias !15
; call core::fmt::builders::DebugList::entry
  %_9.i.i = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders9DebugList5entry17h6a347a718df63e39E(ptr noalias noundef nonnull align 8 dereferenceable(16) %_5.i, ptr noundef nonnull align 1 %entry.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @vtable.0)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %entry.i.i), !noalias !15
  %_7.i.i.i = icmp eq ptr %_18.i.i.i, %_10.i
  br i1 %_7.i.i.i, label %"_ZN48_$LT$$u5b$T$u5d$$u20$as$u20$core..fmt..Debug$GT$3fmt17h76ac33862e5a2098E.exit", label %bb5.i.i

"_ZN48_$LT$$u5b$T$u5d$$u20$as$u20$core..fmt..Debug$GT$3fmt17h76ac33862e5a2098E.exit": ; preds = %bb5.i.i, %start
; call core::fmt::builders::DebugList::finish
  %_0.i = call noundef zeroext i1 @_ZN4core3fmt8builders9DebugList6finish17h71e8b1e747a3e8ffE(ptr noalias noundef nonnull align 8 dereferenceable(16) %_5.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_5.i), !noalias !10
  ret i1 %_0.i
}

; core::slice::sort::shared::pivot::median3_rec
; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite) uwtable
define internal fastcc noundef nonnull ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h100f0d34d8fa5739E(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i64 noundef range(i64 0, 288230376151711744) %n) unnamed_addr #1 {
start:
  %_6 = icmp samesign ugt i64 %n, 7
  br i1 %_6, label %bb1, label %bb6

bb1:                                              ; preds = %start
  %n84 = lshr i64 %n, 3
  %count = shl nuw nsw i64 %n84, 2
  %_10 = getelementptr inbounds nuw i32, ptr %0, i64 %count
  %count1 = mul nuw nsw i64 %n84, 7
  %_13 = getelementptr inbounds nuw i32, ptr %0, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %3 = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h100f0d34d8fa5739E(ptr noundef %0, ptr noundef %_10, ptr noundef %_13, i64 noundef %n84)
  %_16 = getelementptr inbounds nuw i32, ptr %1, i64 %count
  %_18 = getelementptr inbounds nuw i32, ptr %1, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %4 = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h100f0d34d8fa5739E(ptr noundef %1, ptr noundef %_16, ptr noundef %_18, i64 noundef %n84)
  %_20 = getelementptr inbounds nuw i32, ptr %2, i64 %count
  %_22 = getelementptr inbounds nuw i32, ptr %2, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %5 = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h100f0d34d8fa5739E(ptr noundef %2, ptr noundef %_20, ptr noundef %_22, i64 noundef %n84)
  br label %bb6

bb6:                                              ; preds = %start, %bb1
  %c.sroa.0.0 = phi ptr [ %5, %bb1 ], [ %2, %start ]
  %b.sroa.0.0 = phi ptr [ %4, %bb1 ], [ %1, %start ]
  %a.sroa.0.0 = phi ptr [ %3, %bb1 ], [ %0, %start ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23), !noalias !26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29), !noalias !26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31), !noalias !26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34), !noalias !26
  %_3.i.i.i = load i32, ptr %a.sroa.0.0, align 4, !alias.scope !36, !noalias !37, !noundef !3
  %_4.i.i.i = load i32, ptr %b.sroa.0.0, align 4, !alias.scope !38, !noalias !39, !noundef !3
  %_0.i = icmp slt i32 %_3.i.i.i, %_4.i.i.i
  %_4.i.i.i6 = load i32, ptr %c.sroa.0.0, align 4, !alias.scope !40, !noalias !47, !noundef !3
  %_0.i7 = icmp slt i32 %_3.i.i.i, %_4.i.i.i6
  %6 = xor i1 %_0.i, %_0.i7
  %_0.i10 = icmp slt i32 %_4.i.i.i, %_4.i.i.i6
  %_12.i = xor i1 %_0.i, %_0.i10
  %c.b.i = select i1 %_12.i, ptr %c.sroa.0.0, ptr %b.sroa.0.0
  %_0.sroa.0.0.i = select i1 %6, ptr %a.sroa.0.0, ptr %c.b.i
  ret ptr %_0.sroa.0.0.i
}

; core::slice::sort::shared::smallsort::sort8_stable
; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17ha82285e98882abc9E(ptr noundef nonnull readonly captures(none) %v_base, ptr noundef nonnull writeonly captures(none) initializes((0, 32)) %dst, ptr noundef nonnull captures(address) initializes((0, 32)) %scratch_base) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %_7.i = getelementptr inbounds nuw i8, ptr %v_base, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !56)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64)
  %_3.i.i.i.i = load i32, ptr %_7.i, align 4, !alias.scope !66, !noalias !67, !noundef !3
  %_4.i.i.i.i = load i32, ptr %v_base, align 4, !alias.scope !67, !noalias !66, !noundef !3
  %_0.i.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %_12.i = getelementptr inbounds nuw i8, ptr %v_base, i64 12
  %_14.i = getelementptr inbounds nuw i8, ptr %v_base, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81)
  %_3.i.i.i7.i = load i32, ptr %_12.i, align 4, !alias.scope !83, !noalias !84, !noundef !3
  %_4.i.i.i8.i = load i32, ptr %_14.i, align 4, !alias.scope !84, !noalias !83, !noundef !3
  %_0.i9.i = icmp slt i32 %_3.i.i.i7.i, %_4.i.i.i8.i
  %count.i = zext i1 %_0.i.i to i64
  %a.i = getelementptr inbounds nuw i32, ptr %v_base, i64 %count.i
  %_19.i = xor i1 %_0.i.i, true
  %count2.i = zext i1 %_19.i to i64
  %b.i = getelementptr inbounds nuw i32, ptr %v_base, i64 %count2.i
  %count3.i = select i1 %_0.i9.i, i64 3, i64 2
  %c.i = getelementptr inbounds nuw i32, ptr %v_base, i64 %count3.i
  %count4.i = select i1 %_0.i9.i, i64 2, i64 3
  %d.i = getelementptr inbounds nuw i32, ptr %v_base, i64 %count4.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98)
  %_3.i.i.i10.i = load i32, ptr %c.i, align 4, !alias.scope !100, !noalias !101, !noundef !3
  %_4.i.i.i11.i = load i32, ptr %a.i, align 4, !alias.scope !101, !noalias !100, !noundef !3
  %_0.i12.i = icmp slt i32 %_3.i.i.i10.i, %_4.i.i.i11.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !105)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !110)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !112)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115)
  %_3.i.i.i13.i = load i32, ptr %d.i, align 4, !alias.scope !117, !noalias !118, !noundef !3
  %_4.i.i.i14.i = load i32, ptr %b.i, align 4, !alias.scope !118, !noalias !117, !noundef !3
  %_0.i15.i = icmp slt i32 %_3.i.i.i13.i, %_4.i.i.i14.i
  %0 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i10.i, i32 %_4.i.i.i11.i)
  %1 = select i1 %_0.i15.i, ptr %c.i, ptr %b.i, !unpredictable !3
  %2 = select i1 %_0.i12.i, ptr %a.i, ptr %1, !unpredictable !3
  %3 = select i1 %_0.i12.i, ptr %b.i, ptr %c.i, !unpredictable !3
  %4 = select i1 %_0.i15.i, ptr %d.i, ptr %3, !unpredictable !3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !119)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !122)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !132)
  %_3.i.i.i16.i = load i32, ptr %4, align 4, !alias.scope !134, !noalias !135, !noundef !3
  %_4.i.i.i17.i = load i32, ptr %2, align 4, !alias.scope !135, !noalias !134, !noundef !3
  %_0.i18.i = icmp slt i32 %_3.i.i.i16.i, %_4.i.i.i17.i
  store i32 %0, ptr %scratch_base, align 4
  %dst5.i = getelementptr inbounds nuw i8, ptr %scratch_base, i64 4
  %.val.i = load i32, ptr %4, align 4
  %.val19.i = load i32, ptr %2, align 4
  %5 = select i1 %_0.i18.i, i32 %.val.i, i32 %.val19.i
  store i32 %5, ptr %dst5.i, align 4
  %dst6.i = getelementptr inbounds nuw i8, ptr %scratch_base, i64 8
  %.val20.i = load i32, ptr %2, align 4
  %.val21.i = load i32, ptr %4, align 4
  %6 = select i1 %_0.i18.i, i32 %.val20.i, i32 %.val21.i
  store i32 %6, ptr %dst6.i, align 4
  %7 = getelementptr i8, ptr %scratch_base, i64 12
  %b.val.i = load i32, ptr %b.i, align 4
  %d.val.i = load i32, ptr %d.i, align 4
  %8 = select i1 %_0.i15.i, i32 %b.val.i, i32 %d.val.i
  store i32 %8, ptr %7, align 4
  %_9 = getelementptr inbounds nuw i8, ptr %v_base, i64 16
  %_10 = getelementptr i8, ptr %scratch_base, i64 16
  %_7.i1 = getelementptr inbounds nuw i8, ptr %v_base, i64 20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !139)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !141)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !144)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149)
  %_3.i.i.i.i2 = load i32, ptr %_7.i1, align 4, !alias.scope !151, !noalias !152, !noundef !3
  %_4.i.i.i.i3 = load i32, ptr %_9, align 4, !alias.scope !152, !noalias !151, !noundef !3
  %_0.i.i4 = icmp slt i32 %_3.i.i.i.i2, %_4.i.i.i.i3
  %_12.i5 = getelementptr inbounds nuw i8, ptr %v_base, i64 28
  %_14.i6 = getelementptr inbounds nuw i8, ptr %v_base, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !153)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !156)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !158)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !163)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !166)
  %_3.i.i.i7.i7 = load i32, ptr %_12.i5, align 4, !alias.scope !168, !noalias !169, !noundef !3
  %_4.i.i.i8.i8 = load i32, ptr %_14.i6, align 4, !alias.scope !169, !noalias !168, !noundef !3
  %_0.i9.i9 = icmp slt i32 %_3.i.i.i7.i7, %_4.i.i.i8.i8
  %count.i10 = zext i1 %_0.i.i4 to i64
  %a.i11 = getelementptr inbounds nuw i32, ptr %_9, i64 %count.i10
  %_19.i12 = xor i1 %_0.i.i4, true
  %count2.i13 = zext i1 %_19.i12 to i64
  %b.i14 = getelementptr inbounds nuw i32, ptr %_9, i64 %count2.i13
  %count3.i15 = select i1 %_0.i9.i9, i64 3, i64 2
  %c.i16 = getelementptr inbounds nuw i32, ptr %_9, i64 %count3.i15
  %count4.i17 = select i1 %_0.i9.i9, i64 2, i64 3
  %d.i18 = getelementptr inbounds nuw i32, ptr %_9, i64 %count4.i17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !170)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !173)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !175)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !178)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !180)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !183)
  %_3.i.i.i10.i19 = load i32, ptr %c.i16, align 4, !alias.scope !185, !noalias !186, !noundef !3
  %_4.i.i.i11.i20 = load i32, ptr %a.i11, align 4, !alias.scope !186, !noalias !185, !noundef !3
  %_0.i12.i21 = icmp slt i32 %_3.i.i.i10.i19, %_4.i.i.i11.i20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !187)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !190)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !192)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !195)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !197)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !200)
  %_3.i.i.i13.i22 = load i32, ptr %d.i18, align 4, !alias.scope !202, !noalias !203, !noundef !3
  %_4.i.i.i14.i23 = load i32, ptr %b.i14, align 4, !alias.scope !203, !noalias !202, !noundef !3
  %_0.i15.i24 = icmp slt i32 %_3.i.i.i13.i22, %_4.i.i.i14.i23
  %9 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i10.i19, i32 %_4.i.i.i11.i20)
  %10 = select i1 %_0.i15.i24, ptr %c.i16, ptr %b.i14, !unpredictable !3
  %11 = select i1 %_0.i12.i21, ptr %a.i11, ptr %10, !unpredictable !3
  %12 = select i1 %_0.i12.i21, ptr %b.i14, ptr %c.i16, !unpredictable !3
  %13 = select i1 %_0.i15.i24, ptr %d.i18, ptr %12, !unpredictable !3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !204)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !207)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !209)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !212)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !214)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !217)
  %_3.i.i.i16.i25 = load i32, ptr %13, align 4, !alias.scope !219, !noalias !220, !noundef !3
  %_4.i.i.i17.i26 = load i32, ptr %11, align 4, !alias.scope !220, !noalias !219, !noundef !3
  %_0.i18.i27 = icmp slt i32 %_3.i.i.i16.i25, %_4.i.i.i17.i26
  store i32 %9, ptr %_10, align 4
  %dst5.i28 = getelementptr i8, ptr %scratch_base, i64 20
  %.val.i29 = load i32, ptr %13, align 4
  %.val19.i30 = load i32, ptr %11, align 4
  %14 = select i1 %_0.i18.i27, i32 %.val.i29, i32 %.val19.i30
  store i32 %14, ptr %dst5.i28, align 4
  %dst6.i31 = getelementptr i8, ptr %scratch_base, i64 24
  %.val20.i32 = load i32, ptr %11, align 4
  %.val21.i33 = load i32, ptr %13, align 4
  %15 = select i1 %_0.i18.i27, i32 %.val20.i32, i32 %.val21.i33
  store i32 %15, ptr %dst6.i31, align 4
  %16 = getelementptr i8, ptr %scratch_base, i64 28
  %b.val.i34 = load i32, ptr %b.i14, align 4
  %d.val.i35 = load i32, ptr %d.i18, align 4
  %17 = select i1 %_0.i15.i24, i32 %b.val.i34, i32 %d.val.i35
  store i32 %17, ptr %16, align 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !221)
  %18 = getelementptr inbounds nuw i8, ptr %dst, i64 28
  %_4.i.i.i.i37 = load i32, ptr %scratch_base, align 4, !alias.scope !224, !noalias !231, !noundef !3
  %_0.i.i38 = icmp slt i32 %9, %_4.i.i.i.i37
  %is_l.i18.i = xor i1 %_0.i.i38, true
  %19 = tail call i32 @llvm.smin.i32(i32 %9, i32 %_4.i.i.i.i37)
  store i32 %19, ptr %dst, align 4, !noalias !237
  %count.i.i = zext i1 %_0.i.i38 to i64
  %_12.i.i = getelementptr inbounds nuw i32, ptr %_10, i64 %count.i.i
  %count2.i.i = zext i1 %is_l.i18.i to i64
  %_14.i.i = getelementptr inbounds nuw i32, ptr %scratch_base, i64 %count2.i.i
  %_16.i.i = getelementptr inbounds nuw i8, ptr %dst, i64 4
  %_4.i.i.i20.i = load i32, ptr %7, align 4, !alias.scope !239, !noalias !246, !noundef !3
  %_0.i21.i = icmp slt i32 %17, %_4.i.i.i20.i
  %is_l.i.i = xor i1 %_0.i21.i, true
  %20 = tail call i32 @llvm.smax.i32(i32 %17, i32 %_4.i.i.i20.i)
  store i32 %20, ptr %18, align 4, !noalias !252
  %count.neg.i.i = sext i1 %is_l.i.i to i64
  %21 = getelementptr i32, ptr %16, i64 %count.neg.i.i
  %count3.neg.i.i = sext i1 %_0.i21.i to i64
  %22 = getelementptr i32, ptr %7, i64 %count3.neg.i.i
  %23 = getelementptr inbounds nuw i8, ptr %dst, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !254)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !256)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !258), !noalias !260
  tail call void @llvm.experimental.noalias.scope.decl(metadata !261), !noalias !260
  tail call void @llvm.experimental.noalias.scope.decl(metadata !263), !noalias !260
  tail call void @llvm.experimental.noalias.scope.decl(metadata !265), !noalias !260
  %_3.i.i.i.i36.1 = load i32, ptr %_12.i.i, align 4, !alias.scope !267, !noalias !268, !noundef !3
  %_4.i.i.i.i37.1 = load i32, ptr %_14.i.i, align 4, !alias.scope !269, !noalias !270, !noundef !3
  %_0.i.i38.1 = icmp slt i32 %_3.i.i.i.i36.1, %_4.i.i.i.i37.1
  %is_l.i18.i.1 = xor i1 %_0.i.i38.1, true
  %24 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i36.1, i32 %_4.i.i.i.i37.1)
  store i32 %24, ptr %_16.i.i, align 4, !noalias !237
  %count.i.i.1 = zext i1 %_0.i.i38.1 to i64
  %_12.i.i.1 = getelementptr inbounds nuw i32, ptr %_12.i.i, i64 %count.i.i.1
  %count2.i.i.1 = zext i1 %is_l.i18.i.1 to i64
  %_14.i.i.1 = getelementptr inbounds nuw i32, ptr %_14.i.i, i64 %count2.i.i.1
  %_16.i.i.1 = getelementptr inbounds nuw i8, ptr %dst, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !271)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !273)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !275), !noalias !277
  tail call void @llvm.experimental.noalias.scope.decl(metadata !278), !noalias !277
  tail call void @llvm.experimental.noalias.scope.decl(metadata !280), !noalias !277
  tail call void @llvm.experimental.noalias.scope.decl(metadata !282), !noalias !277
  %_3.i.i.i19.i.1 = load i32, ptr %21, align 4, !alias.scope !284, !noalias !285, !noundef !3
  %_4.i.i.i20.i.1 = load i32, ptr %22, align 4, !alias.scope !286, !noalias !287, !noundef !3
  %_0.i21.i.1 = icmp slt i32 %_3.i.i.i19.i.1, %_4.i.i.i20.i.1
  %is_l.i.i.1 = xor i1 %_0.i21.i.1, true
  %25 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i19.i.1, i32 %_4.i.i.i20.i.1)
  store i32 %25, ptr %23, align 4, !noalias !252
  %count.neg.i.i.1 = sext i1 %is_l.i.i.1 to i64
  %26 = getelementptr i32, ptr %21, i64 %count.neg.i.i.1
  %count3.neg.i.i.1 = sext i1 %_0.i21.i.1 to i64
  %27 = getelementptr i32, ptr %22, i64 %count3.neg.i.i.1
  %28 = getelementptr inbounds nuw i8, ptr %dst, i64 20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !288)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !290)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !292), !noalias !260
  tail call void @llvm.experimental.noalias.scope.decl(metadata !294), !noalias !260
  tail call void @llvm.experimental.noalias.scope.decl(metadata !296), !noalias !260
  tail call void @llvm.experimental.noalias.scope.decl(metadata !298), !noalias !260
  %_3.i.i.i.i36.2 = load i32, ptr %_12.i.i.1, align 4, !alias.scope !300, !noalias !301, !noundef !3
  %_4.i.i.i.i37.2 = load i32, ptr %_14.i.i.1, align 4, !alias.scope !302, !noalias !303, !noundef !3
  %_0.i.i38.2 = icmp slt i32 %_3.i.i.i.i36.2, %_4.i.i.i.i37.2
  %is_l.i18.i.2 = xor i1 %_0.i.i38.2, true
  %29 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i36.2, i32 %_4.i.i.i.i37.2)
  store i32 %29, ptr %_16.i.i.1, align 4, !noalias !237
  %count.i.i.2 = zext i1 %_0.i.i38.2 to i64
  %_12.i.i.2 = getelementptr inbounds nuw i32, ptr %_12.i.i.1, i64 %count.i.i.2
  %count2.i.i.2 = zext i1 %is_l.i18.i.2 to i64
  %_14.i.i.2 = getelementptr inbounds nuw i32, ptr %_14.i.i.1, i64 %count2.i.i.2
  %_16.i.i.2 = getelementptr inbounds nuw i8, ptr %dst, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !304)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !306)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !308), !noalias !277
  tail call void @llvm.experimental.noalias.scope.decl(metadata !310), !noalias !277
  tail call void @llvm.experimental.noalias.scope.decl(metadata !312), !noalias !277
  tail call void @llvm.experimental.noalias.scope.decl(metadata !314), !noalias !277
  %_3.i.i.i19.i.2 = load i32, ptr %26, align 4, !alias.scope !316, !noalias !317, !noundef !3
  %_4.i.i.i20.i.2 = load i32, ptr %27, align 4, !alias.scope !318, !noalias !319, !noundef !3
  %_0.i21.i.2 = icmp slt i32 %_3.i.i.i19.i.2, %_4.i.i.i20.i.2
  %is_l.i.i.2 = xor i1 %_0.i21.i.2, true
  %30 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i19.i.2, i32 %_4.i.i.i20.i.2)
  store i32 %30, ptr %28, align 4, !noalias !252
  %count.neg.i.i.2 = sext i1 %is_l.i.i.2 to i64
  %31 = getelementptr i32, ptr %26, i64 %count.neg.i.i.2
  %count3.neg.i.i.2 = sext i1 %_0.i21.i.2 to i64
  %32 = getelementptr i32, ptr %27, i64 %count3.neg.i.i.2
  %33 = getelementptr inbounds nuw i8, ptr %dst, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !320)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !322)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !324), !noalias !260
  tail call void @llvm.experimental.noalias.scope.decl(metadata !326), !noalias !260
  tail call void @llvm.experimental.noalias.scope.decl(metadata !328), !noalias !260
  tail call void @llvm.experimental.noalias.scope.decl(metadata !330), !noalias !260
  %_3.i.i.i.i36.3 = load i32, ptr %_12.i.i.2, align 4, !alias.scope !332, !noalias !333, !noundef !3
  %_4.i.i.i.i37.3 = load i32, ptr %_14.i.i.2, align 4, !alias.scope !334, !noalias !335, !noundef !3
  %_0.i.i38.3 = icmp slt i32 %_3.i.i.i.i36.3, %_4.i.i.i.i37.3
  %is_l.i18.i.3 = xor i1 %_0.i.i38.3, true
  %34 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i36.3, i32 %_4.i.i.i.i37.3)
  store i32 %34, ptr %_16.i.i.2, align 4, !noalias !237
  %count.i.i.3 = zext i1 %_0.i.i38.3 to i64
  %_12.i.i.3 = getelementptr inbounds nuw i32, ptr %_12.i.i.2, i64 %count.i.i.3
  %count2.i.i.3 = zext i1 %is_l.i18.i.3 to i64
  %_14.i.i.3 = getelementptr inbounds nuw i32, ptr %_14.i.i.2, i64 %count2.i.i.3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !336)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !338)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !340), !noalias !277
  tail call void @llvm.experimental.noalias.scope.decl(metadata !342), !noalias !277
  tail call void @llvm.experimental.noalias.scope.decl(metadata !344), !noalias !277
  tail call void @llvm.experimental.noalias.scope.decl(metadata !346), !noalias !277
  %_3.i.i.i19.i.3 = load i32, ptr %31, align 4, !alias.scope !348, !noalias !349, !noundef !3
  %_4.i.i.i20.i.3 = load i32, ptr %32, align 4, !alias.scope !350, !noalias !351, !noundef !3
  %_0.i21.i.3 = icmp slt i32 %_3.i.i.i19.i.3, %_4.i.i.i20.i.3
  %is_l.i.i.3 = xor i1 %_0.i21.i.3, true
  %35 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i19.i.3, i32 %_4.i.i.i20.i.3)
  store i32 %35, ptr %33, align 4, !noalias !252
  %count.neg.i.i.3 = sext i1 %is_l.i.i.3 to i64
  %36 = getelementptr i32, ptr %31, i64 %count.neg.i.i.3
  %count3.neg.i.i.3 = sext i1 %_0.i21.i.3 to i64
  %37 = getelementptr i32, ptr %32, i64 %count3.neg.i.i.3
  %38 = getelementptr i8, ptr %37, i64 4
  %39 = getelementptr i8, ptr %36, i64 4
  %_31.i = icmp ne ptr %_14.i.i.3, %38
  %_32.i = icmp ne ptr %_12.i.i.3, %39
  %or.cond.i = select i1 %_31.i, i1 true, i1 %_32.i
  br i1 %or.cond.i, label %bb13.i, label %_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h467471a0d9a845c1E.exit, !prof !352

bb13.i:                                           ; preds = %start
; call core::slice::sort::shared::smallsort::panic_on_ord_violation
  tail call void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #18, !noalias !221
  unreachable

_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h467471a0d9a845c1E.exit: ; preds = %start
  ret void
}

; core::slice::sort::stable::driftsort_main
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable14driftsort_main17hbdd5e903be875fcdE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %stack_buf = alloca [4096 x i8], align 4
  %_105 = lshr i64 %v.1, 1
  %v1 = sub nsw i64 %v.1, %_105
  %_0.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %v.1, i64 2000000)
  %_0.sroa.0.0.i6 = tail call noundef i64 @llvm.umax.i64(i64 %_0.sroa.0.0.i, i64 %v1)
  %_0.sroa.0.0.i7 = tail call noundef i64 @llvm.umax.i64(i64 %_0.sroa.0.0.i6, i64 48)
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %stack_buf)
  %_15 = icmp ugt i64 %_0.sroa.0.0.i6, 1024
  br i1 %_15, label %bb4, label %bb8

bb4:                                              ; preds = %start
  %_21.0.i.i.i.i = shl i64 %_0.sroa.0.0.i7, 2
  %_21.1.i.i.i.i = icmp ugt i64 %v1, 4611686018427387903
  %_26.i.i.i.i = icmp ugt i64 %_21.0.i.i.i.i, 9223372036854775804
  %or.cond.i.i.i.i = or i1 %_21.1.i.i.i.i, %_26.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %bb3.i.i, label %bb5.i.i.i, !prof !353

bb5.i.i.i:                                        ; preds = %bb4
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !354
; call __rustc::__rust_alloc
  %0 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef range(i64 1, 0) %_21.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !354
  %1 = icmp eq ptr %0, null
  br i1 %1, label %bb3.i.i, label %bb8

bb3.i.i:                                          ; preds = %bb5.i.i.i, %bb4
  %_4.sroa.4.0.ph.i.i = phi i64 [ 4, %bb5.i.i.i ], [ 0, %bb4 ]
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_4.sroa.4.0.ph.i.i, i64 %_21.0.i.i.i.i) #20
  unreachable

cleanup:                                          ; preds = %bb8
  %2 = landingpad { ptr, i32 }
          cleanup
  br i1 %_15, label %bb2.i.i.i3.i10, label %bb11

bb8:                                              ; preds = %bb5.i.i.i, %start
  %heap_buf.sroa.6.1 = phi ptr [ undef, %start ], [ %0, %bb5.i.i.i ]
  %stack_scratch.sroa.4.0 = phi i64 [ 1024, %start ], [ %_0.sroa.0.0.i7, %bb5.i.i.i ]
  %stack_buf.pn = phi ptr [ %stack_buf, %start ], [ %0, %bb5.i.i.i ]
  %eager_sort = icmp samesign ult i64 %v.1, 65
; invoke core::slice::sort::stable::drift::sort
  invoke fastcc void @_ZN4core5slice4sort6stable5drift4sort17h47316847e463e330E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 4 %stack_buf.pn, i64 noundef %stack_scratch.sroa.4.0, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less)
          to label %bb9 unwind label %cleanup

bb9:                                              ; preds = %bb8
  br i1 %_15, label %bb2.i.i.i3.i, label %bb10

bb10:                                             ; preds = %bb2.i.i.i3.i, %bb9
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %stack_buf)
  ret void

bb2.i.i.i3.i:                                     ; preds = %bb9
  %3 = shl nuw i64 %_0.sroa.0.0.i7, 2
  %4 = icmp ne ptr %heap_buf.sroa.6.1, null
  call void @llvm.assume(i1 %4)
; call __rustc::__rust_dealloc
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %heap_buf.sroa.6.1, i64 noundef %3, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !359
  br label %bb10

bb11:                                             ; preds = %bb2.i.i.i3.i10, %cleanup
  resume { ptr, i32 } %2

bb2.i.i.i3.i10:                                   ; preds = %cleanup
  %5 = shl nuw i64 %_0.sroa.0.0.i7, 2
  %6 = icmp ne ptr %heap_buf.sroa.6.1, null
  call void @llvm.assume(i1 %6)
; call __rustc::__rust_dealloc
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %heap_buf.sroa.6.1, i64 noundef %5, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !368
  br label %bb11
}

; core::slice::sort::stable::drift::sort
; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17h47316847e463e330E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i1 noundef zeroext %eager_sort, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %_13.not.i97 = icmp ugt i64 %min_good_run_len.sroa.0.0, 2
  %_13.not.i103 = icmp ugt i64 %min_good_run_len.sroa.0.0, 2
  br label %bb6

bb6:                                              ; preds = %bb19, %bb5
  %prev_run.sroa.0.0 = phi i64 [ 1, %bb5 ], [ %next_run.sroa.0.0, %bb19 ]
  %scan_idx.sroa.0.0 = phi i64 [ 0, %bb5 ], [ %36, %bb19 ]
  %stack_len.sroa.0.0 = phi i64 [ 0, %bb5 ], [ %35, %bb19 ]
  %_22 = icmp ult i64 %scan_idx.sroa.0.0, %v.1
  br i1 %_22, label %bb30, label %bb10

bb10:                                             ; preds = %bb6, %_ZN4core5slice4sort6stable5drift10create_run17h4881f7c206ded8f9E.exit
  %desired_depth.sroa.0.0 = phi i8 [ %18, %_ZN4core5slice4sort6stable5drift10create_run17h4881f7c206ded8f9E.exit ], [ 0, %bb6 ]
  %next_run.sroa.0.0 = phi i64 [ %_0.sroa.0.0.i40, %_ZN4core5slice4sort6stable5drift10create_run17h4881f7c206ded8f9E.exit ], [ 1, %bb6 ]
  %_3782 = icmp ugt i64 %stack_len.sroa.0.0, 1
  br i1 %_3782, label %bb12.lr.ph, label %bb17

bb12.lr.ph:                                       ; preds = %bb10
  %v_end.i = getelementptr inbounds nuw i32, ptr %v.0, i64 %scan_idx.sroa.0.0
  br label %bb12

bb30:                                             ; preds = %bb6
  %new_len = sub nuw nsw i64 %v.1, %scan_idx.sroa.0.0
  %_82 = getelementptr inbounds nuw i32, ptr %v.0, i64 %scan_idx.sroa.0.0
  %_7.not.i = icmp ult i64 %new_len, %min_good_run_len.sroa.0.0
  br i1 %_7.not.i, label %bb7.i41, label %bb1.i

bb7.i41:                                          ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h20a37621609e2076E.exit.i.thread100, %_ZN4core5slice4sort6shared17find_existing_run17h20a37621609e2076E.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17h20a37621609e2076E.exit.i, %bb30
  br i1 %eager_sort, label %bb16.i43, label %bb11.i42

bb1.i:                                            ; preds = %bb30
  %_4.i.i = icmp samesign ult i64 %new_len, 2
  br i1 %_4.i.i, label %bb5.i38, label %bb2.i.i

bb2.i.i:                                          ; preds = %bb1.i
  %_28.i.i = getelementptr inbounds nuw i8, ptr %_82, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !377)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !380)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !382), !noalias !385
  tail call void @llvm.experimental.noalias.scope.decl(metadata !388), !noalias !385
  tail call void @llvm.experimental.noalias.scope.decl(metadata !390), !noalias !385
  tail call void @llvm.experimental.noalias.scope.decl(metadata !393), !noalias !385
  %_3.i.i.i61 = load i32, ptr %_28.i.i, align 4, !alias.scope !395, !noalias !396, !noundef !3
  %_4.i.i.i62 = load i32, ptr %_82, align 4, !alias.scope !397, !noalias !398, !noundef !3
  %_0.i63 = icmp slt i32 %_3.i.i.i61, %_4.i.i.i62
  %_10.i.i78.not = icmp eq i64 %new_len, 2
  br i1 %_0.i63, label %bb4.i.i.preheader, label %bb11.i.i.preheader

bb11.i.i.preheader:                               ; preds = %bb2.i.i
  br i1 %_10.i.i78.not, label %_ZN4core5slice4sort6shared17find_existing_run17h20a37621609e2076E.exit.i.thread, label %bb12.i.i

bb4.i.i.preheader:                                ; preds = %bb2.i.i
  br i1 %_10.i.i78.not, label %_ZN4core5slice4sort6shared17find_existing_run17h20a37621609e2076E.exit.i.thread100, label %bb5.i.i

bb12.i.i:                                         ; preds = %bb11.i.i.preheader, %bb15.i.i
  %_4.i.i.i59 = phi i32 [ %_3.i.i.i58, %bb15.i.i ], [ %_3.i.i.i61, %bb11.i.i.preheader ]
  %run_len.sroa.0.0.i.i76 = phi i64 [ %3, %bb15.i.i ], [ 2, %bb11.i.i.preheader ]
  %2 = getelementptr inbounds nuw i32, ptr %_82, i64 %run_len.sroa.0.0.i.i76
  %_3.i.i.i58 = load i32, ptr %2, align 4, !alias.scope !399, !noalias !406, !noundef !3
  %_0.i60 = icmp slt i32 %_3.i.i.i58, %_4.i.i.i59
  br i1 %_0.i60, label %_ZN4core5slice4sort6shared17find_existing_run17h20a37621609e2076E.exit.i, label %bb15.i.i

bb15.i.i:                                         ; preds = %bb12.i.i
  %3 = add nuw i64 %run_len.sroa.0.0.i.i76, 1
  %exitcond.not = icmp eq i64 %3, %new_len
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h20a37621609e2076E.exit.i, label %bb12.i.i

bb5.i.i:                                          ; preds = %bb4.i.i.preheader, %bb7.i.i
  %_4.i.i.i = phi i32 [ %_3.i.i.i, %bb7.i.i ], [ %_3.i.i.i61, %bb4.i.i.preheader ]
  %run_len.sroa.0.1.i.i79 = phi i64 [ %5, %bb7.i.i ], [ 2, %bb4.i.i.preheader ]
  %4 = getelementptr inbounds nuw i32, ptr %_82, i64 %run_len.sroa.0.1.i.i79
  %_3.i.i.i = load i32, ptr %4, align 4, !alias.scope !410, !noalias !417, !noundef !3
  %_0.i = icmp slt i32 %_3.i.i.i, %_4.i.i.i
  br i1 %_0.i, label %bb7.i.i, label %_ZN4core5slice4sort6shared17find_existing_run17h20a37621609e2076E.exit.i

bb7.i.i:                                          ; preds = %bb5.i.i
  %5 = add nuw i64 %run_len.sroa.0.1.i.i79, 1
  %exitcond92.not = icmp eq i64 %5, %new_len
  br i1 %exitcond92.not, label %_ZN4core5slice4sort6shared17find_existing_run17h20a37621609e2076E.exit.i, label %bb5.i.i

_ZN4core5slice4sort6shared17find_existing_run17h20a37621609e2076E.exit.i: ; preds = %bb15.i.i, %bb12.i.i, %bb7.i.i, %bb5.i.i
  %_0.sroa.0.0.i.i = phi i64 [ %new_len, %bb7.i.i ], [ %run_len.sroa.0.1.i.i79, %bb5.i.i ], [ %new_len, %bb15.i.i ], [ %run_len.sroa.0.0.i.i76, %bb12.i.i ]
  %_12.i = icmp samesign ule i64 %_0.sroa.0.0.i.i, %new_len
  tail call void @llvm.assume(i1 %_12.i)
  %_13.not.i = icmp ult i64 %_0.sroa.0.0.i.i, %min_good_run_len.sroa.0.0
  br i1 %_13.not.i, label %bb7.i41, label %bb3.i37

_ZN4core5slice4sort6shared17find_existing_run17h20a37621609e2076E.exit.i.thread100: ; preds = %bb4.i.i.preheader
  br i1 %_13.not.i103, label %bb7.i41, label %bb5.preheader.i.i

_ZN4core5slice4sort6shared17find_existing_run17h20a37621609e2076E.exit.i.thread: ; preds = %bb11.i.i.preheader
  br i1 %_13.not.i97, label %bb7.i41, label %bb5.i38

bb3.i37:                                          ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h20a37621609e2076E.exit.i
  br i1 %_0.i63, label %bb14.i, label %bb5.i38

bb11.i42:                                         ; preds = %bb7.i41
  %_0.sroa.0.0.i57 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %new_len, i64 %min_good_run_len.sroa.0.0)
  %_36.i = shl nuw nsw i64 %_0.sroa.0.0.i57, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h4881f7c206ded8f9E.exit

bb16.i43:                                         ; preds = %bb7.i41
  %_0.sroa.0.0.i56 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %new_len, i64 32)
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h9e0d5d0b38d4fe50E(ptr noalias noundef nonnull align 4 %_82, i64 noundef %_0.sroa.0.0.i56, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef 0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #21
  %_35.i = shl nuw nsw i64 %_0.sroa.0.0.i56, 1
  %_34.i = or disjoint i64 %_35.i, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h4881f7c206ded8f9E.exit

bb5.i38:                                          ; preds = %bb6.i.i, %middle.block, %_ZN4core5slice4sort6shared17find_existing_run17h20a37621609e2076E.exit.i.thread, %bb1.i, %bb14.i, %bb3.i37
  %_0.sroa.0.0.i.i6972 = phi i64 [ %_0.sroa.0.0.i.i, %bb3.i37 ], [ 1, %bb14.i ], [ %new_len, %bb1.i ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h20a37621609e2076E.exit.i.thread ], [ %_0.sroa.0.0.i.i98106110, %middle.block ], [ %_0.sroa.0.0.i.i98106110, %bb6.i.i ]
  %_27.i = shl nuw nsw i64 %_0.sroa.0.0.i.i6972, 1
  %_26.i = or disjoint i64 %_27.i, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h4881f7c206ded8f9E.exit

bb14.i:                                           ; preds = %bb3.i37
  %half_len2.i = lshr i64 %_0.sroa.0.0.i.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !421), !noalias !424
  tail call void @llvm.experimental.noalias.scope.decl(metadata !426), !noalias !424
  %_915.not.i.i = icmp samesign ult i64 %_0.sroa.0.0.i.i, 2
  br i1 %_915.not.i.i, label %bb5.i38, label %bb5.preheader.i.i

bb5.preheader.i.i:                                ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h20a37621609e2076E.exit.i.thread100, %bb14.i
  %half_len2.i111 = phi i64 [ %half_len2.i, %bb14.i ], [ 1, %_ZN4core5slice4sort6shared17find_existing_run17h20a37621609e2076E.exit.i.thread100 ]
  %_0.sroa.0.0.i.i98106110 = phi i64 [ %_0.sroa.0.0.i.i, %bb14.i ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h20a37621609e2076E.exit.i.thread100 ]
  %end.i = getelementptr inbounds nuw i32, ptr %_82, i64 %_0.sroa.0.0.i.i98106110
  %min.iters.check = icmp samesign ult i64 %half_len2.i111, 8
  br i1 %min.iters.check, label %bb6.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb5.preheader.i.i
  %n.vec = and i64 %half_len2.i111, 9223372036854775800
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %6 = xor i64 %index, -1
  %7 = getelementptr inbounds nuw i32, ptr %_82, i64 %index
  %8 = getelementptr i32, ptr %end.i, i64 %6
  %9 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %wide.load = load <4 x i32>, ptr %7, align 4, !alias.scope !428, !noalias !431
  %wide.load118 = load <4 x i32>, ptr %9, align 4, !alias.scope !428, !noalias !431
  %10 = getelementptr i8, ptr %8, i64 -12
  %11 = getelementptr i8, ptr %8, i64 -28
  %wide.load119 = load <4 x i32>, ptr %10, align 4, !alias.scope !432, !noalias !433
  %reverse = shufflevector <4 x i32> %wide.load119, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %wide.load120 = load <4 x i32>, ptr %11, align 4, !alias.scope !432, !noalias !433
  %reverse121 = shufflevector <4 x i32> %wide.load120, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse, ptr %7, align 4, !alias.scope !428, !noalias !431
  store <4 x i32> %reverse121, ptr %9, align 4, !alias.scope !428, !noalias !431
  %reverse122 = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse122, ptr %10, align 4, !alias.scope !432, !noalias !433
  %reverse123 = shufflevector <4 x i32> %wide.load118, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse123, ptr %11, align 4, !alias.scope !432, !noalias !433
  %index.next = add nuw i64 %index, 8
  %12 = icmp eq i64 %index.next, %n.vec
  br i1 %12, label %middle.block, label %vector.body, !llvm.loop !434

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %half_len2.i111, %n.vec
  br i1 %cmp.n, label %bb5.i38, label %bb6.i.i.preheader

bb6.i.i.preheader:                                ; preds = %bb5.preheader.i.i, %middle.block
  %i.sroa.0.016.i.i.ph = phi i64 [ 0, %bb5.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %bb6.i.i

bb6.i.i:                                          ; preds = %bb6.i.i.preheader, %bb6.i.i
  %i.sroa.0.016.i.i = phi i64 [ %16, %bb6.i.i ], [ %i.sroa.0.016.i.i.ph, %bb6.i.i.preheader ]
  %13 = xor i64 %i.sroa.0.016.i.i, -1
  %x.i.i = getelementptr inbounds nuw i32, ptr %_82, i64 %i.sroa.0.016.i.i
  %y.i.i = getelementptr i32, ptr %end.i, i64 %13
  %14 = load i32, ptr %x.i.i, align 4, !alias.scope !428, !noalias !431, !noundef !3
  %15 = load i32, ptr %y.i.i, align 4, !alias.scope !432, !noalias !433
  store i32 %15, ptr %x.i.i, align 4, !alias.scope !428, !noalias !431
  store i32 %14, ptr %y.i.i, align 4, !alias.scope !432, !noalias !433
  %16 = add nuw nsw i64 %i.sroa.0.016.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %16, %half_len2.i111
  br i1 %exitcond.not.i.i, label %bb5.i38, label %bb6.i.i, !llvm.loop !437

_ZN4core5slice4sort6stable5drift10create_run17h4881f7c206ded8f9E.exit: ; preds = %bb11.i42, %bb16.i43, %bb5.i38
  %_0.sroa.0.0.i40 = phi i64 [ %_26.i, %bb5.i38 ], [ %_34.i, %bb16.i43 ], [ %_36.i, %bb11.i42 ]
  %_31 = lshr i64 %prev_run.sroa.0.0, 1
  %_35 = lshr i64 %_0.sroa.0.0.i40, 1
  %factor = shl i64 %scan_idx.sroa.0.0, 1
  %x = sub i64 %factor, %_31
  %y = add i64 %_35, %factor
  %_90 = mul i64 %x, %scale_factor.sroa.0.0
  %_91 = mul i64 %y, %scale_factor.sroa.0.0
  %self4 = xor i64 %_91, %_90
  %17 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %self4, i1 false)
  %18 = trunc nuw nsw i64 %17 to i8
  br label %bb10

bb12:                                             ; preds = %bb12.lr.ph, %_ZN4core5slice4sort6stable5drift13logical_merge17h15db09b64e43f763E.exit
  %stack_len.sroa.0.184 = phi i64 [ %stack_len.sroa.0.0, %bb12.lr.ph ], [ %count, %_ZN4core5slice4sort6stable5drift13logical_merge17h15db09b64e43f763E.exit ]
  %prev_run.sroa.0.183 = phi i64 [ %prev_run.sroa.0.0, %bb12.lr.ph ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h15db09b64e43f763E.exit ]
  %count = add i64 %stack_len.sroa.0.184, -1
  %_41 = getelementptr inbounds nuw i8, ptr %desired_depth_storage, i64 %count
  %_40 = load i8, ptr %_41, align 1, !noundef !3
  %_39.not = icmp ult i8 %_40, %desired_depth.sroa.0.0
  br i1 %_39.not, label %bb17, label %bb13

bb17:                                             ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17h15db09b64e43f763E.exit, %bb12, %bb10
  %prev_run.sroa.0.1.lcssa = phi i64 [ %prev_run.sroa.0.0, %bb10 ], [ %prev_run.sroa.0.183, %bb12 ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h15db09b64e43f763E.exit ]
  %stack_len.sroa.0.1.lcssa = phi i64 [ %stack_len.sroa.0.0, %bb10 ], [ %stack_len.sroa.0.184, %bb12 ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17h15db09b64e43f763E.exit ]
  %_59 = getelementptr inbounds nuw i64, ptr %run_storage, i64 %stack_len.sroa.0.1.lcssa
  store i64 %prev_run.sroa.0.1.lcssa, ptr %_59, align 8
  %_61 = getelementptr inbounds nuw i8, ptr %desired_depth_storage, i64 %stack_len.sroa.0.1.lcssa
  store i8 %desired_depth.sroa.0.0, ptr %_61, align 1
  br i1 %_22, label %bb19, label %bb18

bb13:                                             ; preds = %bb12
  %_46 = getelementptr inbounds nuw i64, ptr %run_storage, i64 %count
  %left10 = load i64, ptr %_46, align 8, !noundef !3
  %_50 = lshr i64 %left10, 1
  %_51 = lshr i64 %prev_run.sroa.0.183, 1
  %merged_len = add nuw i64 %_50, %_51
  %merge_start_idx = sub i64 %scan_idx.sroa.0.0, %merged_len
  %_98 = getelementptr inbounds nuw i32, ptr %v.0, i64 %merge_start_idx
  %can_fit_in_scratch.i = icmp samesign ugt i64 %merged_len, %scratch.1
  %_22.i = and i64 %prev_run.sroa.0.183, 1
  %_10.not.i = icmp eq i64 %_22.i, 0
  %19 = or i64 %left10, %prev_run.sroa.0.183
  %20 = and i64 %19, 1
  %21 = icmp ne i64 %20, 0
  %or.cond2.i = or i1 %can_fit_in_scratch.i, %21
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
  %22 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i, i1 true)
  %23 = trunc nuw nsw i64 %22 to i32
  %log.i = shl nuw nsw i32 %23, 1
  %limit.i = xor i32 %log.i, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h9e0d5d0b38d4fe50E(ptr noalias noundef nonnull align 4 %_98, i64 noundef range(i64 0, 2305843009213693952) %_50, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #21
  br label %bb5.i

bb7.i:                                            ; preds = %bb16.i, %bb5.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !438)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !441)
  %_6.i = icmp ult i64 %left10, 2
  %_7.i = icmp ult i64 %prev_run.sroa.0.183, 2
  %or.cond.i = select i1 %_6.i, i1 true, i1 %_7.i
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17h58c75b7ed0d5d8edE.exit, label %bb2.i

bb2.i:                                            ; preds = %bb7.i
  %_0.sroa.0.0.i.i44 = tail call i64 @llvm.umin.i64(i64 %_51, i64 range(i64 0, -9223372036854775808) %_50)
  %_8.i = icmp samesign ult i64 %scratch.1, %_0.sroa.0.0.i.i44
  br i1 %_8.i, label %_ZN4core5slice4sort6stable5merge5merge17h58c75b7ed0d5d8edE.exit, label %bb5.i45

bb5.i45:                                          ; preds = %bb2.i
  %v_mid.i = getelementptr inbounds nuw i32, ptr %_98, i64 %_50
  %left_is_shorter.not.i = icmp samesign ugt i64 %_50, %_51
  %spec.select.i = select i1 %left_is_shorter.not.i, ptr %v_mid.i, ptr %_98
  %24 = shl nuw nsw i64 %_0.sroa.0.0.i.i44, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %scratch.0, ptr nonnull align 4 %spec.select.i, i64 %24, i1 false), !alias.scope !443
  %_22.i46 = getelementptr inbounds nuw i8, ptr %scratch.0, i64 %24
  br i1 %left_is_shorter.not.i, label %bb1.i.i, label %bb3.i.i

bb1.i.i:                                          ; preds = %bb5.i45, %bb1.i.i
  %_2110.i.i = phi ptr [ %_21.i.i49, %bb1.i.i ], [ %_22.i46, %bb5.i45 ]
  %_188.i.i = phi ptr [ %_18.i.i, %bb1.i.i ], [ %v_mid.i, %bb5.i45 ]
  %out.sroa.0.0.i.i = phi ptr [ %27, %bb1.i.i ], [ %v_end.i, %bb5.i45 ]
  %25 = getelementptr inbounds i8, ptr %_188.i.i, i64 -4
  %26 = getelementptr inbounds i8, ptr %_2110.i.i, i64 -4
  %27 = getelementptr inbounds i8, ptr %out.sroa.0.0.i.i, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !444)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !447)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !449)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !452)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !454)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !457)
  %_3.i.i.i.i.i = load i32, ptr %26, align 4, !alias.scope !459, !noalias !460, !noundef !3
  %_4.i.i.i.i.i = load i32, ptr %25, align 4, !alias.scope !463, !noalias !464, !noundef !3
  %_0.i.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %28 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i.i, i32 %_4.i.i.i.i.i)
  store i32 %28, ptr %27, align 4, !alias.scope !438, !noalias !465
  %_20.i.i = xor i1 %_0.i.i.i, true
  %count.i.i = zext i1 %_20.i.i to i64
  %_18.i.i = getelementptr inbounds nuw i32, ptr %25, i64 %count.i.i
  %count4.i.i = zext i1 %_0.i.i.i to i64
  %_21.i.i49 = getelementptr inbounds nuw i32, ptr %26, i64 %count4.i.i
  %_23.i.i = icmp eq ptr %_18.i.i, %_98
  %_26.i.i = icmp eq ptr %_21.i.i49, %scratch.0
  %or.cond.i.i = select i1 %_23.i.i, i1 true, i1 %_26.i.i
  br i1 %or.cond.i.i, label %bb16.i48, label %bb1.i.i

bb3.i.i:                                          ; preds = %bb5.i45, %bb3.i.i
  %_2511.i.i = phi ptr [ %_25.i.i, %bb3.i.i ], [ %_98, %bb5.i45 ]
  %right.sroa.0.010.i.i = phi ptr [ %_23.i17.i, %bb3.i.i ], [ %v_mid.i, %bb5.i45 ]
  %_2059.i.i = phi ptr [ %_20.i16.i, %bb3.i.i ], [ %scratch.0, %bb5.i45 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !466)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !469)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !471)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !474)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !476)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !479)
  %_3.i.i.i.i12.i = load i32, ptr %right.sroa.0.010.i.i, align 4, !alias.scope !481, !noalias !482, !noundef !3
  %_4.i.i.i.i13.i = load i32, ptr %_2059.i.i, align 4, !alias.scope !485, !noalias !486, !noundef !3
  %_0.i.i14.i = icmp slt i32 %_3.i.i.i.i12.i, %_4.i.i.i.i13.i
  %consume_left.i.i = xor i1 %_0.i.i14.i, true
  %29 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i12.i, i32 %_4.i.i.i.i13.i)
  store i32 %29, ptr %_2511.i.i, align 4, !alias.scope !438, !noalias !487
  %count.i15.i = zext i1 %consume_left.i.i to i64
  %_20.i16.i = getelementptr inbounds nuw i32, ptr %_2059.i.i, i64 %count.i15.i
  %count2.i.i = zext i1 %_0.i.i14.i to i64
  %_23.i17.i = getelementptr inbounds nuw i32, ptr %right.sroa.0.010.i.i, i64 %count2.i.i
  %_25.i.i = getelementptr inbounds nuw i8, ptr %_2511.i.i, i64 4
  %_7.i.i = icmp ne ptr %_20.i16.i, %_22.i46
  %_10.i.i47 = icmp ne ptr %_23.i17.i, %v_end.i
  %or.cond.i18.i = select i1 %_7.i.i, i1 %_10.i.i47, i1 false
  br i1 %or.cond.i18.i, label %bb3.i.i, label %bb16.i48

bb16.i48:                                         ; preds = %bb3.i.i, %bb1.i.i
  %merge_state.sroa.13.0.i = phi ptr [ %_18.i.i, %bb1.i.i ], [ %_25.i.i, %bb3.i.i ]
  %merge_state.sroa.7.0.i = phi ptr [ %_21.i.i49, %bb1.i.i ], [ %_22.i46, %bb3.i.i ]
  %merge_state.sroa.0.0.i = phi ptr [ %scratch.0, %bb1.i.i ], [ %_20.i16.i, %bb3.i.i ]
  %30 = ptrtoint ptr %merge_state.sroa.7.0.i to i64
  %31 = ptrtoint ptr %merge_state.sroa.0.0.i to i64
  %32 = sub nuw i64 %30, %31
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %merge_state.sroa.13.0.i, ptr align 4 %merge_state.sroa.0.0.i, i64 %32, i1 false), !alias.scope !443, !noalias !488
  br label %_ZN4core5slice4sort6stable5merge5merge17h58c75b7ed0d5d8edE.exit

_ZN4core5slice4sort6stable5merge5merge17h58c75b7ed0d5d8edE.exit: ; preds = %bb7.i, %bb2.i, %bb16.i48
  %_39.i = shl nuw nsw i64 %merged_len, 1
  %_38.i = or disjoint i64 %_39.i, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h15db09b64e43f763E.exit

bb16.i:                                           ; preds = %bb5.i
  %_37.i = getelementptr inbounds nuw i32, ptr %_98, i64 %_50
  %self.i50 = or i64 %_51, 1
  %33 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i50, i1 true)
  %34 = trunc nuw nsw i64 %33 to i32
  %log.i51 = shl nuw nsw i32 %34, 1
  %limit.i52 = xor i32 %log.i51, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h9e0d5d0b38d4fe50E(ptr noalias noundef nonnull align 4 %_37.i, i64 noundef range(i64 0, 2305843009213693952) %_51, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i52, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #21
  br label %bb7.i

_ZN4core5slice4sort6stable5drift13logical_merge17h15db09b64e43f763E.exit: ; preds = %bb9.i, %_ZN4core5slice4sort6stable5merge5merge17h58c75b7ed0d5d8edE.exit
  %_0.sroa.0.0.i = phi i64 [ %_38.i, %_ZN4core5slice4sort6stable5merge5merge17h58c75b7ed0d5d8edE.exit ], [ %_40.i, %bb9.i ]
  %_37 = icmp ugt i64 %count, 1
  br i1 %_37, label %bb12, label %bb17

bb19:                                             ; preds = %bb17
  %35 = add i64 %stack_len.sroa.0.1.lcssa, 1
  %_65 = lshr i64 %next_run.sroa.0.0, 1
  %36 = add nuw i64 %_65, %scan_idx.sroa.0.0
  br label %bb6

bb18:                                             ; preds = %bb17
  %_99 = and i64 %prev_run.sroa.0.1.lcssa, 1
  %_66.not = icmp eq i64 %_99, 0
  br i1 %_66.not, label %bb20, label %bb21

bb20:                                             ; preds = %bb18
  %self.i53 = or i64 %v.1, 1
  %37 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i53, i1 true)
  %38 = trunc nuw nsw i64 %37 to i32
  %log.i54 = shl nuw nsw i32 %38, 1
  %limit.i55 = xor i32 %log.i54, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h9e0d5d0b38d4fe50E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i55, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #21
  br label %bb21

bb21:                                             ; preds = %bb20, %bb18
  call void @llvm.lifetime.end.p0(i64 66, ptr nonnull %desired_depth_storage)
  call void @llvm.lifetime.end.p0(i64 528, ptr nonnull %run_storage)
  br label %bb22

bb22:                                             ; preds = %start, %bb21
  ret void
}

; core::slice::sort::stable::quicksort::quicksort
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable9quicksort9quicksort17h9e0d5d0b38d4fe50E(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %2, ptr noalias noundef readonly align 4 captures(address) dereferenceable_or_null(4) %3, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %pivot_copy = alloca [4 x i8], align 4
  %_8130136 = icmp samesign ult i64 %1, 33
  br i1 %_8130136, label %bb3, label %bb5.lr.ph

bb5.lr.ph:                                        ; preds = %start, %bb28
  %v.sroa.0.0.ph140 = phi ptr [ %_54, %bb28 ], [ %0, %start ]
  %v.sroa.16.0.ph139 = phi i64 [ %_63.i63, %bb28 ], [ %1, %start ]
  %limit.sroa.0.0.ph138 = phi i32 [ %48, %bb28 ], [ %2, %start ]
  %left_ancestor_pivot.sroa.0.0.ph137 = phi ptr [ null, %bb28 ], [ %3, %start ]
  %4 = ptrtoint ptr %v.sroa.0.0.ph140 to i64
  %.not = icmp eq ptr %left_ancestor_pivot.sroa.0.0.ph137, null
  br label %bb5

bb5:                                              ; preds = %bb5.lr.ph, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h447654892ce49de7E.exit"
  %v.sroa.16.0132 = phi i64 [ %v.sroa.16.0.ph139, %bb5.lr.ph ], [ %state.sroa.27.2.lcssa.i, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h447654892ce49de7E.exit" ]
  %limit.sroa.0.0131 = phi i32 [ %limit.sroa.0.0.ph138, %bb5.lr.ph ], [ %48, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h447654892ce49de7E.exit" ]
  %_11 = icmp eq i32 %limit.sroa.0.0131, 0
  br i1 %_11, label %bb6, label %bb7

bb3:                                              ; preds = %bb28, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h447654892ce49de7E.exit", %start
  %v.sroa.0.0.ph.lcssa129 = phi ptr [ %0, %start ], [ %v.sroa.0.0.ph140, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h447654892ce49de7E.exit" ], [ %_54, %bb28 ]
  %v.sroa.16.0.lcssa = phi i64 [ %1, %start ], [ %state.sroa.27.2.lcssa.i, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h447654892ce49de7E.exit" ], [ %_63.i63, %bb28 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !493)
  call void @llvm.experimental.noalias.scope.decl(metadata !496)
  %_5.i = icmp samesign ult i64 %v.sroa.16.0.lcssa, 2
  br i1 %_5.i, label %bb22, label %bb2.i

bb2.i:                                            ; preds = %bb3
  %_8.i = add nuw nsw i64 %v.sroa.16.0.lcssa, 16
  %_6.i = icmp samesign ult i64 %scratch.1, %_8.i
  br i1 %_6.i, label %bb3.i, label %bb4.i

bb4.i:                                            ; preds = %bb2.i
  %len_div_211.i = lshr i64 %v.sroa.16.0.lcssa, 1
  %_14.i = icmp samesign ugt i64 %v.sroa.16.0.lcssa, 15
  br i1 %_14.i, label %bb6.i, label %bb9.i

bb3.i:                                            ; preds = %bb2.i
  call void @llvm.trap()
  unreachable

bb9.i:                                            ; preds = %bb4.i
  %_22.i = icmp samesign ugt i64 %v.sroa.16.0.lcssa, 7
  br i1 %_22.i, label %bb10.i, label %bb46.i

bb6.i:                                            ; preds = %bb4.i
  %_16.i = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %v.sroa.16.0.lcssa
; call core::slice::sort::shared::smallsort::sort8_stable
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17ha82285e98882abc9E(ptr noundef nonnull align 4 %v.sroa.0.0.ph.lcssa129, ptr noundef nonnull align 4 %scratch.0, ptr noundef %_16.i)
  %_18.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %len_div_211.i
  %_19.i = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211.i
  %_20.i = getelementptr inbounds nuw i8, ptr %_16.i, i64 32
; call core::slice::sort::shared::smallsort::sort8_stable
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17ha82285e98882abc9E(ptr noundef %_18.i, ptr noundef %_19.i, ptr noundef %_20.i)
  br label %bb15.i

bb10.i:                                           ; preds = %bb9.i
  %_7.i.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph.lcssa129, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !498)
  call void @llvm.experimental.noalias.scope.decl(metadata !501)
  call void @llvm.experimental.noalias.scope.decl(metadata !503)
  call void @llvm.experimental.noalias.scope.decl(metadata !506)
  call void @llvm.experimental.noalias.scope.decl(metadata !508)
  call void @llvm.experimental.noalias.scope.decl(metadata !511)
  %_3.i.i.i.i.i = load i32, ptr %_7.i.i, align 4, !alias.scope !513, !noalias !514, !noundef !3
  %_4.i.i.i.i.i = load i32, ptr %v.sroa.0.0.ph.lcssa129, align 4, !alias.scope !516, !noalias !517, !noundef !3
  %_0.i.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %_12.i.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph.lcssa129, i64 12
  %_14.i.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph.lcssa129, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !518)
  call void @llvm.experimental.noalias.scope.decl(metadata !521)
  call void @llvm.experimental.noalias.scope.decl(metadata !523)
  call void @llvm.experimental.noalias.scope.decl(metadata !526)
  call void @llvm.experimental.noalias.scope.decl(metadata !528)
  call void @llvm.experimental.noalias.scope.decl(metadata !531)
  %_3.i.i.i7.i.i = load i32, ptr %_12.i.i, align 4, !alias.scope !533, !noalias !534, !noundef !3
  %_4.i.i.i8.i.i = load i32, ptr %_14.i.i, align 4, !alias.scope !535, !noalias !536, !noundef !3
  %_0.i9.i.i = icmp slt i32 %_3.i.i.i7.i.i, %_4.i.i.i8.i.i
  %count.i.i = zext i1 %_0.i.i.i to i64
  %a.i.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %count.i.i
  %_19.i.i = xor i1 %_0.i.i.i, true
  %count2.i.i = zext i1 %_19.i.i to i64
  %b.i.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %count2.i.i
  %count3.i.i = select i1 %_0.i9.i.i, i64 3, i64 2
  %c.i.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %count3.i.i
  %count4.i.i = select i1 %_0.i9.i.i, i64 2, i64 3
  %d.i.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %count4.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !537)
  call void @llvm.experimental.noalias.scope.decl(metadata !540)
  call void @llvm.experimental.noalias.scope.decl(metadata !542)
  call void @llvm.experimental.noalias.scope.decl(metadata !545)
  call void @llvm.experimental.noalias.scope.decl(metadata !547)
  call void @llvm.experimental.noalias.scope.decl(metadata !550)
  %_3.i.i.i10.i.i = load i32, ptr %c.i.i, align 4, !alias.scope !552, !noalias !553, !noundef !3
  %_4.i.i.i11.i.i = load i32, ptr %a.i.i, align 4, !alias.scope !554, !noalias !555, !noundef !3
  %_0.i12.i.i = icmp slt i32 %_3.i.i.i10.i.i, %_4.i.i.i11.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !556)
  call void @llvm.experimental.noalias.scope.decl(metadata !559)
  call void @llvm.experimental.noalias.scope.decl(metadata !561)
  call void @llvm.experimental.noalias.scope.decl(metadata !564)
  call void @llvm.experimental.noalias.scope.decl(metadata !566)
  call void @llvm.experimental.noalias.scope.decl(metadata !569)
  %_3.i.i.i13.i.i = load i32, ptr %d.i.i, align 4, !alias.scope !571, !noalias !572, !noundef !3
  %_4.i.i.i14.i.i = load i32, ptr %b.i.i, align 4, !alias.scope !573, !noalias !574, !noundef !3
  %_0.i15.i.i = icmp slt i32 %_3.i.i.i13.i.i, %_4.i.i.i14.i.i
  %5 = call i32 @llvm.smin.i32(i32 %_3.i.i.i10.i.i, i32 %_4.i.i.i11.i.i)
  %6 = select i1 %_0.i15.i.i, ptr %c.i.i, ptr %b.i.i, !unpredictable !3
  %7 = select i1 %_0.i12.i.i, ptr %a.i.i, ptr %6, !unpredictable !3
  %8 = select i1 %_0.i12.i.i, ptr %b.i.i, ptr %c.i.i, !unpredictable !3
  %9 = select i1 %_0.i15.i.i, ptr %d.i.i, ptr %8, !unpredictable !3
  call void @llvm.experimental.noalias.scope.decl(metadata !575)
  call void @llvm.experimental.noalias.scope.decl(metadata !578)
  call void @llvm.experimental.noalias.scope.decl(metadata !580)
  call void @llvm.experimental.noalias.scope.decl(metadata !583)
  call void @llvm.experimental.noalias.scope.decl(metadata !585)
  call void @llvm.experimental.noalias.scope.decl(metadata !588)
  %_3.i.i.i16.i.i = load i32, ptr %9, align 4, !alias.scope !590, !noalias !591, !noundef !3
  %_4.i.i.i17.i.i = load i32, ptr %7, align 4, !alias.scope !592, !noalias !593, !noundef !3
  store i32 %5, ptr %scratch.0, align 4, !alias.scope !496, !noalias !594
  %dst5.i.i = getelementptr inbounds nuw i8, ptr %scratch.0, i64 4
  %10 = call i32 @llvm.smin.i32(i32 %_3.i.i.i16.i.i, i32 %_4.i.i.i17.i.i)
  store i32 %10, ptr %dst5.i.i, align 4, !alias.scope !496, !noalias !594
  %dst6.i.i = getelementptr inbounds nuw i8, ptr %scratch.0, i64 8
  %11 = call i32 @llvm.smax.i32(i32 %_3.i.i.i16.i.i, i32 %_4.i.i.i17.i.i)
  store i32 %11, ptr %dst6.i.i, align 4, !alias.scope !496, !noalias !594
  %12 = getelementptr inbounds nuw i8, ptr %scratch.0, i64 12
  %13 = call i32 @llvm.smax.i32(i32 %_3.i.i.i13.i.i, i32 %_4.i.i.i14.i.i)
  store i32 %13, ptr %12, align 4, !alias.scope !496, !noalias !594
  %_27.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %len_div_211.i
  %_28.i = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211.i
  %_7.i13.i = getelementptr inbounds nuw i8, ptr %_27.i, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !595)
  call void @llvm.experimental.noalias.scope.decl(metadata !598)
  call void @llvm.experimental.noalias.scope.decl(metadata !600)
  call void @llvm.experimental.noalias.scope.decl(metadata !603)
  call void @llvm.experimental.noalias.scope.decl(metadata !605)
  call void @llvm.experimental.noalias.scope.decl(metadata !608)
  %_3.i.i.i.i14.i = load i32, ptr %_7.i13.i, align 4, !alias.scope !610, !noalias !611, !noundef !3
  %_4.i.i.i.i15.i = load i32, ptr %_27.i, align 4, !alias.scope !612, !noalias !613, !noundef !3
  %_0.i.i16.i = icmp slt i32 %_3.i.i.i.i14.i, %_4.i.i.i.i15.i
  %_12.i17.i = getelementptr inbounds nuw i8, ptr %_27.i, i64 12
  %_14.i18.i = getelementptr inbounds nuw i8, ptr %_27.i, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !614)
  call void @llvm.experimental.noalias.scope.decl(metadata !617)
  call void @llvm.experimental.noalias.scope.decl(metadata !619)
  call void @llvm.experimental.noalias.scope.decl(metadata !622)
  call void @llvm.experimental.noalias.scope.decl(metadata !624)
  call void @llvm.experimental.noalias.scope.decl(metadata !627)
  %_3.i.i.i7.i19.i = load i32, ptr %_12.i17.i, align 4, !alias.scope !629, !noalias !630, !noundef !3
  %_4.i.i.i8.i20.i = load i32, ptr %_14.i18.i, align 4, !alias.scope !631, !noalias !632, !noundef !3
  %_0.i9.i21.i = icmp slt i32 %_3.i.i.i7.i19.i, %_4.i.i.i8.i20.i
  %count.i22.i = zext i1 %_0.i.i16.i to i64
  %a.i23.i = getelementptr inbounds nuw i32, ptr %_27.i, i64 %count.i22.i
  %_19.i24.i = xor i1 %_0.i.i16.i, true
  %count2.i25.i = zext i1 %_19.i24.i to i64
  %b.i26.i = getelementptr inbounds nuw i32, ptr %_27.i, i64 %count2.i25.i
  %count3.i27.i = select i1 %_0.i9.i21.i, i64 3, i64 2
  %c.i28.i = getelementptr inbounds nuw i32, ptr %_27.i, i64 %count3.i27.i
  %count4.i29.i = select i1 %_0.i9.i21.i, i64 2, i64 3
  %d.i30.i = getelementptr inbounds nuw i32, ptr %_27.i, i64 %count4.i29.i
  call void @llvm.experimental.noalias.scope.decl(metadata !633)
  call void @llvm.experimental.noalias.scope.decl(metadata !636)
  call void @llvm.experimental.noalias.scope.decl(metadata !638)
  call void @llvm.experimental.noalias.scope.decl(metadata !641)
  call void @llvm.experimental.noalias.scope.decl(metadata !643)
  call void @llvm.experimental.noalias.scope.decl(metadata !646)
  %_3.i.i.i10.i31.i = load i32, ptr %c.i28.i, align 4, !alias.scope !648, !noalias !649, !noundef !3
  %_4.i.i.i11.i32.i = load i32, ptr %a.i23.i, align 4, !alias.scope !650, !noalias !651, !noundef !3
  %_0.i12.i33.i = icmp slt i32 %_3.i.i.i10.i31.i, %_4.i.i.i11.i32.i
  call void @llvm.experimental.noalias.scope.decl(metadata !652)
  call void @llvm.experimental.noalias.scope.decl(metadata !655)
  call void @llvm.experimental.noalias.scope.decl(metadata !657)
  call void @llvm.experimental.noalias.scope.decl(metadata !660)
  call void @llvm.experimental.noalias.scope.decl(metadata !662)
  call void @llvm.experimental.noalias.scope.decl(metadata !665)
  %_3.i.i.i13.i34.i = load i32, ptr %d.i30.i, align 4, !alias.scope !667, !noalias !668, !noundef !3
  %_4.i.i.i14.i35.i = load i32, ptr %b.i26.i, align 4, !alias.scope !669, !noalias !670, !noundef !3
  %_0.i15.i36.i = icmp slt i32 %_3.i.i.i13.i34.i, %_4.i.i.i14.i35.i
  %14 = call i32 @llvm.smin.i32(i32 %_3.i.i.i10.i31.i, i32 %_4.i.i.i11.i32.i)
  %15 = select i1 %_0.i15.i36.i, ptr %c.i28.i, ptr %b.i26.i, !unpredictable !3
  %16 = select i1 %_0.i12.i33.i, ptr %a.i23.i, ptr %15, !unpredictable !3
  %17 = select i1 %_0.i12.i33.i, ptr %b.i26.i, ptr %c.i28.i, !unpredictable !3
  %18 = select i1 %_0.i15.i36.i, ptr %d.i30.i, ptr %17, !unpredictable !3
  call void @llvm.experimental.noalias.scope.decl(metadata !671)
  call void @llvm.experimental.noalias.scope.decl(metadata !674)
  call void @llvm.experimental.noalias.scope.decl(metadata !676)
  call void @llvm.experimental.noalias.scope.decl(metadata !679)
  call void @llvm.experimental.noalias.scope.decl(metadata !681)
  call void @llvm.experimental.noalias.scope.decl(metadata !684)
  %_3.i.i.i16.i37.i = load i32, ptr %18, align 4, !alias.scope !686, !noalias !687, !noundef !3
  %_4.i.i.i17.i38.i = load i32, ptr %16, align 4, !alias.scope !688, !noalias !689, !noundef !3
  store i32 %14, ptr %_28.i, align 4, !alias.scope !496, !noalias !594
  %dst5.i40.i = getelementptr inbounds nuw i8, ptr %_28.i, i64 4
  %19 = call i32 @llvm.smin.i32(i32 %_3.i.i.i16.i37.i, i32 %_4.i.i.i17.i38.i)
  store i32 %19, ptr %dst5.i40.i, align 4, !alias.scope !496, !noalias !594
  %dst6.i43.i = getelementptr inbounds nuw i8, ptr %_28.i, i64 8
  %20 = call i32 @llvm.smax.i32(i32 %_3.i.i.i16.i37.i, i32 %_4.i.i.i17.i38.i)
  store i32 %20, ptr %dst6.i43.i, align 4, !alias.scope !496, !noalias !594
  %21 = getelementptr inbounds nuw i8, ptr %_28.i, i64 12
  %22 = call i32 @llvm.smax.i32(i32 %_3.i.i.i13.i34.i, i32 %_4.i.i.i14.i35.i)
  store i32 %22, ptr %21, align 4, !alias.scope !496, !noalias !594
  br label %bb15.i

bb46.i:                                           ; preds = %bb9.i
  %23 = load i32, ptr %v.sroa.0.0.ph.lcssa129, align 4, !alias.scope !493, !noalias !690
  store i32 %23, ptr %scratch.0, align 4, !alias.scope !496, !noalias !594
  %_31.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %len_div_211.i
  %24 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211.i
  %25 = load i32, ptr %_31.i, align 4, !alias.scope !493, !noalias !690
  store i32 %25, ptr %24, align 4, !alias.scope !496, !noalias !594
  br label %bb15.i

bb15.i:                                           ; preds = %bb46.i, %bb10.i, %bb6.i
  %presorted_len.sroa.0.0.i = phi i64 [ 8, %bb6.i ], [ 4, %bb10.i ], [ 1, %bb46.i ]
  %26 = sub nsw i64 %v.sroa.16.0.lcssa, %len_div_211.i
  %_8061.i = icmp samesign ult i64 %presorted_len.sroa.0.0.i, %len_div_211.i
  br i1 %_8061.i, label %bb24.preheader.i, label %bb16.loopexit.i

bb16.loopexit.i:                                  ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h023798a31a73eaceE.exit.i, %bb15.i
  %src5.1.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %len_div_211.i
  %dst6.1.i = getelementptr i32, ptr %scratch.0, i64 %len_div_211.i
  %_8061.1.i = icmp ult i64 %presorted_len.sroa.0.0.i, %26
  br i1 %_8061.1.i, label %bb24.preheader.1.i, label %bb16.loopexit.1.i

bb24.preheader.1.i:                               ; preds = %bb16.loopexit.i
  %iter1.sroa.0.163.1.i = add nuw nsw i64 %presorted_len.sroa.0.0.i, 1
  br label %bb24.1.i

bb24.1.i:                                         ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h023798a31a73eaceE.exit.1.i, %bb24.preheader.1.i
  %iter1.sroa.0.165.1.i = phi i64 [ %iter1.sroa.0.1.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h023798a31a73eaceE.exit.1.i ], [ %iter1.sroa.0.163.1.i, %bb24.preheader.1.i ]
  %iter1.sroa.0.064.1.i = phi i64 [ %iter1.sroa.0.165.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h023798a31a73eaceE.exit.1.i ], [ %presorted_len.sroa.0.0.i, %bb24.preheader.1.i ]
  %_55.1.i = getelementptr inbounds nuw i32, ptr %src5.1.i, i64 %iter1.sroa.0.064.1.i
  %dst7.1.i = getelementptr inbounds nuw i32, ptr %dst6.1.i, i64 %iter1.sroa.0.064.1.i
  %27 = load i32, ptr %_55.1.i, align 4, !alias.scope !493, !noalias !690
  store i32 %27, ptr %dst7.1.i, align 4, !alias.scope !496, !noalias !594
  %28 = getelementptr inbounds i8, ptr %dst7.1.i, i64 -4
  %_4.i.i.i.i55.1.i = load i32, ptr %28, align 4, !alias.scope !691, !noalias !698, !noundef !3
  %_0.i.i56.1.i = icmp slt i32 %27, %_4.i.i.i.i55.1.i
  br i1 %_0.i.i56.1.i, label %bb4.i.1.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h023798a31a73eaceE.exit.1.i

bb4.i.1.i:                                        ; preds = %bb24.1.i, %bb7.i.1.i
  %29 = phi i32 [ %_4.i.i.i2.i.1.i, %bb7.i.1.i ], [ %_4.i.i.i.i55.1.i, %bb24.1.i ]
  %gap_guard.sroa.5.0.i.1.i = phi ptr [ %sift.sroa.0.0.i.1.i, %bb7.i.1.i ], [ %dst7.1.i, %bb24.1.i ]
  %sift.sroa.0.0.i.1.i = phi ptr [ %30, %bb7.i.1.i ], [ %28, %bb24.1.i ]
  store i32 %29, ptr %gap_guard.sroa.5.0.i.1.i, align 4, !alias.scope !496, !noalias !594
  %_18.i.1.i = icmp eq ptr %sift.sroa.0.0.i.1.i, %dst6.1.i
  br i1 %_18.i.1.i, label %bb10.i.1.i, label %bb7.i.1.i

bb7.i.1.i:                                        ; preds = %bb4.i.1.i
  %30 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.1.i, i64 -4
  %_4.i.i.i2.i.1.i = load i32, ptr %30, align 4, !alias.scope !702, !noalias !709, !noundef !3
  %_0.i3.i.1.i = icmp slt i32 %27, %_4.i.i.i2.i.1.i
  br i1 %_0.i3.i.1.i, label %bb4.i.1.i, label %bb10.i.1.i

bb10.i.1.i:                                       ; preds = %bb7.i.1.i, %bb4.i.1.i
  %sift.sroa.0.0.i.lcssa.1.i = phi ptr [ %sift.sroa.0.0.i.1.i, %bb7.i.1.i ], [ %dst6.1.i, %bb4.i.1.i ]
  store i32 %27, ptr %sift.sroa.0.0.i.lcssa.1.i, align 4, !alias.scope !496, !noalias !713
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h023798a31a73eaceE.exit.1.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h023798a31a73eaceE.exit.1.i: ; preds = %bb10.i.1.i, %bb24.1.i
  %_80.1.i = icmp ult i64 %iter1.sroa.0.165.1.i, %26
  %_84.1.i = zext i1 %_80.1.i to i64
  %iter1.sroa.0.1.1.i = add nuw i64 %iter1.sroa.0.165.1.i, %_84.1.i
  br i1 %_80.1.i, label %bb24.1.i, label %bb16.loopexit.1.i

bb16.loopexit.1.i:                                ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h023798a31a73eaceE.exit.1.i, %bb16.loopexit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !718)
  %count1.i.i = add nsw i64 %v.sroa.16.0.lcssa, -1
  %31 = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %count1.i.i
  %32 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %count1.i.i
  %33 = getelementptr i8, ptr %dst6.1.i, i64 -4
  br label %bb15.i.i

bb24.preheader.i:                                 ; preds = %bb15.i
  %iter1.sroa.0.163.i = add nuw nsw i64 %presorted_len.sroa.0.0.i, 1
  br label %bb24.i

bb16.i.i:                                         ; preds = %bb15.i.i
  %34 = getelementptr i8, ptr %39, i64 4
  %35 = getelementptr i8, ptr %38, i64 4
  %_44.i.i = and i64 %v.sroa.16.0.lcssa, 1
  %_22.i.i = icmp eq i64 %_44.i.i, 0
  br i1 %_22.i.i, label %bb9.i.i, label %bb5.i.i

bb15.i.i:                                         ; preds = %bb15.i.i, %bb16.loopexit.1.i
  %dst.sroa.0.029.i.i = phi ptr [ %_16.i.i.i, %bb15.i.i ], [ %v.sroa.0.0.ph.lcssa129, %bb16.loopexit.1.i ]
  %iter.sroa.0.028.i.i = phi i64 [ %_39.i.i, %bb15.i.i ], [ 0, %bb16.loopexit.1.i ]
  %left.sroa.0.027.i.i = phi ptr [ %_14.i.i.i, %bb15.i.i ], [ %scratch.0, %bb16.loopexit.1.i ]
  %right.sroa.0.026.i.i = phi ptr [ %_12.i.i.i, %bb15.i.i ], [ %dst6.1.i, %bb16.loopexit.1.i ]
  %left_rev.sroa.0.025.i.i = phi ptr [ %39, %bb15.i.i ], [ %33, %bb16.loopexit.1.i ]
  %right_rev.sroa.0.024.i.i = phi ptr [ %38, %bb15.i.i ], [ %32, %bb16.loopexit.1.i ]
  %dst_rev.sroa.0.023.i.i = phi ptr [ %40, %bb15.i.i ], [ %31, %bb16.loopexit.1.i ]
  %_39.i.i = add nuw nsw i64 %iter.sroa.0.028.i.i, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !721)
  call void @llvm.experimental.noalias.scope.decl(metadata !724)
  call void @llvm.experimental.noalias.scope.decl(metadata !726), !noalias !729
  call void @llvm.experimental.noalias.scope.decl(metadata !732), !noalias !729
  call void @llvm.experimental.noalias.scope.decl(metadata !734), !noalias !729
  call void @llvm.experimental.noalias.scope.decl(metadata !737), !noalias !729
  %_3.i.i.i.i48.i = load i32, ptr %right.sroa.0.026.i.i, align 4, !alias.scope !739, !noalias !740, !noundef !3
  %_4.i.i.i.i49.i = load i32, ptr %left.sroa.0.027.i.i, align 4, !alias.scope !741, !noalias !742, !noundef !3
  %_0.i.i50.i = icmp slt i32 %_3.i.i.i.i48.i, %_4.i.i.i.i49.i
  %is_l.i18.i.i = xor i1 %_0.i.i50.i, true
  %36 = call i32 @llvm.smin.i32(i32 %_3.i.i.i.i48.i, i32 %_4.i.i.i.i49.i)
  store i32 %36, ptr %dst.sroa.0.029.i.i, align 4, !alias.scope !493, !noalias !743
  %count.i.i.i = zext i1 %_0.i.i50.i to i64
  %_12.i.i.i = getelementptr inbounds nuw i32, ptr %right.sroa.0.026.i.i, i64 %count.i.i.i
  %count2.i.i.i = zext i1 %is_l.i18.i.i to i64
  %_14.i.i.i = getelementptr inbounds nuw i32, ptr %left.sroa.0.027.i.i, i64 %count2.i.i.i
  %_16.i.i.i = getelementptr inbounds nuw i8, ptr %dst.sroa.0.029.i.i, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !745)
  call void @llvm.experimental.noalias.scope.decl(metadata !748)
  call void @llvm.experimental.noalias.scope.decl(metadata !750), !noalias !753
  call void @llvm.experimental.noalias.scope.decl(metadata !756), !noalias !753
  call void @llvm.experimental.noalias.scope.decl(metadata !758), !noalias !753
  call void @llvm.experimental.noalias.scope.decl(metadata !761), !noalias !753
  %_3.i.i.i19.i.i = load i32, ptr %right_rev.sroa.0.024.i.i, align 4, !alias.scope !763, !noalias !764, !noundef !3
  %_4.i.i.i20.i.i = load i32, ptr %left_rev.sroa.0.025.i.i, align 4, !alias.scope !765, !noalias !766, !noundef !3
  %_0.i21.i.i = icmp slt i32 %_3.i.i.i19.i.i, %_4.i.i.i20.i.i
  %is_l.i.i.i = xor i1 %_0.i21.i.i, true
  %37 = call i32 @llvm.smax.i32(i32 %_3.i.i.i19.i.i, i32 %_4.i.i.i20.i.i)
  store i32 %37, ptr %dst_rev.sroa.0.023.i.i, align 4, !alias.scope !493, !noalias !767
  %count.neg.i.i.i = sext i1 %is_l.i.i.i to i64
  %38 = getelementptr i32, ptr %right_rev.sroa.0.024.i.i, i64 %count.neg.i.i.i
  %count3.neg.i.i.i = sext i1 %_0.i21.i.i to i64
  %39 = getelementptr i32, ptr %left_rev.sroa.0.025.i.i, i64 %count3.neg.i.i.i
  %40 = getelementptr inbounds i8, ptr %dst_rev.sroa.0.023.i.i, i64 -4
  %exitcond.not.i.i = icmp eq i64 %_39.i.i, %len_div_211.i
  br i1 %exitcond.not.i.i, label %bb16.i.i, label %bb15.i.i

bb5.i.i:                                          ; preds = %bb16.i.i
  %left_nonempty.i.i = icmp ult ptr %_14.i.i.i, %34
  %left.sroa.0.0.right.sroa.0.0.i.i = select i1 %left_nonempty.i.i, ptr %_14.i.i.i, ptr %_12.i.i.i
  %41 = load i32, ptr %left.sroa.0.0.right.sroa.0.0.i.i, align 4, !alias.scope !769, !noalias !594
  store i32 %41, ptr %_16.i.i.i, align 4, !alias.scope !493, !noalias !770
  %count2.i51.i = zext i1 %left_nonempty.i.i to i64
  %_26.i.i = getelementptr inbounds nuw i32, ptr %_14.i.i.i, i64 %count2.i51.i
  %_30.i.i = xor i1 %left_nonempty.i.i, true
  %count3.i52.i = zext i1 %_30.i.i to i64
  %_28.i.i = getelementptr inbounds nuw i32, ptr %_12.i.i.i, i64 %count3.i52.i
  br label %bb9.i.i

bb9.i.i:                                          ; preds = %bb5.i.i, %bb16.i.i
  %right.sroa.0.1.i.i = phi ptr [ %_12.i.i.i, %bb16.i.i ], [ %_28.i.i, %bb5.i.i ]
  %left.sroa.0.1.i.i = phi ptr [ %_14.i.i.i, %bb16.i.i ], [ %_26.i.i, %bb5.i.i ]
  %_31.i.i = icmp ne ptr %left.sroa.0.1.i.i, %34
  %_32.i.i = icmp ne ptr %right.sroa.0.1.i.i, %35
  %or.cond.i.i = select i1 %_31.i.i, i1 true, i1 %_32.i.i
  br i1 %or.cond.i.i, label %bb13.i.i, label %bb22, !prof !352

bb13.i.i:                                         ; preds = %bb9.i.i
; invoke core::slice::sort::shared::smallsort::panic_on_ord_violation
  invoke void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #18
          to label %.noexc.i unwind label %cleanup2.i, !noalias !771

.noexc.i:                                         ; preds = %bb13.i.i
  unreachable

cleanup2.i:                                       ; preds = %bb13.i.i
  %42 = landingpad { ptr, i32 }
          cleanup
  %43 = shl nuw nsw i64 %v.sroa.16.0.lcssa, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.sroa.0.0.ph.lcssa129, ptr nonnull align 4 %scratch.0, i64 %43, i1 false), !alias.scope !772, !noalias !773
  resume { ptr, i32 } %42

bb24.i:                                           ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h023798a31a73eaceE.exit.i, %bb24.preheader.i
  %iter1.sroa.0.165.i = phi i64 [ %iter1.sroa.0.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h023798a31a73eaceE.exit.i ], [ %iter1.sroa.0.163.i, %bb24.preheader.i ]
  %iter1.sroa.0.064.i = phi i64 [ %iter1.sroa.0.165.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h023798a31a73eaceE.exit.i ], [ %presorted_len.sroa.0.0.i, %bb24.preheader.i ]
  %_55.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %iter1.sroa.0.064.i
  %dst7.i = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %iter1.sroa.0.064.i
  %44 = load i32, ptr %_55.i, align 4, !alias.scope !493, !noalias !690
  store i32 %44, ptr %dst7.i, align 4, !alias.scope !496, !noalias !594
  %45 = getelementptr inbounds i8, ptr %dst7.i, i64 -4
  %_4.i.i.i.i55.i = load i32, ptr %45, align 4, !alias.scope !691, !noalias !698, !noundef !3
  %_0.i.i56.i = icmp slt i32 %44, %_4.i.i.i.i55.i
  br i1 %_0.i.i56.i, label %bb4.i.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h023798a31a73eaceE.exit.i

bb4.i.i:                                          ; preds = %bb24.i, %bb7.i.i
  %46 = phi i32 [ %_4.i.i.i2.i.i, %bb7.i.i ], [ %_4.i.i.i.i55.i, %bb24.i ]
  %gap_guard.sroa.5.0.i.i = phi ptr [ %sift.sroa.0.0.i.i, %bb7.i.i ], [ %dst7.i, %bb24.i ]
  %sift.sroa.0.0.i.i = phi ptr [ %47, %bb7.i.i ], [ %45, %bb24.i ]
  store i32 %46, ptr %gap_guard.sroa.5.0.i.i, align 4, !alias.scope !496, !noalias !594
  %_18.i.i = icmp eq ptr %sift.sroa.0.0.i.i, %scratch.0
  br i1 %_18.i.i, label %bb10.i.i, label %bb7.i.i

bb7.i.i:                                          ; preds = %bb4.i.i
  %47 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i, i64 -4
  %_4.i.i.i2.i.i = load i32, ptr %47, align 4, !alias.scope !702, !noalias !709, !noundef !3
  %_0.i3.i.i = icmp slt i32 %44, %_4.i.i.i2.i.i
  br i1 %_0.i3.i.i, label %bb4.i.i, label %bb10.i.i

bb10.i.i:                                         ; preds = %bb7.i.i, %bb4.i.i
  %sift.sroa.0.0.i.lcssa.i = phi ptr [ %sift.sroa.0.0.i.i, %bb7.i.i ], [ %scratch.0, %bb4.i.i ]
  store i32 %44, ptr %sift.sroa.0.0.i.lcssa.i, align 4, !alias.scope !496, !noalias !713
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h023798a31a73eaceE.exit.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h023798a31a73eaceE.exit.i: ; preds = %bb10.i.i, %bb24.i
  %_80.i = icmp ult i64 %iter1.sroa.0.165.i, %len_div_211.i
  %_84.i = zext i1 %_80.i to i64
  %iter1.sroa.0.1.i = add nuw i64 %iter1.sroa.0.165.i, %_84.i
  br i1 %_80.i, label %bb24.i, label %bb16.loopexit.i

bb7:                                              ; preds = %bb5
  %48 = add i32 %limit.sroa.0.0131, -1
  %len_div_84.i = lshr i64 %v.sroa.16.0132, 3
  %b.idx.i = shl nuw nsw i64 %len_div_84.i, 4
  %b.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph140, i64 %b.idx.i
  %c.idx.i = mul nuw nsw i64 %len_div_84.i, 28
  %c.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph140, i64 %c.idx.i
  %_12.i = icmp samesign ult i64 %v.sroa.16.0132, 64
  br i1 %_12.i, label %bb3.i23, label %bb5.i

bb5.i:                                            ; preds = %bb7
; call core::slice::sort::shared::pivot::median3_rec
  %self.i = call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h100f0d34d8fa5739E(ptr noundef nonnull readonly align 4 %v.sroa.0.0.ph140, ptr noundef readonly %b.i, ptr noundef readonly %c.i, i64 noundef %len_div_84.i)
  br label %bb10

bb3.i23:                                          ; preds = %bb7
  call void @llvm.experimental.noalias.scope.decl(metadata !778)
  call void @llvm.experimental.noalias.scope.decl(metadata !781)
  call void @llvm.experimental.noalias.scope.decl(metadata !783), !noalias !786
  call void @llvm.experimental.noalias.scope.decl(metadata !789), !noalias !786
  call void @llvm.experimental.noalias.scope.decl(metadata !791), !noalias !786
  call void @llvm.experimental.noalias.scope.decl(metadata !794), !noalias !786
  %_3.i.i.i.i = load i32, ptr %v.sroa.0.0.ph140, align 4, !alias.scope !796, !noalias !799, !noundef !3
  %_4.i.i.i.i = load i32, ptr %b.i, align 4, !alias.scope !801, !noalias !802, !noundef !3
  %_0.i.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %_4.i.i.i6.i = load i32, ptr %c.i, align 4, !alias.scope !803, !noalias !810, !noundef !3
  %_0.i7.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i6.i
  %49 = xor i1 %_0.i.i, %_0.i7.i
  %_0.i10.i = icmp slt i32 %_4.i.i.i.i, %_4.i.i.i6.i
  %_12.i.i24 = xor i1 %_0.i.i, %_0.i10.i
  %c.b.i.i = select i1 %_12.i.i24, ptr %c.i, ptr %b.i
  %_0.sroa.0.0.i.i = select i1 %49, ptr %v.sroa.0.0.ph140, ptr %c.b.i.i
  br label %bb10

bb6:                                              ; preds = %bb5
; call core::slice::sort::stable::drift::sort
  call fastcc void @_ZN4core5slice4sort6stable5drift4sort17h47316847e463e330E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph140, i64 noundef %v.sroa.16.0132, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i1 noundef zeroext true, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  br label %bb22

bb10:                                             ; preds = %bb3.i23, %bb5.i
  %_0.sroa.0.0.i.sink.i = phi ptr [ %_0.sroa.0.0.i.i, %bb3.i23 ], [ %self.i, %bb5.i ]
  %50 = ptrtoint ptr %_0.sroa.0.0.i.sink.i to i64
  %51 = sub nuw i64 %50, %4
  %index.sroa.0.0.i = lshr exact i64 %51, 2
  %cond.i = icmp samesign ult i64 %index.sroa.0.0.i, %v.sroa.16.0132
  call void @llvm.assume(i1 %cond.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pivot_copy)
  %src = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph140, i64 %51
  %value = load i32, ptr %src, align 4, !noundef !3
  store i32 %value, ptr %pivot_copy, align 4
  br i1 %.not, label %bb14, label %bb12

bb12:                                             ; preds = %bb10
  %_3.i.i.i = load i32, ptr %left_ancestor_pivot.sroa.0.0.ph137, align 4, !alias.scope !814, !noalias !821, !noundef !3
  %_0.i = icmp slt i32 %_3.i.i.i, %value
  br i1 %_0.i, label %bb14, label %bb17

bb14:                                             ; preds = %bb10, %bb12
  call void @llvm.experimental.noalias.scope.decl(metadata !825)
  call void @llvm.experimental.noalias.scope.decl(metadata !828)
  %_8.i25.not = icmp samesign ult i64 %scratch.1, %v.sroa.16.0132
  br i1 %_8.i25.not, label %bb31.i, label %bb33.i, !prof !352

bb33.i:                                           ; preds = %bb14
  %_86.i = getelementptr i32, ptr %scratch.0, i64 %v.sroa.16.0132
  br label %bb3.i26

bb31.i:                                           ; preds = %bb14
  call void @llvm.trap()
  unreachable

bb3.i26:                                          ; preds = %bb23.i, %bb33.i
  %state.sroa.27.0.i = phi i64 [ 0, %bb33.i ], [ %state.sroa.27.2.lcssa.i, %bb23.i ]
  %state.sroa.9.0.i = phi ptr [ %v.sroa.0.0.ph140, %bb33.i ], [ %_9.i70.i, %bb23.i ]
  %state.sroa.43.0.i = phi ptr [ %_86.i, %bb33.i ], [ %63, %bb23.i ]
  %pivot_pos.sroa.0.0.i = phi i64 [ %index.sroa.0.0.i, %bb33.i ], [ %v.sroa.16.0132, %bb23.i ]
  %52 = call i64 @llvm.usub.sat.i64(i64 %pivot_pos.sroa.0.0.i, i64 3)
  %unroll_end.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph140, i64 %52
  %_1984.i = icmp ult ptr %state.sroa.9.0.i, %unroll_end.i
  br i1 %_1984.i, label %bb6.i28.preheader, label %bb16.i

bb6.i28.preheader:                                ; preds = %bb3.i26
  %_4.i.i.i.i30 = load i32, ptr %src, align 4, !alias.scope !830, !noalias !837, !noundef !3
  br label %bb6.i28

bb6.i28:                                          ; preds = %bb6.i28.preheader, %bb6.i28
  %state.sroa.43.187.i = phi ptr [ %59, %bb6.i28 ], [ %state.sroa.43.0.i, %bb6.i28.preheader ]
  %state.sroa.9.186.i = phi ptr [ %_9.i54.i, %bb6.i28 ], [ %state.sroa.9.0.i, %bb6.i28.preheader ]
  %state.sroa.27.185.i = phi i64 [ %60, %bb6.i28 ], [ %state.sroa.27.0.i, %bb6.i28.preheader ]
  call void @llvm.experimental.noalias.scope.decl(metadata !841)
  call void @llvm.experimental.noalias.scope.decl(metadata !842)
  call void @llvm.experimental.noalias.scope.decl(metadata !843)
  call void @llvm.experimental.noalias.scope.decl(metadata !844)
  call void @llvm.experimental.noalias.scope.decl(metadata !845)
  call void @llvm.experimental.noalias.scope.decl(metadata !846)
  %_3.i.i.i.i29 = load i32, ptr %state.sroa.9.186.i, align 4, !alias.scope !847, !noalias !848, !noundef !3
  %_0.i.i31 = icmp slt i32 %_3.i.i.i.i29, %_4.i.i.i.i30
  %53 = getelementptr inbounds i8, ptr %state.sroa.43.187.i, i64 -4
  %dst_base.sroa.0.0.i.i = select i1 %_0.i.i31, ptr %scratch.0, ptr %53
  %dst.i.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i.i, i64 %state.sroa.27.185.i
  store i32 %_3.i.i.i.i29, ptr %dst.i.i, align 4, !alias.scope !828, !noalias !849
  %_8.i.i = zext i1 %_0.i.i31 to i64
  %54 = add i64 %state.sroa.27.185.i, %_8.i.i
  %_9.i.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i, i64 4
  %_3.i.i.i25.i = load i32, ptr %_9.i.i, align 4, !alias.scope !852, !noalias !859, !noundef !3
  %_0.i27.i = icmp slt i32 %_3.i.i.i25.i, %_4.i.i.i.i30
  %55 = getelementptr inbounds i8, ptr %state.sroa.43.187.i, i64 -8
  %dst_base.sroa.0.0.i29.i = select i1 %_0.i27.i, ptr %scratch.0, ptr %55
  %dst.i31.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29.i, i64 %54
  store i32 %_3.i.i.i25.i, ptr %dst.i31.i, align 4, !alias.scope !828, !noalias !863
  %_8.i33.i = zext i1 %_0.i27.i to i64
  %56 = add i64 %54, %_8.i33.i
  %_9.i34.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i, i64 8
  %_3.i.i.i35.i = load i32, ptr %_9.i34.i, align 4, !alias.scope !866, !noalias !873, !noundef !3
  %_0.i37.i = icmp slt i32 %_3.i.i.i35.i, %_4.i.i.i.i30
  %57 = getelementptr inbounds i8, ptr %state.sroa.43.187.i, i64 -12
  %dst_base.sroa.0.0.i39.i = select i1 %_0.i37.i, ptr %scratch.0, ptr %57
  %dst.i41.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39.i, i64 %56
  store i32 %_3.i.i.i35.i, ptr %dst.i41.i, align 4, !alias.scope !828, !noalias !877
  %_8.i43.i = zext i1 %_0.i37.i to i64
  %58 = add i64 %56, %_8.i43.i
  %_9.i44.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i, i64 12
  %_3.i.i.i45.i = load i32, ptr %_9.i44.i, align 4, !alias.scope !880, !noalias !887, !noundef !3
  %_0.i47.i = icmp slt i32 %_3.i.i.i45.i, %_4.i.i.i.i30
  %59 = getelementptr inbounds i8, ptr %state.sroa.43.187.i, i64 -16
  %dst_base.sroa.0.0.i49.i = select i1 %_0.i47.i, ptr %scratch.0, ptr %59
  %dst.i51.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49.i, i64 %58
  store i32 %_3.i.i.i45.i, ptr %dst.i51.i, align 4, !alias.scope !828, !noalias !891
  %_8.i53.i = zext i1 %_0.i47.i to i64
  %60 = add i64 %58, %_8.i53.i
  %_9.i54.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i, i64 16
  %_19.i32 = icmp ult ptr %_9.i54.i, %unroll_end.i
  br i1 %_19.i32, label %bb6.i28, label %bb16.i

bb16.i:                                           ; preds = %bb6.i28, %bb3.i26
  %state.sroa.27.1.lcssa.i = phi i64 [ %state.sroa.27.0.i, %bb3.i26 ], [ %60, %bb6.i28 ]
  %state.sroa.9.1.lcssa.i = phi ptr [ %state.sroa.9.0.i, %bb3.i26 ], [ %_9.i54.i, %bb6.i28 ]
  %state.sroa.43.1.lcssa.i = phi ptr [ %state.sroa.43.0.i, %bb3.i26 ], [ %59, %bb6.i28 ]
  %loop_end.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph140, i64 %pivot_pos.sroa.0.0.i
  %_4790.i = icmp ult ptr %state.sroa.9.1.lcssa.i, %loop_end.i
  br i1 %_4790.i, label %bb18.i.preheader, label %bb21.i

bb18.i.preheader:                                 ; preds = %bb16.i
  %_4.i.i.i56.i = load i32, ptr %src, align 4, !alias.scope !894, !noalias !901, !noundef !3
  br label %bb18.i

bb21.i:                                           ; preds = %bb18.i, %bb16.i
  %state.sroa.27.2.lcssa.i = phi i64 [ %state.sroa.27.1.lcssa.i, %bb16.i ], [ %62, %bb18.i ]
  %state.sroa.9.2.lcssa.i = phi ptr [ %state.sroa.9.1.lcssa.i, %bb16.i ], [ %_9.i64.i, %bb18.i ]
  %state.sroa.43.2.lcssa.i = phi ptr [ %state.sroa.43.1.lcssa.i, %bb16.i ], [ %61, %bb18.i ]
  %_55.i27 = icmp eq i64 %pivot_pos.sroa.0.0.i, %v.sroa.16.0132
  br i1 %_55.i27, label %bb22.i, label %bb23.i

bb18.i:                                           ; preds = %bb18.i.preheader, %bb18.i
  %state.sroa.43.293.i = phi ptr [ %61, %bb18.i ], [ %state.sroa.43.1.lcssa.i, %bb18.i.preheader ]
  %state.sroa.9.292.i = phi ptr [ %_9.i64.i, %bb18.i ], [ %state.sroa.9.1.lcssa.i, %bb18.i.preheader ]
  %state.sroa.27.291.i = phi i64 [ %62, %bb18.i ], [ %state.sroa.27.1.lcssa.i, %bb18.i.preheader ]
  call void @llvm.experimental.noalias.scope.decl(metadata !905)
  call void @llvm.experimental.noalias.scope.decl(metadata !906)
  call void @llvm.experimental.noalias.scope.decl(metadata !907)
  call void @llvm.experimental.noalias.scope.decl(metadata !908)
  call void @llvm.experimental.noalias.scope.decl(metadata !909)
  call void @llvm.experimental.noalias.scope.decl(metadata !910)
  %_3.i.i.i55.i = load i32, ptr %state.sroa.9.292.i, align 4, !alias.scope !911, !noalias !912, !noundef !3
  %_0.i57.i = icmp slt i32 %_3.i.i.i55.i, %_4.i.i.i56.i
  %61 = getelementptr inbounds i8, ptr %state.sroa.43.293.i, i64 -4
  %dst_base.sroa.0.0.i59.i = select i1 %_0.i57.i, ptr %scratch.0, ptr %61
  %dst.i61.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59.i, i64 %state.sroa.27.291.i
  store i32 %_3.i.i.i55.i, ptr %dst.i61.i, align 4, !alias.scope !828, !noalias !913
  %_8.i63.i = zext i1 %_0.i57.i to i64
  %62 = add i64 %state.sroa.27.291.i, %_8.i63.i
  %_9.i64.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.292.i, i64 4
  %_47.i = icmp ult ptr %_9.i64.i, %loop_end.i
  br i1 %_47.i, label %bb18.i, label %bb21.i

bb23.i:                                           ; preds = %bb21.i
  %63 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa.i, i64 -4
  %dst.i68.i = getelementptr inbounds nuw i32, ptr %63, i64 %state.sroa.27.2.lcssa.i
  %64 = load i32, ptr %state.sroa.9.2.lcssa.i, align 4, !alias.scope !825, !noalias !916
  store i32 %64, ptr %dst.i68.i, align 4, !alias.scope !828, !noalias !919
  %_9.i70.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.2.lcssa.i, i64 4
  br label %bb3.i26

bb22.i:                                           ; preds = %bb21.i
  %65 = shl i64 %state.sroa.27.2.lcssa.i, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.sroa.0.0.ph140, ptr nonnull align 4 %scratch.0, i64 %65, i1 false), !alias.scope !920
  %_63.i = sub i64 %v.sroa.16.0132, %state.sroa.27.2.lcssa.i
  %_9797.not.i = icmp eq i64 %v.sroa.16.0132, %state.sroa.27.2.lcssa.i
  br i1 %_9797.not.i, label %bb16, label %bb42.lr.ph.i

bb42.lr.ph.i:                                     ; preds = %bb22.i
  %66 = getelementptr i32, ptr %v.sroa.0.0.ph140, i64 %state.sroa.27.2.lcssa.i
  %min.iters.check265 = icmp ult i64 %_63.i, 8
  br i1 %min.iters.check265, label %bb42.i.preheader, label %vector.ph266

vector.ph266:                                     ; preds = %bb42.lr.ph.i
  %n.vec268 = and i64 %_63.i, -8
  br label %vector.body269

vector.body269:                                   ; preds = %vector.body269, %vector.ph266
  %index270 = phi i64 [ 0, %vector.ph266 ], [ %index.next275, %vector.body269 ]
  %67 = getelementptr i32, ptr %66, i64 %index270
  %68 = xor i64 %index270, -1
  %69 = getelementptr i32, ptr %_86.i, i64 %68
  %70 = getelementptr i8, ptr %69, i64 -12
  %71 = getelementptr i8, ptr %69, i64 -28
  %wide.load271 = load <4 x i32>, ptr %70, align 4, !alias.scope !828, !noalias !825
  %reverse272 = shufflevector <4 x i32> %wide.load271, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %wide.load273 = load <4 x i32>, ptr %71, align 4, !alias.scope !828, !noalias !825
  %reverse274 = shufflevector <4 x i32> %wide.load273, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %72 = getelementptr i8, ptr %67, i64 16
  store <4 x i32> %reverse272, ptr %67, align 4, !alias.scope !825, !noalias !828
  store <4 x i32> %reverse274, ptr %72, align 4, !alias.scope !825, !noalias !828
  %index.next275 = add nuw i64 %index270, 8
  %73 = icmp eq i64 %index.next275, %n.vec268
  br i1 %73, label %middle.block276, label %vector.body269, !llvm.loop !921

middle.block276:                                  ; preds = %vector.body269
  %cmp.n277 = icmp eq i64 %_63.i, %n.vec268
  br i1 %cmp.n277, label %bb16, label %bb42.i.preheader

bb42.i.preheader:                                 ; preds = %bb42.lr.ph.i, %middle.block276
  %iter.sroa.0.098.i.ph = phi i64 [ 0, %bb42.lr.ph.i ], [ %n.vec268, %middle.block276 ]
  br label %bb42.i

bb42.i:                                           ; preds = %bb42.i.preheader, %bb42.i
  %iter.sroa.0.098.i = phi i64 [ %74, %bb42.i ], [ %iter.sroa.0.098.i.ph, %bb42.i.preheader ]
  %74 = add nuw i64 %iter.sroa.0.098.i, 1
  %75 = getelementptr i32, ptr %66, i64 %iter.sroa.0.098.i
  %76 = xor i64 %iter.sroa.0.098.i, -1
  %77 = getelementptr i32, ptr %_86.i, i64 %76
  %78 = load i32, ptr %77, align 4, !alias.scope !828, !noalias !825
  store i32 %78, ptr %75, align 4, !alias.scope !825, !noalias !828
  %exitcond.not.i = icmp eq i64 %74, %_63.i
  br i1 %exitcond.not.i, label %bb16, label %bb42.i, !llvm.loop !922

bb16:                                             ; preds = %bb42.i, %middle.block276, %bb22.i
  %79 = icmp eq i64 %state.sroa.27.2.lcssa.i, 0
  br i1 %79, label %bb17, label %bb19

bb19:                                             ; preds = %bb16
  %_6.not.i = icmp ugt i64 %state.sroa.27.2.lcssa.i, %v.sroa.16.0132
  br i1 %_6.not.i, label %bb3.i33, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h447654892ce49de7E.exit", !prof !923

bb3.i33:                                          ; preds = %bb19
; call core::panicking::panic_fmt
  call void @_ZN4core9panicking9panic_fmt17ha4414e4328fe24a0E(ptr noundef nonnull @alloc_d1084648e479974e70c9329824bf76f9, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_58d434a1e795f965ef82c8e9c5db822a) #18, !noalias !924
  unreachable

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h447654892ce49de7E.exit": ; preds = %bb19
  %80 = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph140, i64 %state.sroa.27.2.lcssa.i
; call core::slice::sort::stable::quicksort::quicksort
  call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h9e0d5d0b38d4fe50E(ptr noalias noundef nonnull align 4 %80, i64 noundef %_63.i, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef %48, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) %pivot_copy, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_8 = icmp ult i64 %state.sroa.27.2.lcssa.i, 33
  br i1 %_8, label %bb3, label %bb5

bb17:                                             ; preds = %bb12, %bb16
  call void @llvm.experimental.noalias.scope.decl(metadata !928)
  call void @llvm.experimental.noalias.scope.decl(metadata !931)
  %_8.i34.not = icmp samesign ult i64 %scratch.1, %v.sroa.16.0132
  br i1 %_8.i34.not, label %bb31.i37, label %bb33.i38, !prof !352

bb33.i38:                                         ; preds = %bb17
  %_86.i40 = getelementptr i32, ptr %scratch.0, i64 %v.sroa.16.0132
  br label %bb3.i41

bb31.i37:                                         ; preds = %bb17
  call void @llvm.trap()
  unreachable

bb3.i41:                                          ; preds = %bb23.i59, %bb33.i38
  %state.sroa.27.0.i42 = phi i64 [ 0, %bb33.i38 ], [ %94, %bb23.i59 ]
  %state.sroa.9.0.i43 = phi ptr [ %v.sroa.0.0.ph140, %bb33.i38 ], [ %_9.i70.i61, %bb23.i59 ]
  %state.sroa.43.0.i44 = phi ptr [ %_86.i40, %bb33.i38 ], [ %92, %bb23.i59 ]
  %pivot_pos.sroa.0.0.i45 = phi i64 [ %index.sroa.0.0.i, %bb33.i38 ], [ %v.sroa.16.0132, %bb23.i59 ]
  %81 = call i64 @llvm.usub.sat.i64(i64 %pivot_pos.sroa.0.0.i45, i64 3)
  %unroll_end.i46 = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph140, i64 %81
  %_1984.i47 = icmp ult ptr %state.sroa.9.0.i43, %unroll_end.i46
  br i1 %_1984.i47, label %bb6.i78.preheader, label %bb16.i48

bb6.i78.preheader:                                ; preds = %bb3.i41
  %_3.i.i.i.i.i82 = load i32, ptr %src, align 4, !alias.scope !933, !noalias !942, !noundef !3
  br label %bb6.i78

bb6.i78:                                          ; preds = %bb6.i78.preheader, %bb6.i78
  %state.sroa.43.187.i79 = phi ptr [ %88, %bb6.i78 ], [ %state.sroa.43.0.i44, %bb6.i78.preheader ]
  %state.sroa.9.186.i80 = phi ptr [ %_9.i54.i100, %bb6.i78 ], [ %state.sroa.9.0.i43, %bb6.i78.preheader ]
  %state.sroa.27.185.i81 = phi i64 [ %89, %bb6.i78 ], [ %state.sroa.27.0.i42, %bb6.i78.preheader ]
  call void @llvm.experimental.noalias.scope.decl(metadata !947)
  call void @llvm.experimental.noalias.scope.decl(metadata !948)
  call void @llvm.experimental.noalias.scope.decl(metadata !949)
  call void @llvm.experimental.noalias.scope.decl(metadata !950)
  call void @llvm.experimental.noalias.scope.decl(metadata !951)
  call void @llvm.experimental.noalias.scope.decl(metadata !952)
  call void @llvm.experimental.noalias.scope.decl(metadata !953)
  call void @llvm.experimental.noalias.scope.decl(metadata !954)
  %_4.i.i.i.i.i83 = load i32, ptr %state.sroa.9.186.i80, align 4, !alias.scope !955, !noalias !956, !noundef !3
  %_0.i.i.i84 = icmp sge i32 %_3.i.i.i.i.i82, %_4.i.i.i.i.i83
  %82 = getelementptr inbounds i8, ptr %state.sroa.43.187.i79, i64 -4
  %dst_base.sroa.0.0.i.i85 = select i1 %_0.i.i.i84, ptr %scratch.0, ptr %82
  %dst.i.i86 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i.i85, i64 %state.sroa.27.185.i81
  store i32 %_4.i.i.i.i.i83, ptr %dst.i.i86, align 4, !alias.scope !931, !noalias !957
  %_8.i.i87 = zext i1 %_0.i.i.i84 to i64
  %83 = add i64 %state.sroa.27.185.i81, %_8.i.i87
  %_9.i.i88 = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i80, i64 4
  %_4.i.i.i.i26.i = load i32, ptr %_9.i.i88, align 4, !alias.scope !960, !noalias !969, !noundef !3
  %_0.i.i27.i = icmp sge i32 %_3.i.i.i.i.i82, %_4.i.i.i.i26.i
  %84 = getelementptr inbounds i8, ptr %state.sroa.43.187.i79, i64 -8
  %dst_base.sroa.0.0.i29.i89 = select i1 %_0.i.i27.i, ptr %scratch.0, ptr %84
  %dst.i31.i90 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29.i89, i64 %83
  store i32 %_4.i.i.i.i26.i, ptr %dst.i31.i90, align 4, !alias.scope !931, !noalias !974
  %_8.i33.i91 = zext i1 %_0.i.i27.i to i64
  %85 = add i64 %83, %_8.i33.i91
  %_9.i34.i92 = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i80, i64 8
  %_4.i.i.i.i36.i = load i32, ptr %_9.i34.i92, align 4, !alias.scope !977, !noalias !986, !noundef !3
  %_0.i.i37.i = icmp sge i32 %_3.i.i.i.i.i82, %_4.i.i.i.i36.i
  %86 = getelementptr inbounds i8, ptr %state.sroa.43.187.i79, i64 -12
  %dst_base.sroa.0.0.i39.i93 = select i1 %_0.i.i37.i, ptr %scratch.0, ptr %86
  %dst.i41.i94 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39.i93, i64 %85
  store i32 %_4.i.i.i.i36.i, ptr %dst.i41.i94, align 4, !alias.scope !931, !noalias !991
  %_8.i43.i95 = zext i1 %_0.i.i37.i to i64
  %87 = add i64 %85, %_8.i43.i95
  %_9.i44.i96 = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i80, i64 12
  %_4.i.i.i.i46.i = load i32, ptr %_9.i44.i96, align 4, !alias.scope !994, !noalias !1003, !noundef !3
  %_0.i.i47.i = icmp sge i32 %_3.i.i.i.i.i82, %_4.i.i.i.i46.i
  %88 = getelementptr inbounds i8, ptr %state.sroa.43.187.i79, i64 -16
  %dst_base.sroa.0.0.i49.i97 = select i1 %_0.i.i47.i, ptr %scratch.0, ptr %88
  %dst.i51.i98 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49.i97, i64 %87
  store i32 %_4.i.i.i.i46.i, ptr %dst.i51.i98, align 4, !alias.scope !931, !noalias !1008
  %_8.i53.i99 = zext i1 %_0.i.i47.i to i64
  %89 = add i64 %87, %_8.i53.i99
  %_9.i54.i100 = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i80, i64 16
  %_19.i101 = icmp ult ptr %_9.i54.i100, %unroll_end.i46
  br i1 %_19.i101, label %bb6.i78, label %bb16.i48

bb16.i48:                                         ; preds = %bb6.i78, %bb3.i41
  %state.sroa.27.1.lcssa.i49 = phi i64 [ %state.sroa.27.0.i42, %bb3.i41 ], [ %89, %bb6.i78 ]
  %state.sroa.9.1.lcssa.i50 = phi ptr [ %state.sroa.9.0.i43, %bb3.i41 ], [ %_9.i54.i100, %bb6.i78 ]
  %state.sroa.43.1.lcssa.i51 = phi ptr [ %state.sroa.43.0.i44, %bb3.i41 ], [ %88, %bb6.i78 ]
  %loop_end.i52 = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph140, i64 %pivot_pos.sroa.0.0.i45
  %_4790.i53 = icmp ult ptr %state.sroa.9.1.lcssa.i50, %loop_end.i52
  br i1 %_4790.i53, label %bb18.i69.preheader, label %bb21.i54

bb18.i69.preheader:                               ; preds = %bb16.i48
  %_3.i.i.i.i55.i = load i32, ptr %src, align 4, !alias.scope !1011, !noalias !1020, !noundef !3
  br label %bb18.i69

bb21.i54:                                         ; preds = %bb18.i69, %bb16.i48
  %state.sroa.27.2.lcssa.i55 = phi i64 [ %state.sroa.27.1.lcssa.i49, %bb16.i48 ], [ %91, %bb18.i69 ]
  %state.sroa.9.2.lcssa.i56 = phi ptr [ %state.sroa.9.1.lcssa.i50, %bb16.i48 ], [ %_9.i64.i76, %bb18.i69 ]
  %state.sroa.43.2.lcssa.i57 = phi ptr [ %state.sroa.43.1.lcssa.i51, %bb16.i48 ], [ %90, %bb18.i69 ]
  %_55.i58 = icmp eq i64 %pivot_pos.sroa.0.0.i45, %v.sroa.16.0132
  br i1 %_55.i58, label %bb22.i62, label %bb23.i59

bb18.i69:                                         ; preds = %bb18.i69.preheader, %bb18.i69
  %state.sroa.43.293.i70 = phi ptr [ %90, %bb18.i69 ], [ %state.sroa.43.1.lcssa.i51, %bb18.i69.preheader ]
  %state.sroa.9.292.i71 = phi ptr [ %_9.i64.i76, %bb18.i69 ], [ %state.sroa.9.1.lcssa.i50, %bb18.i69.preheader ]
  %state.sroa.27.291.i72 = phi i64 [ %91, %bb18.i69 ], [ %state.sroa.27.1.lcssa.i49, %bb18.i69.preheader ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1025)
  call void @llvm.experimental.noalias.scope.decl(metadata !1026)
  call void @llvm.experimental.noalias.scope.decl(metadata !1027)
  call void @llvm.experimental.noalias.scope.decl(metadata !1028)
  call void @llvm.experimental.noalias.scope.decl(metadata !1029)
  call void @llvm.experimental.noalias.scope.decl(metadata !1030)
  call void @llvm.experimental.noalias.scope.decl(metadata !1031)
  call void @llvm.experimental.noalias.scope.decl(metadata !1032)
  %_4.i.i.i.i56.i = load i32, ptr %state.sroa.9.292.i71, align 4, !alias.scope !1033, !noalias !1034, !noundef !3
  %_0.i.i57.i = icmp sge i32 %_3.i.i.i.i55.i, %_4.i.i.i.i56.i
  %90 = getelementptr inbounds i8, ptr %state.sroa.43.293.i70, i64 -4
  %dst_base.sroa.0.0.i59.i73 = select i1 %_0.i.i57.i, ptr %scratch.0, ptr %90
  %dst.i61.i74 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59.i73, i64 %state.sroa.27.291.i72
  store i32 %_4.i.i.i.i56.i, ptr %dst.i61.i74, align 4, !alias.scope !931, !noalias !1035
  %_8.i63.i75 = zext i1 %_0.i.i57.i to i64
  %91 = add i64 %state.sroa.27.291.i72, %_8.i63.i75
  %_9.i64.i76 = getelementptr inbounds nuw i8, ptr %state.sroa.9.292.i71, i64 4
  %_47.i77 = icmp ult ptr %_9.i64.i76, %loop_end.i52
  br i1 %_47.i77, label %bb18.i69, label %bb21.i54

bb23.i59:                                         ; preds = %bb21.i54
  %92 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa.i57, i64 -4
  %dst.i68.i60 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %state.sroa.27.2.lcssa.i55
  %93 = load i32, ptr %state.sroa.9.2.lcssa.i56, align 4, !alias.scope !928, !noalias !1038
  store i32 %93, ptr %dst.i68.i60, align 4, !alias.scope !931, !noalias !1041
  %94 = add i64 %state.sroa.27.2.lcssa.i55, 1
  %_9.i70.i61 = getelementptr inbounds nuw i8, ptr %state.sroa.9.2.lcssa.i56, i64 4
  br label %bb3.i41

bb22.i62:                                         ; preds = %bb21.i54
  %95 = shl i64 %state.sroa.27.2.lcssa.i55, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.sroa.0.0.ph140, ptr nonnull align 4 %scratch.0, i64 %95, i1 false), !alias.scope !1042
  %_63.i63 = sub i64 %v.sroa.16.0132, %state.sroa.27.2.lcssa.i55
  %_9797.not.i64 = icmp eq i64 %v.sroa.16.0132, %state.sroa.27.2.lcssa.i55
  br i1 %_9797.not.i64, label %bb3.thread, label %bb42.lr.ph.i65

bb42.lr.ph.i65:                                   ; preds = %bb22.i62
  %96 = getelementptr i32, ptr %v.sroa.0.0.ph140, i64 %state.sroa.27.2.lcssa.i55
  %min.iters.check = icmp ult i64 %_63.i63, 8
  br i1 %min.iters.check, label %bb42.i66.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb42.lr.ph.i65
  %n.vec = and i64 %_63.i63, -8
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %97 = getelementptr i32, ptr %96, i64 %index
  %98 = xor i64 %index, -1
  %99 = getelementptr i32, ptr %_86.i40, i64 %98
  %100 = getelementptr i8, ptr %99, i64 -12
  %101 = getelementptr i8, ptr %99, i64 -28
  %wide.load = load <4 x i32>, ptr %100, align 4, !alias.scope !931, !noalias !928
  %reverse = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %wide.load262 = load <4 x i32>, ptr %101, align 4, !alias.scope !931, !noalias !928
  %reverse263 = shufflevector <4 x i32> %wide.load262, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %102 = getelementptr i8, ptr %97, i64 16
  store <4 x i32> %reverse, ptr %97, align 4, !alias.scope !928, !noalias !931
  store <4 x i32> %reverse263, ptr %102, align 4, !alias.scope !928, !noalias !931
  %index.next = add nuw i64 %index, 8
  %103 = icmp eq i64 %index.next, %n.vec
  br i1 %103, label %middle.block, label %vector.body, !llvm.loop !1043

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %_63.i63, %n.vec
  br i1 %cmp.n, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h1c1ce6d4491c2768E.exit, label %bb42.i66.preheader

bb42.i66.preheader:                               ; preds = %bb42.lr.ph.i65, %middle.block
  %iter.sroa.0.098.i67.ph = phi i64 [ 0, %bb42.lr.ph.i65 ], [ %n.vec, %middle.block ]
  br label %bb42.i66

bb42.i66:                                         ; preds = %bb42.i66.preheader, %bb42.i66
  %iter.sroa.0.098.i67 = phi i64 [ %104, %bb42.i66 ], [ %iter.sroa.0.098.i67.ph, %bb42.i66.preheader ]
  %104 = add nuw i64 %iter.sroa.0.098.i67, 1
  %105 = getelementptr i32, ptr %96, i64 %iter.sroa.0.098.i67
  %106 = xor i64 %iter.sroa.0.098.i67, -1
  %107 = getelementptr i32, ptr %_86.i40, i64 %106
  %108 = load i32, ptr %107, align 4, !alias.scope !931, !noalias !928
  store i32 %108, ptr %105, align 4, !alias.scope !928, !noalias !931
  %exitcond.not.i68 = icmp eq i64 %104, %_63.i63
  br i1 %exitcond.not.i68, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h1c1ce6d4491c2768E.exit, label %bb42.i66, !llvm.loop !1044

_ZN4core5slice4sort6stable9quicksort16stable_partition17h1c1ce6d4491c2768E.exit: ; preds = %bb42.i66, %middle.block
  %_47 = icmp ugt i64 %state.sroa.27.2.lcssa.i55, %v.sroa.16.0132
  br i1 %_47, label %bb27, label %bb28, !prof !923

bb3.thread:                                       ; preds = %bb22.i62
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  br label %bb22

bb28:                                             ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h1c1ce6d4491c2768E.exit
  %_54 = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph140, i64 %state.sroa.27.2.lcssa.i55
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_8130 = icmp ult i64 %_63.i63, 33
  br i1 %_8130, label %bb3, label %bb5.lr.ph

bb27:                                             ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h1c1ce6d4491c2768E.exit
; call core::slice::index::slice_index_fail
  call void @_ZN4core5slice5index16slice_index_fail17h62807bcaa490c9c1E(i64 noundef %state.sroa.27.2.lcssa.i55, i64 noundef %v.sroa.16.0132, i64 noundef %v.sroa.16.0132, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_0766b232215672ee1bd2195fdb153938) #18
  unreachable

bb22:                                             ; preds = %bb3.thread, %bb9.i.i, %bb3, %bb6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef range(i8 -1, 2) i8 @cmpfunc(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %a, ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %b) unnamed_addr #3 {
start:
  %_3 = load i32, ptr %a, align 4, !noundef !3
  %_4 = load i32, ptr %b, align 4, !noundef !3
  %_0 = tail call i8 @llvm.scmp.i8.i32(i32 %_3, i32 %_4)
  ret i8 %_0
}

; Function Attrs: nonlazybind uwtable
define noundef range(i32 -1, 3) i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #0 {
start:
  %args = alloca [16 x i8], align 8
  %_32 = alloca [16 x i8], align 8
  %arr = alloca [8 x i8], align 8
  store i64 %0, ptr %arr, align 8
  %iter2 = add i32 %n, -1
  %_4428 = icmp sgt i32 %iter2, 0
  br i1 %_4428, label %bb21.lr.ph, label %bb16

bb21.lr.ph:                                       ; preds = %start
  %_5121 = icmp sgt i32 %n, 1
  br i1 %_5121, label %bb7.peel, label %panic

bb22:                                             ; preds = %bb7.peel
  br i1 %_19.peel, label %bb30, label %bb16

bb16:                                             ; preds = %start, %bb22
; call std::io::stdio::_print
  tail call void @_ZN3std2io5stdio6_print17hba8f5eda1e4e495eE(ptr noundef nonnull @alloc_e35ef0db3ff0e2e52d9de27516a202e9, ptr noundef nonnull inttoptr (i64 35 to ptr))
  br label %bb20

bb30:                                             ; preds = %bb22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_32)
  %_39 = zext nneg i32 %spec.select to i64
  store ptr %arr, ptr %_32, align 8
  %1 = getelementptr inbounds nuw i8, ptr %_32, i64 8
  store i64 %_39, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %args)
  store ptr %_32, ptr %args, align 8
  %_42.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %args, i64 8
  store ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hc1af96bc2d4cab3fE", ptr %_42.sroa.4.0..sroa_idx, align 8
; call std::io::stdio::_print
  call void @_ZN3std2io5stdio6_print17hba8f5eda1e4e495eE(ptr noundef nonnull @alloc_61247b90e1706a3f65e71312b599d3d1, ptr noundef nonnull %args)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %args)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_32)
  br label %bb20

bb20:                                             ; preds = %bb16, %bb30
  %maxsize.sroa.0.0.lcssa54 = phi i32 [ -1, %bb16 ], [ %spec.select, %bb30 ]
  ret i32 %maxsize.sroa.0.0.lcssa54

bb7.peel:                                         ; preds = %bb21.lr.ph
  %2 = and i64 %0, 4294967295
  %_8 = icmp eq i64 %2, 0
  %_51.not = icmp eq i32 %n, 2
  %_15.peel = icmp ult i64 %0, 4294967296
  %_19.peel = xor i1 %_8, %_15.peel
  %spec.select = select i1 %_19.peel, i32 2, i32 -1
  br i1 %_51.not, label %bb22, label %panic3

panic:                                            ; preds = %bb21.lr.ph
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_9a773fcc3e883de64111d3dc1931b030) #18
  unreachable

panic3:                                           ; preds = %bb7.peel
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_ba62de7ca345cedcea20b56148fe58ba) #18
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef range(i64 0, 2305843009213693952) i64 @len(ptr noalias noundef nonnull readonly align 4 captures(none) %arr.0, i64 noundef returned range(i64 0, 2305843009213693952) %arr.1) unnamed_addr #4 {
start:
  ret i64 %arr.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef i32 @max(i32 noundef %x, i32 noundef %y) unnamed_addr #4 {
start:
  %x.y = tail call i32 @llvm.smax.i32(i32 %x, i32 %y)
  ret i32 %x.y
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef i32 @min(i32 noundef %x, i32 noundef %y) unnamed_addr #4 {
start:
  %x.y = tail call i32 @llvm.smin.i32(i32 %x, i32 %y)
  ret i32 %x.y
}

; Function Attrs: nonlazybind uwtable
define void @sort(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %compare.i = alloca [0 x i8], align 1
  %is_less.i.i = alloca [8 x i8], align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1045)
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %compare.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1048)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !1045
  store ptr %compare.i, ptr %is_less.i.i, align 8, !noalias !1051
  %b.i.i = icmp samesign ult i64 %arr.1, 2
  br i1 %b.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17ha8832592c6732141E.exit", label %bb7.i.i, !prof !1053

bb7.i.i:                                          ; preds = %start
  %b1.i.i = icmp samesign ult i64 %arr.1, 21
  br i1 %b1.i.i, label %bb9.i.i, label %bb10.i.i, !prof !1053

bb10.i.i:                                         ; preds = %bb7.i.i
; call core::slice::sort::stable::driftsort_main
  call void @_ZN4core5slice4sort6stable14driftsort_main17hbdd5e903be875fcdE(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less.i.i)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17ha8832592c6732141E.exit"

bb9.i.i:                                          ; preds = %bb7.i.i
  %v_end.idx.i.i.i = shl nuw nsw i64 %arr.1, 2
  %v_end.i.i.i = getelementptr inbounds nuw i8, ptr %arr.0, i64 %v_end.idx.i.i.i
  %tail.sroa.0.01.i.i.i = getelementptr inbounds nuw i8, ptr %arr.0, i64 4
  %0 = and i64 %arr.1, 1
  %lcmp.mod.not.not = icmp eq i64 %0, 0
  br i1 %lcmp.mod.not.not, label %bb5.i.i.i.prol, label %bb5.i.i.i.prol.loopexit

bb5.i.i.i.prol:                                   ; preds = %bb9.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1054)
  call void @llvm.experimental.noalias.scope.decl(metadata !1057)
  call void @llvm.experimental.noalias.scope.decl(metadata !1059)
  call void @llvm.experimental.noalias.scope.decl(metadata !1062)
  call void @llvm.experimental.noalias.scope.decl(metadata !1064)
  call void @llvm.experimental.noalias.scope.decl(metadata !1067)
  %_3.i.i.i.i.i.i.i.prol = load i32, ptr %tail.sroa.0.01.i.i.i, align 4, !alias.scope !1069, !noalias !1072, !noundef !3
  %_4.i.i.i.i.i.i.i.prol = load i32, ptr %arr.0, align 4, !alias.scope !1073, !noalias !1074, !noundef !3
  %_0.i.i.i.i.i.prol = icmp slt i32 %_3.i.i.i.i.i.i.i.prol, %_4.i.i.i.i.i.i.i.prol
  br i1 %_0.i.i.i.i.i.prol, label %bb4.i.i.i.i.prol, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h023798a31a73eaceE.exit.i.i.i.prol

bb4.i.i.i.i.prol:                                 ; preds = %bb5.i.i.i.prol, %bb7.i.i.i.i.prol
  %1 = phi i32 [ %_4.i.i.i2.i.i.i.i.prol, %bb7.i.i.i.i.prol ], [ %_4.i.i.i.i.i.i.i.prol, %bb5.i.i.i.prol ]
  %gap_guard.sroa.5.0.i.i.i.i.prol = phi ptr [ %sift.sroa.0.0.i.i.i.i.prol, %bb7.i.i.i.i.prol ], [ %tail.sroa.0.01.i.i.i, %bb5.i.i.i.prol ]
  %sift.sroa.0.0.i.i.i.i.prol = phi ptr [ %2, %bb7.i.i.i.i.prol ], [ %arr.0, %bb5.i.i.i.prol ]
  store i32 %1, ptr %gap_guard.sroa.5.0.i.i.i.i.prol, align 4, !alias.scope !1075, !noalias !1076
  %_18.i.i.i.i.prol = icmp eq ptr %sift.sroa.0.0.i.i.i.i.prol, %arr.0
  br i1 %_18.i.i.i.i.prol, label %bb10.i.i.i.i.prol, label %bb7.i.i.i.i.prol

bb7.i.i.i.i.prol:                                 ; preds = %bb4.i.i.i.i.prol
  %2 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.i.prol, i64 -4
  %_4.i.i.i2.i.i.i.i.prol = load i32, ptr %2, align 4, !alias.scope !1077, !noalias !1084, !noundef !3
  %_0.i3.i.i.i.i.prol = icmp slt i32 %_3.i.i.i.i.i.i.i.prol, %_4.i.i.i2.i.i.i.i.prol
  br i1 %_0.i3.i.i.i.i.prol, label %bb4.i.i.i.i.prol, label %bb10.i.i.i.i.prol

bb10.i.i.i.i.prol:                                ; preds = %bb7.i.i.i.i.prol, %bb4.i.i.i.i.prol
  %sift.sroa.0.0.i.lcssa.i.i.i.prol = phi ptr [ %sift.sroa.0.0.i.i.i.i.prol, %bb7.i.i.i.i.prol ], [ %arr.0, %bb4.i.i.i.i.prol ]
  store i32 %_3.i.i.i.i.i.i.i.prol, ptr %sift.sroa.0.0.i.lcssa.i.i.i.prol, align 4, !alias.scope !1075, !noalias !1088
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h023798a31a73eaceE.exit.i.i.i.prol

_ZN4core5slice4sort6shared9smallsort11insert_tail17h023798a31a73eaceE.exit.i.i.i.prol: ; preds = %bb10.i.i.i.i.prol, %bb5.i.i.i.prol
  %tail.sroa.0.0.i.i.i.prol = getelementptr inbounds nuw i8, ptr %arr.0, i64 8
  br label %bb5.i.i.i.prol.loopexit

bb5.i.i.i.prol.loopexit:                          ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h023798a31a73eaceE.exit.i.i.i.prol, %bb9.i.i
  %tail.sroa.0.04.i.i.i.unr = phi ptr [ %tail.sroa.0.01.i.i.i, %bb9.i.i ], [ %tail.sroa.0.0.i.i.i.prol, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h023798a31a73eaceE.exit.i.i.i.prol ]
  %v.0.pn3.i.i.i.unr = phi ptr [ %arr.0, %bb9.i.i ], [ %tail.sroa.0.01.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h023798a31a73eaceE.exit.i.i.i.prol ]
  %3 = icmp eq i64 %arr.1, 2
  br i1 %3, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17ha8832592c6732141E.exit", label %bb5.i.i.i

bb5.i.i.i:                                        ; preds = %bb5.i.i.i.prol.loopexit, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h023798a31a73eaceE.exit.i.i.i.1
  %tail.sroa.0.04.i.i.i = phi ptr [ %tail.sroa.0.0.i.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h023798a31a73eaceE.exit.i.i.i.1 ], [ %tail.sroa.0.04.i.i.i.unr, %bb5.i.i.i.prol.loopexit ]
  %v.0.pn3.i.i.i = phi ptr [ %tail.sroa.0.0.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h023798a31a73eaceE.exit.i.i.i.1 ], [ %v.0.pn3.i.i.i.unr, %bb5.i.i.i.prol.loopexit ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1054)
  call void @llvm.experimental.noalias.scope.decl(metadata !1057)
  call void @llvm.experimental.noalias.scope.decl(metadata !1059)
  call void @llvm.experimental.noalias.scope.decl(metadata !1062)
  call void @llvm.experimental.noalias.scope.decl(metadata !1064)
  call void @llvm.experimental.noalias.scope.decl(metadata !1067)
  %_3.i.i.i.i.i.i.i = load i32, ptr %tail.sroa.0.04.i.i.i, align 4, !alias.scope !1069, !noalias !1072, !noundef !3
  %_4.i.i.i.i.i.i.i = load i32, ptr %v.0.pn3.i.i.i, align 4, !alias.scope !1073, !noalias !1074, !noundef !3
  %_0.i.i.i.i.i = icmp slt i32 %_3.i.i.i.i.i.i.i, %_4.i.i.i.i.i.i.i
  br i1 %_0.i.i.i.i.i, label %bb4.i.i.i.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h023798a31a73eaceE.exit.i.i.i

bb4.i.i.i.i:                                      ; preds = %bb5.i.i.i, %bb7.i.i.i.i
  %4 = phi i32 [ %_4.i.i.i2.i.i.i.i, %bb7.i.i.i.i ], [ %_4.i.i.i.i.i.i.i, %bb5.i.i.i ]
  %gap_guard.sroa.5.0.i.i.i.i = phi ptr [ %sift.sroa.0.0.i.i.i.i, %bb7.i.i.i.i ], [ %tail.sroa.0.04.i.i.i, %bb5.i.i.i ]
  %sift.sroa.0.0.i.i.i.i = phi ptr [ %5, %bb7.i.i.i.i ], [ %v.0.pn3.i.i.i, %bb5.i.i.i ]
  store i32 %4, ptr %gap_guard.sroa.5.0.i.i.i.i, align 4, !alias.scope !1075, !noalias !1076
  %_18.i.i.i.i = icmp eq ptr %sift.sroa.0.0.i.i.i.i, %arr.0
  br i1 %_18.i.i.i.i, label %bb10.i.i.i.i, label %bb7.i.i.i.i

bb7.i.i.i.i:                                      ; preds = %bb4.i.i.i.i
  %5 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.i, i64 -4
  %_4.i.i.i2.i.i.i.i = load i32, ptr %5, align 4, !alias.scope !1077, !noalias !1084, !noundef !3
  %_0.i3.i.i.i.i = icmp slt i32 %_3.i.i.i.i.i.i.i, %_4.i.i.i2.i.i.i.i
  br i1 %_0.i3.i.i.i.i, label %bb4.i.i.i.i, label %bb10.i.i.i.i

bb10.i.i.i.i:                                     ; preds = %bb7.i.i.i.i, %bb4.i.i.i.i
  %sift.sroa.0.0.i.lcssa.i.i.i = phi ptr [ %sift.sroa.0.0.i.i.i.i, %bb7.i.i.i.i ], [ %arr.0, %bb4.i.i.i.i ]
  store i32 %_3.i.i.i.i.i.i.i, ptr %sift.sroa.0.0.i.lcssa.i.i.i, align 4, !alias.scope !1075, !noalias !1088
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h023798a31a73eaceE.exit.i.i.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h023798a31a73eaceE.exit.i.i.i: ; preds = %bb10.i.i.i.i, %bb5.i.i.i
  %tail.sroa.0.0.i.i.i = getelementptr inbounds nuw i8, ptr %tail.sroa.0.04.i.i.i, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !1093)
  call void @llvm.experimental.noalias.scope.decl(metadata !1095)
  call void @llvm.experimental.noalias.scope.decl(metadata !1097)
  call void @llvm.experimental.noalias.scope.decl(metadata !1099)
  call void @llvm.experimental.noalias.scope.decl(metadata !1101)
  call void @llvm.experimental.noalias.scope.decl(metadata !1103)
  %_3.i.i.i.i.i.i.i.1 = load i32, ptr %tail.sroa.0.0.i.i.i, align 4, !alias.scope !1105, !noalias !1106, !noundef !3
  %_4.i.i.i.i.i.i.i.1 = load i32, ptr %tail.sroa.0.04.i.i.i, align 4, !alias.scope !1107, !noalias !1108, !noundef !3
  %_0.i.i.i.i.i.1 = icmp slt i32 %_3.i.i.i.i.i.i.i.1, %_4.i.i.i.i.i.i.i.1
  br i1 %_0.i.i.i.i.i.1, label %bb4.i.i.i.i.1, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h023798a31a73eaceE.exit.i.i.i.1

bb4.i.i.i.i.1:                                    ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h023798a31a73eaceE.exit.i.i.i, %bb7.i.i.i.i.1
  %6 = phi i32 [ %_4.i.i.i2.i.i.i.i.1, %bb7.i.i.i.i.1 ], [ %_4.i.i.i.i.i.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h023798a31a73eaceE.exit.i.i.i ]
  %gap_guard.sroa.5.0.i.i.i.i.1 = phi ptr [ %sift.sroa.0.0.i.i.i.i.1, %bb7.i.i.i.i.1 ], [ %tail.sroa.0.0.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h023798a31a73eaceE.exit.i.i.i ]
  %sift.sroa.0.0.i.i.i.i.1 = phi ptr [ %7, %bb7.i.i.i.i.1 ], [ %tail.sroa.0.04.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h023798a31a73eaceE.exit.i.i.i ]
  store i32 %6, ptr %gap_guard.sroa.5.0.i.i.i.i.1, align 4, !alias.scope !1075, !noalias !1076
  %_18.i.i.i.i.1 = icmp eq ptr %sift.sroa.0.0.i.i.i.i.1, %arr.0
  br i1 %_18.i.i.i.i.1, label %bb10.i.i.i.i.1, label %bb7.i.i.i.i.1

bb7.i.i.i.i.1:                                    ; preds = %bb4.i.i.i.i.1
  %7 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.i.1, i64 -4
  %_4.i.i.i2.i.i.i.i.1 = load i32, ptr %7, align 4, !alias.scope !1077, !noalias !1084, !noundef !3
  %_0.i3.i.i.i.i.1 = icmp slt i32 %_3.i.i.i.i.i.i.i.1, %_4.i.i.i2.i.i.i.i.1
  br i1 %_0.i3.i.i.i.i.1, label %bb4.i.i.i.i.1, label %bb10.i.i.i.i.1

bb10.i.i.i.i.1:                                   ; preds = %bb7.i.i.i.i.1, %bb4.i.i.i.i.1
  %sift.sroa.0.0.i.lcssa.i.i.i.1 = phi ptr [ %sift.sroa.0.0.i.i.i.i.1, %bb7.i.i.i.i.1 ], [ %arr.0, %bb4.i.i.i.i.1 ]
  store i32 %_3.i.i.i.i.i.i.i.1, ptr %sift.sroa.0.0.i.lcssa.i.i.i.1, align 4, !alias.scope !1075, !noalias !1088
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h023798a31a73eaceE.exit.i.i.i.1

_ZN4core5slice4sort6shared9smallsort11insert_tail17h023798a31a73eaceE.exit.i.i.i.1: ; preds = %bb10.i.i.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h023798a31a73eaceE.exit.i.i.i
  %tail.sroa.0.0.i.i.i.1 = getelementptr inbounds nuw i8, ptr %tail.sroa.0.04.i.i.i, i64 8
  %_11.not.i.i.i.1 = icmp eq ptr %tail.sroa.0.0.i.i.i.1, %v_end.i.i.i
  br i1 %_11.not.i.i.i.1, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17ha8832592c6732141E.exit", label %bb5.i.i.i

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17ha8832592c6732141E.exit": ; preds = %bb5.i.i.i.prol.loopexit, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h023798a31a73eaceE.exit.i.i.i.1, %start, %bb10.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !1045
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %compare.i)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #5

; core::fmt::Formatter::debug_list
; Function Attrs: nonlazybind uwtable
declare void @_ZN4core3fmt9Formatter10debug_list17h86f8e830c3b2e8a1E(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #5

; core::fmt::builders::DebugList::finish
; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_ZN4core3fmt8builders9DebugList6finish17h71e8b1e747a3e8ffE(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #7

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

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #8

; core::panicking::panic_fmt
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking9panic_fmt17ha4414e4328fe24a0E(ptr noundef nonnull, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; core::panicking::panic_bounds_check
; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #11

; core::slice::sort::shared::smallsort::panic_on_ord_violation
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() unnamed_addr #9

; core::slice::index::slice_index_fail
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core5slice5index16slice_index_fail17h62807bcaa490c9c1E(i64 noundef, i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #12

; core::slice::sort::stable::drift::sqrt_approx
; Function Attrs: nonlazybind uwtable
declare noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h72a4dc1ae46294f4E(i64 noundef) unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #12

; __rustc::__rust_no_alloc_shim_is_unstable_v2
; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #7

; __rustc::__rust_alloc
; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef) unnamed_addr #13

; alloc::raw_vec::handle_error
; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #14

; __rustc::__rust_dealloc
; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr allocptr noundef, i64 noundef, i64 noundef) unnamed_addr #15

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.scmp.i8.i32(i32, i32) #12

; std::io::stdio::_print
; Function Attrs: nonlazybind uwtable
declare void @_ZN3std2io5stdio6_print17hba8f5eda1e4e495eE(ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #17

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #12 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsdBezzDwma51_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { noinline noreturn }
attributes #19 = { nounwind }
attributes #20 = { noreturn }
attributes #21 = { noinline }

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
!19 = distinct !{!19, !20, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a"}
!20 = distinct !{!20, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE"}
!21 = !{!22}
!22 = distinct !{!22, !20, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b"}
!23 = !{!24}
!24 = distinct !{!24, !25, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0"}
!25 = distinct !{!25, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE"}
!26 = !{!27}
!27 = distinct !{!27, !28, !"_ZN4core5slice4sort6shared5pivot7median317hf12ce116837ecf40E: %c"}
!28 = distinct !{!28, !"_ZN4core5slice4sort6shared5pivot7median317hf12ce116837ecf40E"}
!29 = !{!30}
!30 = distinct !{!30, !25, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1"}
!31 = !{!32}
!32 = distinct !{!32, !33, !"cmpfunc: %a"}
!33 = distinct !{!33, !"cmpfunc"}
!34 = !{!35}
!35 = distinct !{!35, !33, !"cmpfunc: %b"}
!36 = !{!32, !24, !19}
!37 = !{!35, !30, !22, !27}
!38 = !{!35, !30, !22}
!39 = !{!32, !24, !19, !27}
!40 = !{!41, !43, !45}
!41 = distinct !{!41, !42, !"cmpfunc: %b"}
!42 = distinct !{!42, !"cmpfunc"}
!43 = distinct !{!43, !44, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1"}
!44 = distinct !{!44, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE"}
!45 = distinct !{!45, !46, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b"}
!46 = distinct !{!46, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE"}
!47 = !{!48, !49, !50}
!48 = distinct !{!48, !42, !"cmpfunc: %a"}
!49 = distinct !{!49, !44, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0"}
!50 = distinct !{!50, !46, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a"}
!51 = !{!52}
!52 = distinct !{!52, !53, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a"}
!53 = distinct !{!53, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE"}
!54 = !{!55}
!55 = distinct !{!55, !53, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b"}
!56 = !{!57}
!57 = distinct !{!57, !58, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0"}
!58 = distinct !{!58, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE"}
!59 = !{!60}
!60 = distinct !{!60, !58, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1"}
!61 = !{!62}
!62 = distinct !{!62, !63, !"cmpfunc: %a"}
!63 = distinct !{!63, !"cmpfunc"}
!64 = !{!65}
!65 = distinct !{!65, !63, !"cmpfunc: %b"}
!66 = !{!62, !57, !52}
!67 = !{!65, !60, !55}
!68 = !{!69}
!69 = distinct !{!69, !70, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a"}
!70 = distinct !{!70, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE"}
!71 = !{!72}
!72 = distinct !{!72, !70, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b"}
!73 = !{!74}
!74 = distinct !{!74, !75, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0"}
!75 = distinct !{!75, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE"}
!76 = !{!77}
!77 = distinct !{!77, !75, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1"}
!78 = !{!79}
!79 = distinct !{!79, !80, !"cmpfunc: %a"}
!80 = distinct !{!80, !"cmpfunc"}
!81 = !{!82}
!82 = distinct !{!82, !80, !"cmpfunc: %b"}
!83 = !{!79, !74, !69}
!84 = !{!82, !77, !72}
!85 = !{!86}
!86 = distinct !{!86, !87, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a"}
!87 = distinct !{!87, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE"}
!88 = !{!89}
!89 = distinct !{!89, !87, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b"}
!90 = !{!91}
!91 = distinct !{!91, !92, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0"}
!92 = distinct !{!92, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE"}
!93 = !{!94}
!94 = distinct !{!94, !92, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1"}
!95 = !{!96}
!96 = distinct !{!96, !97, !"cmpfunc: %a"}
!97 = distinct !{!97, !"cmpfunc"}
!98 = !{!99}
!99 = distinct !{!99, !97, !"cmpfunc: %b"}
!100 = !{!96, !91, !86}
!101 = !{!99, !94, !89}
!102 = !{!103}
!103 = distinct !{!103, !104, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a"}
!104 = distinct !{!104, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE"}
!105 = !{!106}
!106 = distinct !{!106, !104, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b"}
!107 = !{!108}
!108 = distinct !{!108, !109, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0"}
!109 = distinct !{!109, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE"}
!110 = !{!111}
!111 = distinct !{!111, !109, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1"}
!112 = !{!113}
!113 = distinct !{!113, !114, !"cmpfunc: %a"}
!114 = distinct !{!114, !"cmpfunc"}
!115 = !{!116}
!116 = distinct !{!116, !114, !"cmpfunc: %b"}
!117 = !{!113, !108, !103}
!118 = !{!116, !111, !106}
!119 = !{!120}
!120 = distinct !{!120, !121, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a"}
!121 = distinct !{!121, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE"}
!122 = !{!123}
!123 = distinct !{!123, !121, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b"}
!124 = !{!125}
!125 = distinct !{!125, !126, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0"}
!126 = distinct !{!126, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE"}
!127 = !{!128}
!128 = distinct !{!128, !126, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1"}
!129 = !{!130}
!130 = distinct !{!130, !131, !"cmpfunc: %a"}
!131 = distinct !{!131, !"cmpfunc"}
!132 = !{!133}
!133 = distinct !{!133, !131, !"cmpfunc: %b"}
!134 = !{!130, !125, !120}
!135 = !{!133, !128, !123}
!136 = !{!137}
!137 = distinct !{!137, !138, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a"}
!138 = distinct !{!138, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE"}
!139 = !{!140}
!140 = distinct !{!140, !138, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b"}
!141 = !{!142}
!142 = distinct !{!142, !143, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0"}
!143 = distinct !{!143, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE"}
!144 = !{!145}
!145 = distinct !{!145, !143, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1"}
!146 = !{!147}
!147 = distinct !{!147, !148, !"cmpfunc: %a"}
!148 = distinct !{!148, !"cmpfunc"}
!149 = !{!150}
!150 = distinct !{!150, !148, !"cmpfunc: %b"}
!151 = !{!147, !142, !137}
!152 = !{!150, !145, !140}
!153 = !{!154}
!154 = distinct !{!154, !155, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a"}
!155 = distinct !{!155, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE"}
!156 = !{!157}
!157 = distinct !{!157, !155, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b"}
!158 = !{!159}
!159 = distinct !{!159, !160, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0"}
!160 = distinct !{!160, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE"}
!161 = !{!162}
!162 = distinct !{!162, !160, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1"}
!163 = !{!164}
!164 = distinct !{!164, !165, !"cmpfunc: %a"}
!165 = distinct !{!165, !"cmpfunc"}
!166 = !{!167}
!167 = distinct !{!167, !165, !"cmpfunc: %b"}
!168 = !{!164, !159, !154}
!169 = !{!167, !162, !157}
!170 = !{!171}
!171 = distinct !{!171, !172, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a"}
!172 = distinct !{!172, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE"}
!173 = !{!174}
!174 = distinct !{!174, !172, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b"}
!175 = !{!176}
!176 = distinct !{!176, !177, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0"}
!177 = distinct !{!177, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE"}
!178 = !{!179}
!179 = distinct !{!179, !177, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1"}
!180 = !{!181}
!181 = distinct !{!181, !182, !"cmpfunc: %a"}
!182 = distinct !{!182, !"cmpfunc"}
!183 = !{!184}
!184 = distinct !{!184, !182, !"cmpfunc: %b"}
!185 = !{!181, !176, !171}
!186 = !{!184, !179, !174}
!187 = !{!188}
!188 = distinct !{!188, !189, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a"}
!189 = distinct !{!189, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE"}
!190 = !{!191}
!191 = distinct !{!191, !189, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b"}
!192 = !{!193}
!193 = distinct !{!193, !194, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0"}
!194 = distinct !{!194, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE"}
!195 = !{!196}
!196 = distinct !{!196, !194, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1"}
!197 = !{!198}
!198 = distinct !{!198, !199, !"cmpfunc: %a"}
!199 = distinct !{!199, !"cmpfunc"}
!200 = !{!201}
!201 = distinct !{!201, !199, !"cmpfunc: %b"}
!202 = !{!198, !193, !188}
!203 = !{!201, !196, !191}
!204 = !{!205}
!205 = distinct !{!205, !206, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a"}
!206 = distinct !{!206, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE"}
!207 = !{!208}
!208 = distinct !{!208, !206, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b"}
!209 = !{!210}
!210 = distinct !{!210, !211, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0"}
!211 = distinct !{!211, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE"}
!212 = !{!213}
!213 = distinct !{!213, !211, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1"}
!214 = !{!215}
!215 = distinct !{!215, !216, !"cmpfunc: %a"}
!216 = distinct !{!216, !"cmpfunc"}
!217 = !{!218}
!218 = distinct !{!218, !216, !"cmpfunc: %b"}
!219 = !{!215, !210, !205}
!220 = !{!218, !213, !208}
!221 = !{!222}
!222 = distinct !{!222, !223, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h467471a0d9a845c1E: %v.0"}
!223 = distinct !{!223, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h467471a0d9a845c1E"}
!224 = !{!225, !227, !229, !222}
!225 = distinct !{!225, !226, !"cmpfunc: %b"}
!226 = distinct !{!226, !"cmpfunc"}
!227 = distinct !{!227, !228, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1"}
!228 = distinct !{!228, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE"}
!229 = distinct !{!229, !230, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b"}
!230 = distinct !{!230, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE"}
!231 = !{!232, !233, !234, !235}
!232 = distinct !{!232, !226, !"cmpfunc: %a"}
!233 = distinct !{!233, !228, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0"}
!234 = distinct !{!234, !230, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a"}
!235 = distinct !{!235, !236, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h36e7daef282500b9E: %_0"}
!236 = distinct !{!236, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h36e7daef282500b9E"}
!237 = !{!235, !238, !222}
!238 = distinct !{!238, !236, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h36e7daef282500b9E: %is_less"}
!239 = !{!240, !242, !244, !222}
!240 = distinct !{!240, !241, !"cmpfunc: %b"}
!241 = distinct !{!241, !"cmpfunc"}
!242 = distinct !{!242, !243, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1"}
!243 = distinct !{!243, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE"}
!244 = distinct !{!244, !245, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b"}
!245 = distinct !{!245, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE"}
!246 = !{!247, !248, !249, !250}
!247 = distinct !{!247, !241, !"cmpfunc: %a"}
!248 = distinct !{!248, !243, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0"}
!249 = distinct !{!249, !245, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a"}
!250 = distinct !{!250, !251, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h4bc2352a39a620c2E: %_0"}
!251 = distinct !{!251, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h4bc2352a39a620c2E"}
!252 = !{!250, !253, !222}
!253 = distinct !{!253, !251, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h4bc2352a39a620c2E: %is_less"}
!254 = !{!255}
!255 = distinct !{!255, !230, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a:It1"}
!256 = !{!257}
!257 = distinct !{!257, !230, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b:It1"}
!258 = !{!259}
!259 = distinct !{!259, !228, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0:It1"}
!260 = !{!235}
!261 = !{!262}
!262 = distinct !{!262, !228, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1:It1"}
!263 = !{!264}
!264 = distinct !{!264, !226, !"cmpfunc: %a:It1"}
!265 = !{!266}
!266 = distinct !{!266, !226, !"cmpfunc: %b:It1"}
!267 = !{!264, !259, !255, !222}
!268 = !{!266, !262, !257, !235}
!269 = !{!266, !262, !257, !222}
!270 = !{!264, !259, !255, !235}
!271 = !{!272}
!272 = distinct !{!272, !245, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a:It1"}
!273 = !{!274}
!274 = distinct !{!274, !245, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b:It1"}
!275 = !{!276}
!276 = distinct !{!276, !243, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0:It1"}
!277 = !{!250}
!278 = !{!279}
!279 = distinct !{!279, !243, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1:It1"}
!280 = !{!281}
!281 = distinct !{!281, !241, !"cmpfunc: %a:It1"}
!282 = !{!283}
!283 = distinct !{!283, !241, !"cmpfunc: %b:It1"}
!284 = !{!281, !276, !272, !222}
!285 = !{!283, !279, !274, !250}
!286 = !{!283, !279, !274, !222}
!287 = !{!281, !276, !272, !250}
!288 = !{!289}
!289 = distinct !{!289, !230, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a:It2"}
!290 = !{!291}
!291 = distinct !{!291, !230, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b:It2"}
!292 = !{!293}
!293 = distinct !{!293, !228, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0:It2"}
!294 = !{!295}
!295 = distinct !{!295, !228, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1:It2"}
!296 = !{!297}
!297 = distinct !{!297, !226, !"cmpfunc: %a:It2"}
!298 = !{!299}
!299 = distinct !{!299, !226, !"cmpfunc: %b:It2"}
!300 = !{!297, !293, !289, !222}
!301 = !{!299, !295, !291, !235}
!302 = !{!299, !295, !291, !222}
!303 = !{!297, !293, !289, !235}
!304 = !{!305}
!305 = distinct !{!305, !245, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a:It2"}
!306 = !{!307}
!307 = distinct !{!307, !245, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b:It2"}
!308 = !{!309}
!309 = distinct !{!309, !243, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0:It2"}
!310 = !{!311}
!311 = distinct !{!311, !243, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1:It2"}
!312 = !{!313}
!313 = distinct !{!313, !241, !"cmpfunc: %a:It2"}
!314 = !{!315}
!315 = distinct !{!315, !241, !"cmpfunc: %b:It2"}
!316 = !{!313, !309, !305, !222}
!317 = !{!315, !311, !307, !250}
!318 = !{!315, !311, !307, !222}
!319 = !{!313, !309, !305, !250}
!320 = !{!321}
!321 = distinct !{!321, !230, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a:It3"}
!322 = !{!323}
!323 = distinct !{!323, !230, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b:It3"}
!324 = !{!325}
!325 = distinct !{!325, !228, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0:It3"}
!326 = !{!327}
!327 = distinct !{!327, !228, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1:It3"}
!328 = !{!329}
!329 = distinct !{!329, !226, !"cmpfunc: %a:It3"}
!330 = !{!331}
!331 = distinct !{!331, !226, !"cmpfunc: %b:It3"}
!332 = !{!329, !325, !321, !222}
!333 = !{!331, !327, !323, !235}
!334 = !{!331, !327, !323, !222}
!335 = !{!329, !325, !321, !235}
!336 = !{!337}
!337 = distinct !{!337, !245, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a:It3"}
!338 = !{!339}
!339 = distinct !{!339, !245, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b:It3"}
!340 = !{!341}
!341 = distinct !{!341, !243, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0:It3"}
!342 = !{!343}
!343 = distinct !{!343, !243, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1:It3"}
!344 = !{!345}
!345 = distinct !{!345, !241, !"cmpfunc: %a:It3"}
!346 = !{!347}
!347 = distinct !{!347, !241, !"cmpfunc: %b:It3"}
!348 = !{!345, !341, !337, !222}
!349 = !{!347, !343, !339, !250}
!350 = !{!347, !343, !339, !222}
!351 = !{!345, !341, !337, !250}
!352 = !{!"branch_weights", i32 4001, i32 4000000}
!353 = !{!"branch_weights", i32 2002, i32 2000}
!354 = !{!355, !357}
!355 = distinct !{!355, !356, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17he0447f5897af9e2cE: %_0"}
!356 = distinct !{!356, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17he0447f5897af9e2cE"}
!357 = distinct !{!357, !358, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17hccbf2b56117fc39aE: %_0"}
!358 = distinct !{!358, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17hccbf2b56117fc39aE"}
!359 = !{!360, !362, !364, !366}
!360 = distinct !{!360, !361, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h390c55f0d41e2da0E: %self"}
!361 = distinct !{!361, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h390c55f0d41e2da0E"}
!362 = distinct !{!362, !363, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h747bbec5aab1c7a4E: %self"}
!363 = distinct !{!363, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h747bbec5aab1c7a4E"}
!364 = distinct !{!364, !365, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17hb9cfb4a16082fd68E: %_1"}
!365 = distinct !{!365, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17hb9cfb4a16082fd68E"}
!366 = distinct !{!366, !367, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17he3cb08d3770d2088E: %_1"}
!367 = distinct !{!367, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17he3cb08d3770d2088E"}
!368 = !{!369, !371, !373, !375}
!369 = distinct !{!369, !370, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h390c55f0d41e2da0E: %self"}
!370 = distinct !{!370, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h390c55f0d41e2da0E"}
!371 = distinct !{!371, !372, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h747bbec5aab1c7a4E: %self"}
!372 = distinct !{!372, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h747bbec5aab1c7a4E"}
!373 = distinct !{!373, !374, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17hb9cfb4a16082fd68E: %_1"}
!374 = distinct !{!374, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17hb9cfb4a16082fd68E"}
!375 = distinct !{!375, !376, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17he3cb08d3770d2088E: %_1"}
!376 = distinct !{!376, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17he3cb08d3770d2088E"}
!377 = !{!378}
!378 = distinct !{!378, !379, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a"}
!379 = distinct !{!379, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE"}
!380 = !{!381}
!381 = distinct !{!381, !379, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b"}
!382 = !{!383}
!383 = distinct !{!383, !384, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0"}
!384 = distinct !{!384, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE"}
!385 = !{!386}
!386 = distinct !{!386, !387, !"_ZN4core5slice4sort6stable5drift10create_run17h4881f7c206ded8f9E: %scratch.0"}
!387 = distinct !{!387, !"_ZN4core5slice4sort6stable5drift10create_run17h4881f7c206ded8f9E"}
!388 = !{!389}
!389 = distinct !{!389, !384, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1"}
!390 = !{!391}
!391 = distinct !{!391, !392, !"cmpfunc: %a"}
!392 = distinct !{!392, !"cmpfunc"}
!393 = !{!394}
!394 = distinct !{!394, !392, !"cmpfunc: %b"}
!395 = !{!391, !383, !378}
!396 = !{!394, !389, !381, !386}
!397 = !{!394, !389, !381}
!398 = !{!391, !383, !378, !386}
!399 = !{!400, !402, !404}
!400 = distinct !{!400, !401, !"cmpfunc: %a"}
!401 = distinct !{!401, !"cmpfunc"}
!402 = distinct !{!402, !403, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0"}
!403 = distinct !{!403, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE"}
!404 = distinct !{!404, !405, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a"}
!405 = distinct !{!405, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE"}
!406 = !{!407, !408, !409, !386}
!407 = distinct !{!407, !401, !"cmpfunc: %b"}
!408 = distinct !{!408, !403, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1"}
!409 = distinct !{!409, !405, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b"}
!410 = !{!411, !413, !415}
!411 = distinct !{!411, !412, !"cmpfunc: %a"}
!412 = distinct !{!412, !"cmpfunc"}
!413 = distinct !{!413, !414, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0"}
!414 = distinct !{!414, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE"}
!415 = distinct !{!415, !416, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a"}
!416 = distinct !{!416, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE"}
!417 = !{!418, !419, !420, !386}
!418 = distinct !{!418, !412, !"cmpfunc: %b"}
!419 = distinct !{!419, !414, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1"}
!420 = distinct !{!420, !416, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b"}
!421 = !{!422}
!422 = distinct !{!422, !423, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17h2843b12fe950926bE: %a.0"}
!423 = distinct !{!423, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17h2843b12fe950926bE"}
!424 = !{!386, !425}
!425 = distinct !{!425, !387, !"_ZN4core5slice4sort6stable5drift10create_run17h4881f7c206ded8f9E: %is_less"}
!426 = !{!427}
!427 = distinct !{!427, !423, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17h2843b12fe950926bE: %b.0"}
!428 = !{!422, !429}
!429 = distinct !{!429, !430, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hb09d409c77950cdcE: %self.0"}
!430 = distinct !{!430, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hb09d409c77950cdcE"}
!431 = !{!427, !386, !425}
!432 = !{!427, !429}
!433 = !{!422, !386, !425}
!434 = distinct !{!434, !435, !436}
!435 = !{!"llvm.loop.isvectorized", i32 1}
!436 = !{!"llvm.loop.unroll.runtime.disable"}
!437 = distinct !{!437, !436, !435}
!438 = !{!439}
!439 = distinct !{!439, !440, !"_ZN4core5slice4sort6stable5merge5merge17h58c75b7ed0d5d8edE: %v.0"}
!440 = distinct !{!440, !"_ZN4core5slice4sort6stable5merge5merge17h58c75b7ed0d5d8edE"}
!441 = !{!442}
!442 = distinct !{!442, !440, !"_ZN4core5slice4sort6stable5merge5merge17h58c75b7ed0d5d8edE: %scratch.0"}
!443 = !{!439, !442}
!444 = !{!445}
!445 = distinct !{!445, !446, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a"}
!446 = distinct !{!446, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE"}
!447 = !{!448}
!448 = distinct !{!448, !446, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b"}
!449 = !{!450}
!450 = distinct !{!450, !451, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0"}
!451 = distinct !{!451, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE"}
!452 = !{!453}
!453 = distinct !{!453, !451, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1"}
!454 = !{!455}
!455 = distinct !{!455, !456, !"cmpfunc: %a"}
!456 = distinct !{!456, !"cmpfunc"}
!457 = !{!458}
!458 = distinct !{!458, !456, !"cmpfunc: %b"}
!459 = !{!455, !450, !445, !442}
!460 = !{!458, !453, !448, !461, !439}
!461 = distinct !{!461, !462, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h9ee9a77a5c34b7f0E: %self"}
!462 = distinct !{!462, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h9ee9a77a5c34b7f0E"}
!463 = !{!458, !453, !448, !439}
!464 = !{!455, !450, !445, !461, !442}
!465 = !{!461, !442}
!466 = !{!467}
!467 = distinct !{!467, !468, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a"}
!468 = distinct !{!468, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE"}
!469 = !{!470}
!470 = distinct !{!470, !468, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b"}
!471 = !{!472}
!472 = distinct !{!472, !473, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0"}
!473 = distinct !{!473, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE"}
!474 = !{!475}
!475 = distinct !{!475, !473, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1"}
!476 = !{!477}
!477 = distinct !{!477, !478, !"cmpfunc: %a"}
!478 = distinct !{!478, !"cmpfunc"}
!479 = !{!480}
!480 = distinct !{!480, !478, !"cmpfunc: %b"}
!481 = !{!477, !472, !467, !439}
!482 = !{!480, !475, !470, !483, !442}
!483 = distinct !{!483, !484, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h912ec597818e1622E: %self"}
!484 = distinct !{!484, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h912ec597818e1622E"}
!485 = !{!480, !475, !470, !442}
!486 = !{!477, !472, !467, !483, !439}
!487 = !{!483, !442}
!488 = !{!489, !491}
!489 = distinct !{!489, !490, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3be0bc7f3fb095cfE: %self"}
!490 = distinct !{!490, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3be0bc7f3fb095cfE"}
!491 = distinct !{!491, !492, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h0a1cdf161b695b70E: %_1"}
!492 = distinct !{!492, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h0a1cdf161b695b70E"}
!493 = !{!494}
!494 = distinct !{!494, !495, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17hdb236b9dbca3e730E: %v.0"}
!495 = distinct !{!495, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17hdb236b9dbca3e730E"}
!496 = !{!497}
!497 = distinct !{!497, !495, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17hdb236b9dbca3e730E: %scratch.0"}
!498 = !{!499}
!499 = distinct !{!499, !500, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a"}
!500 = distinct !{!500, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE"}
!501 = !{!502}
!502 = distinct !{!502, !500, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b"}
!503 = !{!504}
!504 = distinct !{!504, !505, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0"}
!505 = distinct !{!505, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE"}
!506 = !{!507}
!507 = distinct !{!507, !505, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1"}
!508 = !{!509}
!509 = distinct !{!509, !510, !"cmpfunc: %a"}
!510 = distinct !{!510, !"cmpfunc"}
!511 = !{!512}
!512 = distinct !{!512, !510, !"cmpfunc: %b"}
!513 = !{!509, !504, !499, !494}
!514 = !{!512, !507, !502, !497, !515}
!515 = distinct !{!515, !495, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17hdb236b9dbca3e730E: %is_less"}
!516 = !{!512, !507, !502, !494}
!517 = !{!509, !504, !499, !497, !515}
!518 = !{!519}
!519 = distinct !{!519, !520, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a"}
!520 = distinct !{!520, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE"}
!521 = !{!522}
!522 = distinct !{!522, !520, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b"}
!523 = !{!524}
!524 = distinct !{!524, !525, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0"}
!525 = distinct !{!525, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE"}
!526 = !{!527}
!527 = distinct !{!527, !525, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1"}
!528 = !{!529}
!529 = distinct !{!529, !530, !"cmpfunc: %a"}
!530 = distinct !{!530, !"cmpfunc"}
!531 = !{!532}
!532 = distinct !{!532, !530, !"cmpfunc: %b"}
!533 = !{!529, !524, !519, !494}
!534 = !{!532, !527, !522, !497, !515}
!535 = !{!532, !527, !522, !494}
!536 = !{!529, !524, !519, !497, !515}
!537 = !{!538}
!538 = distinct !{!538, !539, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a"}
!539 = distinct !{!539, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE"}
!540 = !{!541}
!541 = distinct !{!541, !539, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b"}
!542 = !{!543}
!543 = distinct !{!543, !544, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0"}
!544 = distinct !{!544, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE"}
!545 = !{!546}
!546 = distinct !{!546, !544, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1"}
!547 = !{!548}
!548 = distinct !{!548, !549, !"cmpfunc: %a"}
!549 = distinct !{!549, !"cmpfunc"}
!550 = !{!551}
!551 = distinct !{!551, !549, !"cmpfunc: %b"}
!552 = !{!548, !543, !538, !494}
!553 = !{!551, !546, !541, !497, !515}
!554 = !{!551, !546, !541, !494}
!555 = !{!548, !543, !538, !497, !515}
!556 = !{!557}
!557 = distinct !{!557, !558, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a"}
!558 = distinct !{!558, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE"}
!559 = !{!560}
!560 = distinct !{!560, !558, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b"}
!561 = !{!562}
!562 = distinct !{!562, !563, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0"}
!563 = distinct !{!563, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE"}
!564 = !{!565}
!565 = distinct !{!565, !563, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1"}
!566 = !{!567}
!567 = distinct !{!567, !568, !"cmpfunc: %a"}
!568 = distinct !{!568, !"cmpfunc"}
!569 = !{!570}
!570 = distinct !{!570, !568, !"cmpfunc: %b"}
!571 = !{!567, !562, !557, !494}
!572 = !{!570, !565, !560, !497, !515}
!573 = !{!570, !565, !560, !494}
!574 = !{!567, !562, !557, !497, !515}
!575 = !{!576}
!576 = distinct !{!576, !577, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a"}
!577 = distinct !{!577, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE"}
!578 = !{!579}
!579 = distinct !{!579, !577, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b"}
!580 = !{!581}
!581 = distinct !{!581, !582, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0"}
!582 = distinct !{!582, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE"}
!583 = !{!584}
!584 = distinct !{!584, !582, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1"}
!585 = !{!586}
!586 = distinct !{!586, !587, !"cmpfunc: %a"}
!587 = distinct !{!587, !"cmpfunc"}
!588 = !{!589}
!589 = distinct !{!589, !587, !"cmpfunc: %b"}
!590 = !{!586, !581, !576, !494}
!591 = !{!589, !584, !579, !497, !515}
!592 = !{!589, !584, !579, !494}
!593 = !{!586, !581, !576, !497, !515}
!594 = !{!494, !515}
!595 = !{!596}
!596 = distinct !{!596, !597, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a"}
!597 = distinct !{!597, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE"}
!598 = !{!599}
!599 = distinct !{!599, !597, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b"}
!600 = !{!601}
!601 = distinct !{!601, !602, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0"}
!602 = distinct !{!602, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE"}
!603 = !{!604}
!604 = distinct !{!604, !602, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1"}
!605 = !{!606}
!606 = distinct !{!606, !607, !"cmpfunc: %a"}
!607 = distinct !{!607, !"cmpfunc"}
!608 = !{!609}
!609 = distinct !{!609, !607, !"cmpfunc: %b"}
!610 = !{!606, !601, !596, !494}
!611 = !{!609, !604, !599, !497, !515}
!612 = !{!609, !604, !599, !494}
!613 = !{!606, !601, !596, !497, !515}
!614 = !{!615}
!615 = distinct !{!615, !616, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a"}
!616 = distinct !{!616, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE"}
!617 = !{!618}
!618 = distinct !{!618, !616, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b"}
!619 = !{!620}
!620 = distinct !{!620, !621, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0"}
!621 = distinct !{!621, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE"}
!622 = !{!623}
!623 = distinct !{!623, !621, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1"}
!624 = !{!625}
!625 = distinct !{!625, !626, !"cmpfunc: %a"}
!626 = distinct !{!626, !"cmpfunc"}
!627 = !{!628}
!628 = distinct !{!628, !626, !"cmpfunc: %b"}
!629 = !{!625, !620, !615, !494}
!630 = !{!628, !623, !618, !497, !515}
!631 = !{!628, !623, !618, !494}
!632 = !{!625, !620, !615, !497, !515}
!633 = !{!634}
!634 = distinct !{!634, !635, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a"}
!635 = distinct !{!635, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE"}
!636 = !{!637}
!637 = distinct !{!637, !635, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b"}
!638 = !{!639}
!639 = distinct !{!639, !640, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0"}
!640 = distinct !{!640, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE"}
!641 = !{!642}
!642 = distinct !{!642, !640, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1"}
!643 = !{!644}
!644 = distinct !{!644, !645, !"cmpfunc: %a"}
!645 = distinct !{!645, !"cmpfunc"}
!646 = !{!647}
!647 = distinct !{!647, !645, !"cmpfunc: %b"}
!648 = !{!644, !639, !634, !494}
!649 = !{!647, !642, !637, !497, !515}
!650 = !{!647, !642, !637, !494}
!651 = !{!644, !639, !634, !497, !515}
!652 = !{!653}
!653 = distinct !{!653, !654, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a"}
!654 = distinct !{!654, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE"}
!655 = !{!656}
!656 = distinct !{!656, !654, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b"}
!657 = !{!658}
!658 = distinct !{!658, !659, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0"}
!659 = distinct !{!659, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE"}
!660 = !{!661}
!661 = distinct !{!661, !659, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1"}
!662 = !{!663}
!663 = distinct !{!663, !664, !"cmpfunc: %a"}
!664 = distinct !{!664, !"cmpfunc"}
!665 = !{!666}
!666 = distinct !{!666, !664, !"cmpfunc: %b"}
!667 = !{!663, !658, !653, !494}
!668 = !{!666, !661, !656, !497, !515}
!669 = !{!666, !661, !656, !494}
!670 = !{!663, !658, !653, !497, !515}
!671 = !{!672}
!672 = distinct !{!672, !673, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a"}
!673 = distinct !{!673, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE"}
!674 = !{!675}
!675 = distinct !{!675, !673, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b"}
!676 = !{!677}
!677 = distinct !{!677, !678, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0"}
!678 = distinct !{!678, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE"}
!679 = !{!680}
!680 = distinct !{!680, !678, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1"}
!681 = !{!682}
!682 = distinct !{!682, !683, !"cmpfunc: %a"}
!683 = distinct !{!683, !"cmpfunc"}
!684 = !{!685}
!685 = distinct !{!685, !683, !"cmpfunc: %b"}
!686 = !{!682, !677, !672, !494}
!687 = !{!685, !680, !675, !497, !515}
!688 = !{!685, !680, !675, !494}
!689 = !{!682, !677, !672, !497, !515}
!690 = !{!497, !515}
!691 = !{!692, !694, !696, !497}
!692 = distinct !{!692, !693, !"cmpfunc: %b"}
!693 = distinct !{!693, !"cmpfunc"}
!694 = distinct !{!694, !695, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1"}
!695 = distinct !{!695, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE"}
!696 = distinct !{!696, !697, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b"}
!697 = distinct !{!697, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE"}
!698 = !{!699, !700, !701, !494, !515}
!699 = distinct !{!699, !693, !"cmpfunc: %a"}
!700 = distinct !{!700, !695, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0"}
!701 = distinct !{!701, !697, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a"}
!702 = !{!703, !705, !707, !497}
!703 = distinct !{!703, !704, !"cmpfunc: %b"}
!704 = distinct !{!704, !"cmpfunc"}
!705 = distinct !{!705, !706, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1"}
!706 = distinct !{!706, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE"}
!707 = distinct !{!707, !708, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b"}
!708 = distinct !{!708, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE"}
!709 = !{!710, !711, !712, !494, !515}
!710 = distinct !{!710, !704, !"cmpfunc: %a"}
!711 = distinct !{!711, !706, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0"}
!712 = distinct !{!712, !708, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a"}
!713 = !{!714, !716, !494, !515}
!714 = distinct !{!714, !715, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha305904ef6894d71E: %self"}
!715 = distinct !{!715, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha305904ef6894d71E"}
!716 = distinct !{!716, !717, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hc81cb7910e943fa4E: %_1"}
!717 = distinct !{!717, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hc81cb7910e943fa4E"}
!718 = !{!719}
!719 = distinct !{!719, !720, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h467471a0d9a845c1E: %v.0"}
!720 = distinct !{!720, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h467471a0d9a845c1E"}
!721 = !{!722}
!722 = distinct !{!722, !723, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a"}
!723 = distinct !{!723, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE"}
!724 = !{!725}
!725 = distinct !{!725, !723, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b"}
!726 = !{!727}
!727 = distinct !{!727, !728, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0"}
!728 = distinct !{!728, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE"}
!729 = !{!730}
!730 = distinct !{!730, !731, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h36e7daef282500b9E: %_0"}
!731 = distinct !{!731, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h36e7daef282500b9E"}
!732 = !{!733}
!733 = distinct !{!733, !728, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1"}
!734 = !{!735}
!735 = distinct !{!735, !736, !"cmpfunc: %a"}
!736 = distinct !{!736, !"cmpfunc"}
!737 = !{!738}
!738 = distinct !{!738, !736, !"cmpfunc: %b"}
!739 = !{!735, !727, !722, !719, !497}
!740 = !{!738, !733, !725, !730, !494, !515}
!741 = !{!738, !733, !725, !719, !497}
!742 = !{!735, !727, !722, !730, !494, !515}
!743 = !{!730, !744, !719, !497, !515}
!744 = distinct !{!744, !731, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h36e7daef282500b9E: %is_less"}
!745 = !{!746}
!746 = distinct !{!746, !747, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a"}
!747 = distinct !{!747, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE"}
!748 = !{!749}
!749 = distinct !{!749, !747, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b"}
!750 = !{!751}
!751 = distinct !{!751, !752, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0"}
!752 = distinct !{!752, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE"}
!753 = !{!754}
!754 = distinct !{!754, !755, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h4bc2352a39a620c2E: %_0"}
!755 = distinct !{!755, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h4bc2352a39a620c2E"}
!756 = !{!757}
!757 = distinct !{!757, !752, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1"}
!758 = !{!759}
!759 = distinct !{!759, !760, !"cmpfunc: %a"}
!760 = distinct !{!760, !"cmpfunc"}
!761 = !{!762}
!762 = distinct !{!762, !760, !"cmpfunc: %b"}
!763 = !{!759, !751, !746, !719, !497}
!764 = !{!762, !757, !749, !754, !494, !515}
!765 = !{!762, !757, !749, !719, !497}
!766 = !{!759, !751, !746, !754, !494, !515}
!767 = !{!754, !768, !719, !497, !515}
!768 = distinct !{!768, !755, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h4bc2352a39a620c2E: %is_less"}
!769 = !{!719, !497}
!770 = !{!719, !497, !515}
!771 = !{!494, !497, !515}
!772 = !{!494, !497}
!773 = !{!774, !776, !515}
!774 = distinct !{!774, !775, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha305904ef6894d71E: %self"}
!775 = distinct !{!775, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha305904ef6894d71E"}
!776 = distinct !{!776, !777, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hc81cb7910e943fa4E: %_1"}
!777 = distinct !{!777, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hc81cb7910e943fa4E"}
!778 = !{!779}
!779 = distinct !{!779, !780, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a"}
!780 = distinct !{!780, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE"}
!781 = !{!782}
!782 = distinct !{!782, !780, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b"}
!783 = !{!784}
!784 = distinct !{!784, !785, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0"}
!785 = distinct !{!785, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE"}
!786 = !{!787}
!787 = distinct !{!787, !788, !"_ZN4core5slice4sort6shared5pivot7median317hf12ce116837ecf40E: %c"}
!788 = distinct !{!788, !"_ZN4core5slice4sort6shared5pivot7median317hf12ce116837ecf40E"}
!789 = !{!790}
!790 = distinct !{!790, !785, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1"}
!791 = !{!792}
!792 = distinct !{!792, !793, !"cmpfunc: %a"}
!793 = distinct !{!793, !"cmpfunc"}
!794 = !{!795}
!795 = distinct !{!795, !793, !"cmpfunc: %b"}
!796 = !{!792, !784, !779, !797}
!797 = distinct !{!797, !798, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17ha498864309532c56E: %v.0"}
!798 = distinct !{!798, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17ha498864309532c56E"}
!799 = !{!795, !790, !782, !787, !800}
!800 = distinct !{!800, !798, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17ha498864309532c56E: %is_less"}
!801 = !{!795, !790, !782, !797}
!802 = !{!792, !784, !779, !787, !800}
!803 = !{!804, !806, !808, !797}
!804 = distinct !{!804, !805, !"cmpfunc: %b"}
!805 = distinct !{!805, !"cmpfunc"}
!806 = distinct !{!806, !807, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1"}
!807 = distinct !{!807, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE"}
!808 = distinct !{!808, !809, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b"}
!809 = distinct !{!809, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE"}
!810 = !{!811, !812, !813, !800}
!811 = distinct !{!811, !805, !"cmpfunc: %a"}
!812 = distinct !{!812, !807, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0"}
!813 = distinct !{!813, !809, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a"}
!814 = !{!815, !817, !819}
!815 = distinct !{!815, !816, !"cmpfunc: %a"}
!816 = distinct !{!816, !"cmpfunc"}
!817 = distinct !{!817, !818, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0"}
!818 = distinct !{!818, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE"}
!819 = distinct !{!819, !820, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a"}
!820 = distinct !{!820, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE"}
!821 = !{!822, !823, !824}
!822 = distinct !{!822, !816, !"cmpfunc: %b"}
!823 = distinct !{!823, !818, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1"}
!824 = distinct !{!824, !820, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b"}
!825 = !{!826}
!826 = distinct !{!826, !827, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17hc0d283a798e182a9E: %v.0"}
!827 = distinct !{!827, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17hc0d283a798e182a9E"}
!828 = !{!829}
!829 = distinct !{!829, !827, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17hc0d283a798e182a9E: %scratch.0"}
!830 = !{!831, !833, !835, !826}
!831 = distinct !{!831, !832, !"cmpfunc: %b"}
!832 = distinct !{!832, !"cmpfunc"}
!833 = distinct !{!833, !834, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1"}
!834 = distinct !{!834, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE"}
!835 = distinct !{!835, !836, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b"}
!836 = distinct !{!836, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE"}
!837 = !{!838, !839, !840, !829}
!838 = distinct !{!838, !832, !"cmpfunc: %a"}
!839 = distinct !{!839, !834, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0"}
!840 = distinct !{!840, !836, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a"}
!841 = !{!840}
!842 = !{!835}
!843 = !{!839}
!844 = !{!833}
!845 = !{!838}
!846 = !{!831}
!847 = !{!838, !839, !840, !826}
!848 = !{!831, !833, !835, !829}
!849 = !{!850, !826}
!850 = distinct !{!850, !851, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h3e882c6cb7ea627eE: %self"}
!851 = distinct !{!851, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h3e882c6cb7ea627eE"}
!852 = !{!853, !855, !857, !826}
!853 = distinct !{!853, !854, !"cmpfunc: %a"}
!854 = distinct !{!854, !"cmpfunc"}
!855 = distinct !{!855, !856, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0"}
!856 = distinct !{!856, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE"}
!857 = distinct !{!857, !858, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a"}
!858 = distinct !{!858, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE"}
!859 = !{!860, !861, !862, !829}
!860 = distinct !{!860, !854, !"cmpfunc: %b"}
!861 = distinct !{!861, !856, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1"}
!862 = distinct !{!862, !858, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b"}
!863 = !{!864, !826}
!864 = distinct !{!864, !865, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h3e882c6cb7ea627eE: %self"}
!865 = distinct !{!865, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h3e882c6cb7ea627eE"}
!866 = !{!867, !869, !871, !826}
!867 = distinct !{!867, !868, !"cmpfunc: %a"}
!868 = distinct !{!868, !"cmpfunc"}
!869 = distinct !{!869, !870, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0"}
!870 = distinct !{!870, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE"}
!871 = distinct !{!871, !872, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a"}
!872 = distinct !{!872, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE"}
!873 = !{!874, !875, !876, !829}
!874 = distinct !{!874, !868, !"cmpfunc: %b"}
!875 = distinct !{!875, !870, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1"}
!876 = distinct !{!876, !872, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b"}
!877 = !{!878, !826}
!878 = distinct !{!878, !879, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h3e882c6cb7ea627eE: %self"}
!879 = distinct !{!879, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h3e882c6cb7ea627eE"}
!880 = !{!881, !883, !885, !826}
!881 = distinct !{!881, !882, !"cmpfunc: %a"}
!882 = distinct !{!882, !"cmpfunc"}
!883 = distinct !{!883, !884, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0"}
!884 = distinct !{!884, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE"}
!885 = distinct !{!885, !886, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a"}
!886 = distinct !{!886, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE"}
!887 = !{!888, !889, !890, !829}
!888 = distinct !{!888, !882, !"cmpfunc: %b"}
!889 = distinct !{!889, !884, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1"}
!890 = distinct !{!890, !886, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b"}
!891 = !{!892, !826}
!892 = distinct !{!892, !893, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h3e882c6cb7ea627eE: %self"}
!893 = distinct !{!893, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h3e882c6cb7ea627eE"}
!894 = !{!895, !897, !899, !826}
!895 = distinct !{!895, !896, !"cmpfunc: %b"}
!896 = distinct !{!896, !"cmpfunc"}
!897 = distinct !{!897, !898, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1"}
!898 = distinct !{!898, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE"}
!899 = distinct !{!899, !900, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b"}
!900 = distinct !{!900, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE"}
!901 = !{!902, !903, !904, !829}
!902 = distinct !{!902, !896, !"cmpfunc: %a"}
!903 = distinct !{!903, !898, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0"}
!904 = distinct !{!904, !900, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a"}
!905 = !{!904}
!906 = !{!899}
!907 = !{!903}
!908 = !{!897}
!909 = !{!902}
!910 = !{!895}
!911 = !{!902, !903, !904, !826}
!912 = !{!895, !897, !899, !829}
!913 = !{!914, !826}
!914 = distinct !{!914, !915, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h3e882c6cb7ea627eE: %self"}
!915 = distinct !{!915, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h3e882c6cb7ea627eE"}
!916 = !{!917, !829}
!917 = distinct !{!917, !918, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h3e882c6cb7ea627eE: %self"}
!918 = distinct !{!918, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h3e882c6cb7ea627eE"}
!919 = !{!917, !826}
!920 = !{!826, !829}
!921 = distinct !{!921, !435, !436}
!922 = distinct !{!922, !436, !435}
!923 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!924 = !{!925, !927}
!925 = distinct !{!925, !926, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h447654892ce49de7E: %pair"}
!926 = distinct !{!926, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h447654892ce49de7E"}
!927 = distinct !{!927, !926, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h447654892ce49de7E: %self.0"}
!928 = !{!929}
!929 = distinct !{!929, !930, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h1c1ce6d4491c2768E: %v.0"}
!930 = distinct !{!930, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h1c1ce6d4491c2768E"}
!931 = !{!932}
!932 = distinct !{!932, !930, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h1c1ce6d4491c2768E: %scratch.0"}
!933 = !{!934, !936, !938, !940, !929}
!934 = distinct !{!934, !935, !"cmpfunc: %a"}
!935 = distinct !{!935, !"cmpfunc"}
!936 = distinct !{!936, !937, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0"}
!937 = distinct !{!937, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE"}
!938 = distinct !{!938, !939, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a"}
!939 = distinct !{!939, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE"}
!940 = distinct !{!940, !941, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h32f1592a52897e82E: %b"}
!941 = distinct !{!941, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h32f1592a52897e82E"}
!942 = !{!943, !944, !945, !946, !932}
!943 = distinct !{!943, !935, !"cmpfunc: %b"}
!944 = distinct !{!944, !937, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1"}
!945 = distinct !{!945, !939, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b"}
!946 = distinct !{!946, !941, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h32f1592a52897e82E: %a"}
!947 = !{!946}
!948 = !{!940}
!949 = !{!938}
!950 = !{!945}
!951 = !{!936}
!952 = !{!944}
!953 = !{!934}
!954 = !{!943}
!955 = !{!943, !944, !945, !946, !929}
!956 = !{!934, !936, !938, !940, !932}
!957 = !{!958, !929}
!958 = distinct !{!958, !959, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h3e882c6cb7ea627eE: %self"}
!959 = distinct !{!959, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h3e882c6cb7ea627eE"}
!960 = !{!961, !963, !965, !967, !929}
!961 = distinct !{!961, !962, !"cmpfunc: %b"}
!962 = distinct !{!962, !"cmpfunc"}
!963 = distinct !{!963, !964, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1"}
!964 = distinct !{!964, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE"}
!965 = distinct !{!965, !966, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b"}
!966 = distinct !{!966, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE"}
!967 = distinct !{!967, !968, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h32f1592a52897e82E: %a"}
!968 = distinct !{!968, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h32f1592a52897e82E"}
!969 = !{!970, !971, !972, !973, !932}
!970 = distinct !{!970, !962, !"cmpfunc: %a"}
!971 = distinct !{!971, !964, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0"}
!972 = distinct !{!972, !966, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a"}
!973 = distinct !{!973, !968, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h32f1592a52897e82E: %b"}
!974 = !{!975, !929}
!975 = distinct !{!975, !976, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h3e882c6cb7ea627eE: %self"}
!976 = distinct !{!976, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h3e882c6cb7ea627eE"}
!977 = !{!978, !980, !982, !984, !929}
!978 = distinct !{!978, !979, !"cmpfunc: %b"}
!979 = distinct !{!979, !"cmpfunc"}
!980 = distinct !{!980, !981, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1"}
!981 = distinct !{!981, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE"}
!982 = distinct !{!982, !983, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b"}
!983 = distinct !{!983, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE"}
!984 = distinct !{!984, !985, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h32f1592a52897e82E: %a"}
!985 = distinct !{!985, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h32f1592a52897e82E"}
!986 = !{!987, !988, !989, !990, !932}
!987 = distinct !{!987, !979, !"cmpfunc: %a"}
!988 = distinct !{!988, !981, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0"}
!989 = distinct !{!989, !983, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a"}
!990 = distinct !{!990, !985, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h32f1592a52897e82E: %b"}
!991 = !{!992, !929}
!992 = distinct !{!992, !993, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h3e882c6cb7ea627eE: %self"}
!993 = distinct !{!993, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h3e882c6cb7ea627eE"}
!994 = !{!995, !997, !999, !1001, !929}
!995 = distinct !{!995, !996, !"cmpfunc: %b"}
!996 = distinct !{!996, !"cmpfunc"}
!997 = distinct !{!997, !998, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1"}
!998 = distinct !{!998, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE"}
!999 = distinct !{!999, !1000, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b"}
!1000 = distinct !{!1000, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE"}
!1001 = distinct !{!1001, !1002, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h32f1592a52897e82E: %a"}
!1002 = distinct !{!1002, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h32f1592a52897e82E"}
!1003 = !{!1004, !1005, !1006, !1007, !932}
!1004 = distinct !{!1004, !996, !"cmpfunc: %a"}
!1005 = distinct !{!1005, !998, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0"}
!1006 = distinct !{!1006, !1000, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a"}
!1007 = distinct !{!1007, !1002, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h32f1592a52897e82E: %b"}
!1008 = !{!1009, !929}
!1009 = distinct !{!1009, !1010, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h3e882c6cb7ea627eE: %self"}
!1010 = distinct !{!1010, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h3e882c6cb7ea627eE"}
!1011 = !{!1012, !1014, !1016, !1018, !929}
!1012 = distinct !{!1012, !1013, !"cmpfunc: %a"}
!1013 = distinct !{!1013, !"cmpfunc"}
!1014 = distinct !{!1014, !1015, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0"}
!1015 = distinct !{!1015, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE"}
!1016 = distinct !{!1016, !1017, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a"}
!1017 = distinct !{!1017, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE"}
!1018 = distinct !{!1018, !1019, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h32f1592a52897e82E: %b"}
!1019 = distinct !{!1019, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h32f1592a52897e82E"}
!1020 = !{!1021, !1022, !1023, !1024, !932}
!1021 = distinct !{!1021, !1013, !"cmpfunc: %b"}
!1022 = distinct !{!1022, !1015, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1"}
!1023 = distinct !{!1023, !1017, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b"}
!1024 = distinct !{!1024, !1019, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h32f1592a52897e82E: %a"}
!1025 = !{!1024}
!1026 = !{!1018}
!1027 = !{!1016}
!1028 = !{!1023}
!1029 = !{!1014}
!1030 = !{!1022}
!1031 = !{!1012}
!1032 = !{!1021}
!1033 = !{!1021, !1022, !1023, !1024, !929}
!1034 = !{!1012, !1014, !1016, !1018, !932}
!1035 = !{!1036, !929}
!1036 = distinct !{!1036, !1037, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h3e882c6cb7ea627eE: %self"}
!1037 = distinct !{!1037, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h3e882c6cb7ea627eE"}
!1038 = !{!1039, !932}
!1039 = distinct !{!1039, !1040, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h3e882c6cb7ea627eE: %self"}
!1040 = distinct !{!1040, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h3e882c6cb7ea627eE"}
!1041 = !{!1039, !929}
!1042 = !{!929, !932}
!1043 = distinct !{!1043, !435, !436}
!1044 = distinct !{!1044, !436, !435}
!1045 = !{!1046}
!1046 = distinct !{!1046, !1047, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17ha8832592c6732141E: %self.0"}
!1047 = distinct !{!1047, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17ha8832592c6732141E"}
!1048 = !{!1049}
!1049 = distinct !{!1049, !1050, !"_ZN5alloc5slice11stable_sort17hed67ff61dbbb49faE: %v.0"}
!1050 = distinct !{!1050, !"_ZN5alloc5slice11stable_sort17hed67ff61dbbb49faE"}
!1051 = !{!1049, !1052, !1046}
!1052 = distinct !{!1052, !1050, !"_ZN5alloc5slice11stable_sort17hed67ff61dbbb49faE: argument 1"}
!1053 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!1054 = !{!1055}
!1055 = distinct !{!1055, !1056, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a"}
!1056 = distinct !{!1056, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE"}
!1057 = !{!1058}
!1058 = distinct !{!1058, !1056, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b"}
!1059 = !{!1060}
!1060 = distinct !{!1060, !1061, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0"}
!1061 = distinct !{!1061, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE"}
!1062 = !{!1063}
!1063 = distinct !{!1063, !1061, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1"}
!1064 = !{!1065}
!1065 = distinct !{!1065, !1066, !"cmpfunc: %a"}
!1066 = distinct !{!1066, !"cmpfunc"}
!1067 = !{!1068}
!1068 = distinct !{!1068, !1066, !"cmpfunc: %b"}
!1069 = !{!1065, !1060, !1055, !1070, !1049, !1046}
!1070 = distinct !{!1070, !1071, !"_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h7cb9a29b30363162E: %v.0"}
!1071 = distinct !{!1071, !"_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h7cb9a29b30363162E"}
!1072 = !{!1068, !1063, !1058, !1052}
!1073 = !{!1068, !1063, !1058, !1070, !1049, !1046}
!1074 = !{!1065, !1060, !1055, !1052}
!1075 = !{!1070, !1049, !1046}
!1076 = !{!1052}
!1077 = !{!1078, !1080, !1082, !1070, !1049, !1046}
!1078 = distinct !{!1078, !1079, !"cmpfunc: %b"}
!1079 = distinct !{!1079, !"cmpfunc"}
!1080 = distinct !{!1080, !1081, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1"}
!1081 = distinct !{!1081, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE"}
!1082 = distinct !{!1082, !1083, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b"}
!1083 = distinct !{!1083, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE"}
!1084 = !{!1085, !1086, !1087, !1052}
!1085 = distinct !{!1085, !1079, !"cmpfunc: %a"}
!1086 = distinct !{!1086, !1081, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0"}
!1087 = distinct !{!1087, !1083, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a"}
!1088 = !{!1089, !1091, !1052}
!1089 = distinct !{!1089, !1090, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha305904ef6894d71E: %self"}
!1090 = distinct !{!1090, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha305904ef6894d71E"}
!1091 = distinct !{!1091, !1092, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hc81cb7910e943fa4E: %_1"}
!1092 = distinct !{!1092, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hc81cb7910e943fa4E"}
!1093 = !{!1094}
!1094 = distinct !{!1094, !1056, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %a:It1"}
!1095 = !{!1096}
!1096 = distinct !{!1096, !1056, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5b573af0f8fe958bE: %b:It1"}
!1097 = !{!1098}
!1098 = distinct !{!1098, !1061, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 0:It1"}
!1099 = !{!1100}
!1100 = distinct !{!1100, !1061, !"_ZN4core3ops8function5FnMut8call_mut17h520f2332768fb9caE: argument 1:It1"}
!1101 = !{!1102}
!1102 = distinct !{!1102, !1066, !"cmpfunc: %a:It1"}
!1103 = !{!1104}
!1104 = distinct !{!1104, !1066, !"cmpfunc: %b:It1"}
!1105 = !{!1102, !1098, !1094, !1070, !1049, !1046}
!1106 = !{!1104, !1100, !1096, !1052}
!1107 = !{!1104, !1100, !1096, !1070, !1049, !1046}
!1108 = !{!1102, !1098, !1094, !1052}
