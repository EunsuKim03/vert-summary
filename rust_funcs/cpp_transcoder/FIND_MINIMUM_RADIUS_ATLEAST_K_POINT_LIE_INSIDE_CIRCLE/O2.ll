; ModuleID = 'FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit.9ce1212e3f915cbe-cgu.0'
source_filename = "FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit.9ce1212e3f915cbe-cgu.0"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@alloc_d1084648e479974e70c9329824bf76f9 = private unnamed_addr constant [9 x i8] c"mid > len", align 1
@alloc_e8e5fd9f509afcb950667480b3e3e42a = private unnamed_addr constant [126 x i8] c"/root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/sort/stable/quicksort.rs\00", align 1
@alloc_58d434a1e795f965ef82c8e9c5db822a = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_e8e5fd9f509afcb950667480b3e3e42a, [16 x i8] c"}\00\00\00\00\00\00\00J\00\00\00\1F\00\00\00" }>, align 8
@alloc_0766b232215672ee1bd2195fdb153938 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_e8e5fd9f509afcb950667480b3e3e42a, [16 x i8] c"}\00\00\00\00\00\00\00D\00\00\00\17\00\00\00" }>, align 8
@alloc_1740f0399c4336f609ea074fb12f1baa = private unnamed_addr constant [161 x i8] c"/root/es/vert/vert/rust_funcs/cpp_transcoder/FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE/FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit.rs\00", align 1
@alloc_e233725058d574d75123974d8763f424 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_1740f0399c4336f609ea074fb12f1baa, [16 x i8] c"\A0\00\00\00\00\00\00\00\1B\00\00\00)\00\00\00" }>, align 8
@alloc_91929aa5fd5ecdf230d71e4a2b4c6739 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_1740f0399c4336f609ea074fb12f1baa, [16 x i8] c"\A0\00\00\00\00\00\00\00\1C\00\00\00\0F\00\00\00" }>, align 8
@alloc_d62f07554f1472b25e34b1cc2dcde560 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_1740f0399c4336f609ea074fb12f1baa, [16 x i8] c"\A0\00\00\00\00\00\00\00\19\00\00\00\12\00\00\00" }>, align 8

; core::slice::sort::shared::pivot::median3_rec
; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h6170ce92e8f2efbeE(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i64 noundef range(i64 0, 288230376151711744) %n) unnamed_addr #0 {
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
  %3 = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h6170ce92e8f2efbeE(ptr noundef %0, ptr noundef %_10, ptr noundef %_13, i64 noundef %n84)
  %_16 = getelementptr inbounds nuw float, ptr %1, i64 %count
  %_18 = getelementptr inbounds nuw float, ptr %1, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %4 = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h6170ce92e8f2efbeE(ptr noundef %1, ptr noundef %_16, ptr noundef %_18, i64 noundef %n84)
  %_20 = getelementptr inbounds nuw float, ptr %2, i64 %count
  %_22 = getelementptr inbounds nuw float, ptr %2, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %5 = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h6170ce92e8f2efbeE(ptr noundef %2, ptr noundef %_20, ptr noundef %_22, i64 noundef %n84)
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
  br i1 %brmerge.not.i, label %bb6.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit", !prof !21

bb6.i.i:                                          ; preds = %bb6
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_e233725058d574d75123974d8763f424) #21, !noalias !22
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit": ; preds = %bb6
  %_8.i.mux.i = fcmp olt float %_6.i.i, %_7.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26)
  %_7.i.i6 = load float, ptr %c.sroa.0.0, align 4, !alias.scope !29, !noalias !30, !noundef !18
  %brmerge.not.i7 = fcmp uno float %_6.i.i, %_7.i.i6
  br i1 %brmerge.not.i7, label %bb6.i.i9, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit10", !prof !21

bb6.i.i9:                                         ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit"
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_e233725058d574d75123974d8763f424) #21, !noalias !33
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit10": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit"
  %_8.i.mux.i8 = fcmp olt float %_6.i.i, %_7.i.i6
  %6 = xor i1 %_8.i.mux.i, %_8.i.mux.i8
  br i1 %6, label %_ZN4core5slice4sort6shared5pivot7median317h10f5e7d7bf5b7b20E.exit, label %bb3.i

bb3.i:                                            ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit10"
  %brmerge.not.i13 = fcmp uno float %_7.i.i, %_7.i.i6
  br i1 %brmerge.not.i13, label %bb6.i.i15, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit16", !prof !21

bb6.i.i15:                                        ; preds = %bb3.i
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_e233725058d574d75123974d8763f424) #21, !noalias !34
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit16": ; preds = %bb3.i
  %_8.i.mux.i14 = fcmp olt float %_7.i.i, %_7.i.i6
  %_12.i = xor i1 %_8.i.mux.i, %_8.i.mux.i14
  %c.b.i = select i1 %_12.i, ptr %c.sroa.0.0, ptr %b.sroa.0.0
  br label %_ZN4core5slice4sort6shared5pivot7median317h10f5e7d7bf5b7b20E.exit

_ZN4core5slice4sort6shared5pivot7median317h10f5e7d7bf5b7b20E.exit: ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit10", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit16"
  %_0.sroa.0.0.i = phi ptr [ %a.sroa.0.0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit10" ], [ %c.b.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit16" ]
  ret ptr %_0.sroa.0.0.i
}

; core::slice::sort::shared::pivot::median3_rec
; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite) uwtable
define internal fastcc noundef nonnull ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h63df4c18b3244a7aE(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i64 noundef range(i64 0, 288230376151711744) %n) unnamed_addr #1 {
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
  %3 = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h63df4c18b3244a7aE(ptr noundef %0, ptr noundef %_10, ptr noundef %_13, i64 noundef %n84)
  %_16 = getelementptr inbounds nuw i32, ptr %1, i64 %count
  %_18 = getelementptr inbounds nuw i32, ptr %1, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %4 = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h63df4c18b3244a7aE(ptr noundef %1, ptr noundef %_16, ptr noundef %_18, i64 noundef %n84)
  %_20 = getelementptr inbounds nuw i32, ptr %2, i64 %count
  %_22 = getelementptr inbounds nuw i32, ptr %2, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %5 = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h63df4c18b3244a7aE(ptr noundef %2, ptr noundef %_20, ptr noundef %_22, i64 noundef %n84)
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
define internal fastcc void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17hff7d5c64b61890c1E(ptr noundef nonnull readonly captures(none) %v_base, ptr noundef nonnull writeonly captures(none) %dst) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %_7 = getelementptr inbounds nuw i8, ptr %v_base, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82)
  %_6.i.i = load float, ptr %_7, align 4, !alias.scope !84, !noalias !85, !noundef !18
  %_7.i.i = load float, ptr %v_base, align 4, !alias.scope !85, !noalias !84, !noundef !18
  %brmerge.not.i = fcmp uno float %_6.i.i, %_7.i.i
  br i1 %brmerge.not.i, label %bb6.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit", !prof !21

bb6.i.i:                                          ; preds = %start
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_e233725058d574d75123974d8763f424) #21, !noalias !86
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit": ; preds = %start
  %_12 = getelementptr inbounds nuw i8, ptr %v_base, i64 12
  %_14 = getelementptr inbounds nuw i8, ptr %v_base, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !87)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95)
  %_6.i.i7 = load float, ptr %_12, align 4, !alias.scope !97, !noalias !98, !noundef !18
  %_7.i.i8 = load float, ptr %_14, align 4, !alias.scope !98, !noalias !97, !noundef !18
  %brmerge.not.i9 = fcmp uno float %_6.i.i7, %_7.i.i8
  br i1 %brmerge.not.i9, label %bb6.i.i11, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit12", !prof !21

bb6.i.i11:                                        ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit"
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_e233725058d574d75123974d8763f424) #21, !noalias !99
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit12": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit"
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
  br i1 %brmerge.not.i15, label %bb6.i.i17, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit18", !prof !21

bb6.i.i17:                                        ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit12"
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_e233725058d574d75123974d8763f424) #21, !noalias !112
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit18": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit12"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !113)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !118)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !121)
  %_6.i.i19 = load float, ptr %d, align 4, !alias.scope !123, !noalias !124, !noundef !18
  %_7.i.i20 = load float, ptr %b, align 4, !alias.scope !124, !noalias !123, !noundef !18
  %brmerge.not.i21 = fcmp uno float %_6.i.i19, %_7.i.i20
  br i1 %brmerge.not.i21, label %bb6.i.i23, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit24", !prof !21

bb6.i.i23:                                        ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit18"
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_e233725058d574d75123974d8763f424) #21, !noalias !125
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit24": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit18"
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
  br i1 %brmerge.not.i27, label %bb6.i.i29, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit30", !prof !21

bb6.i.i29:                                        ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit24"
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_e233725058d574d75123974d8763f424) #21, !noalias !138
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit30": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit24"
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
define internal fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h191e2cd2a4055331E(ptr noundef nonnull readonly captures(none) %v_base, ptr noundef nonnull writeonly captures(none) initializes((0, 32)) %dst, ptr noundef nonnull captures(address) initializes((0, 32)) %scratch_base) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  br i1 %or.cond.i, label %bb13.i, label %_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h9a78ceb788512c3fE.exit, !prof !440

bb13.i:                                           ; preds = %start
; call core::slice::sort::shared::smallsort::panic_on_ord_violation
  tail call void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #21, !noalias !309
  unreachable

_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h9a78ceb788512c3fE.exit: ; preds = %start
  ret void
}

; core::slice::sort::shared::smallsort::sort8_stable
; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17hb77e0116e665e416E(ptr noundef nonnull readonly captures(none) %v_base, ptr noundef nonnull writeonly captures(none) %dst, ptr noundef nonnull captures(address) %scratch_base) unnamed_addr #0 {
start:
; call core::slice::sort::shared::smallsort::sort4_stable
  tail call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17hff7d5c64b61890c1E(ptr noundef %v_base, ptr noundef %scratch_base)
  %_9 = getelementptr inbounds nuw i8, ptr %v_base, i64 16
  %_10 = getelementptr inbounds nuw i8, ptr %scratch_base, i64 16
; call core::slice::sort::shared::smallsort::sort4_stable
  tail call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17hff7d5c64b61890c1E(ptr noundef %_9, ptr noundef %_10)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !441)
  %0 = getelementptr inbounds nuw i8, ptr %dst, i64 28
  %1 = getelementptr inbounds nuw i8, ptr %scratch_base, i64 28
  %2 = getelementptr i8, ptr %scratch_base, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !444)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !447)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !449), !noalias !452
  tail call void @llvm.experimental.noalias.scope.decl(metadata !455), !noalias !452
  %_6.i.i.i = load float, ptr %_10, align 4, !alias.scope !457, !noalias !458, !noundef !18
  %_7.i.i.i = load float, ptr %scratch_base, align 4, !alias.scope !459, !noalias !460, !noundef !18
  %brmerge.not.i.i = fcmp uno float %_6.i.i.i, %_7.i.i.i
  br i1 %brmerge.not.i.i, label %bb6.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i", !prof !21

bb6.i.i.i:                                        ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit24.i.2", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit24.i.1", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit24.i", %start
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_e233725058d574d75123974d8763f424) #21, !noalias !461
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i": ; preds = %start
  %_8.i.mux.i.i = fcmp olt float %_6.i.i.i, %_7.i.i.i
  %..i17.i = select i1 %_8.i.mux.i.i, ptr %_10, ptr %scratch_base
  %3 = load i32, ptr %..i17.i, align 4, !alias.scope !441, !noalias !462
  store i32 %3, ptr %dst, align 4, !noalias !464
  tail call void @llvm.experimental.noalias.scope.decl(metadata !465)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !468)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !470), !noalias !473
  tail call void @llvm.experimental.noalias.scope.decl(metadata !476), !noalias !473
  %_6.i.i19.i = load float, ptr %1, align 4, !alias.scope !478, !noalias !479, !noundef !18
  %_7.i.i20.i = load float, ptr %2, align 4, !alias.scope !480, !noalias !481, !noundef !18
  %brmerge.not.i21.i = fcmp uno float %_6.i.i19.i, %_7.i.i20.i
  br i1 %brmerge.not.i21.i, label %bb6.i.i23.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit24.i", !prof !21

bb6.i.i23.i:                                      ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i.3", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i.2", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i.1", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i"
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_e233725058d574d75123974d8763f424) #21, !noalias !482
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit24.i": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i"
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
  %_6.i.i.i.1 = load float, ptr %_12.i.i, align 4, !alias.scope !494, !noalias !495, !noundef !18
  %_7.i.i.i.1 = load float, ptr %_14.i.i, align 4, !alias.scope !496, !noalias !497, !noundef !18
  %brmerge.not.i.i.1 = fcmp uno float %_6.i.i.i.1, %_7.i.i.i.1
  br i1 %brmerge.not.i.i.1, label %bb6.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i.1", !prof !21

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i.1": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit24.i"
  %_16.i.i = getelementptr inbounds nuw i8, ptr %dst, i64 4
  %_8.i.mux.i.i.1 = fcmp olt float %_6.i.i.i.1, %_7.i.i.i.1
  %..i17.i.1 = select i1 %_8.i.mux.i.i.1, ptr %_12.i.i, ptr %_14.i.i
  %8 = load i32, ptr %..i17.i.1, align 4, !alias.scope !441, !noalias !462
  store i32 %8, ptr %_16.i.i, align 4, !noalias !464
  tail call void @llvm.experimental.noalias.scope.decl(metadata !498)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !500)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !502), !noalias !473
  tail call void @llvm.experimental.noalias.scope.decl(metadata !504), !noalias !473
  %_6.i.i19.i.1 = load float, ptr %5, align 4, !alias.scope !506, !noalias !507, !noundef !18
  %_7.i.i20.i.1 = load float, ptr %6, align 4, !alias.scope !508, !noalias !509, !noundef !18
  %brmerge.not.i21.i.1 = fcmp uno float %_6.i.i19.i.1, %_7.i.i20.i.1
  br i1 %brmerge.not.i21.i.1, label %bb6.i.i23.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit24.i.1", !prof !21

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit24.i.1": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i.1"
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
  %_6.i.i.i.2 = load float, ptr %_12.i.i.1, align 4, !alias.scope !518, !noalias !519, !noundef !18
  %_7.i.i.i.2 = load float, ptr %_14.i.i.1, align 4, !alias.scope !520, !noalias !521, !noundef !18
  %brmerge.not.i.i.2 = fcmp uno float %_6.i.i.i.2, %_7.i.i.i.2
  br i1 %brmerge.not.i.i.2, label %bb6.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i.2", !prof !21

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i.2": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit24.i.1"
  %_16.i.i.1 = getelementptr inbounds nuw i8, ptr %dst, i64 8
  %_8.i.mux.i.i.2 = fcmp olt float %_6.i.i.i.2, %_7.i.i.i.2
  %..i17.i.2 = select i1 %_8.i.mux.i.i.2, ptr %_12.i.i.1, ptr %_14.i.i.1
  %13 = load i32, ptr %..i17.i.2, align 4, !alias.scope !441, !noalias !462
  store i32 %13, ptr %_16.i.i.1, align 4, !noalias !464
  tail call void @llvm.experimental.noalias.scope.decl(metadata !522)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !524)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !526), !noalias !473
  tail call void @llvm.experimental.noalias.scope.decl(metadata !528), !noalias !473
  %_6.i.i19.i.2 = load float, ptr %10, align 4, !alias.scope !530, !noalias !531, !noundef !18
  %_7.i.i20.i.2 = load float, ptr %11, align 4, !alias.scope !532, !noalias !533, !noundef !18
  %brmerge.not.i21.i.2 = fcmp uno float %_6.i.i19.i.2, %_7.i.i20.i.2
  br i1 %brmerge.not.i21.i.2, label %bb6.i.i23.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit24.i.2", !prof !21

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit24.i.2": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i.2"
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
  %_6.i.i.i.3 = load float, ptr %_12.i.i.2, align 4, !alias.scope !542, !noalias !543, !noundef !18
  %_7.i.i.i.3 = load float, ptr %_14.i.i.2, align 4, !alias.scope !544, !noalias !545, !noundef !18
  %brmerge.not.i.i.3 = fcmp uno float %_6.i.i.i.3, %_7.i.i.i.3
  br i1 %brmerge.not.i.i.3, label %bb6.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i.3", !prof !21

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i.3": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit24.i.2"
  %_16.i.i.2 = getelementptr inbounds nuw i8, ptr %dst, i64 12
  %_8.i.mux.i.i.3 = fcmp olt float %_6.i.i.i.3, %_7.i.i.i.3
  %..i17.i.3 = select i1 %_8.i.mux.i.i.3, ptr %_12.i.i.2, ptr %_14.i.i.2
  %18 = load i32, ptr %..i17.i.3, align 4, !alias.scope !441, !noalias !462
  store i32 %18, ptr %_16.i.i.2, align 4, !noalias !464
  tail call void @llvm.experimental.noalias.scope.decl(metadata !546)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !548)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !550), !noalias !473
  tail call void @llvm.experimental.noalias.scope.decl(metadata !552), !noalias !473
  %_6.i.i19.i.3 = load float, ptr %15, align 4, !alias.scope !554, !noalias !555, !noundef !18
  %_7.i.i20.i.3 = load float, ptr %16, align 4, !alias.scope !556, !noalias !557, !noundef !18
  %brmerge.not.i21.i.3 = fcmp uno float %_6.i.i19.i.3, %_7.i.i20.i.3
  br i1 %brmerge.not.i21.i.3, label %bb6.i.i23.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit24.i.3", !prof !21

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit24.i.3": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i.3"
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
  br i1 %or.cond.i, label %bb13.i, label %_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hda7045743ed9389cE.exit, !prof !440

bb13.i:                                           ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit24.i.3"
; call core::slice::sort::shared::smallsort::panic_on_ord_violation
  tail call void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #21, !noalias !441
  unreachable

_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hda7045743ed9389cE.exit: ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit24.i.3"
  ret void
}

; core::slice::sort::shared::smallsort::insertion_sort_shift_left
; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h500061426fbe7d96E(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 2, 21) %v.1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb5.preheader:
  %v_end.idx = shl nuw nsw i64 %v.1, 2
  %v_end = getelementptr inbounds nuw i8, ptr %v.0, i64 %v_end.idx
  %tail.sroa.0.03 = getelementptr inbounds nuw i8, ptr %v.0, i64 4
  br label %bb5

bb7:                                              ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h4f7839f268585107E.exit
  ret void

bb5:                                              ; preds = %bb5.preheader, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h4f7839f268585107E.exit
  %tail.sroa.0.06 = phi ptr [ %tail.sroa.0.0, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h4f7839f268585107E.exit ], [ %tail.sroa.0.03, %bb5.preheader ]
  %v.0.pn5 = phi ptr [ %tail.sroa.0.06, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h4f7839f268585107E.exit ], [ %v.0, %bb5.preheader ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !558)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !561)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !563)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !566)
  %_6.i.i.i = load float, ptr %tail.sroa.0.06, align 4, !alias.scope !568, !noalias !569, !noundef !18
  %_7.i.i.i = load float, ptr %v.0.pn5, align 4, !alias.scope !569, !noalias !568, !noundef !18
  %brmerge.not.i.i = fcmp uno float %_6.i.i.i, %_7.i.i.i
  br i1 %brmerge.not.i.i, label %bb6.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i", !prof !21

bb6.i.i.i:                                        ; preds = %bb5
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_e233725058d574d75123974d8763f424) #21, !noalias !570
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i": ; preds = %bb5
  %_8.i.mux.i.i = fcmp olt float %_6.i.i.i, %_7.i.i.i
  br i1 %_8.i.mux.i.i, label %bb4.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h4f7839f268585107E.exit

bb4.i:                                            ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i", %bb7.i
  %.in.i = phi float [ %_7.i.i2.i, %bb7.i ], [ %_7.i.i.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i" ]
  %gap_guard.sroa.5.0.i = phi ptr [ %sift.sroa.0.0.i, %bb7.i ], [ %tail.sroa.0.06, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i" ]
  %sift.sroa.0.0.i = phi ptr [ %0, %bb7.i ], [ %v.0.pn5, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i" ]
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
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_e233725058d574d75123974d8763f424) #21
          to label %.noexc.i unwind label %bb14.i

.noexc.i:                                         ; preds = %bb6.i.i5.i
  unreachable

bb7.i:                                            ; preds = %bb6.i
  %_8.i.mux.i4.i = fcmp olt float %_6.i.i.i, %_7.i.i2.i
  br i1 %_8.i.mux.i4.i, label %bb4.i, label %bb10.i

bb10.i:                                           ; preds = %bb7.i, %bb4.i
  %sift.sroa.0.0.i.lcssa = phi ptr [ %sift.sroa.0.0.i, %bb7.i ], [ %v.0, %bb4.i ]
  store float %_6.i.i.i, ptr %sift.sroa.0.0.i.lcssa, align 4, !noalias !579
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h4f7839f268585107E.exit

bb14.i:                                           ; preds = %bb6.i.i5.i
  %1 = landingpad { ptr, i32 }
          cleanup
  store float %_6.i.i.i, ptr %sift.sroa.0.0.i, align 4, !noalias !584
  resume { ptr, i32 } %1

_ZN4core5slice4sort6shared9smallsort11insert_tail17h4f7839f268585107E.exit: ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i", %bb10.i
  %tail.sroa.0.0 = getelementptr inbounds nuw i8, ptr %tail.sroa.0.06, i64 4
  %_11.not = icmp eq ptr %tail.sroa.0.0, %v_end
  br i1 %_11.not, label %bb7, label %bb5
}

; core::slice::sort::stable::driftsort_main
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable14driftsort_main17h29c9ac81b22d647fE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #2 personality ptr @rust_eh_personality {
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
  br i1 %or.cond.i.i.i.i, label %bb3.i.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i.i", !prof !589

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i.i": ; preds = %bb4
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !590
; call __rustc::__rust_alloc
  %0 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #22, !noalias !590
  %1 = icmp eq ptr %0, null
  br i1 %1, label %bb3.i.i, label %bb8

bb3.i.i:                                          ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i.i", %bb4
  %_4.sroa.4.0.ph.i.i = phi i64 [ 4, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i.i" ], [ 0, %bb4 ]
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_4.sroa.4.0.ph.i.i, i64 %_21.0.i.i.i.i) #23
  unreachable

cleanup:                                          ; preds = %bb8
  %2 = landingpad { ptr, i32 }
          cleanup
  br i1 %_15, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h2a5deca2238eb3b2E.exit12", label %bb11

bb8:                                              ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i.i", %start
  %heap_buf.sroa.6.1 = phi ptr [ undef, %start ], [ %0, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i.i" ]
  %stack_scratch.sroa.4.0 = phi i64 [ 1024, %start ], [ %_0.sroa.0.0.i7, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i.i" ]
  %stack_buf.pn = phi ptr [ %stack_buf, %start ], [ %0, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i.i" ]
  %eager_sort = icmp samesign ult i64 %v.1, 65
; invoke core::slice::sort::stable::drift::sort
  invoke fastcc void @_ZN4core5slice4sort6stable5drift4sort17hbd75ce168a8b00beE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 4 %stack_buf.pn, i64 noundef %stack_scratch.sroa.4.0, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less)
          to label %bb9 unwind label %cleanup

bb9:                                              ; preds = %bb8
  br i1 %_15, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h2a5deca2238eb3b2E.exit", label %bb10

bb10:                                             ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h2a5deca2238eb3b2E.exit", %bb9
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %stack_buf)
  ret void

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h2a5deca2238eb3b2E.exit": ; preds = %bb9
  %3 = shl nuw i64 %_0.sroa.0.0.i7, 2
  %4 = icmp ne ptr %heap_buf.sroa.6.1, null
  call void @llvm.assume(i1 %4)
; call __rustc::__rust_dealloc
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %heap_buf.sroa.6.1, i64 noundef %3, i64 noundef range(i64 1, -9223372036854775807) 4) #22, !noalias !595
  br label %bb10

bb11:                                             ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h2a5deca2238eb3b2E.exit12", %cleanup
  resume { ptr, i32 } %2

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h2a5deca2238eb3b2E.exit12": ; preds = %cleanup
  %5 = shl nuw i64 %_0.sroa.0.0.i7, 2
  %6 = icmp ne ptr %heap_buf.sroa.6.1, null
  call void @llvm.assume(i1 %6)
; call __rustc::__rust_dealloc
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %heap_buf.sroa.6.1, i64 noundef %5, i64 noundef range(i64 1, -9223372036854775807) 4) #22, !noalias !604
  br label %bb11
}

; core::slice::sort::stable::driftsort_main
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable14driftsort_main17he5fef1bddceca5efE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #2 personality ptr @rust_eh_personality {
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
  br i1 %or.cond.i.i.i.i, label %bb3.i.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i.i", !prof !589

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i.i": ; preds = %bb4
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !613
; call __rustc::__rust_alloc
  %0 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #22, !noalias !613
  %1 = icmp eq ptr %0, null
  br i1 %1, label %bb3.i.i, label %bb8

bb3.i.i:                                          ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i.i", %bb4
  %_4.sroa.4.0.ph.i.i = phi i64 [ 4, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i.i" ], [ 0, %bb4 ]
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_4.sroa.4.0.ph.i.i, i64 %_21.0.i.i.i.i) #23
  unreachable

cleanup:                                          ; preds = %bb8
  %2 = landingpad { ptr, i32 }
          cleanup
  br i1 %_15, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17h6e63235cc0d24036E.exit12", label %bb11

bb8:                                              ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i.i", %start
  %heap_buf.sroa.6.1 = phi ptr [ undef, %start ], [ %0, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i.i" ]
  %stack_scratch.sroa.4.0 = phi i64 [ 1024, %start ], [ %_0.sroa.0.0.i7, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i.i" ]
  %stack_buf.pn = phi ptr [ %stack_buf, %start ], [ %0, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i.i" ]
  %eager_sort = icmp samesign ult i64 %v.1, 65
; invoke core::slice::sort::stable::drift::sort
  invoke fastcc void @_ZN4core5slice4sort6stable5drift4sort17h061b1c9959168dd3E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 4 %stack_buf.pn, i64 noundef %stack_scratch.sroa.4.0, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less)
          to label %bb9 unwind label %cleanup

bb9:                                              ; preds = %bb8
  br i1 %_15, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17h6e63235cc0d24036E.exit", label %bb10

bb10:                                             ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17h6e63235cc0d24036E.exit", %bb9
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %stack_buf)
  ret void

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17h6e63235cc0d24036E.exit": ; preds = %bb9
  %3 = shl nuw i64 %_0.sroa.0.0.i7, 2
  %4 = icmp ne ptr %heap_buf.sroa.6.1, null
  call void @llvm.assume(i1 %4)
; call __rustc::__rust_dealloc
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %heap_buf.sroa.6.1, i64 noundef %3, i64 noundef range(i64 1, -9223372036854775807) 4) #22, !noalias !618
  br label %bb10

bb11:                                             ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17h6e63235cc0d24036E.exit12", %cleanup
  resume { ptr, i32 } %2

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17h6e63235cc0d24036E.exit12": ; preds = %cleanup
  %5 = shl nuw i64 %_0.sroa.0.0.i7, 2
  %6 = icmp ne ptr %heap_buf.sroa.6.1, null
  call void @llvm.assume(i1 %6)
; call __rustc::__rust_dealloc
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %heap_buf.sroa.6.1, i64 noundef %5, i64 noundef range(i64 1, -9223372036854775807) 4) #22, !noalias !627
  br label %bb11
}

; core::slice::sort::stable::drift::sort
; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17h061b1c9959168dd3E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i1 noundef zeroext %eager_sort, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) unnamed_addr #0 personality ptr @rust_eh_personality {
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

bb10:                                             ; preds = %bb6, %_ZN4core5slice4sort6stable5drift10create_run17h6e2a93f230ac16e0E.exit
  %desired_depth.sroa.0.0 = phi i8 [ %21, %_ZN4core5slice4sort6stable5drift10create_run17h6e2a93f230ac16e0E.exit ], [ 0, %bb6 ]
  %next_run.sroa.0.0 = phi i64 [ %_0.sroa.0.0.i40, %_ZN4core5slice4sort6stable5drift10create_run17h6e2a93f230ac16e0E.exit ], [ 1, %bb6 ]
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

bb7.i41:                                          ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h1859e993548aa19aE.exit.i.thread124, %_ZN4core5slice4sort6shared17find_existing_run17h1859e993548aa19aE.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17h1859e993548aa19aE.exit.i, %bb30
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
  br i1 %brmerge.not.i68, label %bb6.i.i70, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit71", !prof !21

bb6.i.i70:                                        ; preds = %bb2.i.i
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_e233725058d574d75123974d8763f424) #21, !noalias !653
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit71": ; preds = %bb2.i.i
  %_8.i.mux.i69 = fcmp olt float %_6.i.i66, %_7.i.i67
  %_10.i.i97.not = icmp eq i64 %new_len, 2
  br i1 %_8.i.mux.i69, label %bb4.i.i.preheader, label %bb11.i.i.preheader

bb11.i.i.preheader:                               ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit71"
  br i1 %_10.i.i97.not, label %_ZN4core5slice4sort6shared17find_existing_run17h1859e993548aa19aE.exit.i.thread, label %bb12.i.i

bb4.i.i.preheader:                                ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit71"
  br i1 %_10.i.i97.not, label %_ZN4core5slice4sort6shared17find_existing_run17h1859e993548aa19aE.exit.i.thread124, label %bb5.i.i

bb12.i.i:                                         ; preds = %bb11.i.i.preheader, %bb15.i.i
  %_7.i.i61 = phi float [ %_6.i.i60, %bb15.i.i ], [ %_6.i.i66, %bb11.i.i.preheader ]
  %run_len.sroa.0.0.i.i95 = phi i64 [ %3, %bb15.i.i ], [ 2, %bb11.i.i.preheader ]
  %2 = getelementptr inbounds nuw float, ptr %_82, i64 %run_len.sroa.0.0.i.i95
  tail call void @llvm.experimental.noalias.scope.decl(metadata !654)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !657), !noalias !644
  %_6.i.i60 = load float, ptr %2, align 4, !alias.scope !660, !noalias !661, !noundef !18
  %brmerge.not.i62 = fcmp uno float %_6.i.i60, %_7.i.i61
  br i1 %brmerge.not.i62, label %bb6.i.i64, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit65", !prof !21

bb6.i.i64:                                        ; preds = %bb12.i.i
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_e233725058d574d75123974d8763f424) #21, !noalias !664
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit65": ; preds = %bb12.i.i
  %_8.i.mux.i63 = fcmp olt float %_6.i.i60, %_7.i.i61
  br i1 %_8.i.mux.i63, label %_ZN4core5slice4sort6shared17find_existing_run17h1859e993548aa19aE.exit.i, label %bb15.i.i

bb15.i.i:                                         ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit65"
  %3 = add nuw i64 %run_len.sroa.0.0.i.i95, 1
  %exitcond.not = icmp eq i64 %3, %new_len
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h1859e993548aa19aE.exit.i, label %bb12.i.i

bb5.i.i:                                          ; preds = %bb4.i.i.preheader, %bb7.i.i
  %_7.i.i58 = phi float [ %_6.i.i, %bb7.i.i ], [ %_6.i.i66, %bb4.i.i.preheader ]
  %run_len.sroa.0.1.i.i98 = phi i64 [ %5, %bb7.i.i ], [ 2, %bb4.i.i.preheader ]
  %4 = getelementptr inbounds nuw float, ptr %_82, i64 %run_len.sroa.0.1.i.i98
  tail call void @llvm.experimental.noalias.scope.decl(metadata !665)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !668), !noalias !644
  %_6.i.i = load float, ptr %4, align 4, !alias.scope !671, !noalias !672, !noundef !18
  %brmerge.not.i = fcmp uno float %_6.i.i, %_7.i.i58
  br i1 %brmerge.not.i, label %bb6.i.i59, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit", !prof !21

bb6.i.i59:                                        ; preds = %bb5.i.i
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_e233725058d574d75123974d8763f424) #21, !noalias !675
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit": ; preds = %bb5.i.i
  %_8.i.mux.i = fcmp olt float %_6.i.i, %_7.i.i58
  br i1 %_8.i.mux.i, label %bb7.i.i, label %_ZN4core5slice4sort6shared17find_existing_run17h1859e993548aa19aE.exit.i

bb7.i.i:                                          ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit"
  %5 = add nuw i64 %run_len.sroa.0.1.i.i98, 1
  %exitcond116.not = icmp eq i64 %5, %new_len
  br i1 %exitcond116.not, label %_ZN4core5slice4sort6shared17find_existing_run17h1859e993548aa19aE.exit.i, label %bb5.i.i

_ZN4core5slice4sort6shared17find_existing_run17h1859e993548aa19aE.exit.i: ; preds = %bb15.i.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit65", %bb7.i.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit"
  %_0.sroa.0.0.i.i = phi i64 [ %new_len, %bb7.i.i ], [ %run_len.sroa.0.1.i.i98, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit" ], [ %new_len, %bb15.i.i ], [ %run_len.sroa.0.0.i.i95, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit65" ]
  %_12.i = icmp samesign ule i64 %_0.sroa.0.0.i.i, %new_len
  tail call void @llvm.assume(i1 %_12.i)
  %_13.not.i = icmp ult i64 %_0.sroa.0.0.i.i, %min_good_run_len.sroa.0.0
  br i1 %_13.not.i, label %bb7.i41, label %bb3.i37

_ZN4core5slice4sort6shared17find_existing_run17h1859e993548aa19aE.exit.i.thread124: ; preds = %bb4.i.i.preheader
  br i1 %_13.not.i127, label %bb7.i41, label %bb5.preheader.i.i

_ZN4core5slice4sort6shared17find_existing_run17h1859e993548aa19aE.exit.i.thread: ; preds = %bb11.i.i.preheader
  br i1 %_13.not.i121, label %bb7.i41, label %bb5.i38

bb3.i37:                                          ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h1859e993548aa19aE.exit.i
  br i1 %_8.i.mux.i69, label %bb14.i, label %bb5.i38

bb11.i42:                                         ; preds = %bb7.i41
  %_0.sroa.0.0.i57 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %new_len, i64 %min_good_run_len.sroa.0.0)
  %_36.i = shl nuw nsw i64 %_0.sroa.0.0.i57, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h6e2a93f230ac16e0E.exit

bb16.i43:                                         ; preds = %bb7.i41
  %_0.sroa.0.0.i56 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %new_len, i64 32)
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h6c1ff9bca1b551deE(ptr noalias noundef nonnull align 4 %_82, i64 noundef %_0.sroa.0.0.i56, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef 0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #24
  %_35.i = shl nuw nsw i64 %_0.sroa.0.0.i56, 1
  %_34.i = or disjoint i64 %_35.i, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h6e2a93f230ac16e0E.exit

bb5.i38:                                          ; preds = %bb6.i.i, %middle.block, %_ZN4core5slice4sort6shared17find_existing_run17h1859e993548aa19aE.exit.i.thread, %bb1.i, %bb14.i, %bb3.i37
  %_0.sroa.0.0.i.i7780 = phi i64 [ %_0.sroa.0.0.i.i, %bb3.i37 ], [ 1, %bb14.i ], [ %new_len, %bb1.i ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h1859e993548aa19aE.exit.i.thread ], [ %_0.sroa.0.0.i.i122130134, %middle.block ], [ %_0.sroa.0.0.i.i122130134, %bb6.i.i ]
  %_27.i = shl nuw nsw i64 %_0.sroa.0.0.i.i7780, 1
  %_26.i = or disjoint i64 %_27.i, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h6e2a93f230ac16e0E.exit

bb14.i:                                           ; preds = %bb3.i37
  %half_len2.i = lshr i64 %_0.sroa.0.0.i.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !676), !noalias !679
  tail call void @llvm.experimental.noalias.scope.decl(metadata !681), !noalias !679
  %_915.not.i.i = icmp samesign ult i64 %_0.sroa.0.0.i.i, 2
  br i1 %_915.not.i.i, label %bb5.i38, label %bb5.preheader.i.i

bb5.preheader.i.i:                                ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h1859e993548aa19aE.exit.i.thread124, %bb14.i
  %half_len2.i135 = phi i64 [ %half_len2.i, %bb14.i ], [ 1, %_ZN4core5slice4sort6shared17find_existing_run17h1859e993548aa19aE.exit.i.thread124 ]
  %_0.sroa.0.0.i.i122130134 = phi i64 [ %_0.sroa.0.0.i.i, %bb14.i ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h1859e993548aa19aE.exit.i.thread124 ]
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

_ZN4core5slice4sort6stable5drift10create_run17h6e2a93f230ac16e0E.exit: ; preds = %bb11.i42, %bb16.i43, %bb5.i38
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

