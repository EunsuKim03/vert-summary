; ModuleID = 'MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit.a7d3a1af41263022-cgu.0'
source_filename = "MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit.a7d3a1af41263022-cgu.0"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@alloc_d1084648e479974e70c9329824bf76f9 = private unnamed_addr constant [9 x i8] c"mid > len", align 1
@alloc_e8e5fd9f509afcb950667480b3e3e42a = private unnamed_addr constant [126 x i8] c"/root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/sort/stable/quicksort.rs\00", align 1
@alloc_58d434a1e795f965ef82c8e9c5db822a = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_e8e5fd9f509afcb950667480b3e3e42a, [16 x i8] c"}\00\00\00\00\00\00\00J\00\00\00\1F\00\00\00" }>, align 8
@alloc_0766b232215672ee1bd2195fdb153938 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_e8e5fd9f509afcb950667480b3e3e42a, [16 x i8] c"}\00\00\00\00\00\00\00D\00\00\00\17\00\00\00" }>, align 8
@alloc_9215f911aeb0d3af873020bdc2d59fdd = private unnamed_addr constant [147 x i8] c"/root/es/vert/vert/rust_funcs/c_transcoder/MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1/MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit.rs\00", align 1
@alloc_622d794692a7bb5656187ee0c7bf9126 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_9215f911aeb0d3af873020bdc2d59fdd, [16 x i8] c"\92\00\00\00\00\00\00\00\18\00\00\00)\00\00\00" }>, align 8
@alloc_a888afa70f62cbbe941a5c2c83b11dec = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_9215f911aeb0d3af873020bdc2d59fdd, [16 x i8] c"\92\00\00\00\00\00\00\00\22\00\00\00\08\00\00\00" }>, align 8
@alloc_4e065a0e36838e60d799892552699aab = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_9215f911aeb0d3af873020bdc2d59fdd, [16 x i8] c"\92\00\00\00\00\00\00\00\22\00\00\00\1F\00\00\00" }>, align 8
@alloc_36f08aea09421b3da751b6aae8c9f1a7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_9215f911aeb0d3af873020bdc2d59fdd, [16 x i8] c"\92\00\00\00\00\00\00\00\1B\00\00\00\0C\00\00\00" }>, align 8
@alloc_7744f69448cabd925a11a812c34ee3ab = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_9215f911aeb0d3af873020bdc2d59fdd, [16 x i8] c"\92\00\00\00\00\00\00\00\1B\00\00\00\16\00\00\00" }>, align 8

; core::slice::sort::shared::pivot::median3_rec
; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h0bfb6bddbb79f797E(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i64 noundef range(i64 0, 288230376151711744) %n) unnamed_addr #0 {
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
  %3 = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h0bfb6bddbb79f797E(ptr noundef %0, ptr noundef %_10, ptr noundef %_13, i64 noundef %n84)
  %_16 = getelementptr inbounds nuw float, ptr %1, i64 %count
  %_18 = getelementptr inbounds nuw float, ptr %1, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %4 = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h0bfb6bddbb79f797E(ptr noundef %1, ptr noundef %_16, ptr noundef %_18, i64 noundef %n84)
  %_20 = getelementptr inbounds nuw float, ptr %2, i64 %count
  %_22 = getelementptr inbounds nuw float, ptr %2, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %5 = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h0bfb6bddbb79f797E(ptr noundef %2, ptr noundef %_20, ptr noundef %_22, i64 noundef %n84)
  br label %bb6

bb6:                                              ; preds = %start, %bb1
  %c.sroa.0.0 = phi ptr [ %5, %bb1 ], [ %2, %start ]
  %b.sroa.0.0 = phi ptr [ %4, %bb1 ], [ %1, %start ]
  %a.sroa.0.0 = phi ptr [ %3, %bb1 ], [ %0, %start ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8), !noalias !11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14), !noalias !11
  %_6.i.i = load float, ptr %a.sroa.0.0, align 4, !alias.scope !16, !noalias !17, !noundef !18
  %_7.i.i = load float, ptr %b.sroa.0.0, align 4, !alias.scope !19, !noalias !20, !noundef !18
  %brmerge.not.i = fcmp uno float %_6.i.i, %_7.i.i
  br i1 %brmerge.not.i, label %bb6.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit", !prof !21

bb6.i.i:                                          ; preds = %bb6
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_622d794692a7bb5656187ee0c7bf9126) #18, !noalias !22
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit": ; preds = %bb6
  %_8.i.mux.i = fcmp olt float %_6.i.i, %_7.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26)
  %_7.i.i6 = load float, ptr %c.sroa.0.0, align 4, !alias.scope !29, !noalias !30, !noundef !18
  %brmerge.not.i7 = fcmp uno float %_6.i.i, %_7.i.i6
  br i1 %brmerge.not.i7, label %bb6.i.i9, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit10", !prof !21

bb6.i.i9:                                         ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit"
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_622d794692a7bb5656187ee0c7bf9126) #18, !noalias !33
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit10": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit"
  %_8.i.mux.i8 = fcmp olt float %_6.i.i, %_7.i.i6
  %6 = xor i1 %_8.i.mux.i, %_8.i.mux.i8
  br i1 %6, label %_ZN4core5slice4sort6shared5pivot7median317he64b779e7bd549dfE.exit, label %bb3.i

bb3.i:                                            ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit10"
  %brmerge.not.i13 = fcmp uno float %_7.i.i, %_7.i.i6
  br i1 %brmerge.not.i13, label %bb6.i.i15, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit16", !prof !21

bb6.i.i15:                                        ; preds = %bb3.i
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_622d794692a7bb5656187ee0c7bf9126) #18, !noalias !34
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit16": ; preds = %bb3.i
  %_8.i.mux.i14 = fcmp olt float %_7.i.i, %_7.i.i6
  %_12.i = xor i1 %_8.i.mux.i, %_8.i.mux.i14
  %c.b.i = select i1 %_12.i, ptr %c.sroa.0.0, ptr %b.sroa.0.0
  br label %_ZN4core5slice4sort6shared5pivot7median317he64b779e7bd549dfE.exit

_ZN4core5slice4sort6shared5pivot7median317he64b779e7bd549dfE.exit: ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit10", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit16"
  %_0.sroa.0.0.i = phi ptr [ %a.sroa.0.0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit10" ], [ %c.b.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit16" ]
  ret ptr %_0.sroa.0.0.i
}

; core::slice::sort::shared::pivot::median3_rec
; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite) uwtable
define internal fastcc noundef nonnull ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h625f0c23127a197cE(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i64 noundef range(i64 0, 288230376151711744) %n) unnamed_addr #1 {
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
  %3 = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h625f0c23127a197cE(ptr noundef %0, ptr noundef %_10, ptr noundef %_13, i64 noundef %n84)
  %_16 = getelementptr inbounds nuw i32, ptr %1, i64 %count
  %_18 = getelementptr inbounds nuw i32, ptr %1, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %4 = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h625f0c23127a197cE(ptr noundef %1, ptr noundef %_16, ptr noundef %_18, i64 noundef %n84)
  %_20 = getelementptr inbounds nuw i32, ptr %2, i64 %count
  %_22 = getelementptr inbounds nuw i32, ptr %2, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %5 = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h625f0c23127a197cE(ptr noundef %2, ptr noundef %_20, ptr noundef %_22, i64 noundef %n84)
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
define internal fastcc void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17hb4592272b39e3420E(ptr noundef nonnull readonly captures(none) %v_base, ptr noundef nonnull writeonly captures(none) %dst) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %_7 = getelementptr inbounds nuw i8, ptr %v_base, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82)
  %_6.i.i = load float, ptr %_7, align 4, !alias.scope !84, !noalias !85, !noundef !18
  %_7.i.i = load float, ptr %v_base, align 4, !alias.scope !85, !noalias !84, !noundef !18
  %brmerge.not.i = fcmp uno float %_6.i.i, %_7.i.i
  br i1 %brmerge.not.i, label %bb6.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit", !prof !21

bb6.i.i:                                          ; preds = %start
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_622d794692a7bb5656187ee0c7bf9126) #18, !noalias !86
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit": ; preds = %start
  %_12 = getelementptr inbounds nuw i8, ptr %v_base, i64 12
  %_14 = getelementptr inbounds nuw i8, ptr %v_base, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !87)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95)
  %_6.i.i7 = load float, ptr %_12, align 4, !alias.scope !97, !noalias !98, !noundef !18
  %_7.i.i8 = load float, ptr %_14, align 4, !alias.scope !98, !noalias !97, !noundef !18
  %brmerge.not.i9 = fcmp uno float %_6.i.i7, %_7.i.i8
  br i1 %brmerge.not.i9, label %bb6.i.i11, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit12", !prof !21

bb6.i.i11:                                        ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit"
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_622d794692a7bb5656187ee0c7bf9126) #18, !noalias !99
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit12": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit"
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
  %_6.i.i13 = load float, ptr %c, align 4, !alias.scope !110, !noalias !111, !noundef !18
  %_7.i.i14 = load float, ptr %a, align 4, !alias.scope !111, !noalias !110, !noundef !18
  %brmerge.not.i15 = fcmp uno float %_6.i.i13, %_7.i.i14
  br i1 %brmerge.not.i15, label %bb6.i.i17, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit18", !prof !21

bb6.i.i17:                                        ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit12"
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_622d794692a7bb5656187ee0c7bf9126) #18, !noalias !112
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit18": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit12"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !113)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !118)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !121)
  %_6.i.i19 = load float, ptr %d, align 4, !alias.scope !123, !noalias !124, !noundef !18
  %_7.i.i20 = load float, ptr %b, align 4, !alias.scope !124, !noalias !123, !noundef !18
  %brmerge.not.i21 = fcmp uno float %_6.i.i19, %_7.i.i20
  br i1 %brmerge.not.i21, label %bb6.i.i23, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit24", !prof !21

bb6.i.i23:                                        ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit18"
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_622d794692a7bb5656187ee0c7bf9126) #18, !noalias !125
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit24": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit18"
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
  %_6.i.i25 = load float, ptr %3, align 4, !alias.scope !136, !noalias !137, !noundef !18
  %_7.i.i26 = load float, ptr %1, align 4, !alias.scope !137, !noalias !136, !noundef !18
  %brmerge.not.i27 = fcmp uno float %_6.i.i25, %_7.i.i26
  br i1 %brmerge.not.i27, label %bb6.i.i29, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit30", !prof !21

bb6.i.i29:                                        ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit24"
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_622d794692a7bb5656187ee0c7bf9126) #18, !noalias !138
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit30": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit24"
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
define internal fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h21273b9460c2a4e1E(ptr noundef nonnull readonly captures(none) %v_base, ptr noundef nonnull writeonly captures(none) %dst, ptr noundef nonnull captures(address) %scratch_base) unnamed_addr #0 {
start:
; call core::slice::sort::shared::smallsort::sort4_stable
  tail call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17hb4592272b39e3420E(ptr noundef %v_base, ptr noundef %scratch_base)
  %_9 = getelementptr inbounds nuw i8, ptr %v_base, i64 16
  %_10 = getelementptr inbounds nuw i8, ptr %scratch_base, i64 16
; call core::slice::sort::shared::smallsort::sort4_stable
  tail call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17hb4592272b39e3420E(ptr noundef %_9, ptr noundef %_10)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !139)
  %0 = getelementptr inbounds nuw i8, ptr %dst, i64 28
  %1 = getelementptr inbounds nuw i8, ptr %scratch_base, i64 28
  %2 = getelementptr i8, ptr %scratch_base, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !142)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !145)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !147), !noalias !150
  tail call void @llvm.experimental.noalias.scope.decl(metadata !153), !noalias !150
  %_6.i.i.i = load float, ptr %_10, align 4, !alias.scope !155, !noalias !156, !noundef !18
  %_7.i.i.i = load float, ptr %scratch_base, align 4, !alias.scope !157, !noalias !158, !noundef !18
  %brmerge.not.i.i = fcmp uno float %_6.i.i.i, %_7.i.i.i
  br i1 %brmerge.not.i.i, label %bb6.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit.i", !prof !21

bb6.i.i.i:                                        ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit24.i.2", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit24.i.1", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit24.i", %start
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_622d794692a7bb5656187ee0c7bf9126) #18, !noalias !159
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit.i": ; preds = %start
  %_8.i.mux.i.i = fcmp olt float %_6.i.i.i, %_7.i.i.i
  %..i17.i = select i1 %_8.i.mux.i.i, ptr %_10, ptr %scratch_base
  %3 = load i32, ptr %..i17.i, align 4, !alias.scope !139, !noalias !160
  store i32 %3, ptr %dst, align 4, !noalias !162
  tail call void @llvm.experimental.noalias.scope.decl(metadata !163)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !166)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !168), !noalias !171
  tail call void @llvm.experimental.noalias.scope.decl(metadata !174), !noalias !171
  %_6.i.i19.i = load float, ptr %1, align 4, !alias.scope !176, !noalias !177, !noundef !18
  %_7.i.i20.i = load float, ptr %2, align 4, !alias.scope !178, !noalias !179, !noundef !18
  %brmerge.not.i21.i = fcmp uno float %_6.i.i19.i, %_7.i.i20.i
  br i1 %brmerge.not.i21.i, label %bb6.i.i23.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit24.i", !prof !21

bb6.i.i23.i:                                      ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit.i.3", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit.i.2", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit.i.1", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit.i"
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_622d794692a7bb5656187ee0c7bf9126) #18, !noalias !180
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit24.i": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit.i"
  %is_l.i18.i = xor i1 %_8.i.mux.i.i, true
  %count2.i.i = zext i1 %is_l.i18.i to i64
  %_14.i.i = getelementptr inbounds nuw float, ptr %scratch_base, i64 %count2.i.i
  %count.i.i = zext i1 %_8.i.mux.i.i to i64
  %_12.i.i = getelementptr inbounds nuw float, ptr %_10, i64 %count.i.i
  %_8.i.mux.i22.i = fcmp olt float %_6.i.i19.i, %_7.i.i20.i
  %..i.i = select i1 %_8.i.mux.i22.i, ptr %2, ptr %1
  %is_l.i.i = xor i1 %_8.i.mux.i22.i, true
  %4 = load i32, ptr %..i.i, align 4, !alias.scope !139, !noalias !181
  store i32 %4, ptr %0, align 4, !noalias !183
  %count.neg.i.i = sext i1 %is_l.i.i to i64
  %5 = getelementptr float, ptr %1, i64 %count.neg.i.i
  %count3.neg.i.i = sext i1 %_8.i.mux.i22.i to i64
  %6 = getelementptr float, ptr %2, i64 %count3.neg.i.i
  %7 = getelementptr inbounds nuw i8, ptr %dst, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !184)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !188), !noalias !150
  tail call void @llvm.experimental.noalias.scope.decl(metadata !190), !noalias !150
  %_6.i.i.i.1 = load float, ptr %_12.i.i, align 4, !alias.scope !192, !noalias !193, !noundef !18
  %_7.i.i.i.1 = load float, ptr %_14.i.i, align 4, !alias.scope !194, !noalias !195, !noundef !18
  %brmerge.not.i.i.1 = fcmp uno float %_6.i.i.i.1, %_7.i.i.i.1
  br i1 %brmerge.not.i.i.1, label %bb6.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit.i.1", !prof !21

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit.i.1": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit24.i"
  %_16.i.i = getelementptr inbounds nuw i8, ptr %dst, i64 4
  %_8.i.mux.i.i.1 = fcmp olt float %_6.i.i.i.1, %_7.i.i.i.1
  %..i17.i.1 = select i1 %_8.i.mux.i.i.1, ptr %_12.i.i, ptr %_14.i.i
  %8 = load i32, ptr %..i17.i.1, align 4, !alias.scope !139, !noalias !160
  store i32 %8, ptr %_16.i.i, align 4, !noalias !162
  tail call void @llvm.experimental.noalias.scope.decl(metadata !196)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !198)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !200), !noalias !171
  tail call void @llvm.experimental.noalias.scope.decl(metadata !202), !noalias !171
  %_6.i.i19.i.1 = load float, ptr %5, align 4, !alias.scope !204, !noalias !205, !noundef !18
  %_7.i.i20.i.1 = load float, ptr %6, align 4, !alias.scope !206, !noalias !207, !noundef !18
  %brmerge.not.i21.i.1 = fcmp uno float %_6.i.i19.i.1, %_7.i.i20.i.1
  br i1 %brmerge.not.i21.i.1, label %bb6.i.i23.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit24.i.1", !prof !21

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit24.i.1": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit.i.1"
  %is_l.i18.i.1 = xor i1 %_8.i.mux.i.i.1, true
  %count2.i.i.1 = zext i1 %is_l.i18.i.1 to i64
  %_14.i.i.1 = getelementptr inbounds nuw float, ptr %_14.i.i, i64 %count2.i.i.1
  %count.i.i.1 = zext i1 %_8.i.mux.i.i.1 to i64
  %_12.i.i.1 = getelementptr inbounds nuw float, ptr %_12.i.i, i64 %count.i.i.1
  %_8.i.mux.i22.i.1 = fcmp olt float %_6.i.i19.i.1, %_7.i.i20.i.1
  %..i.i.1 = select i1 %_8.i.mux.i22.i.1, ptr %6, ptr %5
  %is_l.i.i.1 = xor i1 %_8.i.mux.i22.i.1, true
  %9 = load i32, ptr %..i.i.1, align 4, !alias.scope !139, !noalias !181
  store i32 %9, ptr %7, align 4, !noalias !183
  %count.neg.i.i.1 = sext i1 %is_l.i.i.1 to i64
  %10 = getelementptr float, ptr %5, i64 %count.neg.i.i.1
  %count3.neg.i.i.1 = sext i1 %_8.i.mux.i22.i.1 to i64
  %11 = getelementptr float, ptr %6, i64 %count3.neg.i.i.1
  %12 = getelementptr inbounds nuw i8, ptr %dst, i64 20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !208)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !210)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !212), !noalias !150
  tail call void @llvm.experimental.noalias.scope.decl(metadata !214), !noalias !150
  %_6.i.i.i.2 = load float, ptr %_12.i.i.1, align 4, !alias.scope !216, !noalias !217, !noundef !18
  %_7.i.i.i.2 = load float, ptr %_14.i.i.1, align 4, !alias.scope !218, !noalias !219, !noundef !18
  %brmerge.not.i.i.2 = fcmp uno float %_6.i.i.i.2, %_7.i.i.i.2
  br i1 %brmerge.not.i.i.2, label %bb6.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit.i.2", !prof !21

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit.i.2": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit24.i.1"
  %_16.i.i.1 = getelementptr inbounds nuw i8, ptr %dst, i64 8
  %_8.i.mux.i.i.2 = fcmp olt float %_6.i.i.i.2, %_7.i.i.i.2
  %..i17.i.2 = select i1 %_8.i.mux.i.i.2, ptr %_12.i.i.1, ptr %_14.i.i.1
  %13 = load i32, ptr %..i17.i.2, align 4, !alias.scope !139, !noalias !160
  store i32 %13, ptr %_16.i.i.1, align 4, !noalias !162
  tail call void @llvm.experimental.noalias.scope.decl(metadata !220)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !222)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !224), !noalias !171
  tail call void @llvm.experimental.noalias.scope.decl(metadata !226), !noalias !171
  %_6.i.i19.i.2 = load float, ptr %10, align 4, !alias.scope !228, !noalias !229, !noundef !18
  %_7.i.i20.i.2 = load float, ptr %11, align 4, !alias.scope !230, !noalias !231, !noundef !18
  %brmerge.not.i21.i.2 = fcmp uno float %_6.i.i19.i.2, %_7.i.i20.i.2
  br i1 %brmerge.not.i21.i.2, label %bb6.i.i23.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit24.i.2", !prof !21

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit24.i.2": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit.i.2"
  %is_l.i18.i.2 = xor i1 %_8.i.mux.i.i.2, true
  %count2.i.i.2 = zext i1 %is_l.i18.i.2 to i64
  %_14.i.i.2 = getelementptr inbounds nuw float, ptr %_14.i.i.1, i64 %count2.i.i.2
  %count.i.i.2 = zext i1 %_8.i.mux.i.i.2 to i64
  %_12.i.i.2 = getelementptr inbounds nuw float, ptr %_12.i.i.1, i64 %count.i.i.2
  %_8.i.mux.i22.i.2 = fcmp olt float %_6.i.i19.i.2, %_7.i.i20.i.2
  %..i.i.2 = select i1 %_8.i.mux.i22.i.2, ptr %11, ptr %10
  %is_l.i.i.2 = xor i1 %_8.i.mux.i22.i.2, true
  %14 = load i32, ptr %..i.i.2, align 4, !alias.scope !139, !noalias !181
  store i32 %14, ptr %12, align 4, !noalias !183
  %count.neg.i.i.2 = sext i1 %is_l.i.i.2 to i64
  %15 = getelementptr float, ptr %10, i64 %count.neg.i.i.2
  %count3.neg.i.i.2 = sext i1 %_8.i.mux.i22.i.2 to i64
  %16 = getelementptr float, ptr %11, i64 %count3.neg.i.i.2
  %17 = getelementptr inbounds nuw i8, ptr %dst, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !232)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !234)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !236), !noalias !150
  tail call void @llvm.experimental.noalias.scope.decl(metadata !238), !noalias !150
  %_6.i.i.i.3 = load float, ptr %_12.i.i.2, align 4, !alias.scope !240, !noalias !241, !noundef !18
  %_7.i.i.i.3 = load float, ptr %_14.i.i.2, align 4, !alias.scope !242, !noalias !243, !noundef !18
  %brmerge.not.i.i.3 = fcmp uno float %_6.i.i.i.3, %_7.i.i.i.3
  br i1 %brmerge.not.i.i.3, label %bb6.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit.i.3", !prof !21

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit.i.3": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit24.i.2"
  %_16.i.i.2 = getelementptr inbounds nuw i8, ptr %dst, i64 12
  %_8.i.mux.i.i.3 = fcmp olt float %_6.i.i.i.3, %_7.i.i.i.3
  %..i17.i.3 = select i1 %_8.i.mux.i.i.3, ptr %_12.i.i.2, ptr %_14.i.i.2
  %18 = load i32, ptr %..i17.i.3, align 4, !alias.scope !139, !noalias !160
  store i32 %18, ptr %_16.i.i.2, align 4, !noalias !162
  tail call void @llvm.experimental.noalias.scope.decl(metadata !244)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !246)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !248), !noalias !171
  tail call void @llvm.experimental.noalias.scope.decl(metadata !250), !noalias !171
  %_6.i.i19.i.3 = load float, ptr %15, align 4, !alias.scope !252, !noalias !253, !noundef !18
  %_7.i.i20.i.3 = load float, ptr %16, align 4, !alias.scope !254, !noalias !255, !noundef !18
  %brmerge.not.i21.i.3 = fcmp uno float %_6.i.i19.i.3, %_7.i.i20.i.3
  br i1 %brmerge.not.i21.i.3, label %bb6.i.i23.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit24.i.3", !prof !21

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit24.i.3": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit.i.3"
  %is_l.i18.i.3 = xor i1 %_8.i.mux.i.i.3, true
  %count2.i.i.3 = zext i1 %is_l.i18.i.3 to i64
  %_14.i.i.3 = getelementptr inbounds nuw float, ptr %_14.i.i.2, i64 %count2.i.i.3
  %count.i.i.3 = zext i1 %_8.i.mux.i.i.3 to i64
  %_12.i.i.3 = getelementptr inbounds nuw float, ptr %_12.i.i.2, i64 %count.i.i.3
  %_8.i.mux.i22.i.3 = fcmp olt float %_6.i.i19.i.3, %_7.i.i20.i.3
  %..i.i.3 = select i1 %_8.i.mux.i22.i.3, ptr %16, ptr %15
  %is_l.i.i.3 = xor i1 %_8.i.mux.i22.i.3, true
  %19 = load i32, ptr %..i.i.3, align 4, !alias.scope !139, !noalias !181
  store i32 %19, ptr %17, align 4, !noalias !183
  %count.neg.i.i.3 = sext i1 %is_l.i.i.3 to i64
  %20 = getelementptr float, ptr %15, i64 %count.neg.i.i.3
  %count3.neg.i.i.3 = sext i1 %_8.i.mux.i22.i.3 to i64
  %21 = getelementptr float, ptr %16, i64 %count3.neg.i.i.3
  %22 = getelementptr i8, ptr %21, i64 4
  %23 = getelementptr i8, ptr %20, i64 4
  %_31.i = icmp ne ptr %_14.i.i.3, %22
  %_32.i = icmp ne ptr %_12.i.i.3, %23
  %or.cond.i = select i1 %_31.i, i1 true, i1 %_32.i
  br i1 %or.cond.i, label %bb13.i, label %_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hdd59a7129bf6f32dE.exit, !prof !256

bb13.i:                                           ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit24.i.3"
; call core::slice::sort::shared::smallsort::panic_on_ord_violation
  tail call void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #18, !noalias !139
  unreachable

_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hdd59a7129bf6f32dE.exit: ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit24.i.3"
  ret void
}

; core::slice::sort::shared::smallsort::sort8_stable
; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h800940d7f1afdfbbE(ptr noundef nonnull readonly captures(none) %v_base, ptr noundef nonnull writeonly captures(none) initializes((0, 32)) %dst, ptr noundef nonnull captures(address) initializes((0, 32)) %scratch_base) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %_7.i = getelementptr inbounds nuw i8, ptr %v_base, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !257)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !260)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !262)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !265)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !267)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !270)
  %_3.i.i.i.i = load i32, ptr %_7.i, align 4, !alias.scope !272, !noalias !273, !noundef !18
  %_4.i.i.i.i = load i32, ptr %v_base, align 4, !alias.scope !273, !noalias !272, !noundef !18
  %_0.i.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %_12.i = getelementptr inbounds nuw i8, ptr %v_base, i64 12
  %_14.i = getelementptr inbounds nuw i8, ptr %v_base, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !274)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !277)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !279)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !282)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !284)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !287)
  %_3.i.i.i7.i = load i32, ptr %_12.i, align 4, !alias.scope !289, !noalias !290, !noundef !18
  %_4.i.i.i8.i = load i32, ptr %_14.i, align 4, !alias.scope !290, !noalias !289, !noundef !18
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !291)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !294)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !296)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !299)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !301)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !304)
  %_3.i.i.i10.i = load i32, ptr %c.i, align 4, !alias.scope !306, !noalias !307, !noundef !18
  %_4.i.i.i11.i = load i32, ptr %a.i, align 4, !alias.scope !307, !noalias !306, !noundef !18
  %_0.i12.i = icmp slt i32 %_3.i.i.i10.i, %_4.i.i.i11.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !308)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !311)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !313)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !316)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !318)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !321)
  %_3.i.i.i13.i = load i32, ptr %d.i, align 4, !alias.scope !323, !noalias !324, !noundef !18
  %_4.i.i.i14.i = load i32, ptr %b.i, align 4, !alias.scope !324, !noalias !323, !noundef !18
  %_0.i15.i = icmp slt i32 %_3.i.i.i13.i, %_4.i.i.i14.i
  %0 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i10.i, i32 %_4.i.i.i11.i)
  %1 = select i1 %_0.i15.i, ptr %c.i, ptr %b.i, !unpredictable !18
  %2 = select i1 %_0.i12.i, ptr %a.i, ptr %1, !unpredictable !18
  %3 = select i1 %_0.i12.i, ptr %b.i, ptr %c.i, !unpredictable !18
  %4 = select i1 %_0.i15.i, ptr %d.i, ptr %3, !unpredictable !18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !325)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !328)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !330)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !333)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !335)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !338)
  %_3.i.i.i16.i = load i32, ptr %4, align 4, !alias.scope !340, !noalias !341, !noundef !18
  %_4.i.i.i17.i = load i32, ptr %2, align 4, !alias.scope !341, !noalias !340, !noundef !18
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !342)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !345)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !347)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !350)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !352)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !355)
  %_3.i.i.i.i2 = load i32, ptr %_7.i1, align 4, !alias.scope !357, !noalias !358, !noundef !18
  %_4.i.i.i.i3 = load i32, ptr %_9, align 4, !alias.scope !358, !noalias !357, !noundef !18
  %_0.i.i4 = icmp slt i32 %_3.i.i.i.i2, %_4.i.i.i.i3
  %_12.i5 = getelementptr inbounds nuw i8, ptr %v_base, i64 28
  %_14.i6 = getelementptr inbounds nuw i8, ptr %v_base, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !359)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !362)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !364)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !367)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !369)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !372)
  %_3.i.i.i7.i7 = load i32, ptr %_12.i5, align 4, !alias.scope !374, !noalias !375, !noundef !18
  %_4.i.i.i8.i8 = load i32, ptr %_14.i6, align 4, !alias.scope !375, !noalias !374, !noundef !18
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !376)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !379)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !381)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !384)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !386)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !389)
  %_3.i.i.i10.i19 = load i32, ptr %c.i16, align 4, !alias.scope !391, !noalias !392, !noundef !18
  %_4.i.i.i11.i20 = load i32, ptr %a.i11, align 4, !alias.scope !392, !noalias !391, !noundef !18
  %_0.i12.i21 = icmp slt i32 %_3.i.i.i10.i19, %_4.i.i.i11.i20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !393)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !396)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !398)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !401)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !403)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !406)
  %_3.i.i.i13.i22 = load i32, ptr %d.i18, align 4, !alias.scope !408, !noalias !409, !noundef !18
  %_4.i.i.i14.i23 = load i32, ptr %b.i14, align 4, !alias.scope !409, !noalias !408, !noundef !18
  %_0.i15.i24 = icmp slt i32 %_3.i.i.i13.i22, %_4.i.i.i14.i23
  %9 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i10.i19, i32 %_4.i.i.i11.i20)
  %10 = select i1 %_0.i15.i24, ptr %c.i16, ptr %b.i14, !unpredictable !18
  %11 = select i1 %_0.i12.i21, ptr %a.i11, ptr %10, !unpredictable !18
  %12 = select i1 %_0.i12.i21, ptr %b.i14, ptr %c.i16, !unpredictable !18
  %13 = select i1 %_0.i15.i24, ptr %d.i18, ptr %12, !unpredictable !18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !410)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !413)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !415)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !418)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !420)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !423)
  %_3.i.i.i16.i25 = load i32, ptr %13, align 4, !alias.scope !425, !noalias !426, !noundef !18
  %_4.i.i.i17.i26 = load i32, ptr %11, align 4, !alias.scope !426, !noalias !425, !noundef !18
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !427)
  %18 = getelementptr inbounds nuw i8, ptr %dst, i64 28
  %_4.i.i.i.i37 = load i32, ptr %scratch_base, align 4, !alias.scope !430, !noalias !437, !noundef !18
  %_0.i.i38 = icmp slt i32 %9, %_4.i.i.i.i37
  %is_l.i18.i = xor i1 %_0.i.i38, true
  %19 = tail call i32 @llvm.smin.i32(i32 %9, i32 %_4.i.i.i.i37)
  store i32 %19, ptr %dst, align 4, !noalias !443
  %count.i.i = zext i1 %_0.i.i38 to i64
  %_12.i.i = getelementptr inbounds nuw i32, ptr %_10, i64 %count.i.i
  %count2.i.i = zext i1 %is_l.i18.i to i64
  %_14.i.i = getelementptr inbounds nuw i32, ptr %scratch_base, i64 %count2.i.i
  %_16.i.i = getelementptr inbounds nuw i8, ptr %dst, i64 4
  %_4.i.i.i20.i = load i32, ptr %7, align 4, !alias.scope !445, !noalias !452, !noundef !18
  %_0.i21.i = icmp slt i32 %17, %_4.i.i.i20.i
  %is_l.i.i = xor i1 %_0.i21.i, true
  %20 = tail call i32 @llvm.smax.i32(i32 %17, i32 %_4.i.i.i20.i)
  store i32 %20, ptr %18, align 4, !noalias !458
  %count.neg.i.i = sext i1 %is_l.i.i to i64
  %21 = getelementptr i32, ptr %16, i64 %count.neg.i.i
  %count3.neg.i.i = sext i1 %_0.i21.i to i64
  %22 = getelementptr i32, ptr %7, i64 %count3.neg.i.i
  %23 = getelementptr inbounds nuw i8, ptr %dst, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !460)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !462)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !464), !noalias !466
  tail call void @llvm.experimental.noalias.scope.decl(metadata !467), !noalias !466
  tail call void @llvm.experimental.noalias.scope.decl(metadata !469), !noalias !466
  tail call void @llvm.experimental.noalias.scope.decl(metadata !471), !noalias !466
  %_3.i.i.i.i36.1 = load i32, ptr %_12.i.i, align 4, !alias.scope !473, !noalias !474, !noundef !18
  %_4.i.i.i.i37.1 = load i32, ptr %_14.i.i, align 4, !alias.scope !475, !noalias !476, !noundef !18
  %_0.i.i38.1 = icmp slt i32 %_3.i.i.i.i36.1, %_4.i.i.i.i37.1
  %is_l.i18.i.1 = xor i1 %_0.i.i38.1, true
  %24 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i36.1, i32 %_4.i.i.i.i37.1)
  store i32 %24, ptr %_16.i.i, align 4, !noalias !443
  %count.i.i.1 = zext i1 %_0.i.i38.1 to i64
  %_12.i.i.1 = getelementptr inbounds nuw i32, ptr %_12.i.i, i64 %count.i.i.1
  %count2.i.i.1 = zext i1 %is_l.i18.i.1 to i64
  %_14.i.i.1 = getelementptr inbounds nuw i32, ptr %_14.i.i, i64 %count2.i.i.1
  %_16.i.i.1 = getelementptr inbounds nuw i8, ptr %dst, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !477)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !479)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !481), !noalias !483
  tail call void @llvm.experimental.noalias.scope.decl(metadata !484), !noalias !483
  tail call void @llvm.experimental.noalias.scope.decl(metadata !486), !noalias !483
  tail call void @llvm.experimental.noalias.scope.decl(metadata !488), !noalias !483
  %_3.i.i.i19.i.1 = load i32, ptr %21, align 4, !alias.scope !490, !noalias !491, !noundef !18
  %_4.i.i.i20.i.1 = load i32, ptr %22, align 4, !alias.scope !492, !noalias !493, !noundef !18
  %_0.i21.i.1 = icmp slt i32 %_3.i.i.i19.i.1, %_4.i.i.i20.i.1
  %is_l.i.i.1 = xor i1 %_0.i21.i.1, true
  %25 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i19.i.1, i32 %_4.i.i.i20.i.1)
  store i32 %25, ptr %23, align 4, !noalias !458
  %count.neg.i.i.1 = sext i1 %is_l.i.i.1 to i64
  %26 = getelementptr i32, ptr %21, i64 %count.neg.i.i.1
  %count3.neg.i.i.1 = sext i1 %_0.i21.i.1 to i64
  %27 = getelementptr i32, ptr %22, i64 %count3.neg.i.i.1
  %28 = getelementptr inbounds nuw i8, ptr %dst, i64 20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !494)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !498), !noalias !466
  tail call void @llvm.experimental.noalias.scope.decl(metadata !500), !noalias !466
  tail call void @llvm.experimental.noalias.scope.decl(metadata !502), !noalias !466
  tail call void @llvm.experimental.noalias.scope.decl(metadata !504), !noalias !466
  %_3.i.i.i.i36.2 = load i32, ptr %_12.i.i.1, align 4, !alias.scope !506, !noalias !507, !noundef !18
  %_4.i.i.i.i37.2 = load i32, ptr %_14.i.i.1, align 4, !alias.scope !508, !noalias !509, !noundef !18
  %_0.i.i38.2 = icmp slt i32 %_3.i.i.i.i36.2, %_4.i.i.i.i37.2
  %is_l.i18.i.2 = xor i1 %_0.i.i38.2, true
  %29 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i36.2, i32 %_4.i.i.i.i37.2)
  store i32 %29, ptr %_16.i.i.1, align 4, !noalias !443
  %count.i.i.2 = zext i1 %_0.i.i38.2 to i64
  %_12.i.i.2 = getelementptr inbounds nuw i32, ptr %_12.i.i.1, i64 %count.i.i.2
  %count2.i.i.2 = zext i1 %is_l.i18.i.2 to i64
  %_14.i.i.2 = getelementptr inbounds nuw i32, ptr %_14.i.i.1, i64 %count2.i.i.2
  %_16.i.i.2 = getelementptr inbounds nuw i8, ptr %dst, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !510)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !512)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !514), !noalias !483
  tail call void @llvm.experimental.noalias.scope.decl(metadata !516), !noalias !483
  tail call void @llvm.experimental.noalias.scope.decl(metadata !518), !noalias !483
  tail call void @llvm.experimental.noalias.scope.decl(metadata !520), !noalias !483
  %_3.i.i.i19.i.2 = load i32, ptr %26, align 4, !alias.scope !522, !noalias !523, !noundef !18
  %_4.i.i.i20.i.2 = load i32, ptr %27, align 4, !alias.scope !524, !noalias !525, !noundef !18
  %_0.i21.i.2 = icmp slt i32 %_3.i.i.i19.i.2, %_4.i.i.i20.i.2
  %is_l.i.i.2 = xor i1 %_0.i21.i.2, true
  %30 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i19.i.2, i32 %_4.i.i.i20.i.2)
  store i32 %30, ptr %28, align 4, !noalias !458
  %count.neg.i.i.2 = sext i1 %is_l.i.i.2 to i64
  %31 = getelementptr i32, ptr %26, i64 %count.neg.i.i.2
  %count3.neg.i.i.2 = sext i1 %_0.i21.i.2 to i64
  %32 = getelementptr i32, ptr %27, i64 %count3.neg.i.i.2
  %33 = getelementptr inbounds nuw i8, ptr %dst, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !526)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !528)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !530), !noalias !466
  tail call void @llvm.experimental.noalias.scope.decl(metadata !532), !noalias !466
  tail call void @llvm.experimental.noalias.scope.decl(metadata !534), !noalias !466
  tail call void @llvm.experimental.noalias.scope.decl(metadata !536), !noalias !466
  %_3.i.i.i.i36.3 = load i32, ptr %_12.i.i.2, align 4, !alias.scope !538, !noalias !539, !noundef !18
  %_4.i.i.i.i37.3 = load i32, ptr %_14.i.i.2, align 4, !alias.scope !540, !noalias !541, !noundef !18
  %_0.i.i38.3 = icmp slt i32 %_3.i.i.i.i36.3, %_4.i.i.i.i37.3
  %is_l.i18.i.3 = xor i1 %_0.i.i38.3, true
  %34 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i36.3, i32 %_4.i.i.i.i37.3)
  store i32 %34, ptr %_16.i.i.2, align 4, !noalias !443
  %count.i.i.3 = zext i1 %_0.i.i38.3 to i64
  %_12.i.i.3 = getelementptr inbounds nuw i32, ptr %_12.i.i.2, i64 %count.i.i.3
  %count2.i.i.3 = zext i1 %is_l.i18.i.3 to i64
  %_14.i.i.3 = getelementptr inbounds nuw i32, ptr %_14.i.i.2, i64 %count2.i.i.3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !542)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !544)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !546), !noalias !483
  tail call void @llvm.experimental.noalias.scope.decl(metadata !548), !noalias !483
  tail call void @llvm.experimental.noalias.scope.decl(metadata !550), !noalias !483
  tail call void @llvm.experimental.noalias.scope.decl(metadata !552), !noalias !483
  %_3.i.i.i19.i.3 = load i32, ptr %31, align 4, !alias.scope !554, !noalias !555, !noundef !18
  %_4.i.i.i20.i.3 = load i32, ptr %32, align 4, !alias.scope !556, !noalias !557, !noundef !18
  %_0.i21.i.3 = icmp slt i32 %_3.i.i.i19.i.3, %_4.i.i.i20.i.3
  %is_l.i.i.3 = xor i1 %_0.i21.i.3, true
  %35 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i19.i.3, i32 %_4.i.i.i20.i.3)
  store i32 %35, ptr %33, align 4, !noalias !458
  %count.neg.i.i.3 = sext i1 %is_l.i.i.3 to i64
  %36 = getelementptr i32, ptr %31, i64 %count.neg.i.i.3
  %count3.neg.i.i.3 = sext i1 %_0.i21.i.3 to i64
  %37 = getelementptr i32, ptr %32, i64 %count3.neg.i.i.3
  %38 = getelementptr i8, ptr %37, i64 4
  %39 = getelementptr i8, ptr %36, i64 4
  %_31.i = icmp ne ptr %_14.i.i.3, %38
  %_32.i = icmp ne ptr %_12.i.i.3, %39
  %or.cond.i = select i1 %_31.i, i1 true, i1 %_32.i
  br i1 %or.cond.i, label %bb13.i, label %_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17he9817220e104e85eE.exit, !prof !256

