; ModuleID = 'PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit.3caf3fd44e86261c-cgu.0'
source_filename = "PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit.3caf3fd44e86261c-cgu.0"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@alloc_d1084648e479974e70c9329824bf76f9 = private unnamed_addr constant [9 x i8] c"mid > len", align 1
@alloc_e8e5fd9f509afcb950667480b3e3e42a = private unnamed_addr constant [126 x i8] c"/root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/sort/stable/quicksort.rs\00", align 1
@alloc_58d434a1e795f965ef82c8e9c5db822a = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_e8e5fd9f509afcb950667480b3e3e42a, [16 x i8] c"}\00\00\00\00\00\00\00J\00\00\00\1F\00\00\00" }>, align 8
@alloc_0766b232215672ee1bd2195fdb153938 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_e8e5fd9f509afcb950667480b3e3e42a, [16 x i8] c"}\00\00\00\00\00\00\00D\00\00\00\17\00\00\00" }>, align 8
@alloc_6b34130c0d8024c31679a76213978426 = private unnamed_addr constant [241 x i8] c"/root/es/vert/vert/rust_funcs/cpp_transcoder/PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM/PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit.rs\00", align 1
@alloc_aff0f19c9c77241ccbf897612486dc62 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_6b34130c0d8024c31679a76213978426, [16 x i8] c"\F0\00\00\00\00\00\00\00\1F\00\00\00)\00\00\00" }>, align 8
@alloc_117f6413013c78a66771675fa13b2731 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_6b34130c0d8024c31679a76213978426, [16 x i8] c"\F0\00\00\00\00\00\00\00!\00\00\00\0F\00\00\00" }>, align 8
@alloc_2cb5dadc0b04dc9bcc03e7e4580cdc48 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_6b34130c0d8024c31679a76213978426, [16 x i8] c"\F0\00\00\00\00\00\00\00\1D\00\00\00\0E\00\00\00" }>, align 8

; core::slice::sort::shared::pivot::median3_rec
; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hc956d2e228a35a1fE(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i64 noundef range(i64 0, 288230376151711744) %n) unnamed_addr #0 {
start:
  %_6 = icmp samesign ugt i64 %n, 7
  br i1 %_6, label %bb1, label %bb6

bb1:                                              ; preds = %start
  %n84 = lshr i64 %n, 3
  %count = shl nuw nsw i64 %n84, 2
  %_10 = getelementptr inbounds nuw float, ptr %0, i64 %count
  %count1 = mul nuw nsw i64 %n84, 7
  %_13 = getelementptr inbounds nuw float, ptr %0, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %3 = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hc956d2e228a35a1fE(ptr noundef %0, ptr noundef %_10, ptr noundef %_13, i64 noundef %n84)
  %_16 = getelementptr inbounds nuw float, ptr %1, i64 %count
  %_18 = getelementptr inbounds nuw float, ptr %1, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %4 = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hc956d2e228a35a1fE(ptr noundef %1, ptr noundef %_16, ptr noundef %_18, i64 noundef %n84)
  %_20 = getelementptr inbounds nuw float, ptr %2, i64 %count
  %_22 = getelementptr inbounds nuw float, ptr %2, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %5 = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hc956d2e228a35a1fE(ptr noundef %2, ptr noundef %_20, ptr noundef %_22, i64 noundef %n84)
  br label %bb6

bb6:                                              ; preds = %start, %bb1
  %c.sroa.0.0 = phi ptr [ %5, %bb1 ], [ %2, %start ]
  %b.sroa.0.0 = phi ptr [ %4, %bb1 ], [ %1, %start ]
  %a.sroa.0.0 = phi ptr [ %3, %bb1 ], [ %0, %start ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8), !noalias !11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14), !noalias !11
  %_6.i.i = load float, ptr %b.sroa.0.0, align 4, !alias.scope !16, !noalias !17, !noundef !18
  %_7.i.i = load float, ptr %a.sroa.0.0, align 4, !alias.scope !19, !noalias !20, !noundef !18
  %brmerge.not.i = fcmp uno float %_6.i.i, %_7.i.i
  br i1 %brmerge.not.i, label %bb6.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit", !prof !21

bb6.i.i:                                          ; preds = %bb6
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_aff0f19c9c77241ccbf897612486dc62) #18, !noalias !22
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit": ; preds = %bb6
  %_8.i.mux.i = fcmp olt float %_6.i.i, %_7.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26)
  %_6.i.i5 = load float, ptr %c.sroa.0.0, align 4, !alias.scope !29, !noalias !30, !noundef !18
  %brmerge.not.i7 = fcmp uno float %_6.i.i5, %_7.i.i
  br i1 %brmerge.not.i7, label %bb6.i.i9, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit10", !prof !21

bb6.i.i9:                                         ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit"
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_aff0f19c9c77241ccbf897612486dc62) #18, !noalias !33
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit10": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit"
  %_8.i.mux.i8 = fcmp olt float %_6.i.i5, %_7.i.i
  %6 = xor i1 %_8.i.mux.i, %_8.i.mux.i8
  br i1 %6, label %_ZN4core5slice4sort6shared5pivot7median317h59bc2de3bef4ba9dE.exit, label %bb3.i

bb3.i:                                            ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit10"
  %brmerge.not.i13 = fcmp uno float %_6.i.i5, %_6.i.i
  br i1 %brmerge.not.i13, label %bb6.i.i15, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit16", !prof !21

bb6.i.i15:                                        ; preds = %bb3.i
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_aff0f19c9c77241ccbf897612486dc62) #18, !noalias !34
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit16": ; preds = %bb3.i
  %_8.i.mux.i14 = fcmp olt float %_6.i.i5, %_6.i.i
  %_12.i = xor i1 %_8.i.mux.i, %_8.i.mux.i14
  %c.b.i = select i1 %_12.i, ptr %c.sroa.0.0, ptr %b.sroa.0.0
  br label %_ZN4core5slice4sort6shared5pivot7median317h59bc2de3bef4ba9dE.exit

_ZN4core5slice4sort6shared5pivot7median317h59bc2de3bef4ba9dE.exit: ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit10", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit16"
  %_0.sroa.0.0.i = phi ptr [ %a.sroa.0.0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit10" ], [ %c.b.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit16" ]
  ret ptr %_0.sroa.0.0.i
}

; core::slice::sort::shared::pivot::median3_rec
; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite) uwtable
define internal fastcc noundef nonnull ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17he749b7d0002a4956E(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i64 noundef range(i64 0, 288230376151711744) %n) unnamed_addr #1 {
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
  %3 = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17he749b7d0002a4956E(ptr noundef %0, ptr noundef %_10, ptr noundef %_13, i64 noundef %n84)
  %_16 = getelementptr inbounds nuw i32, ptr %1, i64 %count
  %_18 = getelementptr inbounds nuw i32, ptr %1, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %4 = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17he749b7d0002a4956E(ptr noundef %1, ptr noundef %_16, ptr noundef %_18, i64 noundef %n84)
  %_20 = getelementptr inbounds nuw i32, ptr %2, i64 %count
  %_22 = getelementptr inbounds nuw i32, ptr %2, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %5 = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17he749b7d0002a4956E(ptr noundef %2, ptr noundef %_20, ptr noundef %_22, i64 noundef %n84)
  br label %bb6

bb6:                                              ; preds = %start, %bb1
  %c.sroa.0.0 = phi ptr [ %5, %bb1 ], [ %2, %start ]
  %b.sroa.0.0 = phi ptr [ %4, %bb1 ], [ %1, %start ]
  %a.sroa.0.0 = phi ptr [ %3, %bb1 ], [ %0, %start ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46), !noalias !49
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52), !noalias !49
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54), !noalias !49
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57), !noalias !49
  %_3.i.i.i = load i32, ptr %a.sroa.0.0, align 4, !alias.scope !59, !noalias !60, !noundef !18
  %_4.i.i.i = load i32, ptr %b.sroa.0.0, align 4, !alias.scope !61, !noalias !62, !noundef !18
  %_0.i = icmp slt i32 %_3.i.i.i, %_4.i.i.i
  %_4.i.i.i6 = load i32, ptr %c.sroa.0.0, align 4, !alias.scope !63, !noalias !70, !noundef !18
  %_0.i7 = icmp slt i32 %_3.i.i.i, %_4.i.i.i6
  %6 = xor i1 %_0.i, %_0.i7
  %_0.i10 = icmp slt i32 %_4.i.i.i, %_4.i.i.i6
  %_12.i = xor i1 %_0.i, %_0.i10
  %c.b.i = select i1 %_12.i, ptr %c.sroa.0.0, ptr %b.sroa.0.0
  %_0.sroa.0.0.i = select i1 %6, ptr %a.sroa.0.0, ptr %c.b.i
  ret ptr %_0.sroa.0.0.i
}

; core::slice::sort::shared::smallsort::sort4_stable
; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h3cc38142706e8f81E(ptr noundef nonnull readonly captures(none) %v_base, ptr noundef nonnull writeonly captures(none) %dst) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %_7 = getelementptr inbounds nuw i8, ptr %v_base, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82)
  %_6.i.i = load float, ptr %v_base, align 4, !alias.scope !84, !noalias !85, !noundef !18
  %_7.i.i = load float, ptr %_7, align 4, !alias.scope !85, !noalias !84, !noundef !18
  %brmerge.not.i = fcmp uno float %_6.i.i, %_7.i.i
  br i1 %brmerge.not.i, label %bb6.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit", !prof !21

bb6.i.i:                                          ; preds = %start
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_aff0f19c9c77241ccbf897612486dc62) #18, !noalias !86
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit": ; preds = %start
  %_12 = getelementptr inbounds nuw i8, ptr %v_base, i64 12
  %_14 = getelementptr inbounds nuw i8, ptr %v_base, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !87)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95)
  %_6.i.i7 = load float, ptr %_14, align 4, !alias.scope !97, !noalias !98, !noundef !18
  %_7.i.i8 = load float, ptr %_12, align 4, !alias.scope !98, !noalias !97, !noundef !18
  %brmerge.not.i9 = fcmp uno float %_6.i.i7, %_7.i.i8
  br i1 %brmerge.not.i9, label %bb6.i.i11, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit12", !prof !21

bb6.i.i11:                                        ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit"
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_aff0f19c9c77241ccbf897612486dc62) #18, !noalias !99
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit12": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit"
  %_8.i.mux.i = fcmp olt float %_6.i.i, %_7.i.i
  %_8.i.mux.i10 = fcmp olt float %_6.i.i7, %_7.i.i8
  %count = zext i1 %_8.i.mux.i to i64
  %a = getelementptr inbounds nuw float, ptr %v_base, i64 %count
  %_19 = xor i1 %_8.i.mux.i, true
  %count2 = zext i1 %_19 to i64
  %b = getelementptr inbounds nuw float, ptr %v_base, i64 %count2
  %count3 = select i1 %_8.i.mux.i10, i64 3, i64 2
  %c = getelementptr inbounds nuw float, ptr %v_base, i64 %count3
  %count4 = select i1 %_8.i.mux.i10, i64 2, i64 3
  %d = getelementptr inbounds nuw float, ptr %v_base, i64 %count4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !105)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !108)
  %_6.i.i13 = load float, ptr %a, align 4, !alias.scope !110, !noalias !111, !noundef !18
  %_7.i.i14 = load float, ptr %c, align 4, !alias.scope !111, !noalias !110, !noundef !18
  %brmerge.not.i15 = fcmp uno float %_6.i.i13, %_7.i.i14
  br i1 %brmerge.not.i15, label %bb6.i.i17, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit18", !prof !21

bb6.i.i17:                                        ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit12"
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_aff0f19c9c77241ccbf897612486dc62) #18, !noalias !112
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit18": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit12"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !113)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !118)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !121)
  %_6.i.i19 = load float, ptr %b, align 4, !alias.scope !123, !noalias !124, !noundef !18
  %_7.i.i20 = load float, ptr %d, align 4, !alias.scope !124, !noalias !123, !noundef !18
  %brmerge.not.i21 = fcmp uno float %_6.i.i19, %_7.i.i20
  br i1 %brmerge.not.i21, label %bb6.i.i23, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit24", !prof !21

bb6.i.i23:                                        ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit18"
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_aff0f19c9c77241ccbf897612486dc62) #18, !noalias !125
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit24": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit18"
  %_8.i.mux.i16 = fcmp olt float %_6.i.i13, %_7.i.i14
  %_8.i.mux.i22 = fcmp olt float %_6.i.i19, %_7.i.i20
  %0 = select i1 %_8.i.mux.i22, ptr %c, ptr %b, !unpredictable !18
  %1 = select i1 %_8.i.mux.i16, ptr %a, ptr %0, !unpredictable !18
  %2 = select i1 %_8.i.mux.i16, ptr %b, ptr %c, !unpredictable !18
  %3 = select i1 %_8.i.mux.i22, ptr %d, ptr %2, !unpredictable !18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !126)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !131)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134)
  %_6.i.i25 = load float, ptr %1, align 4, !alias.scope !136, !noalias !137, !noundef !18
  %_7.i.i26 = load float, ptr %3, align 4, !alias.scope !137, !noalias !136, !noundef !18
  %brmerge.not.i27 = fcmp uno float %_6.i.i25, %_7.i.i26
  br i1 %brmerge.not.i27, label %bb6.i.i29, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit30", !prof !21

bb6.i.i29:                                        ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit24"
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_aff0f19c9c77241ccbf897612486dc62) #18, !noalias !138
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit30": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit24"
  %4 = select i1 %_8.i.mux.i22, ptr %b, ptr %d, !unpredictable !18
  %5 = select i1 %_8.i.mux.i16, ptr %c, ptr %a, !unpredictable !18
  %_8.i.mux.i28 = fcmp olt float %_6.i.i25, %_7.i.i26
  %6 = select i1 %_8.i.mux.i28, ptr %3, ptr %1, !unpredictable !18
  %7 = select i1 %_8.i.mux.i28, ptr %1, ptr %3, !unpredictable !18
  %8 = load i32, ptr %5, align 4
  store i32 %8, ptr %dst, align 4
  %dst5 = getelementptr inbounds nuw i8, ptr %dst, i64 4
  %9 = load i32, ptr %6, align 4
  store i32 %9, ptr %dst5, align 4
  %dst6 = getelementptr inbounds nuw i8, ptr %dst, i64 8
  %10 = load i32, ptr %7, align 4
  store i32 %10, ptr %dst6, align 4
  %11 = getelementptr inbounds nuw i8, ptr %dst, i64 12
  %12 = load i32, ptr %4, align 4
  store i32 %12, ptr %11, align 4
  ret void
}

; core::slice::sort::shared::smallsort::sort8_stable
; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h8d6dd5af2d620dd2E(ptr noundef nonnull readonly captures(none) %v_base, ptr noundef nonnull writeonly captures(none) initializes((0, 32)) %dst, ptr noundef nonnull captures(address) initializes((0, 32)) %scratch_base) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %_7.i = getelementptr inbounds nuw i8, ptr %v_base, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !139)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !142)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !144)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !147)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !152)
  %_3.i.i.i.i = load i32, ptr %_7.i, align 4, !alias.scope !154, !noalias !155, !noundef !18
  %_4.i.i.i.i = load i32, ptr %v_base, align 4, !alias.scope !155, !noalias !154, !noundef !18
  %_0.i.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %_12.i = getelementptr inbounds nuw i8, ptr %v_base, i64 12
  %_14.i = getelementptr inbounds nuw i8, ptr %v_base, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !156)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !159)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !164)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !166)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !169)
  %_3.i.i.i7.i = load i32, ptr %_12.i, align 4, !alias.scope !171, !noalias !172, !noundef !18
  %_4.i.i.i8.i = load i32, ptr %_14.i, align 4, !alias.scope !172, !noalias !171, !noundef !18
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !173)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !176)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !178)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !181)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !183)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186)
  %_3.i.i.i10.i = load i32, ptr %c.i, align 4, !alias.scope !188, !noalias !189, !noundef !18
  %_4.i.i.i11.i = load i32, ptr %a.i, align 4, !alias.scope !189, !noalias !188, !noundef !18
  %_0.i12.i = icmp slt i32 %_3.i.i.i10.i, %_4.i.i.i11.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !190)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !193)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !195)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !198)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !200)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !203)
  %_3.i.i.i13.i = load i32, ptr %d.i, align 4, !alias.scope !205, !noalias !206, !noundef !18
  %_4.i.i.i14.i = load i32, ptr %b.i, align 4, !alias.scope !206, !noalias !205, !noundef !18
  %_0.i15.i = icmp slt i32 %_3.i.i.i13.i, %_4.i.i.i14.i
  %0 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i10.i, i32 %_4.i.i.i11.i)
  %1 = select i1 %_0.i15.i, ptr %c.i, ptr %b.i, !unpredictable !18
  %2 = select i1 %_0.i12.i, ptr %a.i, ptr %1, !unpredictable !18
  %3 = select i1 %_0.i12.i, ptr %b.i, ptr %c.i, !unpredictable !18
  %4 = select i1 %_0.i15.i, ptr %d.i, ptr %3, !unpredictable !18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !207)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !210)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !212)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !215)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !217)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !220)
  %_3.i.i.i16.i = load i32, ptr %4, align 4, !alias.scope !222, !noalias !223, !noundef !18
  %_4.i.i.i17.i = load i32, ptr %2, align 4, !alias.scope !223, !noalias !222, !noundef !18
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !224)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !227)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !229)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !232)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !234)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !237)
  %_3.i.i.i.i2 = load i32, ptr %_7.i1, align 4, !alias.scope !239, !noalias !240, !noundef !18
  %_4.i.i.i.i3 = load i32, ptr %_9, align 4, !alias.scope !240, !noalias !239, !noundef !18
  %_0.i.i4 = icmp slt i32 %_3.i.i.i.i2, %_4.i.i.i.i3
  %_12.i5 = getelementptr inbounds nuw i8, ptr %v_base, i64 28
  %_14.i6 = getelementptr inbounds nuw i8, ptr %v_base, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !244)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !246)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !249)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !251)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !254)
  %_3.i.i.i7.i7 = load i32, ptr %_12.i5, align 4, !alias.scope !256, !noalias !257, !noundef !18
  %_4.i.i.i8.i8 = load i32, ptr %_14.i6, align 4, !alias.scope !257, !noalias !256, !noundef !18
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !258)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !261)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !263)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !266)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !268)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !271)
  %_3.i.i.i10.i19 = load i32, ptr %c.i16, align 4, !alias.scope !273, !noalias !274, !noundef !18
  %_4.i.i.i11.i20 = load i32, ptr %a.i11, align 4, !alias.scope !274, !noalias !273, !noundef !18
  %_0.i12.i21 = icmp slt i32 %_3.i.i.i10.i19, %_4.i.i.i11.i20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !275)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !278)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !280)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !283)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !285)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !288)
  %_3.i.i.i13.i22 = load i32, ptr %d.i18, align 4, !alias.scope !290, !noalias !291, !noundef !18
  %_4.i.i.i14.i23 = load i32, ptr %b.i14, align 4, !alias.scope !291, !noalias !290, !noundef !18
  %_0.i15.i24 = icmp slt i32 %_3.i.i.i13.i22, %_4.i.i.i14.i23
  %9 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i10.i19, i32 %_4.i.i.i11.i20)
  %10 = select i1 %_0.i15.i24, ptr %c.i16, ptr %b.i14, !unpredictable !18
  %11 = select i1 %_0.i12.i21, ptr %a.i11, ptr %10, !unpredictable !18
  %12 = select i1 %_0.i12.i21, ptr %b.i14, ptr %c.i16, !unpredictable !18
  %13 = select i1 %_0.i15.i24, ptr %d.i18, ptr %12, !unpredictable !18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !292)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !295)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !297)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !300)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !302)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !305)
  %_3.i.i.i16.i25 = load i32, ptr %13, align 4, !alias.scope !307, !noalias !308, !noundef !18
  %_4.i.i.i17.i26 = load i32, ptr %11, align 4, !alias.scope !308, !noalias !307, !noundef !18
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !309)
  %18 = getelementptr inbounds nuw i8, ptr %dst, i64 28
  %_4.i.i.i.i37 = load i32, ptr %scratch_base, align 4, !alias.scope !312, !noalias !319, !noundef !18
  %_0.i.i38 = icmp slt i32 %9, %_4.i.i.i.i37
  %is_l.i18.i = xor i1 %_0.i.i38, true
  %19 = tail call i32 @llvm.smin.i32(i32 %9, i32 %_4.i.i.i.i37)
  store i32 %19, ptr %dst, align 4, !noalias !325
  %count.i.i = zext i1 %_0.i.i38 to i64
  %_12.i.i = getelementptr inbounds nuw i32, ptr %_10, i64 %count.i.i
  %count2.i.i = zext i1 %is_l.i18.i to i64
  %_14.i.i = getelementptr inbounds nuw i32, ptr %scratch_base, i64 %count2.i.i
  %_16.i.i = getelementptr inbounds nuw i8, ptr %dst, i64 4
  %_4.i.i.i20.i = load i32, ptr %7, align 4, !alias.scope !327, !noalias !334, !noundef !18
  %_0.i21.i = icmp slt i32 %17, %_4.i.i.i20.i
  %is_l.i.i = xor i1 %_0.i21.i, true
  %20 = tail call i32 @llvm.smax.i32(i32 %17, i32 %_4.i.i.i20.i)
  store i32 %20, ptr %18, align 4, !noalias !340
  %count.neg.i.i = sext i1 %is_l.i.i to i64
  %21 = getelementptr i32, ptr %16, i64 %count.neg.i.i
  %count3.neg.i.i = sext i1 %_0.i21.i to i64
  %22 = getelementptr i32, ptr %7, i64 %count3.neg.i.i
  %23 = getelementptr inbounds nuw i8, ptr %dst, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !342)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !344)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !346), !noalias !348
  tail call void @llvm.experimental.noalias.scope.decl(metadata !349), !noalias !348
  tail call void @llvm.experimental.noalias.scope.decl(metadata !351), !noalias !348
  tail call void @llvm.experimental.noalias.scope.decl(metadata !353), !noalias !348
  %_3.i.i.i.i36.1 = load i32, ptr %_12.i.i, align 4, !alias.scope !355, !noalias !356, !noundef !18
  %_4.i.i.i.i37.1 = load i32, ptr %_14.i.i, align 4, !alias.scope !357, !noalias !358, !noundef !18
  %_0.i.i38.1 = icmp slt i32 %_3.i.i.i.i36.1, %_4.i.i.i.i37.1
  %is_l.i18.i.1 = xor i1 %_0.i.i38.1, true
  %24 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i36.1, i32 %_4.i.i.i.i37.1)
  store i32 %24, ptr %_16.i.i, align 4, !noalias !325
  %count.i.i.1 = zext i1 %_0.i.i38.1 to i64
  %_12.i.i.1 = getelementptr inbounds nuw i32, ptr %_12.i.i, i64 %count.i.i.1
  %count2.i.i.1 = zext i1 %is_l.i18.i.1 to i64
  %_14.i.i.1 = getelementptr inbounds nuw i32, ptr %_14.i.i, i64 %count2.i.i.1
  %_16.i.i.1 = getelementptr inbounds nuw i8, ptr %dst, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !359)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !361)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !363), !noalias !365
  tail call void @llvm.experimental.noalias.scope.decl(metadata !366), !noalias !365
  tail call void @llvm.experimental.noalias.scope.decl(metadata !368), !noalias !365
  tail call void @llvm.experimental.noalias.scope.decl(metadata !370), !noalias !365
  %_3.i.i.i19.i.1 = load i32, ptr %21, align 4, !alias.scope !372, !noalias !373, !noundef !18
  %_4.i.i.i20.i.1 = load i32, ptr %22, align 4, !alias.scope !374, !noalias !375, !noundef !18
  %_0.i21.i.1 = icmp slt i32 %_3.i.i.i19.i.1, %_4.i.i.i20.i.1
  %is_l.i.i.1 = xor i1 %_0.i21.i.1, true
  %25 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i19.i.1, i32 %_4.i.i.i20.i.1)
  store i32 %25, ptr %23, align 4, !noalias !340
  %count.neg.i.i.1 = sext i1 %is_l.i.i.1 to i64
  %26 = getelementptr i32, ptr %21, i64 %count.neg.i.i.1
  %count3.neg.i.i.1 = sext i1 %_0.i21.i.1 to i64
  %27 = getelementptr i32, ptr %22, i64 %count3.neg.i.i.1
  %28 = getelementptr inbounds nuw i8, ptr %dst, i64 20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !376)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !378)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !380), !noalias !348
  tail call void @llvm.experimental.noalias.scope.decl(metadata !382), !noalias !348
  tail call void @llvm.experimental.noalias.scope.decl(metadata !384), !noalias !348
  tail call void @llvm.experimental.noalias.scope.decl(metadata !386), !noalias !348
  %_3.i.i.i.i36.2 = load i32, ptr %_12.i.i.1, align 4, !alias.scope !388, !noalias !389, !noundef !18
  %_4.i.i.i.i37.2 = load i32, ptr %_14.i.i.1, align 4, !alias.scope !390, !noalias !391, !noundef !18
  %_0.i.i38.2 = icmp slt i32 %_3.i.i.i.i36.2, %_4.i.i.i.i37.2
  %is_l.i18.i.2 = xor i1 %_0.i.i38.2, true
  %29 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i36.2, i32 %_4.i.i.i.i37.2)
  store i32 %29, ptr %_16.i.i.1, align 4, !noalias !325
  %count.i.i.2 = zext i1 %_0.i.i38.2 to i64
  %_12.i.i.2 = getelementptr inbounds nuw i32, ptr %_12.i.i.1, i64 %count.i.i.2
  %count2.i.i.2 = zext i1 %is_l.i18.i.2 to i64
  %_14.i.i.2 = getelementptr inbounds nuw i32, ptr %_14.i.i.1, i64 %count2.i.i.2
  %_16.i.i.2 = getelementptr inbounds nuw i8, ptr %dst, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !392)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !394)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !396), !noalias !365
  tail call void @llvm.experimental.noalias.scope.decl(metadata !398), !noalias !365
  tail call void @llvm.experimental.noalias.scope.decl(metadata !400), !noalias !365
  tail call void @llvm.experimental.noalias.scope.decl(metadata !402), !noalias !365
  %_3.i.i.i19.i.2 = load i32, ptr %26, align 4, !alias.scope !404, !noalias !405, !noundef !18
  %_4.i.i.i20.i.2 = load i32, ptr %27, align 4, !alias.scope !406, !noalias !407, !noundef !18
  %_0.i21.i.2 = icmp slt i32 %_3.i.i.i19.i.2, %_4.i.i.i20.i.2
  %is_l.i.i.2 = xor i1 %_0.i21.i.2, true
  %30 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i19.i.2, i32 %_4.i.i.i20.i.2)
  store i32 %30, ptr %28, align 4, !noalias !340
  %count.neg.i.i.2 = sext i1 %is_l.i.i.2 to i64
  %31 = getelementptr i32, ptr %26, i64 %count.neg.i.i.2
  %count3.neg.i.i.2 = sext i1 %_0.i21.i.2 to i64
  %32 = getelementptr i32, ptr %27, i64 %count3.neg.i.i.2
  %33 = getelementptr inbounds nuw i8, ptr %dst, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !408)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !410)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !412), !noalias !348
  tail call void @llvm.experimental.noalias.scope.decl(metadata !414), !noalias !348
  tail call void @llvm.experimental.noalias.scope.decl(metadata !416), !noalias !348
  tail call void @llvm.experimental.noalias.scope.decl(metadata !418), !noalias !348
  %_3.i.i.i.i36.3 = load i32, ptr %_12.i.i.2, align 4, !alias.scope !420, !noalias !421, !noundef !18
  %_4.i.i.i.i37.3 = load i32, ptr %_14.i.i.2, align 4, !alias.scope !422, !noalias !423, !noundef !18
  %_0.i.i38.3 = icmp slt i32 %_3.i.i.i.i36.3, %_4.i.i.i.i37.3
  %is_l.i18.i.3 = xor i1 %_0.i.i38.3, true
  %34 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i36.3, i32 %_4.i.i.i.i37.3)
  store i32 %34, ptr %_16.i.i.2, align 4, !noalias !325
  %count.i.i.3 = zext i1 %_0.i.i38.3 to i64
  %_12.i.i.3 = getelementptr inbounds nuw i32, ptr %_12.i.i.2, i64 %count.i.i.3
  %count2.i.i.3 = zext i1 %is_l.i18.i.3 to i64
  %_14.i.i.3 = getelementptr inbounds nuw i32, ptr %_14.i.i.2, i64 %count2.i.i.3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !424)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !426)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !428), !noalias !365
  tail call void @llvm.experimental.noalias.scope.decl(metadata !430), !noalias !365
  tail call void @llvm.experimental.noalias.scope.decl(metadata !432), !noalias !365
  tail call void @llvm.experimental.noalias.scope.decl(metadata !434), !noalias !365
  %_3.i.i.i19.i.3 = load i32, ptr %31, align 4, !alias.scope !436, !noalias !437, !noundef !18
  %_4.i.i.i20.i.3 = load i32, ptr %32, align 4, !alias.scope !438, !noalias !439, !noundef !18
  %_0.i21.i.3 = icmp slt i32 %_3.i.i.i19.i.3, %_4.i.i.i20.i.3
  %is_l.i.i.3 = xor i1 %_0.i21.i.3, true
  %35 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i19.i.3, i32 %_4.i.i.i20.i.3)
  store i32 %35, ptr %33, align 4, !noalias !340
  %count.neg.i.i.3 = sext i1 %is_l.i.i.3 to i64
  %36 = getelementptr i32, ptr %31, i64 %count.neg.i.i.3
  %count3.neg.i.i.3 = sext i1 %_0.i21.i.3 to i64
  %37 = getelementptr i32, ptr %32, i64 %count3.neg.i.i.3
  %38 = getelementptr i8, ptr %37, i64 4
  %39 = getelementptr i8, ptr %36, i64 4
  %_31.i = icmp ne ptr %_14.i.i.3, %38
  %_32.i = icmp ne ptr %_12.i.i.3, %39
  %or.cond.i = select i1 %_31.i, i1 true, i1 %_32.i
  br i1 %or.cond.i, label %bb13.i, label %_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h032af468f6d96244E.exit, !prof !440

bb13.i:                                           ; preds = %start
; call core::slice::sort::shared::smallsort::panic_on_ord_violation
  tail call void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #18, !noalias !309
  unreachable

_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h032af468f6d96244E.exit: ; preds = %start
  ret void
}

; core::slice::sort::shared::smallsort::sort8_stable
; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17hb436af159d79a6a0E(ptr noundef nonnull readonly captures(none) %v_base, ptr noundef nonnull writeonly captures(none) %dst, ptr noundef nonnull captures(address) %scratch_base) unnamed_addr #0 {
start:
; call core::slice::sort::shared::smallsort::sort4_stable
  tail call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h3cc38142706e8f81E(ptr noundef %v_base, ptr noundef %scratch_base)
  %_9 = getelementptr inbounds nuw i8, ptr %v_base, i64 16
  %_10 = getelementptr inbounds nuw i8, ptr %scratch_base, i64 16
; call core::slice::sort::shared::smallsort::sort4_stable
  tail call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h3cc38142706e8f81E(ptr noundef %_9, ptr noundef %_10)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !441)
  %0 = getelementptr inbounds nuw i8, ptr %dst, i64 28
  %1 = getelementptr inbounds nuw i8, ptr %scratch_base, i64 28
  %2 = getelementptr i8, ptr %scratch_base, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !444)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !447)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !449), !noalias !452
  tail call void @llvm.experimental.noalias.scope.decl(metadata !455), !noalias !452
  %_6.i.i.i = load float, ptr %scratch_base, align 4, !alias.scope !457, !noalias !458, !noundef !18
  %_7.i.i.i = load float, ptr %_10, align 4, !alias.scope !459, !noalias !460, !noundef !18
  %brmerge.not.i.i = fcmp uno float %_6.i.i.i, %_7.i.i.i
  br i1 %brmerge.not.i.i, label %bb6.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit.i", !prof !21

bb6.i.i.i:                                        ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit24.i.2", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit24.i.1", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit24.i", %start
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_aff0f19c9c77241ccbf897612486dc62) #18, !noalias !461
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit.i": ; preds = %start
  %_8.i.mux.i.i = fcmp olt float %_6.i.i.i, %_7.i.i.i
  %..i17.i = select i1 %_8.i.mux.i.i, ptr %_10, ptr %scratch_base
  %3 = load i32, ptr %..i17.i, align 4, !alias.scope !441, !noalias !462
  store i32 %3, ptr %dst, align 4, !noalias !464
  tail call void @llvm.experimental.noalias.scope.decl(metadata !465)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !468)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !470), !noalias !473
  tail call void @llvm.experimental.noalias.scope.decl(metadata !476), !noalias !473
  %_6.i.i19.i = load float, ptr %2, align 4, !alias.scope !478, !noalias !479, !noundef !18
  %_7.i.i20.i = load float, ptr %1, align 4, !alias.scope !480, !noalias !481, !noundef !18
  %brmerge.not.i21.i = fcmp uno float %_6.i.i19.i, %_7.i.i20.i
  br i1 %brmerge.not.i21.i, label %bb6.i.i23.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit24.i", !prof !21

bb6.i.i23.i:                                      ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit.i.3", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit.i.2", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit.i.1", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit.i"
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_aff0f19c9c77241ccbf897612486dc62) #18, !noalias !482
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit24.i": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit.i"
  %is_l.i18.i = xor i1 %_8.i.mux.i.i, true
  %count2.i.i = zext i1 %is_l.i18.i to i64
  %_14.i.i = getelementptr inbounds nuw float, ptr %scratch_base, i64 %count2.i.i
  %count.i.i = zext i1 %_8.i.mux.i.i to i64
  %_12.i.i = getelementptr inbounds nuw float, ptr %_10, i64 %count.i.i
  %_8.i.mux.i22.i = fcmp olt float %_6.i.i19.i, %_7.i.i20.i
  %..i.i = select i1 %_8.i.mux.i22.i, ptr %2, ptr %1
  %is_l.i.i = xor i1 %_8.i.mux.i22.i, true
  %4 = load i32, ptr %..i.i, align 4, !alias.scope !441, !noalias !483
  store i32 %4, ptr %0, align 4, !noalias !485
  %count.neg.i.i = sext i1 %is_l.i.i to i64
  %5 = getelementptr float, ptr %1, i64 %count.neg.i.i
  %count3.neg.i.i = sext i1 %_8.i.mux.i22.i to i64
  %6 = getelementptr float, ptr %2, i64 %count3.neg.i.i
  %7 = getelementptr inbounds nuw i8, ptr %dst, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !486)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !488)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !490), !noalias !452
  tail call void @llvm.experimental.noalias.scope.decl(metadata !492), !noalias !452
  %_6.i.i.i.1 = load float, ptr %_14.i.i, align 4, !alias.scope !494, !noalias !495, !noundef !18
  %_7.i.i.i.1 = load float, ptr %_12.i.i, align 4, !alias.scope !496, !noalias !497, !noundef !18
  %brmerge.not.i.i.1 = fcmp uno float %_6.i.i.i.1, %_7.i.i.i.1
  br i1 %brmerge.not.i.i.1, label %bb6.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit.i.1", !prof !21

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit.i.1": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit24.i"
  %_16.i.i = getelementptr inbounds nuw i8, ptr %dst, i64 4
  %_8.i.mux.i.i.1 = fcmp olt float %_6.i.i.i.1, %_7.i.i.i.1
  %..i17.i.1 = select i1 %_8.i.mux.i.i.1, ptr %_12.i.i, ptr %_14.i.i
  %8 = load i32, ptr %..i17.i.1, align 4, !alias.scope !441, !noalias !462
  store i32 %8, ptr %_16.i.i, align 4, !noalias !464
  tail call void @llvm.experimental.noalias.scope.decl(metadata !498)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !500)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !502), !noalias !473
  tail call void @llvm.experimental.noalias.scope.decl(metadata !504), !noalias !473
  %_6.i.i19.i.1 = load float, ptr %6, align 4, !alias.scope !506, !noalias !507, !noundef !18
  %_7.i.i20.i.1 = load float, ptr %5, align 4, !alias.scope !508, !noalias !509, !noundef !18
  %brmerge.not.i21.i.1 = fcmp uno float %_6.i.i19.i.1, %_7.i.i20.i.1
  br i1 %brmerge.not.i21.i.1, label %bb6.i.i23.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit24.i.1", !prof !21

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit24.i.1": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit.i.1"
  %is_l.i18.i.1 = xor i1 %_8.i.mux.i.i.1, true
  %count2.i.i.1 = zext i1 %is_l.i18.i.1 to i64
  %_14.i.i.1 = getelementptr inbounds nuw float, ptr %_14.i.i, i64 %count2.i.i.1
  %count.i.i.1 = zext i1 %_8.i.mux.i.i.1 to i64
  %_12.i.i.1 = getelementptr inbounds nuw float, ptr %_12.i.i, i64 %count.i.i.1
  %_8.i.mux.i22.i.1 = fcmp olt float %_6.i.i19.i.1, %_7.i.i20.i.1
  %..i.i.1 = select i1 %_8.i.mux.i22.i.1, ptr %6, ptr %5
  %is_l.i.i.1 = xor i1 %_8.i.mux.i22.i.1, true
  %9 = load i32, ptr %..i.i.1, align 4, !alias.scope !441, !noalias !483
  store i32 %9, ptr %7, align 4, !noalias !485
  %count.neg.i.i.1 = sext i1 %is_l.i.i.1 to i64
  %10 = getelementptr float, ptr %5, i64 %count.neg.i.i.1
  %count3.neg.i.i.1 = sext i1 %_8.i.mux.i22.i.1 to i64
  %11 = getelementptr float, ptr %6, i64 %count3.neg.i.i.1
  %12 = getelementptr inbounds nuw i8, ptr %dst, i64 20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !510)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !512)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !514), !noalias !452
  tail call void @llvm.experimental.noalias.scope.decl(metadata !516), !noalias !452
  %_6.i.i.i.2 = load float, ptr %_14.i.i.1, align 4, !alias.scope !518, !noalias !519, !noundef !18
  %_7.i.i.i.2 = load float, ptr %_12.i.i.1, align 4, !alias.scope !520, !noalias !521, !noundef !18
  %brmerge.not.i.i.2 = fcmp uno float %_6.i.i.i.2, %_7.i.i.i.2
  br i1 %brmerge.not.i.i.2, label %bb6.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit.i.2", !prof !21

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit.i.2": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit24.i.1"
  %_16.i.i.1 = getelementptr inbounds nuw i8, ptr %dst, i64 8
  %_8.i.mux.i.i.2 = fcmp olt float %_6.i.i.i.2, %_7.i.i.i.2
  %..i17.i.2 = select i1 %_8.i.mux.i.i.2, ptr %_12.i.i.1, ptr %_14.i.i.1
  %13 = load i32, ptr %..i17.i.2, align 4, !alias.scope !441, !noalias !462
  store i32 %13, ptr %_16.i.i.1, align 4, !noalias !464
  tail call void @llvm.experimental.noalias.scope.decl(metadata !522)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !524)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !526), !noalias !473
  tail call void @llvm.experimental.noalias.scope.decl(metadata !528), !noalias !473
  %_6.i.i19.i.2 = load float, ptr %11, align 4, !alias.scope !530, !noalias !531, !noundef !18
  %_7.i.i20.i.2 = load float, ptr %10, align 4, !alias.scope !532, !noalias !533, !noundef !18
  %brmerge.not.i21.i.2 = fcmp uno float %_6.i.i19.i.2, %_7.i.i20.i.2
  br i1 %brmerge.not.i21.i.2, label %bb6.i.i23.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit24.i.2", !prof !21

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit24.i.2": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit.i.2"
  %is_l.i18.i.2 = xor i1 %_8.i.mux.i.i.2, true
  %count2.i.i.2 = zext i1 %is_l.i18.i.2 to i64
  %_14.i.i.2 = getelementptr inbounds nuw float, ptr %_14.i.i.1, i64 %count2.i.i.2
  %count.i.i.2 = zext i1 %_8.i.mux.i.i.2 to i64
  %_12.i.i.2 = getelementptr inbounds nuw float, ptr %_12.i.i.1, i64 %count.i.i.2
  %_8.i.mux.i22.i.2 = fcmp olt float %_6.i.i19.i.2, %_7.i.i20.i.2
  %..i.i.2 = select i1 %_8.i.mux.i22.i.2, ptr %11, ptr %10
  %is_l.i.i.2 = xor i1 %_8.i.mux.i22.i.2, true
  %14 = load i32, ptr %..i.i.2, align 4, !alias.scope !441, !noalias !483
  store i32 %14, ptr %12, align 4, !noalias !485
  %count.neg.i.i.2 = sext i1 %is_l.i.i.2 to i64
  %15 = getelementptr float, ptr %10, i64 %count.neg.i.i.2
  %count3.neg.i.i.2 = sext i1 %_8.i.mux.i22.i.2 to i64
  %16 = getelementptr float, ptr %11, i64 %count3.neg.i.i.2
  %17 = getelementptr inbounds nuw i8, ptr %dst, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !534)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !536)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !538), !noalias !452
  tail call void @llvm.experimental.noalias.scope.decl(metadata !540), !noalias !452
  %_6.i.i.i.3 = load float, ptr %_14.i.i.2, align 4, !alias.scope !542, !noalias !543, !noundef !18
  %_7.i.i.i.3 = load float, ptr %_12.i.i.2, align 4, !alias.scope !544, !noalias !545, !noundef !18
  %brmerge.not.i.i.3 = fcmp uno float %_6.i.i.i.3, %_7.i.i.i.3
  br i1 %brmerge.not.i.i.3, label %bb6.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit.i.3", !prof !21

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit.i.3": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit24.i.2"
  %_16.i.i.2 = getelementptr inbounds nuw i8, ptr %dst, i64 12
  %_8.i.mux.i.i.3 = fcmp olt float %_6.i.i.i.3, %_7.i.i.i.3
  %..i17.i.3 = select i1 %_8.i.mux.i.i.3, ptr %_12.i.i.2, ptr %_14.i.i.2
  %18 = load i32, ptr %..i17.i.3, align 4, !alias.scope !441, !noalias !462
  store i32 %18, ptr %_16.i.i.2, align 4, !noalias !464
  tail call void @llvm.experimental.noalias.scope.decl(metadata !546)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !548)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !550), !noalias !473
  tail call void @llvm.experimental.noalias.scope.decl(metadata !552), !noalias !473
  %_6.i.i19.i.3 = load float, ptr %16, align 4, !alias.scope !554, !noalias !555, !noundef !18
  %_7.i.i20.i.3 = load float, ptr %15, align 4, !alias.scope !556, !noalias !557, !noundef !18
  %brmerge.not.i21.i.3 = fcmp uno float %_6.i.i19.i.3, %_7.i.i20.i.3
  br i1 %brmerge.not.i21.i.3, label %bb6.i.i23.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit24.i.3", !prof !21

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit24.i.3": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit.i.3"
  %is_l.i18.i.3 = xor i1 %_8.i.mux.i.i.3, true
  %count2.i.i.3 = zext i1 %is_l.i18.i.3 to i64
  %_14.i.i.3 = getelementptr inbounds nuw float, ptr %_14.i.i.2, i64 %count2.i.i.3
  %count.i.i.3 = zext i1 %_8.i.mux.i.i.3 to i64
  %_12.i.i.3 = getelementptr inbounds nuw float, ptr %_12.i.i.2, i64 %count.i.i.3
  %_8.i.mux.i22.i.3 = fcmp olt float %_6.i.i19.i.3, %_7.i.i20.i.3
  %..i.i.3 = select i1 %_8.i.mux.i22.i.3, ptr %16, ptr %15
  %is_l.i.i.3 = xor i1 %_8.i.mux.i22.i.3, true
  %19 = load i32, ptr %..i.i.3, align 4, !alias.scope !441, !noalias !483
  store i32 %19, ptr %17, align 4, !noalias !485
  %count.neg.i.i.3 = sext i1 %is_l.i.i.3 to i64
  %20 = getelementptr float, ptr %15, i64 %count.neg.i.i.3
  %count3.neg.i.i.3 = sext i1 %_8.i.mux.i22.i.3 to i64
  %21 = getelementptr float, ptr %16, i64 %count3.neg.i.i.3
  %22 = getelementptr i8, ptr %21, i64 4
  %23 = getelementptr i8, ptr %20, i64 4
  %_31.i = icmp ne ptr %_14.i.i.3, %22
  %_32.i = icmp ne ptr %_12.i.i.3, %23
  %or.cond.i = select i1 %_31.i, i1 true, i1 %_32.i
  br i1 %or.cond.i, label %bb13.i, label %_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h9651503ae4aa7058E.exit, !prof !440

bb13.i:                                           ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit24.i.3"
; call core::slice::sort::shared::smallsort::panic_on_ord_violation
  tail call void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #18, !noalias !441
  unreachable

_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h9651503ae4aa7058E.exit: ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit24.i.3"
  ret void
}

; core::slice::sort::shared::smallsort::insertion_sort_shift_left
; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17ha80044342790034cE(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 2, 21) %v.1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb5.preheader:
  %v_end.idx = shl nuw nsw i64 %v.1, 2
  %v_end = getelementptr inbounds nuw i8, ptr %v.0, i64 %v_end.idx
  %tail.sroa.0.03 = getelementptr inbounds nuw i8, ptr %v.0, i64 4
  br label %bb5

bb7:                                              ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17hddc65c3a9e959cd9E.exit
  ret void

bb5:                                              ; preds = %bb5.preheader, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hddc65c3a9e959cd9E.exit
  %tail.sroa.0.06 = phi ptr [ %tail.sroa.0.0, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hddc65c3a9e959cd9E.exit ], [ %tail.sroa.0.03, %bb5.preheader ]
  %v.0.pn5 = phi ptr [ %tail.sroa.0.06, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hddc65c3a9e959cd9E.exit ], [ %v.0, %bb5.preheader ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !558)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !561)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !563)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !566)
  %_6.i.i.i = load float, ptr %v.0.pn5, align 4, !alias.scope !568, !noalias !569, !noundef !18
  %_7.i.i.i = load float, ptr %tail.sroa.0.06, align 4, !alias.scope !569, !noalias !568, !noundef !18
  %brmerge.not.i.i = fcmp uno float %_6.i.i.i, %_7.i.i.i
  br i1 %brmerge.not.i.i, label %bb6.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit.i", !prof !21

bb6.i.i.i:                                        ; preds = %bb5
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_aff0f19c9c77241ccbf897612486dc62) #18, !noalias !570
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit.i": ; preds = %bb5
  %_8.i.mux.i.i = fcmp olt float %_6.i.i.i, %_7.i.i.i
  br i1 %_8.i.mux.i.i, label %bb4.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hddc65c3a9e959cd9E.exit

bb4.i:                                            ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit.i", %bb7.i
  %.in.i = phi float [ %_6.i.i1.i, %bb7.i ], [ %_6.i.i.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit.i" ]
  %gap_guard.sroa.5.0.i = phi ptr [ %sift.sroa.0.0.i, %bb7.i ], [ %tail.sroa.0.06, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit.i" ]
  %sift.sroa.0.0.i = phi ptr [ %0, %bb7.i ], [ %v.0.pn5, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit.i" ]
  store float %.in.i, ptr %gap_guard.sroa.5.0.i, align 4
  %_18.i = icmp eq ptr %sift.sroa.0.0.i, %v.0
  br i1 %_18.i, label %bb10.i, label %bb6.i

bb6.i:                                            ; preds = %bb4.i
  %0 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i, i64 -4
  %_6.i.i1.i = load float, ptr %0, align 4, !alias.scope !571, !noalias !576, !noundef !18
  %brmerge.not.i3.i = fcmp uno float %_6.i.i1.i, %_7.i.i.i
  br i1 %brmerge.not.i3.i, label %bb6.i.i5.i, label %bb7.i, !prof !21

bb6.i.i5.i:                                       ; preds = %bb6.i
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_aff0f19c9c77241ccbf897612486dc62) #18
          to label %.noexc.i unwind label %bb14.i

.noexc.i:                                         ; preds = %bb6.i.i5.i
  unreachable

bb7.i:                                            ; preds = %bb6.i
  %_8.i.mux.i4.i = fcmp olt float %_6.i.i1.i, %_7.i.i.i
  br i1 %_8.i.mux.i4.i, label %bb4.i, label %bb10.i

bb10.i:                                           ; preds = %bb7.i, %bb4.i
  %sift.sroa.0.0.i.lcssa = phi ptr [ %sift.sroa.0.0.i, %bb7.i ], [ %v.0, %bb4.i ]
  store float %_7.i.i.i, ptr %sift.sroa.0.0.i.lcssa, align 4, !noalias !579
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hddc65c3a9e959cd9E.exit

bb14.i:                                           ; preds = %bb6.i.i5.i
  %1 = landingpad { ptr, i32 }
          cleanup
  store float %_7.i.i.i, ptr %sift.sroa.0.0.i, align 4, !noalias !584
  resume { ptr, i32 } %1

_ZN4core5slice4sort6shared9smallsort11insert_tail17hddc65c3a9e959cd9E.exit: ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit.i", %bb10.i
  %tail.sroa.0.0 = getelementptr inbounds nuw i8, ptr %tail.sroa.0.06, i64 4
  %_11.not = icmp eq ptr %tail.sroa.0.0, %v_end
  br i1 %_11.not, label %bb7, label %bb5
}

; core::slice::sort::stable::driftsort_main
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable14driftsort_main17hbb4268273d719db1E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #2 personality ptr @rust_eh_personality {
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
  br i1 %or.cond.i.i.i.i, label %bb3.i.i, label %bb5.i.i.i, !prof !589

bb5.i.i.i:                                        ; preds = %bb4
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !590
; call __rustc::__rust_alloc
  %0 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef range(i64 1, 0) %_21.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !590
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
  invoke fastcc void @_ZN4core5slice4sort6stable5drift4sort17h4342cf6a1d32a0e4E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 4 %stack_buf.pn, i64 noundef %stack_scratch.sroa.4.0, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %heap_buf.sroa.6.1, i64 noundef %3, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !595
  br label %bb10

bb11:                                             ; preds = %bb2.i.i.i3.i10, %cleanup
  resume { ptr, i32 } %2

bb2.i.i.i3.i10:                                   ; preds = %cleanup
  %5 = shl nuw i64 %_0.sroa.0.0.i7, 2
  %6 = icmp ne ptr %heap_buf.sroa.6.1, null
  call void @llvm.assume(i1 %6)
; call __rustc::__rust_dealloc
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %heap_buf.sroa.6.1, i64 noundef %5, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !604
  br label %bb11
}

; core::slice::sort::stable::driftsort_main
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable14driftsort_main17hffe769f32f3a9570E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #2 personality ptr @rust_eh_personality {
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
  br i1 %or.cond.i.i.i.i, label %bb3.i.i, label %bb5.i.i.i, !prof !589

bb5.i.i.i:                                        ; preds = %bb4
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !613
; call __rustc::__rust_alloc
  %0 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef range(i64 1, 0) %_21.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !613
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
  invoke fastcc void @_ZN4core5slice4sort6stable5drift4sort17hbb05b5fcd5573c20E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 4 %stack_buf.pn, i64 noundef %stack_scratch.sroa.4.0, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %heap_buf.sroa.6.1, i64 noundef %3, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !618
  br label %bb10

bb11:                                             ; preds = %bb2.i.i.i3.i10, %cleanup
  resume { ptr, i32 } %2

bb2.i.i.i3.i10:                                   ; preds = %cleanup
  %5 = shl nuw i64 %_0.sroa.0.0.i7, 2
  %6 = icmp ne ptr %heap_buf.sroa.6.1, null
  call void @llvm.assume(i1 %6)
; call __rustc::__rust_dealloc
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %heap_buf.sroa.6.1, i64 noundef %5, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !627
  br label %bb11
}

; core::slice::sort::stable::drift::sort
; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17h4342cf6a1d32a0e4E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i1 noundef zeroext %eager_sort, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %_13.not.i121 = icmp ugt i64 %min_good_run_len.sroa.0.0, 2
  %_13.not.i127 = icmp ugt i64 %min_good_run_len.sroa.0.0, 2
  br label %bb6

bb6:                                              ; preds = %bb19, %bb5
  %prev_run.sroa.0.0 = phi i64 [ 1, %bb5 ], [ %next_run.sroa.0.0, %bb19 ]
  %scan_idx.sroa.0.0 = phi i64 [ 0, %bb5 ], [ %43, %bb19 ]
  %stack_len.sroa.0.0 = phi i64 [ 0, %bb5 ], [ %42, %bb19 ]
  %_22 = icmp ult i64 %scan_idx.sroa.0.0, %v.1
  br i1 %_22, label %bb30, label %bb10

bb10:                                             ; preds = %bb6, %_ZN4core5slice4sort6stable5drift10create_run17h30ca0d8f7e4fb878E.exit
  %desired_depth.sroa.0.0 = phi i8 [ %21, %_ZN4core5slice4sort6stable5drift10create_run17h30ca0d8f7e4fb878E.exit ], [ 0, %bb6 ]
  %next_run.sroa.0.0 = phi i64 [ %_0.sroa.0.0.i40, %_ZN4core5slice4sort6stable5drift10create_run17h30ca0d8f7e4fb878E.exit ], [ 1, %bb6 ]
  %_37101 = icmp ugt i64 %stack_len.sroa.0.0, 1
  br i1 %_37101, label %bb12.lr.ph, label %bb17

bb12.lr.ph:                                       ; preds = %bb10
  %v_end.i = getelementptr inbounds nuw float, ptr %v.0, i64 %scan_idx.sroa.0.0
  br label %bb12

bb30:                                             ; preds = %bb6
  %new_len = sub nuw nsw i64 %v.1, %scan_idx.sroa.0.0
  %_82 = getelementptr inbounds nuw float, ptr %v.0, i64 %scan_idx.sroa.0.0
  %_7.not.i = icmp ult i64 %new_len, %min_good_run_len.sroa.0.0
  br i1 %_7.not.i, label %bb7.i41, label %bb1.i

bb7.i41:                                          ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h8c904010ec24d1acE.exit.i.thread124, %_ZN4core5slice4sort6shared17find_existing_run17h8c904010ec24d1acE.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17h8c904010ec24d1acE.exit.i, %bb30
  br i1 %eager_sort, label %bb16.i43, label %bb11.i42

bb1.i:                                            ; preds = %bb30
  %_4.i.i = icmp samesign ult i64 %new_len, 2
  br i1 %_4.i.i, label %bb5.i38, label %bb2.i.i

bb2.i.i:                                          ; preds = %bb1.i
  %_28.i.i = getelementptr inbounds nuw i8, ptr %_82, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !636)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !639)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !641), !noalias !644
  tail call void @llvm.experimental.noalias.scope.decl(metadata !647), !noalias !644
  %_6.i.i66 = load float, ptr %_82, align 4, !alias.scope !649, !noalias !650, !noundef !18
  %_7.i.i67 = load float, ptr %_28.i.i, align 4, !alias.scope !651, !noalias !652, !noundef !18
  %brmerge.not.i68 = fcmp uno float %_6.i.i66, %_7.i.i67
  br i1 %brmerge.not.i68, label %bb6.i.i70, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit71", !prof !21

bb6.i.i70:                                        ; preds = %bb2.i.i
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_aff0f19c9c77241ccbf897612486dc62) #18, !noalias !653
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit71": ; preds = %bb2.i.i
  %_8.i.mux.i69 = fcmp olt float %_6.i.i66, %_7.i.i67
  %_10.i.i97.not = icmp eq i64 %new_len, 2
  br i1 %_8.i.mux.i69, label %bb4.i.i.preheader, label %bb11.i.i.preheader

bb11.i.i.preheader:                               ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit71"
  br i1 %_10.i.i97.not, label %_ZN4core5slice4sort6shared17find_existing_run17h8c904010ec24d1acE.exit.i.thread, label %bb12.i.i

bb4.i.i.preheader:                                ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit71"
  br i1 %_10.i.i97.not, label %_ZN4core5slice4sort6shared17find_existing_run17h8c904010ec24d1acE.exit.i.thread124, label %bb5.i.i

bb12.i.i:                                         ; preds = %bb11.i.i.preheader, %bb15.i.i
  %_6.i.i60 = phi float [ %_7.i.i61, %bb15.i.i ], [ %_7.i.i67, %bb11.i.i.preheader ]
  %run_len.sroa.0.0.i.i95 = phi i64 [ %3, %bb15.i.i ], [ 2, %bb11.i.i.preheader ]
  %2 = getelementptr inbounds nuw float, ptr %_82, i64 %run_len.sroa.0.0.i.i95
  tail call void @llvm.experimental.noalias.scope.decl(metadata !654)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !657), !noalias !644
  %_7.i.i61 = load float, ptr %2, align 4, !alias.scope !660, !noalias !661, !noundef !18
  %brmerge.not.i62 = fcmp uno float %_6.i.i60, %_7.i.i61
  br i1 %brmerge.not.i62, label %bb6.i.i64, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit65", !prof !21

bb6.i.i64:                                        ; preds = %bb12.i.i
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_aff0f19c9c77241ccbf897612486dc62) #18, !noalias !664
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit65": ; preds = %bb12.i.i
  %_8.i.mux.i63 = fcmp olt float %_6.i.i60, %_7.i.i61
  br i1 %_8.i.mux.i63, label %_ZN4core5slice4sort6shared17find_existing_run17h8c904010ec24d1acE.exit.i, label %bb15.i.i

bb15.i.i:                                         ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit65"
  %3 = add nuw i64 %run_len.sroa.0.0.i.i95, 1
  %exitcond.not = icmp eq i64 %3, %new_len
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h8c904010ec24d1acE.exit.i, label %bb12.i.i

bb5.i.i:                                          ; preds = %bb4.i.i.preheader, %bb7.i.i
  %_6.i.i = phi float [ %_7.i.i58, %bb7.i.i ], [ %_7.i.i67, %bb4.i.i.preheader ]
  %run_len.sroa.0.1.i.i98 = phi i64 [ %5, %bb7.i.i ], [ 2, %bb4.i.i.preheader ]
  %4 = getelementptr inbounds nuw float, ptr %_82, i64 %run_len.sroa.0.1.i.i98
  tail call void @llvm.experimental.noalias.scope.decl(metadata !665)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !668), !noalias !644
  %_7.i.i58 = load float, ptr %4, align 4, !alias.scope !671, !noalias !672, !noundef !18
  %brmerge.not.i = fcmp uno float %_6.i.i, %_7.i.i58
  br i1 %brmerge.not.i, label %bb6.i.i59, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit", !prof !21

bb6.i.i59:                                        ; preds = %bb5.i.i
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_aff0f19c9c77241ccbf897612486dc62) #18, !noalias !675
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit": ; preds = %bb5.i.i
  %_8.i.mux.i = fcmp olt float %_6.i.i, %_7.i.i58
  br i1 %_8.i.mux.i, label %bb7.i.i, label %_ZN4core5slice4sort6shared17find_existing_run17h8c904010ec24d1acE.exit.i

bb7.i.i:                                          ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit"
  %5 = add nuw i64 %run_len.sroa.0.1.i.i98, 1
  %exitcond116.not = icmp eq i64 %5, %new_len
  br i1 %exitcond116.not, label %_ZN4core5slice4sort6shared17find_existing_run17h8c904010ec24d1acE.exit.i, label %bb5.i.i

_ZN4core5slice4sort6shared17find_existing_run17h8c904010ec24d1acE.exit.i: ; preds = %bb15.i.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit65", %bb7.i.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit"
  %_0.sroa.0.0.i.i = phi i64 [ %new_len, %bb7.i.i ], [ %run_len.sroa.0.1.i.i98, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit" ], [ %new_len, %bb15.i.i ], [ %run_len.sroa.0.0.i.i95, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit65" ]
  %_12.i = icmp samesign ule i64 %_0.sroa.0.0.i.i, %new_len
  tail call void @llvm.assume(i1 %_12.i)
  %_13.not.i = icmp ult i64 %_0.sroa.0.0.i.i, %min_good_run_len.sroa.0.0
  br i1 %_13.not.i, label %bb7.i41, label %bb3.i37

_ZN4core5slice4sort6shared17find_existing_run17h8c904010ec24d1acE.exit.i.thread124: ; preds = %bb4.i.i.preheader
  br i1 %_13.not.i127, label %bb7.i41, label %bb5.preheader.i.i

_ZN4core5slice4sort6shared17find_existing_run17h8c904010ec24d1acE.exit.i.thread: ; preds = %bb11.i.i.preheader
  br i1 %_13.not.i121, label %bb7.i41, label %bb5.i38

bb3.i37:                                          ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h8c904010ec24d1acE.exit.i
  br i1 %_8.i.mux.i69, label %bb14.i, label %bb5.i38

bb11.i42:                                         ; preds = %bb7.i41
  %_0.sroa.0.0.i57 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %new_len, i64 %min_good_run_len.sroa.0.0)
  %_36.i = shl nuw nsw i64 %_0.sroa.0.0.i57, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h30ca0d8f7e4fb878E.exit

bb16.i43:                                         ; preds = %bb7.i41
  %_0.sroa.0.0.i56 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %new_len, i64 32)
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h400e690f4471152dE(ptr noalias noundef nonnull align 4 %_82, i64 noundef %_0.sroa.0.0.i56, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef 0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #21
  %_35.i = shl nuw nsw i64 %_0.sroa.0.0.i56, 1
  %_34.i = or disjoint i64 %_35.i, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h30ca0d8f7e4fb878E.exit

bb5.i38:                                          ; preds = %bb6.i.i, %middle.block, %_ZN4core5slice4sort6shared17find_existing_run17h8c904010ec24d1acE.exit.i.thread, %bb1.i, %bb14.i, %bb3.i37
  %_0.sroa.0.0.i.i7780 = phi i64 [ %_0.sroa.0.0.i.i, %bb3.i37 ], [ 1, %bb14.i ], [ %new_len, %bb1.i ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h8c904010ec24d1acE.exit.i.thread ], [ %_0.sroa.0.0.i.i122130134, %middle.block ], [ %_0.sroa.0.0.i.i122130134, %bb6.i.i ]
  %_27.i = shl nuw nsw i64 %_0.sroa.0.0.i.i7780, 1
  %_26.i = or disjoint i64 %_27.i, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h30ca0d8f7e4fb878E.exit

bb14.i:                                           ; preds = %bb3.i37
  %half_len2.i = lshr i64 %_0.sroa.0.0.i.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !676), !noalias !679
  tail call void @llvm.experimental.noalias.scope.decl(metadata !681), !noalias !679
  %_915.not.i.i = icmp samesign ult i64 %_0.sroa.0.0.i.i, 2
  br i1 %_915.not.i.i, label %bb5.i38, label %bb5.preheader.i.i

bb5.preheader.i.i:                                ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h8c904010ec24d1acE.exit.i.thread124, %bb14.i
  %half_len2.i135 = phi i64 [ %half_len2.i, %bb14.i ], [ 1, %_ZN4core5slice4sort6shared17find_existing_run17h8c904010ec24d1acE.exit.i.thread124 ]
  %_0.sroa.0.0.i.i122130134 = phi i64 [ %_0.sroa.0.0.i.i, %bb14.i ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h8c904010ec24d1acE.exit.i.thread124 ]
  %end.i = getelementptr inbounds nuw float, ptr %_82, i64 %_0.sroa.0.0.i.i122130134
  %min.iters.check = icmp samesign ult i64 %half_len2.i135, 8
  br i1 %min.iters.check, label %bb6.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb5.preheader.i.i
  %n.vec = and i64 %half_len2.i135, 9223372036854775800
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %6 = xor i64 %index, -1
  %7 = getelementptr inbounds nuw float, ptr %_82, i64 %index
  %8 = getelementptr float, ptr %end.i, i64 %6
  %9 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %wide.load = load <4 x float>, ptr %7, align 4, !alias.scope !683, !noalias !686
  %wide.load152 = load <4 x float>, ptr %9, align 4, !alias.scope !683, !noalias !686
  %10 = getelementptr i8, ptr %8, i64 -12
  %11 = getelementptr i8, ptr %8, i64 -28
  %wide.load153 = load <4 x i32>, ptr %10, align 4, !alias.scope !687, !noalias !688
  %reverse = shufflevector <4 x i32> %wide.load153, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %wide.load154 = load <4 x i32>, ptr %11, align 4, !alias.scope !687, !noalias !688
  %reverse155 = shufflevector <4 x i32> %wide.load154, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %12 = getelementptr inbounds nuw i8, ptr %7, i64 16
  store <4 x i32> %reverse, ptr %7, align 4, !alias.scope !683, !noalias !686
  store <4 x i32> %reverse155, ptr %12, align 4, !alias.scope !683, !noalias !686
  %13 = getelementptr i8, ptr %8, i64 -12
  %14 = getelementptr i8, ptr %8, i64 -28
  %reverse156 = shufflevector <4 x float> %wide.load, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x float> %reverse156, ptr %13, align 4, !alias.scope !687, !noalias !688
  %reverse157 = shufflevector <4 x float> %wide.load152, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x float> %reverse157, ptr %14, align 4, !alias.scope !687, !noalias !688
  %index.next = add nuw i64 %index, 8
  %15 = icmp eq i64 %index.next, %n.vec
  br i1 %15, label %middle.block, label %vector.body, !llvm.loop !689

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %half_len2.i135, %n.vec
  br i1 %cmp.n, label %bb5.i38, label %bb6.i.i.preheader

bb6.i.i.preheader:                                ; preds = %bb5.preheader.i.i, %middle.block
  %i.sroa.0.016.i.i.ph = phi i64 [ 0, %bb5.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %bb6.i.i

bb6.i.i:                                          ; preds = %bb6.i.i.preheader, %bb6.i.i
  %i.sroa.0.016.i.i = phi i64 [ %19, %bb6.i.i ], [ %i.sroa.0.016.i.i.ph, %bb6.i.i.preheader ]
  %16 = xor i64 %i.sroa.0.016.i.i, -1
  %x.i.i = getelementptr inbounds nuw float, ptr %_82, i64 %i.sroa.0.016.i.i
  %y.i.i = getelementptr float, ptr %end.i, i64 %16
  %17 = load float, ptr %x.i.i, align 4, !alias.scope !683, !noalias !686, !noundef !18
  %18 = load i32, ptr %y.i.i, align 4, !alias.scope !687, !noalias !688
  store i32 %18, ptr %x.i.i, align 4, !alias.scope !683, !noalias !686
  store float %17, ptr %y.i.i, align 4, !alias.scope !687, !noalias !688
  %19 = add nuw nsw i64 %i.sroa.0.016.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %19, %half_len2.i135
  br i1 %exitcond.not.i.i, label %bb5.i38, label %bb6.i.i, !llvm.loop !692

_ZN4core5slice4sort6stable5drift10create_run17h30ca0d8f7e4fb878E.exit: ; preds = %bb11.i42, %bb16.i43, %bb5.i38
  %_0.sroa.0.0.i40 = phi i64 [ %_26.i, %bb5.i38 ], [ %_34.i, %bb16.i43 ], [ %_36.i, %bb11.i42 ]
  %_31 = lshr i64 %prev_run.sroa.0.0, 1
  %_35 = lshr i64 %_0.sroa.0.0.i40, 1
  %factor = shl i64 %scan_idx.sroa.0.0, 1
  %x = sub i64 %factor, %_31
  %y = add i64 %_35, %factor
  %_90 = mul i64 %x, %scale_factor.sroa.0.0
  %_91 = mul i64 %y, %scale_factor.sroa.0.0
  %self4 = xor i64 %_91, %_90
  %20 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %self4, i1 false)
  %21 = trunc nuw nsw i64 %20 to i8
  br label %bb10

bb12:                                             ; preds = %bb12.lr.ph, %_ZN4core5slice4sort6stable5drift13logical_merge17h426cb9dd2339599bE.exit
  %stack_len.sroa.0.1103 = phi i64 [ %stack_len.sroa.0.0, %bb12.lr.ph ], [ %count, %_ZN4core5slice4sort6stable5drift13logical_merge17h426cb9dd2339599bE.exit ]
  %prev_run.sroa.0.1102 = phi i64 [ %prev_run.sroa.0.0, %bb12.lr.ph ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h426cb9dd2339599bE.exit ]
  %count = add i64 %stack_len.sroa.0.1103, -1
  %_41 = getelementptr inbounds nuw i8, ptr %desired_depth_storage, i64 %count
  %_40 = load i8, ptr %_41, align 1, !noundef !18
  %_39.not = icmp ult i8 %_40, %desired_depth.sroa.0.0
  br i1 %_39.not, label %bb17, label %bb13

bb17:                                             ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17h426cb9dd2339599bE.exit, %bb12, %bb10
  %prev_run.sroa.0.1.lcssa = phi i64 [ %prev_run.sroa.0.0, %bb10 ], [ %prev_run.sroa.0.1102, %bb12 ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h426cb9dd2339599bE.exit ]
  %stack_len.sroa.0.1.lcssa = phi i64 [ %stack_len.sroa.0.0, %bb10 ], [ %stack_len.sroa.0.1103, %bb12 ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17h426cb9dd2339599bE.exit ]
  %_59 = getelementptr inbounds nuw i64, ptr %run_storage, i64 %stack_len.sroa.0.1.lcssa
  store i64 %prev_run.sroa.0.1.lcssa, ptr %_59, align 8
  %_61 = getelementptr inbounds nuw i8, ptr %desired_depth_storage, i64 %stack_len.sroa.0.1.lcssa
  store i8 %desired_depth.sroa.0.0, ptr %_61, align 1
  br i1 %_22, label %bb19, label %bb18

bb13:                                             ; preds = %bb12
  %_46 = getelementptr inbounds nuw i64, ptr %run_storage, i64 %count
  %left10 = load i64, ptr %_46, align 8, !noundef !18
  %_50 = lshr i64 %left10, 1
  %_51 = lshr i64 %prev_run.sroa.0.1102, 1
  %merged_len = add nuw i64 %_50, %_51
  %merge_start_idx = sub i64 %scan_idx.sroa.0.0, %merged_len
  %_98 = getelementptr inbounds nuw float, ptr %v.0, i64 %merge_start_idx
  %can_fit_in_scratch.i = icmp samesign ugt i64 %merged_len, %scratch.1
  %_22.i = and i64 %prev_run.sroa.0.1102, 1
  %_10.not.i = icmp eq i64 %_22.i, 0
  %22 = or i64 %left10, %prev_run.sroa.0.1102
  %23 = and i64 %22, 1
  %24 = icmp ne i64 %23, 0
  %or.cond2.i = or i1 %can_fit_in_scratch.i, %24
  br i1 %or.cond2.i, label %bb3.i, label %bb9.i

bb3.i:                                            ; preds = %bb13
  %_21.i = and i64 %left10, 1
  %_9.not.i = icmp eq i64 %_21.i, 0
  br i1 %_9.not.i, label %bb11.i, label %bb5.i

bb9.i:                                            ; preds = %bb13
  %_40.i = shl nuw nsw i64 %merged_len, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h426cb9dd2339599bE.exit

bb5.i:                                            ; preds = %bb11.i, %bb3.i
  br i1 %_10.not.i, label %bb16.i, label %bb7.i

bb11.i:                                           ; preds = %bb3.i
  %self.i = or i64 %_50, 1
  %25 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i, i1 true)
  %26 = trunc nuw nsw i64 %25 to i32
  %log.i = shl nuw nsw i32 %26, 1
  %limit.i = xor i32 %log.i, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h400e690f4471152dE(ptr noalias noundef nonnull align 4 %_98, i64 noundef range(i64 0, 2305843009213693952) %_50, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #21
  br label %bb5.i

bb7.i:                                            ; preds = %bb16.i, %bb5.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !693)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !696)
  %_6.i = icmp ult i64 %left10, 2
  %_7.i = icmp ult i64 %prev_run.sroa.0.1102, 2
  %or.cond.i = select i1 %_6.i, i1 true, i1 %_7.i
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17he422b79ccbfeebd0E.exit, label %bb2.i

bb2.i:                                            ; preds = %bb7.i
  %_0.sroa.0.0.i.i44 = tail call i64 @llvm.umin.i64(i64 %_51, i64 range(i64 0, -9223372036854775808) %_50)
  %_8.i = icmp samesign ult i64 %scratch.1, %_0.sroa.0.0.i.i44
  br i1 %_8.i, label %_ZN4core5slice4sort6stable5merge5merge17he422b79ccbfeebd0E.exit, label %bb5.i45

bb5.i45:                                          ; preds = %bb2.i
  %v_mid.i = getelementptr inbounds nuw float, ptr %_98, i64 %_50
  %left_is_shorter.not.i = icmp samesign ugt i64 %_50, %_51
  %spec.select.i = select i1 %left_is_shorter.not.i, ptr %v_mid.i, ptr %_98
  %27 = shl nuw nsw i64 %_0.sroa.0.0.i.i44, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %scratch.0, ptr nonnull align 4 %spec.select.i, i64 %27, i1 false), !alias.scope !698
  %_22.i46 = getelementptr inbounds nuw i8, ptr %scratch.0, i64 %27
  br i1 %left_is_shorter.not.i, label %bb1.i.i, label %bb3.i.i

bb1.i.i:                                          ; preds = %bb5.i45, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit.i.i"
  %merge_state.sroa.13.2.i = phi ptr [ %_18.i.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit.i.i" ], [ %v_mid.i, %bb5.i45 ]
  %merge_state.sroa.7.2.i = phi ptr [ %_21.i.i49, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit.i.i" ], [ %_22.i46, %bb5.i45 ]
  %out.sroa.0.0.i.i = phi ptr [ %30, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit.i.i" ], [ %v_end.i, %bb5.i45 ]
  %28 = getelementptr inbounds i8, ptr %merge_state.sroa.13.2.i, i64 -4
  %29 = getelementptr inbounds i8, ptr %merge_state.sroa.7.2.i, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !699)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !702)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !704)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !707)
  %_6.i.i.i.i = load float, ptr %28, align 4, !alias.scope !709, !noalias !710, !noundef !18
  %_7.i.i.i.i = load float, ptr %29, align 4, !alias.scope !713, !noalias !714, !noundef !18
  %brmerge.not.i.i.i = fcmp uno float %_6.i.i.i.i, %_7.i.i.i.i
  br i1 %brmerge.not.i.i.i, label %bb6.i.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit.i.i", !prof !21

bb6.i.i.i.i:                                      ; preds = %bb1.i.i
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_aff0f19c9c77241ccbf897612486dc62) #18
          to label %.noexc.i unwind label %bb20.i, !noalias !698

.noexc.i:                                         ; preds = %bb6.i.i.i.i
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit.i.i": ; preds = %bb1.i.i
  %30 = getelementptr inbounds i8, ptr %out.sroa.0.0.i.i, i64 -4
  %_8.i.mux.i.i.i = fcmp olt float %_6.i.i.i.i, %_7.i.i.i.i
  %..i.i = select i1 %_8.i.mux.i.i.i, ptr %28, ptr %29
  %31 = load i32, ptr %..i.i, align 4, !alias.scope !698, !noalias !715
  store i32 %31, ptr %30, align 4, !alias.scope !693, !noalias !716
  %_20.i.i = xor i1 %_8.i.mux.i.i.i, true
  %count.i.i = zext i1 %_20.i.i to i64
  %_18.i.i = getelementptr inbounds nuw float, ptr %28, i64 %count.i.i
  %count4.i.i = zext i1 %_8.i.mux.i.i.i to i64
  %_21.i.i49 = getelementptr inbounds nuw float, ptr %29, i64 %count4.i.i
  %_23.i.i = icmp eq ptr %_18.i.i, %_98
  %_26.i.i = icmp eq ptr %_21.i.i49, %scratch.0
  %or.cond.i.i = select i1 %_23.i.i, i1 true, i1 %_26.i.i
  br i1 %or.cond.i.i, label %bb16.i48, label %bb1.i.i

bb3.i.i:                                          ; preds = %bb5.i45, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit.i15.i"
  %merge_state.sroa.13.3.i = phi ptr [ %_25.i.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit.i15.i" ], [ %_98, %bb5.i45 ]
  %merge_state.sroa.0.2.i = phi ptr [ %_20.i18.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit.i15.i" ], [ %scratch.0, %bb5.i45 ]
  %right.sroa.0.010.i.i = phi ptr [ %_23.i19.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit.i15.i" ], [ %v_mid.i, %bb5.i45 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !717)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !720)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !722)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !725)
  %_6.i.i.i12.i = load float, ptr %merge_state.sroa.0.2.i, align 4, !alias.scope !727, !noalias !728, !noundef !18
  %_7.i.i.i13.i = load float, ptr %right.sroa.0.010.i.i, align 4, !alias.scope !731, !noalias !732, !noundef !18
  %brmerge.not.i.i14.i = fcmp uno float %_6.i.i.i12.i, %_7.i.i.i13.i
  br i1 %brmerge.not.i.i14.i, label %bb6.i.i.i21.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit.i15.i", !prof !21

bb6.i.i.i21.i:                                    ; preds = %bb3.i.i
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_aff0f19c9c77241ccbf897612486dc62) #18
          to label %.noexc22.i unwind label %bb20.i, !noalias !698

.noexc22.i:                                       ; preds = %bb6.i.i.i21.i
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit.i15.i": ; preds = %bb3.i.i
  %_8.i.mux.i.i16.i = fcmp olt float %_6.i.i.i12.i, %_7.i.i.i13.i
  %consume_left.i.i = xor i1 %_8.i.mux.i.i16.i, true
  %src.sroa.0.0.i.i = select i1 %_8.i.mux.i.i16.i, ptr %right.sroa.0.010.i.i, ptr %merge_state.sroa.0.2.i
  %32 = load i32, ptr %src.sroa.0.0.i.i, align 4, !alias.scope !698, !noalias !733
  store i32 %32, ptr %merge_state.sroa.13.3.i, align 4, !alias.scope !693, !noalias !734
  %count.i17.i = zext i1 %consume_left.i.i to i64
  %_20.i18.i = getelementptr inbounds nuw float, ptr %merge_state.sroa.0.2.i, i64 %count.i17.i
  %count2.i.i = zext i1 %_8.i.mux.i.i16.i to i64
  %_23.i19.i = getelementptr inbounds nuw float, ptr %right.sroa.0.010.i.i, i64 %count2.i.i
  %_25.i.i = getelementptr inbounds nuw i8, ptr %merge_state.sroa.13.3.i, i64 4
  %_7.i.i = icmp ne ptr %_20.i18.i, %_22.i46
  %_10.i.i47 = icmp ne ptr %_23.i19.i, %v_end.i
  %or.cond.i20.i = select i1 %_7.i.i, i1 %_10.i.i47, i1 false
  br i1 %or.cond.i20.i, label %bb3.i.i, label %bb16.i48

bb16.i48:                                         ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit.i15.i", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit.i.i"
  %merge_state.sroa.13.1.i = phi ptr [ %_18.i.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit.i.i" ], [ %_25.i.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit.i15.i" ]
  %merge_state.sroa.7.1.i = phi ptr [ %_21.i.i49, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit.i.i" ], [ %_22.i46, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit.i15.i" ]
  %merge_state.sroa.0.1.i = phi ptr [ %scratch.0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit.i.i" ], [ %_20.i18.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit.i15.i" ]
  %33 = ptrtoint ptr %merge_state.sroa.7.1.i to i64
  %34 = ptrtoint ptr %merge_state.sroa.0.1.i to i64
  %35 = sub nuw i64 %33, %34
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %merge_state.sroa.13.1.i, ptr align 4 %merge_state.sroa.0.1.i, i64 %35, i1 false), !alias.scope !698, !noalias !735
  br label %_ZN4core5slice4sort6stable5merge5merge17he422b79ccbfeebd0E.exit

bb20.i:                                           ; preds = %bb6.i.i.i21.i, %bb6.i.i.i.i
  %merge_state.sroa.13.0.i = phi ptr [ %merge_state.sroa.13.2.i, %bb6.i.i.i.i ], [ %merge_state.sroa.13.3.i, %bb6.i.i.i21.i ]
  %merge_state.sroa.7.0.i = phi ptr [ %merge_state.sroa.7.2.i, %bb6.i.i.i.i ], [ %_22.i46, %bb6.i.i.i21.i ]
  %merge_state.sroa.0.0.i = phi ptr [ %scratch.0, %bb6.i.i.i.i ], [ %merge_state.sroa.0.2.i, %bb6.i.i.i21.i ]
  %36 = landingpad { ptr, i32 }
          cleanup
  %37 = ptrtoint ptr %merge_state.sroa.7.0.i to i64
  %38 = ptrtoint ptr %merge_state.sroa.0.0.i to i64
  %39 = sub nuw i64 %37, %38
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %merge_state.sroa.13.0.i, ptr nonnull align 4 %merge_state.sroa.0.0.i, i64 %39, i1 false), !alias.scope !698, !noalias !740
  resume { ptr, i32 } %36

_ZN4core5slice4sort6stable5merge5merge17he422b79ccbfeebd0E.exit: ; preds = %bb7.i, %bb2.i, %bb16.i48
  %_39.i = shl nuw nsw i64 %merged_len, 1
  %_38.i = or disjoint i64 %_39.i, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h426cb9dd2339599bE.exit

bb16.i:                                           ; preds = %bb5.i
  %_37.i = getelementptr inbounds nuw float, ptr %_98, i64 %_50
  %self.i50 = or i64 %_51, 1
  %40 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i50, i1 true)
  %41 = trunc nuw nsw i64 %40 to i32
  %log.i51 = shl nuw nsw i32 %41, 1
  %limit.i52 = xor i32 %log.i51, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h400e690f4471152dE(ptr noalias noundef nonnull align 4 %_37.i, i64 noundef range(i64 0, 2305843009213693952) %_51, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i52, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #21
  br label %bb7.i

_ZN4core5slice4sort6stable5drift13logical_merge17h426cb9dd2339599bE.exit: ; preds = %bb9.i, %_ZN4core5slice4sort6stable5merge5merge17he422b79ccbfeebd0E.exit
  %_0.sroa.0.0.i = phi i64 [ %_38.i, %_ZN4core5slice4sort6stable5merge5merge17he422b79ccbfeebd0E.exit ], [ %_40.i, %bb9.i ]
  %_37 = icmp ugt i64 %count, 1
  br i1 %_37, label %bb12, label %bb17

bb19:                                             ; preds = %bb17
  %42 = add i64 %stack_len.sroa.0.1.lcssa, 1
  %_65 = lshr i64 %next_run.sroa.0.0, 1
  %43 = add nuw i64 %_65, %scan_idx.sroa.0.0
  br label %bb6

bb18:                                             ; preds = %bb17
  %_99 = and i64 %prev_run.sroa.0.1.lcssa, 1
  %_66.not = icmp eq i64 %_99, 0
  br i1 %_66.not, label %bb20, label %bb21

bb20:                                             ; preds = %bb18
  %self.i53 = or i64 %v.1, 1
  %44 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i53, i1 true)
  %45 = trunc nuw nsw i64 %44 to i32
  %log.i54 = shl nuw nsw i32 %45, 1
  %limit.i55 = xor i32 %log.i54, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h400e690f4471152dE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i55, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #21
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
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17hbb05b5fcd5573c20E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i1 noundef zeroext %eager_sort, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) unnamed_addr #0 personality ptr @rust_eh_personality {
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

bb10:                                             ; preds = %bb6, %_ZN4core5slice4sort6stable5drift10create_run17hff11c011dbc83c78E.exit
  %desired_depth.sroa.0.0 = phi i8 [ %18, %_ZN4core5slice4sort6stable5drift10create_run17hff11c011dbc83c78E.exit ], [ 0, %bb6 ]
  %next_run.sroa.0.0 = phi i64 [ %_0.sroa.0.0.i40, %_ZN4core5slice4sort6stable5drift10create_run17hff11c011dbc83c78E.exit ], [ 1, %bb6 ]
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

bb7.i41:                                          ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h6806c9c6952450e0E.exit.i.thread100, %_ZN4core5slice4sort6shared17find_existing_run17h6806c9c6952450e0E.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17h6806c9c6952450e0E.exit.i, %bb30
  br i1 %eager_sort, label %bb16.i43, label %bb11.i42

bb1.i:                                            ; preds = %bb30
  %_4.i.i = icmp samesign ult i64 %new_len, 2
  br i1 %_4.i.i, label %bb5.i38, label %bb2.i.i

bb2.i.i:                                          ; preds = %bb1.i
  %_28.i.i = getelementptr inbounds nuw i8, ptr %_82, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !745)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !748)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !750), !noalias !753
  tail call void @llvm.experimental.noalias.scope.decl(metadata !756), !noalias !753
  tail call void @llvm.experimental.noalias.scope.decl(metadata !758), !noalias !753
  tail call void @llvm.experimental.noalias.scope.decl(metadata !761), !noalias !753
  %_3.i.i.i61 = load i32, ptr %_28.i.i, align 4, !alias.scope !763, !noalias !764, !noundef !18
  %_4.i.i.i62 = load i32, ptr %_82, align 4, !alias.scope !765, !noalias !766, !noundef !18
  %_0.i63 = icmp slt i32 %_3.i.i.i61, %_4.i.i.i62
  %_10.i.i78.not = icmp eq i64 %new_len, 2
  br i1 %_0.i63, label %bb4.i.i.preheader, label %bb11.i.i.preheader

bb11.i.i.preheader:                               ; preds = %bb2.i.i
  br i1 %_10.i.i78.not, label %_ZN4core5slice4sort6shared17find_existing_run17h6806c9c6952450e0E.exit.i.thread, label %bb12.i.i

bb4.i.i.preheader:                                ; preds = %bb2.i.i
  br i1 %_10.i.i78.not, label %_ZN4core5slice4sort6shared17find_existing_run17h6806c9c6952450e0E.exit.i.thread100, label %bb5.i.i

bb12.i.i:                                         ; preds = %bb11.i.i.preheader, %bb15.i.i
  %_4.i.i.i59 = phi i32 [ %_3.i.i.i58, %bb15.i.i ], [ %_3.i.i.i61, %bb11.i.i.preheader ]
  %run_len.sroa.0.0.i.i76 = phi i64 [ %3, %bb15.i.i ], [ 2, %bb11.i.i.preheader ]
  %2 = getelementptr inbounds nuw i32, ptr %_82, i64 %run_len.sroa.0.0.i.i76
  %_3.i.i.i58 = load i32, ptr %2, align 4, !alias.scope !767, !noalias !774, !noundef !18
  %_0.i60 = icmp slt i32 %_3.i.i.i58, %_4.i.i.i59
  br i1 %_0.i60, label %_ZN4core5slice4sort6shared17find_existing_run17h6806c9c6952450e0E.exit.i, label %bb15.i.i

bb15.i.i:                                         ; preds = %bb12.i.i
  %3 = add nuw i64 %run_len.sroa.0.0.i.i76, 1
  %exitcond.not = icmp eq i64 %3, %new_len
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h6806c9c6952450e0E.exit.i, label %bb12.i.i

bb5.i.i:                                          ; preds = %bb4.i.i.preheader, %bb7.i.i
  %_4.i.i.i = phi i32 [ %_3.i.i.i, %bb7.i.i ], [ %_3.i.i.i61, %bb4.i.i.preheader ]
  %run_len.sroa.0.1.i.i79 = phi i64 [ %5, %bb7.i.i ], [ 2, %bb4.i.i.preheader ]
  %4 = getelementptr inbounds nuw i32, ptr %_82, i64 %run_len.sroa.0.1.i.i79
  %_3.i.i.i = load i32, ptr %4, align 4, !alias.scope !778, !noalias !785, !noundef !18
  %_0.i = icmp slt i32 %_3.i.i.i, %_4.i.i.i
  br i1 %_0.i, label %bb7.i.i, label %_ZN4core5slice4sort6shared17find_existing_run17h6806c9c6952450e0E.exit.i

bb7.i.i:                                          ; preds = %bb5.i.i
  %5 = add nuw i64 %run_len.sroa.0.1.i.i79, 1
  %exitcond92.not = icmp eq i64 %5, %new_len
  br i1 %exitcond92.not, label %_ZN4core5slice4sort6shared17find_existing_run17h6806c9c6952450e0E.exit.i, label %bb5.i.i

_ZN4core5slice4sort6shared17find_existing_run17h6806c9c6952450e0E.exit.i: ; preds = %bb15.i.i, %bb12.i.i, %bb7.i.i, %bb5.i.i
  %_0.sroa.0.0.i.i = phi i64 [ %new_len, %bb7.i.i ], [ %run_len.sroa.0.1.i.i79, %bb5.i.i ], [ %new_len, %bb15.i.i ], [ %run_len.sroa.0.0.i.i76, %bb12.i.i ]
  %_12.i = icmp samesign ule i64 %_0.sroa.0.0.i.i, %new_len
  tail call void @llvm.assume(i1 %_12.i)
  %_13.not.i = icmp ult i64 %_0.sroa.0.0.i.i, %min_good_run_len.sroa.0.0
  br i1 %_13.not.i, label %bb7.i41, label %bb3.i37

_ZN4core5slice4sort6shared17find_existing_run17h6806c9c6952450e0E.exit.i.thread100: ; preds = %bb4.i.i.preheader
  br i1 %_13.not.i103, label %bb7.i41, label %bb5.preheader.i.i

_ZN4core5slice4sort6shared17find_existing_run17h6806c9c6952450e0E.exit.i.thread: ; preds = %bb11.i.i.preheader
  br i1 %_13.not.i97, label %bb7.i41, label %bb5.i38

bb3.i37:                                          ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h6806c9c6952450e0E.exit.i
  br i1 %_0.i63, label %bb14.i, label %bb5.i38

bb11.i42:                                         ; preds = %bb7.i41
  %_0.sroa.0.0.i57 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %new_len, i64 %min_good_run_len.sroa.0.0)
  %_36.i = shl nuw nsw i64 %_0.sroa.0.0.i57, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17hff11c011dbc83c78E.exit

bb16.i43:                                         ; preds = %bb7.i41
  %_0.sroa.0.0.i56 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %new_len, i64 32)
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h63d22310ccbb417dE(ptr noalias noundef nonnull align 4 %_82, i64 noundef %_0.sroa.0.0.i56, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef 0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #21
  %_35.i = shl nuw nsw i64 %_0.sroa.0.0.i56, 1
  %_34.i = or disjoint i64 %_35.i, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17hff11c011dbc83c78E.exit

bb5.i38:                                          ; preds = %bb6.i.i, %middle.block, %_ZN4core5slice4sort6shared17find_existing_run17h6806c9c6952450e0E.exit.i.thread, %bb1.i, %bb14.i, %bb3.i37
  %_0.sroa.0.0.i.i6972 = phi i64 [ %_0.sroa.0.0.i.i, %bb3.i37 ], [ 1, %bb14.i ], [ %new_len, %bb1.i ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h6806c9c6952450e0E.exit.i.thread ], [ %_0.sroa.0.0.i.i98106110, %middle.block ], [ %_0.sroa.0.0.i.i98106110, %bb6.i.i ]
  %_27.i = shl nuw nsw i64 %_0.sroa.0.0.i.i6972, 1
  %_26.i = or disjoint i64 %_27.i, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17hff11c011dbc83c78E.exit

bb14.i:                                           ; preds = %bb3.i37
  %half_len2.i = lshr i64 %_0.sroa.0.0.i.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !789), !noalias !792
  tail call void @llvm.experimental.noalias.scope.decl(metadata !794), !noalias !792
  %_915.not.i.i = icmp samesign ult i64 %_0.sroa.0.0.i.i, 2
  br i1 %_915.not.i.i, label %bb5.i38, label %bb5.preheader.i.i

bb5.preheader.i.i:                                ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h6806c9c6952450e0E.exit.i.thread100, %bb14.i
  %half_len2.i111 = phi i64 [ %half_len2.i, %bb14.i ], [ 1, %_ZN4core5slice4sort6shared17find_existing_run17h6806c9c6952450e0E.exit.i.thread100 ]
  %_0.sroa.0.0.i.i98106110 = phi i64 [ %_0.sroa.0.0.i.i, %bb14.i ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h6806c9c6952450e0E.exit.i.thread100 ]
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
  %wide.load = load <4 x i32>, ptr %7, align 4, !alias.scope !796, !noalias !799
  %wide.load118 = load <4 x i32>, ptr %9, align 4, !alias.scope !796, !noalias !799
  %10 = getelementptr i8, ptr %8, i64 -12
  %11 = getelementptr i8, ptr %8, i64 -28
  %wide.load119 = load <4 x i32>, ptr %10, align 4, !alias.scope !800, !noalias !801
  %reverse = shufflevector <4 x i32> %wide.load119, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %wide.load120 = load <4 x i32>, ptr %11, align 4, !alias.scope !800, !noalias !801
  %reverse121 = shufflevector <4 x i32> %wide.load120, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse, ptr %7, align 4, !alias.scope !796, !noalias !799
  store <4 x i32> %reverse121, ptr %9, align 4, !alias.scope !796, !noalias !799
  %reverse122 = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse122, ptr %10, align 4, !alias.scope !800, !noalias !801
  %reverse123 = shufflevector <4 x i32> %wide.load118, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse123, ptr %11, align 4, !alias.scope !800, !noalias !801
  %index.next = add nuw i64 %index, 8
  %12 = icmp eq i64 %index.next, %n.vec
  br i1 %12, label %middle.block, label %vector.body, !llvm.loop !802

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
  %14 = load i32, ptr %x.i.i, align 4, !alias.scope !796, !noalias !799, !noundef !18
  %15 = load i32, ptr %y.i.i, align 4, !alias.scope !800, !noalias !801
  store i32 %15, ptr %x.i.i, align 4, !alias.scope !796, !noalias !799
  store i32 %14, ptr %y.i.i, align 4, !alias.scope !800, !noalias !801
  %16 = add nuw nsw i64 %i.sroa.0.016.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %16, %half_len2.i111
  br i1 %exitcond.not.i.i, label %bb5.i38, label %bb6.i.i, !llvm.loop !803

_ZN4core5slice4sort6stable5drift10create_run17hff11c011dbc83c78E.exit: ; preds = %bb11.i42, %bb16.i43, %bb5.i38
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

bb12:                                             ; preds = %bb12.lr.ph, %_ZN4core5slice4sort6stable5drift13logical_merge17h633656a71cb3fe6bE.exit
  %stack_len.sroa.0.184 = phi i64 [ %stack_len.sroa.0.0, %bb12.lr.ph ], [ %count, %_ZN4core5slice4sort6stable5drift13logical_merge17h633656a71cb3fe6bE.exit ]
  %prev_run.sroa.0.183 = phi i64 [ %prev_run.sroa.0.0, %bb12.lr.ph ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h633656a71cb3fe6bE.exit ]
  %count = add i64 %stack_len.sroa.0.184, -1
  %_41 = getelementptr inbounds nuw i8, ptr %desired_depth_storage, i64 %count
  %_40 = load i8, ptr %_41, align 1, !noundef !18
  %_39.not = icmp ult i8 %_40, %desired_depth.sroa.0.0
  br i1 %_39.not, label %bb17, label %bb13

bb17:                                             ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17h633656a71cb3fe6bE.exit, %bb12, %bb10
  %prev_run.sroa.0.1.lcssa = phi i64 [ %prev_run.sroa.0.0, %bb10 ], [ %prev_run.sroa.0.183, %bb12 ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h633656a71cb3fe6bE.exit ]
  %stack_len.sroa.0.1.lcssa = phi i64 [ %stack_len.sroa.0.0, %bb10 ], [ %stack_len.sroa.0.184, %bb12 ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17h633656a71cb3fe6bE.exit ]
  %_59 = getelementptr inbounds nuw i64, ptr %run_storage, i64 %stack_len.sroa.0.1.lcssa
  store i64 %prev_run.sroa.0.1.lcssa, ptr %_59, align 8
  %_61 = getelementptr inbounds nuw i8, ptr %desired_depth_storage, i64 %stack_len.sroa.0.1.lcssa
  store i8 %desired_depth.sroa.0.0, ptr %_61, align 1
  br i1 %_22, label %bb19, label %bb18

bb13:                                             ; preds = %bb12
  %_46 = getelementptr inbounds nuw i64, ptr %run_storage, i64 %count
  %left10 = load i64, ptr %_46, align 8, !noundef !18
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
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h633656a71cb3fe6bE.exit

bb5.i:                                            ; preds = %bb11.i, %bb3.i
  br i1 %_10.not.i, label %bb16.i, label %bb7.i

bb11.i:                                           ; preds = %bb3.i
  %self.i = or i64 %_50, 1
  %22 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i, i1 true)
  %23 = trunc nuw nsw i64 %22 to i32
  %log.i = shl nuw nsw i32 %23, 1
  %limit.i = xor i32 %log.i, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h63d22310ccbb417dE(ptr noalias noundef nonnull align 4 %_98, i64 noundef range(i64 0, 2305843009213693952) %_50, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #21
  br label %bb5.i

bb7.i:                                            ; preds = %bb16.i, %bb5.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !804)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !807)
  %_6.i = icmp ult i64 %left10, 2
  %_7.i = icmp ult i64 %prev_run.sroa.0.183, 2
  %or.cond.i = select i1 %_6.i, i1 true, i1 %_7.i
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17h5b006bb74d6348adE.exit, label %bb2.i

bb2.i:                                            ; preds = %bb7.i
  %_0.sroa.0.0.i.i44 = tail call i64 @llvm.umin.i64(i64 %_51, i64 range(i64 0, -9223372036854775808) %_50)
  %_8.i = icmp samesign ult i64 %scratch.1, %_0.sroa.0.0.i.i44
  br i1 %_8.i, label %_ZN4core5slice4sort6stable5merge5merge17h5b006bb74d6348adE.exit, label %bb5.i45

bb5.i45:                                          ; preds = %bb2.i
  %v_mid.i = getelementptr inbounds nuw i32, ptr %_98, i64 %_50
  %left_is_shorter.not.i = icmp samesign ugt i64 %_50, %_51
  %spec.select.i = select i1 %left_is_shorter.not.i, ptr %v_mid.i, ptr %_98
  %24 = shl nuw nsw i64 %_0.sroa.0.0.i.i44, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %scratch.0, ptr nonnull align 4 %spec.select.i, i64 %24, i1 false), !alias.scope !809
  %_22.i46 = getelementptr inbounds nuw i8, ptr %scratch.0, i64 %24
  br i1 %left_is_shorter.not.i, label %bb1.i.i, label %bb3.i.i

bb1.i.i:                                          ; preds = %bb5.i45, %bb1.i.i
  %_2110.i.i = phi ptr [ %_21.i.i49, %bb1.i.i ], [ %_22.i46, %bb5.i45 ]
  %_188.i.i = phi ptr [ %_18.i.i, %bb1.i.i ], [ %v_mid.i, %bb5.i45 ]
  %out.sroa.0.0.i.i = phi ptr [ %27, %bb1.i.i ], [ %v_end.i, %bb5.i45 ]
  %25 = getelementptr inbounds i8, ptr %_188.i.i, i64 -4
  %26 = getelementptr inbounds i8, ptr %_2110.i.i, i64 -4
  %27 = getelementptr inbounds i8, ptr %out.sroa.0.0.i.i, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !810)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !813)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !815)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !818)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !820)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !823)
  %_3.i.i.i.i.i = load i32, ptr %26, align 4, !alias.scope !825, !noalias !826, !noundef !18
  %_4.i.i.i.i.i = load i32, ptr %25, align 4, !alias.scope !829, !noalias !830, !noundef !18
  %_0.i.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %28 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i.i, i32 %_4.i.i.i.i.i)
  store i32 %28, ptr %27, align 4, !alias.scope !804, !noalias !831
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !832)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !835)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !837)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !840)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !842)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !845)
  %_3.i.i.i.i12.i = load i32, ptr %right.sroa.0.010.i.i, align 4, !alias.scope !847, !noalias !848, !noundef !18
  %_4.i.i.i.i13.i = load i32, ptr %_2059.i.i, align 4, !alias.scope !851, !noalias !852, !noundef !18
  %_0.i.i14.i = icmp slt i32 %_3.i.i.i.i12.i, %_4.i.i.i.i13.i
  %consume_left.i.i = xor i1 %_0.i.i14.i, true
  %29 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i12.i, i32 %_4.i.i.i.i13.i)
  store i32 %29, ptr %_2511.i.i, align 4, !alias.scope !804, !noalias !853
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %merge_state.sroa.13.0.i, ptr align 4 %merge_state.sroa.0.0.i, i64 %32, i1 false), !alias.scope !809, !noalias !854
  br label %_ZN4core5slice4sort6stable5merge5merge17h5b006bb74d6348adE.exit

_ZN4core5slice4sort6stable5merge5merge17h5b006bb74d6348adE.exit: ; preds = %bb7.i, %bb2.i, %bb16.i48
  %_39.i = shl nuw nsw i64 %merged_len, 1
  %_38.i = or disjoint i64 %_39.i, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h633656a71cb3fe6bE.exit

bb16.i:                                           ; preds = %bb5.i
  %_37.i = getelementptr inbounds nuw i32, ptr %_98, i64 %_50
  %self.i50 = or i64 %_51, 1
  %33 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i50, i1 true)
  %34 = trunc nuw nsw i64 %33 to i32
  %log.i51 = shl nuw nsw i32 %34, 1
  %limit.i52 = xor i32 %log.i51, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h63d22310ccbb417dE(ptr noalias noundef nonnull align 4 %_37.i, i64 noundef range(i64 0, 2305843009213693952) %_51, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i52, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #21
  br label %bb7.i

_ZN4core5slice4sort6stable5drift13logical_merge17h633656a71cb3fe6bE.exit: ; preds = %bb9.i, %_ZN4core5slice4sort6stable5merge5merge17h5b006bb74d6348adE.exit
  %_0.sroa.0.0.i = phi i64 [ %_38.i, %_ZN4core5slice4sort6stable5merge5merge17h5b006bb74d6348adE.exit ], [ %_40.i, %bb9.i ]
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
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h63d22310ccbb417dE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i55, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #21
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
define void @_ZN4core5slice4sort6stable9quicksort9quicksort17h400e690f4471152dE(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %2, ptr noalias noundef readonly align 4 captures(address) dereferenceable_or_null(4) %3, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %pivot_copy = alloca [4 x i8], align 4
  %_8194200 = icmp samesign ult i64 %1, 33
  br i1 %_8194200, label %bb3, label %bb5.lr.ph

bb5.lr.ph:                                        ; preds = %start, %bb28
  %v.sroa.0.0.ph204 = phi ptr [ %_54, %bb28 ], [ %0, %start ]
  %v.sroa.16.0.ph203 = phi i64 [ %_63.i67, %bb28 ], [ %1, %start ]
  %limit.sroa.0.0.ph202 = phi i32 [ %31, %bb28 ], [ %2, %start ]
  %left_ancestor_pivot.sroa.0.0.ph201 = phi ptr [ null, %bb28 ], [ %3, %start ]
  %4 = ptrtoint ptr %v.sroa.0.0.ph204 to i64
  %.not = icmp eq ptr %left_ancestor_pivot.sroa.0.0.ph201, null
  br label %bb5

bb5:                                              ; preds = %bb5.lr.ph, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h41224d6559369146E.exit"
  %v.sroa.16.0196 = phi i64 [ %v.sroa.16.0.ph203, %bb5.lr.ph ], [ %state.sroa.27.2.lcssa.i, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h41224d6559369146E.exit" ]
  %limit.sroa.0.0195 = phi i32 [ %limit.sroa.0.0.ph202, %bb5.lr.ph ], [ %31, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h41224d6559369146E.exit" ]
  %_11 = icmp eq i32 %limit.sroa.0.0195, 0
  br i1 %_11, label %bb6, label %bb7

bb3:                                              ; preds = %bb28, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h41224d6559369146E.exit", %start
  %v.sroa.0.0.ph.lcssa193 = phi ptr [ %0, %start ], [ %v.sroa.0.0.ph204, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h41224d6559369146E.exit" ], [ %_54, %bb28 ]
  %v.sroa.16.0.lcssa = phi i64 [ %1, %start ], [ %state.sroa.27.2.lcssa.i, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h41224d6559369146E.exit" ], [ %_63.i67, %bb28 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !859)
  call void @llvm.experimental.noalias.scope.decl(metadata !862)
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
  %_16.i = getelementptr inbounds nuw float, ptr %scratch.0, i64 %v.sroa.16.0.lcssa
; call core::slice::sort::shared::smallsort::sort8_stable
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17hb436af159d79a6a0E(ptr noundef nonnull align 4 %v.sroa.0.0.ph.lcssa193, ptr noundef nonnull align 4 %scratch.0, ptr noundef %_16.i)
  %_18.i = getelementptr inbounds nuw float, ptr %v.sroa.0.0.ph.lcssa193, i64 %len_div_211.i
  %_19.i = getelementptr inbounds nuw float, ptr %scratch.0, i64 %len_div_211.i
  %_20.i = getelementptr inbounds nuw i8, ptr %_16.i, i64 32
; call core::slice::sort::shared::smallsort::sort8_stable
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17hb436af159d79a6a0E(ptr noundef %_18.i, ptr noundef %_19.i, ptr noundef %_20.i)
  br label %bb15.i

bb10.i:                                           ; preds = %bb9.i
; call core::slice::sort::shared::smallsort::sort4_stable
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h3cc38142706e8f81E(ptr noundef nonnull align 4 %v.sroa.0.0.ph.lcssa193, ptr noundef nonnull align 4 %scratch.0)
  %_27.i = getelementptr inbounds nuw float, ptr %v.sroa.0.0.ph.lcssa193, i64 %len_div_211.i
  %_28.i = getelementptr inbounds nuw float, ptr %scratch.0, i64 %len_div_211.i
; call core::slice::sort::shared::smallsort::sort4_stable
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h3cc38142706e8f81E(ptr noundef %_27.i, ptr noundef %_28.i)
  br label %bb15.i

bb46.i:                                           ; preds = %bb9.i
  %5 = load i32, ptr %v.sroa.0.0.ph.lcssa193, align 4, !alias.scope !859, !noalias !864
  store i32 %5, ptr %scratch.0, align 4, !alias.scope !862, !noalias !866
  %_31.i = getelementptr inbounds nuw float, ptr %v.sroa.0.0.ph.lcssa193, i64 %len_div_211.i
  %6 = getelementptr inbounds nuw float, ptr %scratch.0, i64 %len_div_211.i
  %7 = load i32, ptr %_31.i, align 4, !alias.scope !859, !noalias !864
  store i32 %7, ptr %6, align 4, !alias.scope !862, !noalias !866
  br label %bb15.i

bb15.i:                                           ; preds = %bb46.i, %bb10.i, %bb6.i
  %presorted_len.sroa.0.0.i = phi i64 [ 8, %bb6.i ], [ 4, %bb10.i ], [ 1, %bb46.i ]
  %8 = sub nsw i64 %v.sroa.16.0.lcssa, %len_div_211.i
  %_8029.i = icmp samesign ult i64 %presorted_len.sroa.0.0.i, %len_div_211.i
  br i1 %_8029.i, label %bb24.preheader.i, label %bb16.loopexit.i

bb16.loopexit.i:                                  ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17hddc65c3a9e959cd9E.exit.i, %bb15.i
  %src5.1.i = getelementptr inbounds nuw float, ptr %v.sroa.0.0.ph.lcssa193, i64 %len_div_211.i
  %dst6.1.i = getelementptr float, ptr %scratch.0, i64 %len_div_211.i
  %_8029.1.i = icmp ult i64 %presorted_len.sroa.0.0.i, %8
  br i1 %_8029.1.i, label %bb24.preheader.1.i, label %bb16.loopexit.1.i

bb24.preheader.1.i:                               ; preds = %bb16.loopexit.i
  %iter1.sroa.0.131.1.i = add nuw nsw i64 %presorted_len.sroa.0.0.i, 1
  br label %bb24.1.i

bb24.1.i:                                         ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17hddc65c3a9e959cd9E.exit.1.i, %bb24.preheader.1.i
  %iter1.sroa.0.133.1.i = phi i64 [ %iter1.sroa.0.1.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hddc65c3a9e959cd9E.exit.1.i ], [ %iter1.sroa.0.131.1.i, %bb24.preheader.1.i ]
  %iter1.sroa.0.032.1.i = phi i64 [ %iter1.sroa.0.133.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hddc65c3a9e959cd9E.exit.1.i ], [ %presorted_len.sroa.0.0.i, %bb24.preheader.1.i ]
  %_55.1.i = getelementptr inbounds nuw float, ptr %src5.1.i, i64 %iter1.sroa.0.032.1.i
  %dst7.1.i = getelementptr inbounds nuw float, ptr %dst6.1.i, i64 %iter1.sroa.0.032.1.i
  %9 = load i32, ptr %_55.1.i, align 4, !alias.scope !859, !noalias !864
  store i32 %9, ptr %dst7.1.i, align 4, !alias.scope !862, !noalias !866
  %10 = getelementptr inbounds i8, ptr %dst7.1.i, i64 -4
  %_6.i.i.i16.1.i = load float, ptr %10, align 4, !alias.scope !867, !noalias !872, !noundef !18
  %11 = bitcast i32 %9 to float
  %brmerge.not.i.i18.1.i = fcmp uno float %_6.i.i.i16.1.i, %11
  br i1 %brmerge.not.i.i18.1.i, label %bb6.i.i.i21.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit.i19.1.i", !prof !21

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit.i19.1.i": ; preds = %bb24.1.i
  %_8.i.mux.i.i20.1.i = fcmp olt float %_6.i.i.i16.1.i, %11
  br i1 %_8.i.mux.i.i20.1.i, label %bb4.i.1.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hddc65c3a9e959cd9E.exit.1.i

bb4.i.1.i:                                        ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit.i19.1.i", %bb7.i.1.i
  %.in.i.1.i = phi float [ %_6.i.i1.i.1.i, %bb7.i.1.i ], [ %_6.i.i.i16.1.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit.i19.1.i" ]
  %gap_guard.sroa.5.0.i.1.i = phi ptr [ %sift.sroa.0.0.i.1.i, %bb7.i.1.i ], [ %dst7.1.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit.i19.1.i" ]
  %sift.sroa.0.0.i.1.i = phi ptr [ %12, %bb7.i.1.i ], [ %10, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit.i19.1.i" ]
  store float %.in.i.1.i, ptr %gap_guard.sroa.5.0.i.1.i, align 4, !alias.scope !862, !noalias !866
  %_18.i.1.i = icmp eq ptr %sift.sroa.0.0.i.1.i, %dst6.1.i
  br i1 %_18.i.1.i, label %bb10.i.1.i, label %bb6.i.1.i

bb6.i.1.i:                                        ; preds = %bb4.i.1.i
  %12 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.1.i, i64 -4
  %_6.i.i1.i.1.i = load float, ptr %12, align 4, !alias.scope !875, !noalias !880, !noundef !18
  %brmerge.not.i3.i.1.i = fcmp uno float %_6.i.i1.i.1.i, %11
  br i1 %brmerge.not.i3.i.1.i, label %bb6.i.i5.i.i, label %bb7.i.1.i, !prof !21

bb7.i.1.i:                                        ; preds = %bb6.i.1.i
  %_8.i.mux.i4.i.1.i = fcmp olt float %_6.i.i1.i.1.i, %11
  br i1 %_8.i.mux.i4.i.1.i, label %bb4.i.1.i, label %bb10.i.1.i

bb10.i.1.i:                                       ; preds = %bb7.i.1.i, %bb4.i.1.i
  %sift.sroa.0.0.i.lcssa.1.i = phi ptr [ %sift.sroa.0.0.i.1.i, %bb7.i.1.i ], [ %dst6.1.i, %bb4.i.1.i ]
  store i32 %9, ptr %sift.sroa.0.0.i.lcssa.1.i, align 4, !alias.scope !862, !noalias !883
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hddc65c3a9e959cd9E.exit.1.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17hddc65c3a9e959cd9E.exit.1.i: ; preds = %bb10.i.1.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit.i19.1.i"
  %_80.1.i = icmp ult i64 %iter1.sroa.0.133.1.i, %8
  %_84.1.i = zext i1 %_80.1.i to i64
  %iter1.sroa.0.1.1.i = add nuw i64 %iter1.sroa.0.133.1.i, %_84.1.i
  br i1 %_80.1.i, label %bb24.1.i, label %bb16.loopexit.1.i

bb16.loopexit.1.i:                                ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17hddc65c3a9e959cd9E.exit.1.i, %bb16.loopexit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !888)
  %count1.i.i = add nsw i64 %v.sroa.16.0.lcssa, -1
  %13 = getelementptr inbounds nuw float, ptr %v.sroa.0.0.ph.lcssa193, i64 %count1.i.i
  %14 = getelementptr inbounds nuw float, ptr %scratch.0, i64 %count1.i.i
  %15 = getelementptr i8, ptr %dst6.1.i, i64 -4
  br label %bb15.i.i

bb24.preheader.i:                                 ; preds = %bb15.i
  %iter1.sroa.0.131.i = add nuw nsw i64 %presorted_len.sroa.0.0.i, 1
  br label %bb24.i

bb16.i.i:                                         ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit24.i.i"
  %16 = getelementptr i8, ptr %21, i64 4
  %17 = getelementptr i8, ptr %20, i64 4
  %_44.i.i = and i64 %v.sroa.16.0.lcssa, 1
  %_22.i.i = icmp eq i64 %_44.i.i, 0
  br i1 %_22.i.i, label %bb9.i.i, label %bb5.i.i

bb15.i.i:                                         ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit24.i.i", %bb16.loopexit.1.i
  %dst.sroa.0.042.i.i = phi ptr [ %_16.i.i.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit24.i.i" ], [ %v.sroa.0.0.ph.lcssa193, %bb16.loopexit.1.i ]
  %iter.sroa.0.041.i.i = phi i64 [ %_39.i.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit24.i.i" ], [ 0, %bb16.loopexit.1.i ]
  %left.sroa.0.040.i.i = phi ptr [ %_14.i.i.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit24.i.i" ], [ %scratch.0, %bb16.loopexit.1.i ]
  %right.sroa.0.039.i.i = phi ptr [ %_12.i.i.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit24.i.i" ], [ %dst6.1.i, %bb16.loopexit.1.i ]
  %left_rev.sroa.0.038.i.i = phi ptr [ %21, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit24.i.i" ], [ %15, %bb16.loopexit.1.i ]
  %right_rev.sroa.0.037.i.i = phi ptr [ %20, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit24.i.i" ], [ %14, %bb16.loopexit.1.i ]
  %dst_rev.sroa.0.036.i.i = phi ptr [ %22, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit24.i.i" ], [ %13, %bb16.loopexit.1.i ]
  %_39.i.i = add nuw nsw i64 %iter.sroa.0.041.i.i, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !891)
  call void @llvm.experimental.noalias.scope.decl(metadata !894)
  call void @llvm.experimental.noalias.scope.decl(metadata !896), !noalias !899
  call void @llvm.experimental.noalias.scope.decl(metadata !902), !noalias !899
  %_6.i.i.i.i = load float, ptr %left.sroa.0.040.i.i, align 4, !alias.scope !904, !noalias !905, !noundef !18
  %_7.i.i.i.i = load float, ptr %right.sroa.0.039.i.i, align 4, !alias.scope !906, !noalias !907, !noundef !18
  %brmerge.not.i.i.i = fcmp uno float %_6.i.i.i.i, %_7.i.i.i.i
  br i1 %brmerge.not.i.i.i, label %bb6.i.i23.i.invoke.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit.i.i", !prof !21

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit.i.i": ; preds = %bb15.i.i
  %_8.i.mux.i.i.i = fcmp olt float %_6.i.i.i.i, %_7.i.i.i.i
  %..i17.i.i = select i1 %_8.i.mux.i.i.i, ptr %right.sroa.0.039.i.i, ptr %left.sroa.0.040.i.i
  %18 = load i32, ptr %..i17.i.i, align 4, !alias.scope !908, !noalias !909
  store i32 %18, ptr %dst.sroa.0.042.i.i, align 4, !alias.scope !859, !noalias !911
  call void @llvm.experimental.noalias.scope.decl(metadata !912)
  call void @llvm.experimental.noalias.scope.decl(metadata !915)
  call void @llvm.experimental.noalias.scope.decl(metadata !917), !noalias !920
  call void @llvm.experimental.noalias.scope.decl(metadata !923), !noalias !920
  %_6.i.i19.i.i = load float, ptr %left_rev.sroa.0.038.i.i, align 4, !alias.scope !925, !noalias !926, !noundef !18
  %_7.i.i20.i.i = load float, ptr %right_rev.sroa.0.037.i.i, align 4, !alias.scope !927, !noalias !928, !noundef !18
  %brmerge.not.i21.i.i = fcmp uno float %_6.i.i19.i.i, %_7.i.i20.i.i
  br i1 %brmerge.not.i21.i.i, label %bb6.i.i23.i.invoke.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit24.i.i", !prof !21

bb6.i.i23.i.invoke.i:                             ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit.i.i", %bb15.i.i
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_aff0f19c9c77241ccbf897612486dc62) #18
          to label %bb6.i.i23.i.cont.i unwind label %cleanup2.i, !noalias !929

bb6.i.i23.i.cont.i:                               ; preds = %bb6.i.i23.i.invoke.i
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit24.i.i": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit.i.i"
  %_16.i.i.i = getelementptr inbounds nuw i8, ptr %dst.sroa.0.042.i.i, i64 4
  %is_l.i18.i.i = xor i1 %_8.i.mux.i.i.i, true
  %count2.i.i.i = zext i1 %is_l.i18.i.i to i64
  %_14.i.i.i = getelementptr inbounds nuw float, ptr %left.sroa.0.040.i.i, i64 %count2.i.i.i
  %count.i.i.i = zext i1 %_8.i.mux.i.i.i to i64
  %_12.i.i.i = getelementptr inbounds nuw float, ptr %right.sroa.0.039.i.i, i64 %count.i.i.i
  %_8.i.mux.i22.i.i = fcmp olt float %_6.i.i19.i.i, %_7.i.i20.i.i
  %..i.i.i = select i1 %_8.i.mux.i22.i.i, ptr %left_rev.sroa.0.038.i.i, ptr %right_rev.sroa.0.037.i.i
  %is_l.i.i.i = xor i1 %_8.i.mux.i22.i.i, true
  %19 = load i32, ptr %..i.i.i, align 4, !alias.scope !908, !noalias !930
  store i32 %19, ptr %dst_rev.sroa.0.036.i.i, align 4, !alias.scope !859, !noalias !932
  %count.neg.i.i.i = sext i1 %is_l.i.i.i to i64
  %20 = getelementptr float, ptr %right_rev.sroa.0.037.i.i, i64 %count.neg.i.i.i
  %count3.neg.i.i.i = sext i1 %_8.i.mux.i22.i.i to i64
  %21 = getelementptr float, ptr %left_rev.sroa.0.038.i.i, i64 %count3.neg.i.i.i
  %22 = getelementptr inbounds i8, ptr %dst_rev.sroa.0.036.i.i, i64 -4
  %exitcond.not.i.i = icmp eq i64 %_39.i.i, %len_div_211.i
  br i1 %exitcond.not.i.i, label %bb16.i.i, label %bb15.i.i

bb5.i.i:                                          ; preds = %bb16.i.i
  %left_nonempty.i.i = icmp ult ptr %_14.i.i.i, %16
  %left.sroa.0.0.right.sroa.0.0.i.i = select i1 %left_nonempty.i.i, ptr %_14.i.i.i, ptr %_12.i.i.i
  %23 = load i32, ptr %left.sroa.0.0.right.sroa.0.0.i.i, align 4, !alias.scope !908, !noalias !866
  store i32 %23, ptr %_16.i.i.i, align 4, !alias.scope !859, !noalias !933
  %count2.i.i = zext i1 %left_nonempty.i.i to i64
  %_26.i.i = getelementptr inbounds nuw float, ptr %_14.i.i.i, i64 %count2.i.i
  %_30.i.i = xor i1 %left_nonempty.i.i, true
  %count3.i.i = zext i1 %_30.i.i to i64
  %_28.i.i = getelementptr inbounds nuw float, ptr %_12.i.i.i, i64 %count3.i.i
  br label %bb9.i.i

bb9.i.i:                                          ; preds = %bb5.i.i, %bb16.i.i
  %right.sroa.0.1.i.i = phi ptr [ %_12.i.i.i, %bb16.i.i ], [ %_28.i.i, %bb5.i.i ]
  %left.sroa.0.1.i.i = phi ptr [ %_14.i.i.i, %bb16.i.i ], [ %_26.i.i, %bb5.i.i ]
  %_31.i.i = icmp ne ptr %left.sroa.0.1.i.i, %16
  %_32.i.i = icmp ne ptr %right.sroa.0.1.i.i, %17
  %or.cond.i.i = select i1 %_31.i.i, i1 true, i1 %_32.i.i
  br i1 %or.cond.i.i, label %bb13.i.i, label %bb22, !prof !440

bb13.i.i:                                         ; preds = %bb9.i.i
; invoke core::slice::sort::shared::smallsort::panic_on_ord_violation
  invoke void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #18
          to label %.noexc14.i unwind label %cleanup2.i, !noalias !929

.noexc14.i:                                       ; preds = %bb13.i.i
  unreachable

cleanup2.i:                                       ; preds = %bb13.i.i, %bb6.i.i23.i.invoke.i
  %24 = landingpad { ptr, i32 }
          cleanup
  %25 = shl nuw nsw i64 %v.sroa.16.0.lcssa, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.sroa.0.0.ph.lcssa193, ptr nonnull align 4 %scratch.0, i64 %25, i1 false), !alias.scope !934, !noalias !935
  br label %bb31.i

bb31.i:                                           ; preds = %bb14.i.i, %cleanup2.i
  %.pn.i = phi { ptr, i32 } [ %24, %cleanup2.i ], [ %30, %bb14.i.i ]
  resume { ptr, i32 } %.pn.i

bb24.i:                                           ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17hddc65c3a9e959cd9E.exit.i, %bb24.preheader.i
  %iter1.sroa.0.133.i = phi i64 [ %iter1.sroa.0.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hddc65c3a9e959cd9E.exit.i ], [ %iter1.sroa.0.131.i, %bb24.preheader.i ]
  %iter1.sroa.0.032.i = phi i64 [ %iter1.sroa.0.133.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hddc65c3a9e959cd9E.exit.i ], [ %presorted_len.sroa.0.0.i, %bb24.preheader.i ]
  %_55.i = getelementptr inbounds nuw float, ptr %v.sroa.0.0.ph.lcssa193, i64 %iter1.sroa.0.032.i
  %dst7.i = getelementptr inbounds nuw float, ptr %scratch.0, i64 %iter1.sroa.0.032.i
  %26 = load i32, ptr %_55.i, align 4, !alias.scope !859, !noalias !864
  store i32 %26, ptr %dst7.i, align 4, !alias.scope !862, !noalias !866
  %27 = getelementptr inbounds i8, ptr %dst7.i, i64 -4
  %_6.i.i.i16.i = load float, ptr %27, align 4, !alias.scope !940, !noalias !943, !noundef !18
  %28 = bitcast i32 %26 to float
  %brmerge.not.i.i18.i = fcmp uno float %_6.i.i.i16.i, %28
  br i1 %brmerge.not.i.i18.i, label %bb6.i.i.i21.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit.i19.i", !prof !21

bb6.i.i.i21.i:                                    ; preds = %bb24.i, %bb24.1.i
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_aff0f19c9c77241ccbf897612486dc62) #18, !noalias !929
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit.i19.i": ; preds = %bb24.i
  %_8.i.mux.i.i20.i = fcmp olt float %_6.i.i.i16.i, %28
  br i1 %_8.i.mux.i.i20.i, label %bb4.i.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hddc65c3a9e959cd9E.exit.i

bb4.i.i:                                          ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit.i19.i", %bb7.i.i
  %.in.i.i = phi float [ %_6.i.i1.i.i, %bb7.i.i ], [ %_6.i.i.i16.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit.i19.i" ]
  %gap_guard.sroa.5.0.i.i = phi ptr [ %sift.sroa.0.0.i.i, %bb7.i.i ], [ %dst7.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit.i19.i" ]
  %sift.sroa.0.0.i.i = phi ptr [ %29, %bb7.i.i ], [ %27, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit.i19.i" ]
  store float %.in.i.i, ptr %gap_guard.sroa.5.0.i.i, align 4, !alias.scope !862, !noalias !866
  %_18.i.i = icmp eq ptr %sift.sroa.0.0.i.i, %scratch.0
  br i1 %_18.i.i, label %bb10.i.i, label %bb6.i.i

bb6.i.i:                                          ; preds = %bb4.i.i
  %29 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i, i64 -4
  %_6.i.i1.i.i = load float, ptr %29, align 4, !alias.scope !875, !noalias !880, !noundef !18
  %brmerge.not.i3.i.i = fcmp uno float %_6.i.i1.i.i, %28
  br i1 %brmerge.not.i3.i.i, label %bb6.i.i5.i.i, label %bb7.i.i, !prof !21

bb6.i.i5.i.i:                                     ; preds = %bb6.i.i, %bb6.i.1.i
  %_7.i.i.i17.lcssa36.i = phi float [ %11, %bb6.i.1.i ], [ %28, %bb6.i.i ]
  %sift.sroa.0.0.i.lcssa35.i = phi ptr [ %sift.sroa.0.0.i.1.i, %bb6.i.1.i ], [ %sift.sroa.0.0.i.i, %bb6.i.i ]
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_aff0f19c9c77241ccbf897612486dc62) #18
          to label %.noexc.i.i unwind label %bb14.i.i, !noalias !929

.noexc.i.i:                                       ; preds = %bb6.i.i5.i.i
  unreachable

bb7.i.i:                                          ; preds = %bb6.i.i
  %_8.i.mux.i4.i.i = fcmp olt float %_6.i.i1.i.i, %28
  br i1 %_8.i.mux.i4.i.i, label %bb4.i.i, label %bb10.i.i

bb10.i.i:                                         ; preds = %bb7.i.i, %bb4.i.i
  %sift.sroa.0.0.i.lcssa.i = phi ptr [ %sift.sroa.0.0.i.i, %bb7.i.i ], [ %scratch.0, %bb4.i.i ]
  store i32 %26, ptr %sift.sroa.0.0.i.lcssa.i, align 4, !alias.scope !862, !noalias !883
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hddc65c3a9e959cd9E.exit.i

bb14.i.i:                                         ; preds = %bb6.i.i5.i.i
  %30 = landingpad { ptr, i32 }
          cleanup
  store float %_7.i.i.i17.lcssa36.i, ptr %sift.sroa.0.0.i.lcssa35.i, align 4, !alias.scope !862, !noalias !946
  br label %bb31.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17hddc65c3a9e959cd9E.exit.i: ; preds = %bb10.i.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit.i19.i"
  %_80.i = icmp ult i64 %iter1.sroa.0.133.i, %len_div_211.i
  %_84.i = zext i1 %_80.i to i64
  %iter1.sroa.0.1.i = add nuw i64 %iter1.sroa.0.133.i, %_84.i
  br i1 %_80.i, label %bb24.i, label %bb16.loopexit.i

bb7:                                              ; preds = %bb5
  %31 = add i32 %limit.sroa.0.0195, -1
  call void @llvm.experimental.noalias.scope.decl(metadata !951)
  %len_div_84.i = lshr i64 %v.sroa.16.0196, 3
  %b.idx.i = shl nuw nsw i64 %len_div_84.i, 4
  %b.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph204, i64 %b.idx.i
  %c.idx.i = mul nuw nsw i64 %len_div_84.i, 28
  %c.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph204, i64 %c.idx.i
  %_12.i = icmp samesign ult i64 %v.sroa.16.0196, 64
  br i1 %_12.i, label %bb3.i23, label %bb5.i

bb5.i:                                            ; preds = %bb7
; call core::slice::sort::shared::pivot::median3_rec
  %self.i = call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hc956d2e228a35a1fE(ptr noundef nonnull readonly align 4 %v.sroa.0.0.ph204, ptr noundef readonly %b.i, ptr noundef readonly %c.i, i64 noundef %len_div_84.i)
  br label %bb10

bb3.i23:                                          ; preds = %bb7
  call void @llvm.experimental.noalias.scope.decl(metadata !954)
  call void @llvm.experimental.noalias.scope.decl(metadata !957)
  call void @llvm.experimental.noalias.scope.decl(metadata !959), !noalias !962
  call void @llvm.experimental.noalias.scope.decl(metadata !965), !noalias !962
  %_6.i.i.i = load float, ptr %b.i, align 4, !alias.scope !967, !noalias !968, !noundef !18
  %_7.i.i.i = load float, ptr %v.sroa.0.0.ph204, align 4, !alias.scope !970, !noalias !971, !noundef !18
  %brmerge.not.i.i = fcmp uno float %_6.i.i.i, %_7.i.i.i
  br i1 %brmerge.not.i.i, label %bb6.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit.i", !prof !21

bb6.i.i.i:                                        ; preds = %bb3.i23
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_aff0f19c9c77241ccbf897612486dc62) #18, !noalias !972
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit.i": ; preds = %bb3.i23
  %_8.i.mux.i.i = fcmp olt float %_6.i.i.i, %_7.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !973)
  call void @llvm.experimental.noalias.scope.decl(metadata !976)
  %_6.i.i5.i = load float, ptr %c.i, align 4, !alias.scope !979, !noalias !980, !noundef !18
  %brmerge.not.i7.i = fcmp uno float %_6.i.i5.i, %_7.i.i.i
  br i1 %brmerge.not.i7.i, label %bb6.i.i9.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit10.i", !prof !21

bb6.i.i9.i:                                       ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit.i"
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_aff0f19c9c77241ccbf897612486dc62) #18, !noalias !983
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit10.i": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit.i"
  %_8.i.mux.i8.i = fcmp olt float %_6.i.i5.i, %_7.i.i.i
  %32 = xor i1 %_8.i.mux.i.i, %_8.i.mux.i8.i
  br i1 %32, label %bb10, label %bb3.i.i

bb3.i.i:                                          ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit10.i"
  %brmerge.not.i13.i = fcmp uno float %_6.i.i5.i, %_6.i.i.i
  br i1 %brmerge.not.i13.i, label %bb6.i.i15.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit16.i", !prof !21

bb6.i.i15.i:                                      ; preds = %bb3.i.i
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_aff0f19c9c77241ccbf897612486dc62) #18, !noalias !984
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit16.i": ; preds = %bb3.i.i
  %_8.i.mux.i14.i = fcmp olt float %_6.i.i5.i, %_6.i.i.i
  %_12.i.i = xor i1 %_8.i.mux.i.i, %_8.i.mux.i14.i
  %c.b.i.i = select i1 %_12.i.i, ptr %c.i, ptr %b.i
  br label %bb10

bb6:                                              ; preds = %bb5
; call core::slice::sort::stable::drift::sort
  call fastcc void @_ZN4core5slice4sort6stable5drift4sort17h4342cf6a1d32a0e4E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph204, i64 noundef %v.sroa.16.0196, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i1 noundef zeroext true, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  br label %bb22

bb10:                                             ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit16.i", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit10.i", %bb5.i
  %_0.sroa.0.0.i.sink.i = phi ptr [ %self.i, %bb5.i ], [ %v.sroa.0.0.ph204, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit10.i" ], [ %c.b.i.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit16.i" ]
  %33 = ptrtoint ptr %_0.sroa.0.0.i.sink.i to i64
  %34 = sub nuw i64 %33, %4
  %index.sroa.0.0.i = lshr exact i64 %34, 2
  %cond.i = icmp samesign ult i64 %index.sroa.0.0.i, %v.sroa.16.0196
  call void @llvm.assume(i1 %cond.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pivot_copy)
  %src = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph204, i64 %34
  %value = load float, ptr %src, align 4, !noundef !18
  store float %value, ptr %pivot_copy, align 4
  br i1 %.not, label %bb14, label %bb12

bb12:                                             ; preds = %bb10
  call void @llvm.experimental.noalias.scope.decl(metadata !991)
  call void @llvm.experimental.noalias.scope.decl(metadata !994)
  %_7.i.i = load float, ptr %left_ancestor_pivot.sroa.0.0.ph201, align 4, !alias.scope !997, !noalias !998, !noundef !18
  %brmerge.not.i = fcmp uno float %value, %_7.i.i
  br i1 %brmerge.not.i, label %bb6.i.i24, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit", !prof !21

bb6.i.i24:                                        ; preds = %bb12
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_aff0f19c9c77241ccbf897612486dc62) #18, !noalias !1001
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit": ; preds = %bb12
  %_8.i.mux.i = fcmp olt float %value, %_7.i.i
  br i1 %_8.i.mux.i, label %bb14, label %bb17

bb14:                                             ; preds = %bb10, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit"
  call void @llvm.experimental.noalias.scope.decl(metadata !1002)
  call void @llvm.experimental.noalias.scope.decl(metadata !1005)
  %_8.i25.not = icmp samesign ult i64 %scratch.1, %v.sroa.16.0196
  br i1 %_8.i25.not, label %bb31.i26, label %bb33.i, !prof !440

bb33.i:                                           ; preds = %bb14
  %_86.i = getelementptr float, ptr %scratch.0, i64 %v.sroa.16.0196
  br label %bb3.i27

bb31.i26:                                         ; preds = %bb14
  call void @llvm.trap()
  unreachable

bb3.i27:                                          ; preds = %bb23.i, %bb33.i
  %state.sroa.27.0.i = phi i64 [ 0, %bb33.i ], [ %state.sroa.27.2.lcssa.i, %bb23.i ]
  %state.sroa.9.0.i = phi ptr [ %v.sroa.0.0.ph204, %bb33.i ], [ %_9.i82.i, %bb23.i ]
  %state.sroa.43.0.i = phi ptr [ %_86.i, %bb33.i ], [ %46, %bb23.i ]
  %pivot_pos.sroa.0.0.i = phi i64 [ %index.sroa.0.0.i, %bb33.i ], [ %v.sroa.16.0196, %bb23.i ]
  %35 = call i64 @llvm.usub.sat.i64(i64 %pivot_pos.sroa.0.0.i, i64 3)
  %unroll_end.i = getelementptr inbounds nuw float, ptr %v.sroa.0.0.ph204, i64 %35
  %_19111.i = icmp ult ptr %state.sroa.9.0.i, %unroll_end.i
  br i1 %_19111.i, label %bb6.i29.preheader, label %bb16.i

bb6.i29.preheader:                                ; preds = %bb3.i27
  %_6.i.i.i30 = load float, ptr %src, align 4, !alias.scope !1007, !noalias !1012, !noundef !18
  br label %bb6.i29

bb6.i29:                                          ; preds = %bb6.i29.preheader, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit56.i"
  %state.sroa.43.1114.i = phi ptr [ %42, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit56.i" ], [ %state.sroa.43.0.i, %bb6.i29.preheader ]
  %state.sroa.9.1113.i = phi ptr [ %_9.i63.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit56.i" ], [ %state.sroa.9.0.i, %bb6.i29.preheader ]
  %state.sroa.27.1112.i = phi i64 [ %43, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit56.i" ], [ %state.sroa.27.0.i, %bb6.i29.preheader ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1015)
  call void @llvm.experimental.noalias.scope.decl(metadata !1016)
  call void @llvm.experimental.noalias.scope.decl(metadata !1017)
  call void @llvm.experimental.noalias.scope.decl(metadata !1018)
  %_7.i.i.i31 = load float, ptr %state.sroa.9.1113.i, align 4, !alias.scope !1019, !noalias !1020, !noundef !18
  %brmerge.not.i.i32 = fcmp uno float %_6.i.i.i30, %_7.i.i.i31
  br i1 %brmerge.not.i.i32, label %bb6.i.i.i36, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit.i33", !prof !21

bb6.i.i.i36:                                      ; preds = %bb6.i29
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_aff0f19c9c77241ccbf897612486dc62) #18, !noalias !1021
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit.i33": ; preds = %bb6.i29
  %_8.i.mux.i.i34 = fcmp olt float %_6.i.i.i30, %_7.i.i.i31
  %36 = getelementptr inbounds i8, ptr %state.sroa.43.1114.i, i64 -4
  %dst_base.sroa.0.0.i.i = select i1 %_8.i.mux.i.i34, ptr %scratch.0, ptr %36
  %dst.i.i = getelementptr inbounds nuw float, ptr %dst_base.sroa.0.0.i.i, i64 %state.sroa.27.1112.i
  store float %_7.i.i.i31, ptr %dst.i.i, align 4, !alias.scope !1005, !noalias !1022
  %_9.i.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.1113.i, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !1025)
  call void @llvm.experimental.noalias.scope.decl(metadata !1028)
  %_7.i.i26.i = load float, ptr %_9.i.i, align 4, !alias.scope !1031, !noalias !1032, !noundef !18
  %brmerge.not.i27.i = fcmp uno float %_6.i.i.i30, %_7.i.i26.i
  br i1 %brmerge.not.i27.i, label %bb6.i.i29.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit30.i", !prof !21

bb6.i.i29.i:                                      ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit.i33"
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_aff0f19c9c77241ccbf897612486dc62) #18, !noalias !1035
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit30.i": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit.i33"
  %_8.i.i = zext i1 %_8.i.mux.i.i34 to i64
  %37 = add i64 %state.sroa.27.1112.i, %_8.i.i
  %_8.i.mux.i28.i = fcmp olt float %_6.i.i.i30, %_7.i.i26.i
  %38 = getelementptr inbounds i8, ptr %state.sroa.43.1114.i, i64 -8
  %dst_base.sroa.0.0.i32.i = select i1 %_8.i.mux.i28.i, ptr %scratch.0, ptr %38
  %dst.i34.i = getelementptr inbounds nuw float, ptr %dst_base.sroa.0.0.i32.i, i64 %37
  store float %_7.i.i26.i, ptr %dst.i34.i, align 4, !alias.scope !1005, !noalias !1036
  %_9.i37.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.1113.i, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1039)
  call void @llvm.experimental.noalias.scope.decl(metadata !1042)
  %_7.i.i39.i = load float, ptr %_9.i37.i, align 4, !alias.scope !1045, !noalias !1046, !noundef !18
  %brmerge.not.i40.i = fcmp uno float %_6.i.i.i30, %_7.i.i39.i
  br i1 %brmerge.not.i40.i, label %bb6.i.i42.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit43.i", !prof !21

bb6.i.i42.i:                                      ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit30.i"
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_aff0f19c9c77241ccbf897612486dc62) #18, !noalias !1049
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit43.i": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit30.i"
  %_8.i36.i = zext i1 %_8.i.mux.i28.i to i64
  %39 = add i64 %37, %_8.i36.i
  %_8.i.mux.i41.i = fcmp olt float %_6.i.i.i30, %_7.i.i39.i
  %40 = getelementptr inbounds i8, ptr %state.sroa.43.1114.i, i64 -12
  %dst_base.sroa.0.0.i45.i = select i1 %_8.i.mux.i41.i, ptr %scratch.0, ptr %40
  %dst.i47.i = getelementptr inbounds nuw float, ptr %dst_base.sroa.0.0.i45.i, i64 %39
  store float %_7.i.i39.i, ptr %dst.i47.i, align 4, !alias.scope !1005, !noalias !1050
  %_9.i50.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.1113.i, i64 12
  call void @llvm.experimental.noalias.scope.decl(metadata !1053)
  call void @llvm.experimental.noalias.scope.decl(metadata !1056)
  %_7.i.i52.i = load float, ptr %_9.i50.i, align 4, !alias.scope !1059, !noalias !1060, !noundef !18
  %brmerge.not.i53.i = fcmp uno float %_6.i.i.i30, %_7.i.i52.i
  br i1 %brmerge.not.i53.i, label %bb6.i.i55.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit56.i", !prof !21

bb6.i.i55.i:                                      ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit43.i"
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_aff0f19c9c77241ccbf897612486dc62) #18, !noalias !1063
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit56.i": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit43.i"
  %_8.i49.i = zext i1 %_8.i.mux.i41.i to i64
  %41 = add i64 %39, %_8.i49.i
  %_8.i.mux.i54.i = fcmp olt float %_6.i.i.i30, %_7.i.i52.i
  %42 = getelementptr inbounds i8, ptr %state.sroa.43.1114.i, i64 -16
  %dst_base.sroa.0.0.i58.i = select i1 %_8.i.mux.i54.i, ptr %scratch.0, ptr %42
  %dst.i60.i = getelementptr inbounds nuw float, ptr %dst_base.sroa.0.0.i58.i, i64 %41
  store float %_7.i.i52.i, ptr %dst.i60.i, align 4, !alias.scope !1005, !noalias !1064
  %_8.i62.i = zext i1 %_8.i.mux.i54.i to i64
  %43 = add i64 %41, %_8.i62.i
  %_9.i63.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.1113.i, i64 16
  %_19.i35 = icmp ult ptr %_9.i63.i, %unroll_end.i
  br i1 %_19.i35, label %bb6.i29, label %bb16.i

bb16.i:                                           ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit56.i", %bb3.i27
  %state.sroa.27.1.lcssa.i = phi i64 [ %state.sroa.27.0.i, %bb3.i27 ], [ %43, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit56.i" ]
  %state.sroa.9.1.lcssa.i = phi ptr [ %state.sroa.9.0.i, %bb3.i27 ], [ %_9.i63.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit56.i" ]
  %state.sroa.43.1.lcssa.i = phi ptr [ %state.sroa.43.0.i, %bb3.i27 ], [ %42, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit56.i" ]
  %loop_end.i = getelementptr inbounds nuw float, ptr %v.sroa.0.0.ph204, i64 %pivot_pos.sroa.0.0.i
  %_47117.i = icmp ult ptr %state.sroa.9.1.lcssa.i, %loop_end.i
  br i1 %_47117.i, label %bb18.i.preheader, label %bb21.i

bb18.i.preheader:                                 ; preds = %bb16.i
  %_6.i.i64.i = load float, ptr %src, align 4, !alias.scope !1067, !noalias !1072, !noundef !18
  br label %bb18.i

bb21.i:                                           ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit69.i", %bb16.i
  %state.sroa.27.2.lcssa.i = phi i64 [ %state.sroa.27.1.lcssa.i, %bb16.i ], [ %45, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit69.i" ]
  %state.sroa.9.2.lcssa.i = phi ptr [ %state.sroa.9.1.lcssa.i, %bb16.i ], [ %_9.i76.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit69.i" ]
  %state.sroa.43.2.lcssa.i = phi ptr [ %state.sroa.43.1.lcssa.i, %bb16.i ], [ %44, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit69.i" ]
  %_55.i28 = icmp eq i64 %pivot_pos.sroa.0.0.i, %v.sroa.16.0196
  br i1 %_55.i28, label %bb22.i, label %bb23.i

bb18.i:                                           ; preds = %bb18.i.preheader, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit69.i"
  %state.sroa.43.2120.i = phi ptr [ %44, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit69.i" ], [ %state.sroa.43.1.lcssa.i, %bb18.i.preheader ]
  %state.sroa.9.2119.i = phi ptr [ %_9.i76.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit69.i" ], [ %state.sroa.9.1.lcssa.i, %bb18.i.preheader ]
  %state.sroa.27.2118.i = phi i64 [ %45, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit69.i" ], [ %state.sroa.27.1.lcssa.i, %bb18.i.preheader ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1075)
  call void @llvm.experimental.noalias.scope.decl(metadata !1076)
  call void @llvm.experimental.noalias.scope.decl(metadata !1077)
  call void @llvm.experimental.noalias.scope.decl(metadata !1078)
  %_7.i.i65.i = load float, ptr %state.sroa.9.2119.i, align 4, !alias.scope !1079, !noalias !1080, !noundef !18
  %brmerge.not.i66.i = fcmp uno float %_6.i.i64.i, %_7.i.i65.i
  br i1 %brmerge.not.i66.i, label %bb6.i.i68.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit69.i", !prof !21

bb6.i.i68.i:                                      ; preds = %bb18.i
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_aff0f19c9c77241ccbf897612486dc62) #18, !noalias !1081
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit69.i": ; preds = %bb18.i
  %_8.i.mux.i67.i = fcmp olt float %_6.i.i64.i, %_7.i.i65.i
  %44 = getelementptr inbounds i8, ptr %state.sroa.43.2120.i, i64 -4
  %dst_base.sroa.0.0.i71.i = select i1 %_8.i.mux.i67.i, ptr %scratch.0, ptr %44
  %dst.i73.i = getelementptr inbounds nuw float, ptr %dst_base.sroa.0.0.i71.i, i64 %state.sroa.27.2118.i
  store float %_7.i.i65.i, ptr %dst.i73.i, align 4, !alias.scope !1005, !noalias !1082
  %_8.i75.i = zext i1 %_8.i.mux.i67.i to i64
  %45 = add i64 %state.sroa.27.2118.i, %_8.i75.i
  %_9.i76.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.2119.i, i64 4
  %_47.i = icmp ult ptr %_9.i76.i, %loop_end.i
  br i1 %_47.i, label %bb18.i, label %bb21.i

bb23.i:                                           ; preds = %bb21.i
  %46 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa.i, i64 -4
  %dst.i80.i = getelementptr inbounds nuw float, ptr %46, i64 %state.sroa.27.2.lcssa.i
  %47 = load i32, ptr %state.sroa.9.2.lcssa.i, align 4, !alias.scope !1002, !noalias !1085
  store i32 %47, ptr %dst.i80.i, align 4, !alias.scope !1005, !noalias !1088
  %_9.i82.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.2.lcssa.i, i64 4
  br label %bb3.i27

bb22.i:                                           ; preds = %bb21.i
  %48 = shl i64 %state.sroa.27.2.lcssa.i, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.sroa.0.0.ph204, ptr nonnull align 4 %scratch.0, i64 %48, i1 false), !alias.scope !1089
  %_63.i = sub i64 %v.sroa.16.0196, %state.sroa.27.2.lcssa.i
  %_97124.not.i = icmp eq i64 %v.sroa.16.0196, %state.sroa.27.2.lcssa.i
  br i1 %_97124.not.i, label %bb16, label %bb42.lr.ph.i

bb42.lr.ph.i:                                     ; preds = %bb22.i
  %49 = getelementptr float, ptr %v.sroa.0.0.ph204, i64 %state.sroa.27.2.lcssa.i
  %min.iters.check506 = icmp ult i64 %_63.i, 8
  br i1 %min.iters.check506, label %bb42.i.preheader, label %vector.ph507

vector.ph507:                                     ; preds = %bb42.lr.ph.i
  %n.vec509 = and i64 %_63.i, -8
  br label %vector.body510

vector.body510:                                   ; preds = %vector.body510, %vector.ph507
  %index511 = phi i64 [ 0, %vector.ph507 ], [ %index.next516, %vector.body510 ]
  %50 = getelementptr float, ptr %49, i64 %index511
  %51 = xor i64 %index511, -1
  %52 = getelementptr float, ptr %_86.i, i64 %51
  %53 = getelementptr i8, ptr %52, i64 -12
  %54 = getelementptr i8, ptr %52, i64 -28
  %wide.load512 = load <4 x i32>, ptr %53, align 4, !alias.scope !1005, !noalias !1002
  %reverse513 = shufflevector <4 x i32> %wide.load512, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %wide.load514 = load <4 x i32>, ptr %54, align 4, !alias.scope !1005, !noalias !1002
  %reverse515 = shufflevector <4 x i32> %wide.load514, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %55 = getelementptr i8, ptr %50, i64 16
  store <4 x i32> %reverse513, ptr %50, align 4, !alias.scope !1002, !noalias !1005
  store <4 x i32> %reverse515, ptr %55, align 4, !alias.scope !1002, !noalias !1005
  %index.next516 = add nuw i64 %index511, 8
  %56 = icmp eq i64 %index.next516, %n.vec509
  br i1 %56, label %middle.block517, label %vector.body510, !llvm.loop !1090

middle.block517:                                  ; preds = %vector.body510
  %cmp.n518 = icmp eq i64 %_63.i, %n.vec509
  br i1 %cmp.n518, label %bb16, label %bb42.i.preheader

bb42.i.preheader:                                 ; preds = %bb42.lr.ph.i, %middle.block517
  %iter.sroa.0.0125.i.ph = phi i64 [ 0, %bb42.lr.ph.i ], [ %n.vec509, %middle.block517 ]
  br label %bb42.i

bb42.i:                                           ; preds = %bb42.i.preheader, %bb42.i
  %iter.sroa.0.0125.i = phi i64 [ %57, %bb42.i ], [ %iter.sroa.0.0125.i.ph, %bb42.i.preheader ]
  %57 = add nuw i64 %iter.sroa.0.0125.i, 1
  %58 = getelementptr float, ptr %49, i64 %iter.sroa.0.0125.i
  %59 = xor i64 %iter.sroa.0.0125.i, -1
  %60 = getelementptr float, ptr %_86.i, i64 %59
  %61 = load i32, ptr %60, align 4, !alias.scope !1005, !noalias !1002
  store i32 %61, ptr %58, align 4, !alias.scope !1002, !noalias !1005
  %exitcond.not.i = icmp eq i64 %57, %_63.i
  br i1 %exitcond.not.i, label %bb16, label %bb42.i, !llvm.loop !1091

bb16:                                             ; preds = %bb42.i, %middle.block517, %bb22.i
  %62 = icmp eq i64 %state.sroa.27.2.lcssa.i, 0
  br i1 %62, label %bb17, label %bb19

bb19:                                             ; preds = %bb16
  %_6.not.i = icmp ugt i64 %state.sroa.27.2.lcssa.i, %v.sroa.16.0196
  br i1 %_6.not.i, label %bb3.i37, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h41224d6559369146E.exit", !prof !1092

bb3.i37:                                          ; preds = %bb19
; call core::panicking::panic_fmt
  call void @_ZN4core9panicking9panic_fmt17ha4414e4328fe24a0E(ptr noundef nonnull @alloc_d1084648e479974e70c9329824bf76f9, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_58d434a1e795f965ef82c8e9c5db822a) #18, !noalias !1093
  unreachable

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h41224d6559369146E.exit": ; preds = %bb19
  %63 = getelementptr inbounds nuw float, ptr %v.sroa.0.0.ph204, i64 %state.sroa.27.2.lcssa.i
; call core::slice::sort::stable::quicksort::quicksort
  call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h400e690f4471152dE(ptr noalias noundef nonnull align 4 %63, i64 noundef %_63.i, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef %31, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) %pivot_copy, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_8 = icmp ult i64 %state.sroa.27.2.lcssa.i, 33
  br i1 %_8, label %bb3, label %bb5

bb17:                                             ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E.exit", %bb16
  call void @llvm.experimental.noalias.scope.decl(metadata !1097)
  call void @llvm.experimental.noalias.scope.decl(metadata !1100)
  %_8.i38.not = icmp samesign ult i64 %scratch.1, %v.sroa.16.0196
  br i1 %_8.i38.not, label %bb31.i41, label %bb33.i42, !prof !440

bb33.i42:                                         ; preds = %bb17
  %_86.i44 = getelementptr float, ptr %scratch.0, i64 %v.sroa.16.0196
  br label %bb3.i45

bb31.i41:                                         ; preds = %bb17
  call void @llvm.trap()
  unreachable

bb3.i45:                                          ; preds = %bb23.i63, %bb33.i42
  %state.sroa.27.0.i46 = phi i64 [ 0, %bb33.i42 ], [ %77, %bb23.i63 ]
  %state.sroa.9.0.i47 = phi ptr [ %v.sroa.0.0.ph204, %bb33.i42 ], [ %_9.i82.i65, %bb23.i63 ]
  %state.sroa.43.0.i48 = phi ptr [ %_86.i44, %bb33.i42 ], [ %75, %bb23.i63 ]
  %pivot_pos.sroa.0.0.i49 = phi i64 [ %index.sroa.0.0.i, %bb33.i42 ], [ %v.sroa.16.0196, %bb23.i63 ]
  %64 = call i64 @llvm.usub.sat.i64(i64 %pivot_pos.sroa.0.0.i49, i64 3)
  %unroll_end.i50 = getelementptr inbounds nuw float, ptr %v.sroa.0.0.ph204, i64 %64
  %_19111.i51 = icmp ult ptr %state.sroa.9.0.i47, %unroll_end.i50
  br i1 %_19111.i51, label %bb6.i82.preheader, label %bb16.i52

bb6.i82.preheader:                                ; preds = %bb3.i45
  %_7.i.i.i.i87 = load float, ptr %src, align 4, !alias.scope !1102, !noalias !1109, !noundef !18
  br label %bb6.i82

bb6.i82:                                          ; preds = %bb6.i82.preheader, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hbd21bfe8d7d9ec92E.exit56.i"
  %state.sroa.43.1114.i83 = phi ptr [ %71, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hbd21bfe8d7d9ec92E.exit56.i" ], [ %state.sroa.43.0.i48, %bb6.i82.preheader ]
  %state.sroa.9.1113.i84 = phi ptr [ %_9.i63.i105, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hbd21bfe8d7d9ec92E.exit56.i" ], [ %state.sroa.9.0.i47, %bb6.i82.preheader ]
  %state.sroa.27.1112.i85 = phi i64 [ %72, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hbd21bfe8d7d9ec92E.exit56.i" ], [ %state.sroa.27.0.i46, %bb6.i82.preheader ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1113)
  call void @llvm.experimental.noalias.scope.decl(metadata !1114)
  call void @llvm.experimental.noalias.scope.decl(metadata !1115)
  call void @llvm.experimental.noalias.scope.decl(metadata !1116)
  call void @llvm.experimental.noalias.scope.decl(metadata !1117)
  call void @llvm.experimental.noalias.scope.decl(metadata !1118)
  %_6.i.i.i.i86 = load float, ptr %state.sroa.9.1113.i84, align 4, !alias.scope !1119, !noalias !1120, !noundef !18
  %brmerge.not.i.i.i88 = fcmp uno float %_6.i.i.i.i86, %_7.i.i.i.i87
  br i1 %brmerge.not.i.i.i88, label %bb6.i.i.i.i, label %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hbd21bfe8d7d9ec92E.exit.i", !prof !21

bb6.i.i.i.i:                                      ; preds = %bb6.i82
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_aff0f19c9c77241ccbf897612486dc62) #18, !noalias !1121
  unreachable

"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hbd21bfe8d7d9ec92E.exit.i": ; preds = %bb6.i82
  %_8.i.mux.i.i.i89 = fcmp uge float %_6.i.i.i.i86, %_7.i.i.i.i87
  %65 = getelementptr inbounds i8, ptr %state.sroa.43.1114.i83, i64 -4
  %dst_base.sroa.0.0.i.i90 = select i1 %_8.i.mux.i.i.i89, ptr %scratch.0, ptr %65
  %dst.i.i91 = getelementptr inbounds nuw float, ptr %dst_base.sroa.0.0.i.i90, i64 %state.sroa.27.1112.i85
  store float %_6.i.i.i.i86, ptr %dst.i.i91, align 4, !alias.scope !1100, !noalias !1122
  %_9.i.i92 = getelementptr inbounds nuw i8, ptr %state.sroa.9.1113.i84, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !1125)
  call void @llvm.experimental.noalias.scope.decl(metadata !1128)
  call void @llvm.experimental.noalias.scope.decl(metadata !1131)
  %_6.i.i.i25.i = load float, ptr %_9.i.i92, align 4, !alias.scope !1134, !noalias !1135, !noundef !18
  %brmerge.not.i.i27.i = fcmp uno float %_6.i.i.i25.i, %_7.i.i.i.i87
  br i1 %brmerge.not.i.i27.i, label %bb6.i.i.i29.i, label %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hbd21bfe8d7d9ec92E.exit30.i", !prof !21

bb6.i.i.i29.i:                                    ; preds = %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hbd21bfe8d7d9ec92E.exit.i"
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_aff0f19c9c77241ccbf897612486dc62) #18, !noalias !1139
  unreachable

"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hbd21bfe8d7d9ec92E.exit30.i": ; preds = %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hbd21bfe8d7d9ec92E.exit.i"
  %_8.i.i93 = zext i1 %_8.i.mux.i.i.i89 to i64
  %66 = add i64 %state.sroa.27.1112.i85, %_8.i.i93
  %_8.i.mux.i.i28.i = fcmp uge float %_6.i.i.i25.i, %_7.i.i.i.i87
  %67 = getelementptr inbounds i8, ptr %state.sroa.43.1114.i83, i64 -8
  %dst_base.sroa.0.0.i32.i94 = select i1 %_8.i.mux.i.i28.i, ptr %scratch.0, ptr %67
  %dst.i34.i95 = getelementptr inbounds nuw float, ptr %dst_base.sroa.0.0.i32.i94, i64 %66
  store float %_6.i.i.i25.i, ptr %dst.i34.i95, align 4, !alias.scope !1100, !noalias !1140
  %_9.i37.i96 = getelementptr inbounds nuw i8, ptr %state.sroa.9.1113.i84, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1143)
  call void @llvm.experimental.noalias.scope.decl(metadata !1146)
  call void @llvm.experimental.noalias.scope.decl(metadata !1149)
  %_6.i.i.i38.i = load float, ptr %_9.i37.i96, align 4, !alias.scope !1152, !noalias !1153, !noundef !18
  %brmerge.not.i.i40.i = fcmp uno float %_6.i.i.i38.i, %_7.i.i.i.i87
  br i1 %brmerge.not.i.i40.i, label %bb6.i.i.i42.i, label %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hbd21bfe8d7d9ec92E.exit43.i", !prof !21

bb6.i.i.i42.i:                                    ; preds = %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hbd21bfe8d7d9ec92E.exit30.i"
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_aff0f19c9c77241ccbf897612486dc62) #18, !noalias !1157
  unreachable

"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hbd21bfe8d7d9ec92E.exit43.i": ; preds = %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hbd21bfe8d7d9ec92E.exit30.i"
  %_8.i36.i97 = zext i1 %_8.i.mux.i.i28.i to i64
  %68 = add i64 %66, %_8.i36.i97
  %_8.i.mux.i.i41.i = fcmp uge float %_6.i.i.i38.i, %_7.i.i.i.i87
  %69 = getelementptr inbounds i8, ptr %state.sroa.43.1114.i83, i64 -12
  %dst_base.sroa.0.0.i45.i98 = select i1 %_8.i.mux.i.i41.i, ptr %scratch.0, ptr %69
  %dst.i47.i99 = getelementptr inbounds nuw float, ptr %dst_base.sroa.0.0.i45.i98, i64 %68
  store float %_6.i.i.i38.i, ptr %dst.i47.i99, align 4, !alias.scope !1100, !noalias !1158
  %_9.i50.i100 = getelementptr inbounds nuw i8, ptr %state.sroa.9.1113.i84, i64 12
  call void @llvm.experimental.noalias.scope.decl(metadata !1161)
  call void @llvm.experimental.noalias.scope.decl(metadata !1164)
  call void @llvm.experimental.noalias.scope.decl(metadata !1167)
  %_6.i.i.i51.i = load float, ptr %_9.i50.i100, align 4, !alias.scope !1170, !noalias !1171, !noundef !18
  %brmerge.not.i.i53.i = fcmp uno float %_6.i.i.i51.i, %_7.i.i.i.i87
  br i1 %brmerge.not.i.i53.i, label %bb6.i.i.i55.i, label %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hbd21bfe8d7d9ec92E.exit56.i", !prof !21

bb6.i.i.i55.i:                                    ; preds = %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hbd21bfe8d7d9ec92E.exit43.i"
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_aff0f19c9c77241ccbf897612486dc62) #18, !noalias !1175
  unreachable

"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hbd21bfe8d7d9ec92E.exit56.i": ; preds = %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hbd21bfe8d7d9ec92E.exit43.i"
  %_8.i49.i101 = zext i1 %_8.i.mux.i.i41.i to i64
  %70 = add i64 %68, %_8.i49.i101
  %_8.i.mux.i.i54.i = fcmp uge float %_6.i.i.i51.i, %_7.i.i.i.i87
  %71 = getelementptr inbounds i8, ptr %state.sroa.43.1114.i83, i64 -16
  %dst_base.sroa.0.0.i58.i102 = select i1 %_8.i.mux.i.i54.i, ptr %scratch.0, ptr %71
  %dst.i60.i103 = getelementptr inbounds nuw float, ptr %dst_base.sroa.0.0.i58.i102, i64 %70
  store float %_6.i.i.i51.i, ptr %dst.i60.i103, align 4, !alias.scope !1100, !noalias !1176
  %_8.i62.i104 = zext i1 %_8.i.mux.i.i54.i to i64
  %72 = add i64 %70, %_8.i62.i104
  %_9.i63.i105 = getelementptr inbounds nuw i8, ptr %state.sroa.9.1113.i84, i64 16
  %_19.i106 = icmp ult ptr %_9.i63.i105, %unroll_end.i50
  br i1 %_19.i106, label %bb6.i82, label %bb16.i52

bb16.i52:                                         ; preds = %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hbd21bfe8d7d9ec92E.exit56.i", %bb3.i45
  %state.sroa.27.1.lcssa.i53 = phi i64 [ %state.sroa.27.0.i46, %bb3.i45 ], [ %72, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hbd21bfe8d7d9ec92E.exit56.i" ]
  %state.sroa.9.1.lcssa.i54 = phi ptr [ %state.sroa.9.0.i47, %bb3.i45 ], [ %_9.i63.i105, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hbd21bfe8d7d9ec92E.exit56.i" ]
  %state.sroa.43.1.lcssa.i55 = phi ptr [ %state.sroa.43.0.i48, %bb3.i45 ], [ %71, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hbd21bfe8d7d9ec92E.exit56.i" ]
  %loop_end.i56 = getelementptr inbounds nuw float, ptr %v.sroa.0.0.ph204, i64 %pivot_pos.sroa.0.0.i49
  %_47117.i57 = icmp ult ptr %state.sroa.9.1.lcssa.i54, %loop_end.i56
  br i1 %_47117.i57, label %bb18.i73.preheader, label %bb21.i58

bb18.i73.preheader:                               ; preds = %bb16.i52
  %_7.i.i.i65.i = load float, ptr %src, align 4, !alias.scope !1179, !noalias !1186, !noundef !18
  br label %bb18.i73

bb21.i58:                                         ; preds = %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hbd21bfe8d7d9ec92E.exit69.i", %bb16.i52
  %state.sroa.27.2.lcssa.i59 = phi i64 [ %state.sroa.27.1.lcssa.i53, %bb16.i52 ], [ %74, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hbd21bfe8d7d9ec92E.exit69.i" ]
  %state.sroa.9.2.lcssa.i60 = phi ptr [ %state.sroa.9.1.lcssa.i54, %bb16.i52 ], [ %_9.i76.i80, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hbd21bfe8d7d9ec92E.exit69.i" ]
  %state.sroa.43.2.lcssa.i61 = phi ptr [ %state.sroa.43.1.lcssa.i55, %bb16.i52 ], [ %73, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hbd21bfe8d7d9ec92E.exit69.i" ]
  %_55.i62 = icmp eq i64 %pivot_pos.sroa.0.0.i49, %v.sroa.16.0196
  br i1 %_55.i62, label %bb22.i66, label %bb23.i63

bb18.i73:                                         ; preds = %bb18.i73.preheader, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hbd21bfe8d7d9ec92E.exit69.i"
  %state.sroa.43.2120.i74 = phi ptr [ %73, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hbd21bfe8d7d9ec92E.exit69.i" ], [ %state.sroa.43.1.lcssa.i55, %bb18.i73.preheader ]
  %state.sroa.9.2119.i75 = phi ptr [ %_9.i76.i80, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hbd21bfe8d7d9ec92E.exit69.i" ], [ %state.sroa.9.1.lcssa.i54, %bb18.i73.preheader ]
  %state.sroa.27.2118.i76 = phi i64 [ %74, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hbd21bfe8d7d9ec92E.exit69.i" ], [ %state.sroa.27.1.lcssa.i53, %bb18.i73.preheader ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1190)
  call void @llvm.experimental.noalias.scope.decl(metadata !1191)
  call void @llvm.experimental.noalias.scope.decl(metadata !1192)
  call void @llvm.experimental.noalias.scope.decl(metadata !1193)
  call void @llvm.experimental.noalias.scope.decl(metadata !1194)
  call void @llvm.experimental.noalias.scope.decl(metadata !1195)
  %_6.i.i.i64.i = load float, ptr %state.sroa.9.2119.i75, align 4, !alias.scope !1196, !noalias !1197, !noundef !18
  %brmerge.not.i.i66.i = fcmp uno float %_6.i.i.i64.i, %_7.i.i.i65.i
  br i1 %brmerge.not.i.i66.i, label %bb6.i.i.i68.i, label %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hbd21bfe8d7d9ec92E.exit69.i", !prof !21

bb6.i.i.i68.i:                                    ; preds = %bb18.i73
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_aff0f19c9c77241ccbf897612486dc62) #18, !noalias !1198
  unreachable

"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hbd21bfe8d7d9ec92E.exit69.i": ; preds = %bb18.i73
  %_8.i.mux.i.i67.i = fcmp uge float %_6.i.i.i64.i, %_7.i.i.i65.i
  %73 = getelementptr inbounds i8, ptr %state.sroa.43.2120.i74, i64 -4
  %dst_base.sroa.0.0.i71.i77 = select i1 %_8.i.mux.i.i67.i, ptr %scratch.0, ptr %73
  %dst.i73.i78 = getelementptr inbounds nuw float, ptr %dst_base.sroa.0.0.i71.i77, i64 %state.sroa.27.2118.i76
  store float %_6.i.i.i64.i, ptr %dst.i73.i78, align 4, !alias.scope !1100, !noalias !1199
  %_8.i75.i79 = zext i1 %_8.i.mux.i.i67.i to i64
  %74 = add i64 %state.sroa.27.2118.i76, %_8.i75.i79
  %_9.i76.i80 = getelementptr inbounds nuw i8, ptr %state.sroa.9.2119.i75, i64 4
  %_47.i81 = icmp ult ptr %_9.i76.i80, %loop_end.i56
  br i1 %_47.i81, label %bb18.i73, label %bb21.i58

bb23.i63:                                         ; preds = %bb21.i58
  %75 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa.i61, i64 -4
  %dst.i80.i64 = getelementptr inbounds nuw float, ptr %scratch.0, i64 %state.sroa.27.2.lcssa.i59
  %76 = load i32, ptr %state.sroa.9.2.lcssa.i60, align 4, !alias.scope !1097, !noalias !1202
  store i32 %76, ptr %dst.i80.i64, align 4, !alias.scope !1100, !noalias !1205
  %77 = add i64 %state.sroa.27.2.lcssa.i59, 1
  %_9.i82.i65 = getelementptr inbounds nuw i8, ptr %state.sroa.9.2.lcssa.i60, i64 4
  br label %bb3.i45

bb22.i66:                                         ; preds = %bb21.i58
  %78 = shl i64 %state.sroa.27.2.lcssa.i59, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.sroa.0.0.ph204, ptr nonnull align 4 %scratch.0, i64 %78, i1 false), !alias.scope !1206
  %_63.i67 = sub i64 %v.sroa.16.0196, %state.sroa.27.2.lcssa.i59
  %_97124.not.i68 = icmp eq i64 %v.sroa.16.0196, %state.sroa.27.2.lcssa.i59
  br i1 %_97124.not.i68, label %bb3.thread, label %bb42.lr.ph.i69

bb42.lr.ph.i69:                                   ; preds = %bb22.i66
  %79 = getelementptr float, ptr %v.sroa.0.0.ph204, i64 %state.sroa.27.2.lcssa.i59
  %min.iters.check = icmp ult i64 %_63.i67, 8
  br i1 %min.iters.check, label %bb42.i70.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb42.lr.ph.i69
  %n.vec = and i64 %_63.i67, -8
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %80 = getelementptr float, ptr %79, i64 %index
  %81 = xor i64 %index, -1
  %82 = getelementptr float, ptr %_86.i44, i64 %81
  %83 = getelementptr i8, ptr %82, i64 -12
  %84 = getelementptr i8, ptr %82, i64 -28
  %wide.load = load <4 x i32>, ptr %83, align 4, !alias.scope !1100, !noalias !1097
  %reverse = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %wide.load503 = load <4 x i32>, ptr %84, align 4, !alias.scope !1100, !noalias !1097
  %reverse504 = shufflevector <4 x i32> %wide.load503, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %85 = getelementptr i8, ptr %80, i64 16
  store <4 x i32> %reverse, ptr %80, align 4, !alias.scope !1097, !noalias !1100
  store <4 x i32> %reverse504, ptr %85, align 4, !alias.scope !1097, !noalias !1100
  %index.next = add nuw i64 %index, 8
  %86 = icmp eq i64 %index.next, %n.vec
  br i1 %86, label %middle.block, label %vector.body, !llvm.loop !1207

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %_63.i67, %n.vec
  br i1 %cmp.n, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17ha39ffb1d16427c1bE.exit, label %bb42.i70.preheader

bb42.i70.preheader:                               ; preds = %bb42.lr.ph.i69, %middle.block
  %iter.sroa.0.0125.i71.ph = phi i64 [ 0, %bb42.lr.ph.i69 ], [ %n.vec, %middle.block ]
  br label %bb42.i70

bb42.i70:                                         ; preds = %bb42.i70.preheader, %bb42.i70
  %iter.sroa.0.0125.i71 = phi i64 [ %87, %bb42.i70 ], [ %iter.sroa.0.0125.i71.ph, %bb42.i70.preheader ]
  %87 = add nuw i64 %iter.sroa.0.0125.i71, 1
  %88 = getelementptr float, ptr %79, i64 %iter.sroa.0.0125.i71
  %89 = xor i64 %iter.sroa.0.0125.i71, -1
  %90 = getelementptr float, ptr %_86.i44, i64 %89
  %91 = load i32, ptr %90, align 4, !alias.scope !1100, !noalias !1097
  store i32 %91, ptr %88, align 4, !alias.scope !1097, !noalias !1100
  %exitcond.not.i72 = icmp eq i64 %87, %_63.i67
  br i1 %exitcond.not.i72, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17ha39ffb1d16427c1bE.exit, label %bb42.i70, !llvm.loop !1208

_ZN4core5slice4sort6stable9quicksort16stable_partition17ha39ffb1d16427c1bE.exit: ; preds = %bb42.i70, %middle.block
  %_47 = icmp ugt i64 %state.sroa.27.2.lcssa.i59, %v.sroa.16.0196
  br i1 %_47, label %bb27, label %bb28, !prof !1092

bb3.thread:                                       ; preds = %bb22.i66
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  br label %bb22

bb28:                                             ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17ha39ffb1d16427c1bE.exit
  %_54 = getelementptr inbounds nuw float, ptr %v.sroa.0.0.ph204, i64 %state.sroa.27.2.lcssa.i59
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_8194 = icmp ult i64 %_63.i67, 33
  br i1 %_8194, label %bb3, label %bb5.lr.ph

bb27:                                             ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17ha39ffb1d16427c1bE.exit
; call core::slice::index::slice_index_fail
  call void @_ZN4core5slice5index16slice_index_fail17h62807bcaa490c9c1E(i64 noundef %state.sroa.27.2.lcssa.i59, i64 noundef %v.sroa.16.0196, i64 noundef %v.sroa.16.0196, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_0766b232215672ee1bd2195fdb153938) #18
  unreachable

bb22:                                             ; preds = %bb3.thread, %bb9.i.i, %bb3, %bb6
  ret void
}

; core::slice::sort::stable::quicksort::quicksort
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable9quicksort9quicksort17h63d22310ccbb417dE(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %2, ptr noalias noundef readonly align 4 captures(address) dereferenceable_or_null(4) %3, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #2 personality ptr @rust_eh_personality {
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

bb5:                                              ; preds = %bb5.lr.ph, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hc608c0d84b69e4dbE.exit"
  %v.sroa.16.0132 = phi i64 [ %v.sroa.16.0.ph139, %bb5.lr.ph ], [ %state.sroa.27.2.lcssa.i, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hc608c0d84b69e4dbE.exit" ]
  %limit.sroa.0.0131 = phi i32 [ %limit.sroa.0.0.ph138, %bb5.lr.ph ], [ %48, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hc608c0d84b69e4dbE.exit" ]
  %_11 = icmp eq i32 %limit.sroa.0.0131, 0
  br i1 %_11, label %bb6, label %bb7

bb3:                                              ; preds = %bb28, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hc608c0d84b69e4dbE.exit", %start
  %v.sroa.0.0.ph.lcssa129 = phi ptr [ %0, %start ], [ %v.sroa.0.0.ph140, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hc608c0d84b69e4dbE.exit" ], [ %_54, %bb28 ]
  %v.sroa.16.0.lcssa = phi i64 [ %1, %start ], [ %state.sroa.27.2.lcssa.i, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hc608c0d84b69e4dbE.exit" ], [ %_63.i63, %bb28 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1209)
  call void @llvm.experimental.noalias.scope.decl(metadata !1212)
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
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h8d6dd5af2d620dd2E(ptr noundef nonnull align 4 %v.sroa.0.0.ph.lcssa129, ptr noundef nonnull align 4 %scratch.0, ptr noundef %_16.i)
  %_18.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %len_div_211.i
  %_19.i = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211.i
  %_20.i = getelementptr inbounds nuw i8, ptr %_16.i, i64 32
; call core::slice::sort::shared::smallsort::sort8_stable
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h8d6dd5af2d620dd2E(ptr noundef %_18.i, ptr noundef %_19.i, ptr noundef %_20.i)
  br label %bb15.i

bb10.i:                                           ; preds = %bb9.i
  %_7.i.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph.lcssa129, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !1214)
  call void @llvm.experimental.noalias.scope.decl(metadata !1217)
  call void @llvm.experimental.noalias.scope.decl(metadata !1219)
  call void @llvm.experimental.noalias.scope.decl(metadata !1222)
  call void @llvm.experimental.noalias.scope.decl(metadata !1224)
  call void @llvm.experimental.noalias.scope.decl(metadata !1227)
  %_3.i.i.i.i.i = load i32, ptr %_7.i.i, align 4, !alias.scope !1229, !noalias !1230, !noundef !18
  %_4.i.i.i.i.i = load i32, ptr %v.sroa.0.0.ph.lcssa129, align 4, !alias.scope !1232, !noalias !1233, !noundef !18
  %_0.i.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %_12.i.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph.lcssa129, i64 12
  %_14.i.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph.lcssa129, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1234)
  call void @llvm.experimental.noalias.scope.decl(metadata !1237)
  call void @llvm.experimental.noalias.scope.decl(metadata !1239)
  call void @llvm.experimental.noalias.scope.decl(metadata !1242)
  call void @llvm.experimental.noalias.scope.decl(metadata !1244)
  call void @llvm.experimental.noalias.scope.decl(metadata !1247)
  %_3.i.i.i7.i.i = load i32, ptr %_12.i.i, align 4, !alias.scope !1249, !noalias !1250, !noundef !18
  %_4.i.i.i8.i.i = load i32, ptr %_14.i.i, align 4, !alias.scope !1251, !noalias !1252, !noundef !18
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
  call void @llvm.experimental.noalias.scope.decl(metadata !1253)
  call void @llvm.experimental.noalias.scope.decl(metadata !1256)
  call void @llvm.experimental.noalias.scope.decl(metadata !1258)
  call void @llvm.experimental.noalias.scope.decl(metadata !1261)
  call void @llvm.experimental.noalias.scope.decl(metadata !1263)
  call void @llvm.experimental.noalias.scope.decl(metadata !1266)
  %_3.i.i.i10.i.i = load i32, ptr %c.i.i, align 4, !alias.scope !1268, !noalias !1269, !noundef !18
  %_4.i.i.i11.i.i = load i32, ptr %a.i.i, align 4, !alias.scope !1270, !noalias !1271, !noundef !18
  %_0.i12.i.i = icmp slt i32 %_3.i.i.i10.i.i, %_4.i.i.i11.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1272)
  call void @llvm.experimental.noalias.scope.decl(metadata !1275)
  call void @llvm.experimental.noalias.scope.decl(metadata !1277)
  call void @llvm.experimental.noalias.scope.decl(metadata !1280)
  call void @llvm.experimental.noalias.scope.decl(metadata !1282)
  call void @llvm.experimental.noalias.scope.decl(metadata !1285)
  %_3.i.i.i13.i.i = load i32, ptr %d.i.i, align 4, !alias.scope !1287, !noalias !1288, !noundef !18
  %_4.i.i.i14.i.i = load i32, ptr %b.i.i, align 4, !alias.scope !1289, !noalias !1290, !noundef !18
  %_0.i15.i.i = icmp slt i32 %_3.i.i.i13.i.i, %_4.i.i.i14.i.i
  %5 = call i32 @llvm.smin.i32(i32 %_3.i.i.i10.i.i, i32 %_4.i.i.i11.i.i)
  %6 = select i1 %_0.i15.i.i, ptr %c.i.i, ptr %b.i.i, !unpredictable !18
  %7 = select i1 %_0.i12.i.i, ptr %a.i.i, ptr %6, !unpredictable !18
  %8 = select i1 %_0.i12.i.i, ptr %b.i.i, ptr %c.i.i, !unpredictable !18
  %9 = select i1 %_0.i15.i.i, ptr %d.i.i, ptr %8, !unpredictable !18
  call void @llvm.experimental.noalias.scope.decl(metadata !1291)
  call void @llvm.experimental.noalias.scope.decl(metadata !1294)
  call void @llvm.experimental.noalias.scope.decl(metadata !1296)
  call void @llvm.experimental.noalias.scope.decl(metadata !1299)
  call void @llvm.experimental.noalias.scope.decl(metadata !1301)
  call void @llvm.experimental.noalias.scope.decl(metadata !1304)
  %_3.i.i.i16.i.i = load i32, ptr %9, align 4, !alias.scope !1306, !noalias !1307, !noundef !18
  %_4.i.i.i17.i.i = load i32, ptr %7, align 4, !alias.scope !1308, !noalias !1309, !noundef !18
  store i32 %5, ptr %scratch.0, align 4, !alias.scope !1212, !noalias !1310
  %dst5.i.i = getelementptr inbounds nuw i8, ptr %scratch.0, i64 4
  %10 = call i32 @llvm.smin.i32(i32 %_3.i.i.i16.i.i, i32 %_4.i.i.i17.i.i)
  store i32 %10, ptr %dst5.i.i, align 4, !alias.scope !1212, !noalias !1310
  %dst6.i.i = getelementptr inbounds nuw i8, ptr %scratch.0, i64 8
  %11 = call i32 @llvm.smax.i32(i32 %_3.i.i.i16.i.i, i32 %_4.i.i.i17.i.i)
  store i32 %11, ptr %dst6.i.i, align 4, !alias.scope !1212, !noalias !1310
  %12 = getelementptr inbounds nuw i8, ptr %scratch.0, i64 12
  %13 = call i32 @llvm.smax.i32(i32 %_3.i.i.i13.i.i, i32 %_4.i.i.i14.i.i)
  store i32 %13, ptr %12, align 4, !alias.scope !1212, !noalias !1310
  %_27.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %len_div_211.i
  %_28.i = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211.i
  %_7.i13.i = getelementptr inbounds nuw i8, ptr %_27.i, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !1311)
  call void @llvm.experimental.noalias.scope.decl(metadata !1314)
  call void @llvm.experimental.noalias.scope.decl(metadata !1316)
  call void @llvm.experimental.noalias.scope.decl(metadata !1319)
  call void @llvm.experimental.noalias.scope.decl(metadata !1321)
  call void @llvm.experimental.noalias.scope.decl(metadata !1324)
  %_3.i.i.i.i14.i = load i32, ptr %_7.i13.i, align 4, !alias.scope !1326, !noalias !1327, !noundef !18
  %_4.i.i.i.i15.i = load i32, ptr %_27.i, align 4, !alias.scope !1328, !noalias !1329, !noundef !18
  %_0.i.i16.i = icmp slt i32 %_3.i.i.i.i14.i, %_4.i.i.i.i15.i
  %_12.i17.i = getelementptr inbounds nuw i8, ptr %_27.i, i64 12
  %_14.i18.i = getelementptr inbounds nuw i8, ptr %_27.i, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1330)
  call void @llvm.experimental.noalias.scope.decl(metadata !1333)
  call void @llvm.experimental.noalias.scope.decl(metadata !1335)
  call void @llvm.experimental.noalias.scope.decl(metadata !1338)
  call void @llvm.experimental.noalias.scope.decl(metadata !1340)
  call void @llvm.experimental.noalias.scope.decl(metadata !1343)
  %_3.i.i.i7.i19.i = load i32, ptr %_12.i17.i, align 4, !alias.scope !1345, !noalias !1346, !noundef !18
  %_4.i.i.i8.i20.i = load i32, ptr %_14.i18.i, align 4, !alias.scope !1347, !noalias !1348, !noundef !18
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
  call void @llvm.experimental.noalias.scope.decl(metadata !1349)
  call void @llvm.experimental.noalias.scope.decl(metadata !1352)
  call void @llvm.experimental.noalias.scope.decl(metadata !1354)
  call void @llvm.experimental.noalias.scope.decl(metadata !1357)
  call void @llvm.experimental.noalias.scope.decl(metadata !1359)
  call void @llvm.experimental.noalias.scope.decl(metadata !1362)
  %_3.i.i.i10.i31.i = load i32, ptr %c.i28.i, align 4, !alias.scope !1364, !noalias !1365, !noundef !18
  %_4.i.i.i11.i32.i = load i32, ptr %a.i23.i, align 4, !alias.scope !1366, !noalias !1367, !noundef !18
  %_0.i12.i33.i = icmp slt i32 %_3.i.i.i10.i31.i, %_4.i.i.i11.i32.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1368)
  call void @llvm.experimental.noalias.scope.decl(metadata !1371)
  call void @llvm.experimental.noalias.scope.decl(metadata !1373)
  call void @llvm.experimental.noalias.scope.decl(metadata !1376)
  call void @llvm.experimental.noalias.scope.decl(metadata !1378)
  call void @llvm.experimental.noalias.scope.decl(metadata !1381)
  %_3.i.i.i13.i34.i = load i32, ptr %d.i30.i, align 4, !alias.scope !1383, !noalias !1384, !noundef !18
  %_4.i.i.i14.i35.i = load i32, ptr %b.i26.i, align 4, !alias.scope !1385, !noalias !1386, !noundef !18
  %_0.i15.i36.i = icmp slt i32 %_3.i.i.i13.i34.i, %_4.i.i.i14.i35.i
  %14 = call i32 @llvm.smin.i32(i32 %_3.i.i.i10.i31.i, i32 %_4.i.i.i11.i32.i)
  %15 = select i1 %_0.i15.i36.i, ptr %c.i28.i, ptr %b.i26.i, !unpredictable !18
  %16 = select i1 %_0.i12.i33.i, ptr %a.i23.i, ptr %15, !unpredictable !18
  %17 = select i1 %_0.i12.i33.i, ptr %b.i26.i, ptr %c.i28.i, !unpredictable !18
  %18 = select i1 %_0.i15.i36.i, ptr %d.i30.i, ptr %17, !unpredictable !18
  call void @llvm.experimental.noalias.scope.decl(metadata !1387)
  call void @llvm.experimental.noalias.scope.decl(metadata !1390)
  call void @llvm.experimental.noalias.scope.decl(metadata !1392)
  call void @llvm.experimental.noalias.scope.decl(metadata !1395)
  call void @llvm.experimental.noalias.scope.decl(metadata !1397)
  call void @llvm.experimental.noalias.scope.decl(metadata !1400)
  %_3.i.i.i16.i37.i = load i32, ptr %18, align 4, !alias.scope !1402, !noalias !1403, !noundef !18
  %_4.i.i.i17.i38.i = load i32, ptr %16, align 4, !alias.scope !1404, !noalias !1405, !noundef !18
  store i32 %14, ptr %_28.i, align 4, !alias.scope !1212, !noalias !1310
  %dst5.i40.i = getelementptr inbounds nuw i8, ptr %_28.i, i64 4
  %19 = call i32 @llvm.smin.i32(i32 %_3.i.i.i16.i37.i, i32 %_4.i.i.i17.i38.i)
  store i32 %19, ptr %dst5.i40.i, align 4, !alias.scope !1212, !noalias !1310
  %dst6.i43.i = getelementptr inbounds nuw i8, ptr %_28.i, i64 8
  %20 = call i32 @llvm.smax.i32(i32 %_3.i.i.i16.i37.i, i32 %_4.i.i.i17.i38.i)
  store i32 %20, ptr %dst6.i43.i, align 4, !alias.scope !1212, !noalias !1310
  %21 = getelementptr inbounds nuw i8, ptr %_28.i, i64 12
  %22 = call i32 @llvm.smax.i32(i32 %_3.i.i.i13.i34.i, i32 %_4.i.i.i14.i35.i)
  store i32 %22, ptr %21, align 4, !alias.scope !1212, !noalias !1310
  br label %bb15.i

bb46.i:                                           ; preds = %bb9.i
  %23 = load i32, ptr %v.sroa.0.0.ph.lcssa129, align 4, !alias.scope !1209, !noalias !1406
  store i32 %23, ptr %scratch.0, align 4, !alias.scope !1212, !noalias !1310
  %_31.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %len_div_211.i
  %24 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211.i
  %25 = load i32, ptr %_31.i, align 4, !alias.scope !1209, !noalias !1406
  store i32 %25, ptr %24, align 4, !alias.scope !1212, !noalias !1310
  br label %bb15.i

bb15.i:                                           ; preds = %bb46.i, %bb10.i, %bb6.i
  %presorted_len.sroa.0.0.i = phi i64 [ 8, %bb6.i ], [ 4, %bb10.i ], [ 1, %bb46.i ]
  %26 = sub nsw i64 %v.sroa.16.0.lcssa, %len_div_211.i
  %_8061.i = icmp samesign ult i64 %presorted_len.sroa.0.0.i, %len_div_211.i
  br i1 %_8061.i, label %bb24.preheader.i, label %bb16.loopexit.i

bb16.loopexit.i:                                  ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17hd28308059819002dE.exit.i, %bb15.i
  %src5.1.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %len_div_211.i
  %dst6.1.i = getelementptr i32, ptr %scratch.0, i64 %len_div_211.i
  %_8061.1.i = icmp ult i64 %presorted_len.sroa.0.0.i, %26
  br i1 %_8061.1.i, label %bb24.preheader.1.i, label %bb16.loopexit.1.i

bb24.preheader.1.i:                               ; preds = %bb16.loopexit.i
  %iter1.sroa.0.163.1.i = add nuw nsw i64 %presorted_len.sroa.0.0.i, 1
  br label %bb24.1.i

bb24.1.i:                                         ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17hd28308059819002dE.exit.1.i, %bb24.preheader.1.i
  %iter1.sroa.0.165.1.i = phi i64 [ %iter1.sroa.0.1.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hd28308059819002dE.exit.1.i ], [ %iter1.sroa.0.163.1.i, %bb24.preheader.1.i ]
  %iter1.sroa.0.064.1.i = phi i64 [ %iter1.sroa.0.165.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hd28308059819002dE.exit.1.i ], [ %presorted_len.sroa.0.0.i, %bb24.preheader.1.i ]
  %_55.1.i = getelementptr inbounds nuw i32, ptr %src5.1.i, i64 %iter1.sroa.0.064.1.i
  %dst7.1.i = getelementptr inbounds nuw i32, ptr %dst6.1.i, i64 %iter1.sroa.0.064.1.i
  %27 = load i32, ptr %_55.1.i, align 4, !alias.scope !1209, !noalias !1406
  store i32 %27, ptr %dst7.1.i, align 4, !alias.scope !1212, !noalias !1310
  %28 = getelementptr inbounds i8, ptr %dst7.1.i, i64 -4
  %_4.i.i.i.i55.1.i = load i32, ptr %28, align 4, !alias.scope !1407, !noalias !1414, !noundef !18
  %_0.i.i56.1.i = icmp slt i32 %27, %_4.i.i.i.i55.1.i
  br i1 %_0.i.i56.1.i, label %bb4.i.1.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hd28308059819002dE.exit.1.i

bb4.i.1.i:                                        ; preds = %bb24.1.i, %bb7.i.1.i
  %29 = phi i32 [ %_4.i.i.i2.i.1.i, %bb7.i.1.i ], [ %_4.i.i.i.i55.1.i, %bb24.1.i ]
  %gap_guard.sroa.5.0.i.1.i = phi ptr [ %sift.sroa.0.0.i.1.i, %bb7.i.1.i ], [ %dst7.1.i, %bb24.1.i ]
  %sift.sroa.0.0.i.1.i = phi ptr [ %30, %bb7.i.1.i ], [ %28, %bb24.1.i ]
  store i32 %29, ptr %gap_guard.sroa.5.0.i.1.i, align 4, !alias.scope !1212, !noalias !1310
  %_18.i.1.i = icmp eq ptr %sift.sroa.0.0.i.1.i, %dst6.1.i
  br i1 %_18.i.1.i, label %bb10.i.1.i, label %bb7.i.1.i

bb7.i.1.i:                                        ; preds = %bb4.i.1.i
  %30 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.1.i, i64 -4
  %_4.i.i.i2.i.1.i = load i32, ptr %30, align 4, !alias.scope !1418, !noalias !1425, !noundef !18
  %_0.i3.i.1.i = icmp slt i32 %27, %_4.i.i.i2.i.1.i
  br i1 %_0.i3.i.1.i, label %bb4.i.1.i, label %bb10.i.1.i

bb10.i.1.i:                                       ; preds = %bb7.i.1.i, %bb4.i.1.i
  %sift.sroa.0.0.i.lcssa.1.i = phi ptr [ %sift.sroa.0.0.i.1.i, %bb7.i.1.i ], [ %dst6.1.i, %bb4.i.1.i ]
  store i32 %27, ptr %sift.sroa.0.0.i.lcssa.1.i, align 4, !alias.scope !1212, !noalias !1429
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hd28308059819002dE.exit.1.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17hd28308059819002dE.exit.1.i: ; preds = %bb10.i.1.i, %bb24.1.i
  %_80.1.i = icmp ult i64 %iter1.sroa.0.165.1.i, %26
  %_84.1.i = zext i1 %_80.1.i to i64
  %iter1.sroa.0.1.1.i = add nuw i64 %iter1.sroa.0.165.1.i, %_84.1.i
  br i1 %_80.1.i, label %bb24.1.i, label %bb16.loopexit.1.i

bb16.loopexit.1.i:                                ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17hd28308059819002dE.exit.1.i, %bb16.loopexit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1434)
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
  call void @llvm.experimental.noalias.scope.decl(metadata !1437)
  call void @llvm.experimental.noalias.scope.decl(metadata !1440)
  call void @llvm.experimental.noalias.scope.decl(metadata !1442), !noalias !1445
  call void @llvm.experimental.noalias.scope.decl(metadata !1448), !noalias !1445
  call void @llvm.experimental.noalias.scope.decl(metadata !1450), !noalias !1445
  call void @llvm.experimental.noalias.scope.decl(metadata !1453), !noalias !1445
  %_3.i.i.i.i48.i = load i32, ptr %right.sroa.0.026.i.i, align 4, !alias.scope !1455, !noalias !1456, !noundef !18
  %_4.i.i.i.i49.i = load i32, ptr %left.sroa.0.027.i.i, align 4, !alias.scope !1457, !noalias !1458, !noundef !18
  %_0.i.i50.i = icmp slt i32 %_3.i.i.i.i48.i, %_4.i.i.i.i49.i
  %is_l.i18.i.i = xor i1 %_0.i.i50.i, true
  %36 = call i32 @llvm.smin.i32(i32 %_3.i.i.i.i48.i, i32 %_4.i.i.i.i49.i)
  store i32 %36, ptr %dst.sroa.0.029.i.i, align 4, !alias.scope !1209, !noalias !1459
  %count.i.i.i = zext i1 %_0.i.i50.i to i64
  %_12.i.i.i = getelementptr inbounds nuw i32, ptr %right.sroa.0.026.i.i, i64 %count.i.i.i
  %count2.i.i.i = zext i1 %is_l.i18.i.i to i64
  %_14.i.i.i = getelementptr inbounds nuw i32, ptr %left.sroa.0.027.i.i, i64 %count2.i.i.i
  %_16.i.i.i = getelementptr inbounds nuw i8, ptr %dst.sroa.0.029.i.i, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !1461)
  call void @llvm.experimental.noalias.scope.decl(metadata !1464)
  call void @llvm.experimental.noalias.scope.decl(metadata !1466), !noalias !1469
  call void @llvm.experimental.noalias.scope.decl(metadata !1472), !noalias !1469
  call void @llvm.experimental.noalias.scope.decl(metadata !1474), !noalias !1469
  call void @llvm.experimental.noalias.scope.decl(metadata !1477), !noalias !1469
  %_3.i.i.i19.i.i = load i32, ptr %right_rev.sroa.0.024.i.i, align 4, !alias.scope !1479, !noalias !1480, !noundef !18
  %_4.i.i.i20.i.i = load i32, ptr %left_rev.sroa.0.025.i.i, align 4, !alias.scope !1481, !noalias !1482, !noundef !18
  %_0.i21.i.i = icmp slt i32 %_3.i.i.i19.i.i, %_4.i.i.i20.i.i
  %is_l.i.i.i = xor i1 %_0.i21.i.i, true
  %37 = call i32 @llvm.smax.i32(i32 %_3.i.i.i19.i.i, i32 %_4.i.i.i20.i.i)
  store i32 %37, ptr %dst_rev.sroa.0.023.i.i, align 4, !alias.scope !1209, !noalias !1483
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
  %41 = load i32, ptr %left.sroa.0.0.right.sroa.0.0.i.i, align 4, !alias.scope !1485, !noalias !1310
  store i32 %41, ptr %_16.i.i.i, align 4, !alias.scope !1209, !noalias !1486
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
  br i1 %or.cond.i.i, label %bb13.i.i, label %bb22, !prof !440

bb13.i.i:                                         ; preds = %bb9.i.i
; invoke core::slice::sort::shared::smallsort::panic_on_ord_violation
  invoke void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #18
          to label %.noexc.i unwind label %cleanup2.i, !noalias !1487

.noexc.i:                                         ; preds = %bb13.i.i
  unreachable

cleanup2.i:                                       ; preds = %bb13.i.i
  %42 = landingpad { ptr, i32 }
          cleanup
  %43 = shl nuw nsw i64 %v.sroa.16.0.lcssa, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.sroa.0.0.ph.lcssa129, ptr nonnull align 4 %scratch.0, i64 %43, i1 false), !alias.scope !1488, !noalias !1489
  resume { ptr, i32 } %42

bb24.i:                                           ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17hd28308059819002dE.exit.i, %bb24.preheader.i
  %iter1.sroa.0.165.i = phi i64 [ %iter1.sroa.0.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hd28308059819002dE.exit.i ], [ %iter1.sroa.0.163.i, %bb24.preheader.i ]
  %iter1.sroa.0.064.i = phi i64 [ %iter1.sroa.0.165.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hd28308059819002dE.exit.i ], [ %presorted_len.sroa.0.0.i, %bb24.preheader.i ]
  %_55.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %iter1.sroa.0.064.i
  %dst7.i = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %iter1.sroa.0.064.i
  %44 = load i32, ptr %_55.i, align 4, !alias.scope !1209, !noalias !1406
  store i32 %44, ptr %dst7.i, align 4, !alias.scope !1212, !noalias !1310
  %45 = getelementptr inbounds i8, ptr %dst7.i, i64 -4
  %_4.i.i.i.i55.i = load i32, ptr %45, align 4, !alias.scope !1407, !noalias !1414, !noundef !18
  %_0.i.i56.i = icmp slt i32 %44, %_4.i.i.i.i55.i
  br i1 %_0.i.i56.i, label %bb4.i.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hd28308059819002dE.exit.i

bb4.i.i:                                          ; preds = %bb24.i, %bb7.i.i
  %46 = phi i32 [ %_4.i.i.i2.i.i, %bb7.i.i ], [ %_4.i.i.i.i55.i, %bb24.i ]
  %gap_guard.sroa.5.0.i.i = phi ptr [ %sift.sroa.0.0.i.i, %bb7.i.i ], [ %dst7.i, %bb24.i ]
  %sift.sroa.0.0.i.i = phi ptr [ %47, %bb7.i.i ], [ %45, %bb24.i ]
  store i32 %46, ptr %gap_guard.sroa.5.0.i.i, align 4, !alias.scope !1212, !noalias !1310
  %_18.i.i = icmp eq ptr %sift.sroa.0.0.i.i, %scratch.0
  br i1 %_18.i.i, label %bb10.i.i, label %bb7.i.i

bb7.i.i:                                          ; preds = %bb4.i.i
  %47 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i, i64 -4
  %_4.i.i.i2.i.i = load i32, ptr %47, align 4, !alias.scope !1418, !noalias !1425, !noundef !18
  %_0.i3.i.i = icmp slt i32 %44, %_4.i.i.i2.i.i
  br i1 %_0.i3.i.i, label %bb4.i.i, label %bb10.i.i

bb10.i.i:                                         ; preds = %bb7.i.i, %bb4.i.i
  %sift.sroa.0.0.i.lcssa.i = phi ptr [ %sift.sroa.0.0.i.i, %bb7.i.i ], [ %scratch.0, %bb4.i.i ]
  store i32 %44, ptr %sift.sroa.0.0.i.lcssa.i, align 4, !alias.scope !1212, !noalias !1429
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hd28308059819002dE.exit.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17hd28308059819002dE.exit.i: ; preds = %bb10.i.i, %bb24.i
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
  %self.i = call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17he749b7d0002a4956E(ptr noundef nonnull readonly align 4 %v.sroa.0.0.ph140, ptr noundef readonly %b.i, ptr noundef readonly %c.i, i64 noundef %len_div_84.i)
  br label %bb10

bb3.i23:                                          ; preds = %bb7
  call void @llvm.experimental.noalias.scope.decl(metadata !1494)
  call void @llvm.experimental.noalias.scope.decl(metadata !1497)
  call void @llvm.experimental.noalias.scope.decl(metadata !1499), !noalias !1502
  call void @llvm.experimental.noalias.scope.decl(metadata !1505), !noalias !1502
  call void @llvm.experimental.noalias.scope.decl(metadata !1507), !noalias !1502
  call void @llvm.experimental.noalias.scope.decl(metadata !1510), !noalias !1502
  %_3.i.i.i.i = load i32, ptr %v.sroa.0.0.ph140, align 4, !alias.scope !1512, !noalias !1515, !noundef !18
  %_4.i.i.i.i = load i32, ptr %b.i, align 4, !alias.scope !1517, !noalias !1518, !noundef !18
  %_0.i.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %_4.i.i.i6.i = load i32, ptr %c.i, align 4, !alias.scope !1519, !noalias !1526, !noundef !18
  %_0.i7.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i6.i
  %49 = xor i1 %_0.i.i, %_0.i7.i
  %_0.i10.i = icmp slt i32 %_4.i.i.i.i, %_4.i.i.i6.i
  %_12.i.i24 = xor i1 %_0.i.i, %_0.i10.i
  %c.b.i.i = select i1 %_12.i.i24, ptr %c.i, ptr %b.i
  %_0.sroa.0.0.i.i = select i1 %49, ptr %v.sroa.0.0.ph140, ptr %c.b.i.i
  br label %bb10

bb6:                                              ; preds = %bb5
; call core::slice::sort::stable::drift::sort
  call fastcc void @_ZN4core5slice4sort6stable5drift4sort17hbb05b5fcd5573c20E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph140, i64 noundef %v.sroa.16.0132, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i1 noundef zeroext true, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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
  %value = load i32, ptr %src, align 4, !noundef !18
  store i32 %value, ptr %pivot_copy, align 4
  br i1 %.not, label %bb14, label %bb12

bb12:                                             ; preds = %bb10
  %_3.i.i.i = load i32, ptr %left_ancestor_pivot.sroa.0.0.ph137, align 4, !alias.scope !1530, !noalias !1537, !noundef !18
  %_0.i = icmp slt i32 %_3.i.i.i, %value
  br i1 %_0.i, label %bb14, label %bb17

bb14:                                             ; preds = %bb10, %bb12
  call void @llvm.experimental.noalias.scope.decl(metadata !1541)
  call void @llvm.experimental.noalias.scope.decl(metadata !1544)
  %_8.i25.not = icmp samesign ult i64 %scratch.1, %v.sroa.16.0132
  br i1 %_8.i25.not, label %bb31.i, label %bb33.i, !prof !440

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
  %_4.i.i.i.i30 = load i32, ptr %src, align 4, !alias.scope !1546, !noalias !1553, !noundef !18
  br label %bb6.i28

bb6.i28:                                          ; preds = %bb6.i28.preheader, %bb6.i28
  %state.sroa.43.187.i = phi ptr [ %59, %bb6.i28 ], [ %state.sroa.43.0.i, %bb6.i28.preheader ]
  %state.sroa.9.186.i = phi ptr [ %_9.i54.i, %bb6.i28 ], [ %state.sroa.9.0.i, %bb6.i28.preheader ]
  %state.sroa.27.185.i = phi i64 [ %60, %bb6.i28 ], [ %state.sroa.27.0.i, %bb6.i28.preheader ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1557)
  call void @llvm.experimental.noalias.scope.decl(metadata !1558)
  call void @llvm.experimental.noalias.scope.decl(metadata !1559)
  call void @llvm.experimental.noalias.scope.decl(metadata !1560)
  call void @llvm.experimental.noalias.scope.decl(metadata !1561)
  call void @llvm.experimental.noalias.scope.decl(metadata !1562)
  %_3.i.i.i.i29 = load i32, ptr %state.sroa.9.186.i, align 4, !alias.scope !1563, !noalias !1564, !noundef !18
  %_0.i.i31 = icmp slt i32 %_3.i.i.i.i29, %_4.i.i.i.i30
  %53 = getelementptr inbounds i8, ptr %state.sroa.43.187.i, i64 -4
  %dst_base.sroa.0.0.i.i = select i1 %_0.i.i31, ptr %scratch.0, ptr %53
  %dst.i.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i.i, i64 %state.sroa.27.185.i
  store i32 %_3.i.i.i.i29, ptr %dst.i.i, align 4, !alias.scope !1544, !noalias !1565
  %_8.i.i = zext i1 %_0.i.i31 to i64
  %54 = add i64 %state.sroa.27.185.i, %_8.i.i
  %_9.i.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i, i64 4
  %_3.i.i.i25.i = load i32, ptr %_9.i.i, align 4, !alias.scope !1568, !noalias !1575, !noundef !18
  %_0.i27.i = icmp slt i32 %_3.i.i.i25.i, %_4.i.i.i.i30
  %55 = getelementptr inbounds i8, ptr %state.sroa.43.187.i, i64 -8
  %dst_base.sroa.0.0.i29.i = select i1 %_0.i27.i, ptr %scratch.0, ptr %55
  %dst.i31.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29.i, i64 %54
  store i32 %_3.i.i.i25.i, ptr %dst.i31.i, align 4, !alias.scope !1544, !noalias !1579
  %_8.i33.i = zext i1 %_0.i27.i to i64
  %56 = add i64 %54, %_8.i33.i
  %_9.i34.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i, i64 8
  %_3.i.i.i35.i = load i32, ptr %_9.i34.i, align 4, !alias.scope !1582, !noalias !1589, !noundef !18
  %_0.i37.i = icmp slt i32 %_3.i.i.i35.i, %_4.i.i.i.i30
  %57 = getelementptr inbounds i8, ptr %state.sroa.43.187.i, i64 -12
  %dst_base.sroa.0.0.i39.i = select i1 %_0.i37.i, ptr %scratch.0, ptr %57
  %dst.i41.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39.i, i64 %56
  store i32 %_3.i.i.i35.i, ptr %dst.i41.i, align 4, !alias.scope !1544, !noalias !1593
  %_8.i43.i = zext i1 %_0.i37.i to i64
  %58 = add i64 %56, %_8.i43.i
  %_9.i44.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i, i64 12
  %_3.i.i.i45.i = load i32, ptr %_9.i44.i, align 4, !alias.scope !1596, !noalias !1603, !noundef !18
  %_0.i47.i = icmp slt i32 %_3.i.i.i45.i, %_4.i.i.i.i30
  %59 = getelementptr inbounds i8, ptr %state.sroa.43.187.i, i64 -16
  %dst_base.sroa.0.0.i49.i = select i1 %_0.i47.i, ptr %scratch.0, ptr %59
  %dst.i51.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49.i, i64 %58
  store i32 %_3.i.i.i45.i, ptr %dst.i51.i, align 4, !alias.scope !1544, !noalias !1607
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
  %_4.i.i.i56.i = load i32, ptr %src, align 4, !alias.scope !1610, !noalias !1617, !noundef !18
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
  call void @llvm.experimental.noalias.scope.decl(metadata !1621)
  call void @llvm.experimental.noalias.scope.decl(metadata !1622)
  call void @llvm.experimental.noalias.scope.decl(metadata !1623)
  call void @llvm.experimental.noalias.scope.decl(metadata !1624)
  call void @llvm.experimental.noalias.scope.decl(metadata !1625)
  call void @llvm.experimental.noalias.scope.decl(metadata !1626)
  %_3.i.i.i55.i = load i32, ptr %state.sroa.9.292.i, align 4, !alias.scope !1627, !noalias !1628, !noundef !18
  %_0.i57.i = icmp slt i32 %_3.i.i.i55.i, %_4.i.i.i56.i
  %61 = getelementptr inbounds i8, ptr %state.sroa.43.293.i, i64 -4
  %dst_base.sroa.0.0.i59.i = select i1 %_0.i57.i, ptr %scratch.0, ptr %61
  %dst.i61.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59.i, i64 %state.sroa.27.291.i
  store i32 %_3.i.i.i55.i, ptr %dst.i61.i, align 4, !alias.scope !1544, !noalias !1629
  %_8.i63.i = zext i1 %_0.i57.i to i64
  %62 = add i64 %state.sroa.27.291.i, %_8.i63.i
  %_9.i64.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.292.i, i64 4
  %_47.i = icmp ult ptr %_9.i64.i, %loop_end.i
  br i1 %_47.i, label %bb18.i, label %bb21.i

bb23.i:                                           ; preds = %bb21.i
  %63 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa.i, i64 -4
  %dst.i68.i = getelementptr inbounds nuw i32, ptr %63, i64 %state.sroa.27.2.lcssa.i
  %64 = load i32, ptr %state.sroa.9.2.lcssa.i, align 4, !alias.scope !1541, !noalias !1632
  store i32 %64, ptr %dst.i68.i, align 4, !alias.scope !1544, !noalias !1635
  %_9.i70.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.2.lcssa.i, i64 4
  br label %bb3.i26

bb22.i:                                           ; preds = %bb21.i
  %65 = shl i64 %state.sroa.27.2.lcssa.i, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.sroa.0.0.ph140, ptr nonnull align 4 %scratch.0, i64 %65, i1 false), !alias.scope !1636
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
  %wide.load271 = load <4 x i32>, ptr %70, align 4, !alias.scope !1544, !noalias !1541
  %reverse272 = shufflevector <4 x i32> %wide.load271, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %wide.load273 = load <4 x i32>, ptr %71, align 4, !alias.scope !1544, !noalias !1541
  %reverse274 = shufflevector <4 x i32> %wide.load273, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %72 = getelementptr i8, ptr %67, i64 16
  store <4 x i32> %reverse272, ptr %67, align 4, !alias.scope !1541, !noalias !1544
  store <4 x i32> %reverse274, ptr %72, align 4, !alias.scope !1541, !noalias !1544
  %index.next275 = add nuw i64 %index270, 8
  %73 = icmp eq i64 %index.next275, %n.vec268
  br i1 %73, label %middle.block276, label %vector.body269, !llvm.loop !1637

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
  %78 = load i32, ptr %77, align 4, !alias.scope !1544, !noalias !1541
  store i32 %78, ptr %75, align 4, !alias.scope !1541, !noalias !1544
  %exitcond.not.i = icmp eq i64 %74, %_63.i
  br i1 %exitcond.not.i, label %bb16, label %bb42.i, !llvm.loop !1638

bb16:                                             ; preds = %bb42.i, %middle.block276, %bb22.i
  %79 = icmp eq i64 %state.sroa.27.2.lcssa.i, 0
  br i1 %79, label %bb17, label %bb19

bb19:                                             ; preds = %bb16
  %_6.not.i = icmp ugt i64 %state.sroa.27.2.lcssa.i, %v.sroa.16.0132
  br i1 %_6.not.i, label %bb3.i33, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hc608c0d84b69e4dbE.exit", !prof !1092

bb3.i33:                                          ; preds = %bb19
; call core::panicking::panic_fmt
  call void @_ZN4core9panicking9panic_fmt17ha4414e4328fe24a0E(ptr noundef nonnull @alloc_d1084648e479974e70c9329824bf76f9, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_58d434a1e795f965ef82c8e9c5db822a) #18, !noalias !1639
  unreachable

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hc608c0d84b69e4dbE.exit": ; preds = %bb19
  %80 = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph140, i64 %state.sroa.27.2.lcssa.i
; call core::slice::sort::stable::quicksort::quicksort
  call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h63d22310ccbb417dE(ptr noalias noundef nonnull align 4 %80, i64 noundef %_63.i, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef %48, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) %pivot_copy, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_8 = icmp ult i64 %state.sroa.27.2.lcssa.i, 33
  br i1 %_8, label %bb3, label %bb5

bb17:                                             ; preds = %bb12, %bb16
  call void @llvm.experimental.noalias.scope.decl(metadata !1643)
  call void @llvm.experimental.noalias.scope.decl(metadata !1646)
  %_8.i34.not = icmp samesign ult i64 %scratch.1, %v.sroa.16.0132
  br i1 %_8.i34.not, label %bb31.i37, label %bb33.i38, !prof !440

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
  %_3.i.i.i.i.i82 = load i32, ptr %src, align 4, !alias.scope !1648, !noalias !1657, !noundef !18
  br label %bb6.i78

bb6.i78:                                          ; preds = %bb6.i78.preheader, %bb6.i78
  %state.sroa.43.187.i79 = phi ptr [ %88, %bb6.i78 ], [ %state.sroa.43.0.i44, %bb6.i78.preheader ]
  %state.sroa.9.186.i80 = phi ptr [ %_9.i54.i100, %bb6.i78 ], [ %state.sroa.9.0.i43, %bb6.i78.preheader ]
  %state.sroa.27.185.i81 = phi i64 [ %89, %bb6.i78 ], [ %state.sroa.27.0.i42, %bb6.i78.preheader ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1662)
  call void @llvm.experimental.noalias.scope.decl(metadata !1663)
  call void @llvm.experimental.noalias.scope.decl(metadata !1664)
  call void @llvm.experimental.noalias.scope.decl(metadata !1665)
  call void @llvm.experimental.noalias.scope.decl(metadata !1666)
  call void @llvm.experimental.noalias.scope.decl(metadata !1667)
  call void @llvm.experimental.noalias.scope.decl(metadata !1668)
  call void @llvm.experimental.noalias.scope.decl(metadata !1669)
  %_4.i.i.i.i.i83 = load i32, ptr %state.sroa.9.186.i80, align 4, !alias.scope !1670, !noalias !1671, !noundef !18
  %_0.i.i.i84 = icmp sge i32 %_3.i.i.i.i.i82, %_4.i.i.i.i.i83
  %82 = getelementptr inbounds i8, ptr %state.sroa.43.187.i79, i64 -4
  %dst_base.sroa.0.0.i.i85 = select i1 %_0.i.i.i84, ptr %scratch.0, ptr %82
  %dst.i.i86 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i.i85, i64 %state.sroa.27.185.i81
  store i32 %_4.i.i.i.i.i83, ptr %dst.i.i86, align 4, !alias.scope !1646, !noalias !1672
  %_8.i.i87 = zext i1 %_0.i.i.i84 to i64
  %83 = add i64 %state.sroa.27.185.i81, %_8.i.i87
  %_9.i.i88 = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i80, i64 4
  %_4.i.i.i.i26.i = load i32, ptr %_9.i.i88, align 4, !alias.scope !1675, !noalias !1684, !noundef !18
  %_0.i.i27.i = icmp sge i32 %_3.i.i.i.i.i82, %_4.i.i.i.i26.i
  %84 = getelementptr inbounds i8, ptr %state.sroa.43.187.i79, i64 -8
  %dst_base.sroa.0.0.i29.i89 = select i1 %_0.i.i27.i, ptr %scratch.0, ptr %84
  %dst.i31.i90 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29.i89, i64 %83
  store i32 %_4.i.i.i.i26.i, ptr %dst.i31.i90, align 4, !alias.scope !1646, !noalias !1689
  %_8.i33.i91 = zext i1 %_0.i.i27.i to i64
  %85 = add i64 %83, %_8.i33.i91
  %_9.i34.i92 = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i80, i64 8
  %_4.i.i.i.i36.i = load i32, ptr %_9.i34.i92, align 4, !alias.scope !1692, !noalias !1701, !noundef !18
  %_0.i.i37.i = icmp sge i32 %_3.i.i.i.i.i82, %_4.i.i.i.i36.i
  %86 = getelementptr inbounds i8, ptr %state.sroa.43.187.i79, i64 -12
  %dst_base.sroa.0.0.i39.i93 = select i1 %_0.i.i37.i, ptr %scratch.0, ptr %86
  %dst.i41.i94 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39.i93, i64 %85
  store i32 %_4.i.i.i.i36.i, ptr %dst.i41.i94, align 4, !alias.scope !1646, !noalias !1706
  %_8.i43.i95 = zext i1 %_0.i.i37.i to i64
  %87 = add i64 %85, %_8.i43.i95
  %_9.i44.i96 = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i80, i64 12
  %_4.i.i.i.i46.i = load i32, ptr %_9.i44.i96, align 4, !alias.scope !1709, !noalias !1718, !noundef !18
  %_0.i.i47.i = icmp sge i32 %_3.i.i.i.i.i82, %_4.i.i.i.i46.i
  %88 = getelementptr inbounds i8, ptr %state.sroa.43.187.i79, i64 -16
  %dst_base.sroa.0.0.i49.i97 = select i1 %_0.i.i47.i, ptr %scratch.0, ptr %88
  %dst.i51.i98 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49.i97, i64 %87
  store i32 %_4.i.i.i.i46.i, ptr %dst.i51.i98, align 4, !alias.scope !1646, !noalias !1723
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
  %_3.i.i.i.i55.i = load i32, ptr %src, align 4, !alias.scope !1726, !noalias !1735, !noundef !18
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
  call void @llvm.experimental.noalias.scope.decl(metadata !1740)
  call void @llvm.experimental.noalias.scope.decl(metadata !1741)
  call void @llvm.experimental.noalias.scope.decl(metadata !1742)
  call void @llvm.experimental.noalias.scope.decl(metadata !1743)
  call void @llvm.experimental.noalias.scope.decl(metadata !1744)
  call void @llvm.experimental.noalias.scope.decl(metadata !1745)
  call void @llvm.experimental.noalias.scope.decl(metadata !1746)
  call void @llvm.experimental.noalias.scope.decl(metadata !1747)
  %_4.i.i.i.i56.i = load i32, ptr %state.sroa.9.292.i71, align 4, !alias.scope !1748, !noalias !1749, !noundef !18
  %_0.i.i57.i = icmp sge i32 %_3.i.i.i.i55.i, %_4.i.i.i.i56.i
  %90 = getelementptr inbounds i8, ptr %state.sroa.43.293.i70, i64 -4
  %dst_base.sroa.0.0.i59.i73 = select i1 %_0.i.i57.i, ptr %scratch.0, ptr %90
  %dst.i61.i74 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59.i73, i64 %state.sroa.27.291.i72
  store i32 %_4.i.i.i.i56.i, ptr %dst.i61.i74, align 4, !alias.scope !1646, !noalias !1750
  %_8.i63.i75 = zext i1 %_0.i.i57.i to i64
  %91 = add i64 %state.sroa.27.291.i72, %_8.i63.i75
  %_9.i64.i76 = getelementptr inbounds nuw i8, ptr %state.sroa.9.292.i71, i64 4
  %_47.i77 = icmp ult ptr %_9.i64.i76, %loop_end.i52
  br i1 %_47.i77, label %bb18.i69, label %bb21.i54

bb23.i59:                                         ; preds = %bb21.i54
  %92 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa.i57, i64 -4
  %dst.i68.i60 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %state.sroa.27.2.lcssa.i55
  %93 = load i32, ptr %state.sroa.9.2.lcssa.i56, align 4, !alias.scope !1643, !noalias !1753
  store i32 %93, ptr %dst.i68.i60, align 4, !alias.scope !1646, !noalias !1756
  %94 = add i64 %state.sroa.27.2.lcssa.i55, 1
  %_9.i70.i61 = getelementptr inbounds nuw i8, ptr %state.sroa.9.2.lcssa.i56, i64 4
  br label %bb3.i41

bb22.i62:                                         ; preds = %bb21.i54
  %95 = shl i64 %state.sroa.27.2.lcssa.i55, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.sroa.0.0.ph140, ptr nonnull align 4 %scratch.0, i64 %95, i1 false), !alias.scope !1757
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
  %wide.load = load <4 x i32>, ptr %100, align 4, !alias.scope !1646, !noalias !1643
  %reverse = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %wide.load262 = load <4 x i32>, ptr %101, align 4, !alias.scope !1646, !noalias !1643
  %reverse263 = shufflevector <4 x i32> %wide.load262, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %102 = getelementptr i8, ptr %97, i64 16
  store <4 x i32> %reverse, ptr %97, align 4, !alias.scope !1643, !noalias !1646
  store <4 x i32> %reverse263, ptr %102, align 4, !alias.scope !1643, !noalias !1646
  %index.next = add nuw i64 %index, 8
  %103 = icmp eq i64 %index.next, %n.vec
  br i1 %103, label %middle.block, label %vector.body, !llvm.loop !1758

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %_63.i63, %n.vec
  br i1 %cmp.n, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17he05a84d9b5b1644cE.exit, label %bb42.i66.preheader

bb42.i66.preheader:                               ; preds = %bb42.lr.ph.i65, %middle.block
  %iter.sroa.0.098.i67.ph = phi i64 [ 0, %bb42.lr.ph.i65 ], [ %n.vec, %middle.block ]
  br label %bb42.i66

bb42.i66:                                         ; preds = %bb42.i66.preheader, %bb42.i66
  %iter.sroa.0.098.i67 = phi i64 [ %104, %bb42.i66 ], [ %iter.sroa.0.098.i67.ph, %bb42.i66.preheader ]
  %104 = add nuw i64 %iter.sroa.0.098.i67, 1
  %105 = getelementptr i32, ptr %96, i64 %iter.sroa.0.098.i67
  %106 = xor i64 %iter.sroa.0.098.i67, -1
  %107 = getelementptr i32, ptr %_86.i40, i64 %106
  %108 = load i32, ptr %107, align 4, !alias.scope !1646, !noalias !1643
  store i32 %108, ptr %105, align 4, !alias.scope !1643, !noalias !1646
  %exitcond.not.i68 = icmp eq i64 %104, %_63.i63
  br i1 %exitcond.not.i68, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17he05a84d9b5b1644cE.exit, label %bb42.i66, !llvm.loop !1759

_ZN4core5slice4sort6stable9quicksort16stable_partition17he05a84d9b5b1644cE.exit: ; preds = %bb42.i66, %middle.block
  %_47 = icmp ugt i64 %state.sroa.27.2.lcssa.i55, %v.sroa.16.0132
  br i1 %_47, label %bb27, label %bb28, !prof !1092

bb3.thread:                                       ; preds = %bb22.i62
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  br label %bb22

bb28:                                             ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17he05a84d9b5b1644cE.exit
  %_54 = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph140, i64 %state.sroa.27.2.lcssa.i55
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_8130 = icmp ult i64 %_63.i63, 33
  br i1 %_8130, label %bb3, label %bb5.lr.ph

bb27:                                             ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17he05a84d9b5b1644cE.exit
; call core::slice::index::slice_index_fail
  call void @_ZN4core5slice5index16slice_index_fail17h62807bcaa490c9c1E(i64 noundef %state.sroa.27.2.lcssa.i55, i64 noundef %v.sroa.16.0132, i64 noundef %v.sroa.16.0132, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_0766b232215672ee1bd2195fdb153938) #18
  unreachable

bb22:                                             ; preds = %bb3.thread, %bb9.i.i, %bb3, %bb6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef range(i8 -1, 2) i8 @cmpfunc(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %a, ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %b) unnamed_addr #3 {
start:
  %_3 = load i32, ptr %a, align 4, !noundef !18
  %_4 = load i32, ptr %b, align 4, !noundef !18
  %_0 = tail call i8 @llvm.scmp.i8.i32(i32 %_3, i32 %_4)
  ret i8 %_0
}

; Function Attrs: nonlazybind uwtable
define noundef i32 @f_gold(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, i32 noundef %N, i32 noundef %k) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %compare.i = alloca [0 x i8], align 1
  %is_less.i.i = alloca [8 x i8], align 8
  %_5 = sub i32 %N, %k
  %_0.sroa.0.0.i = tail call noundef i32 @llvm.smax.i32(i32 %_5, i32 %k)
  %_2410 = icmp sgt i32 %N, 0
  br i1 %_2410, label %bb7.preheader, label %bb8

bb7.preheader:                                    ; preds = %start
  %0 = zext nneg i32 %N to i64
  %1 = add nsw i32 %N, -1
  %2 = zext nneg i32 %1 to i64
  %.not.not = icmp samesign ugt i64 %arr.1, %2
  br i1 %.not.not, label %bb7.preheader32, label %panic3

bb7.preheader32:                                  ; preds = %bb7.preheader
  %xtraiter = and i64 %0, 7
  %3 = icmp ult i32 %N, 8
  br i1 %3, label %bb8.loopexit.unr-lcssa, label %bb7.preheader32.new

bb7.preheader32.new:                              ; preds = %bb7.preheader32
  %unroll_iter = and i64 %0, 2147483640
  %invariant.gep = getelementptr inbounds i8, ptr %arr.0, i64 4
  %invariant.gep45 = getelementptr inbounds i8, ptr %arr.0, i64 8
  %invariant.gep47 = getelementptr inbounds i8, ptr %arr.0, i64 12
  %invariant.gep49 = getelementptr inbounds i8, ptr %arr.0, i64 16
  %invariant.gep51 = getelementptr inbounds i8, ptr %arr.0, i64 20
  %invariant.gep53 = getelementptr inbounds i8, ptr %arr.0, i64 24
  %invariant.gep55 = getelementptr inbounds i8, ptr %arr.0, i64 28
  br label %bb7

bb8.loopexit.unr-lcssa:                           ; preds = %bb7, %bb7.preheader32
  %.lcssa33.ph = phi float [ poison, %bb7.preheader32 ], [ %18, %bb7 ]
  %indvars.iv.unr = phi i64 [ 0, %bb7.preheader32 ], [ %indvars.iv.next.7, %bb7 ]
  %S.sroa.0.012.unr = phi float [ 0.000000e+00, %bb7.preheader32 ], [ %18, %bb7 ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb8, label %bb7.epil

bb7.epil:                                         ; preds = %bb8.loopexit.unr-lcssa, %bb7.epil
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %bb7.epil ], [ %indvars.iv.unr, %bb8.loopexit.unr-lcssa ]
  %S.sroa.0.012.epil = phi float [ %5, %bb7.epil ], [ %S.sroa.0.012.unr, %bb8.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %bb7.epil ], [ 0, %bb8.loopexit.unr-lcssa ]
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %4 = getelementptr inbounds nuw float, ptr %arr.0, i64 %indvars.iv.epil
  %_10.epil = load float, ptr %4, align 4, !noundef !18
  %5 = fadd float %S.sroa.0.012.epil, %_10.epil
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %bb8, label %bb7.epil, !llvm.loop !1760

bb8:                                              ; preds = %bb8.loopexit.unr-lcssa, %bb7.epil, %start
  %S.sroa.0.0.lcssa = phi float [ 0.000000e+00, %start ], [ %.lcssa33.ph, %bb8.loopexit.unr-lcssa ], [ %5, %bb7.epil ]
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %compare.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !1762
  store ptr %compare.i, ptr %is_less.i.i, align 8, !noalias !1765
  %b.i.i = icmp samesign ult i64 %arr.1, 2
  br i1 %b.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17he39955fc0a7662c8E.exit", label %bb7.i.i, !prof !1769

bb7.i.i:                                          ; preds = %bb8
  %b1.i.i = icmp samesign ult i64 %arr.1, 21
  br i1 %b1.i.i, label %bb9.i.i, label %bb10.i.i, !prof !1769

bb10.i.i:                                         ; preds = %bb7.i.i
; call core::slice::sort::stable::driftsort_main
  call void @_ZN4core5slice4sort6stable14driftsort_main17hbb4268273d719db1E(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less.i.i)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17he39955fc0a7662c8E.exit"

bb9.i.i:                                          ; preds = %bb7.i.i
; call core::slice::sort::shared::smallsort::insertion_sort_shift_left
  call fastcc void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17ha80044342790034cE(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17he39955fc0a7662c8E.exit"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17he39955fc0a7662c8E.exit": ; preds = %bb8, %bb10.i.i, %bb9.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !1762
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %compare.i)
  %_3113 = icmp sgt i32 %_0.sroa.0.0.i, 0
  br i1 %_3113, label %bb12.preheader, label %bb13

bb12.preheader:                                   ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17he39955fc0a7662c8E.exit"
  %6 = zext nneg i32 %_0.sroa.0.0.i to i64
  %7 = add nsw i32 %_0.sroa.0.0.i, -1
  %8 = zext nneg i32 %7 to i64
  %.not.not26 = icmp samesign ugt i64 %arr.1, %8
  br i1 %.not.not26, label %bb12.preheader31, label %panic

bb12.preheader31:                                 ; preds = %bb12.preheader
  %xtraiter35 = and i64 %6, 7
  %9 = icmp ult i32 %_0.sroa.0.0.i, 8
  br i1 %9, label %bb13.loopexit.unr-lcssa, label %bb12.preheader31.new

bb12.preheader31.new:                             ; preds = %bb12.preheader31
  %unroll_iter39 = and i64 %6, 2147483640
  %invariant.gep57 = getelementptr inbounds i8, ptr %arr.0, i64 4
  %invariant.gep59 = getelementptr inbounds i8, ptr %arr.0, i64 8
  %invariant.gep61 = getelementptr inbounds i8, ptr %arr.0, i64 12
  %invariant.gep63 = getelementptr inbounds i8, ptr %arr.0, i64 16
  %invariant.gep65 = getelementptr inbounds i8, ptr %arr.0, i64 20
  %invariant.gep67 = getelementptr inbounds i8, ptr %arr.0, i64 24
  %invariant.gep69 = getelementptr inbounds i8, ptr %arr.0, i64 28
  br label %bb12

bb7:                                              ; preds = %bb7, %bb7.preheader32.new
  %indvars.iv = phi i64 [ 0, %bb7.preheader32.new ], [ %indvars.iv.next.7, %bb7 ]
  %S.sroa.0.012 = phi float [ 0.000000e+00, %bb7.preheader32.new ], [ %18, %bb7 ]
  %niter = phi i64 [ 0, %bb7.preheader32.new ], [ %niter.next.7, %bb7 ]
  %10 = getelementptr inbounds nuw float, ptr %arr.0, i64 %indvars.iv
  %_10 = load float, ptr %10, align 4, !noundef !18
  %11 = fadd float %S.sroa.0.012, %_10
  %gep = getelementptr inbounds float, ptr %invariant.gep, i64 %indvars.iv
  %_10.1 = load float, ptr %gep, align 4, !noundef !18
  %12 = fadd float %11, %_10.1
  %gep46 = getelementptr inbounds float, ptr %invariant.gep45, i64 %indvars.iv
  %_10.2 = load float, ptr %gep46, align 4, !noundef !18
  %13 = fadd float %12, %_10.2
  %gep48 = getelementptr inbounds float, ptr %invariant.gep47, i64 %indvars.iv
  %_10.3 = load float, ptr %gep48, align 4, !noundef !18
  %14 = fadd float %13, %_10.3
  %gep50 = getelementptr inbounds float, ptr %invariant.gep49, i64 %indvars.iv
  %_10.4 = load float, ptr %gep50, align 4, !noundef !18
  %15 = fadd float %14, %_10.4
  %gep52 = getelementptr inbounds float, ptr %invariant.gep51, i64 %indvars.iv
  %_10.5 = load float, ptr %gep52, align 4, !noundef !18
  %16 = fadd float %15, %_10.5
  %gep54 = getelementptr inbounds float, ptr %invariant.gep53, i64 %indvars.iv
  %_10.6 = load float, ptr %gep54, align 4, !noundef !18
  %17 = fadd float %16, %_10.6
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8
  %gep56 = getelementptr inbounds float, ptr %invariant.gep55, i64 %indvars.iv
  %_10.7 = load float, ptr %gep56, align 4, !noundef !18
  %18 = fadd float %17, %_10.7
  %niter.next.7 = add i64 %niter, 8
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %bb8.loopexit.unr-lcssa, label %bb7

bb13.loopexit.unr-lcssa:                          ; preds = %bb12, %bb12.preheader31
  %.lcssa.ph = phi float [ poison, %bb12.preheader31 ], [ %30, %bb12 ]
  %indvars.iv21.unr = phi i64 [ 0, %bb12.preheader31 ], [ %indvars.iv.next22.7, %bb12 ]
  %S1.sroa.0.015.unr = phi float [ 0.000000e+00, %bb12.preheader31 ], [ %30, %bb12 ]
  %lcmp.mod37.not = icmp eq i64 %xtraiter35, 0
  br i1 %lcmp.mod37.not, label %bb13, label %bb12.epil

bb12.epil:                                        ; preds = %bb13.loopexit.unr-lcssa, %bb12.epil
  %indvars.iv21.epil = phi i64 [ %indvars.iv.next22.epil, %bb12.epil ], [ %indvars.iv21.unr, %bb13.loopexit.unr-lcssa ]
  %S1.sroa.0.015.epil = phi float [ %20, %bb12.epil ], [ %S1.sroa.0.015.unr, %bb13.loopexit.unr-lcssa ]
  %epil.iter36 = phi i64 [ %epil.iter36.next, %bb12.epil ], [ 0, %bb13.loopexit.unr-lcssa ]
  %indvars.iv.next22.epil = add nuw nsw i64 %indvars.iv21.epil, 1
  %19 = getelementptr inbounds nuw float, ptr %arr.0, i64 %indvars.iv21.epil
  %_17.epil = load float, ptr %19, align 4, !noundef !18
  %20 = fadd float %S1.sroa.0.015.epil, %_17.epil
  %epil.iter36.next = add i64 %epil.iter36, 1
  %epil.iter36.cmp.not = icmp eq i64 %epil.iter36.next, %xtraiter35
  br i1 %epil.iter36.cmp.not, label %bb13, label %bb12.epil, !llvm.loop !1770

bb13:                                             ; preds = %bb13.loopexit.unr-lcssa, %bb12.epil, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17he39955fc0a7662c8E.exit"
  %S1.sroa.0.0.lcssa = phi float [ 0.000000e+00, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17he39955fc0a7662c8E.exit" ], [ %.lcssa.ph, %bb13.loopexit.unr-lcssa ], [ %20, %bb12.epil ]
  %_23 = fsub float %S.sroa.0.0.lcssa, %S1.sroa.0.0.lcssa
  %_21 = fsub float %S1.sroa.0.0.lcssa, %_23
  %21 = call i32 @llvm.fptosi.sat.i32.f32(float %_21)
  ret i32 %21

bb12:                                             ; preds = %bb12, %bb12.preheader31.new
  %indvars.iv21 = phi i64 [ 0, %bb12.preheader31.new ], [ %indvars.iv.next22.7, %bb12 ]
  %S1.sroa.0.015 = phi float [ 0.000000e+00, %bb12.preheader31.new ], [ %30, %bb12 ]
  %niter40 = phi i64 [ 0, %bb12.preheader31.new ], [ %niter40.next.7, %bb12 ]
  %22 = getelementptr inbounds nuw float, ptr %arr.0, i64 %indvars.iv21
  %_17 = load float, ptr %22, align 4, !noundef !18
  %23 = fadd float %S1.sroa.0.015, %_17
  %gep58 = getelementptr inbounds float, ptr %invariant.gep57, i64 %indvars.iv21
  %_17.1 = load float, ptr %gep58, align 4, !noundef !18
  %24 = fadd float %23, %_17.1
  %gep60 = getelementptr inbounds float, ptr %invariant.gep59, i64 %indvars.iv21
  %_17.2 = load float, ptr %gep60, align 4, !noundef !18
  %25 = fadd float %24, %_17.2
  %gep62 = getelementptr inbounds float, ptr %invariant.gep61, i64 %indvars.iv21
  %_17.3 = load float, ptr %gep62, align 4, !noundef !18
  %26 = fadd float %25, %_17.3
  %gep64 = getelementptr inbounds float, ptr %invariant.gep63, i64 %indvars.iv21
  %_17.4 = load float, ptr %gep64, align 4, !noundef !18
  %27 = fadd float %26, %_17.4
  %gep66 = getelementptr inbounds float, ptr %invariant.gep65, i64 %indvars.iv21
  %_17.5 = load float, ptr %gep66, align 4, !noundef !18
  %28 = fadd float %27, %_17.5
  %gep68 = getelementptr inbounds float, ptr %invariant.gep67, i64 %indvars.iv21
  %_17.6 = load float, ptr %gep68, align 4, !noundef !18
  %29 = fadd float %28, %_17.6
  %indvars.iv.next22.7 = add nuw nsw i64 %indvars.iv21, 8
  %gep70 = getelementptr inbounds float, ptr %invariant.gep69, i64 %indvars.iv21
  %_17.7 = load float, ptr %gep70, align 4, !noundef !18
  %30 = fadd float %29, %_17.7
  %niter40.next.7 = add i64 %niter40, 8
  %niter40.ncmp.7 = icmp eq i64 %niter40.next.7, %unroll_iter39
  br i1 %niter40.ncmp.7, label %bb13.loopexit.unr-lcssa, label %bb12

panic:                                            ; preds = %bb12.preheader
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %arr.1, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_117f6413013c78a66771675fa13b2731) #18
  unreachable

panic3:                                           ; preds = %bb7.preheader
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %arr.1, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_2cb5dadc0b04dc9bcc03e7e4580cdc48) #18
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1771)
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %compare.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1774)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !1771
  store ptr %compare.i, ptr %is_less.i.i, align 8, !noalias !1777
  %b.i.i = icmp samesign ult i64 %arr.1, 2
  br i1 %b.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17ha5757a969bdcd180E.exit", label %bb7.i.i, !prof !1769

bb7.i.i:                                          ; preds = %start
  %b1.i.i = icmp samesign ult i64 %arr.1, 21
  br i1 %b1.i.i, label %bb9.i.i, label %bb10.i.i, !prof !1769

bb10.i.i:                                         ; preds = %bb7.i.i
; call core::slice::sort::stable::driftsort_main
  call void @_ZN4core5slice4sort6stable14driftsort_main17hffe769f32f3a9570E(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less.i.i)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17ha5757a969bdcd180E.exit"

bb9.i.i:                                          ; preds = %bb7.i.i
  %v_end.idx.i.i.i = shl nuw nsw i64 %arr.1, 2
  %v_end.i.i.i = getelementptr inbounds nuw i8, ptr %arr.0, i64 %v_end.idx.i.i.i
  %tail.sroa.0.01.i.i.i = getelementptr inbounds nuw i8, ptr %arr.0, i64 4
  %0 = and i64 %arr.1, 1
  %lcmp.mod.not.not = icmp eq i64 %0, 0
  br i1 %lcmp.mod.not.not, label %bb5.i.i.i.prol, label %bb5.i.i.i.prol.loopexit

bb5.i.i.i.prol:                                   ; preds = %bb9.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1779)
  call void @llvm.experimental.noalias.scope.decl(metadata !1782)
  call void @llvm.experimental.noalias.scope.decl(metadata !1784)
  call void @llvm.experimental.noalias.scope.decl(metadata !1787)
  call void @llvm.experimental.noalias.scope.decl(metadata !1789)
  call void @llvm.experimental.noalias.scope.decl(metadata !1792)
  %_3.i.i.i.i.i.i.i.prol = load i32, ptr %tail.sroa.0.01.i.i.i, align 4, !alias.scope !1794, !noalias !1797, !noundef !18
  %_4.i.i.i.i.i.i.i.prol = load i32, ptr %arr.0, align 4, !alias.scope !1798, !noalias !1799, !noundef !18
  %_0.i.i.i.i.i.prol = icmp slt i32 %_3.i.i.i.i.i.i.i.prol, %_4.i.i.i.i.i.i.i.prol
  br i1 %_0.i.i.i.i.i.prol, label %bb4.i.i.i.i.prol, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hd28308059819002dE.exit.i.i.i.prol

bb4.i.i.i.i.prol:                                 ; preds = %bb5.i.i.i.prol, %bb7.i.i.i.i.prol
  %1 = phi i32 [ %_4.i.i.i2.i.i.i.i.prol, %bb7.i.i.i.i.prol ], [ %_4.i.i.i.i.i.i.i.prol, %bb5.i.i.i.prol ]
  %gap_guard.sroa.5.0.i.i.i.i.prol = phi ptr [ %sift.sroa.0.0.i.i.i.i.prol, %bb7.i.i.i.i.prol ], [ %tail.sroa.0.01.i.i.i, %bb5.i.i.i.prol ]
  %sift.sroa.0.0.i.i.i.i.prol = phi ptr [ %2, %bb7.i.i.i.i.prol ], [ %arr.0, %bb5.i.i.i.prol ]
  store i32 %1, ptr %gap_guard.sroa.5.0.i.i.i.i.prol, align 4, !alias.scope !1800, !noalias !1801
  %_18.i.i.i.i.prol = icmp eq ptr %sift.sroa.0.0.i.i.i.i.prol, %arr.0
  br i1 %_18.i.i.i.i.prol, label %bb10.i.i.i.i.prol, label %bb7.i.i.i.i.prol

bb7.i.i.i.i.prol:                                 ; preds = %bb4.i.i.i.i.prol
  %2 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.i.prol, i64 -4
  %_4.i.i.i2.i.i.i.i.prol = load i32, ptr %2, align 4, !alias.scope !1802, !noalias !1809, !noundef !18
  %_0.i3.i.i.i.i.prol = icmp slt i32 %_3.i.i.i.i.i.i.i.prol, %_4.i.i.i2.i.i.i.i.prol
  br i1 %_0.i3.i.i.i.i.prol, label %bb4.i.i.i.i.prol, label %bb10.i.i.i.i.prol

bb10.i.i.i.i.prol:                                ; preds = %bb7.i.i.i.i.prol, %bb4.i.i.i.i.prol
  %sift.sroa.0.0.i.lcssa.i.i.i.prol = phi ptr [ %sift.sroa.0.0.i.i.i.i.prol, %bb7.i.i.i.i.prol ], [ %arr.0, %bb4.i.i.i.i.prol ]
  store i32 %_3.i.i.i.i.i.i.i.prol, ptr %sift.sroa.0.0.i.lcssa.i.i.i.prol, align 4, !alias.scope !1800, !noalias !1813
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hd28308059819002dE.exit.i.i.i.prol

_ZN4core5slice4sort6shared9smallsort11insert_tail17hd28308059819002dE.exit.i.i.i.prol: ; preds = %bb10.i.i.i.i.prol, %bb5.i.i.i.prol
  %tail.sroa.0.0.i.i.i.prol = getelementptr inbounds nuw i8, ptr %arr.0, i64 8
  br label %bb5.i.i.i.prol.loopexit

bb5.i.i.i.prol.loopexit:                          ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17hd28308059819002dE.exit.i.i.i.prol, %bb9.i.i
  %tail.sroa.0.04.i.i.i.unr = phi ptr [ %tail.sroa.0.01.i.i.i, %bb9.i.i ], [ %tail.sroa.0.0.i.i.i.prol, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hd28308059819002dE.exit.i.i.i.prol ]
  %v.0.pn3.i.i.i.unr = phi ptr [ %arr.0, %bb9.i.i ], [ %tail.sroa.0.01.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hd28308059819002dE.exit.i.i.i.prol ]
  %3 = icmp eq i64 %arr.1, 2
  br i1 %3, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17ha5757a969bdcd180E.exit", label %bb5.i.i.i

bb5.i.i.i:                                        ; preds = %bb5.i.i.i.prol.loopexit, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hd28308059819002dE.exit.i.i.i.1
  %tail.sroa.0.04.i.i.i = phi ptr [ %tail.sroa.0.0.i.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hd28308059819002dE.exit.i.i.i.1 ], [ %tail.sroa.0.04.i.i.i.unr, %bb5.i.i.i.prol.loopexit ]
  %v.0.pn3.i.i.i = phi ptr [ %tail.sroa.0.0.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hd28308059819002dE.exit.i.i.i.1 ], [ %v.0.pn3.i.i.i.unr, %bb5.i.i.i.prol.loopexit ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1779)
  call void @llvm.experimental.noalias.scope.decl(metadata !1782)
  call void @llvm.experimental.noalias.scope.decl(metadata !1784)
  call void @llvm.experimental.noalias.scope.decl(metadata !1787)
  call void @llvm.experimental.noalias.scope.decl(metadata !1789)
  call void @llvm.experimental.noalias.scope.decl(metadata !1792)
  %_3.i.i.i.i.i.i.i = load i32, ptr %tail.sroa.0.04.i.i.i, align 4, !alias.scope !1794, !noalias !1797, !noundef !18
  %_4.i.i.i.i.i.i.i = load i32, ptr %v.0.pn3.i.i.i, align 4, !alias.scope !1798, !noalias !1799, !noundef !18
  %_0.i.i.i.i.i = icmp slt i32 %_3.i.i.i.i.i.i.i, %_4.i.i.i.i.i.i.i
  br i1 %_0.i.i.i.i.i, label %bb4.i.i.i.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hd28308059819002dE.exit.i.i.i

bb4.i.i.i.i:                                      ; preds = %bb5.i.i.i, %bb7.i.i.i.i
  %4 = phi i32 [ %_4.i.i.i2.i.i.i.i, %bb7.i.i.i.i ], [ %_4.i.i.i.i.i.i.i, %bb5.i.i.i ]
  %gap_guard.sroa.5.0.i.i.i.i = phi ptr [ %sift.sroa.0.0.i.i.i.i, %bb7.i.i.i.i ], [ %tail.sroa.0.04.i.i.i, %bb5.i.i.i ]
  %sift.sroa.0.0.i.i.i.i = phi ptr [ %5, %bb7.i.i.i.i ], [ %v.0.pn3.i.i.i, %bb5.i.i.i ]
  store i32 %4, ptr %gap_guard.sroa.5.0.i.i.i.i, align 4, !alias.scope !1800, !noalias !1801
  %_18.i.i.i.i = icmp eq ptr %sift.sroa.0.0.i.i.i.i, %arr.0
  br i1 %_18.i.i.i.i, label %bb10.i.i.i.i, label %bb7.i.i.i.i

bb7.i.i.i.i:                                      ; preds = %bb4.i.i.i.i
  %5 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.i, i64 -4
  %_4.i.i.i2.i.i.i.i = load i32, ptr %5, align 4, !alias.scope !1802, !noalias !1809, !noundef !18
  %_0.i3.i.i.i.i = icmp slt i32 %_3.i.i.i.i.i.i.i, %_4.i.i.i2.i.i.i.i
  br i1 %_0.i3.i.i.i.i, label %bb4.i.i.i.i, label %bb10.i.i.i.i

bb10.i.i.i.i:                                     ; preds = %bb7.i.i.i.i, %bb4.i.i.i.i
  %sift.sroa.0.0.i.lcssa.i.i.i = phi ptr [ %sift.sroa.0.0.i.i.i.i, %bb7.i.i.i.i ], [ %arr.0, %bb4.i.i.i.i ]
  store i32 %_3.i.i.i.i.i.i.i, ptr %sift.sroa.0.0.i.lcssa.i.i.i, align 4, !alias.scope !1800, !noalias !1813
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hd28308059819002dE.exit.i.i.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17hd28308059819002dE.exit.i.i.i: ; preds = %bb10.i.i.i.i, %bb5.i.i.i
  %tail.sroa.0.0.i.i.i = getelementptr inbounds nuw i8, ptr %tail.sroa.0.04.i.i.i, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !1818)
  call void @llvm.experimental.noalias.scope.decl(metadata !1820)
  call void @llvm.experimental.noalias.scope.decl(metadata !1822)
  call void @llvm.experimental.noalias.scope.decl(metadata !1824)
  call void @llvm.experimental.noalias.scope.decl(metadata !1826)
  call void @llvm.experimental.noalias.scope.decl(metadata !1828)
  %_3.i.i.i.i.i.i.i.1 = load i32, ptr %tail.sroa.0.0.i.i.i, align 4, !alias.scope !1830, !noalias !1831, !noundef !18
  %_4.i.i.i.i.i.i.i.1 = load i32, ptr %tail.sroa.0.04.i.i.i, align 4, !alias.scope !1832, !noalias !1833, !noundef !18
  %_0.i.i.i.i.i.1 = icmp slt i32 %_3.i.i.i.i.i.i.i.1, %_4.i.i.i.i.i.i.i.1
  br i1 %_0.i.i.i.i.i.1, label %bb4.i.i.i.i.1, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hd28308059819002dE.exit.i.i.i.1

bb4.i.i.i.i.1:                                    ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17hd28308059819002dE.exit.i.i.i, %bb7.i.i.i.i.1
  %6 = phi i32 [ %_4.i.i.i2.i.i.i.i.1, %bb7.i.i.i.i.1 ], [ %_4.i.i.i.i.i.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hd28308059819002dE.exit.i.i.i ]
  %gap_guard.sroa.5.0.i.i.i.i.1 = phi ptr [ %sift.sroa.0.0.i.i.i.i.1, %bb7.i.i.i.i.1 ], [ %tail.sroa.0.0.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hd28308059819002dE.exit.i.i.i ]
  %sift.sroa.0.0.i.i.i.i.1 = phi ptr [ %7, %bb7.i.i.i.i.1 ], [ %tail.sroa.0.04.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hd28308059819002dE.exit.i.i.i ]
  store i32 %6, ptr %gap_guard.sroa.5.0.i.i.i.i.1, align 4, !alias.scope !1800, !noalias !1801
  %_18.i.i.i.i.1 = icmp eq ptr %sift.sroa.0.0.i.i.i.i.1, %arr.0
  br i1 %_18.i.i.i.i.1, label %bb10.i.i.i.i.1, label %bb7.i.i.i.i.1

bb7.i.i.i.i.1:                                    ; preds = %bb4.i.i.i.i.1
  %7 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.i.1, i64 -4
  %_4.i.i.i2.i.i.i.i.1 = load i32, ptr %7, align 4, !alias.scope !1802, !noalias !1809, !noundef !18
  %_0.i3.i.i.i.i.1 = icmp slt i32 %_3.i.i.i.i.i.i.i.1, %_4.i.i.i2.i.i.i.i.1
  br i1 %_0.i3.i.i.i.i.1, label %bb4.i.i.i.i.1, label %bb10.i.i.i.i.1

bb10.i.i.i.i.1:                                   ; preds = %bb7.i.i.i.i.1, %bb4.i.i.i.i.1
  %sift.sroa.0.0.i.lcssa.i.i.i.1 = phi ptr [ %sift.sroa.0.0.i.i.i.i.1, %bb7.i.i.i.i.1 ], [ %arr.0, %bb4.i.i.i.i.1 ]
  store i32 %_3.i.i.i.i.i.i.i.1, ptr %sift.sroa.0.0.i.lcssa.i.i.i.1, align 4, !alias.scope !1800, !noalias !1813
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hd28308059819002dE.exit.i.i.i.1

_ZN4core5slice4sort6shared9smallsort11insert_tail17hd28308059819002dE.exit.i.i.i.1: ; preds = %bb10.i.i.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hd28308059819002dE.exit.i.i.i
  %tail.sroa.0.0.i.i.i.1 = getelementptr inbounds nuw i8, ptr %tail.sroa.0.04.i.i.i, i64 8
  %_11.not.i.i.i.1 = icmp eq ptr %tail.sroa.0.0.i.i.i.1, %v_end.i.i.i
  br i1 %_11.not.i.i.i.1, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17ha5757a969bdcd180E.exit", label %bb5.i.i.i

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17ha5757a969bdcd180E.exit": ; preds = %bb5.i.i.i.prol.loopexit, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hd28308059819002dE.exit.i.i.i.1, %start, %bb10.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !1771
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %compare.i)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

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
declare void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #5

; __rustc::__rust_alloc
; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef) unnamed_addr #13

; alloc::raw_vec::handle_error
; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #14

; __rustc::__rust_dealloc
; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr allocptr noundef, i64 noundef, i64 noundef) unnamed_addr #15

; core::option::unwrap_failed
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.scmp.i8.i32(i32, i32) #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fptosi.sat.i32.f32(float) #12

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
attributes #5 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
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
!3 = !{!4}
!4 = distinct !{!4, !5, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E: %a"}
!5 = distinct !{!5, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E"}
!6 = !{!7}
!7 = distinct !{!7, !5, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E: %b"}
!8 = !{!9}
!9 = distinct !{!9, !10, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E: %a"}
!10 = distinct !{!10, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E"}
!11 = !{!12}
!12 = distinct !{!12, !13, !"_ZN4core5slice4sort6shared5pivot7median317h59bc2de3bef4ba9dE: %c"}
!13 = distinct !{!13, !"_ZN4core5slice4sort6shared5pivot7median317h59bc2de3bef4ba9dE"}
!14 = !{!15}
!15 = distinct !{!15, !10, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E: %b"}
!16 = !{!15, !7}
!17 = !{!9, !4, !12}
!18 = !{}
!19 = !{!9, !4}
!20 = !{!15, !7, !12}
!21 = !{!"branch_weights", i32 1, i32 4001}
!22 = !{!9, !15, !4, !7, !12}
!23 = !{!24}
!24 = distinct !{!24, !25, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E: %b"}
!25 = distinct !{!25, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E"}
!26 = !{!27}
!27 = distinct !{!27, !28, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E: %b"}
!28 = distinct !{!28, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E"}
!29 = !{!27, !24}
!30 = !{!31, !32}
!31 = distinct !{!31, !28, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E: %a"}
!32 = distinct !{!32, !25, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E: %a"}
!33 = !{!31, !27, !32, !24}
!34 = !{!35, !37, !38, !40}
!35 = distinct !{!35, !36, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E: %a"}
!36 = distinct !{!36, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E"}
!37 = distinct !{!37, !36, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E: %b"}
!38 = distinct !{!38, !39, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E: %a"}
!39 = distinct !{!39, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E"}
!40 = distinct !{!40, !39, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E: %b"}
!41 = !{!42}
!42 = distinct !{!42, !43, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE: %a"}
!43 = distinct !{!43, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE"}
!44 = !{!45}
!45 = distinct !{!45, !43, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE: %b"}
!46 = !{!47}
!47 = distinct !{!47, !48, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E: argument 0"}
!48 = distinct !{!48, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E"}
!49 = !{!50}
!50 = distinct !{!50, !51, !"_ZN4core5slice4sort6shared5pivot7median317hd5e87c6c1a0cc414E: %c"}
!51 = distinct !{!51, !"_ZN4core5slice4sort6shared5pivot7median317hd5e87c6c1a0cc414E"}
!52 = !{!53}
!53 = distinct !{!53, !48, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E: argument 1"}
!54 = !{!55}
!55 = distinct !{!55, !56, !"cmpfunc: %a"}
!56 = distinct !{!56, !"cmpfunc"}
!57 = !{!58}
!58 = distinct !{!58, !56, !"cmpfunc: %b"}
!59 = !{!55, !47, !42}
!60 = !{!58, !53, !45, !50}
!61 = !{!58, !53, !45}
!62 = !{!55, !47, !42, !50}
!63 = !{!64, !66, !68}
!64 = distinct !{!64, !65, !"cmpfunc: %b"}
!65 = distinct !{!65, !"cmpfunc"}
!66 = distinct !{!66, !67, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E: argument 1"}
!67 = distinct !{!67, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E"}
!68 = distinct !{!68, !69, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE: %b"}
!69 = distinct !{!69, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE"}
!70 = !{!71, !72, !73}
!71 = distinct !{!71, !65, !"cmpfunc: %a"}
!72 = distinct !{!72, !67, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E: argument 0"}
!73 = distinct !{!73, !69, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE: %a"}
!74 = !{!75}
!75 = distinct !{!75, !76, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E: %a"}
!76 = distinct !{!76, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E"}
!77 = !{!78}
!78 = distinct !{!78, !76, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E: %b"}
!79 = !{!80}
!80 = distinct !{!80, !81, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E: %a"}
!81 = distinct !{!81, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E"}
!82 = !{!83}
!83 = distinct !{!83, !81, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E: %b"}
!84 = !{!83, !78}
!85 = !{!80, !75}
!86 = !{!80, !83, !75, !78}
!87 = !{!88}
!88 = distinct !{!88, !89, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E: %a"}
!89 = distinct !{!89, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E"}
!90 = !{!91}
!91 = distinct !{!91, !89, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E: %b"}
!92 = !{!93}
!93 = distinct !{!93, !94, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E: %a"}
!94 = distinct !{!94, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E"}
!95 = !{!96}
!96 = distinct !{!96, !94, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E: %b"}
!97 = !{!96, !91}
!98 = !{!93, !88}
!99 = !{!93, !96, !88, !91}
!100 = !{!101}
!101 = distinct !{!101, !102, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E: %a"}
!102 = distinct !{!102, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E"}
!103 = !{!104}
!104 = distinct !{!104, !102, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E: %b"}
!105 = !{!106}
!106 = distinct !{!106, !107, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E: %a"}
!107 = distinct !{!107, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E"}
!108 = !{!109}
!109 = distinct !{!109, !107, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E: %b"}
!110 = !{!109, !104}
!111 = !{!106, !101}
!112 = !{!106, !109, !101, !104}
!113 = !{!114}
!114 = distinct !{!114, !115, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E: %a"}
!115 = distinct !{!115, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E"}
!116 = !{!117}
!117 = distinct !{!117, !115, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E: %b"}
!118 = !{!119}
!119 = distinct !{!119, !120, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E: %a"}
!120 = distinct !{!120, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E"}
!121 = !{!122}
!122 = distinct !{!122, !120, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E: %b"}
!123 = !{!122, !117}
!124 = !{!119, !114}
!125 = !{!119, !122, !114, !117}
!126 = !{!127}
!127 = distinct !{!127, !128, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E: %a"}
!128 = distinct !{!128, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E"}
!129 = !{!130}
!130 = distinct !{!130, !128, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E: %b"}
!131 = !{!132}
!132 = distinct !{!132, !133, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E: %a"}
!133 = distinct !{!133, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E"}
!134 = !{!135}
!135 = distinct !{!135, !133, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E: %b"}
!136 = !{!135, !130}
!137 = !{!132, !127}
!138 = !{!132, !135, !127, !130}
!139 = !{!140}
!140 = distinct !{!140, !141, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE: %a"}
!141 = distinct !{!141, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE"}
!142 = !{!143}
!143 = distinct !{!143, !141, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE: %b"}
!144 = !{!145}
!145 = distinct !{!145, !146, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E: argument 0"}
!146 = distinct !{!146, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E"}
!147 = !{!148}
!148 = distinct !{!148, !146, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E: argument 1"}
!149 = !{!150}
!150 = distinct !{!150, !151, !"cmpfunc: %a"}
!151 = distinct !{!151, !"cmpfunc"}
!152 = !{!153}
!153 = distinct !{!153, !151, !"cmpfunc: %b"}
!154 = !{!150, !145, !140}
!155 = !{!153, !148, !143}
!156 = !{!157}
!157 = distinct !{!157, !158, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE: %a"}
!158 = distinct !{!158, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE"}
!159 = !{!160}
!160 = distinct !{!160, !158, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE: %b"}
!161 = !{!162}
!162 = distinct !{!162, !163, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E: argument 0"}
!163 = distinct !{!163, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E"}
!164 = !{!165}
!165 = distinct !{!165, !163, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E: argument 1"}
!166 = !{!167}
!167 = distinct !{!167, !168, !"cmpfunc: %a"}
!168 = distinct !{!168, !"cmpfunc"}
!169 = !{!170}
!170 = distinct !{!170, !168, !"cmpfunc: %b"}
!171 = !{!167, !162, !157}
!172 = !{!170, !165, !160}
!173 = !{!174}
!174 = distinct !{!174, !175, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE: %a"}
!175 = distinct !{!175, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE"}
!176 = !{!177}
!177 = distinct !{!177, !175, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE: %b"}
!178 = !{!179}
!179 = distinct !{!179, !180, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E: argument 0"}
!180 = distinct !{!180, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E"}
!181 = !{!182}
!182 = distinct !{!182, !180, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E: argument 1"}
!183 = !{!184}
!184 = distinct !{!184, !185, !"cmpfunc: %a"}
!185 = distinct !{!185, !"cmpfunc"}
!186 = !{!187}
!187 = distinct !{!187, !185, !"cmpfunc: %b"}
!188 = !{!184, !179, !174}
!189 = !{!187, !182, !177}
!190 = !{!191}
!191 = distinct !{!191, !192, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE: %a"}
!192 = distinct !{!192, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE"}
!193 = !{!194}
!194 = distinct !{!194, !192, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE: %b"}
!195 = !{!196}
!196 = distinct !{!196, !197, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E: argument 0"}
!197 = distinct !{!197, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E"}
!198 = !{!199}
!199 = distinct !{!199, !197, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E: argument 1"}
!200 = !{!201}
!201 = distinct !{!201, !202, !"cmpfunc: %a"}
!202 = distinct !{!202, !"cmpfunc"}
!203 = !{!204}
!204 = distinct !{!204, !202, !"cmpfunc: %b"}
!205 = !{!201, !196, !191}
!206 = !{!204, !199, !194}
!207 = !{!208}
!208 = distinct !{!208, !209, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE: %a"}
!209 = distinct !{!209, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE"}
!210 = !{!211}
!211 = distinct !{!211, !209, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE: %b"}
!212 = !{!213}
!213 = distinct !{!213, !214, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E: argument 0"}
!214 = distinct !{!214, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E"}
!215 = !{!216}
!216 = distinct !{!216, !214, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E: argument 1"}
!217 = !{!218}
!218 = distinct !{!218, !219, !"cmpfunc: %a"}
!219 = distinct !{!219, !"cmpfunc"}
!220 = !{!221}
!221 = distinct !{!221, !219, !"cmpfunc: %b"}
!222 = !{!218, !213, !208}
!223 = !{!221, !216, !211}
!224 = !{!225}
!225 = distinct !{!225, !226, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE: %a"}
!226 = distinct !{!226, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE"}
!227 = !{!228}
!228 = distinct !{!228, !226, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE: %b"}
!229 = !{!230}
!230 = distinct !{!230, !231, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E: argument 0"}
!231 = distinct !{!231, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E"}
!232 = !{!233}
!233 = distinct !{!233, !231, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E: argument 1"}
!234 = !{!235}
!235 = distinct !{!235, !236, !"cmpfunc: %a"}
!236 = distinct !{!236, !"cmpfunc"}
!237 = !{!238}
!238 = distinct !{!238, !236, !"cmpfunc: %b"}
!239 = !{!235, !230, !225}
!240 = !{!238, !233, !228}
!241 = !{!242}
!242 = distinct !{!242, !243, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE: %a"}
!243 = distinct !{!243, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE"}
!244 = !{!245}
!245 = distinct !{!245, !243, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE: %b"}
!246 = !{!247}
!247 = distinct !{!247, !248, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E: argument 0"}
!248 = distinct !{!248, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E"}
!249 = !{!250}
!250 = distinct !{!250, !248, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E: argument 1"}
!251 = !{!252}
!252 = distinct !{!252, !253, !"cmpfunc: %a"}
!253 = distinct !{!253, !"cmpfunc"}
!254 = !{!255}
!255 = distinct !{!255, !253, !"cmpfunc: %b"}
!256 = !{!252, !247, !242}
!257 = !{!255, !250, !245}
!258 = !{!259}
!259 = distinct !{!259, !260, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE: %a"}
!260 = distinct !{!260, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE"}
!261 = !{!262}
!262 = distinct !{!262, !260, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE: %b"}
!263 = !{!264}
!264 = distinct !{!264, !265, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E: argument 0"}
!265 = distinct !{!265, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E"}
!266 = !{!267}
!267 = distinct !{!267, !265, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E: argument 1"}
!268 = !{!269}
!269 = distinct !{!269, !270, !"cmpfunc: %a"}
!270 = distinct !{!270, !"cmpfunc"}
!271 = !{!272}
!272 = distinct !{!272, !270, !"cmpfunc: %b"}
!273 = !{!269, !264, !259}
!274 = !{!272, !267, !262}
!275 = !{!276}
!276 = distinct !{!276, !277, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE: %a"}
!277 = distinct !{!277, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE"}
!278 = !{!279}
!279 = distinct !{!279, !277, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE: %b"}
!280 = !{!281}
!281 = distinct !{!281, !282, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E: argument 0"}
!282 = distinct !{!282, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E"}
!283 = !{!284}
!284 = distinct !{!284, !282, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E: argument 1"}
!285 = !{!286}
!286 = distinct !{!286, !287, !"cmpfunc: %a"}
!287 = distinct !{!287, !"cmpfunc"}
!288 = !{!289}
!289 = distinct !{!289, !287, !"cmpfunc: %b"}
!290 = !{!286, !281, !276}
!291 = !{!289, !284, !279}
!292 = !{!293}
!293 = distinct !{!293, !294, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE: %a"}
!294 = distinct !{!294, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE"}
!295 = !{!296}
!296 = distinct !{!296, !294, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE: %b"}
!297 = !{!298}
!298 = distinct !{!298, !299, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E: argument 0"}
!299 = distinct !{!299, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E"}
!300 = !{!301}
!301 = distinct !{!301, !299, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E: argument 1"}
!302 = !{!303}
!303 = distinct !{!303, !304, !"cmpfunc: %a"}
!304 = distinct !{!304, !"cmpfunc"}
!305 = !{!306}
!306 = distinct !{!306, !304, !"cmpfunc: %b"}
!307 = !{!303, !298, !293}
!308 = !{!306, !301, !296}
!309 = !{!310}
!310 = distinct !{!310, !311, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h032af468f6d96244E: %v.0"}
!311 = distinct !{!311, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h032af468f6d96244E"}
!312 = !{!313, !315, !317, !310}
!313 = distinct !{!313, !314, !"cmpfunc: %b"}
!314 = distinct !{!314, !"cmpfunc"}
!315 = distinct !{!315, !316, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E: argument 1"}
!316 = distinct !{!316, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E"}
!317 = distinct !{!317, !318, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE: %b"}
!318 = distinct !{!318, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE"}
!319 = !{!320, !321, !322, !323}
!320 = distinct !{!320, !314, !"cmpfunc: %a"}
!321 = distinct !{!321, !316, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E: argument 0"}
!322 = distinct !{!322, !318, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE: %a"}
!323 = distinct !{!323, !324, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hc545bf48bbb3958cE: %_0"}
!324 = distinct !{!324, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hc545bf48bbb3958cE"}
!325 = !{!323, !326, !310}
!326 = distinct !{!326, !324, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hc545bf48bbb3958cE: %is_less"}
!327 = !{!328, !330, !332, !310}
!328 = distinct !{!328, !329, !"cmpfunc: %b"}
!329 = distinct !{!329, !"cmpfunc"}
!330 = distinct !{!330, !331, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E: argument 1"}
!331 = distinct !{!331, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E"}
!332 = distinct !{!332, !333, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE: %b"}
!333 = distinct !{!333, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE"}
!334 = !{!335, !336, !337, !338}
!335 = distinct !{!335, !329, !"cmpfunc: %a"}
!336 = distinct !{!336, !331, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E: argument 0"}
!337 = distinct !{!337, !333, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE: %a"}
!338 = distinct !{!338, !339, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h97f06eae836dcde7E: %_0"}
!339 = distinct !{!339, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h97f06eae836dcde7E"}
!340 = !{!338, !341, !310}
!341 = distinct !{!341, !339, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h97f06eae836dcde7E: %is_less"}
!342 = !{!343}
!343 = distinct !{!343, !318, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE: %a:It1"}
!344 = !{!345}
!345 = distinct !{!345, !318, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE: %b:It1"}
!346 = !{!347}
!347 = distinct !{!347, !316, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E: argument 0:It1"}
!348 = !{!323}
!349 = !{!350}
!350 = distinct !{!350, !316, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E: argument 1:It1"}
!351 = !{!352}
!352 = distinct !{!352, !314, !"cmpfunc: %a:It1"}
!353 = !{!354}
!354 = distinct !{!354, !314, !"cmpfunc: %b:It1"}
!355 = !{!352, !347, !343, !310}
!356 = !{!354, !350, !345, !323}
!357 = !{!354, !350, !345, !310}
!358 = !{!352, !347, !343, !323}
!359 = !{!360}
!360 = distinct !{!360, !333, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE: %a:It1"}
!361 = !{!362}
!362 = distinct !{!362, !333, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE: %b:It1"}
!363 = !{!364}
!364 = distinct !{!364, !331, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E: argument 0:It1"}
!365 = !{!338}
!366 = !{!367}
!367 = distinct !{!367, !331, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E: argument 1:It1"}
!368 = !{!369}
!369 = distinct !{!369, !329, !"cmpfunc: %a:It1"}
!370 = !{!371}
!371 = distinct !{!371, !329, !"cmpfunc: %b:It1"}
!372 = !{!369, !364, !360, !310}
!373 = !{!371, !367, !362, !338}
!374 = !{!371, !367, !362, !310}
!375 = !{!369, !364, !360, !338}
!376 = !{!377}
!377 = distinct !{!377, !318, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE: %a:It2"}
!378 = !{!379}
!379 = distinct !{!379, !318, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE: %b:It2"}
!380 = !{!381}
!381 = distinct !{!381, !316, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E: argument 0:It2"}
!382 = !{!383}
!383 = distinct !{!383, !316, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E: argument 1:It2"}
!384 = !{!385}
!385 = distinct !{!385, !314, !"cmpfunc: %a:It2"}
!386 = !{!387}
!387 = distinct !{!387, !314, !"cmpfunc: %b:It2"}
!388 = !{!385, !381, !377, !310}
!389 = !{!387, !383, !379, !323}
!390 = !{!387, !383, !379, !310}
!391 = !{!385, !381, !377, !323}
!392 = !{!393}
!393 = distinct !{!393, !333, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE: %a:It2"}
!394 = !{!395}
!395 = distinct !{!395, !333, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE: %b:It2"}
!396 = !{!397}
!397 = distinct !{!397, !331, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E: argument 0:It2"}
!398 = !{!399}
!399 = distinct !{!399, !331, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E: argument 1:It2"}
!400 = !{!401}
!401 = distinct !{!401, !329, !"cmpfunc: %a:It2"}
!402 = !{!403}
!403 = distinct !{!403, !329, !"cmpfunc: %b:It2"}
!404 = !{!401, !397, !393, !310}
!405 = !{!403, !399, !395, !338}
!406 = !{!403, !399, !395, !310}
!407 = !{!401, !397, !393, !338}
!408 = !{!409}
!409 = distinct !{!409, !318, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE: %a:It3"}
!410 = !{!411}
!411 = distinct !{!411, !318, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE: %b:It3"}
!412 = !{!413}
!413 = distinct !{!413, !316, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E: argument 0:It3"}
!414 = !{!415}
!415 = distinct !{!415, !316, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E: argument 1:It3"}
!416 = !{!417}
!417 = distinct !{!417, !314, !"cmpfunc: %a:It3"}
!418 = !{!419}
!419 = distinct !{!419, !314, !"cmpfunc: %b:It3"}
!420 = !{!417, !413, !409, !310}
!421 = !{!419, !415, !411, !323}
!422 = !{!419, !415, !411, !310}
!423 = !{!417, !413, !409, !323}
!424 = !{!425}
!425 = distinct !{!425, !333, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE: %a:It3"}
!426 = !{!427}
!427 = distinct !{!427, !333, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE: %b:It3"}
!428 = !{!429}
!429 = distinct !{!429, !331, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E: argument 0:It3"}
!430 = !{!431}
!431 = distinct !{!431, !331, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E: argument 1:It3"}
!432 = !{!433}
!433 = distinct !{!433, !329, !"cmpfunc: %a:It3"}
!434 = !{!435}
!435 = distinct !{!435, !329, !"cmpfunc: %b:It3"}
!436 = !{!433, !429, !425, !310}
!437 = !{!435, !431, !427, !338}
!438 = !{!435, !431, !427, !310}
!439 = !{!433, !429, !425, !338}
!440 = !{!"branch_weights", i32 4001, i32 4000000}
!441 = !{!442}
!442 = distinct !{!442, !443, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h9651503ae4aa7058E: %v.0"}
!443 = distinct !{!443, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h9651503ae4aa7058E"}
!444 = !{!445}
!445 = distinct !{!445, !446, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E: %a"}
!446 = distinct !{!446, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E"}
!447 = !{!448}
!448 = distinct !{!448, !446, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E: %b"}
!449 = !{!450}
!450 = distinct !{!450, !451, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E: %a"}
!451 = distinct !{!451, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E"}
!452 = !{!453}
!453 = distinct !{!453, !454, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h5756d761f9dd811aE: %_0"}
!454 = distinct !{!454, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h5756d761f9dd811aE"}
!455 = !{!456}
!456 = distinct !{!456, !451, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E: %b"}
!457 = !{!456, !448, !442}
!458 = !{!450, !445, !453}
!459 = !{!450, !445, !442}
!460 = !{!456, !448, !453}
!461 = !{!450, !456, !445, !448, !453, !442}
!462 = !{!453, !463}
!463 = distinct !{!463, !454, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h5756d761f9dd811aE: %is_less"}
!464 = !{!453, !463, !442}
!465 = !{!466}
!466 = distinct !{!466, !467, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E: %a"}
!467 = distinct !{!467, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E"}
!468 = !{!469}
!469 = distinct !{!469, !467, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E: %b"}
!470 = !{!471}
!471 = distinct !{!471, !472, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E: %a"}
!472 = distinct !{!472, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E"}
!473 = !{!474}
!474 = distinct !{!474, !475, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h8a3c32a23d9036a8E: %_0"}
!475 = distinct !{!475, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h8a3c32a23d9036a8E"}
!476 = !{!477}
!477 = distinct !{!477, !472, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E: %b"}
!478 = !{!477, !469, !442}
!479 = !{!471, !466, !474}
!480 = !{!471, !466, !442}
!481 = !{!477, !469, !474}
!482 = !{!471, !477, !466, !469, !474, !442}
!483 = !{!474, !484}
!484 = distinct !{!484, !475, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h8a3c32a23d9036a8E: %is_less"}
!485 = !{!474, !484, !442}
!486 = !{!487}
!487 = distinct !{!487, !446, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E: %a:It1"}
!488 = !{!489}
!489 = distinct !{!489, !446, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E: %b:It1"}
!490 = !{!491}
!491 = distinct !{!491, !451, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E: %a:It1"}
!492 = !{!493}
!493 = distinct !{!493, !451, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E: %b:It1"}
!494 = !{!493, !489, !442}
!495 = !{!491, !487, !453}
!496 = !{!491, !487, !442}
!497 = !{!493, !489, !453}
!498 = !{!499}
!499 = distinct !{!499, !467, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E: %a:It1"}
!500 = !{!501}
!501 = distinct !{!501, !467, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E: %b:It1"}
!502 = !{!503}
!503 = distinct !{!503, !472, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E: %a:It1"}
!504 = !{!505}
!505 = distinct !{!505, !472, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E: %b:It1"}
!506 = !{!505, !501, !442}
!507 = !{!503, !499, !474}
!508 = !{!503, !499, !442}
!509 = !{!505, !501, !474}
!510 = !{!511}
!511 = distinct !{!511, !446, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E: %a:It2"}
!512 = !{!513}
!513 = distinct !{!513, !446, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E: %b:It2"}
!514 = !{!515}
!515 = distinct !{!515, !451, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E: %a:It2"}
!516 = !{!517}
!517 = distinct !{!517, !451, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E: %b:It2"}
!518 = !{!517, !513, !442}
!519 = !{!515, !511, !453}
!520 = !{!515, !511, !442}
!521 = !{!517, !513, !453}
!522 = !{!523}
!523 = distinct !{!523, !467, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E: %a:It2"}
!524 = !{!525}
!525 = distinct !{!525, !467, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E: %b:It2"}
!526 = !{!527}
!527 = distinct !{!527, !472, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E: %a:It2"}
!528 = !{!529}
!529 = distinct !{!529, !472, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E: %b:It2"}
!530 = !{!529, !525, !442}
!531 = !{!527, !523, !474}
!532 = !{!527, !523, !442}
!533 = !{!529, !525, !474}
!534 = !{!535}
!535 = distinct !{!535, !446, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E: %a:It3"}
!536 = !{!537}
!537 = distinct !{!537, !446, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E: %b:It3"}
!538 = !{!539}
!539 = distinct !{!539, !451, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E: %a:It3"}
!540 = !{!541}
!541 = distinct !{!541, !451, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E: %b:It3"}
!542 = !{!541, !537, !442}
!543 = !{!539, !535, !453}
!544 = !{!539, !535, !442}
!545 = !{!541, !537, !453}
!546 = !{!547}
!547 = distinct !{!547, !467, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E: %a:It3"}
!548 = !{!549}
!549 = distinct !{!549, !467, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E: %b:It3"}
!550 = !{!551}
!551 = distinct !{!551, !472, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E: %a:It3"}
!552 = !{!553}
!553 = distinct !{!553, !472, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E: %b:It3"}
!554 = !{!553, !549, !442}
!555 = !{!551, !547, !474}
!556 = !{!551, !547, !442}
!557 = !{!553, !549, !474}
!558 = !{!559}
!559 = distinct !{!559, !560, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E: %a"}
!560 = distinct !{!560, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E"}
!561 = !{!562}
!562 = distinct !{!562, !560, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E: %b"}
!563 = !{!564}
!564 = distinct !{!564, !565, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E: %a"}
!565 = distinct !{!565, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E"}
!566 = !{!567}
!567 = distinct !{!567, !565, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E: %b"}
!568 = !{!567, !562}
!569 = !{!564, !559}
!570 = !{!564, !567, !559, !562}
!571 = !{!572, !574}
!572 = distinct !{!572, !573, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E: %b"}
!573 = distinct !{!573, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E"}
!574 = distinct !{!574, !575, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E: %b"}
!575 = distinct !{!575, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E"}
!576 = !{!577, !578}
!577 = distinct !{!577, !573, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E: %a"}
!578 = distinct !{!578, !575, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E: %a"}
!579 = !{!580, !582}
!580 = distinct !{!580, !581, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd62b33533bd06402E: %self"}
!581 = distinct !{!581, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd62b33533bd06402E"}
!582 = distinct !{!582, !583, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$f32$GT$$GT$17hd2fe8ec4d9c42666E: %_1"}
!583 = distinct !{!583, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$f32$GT$$GT$17hd2fe8ec4d9c42666E"}
!584 = !{!585, !587}
!585 = distinct !{!585, !586, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd62b33533bd06402E: %self"}
!586 = distinct !{!586, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd62b33533bd06402E"}
!587 = distinct !{!587, !588, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$f32$GT$$GT$17hd2fe8ec4d9c42666E: %_1"}
!588 = distinct !{!588, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$f32$GT$$GT$17hd2fe8ec4d9c42666E"}
!589 = !{!"branch_weights", i32 2002, i32 2000}
!590 = !{!591, !593}
!591 = distinct !{!591, !592, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h4fdd96a955038a81E: %_0"}
!592 = distinct !{!592, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h4fdd96a955038a81E"}
!593 = distinct !{!593, !594, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h15d5f62bf5159a9dE: %_0"}
!594 = distinct !{!594, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h15d5f62bf5159a9dE"}
!595 = !{!596, !598, !600, !602}
!596 = distinct !{!596, !597, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h05a7625f8627f7deE: %self"}
!597 = distinct !{!597, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h05a7625f8627f7deE"}
!598 = distinct !{!598, !599, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h04338cbf3b9d14e8E: %self"}
!599 = distinct !{!599, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h04338cbf3b9d14e8E"}
!600 = distinct !{!600, !601, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$f32$GT$$GT$17h11fd8e0701405f7eE: %_1"}
!601 = distinct !{!601, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$f32$GT$$GT$17h11fd8e0701405f7eE"}
!602 = distinct !{!602, !603, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17h02dfafb362d5356aE: %_1"}
!603 = distinct !{!603, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17h02dfafb362d5356aE"}
!604 = !{!605, !607, !609, !611}
!605 = distinct !{!605, !606, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h05a7625f8627f7deE: %self"}
!606 = distinct !{!606, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h05a7625f8627f7deE"}
!607 = distinct !{!607, !608, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h04338cbf3b9d14e8E: %self"}
!608 = distinct !{!608, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h04338cbf3b9d14e8E"}
!609 = distinct !{!609, !610, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$f32$GT$$GT$17h11fd8e0701405f7eE: %_1"}
!610 = distinct !{!610, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$f32$GT$$GT$17h11fd8e0701405f7eE"}
!611 = distinct !{!611, !612, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17h02dfafb362d5356aE: %_1"}
!612 = distinct !{!612, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17h02dfafb362d5356aE"}
!613 = !{!614, !616}
!614 = distinct !{!614, !615, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h4fdd96a955038a81E: %_0"}
!615 = distinct !{!615, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h4fdd96a955038a81E"}
!616 = distinct !{!616, !617, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h5cd96d1f01f3a57fE: %_0"}
!617 = distinct !{!617, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h5cd96d1f01f3a57fE"}
!618 = !{!619, !621, !623, !625}
!619 = distinct !{!619, !620, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h05a7625f8627f7deE: %self"}
!620 = distinct !{!620, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h05a7625f8627f7deE"}
!621 = distinct !{!621, !622, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7fcb2b7ca6f89569E: %self"}
!622 = distinct !{!622, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7fcb2b7ca6f89569E"}
!623 = distinct !{!623, !624, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17h757c592f8e12b809E: %_1"}
!624 = distinct !{!624, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17h757c592f8e12b809E"}
!625 = distinct !{!625, !626, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hdf611c6288e250d7E: %_1"}
!626 = distinct !{!626, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hdf611c6288e250d7E"}
!627 = !{!628, !630, !632, !634}
!628 = distinct !{!628, !629, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h05a7625f8627f7deE: %self"}
!629 = distinct !{!629, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h05a7625f8627f7deE"}
!630 = distinct !{!630, !631, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7fcb2b7ca6f89569E: %self"}
!631 = distinct !{!631, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7fcb2b7ca6f89569E"}
!632 = distinct !{!632, !633, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17h757c592f8e12b809E: %_1"}
!633 = distinct !{!633, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17h757c592f8e12b809E"}
!634 = distinct !{!634, !635, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hdf611c6288e250d7E: %_1"}
!635 = distinct !{!635, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hdf611c6288e250d7E"}
!636 = !{!637}
!637 = distinct !{!637, !638, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E: %a"}
!638 = distinct !{!638, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E"}
!639 = !{!640}
!640 = distinct !{!640, !638, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E: %b"}
!641 = !{!642}
!642 = distinct !{!642, !643, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E: %a"}
!643 = distinct !{!643, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E"}
!644 = !{!645}
!645 = distinct !{!645, !646, !"_ZN4core5slice4sort6stable5drift10create_run17h30ca0d8f7e4fb878E: %scratch.0"}
!646 = distinct !{!646, !"_ZN4core5slice4sort6stable5drift10create_run17h30ca0d8f7e4fb878E"}
!647 = !{!648}
!648 = distinct !{!648, !643, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E: %b"}
!649 = !{!648, !640}
!650 = !{!642, !637, !645}
!651 = !{!642, !637}
!652 = !{!648, !640, !645}
!653 = !{!642, !648, !637, !640, !645}
!654 = !{!655}
!655 = distinct !{!655, !656, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E: %a"}
!656 = distinct !{!656, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E"}
!657 = !{!658}
!658 = distinct !{!658, !659, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E: %a"}
!659 = distinct !{!659, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E"}
!660 = !{!658, !655}
!661 = !{!662, !663, !645}
!662 = distinct !{!662, !659, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E: %b"}
!663 = distinct !{!663, !656, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E: %b"}
!664 = !{!658, !662, !655, !663, !645}
!665 = !{!666}
!666 = distinct !{!666, !667, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E: %a"}
!667 = distinct !{!667, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E"}
!668 = !{!669}
!669 = distinct !{!669, !670, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E: %a"}
!670 = distinct !{!670, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E"}
!671 = !{!669, !666}
!672 = !{!673, !674, !645}
!673 = distinct !{!673, !670, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E: %b"}
!674 = distinct !{!674, !667, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E: %b"}
!675 = !{!669, !673, !666, !674, !645}
!676 = !{!677}
!677 = distinct !{!677, !678, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17hac4c52e3f25fff35E: %a.0"}
!678 = distinct !{!678, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17hac4c52e3f25fff35E"}
!679 = !{!645, !680}
!680 = distinct !{!680, !646, !"_ZN4core5slice4sort6stable5drift10create_run17h30ca0d8f7e4fb878E: %is_less"}
!681 = !{!682}
!682 = distinct !{!682, !678, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17hac4c52e3f25fff35E: %b.0"}
!683 = !{!677, !684}
!684 = distinct !{!684, !685, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h09282497ead794cbE: %self.0"}
!685 = distinct !{!685, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h09282497ead794cbE"}
!686 = !{!682, !645, !680}
!687 = !{!682, !684}
!688 = !{!677, !645, !680}
!689 = distinct !{!689, !690, !691}
!690 = !{!"llvm.loop.isvectorized", i32 1}
!691 = !{!"llvm.loop.unroll.runtime.disable"}
!692 = distinct !{!692, !691, !690}
!693 = !{!694}
!694 = distinct !{!694, !695, !"_ZN4core5slice4sort6stable5merge5merge17he422b79ccbfeebd0E: %v.0"}
!695 = distinct !{!695, !"_ZN4core5slice4sort6stable5merge5merge17he422b79ccbfeebd0E"}
!696 = !{!697}
!697 = distinct !{!697, !695, !"_ZN4core5slice4sort6stable5merge5merge17he422b79ccbfeebd0E: %scratch.0"}
!698 = !{!694, !697}
!699 = !{!700}
!700 = distinct !{!700, !701, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E: %a"}
!701 = distinct !{!701, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E"}
!702 = !{!703}
!703 = distinct !{!703, !701, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E: %b"}
!704 = !{!705}
!705 = distinct !{!705, !706, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E: %a"}
!706 = distinct !{!706, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E"}
!707 = !{!708}
!708 = distinct !{!708, !706, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E: %b"}
!709 = !{!708, !703, !694}
!710 = !{!705, !700, !711, !697}
!711 = distinct !{!711, !712, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hf6698cc1f9ec7046E: %self"}
!712 = distinct !{!712, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hf6698cc1f9ec7046E"}
!713 = !{!705, !700, !697}
!714 = !{!708, !703, !711, !694}
!715 = !{!711}
!716 = !{!711, !697}
!717 = !{!718}
!718 = distinct !{!718, !719, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E: %a"}
!719 = distinct !{!719, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E"}
!720 = !{!721}
!721 = distinct !{!721, !719, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E: %b"}
!722 = !{!723}
!723 = distinct !{!723, !724, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E: %a"}
!724 = distinct !{!724, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E"}
!725 = !{!726}
!726 = distinct !{!726, !724, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E: %b"}
!727 = !{!726, !721, !697}
!728 = !{!723, !718, !729, !694}
!729 = distinct !{!729, !730, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h15f025399ebbf9e7E: %self"}
!730 = distinct !{!730, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h15f025399ebbf9e7E"}
!731 = !{!723, !718, !694}
!732 = !{!726, !721, !729, !697}
!733 = !{!729}
!734 = !{!729, !697}
!735 = !{!736, !738}
!736 = distinct !{!736, !737, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h54b77018ab065e1bE: %self"}
!737 = distinct !{!737, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h54b77018ab065e1bE"}
!738 = distinct !{!738, !739, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$f32$GT$$GT$17h34a527a4ce8b7786E: %_1"}
!739 = distinct !{!739, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$f32$GT$$GT$17h34a527a4ce8b7786E"}
!740 = !{!741, !743}
!741 = distinct !{!741, !742, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h54b77018ab065e1bE: %self"}
!742 = distinct !{!742, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h54b77018ab065e1bE"}
!743 = distinct !{!743, !744, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$f32$GT$$GT$17h34a527a4ce8b7786E: %_1"}
!744 = distinct !{!744, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$f32$GT$$GT$17h34a527a4ce8b7786E"}
!745 = !{!746}
!746 = distinct !{!746, !747, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE: %a"}
!747 = distinct !{!747, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE"}
!748 = !{!749}
!749 = distinct !{!749, !747, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE: %b"}
!750 = !{!751}
!751 = distinct !{!751, !752, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E: argument 0"}
!752 = distinct !{!752, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E"}
!753 = !{!754}
!754 = distinct !{!754, !755, !"_ZN4core5slice4sort6stable5drift10create_run17hff11c011dbc83c78E: %scratch.0"}
!755 = distinct !{!755, !"_ZN4core5slice4sort6stable5drift10create_run17hff11c011dbc83c78E"}
!756 = !{!757}
!757 = distinct !{!757, !752, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E: argument 1"}
!758 = !{!759}
!759 = distinct !{!759, !760, !"cmpfunc: %a"}
!760 = distinct !{!760, !"cmpfunc"}
!761 = !{!762}
!762 = distinct !{!762, !760, !"cmpfunc: %b"}
!763 = !{!759, !751, !746}
!764 = !{!762, !757, !749, !754}
!765 = !{!762, !757, !749}
!766 = !{!759, !751, !746, !754}
!767 = !{!768, !770, !772}
!768 = distinct !{!768, !769, !"cmpfunc: %a"}
!769 = distinct !{!769, !"cmpfunc"}
!770 = distinct !{!770, !771, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E: argument 0"}
!771 = distinct !{!771, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E"}
!772 = distinct !{!772, !773, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE: %a"}
!773 = distinct !{!773, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE"}
!774 = !{!775, !776, !777, !754}
!775 = distinct !{!775, !769, !"cmpfunc: %b"}
!776 = distinct !{!776, !771, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E: argument 1"}
!777 = distinct !{!777, !773, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE: %b"}
!778 = !{!779, !781, !783}
!779 = distinct !{!779, !780, !"cmpfunc: %a"}
!780 = distinct !{!780, !"cmpfunc"}
!781 = distinct !{!781, !782, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E: argument 0"}
!782 = distinct !{!782, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E"}
!783 = distinct !{!783, !784, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE: %a"}
!784 = distinct !{!784, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE"}
!785 = !{!786, !787, !788, !754}
!786 = distinct !{!786, !780, !"cmpfunc: %b"}
!787 = distinct !{!787, !782, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E: argument 1"}
!788 = distinct !{!788, !784, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE: %b"}
!789 = !{!790}
!790 = distinct !{!790, !791, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17h51b51d0d9b7955e1E: %a.0"}
!791 = distinct !{!791, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17h51b51d0d9b7955e1E"}
!792 = !{!754, !793}
!793 = distinct !{!793, !755, !"_ZN4core5slice4sort6stable5drift10create_run17hff11c011dbc83c78E: %is_less"}
!794 = !{!795}
!795 = distinct !{!795, !791, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17h51b51d0d9b7955e1E: %b.0"}
!796 = !{!790, !797}
!797 = distinct !{!797, !798, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h23ef05e6133fa2a0E: %self.0"}
!798 = distinct !{!798, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h23ef05e6133fa2a0E"}
!799 = !{!795, !754, !793}
!800 = !{!795, !797}
!801 = !{!790, !754, !793}
!802 = distinct !{!802, !690, !691}
!803 = distinct !{!803, !691, !690}
!804 = !{!805}
!805 = distinct !{!805, !806, !"_ZN4core5slice4sort6stable5merge5merge17h5b006bb74d6348adE: %v.0"}
!806 = distinct !{!806, !"_ZN4core5slice4sort6stable5merge5merge17h5b006bb74d6348adE"}
!807 = !{!808}
!808 = distinct !{!808, !806, !"_ZN4core5slice4sort6stable5merge5merge17h5b006bb74d6348adE: %scratch.0"}
!809 = !{!805, !808}
!810 = !{!811}
!811 = distinct !{!811, !812, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE: %a"}
!812 = distinct !{!812, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE"}
!813 = !{!814}
!814 = distinct !{!814, !812, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE: %b"}
!815 = !{!816}
!816 = distinct !{!816, !817, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E: argument 0"}
!817 = distinct !{!817, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E"}
!818 = !{!819}
!819 = distinct !{!819, !817, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E: argument 1"}
!820 = !{!821}
!821 = distinct !{!821, !822, !"cmpfunc: %a"}
!822 = distinct !{!822, !"cmpfunc"}
!823 = !{!824}
!824 = distinct !{!824, !822, !"cmpfunc: %b"}
!825 = !{!821, !816, !811, !808}
!826 = !{!824, !819, !814, !827, !805}
!827 = distinct !{!827, !828, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hf71f12e2a4216daaE: %self"}
!828 = distinct !{!828, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hf71f12e2a4216daaE"}
!829 = !{!824, !819, !814, !805}
!830 = !{!821, !816, !811, !827, !808}
!831 = !{!827, !808}
!832 = !{!833}
!833 = distinct !{!833, !834, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE: %a"}
!834 = distinct !{!834, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE"}
!835 = !{!836}
!836 = distinct !{!836, !834, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE: %b"}
!837 = !{!838}
!838 = distinct !{!838, !839, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E: argument 0"}
!839 = distinct !{!839, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E"}
!840 = !{!841}
!841 = distinct !{!841, !839, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E: argument 1"}
!842 = !{!843}
!843 = distinct !{!843, !844, !"cmpfunc: %a"}
!844 = distinct !{!844, !"cmpfunc"}
!845 = !{!846}
!846 = distinct !{!846, !844, !"cmpfunc: %b"}
!847 = !{!843, !838, !833, !805}
!848 = !{!846, !841, !836, !849, !808}
!849 = distinct !{!849, !850, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17hf9b52d00dc344277E: %self"}
!850 = distinct !{!850, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17hf9b52d00dc344277E"}
!851 = !{!846, !841, !836, !808}
!852 = !{!843, !838, !833, !849, !805}
!853 = !{!849, !808}
!854 = !{!855, !857}
!855 = distinct !{!855, !856, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h377f05caa2335e02E: %self"}
!856 = distinct !{!856, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h377f05caa2335e02E"}
!857 = distinct !{!857, !858, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17hd0b2ba908abdf344E: %_1"}
!858 = distinct !{!858, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17hd0b2ba908abdf344E"}
!859 = !{!860}
!860 = distinct !{!860, !861, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17hbf15dafa14940884E: %v.0"}
!861 = distinct !{!861, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17hbf15dafa14940884E"}
!862 = !{!863}
!863 = distinct !{!863, !861, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17hbf15dafa14940884E: %scratch.0"}
!864 = !{!863, !865}
!865 = distinct !{!865, !861, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17hbf15dafa14940884E: %is_less"}
!866 = !{!860, !865}
!867 = !{!868, !870, !863}
!868 = distinct !{!868, !869, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E: %b:It1"}
!869 = distinct !{!869, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E"}
!870 = distinct !{!870, !871, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E: %b:It1"}
!871 = distinct !{!871, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E"}
!872 = !{!873, !874, !860, !865}
!873 = distinct !{!873, !869, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E: %a:It1"}
!874 = distinct !{!874, !871, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E: %a:It1"}
!875 = !{!876, !878, !863}
!876 = distinct !{!876, !877, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E: %b"}
!877 = distinct !{!877, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E"}
!878 = distinct !{!878, !879, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E: %b"}
!879 = distinct !{!879, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E"}
!880 = !{!881, !882, !860, !865}
!881 = distinct !{!881, !877, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E: %a"}
!882 = distinct !{!882, !879, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E: %a"}
!883 = !{!884, !886, !860, !865}
!884 = distinct !{!884, !885, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd62b33533bd06402E: %self"}
!885 = distinct !{!885, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd62b33533bd06402E"}
!886 = distinct !{!886, !887, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$f32$GT$$GT$17hd2fe8ec4d9c42666E: %_1"}
!887 = distinct !{!887, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$f32$GT$$GT$17hd2fe8ec4d9c42666E"}
!888 = !{!889}
!889 = distinct !{!889, !890, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h9651503ae4aa7058E: %v.0"}
!890 = distinct !{!890, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h9651503ae4aa7058E"}
!891 = !{!892}
!892 = distinct !{!892, !893, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E: %a"}
!893 = distinct !{!893, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E"}
!894 = !{!895}
!895 = distinct !{!895, !893, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E: %b"}
!896 = !{!897}
!897 = distinct !{!897, !898, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E: %a"}
!898 = distinct !{!898, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E"}
!899 = !{!900}
!900 = distinct !{!900, !901, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h5756d761f9dd811aE: %_0"}
!901 = distinct !{!901, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h5756d761f9dd811aE"}
!902 = !{!903}
!903 = distinct !{!903, !898, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E: %b"}
!904 = !{!903, !895, !889, !863}
!905 = !{!897, !892, !900, !860, !865}
!906 = !{!897, !892, !889, !863}
!907 = !{!903, !895, !900, !860, !865}
!908 = !{!889, !863}
!909 = !{!900, !910, !860, !865}
!910 = distinct !{!910, !901, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h5756d761f9dd811aE: %is_less"}
!911 = !{!900, !910, !889, !863, !865}
!912 = !{!913}
!913 = distinct !{!913, !914, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E: %a"}
!914 = distinct !{!914, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E"}
!915 = !{!916}
!916 = distinct !{!916, !914, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E: %b"}
!917 = !{!918}
!918 = distinct !{!918, !919, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E: %a"}
!919 = distinct !{!919, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E"}
!920 = !{!921}
!921 = distinct !{!921, !922, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h8a3c32a23d9036a8E: %_0"}
!922 = distinct !{!922, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h8a3c32a23d9036a8E"}
!923 = !{!924}
!924 = distinct !{!924, !919, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E: %b"}
!925 = !{!924, !916, !889, !863}
!926 = !{!918, !913, !921, !860, !865}
!927 = !{!918, !913, !889, !863}
!928 = !{!924, !916, !921, !860, !865}
!929 = !{!860, !863, !865}
!930 = !{!921, !931, !860, !865}
!931 = distinct !{!931, !922, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h8a3c32a23d9036a8E: %is_less"}
!932 = !{!921, !931, !889, !863, !865}
!933 = !{!889, !863, !865}
!934 = !{!860, !863}
!935 = !{!936, !938, !865}
!936 = distinct !{!936, !937, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd62b33533bd06402E: %self"}
!937 = distinct !{!937, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd62b33533bd06402E"}
!938 = distinct !{!938, !939, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$f32$GT$$GT$17hd2fe8ec4d9c42666E: %_1"}
!939 = distinct !{!939, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$f32$GT$$GT$17hd2fe8ec4d9c42666E"}
!940 = !{!941, !942, !863}
!941 = distinct !{!941, !869, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E: %b"}
!942 = distinct !{!942, !871, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E: %b"}
!943 = !{!944, !945, !860, !865}
!944 = distinct !{!944, !869, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E: %a"}
!945 = distinct !{!945, !871, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E: %a"}
!946 = !{!947, !949, !860, !865}
!947 = distinct !{!947, !948, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd62b33533bd06402E: %self"}
!948 = distinct !{!948, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd62b33533bd06402E"}
!949 = distinct !{!949, !950, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$f32$GT$$GT$17hd2fe8ec4d9c42666E: %_1"}
!950 = distinct !{!950, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$f32$GT$$GT$17hd2fe8ec4d9c42666E"}
!951 = !{!952}
!952 = distinct !{!952, !953, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h455dd7239a75682dE: %v.0"}
!953 = distinct !{!953, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h455dd7239a75682dE"}
!954 = !{!955}
!955 = distinct !{!955, !956, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E: %a"}
!956 = distinct !{!956, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E"}
!957 = !{!958}
!958 = distinct !{!958, !956, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E: %b"}
!959 = !{!960}
!960 = distinct !{!960, !961, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E: %a"}
!961 = distinct !{!961, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E"}
!962 = !{!963}
!963 = distinct !{!963, !964, !"_ZN4core5slice4sort6shared5pivot7median317h59bc2de3bef4ba9dE: %c"}
!964 = distinct !{!964, !"_ZN4core5slice4sort6shared5pivot7median317h59bc2de3bef4ba9dE"}
!965 = !{!966}
!966 = distinct !{!966, !961, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E: %b"}
!967 = !{!966, !958, !952}
!968 = !{!960, !955, !963, !969}
!969 = distinct !{!969, !953, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h455dd7239a75682dE: %is_less"}
!970 = !{!960, !955, !952}
!971 = !{!966, !958, !963, !969}
!972 = !{!960, !966, !955, !958, !963, !952, !969}
!973 = !{!974}
!974 = distinct !{!974, !975, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E: %b"}
!975 = distinct !{!975, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E"}
!976 = !{!977}
!977 = distinct !{!977, !978, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E: %b"}
!978 = distinct !{!978, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E"}
!979 = !{!977, !974, !952}
!980 = !{!981, !982, !969}
!981 = distinct !{!981, !978, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E: %a"}
!982 = distinct !{!982, !975, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E: %a"}
!983 = !{!981, !977, !982, !974, !952, !969}
!984 = !{!985, !987, !988, !990, !952, !969}
!985 = distinct !{!985, !986, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E: %a"}
!986 = distinct !{!986, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E"}
!987 = distinct !{!987, !986, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E: %b"}
!988 = distinct !{!988, !989, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E: %a"}
!989 = distinct !{!989, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E"}
!990 = distinct !{!990, !989, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E: %b"}
!991 = !{!992}
!992 = distinct !{!992, !993, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E: %a"}
!993 = distinct !{!993, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E"}
!994 = !{!995}
!995 = distinct !{!995, !996, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E: %a"}
!996 = distinct !{!996, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E"}
!997 = !{!995, !992}
!998 = !{!999, !1000}
!999 = distinct !{!999, !996, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E: %b"}
!1000 = distinct !{!1000, !993, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E: %b"}
!1001 = !{!995, !999, !992, !1000}
!1002 = !{!1003}
!1003 = distinct !{!1003, !1004, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h3bfdacb9360dc7dcE: %v.0"}
!1004 = distinct !{!1004, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h3bfdacb9360dc7dcE"}
!1005 = !{!1006}
!1006 = distinct !{!1006, !1004, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h3bfdacb9360dc7dcE: %scratch.0"}
!1007 = !{!1008, !1010, !1003}
!1008 = distinct !{!1008, !1009, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E: %b"}
!1009 = distinct !{!1009, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E"}
!1010 = distinct !{!1010, !1011, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E: %b"}
!1011 = distinct !{!1011, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E"}
!1012 = !{!1013, !1014, !1006}
!1013 = distinct !{!1013, !1009, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E: %a"}
!1014 = distinct !{!1014, !1011, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E: %a"}
!1015 = !{!1014}
!1016 = !{!1010}
!1017 = !{!1013}
!1018 = !{!1008}
!1019 = !{!1013, !1014, !1003}
!1020 = !{!1008, !1010, !1006}
!1021 = !{!1013, !1008, !1014, !1010, !1003, !1006}
!1022 = !{!1023, !1003}
!1023 = distinct !{!1023, !1024, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h3f4f6f3d1d94b822E: %self"}
!1024 = distinct !{!1024, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h3f4f6f3d1d94b822E"}
!1025 = !{!1026}
!1026 = distinct !{!1026, !1027, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E: %a"}
!1027 = distinct !{!1027, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E"}
!1028 = !{!1029}
!1029 = distinct !{!1029, !1030, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E: %a"}
!1030 = distinct !{!1030, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E"}
!1031 = !{!1029, !1026, !1003}
!1032 = !{!1033, !1034, !1006}
!1033 = distinct !{!1033, !1030, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E: %b"}
!1034 = distinct !{!1034, !1027, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E: %b"}
!1035 = !{!1029, !1033, !1026, !1034, !1003, !1006}
!1036 = !{!1037, !1003}
!1037 = distinct !{!1037, !1038, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h3f4f6f3d1d94b822E: %self"}
!1038 = distinct !{!1038, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h3f4f6f3d1d94b822E"}
!1039 = !{!1040}
!1040 = distinct !{!1040, !1041, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E: %a"}
!1041 = distinct !{!1041, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E"}
!1042 = !{!1043}
!1043 = distinct !{!1043, !1044, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E: %a"}
!1044 = distinct !{!1044, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E"}
!1045 = !{!1043, !1040, !1003}
!1046 = !{!1047, !1048, !1006}
!1047 = distinct !{!1047, !1044, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E: %b"}
!1048 = distinct !{!1048, !1041, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E: %b"}
!1049 = !{!1043, !1047, !1040, !1048, !1003, !1006}
!1050 = !{!1051, !1003}
!1051 = distinct !{!1051, !1052, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h3f4f6f3d1d94b822E: %self"}
!1052 = distinct !{!1052, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h3f4f6f3d1d94b822E"}
!1053 = !{!1054}
!1054 = distinct !{!1054, !1055, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E: %a"}
!1055 = distinct !{!1055, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E"}
!1056 = !{!1057}
!1057 = distinct !{!1057, !1058, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E: %a"}
!1058 = distinct !{!1058, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E"}
!1059 = !{!1057, !1054, !1003}
!1060 = !{!1061, !1062, !1006}
!1061 = distinct !{!1061, !1058, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E: %b"}
!1062 = distinct !{!1062, !1055, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E: %b"}
!1063 = !{!1057, !1061, !1054, !1062, !1003, !1006}
!1064 = !{!1065, !1003}
!1065 = distinct !{!1065, !1066, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h3f4f6f3d1d94b822E: %self"}
!1066 = distinct !{!1066, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h3f4f6f3d1d94b822E"}
!1067 = !{!1068, !1070, !1003}
!1068 = distinct !{!1068, !1069, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E: %b"}
!1069 = distinct !{!1069, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E"}
!1070 = distinct !{!1070, !1071, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E: %b"}
!1071 = distinct !{!1071, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E"}
!1072 = !{!1073, !1074, !1006}
!1073 = distinct !{!1073, !1069, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E: %a"}
!1074 = distinct !{!1074, !1071, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E: %a"}
!1075 = !{!1074}
!1076 = !{!1070}
!1077 = !{!1073}
!1078 = !{!1068}
!1079 = !{!1073, !1074, !1003}
!1080 = !{!1068, !1070, !1006}
!1081 = !{!1073, !1068, !1074, !1070, !1003, !1006}
!1082 = !{!1083, !1003}
!1083 = distinct !{!1083, !1084, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h3f4f6f3d1d94b822E: %self"}
!1084 = distinct !{!1084, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h3f4f6f3d1d94b822E"}
!1085 = !{!1086, !1006}
!1086 = distinct !{!1086, !1087, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h3f4f6f3d1d94b822E: %self"}
!1087 = distinct !{!1087, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h3f4f6f3d1d94b822E"}
!1088 = !{!1086, !1003}
!1089 = !{!1003, !1006}
!1090 = distinct !{!1090, !690, !691}
!1091 = distinct !{!1091, !691, !690}
!1092 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!1093 = !{!1094, !1096}
!1094 = distinct !{!1094, !1095, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h41224d6559369146E: %pair"}
!1095 = distinct !{!1095, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h41224d6559369146E"}
!1096 = distinct !{!1096, !1095, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h41224d6559369146E: %self.0"}
!1097 = !{!1098}
!1098 = distinct !{!1098, !1099, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17ha39ffb1d16427c1bE: %v.0"}
!1099 = distinct !{!1099, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17ha39ffb1d16427c1bE"}
!1100 = !{!1101}
!1101 = distinct !{!1101, !1099, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17ha39ffb1d16427c1bE: %scratch.0"}
!1102 = !{!1103, !1105, !1107, !1098}
!1103 = distinct !{!1103, !1104, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E: %a"}
!1104 = distinct !{!1104, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E"}
!1105 = distinct !{!1105, !1106, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E: %a"}
!1106 = distinct !{!1106, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E"}
!1107 = distinct !{!1107, !1108, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hbd21bfe8d7d9ec92E: %b"}
!1108 = distinct !{!1108, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hbd21bfe8d7d9ec92E"}
!1109 = !{!1110, !1111, !1112, !1101}
!1110 = distinct !{!1110, !1104, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E: %b"}
!1111 = distinct !{!1111, !1106, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E: %b"}
!1112 = distinct !{!1112, !1108, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hbd21bfe8d7d9ec92E: %a"}
!1113 = !{!1112}
!1114 = !{!1107}
!1115 = !{!1105}
!1116 = !{!1111}
!1117 = !{!1103}
!1118 = !{!1110}
!1119 = !{!1110, !1111, !1112, !1098}
!1120 = !{!1103, !1105, !1107, !1101}
!1121 = !{!1103, !1110, !1105, !1111, !1112, !1107, !1098, !1101}
!1122 = !{!1123, !1098}
!1123 = distinct !{!1123, !1124, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h3f4f6f3d1d94b822E: %self"}
!1124 = distinct !{!1124, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h3f4f6f3d1d94b822E"}
!1125 = !{!1126}
!1126 = distinct !{!1126, !1127, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hbd21bfe8d7d9ec92E: %a"}
!1127 = distinct !{!1127, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hbd21bfe8d7d9ec92E"}
!1128 = !{!1129}
!1129 = distinct !{!1129, !1130, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E: %b"}
!1130 = distinct !{!1130, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E"}
!1131 = !{!1132}
!1132 = distinct !{!1132, !1133, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E: %b"}
!1133 = distinct !{!1133, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E"}
!1134 = !{!1132, !1129, !1126, !1098}
!1135 = !{!1136, !1137, !1138, !1101}
!1136 = distinct !{!1136, !1133, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E: %a"}
!1137 = distinct !{!1137, !1130, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E: %a"}
!1138 = distinct !{!1138, !1127, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hbd21bfe8d7d9ec92E: %b"}
!1139 = !{!1136, !1132, !1137, !1129, !1126, !1138, !1098, !1101}
!1140 = !{!1141, !1098}
!1141 = distinct !{!1141, !1142, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h3f4f6f3d1d94b822E: %self"}
!1142 = distinct !{!1142, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h3f4f6f3d1d94b822E"}
!1143 = !{!1144}
!1144 = distinct !{!1144, !1145, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hbd21bfe8d7d9ec92E: %a"}
!1145 = distinct !{!1145, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hbd21bfe8d7d9ec92E"}
!1146 = !{!1147}
!1147 = distinct !{!1147, !1148, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E: %b"}
!1148 = distinct !{!1148, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E"}
!1149 = !{!1150}
!1150 = distinct !{!1150, !1151, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E: %b"}
!1151 = distinct !{!1151, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E"}
!1152 = !{!1150, !1147, !1144, !1098}
!1153 = !{!1154, !1155, !1156, !1101}
!1154 = distinct !{!1154, !1151, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E: %a"}
!1155 = distinct !{!1155, !1148, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E: %a"}
!1156 = distinct !{!1156, !1145, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hbd21bfe8d7d9ec92E: %b"}
!1157 = !{!1154, !1150, !1155, !1147, !1144, !1156, !1098, !1101}
!1158 = !{!1159, !1098}
!1159 = distinct !{!1159, !1160, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h3f4f6f3d1d94b822E: %self"}
!1160 = distinct !{!1160, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h3f4f6f3d1d94b822E"}
!1161 = !{!1162}
!1162 = distinct !{!1162, !1163, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hbd21bfe8d7d9ec92E: %a"}
!1163 = distinct !{!1163, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hbd21bfe8d7d9ec92E"}
!1164 = !{!1165}
!1165 = distinct !{!1165, !1166, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E: %b"}
!1166 = distinct !{!1166, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E"}
!1167 = !{!1168}
!1168 = distinct !{!1168, !1169, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E: %b"}
!1169 = distinct !{!1169, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E"}
!1170 = !{!1168, !1165, !1162, !1098}
!1171 = !{!1172, !1173, !1174, !1101}
!1172 = distinct !{!1172, !1169, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E: %a"}
!1173 = distinct !{!1173, !1166, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E: %a"}
!1174 = distinct !{!1174, !1163, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hbd21bfe8d7d9ec92E: %b"}
!1175 = !{!1172, !1168, !1173, !1165, !1162, !1174, !1098, !1101}
!1176 = !{!1177, !1098}
!1177 = distinct !{!1177, !1178, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h3f4f6f3d1d94b822E: %self"}
!1178 = distinct !{!1178, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h3f4f6f3d1d94b822E"}
!1179 = !{!1180, !1182, !1184, !1098}
!1180 = distinct !{!1180, !1181, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E: %a"}
!1181 = distinct !{!1181, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E"}
!1182 = distinct !{!1182, !1183, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E: %a"}
!1183 = distinct !{!1183, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E"}
!1184 = distinct !{!1184, !1185, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hbd21bfe8d7d9ec92E: %b"}
!1185 = distinct !{!1185, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hbd21bfe8d7d9ec92E"}
!1186 = !{!1187, !1188, !1189, !1101}
!1187 = distinct !{!1187, !1181, !"_ZN98PARTITION_INTO_TWO_SUBARRAYS_OF_LENGTHS_K_AND_N_K_SUCH_THAT_THE_DIFFERENCE_OF_SUMS_IS_MAXIMUM_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2a25b6b43a52f2a7E: %b"}
!1188 = distinct !{!1188, !1183, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3718a6e67533ddd0E: %b"}
!1189 = distinct !{!1189, !1185, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hbd21bfe8d7d9ec92E: %a"}
!1190 = !{!1189}
!1191 = !{!1184}
!1192 = !{!1182}
!1193 = !{!1188}
!1194 = !{!1180}
!1195 = !{!1187}
!1196 = !{!1187, !1188, !1189, !1098}
!1197 = !{!1180, !1182, !1184, !1101}
!1198 = !{!1180, !1187, !1182, !1188, !1189, !1184, !1098, !1101}
!1199 = !{!1200, !1098}
!1200 = distinct !{!1200, !1201, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h3f4f6f3d1d94b822E: %self"}
!1201 = distinct !{!1201, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h3f4f6f3d1d94b822E"}
!1202 = !{!1203, !1101}
!1203 = distinct !{!1203, !1204, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h3f4f6f3d1d94b822E: %self"}
!1204 = distinct !{!1204, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h3f4f6f3d1d94b822E"}
!1205 = !{!1203, !1098}
!1206 = !{!1098, !1101}
!1207 = distinct !{!1207, !690, !691}
!1208 = distinct !{!1208, !691, !690}
!1209 = !{!1210}
!1210 = distinct !{!1210, !1211, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h0d342aab52f25671E: %v.0"}
!1211 = distinct !{!1211, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h0d342aab52f25671E"}
!1212 = !{!1213}
!1213 = distinct !{!1213, !1211, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h0d342aab52f25671E: %scratch.0"}
!1214 = !{!1215}
!1215 = distinct !{!1215, !1216, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE: %a"}
!1216 = distinct !{!1216, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE"}
!1217 = !{!1218}
!1218 = distinct !{!1218, !1216, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE: %b"}
!1219 = !{!1220}
!1220 = distinct !{!1220, !1221, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E: argument 0"}
!1221 = distinct !{!1221, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E"}
!1222 = !{!1223}
!1223 = distinct !{!1223, !1221, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E: argument 1"}
!1224 = !{!1225}
!1225 = distinct !{!1225, !1226, !"cmpfunc: %a"}
!1226 = distinct !{!1226, !"cmpfunc"}
!1227 = !{!1228}
!1228 = distinct !{!1228, !1226, !"cmpfunc: %b"}
!1229 = !{!1225, !1220, !1215, !1210}
!1230 = !{!1228, !1223, !1218, !1213, !1231}
!1231 = distinct !{!1231, !1211, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h0d342aab52f25671E: %is_less"}
!1232 = !{!1228, !1223, !1218, !1210}
!1233 = !{!1225, !1220, !1215, !1213, !1231}
!1234 = !{!1235}
!1235 = distinct !{!1235, !1236, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE: %a"}
!1236 = distinct !{!1236, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE"}
!1237 = !{!1238}
!1238 = distinct !{!1238, !1236, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE: %b"}
!1239 = !{!1240}
!1240 = distinct !{!1240, !1241, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E: argument 0"}
!1241 = distinct !{!1241, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E"}
!1242 = !{!1243}
!1243 = distinct !{!1243, !1241, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E: argument 1"}
!1244 = !{!1245}
!1245 = distinct !{!1245, !1246, !"cmpfunc: %a"}
!1246 = distinct !{!1246, !"cmpfunc"}
!1247 = !{!1248}
!1248 = distinct !{!1248, !1246, !"cmpfunc: %b"}
!1249 = !{!1245, !1240, !1235, !1210}
!1250 = !{!1248, !1243, !1238, !1213, !1231}
!1251 = !{!1248, !1243, !1238, !1210}
!1252 = !{!1245, !1240, !1235, !1213, !1231}
!1253 = !{!1254}
!1254 = distinct !{!1254, !1255, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE: %a"}
!1255 = distinct !{!1255, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE"}
!1256 = !{!1257}
!1257 = distinct !{!1257, !1255, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE: %b"}
!1258 = !{!1259}
!1259 = distinct !{!1259, !1260, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E: argument 0"}
!1260 = distinct !{!1260, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E"}
!1261 = !{!1262}
!1262 = distinct !{!1262, !1260, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E: argument 1"}
!1263 = !{!1264}
!1264 = distinct !{!1264, !1265, !"cmpfunc: %a"}
!1265 = distinct !{!1265, !"cmpfunc"}
!1266 = !{!1267}
!1267 = distinct !{!1267, !1265, !"cmpfunc: %b"}
!1268 = !{!1264, !1259, !1254, !1210}
!1269 = !{!1267, !1262, !1257, !1213, !1231}
!1270 = !{!1267, !1262, !1257, !1210}
!1271 = !{!1264, !1259, !1254, !1213, !1231}
!1272 = !{!1273}
!1273 = distinct !{!1273, !1274, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE: %a"}
!1274 = distinct !{!1274, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE"}
!1275 = !{!1276}
!1276 = distinct !{!1276, !1274, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE: %b"}
!1277 = !{!1278}
!1278 = distinct !{!1278, !1279, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E: argument 0"}
!1279 = distinct !{!1279, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E"}
!1280 = !{!1281}
!1281 = distinct !{!1281, !1279, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E: argument 1"}
!1282 = !{!1283}
!1283 = distinct !{!1283, !1284, !"cmpfunc: %a"}
!1284 = distinct !{!1284, !"cmpfunc"}
!1285 = !{!1286}
!1286 = distinct !{!1286, !1284, !"cmpfunc: %b"}
!1287 = !{!1283, !1278, !1273, !1210}
!1288 = !{!1286, !1281, !1276, !1213, !1231}
!1289 = !{!1286, !1281, !1276, !1210}
!1290 = !{!1283, !1278, !1273, !1213, !1231}
!1291 = !{!1292}
!1292 = distinct !{!1292, !1293, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE: %a"}
!1293 = distinct !{!1293, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE"}
!1294 = !{!1295}
!1295 = distinct !{!1295, !1293, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE: %b"}
!1296 = !{!1297}
!1297 = distinct !{!1297, !1298, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E: argument 0"}
!1298 = distinct !{!1298, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E"}
!1299 = !{!1300}
!1300 = distinct !{!1300, !1298, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E: argument 1"}
!1301 = !{!1302}
!1302 = distinct !{!1302, !1303, !"cmpfunc: %a"}
!1303 = distinct !{!1303, !"cmpfunc"}
!1304 = !{!1305}
!1305 = distinct !{!1305, !1303, !"cmpfunc: %b"}
!1306 = !{!1302, !1297, !1292, !1210}
!1307 = !{!1305, !1300, !1295, !1213, !1231}
!1308 = !{!1305, !1300, !1295, !1210}
!1309 = !{!1302, !1297, !1292, !1213, !1231}
!1310 = !{!1210, !1231}
!1311 = !{!1312}
!1312 = distinct !{!1312, !1313, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE: %a"}
!1313 = distinct !{!1313, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE"}
!1314 = !{!1315}
!1315 = distinct !{!1315, !1313, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE: %b"}
!1316 = !{!1317}
!1317 = distinct !{!1317, !1318, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E: argument 0"}
!1318 = distinct !{!1318, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E"}
!1319 = !{!1320}
!1320 = distinct !{!1320, !1318, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E: argument 1"}
!1321 = !{!1322}
!1322 = distinct !{!1322, !1323, !"cmpfunc: %a"}
!1323 = distinct !{!1323, !"cmpfunc"}
!1324 = !{!1325}
!1325 = distinct !{!1325, !1323, !"cmpfunc: %b"}
!1326 = !{!1322, !1317, !1312, !1210}
!1327 = !{!1325, !1320, !1315, !1213, !1231}
!1328 = !{!1325, !1320, !1315, !1210}
!1329 = !{!1322, !1317, !1312, !1213, !1231}
!1330 = !{!1331}
!1331 = distinct !{!1331, !1332, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE: %a"}
!1332 = distinct !{!1332, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE"}
!1333 = !{!1334}
!1334 = distinct !{!1334, !1332, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE: %b"}
!1335 = !{!1336}
!1336 = distinct !{!1336, !1337, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E: argument 0"}
!1337 = distinct !{!1337, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E"}
!1338 = !{!1339}
!1339 = distinct !{!1339, !1337, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E: argument 1"}
!1340 = !{!1341}
!1341 = distinct !{!1341, !1342, !"cmpfunc: %a"}
!1342 = distinct !{!1342, !"cmpfunc"}
!1343 = !{!1344}
!1344 = distinct !{!1344, !1342, !"cmpfunc: %b"}
!1345 = !{!1341, !1336, !1331, !1210}
!1346 = !{!1344, !1339, !1334, !1213, !1231}
!1347 = !{!1344, !1339, !1334, !1210}
!1348 = !{!1341, !1336, !1331, !1213, !1231}
!1349 = !{!1350}
!1350 = distinct !{!1350, !1351, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE: %a"}
!1351 = distinct !{!1351, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE"}
!1352 = !{!1353}
!1353 = distinct !{!1353, !1351, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE: %b"}
!1354 = !{!1355}
!1355 = distinct !{!1355, !1356, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E: argument 0"}
!1356 = distinct !{!1356, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E"}
!1357 = !{!1358}
!1358 = distinct !{!1358, !1356, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E: argument 1"}
!1359 = !{!1360}
!1360 = distinct !{!1360, !1361, !"cmpfunc: %a"}
!1361 = distinct !{!1361, !"cmpfunc"}
!1362 = !{!1363}
!1363 = distinct !{!1363, !1361, !"cmpfunc: %b"}
!1364 = !{!1360, !1355, !1350, !1210}
!1365 = !{!1363, !1358, !1353, !1213, !1231}
!1366 = !{!1363, !1358, !1353, !1210}
!1367 = !{!1360, !1355, !1350, !1213, !1231}
!1368 = !{!1369}
!1369 = distinct !{!1369, !1370, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE: %a"}
!1370 = distinct !{!1370, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE"}
!1371 = !{!1372}
!1372 = distinct !{!1372, !1370, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE: %b"}
!1373 = !{!1374}
!1374 = distinct !{!1374, !1375, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E: argument 0"}
!1375 = distinct !{!1375, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E"}
!1376 = !{!1377}
!1377 = distinct !{!1377, !1375, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E: argument 1"}
!1378 = !{!1379}
!1379 = distinct !{!1379, !1380, !"cmpfunc: %a"}
!1380 = distinct !{!1380, !"cmpfunc"}
!1381 = !{!1382}
!1382 = distinct !{!1382, !1380, !"cmpfunc: %b"}
!1383 = !{!1379, !1374, !1369, !1210}
!1384 = !{!1382, !1377, !1372, !1213, !1231}
!1385 = !{!1382, !1377, !1372, !1210}
!1386 = !{!1379, !1374, !1369, !1213, !1231}
!1387 = !{!1388}
!1388 = distinct !{!1388, !1389, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE: %a"}
!1389 = distinct !{!1389, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE"}
!1390 = !{!1391}
!1391 = distinct !{!1391, !1389, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE: %b"}
!1392 = !{!1393}
!1393 = distinct !{!1393, !1394, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E: argument 0"}
!1394 = distinct !{!1394, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E"}
!1395 = !{!1396}
!1396 = distinct !{!1396, !1394, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E: argument 1"}
!1397 = !{!1398}
!1398 = distinct !{!1398, !1399, !"cmpfunc: %a"}
!1399 = distinct !{!1399, !"cmpfunc"}
!1400 = !{!1401}
!1401 = distinct !{!1401, !1399, !"cmpfunc: %b"}
!1402 = !{!1398, !1393, !1388, !1210}
!1403 = !{!1401, !1396, !1391, !1213, !1231}
!1404 = !{!1401, !1396, !1391, !1210}
!1405 = !{!1398, !1393, !1388, !1213, !1231}
!1406 = !{!1213, !1231}
!1407 = !{!1408, !1410, !1412, !1213}
!1408 = distinct !{!1408, !1409, !"cmpfunc: %b"}
!1409 = distinct !{!1409, !"cmpfunc"}
!1410 = distinct !{!1410, !1411, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E: argument 1"}
!1411 = distinct !{!1411, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E"}
!1412 = distinct !{!1412, !1413, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE: %b"}
!1413 = distinct !{!1413, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE"}
!1414 = !{!1415, !1416, !1417, !1210, !1231}
!1415 = distinct !{!1415, !1409, !"cmpfunc: %a"}
!1416 = distinct !{!1416, !1411, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E: argument 0"}
!1417 = distinct !{!1417, !1413, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE: %a"}
!1418 = !{!1419, !1421, !1423, !1213}
!1419 = distinct !{!1419, !1420, !"cmpfunc: %b"}
!1420 = distinct !{!1420, !"cmpfunc"}
!1421 = distinct !{!1421, !1422, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E: argument 1"}
!1422 = distinct !{!1422, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E"}
!1423 = distinct !{!1423, !1424, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE: %b"}
!1424 = distinct !{!1424, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE"}
!1425 = !{!1426, !1427, !1428, !1210, !1231}
!1426 = distinct !{!1426, !1420, !"cmpfunc: %a"}
!1427 = distinct !{!1427, !1422, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E: argument 0"}
!1428 = distinct !{!1428, !1424, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE: %a"}
!1429 = !{!1430, !1432, !1210, !1231}
!1430 = distinct !{!1430, !1431, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5b2ea97e29052f44E: %self"}
!1431 = distinct !{!1431, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5b2ea97e29052f44E"}
!1432 = distinct !{!1432, !1433, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h851a8ea1053b64d6E: %_1"}
!1433 = distinct !{!1433, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h851a8ea1053b64d6E"}
!1434 = !{!1435}
!1435 = distinct !{!1435, !1436, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h032af468f6d96244E: %v.0"}
!1436 = distinct !{!1436, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h032af468f6d96244E"}
!1437 = !{!1438}
!1438 = distinct !{!1438, !1439, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE: %a"}
!1439 = distinct !{!1439, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE"}
!1440 = !{!1441}
!1441 = distinct !{!1441, !1439, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE: %b"}
!1442 = !{!1443}
!1443 = distinct !{!1443, !1444, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E: argument 0"}
!1444 = distinct !{!1444, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E"}
!1445 = !{!1446}
!1446 = distinct !{!1446, !1447, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hc545bf48bbb3958cE: %_0"}
!1447 = distinct !{!1447, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hc545bf48bbb3958cE"}
!1448 = !{!1449}
!1449 = distinct !{!1449, !1444, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E: argument 1"}
!1450 = !{!1451}
!1451 = distinct !{!1451, !1452, !"cmpfunc: %a"}
!1452 = distinct !{!1452, !"cmpfunc"}
!1453 = !{!1454}
!1454 = distinct !{!1454, !1452, !"cmpfunc: %b"}
!1455 = !{!1451, !1443, !1438, !1435, !1213}
!1456 = !{!1454, !1449, !1441, !1446, !1210, !1231}
!1457 = !{!1454, !1449, !1441, !1435, !1213}
!1458 = !{!1451, !1443, !1438, !1446, !1210, !1231}
!1459 = !{!1446, !1460, !1435, !1213, !1231}
!1460 = distinct !{!1460, !1447, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hc545bf48bbb3958cE: %is_less"}
!1461 = !{!1462}
!1462 = distinct !{!1462, !1463, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE: %a"}
!1463 = distinct !{!1463, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE"}
!1464 = !{!1465}
!1465 = distinct !{!1465, !1463, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE: %b"}
!1466 = !{!1467}
!1467 = distinct !{!1467, !1468, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E: argument 0"}
!1468 = distinct !{!1468, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E"}
!1469 = !{!1470}
!1470 = distinct !{!1470, !1471, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h97f06eae836dcde7E: %_0"}
!1471 = distinct !{!1471, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h97f06eae836dcde7E"}
!1472 = !{!1473}
!1473 = distinct !{!1473, !1468, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E: argument 1"}
!1474 = !{!1475}
!1475 = distinct !{!1475, !1476, !"cmpfunc: %a"}
!1476 = distinct !{!1476, !"cmpfunc"}
!1477 = !{!1478}
!1478 = distinct !{!1478, !1476, !"cmpfunc: %b"}
!1479 = !{!1475, !1467, !1462, !1435, !1213}
!1480 = !{!1478, !1473, !1465, !1470, !1210, !1231}
!1481 = !{!1478, !1473, !1465, !1435, !1213}
!1482 = !{!1475, !1467, !1462, !1470, !1210, !1231}
!1483 = !{!1470, !1484, !1435, !1213, !1231}
!1484 = distinct !{!1484, !1471, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h97f06eae836dcde7E: %is_less"}
!1485 = !{!1435, !1213}
!1486 = !{!1435, !1213, !1231}
!1487 = !{!1210, !1213, !1231}
!1488 = !{!1210, !1213}
!1489 = !{!1490, !1492, !1231}
!1490 = distinct !{!1490, !1491, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5b2ea97e29052f44E: %self"}
!1491 = distinct !{!1491, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5b2ea97e29052f44E"}
!1492 = distinct !{!1492, !1493, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h851a8ea1053b64d6E: %_1"}
!1493 = distinct !{!1493, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h851a8ea1053b64d6E"}
!1494 = !{!1495}
!1495 = distinct !{!1495, !1496, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE: %a"}
!1496 = distinct !{!1496, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE"}
!1497 = !{!1498}
!1498 = distinct !{!1498, !1496, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE: %b"}
!1499 = !{!1500}
!1500 = distinct !{!1500, !1501, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E: argument 0"}
!1501 = distinct !{!1501, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E"}
!1502 = !{!1503}
!1503 = distinct !{!1503, !1504, !"_ZN4core5slice4sort6shared5pivot7median317hd5e87c6c1a0cc414E: %c"}
!1504 = distinct !{!1504, !"_ZN4core5slice4sort6shared5pivot7median317hd5e87c6c1a0cc414E"}
!1505 = !{!1506}
!1506 = distinct !{!1506, !1501, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E: argument 1"}
!1507 = !{!1508}
!1508 = distinct !{!1508, !1509, !"cmpfunc: %a"}
!1509 = distinct !{!1509, !"cmpfunc"}
!1510 = !{!1511}
!1511 = distinct !{!1511, !1509, !"cmpfunc: %b"}
!1512 = !{!1508, !1500, !1495, !1513}
!1513 = distinct !{!1513, !1514, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17hf3abfdb84754bb8bE: %v.0"}
!1514 = distinct !{!1514, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17hf3abfdb84754bb8bE"}
!1515 = !{!1511, !1506, !1498, !1503, !1516}
!1516 = distinct !{!1516, !1514, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17hf3abfdb84754bb8bE: %is_less"}
!1517 = !{!1511, !1506, !1498, !1513}
!1518 = !{!1508, !1500, !1495, !1503, !1516}
!1519 = !{!1520, !1522, !1524, !1513}
!1520 = distinct !{!1520, !1521, !"cmpfunc: %b"}
!1521 = distinct !{!1521, !"cmpfunc"}
!1522 = distinct !{!1522, !1523, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E: argument 1"}
!1523 = distinct !{!1523, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E"}
!1524 = distinct !{!1524, !1525, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE: %b"}
!1525 = distinct !{!1525, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE"}
!1526 = !{!1527, !1528, !1529, !1516}
!1527 = distinct !{!1527, !1521, !"cmpfunc: %a"}
!1528 = distinct !{!1528, !1523, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E: argument 0"}
!1529 = distinct !{!1529, !1525, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE: %a"}
!1530 = !{!1531, !1533, !1535}
!1531 = distinct !{!1531, !1532, !"cmpfunc: %a"}
!1532 = distinct !{!1532, !"cmpfunc"}
!1533 = distinct !{!1533, !1534, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E: argument 0"}
!1534 = distinct !{!1534, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E"}
!1535 = distinct !{!1535, !1536, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE: %a"}
!1536 = distinct !{!1536, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE"}
!1537 = !{!1538, !1539, !1540}
!1538 = distinct !{!1538, !1532, !"cmpfunc: %b"}
!1539 = distinct !{!1539, !1534, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E: argument 1"}
!1540 = distinct !{!1540, !1536, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE: %b"}
!1541 = !{!1542}
!1542 = distinct !{!1542, !1543, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h32eba779ed004d82E: %v.0"}
!1543 = distinct !{!1543, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h32eba779ed004d82E"}
!1544 = !{!1545}
!1545 = distinct !{!1545, !1543, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h32eba779ed004d82E: %scratch.0"}
!1546 = !{!1547, !1549, !1551, !1542}
!1547 = distinct !{!1547, !1548, !"cmpfunc: %b"}
!1548 = distinct !{!1548, !"cmpfunc"}
!1549 = distinct !{!1549, !1550, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E: argument 1"}
!1550 = distinct !{!1550, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E"}
!1551 = distinct !{!1551, !1552, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE: %b"}
!1552 = distinct !{!1552, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE"}
!1553 = !{!1554, !1555, !1556, !1545}
!1554 = distinct !{!1554, !1548, !"cmpfunc: %a"}
!1555 = distinct !{!1555, !1550, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E: argument 0"}
!1556 = distinct !{!1556, !1552, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE: %a"}
!1557 = !{!1556}
!1558 = !{!1551}
!1559 = !{!1555}
!1560 = !{!1549}
!1561 = !{!1554}
!1562 = !{!1547}
!1563 = !{!1554, !1555, !1556, !1542}
!1564 = !{!1547, !1549, !1551, !1545}
!1565 = !{!1566, !1542}
!1566 = distinct !{!1566, !1567, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h01236de67256097eE: %self"}
!1567 = distinct !{!1567, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h01236de67256097eE"}
!1568 = !{!1569, !1571, !1573, !1542}
!1569 = distinct !{!1569, !1570, !"cmpfunc: %a"}
!1570 = distinct !{!1570, !"cmpfunc"}
!1571 = distinct !{!1571, !1572, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E: argument 0"}
!1572 = distinct !{!1572, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E"}
!1573 = distinct !{!1573, !1574, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE: %a"}
!1574 = distinct !{!1574, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE"}
!1575 = !{!1576, !1577, !1578, !1545}
!1576 = distinct !{!1576, !1570, !"cmpfunc: %b"}
!1577 = distinct !{!1577, !1572, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E: argument 1"}
!1578 = distinct !{!1578, !1574, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE: %b"}
!1579 = !{!1580, !1542}
!1580 = distinct !{!1580, !1581, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h01236de67256097eE: %self"}
!1581 = distinct !{!1581, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h01236de67256097eE"}
!1582 = !{!1583, !1585, !1587, !1542}
!1583 = distinct !{!1583, !1584, !"cmpfunc: %a"}
!1584 = distinct !{!1584, !"cmpfunc"}
!1585 = distinct !{!1585, !1586, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E: argument 0"}
!1586 = distinct !{!1586, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E"}
!1587 = distinct !{!1587, !1588, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE: %a"}
!1588 = distinct !{!1588, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE"}
!1589 = !{!1590, !1591, !1592, !1545}
!1590 = distinct !{!1590, !1584, !"cmpfunc: %b"}
!1591 = distinct !{!1591, !1586, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E: argument 1"}
!1592 = distinct !{!1592, !1588, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE: %b"}
!1593 = !{!1594, !1542}
!1594 = distinct !{!1594, !1595, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h01236de67256097eE: %self"}
!1595 = distinct !{!1595, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h01236de67256097eE"}
!1596 = !{!1597, !1599, !1601, !1542}
!1597 = distinct !{!1597, !1598, !"cmpfunc: %a"}
!1598 = distinct !{!1598, !"cmpfunc"}
!1599 = distinct !{!1599, !1600, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E: argument 0"}
!1600 = distinct !{!1600, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E"}
!1601 = distinct !{!1601, !1602, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE: %a"}
!1602 = distinct !{!1602, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE"}
!1603 = !{!1604, !1605, !1606, !1545}
!1604 = distinct !{!1604, !1598, !"cmpfunc: %b"}
!1605 = distinct !{!1605, !1600, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E: argument 1"}
!1606 = distinct !{!1606, !1602, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE: %b"}
!1607 = !{!1608, !1542}
!1608 = distinct !{!1608, !1609, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h01236de67256097eE: %self"}
!1609 = distinct !{!1609, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h01236de67256097eE"}
!1610 = !{!1611, !1613, !1615, !1542}
!1611 = distinct !{!1611, !1612, !"cmpfunc: %b"}
!1612 = distinct !{!1612, !"cmpfunc"}
!1613 = distinct !{!1613, !1614, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E: argument 1"}
!1614 = distinct !{!1614, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E"}
!1615 = distinct !{!1615, !1616, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE: %b"}
!1616 = distinct !{!1616, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE"}
!1617 = !{!1618, !1619, !1620, !1545}
!1618 = distinct !{!1618, !1612, !"cmpfunc: %a"}
!1619 = distinct !{!1619, !1614, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E: argument 0"}
!1620 = distinct !{!1620, !1616, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE: %a"}
!1621 = !{!1620}
!1622 = !{!1615}
!1623 = !{!1619}
!1624 = !{!1613}
!1625 = !{!1618}
!1626 = !{!1611}
!1627 = !{!1618, !1619, !1620, !1542}
!1628 = !{!1611, !1613, !1615, !1545}
!1629 = !{!1630, !1542}
!1630 = distinct !{!1630, !1631, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h01236de67256097eE: %self"}
!1631 = distinct !{!1631, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h01236de67256097eE"}
!1632 = !{!1633, !1545}
!1633 = distinct !{!1633, !1634, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h01236de67256097eE: %self"}
!1634 = distinct !{!1634, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h01236de67256097eE"}
!1635 = !{!1633, !1542}
!1636 = !{!1542, !1545}
!1637 = distinct !{!1637, !690, !691}
!1638 = distinct !{!1638, !691, !690}
!1639 = !{!1640, !1642}
!1640 = distinct !{!1640, !1641, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hc608c0d84b69e4dbE: %pair"}
!1641 = distinct !{!1641, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hc608c0d84b69e4dbE"}
!1642 = distinct !{!1642, !1641, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hc608c0d84b69e4dbE: %self.0"}
!1643 = !{!1644}
!1644 = distinct !{!1644, !1645, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17he05a84d9b5b1644cE: %v.0"}
!1645 = distinct !{!1645, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17he05a84d9b5b1644cE"}
!1646 = !{!1647}
!1647 = distinct !{!1647, !1645, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17he05a84d9b5b1644cE: %scratch.0"}
!1648 = !{!1649, !1651, !1653, !1655, !1644}
!1649 = distinct !{!1649, !1650, !"cmpfunc: %a"}
!1650 = distinct !{!1650, !"cmpfunc"}
!1651 = distinct !{!1651, !1652, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E: argument 0"}
!1652 = distinct !{!1652, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E"}
!1653 = distinct !{!1653, !1654, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE: %a"}
!1654 = distinct !{!1654, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE"}
!1655 = distinct !{!1655, !1656, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h39566a3a48db5e7eE: %b"}
!1656 = distinct !{!1656, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h39566a3a48db5e7eE"}
!1657 = !{!1658, !1659, !1660, !1661, !1647}
!1658 = distinct !{!1658, !1650, !"cmpfunc: %b"}
!1659 = distinct !{!1659, !1652, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E: argument 1"}
!1660 = distinct !{!1660, !1654, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE: %b"}
!1661 = distinct !{!1661, !1656, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h39566a3a48db5e7eE: %a"}
!1662 = !{!1661}
!1663 = !{!1655}
!1664 = !{!1653}
!1665 = !{!1660}
!1666 = !{!1651}
!1667 = !{!1659}
!1668 = !{!1649}
!1669 = !{!1658}
!1670 = !{!1658, !1659, !1660, !1661, !1644}
!1671 = !{!1649, !1651, !1653, !1655, !1647}
!1672 = !{!1673, !1644}
!1673 = distinct !{!1673, !1674, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h01236de67256097eE: %self"}
!1674 = distinct !{!1674, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h01236de67256097eE"}
!1675 = !{!1676, !1678, !1680, !1682, !1644}
!1676 = distinct !{!1676, !1677, !"cmpfunc: %b"}
!1677 = distinct !{!1677, !"cmpfunc"}
!1678 = distinct !{!1678, !1679, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E: argument 1"}
!1679 = distinct !{!1679, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E"}
!1680 = distinct !{!1680, !1681, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE: %b"}
!1681 = distinct !{!1681, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE"}
!1682 = distinct !{!1682, !1683, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h39566a3a48db5e7eE: %a"}
!1683 = distinct !{!1683, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h39566a3a48db5e7eE"}
!1684 = !{!1685, !1686, !1687, !1688, !1647}
!1685 = distinct !{!1685, !1677, !"cmpfunc: %a"}
!1686 = distinct !{!1686, !1679, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E: argument 0"}
!1687 = distinct !{!1687, !1681, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE: %a"}
!1688 = distinct !{!1688, !1683, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h39566a3a48db5e7eE: %b"}
!1689 = !{!1690, !1644}
!1690 = distinct !{!1690, !1691, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h01236de67256097eE: %self"}
!1691 = distinct !{!1691, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h01236de67256097eE"}
!1692 = !{!1693, !1695, !1697, !1699, !1644}
!1693 = distinct !{!1693, !1694, !"cmpfunc: %b"}
!1694 = distinct !{!1694, !"cmpfunc"}
!1695 = distinct !{!1695, !1696, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E: argument 1"}
!1696 = distinct !{!1696, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E"}
!1697 = distinct !{!1697, !1698, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE: %b"}
!1698 = distinct !{!1698, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE"}
!1699 = distinct !{!1699, !1700, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h39566a3a48db5e7eE: %a"}
!1700 = distinct !{!1700, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h39566a3a48db5e7eE"}
!1701 = !{!1702, !1703, !1704, !1705, !1647}
!1702 = distinct !{!1702, !1694, !"cmpfunc: %a"}
!1703 = distinct !{!1703, !1696, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E: argument 0"}
!1704 = distinct !{!1704, !1698, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE: %a"}
!1705 = distinct !{!1705, !1700, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h39566a3a48db5e7eE: %b"}
!1706 = !{!1707, !1644}
!1707 = distinct !{!1707, !1708, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h01236de67256097eE: %self"}
!1708 = distinct !{!1708, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h01236de67256097eE"}
!1709 = !{!1710, !1712, !1714, !1716, !1644}
!1710 = distinct !{!1710, !1711, !"cmpfunc: %b"}
!1711 = distinct !{!1711, !"cmpfunc"}
!1712 = distinct !{!1712, !1713, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E: argument 1"}
!1713 = distinct !{!1713, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E"}
!1714 = distinct !{!1714, !1715, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE: %b"}
!1715 = distinct !{!1715, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE"}
!1716 = distinct !{!1716, !1717, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h39566a3a48db5e7eE: %a"}
!1717 = distinct !{!1717, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h39566a3a48db5e7eE"}
!1718 = !{!1719, !1720, !1721, !1722, !1647}
!1719 = distinct !{!1719, !1711, !"cmpfunc: %a"}
!1720 = distinct !{!1720, !1713, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E: argument 0"}
!1721 = distinct !{!1721, !1715, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE: %a"}
!1722 = distinct !{!1722, !1717, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h39566a3a48db5e7eE: %b"}
!1723 = !{!1724, !1644}
!1724 = distinct !{!1724, !1725, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h01236de67256097eE: %self"}
!1725 = distinct !{!1725, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h01236de67256097eE"}
!1726 = !{!1727, !1729, !1731, !1733, !1644}
!1727 = distinct !{!1727, !1728, !"cmpfunc: %a"}
!1728 = distinct !{!1728, !"cmpfunc"}
!1729 = distinct !{!1729, !1730, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E: argument 0"}
!1730 = distinct !{!1730, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E"}
!1731 = distinct !{!1731, !1732, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE: %a"}
!1732 = distinct !{!1732, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE"}
!1733 = distinct !{!1733, !1734, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h39566a3a48db5e7eE: %b"}
!1734 = distinct !{!1734, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h39566a3a48db5e7eE"}
!1735 = !{!1736, !1737, !1738, !1739, !1647}
!1736 = distinct !{!1736, !1728, !"cmpfunc: %b"}
!1737 = distinct !{!1737, !1730, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E: argument 1"}
!1738 = distinct !{!1738, !1732, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE: %b"}
!1739 = distinct !{!1739, !1734, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h39566a3a48db5e7eE: %a"}
!1740 = !{!1739}
!1741 = !{!1733}
!1742 = !{!1731}
!1743 = !{!1738}
!1744 = !{!1729}
!1745 = !{!1737}
!1746 = !{!1727}
!1747 = !{!1736}
!1748 = !{!1736, !1737, !1738, !1739, !1644}
!1749 = !{!1727, !1729, !1731, !1733, !1647}
!1750 = !{!1751, !1644}
!1751 = distinct !{!1751, !1752, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h01236de67256097eE: %self"}
!1752 = distinct !{!1752, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h01236de67256097eE"}
!1753 = !{!1754, !1647}
!1754 = distinct !{!1754, !1755, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h01236de67256097eE: %self"}
!1755 = distinct !{!1755, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h01236de67256097eE"}
!1756 = !{!1754, !1644}
!1757 = !{!1644, !1647}
!1758 = distinct !{!1758, !690, !691}
!1759 = distinct !{!1759, !691, !690}
!1760 = distinct !{!1760, !1761}
!1761 = !{!"llvm.loop.unroll.disable"}
!1762 = !{!1763}
!1763 = distinct !{!1763, !1764, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17he39955fc0a7662c8E: %self.0"}
!1764 = distinct !{!1764, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17he39955fc0a7662c8E"}
!1765 = !{!1766, !1768, !1763}
!1766 = distinct !{!1766, !1767, !"_ZN5alloc5slice11stable_sort17h2408f1f7a15cf492E: %v.0"}
!1767 = distinct !{!1767, !"_ZN5alloc5slice11stable_sort17h2408f1f7a15cf492E"}
!1768 = distinct !{!1768, !1767, !"_ZN5alloc5slice11stable_sort17h2408f1f7a15cf492E: argument 1"}
!1769 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!1770 = distinct !{!1770, !1761}
!1771 = !{!1772}
!1772 = distinct !{!1772, !1773, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17ha5757a969bdcd180E: %self.0"}
!1773 = distinct !{!1773, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17ha5757a969bdcd180E"}
!1774 = !{!1775}
!1775 = distinct !{!1775, !1776, !"_ZN5alloc5slice11stable_sort17he8067e7d959b121eE: %v.0"}
!1776 = distinct !{!1776, !"_ZN5alloc5slice11stable_sort17he8067e7d959b121eE"}
!1777 = !{!1775, !1778, !1772}
!1778 = distinct !{!1778, !1776, !"_ZN5alloc5slice11stable_sort17he8067e7d959b121eE: argument 1"}
!1779 = !{!1780}
!1780 = distinct !{!1780, !1781, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE: %a"}
!1781 = distinct !{!1781, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE"}
!1782 = !{!1783}
!1783 = distinct !{!1783, !1781, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE: %b"}
!1784 = !{!1785}
!1785 = distinct !{!1785, !1786, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E: argument 0"}
!1786 = distinct !{!1786, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E"}
!1787 = !{!1788}
!1788 = distinct !{!1788, !1786, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E: argument 1"}
!1789 = !{!1790}
!1790 = distinct !{!1790, !1791, !"cmpfunc: %a"}
!1791 = distinct !{!1791, !"cmpfunc"}
!1792 = !{!1793}
!1793 = distinct !{!1793, !1791, !"cmpfunc: %b"}
!1794 = !{!1790, !1785, !1780, !1795, !1775, !1772}
!1795 = distinct !{!1795, !1796, !"_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h5f977776f06bfaeaE: %v.0"}
!1796 = distinct !{!1796, !"_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h5f977776f06bfaeaE"}
!1797 = !{!1793, !1788, !1783, !1778}
!1798 = !{!1793, !1788, !1783, !1795, !1775, !1772}
!1799 = !{!1790, !1785, !1780, !1778}
!1800 = !{!1795, !1775, !1772}
!1801 = !{!1778}
!1802 = !{!1803, !1805, !1807, !1795, !1775, !1772}
!1803 = distinct !{!1803, !1804, !"cmpfunc: %b"}
!1804 = distinct !{!1804, !"cmpfunc"}
!1805 = distinct !{!1805, !1806, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E: argument 1"}
!1806 = distinct !{!1806, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E"}
!1807 = distinct !{!1807, !1808, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE: %b"}
!1808 = distinct !{!1808, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE"}
!1809 = !{!1810, !1811, !1812, !1778}
!1810 = distinct !{!1810, !1804, !"cmpfunc: %a"}
!1811 = distinct !{!1811, !1806, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E: argument 0"}
!1812 = distinct !{!1812, !1808, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE: %a"}
!1813 = !{!1814, !1816, !1778}
!1814 = distinct !{!1814, !1815, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5b2ea97e29052f44E: %self"}
!1815 = distinct !{!1815, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5b2ea97e29052f44E"}
!1816 = distinct !{!1816, !1817, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h851a8ea1053b64d6E: %_1"}
!1817 = distinct !{!1817, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h851a8ea1053b64d6E"}
!1818 = !{!1819}
!1819 = distinct !{!1819, !1781, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE: %a:It1"}
!1820 = !{!1821}
!1821 = distinct !{!1821, !1781, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9029389ae6bbee1cE: %b:It1"}
!1822 = !{!1823}
!1823 = distinct !{!1823, !1786, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E: argument 0:It1"}
!1824 = !{!1825}
!1825 = distinct !{!1825, !1786, !"_ZN4core3ops8function5FnMut8call_mut17h412ae561fd2081f3E: argument 1:It1"}
!1826 = !{!1827}
!1827 = distinct !{!1827, !1791, !"cmpfunc: %a:It1"}
!1828 = !{!1829}
!1829 = distinct !{!1829, !1791, !"cmpfunc: %b:It1"}
!1830 = !{!1827, !1823, !1819, !1795, !1775, !1772}
!1831 = !{!1829, !1825, !1821, !1778}
!1832 = !{!1829, !1825, !1821, !1795, !1775, !1772}
!1833 = !{!1827, !1823, !1819, !1778}