bb12:                                             ; preds = %bb12.lr.ph, %_ZN4core5slice4sort6stable5drift13logical_merge17hca8108c7b0623ee4E.exit
  %stack_len.sroa.0.1103 = phi i64 [ %stack_len.sroa.0.0, %bb12.lr.ph ], [ %count, %_ZN4core5slice4sort6stable5drift13logical_merge17hca8108c7b0623ee4E.exit ]
  %prev_run.sroa.0.1102 = phi i64 [ %prev_run.sroa.0.0, %bb12.lr.ph ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17hca8108c7b0623ee4E.exit ]
  %count = add i64 %stack_len.sroa.0.1103, -1
  %_41 = getelementptr inbounds nuw i8, ptr %desired_depth_storage, i64 %count
  %_40 = load i8, ptr %_41, align 1, !noundef !18
  %_39.not = icmp ult i8 %_40, %desired_depth.sroa.0.0
  br i1 %_39.not, label %bb17, label %bb13

bb17:                                             ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17hca8108c7b0623ee4E.exit, %bb12, %bb10
  %prev_run.sroa.0.1.lcssa = phi i64 [ %prev_run.sroa.0.0, %bb10 ], [ %prev_run.sroa.0.1102, %bb12 ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17hca8108c7b0623ee4E.exit ]
  %stack_len.sroa.0.1.lcssa = phi i64 [ %stack_len.sroa.0.0, %bb10 ], [ %stack_len.sroa.0.1103, %bb12 ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17hca8108c7b0623ee4E.exit ]
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
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17hca8108c7b0623ee4E.exit

bb5.i:                                            ; preds = %bb11.i, %bb3.i
  br i1 %_10.not.i, label %bb16.i, label %bb7.i

bb11.i:                                           ; preds = %bb3.i
  %self.i = or i64 %_50, 1
  %25 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i, i1 true)
  %26 = trunc nuw nsw i64 %25 to i32
  %log.i = shl nuw nsw i32 %26, 1
  %limit.i = xor i32 %log.i, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h6c1ff9bca1b551deE(ptr noalias noundef nonnull align 4 %_98, i64 noundef range(i64 0, 2305843009213693952) %_50, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #24
  br label %bb5.i

bb7.i:                                            ; preds = %bb16.i, %bb5.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !693)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !696)
  %_6.i = icmp ult i64 %left10, 2
  %_7.i = icmp ult i64 %prev_run.sroa.0.1102, 2
  %or.cond.i = select i1 %_6.i, i1 true, i1 %_7.i
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17h4b6f260cee8dbb44E.exit, label %bb2.i

bb2.i:                                            ; preds = %bb7.i
  %_0.sroa.0.0.i.i44 = tail call i64 @llvm.umin.i64(i64 %_51, i64 range(i64 0, -9223372036854775808) %_50)
  %_8.i = icmp samesign ult i64 %scratch.1, %_0.sroa.0.0.i.i44
  br i1 %_8.i, label %_ZN4core5slice4sort6stable5merge5merge17h4b6f260cee8dbb44E.exit, label %bb5.i45

bb5.i45:                                          ; preds = %bb2.i
  %v_mid.i = getelementptr inbounds nuw float, ptr %_98, i64 %_50
  %left_is_shorter.not.i = icmp samesign ugt i64 %_50, %_51
  %spec.select.i = select i1 %left_is_shorter.not.i, ptr %v_mid.i, ptr %_98
  %27 = shl nuw nsw i64 %_0.sroa.0.0.i.i44, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %scratch.0, ptr nonnull align 4 %spec.select.i, i64 %27, i1 false), !alias.scope !698
  %_22.i46 = getelementptr inbounds nuw i8, ptr %scratch.0, i64 %27
  br i1 %left_is_shorter.not.i, label %bb1.i.i, label %bb3.i.i

bb1.i.i:                                          ; preds = %bb5.i45, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i.i"
  %merge_state.sroa.13.2.i = phi ptr [ %_18.i.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i.i" ], [ %v_mid.i, %bb5.i45 ]
  %merge_state.sroa.7.2.i = phi ptr [ %_21.i.i49, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i.i" ], [ %_22.i46, %bb5.i45 ]
  %out.sroa.0.0.i.i = phi ptr [ %30, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i.i" ], [ %v_end.i, %bb5.i45 ]
  %28 = getelementptr inbounds i8, ptr %merge_state.sroa.13.2.i, i64 -4
  %29 = getelementptr inbounds i8, ptr %merge_state.sroa.7.2.i, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !699)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !702)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !704)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !707)
  %_6.i.i.i.i = load float, ptr %29, align 4, !alias.scope !709, !noalias !710, !noundef !18
  %_7.i.i.i.i = load float, ptr %28, align 4, !alias.scope !713, !noalias !714, !noundef !18
  %brmerge.not.i.i.i = fcmp uno float %_6.i.i.i.i, %_7.i.i.i.i
  br i1 %brmerge.not.i.i.i, label %bb6.i.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i.i", !prof !21

bb6.i.i.i.i:                                      ; preds = %bb1.i.i
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_e233725058d574d75123974d8763f424) #21
          to label %.noexc.i unwind label %bb20.i, !noalias !698

.noexc.i:                                         ; preds = %bb6.i.i.i.i
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i.i": ; preds = %bb1.i.i
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

bb3.i.i:                                          ; preds = %bb5.i45, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i15.i"
  %merge_state.sroa.13.3.i = phi ptr [ %_25.i.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i15.i" ], [ %_98, %bb5.i45 ]
  %merge_state.sroa.0.2.i = phi ptr [ %_20.i18.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i15.i" ], [ %scratch.0, %bb5.i45 ]
  %right.sroa.0.010.i.i = phi ptr [ %_23.i19.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i15.i" ], [ %v_mid.i, %bb5.i45 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !717)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !720)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !722)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !725)
  %_6.i.i.i12.i = load float, ptr %right.sroa.0.010.i.i, align 4, !alias.scope !727, !noalias !728, !noundef !18
  %_7.i.i.i13.i = load float, ptr %merge_state.sroa.0.2.i, align 4, !alias.scope !731, !noalias !732, !noundef !18
  %brmerge.not.i.i14.i = fcmp uno float %_6.i.i.i12.i, %_7.i.i.i13.i
  br i1 %brmerge.not.i.i14.i, label %bb6.i.i.i21.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i15.i", !prof !21

bb6.i.i.i21.i:                                    ; preds = %bb3.i.i
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_e233725058d574d75123974d8763f424) #21
          to label %.noexc22.i unwind label %bb20.i, !noalias !698

.noexc22.i:                                       ; preds = %bb6.i.i.i21.i
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i15.i": ; preds = %bb3.i.i
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

bb16.i48:                                         ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i15.i", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i.i"
  %merge_state.sroa.13.1.i = phi ptr [ %_18.i.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i.i" ], [ %_25.i.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i15.i" ]
  %merge_state.sroa.7.1.i = phi ptr [ %_21.i.i49, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i.i" ], [ %_22.i46, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i15.i" ]
  %merge_state.sroa.0.1.i = phi ptr [ %scratch.0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i.i" ], [ %_20.i18.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i15.i" ]
  %33 = ptrtoint ptr %merge_state.sroa.7.1.i to i64
  %34 = ptrtoint ptr %merge_state.sroa.0.1.i to i64
  %35 = sub nuw i64 %33, %34
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %merge_state.sroa.13.1.i, ptr align 4 %merge_state.sroa.0.1.i, i64 %35, i1 false), !alias.scope !698, !noalias !735
  br label %_ZN4core5slice4sort6stable5merge5merge17h4b6f260cee8dbb44E.exit

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

_ZN4core5slice4sort6stable5merge5merge17h4b6f260cee8dbb44E.exit: ; preds = %bb7.i, %bb2.i, %bb16.i48
  %_39.i = shl nuw nsw i64 %merged_len, 1
  %_38.i = or disjoint i64 %_39.i, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17hca8108c7b0623ee4E.exit

bb16.i:                                           ; preds = %bb5.i
  %_37.i = getelementptr inbounds nuw float, ptr %_98, i64 %_50
  %self.i50 = or i64 %_51, 1
  %40 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i50, i1 true)
  %41 = trunc nuw nsw i64 %40 to i32
  %log.i51 = shl nuw nsw i32 %41, 1
  %limit.i52 = xor i32 %log.i51, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h6c1ff9bca1b551deE(ptr noalias noundef nonnull align 4 %_37.i, i64 noundef range(i64 0, 2305843009213693952) %_51, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i52, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #24
  br label %bb7.i

_ZN4core5slice4sort6stable5drift13logical_merge17hca8108c7b0623ee4E.exit: ; preds = %bb9.i, %_ZN4core5slice4sort6stable5merge5merge17h4b6f260cee8dbb44E.exit
  %_0.sroa.0.0.i = phi i64 [ %_38.i, %_ZN4core5slice4sort6stable5merge5merge17h4b6f260cee8dbb44E.exit ], [ %_40.i, %bb9.i ]
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
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h6c1ff9bca1b551deE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i55, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #24
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
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17hbd75ce168a8b00beE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i1 noundef zeroext %eager_sort, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) unnamed_addr #0 personality ptr @rust_eh_personality {
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

bb10:                                             ; preds = %bb6, %_ZN4core5slice4sort6stable5drift10create_run17hbbfd8747b9c4bcecE.exit
  %desired_depth.sroa.0.0 = phi i8 [ %18, %_ZN4core5slice4sort6stable5drift10create_run17hbbfd8747b9c4bcecE.exit ], [ 0, %bb6 ]
  %next_run.sroa.0.0 = phi i64 [ %_0.sroa.0.0.i40, %_ZN4core5slice4sort6stable5drift10create_run17hbbfd8747b9c4bcecE.exit ], [ 1, %bb6 ]
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

bb7.i41:                                          ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h947aa8c82f09aabbE.exit.i.thread100, %_ZN4core5slice4sort6shared17find_existing_run17h947aa8c82f09aabbE.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17h947aa8c82f09aabbE.exit.i, %bb30
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
  br i1 %_10.i.i78.not, label %_ZN4core5slice4sort6shared17find_existing_run17h947aa8c82f09aabbE.exit.i.thread, label %bb12.i.i

bb4.i.i.preheader:                                ; preds = %bb2.i.i
  br i1 %_10.i.i78.not, label %_ZN4core5slice4sort6shared17find_existing_run17h947aa8c82f09aabbE.exit.i.thread100, label %bb5.i.i

bb12.i.i:                                         ; preds = %bb11.i.i.preheader, %bb15.i.i
  %_4.i.i.i59 = phi i32 [ %_3.i.i.i58, %bb15.i.i ], [ %_3.i.i.i61, %bb11.i.i.preheader ]
  %run_len.sroa.0.0.i.i76 = phi i64 [ %3, %bb15.i.i ], [ 2, %bb11.i.i.preheader ]
  %2 = getelementptr inbounds nuw i32, ptr %_82, i64 %run_len.sroa.0.0.i.i76
  %_3.i.i.i58 = load i32, ptr %2, align 4, !alias.scope !767, !noalias !774, !noundef !18
  %_0.i60 = icmp slt i32 %_3.i.i.i58, %_4.i.i.i59
  br i1 %_0.i60, label %_ZN4core5slice4sort6shared17find_existing_run17h947aa8c82f09aabbE.exit.i, label %bb15.i.i

bb15.i.i:                                         ; preds = %bb12.i.i
  %3 = add nuw i64 %run_len.sroa.0.0.i.i76, 1
  %exitcond.not = icmp eq i64 %3, %new_len
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h947aa8c82f09aabbE.exit.i, label %bb12.i.i

bb5.i.i:                                          ; preds = %bb4.i.i.preheader, %bb7.i.i
  %_4.i.i.i = phi i32 [ %_3.i.i.i, %bb7.i.i ], [ %_3.i.i.i61, %bb4.i.i.preheader ]
  %run_len.sroa.0.1.i.i79 = phi i64 [ %5, %bb7.i.i ], [ 2, %bb4.i.i.preheader ]
  %4 = getelementptr inbounds nuw i32, ptr %_82, i64 %run_len.sroa.0.1.i.i79
  %_3.i.i.i = load i32, ptr %4, align 4, !alias.scope !778, !noalias !785, !noundef !18
  %_0.i = icmp slt i32 %_3.i.i.i, %_4.i.i.i
  br i1 %_0.i, label %bb7.i.i, label %_ZN4core5slice4sort6shared17find_existing_run17h947aa8c82f09aabbE.exit.i

bb7.i.i:                                          ; preds = %bb5.i.i
  %5 = add nuw i64 %run_len.sroa.0.1.i.i79, 1
  %exitcond92.not = icmp eq i64 %5, %new_len
  br i1 %exitcond92.not, label %_ZN4core5slice4sort6shared17find_existing_run17h947aa8c82f09aabbE.exit.i, label %bb5.i.i

_ZN4core5slice4sort6shared17find_existing_run17h947aa8c82f09aabbE.exit.i: ; preds = %bb15.i.i, %bb12.i.i, %bb7.i.i, %bb5.i.i
  %_0.sroa.0.0.i.i = phi i64 [ %new_len, %bb7.i.i ], [ %run_len.sroa.0.1.i.i79, %bb5.i.i ], [ %new_len, %bb15.i.i ], [ %run_len.sroa.0.0.i.i76, %bb12.i.i ]
  %_12.i = icmp samesign ule i64 %_0.sroa.0.0.i.i, %new_len
  tail call void @llvm.assume(i1 %_12.i)
  %_13.not.i = icmp ult i64 %_0.sroa.0.0.i.i, %min_good_run_len.sroa.0.0
  br i1 %_13.not.i, label %bb7.i41, label %bb3.i37

_ZN4core5slice4sort6shared17find_existing_run17h947aa8c82f09aabbE.exit.i.thread100: ; preds = %bb4.i.i.preheader
  br i1 %_13.not.i103, label %bb7.i41, label %bb5.preheader.i.i

_ZN4core5slice4sort6shared17find_existing_run17h947aa8c82f09aabbE.exit.i.thread: ; preds = %bb11.i.i.preheader
  br i1 %_13.not.i97, label %bb7.i41, label %bb5.i38

bb3.i37:                                          ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h947aa8c82f09aabbE.exit.i
  br i1 %_0.i63, label %bb14.i, label %bb5.i38

bb11.i42:                                         ; preds = %bb7.i41
  %_0.sroa.0.0.i57 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %new_len, i64 %min_good_run_len.sroa.0.0)
  %_36.i = shl nuw nsw i64 %_0.sroa.0.0.i57, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17hbbfd8747b9c4bcecE.exit

bb16.i43:                                         ; preds = %bb7.i41
  %_0.sroa.0.0.i56 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %new_len, i64 32)
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hf41fb6ada53877c9E(ptr noalias noundef nonnull align 4 %_82, i64 noundef %_0.sroa.0.0.i56, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef 0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #24
  %_35.i = shl nuw nsw i64 %_0.sroa.0.0.i56, 1
  %_34.i = or disjoint i64 %_35.i, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17hbbfd8747b9c4bcecE.exit

bb5.i38:                                          ; preds = %bb6.i.i, %middle.block, %_ZN4core5slice4sort6shared17find_existing_run17h947aa8c82f09aabbE.exit.i.thread, %bb1.i, %bb14.i, %bb3.i37
  %_0.sroa.0.0.i.i6972 = phi i64 [ %_0.sroa.0.0.i.i, %bb3.i37 ], [ 1, %bb14.i ], [ %new_len, %bb1.i ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h947aa8c82f09aabbE.exit.i.thread ], [ %_0.sroa.0.0.i.i98106110, %middle.block ], [ %_0.sroa.0.0.i.i98106110, %bb6.i.i ]
  %_27.i = shl nuw nsw i64 %_0.sroa.0.0.i.i6972, 1
  %_26.i = or disjoint i64 %_27.i, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17hbbfd8747b9c4bcecE.exit

bb14.i:                                           ; preds = %bb3.i37
  %half_len2.i = lshr i64 %_0.sroa.0.0.i.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !789), !noalias !792
  tail call void @llvm.experimental.noalias.scope.decl(metadata !794), !noalias !792
  %_915.not.i.i = icmp samesign ult i64 %_0.sroa.0.0.i.i, 2
  br i1 %_915.not.i.i, label %bb5.i38, label %bb5.preheader.i.i

bb5.preheader.i.i:                                ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h947aa8c82f09aabbE.exit.i.thread100, %bb14.i
  %half_len2.i111 = phi i64 [ %half_len2.i, %bb14.i ], [ 1, %_ZN4core5slice4sort6shared17find_existing_run17h947aa8c82f09aabbE.exit.i.thread100 ]
  %_0.sroa.0.0.i.i98106110 = phi i64 [ %_0.sroa.0.0.i.i, %bb14.i ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h947aa8c82f09aabbE.exit.i.thread100 ]
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

_ZN4core5slice4sort6stable5drift10create_run17hbbfd8747b9c4bcecE.exit: ; preds = %bb11.i42, %bb16.i43, %bb5.i38
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

bb12:                                             ; preds = %bb12.lr.ph, %_ZN4core5slice4sort6stable5drift13logical_merge17h20c1c10783fa17bdE.exit
  %stack_len.sroa.0.184 = phi i64 [ %stack_len.sroa.0.0, %bb12.lr.ph ], [ %count, %_ZN4core5slice4sort6stable5drift13logical_merge17h20c1c10783fa17bdE.exit ]
  %prev_run.sroa.0.183 = phi i64 [ %prev_run.sroa.0.0, %bb12.lr.ph ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h20c1c10783fa17bdE.exit ]
  %count = add i64 %stack_len.sroa.0.184, -1
  %_41 = getelementptr inbounds nuw i8, ptr %desired_depth_storage, i64 %count
  %_40 = load i8, ptr %_41, align 1, !noundef !18
  %_39.not = icmp ult i8 %_40, %desired_depth.sroa.0.0
  br i1 %_39.not, label %bb17, label %bb13

bb17:                                             ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17h20c1c10783fa17bdE.exit, %bb12, %bb10
  %prev_run.sroa.0.1.lcssa = phi i64 [ %prev_run.sroa.0.0, %bb10 ], [ %prev_run.sroa.0.183, %bb12 ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h20c1c10783fa17bdE.exit ]
  %stack_len.sroa.0.1.lcssa = phi i64 [ %stack_len.sroa.0.0, %bb10 ], [ %stack_len.sroa.0.184, %bb12 ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17h20c1c10783fa17bdE.exit ]
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
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h20c1c10783fa17bdE.exit

bb5.i:                                            ; preds = %bb11.i, %bb3.i
  br i1 %_10.not.i, label %bb16.i, label %bb7.i

bb11.i:                                           ; preds = %bb3.i
  %self.i = or i64 %_50, 1
  %22 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i, i1 true)
  %23 = trunc nuw nsw i64 %22 to i32
  %log.i = shl nuw nsw i32 %23, 1
  %limit.i = xor i32 %log.i, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hf41fb6ada53877c9E(ptr noalias noundef nonnull align 4 %_98, i64 noundef range(i64 0, 2305843009213693952) %_50, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #24
  br label %bb5.i

bb7.i:                                            ; preds = %bb16.i, %bb5.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !804)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !807)
  %_6.i = icmp ult i64 %left10, 2
  %_7.i = icmp ult i64 %prev_run.sroa.0.183, 2
  %or.cond.i = select i1 %_6.i, i1 true, i1 %_7.i
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17ha398925cfe361572E.exit, label %bb2.i

bb2.i:                                            ; preds = %bb7.i
  %_0.sroa.0.0.i.i44 = tail call i64 @llvm.umin.i64(i64 %_51, i64 range(i64 0, -9223372036854775808) %_50)
  %_8.i = icmp samesign ult i64 %scratch.1, %_0.sroa.0.0.i.i44
  br i1 %_8.i, label %_ZN4core5slice4sort6stable5merge5merge17ha398925cfe361572E.exit, label %bb5.i45

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
  br label %_ZN4core5slice4sort6stable5merge5merge17ha398925cfe361572E.exit

_ZN4core5slice4sort6stable5merge5merge17ha398925cfe361572E.exit: ; preds = %bb7.i, %bb2.i, %bb16.i48
  %_39.i = shl nuw nsw i64 %merged_len, 1
  %_38.i = or disjoint i64 %_39.i, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h20c1c10783fa17bdE.exit