bb13.i:                                           ; preds = %start
; call core::slice::sort::shared::smallsort::panic_on_ord_violation
  tail call void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #18, !noalias !427
  unreachable

_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17he9817220e104e85eE.exit: ; preds = %start
  ret void
}

; core::slice::sort::shared::smallsort::insertion_sort_shift_left
; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h6fe8c0210000c719E(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 2, 21) %v.1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb5.preheader:
  %v_end.idx = shl nuw nsw i64 %v.1, 2
  %v_end = getelementptr inbounds nuw i8, ptr %v.0, i64 %v_end.idx
  %tail.sroa.0.03 = getelementptr inbounds nuw i8, ptr %v.0, i64 4
  br label %bb5

bb7:                                              ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h61d2d7647b25750aE.exit
  ret void

bb5:                                              ; preds = %bb5.preheader, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h61d2d7647b25750aE.exit
  %tail.sroa.0.06 = phi ptr [ %tail.sroa.0.0, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h61d2d7647b25750aE.exit ], [ %tail.sroa.0.03, %bb5.preheader ]
  %v.0.pn5 = phi ptr [ %tail.sroa.0.06, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h61d2d7647b25750aE.exit ], [ %v.0, %bb5.preheader ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !558)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !561)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !563)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !566)
  %_6.i.i.i = load float, ptr %tail.sroa.0.06, align 4, !alias.scope !568, !noalias !569, !noundef !18
  %_7.i.i.i = load float, ptr %v.0.pn5, align 4, !alias.scope !569, !noalias !568, !noundef !18
  %brmerge.not.i.i = fcmp uno float %_6.i.i.i, %_7.i.i.i
  br i1 %brmerge.not.i.i, label %bb6.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit.i", !prof !21

bb6.i.i.i:                                        ; preds = %bb5
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_622d794692a7bb5656187ee0c7bf9126) #18, !noalias !570
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit.i": ; preds = %bb5
  %_8.i.mux.i.i = fcmp olt float %_6.i.i.i, %_7.i.i.i
  br i1 %_8.i.mux.i.i, label %bb4.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h61d2d7647b25750aE.exit

bb4.i:                                            ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit.i", %bb7.i
  %.in.i = phi float [ %_7.i.i2.i, %bb7.i ], [ %_7.i.i.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit.i" ]
  %gap_guard.sroa.5.0.i = phi ptr [ %sift.sroa.0.0.i, %bb7.i ], [ %tail.sroa.0.06, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit.i" ]
  %sift.sroa.0.0.i = phi ptr [ %0, %bb7.i ], [ %v.0.pn5, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit.i" ]
  store float %.in.i, ptr %gap_guard.sroa.5.0.i, align 4
  %_18.i = icmp eq ptr %sift.sroa.0.0.i, %v.0
  br i1 %_18.i, label %bb10.i, label %bb6.i

bb6.i:                                            ; preds = %bb4.i
  %0 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i, i64 -4
  %_7.i.i2.i = load float, ptr %0, align 4, !alias.scope !571, !noalias !576, !noundef !18
  %brmerge.not.i3.i = fcmp uno float %_6.i.i.i, %_7.i.i2.i
  br i1 %brmerge.not.i3.i, label %bb6.i.i5.i, label %bb7.i, !prof !21

bb6.i.i5.i:                                       ; preds = %bb6.i
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_622d794692a7bb5656187ee0c7bf9126) #18
          to label %.noexc.i unwind label %bb14.i

.noexc.i:                                         ; preds = %bb6.i.i5.i
  unreachable

bb7.i:                                            ; preds = %bb6.i
  %_8.i.mux.i4.i = fcmp olt float %_6.i.i.i, %_7.i.i2.i
  br i1 %_8.i.mux.i4.i, label %bb4.i, label %bb10.i

bb10.i:                                           ; preds = %bb7.i, %bb4.i
  %sift.sroa.0.0.i.lcssa = phi ptr [ %sift.sroa.0.0.i, %bb7.i ], [ %v.0, %bb4.i ]
  store float %_6.i.i.i, ptr %sift.sroa.0.0.i.lcssa, align 4, !noalias !579
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h61d2d7647b25750aE.exit

bb14.i:                                           ; preds = %bb6.i.i5.i
  %1 = landingpad { ptr, i32 }
          cleanup
  store float %_6.i.i.i, ptr %sift.sroa.0.0.i, align 4, !noalias !584
  resume { ptr, i32 } %1

_ZN4core5slice4sort6shared9smallsort11insert_tail17h61d2d7647b25750aE.exit: ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit.i", %bb10.i
  %tail.sroa.0.0 = getelementptr inbounds nuw i8, ptr %tail.sroa.0.06, i64 4
  %_11.not = icmp eq ptr %tail.sroa.0.0, %v_end
  br i1 %_11.not, label %bb7, label %bb5
}

; core::slice::sort::stable::driftsort_main
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable14driftsort_main17hf90a7b79ce549371E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #2 personality ptr @rust_eh_personality {
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
  invoke fastcc void @_ZN4core5slice4sort6stable5drift4sort17he3f7be67fe20719eE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 4 %stack_buf.pn, i64 noundef %stack_scratch.sroa.4.0, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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
define void @_ZN4core5slice4sort6stable14driftsort_main17hfcafaa4377ec0178E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #2 personality ptr @rust_eh_personality {
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
  invoke fastcc void @_ZN4core5slice4sort6stable5drift4sort17hc2852d4db71486a3E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 4 %stack_buf.pn, i64 noundef %stack_scratch.sroa.4.0, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17hc2852d4db71486a3E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i1 noundef zeroext %eager_sort, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) unnamed_addr #0 personality ptr @rust_eh_personality {
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

bb10:                                             ; preds = %bb6, %_ZN4core5slice4sort6stable5drift10create_run17h7962b68125588a68E.exit
  %desired_depth.sroa.0.0 = phi i8 [ %21, %_ZN4core5slice4sort6stable5drift10create_run17h7962b68125588a68E.exit ], [ 0, %bb6 ]
  %next_run.sroa.0.0 = phi i64 [ %_0.sroa.0.0.i40, %_ZN4core5slice4sort6stable5drift10create_run17h7962b68125588a68E.exit ], [ 1, %bb6 ]
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

bb7.i41:                                          ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h501c0c6fa5c76ed0E.exit.i.thread124, %_ZN4core5slice4sort6shared17find_existing_run17h501c0c6fa5c76ed0E.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17h501c0c6fa5c76ed0E.exit.i, %bb30
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
  %_6.i.i66 = load float, ptr %_28.i.i, align 4, !alias.scope !649, !noalias !650, !noundef !18
  %_7.i.i67 = load float, ptr %_82, align 4, !alias.scope !651, !noalias !652, !noundef !18
  %brmerge.not.i68 = fcmp uno float %_6.i.i66, %_7.i.i67
  br i1 %brmerge.not.i68, label %bb6.i.i70, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit71", !prof !21

bb6.i.i70:                                        ; preds = %bb2.i.i
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_622d794692a7bb5656187ee0c7bf9126) #18, !noalias !653
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit71": ; preds = %bb2.i.i
  %_8.i.mux.i69 = fcmp olt float %_6.i.i66, %_7.i.i67
  %_10.i.i97.not = icmp eq i64 %new_len, 2
  br i1 %_8.i.mux.i69, label %bb4.i.i.preheader, label %bb11.i.i.preheader

bb11.i.i.preheader:                               ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit71"
  br i1 %_10.i.i97.not, label %_ZN4core5slice4sort6shared17find_existing_run17h501c0c6fa5c76ed0E.exit.i.thread, label %bb12.i.i

bb4.i.i.preheader:                                ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit71"
  br i1 %_10.i.i97.not, label %_ZN4core5slice4sort6shared17find_existing_run17h501c0c6fa5c76ed0E.exit.i.thread124, label %bb5.i.i

bb12.i.i:                                         ; preds = %bb11.i.i.preheader, %bb15.i.i
  %_7.i.i61 = phi float [ %_6.i.i60, %bb15.i.i ], [ %_6.i.i66, %bb11.i.i.preheader ]
  %run_len.sroa.0.0.i.i95 = phi i64 [ %3, %bb15.i.i ], [ 2, %bb11.i.i.preheader ]
  %2 = getelementptr inbounds nuw float, ptr %_82, i64 %run_len.sroa.0.0.i.i95
  tail call void @llvm.experimental.noalias.scope.decl(metadata !654)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !657), !noalias !644
  %_6.i.i60 = load float, ptr %2, align 4, !alias.scope !660, !noalias !661, !noundef !18
  %brmerge.not.i62 = fcmp uno float %_6.i.i60, %_7.i.i61
  br i1 %brmerge.not.i62, label %bb6.i.i64, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit65", !prof !21

bb6.i.i64:                                        ; preds = %bb12.i.i
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_622d794692a7bb5656187ee0c7bf9126) #18, !noalias !664
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit65": ; preds = %bb12.i.i
  %_8.i.mux.i63 = fcmp olt float %_6.i.i60, %_7.i.i61
  br i1 %_8.i.mux.i63, label %_ZN4core5slice4sort6shared17find_existing_run17h501c0c6fa5c76ed0E.exit.i, label %bb15.i.i

bb15.i.i:                                         ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit65"
  %3 = add nuw i64 %run_len.sroa.0.0.i.i95, 1
  %exitcond.not = icmp eq i64 %3, %new_len
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h501c0c6fa5c76ed0E.exit.i, label %bb12.i.i

bb5.i.i:                                          ; preds = %bb4.i.i.preheader, %bb7.i.i
  %_7.i.i58 = phi float [ %_6.i.i, %bb7.i.i ], [ %_6.i.i66, %bb4.i.i.preheader ]
  %run_len.sroa.0.1.i.i98 = phi i64 [ %5, %bb7.i.i ], [ 2, %bb4.i.i.preheader ]
  %4 = getelementptr inbounds nuw float, ptr %_82, i64 %run_len.sroa.0.1.i.i98
  tail call void @llvm.experimental.noalias.scope.decl(metadata !665)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !668), !noalias !644
  %_6.i.i = load float, ptr %4, align 4, !alias.scope !671, !noalias !672, !noundef !18
  %brmerge.not.i = fcmp uno float %_6.i.i, %_7.i.i58
  br i1 %brmerge.not.i, label %bb6.i.i59, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit", !prof !21

bb6.i.i59:                                        ; preds = %bb5.i.i
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_622d794692a7bb5656187ee0c7bf9126) #18, !noalias !675
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit": ; preds = %bb5.i.i
  %_8.i.mux.i = fcmp olt float %_6.i.i, %_7.i.i58
  br i1 %_8.i.mux.i, label %bb7.i.i, label %_ZN4core5slice4sort6shared17find_existing_run17h501c0c6fa5c76ed0E.exit.i

bb7.i.i:                                          ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit"
  %5 = add nuw i64 %run_len.sroa.0.1.i.i98, 1
  %exitcond116.not = icmp eq i64 %5, %new_len
  br i1 %exitcond116.not, label %_ZN4core5slice4sort6shared17find_existing_run17h501c0c6fa5c76ed0E.exit.i, label %bb5.i.i

_ZN4core5slice4sort6shared17find_existing_run17h501c0c6fa5c76ed0E.exit.i: ; preds = %bb15.i.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit65", %bb7.i.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit"
  %_0.sroa.0.0.i.i = phi i64 [ %new_len, %bb7.i.i ], [ %run_len.sroa.0.1.i.i98, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit" ], [ %new_len, %bb15.i.i ], [ %run_len.sroa.0.0.i.i95, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit65" ]
  %_12.i = icmp samesign ule i64 %_0.sroa.0.0.i.i, %new_len
  tail call void @llvm.assume(i1 %_12.i)
  %_13.not.i = icmp ult i64 %_0.sroa.0.0.i.i, %min_good_run_len.sroa.0.0
  br i1 %_13.not.i, label %bb7.i41, label %bb3.i37

_ZN4core5slice4sort6shared17find_existing_run17h501c0c6fa5c76ed0E.exit.i.thread124: ; preds = %bb4.i.i.preheader
  br i1 %_13.not.i127, label %bb7.i41, label %bb5.preheader.i.i

_ZN4core5slice4sort6shared17find_existing_run17h501c0c6fa5c76ed0E.exit.i.thread: ; preds = %bb11.i.i.preheader
  br i1 %_13.not.i121, label %bb7.i41, label %bb5.i38

bb3.i37:                                          ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h501c0c6fa5c76ed0E.exit.i
  br i1 %_8.i.mux.i69, label %bb14.i, label %bb5.i38

bb11.i42:                                         ; preds = %bb7.i41
  %_0.sroa.0.0.i57 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %new_len, i64 %min_good_run_len.sroa.0.0)
  %_36.i = shl nuw nsw i64 %_0.sroa.0.0.i57, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h7962b68125588a68E.exit

bb16.i43:                                         ; preds = %bb7.i41
  %_0.sroa.0.0.i56 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %new_len, i64 32)
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hbc20ec5b59e20ccaE(ptr noalias noundef nonnull align 4 %_82, i64 noundef %_0.sroa.0.0.i56, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef 0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #21
  %_35.i = shl nuw nsw i64 %_0.sroa.0.0.i56, 1
  %_34.i = or disjoint i64 %_35.i, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h7962b68125588a68E.exit

bb5.i38:                                          ; preds = %bb6.i.i, %middle.block, %_ZN4core5slice4sort6shared17find_existing_run17h501c0c6fa5c76ed0E.exit.i.thread, %bb1.i, %bb14.i, %bb3.i37
  %_0.sroa.0.0.i.i7780 = phi i64 [ %_0.sroa.0.0.i.i, %bb3.i37 ], [ 1, %bb14.i ], [ %new_len, %bb1.i ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h501c0c6fa5c76ed0E.exit.i.thread ], [ %_0.sroa.0.0.i.i122130134, %middle.block ], [ %_0.sroa.0.0.i.i122130134, %bb6.i.i ]
  %_27.i = shl nuw nsw i64 %_0.sroa.0.0.i.i7780, 1
  %_26.i = or disjoint i64 %_27.i, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h7962b68125588a68E.exit

bb14.i:                                           ; preds = %bb3.i37
  %half_len2.i = lshr i64 %_0.sroa.0.0.i.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !676), !noalias !679
  tail call void @llvm.experimental.noalias.scope.decl(metadata !681), !noalias !679
  %_915.not.i.i = icmp samesign ult i64 %_0.sroa.0.0.i.i, 2
  br i1 %_915.not.i.i, label %bb5.i38, label %bb5.preheader.i.i

bb5.preheader.i.i:                                ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h501c0c6fa5c76ed0E.exit.i.thread124, %bb14.i
  %half_len2.i135 = phi i64 [ %half_len2.i, %bb14.i ], [ 1, %_ZN4core5slice4sort6shared17find_existing_run17h501c0c6fa5c76ed0E.exit.i.thread124 ]
  %_0.sroa.0.0.i.i122130134 = phi i64 [ %_0.sroa.0.0.i.i, %bb14.i ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h501c0c6fa5c76ed0E.exit.i.thread124 ]
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

_ZN4core5slice4sort6stable5drift10create_run17h7962b68125588a68E.exit: ; preds = %bb11.i42, %bb16.i43, %bb5.i38
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

bb12:                                             ; preds = %bb12.lr.ph, %_ZN4core5slice4sort6stable5drift13logical_merge17h8473a3e705ec9cd7E.exit
  %stack_len.sroa.0.1103 = phi i64 [ %stack_len.sroa.0.0, %bb12.lr.ph ], [ %count, %_ZN4core5slice4sort6stable5drift13logical_merge17h8473a3e705ec9cd7E.exit ]
  %prev_run.sroa.0.1102 = phi i64 [ %prev_run.sroa.0.0, %bb12.lr.ph ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h8473a3e705ec9cd7E.exit ]
  %count = add i64 %stack_len.sroa.0.1103, -1
  %_41 = getelementptr inbounds nuw i8, ptr %desired_depth_storage, i64 %count
  %_40 = load i8, ptr %_41, align 1, !noundef !18
  %_39.not = icmp ult i8 %_40, %desired_depth.sroa.0.0
  br i1 %_39.not, label %bb17, label %bb13

bb17:                                             ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17h8473a3e705ec9cd7E.exit, %bb12, %bb10
  %prev_run.sroa.0.1.lcssa = phi i64 [ %prev_run.sroa.0.0, %bb10 ], [ %prev_run.sroa.0.1102, %bb12 ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h8473a3e705ec9cd7E.exit ]
  %stack_len.sroa.0.1.lcssa = phi i64 [ %stack_len.sroa.0.0, %bb10 ], [ %stack_len.sroa.0.1103, %bb12 ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17h8473a3e705ec9cd7E.exit ]
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
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h8473a3e705ec9cd7E.exit

bb5.i:                                            ; preds = %bb11.i, %bb3.i
  br i1 %_10.not.i, label %bb16.i, label %bb7.i

bb11.i:                                           ; preds = %bb3.i
  %self.i = or i64 %_50, 1
  %25 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i, i1 true)
  %26 = trunc nuw nsw i64 %25 to i32
  %log.i = shl nuw nsw i32 %26, 1
  %limit.i = xor i32 %log.i, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hbc20ec5b59e20ccaE(ptr noalias noundef nonnull align 4 %_98, i64 noundef range(i64 0, 2305843009213693952) %_50, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #21
  br label %bb5.i

bb7.i:                                            ; preds = %bb16.i, %bb5.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !693)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !696)
  %_6.i = icmp ult i64 %left10, 2
  %_7.i = icmp ult i64 %prev_run.sroa.0.1102, 2
  %or.cond.i = select i1 %_6.i, i1 true, i1 %_7.i
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17hf8ab4e91254b06f5E.exit, label %bb2.i

bb2.i:                                            ; preds = %bb7.i
  %_0.sroa.0.0.i.i44 = tail call i64 @llvm.umin.i64(i64 %_51, i64 range(i64 0, -9223372036854775808) %_50)
  %_8.i = icmp samesign ult i64 %scratch.1, %_0.sroa.0.0.i.i44
  br i1 %_8.i, label %_ZN4core5slice4sort6stable5merge5merge17hf8ab4e91254b06f5E.exit, label %bb5.i45

bb5.i45:                                          ; preds = %bb2.i
  %v_mid.i = getelementptr inbounds nuw float, ptr %_98, i64 %_50
  %left_is_shorter.not.i = icmp samesign ugt i64 %_50, %_51
  %spec.select.i = select i1 %left_is_shorter.not.i, ptr %v_mid.i, ptr %_98
  %27 = shl nuw nsw i64 %_0.sroa.0.0.i.i44, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %scratch.0, ptr nonnull align 4 %spec.select.i, i64 %27, i1 false), !alias.scope !698
  %_22.i46 = getelementptr inbounds nuw i8, ptr %scratch.0, i64 %27
  br i1 %left_is_shorter.not.i, label %bb1.i.i, label %bb3.i.i

bb1.i.i:                                          ; preds = %bb5.i45, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit.i.i"
  %merge_state.sroa.13.2.i = phi ptr [ %_18.i.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit.i.i" ], [ %v_mid.i, %bb5.i45 ]
  %merge_state.sroa.7.2.i = phi ptr [ %_21.i.i49, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit.i.i" ], [ %_22.i46, %bb5.i45 ]
  %out.sroa.0.0.i.i = phi ptr [ %30, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit.i.i" ], [ %v_end.i, %bb5.i45 ]
  %28 = getelementptr inbounds i8, ptr %merge_state.sroa.13.2.i, i64 -4
  %29 = getelementptr inbounds i8, ptr %merge_state.sroa.7.2.i, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !699)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !702)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !704)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !707)
  %_6.i.i.i.i = load float, ptr %29, align 4, !alias.scope !709, !noalias !710, !noundef !18
  %_7.i.i.i.i = load float, ptr %28, align 4, !alias.scope !713, !noalias !714, !noundef !18
  %brmerge.not.i.i.i = fcmp uno float %_6.i.i.i.i, %_7.i.i.i.i
  br i1 %brmerge.not.i.i.i, label %bb6.i.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit.i.i", !prof !21

bb6.i.i.i.i:                                      ; preds = %bb1.i.i
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_622d794692a7bb5656187ee0c7bf9126) #18
          to label %.noexc.i unwind label %bb20.i, !noalias !698

.noexc.i:                                         ; preds = %bb6.i.i.i.i
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit.i.i": ; preds = %bb1.i.i
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

bb3.i.i:                                          ; preds = %bb5.i45, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit.i15.i"
  %merge_state.sroa.13.3.i = phi ptr [ %_25.i.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit.i15.i" ], [ %_98, %bb5.i45 ]
  %merge_state.sroa.0.2.i = phi ptr [ %_20.i18.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit.i15.i" ], [ %scratch.0, %bb5.i45 ]
  %right.sroa.0.010.i.i = phi ptr [ %_23.i19.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit.i15.i" ], [ %v_mid.i, %bb5.i45 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !717)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !720)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !722)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !725)
  %_6.i.i.i12.i = load float, ptr %right.sroa.0.010.i.i, align 4, !alias.scope !727, !noalias !728, !noundef !18
  %_7.i.i.i13.i = load float, ptr %merge_state.sroa.0.2.i, align 4, !alias.scope !731, !noalias !732, !noundef !18
  %brmerge.not.i.i14.i = fcmp uno float %_6.i.i.i12.i, %_7.i.i.i13.i
  br i1 %brmerge.not.i.i14.i, label %bb6.i.i.i21.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit.i15.i", !prof !21

bb6.i.i.i21.i:                                    ; preds = %bb3.i.i
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_622d794692a7bb5656187ee0c7bf9126) #18
          to label %.noexc22.i unwind label %bb20.i, !noalias !698

.noexc22.i:                                       ; preds = %bb6.i.i.i21.i
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit.i15.i": ; preds = %bb3.i.i
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

bb16.i48:                                         ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit.i15.i", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit.i.i"
  %merge_state.sroa.13.1.i = phi ptr [ %_18.i.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit.i.i" ], [ %_25.i.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit.i15.i" ]
  %merge_state.sroa.7.1.i = phi ptr [ %_21.i.i49, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit.i.i" ], [ %_22.i46, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit.i15.i" ]
  %merge_state.sroa.0.1.i = phi ptr [ %scratch.0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit.i.i" ], [ %_20.i18.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit.i15.i" ]
  %33 = ptrtoint ptr %merge_state.sroa.7.1.i to i64
  %34 = ptrtoint ptr %merge_state.sroa.0.1.i to i64
  %35 = sub nuw i64 %33, %34
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %merge_state.sroa.13.1.i, ptr align 4 %merge_state.sroa.0.1.i, i64 %35, i1 false), !alias.scope !698, !noalias !735
  br label %_ZN4core5slice4sort6stable5merge5merge17hf8ab4e91254b06f5E.exit

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

_ZN4core5slice4sort6stable5merge5merge17hf8ab4e91254b06f5E.exit: ; preds = %bb7.i, %bb2.i, %bb16.i48
  %_39.i = shl nuw nsw i64 %merged_len, 1
  %_38.i = or disjoint i64 %_39.i, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h8473a3e705ec9cd7E.exit

bb16.i:                                           ; preds = %bb5.i
  %_37.i = getelementptr inbounds nuw float, ptr %_98, i64 %_50
  %self.i50 = or i64 %_51, 1
  %40 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i50, i1 true)
  %41 = trunc nuw nsw i64 %40 to i32
  %log.i51 = shl nuw nsw i32 %41, 1
  %limit.i52 = xor i32 %log.i51, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hbc20ec5b59e20ccaE(ptr noalias noundef nonnull align 4 %_37.i, i64 noundef range(i64 0, 2305843009213693952) %_51, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i52, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #21
  br label %bb7.i

_ZN4core5slice4sort6stable5drift13logical_merge17h8473a3e705ec9cd7E.exit: ; preds = %bb9.i, %_ZN4core5slice4sort6stable5merge5merge17hf8ab4e91254b06f5E.exit
  %_0.sroa.0.0.i = phi i64 [ %_38.i, %_ZN4core5slice4sort6stable5merge5merge17hf8ab4e91254b06f5E.exit ], [ %_40.i, %bb9.i ]
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
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hbc20ec5b59e20ccaE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i55, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #21
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
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17he3f7be67fe20719eE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i1 noundef zeroext %eager_sort, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) unnamed_addr #0 personality ptr @rust_eh_personality {
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

bb10:                                             ; preds = %bb6, %_ZN4core5slice4sort6stable5drift10create_run17h67334b7de8057d7cE.exit
  %desired_depth.sroa.0.0 = phi i8 [ %18, %_ZN4core5slice4sort6stable5drift10create_run17h67334b7de8057d7cE.exit ], [ 0, %bb6 ]
  %next_run.sroa.0.0 = phi i64 [ %_0.sroa.0.0.i40, %_ZN4core5slice4sort6stable5drift10create_run17h67334b7de8057d7cE.exit ], [ 1, %bb6 ]
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

bb7.i41:                                          ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h742e268158846e7bE.exit.i.thread100, %_ZN4core5slice4sort6shared17find_existing_run17h742e268158846e7bE.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17h742e268158846e7bE.exit.i, %bb30
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
  br i1 %_10.i.i78.not, label %_ZN4core5slice4sort6shared17find_existing_run17h742e268158846e7bE.exit.i.thread, label %bb12.i.i

bb4.i.i.preheader:                                ; preds = %bb2.i.i
  br i1 %_10.i.i78.not, label %_ZN4core5slice4sort6shared17find_existing_run17h742e268158846e7bE.exit.i.thread100, label %bb5.i.i

bb12.i.i:                                         ; preds = %bb11.i.i.preheader, %bb15.i.i
  %_4.i.i.i59 = phi i32 [ %_3.i.i.i58, %bb15.i.i ], [ %_3.i.i.i61, %bb11.i.i.preheader ]
  %run_len.sroa.0.0.i.i76 = phi i64 [ %3, %bb15.i.i ], [ 2, %bb11.i.i.preheader ]
  %2 = getelementptr inbounds nuw i32, ptr %_82, i64 %run_len.sroa.0.0.i.i76
  %_3.i.i.i58 = load i32, ptr %2, align 4, !alias.scope !767, !noalias !774, !noundef !18
  %_0.i60 = icmp slt i32 %_3.i.i.i58, %_4.i.i.i59
  br i1 %_0.i60, label %_ZN4core5slice4sort6shared17find_existing_run17h742e268158846e7bE.exit.i, label %bb15.i.i

bb15.i.i:                                         ; preds = %bb12.i.i
  %3 = add nuw i64 %run_len.sroa.0.0.i.i76, 1
  %exitcond.not = icmp eq i64 %3, %new_len
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h742e268158846e7bE.exit.i, label %bb12.i.i

bb5.i.i:                                          ; preds = %bb4.i.i.preheader, %bb7.i.i
  %_4.i.i.i = phi i32 [ %_3.i.i.i, %bb7.i.i ], [ %_3.i.i.i61, %bb4.i.i.preheader ]
  %run_len.sroa.0.1.i.i79 = phi i64 [ %5, %bb7.i.i ], [ 2, %bb4.i.i.preheader ]
  %4 = getelementptr inbounds nuw i32, ptr %_82, i64 %run_len.sroa.0.1.i.i79
  %_3.i.i.i = load i32, ptr %4, align 4, !alias.scope !778, !noalias !785, !noundef !18
  %_0.i = icmp slt i32 %_3.i.i.i, %_4.i.i.i
  br i1 %_0.i, label %bb7.i.i, label %_ZN4core5slice4sort6shared17find_existing_run17h742e268158846e7bE.exit.i

bb7.i.i:                                          ; preds = %bb5.i.i
  %5 = add nuw i64 %run_len.sroa.0.1.i.i79, 1
  %exitcond92.not = icmp eq i64 %5, %new_len
  br i1 %exitcond92.not, label %_ZN4core5slice4sort6shared17find_existing_run17h742e268158846e7bE.exit.i, label %bb5.i.i

_ZN4core5slice4sort6shared17find_existing_run17h742e268158846e7bE.exit.i: ; preds = %bb15.i.i, %bb12.i.i, %bb7.i.i, %bb5.i.i
  %_0.sroa.0.0.i.i = phi i64 [ %new_len, %bb7.i.i ], [ %run_len.sroa.0.1.i.i79, %bb5.i.i ], [ %new_len, %bb15.i.i ], [ %run_len.sroa.0.0.i.i76, %bb12.i.i ]
  %_12.i = icmp samesign ule i64 %_0.sroa.0.0.i.i, %new_len
  tail call void @llvm.assume(i1 %_12.i)
  %_13.not.i = icmp ult i64 %_0.sroa.0.0.i.i, %min_good_run_len.sroa.0.0
  br i1 %_13.not.i, label %bb7.i41, label %bb3.i37

_ZN4core5slice4sort6shared17find_existing_run17h742e268158846e7bE.exit.i.thread100: ; preds = %bb4.i.i.preheader
  br i1 %_13.not.i103, label %bb7.i41, label %bb5.preheader.i.i

_ZN4core5slice4sort6shared17find_existing_run17h742e268158846e7bE.exit.i.thread: ; preds = %bb11.i.i.preheader
  br i1 %_13.not.i97, label %bb7.i41, label %bb5.i38

bb3.i37:                                          ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h742e268158846e7bE.exit.i
  br i1 %_0.i63, label %bb14.i, label %bb5.i38

bb11.i42:                                         ; preds = %bb7.i41
  %_0.sroa.0.0.i57 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %new_len, i64 %min_good_run_len.sroa.0.0)
  %_36.i = shl nuw nsw i64 %_0.sroa.0.0.i57, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h67334b7de8057d7cE.exit

bb16.i43:                                         ; preds = %bb7.i41
  %_0.sroa.0.0.i56 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %new_len, i64 32)
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h4557b5829f07d405E(ptr noalias noundef nonnull align 4 %_82, i64 noundef %_0.sroa.0.0.i56, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef 0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #21
  %_35.i = shl nuw nsw i64 %_0.sroa.0.0.i56, 1
  %_34.i = or disjoint i64 %_35.i, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h67334b7de8057d7cE.exit

bb5.i38:                                          ; preds = %bb6.i.i, %middle.block, %_ZN4core5slice4sort6shared17find_existing_run17h742e268158846e7bE.exit.i.thread, %bb1.i, %bb14.i, %bb3.i37
  %_0.sroa.0.0.i.i6972 = phi i64 [ %_0.sroa.0.0.i.i, %bb3.i37 ], [ 1, %bb14.i ], [ %new_len, %bb1.i ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h742e268158846e7bE.exit.i.thread ], [ %_0.sroa.0.0.i.i98106110, %middle.block ], [ %_0.sroa.0.0.i.i98106110, %bb6.i.i ]
  %_27.i = shl nuw nsw i64 %_0.sroa.0.0.i.i6972, 1
  %_26.i = or disjoint i64 %_27.i, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h67334b7de8057d7cE.exit

bb14.i:                                           ; preds = %bb3.i37
  %half_len2.i = lshr i64 %_0.sroa.0.0.i.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !789), !noalias !792
  tail call void @llvm.experimental.noalias.scope.decl(metadata !794), !noalias !792
  %_915.not.i.i = icmp samesign ult i64 %_0.sroa.0.0.i.i, 2
  br i1 %_915.not.i.i, label %bb5.i38, label %bb5.preheader.i.i

bb5.preheader.i.i:                                ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h742e268158846e7bE.exit.i.thread100, %bb14.i
  %half_len2.i111 = phi i64 [ %half_len2.i, %bb14.i ], [ 1, %_ZN4core5slice4sort6shared17find_existing_run17h742e268158846e7bE.exit.i.thread100 ]
  %_0.sroa.0.0.i.i98106110 = phi i64 [ %_0.sroa.0.0.i.i, %bb14.i ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h742e268158846e7bE.exit.i.thread100 ]
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

_ZN4core5slice4sort6stable5drift10create_run17h67334b7de8057d7cE.exit: ; preds = %bb11.i42, %bb16.i43, %bb5.i38
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

bb12:                                             ; preds = %bb12.lr.ph, %_ZN4core5slice4sort6stable5drift13logical_merge17h1bee1f4f34df294eE.exit
  %stack_len.sroa.0.184 = phi i64 [ %stack_len.sroa.0.0, %bb12.lr.ph ], [ %count, %_ZN4core5slice4sort6stable5drift13logical_merge17h1bee1f4f34df294eE.exit ]
  %prev_run.sroa.0.183 = phi i64 [ %prev_run.sroa.0.0, %bb12.lr.ph ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h1bee1f4f34df294eE.exit ]
  %count = add i64 %stack_len.sroa.0.184, -1
  %_41 = getelementptr inbounds nuw i8, ptr %desired_depth_storage, i64 %count
  %_40 = load i8, ptr %_41, align 1, !noundef !18
  %_39.not = icmp ult i8 %_40, %desired_depth.sroa.0.0
  br i1 %_39.not, label %bb17, label %bb13

bb17:                                             ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17h1bee1f4f34df294eE.exit, %bb12, %bb10
  %prev_run.sroa.0.1.lcssa = phi i64 [ %prev_run.sroa.0.0, %bb10 ], [ %prev_run.sroa.0.183, %bb12 ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h1bee1f4f34df294eE.exit ]
  %stack_len.sroa.0.1.lcssa = phi i64 [ %stack_len.sroa.0.0, %bb10 ], [ %stack_len.sroa.0.184, %bb12 ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17h1bee1f4f34df294eE.exit ]
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
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h1bee1f4f34df294eE.exit

bb5.i:                                            ; preds = %bb11.i, %bb3.i
  br i1 %_10.not.i, label %bb16.i, label %bb7.i

bb11.i:                                           ; preds = %bb3.i
  %self.i = or i64 %_50, 1
  %22 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i, i1 true)
  %23 = trunc nuw nsw i64 %22 to i32
  %log.i = shl nuw nsw i32 %23, 1
  %limit.i = xor i32 %log.i, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h4557b5829f07d405E(ptr noalias noundef nonnull align 4 %_98, i64 noundef range(i64 0, 2305843009213693952) %_50, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #21
  br label %bb5.i

bb7.i:                                            ; preds = %bb16.i, %bb5.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !804)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !807)
  %_6.i = icmp ult i64 %left10, 2
  %_7.i = icmp ult i64 %prev_run.sroa.0.183, 2
  %or.cond.i = select i1 %_6.i, i1 true, i1 %_7.i
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17haf93c4f31364c6f3E.exit, label %bb2.i

bb2.i:                                            ; preds = %bb7.i
  %_0.sroa.0.0.i.i44 = tail call i64 @llvm.umin.i64(i64 %_51, i64 range(i64 0, -9223372036854775808) %_50)
  %_8.i = icmp samesign ult i64 %scratch.1, %_0.sroa.0.0.i.i44
  br i1 %_8.i, label %_ZN4core5slice4sort6stable5merge5merge17haf93c4f31364c6f3E.exit, label %bb5.i45

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
  br label %_ZN4core5slice4sort6stable5merge5merge17haf93c4f31364c6f3E.exit

_ZN4core5slice4sort6stable5merge5merge17haf93c4f31364c6f3E.exit: ; preds = %bb7.i, %bb2.i, %bb16.i48
  %_39.i = shl nuw nsw i64 %merged_len, 1
  %_38.i = or disjoint i64 %_39.i, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h1bee1f4f34df294eE.exit