bb16.i:                                           ; preds = %bb5.i
  %_37.i = getelementptr inbounds nuw i32, ptr %_98, i64 %_50
  %self.i50 = or i64 %_51, 1
  %33 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i50, i1 true)
  %34 = trunc nuw nsw i64 %33 to i32
  %log.i51 = shl nuw nsw i32 %34, 1
  %limit.i52 = xor i32 %log.i51, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hf41fb6ada53877c9E(ptr noalias noundef nonnull align 4 %_37.i, i64 noundef range(i64 0, 2305843009213693952) %_51, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i52, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #24
  br label %bb7.i

_ZN4core5slice4sort6stable5drift13logical_merge17h20c1c10783fa17bdE.exit: ; preds = %bb9.i, %_ZN4core5slice4sort6stable5merge5merge17ha398925cfe361572E.exit
  %_0.sroa.0.0.i = phi i64 [ %_38.i, %_ZN4core5slice4sort6stable5merge5merge17ha398925cfe361572E.exit ], [ %_40.i, %bb9.i ]
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
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hf41fb6ada53877c9E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i55, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #24
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
define void @_ZN4core5slice4sort6stable9quicksort9quicksort17h6c1ff9bca1b551deE(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %2, ptr noalias noundef readonly align 4 captures(address) dereferenceable_or_null(4) %3, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #2 personality ptr @rust_eh_personality {
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

bb5:                                              ; preds = %bb5.lr.ph, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hd9cc43366b0a69c4E.exit"
  %v.sroa.16.0196 = phi i64 [ %v.sroa.16.0.ph203, %bb5.lr.ph ], [ %state.sroa.27.2.lcssa.i, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hd9cc43366b0a69c4E.exit" ]
  %limit.sroa.0.0195 = phi i32 [ %limit.sroa.0.0.ph202, %bb5.lr.ph ], [ %29, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hd9cc43366b0a69c4E.exit" ]
  %_11 = icmp eq i32 %limit.sroa.0.0195, 0
  br i1 %_11, label %bb6, label %bb7

bb3:                                              ; preds = %bb28, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hd9cc43366b0a69c4E.exit", %start
  %v.sroa.0.0.ph.lcssa193 = phi ptr [ %0, %start ], [ %v.sroa.0.0.ph204, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hd9cc43366b0a69c4E.exit" ], [ %_54, %bb28 ]
  %v.sroa.16.0.lcssa = phi i64 [ %1, %start ], [ %state.sroa.27.2.lcssa.i, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hd9cc43366b0a69c4E.exit" ], [ %_63.i67, %bb28 ]
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
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17hb77e0116e665e416E(ptr noundef nonnull align 4 %v.sroa.0.0.ph.lcssa193, ptr noundef nonnull align 4 %scratch.0, ptr noundef %_16.i)
  %_18.i = getelementptr inbounds nuw float, ptr %v.sroa.0.0.ph.lcssa193, i64 %len_div_211.i
  %_19.i = getelementptr inbounds nuw float, ptr %scratch.0, i64 %len_div_211.i
  %_20.i = getelementptr inbounds nuw i8, ptr %_16.i, i64 32
; call core::slice::sort::shared::smallsort::sort8_stable
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17hb77e0116e665e416E(ptr noundef %_18.i, ptr noundef %_19.i, ptr noundef %_20.i)
  br label %bb15.i

bb10.i:                                           ; preds = %bb9.i
; call core::slice::sort::shared::smallsort::sort4_stable
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17hff7d5c64b61890c1E(ptr noundef nonnull align 4 %v.sroa.0.0.ph.lcssa193, ptr noundef nonnull align 4 %scratch.0)
  %_27.i = getelementptr inbounds nuw float, ptr %v.sroa.0.0.ph.lcssa193, i64 %len_div_211.i
  %_28.i = getelementptr inbounds nuw float, ptr %scratch.0, i64 %len_div_211.i
; call core::slice::sort::shared::smallsort::sort4_stable
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17hff7d5c64b61890c1E(ptr noundef %_27.i, ptr noundef %_28.i)
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
  %_8030.i = icmp samesign ult i64 %presorted_len.sroa.0.0.i, %len_div_211.i
  br i1 %_8030.i, label %bb24.preheader.i, label %bb16.loopexit.i

bb16.loopexit.i:                                  ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h4f7839f268585107E.exit.i, %bb15.i
  %src5.1.i = getelementptr inbounds nuw float, ptr %v.sroa.0.0.ph.lcssa193, i64 %len_div_211.i
  %dst6.1.i = getelementptr float, ptr %scratch.0, i64 %len_div_211.i
  %_8030.1.i = icmp ult i64 %presorted_len.sroa.0.0.i, %8
  br i1 %_8030.1.i, label %bb24.preheader.1.i, label %bb16.loopexit.1.i

bb24.preheader.1.i:                               ; preds = %bb16.loopexit.i
  %iter1.sroa.0.132.1.i = add nuw nsw i64 %presorted_len.sroa.0.0.i, 1
  br label %bb24.1.i

bb24.1.i:                                         ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h4f7839f268585107E.exit.1.i, %bb24.preheader.1.i
  %iter1.sroa.0.134.1.i = phi i64 [ %iter1.sroa.0.1.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h4f7839f268585107E.exit.1.i ], [ %iter1.sroa.0.132.1.i, %bb24.preheader.1.i ]
  %iter1.sroa.0.033.1.i = phi i64 [ %iter1.sroa.0.134.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h4f7839f268585107E.exit.1.i ], [ %presorted_len.sroa.0.0.i, %bb24.preheader.1.i ]
  %_55.1.i = getelementptr inbounds nuw float, ptr %src5.1.i, i64 %iter1.sroa.0.033.1.i
  %dst7.1.i = getelementptr inbounds nuw float, ptr %dst6.1.i, i64 %iter1.sroa.0.033.1.i
  %9 = load i32, ptr %_55.1.i, align 4, !alias.scope !859, !noalias !864
  store i32 %9, ptr %dst7.1.i, align 4, !alias.scope !862, !noalias !866
  %10 = getelementptr inbounds i8, ptr %dst7.1.i, i64 -4
  %_6.i.i.i16.cast.1.i = bitcast i32 %9 to float
  %_7.i.i.i17.1.i = load float, ptr %10, align 4, !alias.scope !867, !noalias !872, !noundef !18
  %brmerge.not.i.i18.1.i = fcmp uno float %_7.i.i.i17.1.i, %_6.i.i.i16.cast.1.i
  br i1 %brmerge.not.i.i18.1.i, label %bb6.i.i.i21.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i19.1.i", !prof !21

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i19.1.i": ; preds = %bb24.1.i
  %_8.i.mux.i.i20.1.i = fcmp ogt float %_7.i.i.i17.1.i, %_6.i.i.i16.cast.1.i
  br i1 %_8.i.mux.i.i20.1.i, label %bb4.i.1.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h4f7839f268585107E.exit.1.i

bb4.i.1.i:                                        ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i19.1.i", %bb7.i.1.i
  %.in.i.1.i = phi float [ %_7.i.i2.i.1.i, %bb7.i.1.i ], [ %_7.i.i.i17.1.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i19.1.i" ]
  %gap_guard.sroa.5.0.i.1.i = phi ptr [ %sift.sroa.0.0.i.1.i, %bb7.i.1.i ], [ %dst7.1.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i19.1.i" ]
  %sift.sroa.0.0.i.1.i = phi ptr [ %11, %bb7.i.1.i ], [ %10, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i19.1.i" ]
  store float %.in.i.1.i, ptr %gap_guard.sroa.5.0.i.1.i, align 4, !alias.scope !862, !noalias !866
  %_18.i.1.i = icmp eq ptr %sift.sroa.0.0.i.1.i, %dst6.1.i
  br i1 %_18.i.1.i, label %bb10.i.1.i, label %bb6.i.1.i

bb6.i.1.i:                                        ; preds = %bb4.i.1.i
  %11 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.1.i, i64 -4
  %_7.i.i2.i.1.i = load float, ptr %11, align 4, !alias.scope !875, !noalias !880, !noundef !18
  %brmerge.not.i3.i.1.i = fcmp uno float %_7.i.i2.i.1.i, %_6.i.i.i16.cast.1.i
  br i1 %brmerge.not.i3.i.1.i, label %bb6.i.i5.i.i, label %bb7.i.1.i, !prof !21

bb7.i.1.i:                                        ; preds = %bb6.i.1.i
  %_8.i.mux.i4.i.1.i = fcmp ogt float %_7.i.i2.i.1.i, %_6.i.i.i16.cast.1.i
  br i1 %_8.i.mux.i4.i.1.i, label %bb4.i.1.i, label %bb10.i.1.i

bb10.i.1.i:                                       ; preds = %bb7.i.1.i, %bb4.i.1.i
  %sift.sroa.0.0.i.lcssa.1.i = phi ptr [ %sift.sroa.0.0.i.1.i, %bb7.i.1.i ], [ %dst6.1.i, %bb4.i.1.i ]
  store i32 %9, ptr %sift.sroa.0.0.i.lcssa.1.i, align 4, !alias.scope !862, !noalias !883
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h4f7839f268585107E.exit.1.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h4f7839f268585107E.exit.1.i: ; preds = %bb10.i.1.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i19.1.i"
  %_80.1.i = icmp ult i64 %iter1.sroa.0.134.1.i, %8
  %_84.1.i = zext i1 %_80.1.i to i64
  %iter1.sroa.0.1.1.i = add nuw i64 %iter1.sroa.0.134.1.i, %_84.1.i
  br i1 %_80.1.i, label %bb24.1.i, label %bb16.loopexit.1.i

bb16.loopexit.1.i:                                ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h4f7839f268585107E.exit.1.i, %bb16.loopexit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !888)
  %count1.i.i = add nsw i64 %v.sroa.16.0.lcssa, -1
  %12 = getelementptr inbounds nuw float, ptr %v.sroa.0.0.ph.lcssa193, i64 %count1.i.i
  %13 = getelementptr inbounds nuw float, ptr %scratch.0, i64 %count1.i.i
  %14 = getelementptr i8, ptr %dst6.1.i, i64 -4
  br label %bb15.i.i

bb24.preheader.i:                                 ; preds = %bb15.i
  %iter1.sroa.0.132.i = add nuw nsw i64 %presorted_len.sroa.0.0.i, 1
  br label %bb24.i

bb16.i.i:                                         ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit24.i.i"
  %15 = getelementptr i8, ptr %20, i64 4
  %16 = getelementptr i8, ptr %19, i64 4
  %_44.i.i = and i64 %v.sroa.16.0.lcssa, 1
  %_22.i.i = icmp eq i64 %_44.i.i, 0
  br i1 %_22.i.i, label %bb9.i.i, label %bb5.i.i

bb15.i.i:                                         ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit24.i.i", %bb16.loopexit.1.i
  %dst.sroa.0.042.i.i = phi ptr [ %_16.i.i.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit24.i.i" ], [ %v.sroa.0.0.ph.lcssa193, %bb16.loopexit.1.i ]
  %iter.sroa.0.041.i.i = phi i64 [ %_39.i.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit24.i.i" ], [ 0, %bb16.loopexit.1.i ]
  %left.sroa.0.040.i.i = phi ptr [ %_14.i.i.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit24.i.i" ], [ %scratch.0, %bb16.loopexit.1.i ]
  %right.sroa.0.039.i.i = phi ptr [ %_12.i.i.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit24.i.i" ], [ %dst6.1.i, %bb16.loopexit.1.i ]
  %left_rev.sroa.0.038.i.i = phi ptr [ %20, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit24.i.i" ], [ %14, %bb16.loopexit.1.i ]
  %right_rev.sroa.0.037.i.i = phi ptr [ %19, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit24.i.i" ], [ %13, %bb16.loopexit.1.i ]
  %dst_rev.sroa.0.036.i.i = phi ptr [ %21, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit24.i.i" ], [ %12, %bb16.loopexit.1.i ]
  %_39.i.i = add nuw nsw i64 %iter.sroa.0.041.i.i, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !891)
  call void @llvm.experimental.noalias.scope.decl(metadata !894)
  call void @llvm.experimental.noalias.scope.decl(metadata !896), !noalias !899
  call void @llvm.experimental.noalias.scope.decl(metadata !902), !noalias !899
  %_6.i.i.i.i = load float, ptr %right.sroa.0.039.i.i, align 4, !alias.scope !904, !noalias !905, !noundef !18
  %_7.i.i.i.i = load float, ptr %left.sroa.0.040.i.i, align 4, !alias.scope !906, !noalias !907, !noundef !18
  %brmerge.not.i.i.i = fcmp uno float %_6.i.i.i.i, %_7.i.i.i.i
  br i1 %brmerge.not.i.i.i, label %bb6.i.i23.i.invoke.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i.i", !prof !21

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i.i": ; preds = %bb15.i.i
  %_8.i.mux.i.i.i = fcmp olt float %_6.i.i.i.i, %_7.i.i.i.i
  %..i17.i.i = select i1 %_8.i.mux.i.i.i, ptr %right.sroa.0.039.i.i, ptr %left.sroa.0.040.i.i
  %17 = load i32, ptr %..i17.i.i, align 4, !alias.scope !908, !noalias !909
  store i32 %17, ptr %dst.sroa.0.042.i.i, align 4, !alias.scope !859, !noalias !911
  call void @llvm.experimental.noalias.scope.decl(metadata !912)
  call void @llvm.experimental.noalias.scope.decl(metadata !915)
  call void @llvm.experimental.noalias.scope.decl(metadata !917), !noalias !920
  call void @llvm.experimental.noalias.scope.decl(metadata !923), !noalias !920
  %_6.i.i19.i.i = load float, ptr %right_rev.sroa.0.037.i.i, align 4, !alias.scope !925, !noalias !926, !noundef !18
  %_7.i.i20.i.i = load float, ptr %left_rev.sroa.0.038.i.i, align 4, !alias.scope !927, !noalias !928, !noundef !18
  %brmerge.not.i21.i.i = fcmp uno float %_6.i.i19.i.i, %_7.i.i20.i.i
  br i1 %brmerge.not.i21.i.i, label %bb6.i.i23.i.invoke.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit24.i.i", !prof !21

bb6.i.i23.i.invoke.i:                             ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i.i", %bb15.i.i
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_e233725058d574d75123974d8763f424) #21
          to label %bb6.i.i23.i.cont.i unwind label %cleanup2.i, !noalias !929

bb6.i.i23.i.cont.i:                               ; preds = %bb6.i.i23.i.invoke.i
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit24.i.i": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i.i"
  %_16.i.i.i = getelementptr inbounds nuw i8, ptr %dst.sroa.0.042.i.i, i64 4
  %is_l.i18.i.i = xor i1 %_8.i.mux.i.i.i, true
  %count2.i.i.i = zext i1 %is_l.i18.i.i to i64
  %_14.i.i.i = getelementptr inbounds nuw float, ptr %left.sroa.0.040.i.i, i64 %count2.i.i.i
  %count.i.i.i = zext i1 %_8.i.mux.i.i.i to i64
  %_12.i.i.i = getelementptr inbounds nuw float, ptr %right.sroa.0.039.i.i, i64 %count.i.i.i
  %_8.i.mux.i22.i.i = fcmp olt float %_6.i.i19.i.i, %_7.i.i20.i.i
  %..i.i.i = select i1 %_8.i.mux.i22.i.i, ptr %left_rev.sroa.0.038.i.i, ptr %right_rev.sroa.0.037.i.i
  %is_l.i.i.i = xor i1 %_8.i.mux.i22.i.i, true
  %18 = load i32, ptr %..i.i.i, align 4, !alias.scope !908, !noalias !930
  store i32 %18, ptr %dst_rev.sroa.0.036.i.i, align 4, !alias.scope !859, !noalias !932
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
  %22 = load i32, ptr %left.sroa.0.0.right.sroa.0.0.i.i, align 4, !alias.scope !908, !noalias !866
  store i32 %22, ptr %_16.i.i.i, align 4, !alias.scope !859, !noalias !933
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
  br i1 %or.cond.i.i, label %bb13.i.i, label %bb22, !prof !440

bb13.i.i:                                         ; preds = %bb9.i.i
; invoke core::slice::sort::shared::smallsort::panic_on_ord_violation
  invoke void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #21
          to label %.noexc14.i unwind label %cleanup2.i, !noalias !929

.noexc14.i:                                       ; preds = %bb13.i.i
  unreachable

cleanup2.i:                                       ; preds = %bb13.i.i, %bb6.i.i23.i.invoke.i
  %23 = landingpad { ptr, i32 }
          cleanup
  %24 = shl nuw nsw i64 %v.sroa.16.0.lcssa, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.sroa.0.0.ph.lcssa193, ptr nonnull align 4 %scratch.0, i64 %24, i1 false), !alias.scope !934, !noalias !935
  br label %bb31.i

bb31.i:                                           ; preds = %bb14.i.i, %cleanup2.i
  %.pn.i = phi { ptr, i32 } [ %23, %cleanup2.i ], [ %28, %bb14.i.i ]
  resume { ptr, i32 } %.pn.i

bb24.i:                                           ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h4f7839f268585107E.exit.i, %bb24.preheader.i
  %iter1.sroa.0.134.i = phi i64 [ %iter1.sroa.0.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h4f7839f268585107E.exit.i ], [ %iter1.sroa.0.132.i, %bb24.preheader.i ]
  %iter1.sroa.0.033.i = phi i64 [ %iter1.sroa.0.134.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h4f7839f268585107E.exit.i ], [ %presorted_len.sroa.0.0.i, %bb24.preheader.i ]
  %_55.i = getelementptr inbounds nuw float, ptr %v.sroa.0.0.ph.lcssa193, i64 %iter1.sroa.0.033.i
  %dst7.i = getelementptr inbounds nuw float, ptr %scratch.0, i64 %iter1.sroa.0.033.i
  %25 = load i32, ptr %_55.i, align 4, !alias.scope !859, !noalias !864
  store i32 %25, ptr %dst7.i, align 4, !alias.scope !862, !noalias !866
  %26 = getelementptr inbounds i8, ptr %dst7.i, i64 -4
  %_6.i.i.i16.cast.i = bitcast i32 %25 to float
  %_7.i.i.i17.i = load float, ptr %26, align 4, !alias.scope !867, !noalias !872, !noundef !18
  %brmerge.not.i.i18.i = fcmp uno float %_7.i.i.i17.i, %_6.i.i.i16.cast.i
  br i1 %brmerge.not.i.i18.i, label %bb6.i.i.i21.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i19.i", !prof !21

bb6.i.i.i21.i:                                    ; preds = %bb24.i, %bb24.1.i
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_e233725058d574d75123974d8763f424) #21, !noalias !929
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i19.i": ; preds = %bb24.i
  %_8.i.mux.i.i20.i = fcmp ogt float %_7.i.i.i17.i, %_6.i.i.i16.cast.i
  br i1 %_8.i.mux.i.i20.i, label %bb4.i.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h4f7839f268585107E.exit.i

bb4.i.i:                                          ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i19.i", %bb7.i.i
  %.in.i.i = phi float [ %_7.i.i2.i.i, %bb7.i.i ], [ %_7.i.i.i17.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i19.i" ]
  %gap_guard.sroa.5.0.i.i = phi ptr [ %sift.sroa.0.0.i.i, %bb7.i.i ], [ %dst7.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i19.i" ]
  %sift.sroa.0.0.i.i = phi ptr [ %27, %bb7.i.i ], [ %26, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i19.i" ]
  store float %.in.i.i, ptr %gap_guard.sroa.5.0.i.i, align 4, !alias.scope !862, !noalias !866
  %_18.i.i = icmp eq ptr %sift.sroa.0.0.i.i, %scratch.0
  br i1 %_18.i.i, label %bb10.i.i, label %bb6.i.i

bb6.i.i:                                          ; preds = %bb4.i.i
  %27 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i, i64 -4
  %_7.i.i2.i.i = load float, ptr %27, align 4, !alias.scope !875, !noalias !880, !noundef !18
  %brmerge.not.i3.i.i = fcmp uno float %_7.i.i2.i.i, %_6.i.i.i16.cast.i
  br i1 %brmerge.not.i3.i.i, label %bb6.i.i5.i.i, label %bb7.i.i, !prof !21

bb6.i.i5.i.i:                                     ; preds = %bb6.i.i, %bb6.i.1.i
  %.lcssa38.i = phi i32 [ %9, %bb6.i.1.i ], [ %25, %bb6.i.i ]
  %sift.sroa.0.0.i.lcssa36.i = phi ptr [ %sift.sroa.0.0.i.1.i, %bb6.i.1.i ], [ %sift.sroa.0.0.i.i, %bb6.i.i ]
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_e233725058d574d75123974d8763f424) #21
          to label %.noexc.i.i unwind label %bb14.i.i, !noalias !929

.noexc.i.i:                                       ; preds = %bb6.i.i5.i.i
  unreachable

bb7.i.i:                                          ; preds = %bb6.i.i
  %_8.i.mux.i4.i.i = fcmp ogt float %_7.i.i2.i.i, %_6.i.i.i16.cast.i
  br i1 %_8.i.mux.i4.i.i, label %bb4.i.i, label %bb10.i.i

bb10.i.i:                                         ; preds = %bb7.i.i, %bb4.i.i
  %sift.sroa.0.0.i.lcssa.i = phi ptr [ %sift.sroa.0.0.i.i, %bb7.i.i ], [ %scratch.0, %bb4.i.i ]
  store i32 %25, ptr %sift.sroa.0.0.i.lcssa.i, align 4, !alias.scope !862, !noalias !883
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h4f7839f268585107E.exit.i

bb14.i.i:                                         ; preds = %bb6.i.i5.i.i
  %28 = landingpad { ptr, i32 }
          cleanup
  store i32 %.lcssa38.i, ptr %sift.sroa.0.0.i.lcssa36.i, align 4, !alias.scope !862, !noalias !940
  br label %bb31.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h4f7839f268585107E.exit.i: ; preds = %bb10.i.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i19.i"
  %_80.i = icmp ult i64 %iter1.sroa.0.134.i, %len_div_211.i
  %_84.i = zext i1 %_80.i to i64
  %iter1.sroa.0.1.i = add nuw i64 %iter1.sroa.0.134.i, %_84.i
  br i1 %_80.i, label %bb24.i, label %bb16.loopexit.i

bb7:                                              ; preds = %bb5
  %29 = add i32 %limit.sroa.0.0195, -1
  call void @llvm.experimental.noalias.scope.decl(metadata !945)
  %len_div_84.i = lshr i64 %v.sroa.16.0196, 3
  %b.idx.i = shl nuw nsw i64 %len_div_84.i, 4
  %b.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph204, i64 %b.idx.i
  %c.idx.i = mul nuw nsw i64 %len_div_84.i, 28
  %c.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph204, i64 %c.idx.i
  %_12.i = icmp samesign ult i64 %v.sroa.16.0196, 64
  br i1 %_12.i, label %bb3.i23, label %bb5.i

bb5.i:                                            ; preds = %bb7
; call core::slice::sort::shared::pivot::median3_rec
  %self.i = call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h6170ce92e8f2efbeE(ptr noundef nonnull readonly align 4 %v.sroa.0.0.ph204, ptr noundef readonly %b.i, ptr noundef readonly %c.i, i64 noundef %len_div_84.i)
  br label %bb10

bb3.i23:                                          ; preds = %bb7
  call void @llvm.experimental.noalias.scope.decl(metadata !948)
  call void @llvm.experimental.noalias.scope.decl(metadata !951)
  call void @llvm.experimental.noalias.scope.decl(metadata !953), !noalias !956
  call void @llvm.experimental.noalias.scope.decl(metadata !959), !noalias !956
  %_6.i.i.i = load float, ptr %v.sroa.0.0.ph204, align 4, !alias.scope !961, !noalias !962, !noundef !18
  %_7.i.i.i = load float, ptr %b.i, align 4, !alias.scope !964, !noalias !965, !noundef !18
  %brmerge.not.i.i = fcmp uno float %_6.i.i.i, %_7.i.i.i
  br i1 %brmerge.not.i.i, label %bb6.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i", !prof !21

bb6.i.i.i:                                        ; preds = %bb3.i23
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_e233725058d574d75123974d8763f424) #21, !noalias !966
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i": ; preds = %bb3.i23
  %_8.i.mux.i.i = fcmp olt float %_6.i.i.i, %_7.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !967)
  call void @llvm.experimental.noalias.scope.decl(metadata !970)
  %_7.i.i6.i = load float, ptr %c.i, align 4, !alias.scope !973, !noalias !974, !noundef !18
  %brmerge.not.i7.i = fcmp uno float %_6.i.i.i, %_7.i.i6.i
  br i1 %brmerge.not.i7.i, label %bb6.i.i9.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit10.i", !prof !21

bb6.i.i9.i:                                       ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i"
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_e233725058d574d75123974d8763f424) #21, !noalias !977
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit10.i": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i"
  %_8.i.mux.i8.i = fcmp olt float %_6.i.i.i, %_7.i.i6.i
  %30 = xor i1 %_8.i.mux.i.i, %_8.i.mux.i8.i
  br i1 %30, label %bb10, label %bb3.i.i

bb3.i.i:                                          ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit10.i"
  %brmerge.not.i13.i = fcmp uno float %_7.i.i.i, %_7.i.i6.i
  br i1 %brmerge.not.i13.i, label %bb6.i.i15.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit16.i", !prof !21

bb6.i.i15.i:                                      ; preds = %bb3.i.i
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_e233725058d574d75123974d8763f424) #21, !noalias !978
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit16.i": ; preds = %bb3.i.i
  %_8.i.mux.i14.i = fcmp olt float %_7.i.i.i, %_7.i.i6.i
  %_12.i.i = xor i1 %_8.i.mux.i.i, %_8.i.mux.i14.i
  %c.b.i.i = select i1 %_12.i.i, ptr %c.i, ptr %b.i
  br label %bb10

bb6:                                              ; preds = %bb5
; call core::slice::sort::stable::drift::sort
  call fastcc void @_ZN4core5slice4sort6stable5drift4sort17h061b1c9959168dd3E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph204, i64 noundef %v.sroa.16.0196, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i1 noundef zeroext true, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  br label %bb22

bb10:                                             ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit16.i", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit10.i", %bb5.i
  %_0.sroa.0.0.i.sink.i = phi ptr [ %self.i, %bb5.i ], [ %v.sroa.0.0.ph204, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit10.i" ], [ %c.b.i.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit16.i" ]
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
  call void @llvm.experimental.noalias.scope.decl(metadata !985)
  call void @llvm.experimental.noalias.scope.decl(metadata !988)
  %_6.i.i = load float, ptr %left_ancestor_pivot.sroa.0.0.ph201, align 4, !alias.scope !991, !noalias !992, !noundef !18
  %brmerge.not.i = fcmp uno float %_6.i.i, %value
  br i1 %brmerge.not.i, label %bb6.i.i24, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit", !prof !21

bb6.i.i24:                                        ; preds = %bb12
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_e233725058d574d75123974d8763f424) #21, !noalias !995
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit": ; preds = %bb12
  %_8.i.mux.i = fcmp olt float %_6.i.i, %value
  br i1 %_8.i.mux.i, label %bb14, label %bb17

bb14:                                             ; preds = %bb10, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit"
  call void @llvm.experimental.noalias.scope.decl(metadata !996)
  call void @llvm.experimental.noalias.scope.decl(metadata !999)
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
  %state.sroa.43.0.i = phi ptr [ %_86.i, %bb33.i ], [ %44, %bb23.i ]
  %pivot_pos.sroa.0.0.i = phi i64 [ %index.sroa.0.0.i, %bb33.i ], [ %v.sroa.16.0196, %bb23.i ]
  %33 = call i64 @llvm.usub.sat.i64(i64 %pivot_pos.sroa.0.0.i, i64 3)
  %unroll_end.i = getelementptr inbounds nuw float, ptr %v.sroa.0.0.ph204, i64 %33
  %_19111.i = icmp ult ptr %state.sroa.9.0.i, %unroll_end.i
  br i1 %_19111.i, label %bb6.i29.preheader, label %bb16.i

bb6.i29.preheader:                                ; preds = %bb3.i27
  %_7.i.i.i31 = load float, ptr %src, align 4, !alias.scope !1001, !noalias !1006, !noundef !18
  br label %bb6.i29

bb6.i29:                                          ; preds = %bb6.i29.preheader, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit56.i"
  %state.sroa.43.1114.i = phi ptr [ %40, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit56.i" ], [ %state.sroa.43.0.i, %bb6.i29.preheader ]
  %state.sroa.9.1113.i = phi ptr [ %_9.i63.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit56.i" ], [ %state.sroa.9.0.i, %bb6.i29.preheader ]
  %state.sroa.27.1112.i = phi i64 [ %41, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit56.i" ], [ %state.sroa.27.0.i, %bb6.i29.preheader ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1009)
  call void @llvm.experimental.noalias.scope.decl(metadata !1010)
  call void @llvm.experimental.noalias.scope.decl(metadata !1011)
  call void @llvm.experimental.noalias.scope.decl(metadata !1012)
  %_6.i.i.i30 = load float, ptr %state.sroa.9.1113.i, align 4, !alias.scope !1013, !noalias !1014, !noundef !18
  %brmerge.not.i.i32 = fcmp uno float %_6.i.i.i30, %_7.i.i.i31
  br i1 %brmerge.not.i.i32, label %bb6.i.i.i36, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i33", !prof !21

bb6.i.i.i36:                                      ; preds = %bb6.i29
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_e233725058d574d75123974d8763f424) #21, !noalias !1015
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i33": ; preds = %bb6.i29
  %_8.i.mux.i.i34 = fcmp olt float %_6.i.i.i30, %_7.i.i.i31
  %34 = getelementptr inbounds i8, ptr %state.sroa.43.1114.i, i64 -4
  %dst_base.sroa.0.0.i.i = select i1 %_8.i.mux.i.i34, ptr %scratch.0, ptr %34
  %dst.i.i = getelementptr inbounds nuw float, ptr %dst_base.sroa.0.0.i.i, i64 %state.sroa.27.1112.i
  store float %_6.i.i.i30, ptr %dst.i.i, align 4, !alias.scope !999, !noalias !1016
  %_9.i.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.1113.i, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !1019)
  call void @llvm.experimental.noalias.scope.decl(metadata !1022)
  %_6.i.i25.i = load float, ptr %_9.i.i, align 4, !alias.scope !1025, !noalias !1026, !noundef !18
  %brmerge.not.i27.i = fcmp uno float %_6.i.i25.i, %_7.i.i.i31
  br i1 %brmerge.not.i27.i, label %bb6.i.i29.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit30.i", !prof !21

bb6.i.i29.i:                                      ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i33"
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_e233725058d574d75123974d8763f424) #21, !noalias !1029
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit30.i": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i33"
  %_8.i.i = zext i1 %_8.i.mux.i.i34 to i64
  %35 = add i64 %state.sroa.27.1112.i, %_8.i.i
  %_8.i.mux.i28.i = fcmp olt float %_6.i.i25.i, %_7.i.i.i31
  %36 = getelementptr inbounds i8, ptr %state.sroa.43.1114.i, i64 -8
  %dst_base.sroa.0.0.i32.i = select i1 %_8.i.mux.i28.i, ptr %scratch.0, ptr %36
  %dst.i34.i = getelementptr inbounds nuw float, ptr %dst_base.sroa.0.0.i32.i, i64 %35
  store float %_6.i.i25.i, ptr %dst.i34.i, align 4, !alias.scope !999, !noalias !1030
  %_9.i37.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.1113.i, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1033)
  call void @llvm.experimental.noalias.scope.decl(metadata !1036)
  %_6.i.i38.i = load float, ptr %_9.i37.i, align 4, !alias.scope !1039, !noalias !1040, !noundef !18
  %brmerge.not.i40.i = fcmp uno float %_6.i.i38.i, %_7.i.i.i31
  br i1 %brmerge.not.i40.i, label %bb6.i.i42.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit43.i", !prof !21

bb6.i.i42.i:                                      ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit30.i"
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_e233725058d574d75123974d8763f424) #21, !noalias !1043
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit43.i": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit30.i"
  %_8.i36.i = zext i1 %_8.i.mux.i28.i to i64
  %37 = add i64 %35, %_8.i36.i
  %_8.i.mux.i41.i = fcmp olt float %_6.i.i38.i, %_7.i.i.i31
  %38 = getelementptr inbounds i8, ptr %state.sroa.43.1114.i, i64 -12
  %dst_base.sroa.0.0.i45.i = select i1 %_8.i.mux.i41.i, ptr %scratch.0, ptr %38
  %dst.i47.i = getelementptr inbounds nuw float, ptr %dst_base.sroa.0.0.i45.i, i64 %37
  store float %_6.i.i38.i, ptr %dst.i47.i, align 4, !alias.scope !999, !noalias !1044
  %_9.i50.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.1113.i, i64 12
  call void @llvm.experimental.noalias.scope.decl(metadata !1047)
  call void @llvm.experimental.noalias.scope.decl(metadata !1050)
  %_6.i.i51.i = load float, ptr %_9.i50.i, align 4, !alias.scope !1053, !noalias !1054, !noundef !18
  %brmerge.not.i53.i = fcmp uno float %_6.i.i51.i, %_7.i.i.i31
  br i1 %brmerge.not.i53.i, label %bb6.i.i55.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit56.i", !prof !21

bb6.i.i55.i:                                      ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit43.i"
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_e233725058d574d75123974d8763f424) #21, !noalias !1057
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit56.i": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit43.i"
  %_8.i49.i = zext i1 %_8.i.mux.i41.i to i64
  %39 = add i64 %37, %_8.i49.i
  %_8.i.mux.i54.i = fcmp olt float %_6.i.i51.i, %_7.i.i.i31
  %40 = getelementptr inbounds i8, ptr %state.sroa.43.1114.i, i64 -16
  %dst_base.sroa.0.0.i58.i = select i1 %_8.i.mux.i54.i, ptr %scratch.0, ptr %40
  %dst.i60.i = getelementptr inbounds nuw float, ptr %dst_base.sroa.0.0.i58.i, i64 %39
  store float %_6.i.i51.i, ptr %dst.i60.i, align 4, !alias.scope !999, !noalias !1058
  %_8.i62.i = zext i1 %_8.i.mux.i54.i to i64
  %41 = add i64 %39, %_8.i62.i
  %_9.i63.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.1113.i, i64 16
  %_19.i35 = icmp ult ptr %_9.i63.i, %unroll_end.i
  br i1 %_19.i35, label %bb6.i29, label %bb16.i

bb16.i:                                           ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit56.i", %bb3.i27
  %state.sroa.27.1.lcssa.i = phi i64 [ %state.sroa.27.0.i, %bb3.i27 ], [ %41, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit56.i" ]
  %state.sroa.9.1.lcssa.i = phi ptr [ %state.sroa.9.0.i, %bb3.i27 ], [ %_9.i63.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit56.i" ]
  %state.sroa.43.1.lcssa.i = phi ptr [ %state.sroa.43.0.i, %bb3.i27 ], [ %40, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit56.i" ]
  %loop_end.i = getelementptr inbounds nuw float, ptr %v.sroa.0.0.ph204, i64 %pivot_pos.sroa.0.0.i
  %_47117.i = icmp ult ptr %state.sroa.9.1.lcssa.i, %loop_end.i
  br i1 %_47117.i, label %bb18.i.preheader, label %bb21.i

bb18.i.preheader:                                 ; preds = %bb16.i
  %_7.i.i65.i = load float, ptr %src, align 4, !alias.scope !1061, !noalias !1066, !noundef !18
  br label %bb18.i

bb21.i:                                           ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit69.i", %bb16.i
  %state.sroa.27.2.lcssa.i = phi i64 [ %state.sroa.27.1.lcssa.i, %bb16.i ], [ %43, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit69.i" ]
  %state.sroa.9.2.lcssa.i = phi ptr [ %state.sroa.9.1.lcssa.i, %bb16.i ], [ %_9.i76.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit69.i" ]
  %state.sroa.43.2.lcssa.i = phi ptr [ %state.sroa.43.1.lcssa.i, %bb16.i ], [ %42, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit69.i" ]
  %_55.i28 = icmp eq i64 %pivot_pos.sroa.0.0.i, %v.sroa.16.0196
  br i1 %_55.i28, label %bb22.i, label %bb23.i

bb18.i:                                           ; preds = %bb18.i.preheader, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit69.i"
  %state.sroa.43.2120.i = phi ptr [ %42, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit69.i" ], [ %state.sroa.43.1.lcssa.i, %bb18.i.preheader ]
  %state.sroa.9.2119.i = phi ptr [ %_9.i76.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit69.i" ], [ %state.sroa.9.1.lcssa.i, %bb18.i.preheader ]
  %state.sroa.27.2118.i = phi i64 [ %43, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit69.i" ], [ %state.sroa.27.1.lcssa.i, %bb18.i.preheader ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1069)
  call void @llvm.experimental.noalias.scope.decl(metadata !1070)
  call void @llvm.experimental.noalias.scope.decl(metadata !1071)
  call void @llvm.experimental.noalias.scope.decl(metadata !1072)
  %_6.i.i64.i = load float, ptr %state.sroa.9.2119.i, align 4, !alias.scope !1073, !noalias !1074, !noundef !18
  %brmerge.not.i66.i = fcmp uno float %_6.i.i64.i, %_7.i.i65.i
  br i1 %brmerge.not.i66.i, label %bb6.i.i68.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit69.i", !prof !21

bb6.i.i68.i:                                      ; preds = %bb18.i
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_e233725058d574d75123974d8763f424) #21, !noalias !1075
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit69.i": ; preds = %bb18.i
  %_8.i.mux.i67.i = fcmp olt float %_6.i.i64.i, %_7.i.i65.i
  %42 = getelementptr inbounds i8, ptr %state.sroa.43.2120.i, i64 -4
  %dst_base.sroa.0.0.i71.i = select i1 %_8.i.mux.i67.i, ptr %scratch.0, ptr %42
  %dst.i73.i = getelementptr inbounds nuw float, ptr %dst_base.sroa.0.0.i71.i, i64 %state.sroa.27.2118.i
  store float %_6.i.i64.i, ptr %dst.i73.i, align 4, !alias.scope !999, !noalias !1076
  %_8.i75.i = zext i1 %_8.i.mux.i67.i to i64
  %43 = add i64 %state.sroa.27.2118.i, %_8.i75.i
  %_9.i76.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.2119.i, i64 4
  %_47.i = icmp ult ptr %_9.i76.i, %loop_end.i
  br i1 %_47.i, label %bb18.i, label %bb21.i

bb23.i:                                           ; preds = %bb21.i
  %44 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa.i, i64 -4
  %dst.i80.i = getelementptr inbounds nuw float, ptr %44, i64 %state.sroa.27.2.lcssa.i
  %45 = load i32, ptr %state.sroa.9.2.lcssa.i, align 4, !alias.scope !996, !noalias !1079
  store i32 %45, ptr %dst.i80.i, align 4, !alias.scope !999, !noalias !1082
  %_9.i82.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.2.lcssa.i, i64 4
  br label %bb3.i27

bb22.i:                                           ; preds = %bb21.i
  %46 = shl i64 %state.sroa.27.2.lcssa.i, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.sroa.0.0.ph204, ptr nonnull align 4 %scratch.0, i64 %46, i1 false), !alias.scope !1083
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
  %wide.load512 = load <4 x i32>, ptr %51, align 4, !alias.scope !999, !noalias !996
  %reverse513 = shufflevector <4 x i32> %wide.load512, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %wide.load514 = load <4 x i32>, ptr %52, align 4, !alias.scope !999, !noalias !996
  %reverse515 = shufflevector <4 x i32> %wide.load514, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %53 = getelementptr i8, ptr %48, i64 16
  store <4 x i32> %reverse513, ptr %48, align 4, !alias.scope !996, !noalias !999
  store <4 x i32> %reverse515, ptr %53, align 4, !alias.scope !996, !noalias !999
  %index.next516 = add nuw i64 %index511, 8
  %54 = icmp eq i64 %index.next516, %n.vec509
  br i1 %54, label %middle.block517, label %vector.body510, !llvm.loop !1084

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
  %59 = load i32, ptr %58, align 4, !alias.scope !999, !noalias !996
  store i32 %59, ptr %56, align 4, !alias.scope !996, !noalias !999
  %exitcond.not.i = icmp eq i64 %55, %_63.i
  br i1 %exitcond.not.i, label %bb16, label %bb42.i, !llvm.loop !1085

bb16:                                             ; preds = %bb42.i, %middle.block517, %bb22.i
  %60 = icmp eq i64 %state.sroa.27.2.lcssa.i, 0
  br i1 %60, label %bb17, label %bb19

bb19:                                             ; preds = %bb16
  %_6.not.i = icmp ugt i64 %state.sroa.27.2.lcssa.i, %v.sroa.16.0196
  br i1 %_6.not.i, label %bb3.i37, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hd9cc43366b0a69c4E.exit", !prof !1086

bb3.i37:                                          ; preds = %bb19
; call core::panicking::panic_fmt
  call void @_ZN4core9panicking9panic_fmt17ha4414e4328fe24a0E(ptr noundef nonnull @alloc_d1084648e479974e70c9329824bf76f9, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_58d434a1e795f965ef82c8e9c5db822a) #21, !noalias !1087
  unreachable

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hd9cc43366b0a69c4E.exit": ; preds = %bb19
  %61 = getelementptr inbounds nuw float, ptr %v.sroa.0.0.ph204, i64 %state.sroa.27.2.lcssa.i
; call core::slice::sort::stable::quicksort::quicksort
  call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h6c1ff9bca1b551deE(ptr noalias noundef nonnull align 4 %61, i64 noundef %_63.i, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef %29, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) %pivot_copy, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_8 = icmp ult i64 %state.sroa.27.2.lcssa.i, 33
  br i1 %_8, label %bb3, label %bb5

bb17:                                             ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit", %bb16
  call void @llvm.experimental.noalias.scope.decl(metadata !1091)
  call void @llvm.experimental.noalias.scope.decl(metadata !1094)
  %_8.i38.not = icmp samesign ult i64 %scratch.1, %v.sroa.16.0196
  br i1 %_8.i38.not, label %bb31.i41, label %bb33.i42, !prof !440

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
  %_6.i.i.i.i86 = load float, ptr %src, align 4, !alias.scope !1096, !noalias !1103, !noundef !18
  br label %bb6.i82

bb6.i82:                                          ; preds = %bb6.i82.preheader, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hfb79a77bb13a9fcfE.exit56.i"
  %state.sroa.43.1114.i83 = phi ptr [ %69, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hfb79a77bb13a9fcfE.exit56.i" ], [ %state.sroa.43.0.i48, %bb6.i82.preheader ]
  %state.sroa.9.1113.i84 = phi ptr [ %_9.i63.i105, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hfb79a77bb13a9fcfE.exit56.i" ], [ %state.sroa.9.0.i47, %bb6.i82.preheader ]
  %state.sroa.27.1112.i85 = phi i64 [ %70, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hfb79a77bb13a9fcfE.exit56.i" ], [ %state.sroa.27.0.i46, %bb6.i82.preheader ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1107)
  call void @llvm.experimental.noalias.scope.decl(metadata !1108)
  call void @llvm.experimental.noalias.scope.decl(metadata !1109)
  call void @llvm.experimental.noalias.scope.decl(metadata !1110)
  call void @llvm.experimental.noalias.scope.decl(metadata !1111)
  call void @llvm.experimental.noalias.scope.decl(metadata !1112)
  %_7.i.i.i.i87 = load float, ptr %state.sroa.9.1113.i84, align 4, !alias.scope !1113, !noalias !1114, !noundef !18
  %brmerge.not.i.i.i88 = fcmp uno float %_6.i.i.i.i86, %_7.i.i.i.i87
  br i1 %brmerge.not.i.i.i88, label %bb6.i.i.i.i, label %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hfb79a77bb13a9fcfE.exit.i", !prof !21

bb6.i.i.i.i:                                      ; preds = %bb6.i82
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_e233725058d574d75123974d8763f424) #21, !noalias !1115
  unreachable

"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hfb79a77bb13a9fcfE.exit.i": ; preds = %bb6.i82
  %_8.i.mux.i.i.i89 = fcmp uge float %_6.i.i.i.i86, %_7.i.i.i.i87
  %63 = getelementptr inbounds i8, ptr %state.sroa.43.1114.i83, i64 -4
  %dst_base.sroa.0.0.i.i90 = select i1 %_8.i.mux.i.i.i89, ptr %scratch.0, ptr %63
  %dst.i.i91 = getelementptr inbounds nuw float, ptr %dst_base.sroa.0.0.i.i90, i64 %state.sroa.27.1112.i85
  store float %_7.i.i.i.i87, ptr %dst.i.i91, align 4, !alias.scope !1094, !noalias !1116
  %_9.i.i92 = getelementptr inbounds nuw i8, ptr %state.sroa.9.1113.i84, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !1119)
  call void @llvm.experimental.noalias.scope.decl(metadata !1122)
  call void @llvm.experimental.noalias.scope.decl(metadata !1125)
  %_7.i.i.i26.i = load float, ptr %_9.i.i92, align 4, !alias.scope !1128, !noalias !1129, !noundef !18
  %brmerge.not.i.i27.i = fcmp uno float %_6.i.i.i.i86, %_7.i.i.i26.i
  br i1 %brmerge.not.i.i27.i, label %bb6.i.i.i29.i, label %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hfb79a77bb13a9fcfE.exit30.i", !prof !21

bb6.i.i.i29.i:                                    ; preds = %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hfb79a77bb13a9fcfE.exit.i"
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_e233725058d574d75123974d8763f424) #21, !noalias !1133
  unreachable

"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hfb79a77bb13a9fcfE.exit30.i": ; preds = %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hfb79a77bb13a9fcfE.exit.i"
  %_8.i.i93 = zext i1 %_8.i.mux.i.i.i89 to i64
  %64 = add i64 %state.sroa.27.1112.i85, %_8.i.i93
  %_8.i.mux.i.i28.i = fcmp uge float %_6.i.i.i.i86, %_7.i.i.i26.i
  %65 = getelementptr inbounds i8, ptr %state.sroa.43.1114.i83, i64 -8
  %dst_base.sroa.0.0.i32.i94 = select i1 %_8.i.mux.i.i28.i, ptr %scratch.0, ptr %65
  %dst.i34.i95 = getelementptr inbounds nuw float, ptr %dst_base.sroa.0.0.i32.i94, i64 %64
  store float %_7.i.i.i26.i, ptr %dst.i34.i95, align 4, !alias.scope !1094, !noalias !1134
  %_9.i37.i96 = getelementptr inbounds nuw i8, ptr %state.sroa.9.1113.i84, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1137)
  call void @llvm.experimental.noalias.scope.decl(metadata !1140)
  call void @llvm.experimental.noalias.scope.decl(metadata !1143)
  %_7.i.i.i39.i = load float, ptr %_9.i37.i96, align 4, !alias.scope !1146, !noalias !1147, !noundef !18
  %brmerge.not.i.i40.i = fcmp uno float %_6.i.i.i.i86, %_7.i.i.i39.i
  br i1 %brmerge.not.i.i40.i, label %bb6.i.i.i42.i, label %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hfb79a77bb13a9fcfE.exit43.i", !prof !21

bb6.i.i.i42.i:                                    ; preds = %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hfb79a77bb13a9fcfE.exit30.i"
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_e233725058d574d75123974d8763f424) #21, !noalias !1151
  unreachable

"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hfb79a77bb13a9fcfE.exit43.i": ; preds = %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hfb79a77bb13a9fcfE.exit30.i"
  %_8.i36.i97 = zext i1 %_8.i.mux.i.i28.i to i64
  %66 = add i64 %64, %_8.i36.i97
  %_8.i.mux.i.i41.i = fcmp uge float %_6.i.i.i.i86, %_7.i.i.i39.i
  %67 = getelementptr inbounds i8, ptr %state.sroa.43.1114.i83, i64 -12
  %dst_base.sroa.0.0.i45.i98 = select i1 %_8.i.mux.i.i41.i, ptr %scratch.0, ptr %67
  %dst.i47.i99 = getelementptr inbounds nuw float, ptr %dst_base.sroa.0.0.i45.i98, i64 %66
  store float %_7.i.i.i39.i, ptr %dst.i47.i99, align 4, !alias.scope !1094, !noalias !1152
  %_9.i50.i100 = getelementptr inbounds nuw i8, ptr %state.sroa.9.1113.i84, i64 12
  call void @llvm.experimental.noalias.scope.decl(metadata !1155)
  call void @llvm.experimental.noalias.scope.decl(metadata !1158)
  call void @llvm.experimental.noalias.scope.decl(metadata !1161)
  %_7.i.i.i52.i = load float, ptr %_9.i50.i100, align 4, !alias.scope !1164, !noalias !1165, !noundef !18
  %brmerge.not.i.i53.i = fcmp uno float %_6.i.i.i.i86, %_7.i.i.i52.i
  br i1 %brmerge.not.i.i53.i, label %bb6.i.i.i55.i, label %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hfb79a77bb13a9fcfE.exit56.i", !prof !21

bb6.i.i.i55.i:                                    ; preds = %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hfb79a77bb13a9fcfE.exit43.i"
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_e233725058d574d75123974d8763f424) #21, !noalias !1169
  unreachable

"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hfb79a77bb13a9fcfE.exit56.i": ; preds = %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hfb79a77bb13a9fcfE.exit43.i"
  %_8.i49.i101 = zext i1 %_8.i.mux.i.i41.i to i64
  %68 = add i64 %66, %_8.i49.i101
  %_8.i.mux.i.i54.i = fcmp uge float %_6.i.i.i.i86, %_7.i.i.i52.i
  %69 = getelementptr inbounds i8, ptr %state.sroa.43.1114.i83, i64 -16
  %dst_base.sroa.0.0.i58.i102 = select i1 %_8.i.mux.i.i54.i, ptr %scratch.0, ptr %69
  %dst.i60.i103 = getelementptr inbounds nuw float, ptr %dst_base.sroa.0.0.i58.i102, i64 %68
  store float %_7.i.i.i52.i, ptr %dst.i60.i103, align 4, !alias.scope !1094, !noalias !1170
  %_8.i62.i104 = zext i1 %_8.i.mux.i.i54.i to i64
  %70 = add i64 %68, %_8.i62.i104
  %_9.i63.i105 = getelementptr inbounds nuw i8, ptr %state.sroa.9.1113.i84, i64 16
  %_19.i106 = icmp ult ptr %_9.i63.i105, %unroll_end.i50
  br i1 %_19.i106, label %bb6.i82, label %bb16.i52

bb16.i52:                                         ; preds = %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hfb79a77bb13a9fcfE.exit56.i", %bb3.i45
  %state.sroa.27.1.lcssa.i53 = phi i64 [ %state.sroa.27.0.i46, %bb3.i45 ], [ %70, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hfb79a77bb13a9fcfE.exit56.i" ]
  %state.sroa.9.1.lcssa.i54 = phi ptr [ %state.sroa.9.0.i47, %bb3.i45 ], [ %_9.i63.i105, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hfb79a77bb13a9fcfE.exit56.i" ]
  %state.sroa.43.1.lcssa.i55 = phi ptr [ %state.sroa.43.0.i48, %bb3.i45 ], [ %69, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hfb79a77bb13a9fcfE.exit56.i" ]
  %loop_end.i56 = getelementptr inbounds nuw float, ptr %v.sroa.0.0.ph204, i64 %pivot_pos.sroa.0.0.i49
  %_47117.i57 = icmp ult ptr %state.sroa.9.1.lcssa.i54, %loop_end.i56
  br i1 %_47117.i57, label %bb18.i73.preheader, label %bb21.i58

bb18.i73.preheader:                               ; preds = %bb16.i52
  %_6.i.i.i64.i = load float, ptr %src, align 4, !alias.scope !1173, !noalias !1180, !noundef !18
  br label %bb18.i73

bb21.i58:                                         ; preds = %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hfb79a77bb13a9fcfE.exit69.i", %bb16.i52
  %state.sroa.27.2.lcssa.i59 = phi i64 [ %state.sroa.27.1.lcssa.i53, %bb16.i52 ], [ %72, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hfb79a77bb13a9fcfE.exit69.i" ]
  %state.sroa.9.2.lcssa.i60 = phi ptr [ %state.sroa.9.1.lcssa.i54, %bb16.i52 ], [ %_9.i76.i80, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hfb79a77bb13a9fcfE.exit69.i" ]
  %state.sroa.43.2.lcssa.i61 = phi ptr [ %state.sroa.43.1.lcssa.i55, %bb16.i52 ], [ %71, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hfb79a77bb13a9fcfE.exit69.i" ]
  %_55.i62 = icmp eq i64 %pivot_pos.sroa.0.0.i49, %v.sroa.16.0196
  br i1 %_55.i62, label %bb22.i66, label %bb23.i63

bb18.i73:                                         ; preds = %bb18.i73.preheader, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hfb79a77bb13a9fcfE.exit69.i"
  %state.sroa.43.2120.i74 = phi ptr [ %71, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hfb79a77bb13a9fcfE.exit69.i" ], [ %state.sroa.43.1.lcssa.i55, %bb18.i73.preheader ]
  %state.sroa.9.2119.i75 = phi ptr [ %_9.i76.i80, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hfb79a77bb13a9fcfE.exit69.i" ], [ %state.sroa.9.1.lcssa.i54, %bb18.i73.preheader ]
  %state.sroa.27.2118.i76 = phi i64 [ %72, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hfb79a77bb13a9fcfE.exit69.i" ], [ %state.sroa.27.1.lcssa.i53, %bb18.i73.preheader ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1184)
  call void @llvm.experimental.noalias.scope.decl(metadata !1185)
  call void @llvm.experimental.noalias.scope.decl(metadata !1186)
  call void @llvm.experimental.noalias.scope.decl(metadata !1187)
  call void @llvm.experimental.noalias.scope.decl(metadata !1188)
  call void @llvm.experimental.noalias.scope.decl(metadata !1189)
  %_7.i.i.i65.i = load float, ptr %state.sroa.9.2119.i75, align 4, !alias.scope !1190, !noalias !1191, !noundef !18
  %brmerge.not.i.i66.i = fcmp uno float %_6.i.i.i64.i, %_7.i.i.i65.i
  br i1 %brmerge.not.i.i66.i, label %bb6.i.i.i68.i, label %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hfb79a77bb13a9fcfE.exit69.i", !prof !21

bb6.i.i.i68.i:                                    ; preds = %bb18.i73
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_e233725058d574d75123974d8763f424) #21, !noalias !1192
  unreachable

"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hfb79a77bb13a9fcfE.exit69.i": ; preds = %bb18.i73
  %_8.i.mux.i.i67.i = fcmp uge float %_6.i.i.i64.i, %_7.i.i.i65.i
  %71 = getelementptr inbounds i8, ptr %state.sroa.43.2120.i74, i64 -4
  %dst_base.sroa.0.0.i71.i77 = select i1 %_8.i.mux.i.i67.i, ptr %scratch.0, ptr %71
  %dst.i73.i78 = getelementptr inbounds nuw float, ptr %dst_base.sroa.0.0.i71.i77, i64 %state.sroa.27.2118.i76
  store float %_7.i.i.i65.i, ptr %dst.i73.i78, align 4, !alias.scope !1094, !noalias !1193
  %_8.i75.i79 = zext i1 %_8.i.mux.i.i67.i to i64
  %72 = add i64 %state.sroa.27.2118.i76, %_8.i75.i79
  %_9.i76.i80 = getelementptr inbounds nuw i8, ptr %state.sroa.9.2119.i75, i64 4
  %_47.i81 = icmp ult ptr %_9.i76.i80, %loop_end.i56
  br i1 %_47.i81, label %bb18.i73, label %bb21.i58

bb23.i63:                                         ; preds = %bb21.i58
  %73 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa.i61, i64 -4
  %dst.i80.i64 = getelementptr inbounds nuw float, ptr %scratch.0, i64 %state.sroa.27.2.lcssa.i59
  %74 = load i32, ptr %state.sroa.9.2.lcssa.i60, align 4, !alias.scope !1091, !noalias !1196
  store i32 %74, ptr %dst.i80.i64, align 4, !alias.scope !1094, !noalias !1199
  %75 = add i64 %state.sroa.27.2.lcssa.i59, 1
  %_9.i82.i65 = getelementptr inbounds nuw i8, ptr %state.sroa.9.2.lcssa.i60, i64 4
  br label %bb3.i45

bb22.i66:                                         ; preds = %bb21.i58
  %76 = shl i64 %state.sroa.27.2.lcssa.i59, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.sroa.0.0.ph204, ptr nonnull align 4 %scratch.0, i64 %76, i1 false), !alias.scope !1200
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
  %wide.load = load <4 x i32>, ptr %81, align 4, !alias.scope !1094, !noalias !1091
  %reverse = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %wide.load503 = load <4 x i32>, ptr %82, align 4, !alias.scope !1094, !noalias !1091
  %reverse504 = shufflevector <4 x i32> %wide.load503, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %83 = getelementptr i8, ptr %78, i64 16
  store <4 x i32> %reverse, ptr %78, align 4, !alias.scope !1091, !noalias !1094
  store <4 x i32> %reverse504, ptr %83, align 4, !alias.scope !1091, !noalias !1094
  %index.next = add nuw i64 %index, 8
  %84 = icmp eq i64 %index.next, %n.vec
  br i1 %84, label %middle.block, label %vector.body, !llvm.loop !1201

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %_63.i67, %n.vec
  br i1 %cmp.n, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h29d7ff4c78c44930E.exit, label %bb42.i70.preheader

bb42.i70.preheader:                               ; preds = %bb42.lr.ph.i69, %middle.block
  %iter.sroa.0.0125.i71.ph = phi i64 [ 0, %bb42.lr.ph.i69 ], [ %n.vec, %middle.block ]
  br label %bb42.i70

bb42.i70:                                         ; preds = %bb42.i70.preheader, %bb42.i70
  %iter.sroa.0.0125.i71 = phi i64 [ %85, %bb42.i70 ], [ %iter.sroa.0.0125.i71.ph, %bb42.i70.preheader ]
  %85 = add nuw i64 %iter.sroa.0.0125.i71, 1
  %86 = getelementptr float, ptr %77, i64 %iter.sroa.0.0125.i71
  %87 = xor i64 %iter.sroa.0.0125.i71, -1
  %88 = getelementptr float, ptr %_86.i44, i64 %87
  %89 = load i32, ptr %88, align 4, !alias.scope !1094, !noalias !1091
  store i32 %89, ptr %86, align 4, !alias.scope !1091, !noalias !1094
  %exitcond.not.i72 = icmp eq i64 %85, %_63.i67
  br i1 %exitcond.not.i72, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h29d7ff4c78c44930E.exit, label %bb42.i70, !llvm.loop !1202

_ZN4core5slice4sort6stable9quicksort16stable_partition17h29d7ff4c78c44930E.exit: ; preds = %bb42.i70, %middle.block
  %_47 = icmp ugt i64 %state.sroa.27.2.lcssa.i59, %v.sroa.16.0196
  br i1 %_47, label %bb27, label %bb28, !prof !1086

bb3.thread:                                       ; preds = %bb22.i66
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  br label %bb22

bb28:                                             ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h29d7ff4c78c44930E.exit
  %_54 = getelementptr inbounds nuw float, ptr %v.sroa.0.0.ph204, i64 %state.sroa.27.2.lcssa.i59
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_8194 = icmp ult i64 %_63.i67, 33
  br i1 %_8194, label %bb3, label %bb5.lr.ph

bb27:                                             ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h29d7ff4c78c44930E.exit
; call core::slice::index::slice_index_fail
  call void @_ZN4core5slice5index16slice_index_fail17h62807bcaa490c9c1E(i64 noundef %state.sroa.27.2.lcssa.i59, i64 noundef %v.sroa.16.0196, i64 noundef %v.sroa.16.0196, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_0766b232215672ee1bd2195fdb153938) #21
  unreachable

bb22:                                             ; preds = %bb3.thread, %bb9.i.i, %bb3, %bb6
  ret void
}

; core::slice::sort::stable::quicksort::quicksort
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable9quicksort9quicksort17hf41fb6ada53877c9E(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %2, ptr noalias noundef readonly align 4 captures(address) dereferenceable_or_null(4) %3, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #2 personality ptr @rust_eh_personality {
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

bb5:                                              ; preds = %bb5.lr.ph, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h77ab04c1f2f49d7cE.exit"
  %v.sroa.16.0132 = phi i64 [ %v.sroa.16.0.ph139, %bb5.lr.ph ], [ %state.sroa.27.2.lcssa.i, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h77ab04c1f2f49d7cE.exit" ]
  %limit.sroa.0.0131 = phi i32 [ %limit.sroa.0.0.ph138, %bb5.lr.ph ], [ %48, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h77ab04c1f2f49d7cE.exit" ]
  %_11 = icmp eq i32 %limit.sroa.0.0131, 0
  br i1 %_11, label %bb6, label %bb7

bb3:                                              ; preds = %bb28, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h77ab04c1f2f49d7cE.exit", %start
  %v.sroa.0.0.ph.lcssa129 = phi ptr [ %0, %start ], [ %v.sroa.0.0.ph140, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h77ab04c1f2f49d7cE.exit" ], [ %_54, %bb28 ]
  %v.sroa.16.0.lcssa = phi i64 [ %1, %start ], [ %state.sroa.27.2.lcssa.i, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h77ab04c1f2f49d7cE.exit" ], [ %_63.i63, %bb28 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1203)
  call void @llvm.experimental.noalias.scope.decl(metadata !1206)
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
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h191e2cd2a4055331E(ptr noundef nonnull align 4 %v.sroa.0.0.ph.lcssa129, ptr noundef nonnull align 4 %scratch.0, ptr noundef %_16.i)
  %_18.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %len_div_211.i
  %_19.i = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211.i
  %_20.i = getelementptr inbounds nuw i8, ptr %_16.i, i64 32
; call core::slice::sort::shared::smallsort::sort8_stable
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h191e2cd2a4055331E(ptr noundef %_18.i, ptr noundef %_19.i, ptr noundef %_20.i)
  br label %bb15.i

bb10.i:                                           ; preds = %bb9.i
  %_7.i.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph.lcssa129, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !1208)
  call void @llvm.experimental.noalias.scope.decl(metadata !1211)
  call void @llvm.experimental.noalias.scope.decl(metadata !1213)
  call void @llvm.experimental.noalias.scope.decl(metadata !1216)
  call void @llvm.experimental.noalias.scope.decl(metadata !1218)
  call void @llvm.experimental.noalias.scope.decl(metadata !1221)
  %_3.i.i.i.i.i = load i32, ptr %_7.i.i, align 4, !alias.scope !1223, !noalias !1224, !noundef !18
  %_4.i.i.i.i.i = load i32, ptr %v.sroa.0.0.ph.lcssa129, align 4, !alias.scope !1226, !noalias !1227, !noundef !18
  %_0.i.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %_12.i.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph.lcssa129, i64 12
  %_14.i.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph.lcssa129, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1228)
  call void @llvm.experimental.noalias.scope.decl(metadata !1231)
  call void @llvm.experimental.noalias.scope.decl(metadata !1233)
  call void @llvm.experimental.noalias.scope.decl(metadata !1236)
  call void @llvm.experimental.noalias.scope.decl(metadata !1238)
  call void @llvm.experimental.noalias.scope.decl(metadata !1241)
  %_3.i.i.i7.i.i = load i32, ptr %_12.i.i, align 4, !alias.scope !1243, !noalias !1244, !noundef !18
  %_4.i.i.i8.i.i = load i32, ptr %_14.i.i, align 4, !alias.scope !1245, !noalias !1246, !noundef !18
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
  call void @llvm.experimental.noalias.scope.decl(metadata !1247)
  call void @llvm.experimental.noalias.scope.decl(metadata !1250)
  call void @llvm.experimental.noalias.scope.decl(metadata !1252)
  call void @llvm.experimental.noalias.scope.decl(metadata !1255)
  call void @llvm.experimental.noalias.scope.decl(metadata !1257)
  call void @llvm.experimental.noalias.scope.decl(metadata !1260)
  %_3.i.i.i10.i.i = load i32, ptr %c.i.i, align 4, !alias.scope !1262, !noalias !1263, !noundef !18
  %_4.i.i.i11.i.i = load i32, ptr %a.i.i, align 4, !alias.scope !1264, !noalias !1265, !noundef !18
  %_0.i12.i.i = icmp slt i32 %_3.i.i.i10.i.i, %_4.i.i.i11.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1266)
  call void @llvm.experimental.noalias.scope.decl(metadata !1269)
  call void @llvm.experimental.noalias.scope.decl(metadata !1271)
  call void @llvm.experimental.noalias.scope.decl(metadata !1274)
  call void @llvm.experimental.noalias.scope.decl(metadata !1276)
  call void @llvm.experimental.noalias.scope.decl(metadata !1279)
  %_3.i.i.i13.i.i = load i32, ptr %d.i.i, align 4, !alias.scope !1281, !noalias !1282, !noundef !18
  %_4.i.i.i14.i.i = load i32, ptr %b.i.i, align 4, !alias.scope !1283, !noalias !1284, !noundef !18
  %_0.i15.i.i = icmp slt i32 %_3.i.i.i13.i.i, %_4.i.i.i14.i.i
  %5 = call i32 @llvm.smin.i32(i32 %_3.i.i.i10.i.i, i32 %_4.i.i.i11.i.i)
  %6 = select i1 %_0.i15.i.i, ptr %c.i.i, ptr %b.i.i, !unpredictable !18
  %7 = select i1 %_0.i12.i.i, ptr %a.i.i, ptr %6, !unpredictable !18
  %8 = select i1 %_0.i12.i.i, ptr %b.i.i, ptr %c.i.i, !unpredictable !18
  %9 = select i1 %_0.i15.i.i, ptr %d.i.i, ptr %8, !unpredictable !18
  call void @llvm.experimental.noalias.scope.decl(metadata !1285)
  call void @llvm.experimental.noalias.scope.decl(metadata !1288)
  call void @llvm.experimental.noalias.scope.decl(metadata !1290)
  call void @llvm.experimental.noalias.scope.decl(metadata !1293)
  call void @llvm.experimental.noalias.scope.decl(metadata !1295)
  call void @llvm.experimental.noalias.scope.decl(metadata !1298)
  %_3.i.i.i16.i.i = load i32, ptr %9, align 4, !alias.scope !1300, !noalias !1301, !noundef !18
  %_4.i.i.i17.i.i = load i32, ptr %7, align 4, !alias.scope !1302, !noalias !1303, !noundef !18
  store i32 %5, ptr %scratch.0, align 4, !alias.scope !1206, !noalias !1304
  %dst5.i.i = getelementptr inbounds nuw i8, ptr %scratch.0, i64 4
  %10 = call i32 @llvm.smin.i32(i32 %_3.i.i.i16.i.i, i32 %_4.i.i.i17.i.i)
  store i32 %10, ptr %dst5.i.i, align 4, !alias.scope !1206, !noalias !1304
  %dst6.i.i = getelementptr inbounds nuw i8, ptr %scratch.0, i64 8
  %11 = call i32 @llvm.smax.i32(i32 %_3.i.i.i16.i.i, i32 %_4.i.i.i17.i.i)
  store i32 %11, ptr %dst6.i.i, align 4, !alias.scope !1206, !noalias !1304
  %12 = getelementptr inbounds nuw i8, ptr %scratch.0, i64 12
  %13 = call i32 @llvm.smax.i32(i32 %_3.i.i.i13.i.i, i32 %_4.i.i.i14.i.i)
  store i32 %13, ptr %12, align 4, !alias.scope !1206, !noalias !1304
  %_27.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %len_div_211.i
  %_28.i = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211.i
  %_7.i13.i = getelementptr inbounds nuw i8, ptr %_27.i, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !1305)
  call void @llvm.experimental.noalias.scope.decl(metadata !1308)
  call void @llvm.experimental.noalias.scope.decl(metadata !1310)
  call void @llvm.experimental.noalias.scope.decl(metadata !1313)
  call void @llvm.experimental.noalias.scope.decl(metadata !1315)
  call void @llvm.experimental.noalias.scope.decl(metadata !1318)
  %_3.i.i.i.i14.i = load i32, ptr %_7.i13.i, align 4, !alias.scope !1320, !noalias !1321, !noundef !18
  %_4.i.i.i.i15.i = load i32, ptr %_27.i, align 4, !alias.scope !1322, !noalias !1323, !noundef !18
  %_0.i.i16.i = icmp slt i32 %_3.i.i.i.i14.i, %_4.i.i.i.i15.i
  %_12.i17.i = getelementptr inbounds nuw i8, ptr %_27.i, i64 12
  %_14.i18.i = getelementptr inbounds nuw i8, ptr %_27.i, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1324)
  call void @llvm.experimental.noalias.scope.decl(metadata !1327)
  call void @llvm.experimental.noalias.scope.decl(metadata !1329)
  call void @llvm.experimental.noalias.scope.decl(metadata !1332)
  call void @llvm.experimental.noalias.scope.decl(metadata !1334)
  call void @llvm.experimental.noalias.scope.decl(metadata !1337)
  %_3.i.i.i7.i19.i = load i32, ptr %_12.i17.i, align 4, !alias.scope !1339, !noalias !1340, !noundef !18
  %_4.i.i.i8.i20.i = load i32, ptr %_14.i18.i, align 4, !alias.scope !1341, !noalias !1342, !noundef !18
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
  call void @llvm.experimental.noalias.scope.decl(metadata !1343)
  call void @llvm.experimental.noalias.scope.decl(metadata !1346)
  call void @llvm.experimental.noalias.scope.decl(metadata !1348)
  call void @llvm.experimental.noalias.scope.decl(metadata !1351)
  call void @llvm.experimental.noalias.scope.decl(metadata !1353)
  call void @llvm.experimental.noalias.scope.decl(metadata !1356)
  %_3.i.i.i10.i31.i = load i32, ptr %c.i28.i, align 4, !alias.scope !1358, !noalias !1359, !noundef !18
  %_4.i.i.i11.i32.i = load i32, ptr %a.i23.i, align 4, !alias.scope !1360, !noalias !1361, !noundef !18
  %_0.i12.i33.i = icmp slt i32 %_3.i.i.i10.i31.i, %_4.i.i.i11.i32.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1362)
  call void @llvm.experimental.noalias.scope.decl(metadata !1365)
  call void @llvm.experimental.noalias.scope.decl(metadata !1367)
  call void @llvm.experimental.noalias.scope.decl(metadata !1370)
  call void @llvm.experimental.noalias.scope.decl(metadata !1372)
  call void @llvm.experimental.noalias.scope.decl(metadata !1375)
  %_3.i.i.i13.i34.i = load i32, ptr %d.i30.i, align 4, !alias.scope !1377, !noalias !1378, !noundef !18
  %_4.i.i.i14.i35.i = load i32, ptr %b.i26.i, align 4, !alias.scope !1379, !noalias !1380, !noundef !18
  %_0.i15.i36.i = icmp slt i32 %_3.i.i.i13.i34.i, %_4.i.i.i14.i35.i
  %14 = call i32 @llvm.smin.i32(i32 %_3.i.i.i10.i31.i, i32 %_4.i.i.i11.i32.i)
  %15 = select i1 %_0.i15.i36.i, ptr %c.i28.i, ptr %b.i26.i, !unpredictable !18
  %16 = select i1 %_0.i12.i33.i, ptr %a.i23.i, ptr %15, !unpredictable !18
  %17 = select i1 %_0.i12.i33.i, ptr %b.i26.i, ptr %c.i28.i, !unpredictable !18
  %18 = select i1 %_0.i15.i36.i, ptr %d.i30.i, ptr %17, !unpredictable !18
  call void @llvm.experimental.noalias.scope.decl(metadata !1381)
  call void @llvm.experimental.noalias.scope.decl(metadata !1384)
  call void @llvm.experimental.noalias.scope.decl(metadata !1386)
  call void @llvm.experimental.noalias.scope.decl(metadata !1389)
  call void @llvm.experimental.noalias.scope.decl(metadata !1391)
  call void @llvm.experimental.noalias.scope.decl(metadata !1394)
  %_3.i.i.i16.i37.i = load i32, ptr %18, align 4, !alias.scope !1396, !noalias !1397, !noundef !18
  %_4.i.i.i17.i38.i = load i32, ptr %16, align 4, !alias.scope !1398, !noalias !1399, !noundef !18
  store i32 %14, ptr %_28.i, align 4, !alias.scope !1206, !noalias !1304
  %dst5.i40.i = getelementptr inbounds nuw i8, ptr %_28.i, i64 4
  %19 = call i32 @llvm.smin.i32(i32 %_3.i.i.i16.i37.i, i32 %_4.i.i.i17.i38.i)
  store i32 %19, ptr %dst5.i40.i, align 4, !alias.scope !1206, !noalias !1304
  %dst6.i43.i = getelementptr inbounds nuw i8, ptr %_28.i, i64 8
  %20 = call i32 @llvm.smax.i32(i32 %_3.i.i.i16.i37.i, i32 %_4.i.i.i17.i38.i)
  store i32 %20, ptr %dst6.i43.i, align 4, !alias.scope !1206, !noalias !1304
  %21 = getelementptr inbounds nuw i8, ptr %_28.i, i64 12
  %22 = call i32 @llvm.smax.i32(i32 %_3.i.i.i13.i34.i, i32 %_4.i.i.i14.i35.i)
  store i32 %22, ptr %21, align 4, !alias.scope !1206, !noalias !1304
  br label %bb15.i

bb46.i:                                           ; preds = %bb9.i
  %23 = load i32, ptr %v.sroa.0.0.ph.lcssa129, align 4, !alias.scope !1203, !noalias !1400
  store i32 %23, ptr %scratch.0, align 4, !alias.scope !1206, !noalias !1304
  %_31.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %len_div_211.i
  %24 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211.i
  %25 = load i32, ptr %_31.i, align 4, !alias.scope !1203, !noalias !1400
  store i32 %25, ptr %24, align 4, !alias.scope !1206, !noalias !1304
  br label %bb15.i

bb15.i:                                           ; preds = %bb46.i, %bb10.i, %bb6.i
  %presorted_len.sroa.0.0.i = phi i64 [ 8, %bb6.i ], [ 4, %bb10.i ], [ 1, %bb46.i ]
  %26 = sub nsw i64 %v.sroa.16.0.lcssa, %len_div_211.i
  %_8061.i = icmp samesign ult i64 %presorted_len.sroa.0.0.i, %len_div_211.i
  br i1 %_8061.i, label %bb24.preheader.i, label %bb16.loopexit.i

bb16.loopexit.i:                                  ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h56ae50ec7dbaf211E.exit.i, %bb15.i
  %src5.1.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %len_div_211.i
  %dst6.1.i = getelementptr i32, ptr %scratch.0, i64 %len_div_211.i
  %_8061.1.i = icmp ult i64 %presorted_len.sroa.0.0.i, %26
  br i1 %_8061.1.i, label %bb24.preheader.1.i, label %bb16.loopexit.1.i

bb24.preheader.1.i:                               ; preds = %bb16.loopexit.i
  %iter1.sroa.0.163.1.i = add nuw nsw i64 %presorted_len.sroa.0.0.i, 1
  br label %bb24.1.i

bb24.1.i:                                         ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h56ae50ec7dbaf211E.exit.1.i, %bb24.preheader.1.i
  %iter1.sroa.0.165.1.i = phi i64 [ %iter1.sroa.0.1.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h56ae50ec7dbaf211E.exit.1.i ], [ %iter1.sroa.0.163.1.i, %bb24.preheader.1.i ]
  %iter1.sroa.0.064.1.i = phi i64 [ %iter1.sroa.0.165.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h56ae50ec7dbaf211E.exit.1.i ], [ %presorted_len.sroa.0.0.i, %bb24.preheader.1.i ]
  %_55.1.i = getelementptr inbounds nuw i32, ptr %src5.1.i, i64 %iter1.sroa.0.064.1.i
  %dst7.1.i = getelementptr inbounds nuw i32, ptr %dst6.1.i, i64 %iter1.sroa.0.064.1.i
  %27 = load i32, ptr %_55.1.i, align 4, !alias.scope !1203, !noalias !1400
  store i32 %27, ptr %dst7.1.i, align 4, !alias.scope !1206, !noalias !1304
  %28 = getelementptr inbounds i8, ptr %dst7.1.i, i64 -4
  %_4.i.i.i.i55.1.i = load i32, ptr %28, align 4, !alias.scope !1401, !noalias !1408, !noundef !18
  %_0.i.i56.1.i = icmp slt i32 %27, %_4.i.i.i.i55.1.i
  br i1 %_0.i.i56.1.i, label %bb4.i.1.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h56ae50ec7dbaf211E.exit.1.i

bb4.i.1.i:                                        ; preds = %bb24.1.i, %bb7.i.1.i
  %29 = phi i32 [ %_4.i.i.i2.i.1.i, %bb7.i.1.i ], [ %_4.i.i.i.i55.1.i, %bb24.1.i ]
  %gap_guard.sroa.5.0.i.1.i = phi ptr [ %sift.sroa.0.0.i.1.i, %bb7.i.1.i ], [ %dst7.1.i, %bb24.1.i ]
  %sift.sroa.0.0.i.1.i = phi ptr [ %30, %bb7.i.1.i ], [ %28, %bb24.1.i ]
  store i32 %29, ptr %gap_guard.sroa.5.0.i.1.i, align 4, !alias.scope !1206, !noalias !1304
  %_18.i.1.i = icmp eq ptr %sift.sroa.0.0.i.1.i, %dst6.1.i
  br i1 %_18.i.1.i, label %bb10.i.1.i, label %bb7.i.1.i

bb7.i.1.i:                                        ; preds = %bb4.i.1.i
  %30 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.1.i, i64 -4
  %_4.i.i.i2.i.1.i = load i32, ptr %30, align 4, !alias.scope !1412, !noalias !1419, !noundef !18
  %_0.i3.i.1.i = icmp slt i32 %27, %_4.i.i.i2.i.1.i
  br i1 %_0.i3.i.1.i, label %bb4.i.1.i, label %bb10.i.1.i

bb10.i.1.i:                                       ; preds = %bb7.i.1.i, %bb4.i.1.i
  %sift.sroa.0.0.i.lcssa.1.i = phi ptr [ %sift.sroa.0.0.i.1.i, %bb7.i.1.i ], [ %dst6.1.i, %bb4.i.1.i ]
  store i32 %27, ptr %sift.sroa.0.0.i.lcssa.1.i, align 4, !alias.scope !1206, !noalias !1423
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h56ae50ec7dbaf211E.exit.1.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h56ae50ec7dbaf211E.exit.1.i: ; preds = %bb10.i.1.i, %bb24.1.i
  %_80.1.i = icmp ult i64 %iter1.sroa.0.165.1.i, %26
  %_84.1.i = zext i1 %_80.1.i to i64
  %iter1.sroa.0.1.1.i = add nuw i64 %iter1.sroa.0.165.1.i, %_84.1.i
  br i1 %_80.1.i, label %bb24.1.i, label %bb16.loopexit.1.i

bb16.loopexit.1.i:                                ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h56ae50ec7dbaf211E.exit.1.i, %bb16.loopexit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1428)
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
  call void @llvm.experimental.noalias.scope.decl(metadata !1431)
  call void @llvm.experimental.noalias.scope.decl(metadata !1434)
  call void @llvm.experimental.noalias.scope.decl(metadata !1436), !noalias !1439
  call void @llvm.experimental.noalias.scope.decl(metadata !1442), !noalias !1439
  call void @llvm.experimental.noalias.scope.decl(metadata !1444), !noalias !1439
  call void @llvm.experimental.noalias.scope.decl(metadata !1447), !noalias !1439
  %_3.i.i.i.i48.i = load i32, ptr %right.sroa.0.026.i.i, align 4, !alias.scope !1449, !noalias !1450, !noundef !18
  %_4.i.i.i.i49.i = load i32, ptr %left.sroa.0.027.i.i, align 4, !alias.scope !1451, !noalias !1452, !noundef !18
  %_0.i.i50.i = icmp slt i32 %_3.i.i.i.i48.i, %_4.i.i.i.i49.i
  %is_l.i18.i.i = xor i1 %_0.i.i50.i, true
  %36 = call i32 @llvm.smin.i32(i32 %_3.i.i.i.i48.i, i32 %_4.i.i.i.i49.i)
  store i32 %36, ptr %dst.sroa.0.029.i.i, align 4, !alias.scope !1203, !noalias !1453
  %count.i.i.i = zext i1 %_0.i.i50.i to i64
  %_12.i.i.i = getelementptr inbounds nuw i32, ptr %right.sroa.0.026.i.i, i64 %count.i.i.i
  %count2.i.i.i = zext i1 %is_l.i18.i.i to i64
  %_14.i.i.i = getelementptr inbounds nuw i32, ptr %left.sroa.0.027.i.i, i64 %count2.i.i.i
  %_16.i.i.i = getelementptr inbounds nuw i8, ptr %dst.sroa.0.029.i.i, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !1455)
  call void @llvm.experimental.noalias.scope.decl(metadata !1458)
  call void @llvm.experimental.noalias.scope.decl(metadata !1460), !noalias !1463
  call void @llvm.experimental.noalias.scope.decl(metadata !1466), !noalias !1463
  call void @llvm.experimental.noalias.scope.decl(metadata !1468), !noalias !1463
  call void @llvm.experimental.noalias.scope.decl(metadata !1471), !noalias !1463
  %_3.i.i.i19.i.i = load i32, ptr %right_rev.sroa.0.024.i.i, align 4, !alias.scope !1473, !noalias !1474, !noundef !18
  %_4.i.i.i20.i.i = load i32, ptr %left_rev.sroa.0.025.i.i, align 4, !alias.scope !1475, !noalias !1476, !noundef !18
  %_0.i21.i.i = icmp slt i32 %_3.i.i.i19.i.i, %_4.i.i.i20.i.i
  %is_l.i.i.i = xor i1 %_0.i21.i.i, true
  %37 = call i32 @llvm.smax.i32(i32 %_3.i.i.i19.i.i, i32 %_4.i.i.i20.i.i)
  store i32 %37, ptr %dst_rev.sroa.0.023.i.i, align 4, !alias.scope !1203, !noalias !1477
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
  %41 = load i32, ptr %left.sroa.0.0.right.sroa.0.0.i.i, align 4, !alias.scope !1479, !noalias !1304
  store i32 %41, ptr %_16.i.i.i, align 4, !alias.scope !1203, !noalias !1480
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
  invoke void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #21
          to label %.noexc.i unwind label %cleanup2.i, !noalias !1481

.noexc.i:                                         ; preds = %bb13.i.i
  unreachable

cleanup2.i:                                       ; preds = %bb13.i.i
  %42 = landingpad { ptr, i32 }
          cleanup
  %43 = shl nuw nsw i64 %v.sroa.16.0.lcssa, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.sroa.0.0.ph.lcssa129, ptr nonnull align 4 %scratch.0, i64 %43, i1 false), !alias.scope !1482, !noalias !1483
  resume { ptr, i32 } %42

bb24.i:                                           ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h56ae50ec7dbaf211E.exit.i, %bb24.preheader.i
  %iter1.sroa.0.165.i = phi i64 [ %iter1.sroa.0.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h56ae50ec7dbaf211E.exit.i ], [ %iter1.sroa.0.163.i, %bb24.preheader.i ]
  %iter1.sroa.0.064.i = phi i64 [ %iter1.sroa.0.165.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h56ae50ec7dbaf211E.exit.i ], [ %presorted_len.sroa.0.0.i, %bb24.preheader.i ]
  %_55.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %iter1.sroa.0.064.i
  %dst7.i = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %iter1.sroa.0.064.i
  %44 = load i32, ptr %_55.i, align 4, !alias.scope !1203, !noalias !1400
  store i32 %44, ptr %dst7.i, align 4, !alias.scope !1206, !noalias !1304
  %45 = getelementptr inbounds i8, ptr %dst7.i, i64 -4
  %_4.i.i.i.i55.i = load i32, ptr %45, align 4, !alias.scope !1401, !noalias !1408, !noundef !18
  %_0.i.i56.i = icmp slt i32 %44, %_4.i.i.i.i55.i
  br i1 %_0.i.i56.i, label %bb4.i.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h56ae50ec7dbaf211E.exit.i

bb4.i.i:                                          ; preds = %bb24.i, %bb7.i.i
  %46 = phi i32 [ %_4.i.i.i2.i.i, %bb7.i.i ], [ %_4.i.i.i.i55.i, %bb24.i ]
  %gap_guard.sroa.5.0.i.i = phi ptr [ %sift.sroa.0.0.i.i, %bb7.i.i ], [ %dst7.i, %bb24.i ]
  %sift.sroa.0.0.i.i = phi ptr [ %47, %bb7.i.i ], [ %45, %bb24.i ]
  store i32 %46, ptr %gap_guard.sroa.5.0.i.i, align 4, !alias.scope !1206, !noalias !1304
  %_18.i.i = icmp eq ptr %sift.sroa.0.0.i.i, %scratch.0
  br i1 %_18.i.i, label %bb10.i.i, label %bb7.i.i

bb7.i.i:                                          ; preds = %bb4.i.i
  %47 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i, i64 -4
  %_4.i.i.i2.i.i = load i32, ptr %47, align 4, !alias.scope !1412, !noalias !1419, !noundef !18
  %_0.i3.i.i = icmp slt i32 %44, %_4.i.i.i2.i.i
  br i1 %_0.i3.i.i, label %bb4.i.i, label %bb10.i.i

bb10.i.i:                                         ; preds = %bb7.i.i, %bb4.i.i
  %sift.sroa.0.0.i.lcssa.i = phi ptr [ %sift.sroa.0.0.i.i, %bb7.i.i ], [ %scratch.0, %bb4.i.i ]
  store i32 %44, ptr %sift.sroa.0.0.i.lcssa.i, align 4, !alias.scope !1206, !noalias !1423
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h56ae50ec7dbaf211E.exit.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h56ae50ec7dbaf211E.exit.i: ; preds = %bb10.i.i, %bb24.i
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
  %self.i = call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h63df4c18b3244a7aE(ptr noundef nonnull readonly align 4 %v.sroa.0.0.ph140, ptr noundef readonly %b.i, ptr noundef readonly %c.i, i64 noundef %len_div_84.i)
  br label %bb10

bb3.i23:                                          ; preds = %bb7
  call void @llvm.experimental.noalias.scope.decl(metadata !1488)
  call void @llvm.experimental.noalias.scope.decl(metadata !1491)
  call void @llvm.experimental.noalias.scope.decl(metadata !1493), !noalias !1496
  call void @llvm.experimental.noalias.scope.decl(metadata !1499), !noalias !1496
  call void @llvm.experimental.noalias.scope.decl(metadata !1501), !noalias !1496
  call void @llvm.experimental.noalias.scope.decl(metadata !1504), !noalias !1496
  %_3.i.i.i.i = load i32, ptr %v.sroa.0.0.ph140, align 4, !alias.scope !1506, !noalias !1509, !noundef !18
  %_4.i.i.i.i = load i32, ptr %b.i, align 4, !alias.scope !1511, !noalias !1512, !noundef !18
  %_0.i.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %_4.i.i.i6.i = load i32, ptr %c.i, align 4, !alias.scope !1513, !noalias !1520, !noundef !18
  %_0.i7.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i6.i
  %49 = xor i1 %_0.i.i, %_0.i7.i
  %_0.i10.i = icmp slt i32 %_4.i.i.i.i, %_4.i.i.i6.i
  %_12.i.i24 = xor i1 %_0.i.i, %_0.i10.i
  %c.b.i.i = select i1 %_12.i.i24, ptr %c.i, ptr %b.i
  %_0.sroa.0.0.i.i = select i1 %49, ptr %v.sroa.0.0.ph140, ptr %c.b.i.i
  br label %bb10

bb6:                                              ; preds = %bb5
; call core::slice::sort::stable::drift::sort
  call fastcc void @_ZN4core5slice4sort6stable5drift4sort17hbd75ce168a8b00beE(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph140, i64 noundef %v.sroa.16.0132, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i1 noundef zeroext true, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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
  %_3.i.i.i = load i32, ptr %left_ancestor_pivot.sroa.0.0.ph137, align 4, !alias.scope !1524, !noalias !1531, !noundef !18
  %_0.i = icmp slt i32 %_3.i.i.i, %value
  br i1 %_0.i, label %bb14, label %bb17

bb14:                                             ; preds = %bb10, %bb12
  call void @llvm.experimental.noalias.scope.decl(metadata !1535)
  call void @llvm.experimental.noalias.scope.decl(metadata !1538)
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
  %_4.i.i.i.i30 = load i32, ptr %src, align 4, !alias.scope !1540, !noalias !1547, !noundef !18
  br label %bb6.i28

bb6.i28:                                          ; preds = %bb6.i28.preheader, %bb6.i28
  %state.sroa.43.187.i = phi ptr [ %59, %bb6.i28 ], [ %state.sroa.43.0.i, %bb6.i28.preheader ]
  %state.sroa.9.186.i = phi ptr [ %_9.i54.i, %bb6.i28 ], [ %state.sroa.9.0.i, %bb6.i28.preheader ]
  %state.sroa.27.185.i = phi i64 [ %60, %bb6.i28 ], [ %state.sroa.27.0.i, %bb6.i28.preheader ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1551)
  call void @llvm.experimental.noalias.scope.decl(metadata !1552)
  call void @llvm.experimental.noalias.scope.decl(metadata !1553)
  call void @llvm.experimental.noalias.scope.decl(metadata !1554)
  call void @llvm.experimental.noalias.scope.decl(metadata !1555)
  call void @llvm.experimental.noalias.scope.decl(metadata !1556)
  %_3.i.i.i.i29 = load i32, ptr %state.sroa.9.186.i, align 4, !alias.scope !1557, !noalias !1558, !noundef !18
  %_0.i.i31 = icmp slt i32 %_3.i.i.i.i29, %_4.i.i.i.i30
  %53 = getelementptr inbounds i8, ptr %state.sroa.43.187.i, i64 -4
  %dst_base.sroa.0.0.i.i = select i1 %_0.i.i31, ptr %scratch.0, ptr %53
  %dst.i.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i.i, i64 %state.sroa.27.185.i
  store i32 %_3.i.i.i.i29, ptr %dst.i.i, align 4, !alias.scope !1538, !noalias !1559
  %_8.i.i = zext i1 %_0.i.i31 to i64
  %54 = add i64 %state.sroa.27.185.i, %_8.i.i
  %_9.i.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i, i64 4
  %_3.i.i.i25.i = load i32, ptr %_9.i.i, align 4, !alias.scope !1562, !noalias !1569, !noundef !18
  %_0.i27.i = icmp slt i32 %_3.i.i.i25.i, %_4.i.i.i.i30
  %55 = getelementptr inbounds i8, ptr %state.sroa.43.187.i, i64 -8
  %dst_base.sroa.0.0.i29.i = select i1 %_0.i27.i, ptr %scratch.0, ptr %55
  %dst.i31.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29.i, i64 %54
  store i32 %_3.i.i.i25.i, ptr %dst.i31.i, align 4, !alias.scope !1538, !noalias !1573
  %_8.i33.i = zext i1 %_0.i27.i to i64
  %56 = add i64 %54, %_8.i33.i
  %_9.i34.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i, i64 8
  %_3.i.i.i35.i = load i32, ptr %_9.i34.i, align 4, !alias.scope !1576, !noalias !1583, !noundef !18
  %_0.i37.i = icmp slt i32 %_3.i.i.i35.i, %_4.i.i.i.i30
  %57 = getelementptr inbounds i8, ptr %state.sroa.43.187.i, i64 -12
  %dst_base.sroa.0.0.i39.i = select i1 %_0.i37.i, ptr %scratch.0, ptr %57
  %dst.i41.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39.i, i64 %56
  store i32 %_3.i.i.i35.i, ptr %dst.i41.i, align 4, !alias.scope !1538, !noalias !1587
  %_8.i43.i = zext i1 %_0.i37.i to i64
  %58 = add i64 %56, %_8.i43.i
  %_9.i44.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i, i64 12
  %_3.i.i.i45.i = load i32, ptr %_9.i44.i, align 4, !alias.scope !1590, !noalias !1597, !noundef !18
  %_0.i47.i = icmp slt i32 %_3.i.i.i45.i, %_4.i.i.i.i30
  %59 = getelementptr inbounds i8, ptr %state.sroa.43.187.i, i64 -16
  %dst_base.sroa.0.0.i49.i = select i1 %_0.i47.i, ptr %scratch.0, ptr %59
  %dst.i51.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49.i, i64 %58
  store i32 %_3.i.i.i45.i, ptr %dst.i51.i, align 4, !alias.scope !1538, !noalias !1601
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
  %_4.i.i.i56.i = load i32, ptr %src, align 4, !alias.scope !1604, !noalias !1611, !noundef !18
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
  call void @llvm.experimental.noalias.scope.decl(metadata !1615)
  call void @llvm.experimental.noalias.scope.decl(metadata !1616)
  call void @llvm.experimental.noalias.scope.decl(metadata !1617)
  call void @llvm.experimental.noalias.scope.decl(metadata !1618)
  call void @llvm.experimental.noalias.scope.decl(metadata !1619)
  call void @llvm.experimental.noalias.scope.decl(metadata !1620)
  %_3.i.i.i55.i = load i32, ptr %state.sroa.9.292.i, align 4, !alias.scope !1621, !noalias !1622, !noundef !18
  %_0.i57.i = icmp slt i32 %_3.i.i.i55.i, %_4.i.i.i56.i
  %61 = getelementptr inbounds i8, ptr %state.sroa.43.293.i, i64 -4
  %dst_base.sroa.0.0.i59.i = select i1 %_0.i57.i, ptr %scratch.0, ptr %61
  %dst.i61.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59.i, i64 %state.sroa.27.291.i
  store i32 %_3.i.i.i55.i, ptr %dst.i61.i, align 4, !alias.scope !1538, !noalias !1623
  %_8.i63.i = zext i1 %_0.i57.i to i64
  %62 = add i64 %state.sroa.27.291.i, %_8.i63.i
  %_9.i64.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.292.i, i64 4
  %_47.i = icmp ult ptr %_9.i64.i, %loop_end.i
  br i1 %_47.i, label %bb18.i, label %bb21.i

bb23.i:                                           ; preds = %bb21.i
  %63 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa.i, i64 -4
  %dst.i68.i = getelementptr inbounds nuw i32, ptr %63, i64 %state.sroa.27.2.lcssa.i
  %64 = load i32, ptr %state.sroa.9.2.lcssa.i, align 4, !alias.scope !1535, !noalias !1626
  store i32 %64, ptr %dst.i68.i, align 4, !alias.scope !1538, !noalias !1629
  %_9.i70.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.2.lcssa.i, i64 4
  br label %bb3.i26

bb22.i:                                           ; preds = %bb21.i
  %65 = shl i64 %state.sroa.27.2.lcssa.i, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.sroa.0.0.ph140, ptr nonnull align 4 %scratch.0, i64 %65, i1 false), !alias.scope !1630
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
  %wide.load271 = load <4 x i32>, ptr %70, align 4, !alias.scope !1538, !noalias !1535
  %reverse272 = shufflevector <4 x i32> %wide.load271, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %wide.load273 = load <4 x i32>, ptr %71, align 4, !alias.scope !1538, !noalias !1535
  %reverse274 = shufflevector <4 x i32> %wide.load273, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %72 = getelementptr i8, ptr %67, i64 16
  store <4 x i32> %reverse272, ptr %67, align 4, !alias.scope !1535, !noalias !1538
  store <4 x i32> %reverse274, ptr %72, align 4, !alias.scope !1535, !noalias !1538
  %index.next275 = add nuw i64 %index270, 8
  %73 = icmp eq i64 %index.next275, %n.vec268
  br i1 %73, label %middle.block276, label %vector.body269, !llvm.loop !1631

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
  %78 = load i32, ptr %77, align 4, !alias.scope !1538, !noalias !1535
  store i32 %78, ptr %75, align 4, !alias.scope !1535, !noalias !1538
  %exitcond.not.i = icmp eq i64 %74, %_63.i
  br i1 %exitcond.not.i, label %bb16, label %bb42.i, !llvm.loop !1632

bb16:                                             ; preds = %bb42.i, %middle.block276, %bb22.i
  %79 = icmp eq i64 %state.sroa.27.2.lcssa.i, 0
  br i1 %79, label %bb17, label %bb19

bb19:                                             ; preds = %bb16
  %_6.not.i = icmp ugt i64 %state.sroa.27.2.lcssa.i, %v.sroa.16.0132
  br i1 %_6.not.i, label %bb3.i33, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h77ab04c1f2f49d7cE.exit", !prof !1086

bb3.i33:                                          ; preds = %bb19
; call core::panicking::panic_fmt
  call void @_ZN4core9panicking9panic_fmt17ha4414e4328fe24a0E(ptr noundef nonnull @alloc_d1084648e479974e70c9329824bf76f9, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_58d434a1e795f965ef82c8e9c5db822a) #21, !noalias !1633
  unreachable

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h77ab04c1f2f49d7cE.exit": ; preds = %bb19
  %80 = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph140, i64 %state.sroa.27.2.lcssa.i
; call core::slice::sort::stable::quicksort::quicksort
  call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hf41fb6ada53877c9E(ptr noalias noundef nonnull align 4 %80, i64 noundef %_63.i, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef %48, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) %pivot_copy, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_8 = icmp ult i64 %state.sroa.27.2.lcssa.i, 33
  br i1 %_8, label %bb3, label %bb5

bb17:                                             ; preds = %bb12, %bb16
  call void @llvm.experimental.noalias.scope.decl(metadata !1637)
  call void @llvm.experimental.noalias.scope.decl(metadata !1640)
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
  %_3.i.i.i.i.i82 = load i32, ptr %src, align 4, !alias.scope !1642, !noalias !1651, !noundef !18
  br label %bb6.i78

bb6.i78:                                          ; preds = %bb6.i78.preheader, %bb6.i78
  %state.sroa.43.187.i79 = phi ptr [ %88, %bb6.i78 ], [ %state.sroa.43.0.i44, %bb6.i78.preheader ]
  %state.sroa.9.186.i80 = phi ptr [ %_9.i54.i100, %bb6.i78 ], [ %state.sroa.9.0.i43, %bb6.i78.preheader ]
  %state.sroa.27.185.i81 = phi i64 [ %89, %bb6.i78 ], [ %state.sroa.27.0.i42, %bb6.i78.preheader ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1656)
  call void @llvm.experimental.noalias.scope.decl(metadata !1657)
  call void @llvm.experimental.noalias.scope.decl(metadata !1658)
  call void @llvm.experimental.noalias.scope.decl(metadata !1659)
  call void @llvm.experimental.noalias.scope.decl(metadata !1660)
  call void @llvm.experimental.noalias.scope.decl(metadata !1661)
  call void @llvm.experimental.noalias.scope.decl(metadata !1662)
  call void @llvm.experimental.noalias.scope.decl(metadata !1663)
  %_4.i.i.i.i.i83 = load i32, ptr %state.sroa.9.186.i80, align 4, !alias.scope !1664, !noalias !1665, !noundef !18
  %_0.i.i.i84 = icmp sge i32 %_3.i.i.i.i.i82, %_4.i.i.i.i.i83
  %82 = getelementptr inbounds i8, ptr %state.sroa.43.187.i79, i64 -4
  %dst_base.sroa.0.0.i.i85 = select i1 %_0.i.i.i84, ptr %scratch.0, ptr %82
  %dst.i.i86 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i.i85, i64 %state.sroa.27.185.i81
  store i32 %_4.i.i.i.i.i83, ptr %dst.i.i86, align 4, !alias.scope !1640, !noalias !1666
  %_8.i.i87 = zext i1 %_0.i.i.i84 to i64
  %83 = add i64 %state.sroa.27.185.i81, %_8.i.i87
  %_9.i.i88 = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i80, i64 4
  %_4.i.i.i.i26.i = load i32, ptr %_9.i.i88, align 4, !alias.scope !1669, !noalias !1678, !noundef !18
  %_0.i.i27.i = icmp sge i32 %_3.i.i.i.i.i82, %_4.i.i.i.i26.i
  %84 = getelementptr inbounds i8, ptr %state.sroa.43.187.i79, i64 -8
  %dst_base.sroa.0.0.i29.i89 = select i1 %_0.i.i27.i, ptr %scratch.0, ptr %84
  %dst.i31.i90 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29.i89, i64 %83
  store i32 %_4.i.i.i.i26.i, ptr %dst.i31.i90, align 4, !alias.scope !1640, !noalias !1683
  %_8.i33.i91 = zext i1 %_0.i.i27.i to i64
  %85 = add i64 %83, %_8.i33.i91
  %_9.i34.i92 = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i80, i64 8
  %_4.i.i.i.i36.i = load i32, ptr %_9.i34.i92, align 4, !alias.scope !1686, !noalias !1695, !noundef !18
  %_0.i.i37.i = icmp sge i32 %_3.i.i.i.i.i82, %_4.i.i.i.i36.i
  %86 = getelementptr inbounds i8, ptr %state.sroa.43.187.i79, i64 -12
  %dst_base.sroa.0.0.i39.i93 = select i1 %_0.i.i37.i, ptr %scratch.0, ptr %86
  %dst.i41.i94 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39.i93, i64 %85
  store i32 %_4.i.i.i.i36.i, ptr %dst.i41.i94, align 4, !alias.scope !1640, !noalias !1700
  %_8.i43.i95 = zext i1 %_0.i.i37.i to i64
  %87 = add i64 %85, %_8.i43.i95
  %_9.i44.i96 = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i80, i64 12
  %_4.i.i.i.i46.i = load i32, ptr %_9.i44.i96, align 4, !alias.scope !1703, !noalias !1712, !noundef !18
  %_0.i.i47.i = icmp sge i32 %_3.i.i.i.i.i82, %_4.i.i.i.i46.i
  %88 = getelementptr inbounds i8, ptr %state.sroa.43.187.i79, i64 -16
  %dst_base.sroa.0.0.i49.i97 = select i1 %_0.i.i47.i, ptr %scratch.0, ptr %88
  %dst.i51.i98 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49.i97, i64 %87
  store i32 %_4.i.i.i.i46.i, ptr %dst.i51.i98, align 4, !alias.scope !1640, !noalias !1717
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
  %_3.i.i.i.i55.i = load i32, ptr %src, align 4, !alias.scope !1720, !noalias !1729, !noundef !18
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
  call void @llvm.experimental.noalias.scope.decl(metadata !1734)
  call void @llvm.experimental.noalias.scope.decl(metadata !1735)
  call void @llvm.experimental.noalias.scope.decl(metadata !1736)
  call void @llvm.experimental.noalias.scope.decl(metadata !1737)
  call void @llvm.experimental.noalias.scope.decl(metadata !1738)
  call void @llvm.experimental.noalias.scope.decl(metadata !1739)
  call void @llvm.experimental.noalias.scope.decl(metadata !1740)
  call void @llvm.experimental.noalias.scope.decl(metadata !1741)
  %_4.i.i.i.i56.i = load i32, ptr %state.sroa.9.292.i71, align 4, !alias.scope !1742, !noalias !1743, !noundef !18
  %_0.i.i57.i = icmp sge i32 %_3.i.i.i.i55.i, %_4.i.i.i.i56.i
  %90 = getelementptr inbounds i8, ptr %state.sroa.43.293.i70, i64 -4
  %dst_base.sroa.0.0.i59.i73 = select i1 %_0.i.i57.i, ptr %scratch.0, ptr %90
  %dst.i61.i74 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59.i73, i64 %state.sroa.27.291.i72
  store i32 %_4.i.i.i.i56.i, ptr %dst.i61.i74, align 4, !alias.scope !1640, !noalias !1744
  %_8.i63.i75 = zext i1 %_0.i.i57.i to i64
  %91 = add i64 %state.sroa.27.291.i72, %_8.i63.i75
  %_9.i64.i76 = getelementptr inbounds nuw i8, ptr %state.sroa.9.292.i71, i64 4
  %_47.i77 = icmp ult ptr %_9.i64.i76, %loop_end.i52
  br i1 %_47.i77, label %bb18.i69, label %bb21.i54

bb23.i59:                                         ; preds = %bb21.i54
  %92 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa.i57, i64 -4
  %dst.i68.i60 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %state.sroa.27.2.lcssa.i55
  %93 = load i32, ptr %state.sroa.9.2.lcssa.i56, align 4, !alias.scope !1637, !noalias !1747
  store i32 %93, ptr %dst.i68.i60, align 4, !alias.scope !1640, !noalias !1750
  %94 = add i64 %state.sroa.27.2.lcssa.i55, 1
  %_9.i70.i61 = getelementptr inbounds nuw i8, ptr %state.sroa.9.2.lcssa.i56, i64 4
  br label %bb3.i41

bb22.i62:                                         ; preds = %bb21.i54
  %95 = shl i64 %state.sroa.27.2.lcssa.i55, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.sroa.0.0.ph140, ptr nonnull align 4 %scratch.0, i64 %95, i1 false), !alias.scope !1751
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
  %wide.load = load <4 x i32>, ptr %100, align 4, !alias.scope !1640, !noalias !1637
  %reverse = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %wide.load262 = load <4 x i32>, ptr %101, align 4, !alias.scope !1640, !noalias !1637
  %reverse263 = shufflevector <4 x i32> %wide.load262, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %102 = getelementptr i8, ptr %97, i64 16
  store <4 x i32> %reverse, ptr %97, align 4, !alias.scope !1637, !noalias !1640
  store <4 x i32> %reverse263, ptr %102, align 4, !alias.scope !1637, !noalias !1640
  %index.next = add nuw i64 %index, 8
  %103 = icmp eq i64 %index.next, %n.vec
  br i1 %103, label %middle.block, label %vector.body, !llvm.loop !1752

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %_63.i63, %n.vec
  br i1 %cmp.n, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h186cdc7211da2e91E.exit, label %bb42.i66.preheader

bb42.i66.preheader:                               ; preds = %bb42.lr.ph.i65, %middle.block
  %iter.sroa.0.098.i67.ph = phi i64 [ 0, %bb42.lr.ph.i65 ], [ %n.vec, %middle.block ]
  br label %bb42.i66

bb42.i66:                                         ; preds = %bb42.i66.preheader, %bb42.i66
  %iter.sroa.0.098.i67 = phi i64 [ %104, %bb42.i66 ], [ %iter.sroa.0.098.i67.ph, %bb42.i66.preheader ]
  %104 = add nuw i64 %iter.sroa.0.098.i67, 1
  %105 = getelementptr i32, ptr %96, i64 %iter.sroa.0.098.i67
  %106 = xor i64 %iter.sroa.0.098.i67, -1
  %107 = getelementptr i32, ptr %_86.i40, i64 %106
  %108 = load i32, ptr %107, align 4, !alias.scope !1640, !noalias !1637
  store i32 %108, ptr %105, align 4, !alias.scope !1637, !noalias !1640
  %exitcond.not.i68 = icmp eq i64 %104, %_63.i63
  br i1 %exitcond.not.i68, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h186cdc7211da2e91E.exit, label %bb42.i66, !llvm.loop !1753

_ZN4core5slice4sort6stable9quicksort16stable_partition17h186cdc7211da2e91E.exit: ; preds = %bb42.i66, %middle.block
  %_47 = icmp ugt i64 %state.sroa.27.2.lcssa.i55, %v.sroa.16.0132
  br i1 %_47, label %bb27, label %bb28, !prof !1086

bb3.thread:                                       ; preds = %bb22.i62
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  br label %bb22

bb28:                                             ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h186cdc7211da2e91E.exit
  %_54 = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph140, i64 %state.sroa.27.2.lcssa.i55
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_8130 = icmp ult i64 %_63.i63, 33
  br i1 %_8130, label %bb3, label %bb5.lr.ph

bb27:                                             ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h186cdc7211da2e91E.exit
; call core::slice::index::slice_index_fail
  call void @_ZN4core5slice5index16slice_index_fail17h62807bcaa490c9c1E(i64 noundef %state.sroa.27.2.lcssa.i55, i64 noundef %v.sroa.16.0132, i64 noundef %v.sroa.16.0132, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_0766b232215672ee1bd2195fdb153938) #21
  unreachable

bb22:                                             ; preds = %bb3.thread, %bb9.i.i, %bb3, %bb6
  ret void
}

; alloc::raw_vec::RawVec<T,A>::grow_one
; Function Attrs: cold noinline nonlazybind uwtable
define void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h3f9d0af4feec1c41E"(ptr noalias noundef align 8 captures(none) dereferenceable(16) %self) unnamed_addr #3 {
start:
  %self1 = load i64, ptr %self, align 8, !range !1754, !noundef !18
; call alloc::raw_vec::RawVecInner<A>::grow_amortized
  %0 = tail call fastcc { i64, i64 } @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14grow_amortized17h82de1ab87558c3b0E"(ptr noalias noundef align 8 dereferenceable(16) %self, i64 noundef %self1)
  %1 = extractvalue { i64, i64 } %0, 0
  %.not = icmp eq i64 %1, -9223372036854775807
  br i1 %.not, label %bb3, label %bb2, !prof !1755

bb2:                                              ; preds = %start
  %2 = extractvalue { i64, i64 } %0, 1
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %1, i64 %2) #23
  unreachable

bb3:                                              ; preds = %start
  ret void
}

; alloc::raw_vec::RawVecInner<A>::finish_grow
; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11finish_grow17hd79fc674293cf172E"(ptr dead_on_unwind noalias noundef nonnull writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %_0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %self, i64 noundef %cap) unnamed_addr #4 {
start:
  %_21.0.i = shl i64 %cap, 2
  %_21.1.i = icmp ugt i64 %cap, 4611686018427387903
  %_26.i = icmp ugt i64 %_21.0.i, 9223372036854775804
  %or.cond.i = or i1 %_21.1.i, %_26.i
  br i1 %or.cond.i, label %bb8, label %bb11, !prof !589

bb11:                                             ; preds = %start
  %self1.i = load i64, ptr %self, align 8, !range !1754, !alias.scope !1756, !noalias !1759, !noundef !18
  %_6.i = icmp eq i64 %self1.i, 0
  br i1 %_6.i, label %bb5, label %bb3

bb3:                                              ; preds = %bb11
  %0 = shl nuw i64 %self1.i, 2
  %1 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %self3.i = load ptr, ptr %1, align 8, !alias.scope !1756, !noalias !1759, !nonnull !18, !noundef !18
  %cond.i.i = icmp uge i64 %_21.0.i, %0
  tail call void @llvm.assume(i1 %cond.i.i)
; call __rustc::__rust_realloc
  %raw_ptr.i.i = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc14___rust_realloc(ptr noundef nonnull %self3.i, i64 noundef %0, i64 noundef range(i64 1, -9223372036854775807) 4, i64 noundef %_21.0.i) #22
  br label %bb7

bb5:                                              ; preds = %bb11
  %2 = icmp eq i64 %_21.0.i, 0
  br i1 %2, label %bb16, label %bb4.i.i14

bb4.i.i14:                                        ; preds = %bb5
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22
; call __rustc::__rust_alloc
  %3 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i, i64 noundef range(i64 1, -9223372036854775807) 4) #22
  br label %bb7

bb7:                                              ; preds = %bb4.i.i14, %bb3
  %raw_ptr.i.i.pn = phi ptr [ %raw_ptr.i.i, %bb3 ], [ %3, %bb4.i.i14 ]
  %4 = icmp eq ptr %raw_ptr.i.i.pn, null
  br i1 %4, label %bb15, label %bb16

bb15:                                             ; preds = %bb7
  %5 = getelementptr inbounds nuw i8, ptr %_0, i64 8
  store i64 4, ptr %5, align 8
  br label %bb8

bb16:                                             ; preds = %bb5, %bb7
  %raw_ptr.i.i.pn25 = phi ptr [ %raw_ptr.i.i.pn, %bb7 ], [ inttoptr (i64 4 to ptr), %bb5 ]
  %6 = getelementptr inbounds nuw i8, ptr %_0, i64 8
  store ptr %raw_ptr.i.i.pn25, ptr %6, align 8
  br label %bb8

bb8:                                              ; preds = %start, %bb16, %bb15
  %.sink27 = phi i64 [ 16, %bb16 ], [ 16, %bb15 ], [ 8, %start ]
  %_21.0.i.sink = phi i64 [ %_21.0.i, %bb16 ], [ %_21.0.i, %bb15 ], [ 0, %start ]
  %.sink = phi i64 [ 0, %bb16 ], [ 1, %bb15 ], [ 1, %start ]
  %7 = getelementptr inbounds nuw i8, ptr %_0, i64 %.sink27
  store i64 %_21.0.i.sink, ptr %7, align 8
  store i64 %.sink, ptr %_0, align 8
  ret void
}

; alloc::raw_vec::RawVecInner<A>::grow_amortized
; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc { i64, i64 } @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14grow_amortized17h82de1ab87558c3b0E"(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(16) %self, i64 noundef range(i64 0, -9223372036854775808) %len) unnamed_addr #4 personality ptr @rust_eh_personality {
start:
  %self3 = alloca [24 x i8], align 8
  %_26.0 = add nuw i64 %len, 1
  %self5 = load i64, ptr %self, align 8, !range !1754, !noundef !18
  %v16 = shl nuw i64 %self5, 1
  %_0.sroa.0.0.i = tail call noundef i64 @llvm.umax.i64(i64 %_26.0, i64 %v16)
  %_0.sroa.0.0.i15 = tail call noundef i64 @llvm.umax.i64(i64 %_0.sroa.0.0.i, i64 4)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %self3)
; call alloc::raw_vec::RawVecInner<A>::finish_grow
  call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11finish_grow17hd79fc674293cf172E"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %self3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %self, i64 noundef %_0.sroa.0.0.i15)
  %_37 = load i64, ptr %self3, align 8, !range !1761, !noundef !18
  %0 = trunc nuw i64 %_37 to i1
  %1 = getelementptr inbounds nuw i8, ptr %self3, i64 8
  br i1 %0, label %bb18, label %bb19

bb18:                                             ; preds = %start
  %e.0 = load i64, ptr %1, align 8, !range !1762, !noundef !18
  %2 = getelementptr inbounds nuw i8, ptr %self3, i64 16
  %e.1 = load i64, ptr %2, align 8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %self3)
  br label %bb6

bb19:                                             ; preds = %start
  %v.0 = load ptr, ptr %1, align 8, !nonnull !18, !noundef !18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %self3)
  %3 = getelementptr inbounds nuw i8, ptr %self, i64 8
  store ptr %v.0, ptr %3, align 8
  %4 = icmp sgt i64 %_0.sroa.0.0.i15, -1
  tail call void @llvm.assume(i1 %4)
  store i64 %_0.sroa.0.0.i15, ptr %self, align 8
  br label %bb6

bb6:                                              ; preds = %bb18, %bb19
  %_0.sroa.5.0 = phi i64 [ %e.1, %bb18 ], [ undef, %bb19 ]
  %_0.sroa.0.0 = phi i64 [ %e.0, %bb18 ], [ -9223372036854775807, %bb19 ]
  %5 = insertvalue { i64, i64 } poison, i64 %_0.sroa.0.0, 0
  %6 = insertvalue { i64, i64 } %5, i64 %_0.sroa.5.0, 1
  ret { i64, i64 } %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef range(i8 -1, 2) i8 @cmpfunc(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %a, ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %b) unnamed_addr #5 {
start:
  %_3 = load i32, ptr %a, align 4, !noundef !18
  %_4 = load i32, ptr %b, align 4, !noundef !18
  %_0 = tail call i8 @llvm.scmp.i8.i32(i32 %_3, i32 %_4)
  ret i8 %_0
}

; Function Attrs: nonlazybind uwtable
define noundef i32 @f_gold(i32 noundef %k, i64 %0, i64 %1, i32 noundef %n) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %dis = alloca [24 x i8], align 8
  %x.sroa.2.0.extract.shift = lshr i64 %0, 32
  %x.sroa.2.0.extract.trunc = trunc nuw i64 %x.sroa.2.0.extract.shift to i32
  %y.sroa.2.0.extract.shift = lshr i64 %1, 32
  %y.sroa.2.0.extract.trunc = trunc nuw i64 %y.sroa.2.0.extract.shift to i32
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %dis)
  store i64 0, ptr %dis, align 8
  %2 = getelementptr inbounds nuw i8, ptr %dis, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %2, align 8
  %3 = getelementptr inbounds nuw i8, ptr %dis, i64 16
  store i64 0, ptr %3, align 8
  %_2416 = icmp sgt i32 %n, 0
  br i1 %_2416, label %bb1.i, label %bb6

bb9.i.i:                                          ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h89028d718c8aa267E.exit.1"
  %_33.pre.pre = load ptr, ptr %2, align 8
; invoke core::slice::sort::shared::smallsort::insertion_sort_shift_left
  invoke fastcc void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h500061426fbe7d96E(ptr noalias noundef nonnull align 4 %_33.pre.pre, i64 noundef range(i64 0, 2305843009213693952) 2)
          to label %bb6 unwind label %cleanup.loopexit.split-lp

cleanup.loopexit:                                 ; preds = %bb1.i.1, %bb1.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %cleanup

cleanup.loopexit.split-lp:                        ; preds = %bb9.i.i, %panic.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit.split-lp, %cleanup.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %cleanup.loopexit ], [ %lpad.loopexit.split-lp, %cleanup.loopexit.split-lp ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1763)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1766)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1769)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1772)
  %self1.i.i.i.i1.i = load i64, ptr %dis, align 8, !range !1754, !alias.scope !1775, !noalias !1778, !noundef !18
  %_6.i.i.i.i2.i = icmp eq i64 %self1.i.i.i.i1.i, 0
  br i1 %_6.i.i.i.i2.i, label %bb9, label %bb2.i.i.i3.i

bb2.i.i.i3.i:                                     ; preds = %cleanup
  %4 = shl nuw i64 %self1.i.i.i.i1.i, 2
  %self3.i.i.i.i4.i = load ptr, ptr %2, align 8, !alias.scope !1775, !noalias !1778, !nonnull !18, !noundef !18
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i, i64 noundef %4, i64 noundef range(i64 1, -9223372036854775807) 4) #22, !noalias !1780
  br label %bb9