bb16.i:                                           ; preds = %bb5.i
  %_37.i = getelementptr inbounds nuw i32, ptr %_98, i64 %_50
  %self.i50 = or i64 %_51, 1
  %33 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i50, i1 true)
  %34 = trunc nuw nsw i64 %33 to i32
  %log.i51 = shl nuw nsw i32 %34, 1
  %limit.i52 = xor i32 %log.i51, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h4557b5829f07d405E(ptr noalias noundef nonnull align 4 %_37.i, i64 noundef range(i64 0, 2305843009213693952) %_51, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i52, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #21
  br label %bb7.i

_ZN4core5slice4sort6stable5drift13logical_merge17h1bee1f4f34df294eE.exit: ; preds = %bb9.i, %_ZN4core5slice4sort6stable5merge5merge17haf93c4f31364c6f3E.exit
  %_0.sroa.0.0.i = phi i64 [ %_38.i, %_ZN4core5slice4sort6stable5merge5merge17haf93c4f31364c6f3E.exit ], [ %_40.i, %bb9.i ]
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
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h4557b5829f07d405E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i55, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #21
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
define void @_ZN4core5slice4sort6stable9quicksort9quicksort17h4557b5829f07d405E(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %2, ptr noalias noundef readonly align 4 captures(address) dereferenceable_or_null(4) %3, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #2 personality ptr @rust_eh_personality {
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

bb5:                                              ; preds = %bb5.lr.ph, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hbf5dd1b70fd3d158E.exit"
  %v.sroa.16.0132 = phi i64 [ %v.sroa.16.0.ph139, %bb5.lr.ph ], [ %state.sroa.27.2.lcssa.i, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hbf5dd1b70fd3d158E.exit" ]
  %limit.sroa.0.0131 = phi i32 [ %limit.sroa.0.0.ph138, %bb5.lr.ph ], [ %48, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hbf5dd1b70fd3d158E.exit" ]
  %_11 = icmp eq i32 %limit.sroa.0.0131, 0
  br i1 %_11, label %bb6, label %bb7

bb3:                                              ; preds = %bb28, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hbf5dd1b70fd3d158E.exit", %start
  %v.sroa.0.0.ph.lcssa129 = phi ptr [ %0, %start ], [ %v.sroa.0.0.ph140, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hbf5dd1b70fd3d158E.exit" ], [ %_54, %bb28 ]
  %v.sroa.16.0.lcssa = phi i64 [ %1, %start ], [ %state.sroa.27.2.lcssa.i, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hbf5dd1b70fd3d158E.exit" ], [ %_63.i63, %bb28 ]
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
  %_16.i = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %v.sroa.16.0.lcssa
; call core::slice::sort::shared::smallsort::sort8_stable
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h800940d7f1afdfbbE(ptr noundef nonnull align 4 %v.sroa.0.0.ph.lcssa129, ptr noundef nonnull align 4 %scratch.0, ptr noundef %_16.i)
  %_18.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %len_div_211.i
  %_19.i = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211.i
  %_20.i = getelementptr inbounds nuw i8, ptr %_16.i, i64 32
; call core::slice::sort::shared::smallsort::sort8_stable
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h800940d7f1afdfbbE(ptr noundef %_18.i, ptr noundef %_19.i, ptr noundef %_20.i)
  br label %bb15.i

bb10.i:                                           ; preds = %bb9.i
  %_7.i.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph.lcssa129, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !864)
  call void @llvm.experimental.noalias.scope.decl(metadata !867)
  call void @llvm.experimental.noalias.scope.decl(metadata !869)
  call void @llvm.experimental.noalias.scope.decl(metadata !872)
  call void @llvm.experimental.noalias.scope.decl(metadata !874)
  call void @llvm.experimental.noalias.scope.decl(metadata !877)
  %_3.i.i.i.i.i = load i32, ptr %_7.i.i, align 4, !alias.scope !879, !noalias !880, !noundef !18
  %_4.i.i.i.i.i = load i32, ptr %v.sroa.0.0.ph.lcssa129, align 4, !alias.scope !882, !noalias !883, !noundef !18
  %_0.i.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %_12.i.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph.lcssa129, i64 12
  %_14.i.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph.lcssa129, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !884)
  call void @llvm.experimental.noalias.scope.decl(metadata !887)
  call void @llvm.experimental.noalias.scope.decl(metadata !889)
  call void @llvm.experimental.noalias.scope.decl(metadata !892)
  call void @llvm.experimental.noalias.scope.decl(metadata !894)
  call void @llvm.experimental.noalias.scope.decl(metadata !897)
  %_3.i.i.i7.i.i = load i32, ptr %_12.i.i, align 4, !alias.scope !899, !noalias !900, !noundef !18
  %_4.i.i.i8.i.i = load i32, ptr %_14.i.i, align 4, !alias.scope !901, !noalias !902, !noundef !18
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
  call void @llvm.experimental.noalias.scope.decl(metadata !903)
  call void @llvm.experimental.noalias.scope.decl(metadata !906)
  call void @llvm.experimental.noalias.scope.decl(metadata !908)
  call void @llvm.experimental.noalias.scope.decl(metadata !911)
  call void @llvm.experimental.noalias.scope.decl(metadata !913)
  call void @llvm.experimental.noalias.scope.decl(metadata !916)
  %_3.i.i.i10.i.i = load i32, ptr %c.i.i, align 4, !alias.scope !918, !noalias !919, !noundef !18
  %_4.i.i.i11.i.i = load i32, ptr %a.i.i, align 4, !alias.scope !920, !noalias !921, !noundef !18
  %_0.i12.i.i = icmp slt i32 %_3.i.i.i10.i.i, %_4.i.i.i11.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !922)
  call void @llvm.experimental.noalias.scope.decl(metadata !925)
  call void @llvm.experimental.noalias.scope.decl(metadata !927)
  call void @llvm.experimental.noalias.scope.decl(metadata !930)
  call void @llvm.experimental.noalias.scope.decl(metadata !932)
  call void @llvm.experimental.noalias.scope.decl(metadata !935)
  %_3.i.i.i13.i.i = load i32, ptr %d.i.i, align 4, !alias.scope !937, !noalias !938, !noundef !18
  %_4.i.i.i14.i.i = load i32, ptr %b.i.i, align 4, !alias.scope !939, !noalias !940, !noundef !18
  %_0.i15.i.i = icmp slt i32 %_3.i.i.i13.i.i, %_4.i.i.i14.i.i
  %5 = call i32 @llvm.smin.i32(i32 %_3.i.i.i10.i.i, i32 %_4.i.i.i11.i.i)
  %6 = select i1 %_0.i15.i.i, ptr %c.i.i, ptr %b.i.i, !unpredictable !18
  %7 = select i1 %_0.i12.i.i, ptr %a.i.i, ptr %6, !unpredictable !18
  %8 = select i1 %_0.i12.i.i, ptr %b.i.i, ptr %c.i.i, !unpredictable !18
  %9 = select i1 %_0.i15.i.i, ptr %d.i.i, ptr %8, !unpredictable !18
  call void @llvm.experimental.noalias.scope.decl(metadata !941)
  call void @llvm.experimental.noalias.scope.decl(metadata !944)
  call void @llvm.experimental.noalias.scope.decl(metadata !946)
  call void @llvm.experimental.noalias.scope.decl(metadata !949)
  call void @llvm.experimental.noalias.scope.decl(metadata !951)
  call void @llvm.experimental.noalias.scope.decl(metadata !954)
  %_3.i.i.i16.i.i = load i32, ptr %9, align 4, !alias.scope !956, !noalias !957, !noundef !18
  %_4.i.i.i17.i.i = load i32, ptr %7, align 4, !alias.scope !958, !noalias !959, !noundef !18
  store i32 %5, ptr %scratch.0, align 4, !alias.scope !862, !noalias !960
  %dst5.i.i = getelementptr inbounds nuw i8, ptr %scratch.0, i64 4
  %10 = call i32 @llvm.smin.i32(i32 %_3.i.i.i16.i.i, i32 %_4.i.i.i17.i.i)
  store i32 %10, ptr %dst5.i.i, align 4, !alias.scope !862, !noalias !960
  %dst6.i.i = getelementptr inbounds nuw i8, ptr %scratch.0, i64 8
  %11 = call i32 @llvm.smax.i32(i32 %_3.i.i.i16.i.i, i32 %_4.i.i.i17.i.i)
  store i32 %11, ptr %dst6.i.i, align 4, !alias.scope !862, !noalias !960
  %12 = getelementptr inbounds nuw i8, ptr %scratch.0, i64 12
  %13 = call i32 @llvm.smax.i32(i32 %_3.i.i.i13.i.i, i32 %_4.i.i.i14.i.i)
  store i32 %13, ptr %12, align 4, !alias.scope !862, !noalias !960
  %_27.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %len_div_211.i
  %_28.i = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211.i
  %_7.i13.i = getelementptr inbounds nuw i8, ptr %_27.i, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !961)
  call void @llvm.experimental.noalias.scope.decl(metadata !964)
  call void @llvm.experimental.noalias.scope.decl(metadata !966)
  call void @llvm.experimental.noalias.scope.decl(metadata !969)
  call void @llvm.experimental.noalias.scope.decl(metadata !971)
  call void @llvm.experimental.noalias.scope.decl(metadata !974)
  %_3.i.i.i.i14.i = load i32, ptr %_7.i13.i, align 4, !alias.scope !976, !noalias !977, !noundef !18
  %_4.i.i.i.i15.i = load i32, ptr %_27.i, align 4, !alias.scope !978, !noalias !979, !noundef !18
  %_0.i.i16.i = icmp slt i32 %_3.i.i.i.i14.i, %_4.i.i.i.i15.i
  %_12.i17.i = getelementptr inbounds nuw i8, ptr %_27.i, i64 12
  %_14.i18.i = getelementptr inbounds nuw i8, ptr %_27.i, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !980)
  call void @llvm.experimental.noalias.scope.decl(metadata !983)
  call void @llvm.experimental.noalias.scope.decl(metadata !985)
  call void @llvm.experimental.noalias.scope.decl(metadata !988)
  call void @llvm.experimental.noalias.scope.decl(metadata !990)
  call void @llvm.experimental.noalias.scope.decl(metadata !993)
  %_3.i.i.i7.i19.i = load i32, ptr %_12.i17.i, align 4, !alias.scope !995, !noalias !996, !noundef !18
  %_4.i.i.i8.i20.i = load i32, ptr %_14.i18.i, align 4, !alias.scope !997, !noalias !998, !noundef !18
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
  call void @llvm.experimental.noalias.scope.decl(metadata !999)
  call void @llvm.experimental.noalias.scope.decl(metadata !1002)
  call void @llvm.experimental.noalias.scope.decl(metadata !1004)
  call void @llvm.experimental.noalias.scope.decl(metadata !1007)
  call void @llvm.experimental.noalias.scope.decl(metadata !1009)
  call void @llvm.experimental.noalias.scope.decl(metadata !1012)
  %_3.i.i.i10.i31.i = load i32, ptr %c.i28.i, align 4, !alias.scope !1014, !noalias !1015, !noundef !18
  %_4.i.i.i11.i32.i = load i32, ptr %a.i23.i, align 4, !alias.scope !1016, !noalias !1017, !noundef !18
  %_0.i12.i33.i = icmp slt i32 %_3.i.i.i10.i31.i, %_4.i.i.i11.i32.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1018)
  call void @llvm.experimental.noalias.scope.decl(metadata !1021)
  call void @llvm.experimental.noalias.scope.decl(metadata !1023)
  call void @llvm.experimental.noalias.scope.decl(metadata !1026)
  call void @llvm.experimental.noalias.scope.decl(metadata !1028)
  call void @llvm.experimental.noalias.scope.decl(metadata !1031)
  %_3.i.i.i13.i34.i = load i32, ptr %d.i30.i, align 4, !alias.scope !1033, !noalias !1034, !noundef !18
  %_4.i.i.i14.i35.i = load i32, ptr %b.i26.i, align 4, !alias.scope !1035, !noalias !1036, !noundef !18
  %_0.i15.i36.i = icmp slt i32 %_3.i.i.i13.i34.i, %_4.i.i.i14.i35.i
  %14 = call i32 @llvm.smin.i32(i32 %_3.i.i.i10.i31.i, i32 %_4.i.i.i11.i32.i)
  %15 = select i1 %_0.i15.i36.i, ptr %c.i28.i, ptr %b.i26.i, !unpredictable !18
  %16 = select i1 %_0.i12.i33.i, ptr %a.i23.i, ptr %15, !unpredictable !18
  %17 = select i1 %_0.i12.i33.i, ptr %b.i26.i, ptr %c.i28.i, !unpredictable !18
  %18 = select i1 %_0.i15.i36.i, ptr %d.i30.i, ptr %17, !unpredictable !18
  call void @llvm.experimental.noalias.scope.decl(metadata !1037)
  call void @llvm.experimental.noalias.scope.decl(metadata !1040)
  call void @llvm.experimental.noalias.scope.decl(metadata !1042)
  call void @llvm.experimental.noalias.scope.decl(metadata !1045)
  call void @llvm.experimental.noalias.scope.decl(metadata !1047)
  call void @llvm.experimental.noalias.scope.decl(metadata !1050)
  %_3.i.i.i16.i37.i = load i32, ptr %18, align 4, !alias.scope !1052, !noalias !1053, !noundef !18
  %_4.i.i.i17.i38.i = load i32, ptr %16, align 4, !alias.scope !1054, !noalias !1055, !noundef !18
  store i32 %14, ptr %_28.i, align 4, !alias.scope !862, !noalias !960
  %dst5.i40.i = getelementptr inbounds nuw i8, ptr %_28.i, i64 4
  %19 = call i32 @llvm.smin.i32(i32 %_3.i.i.i16.i37.i, i32 %_4.i.i.i17.i38.i)
  store i32 %19, ptr %dst5.i40.i, align 4, !alias.scope !862, !noalias !960
  %dst6.i43.i = getelementptr inbounds nuw i8, ptr %_28.i, i64 8
  %20 = call i32 @llvm.smax.i32(i32 %_3.i.i.i16.i37.i, i32 %_4.i.i.i17.i38.i)
  store i32 %20, ptr %dst6.i43.i, align 4, !alias.scope !862, !noalias !960
  %21 = getelementptr inbounds nuw i8, ptr %_28.i, i64 12
  %22 = call i32 @llvm.smax.i32(i32 %_3.i.i.i13.i34.i, i32 %_4.i.i.i14.i35.i)
  store i32 %22, ptr %21, align 4, !alias.scope !862, !noalias !960
  br label %bb15.i

bb46.i:                                           ; preds = %bb9.i
  %23 = load i32, ptr %v.sroa.0.0.ph.lcssa129, align 4, !alias.scope !859, !noalias !1056
  store i32 %23, ptr %scratch.0, align 4, !alias.scope !862, !noalias !960
  %_31.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %len_div_211.i
  %24 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211.i
  %25 = load i32, ptr %_31.i, align 4, !alias.scope !859, !noalias !1056
  store i32 %25, ptr %24, align 4, !alias.scope !862, !noalias !960
  br label %bb15.i

bb15.i:                                           ; preds = %bb46.i, %bb10.i, %bb6.i
  %presorted_len.sroa.0.0.i = phi i64 [ 8, %bb6.i ], [ 4, %bb10.i ], [ 1, %bb46.i ]
  %26 = sub nsw i64 %v.sroa.16.0.lcssa, %len_div_211.i
  %_8061.i = icmp samesign ult i64 %presorted_len.sroa.0.0.i, %len_div_211.i
  br i1 %_8061.i, label %bb24.preheader.i, label %bb16.loopexit.i

bb16.loopexit.i:                                  ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h395da78f46d0044dE.exit.i, %bb15.i
  %src5.1.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %len_div_211.i
  %dst6.1.i = getelementptr i32, ptr %scratch.0, i64 %len_div_211.i
  %_8061.1.i = icmp ult i64 %presorted_len.sroa.0.0.i, %26
  br i1 %_8061.1.i, label %bb24.preheader.1.i, label %bb16.loopexit.1.i

bb24.preheader.1.i:                               ; preds = %bb16.loopexit.i
  %iter1.sroa.0.163.1.i = add nuw nsw i64 %presorted_len.sroa.0.0.i, 1
  br label %bb24.1.i

bb24.1.i:                                         ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h395da78f46d0044dE.exit.1.i, %bb24.preheader.1.i
  %iter1.sroa.0.165.1.i = phi i64 [ %iter1.sroa.0.1.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h395da78f46d0044dE.exit.1.i ], [ %iter1.sroa.0.163.1.i, %bb24.preheader.1.i ]
  %iter1.sroa.0.064.1.i = phi i64 [ %iter1.sroa.0.165.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h395da78f46d0044dE.exit.1.i ], [ %presorted_len.sroa.0.0.i, %bb24.preheader.1.i ]
  %_55.1.i = getelementptr inbounds nuw i32, ptr %src5.1.i, i64 %iter1.sroa.0.064.1.i
  %dst7.1.i = getelementptr inbounds nuw i32, ptr %dst6.1.i, i64 %iter1.sroa.0.064.1.i
  %27 = load i32, ptr %_55.1.i, align 4, !alias.scope !859, !noalias !1056
  store i32 %27, ptr %dst7.1.i, align 4, !alias.scope !862, !noalias !960
  %28 = getelementptr inbounds i8, ptr %dst7.1.i, i64 -4
  %_4.i.i.i.i55.1.i = load i32, ptr %28, align 4, !alias.scope !1057, !noalias !1064, !noundef !18
  %_0.i.i56.1.i = icmp slt i32 %27, %_4.i.i.i.i55.1.i
  br i1 %_0.i.i56.1.i, label %bb4.i.1.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h395da78f46d0044dE.exit.1.i

bb4.i.1.i:                                        ; preds = %bb24.1.i, %bb7.i.1.i
  %29 = phi i32 [ %_4.i.i.i2.i.1.i, %bb7.i.1.i ], [ %_4.i.i.i.i55.1.i, %bb24.1.i ]
  %gap_guard.sroa.5.0.i.1.i = phi ptr [ %sift.sroa.0.0.i.1.i, %bb7.i.1.i ], [ %dst7.1.i, %bb24.1.i ]
  %sift.sroa.0.0.i.1.i = phi ptr [ %30, %bb7.i.1.i ], [ %28, %bb24.1.i ]
  store i32 %29, ptr %gap_guard.sroa.5.0.i.1.i, align 4, !alias.scope !862, !noalias !960
  %_18.i.1.i = icmp eq ptr %sift.sroa.0.0.i.1.i, %dst6.1.i
  br i1 %_18.i.1.i, label %bb10.i.1.i, label %bb7.i.1.i

bb7.i.1.i:                                        ; preds = %bb4.i.1.i
  %30 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.1.i, i64 -4
  %_4.i.i.i2.i.1.i = load i32, ptr %30, align 4, !alias.scope !1068, !noalias !1075, !noundef !18
  %_0.i3.i.1.i = icmp slt i32 %27, %_4.i.i.i2.i.1.i
  br i1 %_0.i3.i.1.i, label %bb4.i.1.i, label %bb10.i.1.i

bb10.i.1.i:                                       ; preds = %bb7.i.1.i, %bb4.i.1.i
  %sift.sroa.0.0.i.lcssa.1.i = phi ptr [ %sift.sroa.0.0.i.1.i, %bb7.i.1.i ], [ %dst6.1.i, %bb4.i.1.i ]
  store i32 %27, ptr %sift.sroa.0.0.i.lcssa.1.i, align 4, !alias.scope !862, !noalias !1079
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h395da78f46d0044dE.exit.1.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h395da78f46d0044dE.exit.1.i: ; preds = %bb10.i.1.i, %bb24.1.i
  %_80.1.i = icmp ult i64 %iter1.sroa.0.165.1.i, %26
  %_84.1.i = zext i1 %_80.1.i to i64
  %iter1.sroa.0.1.1.i = add nuw i64 %iter1.sroa.0.165.1.i, %_84.1.i
  br i1 %_80.1.i, label %bb24.1.i, label %bb16.loopexit.1.i

bb16.loopexit.1.i:                                ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h395da78f46d0044dE.exit.1.i, %bb16.loopexit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1084)
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
  call void @llvm.experimental.noalias.scope.decl(metadata !1087)
  call void @llvm.experimental.noalias.scope.decl(metadata !1090)
  call void @llvm.experimental.noalias.scope.decl(metadata !1092), !noalias !1095
  call void @llvm.experimental.noalias.scope.decl(metadata !1098), !noalias !1095
  call void @llvm.experimental.noalias.scope.decl(metadata !1100), !noalias !1095
  call void @llvm.experimental.noalias.scope.decl(metadata !1103), !noalias !1095
  %_3.i.i.i.i48.i = load i32, ptr %right.sroa.0.026.i.i, align 4, !alias.scope !1105, !noalias !1106, !noundef !18
  %_4.i.i.i.i49.i = load i32, ptr %left.sroa.0.027.i.i, align 4, !alias.scope !1107, !noalias !1108, !noundef !18
  %_0.i.i50.i = icmp slt i32 %_3.i.i.i.i48.i, %_4.i.i.i.i49.i
  %is_l.i18.i.i = xor i1 %_0.i.i50.i, true
  %36 = call i32 @llvm.smin.i32(i32 %_3.i.i.i.i48.i, i32 %_4.i.i.i.i49.i)
  store i32 %36, ptr %dst.sroa.0.029.i.i, align 4, !alias.scope !859, !noalias !1109
  %count.i.i.i = zext i1 %_0.i.i50.i to i64
  %_12.i.i.i = getelementptr inbounds nuw i32, ptr %right.sroa.0.026.i.i, i64 %count.i.i.i
  %count2.i.i.i = zext i1 %is_l.i18.i.i to i64
  %_14.i.i.i = getelementptr inbounds nuw i32, ptr %left.sroa.0.027.i.i, i64 %count2.i.i.i
  %_16.i.i.i = getelementptr inbounds nuw i8, ptr %dst.sroa.0.029.i.i, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !1111)
  call void @llvm.experimental.noalias.scope.decl(metadata !1114)
  call void @llvm.experimental.noalias.scope.decl(metadata !1116), !noalias !1119
  call void @llvm.experimental.noalias.scope.decl(metadata !1122), !noalias !1119
  call void @llvm.experimental.noalias.scope.decl(metadata !1124), !noalias !1119
  call void @llvm.experimental.noalias.scope.decl(metadata !1127), !noalias !1119
  %_3.i.i.i19.i.i = load i32, ptr %right_rev.sroa.0.024.i.i, align 4, !alias.scope !1129, !noalias !1130, !noundef !18
  %_4.i.i.i20.i.i = load i32, ptr %left_rev.sroa.0.025.i.i, align 4, !alias.scope !1131, !noalias !1132, !noundef !18
  %_0.i21.i.i = icmp slt i32 %_3.i.i.i19.i.i, %_4.i.i.i20.i.i
  %is_l.i.i.i = xor i1 %_0.i21.i.i, true
  %37 = call i32 @llvm.smax.i32(i32 %_3.i.i.i19.i.i, i32 %_4.i.i.i20.i.i)
  store i32 %37, ptr %dst_rev.sroa.0.023.i.i, align 4, !alias.scope !859, !noalias !1133
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
  %41 = load i32, ptr %left.sroa.0.0.right.sroa.0.0.i.i, align 4, !alias.scope !1135, !noalias !960
  store i32 %41, ptr %_16.i.i.i, align 4, !alias.scope !859, !noalias !1136
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
  br i1 %or.cond.i.i, label %bb13.i.i, label %bb22, !prof !256

bb13.i.i:                                         ; preds = %bb9.i.i
; invoke core::slice::sort::shared::smallsort::panic_on_ord_violation
  invoke void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #18
          to label %.noexc.i unwind label %cleanup2.i, !noalias !1137

.noexc.i:                                         ; preds = %bb13.i.i
  unreachable

cleanup2.i:                                       ; preds = %bb13.i.i
  %42 = landingpad { ptr, i32 }
          cleanup
  %43 = shl nuw nsw i64 %v.sroa.16.0.lcssa, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.sroa.0.0.ph.lcssa129, ptr nonnull align 4 %scratch.0, i64 %43, i1 false), !alias.scope !1138, !noalias !1139
  resume { ptr, i32 } %42

bb24.i:                                           ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h395da78f46d0044dE.exit.i, %bb24.preheader.i
  %iter1.sroa.0.165.i = phi i64 [ %iter1.sroa.0.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h395da78f46d0044dE.exit.i ], [ %iter1.sroa.0.163.i, %bb24.preheader.i ]
  %iter1.sroa.0.064.i = phi i64 [ %iter1.sroa.0.165.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h395da78f46d0044dE.exit.i ], [ %presorted_len.sroa.0.0.i, %bb24.preheader.i ]
  %_55.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %iter1.sroa.0.064.i
  %dst7.i = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %iter1.sroa.0.064.i
  %44 = load i32, ptr %_55.i, align 4, !alias.scope !859, !noalias !1056
  store i32 %44, ptr %dst7.i, align 4, !alias.scope !862, !noalias !960
  %45 = getelementptr inbounds i8, ptr %dst7.i, i64 -4
  %_4.i.i.i.i55.i = load i32, ptr %45, align 4, !alias.scope !1057, !noalias !1064, !noundef !18
  %_0.i.i56.i = icmp slt i32 %44, %_4.i.i.i.i55.i
  br i1 %_0.i.i56.i, label %bb4.i.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h395da78f46d0044dE.exit.i

bb4.i.i:                                          ; preds = %bb24.i, %bb7.i.i
  %46 = phi i32 [ %_4.i.i.i2.i.i, %bb7.i.i ], [ %_4.i.i.i.i55.i, %bb24.i ]
  %gap_guard.sroa.5.0.i.i = phi ptr [ %sift.sroa.0.0.i.i, %bb7.i.i ], [ %dst7.i, %bb24.i ]
  %sift.sroa.0.0.i.i = phi ptr [ %47, %bb7.i.i ], [ %45, %bb24.i ]
  store i32 %46, ptr %gap_guard.sroa.5.0.i.i, align 4, !alias.scope !862, !noalias !960
  %_18.i.i = icmp eq ptr %sift.sroa.0.0.i.i, %scratch.0
  br i1 %_18.i.i, label %bb10.i.i, label %bb7.i.i

bb7.i.i:                                          ; preds = %bb4.i.i
  %47 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i, i64 -4
  %_4.i.i.i2.i.i = load i32, ptr %47, align 4, !alias.scope !1068, !noalias !1075, !noundef !18
  %_0.i3.i.i = icmp slt i32 %44, %_4.i.i.i2.i.i
  br i1 %_0.i3.i.i, label %bb4.i.i, label %bb10.i.i

bb10.i.i:                                         ; preds = %bb7.i.i, %bb4.i.i
  %sift.sroa.0.0.i.lcssa.i = phi ptr [ %sift.sroa.0.0.i.i, %bb7.i.i ], [ %scratch.0, %bb4.i.i ]
  store i32 %44, ptr %sift.sroa.0.0.i.lcssa.i, align 4, !alias.scope !862, !noalias !1079
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h395da78f46d0044dE.exit.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h395da78f46d0044dE.exit.i: ; preds = %bb10.i.i, %bb24.i
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
  %self.i = call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h625f0c23127a197cE(ptr noundef nonnull readonly align 4 %v.sroa.0.0.ph140, ptr noundef readonly %b.i, ptr noundef readonly %c.i, i64 noundef %len_div_84.i)
  br label %bb10

bb3.i23:                                          ; preds = %bb7
  call void @llvm.experimental.noalias.scope.decl(metadata !1144)
  call void @llvm.experimental.noalias.scope.decl(metadata !1147)
  call void @llvm.experimental.noalias.scope.decl(metadata !1149), !noalias !1152
  call void @llvm.experimental.noalias.scope.decl(metadata !1155), !noalias !1152
  call void @llvm.experimental.noalias.scope.decl(metadata !1157), !noalias !1152
  call void @llvm.experimental.noalias.scope.decl(metadata !1160), !noalias !1152
  %_3.i.i.i.i = load i32, ptr %v.sroa.0.0.ph140, align 4, !alias.scope !1162, !noalias !1165, !noundef !18
  %_4.i.i.i.i = load i32, ptr %b.i, align 4, !alias.scope !1167, !noalias !1168, !noundef !18
  %_0.i.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %_4.i.i.i6.i = load i32, ptr %c.i, align 4, !alias.scope !1169, !noalias !1176, !noundef !18
  %_0.i7.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i6.i
  %49 = xor i1 %_0.i.i, %_0.i7.i
  %_0.i10.i = icmp slt i32 %_4.i.i.i.i, %_4.i.i.i6.i
  %_12.i.i24 = xor i1 %_0.i.i, %_0.i10.i
  %c.b.i.i = select i1 %_12.i.i24, ptr %c.i, ptr %b.i
  %_0.sroa.0.0.i.i = select i1 %49, ptr %v.sroa.0.0.ph140, ptr %c.b.i.i
  br label %bb10

bb6:                                              ; preds = %bb5
; call core::slice::sort::stable::drift::sort
  call fastcc void @_ZN4core5slice4sort6stable5drift4sort17he3f7be67fe20719eE(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph140, i64 noundef %v.sroa.16.0132, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i1 noundef zeroext true, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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
  %_3.i.i.i = load i32, ptr %left_ancestor_pivot.sroa.0.0.ph137, align 4, !alias.scope !1180, !noalias !1187, !noundef !18
  %_0.i = icmp slt i32 %_3.i.i.i, %value
  br i1 %_0.i, label %bb14, label %bb17

bb14:                                             ; preds = %bb10, %bb12
  call void @llvm.experimental.noalias.scope.decl(metadata !1191)
  call void @llvm.experimental.noalias.scope.decl(metadata !1194)
  %_8.i25.not = icmp samesign ult i64 %scratch.1, %v.sroa.16.0132
  br i1 %_8.i25.not, label %bb31.i, label %bb33.i, !prof !256

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
  %_4.i.i.i.i30 = load i32, ptr %src, align 4, !alias.scope !1196, !noalias !1203, !noundef !18
  br label %bb6.i28

bb6.i28:                                          ; preds = %bb6.i28.preheader, %bb6.i28
  %state.sroa.43.187.i = phi ptr [ %59, %bb6.i28 ], [ %state.sroa.43.0.i, %bb6.i28.preheader ]
  %state.sroa.9.186.i = phi ptr [ %_9.i54.i, %bb6.i28 ], [ %state.sroa.9.0.i, %bb6.i28.preheader ]
  %state.sroa.27.185.i = phi i64 [ %60, %bb6.i28 ], [ %state.sroa.27.0.i, %bb6.i28.preheader ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1207)
  call void @llvm.experimental.noalias.scope.decl(metadata !1208)
  call void @llvm.experimental.noalias.scope.decl(metadata !1209)
  call void @llvm.experimental.noalias.scope.decl(metadata !1210)
  call void @llvm.experimental.noalias.scope.decl(metadata !1211)
  call void @llvm.experimental.noalias.scope.decl(metadata !1212)
  %_3.i.i.i.i29 = load i32, ptr %state.sroa.9.186.i, align 4, !alias.scope !1213, !noalias !1214, !noundef !18
  %_0.i.i31 = icmp slt i32 %_3.i.i.i.i29, %_4.i.i.i.i30
  %53 = getelementptr inbounds i8, ptr %state.sroa.43.187.i, i64 -4
  %dst_base.sroa.0.0.i.i = select i1 %_0.i.i31, ptr %scratch.0, ptr %53
  %dst.i.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i.i, i64 %state.sroa.27.185.i
  store i32 %_3.i.i.i.i29, ptr %dst.i.i, align 4, !alias.scope !1194, !noalias !1215
  %_8.i.i = zext i1 %_0.i.i31 to i64
  %54 = add i64 %state.sroa.27.185.i, %_8.i.i
  %_9.i.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i, i64 4
  %_3.i.i.i25.i = load i32, ptr %_9.i.i, align 4, !alias.scope !1218, !noalias !1225, !noundef !18
  %_0.i27.i = icmp slt i32 %_3.i.i.i25.i, %_4.i.i.i.i30
  %55 = getelementptr inbounds i8, ptr %state.sroa.43.187.i, i64 -8
  %dst_base.sroa.0.0.i29.i = select i1 %_0.i27.i, ptr %scratch.0, ptr %55
  %dst.i31.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29.i, i64 %54
  store i32 %_3.i.i.i25.i, ptr %dst.i31.i, align 4, !alias.scope !1194, !noalias !1229
  %_8.i33.i = zext i1 %_0.i27.i to i64
  %56 = add i64 %54, %_8.i33.i
  %_9.i34.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i, i64 8
  %_3.i.i.i35.i = load i32, ptr %_9.i34.i, align 4, !alias.scope !1232, !noalias !1239, !noundef !18
  %_0.i37.i = icmp slt i32 %_3.i.i.i35.i, %_4.i.i.i.i30
  %57 = getelementptr inbounds i8, ptr %state.sroa.43.187.i, i64 -12
  %dst_base.sroa.0.0.i39.i = select i1 %_0.i37.i, ptr %scratch.0, ptr %57
  %dst.i41.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39.i, i64 %56
  store i32 %_3.i.i.i35.i, ptr %dst.i41.i, align 4, !alias.scope !1194, !noalias !1243
  %_8.i43.i = zext i1 %_0.i37.i to i64
  %58 = add i64 %56, %_8.i43.i
  %_9.i44.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i, i64 12
  %_3.i.i.i45.i = load i32, ptr %_9.i44.i, align 4, !alias.scope !1246, !noalias !1253, !noundef !18
  %_0.i47.i = icmp slt i32 %_3.i.i.i45.i, %_4.i.i.i.i30
  %59 = getelementptr inbounds i8, ptr %state.sroa.43.187.i, i64 -16
  %dst_base.sroa.0.0.i49.i = select i1 %_0.i47.i, ptr %scratch.0, ptr %59
  %dst.i51.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49.i, i64 %58
  store i32 %_3.i.i.i45.i, ptr %dst.i51.i, align 4, !alias.scope !1194, !noalias !1257
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
  %_4.i.i.i56.i = load i32, ptr %src, align 4, !alias.scope !1260, !noalias !1267, !noundef !18
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
  call void @llvm.experimental.noalias.scope.decl(metadata !1271)
  call void @llvm.experimental.noalias.scope.decl(metadata !1272)
  call void @llvm.experimental.noalias.scope.decl(metadata !1273)
  call void @llvm.experimental.noalias.scope.decl(metadata !1274)
  call void @llvm.experimental.noalias.scope.decl(metadata !1275)
  call void @llvm.experimental.noalias.scope.decl(metadata !1276)
  %_3.i.i.i55.i = load i32, ptr %state.sroa.9.292.i, align 4, !alias.scope !1277, !noalias !1278, !noundef !18
  %_0.i57.i = icmp slt i32 %_3.i.i.i55.i, %_4.i.i.i56.i
  %61 = getelementptr inbounds i8, ptr %state.sroa.43.293.i, i64 -4
  %dst_base.sroa.0.0.i59.i = select i1 %_0.i57.i, ptr %scratch.0, ptr %61
  %dst.i61.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59.i, i64 %state.sroa.27.291.i
  store i32 %_3.i.i.i55.i, ptr %dst.i61.i, align 4, !alias.scope !1194, !noalias !1279
  %_8.i63.i = zext i1 %_0.i57.i to i64
  %62 = add i64 %state.sroa.27.291.i, %_8.i63.i
  %_9.i64.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.292.i, i64 4
  %_47.i = icmp ult ptr %_9.i64.i, %loop_end.i
  br i1 %_47.i, label %bb18.i, label %bb21.i

bb23.i:                                           ; preds = %bb21.i
  %63 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa.i, i64 -4
  %dst.i68.i = getelementptr inbounds nuw i32, ptr %63, i64 %state.sroa.27.2.lcssa.i
  %64 = load i32, ptr %state.sroa.9.2.lcssa.i, align 4, !alias.scope !1191, !noalias !1282
  store i32 %64, ptr %dst.i68.i, align 4, !alias.scope !1194, !noalias !1285
  %_9.i70.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.2.lcssa.i, i64 4
  br label %bb3.i26

bb22.i:                                           ; preds = %bb21.i
  %65 = shl i64 %state.sroa.27.2.lcssa.i, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.sroa.0.0.ph140, ptr nonnull align 4 %scratch.0, i64 %65, i1 false), !alias.scope !1286
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
  %wide.load271 = load <4 x i32>, ptr %70, align 4, !alias.scope !1194, !noalias !1191
  %reverse272 = shufflevector <4 x i32> %wide.load271, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %wide.load273 = load <4 x i32>, ptr %71, align 4, !alias.scope !1194, !noalias !1191
  %reverse274 = shufflevector <4 x i32> %wide.load273, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %72 = getelementptr i8, ptr %67, i64 16
  store <4 x i32> %reverse272, ptr %67, align 4, !alias.scope !1191, !noalias !1194
  store <4 x i32> %reverse274, ptr %72, align 4, !alias.scope !1191, !noalias !1194
  %index.next275 = add nuw i64 %index270, 8
  %73 = icmp eq i64 %index.next275, %n.vec268
  br i1 %73, label %middle.block276, label %vector.body269, !llvm.loop !1287

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
  %78 = load i32, ptr %77, align 4, !alias.scope !1194, !noalias !1191
  store i32 %78, ptr %75, align 4, !alias.scope !1191, !noalias !1194
  %exitcond.not.i = icmp eq i64 %74, %_63.i
  br i1 %exitcond.not.i, label %bb16, label %bb42.i, !llvm.loop !1288

bb16:                                             ; preds = %bb42.i, %middle.block276, %bb22.i
  %79 = icmp eq i64 %state.sroa.27.2.lcssa.i, 0
  br i1 %79, label %bb17, label %bb19

bb19:                                             ; preds = %bb16
  %_6.not.i = icmp ugt i64 %state.sroa.27.2.lcssa.i, %v.sroa.16.0132
  br i1 %_6.not.i, label %bb3.i33, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hbf5dd1b70fd3d158E.exit", !prof !1289

bb3.i33:                                          ; preds = %bb19
; call core::panicking::panic_fmt
  call void @_ZN4core9panicking9panic_fmt17ha4414e4328fe24a0E(ptr noundef nonnull @alloc_d1084648e479974e70c9329824bf76f9, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_58d434a1e795f965ef82c8e9c5db822a) #18, !noalias !1290
  unreachable

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hbf5dd1b70fd3d158E.exit": ; preds = %bb19
  %80 = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph140, i64 %state.sroa.27.2.lcssa.i
; call core::slice::sort::stable::quicksort::quicksort
  call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h4557b5829f07d405E(ptr noalias noundef nonnull align 4 %80, i64 noundef %_63.i, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef %48, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) %pivot_copy, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_8 = icmp ult i64 %state.sroa.27.2.lcssa.i, 33
  br i1 %_8, label %bb3, label %bb5

bb17:                                             ; preds = %bb12, %bb16
  call void @llvm.experimental.noalias.scope.decl(metadata !1294)
  call void @llvm.experimental.noalias.scope.decl(metadata !1297)
  %_8.i34.not = icmp samesign ult i64 %scratch.1, %v.sroa.16.0132
  br i1 %_8.i34.not, label %bb31.i37, label %bb33.i38, !prof !256

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
  %_3.i.i.i.i.i82 = load i32, ptr %src, align 4, !alias.scope !1299, !noalias !1308, !noundef !18
  br label %bb6.i78