bb6:                                              ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h89028d718c8aa267E.exit", %start, %bb9.i.i
  %_3332 = phi ptr [ %_33.pre.pre, %bb9.i.i ], [ %_15.i.pre, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h89028d718c8aa267E.exit" ], [ inttoptr (i64 4 to ptr), %start ]
  %_3231 = phi i64 [ 2, %bb9.i.i ], [ 1, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h89028d718c8aa267E.exit" ], [ 0, %start ]
  %_23 = sext i32 %k to i64
  %_22 = add nsw i64 %_23, -1
  %_40 = icmp ult i64 %_22, %_3231
  br i1 %_40, label %bb16, label %panic.invoke

bb16:                                             ; preds = %bb6
  %_21 = getelementptr inbounds nuw float, ptr %_3332, i64 %_22
  %_20 = load float, ptr %_21, align 4, !noundef !18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1781)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1784)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1787)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1790)
  %self1.i.i.i.i1.i9 = load i64, ptr %dis, align 8, !range !1754, !alias.scope !1793, !noalias !1796, !noundef !18
  %_6.i.i.i.i2.i10 = icmp eq i64 %self1.i.i.i.i1.i9, 0
  br i1 %_6.i.i.i.i2.i10, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17h6e63235cc0d24036E.exit13", label %bb2.i.i.i3.i11

bb2.i.i.i3.i11:                                   ; preds = %bb16
  %5 = shl nuw i64 %self1.i.i.i.i1.i9, 2
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_3332, i64 noundef %5, i64 noundef range(i64 1, -9223372036854775807) 4) #22, !noalias !1798
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17h6e63235cc0d24036E.exit13"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17h6e63235cc0d24036E.exit13": ; preds = %bb16, %bb2.i.i.i3.i11
  %_0 = tail call i32 @llvm.fptosi.sat.i32.f32(float %_20)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %dis)
  ret i32 %_0

panic.invoke:                                     ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h89028d718c8aa267E.exit.1", %bb6
  %6 = phi i64 [ %_22, %bb6 ], [ 2, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h89028d718c8aa267E.exit.1" ]
  %7 = phi i64 [ %_3231, %bb6 ], [ 2, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h89028d718c8aa267E.exit.1" ]
  %8 = phi ptr [ @alloc_91929aa5fd5ecdf230d71e4a2b4c6739, %bb6 ], [ @alloc_d62f07554f1472b25e34b1cc2dcde560, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h89028d718c8aa267E.exit.1" ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %6, i64 noundef %7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %8) #23
          to label %panic.cont unwind label %cleanup.loopexit.split-lp

panic.cont:                                       ; preds = %panic.invoke
  unreachable

bb1.i:                                            ; preds = %start
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1799)
; invoke alloc::raw_vec::RawVec<T,A>::grow_one
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h3f9d0af4feec1c41E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %dis)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h89028d718c8aa267E.exit" unwind label %cleanup.loopexit

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h89028d718c8aa267E.exit": ; preds = %bb1.i
  %x.sroa.0.0.extract.trunc = trunc i64 %0 to i32
  %_11 = sitofp i32 %x.sroa.0.0.extract.trunc to float
  %_10 = fmul float %_11, %_11
  %y.sroa.0.0.extract.trunc = trunc i64 %1 to i32
  %_16 = sitofp i32 %y.sroa.0.0.extract.trunc to float
  %_15 = fmul float %_16, %_16
  %_9 = fadd float %_10, %_15
  %_15.i.pre = load ptr, ptr %2, align 8, !alias.scope !1799
  store float %_9, ptr %_15.i.pre, align 4, !noalias !1799
  store i64 1, ptr %3, align 8
  %exitcond21.not = icmp eq i32 %n, 1
  br i1 %exitcond21.not, label %bb6, label %bb10.1

bb10.1:                                           ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h89028d718c8aa267E.exit"
  %_11.1 = sitofp i32 %x.sroa.2.0.extract.trunc to float
  %_10.1 = fmul float %_11.1, %_11.1
  %_16.1 = sitofp i32 %y.sroa.2.0.extract.trunc to float
  %_15.1 = fmul float %_16.1, %_16.1
  %_9.1 = fadd float %_10.1, %_15.1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1802)
  %self1.i.1 = load i64, ptr %dis, align 8, !range !1754, !alias.scope !1802, !noundef !18
  %_4.i.1 = icmp eq i64 %self1.i.1, 1
  br i1 %_4.i.1, label %bb1.i.1, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h89028d718c8aa267E.exit.1"

bb1.i.1:                                          ; preds = %bb10.1
; invoke alloc::raw_vec::RawVec<T,A>::grow_one
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h3f9d0af4feec1c41E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %dis)
          to label %"bb1.i.1._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h89028d718c8aa267E.exit.1_crit_edge" unwind label %cleanup.loopexit

"bb1.i.1._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h89028d718c8aa267E.exit.1_crit_edge": ; preds = %bb1.i.1
  %_15.i.1.pre = load ptr, ptr %2, align 8, !alias.scope !1802
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h89028d718c8aa267E.exit.1"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h89028d718c8aa267E.exit.1": ; preds = %"bb1.i.1._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h89028d718c8aa267E.exit.1_crit_edge", %bb10.1
  %_15.i.1 = phi ptr [ %_15.i.1.pre, %"bb1.i.1._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h89028d718c8aa267E.exit.1_crit_edge" ], [ %_15.i.pre, %bb10.1 ]
  %end.i.1 = getelementptr inbounds nuw i8, ptr %_15.i.1, i64 4
  store float %_9.1, ptr %end.i.1, align 4, !noalias !1802
  store i64 2, ptr %3, align 8
  %exitcond21.1.not = icmp eq i32 %n, 2
  br i1 %exitcond21.1.not, label %bb9.i.i, label %panic.invoke

bb9:                                              ; preds = %bb2.i.i.i3.i, %cleanup
  resume { ptr, i32 } %lpad.phi
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1804)
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %compare.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1807)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !1804
  store ptr %compare.i, ptr %is_less.i.i, align 8, !noalias !1810
  %b.i.i = icmp samesign ult i64 %arr.1, 2
  br i1 %b.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h75e7423505bf07c7E.exit", label %bb7.i.i, !prof !1755

bb7.i.i:                                          ; preds = %start
  %b1.i.i = icmp samesign ult i64 %arr.1, 21
  br i1 %b1.i.i, label %bb9.i.i, label %bb10.i.i, !prof !1755

bb10.i.i:                                         ; preds = %bb7.i.i
; call core::slice::sort::stable::driftsort_main
  call void @_ZN4core5slice4sort6stable14driftsort_main17h29c9ac81b22d647fE(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less.i.i)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h75e7423505bf07c7E.exit"

bb9.i.i:                                          ; preds = %bb7.i.i
  %v_end.idx.i.i.i = shl nuw nsw i64 %arr.1, 2
  %v_end.i.i.i = getelementptr inbounds nuw i8, ptr %arr.0, i64 %v_end.idx.i.i.i
  %tail.sroa.0.01.i.i.i = getelementptr inbounds nuw i8, ptr %arr.0, i64 4
  %0 = and i64 %arr.1, 1
  %lcmp.mod.not.not = icmp eq i64 %0, 0
  br i1 %lcmp.mod.not.not, label %bb5.i.i.i.prol, label %bb5.i.i.i.prol.loopexit

bb5.i.i.i.prol:                                   ; preds = %bb9.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1812)
  call void @llvm.experimental.noalias.scope.decl(metadata !1815)
  call void @llvm.experimental.noalias.scope.decl(metadata !1817)
  call void @llvm.experimental.noalias.scope.decl(metadata !1820)
  call void @llvm.experimental.noalias.scope.decl(metadata !1822)
  call void @llvm.experimental.noalias.scope.decl(metadata !1825)
  %_3.i.i.i.i.i.i.i.prol = load i32, ptr %tail.sroa.0.01.i.i.i, align 4, !alias.scope !1827, !noalias !1830, !noundef !18
  %_4.i.i.i.i.i.i.i.prol = load i32, ptr %arr.0, align 4, !alias.scope !1831, !noalias !1832, !noundef !18
  %_0.i.i.i.i.i.prol = icmp slt i32 %_3.i.i.i.i.i.i.i.prol, %_4.i.i.i.i.i.i.i.prol
  br i1 %_0.i.i.i.i.i.prol, label %bb4.i.i.i.i.prol, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h56ae50ec7dbaf211E.exit.i.i.i.prol