bb6.i78:                                          ; preds = %bb6.i78.preheader, %bb6.i78
  %state.sroa.43.187.i79 = phi ptr [ %88, %bb6.i78 ], [ %state.sroa.43.0.i44, %bb6.i78.preheader ]
  %state.sroa.9.186.i80 = phi ptr [ %_9.i54.i100, %bb6.i78 ], [ %state.sroa.9.0.i43, %bb6.i78.preheader ]
  %state.sroa.27.185.i81 = phi i64 [ %89, %bb6.i78 ], [ %state.sroa.27.0.i42, %bb6.i78.preheader ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1313)
  call void @llvm.experimental.noalias.scope.decl(metadata !1314)
  call void @llvm.experimental.noalias.scope.decl(metadata !1315)
  call void @llvm.experimental.noalias.scope.decl(metadata !1316)
  call void @llvm.experimental.noalias.scope.decl(metadata !1317)
  call void @llvm.experimental.noalias.scope.decl(metadata !1318)
  call void @llvm.experimental.noalias.scope.decl(metadata !1319)
  call void @llvm.experimental.noalias.scope.decl(metadata !1320)
  %_4.i.i.i.i.i83 = load i32, ptr %state.sroa.9.186.i80, align 4, !alias.scope !1321, !noalias !1322, !noundef !18
  %_0.i.i.i84 = icmp sge i32 %_3.i.i.i.i.i82, %_4.i.i.i.i.i83
  %82 = getelementptr inbounds i8, ptr %state.sroa.43.187.i79, i64 -4
  %dst_base.sroa.0.0.i.i85 = select i1 %_0.i.i.i84, ptr %scratch.0, ptr %82
  %dst.i.i86 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i.i85, i64 %state.sroa.27.185.i81
  store i32 %_4.i.i.i.i.i83, ptr %dst.i.i86, align 4, !alias.scope !1297, !noalias !1323
  %_8.i.i87 = zext i1 %_0.i.i.i84 to i64
  %83 = add i64 %state.sroa.27.185.i81, %_8.i.i87
  %_9.i.i88 = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i80, i64 4
  %_4.i.i.i.i26.i = load i32, ptr %_9.i.i88, align 4, !alias.scope !1326, !noalias !1335, !noundef !18
  %_0.i.i27.i = icmp sge i32 %_3.i.i.i.i.i82, %_4.i.i.i.i26.i
  %84 = getelementptr inbounds i8, ptr %state.sroa.43.187.i79, i64 -8
  %dst_base.sroa.0.0.i29.i89 = select i1 %_0.i.i27.i, ptr %scratch.0, ptr %84
  %dst.i31.i90 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29.i89, i64 %83
  store i32 %_4.i.i.i.i26.i, ptr %dst.i31.i90, align 4, !alias.scope !1297, !noalias !1340
  %_8.i33.i91 = zext i1 %_0.i.i27.i to i64
  %85 = add i64 %83, %_8.i33.i91
  %_9.i34.i92 = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i80, i64 8
  %_4.i.i.i.i36.i = load i32, ptr %_9.i34.i92, align 4, !alias.scope !1343, !noalias !1352, !noundef !18
  %_0.i.i37.i = icmp sge i32 %_3.i.i.i.i.i82, %_4.i.i.i.i36.i
  %86 = getelementptr inbounds i8, ptr %state.sroa.43.187.i79, i64 -12
  %dst_base.sroa.0.0.i39.i93 = select i1 %_0.i.i37.i, ptr %scratch.0, ptr %86
  %dst.i41.i94 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39.i93, i64 %85
  store i32 %_4.i.i.i.i36.i, ptr %dst.i41.i94, align 4, !alias.scope !1297, !noalias !1357
  %_8.i43.i95 = zext i1 %_0.i.i37.i to i64
  %87 = add i64 %85, %_8.i43.i95
  %_9.i44.i96 = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i80, i64 12
  %_4.i.i.i.i46.i = load i32, ptr %_9.i44.i96, align 4, !alias.scope !1360, !noalias !1369, !noundef !18
  %_0.i.i47.i = icmp sge i32 %_3.i.i.i.i.i82, %_4.i.i.i.i46.i
  %88 = getelementptr inbounds i8, ptr %state.sroa.43.187.i79, i64 -16
  %dst_base.sroa.0.0.i49.i97 = select i1 %_0.i.i47.i, ptr %scratch.0, ptr %88
  %dst.i51.i98 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49.i97, i64 %87
  store i32 %_4.i.i.i.i46.i, ptr %dst.i51.i98, align 4, !alias.scope !1297, !noalias !1374
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
  %_3.i.i.i.i55.i = load i32, ptr %src, align 4, !alias.scope !1377, !noalias !1386, !noundef !18
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
  call void @llvm.experimental.noalias.scope.decl(metadata !1391)
  call void @llvm.experimental.noalias.scope.decl(metadata !1392)
  call void @llvm.experimental.noalias.scope.decl(metadata !1393)
  call void @llvm.experimental.noalias.scope.decl(metadata !1394)
  call void @llvm.experimental.noalias.scope.decl(metadata !1395)
  call void @llvm.experimental.noalias.scope.decl(metadata !1396)
  call void @llvm.experimental.noalias.scope.decl(metadata !1397)
  call void @llvm.experimental.noalias.scope.decl(metadata !1398)
  %_4.i.i.i.i56.i = load i32, ptr %state.sroa.9.292.i71, align 4, !alias.scope !1399, !noalias !1400, !noundef !18
  %_0.i.i57.i = icmp sge i32 %_3.i.i.i.i55.i, %_4.i.i.i.i56.i
  %90 = getelementptr inbounds i8, ptr %state.sroa.43.293.i70, i64 -4
  %dst_base.sroa.0.0.i59.i73 = select i1 %_0.i.i57.i, ptr %scratch.0, ptr %90
  %dst.i61.i74 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59.i73, i64 %state.sroa.27.291.i72
  store i32 %_4.i.i.i.i56.i, ptr %dst.i61.i74, align 4, !alias.scope !1297, !noalias !1401
  %_8.i63.i75 = zext i1 %_0.i.i57.i to i64
  %91 = add i64 %state.sroa.27.291.i72, %_8.i63.i75
  %_9.i64.i76 = getelementptr inbounds nuw i8, ptr %state.sroa.9.292.i71, i64 4
  %_47.i77 = icmp ult ptr %_9.i64.i76, %loop_end.i52
  br i1 %_47.i77, label %bb18.i69, label %bb21.i54

bb23.i59:                                         ; preds = %bb21.i54
  %92 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa.i57, i64 -4
  %dst.i68.i60 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %state.sroa.27.2.lcssa.i55
  %93 = load i32, ptr %state.sroa.9.2.lcssa.i56, align 4, !alias.scope !1294, !noalias !1404
  store i32 %93, ptr %dst.i68.i60, align 4, !alias.scope !1297, !noalias !1407
  %94 = add i64 %state.sroa.27.2.lcssa.i55, 1
  %_9.i70.i61 = getelementptr inbounds nuw i8, ptr %state.sroa.9.2.lcssa.i56, i64 4
  br label %bb3.i41

bb22.i62:                                         ; preds = %bb21.i54
  %95 = shl i64 %state.sroa.27.2.lcssa.i55, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.sroa.0.0.ph140, ptr nonnull align 4 %scratch.0, i64 %95, i1 false), !alias.scope !1408
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
  %wide.load = load <4 x i32>, ptr %100, align 4, !alias.scope !1297, !noalias !1294
  %reverse = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %wide.load262 = load <4 x i32>, ptr %101, align 4, !alias.scope !1297, !noalias !1294
  %reverse263 = shufflevector <4 x i32> %wide.load262, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %102 = getelementptr i8, ptr %97, i64 16
  store <4 x i32> %reverse, ptr %97, align 4, !alias.scope !1294, !noalias !1297
  store <4 x i32> %reverse263, ptr %102, align 4, !alias.scope !1294, !noalias !1297
  %index.next = add nuw i64 %index, 8
  %103 = icmp eq i64 %index.next, %n.vec
  br i1 %103, label %middle.block, label %vector.body, !llvm.loop !1409

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %_63.i63, %n.vec
  br i1 %cmp.n, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h7d88e5b58e885b92E.exit, label %bb42.i66.preheader

bb42.i66.preheader:                               ; preds = %bb42.lr.ph.i65, %middle.block
  %iter.sroa.0.098.i67.ph = phi i64 [ 0, %bb42.lr.ph.i65 ], [ %n.vec, %middle.block ]
  br label %bb42.i66

bb42.i66:                                         ; preds = %bb42.i66.preheader, %bb42.i66
  %iter.sroa.0.098.i67 = phi i64 [ %104, %bb42.i66 ], [ %iter.sroa.0.098.i67.ph, %bb42.i66.preheader ]
  %104 = add nuw i64 %iter.sroa.0.098.i67, 1
  %105 = getelementptr i32, ptr %96, i64 %iter.sroa.0.098.i67
  %106 = xor i64 %iter.sroa.0.098.i67, -1
  %107 = getelementptr i32, ptr %_86.i40, i64 %106
  %108 = load i32, ptr %107, align 4, !alias.scope !1297, !noalias !1294
  store i32 %108, ptr %105, align 4, !alias.scope !1294, !noalias !1297
  %exitcond.not.i68 = icmp eq i64 %104, %_63.i63
  br i1 %exitcond.not.i68, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h7d88e5b58e885b92E.exit, label %bb42.i66, !llvm.loop !1410

_ZN4core5slice4sort6stable9quicksort16stable_partition17h7d88e5b58e885b92E.exit: ; preds = %bb42.i66, %middle.block
  %_47 = icmp ugt i64 %state.sroa.27.2.lcssa.i55, %v.sroa.16.0132
  br i1 %_47, label %bb27, label %bb28, !prof !1289

bb3.thread:                                       ; preds = %bb22.i62
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  br label %bb22

bb28:                                             ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h7d88e5b58e885b92E.exit
  %_54 = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph140, i64 %state.sroa.27.2.lcssa.i55
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_8130 = icmp ult i64 %_63.i63, 33
  br i1 %_8130, label %bb3, label %bb5.lr.ph

bb27:                                             ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h7d88e5b58e885b92E.exit
; call core::slice::index::slice_index_fail
  call void @_ZN4core5slice5index16slice_index_fail17h62807bcaa490c9c1E(i64 noundef %state.sroa.27.2.lcssa.i55, i64 noundef %v.sroa.16.0132, i64 noundef %v.sroa.16.0132, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_0766b232215672ee1bd2195fdb153938) #18
  unreachable

bb22:                                             ; preds = %bb3.thread, %bb9.i.i, %bb3, %bb6
  ret void
}

; core::slice::sort::stable::quicksort::quicksort
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable9quicksort9quicksort17hbc20ec5b59e20ccaE(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %2, ptr noalias noundef readonly align 4 captures(address) dereferenceable_or_null(4) %3, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %pivot_copy = alloca [4 x i8], align 4
  %_8194200 = icmp samesign ult i64 %1, 33
  br i1 %_8194200, label %bb3, label %bb5.lr.ph

bb5.lr.ph:                                        ; preds = %start, %bb28
  %v.sroa.0.0.ph204 = phi ptr [ %_54, %bb28 ], [ %0, %start ]
  %v.sroa.16.0.ph203 = phi i64 [ %_63.i67, %bb28 ], [ %1, %start ]
  %limit.sroa.0.0.ph202 = phi i32 [ %29, %bb28 ], [ %2, %start ]
  %left_ancestor_pivot.sroa.0.0.ph201 = phi ptr [ null, %bb28 ], [ %3, %start ]
  %4 = ptrtoint ptr %v.sroa.0.0.ph204 to i64
  %.not = icmp eq ptr %left_ancestor_pivot.sroa.0.0.ph201, null
  br label %bb5

bb5:                                              ; preds = %bb5.lr.ph, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h2723435a5e7b379eE.exit"
  %v.sroa.16.0196 = phi i64 [ %v.sroa.16.0.ph203, %bb5.lr.ph ], [ %state.sroa.27.2.lcssa.i, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h2723435a5e7b379eE.exit" ]
  %limit.sroa.0.0195 = phi i32 [ %limit.sroa.0.0.ph202, %bb5.lr.ph ], [ %29, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h2723435a5e7b379eE.exit" ]
  %_11 = icmp eq i32 %limit.sroa.0.0195, 0
  br i1 %_11, label %bb6, label %bb7

bb3:                                              ; preds = %bb28, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h2723435a5e7b379eE.exit", %start
  %v.sroa.0.0.ph.lcssa193 = phi ptr [ %0, %start ], [ %v.sroa.0.0.ph204, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h2723435a5e7b379eE.exit" ], [ %_54, %bb28 ]
  %v.sroa.16.0.lcssa = phi i64 [ %1, %start ], [ %state.sroa.27.2.lcssa.i, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h2723435a5e7b379eE.exit" ], [ %_63.i67, %bb28 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1411)
  call void @llvm.experimental.noalias.scope.decl(metadata !1414)
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
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h21273b9460c2a4e1E(ptr noundef nonnull align 4 %v.sroa.0.0.ph.lcssa193, ptr noundef nonnull align 4 %scratch.0, ptr noundef %_16.i)
  %_18.i = getelementptr inbounds nuw float, ptr %v.sroa.0.0.ph.lcssa193, i64 %len_div_211.i
  %_19.i = getelementptr inbounds nuw float, ptr %scratch.0, i64 %len_div_211.i
  %_20.i = getelementptr inbounds nuw i8, ptr %_16.i, i64 32
; call core::slice::sort::shared::smallsort::sort8_stable
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h21273b9460c2a4e1E(ptr noundef %_18.i, ptr noundef %_19.i, ptr noundef %_20.i)
  br label %bb15.i

bb10.i:                                           ; preds = %bb9.i
; call core::slice::sort::shared::smallsort::sort4_stable
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17hb4592272b39e3420E(ptr noundef nonnull align 4 %v.sroa.0.0.ph.lcssa193, ptr noundef nonnull align 4 %scratch.0)
  %_27.i = getelementptr inbounds nuw float, ptr %v.sroa.0.0.ph.lcssa193, i64 %len_div_211.i
  %_28.i = getelementptr inbounds nuw float, ptr %scratch.0, i64 %len_div_211.i
; call core::slice::sort::shared::smallsort::sort4_stable
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17hb4592272b39e3420E(ptr noundef %_27.i, ptr noundef %_28.i)
  br label %bb15.i

bb46.i:                                           ; preds = %bb9.i
  %5 = load i32, ptr %v.sroa.0.0.ph.lcssa193, align 4, !alias.scope !1411, !noalias !1416
  store i32 %5, ptr %scratch.0, align 4, !alias.scope !1414, !noalias !1418
  %_31.i = getelementptr inbounds nuw float, ptr %v.sroa.0.0.ph.lcssa193, i64 %len_div_211.i
  %6 = getelementptr inbounds nuw float, ptr %scratch.0, i64 %len_div_211.i
  %7 = load i32, ptr %_31.i, align 4, !alias.scope !1411, !noalias !1416
  store i32 %7, ptr %6, align 4, !alias.scope !1414, !noalias !1418
  br label %bb15.i

bb15.i:                                           ; preds = %bb46.i, %bb10.i, %bb6.i
  %presorted_len.sroa.0.0.i = phi i64 [ 8, %bb6.i ], [ 4, %bb10.i ], [ 1, %bb46.i ]
  %8 = sub nsw i64 %v.sroa.16.0.lcssa, %len_div_211.i
  %_8030.i = icmp samesign ult i64 %presorted_len.sroa.0.0.i, %len_div_211.i
  br i1 %_8030.i, label %bb24.preheader.i, label %bb16.loopexit.i

bb16.loopexit.i:                                  ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h61d2d7647b25750aE.exit.i, %bb15.i
  %src5.1.i = getelementptr inbounds nuw float, ptr %v.sroa.0.0.ph.lcssa193, i64 %len_div_211.i
  %dst6.1.i = getelementptr float, ptr %scratch.0, i64 %len_div_211.i
  %_8030.1.i = icmp ult i64 %presorted_len.sroa.0.0.i, %8
  br i1 %_8030.1.i, label %bb24.preheader.1.i, label %bb16.loopexit.1.i

bb24.preheader.1.i:                               ; preds = %bb16.loopexit.i
  %iter1.sroa.0.132.1.i = add nuw nsw i64 %presorted_len.sroa.0.0.i, 1
  br label %bb24.1.i

bb24.1.i:                                         ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h61d2d7647b25750aE.exit.1.i, %bb24.preheader.1.i
  %iter1.sroa.0.134.1.i = phi i64 [ %iter1.sroa.0.1.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h61d2d7647b25750aE.exit.1.i ], [ %iter1.sroa.0.132.1.i, %bb24.preheader.1.i ]
  %iter1.sroa.0.033.1.i = phi i64 [ %iter1.sroa.0.134.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h61d2d7647b25750aE.exit.1.i ], [ %presorted_len.sroa.0.0.i, %bb24.preheader.1.i ]
  %_55.1.i = getelementptr inbounds nuw float, ptr %src5.1.i, i64 %iter1.sroa.0.033.1.i
  %dst7.1.i = getelementptr inbounds nuw float, ptr %dst6.1.i, i64 %iter1.sroa.0.033.1.i
  %9 = load i32, ptr %_55.1.i, align 4, !alias.scope !1411, !noalias !1416
  store i32 %9, ptr %dst7.1.i, align 4, !alias.scope !1414, !noalias !1418
  %10 = getelementptr inbounds i8, ptr %dst7.1.i, i64 -4
  %_6.i.i.i16.cast.1.i = bitcast i32 %9 to float
  %_7.i.i.i17.1.i = load float, ptr %10, align 4, !alias.scope !1419, !noalias !1424, !noundef !18
  %brmerge.not.i.i18.1.i = fcmp uno float %_7.i.i.i17.1.i, %_6.i.i.i16.cast.1.i
  br i1 %brmerge.not.i.i18.1.i, label %bb6.i.i.i21.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit.i19.1.i", !prof !21

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit.i19.1.i": ; preds = %bb24.1.i
  %_8.i.mux.i.i20.1.i = fcmp ogt float %_7.i.i.i17.1.i, %_6.i.i.i16.cast.1.i
  br i1 %_8.i.mux.i.i20.1.i, label %bb4.i.1.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h61d2d7647b25750aE.exit.1.i

bb4.i.1.i:                                        ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit.i19.1.i", %bb7.i.1.i
  %.in.i.1.i = phi float [ %_7.i.i2.i.1.i, %bb7.i.1.i ], [ %_7.i.i.i17.1.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit.i19.1.i" ]
  %gap_guard.sroa.5.0.i.1.i = phi ptr [ %sift.sroa.0.0.i.1.i, %bb7.i.1.i ], [ %dst7.1.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit.i19.1.i" ]
  %sift.sroa.0.0.i.1.i = phi ptr [ %11, %bb7.i.1.i ], [ %10, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit.i19.1.i" ]
  store float %.in.i.1.i, ptr %gap_guard.sroa.5.0.i.1.i, align 4, !alias.scope !1414, !noalias !1418
  %_18.i.1.i = icmp eq ptr %sift.sroa.0.0.i.1.i, %dst6.1.i
  br i1 %_18.i.1.i, label %bb10.i.1.i, label %bb6.i.1.i

bb6.i.1.i:                                        ; preds = %bb4.i.1.i
  %11 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.1.i, i64 -4
  %_7.i.i2.i.1.i = load float, ptr %11, align 4, !alias.scope !1427, !noalias !1432, !noundef !18
  %brmerge.not.i3.i.1.i = fcmp uno float %_7.i.i2.i.1.i, %_6.i.i.i16.cast.1.i
  br i1 %brmerge.not.i3.i.1.i, label %bb6.i.i5.i.i, label %bb7.i.1.i, !prof !21

bb7.i.1.i:                                        ; preds = %bb6.i.1.i
  %_8.i.mux.i4.i.1.i = fcmp ogt float %_7.i.i2.i.1.i, %_6.i.i.i16.cast.1.i
  br i1 %_8.i.mux.i4.i.1.i, label %bb4.i.1.i, label %bb10.i.1.i

bb10.i.1.i:                                       ; preds = %bb7.i.1.i, %bb4.i.1.i
  %sift.sroa.0.0.i.lcssa.1.i = phi ptr [ %sift.sroa.0.0.i.1.i, %bb7.i.1.i ], [ %dst6.1.i, %bb4.i.1.i ]
  store i32 %9, ptr %sift.sroa.0.0.i.lcssa.1.i, align 4, !alias.scope !1414, !noalias !1435
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h61d2d7647b25750aE.exit.1.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h61d2d7647b25750aE.exit.1.i: ; preds = %bb10.i.1.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit.i19.1.i"
  %_80.1.i = icmp ult i64 %iter1.sroa.0.134.1.i, %8
  %_84.1.i = zext i1 %_80.1.i to i64
  %iter1.sroa.0.1.1.i = add nuw i64 %iter1.sroa.0.134.1.i, %_84.1.i
  br i1 %_80.1.i, label %bb24.1.i, label %bb16.loopexit.1.i

bb16.loopexit.1.i:                                ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h61d2d7647b25750aE.exit.1.i, %bb16.loopexit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1440)
  %count1.i.i = add nsw i64 %v.sroa.16.0.lcssa, -1
  %12 = getelementptr inbounds nuw float, ptr %v.sroa.0.0.ph.lcssa193, i64 %count1.i.i
  %13 = getelementptr inbounds nuw float, ptr %scratch.0, i64 %count1.i.i
  %14 = getelementptr i8, ptr %dst6.1.i, i64 -4
  br label %bb15.i.i

bb24.preheader.i:                                 ; preds = %bb15.i
  %iter1.sroa.0.132.i = add nuw nsw i64 %presorted_len.sroa.0.0.i, 1
  br label %bb24.i

bb16.i.i:                                         ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit24.i.i"
  %15 = getelementptr i8, ptr %20, i64 4
  %16 = getelementptr i8, ptr %19, i64 4
  %_44.i.i = and i64 %v.sroa.16.0.lcssa, 1
  %_22.i.i = icmp eq i64 %_44.i.i, 0
  br i1 %_22.i.i, label %bb9.i.i, label %bb5.i.i

bb15.i.i:                                         ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit24.i.i", %bb16.loopexit.1.i
  %dst.sroa.0.042.i.i = phi ptr [ %_16.i.i.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit24.i.i" ], [ %v.sroa.0.0.ph.lcssa193, %bb16.loopexit.1.i ]
  %iter.sroa.0.041.i.i = phi i64 [ %_39.i.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit24.i.i" ], [ 0, %bb16.loopexit.1.i ]
  %left.sroa.0.040.i.i = phi ptr [ %_14.i.i.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit24.i.i" ], [ %scratch.0, %bb16.loopexit.1.i ]
  %right.sroa.0.039.i.i = phi ptr [ %_12.i.i.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit24.i.i" ], [ %dst6.1.i, %bb16.loopexit.1.i ]
  %left_rev.sroa.0.038.i.i = phi ptr [ %20, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit24.i.i" ], [ %14, %bb16.loopexit.1.i ]
  %right_rev.sroa.0.037.i.i = phi ptr [ %19, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit24.i.i" ], [ %13, %bb16.loopexit.1.i ]
  %dst_rev.sroa.0.036.i.i = phi ptr [ %21, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit24.i.i" ], [ %12, %bb16.loopexit.1.i ]
  %_39.i.i = add nuw nsw i64 %iter.sroa.0.041.i.i, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !1443)
  call void @llvm.experimental.noalias.scope.decl(metadata !1446)
  call void @llvm.experimental.noalias.scope.decl(metadata !1448), !noalias !1451
  call void @llvm.experimental.noalias.scope.decl(metadata !1454), !noalias !1451
  %_6.i.i.i.i = load float, ptr %right.sroa.0.039.i.i, align 4, !alias.scope !1456, !noalias !1457, !noundef !18
  %_7.i.i.i.i = load float, ptr %left.sroa.0.040.i.i, align 4, !alias.scope !1458, !noalias !1459, !noundef !18
  %brmerge.not.i.i.i = fcmp uno float %_6.i.i.i.i, %_7.i.i.i.i
  br i1 %brmerge.not.i.i.i, label %bb6.i.i23.i.invoke.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit.i.i", !prof !21

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit.i.i": ; preds = %bb15.i.i
  %_8.i.mux.i.i.i = fcmp olt float %_6.i.i.i.i, %_7.i.i.i.i
  %..i17.i.i = select i1 %_8.i.mux.i.i.i, ptr %right.sroa.0.039.i.i, ptr %left.sroa.0.040.i.i
  %17 = load i32, ptr %..i17.i.i, align 4, !alias.scope !1460, !noalias !1461
  store i32 %17, ptr %dst.sroa.0.042.i.i, align 4, !alias.scope !1411, !noalias !1463
  call void @llvm.experimental.noalias.scope.decl(metadata !1464)
  call void @llvm.experimental.noalias.scope.decl(metadata !1467)
  call void @llvm.experimental.noalias.scope.decl(metadata !1469), !noalias !1472
  call void @llvm.experimental.noalias.scope.decl(metadata !1475), !noalias !1472
  %_6.i.i19.i.i = load float, ptr %right_rev.sroa.0.037.i.i, align 4, !alias.scope !1477, !noalias !1478, !noundef !18
  %_7.i.i20.i.i = load float, ptr %left_rev.sroa.0.038.i.i, align 4, !alias.scope !1479, !noalias !1480, !noundef !18
  %brmerge.not.i21.i.i = fcmp uno float %_6.i.i19.i.i, %_7.i.i20.i.i
  br i1 %brmerge.not.i21.i.i, label %bb6.i.i23.i.invoke.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit24.i.i", !prof !21

bb6.i.i23.i.invoke.i:                             ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit.i.i", %bb15.i.i
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_622d794692a7bb5656187ee0c7bf9126) #18
          to label %bb6.i.i23.i.cont.i unwind label %cleanup2.i, !noalias !1481

bb6.i.i23.i.cont.i:                               ; preds = %bb6.i.i23.i.invoke.i
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit24.i.i": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit.i.i"
  %_16.i.i.i = getelementptr inbounds nuw i8, ptr %dst.sroa.0.042.i.i, i64 4
  %is_l.i18.i.i = xor i1 %_8.i.mux.i.i.i, true
  %count2.i.i.i = zext i1 %is_l.i18.i.i to i64
  %_14.i.i.i = getelementptr inbounds nuw float, ptr %left.sroa.0.040.i.i, i64 %count2.i.i.i
  %count.i.i.i = zext i1 %_8.i.mux.i.i.i to i64
  %_12.i.i.i = getelementptr inbounds nuw float, ptr %right.sroa.0.039.i.i, i64 %count.i.i.i
  %_8.i.mux.i22.i.i = fcmp olt float %_6.i.i19.i.i, %_7.i.i20.i.i
  %..i.i.i = select i1 %_8.i.mux.i22.i.i, ptr %left_rev.sroa.0.038.i.i, ptr %right_rev.sroa.0.037.i.i
  %is_l.i.i.i = xor i1 %_8.i.mux.i22.i.i, true
  %18 = load i32, ptr %..i.i.i, align 4, !alias.scope !1460, !noalias !1482
  store i32 %18, ptr %dst_rev.sroa.0.036.i.i, align 4, !alias.scope !1411, !noalias !1484
  %count.neg.i.i.i = sext i1 %is_l.i.i.i to i64
  %19 = getelementptr float, ptr %right_rev.sroa.0.037.i.i, i64 %count.neg.i.i.i
  %count3.neg.i.i.i = sext i1 %_8.i.mux.i22.i.i to i64
  %20 = getelementptr float, ptr %left_rev.sroa.0.038.i.i, i64 %count3.neg.i.i.i
  %21 = getelementptr inbounds i8, ptr %dst_rev.sroa.0.036.i.i, i64 -4
  %exitcond.not.i.i = icmp eq i64 %_39.i.i, %len_div_211.i
  br i1 %exitcond.not.i.i, label %bb16.i.i, label %bb15.i.i

bb5.i.i:                                          ; preds = %bb16.i.i
  %left_nonempty.i.i = icmp ult ptr %_14.i.i.i, %15
  %left.sroa.0.0.right.sroa.0.0.i.i = select i1 %left_nonempty.i.i, ptr %_14.i.i.i, ptr %_12.i.i.i
  %22 = load i32, ptr %left.sroa.0.0.right.sroa.0.0.i.i, align 4, !alias.scope !1460, !noalias !1418
  store i32 %22, ptr %_16.i.i.i, align 4, !alias.scope !1411, !noalias !1485
  %count2.i.i = zext i1 %left_nonempty.i.i to i64
  %_26.i.i = getelementptr inbounds nuw float, ptr %_14.i.i.i, i64 %count2.i.i
  %_30.i.i = xor i1 %left_nonempty.i.i, true
  %count3.i.i = zext i1 %_30.i.i to i64
  %_28.i.i = getelementptr inbounds nuw float, ptr %_12.i.i.i, i64 %count3.i.i
  br label %bb9.i.i

bb9.i.i:                                          ; preds = %bb5.i.i, %bb16.i.i
  %right.sroa.0.1.i.i = phi ptr [ %_12.i.i.i, %bb16.i.i ], [ %_28.i.i, %bb5.i.i ]
  %left.sroa.0.1.i.i = phi ptr [ %_14.i.i.i, %bb16.i.i ], [ %_26.i.i, %bb5.i.i ]
  %_31.i.i = icmp ne ptr %left.sroa.0.1.i.i, %15
  %_32.i.i = icmp ne ptr %right.sroa.0.1.i.i, %16
  %or.cond.i.i = select i1 %_31.i.i, i1 true, i1 %_32.i.i
  br i1 %or.cond.i.i, label %bb13.i.i, label %bb22, !prof !256

bb13.i.i:                                         ; preds = %bb9.i.i
; invoke core::slice::sort::shared::smallsort::panic_on_ord_violation
  invoke void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #18
          to label %.noexc14.i unwind label %cleanup2.i, !noalias !1481

.noexc14.i:                                       ; preds = %bb13.i.i
  unreachable

cleanup2.i:                                       ; preds = %bb13.i.i, %bb6.i.i23.i.invoke.i
  %23 = landingpad { ptr, i32 }
          cleanup
  %24 = shl nuw nsw i64 %v.sroa.16.0.lcssa, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.sroa.0.0.ph.lcssa193, ptr nonnull align 4 %scratch.0, i64 %24, i1 false), !alias.scope !1486, !noalias !1487
  br label %bb31.i

bb31.i:                                           ; preds = %bb14.i.i, %cleanup2.i
  %.pn.i = phi { ptr, i32 } [ %23, %cleanup2.i ], [ %28, %bb14.i.i ]
  resume { ptr, i32 } %.pn.i

bb24.i:                                           ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h61d2d7647b25750aE.exit.i, %bb24.preheader.i
  %iter1.sroa.0.134.i = phi i64 [ %iter1.sroa.0.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h61d2d7647b25750aE.exit.i ], [ %iter1.sroa.0.132.i, %bb24.preheader.i ]
  %iter1.sroa.0.033.i = phi i64 [ %iter1.sroa.0.134.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h61d2d7647b25750aE.exit.i ], [ %presorted_len.sroa.0.0.i, %bb24.preheader.i ]
  %_55.i = getelementptr inbounds nuw float, ptr %v.sroa.0.0.ph.lcssa193, i64 %iter1.sroa.0.033.i
  %dst7.i = getelementptr inbounds nuw float, ptr %scratch.0, i64 %iter1.sroa.0.033.i
  %25 = load i32, ptr %_55.i, align 4, !alias.scope !1411, !noalias !1416
  store i32 %25, ptr %dst7.i, align 4, !alias.scope !1414, !noalias !1418
  %26 = getelementptr inbounds i8, ptr %dst7.i, i64 -4
  %_6.i.i.i16.cast.i = bitcast i32 %25 to float
  %_7.i.i.i17.i = load float, ptr %26, align 4, !alias.scope !1419, !noalias !1424, !noundef !18
  %brmerge.not.i.i18.i = fcmp uno float %_7.i.i.i17.i, %_6.i.i.i16.cast.i
  br i1 %brmerge.not.i.i18.i, label %bb6.i.i.i21.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit.i19.i", !prof !21

bb6.i.i.i21.i:                                    ; preds = %bb24.i, %bb24.1.i
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_622d794692a7bb5656187ee0c7bf9126) #18, !noalias !1481
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit.i19.i": ; preds = %bb24.i
  %_8.i.mux.i.i20.i = fcmp ogt float %_7.i.i.i17.i, %_6.i.i.i16.cast.i
  br i1 %_8.i.mux.i.i20.i, label %bb4.i.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h61d2d7647b25750aE.exit.i

bb4.i.i:                                          ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit.i19.i", %bb7.i.i
  %.in.i.i = phi float [ %_7.i.i2.i.i, %bb7.i.i ], [ %_7.i.i.i17.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit.i19.i" ]
  %gap_guard.sroa.5.0.i.i = phi ptr [ %sift.sroa.0.0.i.i, %bb7.i.i ], [ %dst7.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit.i19.i" ]
  %sift.sroa.0.0.i.i = phi ptr [ %27, %bb7.i.i ], [ %26, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit.i19.i" ]
  store float %.in.i.i, ptr %gap_guard.sroa.5.0.i.i, align 4, !alias.scope !1414, !noalias !1418
  %_18.i.i = icmp eq ptr %sift.sroa.0.0.i.i, %scratch.0
  br i1 %_18.i.i, label %bb10.i.i, label %bb6.i.i

bb6.i.i:                                          ; preds = %bb4.i.i
  %27 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i, i64 -4
  %_7.i.i2.i.i = load float, ptr %27, align 4, !alias.scope !1427, !noalias !1432, !noundef !18
  %brmerge.not.i3.i.i = fcmp uno float %_7.i.i2.i.i, %_6.i.i.i16.cast.i
  br i1 %brmerge.not.i3.i.i, label %bb6.i.i5.i.i, label %bb7.i.i, !prof !21

bb6.i.i5.i.i:                                     ; preds = %bb6.i.i, %bb6.i.1.i
  %.lcssa38.i = phi i32 [ %9, %bb6.i.1.i ], [ %25, %bb6.i.i ]
  %sift.sroa.0.0.i.lcssa36.i = phi ptr [ %sift.sroa.0.0.i.1.i, %bb6.i.1.i ], [ %sift.sroa.0.0.i.i, %bb6.i.i ]
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_622d794692a7bb5656187ee0c7bf9126) #18
          to label %.noexc.i.i unwind label %bb14.i.i, !noalias !1481

.noexc.i.i:                                       ; preds = %bb6.i.i5.i.i
  unreachable

bb7.i.i:                                          ; preds = %bb6.i.i
  %_8.i.mux.i4.i.i = fcmp ogt float %_7.i.i2.i.i, %_6.i.i.i16.cast.i
  br i1 %_8.i.mux.i4.i.i, label %bb4.i.i, label %bb10.i.i

bb10.i.i:                                         ; preds = %bb7.i.i, %bb4.i.i
  %sift.sroa.0.0.i.lcssa.i = phi ptr [ %sift.sroa.0.0.i.i, %bb7.i.i ], [ %scratch.0, %bb4.i.i ]
  store i32 %25, ptr %sift.sroa.0.0.i.lcssa.i, align 4, !alias.scope !1414, !noalias !1435
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h61d2d7647b25750aE.exit.i

bb14.i.i:                                         ; preds = %bb6.i.i5.i.i
  %28 = landingpad { ptr, i32 }
          cleanup
  store i32 %.lcssa38.i, ptr %sift.sroa.0.0.i.lcssa36.i, align 4, !alias.scope !1414, !noalias !1492
  br label %bb31.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h61d2d7647b25750aE.exit.i: ; preds = %bb10.i.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit.i19.i"
  %_80.i = icmp ult i64 %iter1.sroa.0.134.i, %len_div_211.i
  %_84.i = zext i1 %_80.i to i64
  %iter1.sroa.0.1.i = add nuw i64 %iter1.sroa.0.134.i, %_84.i
  br i1 %_80.i, label %bb24.i, label %bb16.loopexit.i

bb7:                                              ; preds = %bb5
  %29 = add i32 %limit.sroa.0.0195, -1
  call void @llvm.experimental.noalias.scope.decl(metadata !1497)
  %len_div_84.i = lshr i64 %v.sroa.16.0196, 3
  %b.idx.i = shl nuw nsw i64 %len_div_84.i, 4
  %b.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph204, i64 %b.idx.i
  %c.idx.i = mul nuw nsw i64 %len_div_84.i, 28
  %c.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph204, i64 %c.idx.i
  %_12.i = icmp samesign ult i64 %v.sroa.16.0196, 64
  br i1 %_12.i, label %bb3.i23, label %bb5.i

bb5.i:                                            ; preds = %bb7
; call core::slice::sort::shared::pivot::median3_rec
  %self.i = call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h0bfb6bddbb79f797E(ptr noundef nonnull readonly align 4 %v.sroa.0.0.ph204, ptr noundef readonly %b.i, ptr noundef readonly %c.i, i64 noundef %len_div_84.i)
  br label %bb10

bb3.i23:                                          ; preds = %bb7
  call void @llvm.experimental.noalias.scope.decl(metadata !1500)
  call void @llvm.experimental.noalias.scope.decl(metadata !1503)
  call void @llvm.experimental.noalias.scope.decl(metadata !1505), !noalias !1508
  call void @llvm.experimental.noalias.scope.decl(metadata !1511), !noalias !1508
  %_6.i.i.i = load float, ptr %v.sroa.0.0.ph204, align 4, !alias.scope !1513, !noalias !1514, !noundef !18
  %_7.i.i.i = load float, ptr %b.i, align 4, !alias.scope !1516, !noalias !1517, !noundef !18
  %brmerge.not.i.i = fcmp uno float %_6.i.i.i, %_7.i.i.i
  br i1 %brmerge.not.i.i, label %bb6.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit.i", !prof !21

bb6.i.i.i:                                        ; preds = %bb3.i23
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_622d794692a7bb5656187ee0c7bf9126) #18, !noalias !1518
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit.i": ; preds = %bb3.i23
  %_8.i.mux.i.i = fcmp olt float %_6.i.i.i, %_7.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1519)
  call void @llvm.experimental.noalias.scope.decl(metadata !1522)
  %_7.i.i6.i = load float, ptr %c.i, align 4, !alias.scope !1525, !noalias !1526, !noundef !18
  %brmerge.not.i7.i = fcmp uno float %_6.i.i.i, %_7.i.i6.i
  br i1 %brmerge.not.i7.i, label %bb6.i.i9.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit10.i", !prof !21

bb6.i.i9.i:                                       ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit.i"
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_622d794692a7bb5656187ee0c7bf9126) #18, !noalias !1529
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit10.i": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit.i"
  %_8.i.mux.i8.i = fcmp olt float %_6.i.i.i, %_7.i.i6.i
  %30 = xor i1 %_8.i.mux.i.i, %_8.i.mux.i8.i
  br i1 %30, label %bb10, label %bb3.i.i

bb3.i.i:                                          ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit10.i"
  %brmerge.not.i13.i = fcmp uno float %_7.i.i.i, %_7.i.i6.i
  br i1 %brmerge.not.i13.i, label %bb6.i.i15.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit16.i", !prof !21

bb6.i.i15.i:                                      ; preds = %bb3.i.i
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_622d794692a7bb5656187ee0c7bf9126) #18, !noalias !1530
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit16.i": ; preds = %bb3.i.i
  %_8.i.mux.i14.i = fcmp olt float %_7.i.i.i, %_7.i.i6.i
  %_12.i.i = xor i1 %_8.i.mux.i.i, %_8.i.mux.i14.i
  %c.b.i.i = select i1 %_12.i.i, ptr %c.i, ptr %b.i
  br label %bb10

bb6:                                              ; preds = %bb5
; call core::slice::sort::stable::drift::sort
  call fastcc void @_ZN4core5slice4sort6stable5drift4sort17hc2852d4db71486a3E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph204, i64 noundef %v.sroa.16.0196, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i1 noundef zeroext true, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  br label %bb22

bb10:                                             ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit16.i", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit10.i", %bb5.i
  %_0.sroa.0.0.i.sink.i = phi ptr [ %self.i, %bb5.i ], [ %v.sroa.0.0.ph204, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit10.i" ], [ %c.b.i.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit16.i" ]
  %31 = ptrtoint ptr %_0.sroa.0.0.i.sink.i to i64
  %32 = sub nuw i64 %31, %4
  %index.sroa.0.0.i = lshr exact i64 %32, 2
  %cond.i = icmp samesign ult i64 %index.sroa.0.0.i, %v.sroa.16.0196
  call void @llvm.assume(i1 %cond.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pivot_copy)
  %src = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph204, i64 %32
  %value = load float, ptr %src, align 4, !noundef !18
  store float %value, ptr %pivot_copy, align 4
  br i1 %.not, label %bb14, label %bb12

bb12:                                             ; preds = %bb10
  call void @llvm.experimental.noalias.scope.decl(metadata !1537)
  call void @llvm.experimental.noalias.scope.decl(metadata !1540)
  %_6.i.i = load float, ptr %left_ancestor_pivot.sroa.0.0.ph201, align 4, !alias.scope !1543, !noalias !1544, !noundef !18
  %brmerge.not.i = fcmp uno float %_6.i.i, %value
  br i1 %brmerge.not.i, label %bb6.i.i24, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit", !prof !21

bb6.i.i24:                                        ; preds = %bb12
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_622d794692a7bb5656187ee0c7bf9126) #18, !noalias !1547
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit": ; preds = %bb12
  %_8.i.mux.i = fcmp olt float %_6.i.i, %value
  br i1 %_8.i.mux.i, label %bb14, label %bb17

bb14:                                             ; preds = %bb10, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit"
  call void @llvm.experimental.noalias.scope.decl(metadata !1548)
  call void @llvm.experimental.noalias.scope.decl(metadata !1551)
  %_8.i25.not = icmp samesign ult i64 %scratch.1, %v.sroa.16.0196
  br i1 %_8.i25.not, label %bb31.i26, label %bb33.i, !prof !256

bb33.i:                                           ; preds = %bb14
  %_86.i = getelementptr float, ptr %scratch.0, i64 %v.sroa.16.0196
  br label %bb3.i27

bb31.i26:                                         ; preds = %bb14
  call void @llvm.trap()
  unreachable

bb3.i27:                                          ; preds = %bb23.i, %bb33.i
  %state.sroa.27.0.i = phi i64 [ 0, %bb33.i ], [ %state.sroa.27.2.lcssa.i, %bb23.i ]
  %state.sroa.9.0.i = phi ptr [ %v.sroa.0.0.ph204, %bb33.i ], [ %_9.i82.i, %bb23.i ]
  %state.sroa.43.0.i = phi ptr [ %_86.i, %bb33.i ], [ %44, %bb23.i ]
  %pivot_pos.sroa.0.0.i = phi i64 [ %index.sroa.0.0.i, %bb33.i ], [ %v.sroa.16.0196, %bb23.i ]
  %33 = call i64 @llvm.usub.sat.i64(i64 %pivot_pos.sroa.0.0.i, i64 3)
  %unroll_end.i = getelementptr inbounds nuw float, ptr %v.sroa.0.0.ph204, i64 %33
  %_19111.i = icmp ult ptr %state.sroa.9.0.i, %unroll_end.i
  br i1 %_19111.i, label %bb6.i29.preheader, label %bb16.i

bb6.i29.preheader:                                ; preds = %bb3.i27
  %_7.i.i.i31 = load float, ptr %src, align 4, !alias.scope !1553, !noalias !1558, !noundef !18
  br label %bb6.i29

bb6.i29:                                          ; preds = %bb6.i29.preheader, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit56.i"
  %state.sroa.43.1114.i = phi ptr [ %40, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit56.i" ], [ %state.sroa.43.0.i, %bb6.i29.preheader ]
  %state.sroa.9.1113.i = phi ptr [ %_9.i63.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit56.i" ], [ %state.sroa.9.0.i, %bb6.i29.preheader ]
  %state.sroa.27.1112.i = phi i64 [ %41, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit56.i" ], [ %state.sroa.27.0.i, %bb6.i29.preheader ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1561)
  call void @llvm.experimental.noalias.scope.decl(metadata !1562)
  call void @llvm.experimental.noalias.scope.decl(metadata !1563)
  call void @llvm.experimental.noalias.scope.decl(metadata !1564)
  %_6.i.i.i30 = load float, ptr %state.sroa.9.1113.i, align 4, !alias.scope !1565, !noalias !1566, !noundef !18
  %brmerge.not.i.i32 = fcmp uno float %_6.i.i.i30, %_7.i.i.i31
  br i1 %brmerge.not.i.i32, label %bb6.i.i.i36, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit.i33", !prof !21

bb6.i.i.i36:                                      ; preds = %bb6.i29
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_622d794692a7bb5656187ee0c7bf9126) #18, !noalias !1567
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit.i33": ; preds = %bb6.i29
  %_8.i.mux.i.i34 = fcmp olt float %_6.i.i.i30, %_7.i.i.i31
  %34 = getelementptr inbounds i8, ptr %state.sroa.43.1114.i, i64 -4
  %dst_base.sroa.0.0.i.i = select i1 %_8.i.mux.i.i34, ptr %scratch.0, ptr %34
  %dst.i.i = getelementptr inbounds nuw float, ptr %dst_base.sroa.0.0.i.i, i64 %state.sroa.27.1112.i
  store float %_6.i.i.i30, ptr %dst.i.i, align 4, !alias.scope !1551, !noalias !1568
  %_9.i.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.1113.i, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !1571)
  call void @llvm.experimental.noalias.scope.decl(metadata !1574)
  %_6.i.i25.i = load float, ptr %_9.i.i, align 4, !alias.scope !1577, !noalias !1578, !noundef !18
  %brmerge.not.i27.i = fcmp uno float %_6.i.i25.i, %_7.i.i.i31
  br i1 %brmerge.not.i27.i, label %bb6.i.i29.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit30.i", !prof !21

bb6.i.i29.i:                                      ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit.i33"
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_622d794692a7bb5656187ee0c7bf9126) #18, !noalias !1581
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit30.i": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit.i33"
  %_8.i.i = zext i1 %_8.i.mux.i.i34 to i64
  %35 = add i64 %state.sroa.27.1112.i, %_8.i.i
  %_8.i.mux.i28.i = fcmp olt float %_6.i.i25.i, %_7.i.i.i31
  %36 = getelementptr inbounds i8, ptr %state.sroa.43.1114.i, i64 -8
  %dst_base.sroa.0.0.i32.i = select i1 %_8.i.mux.i28.i, ptr %scratch.0, ptr %36
  %dst.i34.i = getelementptr inbounds nuw float, ptr %dst_base.sroa.0.0.i32.i, i64 %35
  store float %_6.i.i25.i, ptr %dst.i34.i, align 4, !alias.scope !1551, !noalias !1582
  %_9.i37.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.1113.i, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1585)
  call void @llvm.experimental.noalias.scope.decl(metadata !1588)
  %_6.i.i38.i = load float, ptr %_9.i37.i, align 4, !alias.scope !1591, !noalias !1592, !noundef !18
  %brmerge.not.i40.i = fcmp uno float %_6.i.i38.i, %_7.i.i.i31
  br i1 %brmerge.not.i40.i, label %bb6.i.i42.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit43.i", !prof !21

bb6.i.i42.i:                                      ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit30.i"
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_622d794692a7bb5656187ee0c7bf9126) #18, !noalias !1595
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit43.i": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit30.i"
  %_8.i36.i = zext i1 %_8.i.mux.i28.i to i64
  %37 = add i64 %35, %_8.i36.i
  %_8.i.mux.i41.i = fcmp olt float %_6.i.i38.i, %_7.i.i.i31
  %38 = getelementptr inbounds i8, ptr %state.sroa.43.1114.i, i64 -12
  %dst_base.sroa.0.0.i45.i = select i1 %_8.i.mux.i41.i, ptr %scratch.0, ptr %38
  %dst.i47.i = getelementptr inbounds nuw float, ptr %dst_base.sroa.0.0.i45.i, i64 %37
  store float %_6.i.i38.i, ptr %dst.i47.i, align 4, !alias.scope !1551, !noalias !1596
  %_9.i50.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.1113.i, i64 12
  call void @llvm.experimental.noalias.scope.decl(metadata !1599)
  call void @llvm.experimental.noalias.scope.decl(metadata !1602)
  %_6.i.i51.i = load float, ptr %_9.i50.i, align 4, !alias.scope !1605, !noalias !1606, !noundef !18
  %brmerge.not.i53.i = fcmp uno float %_6.i.i51.i, %_7.i.i.i31
  br i1 %brmerge.not.i53.i, label %bb6.i.i55.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit56.i", !prof !21

bb6.i.i55.i:                                      ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit43.i"
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_622d794692a7bb5656187ee0c7bf9126) #18, !noalias !1609
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit56.i": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit43.i"
  %_8.i49.i = zext i1 %_8.i.mux.i41.i to i64
  %39 = add i64 %37, %_8.i49.i
  %_8.i.mux.i54.i = fcmp olt float %_6.i.i51.i, %_7.i.i.i31
  %40 = getelementptr inbounds i8, ptr %state.sroa.43.1114.i, i64 -16
  %dst_base.sroa.0.0.i58.i = select i1 %_8.i.mux.i54.i, ptr %scratch.0, ptr %40
  %dst.i60.i = getelementptr inbounds nuw float, ptr %dst_base.sroa.0.0.i58.i, i64 %39
  store float %_6.i.i51.i, ptr %dst.i60.i, align 4, !alias.scope !1551, !noalias !1610
  %_8.i62.i = zext i1 %_8.i.mux.i54.i to i64
  %41 = add i64 %39, %_8.i62.i
  %_9.i63.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.1113.i, i64 16
  %_19.i35 = icmp ult ptr %_9.i63.i, %unroll_end.i
  br i1 %_19.i35, label %bb6.i29, label %bb16.i

bb16.i:                                           ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit56.i", %bb3.i27
  %state.sroa.27.1.lcssa.i = phi i64 [ %state.sroa.27.0.i, %bb3.i27 ], [ %41, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit56.i" ]
  %state.sroa.9.1.lcssa.i = phi ptr [ %state.sroa.9.0.i, %bb3.i27 ], [ %_9.i63.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit56.i" ]
  %state.sroa.43.1.lcssa.i = phi ptr [ %state.sroa.43.0.i, %bb3.i27 ], [ %40, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit56.i" ]
  %loop_end.i = getelementptr inbounds nuw float, ptr %v.sroa.0.0.ph204, i64 %pivot_pos.sroa.0.0.i
  %_47117.i = icmp ult ptr %state.sroa.9.1.lcssa.i, %loop_end.i
  br i1 %_47117.i, label %bb18.i.preheader, label %bb21.i

bb18.i.preheader:                                 ; preds = %bb16.i
  %_7.i.i65.i = load float, ptr %src, align 4, !alias.scope !1613, !noalias !1618, !noundef !18
  br label %bb18.i

bb21.i:                                           ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit69.i", %bb16.i
  %state.sroa.27.2.lcssa.i = phi i64 [ %state.sroa.27.1.lcssa.i, %bb16.i ], [ %43, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit69.i" ]
  %state.sroa.9.2.lcssa.i = phi ptr [ %state.sroa.9.1.lcssa.i, %bb16.i ], [ %_9.i76.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit69.i" ]
  %state.sroa.43.2.lcssa.i = phi ptr [ %state.sroa.43.1.lcssa.i, %bb16.i ], [ %42, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit69.i" ]
  %_55.i28 = icmp eq i64 %pivot_pos.sroa.0.0.i, %v.sroa.16.0196
  br i1 %_55.i28, label %bb22.i, label %bb23.i

bb18.i:                                           ; preds = %bb18.i.preheader, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit69.i"
  %state.sroa.43.2120.i = phi ptr [ %42, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit69.i" ], [ %state.sroa.43.1.lcssa.i, %bb18.i.preheader ]
  %state.sroa.9.2119.i = phi ptr [ %_9.i76.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit69.i" ], [ %state.sroa.9.1.lcssa.i, %bb18.i.preheader ]
  %state.sroa.27.2118.i = phi i64 [ %43, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit69.i" ], [ %state.sroa.27.1.lcssa.i, %bb18.i.preheader ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1621)
  call void @llvm.experimental.noalias.scope.decl(metadata !1622)
  call void @llvm.experimental.noalias.scope.decl(metadata !1623)
  call void @llvm.experimental.noalias.scope.decl(metadata !1624)
  %_6.i.i64.i = load float, ptr %state.sroa.9.2119.i, align 4, !alias.scope !1625, !noalias !1626, !noundef !18
  %brmerge.not.i66.i = fcmp uno float %_6.i.i64.i, %_7.i.i65.i
  br i1 %brmerge.not.i66.i, label %bb6.i.i68.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit69.i", !prof !21

bb6.i.i68.i:                                      ; preds = %bb18.i
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_622d794692a7bb5656187ee0c7bf9126) #18, !noalias !1627
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit69.i": ; preds = %bb18.i
  %_8.i.mux.i67.i = fcmp olt float %_6.i.i64.i, %_7.i.i65.i
  %42 = getelementptr inbounds i8, ptr %state.sroa.43.2120.i, i64 -4
  %dst_base.sroa.0.0.i71.i = select i1 %_8.i.mux.i67.i, ptr %scratch.0, ptr %42
  %dst.i73.i = getelementptr inbounds nuw float, ptr %dst_base.sroa.0.0.i71.i, i64 %state.sroa.27.2118.i
  store float %_6.i.i64.i, ptr %dst.i73.i, align 4, !alias.scope !1551, !noalias !1628
  %_8.i75.i = zext i1 %_8.i.mux.i67.i to i64
  %43 = add i64 %state.sroa.27.2118.i, %_8.i75.i
  %_9.i76.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.2119.i, i64 4
  %_47.i = icmp ult ptr %_9.i76.i, %loop_end.i
  br i1 %_47.i, label %bb18.i, label %bb21.i

bb23.i:                                           ; preds = %bb21.i
  %44 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa.i, i64 -4
  %dst.i80.i = getelementptr inbounds nuw float, ptr %44, i64 %state.sroa.27.2.lcssa.i
  %45 = load i32, ptr %state.sroa.9.2.lcssa.i, align 4, !alias.scope !1548, !noalias !1631
  store i32 %45, ptr %dst.i80.i, align 4, !alias.scope !1551, !noalias !1634
  %_9.i82.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.2.lcssa.i, i64 4
  br label %bb3.i27

bb22.i:                                           ; preds = %bb21.i
  %46 = shl i64 %state.sroa.27.2.lcssa.i, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.sroa.0.0.ph204, ptr nonnull align 4 %scratch.0, i64 %46, i1 false), !alias.scope !1635
  %_63.i = sub i64 %v.sroa.16.0196, %state.sroa.27.2.lcssa.i
  %_97124.not.i = icmp eq i64 %v.sroa.16.0196, %state.sroa.27.2.lcssa.i
  br i1 %_97124.not.i, label %bb16, label %bb42.lr.ph.i

bb42.lr.ph.i:                                     ; preds = %bb22.i
  %47 = getelementptr float, ptr %v.sroa.0.0.ph204, i64 %state.sroa.27.2.lcssa.i
  %min.iters.check506 = icmp ult i64 %_63.i, 8
  br i1 %min.iters.check506, label %bb42.i.preheader, label %vector.ph507

vector.ph507:                                     ; preds = %bb42.lr.ph.i
  %n.vec509 = and i64 %_63.i, -8
  br label %vector.body510

vector.body510:                                   ; preds = %vector.body510, %vector.ph507
  %index511 = phi i64 [ 0, %vector.ph507 ], [ %index.next516, %vector.body510 ]
  %48 = getelementptr float, ptr %47, i64 %index511
  %49 = xor i64 %index511, -1
  %50 = getelementptr float, ptr %_86.i, i64 %49
  %51 = getelementptr i8, ptr %50, i64 -12
  %52 = getelementptr i8, ptr %50, i64 -28
  %wide.load512 = load <4 x i32>, ptr %51, align 4, !alias.scope !1551, !noalias !1548
  %reverse513 = shufflevector <4 x i32> %wide.load512, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %wide.load514 = load <4 x i32>, ptr %52, align 4, !alias.scope !1551, !noalias !1548
  %reverse515 = shufflevector <4 x i32> %wide.load514, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %53 = getelementptr i8, ptr %48, i64 16
  store <4 x i32> %reverse513, ptr %48, align 4, !alias.scope !1548, !noalias !1551
  store <4 x i32> %reverse515, ptr %53, align 4, !alias.scope !1548, !noalias !1551
  %index.next516 = add nuw i64 %index511, 8
  %54 = icmp eq i64 %index.next516, %n.vec509
  br i1 %54, label %middle.block517, label %vector.body510, !llvm.loop !1636

middle.block517:                                  ; preds = %vector.body510
  %cmp.n518 = icmp eq i64 %_63.i, %n.vec509
  br i1 %cmp.n518, label %bb16, label %bb42.i.preheader

bb42.i.preheader:                                 ; preds = %bb42.lr.ph.i, %middle.block517
  %iter.sroa.0.0125.i.ph = phi i64 [ 0, %bb42.lr.ph.i ], [ %n.vec509, %middle.block517 ]
  br label %bb42.i

bb42.i:                                           ; preds = %bb42.i.preheader, %bb42.i
  %iter.sroa.0.0125.i = phi i64 [ %55, %bb42.i ], [ %iter.sroa.0.0125.i.ph, %bb42.i.preheader ]
  %55 = add nuw i64 %iter.sroa.0.0125.i, 1
  %56 = getelementptr float, ptr %47, i64 %iter.sroa.0.0125.i
  %57 = xor i64 %iter.sroa.0.0125.i, -1
  %58 = getelementptr float, ptr %_86.i, i64 %57
  %59 = load i32, ptr %58, align 4, !alias.scope !1551, !noalias !1548
  store i32 %59, ptr %56, align 4, !alias.scope !1548, !noalias !1551
  %exitcond.not.i = icmp eq i64 %55, %_63.i
  br i1 %exitcond.not.i, label %bb16, label %bb42.i, !llvm.loop !1637

bb16:                                             ; preds = %bb42.i, %middle.block517, %bb22.i
  %60 = icmp eq i64 %state.sroa.27.2.lcssa.i, 0
  br i1 %60, label %bb17, label %bb19

bb19:                                             ; preds = %bb16
  %_6.not.i = icmp ugt i64 %state.sroa.27.2.lcssa.i, %v.sroa.16.0196
  br i1 %_6.not.i, label %bb3.i37, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h2723435a5e7b379eE.exit", !prof !1289

bb3.i37:                                          ; preds = %bb19
; call core::panicking::panic_fmt
  call void @_ZN4core9panicking9panic_fmt17ha4414e4328fe24a0E(ptr noundef nonnull @alloc_d1084648e479974e70c9329824bf76f9, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_58d434a1e795f965ef82c8e9c5db822a) #18, !noalias !1638
  unreachable

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h2723435a5e7b379eE.exit": ; preds = %bb19
  %61 = getelementptr inbounds nuw float, ptr %v.sroa.0.0.ph204, i64 %state.sroa.27.2.lcssa.i
; call core::slice::sort::stable::quicksort::quicksort
  call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hbc20ec5b59e20ccaE(ptr noalias noundef nonnull align 4 %61, i64 noundef %_63.i, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef %29, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) %pivot_copy, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_8 = icmp ult i64 %state.sroa.27.2.lcssa.i, 33
  br i1 %_8, label %bb3, label %bb5

bb17:                                             ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E.exit", %bb16
  call void @llvm.experimental.noalias.scope.decl(metadata !1642)
  call void @llvm.experimental.noalias.scope.decl(metadata !1645)
  %_8.i38.not = icmp samesign ult i64 %scratch.1, %v.sroa.16.0196
  br i1 %_8.i38.not, label %bb31.i41, label %bb33.i42, !prof !256

bb33.i42:                                         ; preds = %bb17
  %_86.i44 = getelementptr float, ptr %scratch.0, i64 %v.sroa.16.0196
  br label %bb3.i45

bb31.i41:                                         ; preds = %bb17
  call void @llvm.trap()
  unreachable

bb3.i45:                                          ; preds = %bb23.i63, %bb33.i42
  %state.sroa.27.0.i46 = phi i64 [ 0, %bb33.i42 ], [ %75, %bb23.i63 ]
  %state.sroa.9.0.i47 = phi ptr [ %v.sroa.0.0.ph204, %bb33.i42 ], [ %_9.i82.i65, %bb23.i63 ]
  %state.sroa.43.0.i48 = phi ptr [ %_86.i44, %bb33.i42 ], [ %73, %bb23.i63 ]
  %pivot_pos.sroa.0.0.i49 = phi i64 [ %index.sroa.0.0.i, %bb33.i42 ], [ %v.sroa.16.0196, %bb23.i63 ]
  %62 = call i64 @llvm.usub.sat.i64(i64 %pivot_pos.sroa.0.0.i49, i64 3)
  %unroll_end.i50 = getelementptr inbounds nuw float, ptr %v.sroa.0.0.ph204, i64 %62
  %_19111.i51 = icmp ult ptr %state.sroa.9.0.i47, %unroll_end.i50
  br i1 %_19111.i51, label %bb6.i82.preheader, label %bb16.i52

bb6.i82.preheader:                                ; preds = %bb3.i45
  %_6.i.i.i.i86 = load float, ptr %src, align 4, !alias.scope !1647, !noalias !1654, !noundef !18
  br label %bb6.i82

bb6.i82:                                          ; preds = %bb6.i82.preheader, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h69e251828a7bc25dE.exit56.i"
  %state.sroa.43.1114.i83 = phi ptr [ %69, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h69e251828a7bc25dE.exit56.i" ], [ %state.sroa.43.0.i48, %bb6.i82.preheader ]
  %state.sroa.9.1113.i84 = phi ptr [ %_9.i63.i105, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h69e251828a7bc25dE.exit56.i" ], [ %state.sroa.9.0.i47, %bb6.i82.preheader ]
  %state.sroa.27.1112.i85 = phi i64 [ %70, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h69e251828a7bc25dE.exit56.i" ], [ %state.sroa.27.0.i46, %bb6.i82.preheader ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1658)
  call void @llvm.experimental.noalias.scope.decl(metadata !1659)
  call void @llvm.experimental.noalias.scope.decl(metadata !1660)
  call void @llvm.experimental.noalias.scope.decl(metadata !1661)
  call void @llvm.experimental.noalias.scope.decl(metadata !1662)
  call void @llvm.experimental.noalias.scope.decl(metadata !1663)
  %_7.i.i.i.i87 = load float, ptr %state.sroa.9.1113.i84, align 4, !alias.scope !1664, !noalias !1665, !noundef !18
  %brmerge.not.i.i.i88 = fcmp uno float %_6.i.i.i.i86, %_7.i.i.i.i87
  br i1 %brmerge.not.i.i.i88, label %bb6.i.i.i.i, label %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h69e251828a7bc25dE.exit.i", !prof !21

bb6.i.i.i.i:                                      ; preds = %bb6.i82
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_622d794692a7bb5656187ee0c7bf9126) #18, !noalias !1666
  unreachable

"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h69e251828a7bc25dE.exit.i": ; preds = %bb6.i82
  %_8.i.mux.i.i.i89 = fcmp uge float %_6.i.i.i.i86, %_7.i.i.i.i87
  %63 = getelementptr inbounds i8, ptr %state.sroa.43.1114.i83, i64 -4
  %dst_base.sroa.0.0.i.i90 = select i1 %_8.i.mux.i.i.i89, ptr %scratch.0, ptr %63
  %dst.i.i91 = getelementptr inbounds nuw float, ptr %dst_base.sroa.0.0.i.i90, i64 %state.sroa.27.1112.i85
  store float %_7.i.i.i.i87, ptr %dst.i.i91, align 4, !alias.scope !1645, !noalias !1667
  %_9.i.i92 = getelementptr inbounds nuw i8, ptr %state.sroa.9.1113.i84, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !1670)
  call void @llvm.experimental.noalias.scope.decl(metadata !1673)
  call void @llvm.experimental.noalias.scope.decl(metadata !1676)
  %_7.i.i.i26.i = load float, ptr %_9.i.i92, align 4, !alias.scope !1679, !noalias !1680, !noundef !18
  %brmerge.not.i.i27.i = fcmp uno float %_6.i.i.i.i86, %_7.i.i.i26.i
  br i1 %brmerge.not.i.i27.i, label %bb6.i.i.i29.i, label %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h69e251828a7bc25dE.exit30.i", !prof !21

bb6.i.i.i29.i:                                    ; preds = %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h69e251828a7bc25dE.exit.i"
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_622d794692a7bb5656187ee0c7bf9126) #18, !noalias !1684
  unreachable

"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h69e251828a7bc25dE.exit30.i": ; preds = %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h69e251828a7bc25dE.exit.i"
  %_8.i.i93 = zext i1 %_8.i.mux.i.i.i89 to i64
  %64 = add i64 %state.sroa.27.1112.i85, %_8.i.i93
  %_8.i.mux.i.i28.i = fcmp uge float %_6.i.i.i.i86, %_7.i.i.i26.i
  %65 = getelementptr inbounds i8, ptr %state.sroa.43.1114.i83, i64 -8
  %dst_base.sroa.0.0.i32.i94 = select i1 %_8.i.mux.i.i28.i, ptr %scratch.0, ptr %65
  %dst.i34.i95 = getelementptr inbounds nuw float, ptr %dst_base.sroa.0.0.i32.i94, i64 %64
  store float %_7.i.i.i26.i, ptr %dst.i34.i95, align 4, !alias.scope !1645, !noalias !1685
  %_9.i37.i96 = getelementptr inbounds nuw i8, ptr %state.sroa.9.1113.i84, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1688)
  call void @llvm.experimental.noalias.scope.decl(metadata !1691)
  call void @llvm.experimental.noalias.scope.decl(metadata !1694)
  %_7.i.i.i39.i = load float, ptr %_9.i37.i96, align 4, !alias.scope !1697, !noalias !1698, !noundef !18
  %brmerge.not.i.i40.i = fcmp uno float %_6.i.i.i.i86, %_7.i.i.i39.i
  br i1 %brmerge.not.i.i40.i, label %bb6.i.i.i42.i, label %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h69e251828a7bc25dE.exit43.i", !prof !21

bb6.i.i.i42.i:                                    ; preds = %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h69e251828a7bc25dE.exit30.i"
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_622d794692a7bb5656187ee0c7bf9126) #18, !noalias !1702
  unreachable

"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h69e251828a7bc25dE.exit43.i": ; preds = %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h69e251828a7bc25dE.exit30.i"
  %_8.i36.i97 = zext i1 %_8.i.mux.i.i28.i to i64
  %66 = add i64 %64, %_8.i36.i97
  %_8.i.mux.i.i41.i = fcmp uge float %_6.i.i.i.i86, %_7.i.i.i39.i
  %67 = getelementptr inbounds i8, ptr %state.sroa.43.1114.i83, i64 -12
  %dst_base.sroa.0.0.i45.i98 = select i1 %_8.i.mux.i.i41.i, ptr %scratch.0, ptr %67
  %dst.i47.i99 = getelementptr inbounds nuw float, ptr %dst_base.sroa.0.0.i45.i98, i64 %66
  store float %_7.i.i.i39.i, ptr %dst.i47.i99, align 4, !alias.scope !1645, !noalias !1703
  %_9.i50.i100 = getelementptr inbounds nuw i8, ptr %state.sroa.9.1113.i84, i64 12
  call void @llvm.experimental.noalias.scope.decl(metadata !1706)
  call void @llvm.experimental.noalias.scope.decl(metadata !1709)
  call void @llvm.experimental.noalias.scope.decl(metadata !1712)
  %_7.i.i.i52.i = load float, ptr %_9.i50.i100, align 4, !alias.scope !1715, !noalias !1716, !noundef !18
  %brmerge.not.i.i53.i = fcmp uno float %_6.i.i.i.i86, %_7.i.i.i52.i
  br i1 %brmerge.not.i.i53.i, label %bb6.i.i.i55.i, label %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h69e251828a7bc25dE.exit56.i", !prof !21

bb6.i.i.i55.i:                                    ; preds = %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h69e251828a7bc25dE.exit43.i"
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_622d794692a7bb5656187ee0c7bf9126) #18, !noalias !1720
  unreachable

"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h69e251828a7bc25dE.exit56.i": ; preds = %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h69e251828a7bc25dE.exit43.i"
  %_8.i49.i101 = zext i1 %_8.i.mux.i.i41.i to i64
  %68 = add i64 %66, %_8.i49.i101
  %_8.i.mux.i.i54.i = fcmp uge float %_6.i.i.i.i86, %_7.i.i.i52.i
  %69 = getelementptr inbounds i8, ptr %state.sroa.43.1114.i83, i64 -16
  %dst_base.sroa.0.0.i58.i102 = select i1 %_8.i.mux.i.i54.i, ptr %scratch.0, ptr %69
  %dst.i60.i103 = getelementptr inbounds nuw float, ptr %dst_base.sroa.0.0.i58.i102, i64 %68
  store float %_7.i.i.i52.i, ptr %dst.i60.i103, align 4, !alias.scope !1645, !noalias !1721
  %_8.i62.i104 = zext i1 %_8.i.mux.i.i54.i to i64
  %70 = add i64 %68, %_8.i62.i104
  %_9.i63.i105 = getelementptr inbounds nuw i8, ptr %state.sroa.9.1113.i84, i64 16
  %_19.i106 = icmp ult ptr %_9.i63.i105, %unroll_end.i50
  br i1 %_19.i106, label %bb6.i82, label %bb16.i52

bb16.i52:                                         ; preds = %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h69e251828a7bc25dE.exit56.i", %bb3.i45
  %state.sroa.27.1.lcssa.i53 = phi i64 [ %state.sroa.27.0.i46, %bb3.i45 ], [ %70, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h69e251828a7bc25dE.exit56.i" ]
  %state.sroa.9.1.lcssa.i54 = phi ptr [ %state.sroa.9.0.i47, %bb3.i45 ], [ %_9.i63.i105, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h69e251828a7bc25dE.exit56.i" ]
  %state.sroa.43.1.lcssa.i55 = phi ptr [ %state.sroa.43.0.i48, %bb3.i45 ], [ %69, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h69e251828a7bc25dE.exit56.i" ]
  %loop_end.i56 = getelementptr inbounds nuw float, ptr %v.sroa.0.0.ph204, i64 %pivot_pos.sroa.0.0.i49
  %_47117.i57 = icmp ult ptr %state.sroa.9.1.lcssa.i54, %loop_end.i56
  br i1 %_47117.i57, label %bb18.i73.preheader, label %bb21.i58

bb18.i73.preheader:                               ; preds = %bb16.i52
  %_6.i.i.i64.i = load float, ptr %src, align 4, !alias.scope !1724, !noalias !1731, !noundef !18
  br label %bb18.i73

bb21.i58:                                         ; preds = %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h69e251828a7bc25dE.exit69.i", %bb16.i52
  %state.sroa.27.2.lcssa.i59 = phi i64 [ %state.sroa.27.1.lcssa.i53, %bb16.i52 ], [ %72, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h69e251828a7bc25dE.exit69.i" ]
  %state.sroa.9.2.lcssa.i60 = phi ptr [ %state.sroa.9.1.lcssa.i54, %bb16.i52 ], [ %_9.i76.i80, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h69e251828a7bc25dE.exit69.i" ]
  %state.sroa.43.2.lcssa.i61 = phi ptr [ %state.sroa.43.1.lcssa.i55, %bb16.i52 ], [ %71, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h69e251828a7bc25dE.exit69.i" ]
  %_55.i62 = icmp eq i64 %pivot_pos.sroa.0.0.i49, %v.sroa.16.0196
  br i1 %_55.i62, label %bb22.i66, label %bb23.i63

bb18.i73:                                         ; preds = %bb18.i73.preheader, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h69e251828a7bc25dE.exit69.i"
  %state.sroa.43.2120.i74 = phi ptr [ %71, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h69e251828a7bc25dE.exit69.i" ], [ %state.sroa.43.1.lcssa.i55, %bb18.i73.preheader ]
  %state.sroa.9.2119.i75 = phi ptr [ %_9.i76.i80, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h69e251828a7bc25dE.exit69.i" ], [ %state.sroa.9.1.lcssa.i54, %bb18.i73.preheader ]
  %state.sroa.27.2118.i76 = phi i64 [ %72, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h69e251828a7bc25dE.exit69.i" ], [ %state.sroa.27.1.lcssa.i53, %bb18.i73.preheader ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1735)
  call void @llvm.experimental.noalias.scope.decl(metadata !1736)
  call void @llvm.experimental.noalias.scope.decl(metadata !1737)
  call void @llvm.experimental.noalias.scope.decl(metadata !1738)
  call void @llvm.experimental.noalias.scope.decl(metadata !1739)
  call void @llvm.experimental.noalias.scope.decl(metadata !1740)
  %_7.i.i.i65.i = load float, ptr %state.sroa.9.2119.i75, align 4, !alias.scope !1741, !noalias !1742, !noundef !18
  %brmerge.not.i.i66.i = fcmp uno float %_6.i.i.i64.i, %_7.i.i.i65.i
  br i1 %brmerge.not.i.i66.i, label %bb6.i.i.i68.i, label %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h69e251828a7bc25dE.exit69.i", !prof !21

bb6.i.i.i68.i:                                    ; preds = %bb18.i73
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_622d794692a7bb5656187ee0c7bf9126) #18, !noalias !1743
  unreachable

"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h69e251828a7bc25dE.exit69.i": ; preds = %bb18.i73
  %_8.i.mux.i.i67.i = fcmp uge float %_6.i.i.i64.i, %_7.i.i.i65.i
  %71 = getelementptr inbounds i8, ptr %state.sroa.43.2120.i74, i64 -4
  %dst_base.sroa.0.0.i71.i77 = select i1 %_8.i.mux.i.i67.i, ptr %scratch.0, ptr %71
  %dst.i73.i78 = getelementptr inbounds nuw float, ptr %dst_base.sroa.0.0.i71.i77, i64 %state.sroa.27.2118.i76
  store float %_7.i.i.i65.i, ptr %dst.i73.i78, align 4, !alias.scope !1645, !noalias !1744
  %_8.i75.i79 = zext i1 %_8.i.mux.i.i67.i to i64
  %72 = add i64 %state.sroa.27.2118.i76, %_8.i75.i79
  %_9.i76.i80 = getelementptr inbounds nuw i8, ptr %state.sroa.9.2119.i75, i64 4
  %_47.i81 = icmp ult ptr %_9.i76.i80, %loop_end.i56
  br i1 %_47.i81, label %bb18.i73, label %bb21.i58

bb23.i63:                                         ; preds = %bb21.i58
  %73 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa.i61, i64 -4
  %dst.i80.i64 = getelementptr inbounds nuw float, ptr %scratch.0, i64 %state.sroa.27.2.lcssa.i59
  %74 = load i32, ptr %state.sroa.9.2.lcssa.i60, align 4, !alias.scope !1642, !noalias !1747
  store i32 %74, ptr %dst.i80.i64, align 4, !alias.scope !1645, !noalias !1750
  %75 = add i64 %state.sroa.27.2.lcssa.i59, 1
  %_9.i82.i65 = getelementptr inbounds nuw i8, ptr %state.sroa.9.2.lcssa.i60, i64 4
  br label %bb3.i45

bb22.i66:                                         ; preds = %bb21.i58
  %76 = shl i64 %state.sroa.27.2.lcssa.i59, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.sroa.0.0.ph204, ptr nonnull align 4 %scratch.0, i64 %76, i1 false), !alias.scope !1751
  %_63.i67 = sub i64 %v.sroa.16.0196, %state.sroa.27.2.lcssa.i59
  %_97124.not.i68 = icmp eq i64 %v.sroa.16.0196, %state.sroa.27.2.lcssa.i59
  br i1 %_97124.not.i68, label %bb3.thread, label %bb42.lr.ph.i69

bb42.lr.ph.i69:                                   ; preds = %bb22.i66
  %77 = getelementptr float, ptr %v.sroa.0.0.ph204, i64 %state.sroa.27.2.lcssa.i59
  %min.iters.check = icmp ult i64 %_63.i67, 8
  br i1 %min.iters.check, label %bb42.i70.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb42.lr.ph.i69
  %n.vec = and i64 %_63.i67, -8
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %78 = getelementptr float, ptr %77, i64 %index
  %79 = xor i64 %index, -1
  %80 = getelementptr float, ptr %_86.i44, i64 %79
  %81 = getelementptr i8, ptr %80, i64 -12
  %82 = getelementptr i8, ptr %80, i64 -28
  %wide.load = load <4 x i32>, ptr %81, align 4, !alias.scope !1645, !noalias !1642
  %reverse = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %wide.load503 = load <4 x i32>, ptr %82, align 4, !alias.scope !1645, !noalias !1642
  %reverse504 = shufflevector <4 x i32> %wide.load503, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %83 = getelementptr i8, ptr %78, i64 16
  store <4 x i32> %reverse, ptr %78, align 4, !alias.scope !1642, !noalias !1645
  store <4 x i32> %reverse504, ptr %83, align 4, !alias.scope !1642, !noalias !1645
  %index.next = add nuw i64 %index, 8
  %84 = icmp eq i64 %index.next, %n.vec
  br i1 %84, label %middle.block, label %vector.body, !llvm.loop !1752

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %_63.i67, %n.vec
  br i1 %cmp.n, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h4d933a4c17d9d985E.exit, label %bb42.i70.preheader

bb42.i70.preheader:                               ; preds = %bb42.lr.ph.i69, %middle.block
  %iter.sroa.0.0125.i71.ph = phi i64 [ 0, %bb42.lr.ph.i69 ], [ %n.vec, %middle.block ]
  br label %bb42.i70

bb42.i70:                                         ; preds = %bb42.i70.preheader, %bb42.i70
  %iter.sroa.0.0125.i71 = phi i64 [ %85, %bb42.i70 ], [ %iter.sroa.0.0125.i71.ph, %bb42.i70.preheader ]
  %85 = add nuw i64 %iter.sroa.0.0125.i71, 1
  %86 = getelementptr float, ptr %77, i64 %iter.sroa.0.0125.i71
  %87 = xor i64 %iter.sroa.0.0125.i71, -1
  %88 = getelementptr float, ptr %_86.i44, i64 %87
  %89 = load i32, ptr %88, align 4, !alias.scope !1645, !noalias !1642
  store i32 %89, ptr %86, align 4, !alias.scope !1642, !noalias !1645
  %exitcond.not.i72 = icmp eq i64 %85, %_63.i67
  br i1 %exitcond.not.i72, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h4d933a4c17d9d985E.exit, label %bb42.i70, !llvm.loop !1753

_ZN4core5slice4sort6stable9quicksort16stable_partition17h4d933a4c17d9d985E.exit: ; preds = %bb42.i70, %middle.block
  %_47 = icmp ugt i64 %state.sroa.27.2.lcssa.i59, %v.sroa.16.0196
  br i1 %_47, label %bb27, label %bb28, !prof !1289

bb3.thread:                                       ; preds = %bb22.i66
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  br label %bb22

bb28:                                             ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h4d933a4c17d9d985E.exit
  %_54 = getelementptr inbounds nuw float, ptr %v.sroa.0.0.ph204, i64 %state.sroa.27.2.lcssa.i59
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_8194 = icmp ult i64 %_63.i67, 33
  br i1 %_8194, label %bb3, label %bb5.lr.ph

bb27:                                             ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h4d933a4c17d9d985E.exit
; call core::slice::index::slice_index_fail
  call void @_ZN4core5slice5index16slice_index_fail17h62807bcaa490c9c1E(i64 noundef %state.sroa.27.2.lcssa.i59, i64 noundef %v.sroa.16.0196, i64 noundef %v.sroa.16.0196, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_0766b232215672ee1bd2195fdb153938) #18
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
define noundef i32 @f_gold(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, i32 noundef %n) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %compare.i = alloca [0 x i8], align 1
  %is_less.i.i = alloca [8 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %compare.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !1754
  store ptr %compare.i, ptr %is_less.i.i, align 8, !noalias !1757
  %b.i.i = icmp samesign ult i64 %arr.1, 2
  br i1 %b.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hdabcd289a24b784aE.exit", label %bb7.i.i, !prof !1761

bb7.i.i:                                          ; preds = %start
  %b1.i.i = icmp samesign ult i64 %arr.1, 21
  br i1 %b1.i.i, label %bb9.i.i, label %bb10.i.i, !prof !1761

bb10.i.i:                                         ; preds = %bb7.i.i
; call core::slice::sort::stable::driftsort_main
  call void @_ZN4core5slice4sort6stable14driftsort_main17hfcafaa4377ec0178E(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less.i.i)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hdabcd289a24b784aE.exit"

bb9.i.i:                                          ; preds = %bb7.i.i
; call core::slice::sort::shared::smallsort::insertion_sort_shift_left
  call fastcc void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h6fe8c0210000c719E(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hdabcd289a24b784aE.exit"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hdabcd289a24b784aE.exit": ; preds = %start, %bb10.i.i, %bb9.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !1754
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %compare.i)
  %_8 = sext i32 %n to i64
  %_7 = add nsw i64 %_8, -1
  %_521.not = icmp eq i64 %_7, 0
  br i1 %_521.not, label %bb10, label %bb3

bb10:                                             ; preds = %bb9, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hdabcd289a24b784aE.exit"
  %result.sroa.0.0.lcssa = phi i32 [ 0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hdabcd289a24b784aE.exit" ], [ %result.sroa.0.2, %bb9 ]
  %_25 = add nsw i64 %_8, -2
  %_27 = icmp ult i64 %_25, %arr.1
  br i1 %_27, label %bb11, label %panic

bb3:                                              ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hdabcd289a24b784aE.exit", %bb9
  %result.sroa.0.023 = phi i32 [ %result.sroa.0.2, %bb9 ], [ 0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hdabcd289a24b784aE.exit" ]
  %i.sroa.0.022 = phi i64 [ %.pre-phi, %bb9 ], [ 0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hdabcd289a24b784aE.exit" ]
  %_13 = icmp ult i64 %i.sroa.0.022, %arr.1
  br i1 %_13, label %bb4, label %panic3

bb11:                                             ; preds = %bb10
  %_29 = icmp ult i64 %_7, %arr.1
  br i1 %_29, label %bb12, label %panic1

panic:                                            ; preds = %bb10
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_25, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_a888afa70f62cbbe941a5c2c83b11dec) #18
  unreachable

bb12:                                             ; preds = %bb11
  %0 = getelementptr inbounds nuw float, ptr %arr.0, i64 %_25
  %_24 = load float, ptr %0, align 4, !noundef !18
  %1 = getelementptr inbounds nuw float, ptr %arr.0, i64 %_7
  %_28 = load float, ptr %1, align 4, !noundef !18
  %_23 = fcmp une float %_24, %_28
  br i1 %_23, label %bb14, label %bb16

panic1:                                           ; preds = %bb11
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_7, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_4e065a0e36838e60d799892552699aab) #18
  unreachable

bb16:                                             ; preds = %bb12, %bb14
  %result.sroa.0.1 = phi i32 [ %2, %bb14 ], [ %result.sroa.0.0.lcssa, %bb12 ]
  ret i32 %result.sroa.0.1

bb14:                                             ; preds = %bb12
  %_31 = call i32 @llvm.fptosi.sat.i32.f32(float %_28)
  %_30.sroa.0.0 = call i32 @llvm.abs.i32(i32 %_31, i1 false)
  %2 = add i32 %_30.sroa.0.0, %result.sroa.0.0.lcssa
  br label %bb16

bb4:                                              ; preds = %bb3
  %3 = getelementptr inbounds nuw float, ptr %arr.0, i64 %i.sroa.0.022
  %_10 = load float, ptr %3, align 4, !noundef !18
  %_15 = add nuw i64 %i.sroa.0.022, 1
  %_17 = icmp ult i64 %_15, %arr.1
  br i1 %_17, label %bb5, label %panic4

panic3:                                           ; preds = %bb3
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %i.sroa.0.022, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_36f08aea09421b3da751b6aae8c9f1a7) #18
  unreachable

bb5:                                              ; preds = %bb4
  %4 = getelementptr inbounds nuw float, ptr %arr.0, i64 %_15
  %_14 = load float, ptr %4, align 4, !noundef !18
  %_9 = fcmp une float %_10, %_14
  br i1 %_9, label %bb7, label %bb5.bb9_crit_edge

bb5.bb9_crit_edge:                                ; preds = %bb5
  %.pre = add nuw i64 %i.sroa.0.022, 2
  br label %bb9

panic4:                                           ; preds = %bb4
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_15, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_7744f69448cabd925a11a812c34ee3ab) #18
  unreachable

bb9:                                              ; preds = %bb5.bb9_crit_edge, %bb7
  %.pre-phi = phi i64 [ %.pre, %bb5.bb9_crit_edge ], [ %_15, %bb7 ]
  %result.sroa.0.2 = phi i32 [ %result.sroa.0.023, %bb5.bb9_crit_edge ], [ %5, %bb7 ]
  %_5 = icmp ult i64 %.pre-phi, %_7
  br i1 %_5, label %bb3, label %bb10

bb7:                                              ; preds = %bb5
  %_19 = call i32 @llvm.fptosi.sat.i32.f32(float %_10)
  %_18.sroa.0.0 = call i32 @llvm.abs.i32(i32 %_19, i1 false)
  %5 = add i32 %_18.sroa.0.0, %result.sroa.0.023
  br label %bb9
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1762)
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %compare.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1765)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !1762
  store ptr %compare.i, ptr %is_less.i.i, align 8, !noalias !1768
  %b.i.i = icmp samesign ult i64 %arr.1, 2
  br i1 %b.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h363b45b6e22ac29aE.exit", label %bb7.i.i, !prof !1761

bb7.i.i:                                          ; preds = %start
  %b1.i.i = icmp samesign ult i64 %arr.1, 21
  br i1 %b1.i.i, label %bb9.i.i, label %bb10.i.i, !prof !1761

bb10.i.i:                                         ; preds = %bb7.i.i
; call core::slice::sort::stable::driftsort_main
  call void @_ZN4core5slice4sort6stable14driftsort_main17hf90a7b79ce549371E(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less.i.i)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h363b45b6e22ac29aE.exit"

bb9.i.i:                                          ; preds = %bb7.i.i
  %v_end.idx.i.i.i = shl nuw nsw i64 %arr.1, 2
  %v_end.i.i.i = getelementptr inbounds nuw i8, ptr %arr.0, i64 %v_end.idx.i.i.i
  %tail.sroa.0.01.i.i.i = getelementptr inbounds nuw i8, ptr %arr.0, i64 4
  %0 = and i64 %arr.1, 1
  %lcmp.mod.not.not = icmp eq i64 %0, 0
  br i1 %lcmp.mod.not.not, label %bb5.i.i.i.prol, label %bb5.i.i.i.prol.loopexit

bb5.i.i.i.prol:                                   ; preds = %bb9.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1770)
  call void @llvm.experimental.noalias.scope.decl(metadata !1773)
  call void @llvm.experimental.noalias.scope.decl(metadata !1775)
  call void @llvm.experimental.noalias.scope.decl(metadata !1778)
  call void @llvm.experimental.noalias.scope.decl(metadata !1780)
  call void @llvm.experimental.noalias.scope.decl(metadata !1783)
  %_3.i.i.i.i.i.i.i.prol = load i32, ptr %tail.sroa.0.01.i.i.i, align 4, !alias.scope !1785, !noalias !1788, !noundef !18
  %_4.i.i.i.i.i.i.i.prol = load i32, ptr %arr.0, align 4, !alias.scope !1789, !noalias !1790, !noundef !18
  %_0.i.i.i.i.i.prol = icmp slt i32 %_3.i.i.i.i.i.i.i.prol, %_4.i.i.i.i.i.i.i.prol
  br i1 %_0.i.i.i.i.i.prol, label %bb4.i.i.i.i.prol, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h395da78f46d0044dE.exit.i.i.i.prol

bb4.i.i.i.i.prol:                                 ; preds = %bb5.i.i.i.prol, %bb7.i.i.i.i.prol
  %1 = phi i32 [ %_4.i.i.i2.i.i.i.i.prol, %bb7.i.i.i.i.prol ], [ %_4.i.i.i.i.i.i.i.prol, %bb5.i.i.i.prol ]
  %gap_guard.sroa.5.0.i.i.i.i.prol = phi ptr [ %sift.sroa.0.0.i.i.i.i.prol, %bb7.i.i.i.i.prol ], [ %tail.sroa.0.01.i.i.i, %bb5.i.i.i.prol ]
  %sift.sroa.0.0.i.i.i.i.prol = phi ptr [ %2, %bb7.i.i.i.i.prol ], [ %arr.0, %bb5.i.i.i.prol ]
  store i32 %1, ptr %gap_guard.sroa.5.0.i.i.i.i.prol, align 4, !alias.scope !1791, !noalias !1792
  %_18.i.i.i.i.prol = icmp eq ptr %sift.sroa.0.0.i.i.i.i.prol, %arr.0
  br i1 %_18.i.i.i.i.prol, label %bb10.i.i.i.i.prol, label %bb7.i.i.i.i.prol

bb7.i.i.i.i.prol:                                 ; preds = %bb4.i.i.i.i.prol
  %2 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.i.prol, i64 -4
  %_4.i.i.i2.i.i.i.i.prol = load i32, ptr %2, align 4, !alias.scope !1793, !noalias !1800, !noundef !18
  %_0.i3.i.i.i.i.prol = icmp slt i32 %_3.i.i.i.i.i.i.i.prol, %_4.i.i.i2.i.i.i.i.prol
  br i1 %_0.i3.i.i.i.i.prol, label %bb4.i.i.i.i.prol, label %bb10.i.i.i.i.prol

bb10.i.i.i.i.prol:                                ; preds = %bb7.i.i.i.i.prol, %bb4.i.i.i.i.prol
  %sift.sroa.0.0.i.lcssa.i.i.i.prol = phi ptr [ %sift.sroa.0.0.i.i.i.i.prol, %bb7.i.i.i.i.prol ], [ %arr.0, %bb4.i.i.i.i.prol ]
  store i32 %_3.i.i.i.i.i.i.i.prol, ptr %sift.sroa.0.0.i.lcssa.i.i.i.prol, align 4, !alias.scope !1791, !noalias !1804
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h395da78f46d0044dE.exit.i.i.i.prol

_ZN4core5slice4sort6shared9smallsort11insert_tail17h395da78f46d0044dE.exit.i.i.i.prol: ; preds = %bb10.i.i.i.i.prol, %bb5.i.i.i.prol
  %tail.sroa.0.0.i.i.i.prol = getelementptr inbounds nuw i8, ptr %arr.0, i64 8
  br label %bb5.i.i.i.prol.loopexit

bb5.i.i.i.prol.loopexit:                          ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h395da78f46d0044dE.exit.i.i.i.prol, %bb9.i.i
  %tail.sroa.0.04.i.i.i.unr = phi ptr [ %tail.sroa.0.01.i.i.i, %bb9.i.i ], [ %tail.sroa.0.0.i.i.i.prol, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h395da78f46d0044dE.exit.i.i.i.prol ]
  %v.0.pn3.i.i.i.unr = phi ptr [ %arr.0, %bb9.i.i ], [ %tail.sroa.0.01.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h395da78f46d0044dE.exit.i.i.i.prol ]
  %3 = icmp eq i64 %arr.1, 2
  br i1 %3, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h363b45b6e22ac29aE.exit", label %bb5.i.i.i

bb5.i.i.i:                                        ; preds = %bb5.i.i.i.prol.loopexit, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h395da78f46d0044dE.exit.i.i.i.1
  %tail.sroa.0.04.i.i.i = phi ptr [ %tail.sroa.0.0.i.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h395da78f46d0044dE.exit.i.i.i.1 ], [ %tail.sroa.0.04.i.i.i.unr, %bb5.i.i.i.prol.loopexit ]
  %v.0.pn3.i.i.i = phi ptr [ %tail.sroa.0.0.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h395da78f46d0044dE.exit.i.i.i.1 ], [ %v.0.pn3.i.i.i.unr, %bb5.i.i.i.prol.loopexit ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1770)
  call void @llvm.experimental.noalias.scope.decl(metadata !1773)
  call void @llvm.experimental.noalias.scope.decl(metadata !1775)
  call void @llvm.experimental.noalias.scope.decl(metadata !1778)
  call void @llvm.experimental.noalias.scope.decl(metadata !1780)
  call void @llvm.experimental.noalias.scope.decl(metadata !1783)
  %_3.i.i.i.i.i.i.i = load i32, ptr %tail.sroa.0.04.i.i.i, align 4, !alias.scope !1785, !noalias !1788, !noundef !18
  %_4.i.i.i.i.i.i.i = load i32, ptr %v.0.pn3.i.i.i, align 4, !alias.scope !1789, !noalias !1790, !noundef !18
  %_0.i.i.i.i.i = icmp slt i32 %_3.i.i.i.i.i.i.i, %_4.i.i.i.i.i.i.i
  br i1 %_0.i.i.i.i.i, label %bb4.i.i.i.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h395da78f46d0044dE.exit.i.i.i

bb4.i.i.i.i:                                      ; preds = %bb5.i.i.i, %bb7.i.i.i.i
  %4 = phi i32 [ %_4.i.i.i2.i.i.i.i, %bb7.i.i.i.i ], [ %_4.i.i.i.i.i.i.i, %bb5.i.i.i ]
  %gap_guard.sroa.5.0.i.i.i.i = phi ptr [ %sift.sroa.0.0.i.i.i.i, %bb7.i.i.i.i ], [ %tail.sroa.0.04.i.i.i, %bb5.i.i.i ]
  %sift.sroa.0.0.i.i.i.i = phi ptr [ %5, %bb7.i.i.i.i ], [ %v.0.pn3.i.i.i, %bb5.i.i.i ]
  store i32 %4, ptr %gap_guard.sroa.5.0.i.i.i.i, align 4, !alias.scope !1791, !noalias !1792
  %_18.i.i.i.i = icmp eq ptr %sift.sroa.0.0.i.i.i.i, %arr.0
  br i1 %_18.i.i.i.i, label %bb10.i.i.i.i, label %bb7.i.i.i.i

bb7.i.i.i.i:                                      ; preds = %bb4.i.i.i.i
  %5 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.i, i64 -4
  %_4.i.i.i2.i.i.i.i = load i32, ptr %5, align 4, !alias.scope !1793, !noalias !1800, !noundef !18
  %_0.i3.i.i.i.i = icmp slt i32 %_3.i.i.i.i.i.i.i, %_4.i.i.i2.i.i.i.i
  br i1 %_0.i3.i.i.i.i, label %bb4.i.i.i.i, label %bb10.i.i.i.i

bb10.i.i.i.i:                                     ; preds = %bb7.i.i.i.i, %bb4.i.i.i.i
  %sift.sroa.0.0.i.lcssa.i.i.i = phi ptr [ %sift.sroa.0.0.i.i.i.i, %bb7.i.i.i.i ], [ %arr.0, %bb4.i.i.i.i ]
  store i32 %_3.i.i.i.i.i.i.i, ptr %sift.sroa.0.0.i.lcssa.i.i.i, align 4, !alias.scope !1791, !noalias !1804
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h395da78f46d0044dE.exit.i.i.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h395da78f46d0044dE.exit.i.i.i: ; preds = %bb10.i.i.i.i, %bb5.i.i.i
  %tail.sroa.0.0.i.i.i = getelementptr inbounds nuw i8, ptr %tail.sroa.0.04.i.i.i, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !1809)
  call void @llvm.experimental.noalias.scope.decl(metadata !1811)
  call void @llvm.experimental.noalias.scope.decl(metadata !1813)
  call void @llvm.experimental.noalias.scope.decl(metadata !1815)
  call void @llvm.experimental.noalias.scope.decl(metadata !1817)
  call void @llvm.experimental.noalias.scope.decl(metadata !1819)
  %_3.i.i.i.i.i.i.i.1 = load i32, ptr %tail.sroa.0.0.i.i.i, align 4, !alias.scope !1821, !noalias !1822, !noundef !18
  %_4.i.i.i.i.i.i.i.1 = load i32, ptr %tail.sroa.0.04.i.i.i, align 4, !alias.scope !1823, !noalias !1824, !noundef !18
  %_0.i.i.i.i.i.1 = icmp slt i32 %_3.i.i.i.i.i.i.i.1, %_4.i.i.i.i.i.i.i.1
  br i1 %_0.i.i.i.i.i.1, label %bb4.i.i.i.i.1, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h395da78f46d0044dE.exit.i.i.i.1

bb4.i.i.i.i.1:                                    ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h395da78f46d0044dE.exit.i.i.i, %bb7.i.i.i.i.1
  %6 = phi i32 [ %_4.i.i.i2.i.i.i.i.1, %bb7.i.i.i.i.1 ], [ %_4.i.i.i.i.i.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h395da78f46d0044dE.exit.i.i.i ]
  %gap_guard.sroa.5.0.i.i.i.i.1 = phi ptr [ %sift.sroa.0.0.i.i.i.i.1, %bb7.i.i.i.i.1 ], [ %tail.sroa.0.0.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h395da78f46d0044dE.exit.i.i.i ]
  %sift.sroa.0.0.i.i.i.i.1 = phi ptr [ %7, %bb7.i.i.i.i.1 ], [ %tail.sroa.0.04.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h395da78f46d0044dE.exit.i.i.i ]
  store i32 %6, ptr %gap_guard.sroa.5.0.i.i.i.i.1, align 4, !alias.scope !1791, !noalias !1792
  %_18.i.i.i.i.1 = icmp eq ptr %sift.sroa.0.0.i.i.i.i.1, %arr.0
  br i1 %_18.i.i.i.i.1, label %bb10.i.i.i.i.1, label %bb7.i.i.i.i.1

bb7.i.i.i.i.1:                                    ; preds = %bb4.i.i.i.i.1
  %7 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.i.1, i64 -4
  %_4.i.i.i2.i.i.i.i.1 = load i32, ptr %7, align 4, !alias.scope !1793, !noalias !1800, !noundef !18
  %_0.i3.i.i.i.i.1 = icmp slt i32 %_3.i.i.i.i.i.i.i.1, %_4.i.i.i2.i.i.i.i.1
  br i1 %_0.i3.i.i.i.i.1, label %bb4.i.i.i.i.1, label %bb10.i.i.i.i.1

bb10.i.i.i.i.1:                                   ; preds = %bb7.i.i.i.i.1, %bb4.i.i.i.i.1
  %sift.sroa.0.0.i.lcssa.i.i.i.1 = phi ptr [ %sift.sroa.0.0.i.i.i.i.1, %bb7.i.i.i.i.1 ], [ %arr.0, %bb4.i.i.i.i.1 ]
  store i32 %_3.i.i.i.i.i.i.i.1, ptr %sift.sroa.0.0.i.lcssa.i.i.i.1, align 4, !alias.scope !1791, !noalias !1804
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h395da78f46d0044dE.exit.i.i.i.1

_ZN4core5slice4sort6shared9smallsort11insert_tail17h395da78f46d0044dE.exit.i.i.i.1: ; preds = %bb10.i.i.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h395da78f46d0044dE.exit.i.i.i
  %tail.sroa.0.0.i.i.i.1 = getelementptr inbounds nuw i8, ptr %tail.sroa.0.04.i.i.i, i64 8
  %_11.not.i.i.i.1 = icmp eq ptr %tail.sroa.0.0.i.i.i.1, %v_end.i.i.i
  br i1 %_11.not.i.i.i.1, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h363b45b6e22ac29aE.exit", label %bb5.i.i.i

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h363b45b6e22ac29aE.exit": ; preds = %bb5.i.i.i.prol.loopexit, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h395da78f46d0044dE.exit.i.i.i.1, %start, %bb10.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !1762
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

; core::option::unwrap_failed
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

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

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #17

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
!4 = distinct !{!4, !5, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E: %a"}
!5 = distinct !{!5, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E"}
!6 = !{!7}
!7 = distinct !{!7, !5, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E: %b"}
!8 = !{!9}
!9 = distinct !{!9, !10, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E: %a"}
!10 = distinct !{!10, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E"}
!11 = !{!12}
!12 = distinct !{!12, !13, !"_ZN4core5slice4sort6shared5pivot7median317he64b779e7bd549dfE: %c"}
!13 = distinct !{!13, !"_ZN4core5slice4sort6shared5pivot7median317he64b779e7bd549dfE"}
!14 = !{!15}
!15 = distinct !{!15, !10, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E: %b"}
!16 = !{!9, !4}
!17 = !{!15, !7, !12}
!18 = !{}
!19 = !{!15, !7}
!20 = !{!9, !4, !12}
!21 = !{!"branch_weights", i32 1, i32 4001}
!22 = !{!9, !15, !4, !7, !12}
!23 = !{!24}
!24 = distinct !{!24, !25, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E: %b"}
!25 = distinct !{!25, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E"}
!26 = !{!27}
!27 = distinct !{!27, !28, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E: %b"}
!28 = distinct !{!28, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E"}
!29 = !{!27, !24}
!30 = !{!31, !32}
!31 = distinct !{!31, !28, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E: %a"}
!32 = distinct !{!32, !25, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E: %a"}
!33 = !{!31, !27, !32, !24}
!34 = !{!35, !37, !38, !40}
!35 = distinct !{!35, !36, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E: %a"}
!36 = distinct !{!36, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E"}
!37 = distinct !{!37, !36, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E: %b"}
!38 = distinct !{!38, !39, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E: %a"}
!39 = distinct !{!39, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E"}
!40 = distinct !{!40, !39, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E: %b"}
!41 = !{!42}
!42 = distinct !{!42, !43, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E: %a"}
!43 = distinct !{!43, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E"}
!44 = !{!45}
!45 = distinct !{!45, !43, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E: %b"}
!46 = !{!47}
!47 = distinct !{!47, !48, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE: argument 0"}
!48 = distinct !{!48, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE"}
!49 = !{!50}
!50 = distinct !{!50, !51, !"_ZN4core5slice4sort6shared5pivot7median317h31b283a33a863f2eE: %c"}
!51 = distinct !{!51, !"_ZN4core5slice4sort6shared5pivot7median317h31b283a33a863f2eE"}
!52 = !{!53}
!53 = distinct !{!53, !48, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE: argument 1"}
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
!66 = distinct !{!66, !67, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE: argument 1"}
!67 = distinct !{!67, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE"}
!68 = distinct !{!68, !69, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E: %b"}
!69 = distinct !{!69, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E"}
!70 = !{!71, !72, !73}
!71 = distinct !{!71, !65, !"cmpfunc: %a"}
!72 = distinct !{!72, !67, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE: argument 0"}
!73 = distinct !{!73, !69, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E: %a"}
!74 = !{!75}
!75 = distinct !{!75, !76, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E: %a"}
!76 = distinct !{!76, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E"}
!77 = !{!78}
!78 = distinct !{!78, !76, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E: %b"}
!79 = !{!80}
!80 = distinct !{!80, !81, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E: %a"}
!81 = distinct !{!81, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E"}
!82 = !{!83}
!83 = distinct !{!83, !81, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E: %b"}
!84 = !{!80, !75}
!85 = !{!83, !78}
!86 = !{!80, !83, !75, !78}
!87 = !{!88}
!88 = distinct !{!88, !89, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E: %a"}
!89 = distinct !{!89, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E"}
!90 = !{!91}
!91 = distinct !{!91, !89, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E: %b"}
!92 = !{!93}
!93 = distinct !{!93, !94, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E: %a"}
!94 = distinct !{!94, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E"}
!95 = !{!96}
!96 = distinct !{!96, !94, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E: %b"}
!97 = !{!93, !88}
!98 = !{!96, !91}
!99 = !{!93, !96, !88, !91}
!100 = !{!101}
!101 = distinct !{!101, !102, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E: %a"}
!102 = distinct !{!102, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E"}
!103 = !{!104}
!104 = distinct !{!104, !102, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E: %b"}
!105 = !{!106}
!106 = distinct !{!106, !107, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E: %a"}
!107 = distinct !{!107, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E"}
!108 = !{!109}
!109 = distinct !{!109, !107, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E: %b"}
!110 = !{!106, !101}
!111 = !{!109, !104}
!112 = !{!106, !109, !101, !104}
!113 = !{!114}
!114 = distinct !{!114, !115, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E: %a"}
!115 = distinct !{!115, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E"}
!116 = !{!117}
!117 = distinct !{!117, !115, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E: %b"}
!118 = !{!119}
!119 = distinct !{!119, !120, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E: %a"}
!120 = distinct !{!120, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E"}
!121 = !{!122}
!122 = distinct !{!122, !120, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E: %b"}
!123 = !{!119, !114}
!124 = !{!122, !117}
!125 = !{!119, !122, !114, !117}
!126 = !{!127}
!127 = distinct !{!127, !128, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E: %a"}
!128 = distinct !{!128, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E"}
!129 = !{!130}
!130 = distinct !{!130, !128, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E: %b"}
!131 = !{!132}
!132 = distinct !{!132, !133, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E: %a"}
!133 = distinct !{!133, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E"}
!134 = !{!135}
!135 = distinct !{!135, !133, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E: %b"}
!136 = !{!132, !127}
!137 = !{!135, !130}
!138 = !{!132, !135, !127, !130}
!139 = !{!140}
!140 = distinct !{!140, !141, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hdd59a7129bf6f32dE: %v.0"}
!141 = distinct !{!141, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hdd59a7129bf6f32dE"}
!142 = !{!143}
!143 = distinct !{!143, !144, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E: %a"}
!144 = distinct !{!144, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E"}
!145 = !{!146}
!146 = distinct !{!146, !144, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E: %b"}
!147 = !{!148}
!148 = distinct !{!148, !149, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E: %a"}
!149 = distinct !{!149, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E"}
!150 = !{!151}
!151 = distinct !{!151, !152, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h435d037dc3a64883E: %_0"}
!152 = distinct !{!152, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h435d037dc3a64883E"}
!153 = !{!154}
!154 = distinct !{!154, !149, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E: %b"}
!155 = !{!148, !143, !140}
!156 = !{!154, !146, !151}
!157 = !{!154, !146, !140}
!158 = !{!148, !143, !151}
!159 = !{!148, !154, !143, !146, !151, !140}
!160 = !{!151, !161}
!161 = distinct !{!161, !152, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h435d037dc3a64883E: %is_less"}
!162 = !{!151, !161, !140}
!163 = !{!164}
!164 = distinct !{!164, !165, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E: %a"}
!165 = distinct !{!165, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E"}
!166 = !{!167}
!167 = distinct !{!167, !165, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E: %b"}
!168 = !{!169}
!169 = distinct !{!169, !170, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E: %a"}
!170 = distinct !{!170, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E"}
!171 = !{!172}
!172 = distinct !{!172, !173, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h8b474ecae1428e0aE: %_0"}
!173 = distinct !{!173, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h8b474ecae1428e0aE"}
!174 = !{!175}
!175 = distinct !{!175, !170, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E: %b"}
!176 = !{!169, !164, !140}
!177 = !{!175, !167, !172}
!178 = !{!175, !167, !140}
!179 = !{!169, !164, !172}
!180 = !{!169, !175, !164, !167, !172, !140}
!181 = !{!172, !182}
!182 = distinct !{!182, !173, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h8b474ecae1428e0aE: %is_less"}
!183 = !{!172, !182, !140}
!184 = !{!185}
!185 = distinct !{!185, !144, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E: %a:It1"}
!186 = !{!187}
!187 = distinct !{!187, !144, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E: %b:It1"}
!188 = !{!189}
!189 = distinct !{!189, !149, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E: %a:It1"}
!190 = !{!191}
!191 = distinct !{!191, !149, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E: %b:It1"}
!192 = !{!189, !185, !140}
!193 = !{!191, !187, !151}
!194 = !{!191, !187, !140}
!195 = !{!189, !185, !151}
!196 = !{!197}
!197 = distinct !{!197, !165, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E: %a:It1"}
!198 = !{!199}
!199 = distinct !{!199, !165, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E: %b:It1"}
!200 = !{!201}
!201 = distinct !{!201, !170, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E: %a:It1"}
!202 = !{!203}
!203 = distinct !{!203, !170, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E: %b:It1"}
!204 = !{!201, !197, !140}
!205 = !{!203, !199, !172}
!206 = !{!203, !199, !140}
!207 = !{!201, !197, !172}
!208 = !{!209}
!209 = distinct !{!209, !144, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E: %a:It2"}
!210 = !{!211}
!211 = distinct !{!211, !144, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E: %b:It2"}
!212 = !{!213}
!213 = distinct !{!213, !149, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E: %a:It2"}
!214 = !{!215}
!215 = distinct !{!215, !149, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E: %b:It2"}
!216 = !{!213, !209, !140}
!217 = !{!215, !211, !151}
!218 = !{!215, !211, !140}
!219 = !{!213, !209, !151}
!220 = !{!221}
!221 = distinct !{!221, !165, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E: %a:It2"}
!222 = !{!223}
!223 = distinct !{!223, !165, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E: %b:It2"}
!224 = !{!225}
!225 = distinct !{!225, !170, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E: %a:It2"}
!226 = !{!227}
!227 = distinct !{!227, !170, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E: %b:It2"}
!228 = !{!225, !221, !140}
!229 = !{!227, !223, !172}
!230 = !{!227, !223, !140}
!231 = !{!225, !221, !172}
!232 = !{!233}
!233 = distinct !{!233, !144, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E: %a:It3"}
!234 = !{!235}
!235 = distinct !{!235, !144, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E: %b:It3"}
!236 = !{!237}
!237 = distinct !{!237, !149, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E: %a:It3"}
!238 = !{!239}
!239 = distinct !{!239, !149, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E: %b:It3"}
!240 = !{!237, !233, !140}
!241 = !{!239, !235, !151}
!242 = !{!239, !235, !140}
!243 = !{!237, !233, !151}
!244 = !{!245}
!245 = distinct !{!245, !165, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E: %a:It3"}
!246 = !{!247}
!247 = distinct !{!247, !165, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E: %b:It3"}
!248 = !{!249}
!249 = distinct !{!249, !170, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E: %a:It3"}
!250 = !{!251}
!251 = distinct !{!251, !170, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E: %b:It3"}
!252 = !{!249, !245, !140}
!253 = !{!251, !247, !172}
!254 = !{!251, !247, !140}
!255 = !{!249, !245, !172}
!256 = !{!"branch_weights", i32 4001, i32 4000000}
!257 = !{!258}
!258 = distinct !{!258, !259, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E: %a"}
!259 = distinct !{!259, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E"}
!260 = !{!261}
!261 = distinct !{!261, !259, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E: %b"}
!262 = !{!263}
!263 = distinct !{!263, !264, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE: argument 0"}
!264 = distinct !{!264, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE"}
!265 = !{!266}
!266 = distinct !{!266, !264, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE: argument 1"}
!267 = !{!268}
!268 = distinct !{!268, !269, !"cmpfunc: %a"}
!269 = distinct !{!269, !"cmpfunc"}
!270 = !{!271}
!271 = distinct !{!271, !269, !"cmpfunc: %b"}
!272 = !{!268, !263, !258}
!273 = !{!271, !266, !261}
!274 = !{!275}
!275 = distinct !{!275, !276, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E: %a"}
!276 = distinct !{!276, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E"}
!277 = !{!278}
!278 = distinct !{!278, !276, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E: %b"}
!279 = !{!280}
!280 = distinct !{!280, !281, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE: argument 0"}
!281 = distinct !{!281, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE"}
!282 = !{!283}
!283 = distinct !{!283, !281, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE: argument 1"}
!284 = !{!285}
!285 = distinct !{!285, !286, !"cmpfunc: %a"}
!286 = distinct !{!286, !"cmpfunc"}
!287 = !{!288}
!288 = distinct !{!288, !286, !"cmpfunc: %b"}
!289 = !{!285, !280, !275}
!290 = !{!288, !283, !278}
!291 = !{!292}
!292 = distinct !{!292, !293, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E: %a"}
!293 = distinct !{!293, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E"}
!294 = !{!295}
!295 = distinct !{!295, !293, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E: %b"}
!296 = !{!297}
!297 = distinct !{!297, !298, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE: argument 0"}
!298 = distinct !{!298, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE"}
!299 = !{!300}
!300 = distinct !{!300, !298, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE: argument 1"}
!301 = !{!302}
!302 = distinct !{!302, !303, !"cmpfunc: %a"}
!303 = distinct !{!303, !"cmpfunc"}
!304 = !{!305}
!305 = distinct !{!305, !303, !"cmpfunc: %b"}
!306 = !{!302, !297, !292}
!307 = !{!305, !300, !295}
!308 = !{!309}
!309 = distinct !{!309, !310, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E: %a"}
!310 = distinct !{!310, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E"}
!311 = !{!312}
!312 = distinct !{!312, !310, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E: %b"}
!313 = !{!314}
!314 = distinct !{!314, !315, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE: argument 0"}
!315 = distinct !{!315, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE"}
!316 = !{!317}
!317 = distinct !{!317, !315, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE: argument 1"}
!318 = !{!319}
!319 = distinct !{!319, !320, !"cmpfunc: %a"}
!320 = distinct !{!320, !"cmpfunc"}
!321 = !{!322}
!322 = distinct !{!322, !320, !"cmpfunc: %b"}
!323 = !{!319, !314, !309}
!324 = !{!322, !317, !312}
!325 = !{!326}
!326 = distinct !{!326, !327, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E: %a"}
!327 = distinct !{!327, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E"}
!328 = !{!329}
!329 = distinct !{!329, !327, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E: %b"}
!330 = !{!331}
!331 = distinct !{!331, !332, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE: argument 0"}
!332 = distinct !{!332, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE"}
!333 = !{!334}
!334 = distinct !{!334, !332, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE: argument 1"}
!335 = !{!336}
!336 = distinct !{!336, !337, !"cmpfunc: %a"}
!337 = distinct !{!337, !"cmpfunc"}
!338 = !{!339}
!339 = distinct !{!339, !337, !"cmpfunc: %b"}
!340 = !{!336, !331, !326}
!341 = !{!339, !334, !329}
!342 = !{!343}
!343 = distinct !{!343, !344, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E: %a"}
!344 = distinct !{!344, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E"}
!345 = !{!346}
!346 = distinct !{!346, !344, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E: %b"}
!347 = !{!348}
!348 = distinct !{!348, !349, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE: argument 0"}
!349 = distinct !{!349, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE"}
!350 = !{!351}
!351 = distinct !{!351, !349, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE: argument 1"}
!352 = !{!353}
!353 = distinct !{!353, !354, !"cmpfunc: %a"}
!354 = distinct !{!354, !"cmpfunc"}
!355 = !{!356}
!356 = distinct !{!356, !354, !"cmpfunc: %b"}
!357 = !{!353, !348, !343}
!358 = !{!356, !351, !346}
!359 = !{!360}
!360 = distinct !{!360, !361, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E: %a"}
!361 = distinct !{!361, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E"}
!362 = !{!363}
!363 = distinct !{!363, !361, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E: %b"}
!364 = !{!365}
!365 = distinct !{!365, !366, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE: argument 0"}
!366 = distinct !{!366, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE"}
!367 = !{!368}
!368 = distinct !{!368, !366, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE: argument 1"}
!369 = !{!370}
!370 = distinct !{!370, !371, !"cmpfunc: %a"}
!371 = distinct !{!371, !"cmpfunc"}
!372 = !{!373}
!373 = distinct !{!373, !371, !"cmpfunc: %b"}
!374 = !{!370, !365, !360}
!375 = !{!373, !368, !363}
!376 = !{!377}
!377 = distinct !{!377, !378, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E: %a"}
!378 = distinct !{!378, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E"}
!379 = !{!380}
!380 = distinct !{!380, !378, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E: %b"}
!381 = !{!382}
!382 = distinct !{!382, !383, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE: argument 0"}
!383 = distinct !{!383, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE"}
!384 = !{!385}
!385 = distinct !{!385, !383, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE: argument 1"}
!386 = !{!387}
!387 = distinct !{!387, !388, !"cmpfunc: %a"}
!388 = distinct !{!388, !"cmpfunc"}
!389 = !{!390}
!390 = distinct !{!390, !388, !"cmpfunc: %b"}
!391 = !{!387, !382, !377}
!392 = !{!390, !385, !380}
!393 = !{!394}
!394 = distinct !{!394, !395, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E: %a"}
!395 = distinct !{!395, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E"}
!396 = !{!397}
!397 = distinct !{!397, !395, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E: %b"}
!398 = !{!399}
!399 = distinct !{!399, !400, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE: argument 0"}
!400 = distinct !{!400, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE"}
!401 = !{!402}
!402 = distinct !{!402, !400, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE: argument 1"}
!403 = !{!404}
!404 = distinct !{!404, !405, !"cmpfunc: %a"}
!405 = distinct !{!405, !"cmpfunc"}
!406 = !{!407}
!407 = distinct !{!407, !405, !"cmpfunc: %b"}
!408 = !{!404, !399, !394}
!409 = !{!407, !402, !397}
!410 = !{!411}
!411 = distinct !{!411, !412, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E: %a"}
!412 = distinct !{!412, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E"}
!413 = !{!414}
!414 = distinct !{!414, !412, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E: %b"}
!415 = !{!416}
!416 = distinct !{!416, !417, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE: argument 0"}
!417 = distinct !{!417, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE"}
!418 = !{!419}
!419 = distinct !{!419, !417, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE: argument 1"}
!420 = !{!421}
!421 = distinct !{!421, !422, !"cmpfunc: %a"}
!422 = distinct !{!422, !"cmpfunc"}
!423 = !{!424}
!424 = distinct !{!424, !422, !"cmpfunc: %b"}
!425 = !{!421, !416, !411}
!426 = !{!424, !419, !414}
!427 = !{!428}
!428 = distinct !{!428, !429, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17he9817220e104e85eE: %v.0"}
!429 = distinct !{!429, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17he9817220e104e85eE"}
!430 = !{!431, !433, !435, !428}
!431 = distinct !{!431, !432, !"cmpfunc: %b"}
!432 = distinct !{!432, !"cmpfunc"}
!433 = distinct !{!433, !434, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE: argument 1"}
!434 = distinct !{!434, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE"}
!435 = distinct !{!435, !436, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E: %b"}
!436 = distinct !{!436, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E"}
!437 = !{!438, !439, !440, !441}
!438 = distinct !{!438, !432, !"cmpfunc: %a"}
!439 = distinct !{!439, !434, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE: argument 0"}
!440 = distinct !{!440, !436, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E: %a"}
!441 = distinct !{!441, !442, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hf5f0d5141dc2f563E: %_0"}
!442 = distinct !{!442, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hf5f0d5141dc2f563E"}
!443 = !{!441, !444, !428}
!444 = distinct !{!444, !442, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hf5f0d5141dc2f563E: %is_less"}
!445 = !{!446, !448, !450, !428}
!446 = distinct !{!446, !447, !"cmpfunc: %b"}
!447 = distinct !{!447, !"cmpfunc"}
!448 = distinct !{!448, !449, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE: argument 1"}
!449 = distinct !{!449, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE"}
!450 = distinct !{!450, !451, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E: %b"}
!451 = distinct !{!451, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E"}
!452 = !{!453, !454, !455, !456}
!453 = distinct !{!453, !447, !"cmpfunc: %a"}
!454 = distinct !{!454, !449, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE: argument 0"}
!455 = distinct !{!455, !451, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E: %a"}
!456 = distinct !{!456, !457, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h6ded7cd93f05eb10E: %_0"}
!457 = distinct !{!457, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h6ded7cd93f05eb10E"}
!458 = !{!456, !459, !428}
!459 = distinct !{!459, !457, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h6ded7cd93f05eb10E: %is_less"}
!460 = !{!461}
!461 = distinct !{!461, !436, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E: %a:It1"}
!462 = !{!463}
!463 = distinct !{!463, !436, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E: %b:It1"}
!464 = !{!465}
!465 = distinct !{!465, !434, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE: argument 0:It1"}
!466 = !{!441}
!467 = !{!468}
!468 = distinct !{!468, !434, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE: argument 1:It1"}
!469 = !{!470}
!470 = distinct !{!470, !432, !"cmpfunc: %a:It1"}
!471 = !{!472}
!472 = distinct !{!472, !432, !"cmpfunc: %b:It1"}
!473 = !{!470, !465, !461, !428}
!474 = !{!472, !468, !463, !441}
!475 = !{!472, !468, !463, !428}
!476 = !{!470, !465, !461, !441}
!477 = !{!478}
!478 = distinct !{!478, !451, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E: %a:It1"}
!479 = !{!480}
!480 = distinct !{!480, !451, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E: %b:It1"}
!481 = !{!482}
!482 = distinct !{!482, !449, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE: argument 0:It1"}
!483 = !{!456}
!484 = !{!485}
!485 = distinct !{!485, !449, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE: argument 1:It1"}
!486 = !{!487}
!487 = distinct !{!487, !447, !"cmpfunc: %a:It1"}
!488 = !{!489}
!489 = distinct !{!489, !447, !"cmpfunc: %b:It1"}
!490 = !{!487, !482, !478, !428}
!491 = !{!489, !485, !480, !456}
!492 = !{!489, !485, !480, !428}
!493 = !{!487, !482, !478, !456}
!494 = !{!495}
!495 = distinct !{!495, !436, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E: %a:It2"}
!496 = !{!497}
!497 = distinct !{!497, !436, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E: %b:It2"}
!498 = !{!499}
!499 = distinct !{!499, !434, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE: argument 0:It2"}
!500 = !{!501}
!501 = distinct !{!501, !434, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE: argument 1:It2"}
!502 = !{!503}
!503 = distinct !{!503, !432, !"cmpfunc: %a:It2"}
!504 = !{!505}
!505 = distinct !{!505, !432, !"cmpfunc: %b:It2"}
!506 = !{!503, !499, !495, !428}
!507 = !{!505, !501, !497, !441}
!508 = !{!505, !501, !497, !428}
!509 = !{!503, !499, !495, !441}
!510 = !{!511}
!511 = distinct !{!511, !451, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E: %a:It2"}
!512 = !{!513}
!513 = distinct !{!513, !451, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E: %b:It2"}
!514 = !{!515}
!515 = distinct !{!515, !449, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE: argument 0:It2"}
!516 = !{!517}
!517 = distinct !{!517, !449, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE: argument 1:It2"}
!518 = !{!519}
!519 = distinct !{!519, !447, !"cmpfunc: %a:It2"}
!520 = !{!521}
!521 = distinct !{!521, !447, !"cmpfunc: %b:It2"}
!522 = !{!519, !515, !511, !428}
!523 = !{!521, !517, !513, !456}
!524 = !{!521, !517, !513, !428}
!525 = !{!519, !515, !511, !456}
!526 = !{!527}
!527 = distinct !{!527, !436, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E: %a:It3"}
!528 = !{!529}
!529 = distinct !{!529, !436, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E: %b:It3"}
!530 = !{!531}
!531 = distinct !{!531, !434, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE: argument 0:It3"}
!532 = !{!533}
!533 = distinct !{!533, !434, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE: argument 1:It3"}
!534 = !{!535}
!535 = distinct !{!535, !432, !"cmpfunc: %a:It3"}
!536 = !{!537}
!537 = distinct !{!537, !432, !"cmpfunc: %b:It3"}
!538 = !{!535, !531, !527, !428}
!539 = !{!537, !533, !529, !441}
!540 = !{!537, !533, !529, !428}
!541 = !{!535, !531, !527, !441}
!542 = !{!543}
!543 = distinct !{!543, !451, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E: %a:It3"}
!544 = !{!545}
!545 = distinct !{!545, !451, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E: %b:It3"}
!546 = !{!547}
!547 = distinct !{!547, !449, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE: argument 0:It3"}
!548 = !{!549}
!549 = distinct !{!549, !449, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE: argument 1:It3"}
!550 = !{!551}
!551 = distinct !{!551, !447, !"cmpfunc: %a:It3"}
!552 = !{!553}
!553 = distinct !{!553, !447, !"cmpfunc: %b:It3"}
!554 = !{!551, !547, !543, !428}
!555 = !{!553, !549, !545, !456}
!556 = !{!553, !549, !545, !428}
!557 = !{!551, !547, !543, !456}
!558 = !{!559}
!559 = distinct !{!559, !560, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E: %a"}
!560 = distinct !{!560, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E"}
!561 = !{!562}
!562 = distinct !{!562, !560, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E: %b"}
!563 = !{!564}
!564 = distinct !{!564, !565, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E: %a"}
!565 = distinct !{!565, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E"}
!566 = !{!567}
!567 = distinct !{!567, !565, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E: %b"}
!568 = !{!564, !559}
!569 = !{!567, !562}
!570 = !{!564, !567, !559, !562}
!571 = !{!572, !574}
!572 = distinct !{!572, !573, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E: %b"}
!573 = distinct !{!573, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E"}
!574 = distinct !{!574, !575, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E: %b"}
!575 = distinct !{!575, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E"}
!576 = !{!577, !578}
!577 = distinct !{!577, !573, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E: %a"}
!578 = distinct !{!578, !575, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E: %a"}
!579 = !{!580, !582}
!580 = distinct !{!580, !581, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8d4cd428c0b6aa6cE: %self"}
!581 = distinct !{!581, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8d4cd428c0b6aa6cE"}
!582 = distinct !{!582, !583, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$f32$GT$$GT$17he3ae396fd493087aE: %_1"}
!583 = distinct !{!583, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$f32$GT$$GT$17he3ae396fd493087aE"}
!584 = !{!585, !587}
!585 = distinct !{!585, !586, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8d4cd428c0b6aa6cE: %self"}
!586 = distinct !{!586, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8d4cd428c0b6aa6cE"}
!587 = distinct !{!587, !588, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$f32$GT$$GT$17he3ae396fd493087aE: %_1"}
!588 = distinct !{!588, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$f32$GT$$GT$17he3ae396fd493087aE"}
!589 = !{!"branch_weights", i32 2002, i32 2000}
!590 = !{!591, !593}
!591 = distinct !{!591, !592, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h46f8c224b6c738bdE: %_0"}
!592 = distinct !{!592, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h46f8c224b6c738bdE"}
!593 = distinct !{!593, !594, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h0d8f8c3d4c994e08E: %_0"}
!594 = distinct !{!594, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h0d8f8c3d4c994e08E"}
!595 = !{!596, !598, !600, !602}
!596 = distinct !{!596, !597, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17hc81e4c3782538ce0E: %self"}
!597 = distinct !{!597, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17hc81e4c3782538ce0E"}
!598 = distinct !{!598, !599, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf2043d91e609b627E: %self"}
!599 = distinct !{!599, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf2043d91e609b627E"}
!600 = distinct !{!600, !601, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17hdafab711b65af4e6E: %_1"}
!601 = distinct !{!601, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17hdafab711b65af4e6E"}
!602 = distinct !{!602, !603, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h5b4e276935b4c935E: %_1"}
!603 = distinct !{!603, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h5b4e276935b4c935E"}
!604 = !{!605, !607, !609, !611}
!605 = distinct !{!605, !606, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17hc81e4c3782538ce0E: %self"}
!606 = distinct !{!606, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17hc81e4c3782538ce0E"}
!607 = distinct !{!607, !608, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf2043d91e609b627E: %self"}
!608 = distinct !{!608, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf2043d91e609b627E"}
!609 = distinct !{!609, !610, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17hdafab711b65af4e6E: %_1"}
!610 = distinct !{!610, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17hdafab711b65af4e6E"}
!611 = distinct !{!611, !612, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h5b4e276935b4c935E: %_1"}
!612 = distinct !{!612, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h5b4e276935b4c935E"}
!613 = !{!614, !616}
!614 = distinct !{!614, !615, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h46f8c224b6c738bdE: %_0"}
!615 = distinct !{!615, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h46f8c224b6c738bdE"}
!616 = distinct !{!616, !617, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h1102a18e8f5cb0b2E: %_0"}
!617 = distinct !{!617, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h1102a18e8f5cb0b2E"}
!618 = !{!619, !621, !623, !625}
!619 = distinct !{!619, !620, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17hc81e4c3782538ce0E: %self"}
!620 = distinct !{!620, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17hc81e4c3782538ce0E"}
!621 = distinct !{!621, !622, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17haaab1f1e77e3cd5aE: %self"}
!622 = distinct !{!622, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17haaab1f1e77e3cd5aE"}
!623 = distinct !{!623, !624, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$f32$GT$$GT$17h47e97956bc9ebdffE: %_1"}
!624 = distinct !{!624, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$f32$GT$$GT$17h47e97956bc9ebdffE"}
!625 = distinct !{!625, !626, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17hd781ca2e4b9e6a2eE: %_1"}
!626 = distinct !{!626, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17hd781ca2e4b9e6a2eE"}
!627 = !{!628, !630, !632, !634}
!628 = distinct !{!628, !629, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17hc81e4c3782538ce0E: %self"}
!629 = distinct !{!629, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17hc81e4c3782538ce0E"}
!630 = distinct !{!630, !631, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17haaab1f1e77e3cd5aE: %self"}
!631 = distinct !{!631, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17haaab1f1e77e3cd5aE"}
!632 = distinct !{!632, !633, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$f32$GT$$GT$17h47e97956bc9ebdffE: %_1"}
!633 = distinct !{!633, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$f32$GT$$GT$17h47e97956bc9ebdffE"}
!634 = distinct !{!634, !635, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17hd781ca2e4b9e6a2eE: %_1"}
!635 = distinct !{!635, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17hd781ca2e4b9e6a2eE"}
!636 = !{!637}
!637 = distinct !{!637, !638, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E: %a"}
!638 = distinct !{!638, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E"}
!639 = !{!640}
!640 = distinct !{!640, !638, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E: %b"}
!641 = !{!642}
!642 = distinct !{!642, !643, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E: %a"}
!643 = distinct !{!643, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E"}
!644 = !{!645}
!645 = distinct !{!645, !646, !"_ZN4core5slice4sort6stable5drift10create_run17h7962b68125588a68E: %scratch.0"}
!646 = distinct !{!646, !"_ZN4core5slice4sort6stable5drift10create_run17h7962b68125588a68E"}
!647 = !{!648}
!648 = distinct !{!648, !643, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E: %b"}
!649 = !{!642, !637}
!650 = !{!648, !640, !645}
!651 = !{!648, !640}
!652 = !{!642, !637, !645}
!653 = !{!642, !648, !637, !640, !645}
!654 = !{!655}
!655 = distinct !{!655, !656, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E: %a"}
!656 = distinct !{!656, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E"}
!657 = !{!658}
!658 = distinct !{!658, !659, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E: %a"}
!659 = distinct !{!659, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E"}
!660 = !{!658, !655}
!661 = !{!662, !663, !645}
!662 = distinct !{!662, !659, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E: %b"}
!663 = distinct !{!663, !656, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E: %b"}
!664 = !{!658, !662, !655, !663, !645}
!665 = !{!666}
!666 = distinct !{!666, !667, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E: %a"}
!667 = distinct !{!667, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E"}
!668 = !{!669}
!669 = distinct !{!669, !670, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E: %a"}
!670 = distinct !{!670, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E"}
!671 = !{!669, !666}
!672 = !{!673, !674, !645}
!673 = distinct !{!673, !670, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E: %b"}
!674 = distinct !{!674, !667, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E: %b"}
!675 = !{!669, !673, !666, !674, !645}
!676 = !{!677}
!677 = distinct !{!677, !678, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17h5adb3c58c785f709E: %a.0"}
!678 = distinct !{!678, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17h5adb3c58c785f709E"}
!679 = !{!645, !680}
!680 = distinct !{!680, !646, !"_ZN4core5slice4sort6stable5drift10create_run17h7962b68125588a68E: %is_less"}
!681 = !{!682}
!682 = distinct !{!682, !678, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17h5adb3c58c785f709E: %b.0"}
!683 = !{!677, !684}
!684 = distinct !{!684, !685, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17ha87730afbfc472faE: %self.0"}
!685 = distinct !{!685, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17ha87730afbfc472faE"}
!686 = !{!682, !645, !680}
!687 = !{!682, !684}
!688 = !{!677, !645, !680}
!689 = distinct !{!689, !690, !691}
!690 = !{!"llvm.loop.isvectorized", i32 1}
!691 = !{!"llvm.loop.unroll.runtime.disable"}
!692 = distinct !{!692, !691, !690}
!693 = !{!694}
!694 = distinct !{!694, !695, !"_ZN4core5slice4sort6stable5merge5merge17hf8ab4e91254b06f5E: %v.0"}
!695 = distinct !{!695, !"_ZN4core5slice4sort6stable5merge5merge17hf8ab4e91254b06f5E"}
!696 = !{!697}
!697 = distinct !{!697, !695, !"_ZN4core5slice4sort6stable5merge5merge17hf8ab4e91254b06f5E: %scratch.0"}
!698 = !{!694, !697}
!699 = !{!700}
!700 = distinct !{!700, !701, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E: %a"}
!701 = distinct !{!701, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E"}
!702 = !{!703}
!703 = distinct !{!703, !701, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E: %b"}
!704 = !{!705}
!705 = distinct !{!705, !706, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E: %a"}
!706 = distinct !{!706, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E"}
!707 = !{!708}
!708 = distinct !{!708, !706, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E: %b"}
!709 = !{!705, !700, !697}
!710 = !{!708, !703, !711, !694}
!711 = distinct !{!711, !712, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h361d5f624e562f7cE: %self"}
!712 = distinct !{!712, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h361d5f624e562f7cE"}
!713 = !{!708, !703, !694}
!714 = !{!705, !700, !711, !697}
!715 = !{!711}
!716 = !{!711, !697}
!717 = !{!718}
!718 = distinct !{!718, !719, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E: %a"}
!719 = distinct !{!719, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E"}
!720 = !{!721}
!721 = distinct !{!721, !719, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E: %b"}
!722 = !{!723}
!723 = distinct !{!723, !724, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E: %a"}
!724 = distinct !{!724, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E"}
!725 = !{!726}
!726 = distinct !{!726, !724, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E: %b"}
!727 = !{!723, !718, !694}
!728 = !{!726, !721, !729, !697}
!729 = distinct !{!729, !730, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h9e6cb95f90278755E: %self"}
!730 = distinct !{!730, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h9e6cb95f90278755E"}
!731 = !{!726, !721, !697}
!732 = !{!723, !718, !729, !694}
!733 = !{!729}
!734 = !{!729, !697}
!735 = !{!736, !738}
!736 = distinct !{!736, !737, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2c72231837206a6eE: %self"}
!737 = distinct !{!737, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2c72231837206a6eE"}
!738 = distinct !{!738, !739, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$f32$GT$$GT$17h8706961a81c64be4E: %_1"}
!739 = distinct !{!739, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$f32$GT$$GT$17h8706961a81c64be4E"}
!740 = !{!741, !743}
!741 = distinct !{!741, !742, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2c72231837206a6eE: %self"}
!742 = distinct !{!742, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2c72231837206a6eE"}
!743 = distinct !{!743, !744, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$f32$GT$$GT$17h8706961a81c64be4E: %_1"}
!744 = distinct !{!744, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$f32$GT$$GT$17h8706961a81c64be4E"}
!745 = !{!746}
!746 = distinct !{!746, !747, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E: %a"}
!747 = distinct !{!747, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E"}
!748 = !{!749}
!749 = distinct !{!749, !747, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E: %b"}
!750 = !{!751}
!751 = distinct !{!751, !752, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE: argument 0"}
!752 = distinct !{!752, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE"}
!753 = !{!754}
!754 = distinct !{!754, !755, !"_ZN4core5slice4sort6stable5drift10create_run17h67334b7de8057d7cE: %scratch.0"}
!755 = distinct !{!755, !"_ZN4core5slice4sort6stable5drift10create_run17h67334b7de8057d7cE"}
!756 = !{!757}
!757 = distinct !{!757, !752, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE: argument 1"}
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
!770 = distinct !{!770, !771, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE: argument 0"}
!771 = distinct !{!771, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE"}
!772 = distinct !{!772, !773, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E: %a"}
!773 = distinct !{!773, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E"}
!774 = !{!775, !776, !777, !754}
!775 = distinct !{!775, !769, !"cmpfunc: %b"}
!776 = distinct !{!776, !771, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE: argument 1"}
!777 = distinct !{!777, !773, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E: %b"}
!778 = !{!779, !781, !783}
!779 = distinct !{!779, !780, !"cmpfunc: %a"}
!780 = distinct !{!780, !"cmpfunc"}
!781 = distinct !{!781, !782, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE: argument 0"}
!782 = distinct !{!782, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE"}
!783 = distinct !{!783, !784, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E: %a"}
!784 = distinct !{!784, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E"}
!785 = !{!786, !787, !788, !754}
!786 = distinct !{!786, !780, !"cmpfunc: %b"}
!787 = distinct !{!787, !782, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE: argument 1"}
!788 = distinct !{!788, !784, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E: %b"}
!789 = !{!790}
!790 = distinct !{!790, !791, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17he501be1364240351E: %a.0"}
!791 = distinct !{!791, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17he501be1364240351E"}
!792 = !{!754, !793}
!793 = distinct !{!793, !755, !"_ZN4core5slice4sort6stable5drift10create_run17h67334b7de8057d7cE: %is_less"}
!794 = !{!795}
!795 = distinct !{!795, !791, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17he501be1364240351E: %b.0"}
!796 = !{!790, !797}
!797 = distinct !{!797, !798, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h8bfd5cb699e1c6d2E: %self.0"}
!798 = distinct !{!798, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h8bfd5cb699e1c6d2E"}
!799 = !{!795, !754, !793}
!800 = !{!795, !797}
!801 = !{!790, !754, !793}
!802 = distinct !{!802, !690, !691}
!803 = distinct !{!803, !691, !690}
!804 = !{!805}
!805 = distinct !{!805, !806, !"_ZN4core5slice4sort6stable5merge5merge17haf93c4f31364c6f3E: %v.0"}
!806 = distinct !{!806, !"_ZN4core5slice4sort6stable5merge5merge17haf93c4f31364c6f3E"}
!807 = !{!808}
!808 = distinct !{!808, !806, !"_ZN4core5slice4sort6stable5merge5merge17haf93c4f31364c6f3E: %scratch.0"}
!809 = !{!805, !808}
!810 = !{!811}
!811 = distinct !{!811, !812, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E: %a"}
!812 = distinct !{!812, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E"}
!813 = !{!814}
!814 = distinct !{!814, !812, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E: %b"}
!815 = !{!816}
!816 = distinct !{!816, !817, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE: argument 0"}
!817 = distinct !{!817, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE"}
!818 = !{!819}
!819 = distinct !{!819, !817, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE: argument 1"}
!820 = !{!821}
!821 = distinct !{!821, !822, !"cmpfunc: %a"}
!822 = distinct !{!822, !"cmpfunc"}
!823 = !{!824}
!824 = distinct !{!824, !822, !"cmpfunc: %b"}
!825 = !{!821, !816, !811, !808}
!826 = !{!824, !819, !814, !827, !805}
!827 = distinct !{!827, !828, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hb28a0522aa9a2467E: %self"}
!828 = distinct !{!828, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hb28a0522aa9a2467E"}
!829 = !{!824, !819, !814, !805}
!830 = !{!821, !816, !811, !827, !808}
!831 = !{!827, !808}
!832 = !{!833}
!833 = distinct !{!833, !834, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E: %a"}
!834 = distinct !{!834, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E"}
!835 = !{!836}
!836 = distinct !{!836, !834, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E: %b"}
!837 = !{!838}
!838 = distinct !{!838, !839, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE: argument 0"}
!839 = distinct !{!839, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE"}
!840 = !{!841}
!841 = distinct !{!841, !839, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE: argument 1"}
!842 = !{!843}
!843 = distinct !{!843, !844, !"cmpfunc: %a"}
!844 = distinct !{!844, !"cmpfunc"}
!845 = !{!846}
!846 = distinct !{!846, !844, !"cmpfunc: %b"}
!847 = !{!843, !838, !833, !805}
!848 = !{!846, !841, !836, !849, !808}
!849 = distinct !{!849, !850, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h7f78c0909235dbabE: %self"}
!850 = distinct !{!850, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h7f78c0909235dbabE"}
!851 = !{!846, !841, !836, !808}
!852 = !{!843, !838, !833, !849, !805}
!853 = !{!849, !808}
!854 = !{!855, !857}
!855 = distinct !{!855, !856, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdf64549abc8b59b3E: %self"}
!856 = distinct !{!856, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdf64549abc8b59b3E"}
!857 = distinct !{!857, !858, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h1b0711e7e2ad9243E: %_1"}
!858 = distinct !{!858, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h1b0711e7e2ad9243E"}
!859 = !{!860}
!860 = distinct !{!860, !861, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17hf245317be6041186E: %v.0"}
!861 = distinct !{!861, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17hf245317be6041186E"}
!862 = !{!863}
!863 = distinct !{!863, !861, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17hf245317be6041186E: %scratch.0"}
!864 = !{!865}
!865 = distinct !{!865, !866, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E: %a"}
!866 = distinct !{!866, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E"}
!867 = !{!868}
!868 = distinct !{!868, !866, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E: %b"}
!869 = !{!870}
!870 = distinct !{!870, !871, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE: argument 0"}
!871 = distinct !{!871, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE"}
!872 = !{!873}
!873 = distinct !{!873, !871, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE: argument 1"}
!874 = !{!875}
!875 = distinct !{!875, !876, !"cmpfunc: %a"}
!876 = distinct !{!876, !"cmpfunc"}
!877 = !{!878}
!878 = distinct !{!878, !876, !"cmpfunc: %b"}
!879 = !{!875, !870, !865, !860}
!880 = !{!878, !873, !868, !863, !881}
!881 = distinct !{!881, !861, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17hf245317be6041186E: %is_less"}
!882 = !{!878, !873, !868, !860}
!883 = !{!875, !870, !865, !863, !881}
!884 = !{!885}
!885 = distinct !{!885, !886, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E: %a"}
!886 = distinct !{!886, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E"}
!887 = !{!888}
!888 = distinct !{!888, !886, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E: %b"}
!889 = !{!890}
!890 = distinct !{!890, !891, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE: argument 0"}
!891 = distinct !{!891, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE"}
!892 = !{!893}
!893 = distinct !{!893, !891, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE: argument 1"}
!894 = !{!895}
!895 = distinct !{!895, !896, !"cmpfunc: %a"}
!896 = distinct !{!896, !"cmpfunc"}
!897 = !{!898}
!898 = distinct !{!898, !896, !"cmpfunc: %b"}
!899 = !{!895, !890, !885, !860}
!900 = !{!898, !893, !888, !863, !881}
!901 = !{!898, !893, !888, !860}
!902 = !{!895, !890, !885, !863, !881}
!903 = !{!904}
!904 = distinct !{!904, !905, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E: %a"}
!905 = distinct !{!905, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E"}
!906 = !{!907}
!907 = distinct !{!907, !905, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E: %b"}
!908 = !{!909}
!909 = distinct !{!909, !910, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE: argument 0"}
!910 = distinct !{!910, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE"}
!911 = !{!912}
!912 = distinct !{!912, !910, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE: argument 1"}
!913 = !{!914}
!914 = distinct !{!914, !915, !"cmpfunc: %a"}
!915 = distinct !{!915, !"cmpfunc"}
!916 = !{!917}
!917 = distinct !{!917, !915, !"cmpfunc: %b"}
!918 = !{!914, !909, !904, !860}
!919 = !{!917, !912, !907, !863, !881}
!920 = !{!917, !912, !907, !860}
!921 = !{!914, !909, !904, !863, !881}
!922 = !{!923}
!923 = distinct !{!923, !924, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E: %a"}
!924 = distinct !{!924, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E"}
!925 = !{!926}
!926 = distinct !{!926, !924, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E: %b"}
!927 = !{!928}
!928 = distinct !{!928, !929, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE: argument 0"}
!929 = distinct !{!929, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE"}
!930 = !{!931}
!931 = distinct !{!931, !929, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE: argument 1"}
!932 = !{!933}
!933 = distinct !{!933, !934, !"cmpfunc: %a"}
!934 = distinct !{!934, !"cmpfunc"}
!935 = !{!936}
!936 = distinct !{!936, !934, !"cmpfunc: %b"}
!937 = !{!933, !928, !923, !860}
!938 = !{!936, !931, !926, !863, !881}
!939 = !{!936, !931, !926, !860}
!940 = !{!933, !928, !923, !863, !881}
!941 = !{!942}
!942 = distinct !{!942, !943, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E: %a"}
!943 = distinct !{!943, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E"}
!944 = !{!945}
!945 = distinct !{!945, !943, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E: %b"}
!946 = !{!947}
!947 = distinct !{!947, !948, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE: argument 0"}
!948 = distinct !{!948, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE"}
!949 = !{!950}
!950 = distinct !{!950, !948, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE: argument 1"}
!951 = !{!952}
!952 = distinct !{!952, !953, !"cmpfunc: %a"}
!953 = distinct !{!953, !"cmpfunc"}
!954 = !{!955}
!955 = distinct !{!955, !953, !"cmpfunc: %b"}
!956 = !{!952, !947, !942, !860}
!957 = !{!955, !950, !945, !863, !881}
!958 = !{!955, !950, !945, !860}
!959 = !{!952, !947, !942, !863, !881}
!960 = !{!860, !881}
!961 = !{!962}
!962 = distinct !{!962, !963, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E: %a"}
!963 = distinct !{!963, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E"}
!964 = !{!965}
!965 = distinct !{!965, !963, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E: %b"}
!966 = !{!967}
!967 = distinct !{!967, !968, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE: argument 0"}
!968 = distinct !{!968, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE"}
!969 = !{!970}
!970 = distinct !{!970, !968, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE: argument 1"}
!971 = !{!972}
!972 = distinct !{!972, !973, !"cmpfunc: %a"}
!973 = distinct !{!973, !"cmpfunc"}
!974 = !{!975}
!975 = distinct !{!975, !973, !"cmpfunc: %b"}
!976 = !{!972, !967, !962, !860}
!977 = !{!975, !970, !965, !863, !881}
!978 = !{!975, !970, !965, !860}
!979 = !{!972, !967, !962, !863, !881}
!980 = !{!981}
!981 = distinct !{!981, !982, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E: %a"}
!982 = distinct !{!982, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E"}
!983 = !{!984}
!984 = distinct !{!984, !982, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E: %b"}
!985 = !{!986}
!986 = distinct !{!986, !987, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE: argument 0"}
!987 = distinct !{!987, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE"}
!988 = !{!989}
!989 = distinct !{!989, !987, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE: argument 1"}
!990 = !{!991}
!991 = distinct !{!991, !992, !"cmpfunc: %a"}
!992 = distinct !{!992, !"cmpfunc"}
!993 = !{!994}
!994 = distinct !{!994, !992, !"cmpfunc: %b"}
!995 = !{!991, !986, !981, !860}
!996 = !{!994, !989, !984, !863, !881}
!997 = !{!994, !989, !984, !860}
!998 = !{!991, !986, !981, !863, !881}
!999 = !{!1000}
!1000 = distinct !{!1000, !1001, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E: %a"}
!1001 = distinct !{!1001, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E"}
!1002 = !{!1003}
!1003 = distinct !{!1003, !1001, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E: %b"}
!1004 = !{!1005}
!1005 = distinct !{!1005, !1006, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE: argument 0"}
!1006 = distinct !{!1006, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE"}
!1007 = !{!1008}
!1008 = distinct !{!1008, !1006, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE: argument 1"}
!1009 = !{!1010}
!1010 = distinct !{!1010, !1011, !"cmpfunc: %a"}
!1011 = distinct !{!1011, !"cmpfunc"}
!1012 = !{!1013}
!1013 = distinct !{!1013, !1011, !"cmpfunc: %b"}
!1014 = !{!1010, !1005, !1000, !860}
!1015 = !{!1013, !1008, !1003, !863, !881}
!1016 = !{!1013, !1008, !1003, !860}
!1017 = !{!1010, !1005, !1000, !863, !881}
!1018 = !{!1019}
!1019 = distinct !{!1019, !1020, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E: %a"}
!1020 = distinct !{!1020, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E"}
!1021 = !{!1022}
!1022 = distinct !{!1022, !1020, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E: %b"}
!1023 = !{!1024}
!1024 = distinct !{!1024, !1025, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE: argument 0"}
!1025 = distinct !{!1025, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE"}
!1026 = !{!1027}
!1027 = distinct !{!1027, !1025, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE: argument 1"}
!1028 = !{!1029}
!1029 = distinct !{!1029, !1030, !"cmpfunc: %a"}
!1030 = distinct !{!1030, !"cmpfunc"}
!1031 = !{!1032}
!1032 = distinct !{!1032, !1030, !"cmpfunc: %b"}
!1033 = !{!1029, !1024, !1019, !860}
!1034 = !{!1032, !1027, !1022, !863, !881}
!1035 = !{!1032, !1027, !1022, !860}
!1036 = !{!1029, !1024, !1019, !863, !881}
!1037 = !{!1038}
!1038 = distinct !{!1038, !1039, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E: %a"}
!1039 = distinct !{!1039, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E"}
!1040 = !{!1041}
!1041 = distinct !{!1041, !1039, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E: %b"}
!1042 = !{!1043}
!1043 = distinct !{!1043, !1044, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE: argument 0"}
!1044 = distinct !{!1044, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE"}
!1045 = !{!1046}
!1046 = distinct !{!1046, !1044, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE: argument 1"}
!1047 = !{!1048}
!1048 = distinct !{!1048, !1049, !"cmpfunc: %a"}
!1049 = distinct !{!1049, !"cmpfunc"}
!1050 = !{!1051}
!1051 = distinct !{!1051, !1049, !"cmpfunc: %b"}
!1052 = !{!1048, !1043, !1038, !860}
!1053 = !{!1051, !1046, !1041, !863, !881}
!1054 = !{!1051, !1046, !1041, !860}
!1055 = !{!1048, !1043, !1038, !863, !881}
!1056 = !{!863, !881}
!1057 = !{!1058, !1060, !1062, !863}
!1058 = distinct !{!1058, !1059, !"cmpfunc: %b"}
!1059 = distinct !{!1059, !"cmpfunc"}
!1060 = distinct !{!1060, !1061, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE: argument 1"}
!1061 = distinct !{!1061, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE"}
!1062 = distinct !{!1062, !1063, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E: %b"}
!1063 = distinct !{!1063, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E"}
!1064 = !{!1065, !1066, !1067, !860, !881}
!1065 = distinct !{!1065, !1059, !"cmpfunc: %a"}
!1066 = distinct !{!1066, !1061, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE: argument 0"}
!1067 = distinct !{!1067, !1063, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E: %a"}
!1068 = !{!1069, !1071, !1073, !863}
!1069 = distinct !{!1069, !1070, !"cmpfunc: %b"}
!1070 = distinct !{!1070, !"cmpfunc"}
!1071 = distinct !{!1071, !1072, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE: argument 1"}
!1072 = distinct !{!1072, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE"}
!1073 = distinct !{!1073, !1074, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E: %b"}
!1074 = distinct !{!1074, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E"}
!1075 = !{!1076, !1077, !1078, !860, !881}
!1076 = distinct !{!1076, !1070, !"cmpfunc: %a"}
!1077 = distinct !{!1077, !1072, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE: argument 0"}
!1078 = distinct !{!1078, !1074, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E: %a"}
!1079 = !{!1080, !1082, !860, !881}
!1080 = distinct !{!1080, !1081, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd32aeb737205f13dE: %self"}
!1081 = distinct !{!1081, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd32aeb737205f13dE"}
!1082 = distinct !{!1082, !1083, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h9d5b582515422ce6E: %_1"}
!1083 = distinct !{!1083, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h9d5b582515422ce6E"}
!1084 = !{!1085}
!1085 = distinct !{!1085, !1086, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17he9817220e104e85eE: %v.0"}
!1086 = distinct !{!1086, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17he9817220e104e85eE"}
!1087 = !{!1088}
!1088 = distinct !{!1088, !1089, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E: %a"}
!1089 = distinct !{!1089, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E"}
!1090 = !{!1091}
!1091 = distinct !{!1091, !1089, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E: %b"}
!1092 = !{!1093}
!1093 = distinct !{!1093, !1094, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE: argument 0"}
!1094 = distinct !{!1094, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE"}
!1095 = !{!1096}
!1096 = distinct !{!1096, !1097, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hf5f0d5141dc2f563E: %_0"}
!1097 = distinct !{!1097, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hf5f0d5141dc2f563E"}
!1098 = !{!1099}
!1099 = distinct !{!1099, !1094, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE: argument 1"}
!1100 = !{!1101}
!1101 = distinct !{!1101, !1102, !"cmpfunc: %a"}
!1102 = distinct !{!1102, !"cmpfunc"}
!1103 = !{!1104}
!1104 = distinct !{!1104, !1102, !"cmpfunc: %b"}
!1105 = !{!1101, !1093, !1088, !1085, !863}
!1106 = !{!1104, !1099, !1091, !1096, !860, !881}
!1107 = !{!1104, !1099, !1091, !1085, !863}
!1108 = !{!1101, !1093, !1088, !1096, !860, !881}
!1109 = !{!1096, !1110, !1085, !863, !881}
!1110 = distinct !{!1110, !1097, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hf5f0d5141dc2f563E: %is_less"}
!1111 = !{!1112}
!1112 = distinct !{!1112, !1113, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E: %a"}
!1113 = distinct !{!1113, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E"}
!1114 = !{!1115}
!1115 = distinct !{!1115, !1113, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E: %b"}
!1116 = !{!1117}
!1117 = distinct !{!1117, !1118, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE: argument 0"}
!1118 = distinct !{!1118, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE"}
!1119 = !{!1120}
!1120 = distinct !{!1120, !1121, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h6ded7cd93f05eb10E: %_0"}
!1121 = distinct !{!1121, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h6ded7cd93f05eb10E"}
!1122 = !{!1123}
!1123 = distinct !{!1123, !1118, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE: argument 1"}
!1124 = !{!1125}
!1125 = distinct !{!1125, !1126, !"cmpfunc: %a"}
!1126 = distinct !{!1126, !"cmpfunc"}
!1127 = !{!1128}
!1128 = distinct !{!1128, !1126, !"cmpfunc: %b"}
!1129 = !{!1125, !1117, !1112, !1085, !863}
!1130 = !{!1128, !1123, !1115, !1120, !860, !881}
!1131 = !{!1128, !1123, !1115, !1085, !863}
!1132 = !{!1125, !1117, !1112, !1120, !860, !881}
!1133 = !{!1120, !1134, !1085, !863, !881}
!1134 = distinct !{!1134, !1121, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h6ded7cd93f05eb10E: %is_less"}
!1135 = !{!1085, !863}
!1136 = !{!1085, !863, !881}
!1137 = !{!860, !863, !881}
!1138 = !{!860, !863}
!1139 = !{!1140, !1142, !881}
!1140 = distinct !{!1140, !1141, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd32aeb737205f13dE: %self"}
!1141 = distinct !{!1141, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd32aeb737205f13dE"}
!1142 = distinct !{!1142, !1143, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h9d5b582515422ce6E: %_1"}
!1143 = distinct !{!1143, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h9d5b582515422ce6E"}
!1144 = !{!1145}
!1145 = distinct !{!1145, !1146, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E: %a"}
!1146 = distinct !{!1146, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E"}
!1147 = !{!1148}
!1148 = distinct !{!1148, !1146, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E: %b"}
!1149 = !{!1150}
!1150 = distinct !{!1150, !1151, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE: argument 0"}
!1151 = distinct !{!1151, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE"}
!1152 = !{!1153}
!1153 = distinct !{!1153, !1154, !"_ZN4core5slice4sort6shared5pivot7median317h31b283a33a863f2eE: %c"}
!1154 = distinct !{!1154, !"_ZN4core5slice4sort6shared5pivot7median317h31b283a33a863f2eE"}
!1155 = !{!1156}
!1156 = distinct !{!1156, !1151, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE: argument 1"}
!1157 = !{!1158}
!1158 = distinct !{!1158, !1159, !"cmpfunc: %a"}
!1159 = distinct !{!1159, !"cmpfunc"}
!1160 = !{!1161}
!1161 = distinct !{!1161, !1159, !"cmpfunc: %b"}
!1162 = !{!1158, !1150, !1145, !1163}
!1163 = distinct !{!1163, !1164, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h240e2fc382a70b98E: %v.0"}
!1164 = distinct !{!1164, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h240e2fc382a70b98E"}
!1165 = !{!1161, !1156, !1148, !1153, !1166}
!1166 = distinct !{!1166, !1164, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h240e2fc382a70b98E: %is_less"}
!1167 = !{!1161, !1156, !1148, !1163}
!1168 = !{!1158, !1150, !1145, !1153, !1166}
!1169 = !{!1170, !1172, !1174, !1163}
!1170 = distinct !{!1170, !1171, !"cmpfunc: %b"}
!1171 = distinct !{!1171, !"cmpfunc"}
!1172 = distinct !{!1172, !1173, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE: argument 1"}
!1173 = distinct !{!1173, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE"}
!1174 = distinct !{!1174, !1175, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E: %b"}
!1175 = distinct !{!1175, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E"}
!1176 = !{!1177, !1178, !1179, !1166}
!1177 = distinct !{!1177, !1171, !"cmpfunc: %a"}
!1178 = distinct !{!1178, !1173, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE: argument 0"}
!1179 = distinct !{!1179, !1175, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E: %a"}
!1180 = !{!1181, !1183, !1185}
!1181 = distinct !{!1181, !1182, !"cmpfunc: %a"}
!1182 = distinct !{!1182, !"cmpfunc"}
!1183 = distinct !{!1183, !1184, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE: argument 0"}
!1184 = distinct !{!1184, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE"}
!1185 = distinct !{!1185, !1186, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E: %a"}
!1186 = distinct !{!1186, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E"}
!1187 = !{!1188, !1189, !1190}
!1188 = distinct !{!1188, !1182, !"cmpfunc: %b"}
!1189 = distinct !{!1189, !1184, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE: argument 1"}
!1190 = distinct !{!1190, !1186, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E: %b"}
!1191 = !{!1192}
!1192 = distinct !{!1192, !1193, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h2d3b9d94e5e1da9eE: %v.0"}
!1193 = distinct !{!1193, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h2d3b9d94e5e1da9eE"}
!1194 = !{!1195}
!1195 = distinct !{!1195, !1193, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h2d3b9d94e5e1da9eE: %scratch.0"}
!1196 = !{!1197, !1199, !1201, !1192}
!1197 = distinct !{!1197, !1198, !"cmpfunc: %b"}
!1198 = distinct !{!1198, !"cmpfunc"}
!1199 = distinct !{!1199, !1200, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE: argument 1"}
!1200 = distinct !{!1200, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE"}
!1201 = distinct !{!1201, !1202, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E: %b"}
!1202 = distinct !{!1202, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E"}
!1203 = !{!1204, !1205, !1206, !1195}
!1204 = distinct !{!1204, !1198, !"cmpfunc: %a"}
!1205 = distinct !{!1205, !1200, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE: argument 0"}
!1206 = distinct !{!1206, !1202, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E: %a"}
!1207 = !{!1206}
!1208 = !{!1201}
!1209 = !{!1205}
!1210 = !{!1199}
!1211 = !{!1204}
!1212 = !{!1197}
!1213 = !{!1204, !1205, !1206, !1192}
!1214 = !{!1197, !1199, !1201, !1195}
!1215 = !{!1216, !1192}
!1216 = distinct !{!1216, !1217, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h0f3489b7e06a70c2E: %self"}
!1217 = distinct !{!1217, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h0f3489b7e06a70c2E"}
!1218 = !{!1219, !1221, !1223, !1192}
!1219 = distinct !{!1219, !1220, !"cmpfunc: %a"}
!1220 = distinct !{!1220, !"cmpfunc"}
!1221 = distinct !{!1221, !1222, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE: argument 0"}
!1222 = distinct !{!1222, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE"}
!1223 = distinct !{!1223, !1224, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E: %a"}
!1224 = distinct !{!1224, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E"}
!1225 = !{!1226, !1227, !1228, !1195}
!1226 = distinct !{!1226, !1220, !"cmpfunc: %b"}
!1227 = distinct !{!1227, !1222, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE: argument 1"}
!1228 = distinct !{!1228, !1224, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E: %b"}
!1229 = !{!1230, !1192}
!1230 = distinct !{!1230, !1231, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h0f3489b7e06a70c2E: %self"}
!1231 = distinct !{!1231, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h0f3489b7e06a70c2E"}
!1232 = !{!1233, !1235, !1237, !1192}
!1233 = distinct !{!1233, !1234, !"cmpfunc: %a"}
!1234 = distinct !{!1234, !"cmpfunc"}
!1235 = distinct !{!1235, !1236, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE: argument 0"}
!1236 = distinct !{!1236, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE"}
!1237 = distinct !{!1237, !1238, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E: %a"}
!1238 = distinct !{!1238, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E"}
!1239 = !{!1240, !1241, !1242, !1195}
!1240 = distinct !{!1240, !1234, !"cmpfunc: %b"}
!1241 = distinct !{!1241, !1236, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE: argument 1"}
!1242 = distinct !{!1242, !1238, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E: %b"}
!1243 = !{!1244, !1192}
!1244 = distinct !{!1244, !1245, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h0f3489b7e06a70c2E: %self"}
!1245 = distinct !{!1245, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h0f3489b7e06a70c2E"}
!1246 = !{!1247, !1249, !1251, !1192}
!1247 = distinct !{!1247, !1248, !"cmpfunc: %a"}
!1248 = distinct !{!1248, !"cmpfunc"}
!1249 = distinct !{!1249, !1250, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE: argument 0"}
!1250 = distinct !{!1250, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE"}
!1251 = distinct !{!1251, !1252, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E: %a"}
!1252 = distinct !{!1252, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E"}
!1253 = !{!1254, !1255, !1256, !1195}
!1254 = distinct !{!1254, !1248, !"cmpfunc: %b"}
!1255 = distinct !{!1255, !1250, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE: argument 1"}
!1256 = distinct !{!1256, !1252, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E: %b"}
!1257 = !{!1258, !1192}
!1258 = distinct !{!1258, !1259, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h0f3489b7e06a70c2E: %self"}
!1259 = distinct !{!1259, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h0f3489b7e06a70c2E"}
!1260 = !{!1261, !1263, !1265, !1192}
!1261 = distinct !{!1261, !1262, !"cmpfunc: %b"}
!1262 = distinct !{!1262, !"cmpfunc"}
!1263 = distinct !{!1263, !1264, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE: argument 1"}
!1264 = distinct !{!1264, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE"}
!1265 = distinct !{!1265, !1266, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E: %b"}
!1266 = distinct !{!1266, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E"}
!1267 = !{!1268, !1269, !1270, !1195}
!1268 = distinct !{!1268, !1262, !"cmpfunc: %a"}
!1269 = distinct !{!1269, !1264, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE: argument 0"}
!1270 = distinct !{!1270, !1266, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E: %a"}
!1271 = !{!1270}
!1272 = !{!1265}
!1273 = !{!1269}
!1274 = !{!1263}
!1275 = !{!1268}
!1276 = !{!1261}
!1277 = !{!1268, !1269, !1270, !1192}
!1278 = !{!1261, !1263, !1265, !1195}
!1279 = !{!1280, !1192}
!1280 = distinct !{!1280, !1281, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h0f3489b7e06a70c2E: %self"}
!1281 = distinct !{!1281, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h0f3489b7e06a70c2E"}
!1282 = !{!1283, !1195}
!1283 = distinct !{!1283, !1284, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h0f3489b7e06a70c2E: %self"}
!1284 = distinct !{!1284, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h0f3489b7e06a70c2E"}
!1285 = !{!1283, !1192}
!1286 = !{!1192, !1195}
!1287 = distinct !{!1287, !690, !691}
!1288 = distinct !{!1288, !691, !690}
!1289 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!1290 = !{!1291, !1293}
!1291 = distinct !{!1291, !1292, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hbf5dd1b70fd3d158E: %pair"}
!1292 = distinct !{!1292, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hbf5dd1b70fd3d158E"}
!1293 = distinct !{!1293, !1292, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hbf5dd1b70fd3d158E: %self.0"}
!1294 = !{!1295}
!1295 = distinct !{!1295, !1296, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h7d88e5b58e885b92E: %v.0"}
!1296 = distinct !{!1296, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h7d88e5b58e885b92E"}
!1297 = !{!1298}
!1298 = distinct !{!1298, !1296, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h7d88e5b58e885b92E: %scratch.0"}
!1299 = !{!1300, !1302, !1304, !1306, !1295}
!1300 = distinct !{!1300, !1301, !"cmpfunc: %a"}
!1301 = distinct !{!1301, !"cmpfunc"}
!1302 = distinct !{!1302, !1303, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE: argument 0"}
!1303 = distinct !{!1303, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE"}
!1304 = distinct !{!1304, !1305, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E: %a"}
!1305 = distinct !{!1305, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E"}
!1306 = distinct !{!1306, !1307, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h81b03dde797252d6E: %b"}
!1307 = distinct !{!1307, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h81b03dde797252d6E"}
!1308 = !{!1309, !1310, !1311, !1312, !1298}
!1309 = distinct !{!1309, !1301, !"cmpfunc: %b"}
!1310 = distinct !{!1310, !1303, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE: argument 1"}
!1311 = distinct !{!1311, !1305, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E: %b"}
!1312 = distinct !{!1312, !1307, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h81b03dde797252d6E: %a"}
!1313 = !{!1312}
!1314 = !{!1306}
!1315 = !{!1304}
!1316 = !{!1311}
!1317 = !{!1302}
!1318 = !{!1310}
!1319 = !{!1300}
!1320 = !{!1309}
!1321 = !{!1309, !1310, !1311, !1312, !1295}
!1322 = !{!1300, !1302, !1304, !1306, !1298}
!1323 = !{!1324, !1295}
!1324 = distinct !{!1324, !1325, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h0f3489b7e06a70c2E: %self"}
!1325 = distinct !{!1325, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h0f3489b7e06a70c2E"}
!1326 = !{!1327, !1329, !1331, !1333, !1295}
!1327 = distinct !{!1327, !1328, !"cmpfunc: %b"}
!1328 = distinct !{!1328, !"cmpfunc"}
!1329 = distinct !{!1329, !1330, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE: argument 1"}
!1330 = distinct !{!1330, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE"}
!1331 = distinct !{!1331, !1332, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E: %b"}
!1332 = distinct !{!1332, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E"}
!1333 = distinct !{!1333, !1334, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h81b03dde797252d6E: %a"}
!1334 = distinct !{!1334, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h81b03dde797252d6E"}
!1335 = !{!1336, !1337, !1338, !1339, !1298}
!1336 = distinct !{!1336, !1328, !"cmpfunc: %a"}
!1337 = distinct !{!1337, !1330, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE: argument 0"}
!1338 = distinct !{!1338, !1332, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E: %a"}
!1339 = distinct !{!1339, !1334, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h81b03dde797252d6E: %b"}
!1340 = !{!1341, !1295}
!1341 = distinct !{!1341, !1342, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h0f3489b7e06a70c2E: %self"}
!1342 = distinct !{!1342, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h0f3489b7e06a70c2E"}
!1343 = !{!1344, !1346, !1348, !1350, !1295}
!1344 = distinct !{!1344, !1345, !"cmpfunc: %b"}
!1345 = distinct !{!1345, !"cmpfunc"}
!1346 = distinct !{!1346, !1347, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE: argument 1"}
!1347 = distinct !{!1347, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE"}
!1348 = distinct !{!1348, !1349, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E: %b"}
!1349 = distinct !{!1349, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E"}
!1350 = distinct !{!1350, !1351, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h81b03dde797252d6E: %a"}
!1351 = distinct !{!1351, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h81b03dde797252d6E"}
!1352 = !{!1353, !1354, !1355, !1356, !1298}
!1353 = distinct !{!1353, !1345, !"cmpfunc: %a"}
!1354 = distinct !{!1354, !1347, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE: argument 0"}
!1355 = distinct !{!1355, !1349, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E: %a"}
!1356 = distinct !{!1356, !1351, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h81b03dde797252d6E: %b"}
!1357 = !{!1358, !1295}
!1358 = distinct !{!1358, !1359, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h0f3489b7e06a70c2E: %self"}
!1359 = distinct !{!1359, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h0f3489b7e06a70c2E"}
!1360 = !{!1361, !1363, !1365, !1367, !1295}
!1361 = distinct !{!1361, !1362, !"cmpfunc: %b"}
!1362 = distinct !{!1362, !"cmpfunc"}
!1363 = distinct !{!1363, !1364, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE: argument 1"}
!1364 = distinct !{!1364, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE"}
!1365 = distinct !{!1365, !1366, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E: %b"}
!1366 = distinct !{!1366, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E"}
!1367 = distinct !{!1367, !1368, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h81b03dde797252d6E: %a"}
!1368 = distinct !{!1368, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h81b03dde797252d6E"}
!1369 = !{!1370, !1371, !1372, !1373, !1298}
!1370 = distinct !{!1370, !1362, !"cmpfunc: %a"}
!1371 = distinct !{!1371, !1364, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE: argument 0"}
!1372 = distinct !{!1372, !1366, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E: %a"}
!1373 = distinct !{!1373, !1368, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h81b03dde797252d6E: %b"}
!1374 = !{!1375, !1295}
!1375 = distinct !{!1375, !1376, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h0f3489b7e06a70c2E: %self"}
!1376 = distinct !{!1376, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h0f3489b7e06a70c2E"}
!1377 = !{!1378, !1380, !1382, !1384, !1295}
!1378 = distinct !{!1378, !1379, !"cmpfunc: %a"}
!1379 = distinct !{!1379, !"cmpfunc"}
!1380 = distinct !{!1380, !1381, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE: argument 0"}
!1381 = distinct !{!1381, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE"}
!1382 = distinct !{!1382, !1383, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E: %a"}
!1383 = distinct !{!1383, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E"}
!1384 = distinct !{!1384, !1385, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h81b03dde797252d6E: %b"}
!1385 = distinct !{!1385, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h81b03dde797252d6E"}
!1386 = !{!1387, !1388, !1389, !1390, !1298}
!1387 = distinct !{!1387, !1379, !"cmpfunc: %b"}
!1388 = distinct !{!1388, !1381, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE: argument 1"}
!1389 = distinct !{!1389, !1383, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E: %b"}
!1390 = distinct !{!1390, !1385, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h81b03dde797252d6E: %a"}
!1391 = !{!1390}
!1392 = !{!1384}
!1393 = !{!1382}
!1394 = !{!1389}
!1395 = !{!1380}
!1396 = !{!1388}
!1397 = !{!1378}
!1398 = !{!1387}
!1399 = !{!1387, !1388, !1389, !1390, !1295}
!1400 = !{!1378, !1380, !1382, !1384, !1298}
!1401 = !{!1402, !1295}
!1402 = distinct !{!1402, !1403, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h0f3489b7e06a70c2E: %self"}
!1403 = distinct !{!1403, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h0f3489b7e06a70c2E"}
!1404 = !{!1405, !1298}
!1405 = distinct !{!1405, !1406, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h0f3489b7e06a70c2E: %self"}
!1406 = distinct !{!1406, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h0f3489b7e06a70c2E"}
!1407 = !{!1405, !1295}
!1408 = !{!1295, !1298}
!1409 = distinct !{!1409, !690, !691}
!1410 = distinct !{!1410, !691, !690}
!1411 = !{!1412}
!1412 = distinct !{!1412, !1413, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17hc0ea6bb88ea77840E: %v.0"}
!1413 = distinct !{!1413, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17hc0ea6bb88ea77840E"}
!1414 = !{!1415}
!1415 = distinct !{!1415, !1413, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17hc0ea6bb88ea77840E: %scratch.0"}
!1416 = !{!1415, !1417}
!1417 = distinct !{!1417, !1413, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17hc0ea6bb88ea77840E: %is_less"}
!1418 = !{!1412, !1417}
!1419 = !{!1420, !1422, !1415}
!1420 = distinct !{!1420, !1421, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E: %b"}
!1421 = distinct !{!1421, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E"}
!1422 = distinct !{!1422, !1423, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E: %b"}
!1423 = distinct !{!1423, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E"}
!1424 = !{!1425, !1426, !1412, !1417}
!1425 = distinct !{!1425, !1421, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E: %a"}
!1426 = distinct !{!1426, !1423, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E: %a"}
!1427 = !{!1428, !1430, !1415}
!1428 = distinct !{!1428, !1429, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E: %b"}
!1429 = distinct !{!1429, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E"}
!1430 = distinct !{!1430, !1431, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E: %b"}
!1431 = distinct !{!1431, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E"}
!1432 = !{!1433, !1434, !1412, !1417}
!1433 = distinct !{!1433, !1429, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E: %a"}
!1434 = distinct !{!1434, !1431, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E: %a"}
!1435 = !{!1436, !1438, !1412, !1417}
!1436 = distinct !{!1436, !1437, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8d4cd428c0b6aa6cE: %self"}
!1437 = distinct !{!1437, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8d4cd428c0b6aa6cE"}
!1438 = distinct !{!1438, !1439, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$f32$GT$$GT$17he3ae396fd493087aE: %_1"}
!1439 = distinct !{!1439, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$f32$GT$$GT$17he3ae396fd493087aE"}
!1440 = !{!1441}
!1441 = distinct !{!1441, !1442, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hdd59a7129bf6f32dE: %v.0"}
!1442 = distinct !{!1442, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hdd59a7129bf6f32dE"}
!1443 = !{!1444}
!1444 = distinct !{!1444, !1445, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E: %a"}
!1445 = distinct !{!1445, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E"}
!1446 = !{!1447}
!1447 = distinct !{!1447, !1445, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E: %b"}
!1448 = !{!1449}
!1449 = distinct !{!1449, !1450, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E: %a"}
!1450 = distinct !{!1450, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E"}
!1451 = !{!1452}
!1452 = distinct !{!1452, !1453, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h435d037dc3a64883E: %_0"}
!1453 = distinct !{!1453, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h435d037dc3a64883E"}
!1454 = !{!1455}
!1455 = distinct !{!1455, !1450, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E: %b"}
!1456 = !{!1449, !1444, !1441, !1415}
!1457 = !{!1455, !1447, !1452, !1412, !1417}
!1458 = !{!1455, !1447, !1441, !1415}
!1459 = !{!1449, !1444, !1452, !1412, !1417}
!1460 = !{!1441, !1415}
!1461 = !{!1452, !1462, !1412, !1417}
!1462 = distinct !{!1462, !1453, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h435d037dc3a64883E: %is_less"}
!1463 = !{!1452, !1462, !1441, !1415, !1417}
!1464 = !{!1465}
!1465 = distinct !{!1465, !1466, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E: %a"}
!1466 = distinct !{!1466, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E"}
!1467 = !{!1468}
!1468 = distinct !{!1468, !1466, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E: %b"}
!1469 = !{!1470}
!1470 = distinct !{!1470, !1471, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E: %a"}
!1471 = distinct !{!1471, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E"}
!1472 = !{!1473}
!1473 = distinct !{!1473, !1474, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h8b474ecae1428e0aE: %_0"}
!1474 = distinct !{!1474, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h8b474ecae1428e0aE"}
!1475 = !{!1476}
!1476 = distinct !{!1476, !1471, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E: %b"}
!1477 = !{!1470, !1465, !1441, !1415}
!1478 = !{!1476, !1468, !1473, !1412, !1417}
!1479 = !{!1476, !1468, !1441, !1415}
!1480 = !{!1470, !1465, !1473, !1412, !1417}
!1481 = !{!1412, !1415, !1417}
!1482 = !{!1473, !1483, !1412, !1417}
!1483 = distinct !{!1483, !1474, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h8b474ecae1428e0aE: %is_less"}
!1484 = !{!1473, !1483, !1441, !1415, !1417}
!1485 = !{!1441, !1415, !1417}
!1486 = !{!1412, !1415}
!1487 = !{!1488, !1490, !1417}
!1488 = distinct !{!1488, !1489, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8d4cd428c0b6aa6cE: %self"}
!1489 = distinct !{!1489, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8d4cd428c0b6aa6cE"}
!1490 = distinct !{!1490, !1491, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$f32$GT$$GT$17he3ae396fd493087aE: %_1"}
!1491 = distinct !{!1491, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$f32$GT$$GT$17he3ae396fd493087aE"}
!1492 = !{!1493, !1495, !1412, !1417}
!1493 = distinct !{!1493, !1494, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8d4cd428c0b6aa6cE: %self"}
!1494 = distinct !{!1494, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8d4cd428c0b6aa6cE"}
!1495 = distinct !{!1495, !1496, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$f32$GT$$GT$17he3ae396fd493087aE: %_1"}
!1496 = distinct !{!1496, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$f32$GT$$GT$17he3ae396fd493087aE"}
!1497 = !{!1498}
!1498 = distinct !{!1498, !1499, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h973d8d46368b1480E: %v.0"}
!1499 = distinct !{!1499, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h973d8d46368b1480E"}
!1500 = !{!1501}
!1501 = distinct !{!1501, !1502, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E: %a"}
!1502 = distinct !{!1502, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E"}
!1503 = !{!1504}
!1504 = distinct !{!1504, !1502, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E: %b"}
!1505 = !{!1506}
!1506 = distinct !{!1506, !1507, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E: %a"}
!1507 = distinct !{!1507, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E"}
!1508 = !{!1509}
!1509 = distinct !{!1509, !1510, !"_ZN4core5slice4sort6shared5pivot7median317he64b779e7bd549dfE: %c"}
!1510 = distinct !{!1510, !"_ZN4core5slice4sort6shared5pivot7median317he64b779e7bd549dfE"}
!1511 = !{!1512}
!1512 = distinct !{!1512, !1507, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E: %b"}
!1513 = !{!1506, !1501, !1498}
!1514 = !{!1512, !1504, !1509, !1515}
!1515 = distinct !{!1515, !1499, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h973d8d46368b1480E: %is_less"}
!1516 = !{!1512, !1504, !1498}
!1517 = !{!1506, !1501, !1509, !1515}
!1518 = !{!1506, !1512, !1501, !1504, !1509, !1498, !1515}
!1519 = !{!1520}
!1520 = distinct !{!1520, !1521, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E: %b"}
!1521 = distinct !{!1521, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E"}
!1522 = !{!1523}
!1523 = distinct !{!1523, !1524, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E: %b"}
!1524 = distinct !{!1524, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E"}
!1525 = !{!1523, !1520, !1498}
!1526 = !{!1527, !1528, !1515}
!1527 = distinct !{!1527, !1524, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E: %a"}
!1528 = distinct !{!1528, !1521, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E: %a"}
!1529 = !{!1527, !1523, !1528, !1520, !1498, !1515}
!1530 = !{!1531, !1533, !1534, !1536, !1498, !1515}
!1531 = distinct !{!1531, !1532, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E: %a"}
!1532 = distinct !{!1532, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E"}
!1533 = distinct !{!1533, !1532, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E: %b"}
!1534 = distinct !{!1534, !1535, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E: %a"}
!1535 = distinct !{!1535, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E"}
!1536 = distinct !{!1536, !1535, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E: %b"}
!1537 = !{!1538}
!1538 = distinct !{!1538, !1539, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E: %a"}
!1539 = distinct !{!1539, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E"}
!1540 = !{!1541}
!1541 = distinct !{!1541, !1542, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E: %a"}
!1542 = distinct !{!1542, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E"}
!1543 = !{!1541, !1538}
!1544 = !{!1545, !1546}
!1545 = distinct !{!1545, !1542, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E: %b"}
!1546 = distinct !{!1546, !1539, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E: %b"}
!1547 = !{!1541, !1545, !1538, !1546}
!1548 = !{!1549}
!1549 = distinct !{!1549, !1550, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h0ed6420a4ded3a27E: %v.0"}
!1550 = distinct !{!1550, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h0ed6420a4ded3a27E"}
!1551 = !{!1552}
!1552 = distinct !{!1552, !1550, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h0ed6420a4ded3a27E: %scratch.0"}
!1553 = !{!1554, !1556, !1549}
!1554 = distinct !{!1554, !1555, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E: %b"}
!1555 = distinct !{!1555, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E"}
!1556 = distinct !{!1556, !1557, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E: %b"}
!1557 = distinct !{!1557, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E"}
!1558 = !{!1559, !1560, !1552}
!1559 = distinct !{!1559, !1555, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E: %a"}
!1560 = distinct !{!1560, !1557, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E: %a"}
!1561 = !{!1560}
!1562 = !{!1556}
!1563 = !{!1559}
!1564 = !{!1554}
!1565 = !{!1559, !1560, !1549}
!1566 = !{!1554, !1556, !1552}
!1567 = !{!1559, !1554, !1560, !1556, !1549, !1552}
!1568 = !{!1569, !1549}
!1569 = distinct !{!1569, !1570, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h7572a2240299b411E: %self"}
!1570 = distinct !{!1570, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h7572a2240299b411E"}
!1571 = !{!1572}
!1572 = distinct !{!1572, !1573, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E: %a"}
!1573 = distinct !{!1573, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E"}
!1574 = !{!1575}
!1575 = distinct !{!1575, !1576, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E: %a"}
!1576 = distinct !{!1576, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E"}
!1577 = !{!1575, !1572, !1549}
!1578 = !{!1579, !1580, !1552}
!1579 = distinct !{!1579, !1576, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E: %b"}
!1580 = distinct !{!1580, !1573, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E: %b"}
!1581 = !{!1575, !1579, !1572, !1580, !1549, !1552}
!1582 = !{!1583, !1549}
!1583 = distinct !{!1583, !1584, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h7572a2240299b411E: %self"}
!1584 = distinct !{!1584, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h7572a2240299b411E"}
!1585 = !{!1586}
!1586 = distinct !{!1586, !1587, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E: %a"}
!1587 = distinct !{!1587, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E"}
!1588 = !{!1589}
!1589 = distinct !{!1589, !1590, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E: %a"}
!1590 = distinct !{!1590, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E"}
!1591 = !{!1589, !1586, !1549}
!1592 = !{!1593, !1594, !1552}
!1593 = distinct !{!1593, !1590, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E: %b"}
!1594 = distinct !{!1594, !1587, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E: %b"}
!1595 = !{!1589, !1593, !1586, !1594, !1549, !1552}
!1596 = !{!1597, !1549}
!1597 = distinct !{!1597, !1598, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h7572a2240299b411E: %self"}
!1598 = distinct !{!1598, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h7572a2240299b411E"}
!1599 = !{!1600}
!1600 = distinct !{!1600, !1601, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E: %a"}
!1601 = distinct !{!1601, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E"}
!1602 = !{!1603}
!1603 = distinct !{!1603, !1604, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E: %a"}
!1604 = distinct !{!1604, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E"}
!1605 = !{!1603, !1600, !1549}
!1606 = !{!1607, !1608, !1552}
!1607 = distinct !{!1607, !1604, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E: %b"}
!1608 = distinct !{!1608, !1601, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E: %b"}
!1609 = !{!1603, !1607, !1600, !1608, !1549, !1552}
!1610 = !{!1611, !1549}
!1611 = distinct !{!1611, !1612, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h7572a2240299b411E: %self"}
!1612 = distinct !{!1612, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h7572a2240299b411E"}
!1613 = !{!1614, !1616, !1549}
!1614 = distinct !{!1614, !1615, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E: %b"}
!1615 = distinct !{!1615, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E"}
!1616 = distinct !{!1616, !1617, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E: %b"}
!1617 = distinct !{!1617, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E"}
!1618 = !{!1619, !1620, !1552}
!1619 = distinct !{!1619, !1615, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E: %a"}
!1620 = distinct !{!1620, !1617, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E: %a"}
!1621 = !{!1620}
!1622 = !{!1616}
!1623 = !{!1619}
!1624 = !{!1614}
!1625 = !{!1619, !1620, !1549}
!1626 = !{!1614, !1616, !1552}
!1627 = !{!1619, !1614, !1620, !1616, !1549, !1552}
!1628 = !{!1629, !1549}
!1629 = distinct !{!1629, !1630, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h7572a2240299b411E: %self"}
!1630 = distinct !{!1630, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h7572a2240299b411E"}
!1631 = !{!1632, !1552}
!1632 = distinct !{!1632, !1633, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h7572a2240299b411E: %self"}
!1633 = distinct !{!1633, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h7572a2240299b411E"}
!1634 = !{!1632, !1549}
!1635 = !{!1549, !1552}
!1636 = distinct !{!1636, !690, !691}
!1637 = distinct !{!1637, !691, !690}
!1638 = !{!1639, !1641}
!1639 = distinct !{!1639, !1640, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h2723435a5e7b379eE: %pair"}
!1640 = distinct !{!1640, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h2723435a5e7b379eE"}
!1641 = distinct !{!1641, !1640, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h2723435a5e7b379eE: %self.0"}
!1642 = !{!1643}
!1643 = distinct !{!1643, !1644, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h4d933a4c17d9d985E: %v.0"}
!1644 = distinct !{!1644, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h4d933a4c17d9d985E"}
!1645 = !{!1646}
!1646 = distinct !{!1646, !1644, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h4d933a4c17d9d985E: %scratch.0"}
!1647 = !{!1648, !1650, !1652, !1643}
!1648 = distinct !{!1648, !1649, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E: %a"}
!1649 = distinct !{!1649, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E"}
!1650 = distinct !{!1650, !1651, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E: %a"}
!1651 = distinct !{!1651, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E"}
!1652 = distinct !{!1652, !1653, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h69e251828a7bc25dE: %b"}
!1653 = distinct !{!1653, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h69e251828a7bc25dE"}
!1654 = !{!1655, !1656, !1657, !1646}
!1655 = distinct !{!1655, !1649, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E: %b"}
!1656 = distinct !{!1656, !1651, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E: %b"}
!1657 = distinct !{!1657, !1653, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h69e251828a7bc25dE: %a"}
!1658 = !{!1657}
!1659 = !{!1652}
!1660 = !{!1650}
!1661 = !{!1656}
!1662 = !{!1648}
!1663 = !{!1655}
!1664 = !{!1655, !1656, !1657, !1643}
!1665 = !{!1648, !1650, !1652, !1646}
!1666 = !{!1648, !1655, !1650, !1656, !1657, !1652, !1643, !1646}
!1667 = !{!1668, !1643}
!1668 = distinct !{!1668, !1669, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h7572a2240299b411E: %self"}
!1669 = distinct !{!1669, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h7572a2240299b411E"}
!1670 = !{!1671}
!1671 = distinct !{!1671, !1672, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h69e251828a7bc25dE: %a"}
!1672 = distinct !{!1672, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h69e251828a7bc25dE"}
!1673 = !{!1674}
!1674 = distinct !{!1674, !1675, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E: %b"}
!1675 = distinct !{!1675, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E"}
!1676 = !{!1677}
!1677 = distinct !{!1677, !1678, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E: %b"}
!1678 = distinct !{!1678, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E"}
!1679 = !{!1677, !1674, !1671, !1643}
!1680 = !{!1681, !1682, !1683, !1646}
!1681 = distinct !{!1681, !1678, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E: %a"}
!1682 = distinct !{!1682, !1675, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E: %a"}
!1683 = distinct !{!1683, !1672, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h69e251828a7bc25dE: %b"}
!1684 = !{!1681, !1677, !1682, !1674, !1671, !1683, !1643, !1646}
!1685 = !{!1686, !1643}
!1686 = distinct !{!1686, !1687, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h7572a2240299b411E: %self"}
!1687 = distinct !{!1687, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h7572a2240299b411E"}
!1688 = !{!1689}
!1689 = distinct !{!1689, !1690, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h69e251828a7bc25dE: %a"}
!1690 = distinct !{!1690, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h69e251828a7bc25dE"}
!1691 = !{!1692}
!1692 = distinct !{!1692, !1693, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E: %b"}
!1693 = distinct !{!1693, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E"}
!1694 = !{!1695}
!1695 = distinct !{!1695, !1696, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E: %b"}
!1696 = distinct !{!1696, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E"}
!1697 = !{!1695, !1692, !1689, !1643}
!1698 = !{!1699, !1700, !1701, !1646}
!1699 = distinct !{!1699, !1696, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E: %a"}
!1700 = distinct !{!1700, !1693, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E: %a"}
!1701 = distinct !{!1701, !1690, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h69e251828a7bc25dE: %b"}
!1702 = !{!1699, !1695, !1700, !1692, !1689, !1701, !1643, !1646}
!1703 = !{!1704, !1643}
!1704 = distinct !{!1704, !1705, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h7572a2240299b411E: %self"}
!1705 = distinct !{!1705, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h7572a2240299b411E"}
!1706 = !{!1707}
!1707 = distinct !{!1707, !1708, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h69e251828a7bc25dE: %a"}
!1708 = distinct !{!1708, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h69e251828a7bc25dE"}
!1709 = !{!1710}
!1710 = distinct !{!1710, !1711, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E: %b"}
!1711 = distinct !{!1711, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E"}
!1712 = !{!1713}
!1713 = distinct !{!1713, !1714, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E: %b"}
!1714 = distinct !{!1714, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E"}
!1715 = !{!1713, !1710, !1707, !1643}
!1716 = !{!1717, !1718, !1719, !1646}
!1717 = distinct !{!1717, !1714, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E: %a"}
!1718 = distinct !{!1718, !1711, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E: %a"}
!1719 = distinct !{!1719, !1708, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h69e251828a7bc25dE: %b"}
!1720 = !{!1717, !1713, !1718, !1710, !1707, !1719, !1643, !1646}
!1721 = !{!1722, !1643}
!1722 = distinct !{!1722, !1723, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h7572a2240299b411E: %self"}
!1723 = distinct !{!1723, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h7572a2240299b411E"}
!1724 = !{!1725, !1727, !1729, !1643}
!1725 = distinct !{!1725, !1726, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E: %a"}
!1726 = distinct !{!1726, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E"}
!1727 = distinct !{!1727, !1728, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E: %a"}
!1728 = distinct !{!1728, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E"}
!1729 = distinct !{!1729, !1730, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h69e251828a7bc25dE: %b"}
!1730 = distinct !{!1730, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h69e251828a7bc25dE"}
!1731 = !{!1732, !1733, !1734, !1646}
!1732 = distinct !{!1732, !1726, !"_ZN52MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h78d93956fbca05c6E: %b"}
!1733 = distinct !{!1733, !1728, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe8c4e5d009b76f1E: %b"}
!1734 = distinct !{!1734, !1730, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h69e251828a7bc25dE: %a"}
!1735 = !{!1734}
!1736 = !{!1729}
!1737 = !{!1727}
!1738 = !{!1733}
!1739 = !{!1725}
!1740 = !{!1732}
!1741 = !{!1732, !1733, !1734, !1643}
!1742 = !{!1725, !1727, !1729, !1646}
!1743 = !{!1725, !1732, !1727, !1733, !1734, !1729, !1643, !1646}
!1744 = !{!1745, !1643}
!1745 = distinct !{!1745, !1746, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h7572a2240299b411E: %self"}
!1746 = distinct !{!1746, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h7572a2240299b411E"}
!1747 = !{!1748, !1646}
!1748 = distinct !{!1748, !1749, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h7572a2240299b411E: %self"}
!1749 = distinct !{!1749, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h7572a2240299b411E"}
!1750 = !{!1748, !1643}
!1751 = !{!1643, !1646}
!1752 = distinct !{!1752, !690, !691}
!1753 = distinct !{!1753, !691, !690}
!1754 = !{!1755}
!1755 = distinct !{!1755, !1756, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hdabcd289a24b784aE: %self.0"}
!1756 = distinct !{!1756, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hdabcd289a24b784aE"}
!1757 = !{!1758, !1760, !1755}
!1758 = distinct !{!1758, !1759, !"_ZN5alloc5slice11stable_sort17he384f897347578e1E: %v.0"}
!1759 = distinct !{!1759, !"_ZN5alloc5slice11stable_sort17he384f897347578e1E"}
!1760 = distinct !{!1760, !1759, !"_ZN5alloc5slice11stable_sort17he384f897347578e1E: argument 1"}
!1761 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!1762 = !{!1763}
!1763 = distinct !{!1763, !1764, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h363b45b6e22ac29aE: %self.0"}
!1764 = distinct !{!1764, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h363b45b6e22ac29aE"}
!1765 = !{!1766}
!1766 = distinct !{!1766, !1767, !"_ZN5alloc5slice11stable_sort17hb7f5764f3b72800aE: %v.0"}
!1767 = distinct !{!1767, !"_ZN5alloc5slice11stable_sort17hb7f5764f3b72800aE"}
!1768 = !{!1766, !1769, !1763}
!1769 = distinct !{!1769, !1767, !"_ZN5alloc5slice11stable_sort17hb7f5764f3b72800aE: argument 1"}
!1770 = !{!1771}
!1771 = distinct !{!1771, !1772, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E: %a"}
!1772 = distinct !{!1772, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E"}
!1773 = !{!1774}
!1774 = distinct !{!1774, !1772, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E: %b"}
!1775 = !{!1776}
!1776 = distinct !{!1776, !1777, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE: argument 0"}
!1777 = distinct !{!1777, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE"}
!1778 = !{!1779}
!1779 = distinct !{!1779, !1777, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE: argument 1"}
!1780 = !{!1781}
!1781 = distinct !{!1781, !1782, !"cmpfunc: %a"}
!1782 = distinct !{!1782, !"cmpfunc"}
!1783 = !{!1784}
!1784 = distinct !{!1784, !1782, !"cmpfunc: %b"}
!1785 = !{!1781, !1776, !1771, !1786, !1766, !1763}
!1786 = distinct !{!1786, !1787, !"_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17hd99e58079f1abb4fE: %v.0"}
!1787 = distinct !{!1787, !"_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17hd99e58079f1abb4fE"}
!1788 = !{!1784, !1779, !1774, !1769}
!1789 = !{!1784, !1779, !1774, !1786, !1766, !1763}
!1790 = !{!1781, !1776, !1771, !1769}
!1791 = !{!1786, !1766, !1763}
!1792 = !{!1769}
!1793 = !{!1794, !1796, !1798, !1786, !1766, !1763}
!1794 = distinct !{!1794, !1795, !"cmpfunc: %b"}
!1795 = distinct !{!1795, !"cmpfunc"}
!1796 = distinct !{!1796, !1797, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE: argument 1"}
!1797 = distinct !{!1797, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE"}
!1798 = distinct !{!1798, !1799, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E: %b"}
!1799 = distinct !{!1799, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E"}
!1800 = !{!1801, !1802, !1803, !1769}
!1801 = distinct !{!1801, !1795, !"cmpfunc: %a"}
!1802 = distinct !{!1802, !1797, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE: argument 0"}
!1803 = distinct !{!1803, !1799, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E: %a"}
!1804 = !{!1805, !1807, !1769}
!1805 = distinct !{!1805, !1806, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd32aeb737205f13dE: %self"}
!1806 = distinct !{!1806, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd32aeb737205f13dE"}
!1807 = distinct !{!1807, !1808, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h9d5b582515422ce6E: %_1"}
!1808 = distinct !{!1808, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h9d5b582515422ce6E"}
!1809 = !{!1810}
!1810 = distinct !{!1810, !1772, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E: %a:It1"}
!1811 = !{!1812}
!1812 = distinct !{!1812, !1772, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e65671529c1d546E: %b:It1"}
!1813 = !{!1814}
!1814 = distinct !{!1814, !1777, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE: argument 0:It1"}
!1815 = !{!1816}
!1816 = distinct !{!1816, !1777, !"_ZN4core3ops8function5FnMut8call_mut17h0983f53d2a6fa3bdE: argument 1:It1"}
!1817 = !{!1818}
!1818 = distinct !{!1818, !1782, !"cmpfunc: %a:It1"}
!1819 = !{!1820}
!1820 = distinct !{!1820, !1782, !"cmpfunc: %b:It1"}
!1821 = !{!1818, !1814, !1810, !1786, !1766, !1763}
!1822 = !{!1820, !1816, !1812, !1769}
!1823 = !{!1820, !1816, !1812, !1786, !1766, !1763}
!1824 = !{!1818, !1814, !1810, !1769}