bb4.i.i.i.i.prol:                                 ; preds = %bb5.i.i.i.prol, %bb7.i.i.i.i.prol
  %1 = phi i32 [ %_4.i.i.i2.i.i.i.i.prol, %bb7.i.i.i.i.prol ], [ %_4.i.i.i.i.i.i.i.prol, %bb5.i.i.i.prol ]
  %gap_guard.sroa.5.0.i.i.i.i.prol = phi ptr [ %sift.sroa.0.0.i.i.i.i.prol, %bb7.i.i.i.i.prol ], [ %tail.sroa.0.01.i.i.i, %bb5.i.i.i.prol ]
  %sift.sroa.0.0.i.i.i.i.prol = phi ptr [ %2, %bb7.i.i.i.i.prol ], [ %arr.0, %bb5.i.i.i.prol ]
  store i32 %1, ptr %gap_guard.sroa.5.0.i.i.i.i.prol, align 4, !alias.scope !1833, !noalias !1834
  %_18.i.i.i.i.prol = icmp eq ptr %sift.sroa.0.0.i.i.i.i.prol, %arr.0
  br i1 %_18.i.i.i.i.prol, label %bb10.i.i.i.i.prol, label %bb7.i.i.i.i.prol

bb7.i.i.i.i.prol:                                 ; preds = %bb4.i.i.i.i.prol
  %2 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.i.prol, i64 -4
  %_4.i.i.i2.i.i.i.i.prol = load i32, ptr %2, align 4, !alias.scope !1835, !noalias !1842, !noundef !18
  %_0.i3.i.i.i.i.prol = icmp slt i32 %_3.i.i.i.i.i.i.i.prol, %_4.i.i.i2.i.i.i.i.prol
  br i1 %_0.i3.i.i.i.i.prol, label %bb4.i.i.i.i.prol, label %bb10.i.i.i.i.prol

bb10.i.i.i.i.prol:                                ; preds = %bb7.i.i.i.i.prol, %bb4.i.i.i.i.prol
  %sift.sroa.0.0.i.lcssa.i.i.i.prol = phi ptr [ %sift.sroa.0.0.i.i.i.i.prol, %bb7.i.i.i.i.prol ], [ %arr.0, %bb4.i.i.i.i.prol ]
  store i32 %_3.i.i.i.i.i.i.i.prol, ptr %sift.sroa.0.0.i.lcssa.i.i.i.prol, align 4, !alias.scope !1833, !noalias !1846
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h56ae50ec7dbaf211E.exit.i.i.i.prol

_ZN4core5slice4sort6shared9smallsort11insert_tail17h56ae50ec7dbaf211E.exit.i.i.i.prol: ; preds = %bb10.i.i.i.i.prol, %bb5.i.i.i.prol
  %tail.sroa.0.0.i.i.i.prol = getelementptr inbounds nuw i8, ptr %arr.0, i64 8
  br label %bb5.i.i.i.prol.loopexit

bb5.i.i.i.prol.loopexit:                          ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h56ae50ec7dbaf211E.exit.i.i.i.prol, %bb9.i.i
  %tail.sroa.0.04.i.i.i.unr = phi ptr [ %tail.sroa.0.01.i.i.i, %bb9.i.i ], [ %tail.sroa.0.0.i.i.i.prol, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h56ae50ec7dbaf211E.exit.i.i.i.prol ]
  %v.0.pn3.i.i.i.unr = phi ptr [ %arr.0, %bb9.i.i ], [ %tail.sroa.0.01.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h56ae50ec7dbaf211E.exit.i.i.i.prol ]
  %3 = icmp eq i64 %arr.1, 2
  br i1 %3, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h75e7423505bf07c7E.exit", label %bb5.i.i.i

bb5.i.i.i:                                        ; preds = %bb5.i.i.i.prol.loopexit, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h56ae50ec7dbaf211E.exit.i.i.i.1
  %tail.sroa.0.04.i.i.i = phi ptr [ %tail.sroa.0.0.i.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h56ae50ec7dbaf211E.exit.i.i.i.1 ], [ %tail.sroa.0.04.i.i.i.unr, %bb5.i.i.i.prol.loopexit ]
  %v.0.pn3.i.i.i = phi ptr [ %tail.sroa.0.0.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h56ae50ec7dbaf211E.exit.i.i.i.1 ], [ %v.0.pn3.i.i.i.unr, %bb5.i.i.i.prol.loopexit ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1812)
  call void @llvm.experimental.noalias.scope.decl(metadata !1815)
  call void @llvm.experimental.noalias.scope.decl(metadata !1817)
  call void @llvm.experimental.noalias.scope.decl(metadata !1820)
  call void @llvm.experimental.noalias.scope.decl(metadata !1822)
  call void @llvm.experimental.noalias.scope.decl(metadata !1825)
  %_3.i.i.i.i.i.i.i = load i32, ptr %tail.sroa.0.04.i.i.i, align 4, !alias.scope !1827, !noalias !1830, !noundef !18
  %_4.i.i.i.i.i.i.i = load i32, ptr %v.0.pn3.i.i.i, align 4, !alias.scope !1831, !noalias !1832, !noundef !18
  %_0.i.i.i.i.i = icmp slt i32 %_3.i.i.i.i.i.i.i, %_4.i.i.i.i.i.i.i
  br i1 %_0.i.i.i.i.i, label %bb4.i.i.i.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h56ae50ec7dbaf211E.exit.i.i.i

bb4.i.i.i.i:                                      ; preds = %bb5.i.i.i, %bb7.i.i.i.i
  %4 = phi i32 [ %_4.i.i.i2.i.i.i.i, %bb7.i.i.i.i ], [ %_4.i.i.i.i.i.i.i, %bb5.i.i.i ]
  %gap_guard.sroa.5.0.i.i.i.i = phi ptr [ %sift.sroa.0.0.i.i.i.i, %bb7.i.i.i.i ], [ %tail.sroa.0.04.i.i.i, %bb5.i.i.i ]
  %sift.sroa.0.0.i.i.i.i = phi ptr [ %5, %bb7.i.i.i.i ], [ %v.0.pn3.i.i.i, %bb5.i.i.i ]
  store i32 %4, ptr %gap_guard.sroa.5.0.i.i.i.i, align 4, !alias.scope !1833, !noalias !1834
  %_18.i.i.i.i = icmp eq ptr %sift.sroa.0.0.i.i.i.i, %arr.0
  br i1 %_18.i.i.i.i, label %bb10.i.i.i.i, label %bb7.i.i.i.i

bb7.i.i.i.i:                                      ; preds = %bb4.i.i.i.i
  %5 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.i, i64 -4
  %_4.i.i.i2.i.i.i.i = load i32, ptr %5, align 4, !alias.scope !1835, !noalias !1842, !noundef !18
  %_0.i3.i.i.i.i = icmp slt i32 %_3.i.i.i.i.i.i.i, %_4.i.i.i2.i.i.i.i
  br i1 %_0.i3.i.i.i.i, label %bb4.i.i.i.i, label %bb10.i.i.i.i

bb10.i.i.i.i:                                     ; preds = %bb7.i.i.i.i, %bb4.i.i.i.i
  %sift.sroa.0.0.i.lcssa.i.i.i = phi ptr [ %sift.sroa.0.0.i.i.i.i, %bb7.i.i.i.i ], [ %arr.0, %bb4.i.i.i.i ]
  store i32 %_3.i.i.i.i.i.i.i, ptr %sift.sroa.0.0.i.lcssa.i.i.i, align 4, !alias.scope !1833, !noalias !1846
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h56ae50ec7dbaf211E.exit.i.i.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h56ae50ec7dbaf211E.exit.i.i.i: ; preds = %bb10.i.i.i.i, %bb5.i.i.i
  %tail.sroa.0.0.i.i.i = getelementptr inbounds nuw i8, ptr %tail.sroa.0.04.i.i.i, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !1851)
  call void @llvm.experimental.noalias.scope.decl(metadata !1853)
  call void @llvm.experimental.noalias.scope.decl(metadata !1855)
  call void @llvm.experimental.noalias.scope.decl(metadata !1857)
  call void @llvm.experimental.noalias.scope.decl(metadata !1859)
  call void @llvm.experimental.noalias.scope.decl(metadata !1861)
  %_3.i.i.i.i.i.i.i.1 = load i32, ptr %tail.sroa.0.0.i.i.i, align 4, !alias.scope !1863, !noalias !1864, !noundef !18
  %_4.i.i.i.i.i.i.i.1 = load i32, ptr %tail.sroa.0.04.i.i.i, align 4, !alias.scope !1865, !noalias !1866, !noundef !18
  %_0.i.i.i.i.i.1 = icmp slt i32 %_3.i.i.i.i.i.i.i.1, %_4.i.i.i.i.i.i.i.1
  br i1 %_0.i.i.i.i.i.1, label %bb4.i.i.i.i.1, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h56ae50ec7dbaf211E.exit.i.i.i.1

bb4.i.i.i.i.1:                                    ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h56ae50ec7dbaf211E.exit.i.i.i, %bb7.i.i.i.i.1
  %6 = phi i32 [ %_4.i.i.i2.i.i.i.i.1, %bb7.i.i.i.i.1 ], [ %_4.i.i.i.i.i.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h56ae50ec7dbaf211E.exit.i.i.i ]
  %gap_guard.sroa.5.0.i.i.i.i.1 = phi ptr [ %sift.sroa.0.0.i.i.i.i.1, %bb7.i.i.i.i.1 ], [ %tail.sroa.0.0.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h56ae50ec7dbaf211E.exit.i.i.i ]
  %sift.sroa.0.0.i.i.i.i.1 = phi ptr [ %7, %bb7.i.i.i.i.1 ], [ %tail.sroa.0.04.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h56ae50ec7dbaf211E.exit.i.i.i ]
  store i32 %6, ptr %gap_guard.sroa.5.0.i.i.i.i.1, align 4, !alias.scope !1833, !noalias !1834
  %_18.i.i.i.i.1 = icmp eq ptr %sift.sroa.0.0.i.i.i.i.1, %arr.0
  br i1 %_18.i.i.i.i.1, label %bb10.i.i.i.i.1, label %bb7.i.i.i.i.1

bb7.i.i.i.i.1:                                    ; preds = %bb4.i.i.i.i.1
  %7 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.i.1, i64 -4
  %_4.i.i.i2.i.i.i.i.1 = load i32, ptr %7, align 4, !alias.scope !1835, !noalias !1842, !noundef !18
  %_0.i3.i.i.i.i.1 = icmp slt i32 %_3.i.i.i.i.i.i.i.1, %_4.i.i.i2.i.i.i.i.1
  br i1 %_0.i3.i.i.i.i.1, label %bb4.i.i.i.i.1, label %bb10.i.i.i.i.1

bb10.i.i.i.i.1:                                   ; preds = %bb7.i.i.i.i.1, %bb4.i.i.i.i.1
  %sift.sroa.0.0.i.lcssa.i.i.i.1 = phi ptr [ %sift.sroa.0.0.i.i.i.i.1, %bb7.i.i.i.i.1 ], [ %arr.0, %bb4.i.i.i.i.1 ]
  store i32 %_3.i.i.i.i.i.i.i.1, ptr %sift.sroa.0.0.i.lcssa.i.i.i.1, align 4, !alias.scope !1833, !noalias !1846
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h56ae50ec7dbaf211E.exit.i.i.i.1

_ZN4core5slice4sort6shared9smallsort11insert_tail17h56ae50ec7dbaf211E.exit.i.i.i.1: ; preds = %bb10.i.i.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h56ae50ec7dbaf211E.exit.i.i.i
  %tail.sroa.0.0.i.i.i.1 = getelementptr inbounds nuw i8, ptr %tail.sroa.0.04.i.i.i, i64 8
  %_11.not.i.i.i.1 = icmp eq ptr %tail.sroa.0.0.i.i.i.1, %v_end.i.i.i
  br i1 %_11.not.i.i.i.1, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h75e7423505bf07c7E.exit", label %bb5.i.i.i

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h75e7423505bf07c7E.exit": ; preds = %bb5.i.i.i.prol.loopexit, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h56ae50ec7dbaf211E.exit.i.i.i.1, %start, %bb10.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !1804
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %compare.i)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #10

; core::panicking::panic_fmt
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking9panic_fmt17ha4414e4328fe24a0E(ptr noundef nonnull, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #11

; core::panicking::panic_bounds_check
; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #13

; core::slice::sort::shared::smallsort::panic_on_ord_violation
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() unnamed_addr #11

; core::slice::index::slice_index_fail
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core5slice5index16slice_index_fail17h62807bcaa490c9c1E(i64 noundef, i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #14

; core::slice::sort::stable::drift::sqrt_approx
; Function Attrs: nonlazybind uwtable
declare noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h72a4dc1ae46294f4E(i64 noundef) unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #14

; core::option::unwrap_failed
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #11

; __rustc::__rust_no_alloc_shim_is_unstable_v2
; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #7

; __rustc::__rust_alloc
; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef) unnamed_addr #15

; __rustc::__rust_dealloc
; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr allocptr noundef, i64 noundef, i64 noundef) unnamed_addr #16

; __rustc::__rust_realloc
; Function Attrs: nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable
declare noalias noundef ptr @_RNvCsdBezzDwma51_7___rustc14___rust_realloc(ptr allocptr noundef, i64 noundef, i64 allocalign noundef, i64 noundef) unnamed_addr #17

; alloc::raw_vec::handle_error
; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #18

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.scmp.i8.i32(i32, i32) #14

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fptosi.sat.i32.f32(float) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #20

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { cold nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #14 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsdBezzDwma51_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { noinline noreturn }
attributes #22 = { nounwind }
attributes #23 = { noreturn }
attributes #24 = { noinline }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.93.1 (01f6ddf75 2026-02-11)"}
!3 = !{!4}
!4 = distinct !{!4, !5, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %a"}
!5 = distinct !{!5, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E"}
!6 = !{!7}
!7 = distinct !{!7, !5, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %b"}
!8 = !{!9}
!9 = distinct !{!9, !10, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %a"}
!10 = distinct !{!10, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E"}
!11 = !{!12}
!12 = distinct !{!12, !13, !"_ZN4core5slice4sort6shared5pivot7median317h10f5e7d7bf5b7b20E: %c"}
!13 = distinct !{!13, !"_ZN4core5slice4sort6shared5pivot7median317h10f5e7d7bf5b7b20E"}
!14 = !{!15}
!15 = distinct !{!15, !10, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %b"}
!16 = !{!9, !4}
!17 = !{!15, !7, !12}
!18 = !{}
!19 = !{!15, !7}
!20 = !{!9, !4, !12}
!21 = !{!"branch_weights", i32 1, i32 4001}
!22 = !{!9, !15, !4, !7, !12}
!23 = !{!24}
!24 = distinct !{!24, !25, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %b"}
!25 = distinct !{!25, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E"}
!26 = !{!27}
!27 = distinct !{!27, !28, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %b"}
!28 = distinct !{!28, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E"}
!29 = !{!27, !24}
!30 = !{!31, !32}
!31 = distinct !{!31, !28, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %a"}
!32 = distinct !{!32, !25, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %a"}
!33 = !{!31, !27, !32, !24}
!34 = !{!35, !37, !38, !40}
!35 = distinct !{!35, !36, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %a"}
!36 = distinct !{!36, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E"}
!37 = distinct !{!37, !36, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %b"}
!38 = distinct !{!38, !39, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %a"}
!39 = distinct !{!39, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E"}
!40 = distinct !{!40, !39, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %b"}
!41 = !{!42}
!42 = distinct !{!42, !43, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a"}
!43 = distinct !{!43, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E"}
!44 = !{!45}
!45 = distinct !{!45, !43, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b"}
!46 = !{!47}
!47 = distinct !{!47, !48, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0"}
!48 = distinct !{!48, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E"}
!49 = !{!50}
!50 = distinct !{!50, !51, !"_ZN4core5slice4sort6shared5pivot7median317h7965bf09953299d8E: %c"}
!51 = distinct !{!51, !"_ZN4core5slice4sort6shared5pivot7median317h7965bf09953299d8E"}
!52 = !{!53}
!53 = distinct !{!53, !48, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1"}
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
!66 = distinct !{!66, !67, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1"}
!67 = distinct !{!67, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E"}
!68 = distinct !{!68, !69, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b"}
!69 = distinct !{!69, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E"}
!70 = !{!71, !72, !73}
!71 = distinct !{!71, !65, !"cmpfunc: %a"}
!72 = distinct !{!72, !67, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0"}
!73 = distinct !{!73, !69, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a"}
!74 = !{!75}
!75 = distinct !{!75, !76, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %a"}
!76 = distinct !{!76, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E"}
!77 = !{!78}
!78 = distinct !{!78, !76, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %b"}
!79 = !{!80}
!80 = distinct !{!80, !81, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %a"}
!81 = distinct !{!81, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E"}
!82 = !{!83}
!83 = distinct !{!83, !81, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %b"}
!84 = !{!80, !75}
!85 = !{!83, !78}
!86 = !{!80, !83, !75, !78}
!87 = !{!88}
!88 = distinct !{!88, !89, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %a"}
!89 = distinct !{!89, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E"}
!90 = !{!91}
!91 = distinct !{!91, !89, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %b"}
!92 = !{!93}
!93 = distinct !{!93, !94, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %a"}
!94 = distinct !{!94, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E"}
!95 = !{!96}
!96 = distinct !{!96, !94, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %b"}
!97 = !{!93, !88}
!98 = !{!96, !91}
!99 = !{!93, !96, !88, !91}
!100 = !{!101}
!101 = distinct !{!101, !102, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %a"}
!102 = distinct !{!102, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E"}
!103 = !{!104}
!104 = distinct !{!104, !102, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %b"}
!105 = !{!106}
!106 = distinct !{!106, !107, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %a"}
!107 = distinct !{!107, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E"}
!108 = !{!109}
!109 = distinct !{!109, !107, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %b"}
!110 = !{!106, !101}
!111 = !{!109, !104}
!112 = !{!106, !109, !101, !104}
!113 = !{!114}
!114 = distinct !{!114, !115, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %a"}
!115 = distinct !{!115, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E"}
!116 = !{!117}
!117 = distinct !{!117, !115, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %b"}
!118 = !{!119}
!119 = distinct !{!119, !120, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %a"}
!120 = distinct !{!120, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E"}
!121 = !{!122}
!122 = distinct !{!122, !120, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %b"}
!123 = !{!119, !114}
!124 = !{!122, !117}
!125 = !{!119, !122, !114, !117}
!126 = !{!127}
!127 = distinct !{!127, !128, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %a"}
!128 = distinct !{!128, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E"}
!129 = !{!130}
!130 = distinct !{!130, !128, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %b"}
!131 = !{!132}
!132 = distinct !{!132, !133, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %a"}
!133 = distinct !{!133, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E"}
!134 = !{!135}
!135 = distinct !{!135, !133, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %b"}
!136 = !{!132, !127}
!137 = !{!135, !130}
!138 = !{!132, !135, !127, !130}
!139 = !{!140}
!140 = distinct !{!140, !141, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a"}
!141 = distinct !{!141, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E"}
!142 = !{!143}
!143 = distinct !{!143, !141, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b"}
!144 = !{!145}
!145 = distinct !{!145, !146, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0"}
!146 = distinct !{!146, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E"}
!147 = !{!148}
!148 = distinct !{!148, !146, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1"}
!149 = !{!150}
!150 = distinct !{!150, !151, !"cmpfunc: %a"}
!151 = distinct !{!151, !"cmpfunc"}
!152 = !{!153}
!153 = distinct !{!153, !151, !"cmpfunc: %b"}
!154 = !{!150, !145, !140}
!155 = !{!153, !148, !143}
!156 = !{!157}
!157 = distinct !{!157, !158, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a"}
!158 = distinct !{!158, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E"}
!159 = !{!160}
!160 = distinct !{!160, !158, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b"}
!161 = !{!162}
!162 = distinct !{!162, !163, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0"}
!163 = distinct !{!163, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E"}
!164 = !{!165}
!165 = distinct !{!165, !163, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1"}
!166 = !{!167}
!167 = distinct !{!167, !168, !"cmpfunc: %a"}
!168 = distinct !{!168, !"cmpfunc"}
!169 = !{!170}
!170 = distinct !{!170, !168, !"cmpfunc: %b"}
!171 = !{!167, !162, !157}
!172 = !{!170, !165, !160}
!173 = !{!174}
!174 = distinct !{!174, !175, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a"}
!175 = distinct !{!175, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E"}
!176 = !{!177}
!177 = distinct !{!177, !175, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b"}
!178 = !{!179}
!179 = distinct !{!179, !180, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0"}
!180 = distinct !{!180, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E"}
!181 = !{!182}
!182 = distinct !{!182, !180, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1"}
!183 = !{!184}
!184 = distinct !{!184, !185, !"cmpfunc: %a"}
!185 = distinct !{!185, !"cmpfunc"}
!186 = !{!187}
!187 = distinct !{!187, !185, !"cmpfunc: %b"}
!188 = !{!184, !179, !174}
!189 = !{!187, !182, !177}
!190 = !{!191}
!191 = distinct !{!191, !192, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a"}
!192 = distinct !{!192, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E"}
!193 = !{!194}
!194 = distinct !{!194, !192, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b"}
!195 = !{!196}
!196 = distinct !{!196, !197, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0"}
!197 = distinct !{!197, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E"}
!198 = !{!199}
!199 = distinct !{!199, !197, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1"}
!200 = !{!201}
!201 = distinct !{!201, !202, !"cmpfunc: %a"}
!202 = distinct !{!202, !"cmpfunc"}
!203 = !{!204}
!204 = distinct !{!204, !202, !"cmpfunc: %b"}
!205 = !{!201, !196, !191}
!206 = !{!204, !199, !194}
!207 = !{!208}
!208 = distinct !{!208, !209, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a"}
!209 = distinct !{!209, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E"}
!210 = !{!211}
!211 = distinct !{!211, !209, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b"}
!212 = !{!213}
!213 = distinct !{!213, !214, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0"}
!214 = distinct !{!214, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E"}
!215 = !{!216}
!216 = distinct !{!216, !214, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1"}
!217 = !{!218}
!218 = distinct !{!218, !219, !"cmpfunc: %a"}
!219 = distinct !{!219, !"cmpfunc"}
!220 = !{!221}
!221 = distinct !{!221, !219, !"cmpfunc: %b"}
!222 = !{!218, !213, !208}
!223 = !{!221, !216, !211}
!224 = !{!225}
!225 = distinct !{!225, !226, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a"}
!226 = distinct !{!226, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E"}
!227 = !{!228}
!228 = distinct !{!228, !226, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b"}
!229 = !{!230}
!230 = distinct !{!230, !231, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0"}
!231 = distinct !{!231, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E"}
!232 = !{!233}
!233 = distinct !{!233, !231, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1"}
!234 = !{!235}
!235 = distinct !{!235, !236, !"cmpfunc: %a"}
!236 = distinct !{!236, !"cmpfunc"}
!237 = !{!238}
!238 = distinct !{!238, !236, !"cmpfunc: %b"}
!239 = !{!235, !230, !225}
!240 = !{!238, !233, !228}
!241 = !{!242}
!242 = distinct !{!242, !243, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a"}
!243 = distinct !{!243, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E"}
!244 = !{!245}
!245 = distinct !{!245, !243, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b"}
!246 = !{!247}
!247 = distinct !{!247, !248, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0"}
!248 = distinct !{!248, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E"}
!249 = !{!250}
!250 = distinct !{!250, !248, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1"}
!251 = !{!252}
!252 = distinct !{!252, !253, !"cmpfunc: %a"}
!253 = distinct !{!253, !"cmpfunc"}
!254 = !{!255}
!255 = distinct !{!255, !253, !"cmpfunc: %b"}
!256 = !{!252, !247, !242}
!257 = !{!255, !250, !245}
!258 = !{!259}
!259 = distinct !{!259, !260, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a"}
!260 = distinct !{!260, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E"}
!261 = !{!262}
!262 = distinct !{!262, !260, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b"}
!263 = !{!264}
!264 = distinct !{!264, !265, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0"}
!265 = distinct !{!265, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E"}
!266 = !{!267}
!267 = distinct !{!267, !265, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1"}
!268 = !{!269}
!269 = distinct !{!269, !270, !"cmpfunc: %a"}
!270 = distinct !{!270, !"cmpfunc"}
!271 = !{!272}
!272 = distinct !{!272, !270, !"cmpfunc: %b"}
!273 = !{!269, !264, !259}
!274 = !{!272, !267, !262}
!275 = !{!276}
!276 = distinct !{!276, !277, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a"}
!277 = distinct !{!277, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E"}
!278 = !{!279}
!279 = distinct !{!279, !277, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b"}
!280 = !{!281}
!281 = distinct !{!281, !282, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0"}
!282 = distinct !{!282, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E"}
!283 = !{!284}
!284 = distinct !{!284, !282, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1"}
!285 = !{!286}
!286 = distinct !{!286, !287, !"cmpfunc: %a"}
!287 = distinct !{!287, !"cmpfunc"}
!288 = !{!289}
!289 = distinct !{!289, !287, !"cmpfunc: %b"}
!290 = !{!286, !281, !276}
!291 = !{!289, !284, !279}
!292 = !{!293}
!293 = distinct !{!293, !294, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a"}
!294 = distinct !{!294, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E"}
!295 = !{!296}
!296 = distinct !{!296, !294, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b"}
!297 = !{!298}
!298 = distinct !{!298, !299, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0"}
!299 = distinct !{!299, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E"}
!300 = !{!301}
!301 = distinct !{!301, !299, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1"}
!302 = !{!303}
!303 = distinct !{!303, !304, !"cmpfunc: %a"}
!304 = distinct !{!304, !"cmpfunc"}
!305 = !{!306}
!306 = distinct !{!306, !304, !"cmpfunc: %b"}
!307 = !{!303, !298, !293}
!308 = !{!306, !301, !296}
!309 = !{!310}
!310 = distinct !{!310, !311, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h9a78ceb788512c3fE: %v.0"}
!311 = distinct !{!311, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h9a78ceb788512c3fE"}
!312 = !{!313, !315, !317, !310}
!313 = distinct !{!313, !314, !"cmpfunc: %b"}
!314 = distinct !{!314, !"cmpfunc"}
!315 = distinct !{!315, !316, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1"}
!316 = distinct !{!316, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E"}
!317 = distinct !{!317, !318, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b"}
!318 = distinct !{!318, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E"}
!319 = !{!320, !321, !322, !323}
!320 = distinct !{!320, !314, !"cmpfunc: %a"}
!321 = distinct !{!321, !316, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0"}
!322 = distinct !{!322, !318, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a"}
!323 = distinct !{!323, !324, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h123fe25a22554e1dE: %_0"}
!324 = distinct !{!324, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h123fe25a22554e1dE"}
!325 = !{!323, !326, !310}
!326 = distinct !{!326, !324, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h123fe25a22554e1dE: %is_less"}
!327 = !{!328, !330, !332, !310}
!328 = distinct !{!328, !329, !"cmpfunc: %b"}
!329 = distinct !{!329, !"cmpfunc"}
!330 = distinct !{!330, !331, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1"}
!331 = distinct !{!331, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E"}
!332 = distinct !{!332, !333, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b"}
!333 = distinct !{!333, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E"}
!334 = !{!335, !336, !337, !338}
!335 = distinct !{!335, !329, !"cmpfunc: %a"}
!336 = distinct !{!336, !331, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0"}
!337 = distinct !{!337, !333, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a"}
!338 = distinct !{!338, !339, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hfcb97d1e7d3bd007E: %_0"}
!339 = distinct !{!339, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hfcb97d1e7d3bd007E"}
!340 = !{!338, !341, !310}
!341 = distinct !{!341, !339, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hfcb97d1e7d3bd007E: %is_less"}
!342 = !{!343}
!343 = distinct !{!343, !318, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a:It1"}
!344 = !{!345}
!345 = distinct !{!345, !318, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b:It1"}
!346 = !{!347}
!347 = distinct !{!347, !316, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0:It1"}
!348 = !{!323}
!349 = !{!350}
!350 = distinct !{!350, !316, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1:It1"}
!351 = !{!352}
!352 = distinct !{!352, !314, !"cmpfunc: %a:It1"}
!353 = !{!354}
!354 = distinct !{!354, !314, !"cmpfunc: %b:It1"}
!355 = !{!352, !347, !343, !310}
!356 = !{!354, !350, !345, !323}
!357 = !{!354, !350, !345, !310}
!358 = !{!352, !347, !343, !323}
!359 = !{!360}
!360 = distinct !{!360, !333, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a:It1"}
!361 = !{!362}
!362 = distinct !{!362, !333, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b:It1"}
!363 = !{!364}
!364 = distinct !{!364, !331, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0:It1"}
!365 = !{!338}
!366 = !{!367}
!367 = distinct !{!367, !331, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1:It1"}
!368 = !{!369}
!369 = distinct !{!369, !329, !"cmpfunc: %a:It1"}
!370 = !{!371}
!371 = distinct !{!371, !329, !"cmpfunc: %b:It1"}
!372 = !{!369, !364, !360, !310}
!373 = !{!371, !367, !362, !338}
!374 = !{!371, !367, !362, !310}
!375 = !{!369, !364, !360, !338}
!376 = !{!377}
!377 = distinct !{!377, !318, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a:It2"}
!378 = !{!379}
!379 = distinct !{!379, !318, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b:It2"}
!380 = !{!381}
!381 = distinct !{!381, !316, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0:It2"}
!382 = !{!383}
!383 = distinct !{!383, !316, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1:It2"}
!384 = !{!385}
!385 = distinct !{!385, !314, !"cmpfunc: %a:It2"}
!386 = !{!387}
!387 = distinct !{!387, !314, !"cmpfunc: %b:It2"}
!388 = !{!385, !381, !377, !310}
!389 = !{!387, !383, !379, !323}
!390 = !{!387, !383, !379, !310}
!391 = !{!385, !381, !377, !323}
!392 = !{!393}
!393 = distinct !{!393, !333, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a:It2"}
!394 = !{!395}
!395 = distinct !{!395, !333, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b:It2"}
!396 = !{!397}
!397 = distinct !{!397, !331, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0:It2"}
!398 = !{!399}
!399 = distinct !{!399, !331, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1:It2"}
!400 = !{!401}
!401 = distinct !{!401, !329, !"cmpfunc: %a:It2"}
!402 = !{!403}
!403 = distinct !{!403, !329, !"cmpfunc: %b:It2"}
!404 = !{!401, !397, !393, !310}
!405 = !{!403, !399, !395, !338}
!406 = !{!403, !399, !395, !310}
!407 = !{!401, !397, !393, !338}
!408 = !{!409}
!409 = distinct !{!409, !318, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a:It3"}
!410 = !{!411}
!411 = distinct !{!411, !318, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b:It3"}
!412 = !{!413}
!413 = distinct !{!413, !316, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0:It3"}
!414 = !{!415}
!415 = distinct !{!415, !316, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1:It3"}
!416 = !{!417}
!417 = distinct !{!417, !314, !"cmpfunc: %a:It3"}
!418 = !{!419}
!419 = distinct !{!419, !314, !"cmpfunc: %b:It3"}
!420 = !{!417, !413, !409, !310}
!421 = !{!419, !415, !411, !323}
!422 = !{!419, !415, !411, !310}
!423 = !{!417, !413, !409, !323}
!424 = !{!425}
!425 = distinct !{!425, !333, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a:It3"}
!426 = !{!427}
!427 = distinct !{!427, !333, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b:It3"}
!428 = !{!429}
!429 = distinct !{!429, !331, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0:It3"}
!430 = !{!431}
!431 = distinct !{!431, !331, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1:It3"}
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
!442 = distinct !{!442, !443, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hda7045743ed9389cE: %v.0"}
!443 = distinct !{!443, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hda7045743ed9389cE"}
!444 = !{!445}
!445 = distinct !{!445, !446, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %a"}
!446 = distinct !{!446, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E"}
!447 = !{!448}
!448 = distinct !{!448, !446, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %b"}
!449 = !{!450}
!450 = distinct !{!450, !451, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %a"}
!451 = distinct !{!451, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E"}
!452 = !{!453}
!453 = distinct !{!453, !454, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hb2b148d1a9d4a3a5E: %_0"}
!454 = distinct !{!454, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hb2b148d1a9d4a3a5E"}
!455 = !{!456}
!456 = distinct !{!456, !451, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %b"}
!457 = !{!450, !445, !442}
!458 = !{!456, !448, !453}
!459 = !{!456, !448, !442}
!460 = !{!450, !445, !453}
!461 = !{!450, !456, !445, !448, !453, !442}
!462 = !{!453, !463}
!463 = distinct !{!463, !454, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hb2b148d1a9d4a3a5E: %is_less"}
!464 = !{!453, !463, !442}
!465 = !{!466}
!466 = distinct !{!466, !467, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %a"}
!467 = distinct !{!467, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E"}
!468 = !{!469}
!469 = distinct !{!469, !467, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %b"}
!470 = !{!471}
!471 = distinct !{!471, !472, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %a"}
!472 = distinct !{!472, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E"}
!473 = !{!474}
!474 = distinct !{!474, !475, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h811c9f613b35c0b0E: %_0"}
!475 = distinct !{!475, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h811c9f613b35c0b0E"}
!476 = !{!477}
!477 = distinct !{!477, !472, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %b"}
!478 = !{!471, !466, !442}
!479 = !{!477, !469, !474}
!480 = !{!477, !469, !442}
!481 = !{!471, !466, !474}
!482 = !{!471, !477, !466, !469, !474, !442}
!483 = !{!474, !484}
!484 = distinct !{!484, !475, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h811c9f613b35c0b0E: %is_less"}
!485 = !{!474, !484, !442}
!486 = !{!487}
!487 = distinct !{!487, !446, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %a:It1"}
!488 = !{!489}
!489 = distinct !{!489, !446, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %b:It1"}
!490 = !{!491}
!491 = distinct !{!491, !451, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %a:It1"}
!492 = !{!493}
!493 = distinct !{!493, !451, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %b:It1"}
!494 = !{!491, !487, !442}
!495 = !{!493, !489, !453}
!496 = !{!493, !489, !442}
!497 = !{!491, !487, !453}
!498 = !{!499}
!499 = distinct !{!499, !467, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %a:It1"}
!500 = !{!501}
!501 = distinct !{!501, !467, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %b:It1"}
!502 = !{!503}
!503 = distinct !{!503, !472, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %a:It1"}
!504 = !{!505}
!505 = distinct !{!505, !472, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %b:It1"}
!506 = !{!503, !499, !442}
!507 = !{!505, !501, !474}
!508 = !{!505, !501, !442}
!509 = !{!503, !499, !474}
!510 = !{!511}
!511 = distinct !{!511, !446, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %a:It2"}
!512 = !{!513}
!513 = distinct !{!513, !446, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %b:It2"}
!514 = !{!515}
!515 = distinct !{!515, !451, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %a:It2"}
!516 = !{!517}
!517 = distinct !{!517, !451, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %b:It2"}
!518 = !{!515, !511, !442}
!519 = !{!517, !513, !453}
!520 = !{!517, !513, !442}
!521 = !{!515, !511, !453}
!522 = !{!523}
!523 = distinct !{!523, !467, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %a:It2"}
!524 = !{!525}
!525 = distinct !{!525, !467, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %b:It2"}
!526 = !{!527}
!527 = distinct !{!527, !472, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %a:It2"}
!528 = !{!529}
!529 = distinct !{!529, !472, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %b:It2"}
!530 = !{!527, !523, !442}
!531 = !{!529, !525, !474}
!532 = !{!529, !525, !442}
!533 = !{!527, !523, !474}
!534 = !{!535}
!535 = distinct !{!535, !446, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %a:It3"}
!536 = !{!537}
!537 = distinct !{!537, !446, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %b:It3"}
!538 = !{!539}
!539 = distinct !{!539, !451, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %a:It3"}
!540 = !{!541}
!541 = distinct !{!541, !451, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %b:It3"}
!542 = !{!539, !535, !442}
!543 = !{!541, !537, !453}
!544 = !{!541, !537, !442}
!545 = !{!539, !535, !453}
!546 = !{!547}
!547 = distinct !{!547, !467, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %a:It3"}
!548 = !{!549}
!549 = distinct !{!549, !467, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %b:It3"}
!550 = !{!551}
!551 = distinct !{!551, !472, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %a:It3"}
!552 = !{!553}
!553 = distinct !{!553, !472, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %b:It3"}
!554 = !{!551, !547, !442}
!555 = !{!553, !549, !474}
!556 = !{!553, !549, !442}
!557 = !{!551, !547, !474}
!558 = !{!559}
!559 = distinct !{!559, !560, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %a"}
!560 = distinct !{!560, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E"}
!561 = !{!562}
!562 = distinct !{!562, !560, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %b"}
!563 = !{!564}
!564 = distinct !{!564, !565, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %a"}
!565 = distinct !{!565, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E"}
!566 = !{!567}
!567 = distinct !{!567, !565, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %b"}
!568 = !{!564, !559}
!569 = !{!567, !562}
!570 = !{!564, !567, !559, !562}
!571 = !{!572, !574}
!572 = distinct !{!572, !573, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %b"}
!573 = distinct !{!573, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E"}
!574 = distinct !{!574, !575, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %b"}
!575 = distinct !{!575, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E"}
!576 = !{!577, !578}
!577 = distinct !{!577, !573, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %a"}
!578 = distinct !{!578, !575, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %a"}
!579 = !{!580, !582}
!580 = distinct !{!580, !581, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0fd8ed5edd0e04a3E: %self"}
!581 = distinct !{!581, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0fd8ed5edd0e04a3E"}
!582 = distinct !{!582, !583, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$f32$GT$$GT$17h1b2519a8f05f1306E: %_1"}
!583 = distinct !{!583, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$f32$GT$$GT$17h1b2519a8f05f1306E"}
!584 = !{!585, !587}
!585 = distinct !{!585, !586, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0fd8ed5edd0e04a3E: %self"}
!586 = distinct !{!586, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0fd8ed5edd0e04a3E"}
!587 = distinct !{!587, !588, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$f32$GT$$GT$17h1b2519a8f05f1306E: %_1"}
!588 = distinct !{!588, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$f32$GT$$GT$17h1b2519a8f05f1306E"}
!589 = !{!"branch_weights", i32 2002, i32 2000}
!590 = !{!591, !593}
!591 = distinct !{!591, !592, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17haff4d6ad49d4ca1bE: %_0"}
!592 = distinct !{!592, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17haff4d6ad49d4ca1bE"}
!593 = distinct !{!593, !594, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17he104ce91b9416e00E: %_0"}
!594 = distinct !{!594, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17he104ce91b9416e00E"}
!595 = !{!596, !598, !600, !602}
!596 = distinct !{!596, !597, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h9934b03f1828941fE: %self"}
!597 = distinct !{!597, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h9934b03f1828941fE"}
!598 = distinct !{!598, !599, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h564cf9b51fcfd750E: %self"}
!599 = distinct !{!599, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h564cf9b51fcfd750E"}
!600 = distinct !{!600, !601, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17hf3be7e88c734bc11E: %_1"}
!601 = distinct !{!601, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17hf3be7e88c734bc11E"}
!602 = distinct !{!602, !603, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h2a5deca2238eb3b2E: %_1"}
!603 = distinct !{!603, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h2a5deca2238eb3b2E"}
!604 = !{!605, !607, !609, !611}
!605 = distinct !{!605, !606, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h9934b03f1828941fE: %self"}
!606 = distinct !{!606, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h9934b03f1828941fE"}
!607 = distinct !{!607, !608, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h564cf9b51fcfd750E: %self"}
!608 = distinct !{!608, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h564cf9b51fcfd750E"}
!609 = distinct !{!609, !610, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17hf3be7e88c734bc11E: %_1"}
!610 = distinct !{!610, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17hf3be7e88c734bc11E"}
!611 = distinct !{!611, !612, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h2a5deca2238eb3b2E: %_1"}
!612 = distinct !{!612, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h2a5deca2238eb3b2E"}
!613 = !{!614, !616}
!614 = distinct !{!614, !615, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17haff4d6ad49d4ca1bE: %_0"}
!615 = distinct !{!615, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17haff4d6ad49d4ca1bE"}
!616 = distinct !{!616, !617, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h0fb4ef15602973b4E: %_0"}
!617 = distinct !{!617, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h0fb4ef15602973b4E"}
!618 = !{!619, !621, !623, !625}
!619 = distinct !{!619, !620, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h9934b03f1828941fE: %self"}
!620 = distinct !{!620, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h9934b03f1828941fE"}
!621 = distinct !{!621, !622, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4f1f77dd2a72c68aE: %self"}
!622 = distinct !{!622, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4f1f77dd2a72c68aE"}
!623 = distinct !{!623, !624, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$f32$GT$$GT$17hf831e9c314081ed8E: %_1"}
!624 = distinct !{!624, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$f32$GT$$GT$17hf831e9c314081ed8E"}
!625 = distinct !{!625, !626, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17h6e63235cc0d24036E: %_1"}
!626 = distinct !{!626, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17h6e63235cc0d24036E"}
!627 = !{!628, !630, !632, !634}
!628 = distinct !{!628, !629, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h9934b03f1828941fE: %self"}
!629 = distinct !{!629, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h9934b03f1828941fE"}
!630 = distinct !{!630, !631, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4f1f77dd2a72c68aE: %self"}
!631 = distinct !{!631, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4f1f77dd2a72c68aE"}
!632 = distinct !{!632, !633, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$f32$GT$$GT$17hf831e9c314081ed8E: %_1"}
!633 = distinct !{!633, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$f32$GT$$GT$17hf831e9c314081ed8E"}
!634 = distinct !{!634, !635, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17h6e63235cc0d24036E: %_1"}
!635 = distinct !{!635, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17h6e63235cc0d24036E"}
!636 = !{!637}
!637 = distinct !{!637, !638, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %a"}
!638 = distinct !{!638, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E"}
!639 = !{!640}
!640 = distinct !{!640, !638, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %b"}
!641 = !{!642}
!642 = distinct !{!642, !643, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %a"}
!643 = distinct !{!643, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E"}
!644 = !{!645}
!645 = distinct !{!645, !646, !"_ZN4core5slice4sort6stable5drift10create_run17h6e2a93f230ac16e0E: %scratch.0"}
!646 = distinct !{!646, !"_ZN4core5slice4sort6stable5drift10create_run17h6e2a93f230ac16e0E"}
!647 = !{!648}
!648 = distinct !{!648, !643, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %b"}
!649 = !{!642, !637}
!650 = !{!648, !640, !645}
!651 = !{!648, !640}
!652 = !{!642, !637, !645}
!653 = !{!642, !648, !637, !640, !645}
!654 = !{!655}
!655 = distinct !{!655, !656, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %a"}
!656 = distinct !{!656, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E"}
!657 = !{!658}
!658 = distinct !{!658, !659, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %a"}
!659 = distinct !{!659, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E"}
!660 = !{!658, !655}
!661 = !{!662, !663, !645}
!662 = distinct !{!662, !659, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %b"}
!663 = distinct !{!663, !656, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %b"}
!664 = !{!658, !662, !655, !663, !645}
!665 = !{!666}
!666 = distinct !{!666, !667, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %a"}
!667 = distinct !{!667, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E"}
!668 = !{!669}
!669 = distinct !{!669, !670, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %a"}
!670 = distinct !{!670, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E"}
!671 = !{!669, !666}
!672 = !{!673, !674, !645}
!673 = distinct !{!673, !670, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %b"}
!674 = distinct !{!674, !667, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %b"}
!675 = !{!669, !673, !666, !674, !645}
!676 = !{!677}
!677 = distinct !{!677, !678, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17hc825c8588ed3386aE: %a.0"}
!678 = distinct !{!678, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17hc825c8588ed3386aE"}
!679 = !{!645, !680}
!680 = distinct !{!680, !646, !"_ZN4core5slice4sort6stable5drift10create_run17h6e2a93f230ac16e0E: %is_less"}
!681 = !{!682}
!682 = distinct !{!682, !678, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17hc825c8588ed3386aE: %b.0"}
!683 = !{!677, !684}
!684 = distinct !{!684, !685, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h0503b9361f20364dE: %self.0"}
!685 = distinct !{!685, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h0503b9361f20364dE"}
!686 = !{!682, !645, !680}
!687 = !{!682, !684}
!688 = !{!677, !645, !680}
!689 = distinct !{!689, !690, !691}
!690 = !{!"llvm.loop.isvectorized", i32 1}
!691 = !{!"llvm.loop.unroll.runtime.disable"}
!692 = distinct !{!692, !691, !690}
!693 = !{!694}
!694 = distinct !{!694, !695, !"_ZN4core5slice4sort6stable5merge5merge17h4b6f260cee8dbb44E: %v.0"}
!695 = distinct !{!695, !"_ZN4core5slice4sort6stable5merge5merge17h4b6f260cee8dbb44E"}
!696 = !{!697}
!697 = distinct !{!697, !695, !"_ZN4core5slice4sort6stable5merge5merge17h4b6f260cee8dbb44E: %scratch.0"}
!698 = !{!694, !697}
!699 = !{!700}
!700 = distinct !{!700, !701, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %a"}
!701 = distinct !{!701, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E"}
!702 = !{!703}
!703 = distinct !{!703, !701, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %b"}
!704 = !{!705}
!705 = distinct !{!705, !706, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %a"}
!706 = distinct !{!706, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E"}
!707 = !{!708}
!708 = distinct !{!708, !706, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %b"}
!709 = !{!705, !700, !697}
!710 = !{!708, !703, !711, !694}
!711 = distinct !{!711, !712, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17ha45849566116a889E: %self"}
!712 = distinct !{!712, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17ha45849566116a889E"}
!713 = !{!708, !703, !694}
!714 = !{!705, !700, !711, !697}
!715 = !{!711}
!716 = !{!711, !697}
!717 = !{!718}
!718 = distinct !{!718, !719, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %a"}
!719 = distinct !{!719, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E"}
!720 = !{!721}
!721 = distinct !{!721, !719, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %b"}
!722 = !{!723}
!723 = distinct !{!723, !724, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %a"}
!724 = distinct !{!724, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E"}
!725 = !{!726}
!726 = distinct !{!726, !724, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %b"}
!727 = !{!723, !718, !694}
!728 = !{!726, !721, !729, !697}
!729 = distinct !{!729, !730, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17hf3bb952b16dc98dcE: %self"}
!730 = distinct !{!730, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17hf3bb952b16dc98dcE"}
!731 = !{!726, !721, !697}
!732 = !{!723, !718, !729, !694}
!733 = !{!729}
!734 = !{!729, !697}
!735 = !{!736, !738}
!736 = distinct !{!736, !737, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h21adb8d682c7057dE: %self"}
!737 = distinct !{!737, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h21adb8d682c7057dE"}
!738 = distinct !{!738, !739, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$f32$GT$$GT$17hd9a83d41a064e66cE: %_1"}
!739 = distinct !{!739, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$f32$GT$$GT$17hd9a83d41a064e66cE"}
!740 = !{!741, !743}
!741 = distinct !{!741, !742, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h21adb8d682c7057dE: %self"}
!742 = distinct !{!742, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h21adb8d682c7057dE"}
!743 = distinct !{!743, !744, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$f32$GT$$GT$17hd9a83d41a064e66cE: %_1"}
!744 = distinct !{!744, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$f32$GT$$GT$17hd9a83d41a064e66cE"}
!745 = !{!746}
!746 = distinct !{!746, !747, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a"}
!747 = distinct !{!747, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E"}
!748 = !{!749}
!749 = distinct !{!749, !747, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b"}
!750 = !{!751}
!751 = distinct !{!751, !752, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0"}
!752 = distinct !{!752, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E"}
!753 = !{!754}
!754 = distinct !{!754, !755, !"_ZN4core5slice4sort6stable5drift10create_run17hbbfd8747b9c4bcecE: %scratch.0"}
!755 = distinct !{!755, !"_ZN4core5slice4sort6stable5drift10create_run17hbbfd8747b9c4bcecE"}
!756 = !{!757}
!757 = distinct !{!757, !752, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1"}
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
!770 = distinct !{!770, !771, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0"}
!771 = distinct !{!771, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E"}
!772 = distinct !{!772, !773, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a"}
!773 = distinct !{!773, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E"}
!774 = !{!775, !776, !777, !754}
!775 = distinct !{!775, !769, !"cmpfunc: %b"}
!776 = distinct !{!776, !771, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1"}
!777 = distinct !{!777, !773, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b"}
!778 = !{!779, !781, !783}
!779 = distinct !{!779, !780, !"cmpfunc: %a"}
!780 = distinct !{!780, !"cmpfunc"}
!781 = distinct !{!781, !782, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0"}
!782 = distinct !{!782, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E"}
!783 = distinct !{!783, !784, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a"}
!784 = distinct !{!784, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E"}
!785 = !{!786, !787, !788, !754}
!786 = distinct !{!786, !780, !"cmpfunc: %b"}
!787 = distinct !{!787, !782, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1"}
!788 = distinct !{!788, !784, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b"}
!789 = !{!790}
!790 = distinct !{!790, !791, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17hcf0547063945902aE: %a.0"}
!791 = distinct !{!791, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17hcf0547063945902aE"}
!792 = !{!754, !793}
!793 = distinct !{!793, !755, !"_ZN4core5slice4sort6stable5drift10create_run17hbbfd8747b9c4bcecE: %is_less"}
!794 = !{!795}
!795 = distinct !{!795, !791, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17hcf0547063945902aE: %b.0"}
!796 = !{!790, !797}
!797 = distinct !{!797, !798, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h19fa2fe467f3c462E: %self.0"}
!798 = distinct !{!798, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h19fa2fe467f3c462E"}
!799 = !{!795, !754, !793}
!800 = !{!795, !797}
!801 = !{!790, !754, !793}
!802 = distinct !{!802, !690, !691}
!803 = distinct !{!803, !691, !690}
!804 = !{!805}
!805 = distinct !{!805, !806, !"_ZN4core5slice4sort6stable5merge5merge17ha398925cfe361572E: %v.0"}
!806 = distinct !{!806, !"_ZN4core5slice4sort6stable5merge5merge17ha398925cfe361572E"}
!807 = !{!808}
!808 = distinct !{!808, !806, !"_ZN4core5slice4sort6stable5merge5merge17ha398925cfe361572E: %scratch.0"}
!809 = !{!805, !808}
!810 = !{!811}
!811 = distinct !{!811, !812, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a"}
!812 = distinct !{!812, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E"}
!813 = !{!814}
!814 = distinct !{!814, !812, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b"}
!815 = !{!816}
!816 = distinct !{!816, !817, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0"}
!817 = distinct !{!817, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E"}
!818 = !{!819}
!819 = distinct !{!819, !817, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1"}
!820 = !{!821}
!821 = distinct !{!821, !822, !"cmpfunc: %a"}
!822 = distinct !{!822, !"cmpfunc"}
!823 = !{!824}
!824 = distinct !{!824, !822, !"cmpfunc: %b"}
!825 = !{!821, !816, !811, !808}
!826 = !{!824, !819, !814, !827, !805}
!827 = distinct !{!827, !828, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h82040c10322937ffE: %self"}
!828 = distinct !{!828, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h82040c10322937ffE"}
!829 = !{!824, !819, !814, !805}
!830 = !{!821, !816, !811, !827, !808}
!831 = !{!827, !808}
!832 = !{!833}
!833 = distinct !{!833, !834, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a"}
!834 = distinct !{!834, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E"}
!835 = !{!836}
!836 = distinct !{!836, !834, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b"}
!837 = !{!838}
!838 = distinct !{!838, !839, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0"}
!839 = distinct !{!839, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E"}
!840 = !{!841}
!841 = distinct !{!841, !839, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1"}
!842 = !{!843}
!843 = distinct !{!843, !844, !"cmpfunc: %a"}
!844 = distinct !{!844, !"cmpfunc"}
!845 = !{!846}
!846 = distinct !{!846, !844, !"cmpfunc: %b"}
!847 = !{!843, !838, !833, !805}
!848 = !{!846, !841, !836, !849, !808}
!849 = distinct !{!849, !850, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h551d82588688e894E: %self"}
!850 = distinct !{!850, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h551d82588688e894E"}
!851 = !{!846, !841, !836, !808}
!852 = !{!843, !838, !833, !849, !805}
!853 = !{!849, !808}
!854 = !{!855, !857}
!855 = distinct !{!855, !856, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h825a2c529873648fE: %self"}
!856 = distinct !{!856, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h825a2c529873648fE"}
!857 = distinct !{!857, !858, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h777bc40a9f6fc87eE: %_1"}
!858 = distinct !{!858, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h777bc40a9f6fc87eE"}
!859 = !{!860}
!860 = distinct !{!860, !861, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17hbdf9b2d478b5598eE: %v.0"}
!861 = distinct !{!861, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17hbdf9b2d478b5598eE"}
!862 = !{!863}
!863 = distinct !{!863, !861, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17hbdf9b2d478b5598eE: %scratch.0"}
!864 = !{!863, !865}
!865 = distinct !{!865, !861, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17hbdf9b2d478b5598eE: %is_less"}
!866 = !{!860, !865}
!867 = !{!868, !870, !863}
!868 = distinct !{!868, !869, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %b"}
!869 = distinct !{!869, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E"}
!870 = distinct !{!870, !871, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %b"}
!871 = distinct !{!871, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E"}
!872 = !{!873, !874, !860, !865}
!873 = distinct !{!873, !869, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %a"}
!874 = distinct !{!874, !871, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %a"}
!875 = !{!876, !878, !863}
!876 = distinct !{!876, !877, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %b"}
!877 = distinct !{!877, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E"}
!878 = distinct !{!878, !879, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %b"}
!879 = distinct !{!879, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E"}
!880 = !{!881, !882, !860, !865}
!881 = distinct !{!881, !877, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %a"}
!882 = distinct !{!882, !879, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %a"}
!883 = !{!884, !886, !860, !865}
!884 = distinct !{!884, !885, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0fd8ed5edd0e04a3E: %self"}
!885 = distinct !{!885, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0fd8ed5edd0e04a3E"}
!886 = distinct !{!886, !887, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$f32$GT$$GT$17h1b2519a8f05f1306E: %_1"}
!887 = distinct !{!887, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$f32$GT$$GT$17h1b2519a8f05f1306E"}
!888 = !{!889}
!889 = distinct !{!889, !890, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hda7045743ed9389cE: %v.0"}
!890 = distinct !{!890, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hda7045743ed9389cE"}
!891 = !{!892}
!892 = distinct !{!892, !893, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %a"}
!893 = distinct !{!893, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E"}
!894 = !{!895}
!895 = distinct !{!895, !893, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %b"}
!896 = !{!897}
!897 = distinct !{!897, !898, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %a"}
!898 = distinct !{!898, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E"}
!899 = !{!900}
!900 = distinct !{!900, !901, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hb2b148d1a9d4a3a5E: %_0"}
!901 = distinct !{!901, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hb2b148d1a9d4a3a5E"}
!902 = !{!903}
!903 = distinct !{!903, !898, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %b"}
!904 = !{!897, !892, !889, !863}
!905 = !{!903, !895, !900, !860, !865}
!906 = !{!903, !895, !889, !863}
!907 = !{!897, !892, !900, !860, !865}
!908 = !{!889, !863}
!909 = !{!900, !910, !860, !865}
!910 = distinct !{!910, !901, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hb2b148d1a9d4a3a5E: %is_less"}
!911 = !{!900, !910, !889, !863, !865}
!912 = !{!913}
!913 = distinct !{!913, !914, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %a"}
!914 = distinct !{!914, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E"}
!915 = !{!916}
!916 = distinct !{!916, !914, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %b"}
!917 = !{!918}
!918 = distinct !{!918, !919, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %a"}
!919 = distinct !{!919, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E"}
!920 = !{!921}
!921 = distinct !{!921, !922, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h811c9f613b35c0b0E: %_0"}
!922 = distinct !{!922, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h811c9f613b35c0b0E"}
!923 = !{!924}
!924 = distinct !{!924, !919, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %b"}
!925 = !{!918, !913, !889, !863}
!926 = !{!924, !916, !921, !860, !865}
!927 = !{!924, !916, !889, !863}
!928 = !{!918, !913, !921, !860, !865}
!929 = !{!860, !863, !865}
!930 = !{!921, !931, !860, !865}
!931 = distinct !{!931, !922, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h811c9f613b35c0b0E: %is_less"}
!932 = !{!921, !931, !889, !863, !865}
!933 = !{!889, !863, !865}
!934 = !{!860, !863}
!935 = !{!936, !938, !865}
!936 = distinct !{!936, !937, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0fd8ed5edd0e04a3E: %self"}
!937 = distinct !{!937, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0fd8ed5edd0e04a3E"}
!938 = distinct !{!938, !939, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$f32$GT$$GT$17h1b2519a8f05f1306E: %_1"}
!939 = distinct !{!939, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$f32$GT$$GT$17h1b2519a8f05f1306E"}
!940 = !{!941, !943, !860, !865}
!941 = distinct !{!941, !942, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0fd8ed5edd0e04a3E: %self"}
!942 = distinct !{!942, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0fd8ed5edd0e04a3E"}
!943 = distinct !{!943, !944, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$f32$GT$$GT$17h1b2519a8f05f1306E: %_1"}
!944 = distinct !{!944, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$f32$GT$$GT$17h1b2519a8f05f1306E"}
!945 = !{!946}
!946 = distinct !{!946, !947, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h30130fdc5e5525a2E: %v.0"}
!947 = distinct !{!947, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h30130fdc5e5525a2E"}
!948 = !{!949}
!949 = distinct !{!949, !950, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %a"}
!950 = distinct !{!950, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E"}
!951 = !{!952}
!952 = distinct !{!952, !950, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %b"}
!953 = !{!954}
!954 = distinct !{!954, !955, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %a"}
!955 = distinct !{!955, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E"}
!956 = !{!957}
!957 = distinct !{!957, !958, !"_ZN4core5slice4sort6shared5pivot7median317h10f5e7d7bf5b7b20E: %c"}
!958 = distinct !{!958, !"_ZN4core5slice4sort6shared5pivot7median317h10f5e7d7bf5b7b20E"}
!959 = !{!960}
!960 = distinct !{!960, !955, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %b"}
!961 = !{!954, !949, !946}
!962 = !{!960, !952, !957, !963}
!963 = distinct !{!963, !947, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h30130fdc5e5525a2E: %is_less"}
!964 = !{!960, !952, !946}
!965 = !{!954, !949, !957, !963}
!966 = !{!954, !960, !949, !952, !957, !946, !963}
!967 = !{!968}
!968 = distinct !{!968, !969, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %b"}
!969 = distinct !{!969, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E"}
!970 = !{!971}
!971 = distinct !{!971, !972, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %b"}
!972 = distinct !{!972, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E"}
!973 = !{!971, !968, !946}
!974 = !{!975, !976, !963}
!975 = distinct !{!975, !972, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %a"}
!976 = distinct !{!976, !969, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %a"}
!977 = !{!975, !971, !976, !968, !946, !963}
!978 = !{!979, !981, !982, !984, !946, !963}
!979 = distinct !{!979, !980, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %a"}
!980 = distinct !{!980, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E"}
!981 = distinct !{!981, !980, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %b"}
!982 = distinct !{!982, !983, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %a"}
!983 = distinct !{!983, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E"}
!984 = distinct !{!984, !983, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %b"}
!985 = !{!986}
!986 = distinct !{!986, !987, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %a"}
!987 = distinct !{!987, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E"}
!988 = !{!989}
!989 = distinct !{!989, !990, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %a"}
!990 = distinct !{!990, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E"}
!991 = !{!989, !986}
!992 = !{!993, !994}
!993 = distinct !{!993, !990, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %b"}
!994 = distinct !{!994, !987, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %b"}
!995 = !{!989, !993, !986, !994}
!996 = !{!997}
!997 = distinct !{!997, !998, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h2b7a505a3fcf0f5eE: %v.0"}
!998 = distinct !{!998, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h2b7a505a3fcf0f5eE"}
!999 = !{!1000}
!1000 = distinct !{!1000, !998, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h2b7a505a3fcf0f5eE: %scratch.0"}
!1001 = !{!1002, !1004, !997}
!1002 = distinct !{!1002, !1003, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %b"}
!1003 = distinct !{!1003, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E"}
!1004 = distinct !{!1004, !1005, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %b"}
!1005 = distinct !{!1005, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E"}
!1006 = !{!1007, !1008, !1000}
!1007 = distinct !{!1007, !1003, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %a"}
!1008 = distinct !{!1008, !1005, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %a"}
!1009 = !{!1008}
!1010 = !{!1004}
!1011 = !{!1007}
!1012 = !{!1002}
!1013 = !{!1007, !1008, !997}
!1014 = !{!1002, !1004, !1000}
!1015 = !{!1007, !1002, !1008, !1004, !997, !1000}
!1016 = !{!1017, !997}
!1017 = distinct !{!1017, !1018, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he28618422af7c6b6E: %self"}
!1018 = distinct !{!1018, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he28618422af7c6b6E"}
!1019 = !{!1020}
!1020 = distinct !{!1020, !1021, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %a"}
!1021 = distinct !{!1021, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E"}
!1022 = !{!1023}
!1023 = distinct !{!1023, !1024, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %a"}
!1024 = distinct !{!1024, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E"}
!1025 = !{!1023, !1020, !997}
!1026 = !{!1027, !1028, !1000}
!1027 = distinct !{!1027, !1024, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %b"}
!1028 = distinct !{!1028, !1021, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %b"}
!1029 = !{!1023, !1027, !1020, !1028, !997, !1000}
!1030 = !{!1031, !997}
!1031 = distinct !{!1031, !1032, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he28618422af7c6b6E: %self"}
!1032 = distinct !{!1032, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he28618422af7c6b6E"}
!1033 = !{!1034}
!1034 = distinct !{!1034, !1035, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %a"}
!1035 = distinct !{!1035, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E"}
!1036 = !{!1037}
!1037 = distinct !{!1037, !1038, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %a"}
!1038 = distinct !{!1038, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E"}
!1039 = !{!1037, !1034, !997}
!1040 = !{!1041, !1042, !1000}
!1041 = distinct !{!1041, !1038, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %b"}
!1042 = distinct !{!1042, !1035, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %b"}
!1043 = !{!1037, !1041, !1034, !1042, !997, !1000}
!1044 = !{!1045, !997}
!1045 = distinct !{!1045, !1046, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he28618422af7c6b6E: %self"}
!1046 = distinct !{!1046, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he28618422af7c6b6E"}
!1047 = !{!1048}
!1048 = distinct !{!1048, !1049, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %a"}
!1049 = distinct !{!1049, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E"}
!1050 = !{!1051}
!1051 = distinct !{!1051, !1052, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %a"}
!1052 = distinct !{!1052, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E"}
!1053 = !{!1051, !1048, !997}
!1054 = !{!1055, !1056, !1000}
!1055 = distinct !{!1055, !1052, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %b"}
!1056 = distinct !{!1056, !1049, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %b"}
!1057 = !{!1051, !1055, !1048, !1056, !997, !1000}
!1058 = !{!1059, !997}
!1059 = distinct !{!1059, !1060, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he28618422af7c6b6E: %self"}
!1060 = distinct !{!1060, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he28618422af7c6b6E"}
!1061 = !{!1062, !1064, !997}
!1062 = distinct !{!1062, !1063, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %b"}
!1063 = distinct !{!1063, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E"}
!1064 = distinct !{!1064, !1065, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %b"}
!1065 = distinct !{!1065, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E"}
!1066 = !{!1067, !1068, !1000}
!1067 = distinct !{!1067, !1063, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %a"}
!1068 = distinct !{!1068, !1065, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %a"}
!1069 = !{!1068}
!1070 = !{!1064}
!1071 = !{!1067}
!1072 = !{!1062}
!1073 = !{!1067, !1068, !997}
!1074 = !{!1062, !1064, !1000}
!1075 = !{!1067, !1062, !1068, !1064, !997, !1000}
!1076 = !{!1077, !997}
!1077 = distinct !{!1077, !1078, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he28618422af7c6b6E: %self"}
!1078 = distinct !{!1078, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he28618422af7c6b6E"}
!1079 = !{!1080, !1000}
!1080 = distinct !{!1080, !1081, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he28618422af7c6b6E: %self"}
!1081 = distinct !{!1081, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he28618422af7c6b6E"}
!1082 = !{!1080, !997}
!1083 = !{!997, !1000}
!1084 = distinct !{!1084, !690, !691}
!1085 = distinct !{!1085, !691, !690}
!1086 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!1087 = !{!1088, !1090}
!1088 = distinct !{!1088, !1089, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hd9cc43366b0a69c4E: %pair"}
!1089 = distinct !{!1089, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hd9cc43366b0a69c4E"}
!1090 = distinct !{!1090, !1089, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hd9cc43366b0a69c4E: %self.0"}
!1091 = !{!1092}
!1092 = distinct !{!1092, !1093, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h29d7ff4c78c44930E: %v.0"}
!1093 = distinct !{!1093, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h29d7ff4c78c44930E"}
!1094 = !{!1095}
!1095 = distinct !{!1095, !1093, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h29d7ff4c78c44930E: %scratch.0"}
!1096 = !{!1097, !1099, !1101, !1092}
!1097 = distinct !{!1097, !1098, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %a"}
!1098 = distinct !{!1098, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E"}
!1099 = distinct !{!1099, !1100, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %a"}
!1100 = distinct !{!1100, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E"}
!1101 = distinct !{!1101, !1102, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hfb79a77bb13a9fcfE: %b"}
!1102 = distinct !{!1102, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hfb79a77bb13a9fcfE"}
!1103 = !{!1104, !1105, !1106, !1095}
!1104 = distinct !{!1104, !1098, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %b"}
!1105 = distinct !{!1105, !1100, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %b"}
!1106 = distinct !{!1106, !1102, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hfb79a77bb13a9fcfE: %a"}
!1107 = !{!1106}
!1108 = !{!1101}
!1109 = !{!1099}
!1110 = !{!1105}
!1111 = !{!1097}
!1112 = !{!1104}
!1113 = !{!1104, !1105, !1106, !1092}
!1114 = !{!1097, !1099, !1101, !1095}
!1115 = !{!1097, !1104, !1099, !1105, !1106, !1101, !1092, !1095}
!1116 = !{!1117, !1092}
!1117 = distinct !{!1117, !1118, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he28618422af7c6b6E: %self"}
!1118 = distinct !{!1118, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he28618422af7c6b6E"}
!1119 = !{!1120}
!1120 = distinct !{!1120, !1121, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hfb79a77bb13a9fcfE: %a"}
!1121 = distinct !{!1121, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hfb79a77bb13a9fcfE"}
!1122 = !{!1123}
!1123 = distinct !{!1123, !1124, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %b"}
!1124 = distinct !{!1124, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E"}
!1125 = !{!1126}
!1126 = distinct !{!1126, !1127, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %b"}
!1127 = distinct !{!1127, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E"}
!1128 = !{!1126, !1123, !1120, !1092}
!1129 = !{!1130, !1131, !1132, !1095}
!1130 = distinct !{!1130, !1127, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %a"}
!1131 = distinct !{!1131, !1124, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %a"}
!1132 = distinct !{!1132, !1121, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hfb79a77bb13a9fcfE: %b"}
!1133 = !{!1130, !1126, !1131, !1123, !1120, !1132, !1092, !1095}
!1134 = !{!1135, !1092}
!1135 = distinct !{!1135, !1136, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he28618422af7c6b6E: %self"}
!1136 = distinct !{!1136, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he28618422af7c6b6E"}
!1137 = !{!1138}
!1138 = distinct !{!1138, !1139, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hfb79a77bb13a9fcfE: %a"}
!1139 = distinct !{!1139, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hfb79a77bb13a9fcfE"}
!1140 = !{!1141}
!1141 = distinct !{!1141, !1142, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %b"}
!1142 = distinct !{!1142, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E"}
!1143 = !{!1144}
!1144 = distinct !{!1144, !1145, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %b"}
!1145 = distinct !{!1145, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E"}
!1146 = !{!1144, !1141, !1138, !1092}
!1147 = !{!1148, !1149, !1150, !1095}
!1148 = distinct !{!1148, !1145, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %a"}
!1149 = distinct !{!1149, !1142, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %a"}
!1150 = distinct !{!1150, !1139, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hfb79a77bb13a9fcfE: %b"}
!1151 = !{!1148, !1144, !1149, !1141, !1138, !1150, !1092, !1095}
!1152 = !{!1153, !1092}
!1153 = distinct !{!1153, !1154, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he28618422af7c6b6E: %self"}
!1154 = distinct !{!1154, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he28618422af7c6b6E"}
!1155 = !{!1156}
!1156 = distinct !{!1156, !1157, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hfb79a77bb13a9fcfE: %a"}
!1157 = distinct !{!1157, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hfb79a77bb13a9fcfE"}
!1158 = !{!1159}
!1159 = distinct !{!1159, !1160, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %b"}
!1160 = distinct !{!1160, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E"}
!1161 = !{!1162}
!1162 = distinct !{!1162, !1163, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %b"}
!1163 = distinct !{!1163, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E"}
!1164 = !{!1162, !1159, !1156, !1092}
!1165 = !{!1166, !1167, !1168, !1095}
!1166 = distinct !{!1166, !1163, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %a"}
!1167 = distinct !{!1167, !1160, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %a"}
!1168 = distinct !{!1168, !1157, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hfb79a77bb13a9fcfE: %b"}
!1169 = !{!1166, !1162, !1167, !1159, !1156, !1168, !1092, !1095}
!1170 = !{!1171, !1092}
!1171 = distinct !{!1171, !1172, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he28618422af7c6b6E: %self"}
!1172 = distinct !{!1172, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he28618422af7c6b6E"}
!1173 = !{!1174, !1176, !1178, !1092}
!1174 = distinct !{!1174, !1175, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %a"}
!1175 = distinct !{!1175, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E"}
!1176 = distinct !{!1176, !1177, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %a"}
!1177 = distinct !{!1177, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E"}
!1178 = distinct !{!1178, !1179, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hfb79a77bb13a9fcfE: %b"}
!1179 = distinct !{!1179, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hfb79a77bb13a9fcfE"}
!1180 = !{!1181, !1182, !1183, !1095}
!1181 = distinct !{!1181, !1175, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %b"}
!1182 = distinct !{!1182, !1177, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %b"}
!1183 = distinct !{!1183, !1179, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hfb79a77bb13a9fcfE: %a"}
!1184 = !{!1183}
!1185 = !{!1178}
!1186 = !{!1176}
!1187 = !{!1182}
!1188 = !{!1174}
!1189 = !{!1181}
!1190 = !{!1181, !1182, !1183, !1092}
!1191 = !{!1174, !1176, !1178, !1095}
!1192 = !{!1174, !1181, !1176, !1182, !1183, !1178, !1092, !1095}
!1193 = !{!1194, !1092}
!1194 = distinct !{!1194, !1195, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he28618422af7c6b6E: %self"}
!1195 = distinct !{!1195, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he28618422af7c6b6E"}
!1196 = !{!1197, !1095}
!1197 = distinct !{!1197, !1198, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he28618422af7c6b6E: %self"}
!1198 = distinct !{!1198, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he28618422af7c6b6E"}
!1199 = !{!1197, !1092}
!1200 = !{!1092, !1095}
!1201 = distinct !{!1201, !690, !691}
!1202 = distinct !{!1202, !691, !690}
!1203 = !{!1204}
!1204 = distinct !{!1204, !1205, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h6234b1c9273a5e55E: %v.0"}
!1205 = distinct !{!1205, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h6234b1c9273a5e55E"}
!1206 = !{!1207}
!1207 = distinct !{!1207, !1205, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h6234b1c9273a5e55E: %scratch.0"}
!1208 = !{!1209}
!1209 = distinct !{!1209, !1210, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a"}
!1210 = distinct !{!1210, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E"}
!1211 = !{!1212}
!1212 = distinct !{!1212, !1210, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b"}
!1213 = !{!1214}
!1214 = distinct !{!1214, !1215, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0"}
!1215 = distinct !{!1215, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E"}
!1216 = !{!1217}
!1217 = distinct !{!1217, !1215, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1"}
!1218 = !{!1219}
!1219 = distinct !{!1219, !1220, !"cmpfunc: %a"}
!1220 = distinct !{!1220, !"cmpfunc"}
!1221 = !{!1222}
!1222 = distinct !{!1222, !1220, !"cmpfunc: %b"}
!1223 = !{!1219, !1214, !1209, !1204}
!1224 = !{!1222, !1217, !1212, !1207, !1225}
!1225 = distinct !{!1225, !1205, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h6234b1c9273a5e55E: %is_less"}
!1226 = !{!1222, !1217, !1212, !1204}
!1227 = !{!1219, !1214, !1209, !1207, !1225}
!1228 = !{!1229}
!1229 = distinct !{!1229, !1230, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a"}
!1230 = distinct !{!1230, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E"}
!1231 = !{!1232}
!1232 = distinct !{!1232, !1230, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b"}
!1233 = !{!1234}
!1234 = distinct !{!1234, !1235, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0"}
!1235 = distinct !{!1235, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E"}
!1236 = !{!1237}
!1237 = distinct !{!1237, !1235, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1"}
!1238 = !{!1239}
!1239 = distinct !{!1239, !1240, !"cmpfunc: %a"}
!1240 = distinct !{!1240, !"cmpfunc"}
!1241 = !{!1242}
!1242 = distinct !{!1242, !1240, !"cmpfunc: %b"}
!1243 = !{!1239, !1234, !1229, !1204}
!1244 = !{!1242, !1237, !1232, !1207, !1225}
!1245 = !{!1242, !1237, !1232, !1204}
!1246 = !{!1239, !1234, !1229, !1207, !1225}
!1247 = !{!1248}
!1248 = distinct !{!1248, !1249, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a"}
!1249 = distinct !{!1249, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E"}
!1250 = !{!1251}
!1251 = distinct !{!1251, !1249, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b"}
!1252 = !{!1253}
!1253 = distinct !{!1253, !1254, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0"}
!1254 = distinct !{!1254, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E"}
!1255 = !{!1256}
!1256 = distinct !{!1256, !1254, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1"}
!1257 = !{!1258}
!1258 = distinct !{!1258, !1259, !"cmpfunc: %a"}
!1259 = distinct !{!1259, !"cmpfunc"}
!1260 = !{!1261}
!1261 = distinct !{!1261, !1259, !"cmpfunc: %b"}
!1262 = !{!1258, !1253, !1248, !1204}
!1263 = !{!1261, !1256, !1251, !1207, !1225}
!1264 = !{!1261, !1256, !1251, !1204}
!1265 = !{!1258, !1253, !1248, !1207, !1225}
!1266 = !{!1267}
!1267 = distinct !{!1267, !1268, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a"}
!1268 = distinct !{!1268, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E"}
!1269 = !{!1270}
!1270 = distinct !{!1270, !1268, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b"}
!1271 = !{!1272}
!1272 = distinct !{!1272, !1273, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0"}
!1273 = distinct !{!1273, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E"}
!1274 = !{!1275}
!1275 = distinct !{!1275, !1273, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1"}
!1276 = !{!1277}
!1277 = distinct !{!1277, !1278, !"cmpfunc: %a"}
!1278 = distinct !{!1278, !"cmpfunc"}
!1279 = !{!1280}
!1280 = distinct !{!1280, !1278, !"cmpfunc: %b"}
!1281 = !{!1277, !1272, !1267, !1204}
!1282 = !{!1280, !1275, !1270, !1207, !1225}
!1283 = !{!1280, !1275, !1270, !1204}
!1284 = !{!1277, !1272, !1267, !1207, !1225}
!1285 = !{!1286}
!1286 = distinct !{!1286, !1287, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a"}
!1287 = distinct !{!1287, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E"}
!1288 = !{!1289}
!1289 = distinct !{!1289, !1287, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b"}
!1290 = !{!1291}
!1291 = distinct !{!1291, !1292, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0"}
!1292 = distinct !{!1292, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E"}
!1293 = !{!1294}
!1294 = distinct !{!1294, !1292, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1"}
!1295 = !{!1296}
!1296 = distinct !{!1296, !1297, !"cmpfunc: %a"}
!1297 = distinct !{!1297, !"cmpfunc"}
!1298 = !{!1299}
!1299 = distinct !{!1299, !1297, !"cmpfunc: %b"}
!1300 = !{!1296, !1291, !1286, !1204}
!1301 = !{!1299, !1294, !1289, !1207, !1225}
!1302 = !{!1299, !1294, !1289, !1204}
!1303 = !{!1296, !1291, !1286, !1207, !1225}
!1304 = !{!1204, !1225}
!1305 = !{!1306}
!1306 = distinct !{!1306, !1307, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a"}
!1307 = distinct !{!1307, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E"}
!1308 = !{!1309}
!1309 = distinct !{!1309, !1307, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b"}
!1310 = !{!1311}
!1311 = distinct !{!1311, !1312, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0"}
!1312 = distinct !{!1312, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E"}
!1313 = !{!1314}
!1314 = distinct !{!1314, !1312, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1"}
!1315 = !{!1316}
!1316 = distinct !{!1316, !1317, !"cmpfunc: %a"}
!1317 = distinct !{!1317, !"cmpfunc"}
!1318 = !{!1319}
!1319 = distinct !{!1319, !1317, !"cmpfunc: %b"}
!1320 = !{!1316, !1311, !1306, !1204}
!1321 = !{!1319, !1314, !1309, !1207, !1225}
!1322 = !{!1319, !1314, !1309, !1204}
!1323 = !{!1316, !1311, !1306, !1207, !1225}
!1324 = !{!1325}
!1325 = distinct !{!1325, !1326, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a"}
!1326 = distinct !{!1326, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E"}
!1327 = !{!1328}
!1328 = distinct !{!1328, !1326, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b"}
!1329 = !{!1330}
!1330 = distinct !{!1330, !1331, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0"}
!1331 = distinct !{!1331, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E"}
!1332 = !{!1333}
!1333 = distinct !{!1333, !1331, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1"}
!1334 = !{!1335}
!1335 = distinct !{!1335, !1336, !"cmpfunc: %a"}
!1336 = distinct !{!1336, !"cmpfunc"}
!1337 = !{!1338}
!1338 = distinct !{!1338, !1336, !"cmpfunc: %b"}
!1339 = !{!1335, !1330, !1325, !1204}
!1340 = !{!1338, !1333, !1328, !1207, !1225}
!1341 = !{!1338, !1333, !1328, !1204}
!1342 = !{!1335, !1330, !1325, !1207, !1225}
!1343 = !{!1344}
!1344 = distinct !{!1344, !1345, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a"}
!1345 = distinct !{!1345, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E"}
!1346 = !{!1347}
!1347 = distinct !{!1347, !1345, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b"}
!1348 = !{!1349}
!1349 = distinct !{!1349, !1350, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0"}
!1350 = distinct !{!1350, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E"}
!1351 = !{!1352}
!1352 = distinct !{!1352, !1350, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1"}
!1353 = !{!1354}
!1354 = distinct !{!1354, !1355, !"cmpfunc: %a"}
!1355 = distinct !{!1355, !"cmpfunc"}
!1356 = !{!1357}
!1357 = distinct !{!1357, !1355, !"cmpfunc: %b"}
!1358 = !{!1354, !1349, !1344, !1204}
!1359 = !{!1357, !1352, !1347, !1207, !1225}
!1360 = !{!1357, !1352, !1347, !1204}
!1361 = !{!1354, !1349, !1344, !1207, !1225}
!1362 = !{!1363}
!1363 = distinct !{!1363, !1364, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a"}
!1364 = distinct !{!1364, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E"}
!1365 = !{!1366}
!1366 = distinct !{!1366, !1364, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b"}
!1367 = !{!1368}
!1368 = distinct !{!1368, !1369, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0"}
!1369 = distinct !{!1369, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E"}
!1370 = !{!1371}
!1371 = distinct !{!1371, !1369, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1"}
!1372 = !{!1373}
!1373 = distinct !{!1373, !1374, !"cmpfunc: %a"}
!1374 = distinct !{!1374, !"cmpfunc"}
!1375 = !{!1376}
!1376 = distinct !{!1376, !1374, !"cmpfunc: %b"}
!1377 = !{!1373, !1368, !1363, !1204}
!1378 = !{!1376, !1371, !1366, !1207, !1225}
!1379 = !{!1376, !1371, !1366, !1204}
!1380 = !{!1373, !1368, !1363, !1207, !1225}
!1381 = !{!1382}
!1382 = distinct !{!1382, !1383, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a"}
!1383 = distinct !{!1383, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E"}
!1384 = !{!1385}
!1385 = distinct !{!1385, !1383, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b"}
!1386 = !{!1387}
!1387 = distinct !{!1387, !1388, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0"}
!1388 = distinct !{!1388, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E"}
!1389 = !{!1390}
!1390 = distinct !{!1390, !1388, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1"}
!1391 = !{!1392}
!1392 = distinct !{!1392, !1393, !"cmpfunc: %a"}
!1393 = distinct !{!1393, !"cmpfunc"}
!1394 = !{!1395}
!1395 = distinct !{!1395, !1393, !"cmpfunc: %b"}
!1396 = !{!1392, !1387, !1382, !1204}
!1397 = !{!1395, !1390, !1385, !1207, !1225}
!1398 = !{!1395, !1390, !1385, !1204}
!1399 = !{!1392, !1387, !1382, !1207, !1225}
!1400 = !{!1207, !1225}
!1401 = !{!1402, !1404, !1406, !1207}
!1402 = distinct !{!1402, !1403, !"cmpfunc: %b"}
!1403 = distinct !{!1403, !"cmpfunc"}
!1404 = distinct !{!1404, !1405, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1"}
!1405 = distinct !{!1405, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E"}
!1406 = distinct !{!1406, !1407, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b"}
!1407 = distinct !{!1407, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E"}
!1408 = !{!1409, !1410, !1411, !1204, !1225}
!1409 = distinct !{!1409, !1403, !"cmpfunc: %a"}
!1410 = distinct !{!1410, !1405, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0"}
!1411 = distinct !{!1411, !1407, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a"}
!1412 = !{!1413, !1415, !1417, !1207}
!1413 = distinct !{!1413, !1414, !"cmpfunc: %b"}
!1414 = distinct !{!1414, !"cmpfunc"}
!1415 = distinct !{!1415, !1416, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1"}
!1416 = distinct !{!1416, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E"}
!1417 = distinct !{!1417, !1418, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b"}
!1418 = distinct !{!1418, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E"}
!1419 = !{!1420, !1421, !1422, !1204, !1225}
!1420 = distinct !{!1420, !1414, !"cmpfunc: %a"}
!1421 = distinct !{!1421, !1416, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0"}
!1422 = distinct !{!1422, !1418, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a"}
!1423 = !{!1424, !1426, !1204, !1225}
!1424 = distinct !{!1424, !1425, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h21148157d7f7cce3E: %self"}
!1425 = distinct !{!1425, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h21148157d7f7cce3E"}
!1426 = distinct !{!1426, !1427, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h15a8e616d2e8405dE: %_1"}
!1427 = distinct !{!1427, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h15a8e616d2e8405dE"}
!1428 = !{!1429}
!1429 = distinct !{!1429, !1430, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h9a78ceb788512c3fE: %v.0"}
!1430 = distinct !{!1430, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h9a78ceb788512c3fE"}
!1431 = !{!1432}
!1432 = distinct !{!1432, !1433, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a"}
!1433 = distinct !{!1433, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E"}
!1434 = !{!1435}
!1435 = distinct !{!1435, !1433, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b"}
!1436 = !{!1437}
!1437 = distinct !{!1437, !1438, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0"}
!1438 = distinct !{!1438, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E"}
!1439 = !{!1440}
!1440 = distinct !{!1440, !1441, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h123fe25a22554e1dE: %_0"}
!1441 = distinct !{!1441, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h123fe25a22554e1dE"}
!1442 = !{!1443}
!1443 = distinct !{!1443, !1438, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1"}
!1444 = !{!1445}
!1445 = distinct !{!1445, !1446, !"cmpfunc: %a"}
!1446 = distinct !{!1446, !"cmpfunc"}
!1447 = !{!1448}
!1448 = distinct !{!1448, !1446, !"cmpfunc: %b"}
!1449 = !{!1445, !1437, !1432, !1429, !1207}
!1450 = !{!1448, !1443, !1435, !1440, !1204, !1225}
!1451 = !{!1448, !1443, !1435, !1429, !1207}
!1452 = !{!1445, !1437, !1432, !1440, !1204, !1225}
!1453 = !{!1440, !1454, !1429, !1207, !1225}
!1454 = distinct !{!1454, !1441, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h123fe25a22554e1dE: %is_less"}
!1455 = !{!1456}
!1456 = distinct !{!1456, !1457, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a"}
!1457 = distinct !{!1457, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E"}
!1458 = !{!1459}
!1459 = distinct !{!1459, !1457, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b"}
!1460 = !{!1461}
!1461 = distinct !{!1461, !1462, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0"}
!1462 = distinct !{!1462, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E"}
!1463 = !{!1464}
!1464 = distinct !{!1464, !1465, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hfcb97d1e7d3bd007E: %_0"}
!1465 = distinct !{!1465, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hfcb97d1e7d3bd007E"}
!1466 = !{!1467}
!1467 = distinct !{!1467, !1462, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1"}
!1468 = !{!1469}
!1469 = distinct !{!1469, !1470, !"cmpfunc: %a"}
!1470 = distinct !{!1470, !"cmpfunc"}
!1471 = !{!1472}
!1472 = distinct !{!1472, !1470, !"cmpfunc: %b"}
!1473 = !{!1469, !1461, !1456, !1429, !1207}
!1474 = !{!1472, !1467, !1459, !1464, !1204, !1225}
!1475 = !{!1472, !1467, !1459, !1429, !1207}
!1476 = !{!1469, !1461, !1456, !1464, !1204, !1225}
!1477 = !{!1464, !1478, !1429, !1207, !1225}
!1478 = distinct !{!1478, !1465, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hfcb97d1e7d3bd007E: %is_less"}
!1479 = !{!1429, !1207}
!1480 = !{!1429, !1207, !1225}
!1481 = !{!1204, !1207, !1225}
!1482 = !{!1204, !1207}
!1483 = !{!1484, !1486, !1225}
!1484 = distinct !{!1484, !1485, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h21148157d7f7cce3E: %self"}
!1485 = distinct !{!1485, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h21148157d7f7cce3E"}
!1486 = distinct !{!1486, !1487, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h15a8e616d2e8405dE: %_1"}
!1487 = distinct !{!1487, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h15a8e616d2e8405dE"}
!1488 = !{!1489}
!1489 = distinct !{!1489, !1490, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a"}
!1490 = distinct !{!1490, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E"}
!1491 = !{!1492}
!1492 = distinct !{!1492, !1490, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b"}
!1493 = !{!1494}
!1494 = distinct !{!1494, !1495, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0"}
!1495 = distinct !{!1495, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E"}
!1496 = !{!1497}
!1497 = distinct !{!1497, !1498, !"_ZN4core5slice4sort6shared5pivot7median317h7965bf09953299d8E: %c"}
!1498 = distinct !{!1498, !"_ZN4core5slice4sort6shared5pivot7median317h7965bf09953299d8E"}
!1499 = !{!1500}
!1500 = distinct !{!1500, !1495, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1"}
!1501 = !{!1502}
!1502 = distinct !{!1502, !1503, !"cmpfunc: %a"}
!1503 = distinct !{!1503, !"cmpfunc"}
!1504 = !{!1505}
!1505 = distinct !{!1505, !1503, !"cmpfunc: %b"}
!1506 = !{!1502, !1494, !1489, !1507}
!1507 = distinct !{!1507, !1508, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17hf5f5fcbe01a11142E: %v.0"}
!1508 = distinct !{!1508, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17hf5f5fcbe01a11142E"}
!1509 = !{!1505, !1500, !1492, !1497, !1510}
!1510 = distinct !{!1510, !1508, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17hf5f5fcbe01a11142E: %is_less"}
!1511 = !{!1505, !1500, !1492, !1507}
!1512 = !{!1502, !1494, !1489, !1497, !1510}
!1513 = !{!1514, !1516, !1518, !1507}
!1514 = distinct !{!1514, !1515, !"cmpfunc: %b"}
!1515 = distinct !{!1515, !"cmpfunc"}
!1516 = distinct !{!1516, !1517, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1"}
!1517 = distinct !{!1517, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E"}
!1518 = distinct !{!1518, !1519, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b"}
!1519 = distinct !{!1519, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E"}
!1520 = !{!1521, !1522, !1523, !1510}
!1521 = distinct !{!1521, !1515, !"cmpfunc: %a"}
!1522 = distinct !{!1522, !1517, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0"}
!1523 = distinct !{!1523, !1519, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a"}
!1524 = !{!1525, !1527, !1529}
!1525 = distinct !{!1525, !1526, !"cmpfunc: %a"}
!1526 = distinct !{!1526, !"cmpfunc"}
!1527 = distinct !{!1527, !1528, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0"}
!1528 = distinct !{!1528, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E"}
!1529 = distinct !{!1529, !1530, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a"}
!1530 = distinct !{!1530, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E"}
!1531 = !{!1532, !1533, !1534}
!1532 = distinct !{!1532, !1526, !"cmpfunc: %b"}
!1533 = distinct !{!1533, !1528, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1"}
!1534 = distinct !{!1534, !1530, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b"}
!1535 = !{!1536}
!1536 = distinct !{!1536, !1537, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h42f550482c7f392cE: %v.0"}
!1537 = distinct !{!1537, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h42f550482c7f392cE"}
!1538 = !{!1539}
!1539 = distinct !{!1539, !1537, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h42f550482c7f392cE: %scratch.0"}
!1540 = !{!1541, !1543, !1545, !1536}
!1541 = distinct !{!1541, !1542, !"cmpfunc: %b"}
!1542 = distinct !{!1542, !"cmpfunc"}
!1543 = distinct !{!1543, !1544, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1"}
!1544 = distinct !{!1544, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E"}
!1545 = distinct !{!1545, !1546, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b"}
!1546 = distinct !{!1546, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E"}
!1547 = !{!1548, !1549, !1550, !1539}
!1548 = distinct !{!1548, !1542, !"cmpfunc: %a"}
!1549 = distinct !{!1549, !1544, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0"}
!1550 = distinct !{!1550, !1546, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a"}
!1551 = !{!1550}
!1552 = !{!1545}
!1553 = !{!1549}
!1554 = !{!1543}
!1555 = !{!1548}
!1556 = !{!1541}
!1557 = !{!1548, !1549, !1550, !1536}
!1558 = !{!1541, !1543, !1545, !1539}
!1559 = !{!1560, !1536}
!1560 = distinct !{!1560, !1561, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he2df93c6488aa0ddE: %self"}
!1561 = distinct !{!1561, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he2df93c6488aa0ddE"}
!1562 = !{!1563, !1565, !1567, !1536}
!1563 = distinct !{!1563, !1564, !"cmpfunc: %a"}
!1564 = distinct !{!1564, !"cmpfunc"}
!1565 = distinct !{!1565, !1566, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0"}
!1566 = distinct !{!1566, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E"}
!1567 = distinct !{!1567, !1568, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a"}
!1568 = distinct !{!1568, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E"}
!1569 = !{!1570, !1571, !1572, !1539}
!1570 = distinct !{!1570, !1564, !"cmpfunc: %b"}
!1571 = distinct !{!1571, !1566, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1"}
!1572 = distinct !{!1572, !1568, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b"}
!1573 = !{!1574, !1536}
!1574 = distinct !{!1574, !1575, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he2df93c6488aa0ddE: %self"}
!1575 = distinct !{!1575, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he2df93c6488aa0ddE"}
!1576 = !{!1577, !1579, !1581, !1536}
!1577 = distinct !{!1577, !1578, !"cmpfunc: %a"}
!1578 = distinct !{!1578, !"cmpfunc"}
!1579 = distinct !{!1579, !1580, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0"}
!1580 = distinct !{!1580, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E"}
!1581 = distinct !{!1581, !1582, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a"}
!1582 = distinct !{!1582, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E"}
!1583 = !{!1584, !1585, !1586, !1539}
!1584 = distinct !{!1584, !1578, !"cmpfunc: %b"}
!1585 = distinct !{!1585, !1580, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1"}
!1586 = distinct !{!1586, !1582, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b"}
!1587 = !{!1588, !1536}
!1588 = distinct !{!1588, !1589, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he2df93c6488aa0ddE: %self"}
!1589 = distinct !{!1589, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he2df93c6488aa0ddE"}
!1590 = !{!1591, !1593, !1595, !1536}
!1591 = distinct !{!1591, !1592, !"cmpfunc: %a"}
!1592 = distinct !{!1592, !"cmpfunc"}
!1593 = distinct !{!1593, !1594, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0"}
!1594 = distinct !{!1594, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E"}
!1595 = distinct !{!1595, !1596, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a"}
!1596 = distinct !{!1596, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E"}
!1597 = !{!1598, !1599, !1600, !1539}
!1598 = distinct !{!1598, !1592, !"cmpfunc: %b"}
!1599 = distinct !{!1599, !1594, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1"}
!1600 = distinct !{!1600, !1596, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b"}
!1601 = !{!1602, !1536}
!1602 = distinct !{!1602, !1603, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he2df93c6488aa0ddE: %self"}
!1603 = distinct !{!1603, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he2df93c6488aa0ddE"}
!1604 = !{!1605, !1607, !1609, !1536}
!1605 = distinct !{!1605, !1606, !"cmpfunc: %b"}
!1606 = distinct !{!1606, !"cmpfunc"}
!1607 = distinct !{!1607, !1608, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1"}
!1608 = distinct !{!1608, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E"}
!1609 = distinct !{!1609, !1610, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b"}
!1610 = distinct !{!1610, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E"}
!1611 = !{!1612, !1613, !1614, !1539}
!1612 = distinct !{!1612, !1606, !"cmpfunc: %a"}
!1613 = distinct !{!1613, !1608, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0"}
!1614 = distinct !{!1614, !1610, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a"}
!1615 = !{!1614}
!1616 = !{!1609}
!1617 = !{!1613}
!1618 = !{!1607}
!1619 = !{!1612}
!1620 = !{!1605}
!1621 = !{!1612, !1613, !1614, !1536}
!1622 = !{!1605, !1607, !1609, !1539}
!1623 = !{!1624, !1536}
!1624 = distinct !{!1624, !1625, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he2df93c6488aa0ddE: %self"}
!1625 = distinct !{!1625, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he2df93c6488aa0ddE"}
!1626 = !{!1627, !1539}
!1627 = distinct !{!1627, !1628, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he2df93c6488aa0ddE: %self"}
!1628 = distinct !{!1628, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he2df93c6488aa0ddE"}
!1629 = !{!1627, !1536}
!1630 = !{!1536, !1539}
!1631 = distinct !{!1631, !690, !691}
!1632 = distinct !{!1632, !691, !690}
!1633 = !{!1634, !1636}
!1634 = distinct !{!1634, !1635, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h77ab04c1f2f49d7cE: %pair"}
!1635 = distinct !{!1635, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h77ab04c1f2f49d7cE"}
!1636 = distinct !{!1636, !1635, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h77ab04c1f2f49d7cE: %self.0"}
!1637 = !{!1638}
!1638 = distinct !{!1638, !1639, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h186cdc7211da2e91E: %v.0"}
!1639 = distinct !{!1639, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h186cdc7211da2e91E"}
!1640 = !{!1641}
!1641 = distinct !{!1641, !1639, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h186cdc7211da2e91E: %scratch.0"}
!1642 = !{!1643, !1645, !1647, !1649, !1638}
!1643 = distinct !{!1643, !1644, !"cmpfunc: %a"}
!1644 = distinct !{!1644, !"cmpfunc"}
!1645 = distinct !{!1645, !1646, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0"}
!1646 = distinct !{!1646, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E"}
!1647 = distinct !{!1647, !1648, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a"}
!1648 = distinct !{!1648, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E"}
!1649 = distinct !{!1649, !1650, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h353d22016253964aE: %b"}
!1650 = distinct !{!1650, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h353d22016253964aE"}
!1651 = !{!1652, !1653, !1654, !1655, !1641}
!1652 = distinct !{!1652, !1644, !"cmpfunc: %b"}
!1653 = distinct !{!1653, !1646, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1"}
!1654 = distinct !{!1654, !1648, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b"}
!1655 = distinct !{!1655, !1650, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h353d22016253964aE: %a"}
!1656 = !{!1655}
!1657 = !{!1649}
!1658 = !{!1647}
!1659 = !{!1654}
!1660 = !{!1645}
!1661 = !{!1653}
!1662 = !{!1643}
!1663 = !{!1652}
!1664 = !{!1652, !1653, !1654, !1655, !1638}
!1665 = !{!1643, !1645, !1647, !1649, !1641}
!1666 = !{!1667, !1638}
!1667 = distinct !{!1667, !1668, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he2df93c6488aa0ddE: %self"}
!1668 = distinct !{!1668, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he2df93c6488aa0ddE"}
!1669 = !{!1670, !1672, !1674, !1676, !1638}
!1670 = distinct !{!1670, !1671, !"cmpfunc: %b"}
!1671 = distinct !{!1671, !"cmpfunc"}
!1672 = distinct !{!1672, !1673, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1"}
!1673 = distinct !{!1673, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E"}
!1674 = distinct !{!1674, !1675, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b"}
!1675 = distinct !{!1675, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E"}
!1676 = distinct !{!1676, !1677, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h353d22016253964aE: %a"}
!1677 = distinct !{!1677, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h353d22016253964aE"}
!1678 = !{!1679, !1680, !1681, !1682, !1641}
!1679 = distinct !{!1679, !1671, !"cmpfunc: %a"}
!1680 = distinct !{!1680, !1673, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0"}
!1681 = distinct !{!1681, !1675, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a"}
!1682 = distinct !{!1682, !1677, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h353d22016253964aE: %b"}
!1683 = !{!1684, !1638}
!1684 = distinct !{!1684, !1685, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he2df93c6488aa0ddE: %self"}
!1685 = distinct !{!1685, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he2df93c6488aa0ddE"}
!1686 = !{!1687, !1689, !1691, !1693, !1638}
!1687 = distinct !{!1687, !1688, !"cmpfunc: %b"}
!1688 = distinct !{!1688, !"cmpfunc"}
!1689 = distinct !{!1689, !1690, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1"}
!1690 = distinct !{!1690, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E"}
!1691 = distinct !{!1691, !1692, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b"}
!1692 = distinct !{!1692, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E"}
!1693 = distinct !{!1693, !1694, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h353d22016253964aE: %a"}
!1694 = distinct !{!1694, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h353d22016253964aE"}
!1695 = !{!1696, !1697, !1698, !1699, !1641}
!1696 = distinct !{!1696, !1688, !"cmpfunc: %a"}
!1697 = distinct !{!1697, !1690, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0"}
!1698 = distinct !{!1698, !1692, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a"}
!1699 = distinct !{!1699, !1694, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h353d22016253964aE: %b"}
!1700 = !{!1701, !1638}
!1701 = distinct !{!1701, !1702, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he2df93c6488aa0ddE: %self"}
!1702 = distinct !{!1702, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he2df93c6488aa0ddE"}
!1703 = !{!1704, !1706, !1708, !1710, !1638}
!1704 = distinct !{!1704, !1705, !"cmpfunc: %b"}
!1705 = distinct !{!1705, !"cmpfunc"}
!1706 = distinct !{!1706, !1707, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1"}
!1707 = distinct !{!1707, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E"}
!1708 = distinct !{!1708, !1709, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b"}
!1709 = distinct !{!1709, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E"}
!1710 = distinct !{!1710, !1711, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h353d22016253964aE: %a"}
!1711 = distinct !{!1711, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h353d22016253964aE"}
!1712 = !{!1713, !1714, !1715, !1716, !1641}
!1713 = distinct !{!1713, !1705, !"cmpfunc: %a"}
!1714 = distinct !{!1714, !1707, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0"}
!1715 = distinct !{!1715, !1709, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a"}
!1716 = distinct !{!1716, !1711, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h353d22016253964aE: %b"}
!1717 = !{!1718, !1638}
!1718 = distinct !{!1718, !1719, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he2df93c6488aa0ddE: %self"}
!1719 = distinct !{!1719, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he2df93c6488aa0ddE"}
!1720 = !{!1721, !1723, !1725, !1727, !1638}
!1721 = distinct !{!1721, !1722, !"cmpfunc: %a"}
!1722 = distinct !{!1722, !"cmpfunc"}
!1723 = distinct !{!1723, !1724, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0"}
!1724 = distinct !{!1724, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E"}
!1725 = distinct !{!1725, !1726, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a"}
!1726 = distinct !{!1726, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E"}
!1727 = distinct !{!1727, !1728, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h353d22016253964aE: %b"}
!1728 = distinct !{!1728, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h353d22016253964aE"}
!1729 = !{!1730, !1731, !1732, !1733, !1641}
!1730 = distinct !{!1730, !1722, !"cmpfunc: %b"}
!1731 = distinct !{!1731, !1724, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1"}
!1732 = distinct !{!1732, !1726, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b"}
!1733 = distinct !{!1733, !1728, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h353d22016253964aE: %a"}
!1734 = !{!1733}
!1735 = !{!1727}
!1736 = !{!1725}
!1737 = !{!1732}
!1738 = !{!1723}
!1739 = !{!1731}
!1740 = !{!1721}
!1741 = !{!1730}
!1742 = !{!1730, !1731, !1732, !1733, !1638}
!1743 = !{!1721, !1723, !1725, !1727, !1641}
!1744 = !{!1745, !1638}
!1745 = distinct !{!1745, !1746, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he2df93c6488aa0ddE: %self"}
!1746 = distinct !{!1746, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he2df93c6488aa0ddE"}
!1747 = !{!1748, !1641}
!1748 = distinct !{!1748, !1749, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he2df93c6488aa0ddE: %self"}
!1749 = distinct !{!1749, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he2df93c6488aa0ddE"}
!1750 = !{!1748, !1638}
!1751 = !{!1638, !1641}
!1752 = distinct !{!1752, !690, !691}
!1753 = distinct !{!1753, !691, !690}
!1754 = !{i64 0, i64 -9223372036854775808}
!1755 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!1756 = !{!1757}
!1757 = distinct !{!1757, !1758, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h27944a572e06effbE: %self"}
!1758 = distinct !{!1758, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h27944a572e06effbE"}
!1759 = !{!1760}
!1760 = distinct !{!1760, !1758, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h27944a572e06effbE: %_0"}
!1761 = !{i64 0, i64 2}
!1762 = !{i64 0, i64 -9223372036854775807}
!1763 = !{!1764}
!1764 = distinct !{!1764, !1765, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17h6e63235cc0d24036E: %_1"}
!1765 = distinct !{!1765, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17h6e63235cc0d24036E"}
!1766 = !{!1767}
!1767 = distinct !{!1767, !1768, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$f32$GT$$GT$17hf831e9c314081ed8E: %_1"}
!1768 = distinct !{!1768, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$f32$GT$$GT$17hf831e9c314081ed8E"}
!1769 = !{!1770}
!1770 = distinct !{!1770, !1771, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4f1f77dd2a72c68aE: %self"}
!1771 = distinct !{!1771, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4f1f77dd2a72c68aE"}
!1772 = !{!1773}
!1773 = distinct !{!1773, !1774, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h9934b03f1828941fE: %self"}
!1774 = distinct !{!1774, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h9934b03f1828941fE"}
!1775 = !{!1776, !1773, !1770, !1767, !1764}
!1776 = distinct !{!1776, !1777, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h27944a572e06effbE: %self"}
!1777 = distinct !{!1777, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h27944a572e06effbE"}
!1778 = !{!1779}
!1779 = distinct !{!1779, !1777, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h27944a572e06effbE: %_0"}
!1780 = !{!1773, !1770, !1767, !1764}
!1781 = !{!1782}
!1782 = distinct !{!1782, !1783, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17h6e63235cc0d24036E: %_1"}
!1783 = distinct !{!1783, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17h6e63235cc0d24036E"}
!1784 = !{!1785}
!1785 = distinct !{!1785, !1786, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$f32$GT$$GT$17hf831e9c314081ed8E: %_1"}
!1786 = distinct !{!1786, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$f32$GT$$GT$17hf831e9c314081ed8E"}
!1787 = !{!1788}
!1788 = distinct !{!1788, !1789, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4f1f77dd2a72c68aE: %self"}
!1789 = distinct !{!1789, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4f1f77dd2a72c68aE"}
!1790 = !{!1791}
!1791 = distinct !{!1791, !1792, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h9934b03f1828941fE: %self"}
!1792 = distinct !{!1792, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h9934b03f1828941fE"}
!1793 = !{!1794, !1791, !1788, !1785, !1782}
!1794 = distinct !{!1794, !1795, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h27944a572e06effbE: %self"}
!1795 = distinct !{!1795, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h27944a572e06effbE"}
!1796 = !{!1797}
!1797 = distinct !{!1797, !1795, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h27944a572e06effbE: %_0"}
!1798 = !{!1791, !1788, !1785, !1782}
!1799 = !{!1800}
!1800 = distinct !{!1800, !1801, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h89028d718c8aa267E: %self"}
!1801 = distinct !{!1801, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h89028d718c8aa267E"}
!1802 = !{!1803}
!1803 = distinct !{!1803, !1801, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h89028d718c8aa267E: %self:It1"}
!1804 = !{!1805}
!1805 = distinct !{!1805, !1806, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h75e7423505bf07c7E: %self.0"}
!1806 = distinct !{!1806, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h75e7423505bf07c7E"}
!1807 = !{!1808}
!1808 = distinct !{!1808, !1809, !"_ZN5alloc5slice11stable_sort17h57cbdd38fb9c9b3fE: %v.0"}
!1809 = distinct !{!1809, !"_ZN5alloc5slice11stable_sort17h57cbdd38fb9c9b3fE"}
!1810 = !{!1808, !1811, !1805}
!1811 = distinct !{!1811, !1809, !"_ZN5alloc5slice11stable_sort17h57cbdd38fb9c9b3fE: argument 1"}
!1812 = !{!1813}
!1813 = distinct !{!1813, !1814, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a"}
!1814 = distinct !{!1814, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E"}
!1815 = !{!1816}
!1816 = distinct !{!1816, !1814, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b"}
!1817 = !{!1818}
!1818 = distinct !{!1818, !1819, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0"}
!1819 = distinct !{!1819, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E"}
!1820 = !{!1821}
!1821 = distinct !{!1821, !1819, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1"}
!1822 = !{!1823}
!1823 = distinct !{!1823, !1824, !"cmpfunc: %a"}
!1824 = distinct !{!1824, !"cmpfunc"}
!1825 = !{!1826}
!1826 = distinct !{!1826, !1824, !"cmpfunc: %b"}
!1827 = !{!1823, !1818, !1813, !1828, !1808, !1805}
!1828 = distinct !{!1828, !1829, !"_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17hbdc8f9db3619b8bbE: %v.0"}
!1829 = distinct !{!1829, !"_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17hbdc8f9db3619b8bbE"}
!1830 = !{!1826, !1821, !1816, !1811}
!1831 = !{!1826, !1821, !1816, !1828, !1808, !1805}
!1832 = !{!1823, !1818, !1813, !1811}
!1833 = !{!1828, !1808, !1805}
!1834 = !{!1811}
!1835 = !{!1836, !1838, !1840, !1828, !1808, !1805}
!1836 = distinct !{!1836, !1837, !"cmpfunc: %b"}
!1837 = distinct !{!1837, !"cmpfunc"}
!1838 = distinct !{!1838, !1839, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1"}
!1839 = distinct !{!1839, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E"}
!1840 = distinct !{!1840, !1841, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b"}
!1841 = distinct !{!1841, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E"}
!1842 = !{!1843, !1844, !1845, !1811}
!1843 = distinct !{!1843, !1837, !"cmpfunc: %a"}
!1844 = distinct !{!1844, !1839, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0"}
!1845 = distinct !{!1845, !1841, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a"}
!1846 = !{!1847, !1849, !1811}
!1847 = distinct !{!1847, !1848, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h21148157d7f7cce3E: %self"}
!1848 = distinct !{!1848, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h21148157d7f7cce3E"}
!1849 = distinct !{!1849, !1850, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h15a8e616d2e8405dE: %_1"}
!1850 = distinct !{!1850, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h15a8e616d2e8405dE"}
!1851 = !{!1852}
!1852 = distinct !{!1852, !1814, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a:It1"}
!1853 = !{!1854}
!1854 = distinct !{!1854, !1814, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b:It1"}
!1855 = !{!1856}
!1856 = distinct !{!1856, !1819, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0:It1"}
!1857 = !{!1858}
!1858 = distinct !{!1858, !1819, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1:It1"}
!1859 = !{!1860}
!1860 = distinct !{!1860, !1824, !"cmpfunc: %a:It1"}
!1861 = !{!1862}
!1862 = distinct !{!1862, !1824, !"cmpfunc: %b:It1"}
!1863 = !{!1860, !1856, !1852, !1828, !1808, !1805}
!1864 = !{!1862, !1858, !1854, !1811}
!1865 = !{!1862, !1858, !1854, !1828, !1808, !1805}
!1866 = !{!1860, !1856, !1852, !1811}
