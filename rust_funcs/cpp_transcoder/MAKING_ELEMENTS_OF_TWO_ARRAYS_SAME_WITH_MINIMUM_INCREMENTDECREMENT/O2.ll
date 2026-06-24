; ModuleID = 'MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit.ff5e9c73dda353e5-cgu.0'
source_filename = "MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit.ff5e9c73dda353e5-cgu.0"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@alloc_d1084648e479974e70c9329824bf76f9 = private unnamed_addr constant [9 x i8] c"mid > len", align 1
@alloc_e8e5fd9f509afcb950667480b3e3e42a = private unnamed_addr constant [126 x i8] c"/root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/sort/stable/quicksort.rs\00", align 1
@alloc_58d434a1e795f965ef82c8e9c5db822a = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_e8e5fd9f509afcb950667480b3e3e42a, [16 x i8] c"}\00\00\00\00\00\00\00J\00\00\00\1F\00\00\00" }>, align 8
@alloc_0766b232215672ee1bd2195fdb153938 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_e8e5fd9f509afcb950667480b3e3e42a, [16 x i8] c"}\00\00\00\00\00\00\00D\00\00\00\17\00\00\00" }>, align 8
@alloc_ffa344d1d1f7bccc060435600714cafe = private unnamed_addr constant [187 x i8] c"/root/es/vert/vert/rust_funcs/cpp_transcoder/MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT/MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit.rs\00", align 1
@alloc_4a4e7fec44b84c1472b04d0c86f3e1b7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_ffa344d1d1f7bccc060435600714cafe, [16 x i8] c"\BA\00\00\00\00\00\00\00\18\00\00\00'\00\00\00" }>, align 8
@alloc_b0e33ba48ef5fa15e44a55a18226b5ac = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_ffa344d1d1f7bccc060435600714cafe, [16 x i8] c"\BA\00\00\00\00\00\00\00\17\00\00\00'\00\00\00" }>, align 8
@alloc_bb80c4294bf98485d1cae0b45be62c99 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_ffa344d1d1f7bccc060435600714cafe, [16 x i8] c"\BA\00\00\00\00\00\00\00\1B\00\00\00\14\00\00\00" }>, align 8
@alloc_f4ef7df7705ab5192cda3ed35c9cf9c8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_ffa344d1d1f7bccc060435600714cafe, [16 x i8] c"\BA\00\00\00\00\00\00\00\1B\00\00\00\1B\00\00\00" }>, align 8

; core::slice::sort::shared::pivot::median3_rec
; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h16032f23b0df01aeE(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i64 noundef range(i64 0, 288230376151711744) %n) unnamed_addr #0 {
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
  %3 = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h16032f23b0df01aeE(ptr noundef %0, ptr noundef %_10, ptr noundef %_13, i64 noundef %n84)
  %_16 = getelementptr inbounds nuw float, ptr %1, i64 %count
  %_18 = getelementptr inbounds nuw float, ptr %1, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %4 = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h16032f23b0df01aeE(ptr noundef %1, ptr noundef %_16, ptr noundef %_18, i64 noundef %n84)
  %_20 = getelementptr inbounds nuw float, ptr %2, i64 %count
  %_22 = getelementptr inbounds nuw float, ptr %2, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %5 = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h16032f23b0df01aeE(ptr noundef %2, ptr noundef %_20, ptr noundef %_22, i64 noundef %n84)
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
  br i1 %brmerge.not.i, label %bb6.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit", !prof !21

bb6.i.i:                                          ; preds = %bb6
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_b0e33ba48ef5fa15e44a55a18226b5ac) #18, !noalias !22
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit": ; preds = %bb6
  %_8.i.mux.i = fcmp olt float %_6.i.i, %_7.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26)
  %_7.i.i6 = load float, ptr %c.sroa.0.0, align 4, !alias.scope !29, !noalias !30, !noundef !18
  %brmerge.not.i7 = fcmp uno float %_6.i.i, %_7.i.i6
  br i1 %brmerge.not.i7, label %bb6.i.i9, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit10", !prof !21

bb6.i.i9:                                         ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit"
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_b0e33ba48ef5fa15e44a55a18226b5ac) #18, !noalias !33
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit10": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit"
  %_8.i.mux.i8 = fcmp olt float %_6.i.i, %_7.i.i6
  %6 = xor i1 %_8.i.mux.i, %_8.i.mux.i8
  br i1 %6, label %_ZN4core5slice4sort6shared5pivot7median317h997f2f4aad5b9139E.exit, label %bb3.i

bb3.i:                                            ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit10"
  %brmerge.not.i13 = fcmp uno float %_7.i.i, %_7.i.i6
  br i1 %brmerge.not.i13, label %bb6.i.i15, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit16", !prof !21

bb6.i.i15:                                        ; preds = %bb3.i
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_b0e33ba48ef5fa15e44a55a18226b5ac) #18, !noalias !34
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit16": ; preds = %bb3.i
  %_8.i.mux.i14 = fcmp olt float %_7.i.i, %_7.i.i6
  %_12.i = xor i1 %_8.i.mux.i, %_8.i.mux.i14
  %c.b.i = select i1 %_12.i, ptr %c.sroa.0.0, ptr %b.sroa.0.0
  br label %_ZN4core5slice4sort6shared5pivot7median317h997f2f4aad5b9139E.exit

_ZN4core5slice4sort6shared5pivot7median317h997f2f4aad5b9139E.exit: ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit10", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit16"
  %_0.sroa.0.0.i = phi ptr [ %a.sroa.0.0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit10" ], [ %c.b.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit16" ]
  ret ptr %_0.sroa.0.0.i
}

; core::slice::sort::shared::pivot::median3_rec
; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite) uwtable
define internal fastcc noundef nonnull ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h48858054538ba0a9E(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i64 noundef range(i64 0, 288230376151711744) %n) unnamed_addr #1 {
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
  %3 = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h48858054538ba0a9E(ptr noundef %0, ptr noundef %_10, ptr noundef %_13, i64 noundef %n84)
  %_16 = getelementptr inbounds nuw i32, ptr %1, i64 %count
  %_18 = getelementptr inbounds nuw i32, ptr %1, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %4 = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h48858054538ba0a9E(ptr noundef %1, ptr noundef %_16, ptr noundef %_18, i64 noundef %n84)
  %_20 = getelementptr inbounds nuw i32, ptr %2, i64 %count
  %_22 = getelementptr inbounds nuw i32, ptr %2, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %5 = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h48858054538ba0a9E(ptr noundef %2, ptr noundef %_20, ptr noundef %_22, i64 noundef %n84)
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

; core::slice::sort::shared::pivot::median3_rec
; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hff9a90d9cd780c94E(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i64 noundef range(i64 0, 288230376151711744) %n) unnamed_addr #0 {
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
  %3 = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hff9a90d9cd780c94E(ptr noundef %0, ptr noundef %_10, ptr noundef %_13, i64 noundef %n84)
  %_16 = getelementptr inbounds nuw float, ptr %1, i64 %count
  %_18 = getelementptr inbounds nuw float, ptr %1, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %4 = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hff9a90d9cd780c94E(ptr noundef %1, ptr noundef %_16, ptr noundef %_18, i64 noundef %n84)
  %_20 = getelementptr inbounds nuw float, ptr %2, i64 %count
  %_22 = getelementptr inbounds nuw float, ptr %2, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %5 = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hff9a90d9cd780c94E(ptr noundef %2, ptr noundef %_20, ptr noundef %_22, i64 noundef %n84)
  br label %bb6

bb6:                                              ; preds = %start, %bb1
  %c.sroa.0.0 = phi ptr [ %5, %bb1 ], [ %2, %start ]
  %b.sroa.0.0 = phi ptr [ %4, %bb1 ], [ %1, %start ]
  %a.sroa.0.0 = phi ptr [ %3, %bb1 ], [ %0, %start ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79), !noalias !82
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85), !noalias !82
  %_6.i.i = load float, ptr %a.sroa.0.0, align 4, !alias.scope !87, !noalias !88, !noundef !18
  %_7.i.i = load float, ptr %b.sroa.0.0, align 4, !alias.scope !89, !noalias !90, !noundef !18
  %brmerge.not.i = fcmp uno float %_6.i.i, %_7.i.i
  br i1 %brmerge.not.i, label %bb6.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit", !prof !21

bb6.i.i:                                          ; preds = %bb6
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_4a4e7fec44b84c1472b04d0c86f3e1b7) #18, !noalias !91
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit": ; preds = %bb6
  %_8.i.mux.i = fcmp olt float %_6.i.i, %_7.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95)
  %_7.i.i6 = load float, ptr %c.sroa.0.0, align 4, !alias.scope !98, !noalias !99, !noundef !18
  %brmerge.not.i7 = fcmp uno float %_6.i.i, %_7.i.i6
  br i1 %brmerge.not.i7, label %bb6.i.i9, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit10", !prof !21

bb6.i.i9:                                         ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit"
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_4a4e7fec44b84c1472b04d0c86f3e1b7) #18, !noalias !102
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit10": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit"
  %_8.i.mux.i8 = fcmp olt float %_6.i.i, %_7.i.i6
  %6 = xor i1 %_8.i.mux.i, %_8.i.mux.i8
  br i1 %6, label %_ZN4core5slice4sort6shared5pivot7median317hfc7ca460ee81ac1fE.exit, label %bb3.i

bb3.i:                                            ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit10"
  %brmerge.not.i13 = fcmp uno float %_7.i.i, %_7.i.i6
  br i1 %brmerge.not.i13, label %bb6.i.i15, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit16", !prof !21

bb6.i.i15:                                        ; preds = %bb3.i
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_4a4e7fec44b84c1472b04d0c86f3e1b7) #18, !noalias !103
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit16": ; preds = %bb3.i
  %_8.i.mux.i14 = fcmp olt float %_7.i.i, %_7.i.i6
  %_12.i = xor i1 %_8.i.mux.i, %_8.i.mux.i14
  %c.b.i = select i1 %_12.i, ptr %c.sroa.0.0, ptr %b.sroa.0.0
  br label %_ZN4core5slice4sort6shared5pivot7median317hfc7ca460ee81ac1fE.exit

_ZN4core5slice4sort6shared5pivot7median317hfc7ca460ee81ac1fE.exit: ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit10", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit16"
  %_0.sroa.0.0.i = phi ptr [ %a.sroa.0.0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit10" ], [ %c.b.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit16" ]
  ret ptr %_0.sroa.0.0.i
}

; core::slice::sort::shared::smallsort::sort4_stable
; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h1c3fb6f95c737a92E(ptr noundef nonnull readonly captures(none) %v_base, ptr noundef nonnull writeonly captures(none) %dst) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %_7 = getelementptr inbounds nuw i8, ptr %v_base, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !110)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !113)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !118)
  %_6.i.i = load float, ptr %_7, align 4, !alias.scope !120, !noalias !121, !noundef !18
  %_7.i.i = load float, ptr %v_base, align 4, !alias.scope !121, !noalias !120, !noundef !18
  %brmerge.not.i = fcmp uno float %_6.i.i, %_7.i.i
  br i1 %brmerge.not.i, label %bb6.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit", !prof !21

bb6.i.i:                                          ; preds = %start
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_b0e33ba48ef5fa15e44a55a18226b5ac) #18, !noalias !122
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit": ; preds = %start
  %_12 = getelementptr inbounds nuw i8, ptr %v_base, i64 12
  %_14 = getelementptr inbounds nuw i8, ptr %v_base, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !126)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !131)
  %_6.i.i7 = load float, ptr %_12, align 4, !alias.scope !133, !noalias !134, !noundef !18
  %_7.i.i8 = load float, ptr %_14, align 4, !alias.scope !134, !noalias !133, !noundef !18
  %brmerge.not.i9 = fcmp uno float %_6.i.i7, %_7.i.i8
  br i1 %brmerge.not.i9, label %bb6.i.i11, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit12", !prof !21

bb6.i.i11:                                        ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit"
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_b0e33ba48ef5fa15e44a55a18226b5ac) #18, !noalias !135
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit12": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit"
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !139)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !141)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !144)
  %_6.i.i13 = load float, ptr %c, align 4, !alias.scope !146, !noalias !147, !noundef !18
  %_7.i.i14 = load float, ptr %a, align 4, !alias.scope !147, !noalias !146, !noundef !18
  %brmerge.not.i15 = fcmp uno float %_6.i.i13, %_7.i.i14
  br i1 %brmerge.not.i15, label %bb6.i.i17, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit18", !prof !21

bb6.i.i17:                                        ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit12"
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_b0e33ba48ef5fa15e44a55a18226b5ac) #18, !noalias !148
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit18": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit12"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !152)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !154)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !157)
  %_6.i.i19 = load float, ptr %d, align 4, !alias.scope !159, !noalias !160, !noundef !18
  %_7.i.i20 = load float, ptr %b, align 4, !alias.scope !160, !noalias !159, !noundef !18
  %brmerge.not.i21 = fcmp uno float %_6.i.i19, %_7.i.i20
  br i1 %brmerge.not.i21, label %bb6.i.i23, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit24", !prof !21

bb6.i.i23:                                        ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit18"
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_b0e33ba48ef5fa15e44a55a18226b5ac) #18, !noalias !161
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit24": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit18"
  %_8.i.mux.i16 = fcmp olt float %_6.i.i13, %_7.i.i14
  %_8.i.mux.i22 = fcmp olt float %_6.i.i19, %_7.i.i20
  %0 = select i1 %_8.i.mux.i22, ptr %c, ptr %b, !unpredictable !18
  %1 = select i1 %_8.i.mux.i16, ptr %a, ptr %0, !unpredictable !18
  %2 = select i1 %_8.i.mux.i16, ptr %b, ptr %c, !unpredictable !18
  %3 = select i1 %_8.i.mux.i22, ptr %d, ptr %2, !unpredictable !18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !162)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !165)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !167)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !170)
  %_6.i.i25 = load float, ptr %3, align 4, !alias.scope !172, !noalias !173, !noundef !18
  %_7.i.i26 = load float, ptr %1, align 4, !alias.scope !173, !noalias !172, !noundef !18
  %brmerge.not.i27 = fcmp uno float %_6.i.i25, %_7.i.i26
  br i1 %brmerge.not.i27, label %bb6.i.i29, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit30", !prof !21

bb6.i.i29:                                        ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit24"
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_b0e33ba48ef5fa15e44a55a18226b5ac) #18, !noalias !174
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit30": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit24"
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

; core::slice::sort::shared::smallsort::sort4_stable
; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h7be21866dd44a082E(ptr noundef nonnull readonly captures(none) %v_base, ptr noundef nonnull writeonly captures(none) %dst) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %_7 = getelementptr inbounds nuw i8, ptr %v_base, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !175)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !178)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !180)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !183)
  %_6.i.i = load float, ptr %_7, align 4, !alias.scope !185, !noalias !186, !noundef !18
  %_7.i.i = load float, ptr %v_base, align 4, !alias.scope !186, !noalias !185, !noundef !18
  %brmerge.not.i = fcmp uno float %_6.i.i, %_7.i.i
  br i1 %brmerge.not.i, label %bb6.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit", !prof !21

bb6.i.i:                                          ; preds = %start
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_4a4e7fec44b84c1472b04d0c86f3e1b7) #18, !noalias !187
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit": ; preds = %start
  %_12 = getelementptr inbounds nuw i8, ptr %v_base, i64 12
  %_14 = getelementptr inbounds nuw i8, ptr %v_base, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !188)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !191)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !193)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !196)
  %_6.i.i7 = load float, ptr %_12, align 4, !alias.scope !198, !noalias !199, !noundef !18
  %_7.i.i8 = load float, ptr %_14, align 4, !alias.scope !199, !noalias !198, !noundef !18
  %brmerge.not.i9 = fcmp uno float %_6.i.i7, %_7.i.i8
  br i1 %brmerge.not.i9, label %bb6.i.i11, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit12", !prof !21

bb6.i.i11:                                        ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit"
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_4a4e7fec44b84c1472b04d0c86f3e1b7) #18, !noalias !200
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit12": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit"
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !201)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !204)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !206)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !209)
  %_6.i.i13 = load float, ptr %c, align 4, !alias.scope !211, !noalias !212, !noundef !18
  %_7.i.i14 = load float, ptr %a, align 4, !alias.scope !212, !noalias !211, !noundef !18
  %brmerge.not.i15 = fcmp uno float %_6.i.i13, %_7.i.i14
  br i1 %brmerge.not.i15, label %bb6.i.i17, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit18", !prof !21

bb6.i.i17:                                        ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit12"
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_4a4e7fec44b84c1472b04d0c86f3e1b7) #18, !noalias !213
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit18": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit12"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !214)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !217)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !219)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !222)
  %_6.i.i19 = load float, ptr %d, align 4, !alias.scope !224, !noalias !225, !noundef !18
  %_7.i.i20 = load float, ptr %b, align 4, !alias.scope !225, !noalias !224, !noundef !18
  %brmerge.not.i21 = fcmp uno float %_6.i.i19, %_7.i.i20
  br i1 %brmerge.not.i21, label %bb6.i.i23, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit24", !prof !21

bb6.i.i23:                                        ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit18"
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_4a4e7fec44b84c1472b04d0c86f3e1b7) #18, !noalias !226
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit24": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit18"
  %_8.i.mux.i16 = fcmp olt float %_6.i.i13, %_7.i.i14
  %_8.i.mux.i22 = fcmp olt float %_6.i.i19, %_7.i.i20
  %0 = select i1 %_8.i.mux.i22, ptr %c, ptr %b, !unpredictable !18
  %1 = select i1 %_8.i.mux.i16, ptr %a, ptr %0, !unpredictable !18
  %2 = select i1 %_8.i.mux.i16, ptr %b, ptr %c, !unpredictable !18
  %3 = select i1 %_8.i.mux.i22, ptr %d, ptr %2, !unpredictable !18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !227)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !230)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !232)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !235)
  %_6.i.i25 = load float, ptr %3, align 4, !alias.scope !237, !noalias !238, !noundef !18
  %_7.i.i26 = load float, ptr %1, align 4, !alias.scope !238, !noalias !237, !noundef !18
  %brmerge.not.i27 = fcmp uno float %_6.i.i25, %_7.i.i26
  br i1 %brmerge.not.i27, label %bb6.i.i29, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit30", !prof !21

bb6.i.i29:                                        ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit24"
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_4a4e7fec44b84c1472b04d0c86f3e1b7) #18, !noalias !239
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit30": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit24"
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
define internal fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h0c524828a1a47f46E(ptr noundef nonnull readonly captures(none) %v_base, ptr noundef nonnull writeonly captures(none) %dst, ptr noundef nonnull captures(address) %scratch_base) unnamed_addr #0 {
start:
; call core::slice::sort::shared::smallsort::sort4_stable
  tail call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h1c3fb6f95c737a92E(ptr noundef %v_base, ptr noundef %scratch_base)
  %_9 = getelementptr inbounds nuw i8, ptr %v_base, i64 16
  %_10 = getelementptr inbounds nuw i8, ptr %scratch_base, i64 16
; call core::slice::sort::shared::smallsort::sort4_stable
  tail call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h1c3fb6f95c737a92E(ptr noundef %_9, ptr noundef %_10)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !240)
  %0 = getelementptr inbounds nuw i8, ptr %dst, i64 28
  %1 = getelementptr inbounds nuw i8, ptr %scratch_base, i64 28
  %2 = getelementptr i8, ptr %scratch_base, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !243)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !246)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !248), !noalias !251
  tail call void @llvm.experimental.noalias.scope.decl(metadata !254), !noalias !251
  %_6.i.i.i = load float, ptr %_10, align 4, !alias.scope !256, !noalias !257, !noundef !18
  %_7.i.i.i = load float, ptr %scratch_base, align 4, !alias.scope !258, !noalias !259, !noundef !18
  %brmerge.not.i.i = fcmp uno float %_6.i.i.i, %_7.i.i.i
  br i1 %brmerge.not.i.i, label %bb6.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i", !prof !21

bb6.i.i.i:                                        ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit24.i.2", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit24.i.1", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit24.i", %start
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_b0e33ba48ef5fa15e44a55a18226b5ac) #18, !noalias !260
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i": ; preds = %start
  %_8.i.mux.i.i = fcmp olt float %_6.i.i.i, %_7.i.i.i
  %..i17.i = select i1 %_8.i.mux.i.i, ptr %_10, ptr %scratch_base
  %3 = load i32, ptr %..i17.i, align 4, !alias.scope !240, !noalias !261
  store i32 %3, ptr %dst, align 4, !noalias !263
  tail call void @llvm.experimental.noalias.scope.decl(metadata !264)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !267)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !269), !noalias !272
  tail call void @llvm.experimental.noalias.scope.decl(metadata !275), !noalias !272
  %_6.i.i19.i = load float, ptr %1, align 4, !alias.scope !277, !noalias !278, !noundef !18
  %_7.i.i20.i = load float, ptr %2, align 4, !alias.scope !279, !noalias !280, !noundef !18
  %brmerge.not.i21.i = fcmp uno float %_6.i.i19.i, %_7.i.i20.i
  br i1 %brmerge.not.i21.i, label %bb6.i.i23.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit24.i", !prof !21

bb6.i.i23.i:                                      ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i.3", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i.2", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i.1", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i"
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_b0e33ba48ef5fa15e44a55a18226b5ac) #18, !noalias !281
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit24.i": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i"
  %is_l.i18.i = xor i1 %_8.i.mux.i.i, true
  %count2.i.i = zext i1 %is_l.i18.i to i64
  %_14.i.i = getelementptr inbounds nuw float, ptr %scratch_base, i64 %count2.i.i
  %count.i.i = zext i1 %_8.i.mux.i.i to i64
  %_12.i.i = getelementptr inbounds nuw float, ptr %_10, i64 %count.i.i
  %_8.i.mux.i22.i = fcmp olt float %_6.i.i19.i, %_7.i.i20.i
  %..i.i = select i1 %_8.i.mux.i22.i, ptr %2, ptr %1
  %is_l.i.i = xor i1 %_8.i.mux.i22.i, true
  %4 = load i32, ptr %..i.i, align 4, !alias.scope !240, !noalias !282
  store i32 %4, ptr %0, align 4, !noalias !284
  %count.neg.i.i = sext i1 %is_l.i.i to i64
  %5 = getelementptr float, ptr %1, i64 %count.neg.i.i
  %count3.neg.i.i = sext i1 %_8.i.mux.i22.i to i64
  %6 = getelementptr float, ptr %2, i64 %count3.neg.i.i
  %7 = getelementptr inbounds nuw i8, ptr %dst, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !285)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !287)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !289), !noalias !251
  tail call void @llvm.experimental.noalias.scope.decl(metadata !291), !noalias !251
  %_6.i.i.i.1 = load float, ptr %_12.i.i, align 4, !alias.scope !293, !noalias !294, !noundef !18
  %_7.i.i.i.1 = load float, ptr %_14.i.i, align 4, !alias.scope !295, !noalias !296, !noundef !18
  %brmerge.not.i.i.1 = fcmp uno float %_6.i.i.i.1, %_7.i.i.i.1
  br i1 %brmerge.not.i.i.1, label %bb6.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i.1", !prof !21

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i.1": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit24.i"
  %_16.i.i = getelementptr inbounds nuw i8, ptr %dst, i64 4
  %_8.i.mux.i.i.1 = fcmp olt float %_6.i.i.i.1, %_7.i.i.i.1
  %..i17.i.1 = select i1 %_8.i.mux.i.i.1, ptr %_12.i.i, ptr %_14.i.i
  %8 = load i32, ptr %..i17.i.1, align 4, !alias.scope !240, !noalias !261
  store i32 %8, ptr %_16.i.i, align 4, !noalias !263
  tail call void @llvm.experimental.noalias.scope.decl(metadata !297)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !299)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !301), !noalias !272
  tail call void @llvm.experimental.noalias.scope.decl(metadata !303), !noalias !272
  %_6.i.i19.i.1 = load float, ptr %5, align 4, !alias.scope !305, !noalias !306, !noundef !18
  %_7.i.i20.i.1 = load float, ptr %6, align 4, !alias.scope !307, !noalias !308, !noundef !18
  %brmerge.not.i21.i.1 = fcmp uno float %_6.i.i19.i.1, %_7.i.i20.i.1
  br i1 %brmerge.not.i21.i.1, label %bb6.i.i23.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit24.i.1", !prof !21

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit24.i.1": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i.1"
  %is_l.i18.i.1 = xor i1 %_8.i.mux.i.i.1, true
  %count2.i.i.1 = zext i1 %is_l.i18.i.1 to i64
  %_14.i.i.1 = getelementptr inbounds nuw float, ptr %_14.i.i, i64 %count2.i.i.1
  %count.i.i.1 = zext i1 %_8.i.mux.i.i.1 to i64
  %_12.i.i.1 = getelementptr inbounds nuw float, ptr %_12.i.i, i64 %count.i.i.1
  %_8.i.mux.i22.i.1 = fcmp olt float %_6.i.i19.i.1, %_7.i.i20.i.1
  %..i.i.1 = select i1 %_8.i.mux.i22.i.1, ptr %6, ptr %5
  %is_l.i.i.1 = xor i1 %_8.i.mux.i22.i.1, true
  %9 = load i32, ptr %..i.i.1, align 4, !alias.scope !240, !noalias !282
  store i32 %9, ptr %7, align 4, !noalias !284
  %count.neg.i.i.1 = sext i1 %is_l.i.i.1 to i64
  %10 = getelementptr float, ptr %5, i64 %count.neg.i.i.1
  %count3.neg.i.i.1 = sext i1 %_8.i.mux.i22.i.1 to i64
  %11 = getelementptr float, ptr %6, i64 %count3.neg.i.i.1
  %12 = getelementptr inbounds nuw i8, ptr %dst, i64 20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !309)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !311)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !313), !noalias !251
  tail call void @llvm.experimental.noalias.scope.decl(metadata !315), !noalias !251
  %_6.i.i.i.2 = load float, ptr %_12.i.i.1, align 4, !alias.scope !317, !noalias !318, !noundef !18
  %_7.i.i.i.2 = load float, ptr %_14.i.i.1, align 4, !alias.scope !319, !noalias !320, !noundef !18
  %brmerge.not.i.i.2 = fcmp uno float %_6.i.i.i.2, %_7.i.i.i.2
  br i1 %brmerge.not.i.i.2, label %bb6.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i.2", !prof !21

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i.2": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit24.i.1"
  %_16.i.i.1 = getelementptr inbounds nuw i8, ptr %dst, i64 8
  %_8.i.mux.i.i.2 = fcmp olt float %_6.i.i.i.2, %_7.i.i.i.2
  %..i17.i.2 = select i1 %_8.i.mux.i.i.2, ptr %_12.i.i.1, ptr %_14.i.i.1
  %13 = load i32, ptr %..i17.i.2, align 4, !alias.scope !240, !noalias !261
  store i32 %13, ptr %_16.i.i.1, align 4, !noalias !263
  tail call void @llvm.experimental.noalias.scope.decl(metadata !321)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !323)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !325), !noalias !272
  tail call void @llvm.experimental.noalias.scope.decl(metadata !327), !noalias !272
  %_6.i.i19.i.2 = load float, ptr %10, align 4, !alias.scope !329, !noalias !330, !noundef !18
  %_7.i.i20.i.2 = load float, ptr %11, align 4, !alias.scope !331, !noalias !332, !noundef !18
  %brmerge.not.i21.i.2 = fcmp uno float %_6.i.i19.i.2, %_7.i.i20.i.2
  br i1 %brmerge.not.i21.i.2, label %bb6.i.i23.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit24.i.2", !prof !21

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit24.i.2": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i.2"
  %is_l.i18.i.2 = xor i1 %_8.i.mux.i.i.2, true
  %count2.i.i.2 = zext i1 %is_l.i18.i.2 to i64
  %_14.i.i.2 = getelementptr inbounds nuw float, ptr %_14.i.i.1, i64 %count2.i.i.2
  %count.i.i.2 = zext i1 %_8.i.mux.i.i.2 to i64
  %_12.i.i.2 = getelementptr inbounds nuw float, ptr %_12.i.i.1, i64 %count.i.i.2
  %_8.i.mux.i22.i.2 = fcmp olt float %_6.i.i19.i.2, %_7.i.i20.i.2
  %..i.i.2 = select i1 %_8.i.mux.i22.i.2, ptr %11, ptr %10
  %is_l.i.i.2 = xor i1 %_8.i.mux.i22.i.2, true
  %14 = load i32, ptr %..i.i.2, align 4, !alias.scope !240, !noalias !282
  store i32 %14, ptr %12, align 4, !noalias !284
  %count.neg.i.i.2 = sext i1 %is_l.i.i.2 to i64
  %15 = getelementptr float, ptr %10, i64 %count.neg.i.i.2
  %count3.neg.i.i.2 = sext i1 %_8.i.mux.i22.i.2 to i64
  %16 = getelementptr float, ptr %11, i64 %count3.neg.i.i.2
  %17 = getelementptr inbounds nuw i8, ptr %dst, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !333)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !335)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !337), !noalias !251
  tail call void @llvm.experimental.noalias.scope.decl(metadata !339), !noalias !251
  %_6.i.i.i.3 = load float, ptr %_12.i.i.2, align 4, !alias.scope !341, !noalias !342, !noundef !18
  %_7.i.i.i.3 = load float, ptr %_14.i.i.2, align 4, !alias.scope !343, !noalias !344, !noundef !18
  %brmerge.not.i.i.3 = fcmp uno float %_6.i.i.i.3, %_7.i.i.i.3
  br i1 %brmerge.not.i.i.3, label %bb6.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i.3", !prof !21

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i.3": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit24.i.2"
  %_16.i.i.2 = getelementptr inbounds nuw i8, ptr %dst, i64 12
  %_8.i.mux.i.i.3 = fcmp olt float %_6.i.i.i.3, %_7.i.i.i.3
  %..i17.i.3 = select i1 %_8.i.mux.i.i.3, ptr %_12.i.i.2, ptr %_14.i.i.2
  %18 = load i32, ptr %..i17.i.3, align 4, !alias.scope !240, !noalias !261
  store i32 %18, ptr %_16.i.i.2, align 4, !noalias !263
  tail call void @llvm.experimental.noalias.scope.decl(metadata !345)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !347)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !349), !noalias !272
  tail call void @llvm.experimental.noalias.scope.decl(metadata !351), !noalias !272
  %_6.i.i19.i.3 = load float, ptr %15, align 4, !alias.scope !353, !noalias !354, !noundef !18
  %_7.i.i20.i.3 = load float, ptr %16, align 4, !alias.scope !355, !noalias !356, !noundef !18
  %brmerge.not.i21.i.3 = fcmp uno float %_6.i.i19.i.3, %_7.i.i20.i.3
  br i1 %brmerge.not.i21.i.3, label %bb6.i.i23.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit24.i.3", !prof !21

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit24.i.3": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i.3"
  %is_l.i18.i.3 = xor i1 %_8.i.mux.i.i.3, true
  %count2.i.i.3 = zext i1 %is_l.i18.i.3 to i64
  %_14.i.i.3 = getelementptr inbounds nuw float, ptr %_14.i.i.2, i64 %count2.i.i.3
  %count.i.i.3 = zext i1 %_8.i.mux.i.i.3 to i64
  %_12.i.i.3 = getelementptr inbounds nuw float, ptr %_12.i.i.2, i64 %count.i.i.3
  %_8.i.mux.i22.i.3 = fcmp olt float %_6.i.i19.i.3, %_7.i.i20.i.3
  %..i.i.3 = select i1 %_8.i.mux.i22.i.3, ptr %16, ptr %15
  %is_l.i.i.3 = xor i1 %_8.i.mux.i22.i.3, true
  %19 = load i32, ptr %..i.i.3, align 4, !alias.scope !240, !noalias !282
  store i32 %19, ptr %17, align 4, !noalias !284
  %count.neg.i.i.3 = sext i1 %is_l.i.i.3 to i64
  %20 = getelementptr float, ptr %15, i64 %count.neg.i.i.3
  %count3.neg.i.i.3 = sext i1 %_8.i.mux.i22.i.3 to i64
  %21 = getelementptr float, ptr %16, i64 %count3.neg.i.i.3
  %22 = getelementptr i8, ptr %21, i64 4
  %23 = getelementptr i8, ptr %20, i64 4
  %_31.i = icmp ne ptr %_14.i.i.3, %22
  %_32.i = icmp ne ptr %_12.i.i.3, %23
  %or.cond.i = select i1 %_31.i, i1 true, i1 %_32.i
  br i1 %or.cond.i, label %bb13.i, label %_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17ha5355d97ee5c682eE.exit, !prof !357

bb13.i:                                           ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit24.i.3"
; call core::slice::sort::shared::smallsort::panic_on_ord_violation
  tail call void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #18, !noalias !240
  unreachable

_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17ha5355d97ee5c682eE.exit: ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit24.i.3"
  ret void
}

; core::slice::sort::shared::smallsort::sort8_stable
; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h3ae107a90c900d55E(ptr noundef nonnull readonly captures(none) %v_base, ptr noundef nonnull writeonly captures(none) %dst, ptr noundef nonnull captures(address) %scratch_base) unnamed_addr #0 {
start:
; call core::slice::sort::shared::smallsort::sort4_stable
  tail call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h7be21866dd44a082E(ptr noundef %v_base, ptr noundef %scratch_base)
  %_9 = getelementptr inbounds nuw i8, ptr %v_base, i64 16
  %_10 = getelementptr inbounds nuw i8, ptr %scratch_base, i64 16
; call core::slice::sort::shared::smallsort::sort4_stable
  tail call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h7be21866dd44a082E(ptr noundef %_9, ptr noundef %_10)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !358)
  %0 = getelementptr inbounds nuw i8, ptr %dst, i64 28
  %1 = getelementptr inbounds nuw i8, ptr %scratch_base, i64 28
  %2 = getelementptr i8, ptr %scratch_base, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !361)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !364)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !366), !noalias !369
  tail call void @llvm.experimental.noalias.scope.decl(metadata !372), !noalias !369
  %_6.i.i.i = load float, ptr %_10, align 4, !alias.scope !374, !noalias !375, !noundef !18
  %_7.i.i.i = load float, ptr %scratch_base, align 4, !alias.scope !376, !noalias !377, !noundef !18
  %brmerge.not.i.i = fcmp uno float %_6.i.i.i, %_7.i.i.i
  br i1 %brmerge.not.i.i, label %bb6.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i", !prof !21

bb6.i.i.i:                                        ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit24.i.2", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit24.i.1", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit24.i", %start
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_4a4e7fec44b84c1472b04d0c86f3e1b7) #18, !noalias !378
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i": ; preds = %start
  %_8.i.mux.i.i = fcmp olt float %_6.i.i.i, %_7.i.i.i
  %..i17.i = select i1 %_8.i.mux.i.i, ptr %_10, ptr %scratch_base
  %3 = load i32, ptr %..i17.i, align 4, !alias.scope !358, !noalias !379
  store i32 %3, ptr %dst, align 4, !noalias !381
  tail call void @llvm.experimental.noalias.scope.decl(metadata !382)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !385)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !387), !noalias !390
  tail call void @llvm.experimental.noalias.scope.decl(metadata !393), !noalias !390
  %_6.i.i19.i = load float, ptr %1, align 4, !alias.scope !395, !noalias !396, !noundef !18
  %_7.i.i20.i = load float, ptr %2, align 4, !alias.scope !397, !noalias !398, !noundef !18
  %brmerge.not.i21.i = fcmp uno float %_6.i.i19.i, %_7.i.i20.i
  br i1 %brmerge.not.i21.i, label %bb6.i.i23.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit24.i", !prof !21

bb6.i.i23.i:                                      ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i.3", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i.2", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i.1", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i"
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_4a4e7fec44b84c1472b04d0c86f3e1b7) #18, !noalias !399
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit24.i": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i"
  %is_l.i18.i = xor i1 %_8.i.mux.i.i, true
  %count2.i.i = zext i1 %is_l.i18.i to i64
  %_14.i.i = getelementptr inbounds nuw float, ptr %scratch_base, i64 %count2.i.i
  %count.i.i = zext i1 %_8.i.mux.i.i to i64
  %_12.i.i = getelementptr inbounds nuw float, ptr %_10, i64 %count.i.i
  %_8.i.mux.i22.i = fcmp olt float %_6.i.i19.i, %_7.i.i20.i
  %..i.i = select i1 %_8.i.mux.i22.i, ptr %2, ptr %1
  %is_l.i.i = xor i1 %_8.i.mux.i22.i, true
  %4 = load i32, ptr %..i.i, align 4, !alias.scope !358, !noalias !400
  store i32 %4, ptr %0, align 4, !noalias !402
  %count.neg.i.i = sext i1 %is_l.i.i to i64
  %5 = getelementptr float, ptr %1, i64 %count.neg.i.i
  %count3.neg.i.i = sext i1 %_8.i.mux.i22.i to i64
  %6 = getelementptr float, ptr %2, i64 %count3.neg.i.i
  %7 = getelementptr inbounds nuw i8, ptr %dst, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !403)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !405)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !407), !noalias !369
  tail call void @llvm.experimental.noalias.scope.decl(metadata !409), !noalias !369
  %_6.i.i.i.1 = load float, ptr %_12.i.i, align 4, !alias.scope !411, !noalias !412, !noundef !18
  %_7.i.i.i.1 = load float, ptr %_14.i.i, align 4, !alias.scope !413, !noalias !414, !noundef !18
  %brmerge.not.i.i.1 = fcmp uno float %_6.i.i.i.1, %_7.i.i.i.1
  br i1 %brmerge.not.i.i.1, label %bb6.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i.1", !prof !21

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i.1": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit24.i"
  %_16.i.i = getelementptr inbounds nuw i8, ptr %dst, i64 4
  %_8.i.mux.i.i.1 = fcmp olt float %_6.i.i.i.1, %_7.i.i.i.1
  %..i17.i.1 = select i1 %_8.i.mux.i.i.1, ptr %_12.i.i, ptr %_14.i.i
  %8 = load i32, ptr %..i17.i.1, align 4, !alias.scope !358, !noalias !379
  store i32 %8, ptr %_16.i.i, align 4, !noalias !381
  tail call void @llvm.experimental.noalias.scope.decl(metadata !415)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !417)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !419), !noalias !390
  tail call void @llvm.experimental.noalias.scope.decl(metadata !421), !noalias !390
  %_6.i.i19.i.1 = load float, ptr %5, align 4, !alias.scope !423, !noalias !424, !noundef !18
  %_7.i.i20.i.1 = load float, ptr %6, align 4, !alias.scope !425, !noalias !426, !noundef !18
  %brmerge.not.i21.i.1 = fcmp uno float %_6.i.i19.i.1, %_7.i.i20.i.1
  br i1 %brmerge.not.i21.i.1, label %bb6.i.i23.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit24.i.1", !prof !21

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit24.i.1": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i.1"
  %is_l.i18.i.1 = xor i1 %_8.i.mux.i.i.1, true
  %count2.i.i.1 = zext i1 %is_l.i18.i.1 to i64
  %_14.i.i.1 = getelementptr inbounds nuw float, ptr %_14.i.i, i64 %count2.i.i.1
  %count.i.i.1 = zext i1 %_8.i.mux.i.i.1 to i64
  %_12.i.i.1 = getelementptr inbounds nuw float, ptr %_12.i.i, i64 %count.i.i.1
  %_8.i.mux.i22.i.1 = fcmp olt float %_6.i.i19.i.1, %_7.i.i20.i.1
  %..i.i.1 = select i1 %_8.i.mux.i22.i.1, ptr %6, ptr %5
  %is_l.i.i.1 = xor i1 %_8.i.mux.i22.i.1, true
  %9 = load i32, ptr %..i.i.1, align 4, !alias.scope !358, !noalias !400
  store i32 %9, ptr %7, align 4, !noalias !402
  %count.neg.i.i.1 = sext i1 %is_l.i.i.1 to i64
  %10 = getelementptr float, ptr %5, i64 %count.neg.i.i.1
  %count3.neg.i.i.1 = sext i1 %_8.i.mux.i22.i.1 to i64
  %11 = getelementptr float, ptr %6, i64 %count3.neg.i.i.1
  %12 = getelementptr inbounds nuw i8, ptr %dst, i64 20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !427)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !429)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !431), !noalias !369
  tail call void @llvm.experimental.noalias.scope.decl(metadata !433), !noalias !369
  %_6.i.i.i.2 = load float, ptr %_12.i.i.1, align 4, !alias.scope !435, !noalias !436, !noundef !18
  %_7.i.i.i.2 = load float, ptr %_14.i.i.1, align 4, !alias.scope !437, !noalias !438, !noundef !18
  %brmerge.not.i.i.2 = fcmp uno float %_6.i.i.i.2, %_7.i.i.i.2
  br i1 %brmerge.not.i.i.2, label %bb6.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i.2", !prof !21

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i.2": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit24.i.1"
  %_16.i.i.1 = getelementptr inbounds nuw i8, ptr %dst, i64 8
  %_8.i.mux.i.i.2 = fcmp olt float %_6.i.i.i.2, %_7.i.i.i.2
  %..i17.i.2 = select i1 %_8.i.mux.i.i.2, ptr %_12.i.i.1, ptr %_14.i.i.1
  %13 = load i32, ptr %..i17.i.2, align 4, !alias.scope !358, !noalias !379
  store i32 %13, ptr %_16.i.i.1, align 4, !noalias !381
  tail call void @llvm.experimental.noalias.scope.decl(metadata !439)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !441)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !443), !noalias !390
  tail call void @llvm.experimental.noalias.scope.decl(metadata !445), !noalias !390
  %_6.i.i19.i.2 = load float, ptr %10, align 4, !alias.scope !447, !noalias !448, !noundef !18
  %_7.i.i20.i.2 = load float, ptr %11, align 4, !alias.scope !449, !noalias !450, !noundef !18
  %brmerge.not.i21.i.2 = fcmp uno float %_6.i.i19.i.2, %_7.i.i20.i.2
  br i1 %brmerge.not.i21.i.2, label %bb6.i.i23.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit24.i.2", !prof !21

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit24.i.2": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i.2"
  %is_l.i18.i.2 = xor i1 %_8.i.mux.i.i.2, true
  %count2.i.i.2 = zext i1 %is_l.i18.i.2 to i64
  %_14.i.i.2 = getelementptr inbounds nuw float, ptr %_14.i.i.1, i64 %count2.i.i.2
  %count.i.i.2 = zext i1 %_8.i.mux.i.i.2 to i64
  %_12.i.i.2 = getelementptr inbounds nuw float, ptr %_12.i.i.1, i64 %count.i.i.2
  %_8.i.mux.i22.i.2 = fcmp olt float %_6.i.i19.i.2, %_7.i.i20.i.2
  %..i.i.2 = select i1 %_8.i.mux.i22.i.2, ptr %11, ptr %10
  %is_l.i.i.2 = xor i1 %_8.i.mux.i22.i.2, true
  %14 = load i32, ptr %..i.i.2, align 4, !alias.scope !358, !noalias !400
  store i32 %14, ptr %12, align 4, !noalias !402
  %count.neg.i.i.2 = sext i1 %is_l.i.i.2 to i64
  %15 = getelementptr float, ptr %10, i64 %count.neg.i.i.2
  %count3.neg.i.i.2 = sext i1 %_8.i.mux.i22.i.2 to i64
  %16 = getelementptr float, ptr %11, i64 %count3.neg.i.i.2
  %17 = getelementptr inbounds nuw i8, ptr %dst, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !451)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !453)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !455), !noalias !369
  tail call void @llvm.experimental.noalias.scope.decl(metadata !457), !noalias !369
  %_6.i.i.i.3 = load float, ptr %_12.i.i.2, align 4, !alias.scope !459, !noalias !460, !noundef !18
  %_7.i.i.i.3 = load float, ptr %_14.i.i.2, align 4, !alias.scope !461, !noalias !462, !noundef !18
  %brmerge.not.i.i.3 = fcmp uno float %_6.i.i.i.3, %_7.i.i.i.3
  br i1 %brmerge.not.i.i.3, label %bb6.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i.3", !prof !21

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i.3": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit24.i.2"
  %_16.i.i.2 = getelementptr inbounds nuw i8, ptr %dst, i64 12
  %_8.i.mux.i.i.3 = fcmp olt float %_6.i.i.i.3, %_7.i.i.i.3
  %..i17.i.3 = select i1 %_8.i.mux.i.i.3, ptr %_12.i.i.2, ptr %_14.i.i.2
  %18 = load i32, ptr %..i17.i.3, align 4, !alias.scope !358, !noalias !379
  store i32 %18, ptr %_16.i.i.2, align 4, !noalias !381
  tail call void @llvm.experimental.noalias.scope.decl(metadata !463)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !465)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !467), !noalias !390
  tail call void @llvm.experimental.noalias.scope.decl(metadata !469), !noalias !390
  %_6.i.i19.i.3 = load float, ptr %15, align 4, !alias.scope !471, !noalias !472, !noundef !18
  %_7.i.i20.i.3 = load float, ptr %16, align 4, !alias.scope !473, !noalias !474, !noundef !18
  %brmerge.not.i21.i.3 = fcmp uno float %_6.i.i19.i.3, %_7.i.i20.i.3
  br i1 %brmerge.not.i21.i.3, label %bb6.i.i23.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit24.i.3", !prof !21

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit24.i.3": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i.3"
  %is_l.i18.i.3 = xor i1 %_8.i.mux.i.i.3, true
  %count2.i.i.3 = zext i1 %is_l.i18.i.3 to i64
  %_14.i.i.3 = getelementptr inbounds nuw float, ptr %_14.i.i.2, i64 %count2.i.i.3
  %count.i.i.3 = zext i1 %_8.i.mux.i.i.3 to i64
  %_12.i.i.3 = getelementptr inbounds nuw float, ptr %_12.i.i.2, i64 %count.i.i.3
  %_8.i.mux.i22.i.3 = fcmp olt float %_6.i.i19.i.3, %_7.i.i20.i.3
  %..i.i.3 = select i1 %_8.i.mux.i22.i.3, ptr %16, ptr %15
  %is_l.i.i.3 = xor i1 %_8.i.mux.i22.i.3, true
  %19 = load i32, ptr %..i.i.3, align 4, !alias.scope !358, !noalias !400
  store i32 %19, ptr %17, align 4, !noalias !402
  %count.neg.i.i.3 = sext i1 %is_l.i.i.3 to i64
  %20 = getelementptr float, ptr %15, i64 %count.neg.i.i.3
  %count3.neg.i.i.3 = sext i1 %_8.i.mux.i22.i.3 to i64
  %21 = getelementptr float, ptr %16, i64 %count3.neg.i.i.3
  %22 = getelementptr i8, ptr %21, i64 4
  %23 = getelementptr i8, ptr %20, i64 4
  %_31.i = icmp ne ptr %_14.i.i.3, %22
  %_32.i = icmp ne ptr %_12.i.i.3, %23
  %or.cond.i = select i1 %_31.i, i1 true, i1 %_32.i
  br i1 %or.cond.i, label %bb13.i, label %_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h8fd5afa469382f2aE.exit, !prof !357

bb13.i:                                           ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit24.i.3"
; call core::slice::sort::shared::smallsort::panic_on_ord_violation
  tail call void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #18, !noalias !358
  unreachable

_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h8fd5afa469382f2aE.exit: ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit24.i.3"
  ret void
}

; core::slice::sort::shared::smallsort::sort8_stable
; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17had7ded36d12690dcE(ptr noundef nonnull readonly captures(none) %v_base, ptr noundef nonnull writeonly captures(none) initializes((0, 32)) %dst, ptr noundef nonnull captures(address) initializes((0, 32)) %scratch_base) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %_7.i = getelementptr inbounds nuw i8, ptr %v_base, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !475)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !478)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !480)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !483)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !485)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !488)
  %_3.i.i.i.i = load i32, ptr %_7.i, align 4, !alias.scope !490, !noalias !491, !noundef !18
  %_4.i.i.i.i = load i32, ptr %v_base, align 4, !alias.scope !491, !noalias !490, !noundef !18
  %_0.i.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %_12.i = getelementptr inbounds nuw i8, ptr %v_base, i64 12
  %_14.i = getelementptr inbounds nuw i8, ptr %v_base, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !492)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !495)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !497)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !500)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !502)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !505)
  %_3.i.i.i7.i = load i32, ptr %_12.i, align 4, !alias.scope !507, !noalias !508, !noundef !18
  %_4.i.i.i8.i = load i32, ptr %_14.i, align 4, !alias.scope !508, !noalias !507, !noundef !18
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !509)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !512)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !514)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !517)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !519)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !522)
  %_3.i.i.i10.i = load i32, ptr %c.i, align 4, !alias.scope !524, !noalias !525, !noundef !18
  %_4.i.i.i11.i = load i32, ptr %a.i, align 4, !alias.scope !525, !noalias !524, !noundef !18
  %_0.i12.i = icmp slt i32 %_3.i.i.i10.i, %_4.i.i.i11.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !526)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !529)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !531)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !534)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !536)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !539)
  %_3.i.i.i13.i = load i32, ptr %d.i, align 4, !alias.scope !541, !noalias !542, !noundef !18
  %_4.i.i.i14.i = load i32, ptr %b.i, align 4, !alias.scope !542, !noalias !541, !noundef !18
  %_0.i15.i = icmp slt i32 %_3.i.i.i13.i, %_4.i.i.i14.i
  %0 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i10.i, i32 %_4.i.i.i11.i)
  %1 = select i1 %_0.i15.i, ptr %c.i, ptr %b.i, !unpredictable !18
  %2 = select i1 %_0.i12.i, ptr %a.i, ptr %1, !unpredictable !18
  %3 = select i1 %_0.i12.i, ptr %b.i, ptr %c.i, !unpredictable !18
  %4 = select i1 %_0.i15.i, ptr %d.i, ptr %3, !unpredictable !18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !543)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !546)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !548)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !551)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !553)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !556)
  %_3.i.i.i16.i = load i32, ptr %4, align 4, !alias.scope !558, !noalias !559, !noundef !18
  %_4.i.i.i17.i = load i32, ptr %2, align 4, !alias.scope !559, !noalias !558, !noundef !18
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !560)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !563)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !565)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !568)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !570)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !573)
  %_3.i.i.i.i2 = load i32, ptr %_7.i1, align 4, !alias.scope !575, !noalias !576, !noundef !18
  %_4.i.i.i.i3 = load i32, ptr %_9, align 4, !alias.scope !576, !noalias !575, !noundef !18
  %_0.i.i4 = icmp slt i32 %_3.i.i.i.i2, %_4.i.i.i.i3
  %_12.i5 = getelementptr inbounds nuw i8, ptr %v_base, i64 28
  %_14.i6 = getelementptr inbounds nuw i8, ptr %v_base, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !577)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !580)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !582)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !585)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !587)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !590)
  %_3.i.i.i7.i7 = load i32, ptr %_12.i5, align 4, !alias.scope !592, !noalias !593, !noundef !18
  %_4.i.i.i8.i8 = load i32, ptr %_14.i6, align 4, !alias.scope !593, !noalias !592, !noundef !18
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !594)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !597)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !599)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !602)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !604)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !607)
  %_3.i.i.i10.i19 = load i32, ptr %c.i16, align 4, !alias.scope !609, !noalias !610, !noundef !18
  %_4.i.i.i11.i20 = load i32, ptr %a.i11, align 4, !alias.scope !610, !noalias !609, !noundef !18
  %_0.i12.i21 = icmp slt i32 %_3.i.i.i10.i19, %_4.i.i.i11.i20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !611)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !614)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !616)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !619)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !621)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !624)
  %_3.i.i.i13.i22 = load i32, ptr %d.i18, align 4, !alias.scope !626, !noalias !627, !noundef !18
  %_4.i.i.i14.i23 = load i32, ptr %b.i14, align 4, !alias.scope !627, !noalias !626, !noundef !18
  %_0.i15.i24 = icmp slt i32 %_3.i.i.i13.i22, %_4.i.i.i14.i23
  %9 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i10.i19, i32 %_4.i.i.i11.i20)
  %10 = select i1 %_0.i15.i24, ptr %c.i16, ptr %b.i14, !unpredictable !18
  %11 = select i1 %_0.i12.i21, ptr %a.i11, ptr %10, !unpredictable !18
  %12 = select i1 %_0.i12.i21, ptr %b.i14, ptr %c.i16, !unpredictable !18
  %13 = select i1 %_0.i15.i24, ptr %d.i18, ptr %12, !unpredictable !18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !628)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !631)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !633)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !636)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !638)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !641)
  %_3.i.i.i16.i25 = load i32, ptr %13, align 4, !alias.scope !643, !noalias !644, !noundef !18
  %_4.i.i.i17.i26 = load i32, ptr %11, align 4, !alias.scope !644, !noalias !643, !noundef !18
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !645)
  %18 = getelementptr inbounds nuw i8, ptr %dst, i64 28
  %_4.i.i.i.i37 = load i32, ptr %scratch_base, align 4, !alias.scope !648, !noalias !655, !noundef !18
  %_0.i.i38 = icmp slt i32 %9, %_4.i.i.i.i37
  %is_l.i18.i = xor i1 %_0.i.i38, true
  %19 = tail call i32 @llvm.smin.i32(i32 %9, i32 %_4.i.i.i.i37)
  store i32 %19, ptr %dst, align 4, !noalias !661
  %count.i.i = zext i1 %_0.i.i38 to i64
  %_12.i.i = getelementptr inbounds nuw i32, ptr %_10, i64 %count.i.i
  %count2.i.i = zext i1 %is_l.i18.i to i64
  %_14.i.i = getelementptr inbounds nuw i32, ptr %scratch_base, i64 %count2.i.i
  %_16.i.i = getelementptr inbounds nuw i8, ptr %dst, i64 4
  %_4.i.i.i20.i = load i32, ptr %7, align 4, !alias.scope !663, !noalias !670, !noundef !18
  %_0.i21.i = icmp slt i32 %17, %_4.i.i.i20.i
  %is_l.i.i = xor i1 %_0.i21.i, true
  %20 = tail call i32 @llvm.smax.i32(i32 %17, i32 %_4.i.i.i20.i)
  store i32 %20, ptr %18, align 4, !noalias !676
  %count.neg.i.i = sext i1 %is_l.i.i to i64
  %21 = getelementptr i32, ptr %16, i64 %count.neg.i.i
  %count3.neg.i.i = sext i1 %_0.i21.i to i64
  %22 = getelementptr i32, ptr %7, i64 %count3.neg.i.i
  %23 = getelementptr inbounds nuw i8, ptr %dst, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !678)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !680)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !682), !noalias !684
  tail call void @llvm.experimental.noalias.scope.decl(metadata !685), !noalias !684
  tail call void @llvm.experimental.noalias.scope.decl(metadata !687), !noalias !684
  tail call void @llvm.experimental.noalias.scope.decl(metadata !689), !noalias !684
  %_3.i.i.i.i36.1 = load i32, ptr %_12.i.i, align 4, !alias.scope !691, !noalias !692, !noundef !18
  %_4.i.i.i.i37.1 = load i32, ptr %_14.i.i, align 4, !alias.scope !693, !noalias !694, !noundef !18
  %_0.i.i38.1 = icmp slt i32 %_3.i.i.i.i36.1, %_4.i.i.i.i37.1
  %is_l.i18.i.1 = xor i1 %_0.i.i38.1, true
  %24 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i36.1, i32 %_4.i.i.i.i37.1)
  store i32 %24, ptr %_16.i.i, align 4, !noalias !661
  %count.i.i.1 = zext i1 %_0.i.i38.1 to i64
  %_12.i.i.1 = getelementptr inbounds nuw i32, ptr %_12.i.i, i64 %count.i.i.1
  %count2.i.i.1 = zext i1 %is_l.i18.i.1 to i64
  %_14.i.i.1 = getelementptr inbounds nuw i32, ptr %_14.i.i, i64 %count2.i.i.1
  %_16.i.i.1 = getelementptr inbounds nuw i8, ptr %dst, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !695)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !697)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !699), !noalias !701
  tail call void @llvm.experimental.noalias.scope.decl(metadata !702), !noalias !701
  tail call void @llvm.experimental.noalias.scope.decl(metadata !704), !noalias !701
  tail call void @llvm.experimental.noalias.scope.decl(metadata !706), !noalias !701
  %_3.i.i.i19.i.1 = load i32, ptr %21, align 4, !alias.scope !708, !noalias !709, !noundef !18
  %_4.i.i.i20.i.1 = load i32, ptr %22, align 4, !alias.scope !710, !noalias !711, !noundef !18
  %_0.i21.i.1 = icmp slt i32 %_3.i.i.i19.i.1, %_4.i.i.i20.i.1
  %is_l.i.i.1 = xor i1 %_0.i21.i.1, true
  %25 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i19.i.1, i32 %_4.i.i.i20.i.1)
  store i32 %25, ptr %23, align 4, !noalias !676
  %count.neg.i.i.1 = sext i1 %is_l.i.i.1 to i64
  %26 = getelementptr i32, ptr %21, i64 %count.neg.i.i.1
  %count3.neg.i.i.1 = sext i1 %_0.i21.i.1 to i64
  %27 = getelementptr i32, ptr %22, i64 %count3.neg.i.i.1
  %28 = getelementptr inbounds nuw i8, ptr %dst, i64 20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !712)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !714)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !716), !noalias !684
  tail call void @llvm.experimental.noalias.scope.decl(metadata !718), !noalias !684
  tail call void @llvm.experimental.noalias.scope.decl(metadata !720), !noalias !684
  tail call void @llvm.experimental.noalias.scope.decl(metadata !722), !noalias !684
  %_3.i.i.i.i36.2 = load i32, ptr %_12.i.i.1, align 4, !alias.scope !724, !noalias !725, !noundef !18
  %_4.i.i.i.i37.2 = load i32, ptr %_14.i.i.1, align 4, !alias.scope !726, !noalias !727, !noundef !18
  %_0.i.i38.2 = icmp slt i32 %_3.i.i.i.i36.2, %_4.i.i.i.i37.2
  %is_l.i18.i.2 = xor i1 %_0.i.i38.2, true
  %29 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i36.2, i32 %_4.i.i.i.i37.2)
  store i32 %29, ptr %_16.i.i.1, align 4, !noalias !661
  %count.i.i.2 = zext i1 %_0.i.i38.2 to i64
  %_12.i.i.2 = getelementptr inbounds nuw i32, ptr %_12.i.i.1, i64 %count.i.i.2
  %count2.i.i.2 = zext i1 %is_l.i18.i.2 to i64
  %_14.i.i.2 = getelementptr inbounds nuw i32, ptr %_14.i.i.1, i64 %count2.i.i.2
  %_16.i.i.2 = getelementptr inbounds nuw i8, ptr %dst, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !728)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !730)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !732), !noalias !701
  tail call void @llvm.experimental.noalias.scope.decl(metadata !734), !noalias !701
  tail call void @llvm.experimental.noalias.scope.decl(metadata !736), !noalias !701
  tail call void @llvm.experimental.noalias.scope.decl(metadata !738), !noalias !701
  %_3.i.i.i19.i.2 = load i32, ptr %26, align 4, !alias.scope !740, !noalias !741, !noundef !18
  %_4.i.i.i20.i.2 = load i32, ptr %27, align 4, !alias.scope !742, !noalias !743, !noundef !18
  %_0.i21.i.2 = icmp slt i32 %_3.i.i.i19.i.2, %_4.i.i.i20.i.2
  %is_l.i.i.2 = xor i1 %_0.i21.i.2, true
  %30 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i19.i.2, i32 %_4.i.i.i20.i.2)
  store i32 %30, ptr %28, align 4, !noalias !676
  %count.neg.i.i.2 = sext i1 %is_l.i.i.2 to i64
  %31 = getelementptr i32, ptr %26, i64 %count.neg.i.i.2
  %count3.neg.i.i.2 = sext i1 %_0.i21.i.2 to i64
  %32 = getelementptr i32, ptr %27, i64 %count3.neg.i.i.2
  %33 = getelementptr inbounds nuw i8, ptr %dst, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !744)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !746)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !748), !noalias !684
  tail call void @llvm.experimental.noalias.scope.decl(metadata !750), !noalias !684
  tail call void @llvm.experimental.noalias.scope.decl(metadata !752), !noalias !684
  tail call void @llvm.experimental.noalias.scope.decl(metadata !754), !noalias !684
  %_3.i.i.i.i36.3 = load i32, ptr %_12.i.i.2, align 4, !alias.scope !756, !noalias !757, !noundef !18
  %_4.i.i.i.i37.3 = load i32, ptr %_14.i.i.2, align 4, !alias.scope !758, !noalias !759, !noundef !18
  %_0.i.i38.3 = icmp slt i32 %_3.i.i.i.i36.3, %_4.i.i.i.i37.3
  %is_l.i18.i.3 = xor i1 %_0.i.i38.3, true
  %34 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i36.3, i32 %_4.i.i.i.i37.3)
  store i32 %34, ptr %_16.i.i.2, align 4, !noalias !661
  %count.i.i.3 = zext i1 %_0.i.i38.3 to i64
  %_12.i.i.3 = getelementptr inbounds nuw i32, ptr %_12.i.i.2, i64 %count.i.i.3
  %count2.i.i.3 = zext i1 %is_l.i18.i.3 to i64
  %_14.i.i.3 = getelementptr inbounds nuw i32, ptr %_14.i.i.2, i64 %count2.i.i.3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !760)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !762)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !764), !noalias !701
  tail call void @llvm.experimental.noalias.scope.decl(metadata !766), !noalias !701
  tail call void @llvm.experimental.noalias.scope.decl(metadata !768), !noalias !701
  tail call void @llvm.experimental.noalias.scope.decl(metadata !770), !noalias !701
  %_3.i.i.i19.i.3 = load i32, ptr %31, align 4, !alias.scope !772, !noalias !773, !noundef !18
  %_4.i.i.i20.i.3 = load i32, ptr %32, align 4, !alias.scope !774, !noalias !775, !noundef !18
  %_0.i21.i.3 = icmp slt i32 %_3.i.i.i19.i.3, %_4.i.i.i20.i.3
  %is_l.i.i.3 = xor i1 %_0.i21.i.3, true
  %35 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i19.i.3, i32 %_4.i.i.i20.i.3)
  store i32 %35, ptr %33, align 4, !noalias !676
  %count.neg.i.i.3 = sext i1 %is_l.i.i.3 to i64
  %36 = getelementptr i32, ptr %31, i64 %count.neg.i.i.3
  %count3.neg.i.i.3 = sext i1 %_0.i21.i.3 to i64
  %37 = getelementptr i32, ptr %32, i64 %count3.neg.i.i.3
  %38 = getelementptr i8, ptr %37, i64 4
  %39 = getelementptr i8, ptr %36, i64 4
  %_31.i = icmp ne ptr %_14.i.i.3, %38
  %_32.i = icmp ne ptr %_12.i.i.3, %39
  %or.cond.i = select i1 %_31.i, i1 true, i1 %_32.i
  br i1 %or.cond.i, label %bb13.i, label %_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h88e3c5d50b4d1a5aE.exit, !prof !357

bb13.i:                                           ; preds = %start
; call core::slice::sort::shared::smallsort::panic_on_ord_violation
  tail call void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #18, !noalias !645
  unreachable

_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h88e3c5d50b4d1a5aE.exit: ; preds = %start
  ret void
}

; core::slice::sort::shared::smallsort::insertion_sort_shift_left
; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h34510fd470fc988eE(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 2, 21) %v.1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb5.preheader:
  %v_end.idx = shl nuw nsw i64 %v.1, 2
  %v_end = getelementptr inbounds nuw i8, ptr %v.0, i64 %v_end.idx
  %tail.sroa.0.03 = getelementptr inbounds nuw i8, ptr %v.0, i64 4
  br label %bb5

bb7:                                              ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17ha468f4743064a81cE.exit
  ret void

bb5:                                              ; preds = %bb5.preheader, %_ZN4core5slice4sort6shared9smallsort11insert_tail17ha468f4743064a81cE.exit
  %tail.sroa.0.06 = phi ptr [ %tail.sroa.0.0, %_ZN4core5slice4sort6shared9smallsort11insert_tail17ha468f4743064a81cE.exit ], [ %tail.sroa.0.03, %bb5.preheader ]
  %v.0.pn5 = phi ptr [ %tail.sroa.0.06, %_ZN4core5slice4sort6shared9smallsort11insert_tail17ha468f4743064a81cE.exit ], [ %v.0, %bb5.preheader ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !776)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !779)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !781)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !784)
  %_6.i.i.i = load float, ptr %tail.sroa.0.06, align 4, !alias.scope !786, !noalias !787, !noundef !18
  %_7.i.i.i = load float, ptr %v.0.pn5, align 4, !alias.scope !787, !noalias !786, !noundef !18
  %brmerge.not.i.i = fcmp uno float %_6.i.i.i, %_7.i.i.i
  br i1 %brmerge.not.i.i, label %bb6.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i", !prof !21

bb6.i.i.i:                                        ; preds = %bb5
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_4a4e7fec44b84c1472b04d0c86f3e1b7) #18, !noalias !788
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i": ; preds = %bb5
  %_8.i.mux.i.i = fcmp olt float %_6.i.i.i, %_7.i.i.i
  br i1 %_8.i.mux.i.i, label %bb4.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17ha468f4743064a81cE.exit

bb4.i:                                            ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i", %bb7.i
  %.in.i = phi float [ %_7.i.i2.i, %bb7.i ], [ %_7.i.i.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i" ]
  %gap_guard.sroa.5.0.i = phi ptr [ %sift.sroa.0.0.i, %bb7.i ], [ %tail.sroa.0.06, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i" ]
  %sift.sroa.0.0.i = phi ptr [ %0, %bb7.i ], [ %v.0.pn5, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i" ]
  store float %.in.i, ptr %gap_guard.sroa.5.0.i, align 4
  %_18.i = icmp eq ptr %sift.sroa.0.0.i, %v.0
  br i1 %_18.i, label %bb10.i, label %bb6.i

bb6.i:                                            ; preds = %bb4.i
  %0 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i, i64 -4
  %_7.i.i2.i = load float, ptr %0, align 4, !alias.scope !789, !noalias !794, !noundef !18
  %brmerge.not.i3.i = fcmp uno float %_6.i.i.i, %_7.i.i2.i
  br i1 %brmerge.not.i3.i, label %bb6.i.i5.i, label %bb7.i, !prof !21

bb6.i.i5.i:                                       ; preds = %bb6.i
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_4a4e7fec44b84c1472b04d0c86f3e1b7) #18
          to label %.noexc.i unwind label %bb14.i

.noexc.i:                                         ; preds = %bb6.i.i5.i
  unreachable

bb7.i:                                            ; preds = %bb6.i
  %_8.i.mux.i4.i = fcmp olt float %_6.i.i.i, %_7.i.i2.i
  br i1 %_8.i.mux.i4.i, label %bb4.i, label %bb10.i

bb10.i:                                           ; preds = %bb7.i, %bb4.i
  %sift.sroa.0.0.i.lcssa = phi ptr [ %sift.sroa.0.0.i, %bb7.i ], [ %v.0, %bb4.i ]
  store float %_6.i.i.i, ptr %sift.sroa.0.0.i.lcssa, align 4, !noalias !797
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17ha468f4743064a81cE.exit

bb14.i:                                           ; preds = %bb6.i.i5.i
  %1 = landingpad { ptr, i32 }
          cleanup
  store float %_6.i.i.i, ptr %sift.sroa.0.0.i, align 4, !noalias !802
  resume { ptr, i32 } %1

_ZN4core5slice4sort6shared9smallsort11insert_tail17ha468f4743064a81cE.exit: ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i", %bb10.i
  %tail.sroa.0.0 = getelementptr inbounds nuw i8, ptr %tail.sroa.0.06, i64 4
  %_11.not = icmp eq ptr %tail.sroa.0.0, %v_end
  br i1 %_11.not, label %bb7, label %bb5
}

; core::slice::sort::shared::smallsort::insertion_sort_shift_left
; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h8c39bce6e1229ee3E(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 2, 21) %v.1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb5.preheader:
  %v_end.idx = shl nuw nsw i64 %v.1, 2
  %v_end = getelementptr inbounds nuw i8, ptr %v.0, i64 %v_end.idx
  %tail.sroa.0.03 = getelementptr inbounds nuw i8, ptr %v.0, i64 4
  br label %bb5

bb7:                                              ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17he511fa7eb43a47edE.exit
  ret void

bb5:                                              ; preds = %bb5.preheader, %_ZN4core5slice4sort6shared9smallsort11insert_tail17he511fa7eb43a47edE.exit
  %tail.sroa.0.06 = phi ptr [ %tail.sroa.0.0, %_ZN4core5slice4sort6shared9smallsort11insert_tail17he511fa7eb43a47edE.exit ], [ %tail.sroa.0.03, %bb5.preheader ]
  %v.0.pn5 = phi ptr [ %tail.sroa.0.06, %_ZN4core5slice4sort6shared9smallsort11insert_tail17he511fa7eb43a47edE.exit ], [ %v.0, %bb5.preheader ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !807)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !810)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !812)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !815)
  %_6.i.i.i = load float, ptr %tail.sroa.0.06, align 4, !alias.scope !817, !noalias !818, !noundef !18
  %_7.i.i.i = load float, ptr %v.0.pn5, align 4, !alias.scope !818, !noalias !817, !noundef !18
  %brmerge.not.i.i = fcmp uno float %_6.i.i.i, %_7.i.i.i
  br i1 %brmerge.not.i.i, label %bb6.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i", !prof !21

bb6.i.i.i:                                        ; preds = %bb5
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_b0e33ba48ef5fa15e44a55a18226b5ac) #18, !noalias !819
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i": ; preds = %bb5
  %_8.i.mux.i.i = fcmp olt float %_6.i.i.i, %_7.i.i.i
  br i1 %_8.i.mux.i.i, label %bb4.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17he511fa7eb43a47edE.exit

bb4.i:                                            ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i", %bb7.i
  %.in.i = phi float [ %_7.i.i2.i, %bb7.i ], [ %_7.i.i.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i" ]
  %gap_guard.sroa.5.0.i = phi ptr [ %sift.sroa.0.0.i, %bb7.i ], [ %tail.sroa.0.06, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i" ]
  %sift.sroa.0.0.i = phi ptr [ %0, %bb7.i ], [ %v.0.pn5, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i" ]
  store float %.in.i, ptr %gap_guard.sroa.5.0.i, align 4
  %_18.i = icmp eq ptr %sift.sroa.0.0.i, %v.0
  br i1 %_18.i, label %bb10.i, label %bb6.i

bb6.i:                                            ; preds = %bb4.i
  %0 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i, i64 -4
  %_7.i.i2.i = load float, ptr %0, align 4, !alias.scope !820, !noalias !825, !noundef !18
  %brmerge.not.i3.i = fcmp uno float %_6.i.i.i, %_7.i.i2.i
  br i1 %brmerge.not.i3.i, label %bb6.i.i5.i, label %bb7.i, !prof !21

bb6.i.i5.i:                                       ; preds = %bb6.i
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_b0e33ba48ef5fa15e44a55a18226b5ac) #18
          to label %.noexc.i unwind label %bb14.i

.noexc.i:                                         ; preds = %bb6.i.i5.i
  unreachable

bb7.i:                                            ; preds = %bb6.i
  %_8.i.mux.i4.i = fcmp olt float %_6.i.i.i, %_7.i.i2.i
  br i1 %_8.i.mux.i4.i, label %bb4.i, label %bb10.i

bb10.i:                                           ; preds = %bb7.i, %bb4.i
  %sift.sroa.0.0.i.lcssa = phi ptr [ %sift.sroa.0.0.i, %bb7.i ], [ %v.0, %bb4.i ]
  store float %_6.i.i.i, ptr %sift.sroa.0.0.i.lcssa, align 4, !noalias !828
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17he511fa7eb43a47edE.exit

bb14.i:                                           ; preds = %bb6.i.i5.i
  %1 = landingpad { ptr, i32 }
          cleanup
  store float %_6.i.i.i, ptr %sift.sroa.0.0.i, align 4, !noalias !833
  resume { ptr, i32 } %1

_ZN4core5slice4sort6shared9smallsort11insert_tail17he511fa7eb43a47edE.exit: ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i", %bb10.i
  %tail.sroa.0.0 = getelementptr inbounds nuw i8, ptr %tail.sroa.0.06, i64 4
  %_11.not = icmp eq ptr %tail.sroa.0.0, %v_end
  br i1 %_11.not, label %bb7, label %bb5
}

; core::slice::sort::stable::driftsort_main
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable14driftsort_main17h0c6f5cb65c6269aaE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #2 personality ptr @rust_eh_personality {
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
  br i1 %or.cond.i.i.i.i, label %bb3.i.i, label %bb5.i.i.i, !prof !838

bb5.i.i.i:                                        ; preds = %bb4
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !839
; call __rustc::__rust_alloc
  %0 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef range(i64 1, 0) %_21.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !839
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
  invoke fastcc void @_ZN4core5slice4sort6stable5drift4sort17h077ef0bcbe90118aE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 4 %stack_buf.pn, i64 noundef %stack_scratch.sroa.4.0, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %heap_buf.sroa.6.1, i64 noundef %3, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !844
  br label %bb10

bb11:                                             ; preds = %bb2.i.i.i3.i10, %cleanup
  resume { ptr, i32 } %2

bb2.i.i.i3.i10:                                   ; preds = %cleanup
  %5 = shl nuw i64 %_0.sroa.0.0.i7, 2
  %6 = icmp ne ptr %heap_buf.sroa.6.1, null
  call void @llvm.assume(i1 %6)
; call __rustc::__rust_dealloc
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %heap_buf.sroa.6.1, i64 noundef %5, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !853
  br label %bb11
}

; core::slice::sort::stable::driftsort_main
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable14driftsort_main17h54296ad700b061c7E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #2 personality ptr @rust_eh_personality {
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
  br i1 %or.cond.i.i.i.i, label %bb3.i.i, label %bb5.i.i.i, !prof !838

bb5.i.i.i:                                        ; preds = %bb4
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !862
; call __rustc::__rust_alloc
  %0 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef range(i64 1, 0) %_21.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !862
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
  invoke fastcc void @_ZN4core5slice4sort6stable5drift4sort17hf2c114673cd91d61E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 4 %stack_buf.pn, i64 noundef %stack_scratch.sroa.4.0, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %heap_buf.sroa.6.1, i64 noundef %3, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !867
  br label %bb10

bb11:                                             ; preds = %bb2.i.i.i3.i10, %cleanup
  resume { ptr, i32 } %2

bb2.i.i.i3.i10:                                   ; preds = %cleanup
  %5 = shl nuw i64 %_0.sroa.0.0.i7, 2
  %6 = icmp ne ptr %heap_buf.sroa.6.1, null
  call void @llvm.assume(i1 %6)
; call __rustc::__rust_dealloc
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %heap_buf.sroa.6.1, i64 noundef %5, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !876
  br label %bb11
}

; core::slice::sort::stable::driftsort_main
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable14driftsort_main17hcb049b11f4721df8E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #2 personality ptr @rust_eh_personality {
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
  br i1 %or.cond.i.i.i.i, label %bb3.i.i, label %bb5.i.i.i, !prof !838

bb5.i.i.i:                                        ; preds = %bb4
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !885
; call __rustc::__rust_alloc
  %0 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef range(i64 1, 0) %_21.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !885
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
  invoke fastcc void @_ZN4core5slice4sort6stable5drift4sort17h4e9143ba5e79da94E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 4 %stack_buf.pn, i64 noundef %stack_scratch.sroa.4.0, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %heap_buf.sroa.6.1, i64 noundef %3, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !890
  br label %bb10

bb11:                                             ; preds = %bb2.i.i.i3.i10, %cleanup
  resume { ptr, i32 } %2

bb2.i.i.i3.i10:                                   ; preds = %cleanup
  %5 = shl nuw i64 %_0.sroa.0.0.i7, 2
  %6 = icmp ne ptr %heap_buf.sroa.6.1, null
  call void @llvm.assume(i1 %6)
; call __rustc::__rust_dealloc
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %heap_buf.sroa.6.1, i64 noundef %5, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !899
  br label %bb11
}

; core::slice::sort::stable::drift::sort
; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17h077ef0bcbe90118aE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i1 noundef zeroext %eager_sort, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) unnamed_addr #0 personality ptr @rust_eh_personality {
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

bb10:                                             ; preds = %bb6, %_ZN4core5slice4sort6stable5drift10create_run17h144ae69255ff16a4E.exit
  %desired_depth.sroa.0.0 = phi i8 [ %18, %_ZN4core5slice4sort6stable5drift10create_run17h144ae69255ff16a4E.exit ], [ 0, %bb6 ]
  %next_run.sroa.0.0 = phi i64 [ %_0.sroa.0.0.i40, %_ZN4core5slice4sort6stable5drift10create_run17h144ae69255ff16a4E.exit ], [ 1, %bb6 ]
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

bb7.i41:                                          ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h00496244fb14ca66E.exit.i.thread100, %_ZN4core5slice4sort6shared17find_existing_run17h00496244fb14ca66E.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17h00496244fb14ca66E.exit.i, %bb30
  br i1 %eager_sort, label %bb16.i43, label %bb11.i42

bb1.i:                                            ; preds = %bb30
  %_4.i.i = icmp samesign ult i64 %new_len, 2
  br i1 %_4.i.i, label %bb5.i38, label %bb2.i.i

bb2.i.i:                                          ; preds = %bb1.i
  %_28.i.i = getelementptr inbounds nuw i8, ptr %_82, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !908)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !911)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !913), !noalias !916
  tail call void @llvm.experimental.noalias.scope.decl(metadata !919), !noalias !916
  tail call void @llvm.experimental.noalias.scope.decl(metadata !921), !noalias !916
  tail call void @llvm.experimental.noalias.scope.decl(metadata !924), !noalias !916
  %_3.i.i.i61 = load i32, ptr %_28.i.i, align 4, !alias.scope !926, !noalias !927, !noundef !18
  %_4.i.i.i62 = load i32, ptr %_82, align 4, !alias.scope !928, !noalias !929, !noundef !18
  %_0.i63 = icmp slt i32 %_3.i.i.i61, %_4.i.i.i62
  %_10.i.i78.not = icmp eq i64 %new_len, 2
  br i1 %_0.i63, label %bb4.i.i.preheader, label %bb11.i.i.preheader

bb11.i.i.preheader:                               ; preds = %bb2.i.i
  br i1 %_10.i.i78.not, label %_ZN4core5slice4sort6shared17find_existing_run17h00496244fb14ca66E.exit.i.thread, label %bb12.i.i

bb4.i.i.preheader:                                ; preds = %bb2.i.i
  br i1 %_10.i.i78.not, label %_ZN4core5slice4sort6shared17find_existing_run17h00496244fb14ca66E.exit.i.thread100, label %bb5.i.i

bb12.i.i:                                         ; preds = %bb11.i.i.preheader, %bb15.i.i
  %_4.i.i.i59 = phi i32 [ %_3.i.i.i58, %bb15.i.i ], [ %_3.i.i.i61, %bb11.i.i.preheader ]
  %run_len.sroa.0.0.i.i76 = phi i64 [ %3, %bb15.i.i ], [ 2, %bb11.i.i.preheader ]
  %2 = getelementptr inbounds nuw i32, ptr %_82, i64 %run_len.sroa.0.0.i.i76
  %_3.i.i.i58 = load i32, ptr %2, align 4, !alias.scope !930, !noalias !937, !noundef !18
  %_0.i60 = icmp slt i32 %_3.i.i.i58, %_4.i.i.i59
  br i1 %_0.i60, label %_ZN4core5slice4sort6shared17find_existing_run17h00496244fb14ca66E.exit.i, label %bb15.i.i

bb15.i.i:                                         ; preds = %bb12.i.i
  %3 = add nuw i64 %run_len.sroa.0.0.i.i76, 1
  %exitcond.not = icmp eq i64 %3, %new_len
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h00496244fb14ca66E.exit.i, label %bb12.i.i

bb5.i.i:                                          ; preds = %bb4.i.i.preheader, %bb7.i.i
  %_4.i.i.i = phi i32 [ %_3.i.i.i, %bb7.i.i ], [ %_3.i.i.i61, %bb4.i.i.preheader ]
  %run_len.sroa.0.1.i.i79 = phi i64 [ %5, %bb7.i.i ], [ 2, %bb4.i.i.preheader ]
  %4 = getelementptr inbounds nuw i32, ptr %_82, i64 %run_len.sroa.0.1.i.i79
  %_3.i.i.i = load i32, ptr %4, align 4, !alias.scope !941, !noalias !948, !noundef !18
  %_0.i = icmp slt i32 %_3.i.i.i, %_4.i.i.i
  br i1 %_0.i, label %bb7.i.i, label %_ZN4core5slice4sort6shared17find_existing_run17h00496244fb14ca66E.exit.i

bb7.i.i:                                          ; preds = %bb5.i.i
  %5 = add nuw i64 %run_len.sroa.0.1.i.i79, 1
  %exitcond92.not = icmp eq i64 %5, %new_len
  br i1 %exitcond92.not, label %_ZN4core5slice4sort6shared17find_existing_run17h00496244fb14ca66E.exit.i, label %bb5.i.i

_ZN4core5slice4sort6shared17find_existing_run17h00496244fb14ca66E.exit.i: ; preds = %bb15.i.i, %bb12.i.i, %bb7.i.i, %bb5.i.i
  %_0.sroa.0.0.i.i = phi i64 [ %new_len, %bb7.i.i ], [ %run_len.sroa.0.1.i.i79, %bb5.i.i ], [ %new_len, %bb15.i.i ], [ %run_len.sroa.0.0.i.i76, %bb12.i.i ]
  %_12.i = icmp samesign ule i64 %_0.sroa.0.0.i.i, %new_len
  tail call void @llvm.assume(i1 %_12.i)
  %_13.not.i = icmp ult i64 %_0.sroa.0.0.i.i, %min_good_run_len.sroa.0.0
  br i1 %_13.not.i, label %bb7.i41, label %bb3.i37

_ZN4core5slice4sort6shared17find_existing_run17h00496244fb14ca66E.exit.i.thread100: ; preds = %bb4.i.i.preheader
  br i1 %_13.not.i103, label %bb7.i41, label %bb5.preheader.i.i

_ZN4core5slice4sort6shared17find_existing_run17h00496244fb14ca66E.exit.i.thread: ; preds = %bb11.i.i.preheader
  br i1 %_13.not.i97, label %bb7.i41, label %bb5.i38

bb3.i37:                                          ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h00496244fb14ca66E.exit.i
  br i1 %_0.i63, label %bb14.i, label %bb5.i38

bb11.i42:                                         ; preds = %bb7.i41
  %_0.sroa.0.0.i57 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %new_len, i64 %min_good_run_len.sroa.0.0)
  %_36.i = shl nuw nsw i64 %_0.sroa.0.0.i57, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h144ae69255ff16a4E.exit

bb16.i43:                                         ; preds = %bb7.i41
  %_0.sroa.0.0.i56 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %new_len, i64 32)
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h960dc2f6c4bef9a8E(ptr noalias noundef nonnull align 4 %_82, i64 noundef %_0.sroa.0.0.i56, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef 0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #21
  %_35.i = shl nuw nsw i64 %_0.sroa.0.0.i56, 1
  %_34.i = or disjoint i64 %_35.i, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h144ae69255ff16a4E.exit

bb5.i38:                                          ; preds = %bb6.i.i, %middle.block, %_ZN4core5slice4sort6shared17find_existing_run17h00496244fb14ca66E.exit.i.thread, %bb1.i, %bb14.i, %bb3.i37
  %_0.sroa.0.0.i.i6972 = phi i64 [ %_0.sroa.0.0.i.i, %bb3.i37 ], [ 1, %bb14.i ], [ %new_len, %bb1.i ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h00496244fb14ca66E.exit.i.thread ], [ %_0.sroa.0.0.i.i98106110, %middle.block ], [ %_0.sroa.0.0.i.i98106110, %bb6.i.i ]
  %_27.i = shl nuw nsw i64 %_0.sroa.0.0.i.i6972, 1
  %_26.i = or disjoint i64 %_27.i, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h144ae69255ff16a4E.exit

bb14.i:                                           ; preds = %bb3.i37
  %half_len2.i = lshr i64 %_0.sroa.0.0.i.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !952), !noalias !955
  tail call void @llvm.experimental.noalias.scope.decl(metadata !957), !noalias !955
  %_915.not.i.i = icmp samesign ult i64 %_0.sroa.0.0.i.i, 2
  br i1 %_915.not.i.i, label %bb5.i38, label %bb5.preheader.i.i

bb5.preheader.i.i:                                ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h00496244fb14ca66E.exit.i.thread100, %bb14.i
  %half_len2.i111 = phi i64 [ %half_len2.i, %bb14.i ], [ 1, %_ZN4core5slice4sort6shared17find_existing_run17h00496244fb14ca66E.exit.i.thread100 ]
  %_0.sroa.0.0.i.i98106110 = phi i64 [ %_0.sroa.0.0.i.i, %bb14.i ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h00496244fb14ca66E.exit.i.thread100 ]
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
  %wide.load = load <4 x i32>, ptr %7, align 4, !alias.scope !959, !noalias !962
  %wide.load118 = load <4 x i32>, ptr %9, align 4, !alias.scope !959, !noalias !962
  %10 = getelementptr i8, ptr %8, i64 -12
  %11 = getelementptr i8, ptr %8, i64 -28
  %wide.load119 = load <4 x i32>, ptr %10, align 4, !alias.scope !963, !noalias !964
  %reverse = shufflevector <4 x i32> %wide.load119, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %wide.load120 = load <4 x i32>, ptr %11, align 4, !alias.scope !963, !noalias !964
  %reverse121 = shufflevector <4 x i32> %wide.load120, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse, ptr %7, align 4, !alias.scope !959, !noalias !962
  store <4 x i32> %reverse121, ptr %9, align 4, !alias.scope !959, !noalias !962
  %reverse122 = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse122, ptr %10, align 4, !alias.scope !963, !noalias !964
  %reverse123 = shufflevector <4 x i32> %wide.load118, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse123, ptr %11, align 4, !alias.scope !963, !noalias !964
  %index.next = add nuw i64 %index, 8
  %12 = icmp eq i64 %index.next, %n.vec
  br i1 %12, label %middle.block, label %vector.body, !llvm.loop !965

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
  %14 = load i32, ptr %x.i.i, align 4, !alias.scope !959, !noalias !962, !noundef !18
  %15 = load i32, ptr %y.i.i, align 4, !alias.scope !963, !noalias !964
  store i32 %15, ptr %x.i.i, align 4, !alias.scope !959, !noalias !962
  store i32 %14, ptr %y.i.i, align 4, !alias.scope !963, !noalias !964
  %16 = add nuw nsw i64 %i.sroa.0.016.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %16, %half_len2.i111
  br i1 %exitcond.not.i.i, label %bb5.i38, label %bb6.i.i, !llvm.loop !968

_ZN4core5slice4sort6stable5drift10create_run17h144ae69255ff16a4E.exit: ; preds = %bb11.i42, %bb16.i43, %bb5.i38
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

bb12:                                             ; preds = %bb12.lr.ph, %_ZN4core5slice4sort6stable5drift13logical_merge17h6322235afc7b8693E.exit
  %stack_len.sroa.0.184 = phi i64 [ %stack_len.sroa.0.0, %bb12.lr.ph ], [ %count, %_ZN4core5slice4sort6stable5drift13logical_merge17h6322235afc7b8693E.exit ]
  %prev_run.sroa.0.183 = phi i64 [ %prev_run.sroa.0.0, %bb12.lr.ph ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h6322235afc7b8693E.exit ]
  %count = add i64 %stack_len.sroa.0.184, -1
  %_41 = getelementptr inbounds nuw i8, ptr %desired_depth_storage, i64 %count
  %_40 = load i8, ptr %_41, align 1, !noundef !18
  %_39.not = icmp ult i8 %_40, %desired_depth.sroa.0.0
  br i1 %_39.not, label %bb17, label %bb13

bb17:                                             ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17h6322235afc7b8693E.exit, %bb12, %bb10
  %prev_run.sroa.0.1.lcssa = phi i64 [ %prev_run.sroa.0.0, %bb10 ], [ %prev_run.sroa.0.183, %bb12 ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h6322235afc7b8693E.exit ]
  %stack_len.sroa.0.1.lcssa = phi i64 [ %stack_len.sroa.0.0, %bb10 ], [ %stack_len.sroa.0.184, %bb12 ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17h6322235afc7b8693E.exit ]
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
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h6322235afc7b8693E.exit

bb5.i:                                            ; preds = %bb11.i, %bb3.i
  br i1 %_10.not.i, label %bb16.i, label %bb7.i

bb11.i:                                           ; preds = %bb3.i
  %self.i = or i64 %_50, 1
  %22 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i, i1 true)
  %23 = trunc nuw nsw i64 %22 to i32
  %log.i = shl nuw nsw i32 %23, 1
  %limit.i = xor i32 %log.i, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h960dc2f6c4bef9a8E(ptr noalias noundef nonnull align 4 %_98, i64 noundef range(i64 0, 2305843009213693952) %_50, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #21
  br label %bb5.i

bb7.i:                                            ; preds = %bb16.i, %bb5.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !969)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !972)
  %_6.i = icmp ult i64 %left10, 2
  %_7.i = icmp ult i64 %prev_run.sroa.0.183, 2
  %or.cond.i = select i1 %_6.i, i1 true, i1 %_7.i
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17h9f4203c273633beaE.exit, label %bb2.i

bb2.i:                                            ; preds = %bb7.i
  %_0.sroa.0.0.i.i44 = tail call i64 @llvm.umin.i64(i64 %_51, i64 range(i64 0, -9223372036854775808) %_50)
  %_8.i = icmp samesign ult i64 %scratch.1, %_0.sroa.0.0.i.i44
  br i1 %_8.i, label %_ZN4core5slice4sort6stable5merge5merge17h9f4203c273633beaE.exit, label %bb5.i45

bb5.i45:                                          ; preds = %bb2.i
  %v_mid.i = getelementptr inbounds nuw i32, ptr %_98, i64 %_50
  %left_is_shorter.not.i = icmp samesign ugt i64 %_50, %_51
  %spec.select.i = select i1 %left_is_shorter.not.i, ptr %v_mid.i, ptr %_98
  %24 = shl nuw nsw i64 %_0.sroa.0.0.i.i44, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %scratch.0, ptr nonnull align 4 %spec.select.i, i64 %24, i1 false), !alias.scope !974
  %_22.i46 = getelementptr inbounds nuw i8, ptr %scratch.0, i64 %24
  br i1 %left_is_shorter.not.i, label %bb1.i.i, label %bb3.i.i

bb1.i.i:                                          ; preds = %bb5.i45, %bb1.i.i
  %_2110.i.i = phi ptr [ %_21.i.i49, %bb1.i.i ], [ %_22.i46, %bb5.i45 ]
  %_188.i.i = phi ptr [ %_18.i.i, %bb1.i.i ], [ %v_mid.i, %bb5.i45 ]
  %out.sroa.0.0.i.i = phi ptr [ %27, %bb1.i.i ], [ %v_end.i, %bb5.i45 ]
  %25 = getelementptr inbounds i8, ptr %_188.i.i, i64 -4
  %26 = getelementptr inbounds i8, ptr %_2110.i.i, i64 -4
  %27 = getelementptr inbounds i8, ptr %out.sroa.0.0.i.i, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !975)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !978)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !980)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !983)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !985)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !988)
  %_3.i.i.i.i.i = load i32, ptr %26, align 4, !alias.scope !990, !noalias !991, !noundef !18
  %_4.i.i.i.i.i = load i32, ptr %25, align 4, !alias.scope !994, !noalias !995, !noundef !18
  %_0.i.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %28 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i.i, i32 %_4.i.i.i.i.i)
  store i32 %28, ptr %27, align 4, !alias.scope !969, !noalias !996
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !997)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1000)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1002)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1005)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1007)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1010)
  %_3.i.i.i.i12.i = load i32, ptr %right.sroa.0.010.i.i, align 4, !alias.scope !1012, !noalias !1013, !noundef !18
  %_4.i.i.i.i13.i = load i32, ptr %_2059.i.i, align 4, !alias.scope !1016, !noalias !1017, !noundef !18
  %_0.i.i14.i = icmp slt i32 %_3.i.i.i.i12.i, %_4.i.i.i.i13.i
  %consume_left.i.i = xor i1 %_0.i.i14.i, true
  %29 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i12.i, i32 %_4.i.i.i.i13.i)
  store i32 %29, ptr %_2511.i.i, align 4, !alias.scope !969, !noalias !1018
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %merge_state.sroa.13.0.i, ptr align 4 %merge_state.sroa.0.0.i, i64 %32, i1 false), !alias.scope !974, !noalias !1019
  br label %_ZN4core5slice4sort6stable5merge5merge17h9f4203c273633beaE.exit

_ZN4core5slice4sort6stable5merge5merge17h9f4203c273633beaE.exit: ; preds = %bb7.i, %bb2.i, %bb16.i48
  %_39.i = shl nuw nsw i64 %merged_len, 1
  %_38.i = or disjoint i64 %_39.i, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h6322235afc7b8693E.exit

bb16.i:                                           ; preds = %bb5.i
  %_37.i = getelementptr inbounds nuw i32, ptr %_98, i64 %_50
  %self.i50 = or i64 %_51, 1
  %33 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i50, i1 true)
  %34 = trunc nuw nsw i64 %33 to i32
  %log.i51 = shl nuw nsw i32 %34, 1
  %limit.i52 = xor i32 %log.i51, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h960dc2f6c4bef9a8E(ptr noalias noundef nonnull align 4 %_37.i, i64 noundef range(i64 0, 2305843009213693952) %_51, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i52, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #21
  br label %bb7.i

_ZN4core5slice4sort6stable5drift13logical_merge17h6322235afc7b8693E.exit: ; preds = %bb9.i, %_ZN4core5slice4sort6stable5merge5merge17h9f4203c273633beaE.exit
  %_0.sroa.0.0.i = phi i64 [ %_38.i, %_ZN4core5slice4sort6stable5merge5merge17h9f4203c273633beaE.exit ], [ %_40.i, %bb9.i ]
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
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h960dc2f6c4bef9a8E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i55, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #21
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
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17h4e9143ba5e79da94E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i1 noundef zeroext %eager_sort, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) unnamed_addr #0 personality ptr @rust_eh_personality {
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

bb10:                                             ; preds = %bb6, %_ZN4core5slice4sort6stable5drift10create_run17h4119af24d47959b6E.exit
  %desired_depth.sroa.0.0 = phi i8 [ %21, %_ZN4core5slice4sort6stable5drift10create_run17h4119af24d47959b6E.exit ], [ 0, %bb6 ]
  %next_run.sroa.0.0 = phi i64 [ %_0.sroa.0.0.i40, %_ZN4core5slice4sort6stable5drift10create_run17h4119af24d47959b6E.exit ], [ 1, %bb6 ]
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

bb7.i41:                                          ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h017626d65394a468E.exit.i.thread124, %_ZN4core5slice4sort6shared17find_existing_run17h017626d65394a468E.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17h017626d65394a468E.exit.i, %bb30
  br i1 %eager_sort, label %bb16.i43, label %bb11.i42

bb1.i:                                            ; preds = %bb30
  %_4.i.i = icmp samesign ult i64 %new_len, 2
  br i1 %_4.i.i, label %bb5.i38, label %bb2.i.i

bb2.i.i:                                          ; preds = %bb1.i
  %_28.i.i = getelementptr inbounds nuw i8, ptr %_82, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1024)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1027)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1029), !noalias !1032
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1035), !noalias !1032
  %_6.i.i66 = load float, ptr %_28.i.i, align 4, !alias.scope !1037, !noalias !1038, !noundef !18
  %_7.i.i67 = load float, ptr %_82, align 4, !alias.scope !1039, !noalias !1040, !noundef !18
  %brmerge.not.i68 = fcmp uno float %_6.i.i66, %_7.i.i67
  br i1 %brmerge.not.i68, label %bb6.i.i70, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit71", !prof !21

bb6.i.i70:                                        ; preds = %bb2.i.i
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_4a4e7fec44b84c1472b04d0c86f3e1b7) #18, !noalias !1041
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit71": ; preds = %bb2.i.i
  %_8.i.mux.i69 = fcmp olt float %_6.i.i66, %_7.i.i67
  %_10.i.i97.not = icmp eq i64 %new_len, 2
  br i1 %_8.i.mux.i69, label %bb4.i.i.preheader, label %bb11.i.i.preheader

bb11.i.i.preheader:                               ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit71"
  br i1 %_10.i.i97.not, label %_ZN4core5slice4sort6shared17find_existing_run17h017626d65394a468E.exit.i.thread, label %bb12.i.i

bb4.i.i.preheader:                                ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit71"
  br i1 %_10.i.i97.not, label %_ZN4core5slice4sort6shared17find_existing_run17h017626d65394a468E.exit.i.thread124, label %bb5.i.i

bb12.i.i:                                         ; preds = %bb11.i.i.preheader, %bb15.i.i
  %_7.i.i61 = phi float [ %_6.i.i60, %bb15.i.i ], [ %_6.i.i66, %bb11.i.i.preheader ]
  %run_len.sroa.0.0.i.i95 = phi i64 [ %3, %bb15.i.i ], [ 2, %bb11.i.i.preheader ]
  %2 = getelementptr inbounds nuw float, ptr %_82, i64 %run_len.sroa.0.0.i.i95
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1042)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1045), !noalias !1032
  %_6.i.i60 = load float, ptr %2, align 4, !alias.scope !1048, !noalias !1049, !noundef !18
  %brmerge.not.i62 = fcmp uno float %_6.i.i60, %_7.i.i61
  br i1 %brmerge.not.i62, label %bb6.i.i64, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit65", !prof !21

bb6.i.i64:                                        ; preds = %bb12.i.i
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_4a4e7fec44b84c1472b04d0c86f3e1b7) #18, !noalias !1052
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit65": ; preds = %bb12.i.i
  %_8.i.mux.i63 = fcmp olt float %_6.i.i60, %_7.i.i61
  br i1 %_8.i.mux.i63, label %_ZN4core5slice4sort6shared17find_existing_run17h017626d65394a468E.exit.i, label %bb15.i.i

bb15.i.i:                                         ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit65"
  %3 = add nuw i64 %run_len.sroa.0.0.i.i95, 1
  %exitcond.not = icmp eq i64 %3, %new_len
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h017626d65394a468E.exit.i, label %bb12.i.i

bb5.i.i:                                          ; preds = %bb4.i.i.preheader, %bb7.i.i
  %_7.i.i58 = phi float [ %_6.i.i, %bb7.i.i ], [ %_6.i.i66, %bb4.i.i.preheader ]
  %run_len.sroa.0.1.i.i98 = phi i64 [ %5, %bb7.i.i ], [ 2, %bb4.i.i.preheader ]
  %4 = getelementptr inbounds nuw float, ptr %_82, i64 %run_len.sroa.0.1.i.i98
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1053)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1056), !noalias !1032
  %_6.i.i = load float, ptr %4, align 4, !alias.scope !1059, !noalias !1060, !noundef !18
  %brmerge.not.i = fcmp uno float %_6.i.i, %_7.i.i58
  br i1 %brmerge.not.i, label %bb6.i.i59, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit", !prof !21

bb6.i.i59:                                        ; preds = %bb5.i.i
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_4a4e7fec44b84c1472b04d0c86f3e1b7) #18, !noalias !1063
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit": ; preds = %bb5.i.i
  %_8.i.mux.i = fcmp olt float %_6.i.i, %_7.i.i58
  br i1 %_8.i.mux.i, label %bb7.i.i, label %_ZN4core5slice4sort6shared17find_existing_run17h017626d65394a468E.exit.i

bb7.i.i:                                          ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit"
  %5 = add nuw i64 %run_len.sroa.0.1.i.i98, 1
  %exitcond116.not = icmp eq i64 %5, %new_len
  br i1 %exitcond116.not, label %_ZN4core5slice4sort6shared17find_existing_run17h017626d65394a468E.exit.i, label %bb5.i.i

_ZN4core5slice4sort6shared17find_existing_run17h017626d65394a468E.exit.i: ; preds = %bb15.i.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit65", %bb7.i.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit"
  %_0.sroa.0.0.i.i = phi i64 [ %new_len, %bb7.i.i ], [ %run_len.sroa.0.1.i.i98, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit" ], [ %new_len, %bb15.i.i ], [ %run_len.sroa.0.0.i.i95, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit65" ]
  %_12.i = icmp samesign ule i64 %_0.sroa.0.0.i.i, %new_len
  tail call void @llvm.assume(i1 %_12.i)
  %_13.not.i = icmp ult i64 %_0.sroa.0.0.i.i, %min_good_run_len.sroa.0.0
  br i1 %_13.not.i, label %bb7.i41, label %bb3.i37

_ZN4core5slice4sort6shared17find_existing_run17h017626d65394a468E.exit.i.thread124: ; preds = %bb4.i.i.preheader
  br i1 %_13.not.i127, label %bb7.i41, label %bb5.preheader.i.i

_ZN4core5slice4sort6shared17find_existing_run17h017626d65394a468E.exit.i.thread: ; preds = %bb11.i.i.preheader
  br i1 %_13.not.i121, label %bb7.i41, label %bb5.i38

bb3.i37:                                          ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h017626d65394a468E.exit.i
  br i1 %_8.i.mux.i69, label %bb14.i, label %bb5.i38

bb11.i42:                                         ; preds = %bb7.i41
  %_0.sroa.0.0.i57 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %new_len, i64 %min_good_run_len.sroa.0.0)
  %_36.i = shl nuw nsw i64 %_0.sroa.0.0.i57, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h4119af24d47959b6E.exit

bb16.i43:                                         ; preds = %bb7.i41
  %_0.sroa.0.0.i56 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %new_len, i64 32)
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h39c332b52467a176E(ptr noalias noundef nonnull align 4 %_82, i64 noundef %_0.sroa.0.0.i56, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef 0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #21
  %_35.i = shl nuw nsw i64 %_0.sroa.0.0.i56, 1
  %_34.i = or disjoint i64 %_35.i, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h4119af24d47959b6E.exit

bb5.i38:                                          ; preds = %bb6.i.i, %middle.block, %_ZN4core5slice4sort6shared17find_existing_run17h017626d65394a468E.exit.i.thread, %bb1.i, %bb14.i, %bb3.i37
  %_0.sroa.0.0.i.i7780 = phi i64 [ %_0.sroa.0.0.i.i, %bb3.i37 ], [ 1, %bb14.i ], [ %new_len, %bb1.i ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h017626d65394a468E.exit.i.thread ], [ %_0.sroa.0.0.i.i122130134, %middle.block ], [ %_0.sroa.0.0.i.i122130134, %bb6.i.i ]
  %_27.i = shl nuw nsw i64 %_0.sroa.0.0.i.i7780, 1
  %_26.i = or disjoint i64 %_27.i, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h4119af24d47959b6E.exit

bb14.i:                                           ; preds = %bb3.i37
  %half_len2.i = lshr i64 %_0.sroa.0.0.i.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1064), !noalias !1067
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1069), !noalias !1067
  %_915.not.i.i = icmp samesign ult i64 %_0.sroa.0.0.i.i, 2
  br i1 %_915.not.i.i, label %bb5.i38, label %bb5.preheader.i.i

bb5.preheader.i.i:                                ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h017626d65394a468E.exit.i.thread124, %bb14.i
  %half_len2.i135 = phi i64 [ %half_len2.i, %bb14.i ], [ 1, %_ZN4core5slice4sort6shared17find_existing_run17h017626d65394a468E.exit.i.thread124 ]
  %_0.sroa.0.0.i.i122130134 = phi i64 [ %_0.sroa.0.0.i.i, %bb14.i ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h017626d65394a468E.exit.i.thread124 ]
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
  %wide.load = load <4 x float>, ptr %7, align 4, !alias.scope !1071, !noalias !1074
  %wide.load152 = load <4 x float>, ptr %9, align 4, !alias.scope !1071, !noalias !1074
  %10 = getelementptr i8, ptr %8, i64 -12
  %11 = getelementptr i8, ptr %8, i64 -28
  %wide.load153 = load <4 x i32>, ptr %10, align 4, !alias.scope !1075, !noalias !1076
  %reverse = shufflevector <4 x i32> %wide.load153, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %wide.load154 = load <4 x i32>, ptr %11, align 4, !alias.scope !1075, !noalias !1076
  %reverse155 = shufflevector <4 x i32> %wide.load154, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %12 = getelementptr inbounds nuw i8, ptr %7, i64 16
  store <4 x i32> %reverse, ptr %7, align 4, !alias.scope !1071, !noalias !1074
  store <4 x i32> %reverse155, ptr %12, align 4, !alias.scope !1071, !noalias !1074
  %13 = getelementptr i8, ptr %8, i64 -12
  %14 = getelementptr i8, ptr %8, i64 -28
  %reverse156 = shufflevector <4 x float> %wide.load, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x float> %reverse156, ptr %13, align 4, !alias.scope !1075, !noalias !1076
  %reverse157 = shufflevector <4 x float> %wide.load152, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x float> %reverse157, ptr %14, align 4, !alias.scope !1075, !noalias !1076
  %index.next = add nuw i64 %index, 8
  %15 = icmp eq i64 %index.next, %n.vec
  br i1 %15, label %middle.block, label %vector.body, !llvm.loop !1077

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
  %17 = load float, ptr %x.i.i, align 4, !alias.scope !1071, !noalias !1074, !noundef !18
  %18 = load i32, ptr %y.i.i, align 4, !alias.scope !1075, !noalias !1076
  store i32 %18, ptr %x.i.i, align 4, !alias.scope !1071, !noalias !1074
  store float %17, ptr %y.i.i, align 4, !alias.scope !1075, !noalias !1076
  %19 = add nuw nsw i64 %i.sroa.0.016.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %19, %half_len2.i135
  br i1 %exitcond.not.i.i, label %bb5.i38, label %bb6.i.i, !llvm.loop !1078

_ZN4core5slice4sort6stable5drift10create_run17h4119af24d47959b6E.exit: ; preds = %bb11.i42, %bb16.i43, %bb5.i38
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

bb12:                                             ; preds = %bb12.lr.ph, %_ZN4core5slice4sort6stable5drift13logical_merge17h6ad0a5d918e08348E.exit
  %stack_len.sroa.0.1103 = phi i64 [ %stack_len.sroa.0.0, %bb12.lr.ph ], [ %count, %_ZN4core5slice4sort6stable5drift13logical_merge17h6ad0a5d918e08348E.exit ]
  %prev_run.sroa.0.1102 = phi i64 [ %prev_run.sroa.0.0, %bb12.lr.ph ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h6ad0a5d918e08348E.exit ]
  %count = add i64 %stack_len.sroa.0.1103, -1
  %_41 = getelementptr inbounds nuw i8, ptr %desired_depth_storage, i64 %count
  %_40 = load i8, ptr %_41, align 1, !noundef !18
  %_39.not = icmp ult i8 %_40, %desired_depth.sroa.0.0
  br i1 %_39.not, label %bb17, label %bb13

bb17:                                             ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17h6ad0a5d918e08348E.exit, %bb12, %bb10
  %prev_run.sroa.0.1.lcssa = phi i64 [ %prev_run.sroa.0.0, %bb10 ], [ %prev_run.sroa.0.1102, %bb12 ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h6ad0a5d918e08348E.exit ]
  %stack_len.sroa.0.1.lcssa = phi i64 [ %stack_len.sroa.0.0, %bb10 ], [ %stack_len.sroa.0.1103, %bb12 ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17h6ad0a5d918e08348E.exit ]
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
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h6ad0a5d918e08348E.exit

bb5.i:                                            ; preds = %bb11.i, %bb3.i
  br i1 %_10.not.i, label %bb16.i, label %bb7.i

bb11.i:                                           ; preds = %bb3.i
  %self.i = or i64 %_50, 1
  %25 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i, i1 true)
  %26 = trunc nuw nsw i64 %25 to i32
  %log.i = shl nuw nsw i32 %26, 1
  %limit.i = xor i32 %log.i, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h39c332b52467a176E(ptr noalias noundef nonnull align 4 %_98, i64 noundef range(i64 0, 2305843009213693952) %_50, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #21
  br label %bb5.i

bb7.i:                                            ; preds = %bb16.i, %bb5.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1079)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1082)
  %_6.i = icmp ult i64 %left10, 2
  %_7.i = icmp ult i64 %prev_run.sroa.0.1102, 2
  %or.cond.i = select i1 %_6.i, i1 true, i1 %_7.i
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17hf2e29e4ca5e716cbE.exit, label %bb2.i

bb2.i:                                            ; preds = %bb7.i
  %_0.sroa.0.0.i.i44 = tail call i64 @llvm.umin.i64(i64 %_51, i64 range(i64 0, -9223372036854775808) %_50)
  %_8.i = icmp samesign ult i64 %scratch.1, %_0.sroa.0.0.i.i44
  br i1 %_8.i, label %_ZN4core5slice4sort6stable5merge5merge17hf2e29e4ca5e716cbE.exit, label %bb5.i45

bb5.i45:                                          ; preds = %bb2.i
  %v_mid.i = getelementptr inbounds nuw float, ptr %_98, i64 %_50
  %left_is_shorter.not.i = icmp samesign ugt i64 %_50, %_51
  %spec.select.i = select i1 %left_is_shorter.not.i, ptr %v_mid.i, ptr %_98
  %27 = shl nuw nsw i64 %_0.sroa.0.0.i.i44, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %scratch.0, ptr nonnull align 4 %spec.select.i, i64 %27, i1 false), !alias.scope !1084
  %_22.i46 = getelementptr inbounds nuw i8, ptr %scratch.0, i64 %27
  br i1 %left_is_shorter.not.i, label %bb1.i.i, label %bb3.i.i

bb1.i.i:                                          ; preds = %bb5.i45, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i.i"
  %merge_state.sroa.13.2.i = phi ptr [ %_18.i.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i.i" ], [ %v_mid.i, %bb5.i45 ]
  %merge_state.sroa.7.2.i = phi ptr [ %_21.i.i49, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i.i" ], [ %_22.i46, %bb5.i45 ]
  %out.sroa.0.0.i.i = phi ptr [ %30, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i.i" ], [ %v_end.i, %bb5.i45 ]
  %28 = getelementptr inbounds i8, ptr %merge_state.sroa.13.2.i, i64 -4
  %29 = getelementptr inbounds i8, ptr %merge_state.sroa.7.2.i, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1085)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1088)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1090)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1093)
  %_6.i.i.i.i = load float, ptr %29, align 4, !alias.scope !1095, !noalias !1096, !noundef !18
  %_7.i.i.i.i = load float, ptr %28, align 4, !alias.scope !1099, !noalias !1100, !noundef !18
  %brmerge.not.i.i.i = fcmp uno float %_6.i.i.i.i, %_7.i.i.i.i
  br i1 %brmerge.not.i.i.i, label %bb6.i.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i.i", !prof !21

bb6.i.i.i.i:                                      ; preds = %bb1.i.i
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_4a4e7fec44b84c1472b04d0c86f3e1b7) #18
          to label %.noexc.i unwind label %bb20.i, !noalias !1084

.noexc.i:                                         ; preds = %bb6.i.i.i.i
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i.i": ; preds = %bb1.i.i
  %30 = getelementptr inbounds i8, ptr %out.sroa.0.0.i.i, i64 -4
  %_8.i.mux.i.i.i = fcmp olt float %_6.i.i.i.i, %_7.i.i.i.i
  %..i.i = select i1 %_8.i.mux.i.i.i, ptr %28, ptr %29
  %31 = load i32, ptr %..i.i, align 4, !alias.scope !1084, !noalias !1101
  store i32 %31, ptr %30, align 4, !alias.scope !1079, !noalias !1102
  %_20.i.i = xor i1 %_8.i.mux.i.i.i, true
  %count.i.i = zext i1 %_20.i.i to i64
  %_18.i.i = getelementptr inbounds nuw float, ptr %28, i64 %count.i.i
  %count4.i.i = zext i1 %_8.i.mux.i.i.i to i64
  %_21.i.i49 = getelementptr inbounds nuw float, ptr %29, i64 %count4.i.i
  %_23.i.i = icmp eq ptr %_18.i.i, %_98
  %_26.i.i = icmp eq ptr %_21.i.i49, %scratch.0
  %or.cond.i.i = select i1 %_23.i.i, i1 true, i1 %_26.i.i
  br i1 %or.cond.i.i, label %bb16.i48, label %bb1.i.i

bb3.i.i:                                          ; preds = %bb5.i45, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i15.i"
  %merge_state.sroa.13.3.i = phi ptr [ %_25.i.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i15.i" ], [ %_98, %bb5.i45 ]
  %merge_state.sroa.0.2.i = phi ptr [ %_20.i18.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i15.i" ], [ %scratch.0, %bb5.i45 ]
  %right.sroa.0.010.i.i = phi ptr [ %_23.i19.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i15.i" ], [ %v_mid.i, %bb5.i45 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1103)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1106)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1108)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1111)
  %_6.i.i.i12.i = load float, ptr %right.sroa.0.010.i.i, align 4, !alias.scope !1113, !noalias !1114, !noundef !18
  %_7.i.i.i13.i = load float, ptr %merge_state.sroa.0.2.i, align 4, !alias.scope !1117, !noalias !1118, !noundef !18
  %brmerge.not.i.i14.i = fcmp uno float %_6.i.i.i12.i, %_7.i.i.i13.i
  br i1 %brmerge.not.i.i14.i, label %bb6.i.i.i21.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i15.i", !prof !21

bb6.i.i.i21.i:                                    ; preds = %bb3.i.i
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_4a4e7fec44b84c1472b04d0c86f3e1b7) #18
          to label %.noexc22.i unwind label %bb20.i, !noalias !1084

.noexc22.i:                                       ; preds = %bb6.i.i.i21.i
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i15.i": ; preds = %bb3.i.i
  %_8.i.mux.i.i16.i = fcmp olt float %_6.i.i.i12.i, %_7.i.i.i13.i
  %consume_left.i.i = xor i1 %_8.i.mux.i.i16.i, true
  %src.sroa.0.0.i.i = select i1 %_8.i.mux.i.i16.i, ptr %right.sroa.0.010.i.i, ptr %merge_state.sroa.0.2.i
  %32 = load i32, ptr %src.sroa.0.0.i.i, align 4, !alias.scope !1084, !noalias !1119
  store i32 %32, ptr %merge_state.sroa.13.3.i, align 4, !alias.scope !1079, !noalias !1120
  %count.i17.i = zext i1 %consume_left.i.i to i64
  %_20.i18.i = getelementptr inbounds nuw float, ptr %merge_state.sroa.0.2.i, i64 %count.i17.i
  %count2.i.i = zext i1 %_8.i.mux.i.i16.i to i64
  %_23.i19.i = getelementptr inbounds nuw float, ptr %right.sroa.0.010.i.i, i64 %count2.i.i
  %_25.i.i = getelementptr inbounds nuw i8, ptr %merge_state.sroa.13.3.i, i64 4
  %_7.i.i = icmp ne ptr %_20.i18.i, %_22.i46
  %_10.i.i47 = icmp ne ptr %_23.i19.i, %v_end.i
  %or.cond.i20.i = select i1 %_7.i.i, i1 %_10.i.i47, i1 false
  br i1 %or.cond.i20.i, label %bb3.i.i, label %bb16.i48

bb16.i48:                                         ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i15.i", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i.i"
  %merge_state.sroa.13.1.i = phi ptr [ %_18.i.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i.i" ], [ %_25.i.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i15.i" ]
  %merge_state.sroa.7.1.i = phi ptr [ %_21.i.i49, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i.i" ], [ %_22.i46, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i15.i" ]
  %merge_state.sroa.0.1.i = phi ptr [ %scratch.0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i.i" ], [ %_20.i18.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i15.i" ]
  %33 = ptrtoint ptr %merge_state.sroa.7.1.i to i64
  %34 = ptrtoint ptr %merge_state.sroa.0.1.i to i64
  %35 = sub nuw i64 %33, %34
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %merge_state.sroa.13.1.i, ptr align 4 %merge_state.sroa.0.1.i, i64 %35, i1 false), !alias.scope !1084, !noalias !1121
  br label %_ZN4core5slice4sort6stable5merge5merge17hf2e29e4ca5e716cbE.exit

bb20.i:                                           ; preds = %bb6.i.i.i21.i, %bb6.i.i.i.i
  %merge_state.sroa.13.0.i = phi ptr [ %merge_state.sroa.13.2.i, %bb6.i.i.i.i ], [ %merge_state.sroa.13.3.i, %bb6.i.i.i21.i ]
  %merge_state.sroa.7.0.i = phi ptr [ %merge_state.sroa.7.2.i, %bb6.i.i.i.i ], [ %_22.i46, %bb6.i.i.i21.i ]
  %merge_state.sroa.0.0.i = phi ptr [ %scratch.0, %bb6.i.i.i.i ], [ %merge_state.sroa.0.2.i, %bb6.i.i.i21.i ]
  %36 = landingpad { ptr, i32 }
          cleanup
  %37 = ptrtoint ptr %merge_state.sroa.7.0.i to i64
  %38 = ptrtoint ptr %merge_state.sroa.0.0.i to i64
  %39 = sub nuw i64 %37, %38
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %merge_state.sroa.13.0.i, ptr nonnull align 4 %merge_state.sroa.0.0.i, i64 %39, i1 false), !alias.scope !1084, !noalias !1126
  resume { ptr, i32 } %36

_ZN4core5slice4sort6stable5merge5merge17hf2e29e4ca5e716cbE.exit: ; preds = %bb7.i, %bb2.i, %bb16.i48
  %_39.i = shl nuw nsw i64 %merged_len, 1
  %_38.i = or disjoint i64 %_39.i, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h6ad0a5d918e08348E.exit

bb16.i:                                           ; preds = %bb5.i
  %_37.i = getelementptr inbounds nuw float, ptr %_98, i64 %_50
  %self.i50 = or i64 %_51, 1
  %40 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i50, i1 true)
  %41 = trunc nuw nsw i64 %40 to i32
  %log.i51 = shl nuw nsw i32 %41, 1
  %limit.i52 = xor i32 %log.i51, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h39c332b52467a176E(ptr noalias noundef nonnull align 4 %_37.i, i64 noundef range(i64 0, 2305843009213693952) %_51, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i52, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #21
  br label %bb7.i

_ZN4core5slice4sort6stable5drift13logical_merge17h6ad0a5d918e08348E.exit: ; preds = %bb9.i, %_ZN4core5slice4sort6stable5merge5merge17hf2e29e4ca5e716cbE.exit
  %_0.sroa.0.0.i = phi i64 [ %_38.i, %_ZN4core5slice4sort6stable5merge5merge17hf2e29e4ca5e716cbE.exit ], [ %_40.i, %bb9.i ]
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
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h39c332b52467a176E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i55, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #21
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
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17hf2c114673cd91d61E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i1 noundef zeroext %eager_sort, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) unnamed_addr #0 personality ptr @rust_eh_personality {
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

bb10:                                             ; preds = %bb6, %_ZN4core5slice4sort6stable5drift10create_run17h06c467a4bb8b67c5E.exit
  %desired_depth.sroa.0.0 = phi i8 [ %21, %_ZN4core5slice4sort6stable5drift10create_run17h06c467a4bb8b67c5E.exit ], [ 0, %bb6 ]
  %next_run.sroa.0.0 = phi i64 [ %_0.sroa.0.0.i40, %_ZN4core5slice4sort6stable5drift10create_run17h06c467a4bb8b67c5E.exit ], [ 1, %bb6 ]
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

bb7.i41:                                          ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hfff9c6e1c581eeebE.exit.i.thread124, %_ZN4core5slice4sort6shared17find_existing_run17hfff9c6e1c581eeebE.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17hfff9c6e1c581eeebE.exit.i, %bb30
  br i1 %eager_sort, label %bb16.i43, label %bb11.i42

bb1.i:                                            ; preds = %bb30
  %_4.i.i = icmp samesign ult i64 %new_len, 2
  br i1 %_4.i.i, label %bb5.i38, label %bb2.i.i

bb2.i.i:                                          ; preds = %bb1.i
  %_28.i.i = getelementptr inbounds nuw i8, ptr %_82, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1131)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1134)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1136), !noalias !1139
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1142), !noalias !1139
  %_6.i.i66 = load float, ptr %_28.i.i, align 4, !alias.scope !1144, !noalias !1145, !noundef !18
  %_7.i.i67 = load float, ptr %_82, align 4, !alias.scope !1146, !noalias !1147, !noundef !18
  %brmerge.not.i68 = fcmp uno float %_6.i.i66, %_7.i.i67
  br i1 %brmerge.not.i68, label %bb6.i.i70, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit71", !prof !21

bb6.i.i70:                                        ; preds = %bb2.i.i
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_b0e33ba48ef5fa15e44a55a18226b5ac) #18, !noalias !1148
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit71": ; preds = %bb2.i.i
  %_8.i.mux.i69 = fcmp olt float %_6.i.i66, %_7.i.i67
  %_10.i.i97.not = icmp eq i64 %new_len, 2
  br i1 %_8.i.mux.i69, label %bb4.i.i.preheader, label %bb11.i.i.preheader

bb11.i.i.preheader:                               ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit71"
  br i1 %_10.i.i97.not, label %_ZN4core5slice4sort6shared17find_existing_run17hfff9c6e1c581eeebE.exit.i.thread, label %bb12.i.i

bb4.i.i.preheader:                                ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit71"
  br i1 %_10.i.i97.not, label %_ZN4core5slice4sort6shared17find_existing_run17hfff9c6e1c581eeebE.exit.i.thread124, label %bb5.i.i

bb12.i.i:                                         ; preds = %bb11.i.i.preheader, %bb15.i.i
  %_7.i.i61 = phi float [ %_6.i.i60, %bb15.i.i ], [ %_6.i.i66, %bb11.i.i.preheader ]
  %run_len.sroa.0.0.i.i95 = phi i64 [ %3, %bb15.i.i ], [ 2, %bb11.i.i.preheader ]
  %2 = getelementptr inbounds nuw float, ptr %_82, i64 %run_len.sroa.0.0.i.i95
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1149)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1152), !noalias !1139
  %_6.i.i60 = load float, ptr %2, align 4, !alias.scope !1155, !noalias !1156, !noundef !18
  %brmerge.not.i62 = fcmp uno float %_6.i.i60, %_7.i.i61
  br i1 %brmerge.not.i62, label %bb6.i.i64, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit65", !prof !21

bb6.i.i64:                                        ; preds = %bb12.i.i
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_b0e33ba48ef5fa15e44a55a18226b5ac) #18, !noalias !1159
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit65": ; preds = %bb12.i.i
  %_8.i.mux.i63 = fcmp olt float %_6.i.i60, %_7.i.i61
  br i1 %_8.i.mux.i63, label %_ZN4core5slice4sort6shared17find_existing_run17hfff9c6e1c581eeebE.exit.i, label %bb15.i.i

bb15.i.i:                                         ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit65"
  %3 = add nuw i64 %run_len.sroa.0.0.i.i95, 1
  %exitcond.not = icmp eq i64 %3, %new_len
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17hfff9c6e1c581eeebE.exit.i, label %bb12.i.i

bb5.i.i:                                          ; preds = %bb4.i.i.preheader, %bb7.i.i
  %_7.i.i58 = phi float [ %_6.i.i, %bb7.i.i ], [ %_6.i.i66, %bb4.i.i.preheader ]
  %run_len.sroa.0.1.i.i98 = phi i64 [ %5, %bb7.i.i ], [ 2, %bb4.i.i.preheader ]
  %4 = getelementptr inbounds nuw float, ptr %_82, i64 %run_len.sroa.0.1.i.i98
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1160)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1163), !noalias !1139
  %_6.i.i = load float, ptr %4, align 4, !alias.scope !1166, !noalias !1167, !noundef !18
  %brmerge.not.i = fcmp uno float %_6.i.i, %_7.i.i58
  br i1 %brmerge.not.i, label %bb6.i.i59, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit", !prof !21

bb6.i.i59:                                        ; preds = %bb5.i.i
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_b0e33ba48ef5fa15e44a55a18226b5ac) #18, !noalias !1170
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit": ; preds = %bb5.i.i
  %_8.i.mux.i = fcmp olt float %_6.i.i, %_7.i.i58
  br i1 %_8.i.mux.i, label %bb7.i.i, label %_ZN4core5slice4sort6shared17find_existing_run17hfff9c6e1c581eeebE.exit.i

bb7.i.i:                                          ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit"
  %5 = add nuw i64 %run_len.sroa.0.1.i.i98, 1
  %exitcond116.not = icmp eq i64 %5, %new_len
  br i1 %exitcond116.not, label %_ZN4core5slice4sort6shared17find_existing_run17hfff9c6e1c581eeebE.exit.i, label %bb5.i.i

_ZN4core5slice4sort6shared17find_existing_run17hfff9c6e1c581eeebE.exit.i: ; preds = %bb15.i.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit65", %bb7.i.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit"
  %_0.sroa.0.0.i.i = phi i64 [ %new_len, %bb7.i.i ], [ %run_len.sroa.0.1.i.i98, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit" ], [ %new_len, %bb15.i.i ], [ %run_len.sroa.0.0.i.i95, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit65" ]
  %_12.i = icmp samesign ule i64 %_0.sroa.0.0.i.i, %new_len
  tail call void @llvm.assume(i1 %_12.i)
  %_13.not.i = icmp ult i64 %_0.sroa.0.0.i.i, %min_good_run_len.sroa.0.0
  br i1 %_13.not.i, label %bb7.i41, label %bb3.i37

_ZN4core5slice4sort6shared17find_existing_run17hfff9c6e1c581eeebE.exit.i.thread124: ; preds = %bb4.i.i.preheader
  br i1 %_13.not.i127, label %bb7.i41, label %bb5.preheader.i.i

_ZN4core5slice4sort6shared17find_existing_run17hfff9c6e1c581eeebE.exit.i.thread: ; preds = %bb11.i.i.preheader
  br i1 %_13.not.i121, label %bb7.i41, label %bb5.i38

bb3.i37:                                          ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hfff9c6e1c581eeebE.exit.i
  br i1 %_8.i.mux.i69, label %bb14.i, label %bb5.i38

bb11.i42:                                         ; preds = %bb7.i41
  %_0.sroa.0.0.i57 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %new_len, i64 %min_good_run_len.sroa.0.0)
  %_36.i = shl nuw nsw i64 %_0.sroa.0.0.i57, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h06c467a4bb8b67c5E.exit

bb16.i43:                                         ; preds = %bb7.i41
  %_0.sroa.0.0.i56 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %new_len, i64 32)
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h23ee1f5ec6e131a2E(ptr noalias noundef nonnull align 4 %_82, i64 noundef %_0.sroa.0.0.i56, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef 0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #21
  %_35.i = shl nuw nsw i64 %_0.sroa.0.0.i56, 1
  %_34.i = or disjoint i64 %_35.i, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h06c467a4bb8b67c5E.exit

bb5.i38:                                          ; preds = %bb6.i.i, %middle.block, %_ZN4core5slice4sort6shared17find_existing_run17hfff9c6e1c581eeebE.exit.i.thread, %bb1.i, %bb14.i, %bb3.i37
  %_0.sroa.0.0.i.i7780 = phi i64 [ %_0.sroa.0.0.i.i, %bb3.i37 ], [ 1, %bb14.i ], [ %new_len, %bb1.i ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17hfff9c6e1c581eeebE.exit.i.thread ], [ %_0.sroa.0.0.i.i122130134, %middle.block ], [ %_0.sroa.0.0.i.i122130134, %bb6.i.i ]
  %_27.i = shl nuw nsw i64 %_0.sroa.0.0.i.i7780, 1
  %_26.i = or disjoint i64 %_27.i, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h06c467a4bb8b67c5E.exit

bb14.i:                                           ; preds = %bb3.i37
  %half_len2.i = lshr i64 %_0.sroa.0.0.i.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1171), !noalias !1174
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1176), !noalias !1174
  %_915.not.i.i = icmp samesign ult i64 %_0.sroa.0.0.i.i, 2
  br i1 %_915.not.i.i, label %bb5.i38, label %bb5.preheader.i.i

bb5.preheader.i.i:                                ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hfff9c6e1c581eeebE.exit.i.thread124, %bb14.i
  %half_len2.i135 = phi i64 [ %half_len2.i, %bb14.i ], [ 1, %_ZN4core5slice4sort6shared17find_existing_run17hfff9c6e1c581eeebE.exit.i.thread124 ]
  %_0.sroa.0.0.i.i122130134 = phi i64 [ %_0.sroa.0.0.i.i, %bb14.i ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17hfff9c6e1c581eeebE.exit.i.thread124 ]
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
  %wide.load = load <4 x float>, ptr %7, align 4, !alias.scope !1178, !noalias !1181
  %wide.load152 = load <4 x float>, ptr %9, align 4, !alias.scope !1178, !noalias !1181
  %10 = getelementptr i8, ptr %8, i64 -12
  %11 = getelementptr i8, ptr %8, i64 -28
  %wide.load153 = load <4 x i32>, ptr %10, align 4, !alias.scope !1182, !noalias !1183
  %reverse = shufflevector <4 x i32> %wide.load153, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %wide.load154 = load <4 x i32>, ptr %11, align 4, !alias.scope !1182, !noalias !1183
  %reverse155 = shufflevector <4 x i32> %wide.load154, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %12 = getelementptr inbounds nuw i8, ptr %7, i64 16
  store <4 x i32> %reverse, ptr %7, align 4, !alias.scope !1178, !noalias !1181
  store <4 x i32> %reverse155, ptr %12, align 4, !alias.scope !1178, !noalias !1181
  %13 = getelementptr i8, ptr %8, i64 -12
  %14 = getelementptr i8, ptr %8, i64 -28
  %reverse156 = shufflevector <4 x float> %wide.load, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x float> %reverse156, ptr %13, align 4, !alias.scope !1182, !noalias !1183
  %reverse157 = shufflevector <4 x float> %wide.load152, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x float> %reverse157, ptr %14, align 4, !alias.scope !1182, !noalias !1183
  %index.next = add nuw i64 %index, 8
  %15 = icmp eq i64 %index.next, %n.vec
  br i1 %15, label %middle.block, label %vector.body, !llvm.loop !1184

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
  %17 = load float, ptr %x.i.i, align 4, !alias.scope !1178, !noalias !1181, !noundef !18
  %18 = load i32, ptr %y.i.i, align 4, !alias.scope !1182, !noalias !1183
  store i32 %18, ptr %x.i.i, align 4, !alias.scope !1178, !noalias !1181
  store float %17, ptr %y.i.i, align 4, !alias.scope !1182, !noalias !1183
  %19 = add nuw nsw i64 %i.sroa.0.016.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %19, %half_len2.i135
  br i1 %exitcond.not.i.i, label %bb5.i38, label %bb6.i.i, !llvm.loop !1185

_ZN4core5slice4sort6stable5drift10create_run17h06c467a4bb8b67c5E.exit: ; preds = %bb11.i42, %bb16.i43, %bb5.i38
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

bb12:                                             ; preds = %bb12.lr.ph, %_ZN4core5slice4sort6stable5drift13logical_merge17hea58ed17d87957acE.exit
  %stack_len.sroa.0.1103 = phi i64 [ %stack_len.sroa.0.0, %bb12.lr.ph ], [ %count, %_ZN4core5slice4sort6stable5drift13logical_merge17hea58ed17d87957acE.exit ]
  %prev_run.sroa.0.1102 = phi i64 [ %prev_run.sroa.0.0, %bb12.lr.ph ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17hea58ed17d87957acE.exit ]
  %count = add i64 %stack_len.sroa.0.1103, -1
  %_41 = getelementptr inbounds nuw i8, ptr %desired_depth_storage, i64 %count
  %_40 = load i8, ptr %_41, align 1, !noundef !18
  %_39.not = icmp ult i8 %_40, %desired_depth.sroa.0.0
  br i1 %_39.not, label %bb17, label %bb13

bb17:                                             ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17hea58ed17d87957acE.exit, %bb12, %bb10
  %prev_run.sroa.0.1.lcssa = phi i64 [ %prev_run.sroa.0.0, %bb10 ], [ %prev_run.sroa.0.1102, %bb12 ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17hea58ed17d87957acE.exit ]
  %stack_len.sroa.0.1.lcssa = phi i64 [ %stack_len.sroa.0.0, %bb10 ], [ %stack_len.sroa.0.1103, %bb12 ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17hea58ed17d87957acE.exit ]
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
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17hea58ed17d87957acE.exit

bb5.i:                                            ; preds = %bb11.i, %bb3.i
  br i1 %_10.not.i, label %bb16.i, label %bb7.i

bb11.i:                                           ; preds = %bb3.i
  %self.i = or i64 %_50, 1
  %25 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i, i1 true)
  %26 = trunc nuw nsw i64 %25 to i32
  %log.i = shl nuw nsw i32 %26, 1
  %limit.i = xor i32 %log.i, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h23ee1f5ec6e131a2E(ptr noalias noundef nonnull align 4 %_98, i64 noundef range(i64 0, 2305843009213693952) %_50, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #21
  br label %bb5.i

bb7.i:                                            ; preds = %bb16.i, %bb5.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1186)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1189)
  %_6.i = icmp ult i64 %left10, 2
  %_7.i = icmp ult i64 %prev_run.sroa.0.1102, 2
  %or.cond.i = select i1 %_6.i, i1 true, i1 %_7.i
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17hb18309dad419ab3cE.exit, label %bb2.i

bb2.i:                                            ; preds = %bb7.i
  %_0.sroa.0.0.i.i44 = tail call i64 @llvm.umin.i64(i64 %_51, i64 range(i64 0, -9223372036854775808) %_50)
  %_8.i = icmp samesign ult i64 %scratch.1, %_0.sroa.0.0.i.i44
  br i1 %_8.i, label %_ZN4core5slice4sort6stable5merge5merge17hb18309dad419ab3cE.exit, label %bb5.i45

bb5.i45:                                          ; preds = %bb2.i
  %v_mid.i = getelementptr inbounds nuw float, ptr %_98, i64 %_50
  %left_is_shorter.not.i = icmp samesign ugt i64 %_50, %_51
  %spec.select.i = select i1 %left_is_shorter.not.i, ptr %v_mid.i, ptr %_98
  %27 = shl nuw nsw i64 %_0.sroa.0.0.i.i44, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %scratch.0, ptr nonnull align 4 %spec.select.i, i64 %27, i1 false), !alias.scope !1191
  %_22.i46 = getelementptr inbounds nuw i8, ptr %scratch.0, i64 %27
  br i1 %left_is_shorter.not.i, label %bb1.i.i, label %bb3.i.i

bb1.i.i:                                          ; preds = %bb5.i45, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i.i"
  %merge_state.sroa.13.2.i = phi ptr [ %_18.i.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i.i" ], [ %v_mid.i, %bb5.i45 ]
  %merge_state.sroa.7.2.i = phi ptr [ %_21.i.i49, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i.i" ], [ %_22.i46, %bb5.i45 ]
  %out.sroa.0.0.i.i = phi ptr [ %30, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i.i" ], [ %v_end.i, %bb5.i45 ]
  %28 = getelementptr inbounds i8, ptr %merge_state.sroa.13.2.i, i64 -4
  %29 = getelementptr inbounds i8, ptr %merge_state.sroa.7.2.i, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1192)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1195)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1197)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1200)
  %_6.i.i.i.i = load float, ptr %29, align 4, !alias.scope !1202, !noalias !1203, !noundef !18
  %_7.i.i.i.i = load float, ptr %28, align 4, !alias.scope !1206, !noalias !1207, !noundef !18
  %brmerge.not.i.i.i = fcmp uno float %_6.i.i.i.i, %_7.i.i.i.i
  br i1 %brmerge.not.i.i.i, label %bb6.i.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i.i", !prof !21

bb6.i.i.i.i:                                      ; preds = %bb1.i.i
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_b0e33ba48ef5fa15e44a55a18226b5ac) #18
          to label %.noexc.i unwind label %bb20.i, !noalias !1191

.noexc.i:                                         ; preds = %bb6.i.i.i.i
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i.i": ; preds = %bb1.i.i
  %30 = getelementptr inbounds i8, ptr %out.sroa.0.0.i.i, i64 -4
  %_8.i.mux.i.i.i = fcmp olt float %_6.i.i.i.i, %_7.i.i.i.i
  %..i.i = select i1 %_8.i.mux.i.i.i, ptr %28, ptr %29
  %31 = load i32, ptr %..i.i, align 4, !alias.scope !1191, !noalias !1208
  store i32 %31, ptr %30, align 4, !alias.scope !1186, !noalias !1209
  %_20.i.i = xor i1 %_8.i.mux.i.i.i, true
  %count.i.i = zext i1 %_20.i.i to i64
  %_18.i.i = getelementptr inbounds nuw float, ptr %28, i64 %count.i.i
  %count4.i.i = zext i1 %_8.i.mux.i.i.i to i64
  %_21.i.i49 = getelementptr inbounds nuw float, ptr %29, i64 %count4.i.i
  %_23.i.i = icmp eq ptr %_18.i.i, %_98
  %_26.i.i = icmp eq ptr %_21.i.i49, %scratch.0
  %or.cond.i.i = select i1 %_23.i.i, i1 true, i1 %_26.i.i
  br i1 %or.cond.i.i, label %bb16.i48, label %bb1.i.i

bb3.i.i:                                          ; preds = %bb5.i45, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i15.i"
  %merge_state.sroa.13.3.i = phi ptr [ %_25.i.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i15.i" ], [ %_98, %bb5.i45 ]
  %merge_state.sroa.0.2.i = phi ptr [ %_20.i18.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i15.i" ], [ %scratch.0, %bb5.i45 ]
  %right.sroa.0.010.i.i = phi ptr [ %_23.i19.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i15.i" ], [ %v_mid.i, %bb5.i45 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1210)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1213)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1215)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1218)
  %_6.i.i.i12.i = load float, ptr %right.sroa.0.010.i.i, align 4, !alias.scope !1220, !noalias !1221, !noundef !18
  %_7.i.i.i13.i = load float, ptr %merge_state.sroa.0.2.i, align 4, !alias.scope !1224, !noalias !1225, !noundef !18
  %brmerge.not.i.i14.i = fcmp uno float %_6.i.i.i12.i, %_7.i.i.i13.i
  br i1 %brmerge.not.i.i14.i, label %bb6.i.i.i21.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i15.i", !prof !21

bb6.i.i.i21.i:                                    ; preds = %bb3.i.i
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_b0e33ba48ef5fa15e44a55a18226b5ac) #18
          to label %.noexc22.i unwind label %bb20.i, !noalias !1191

.noexc22.i:                                       ; preds = %bb6.i.i.i21.i
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i15.i": ; preds = %bb3.i.i
  %_8.i.mux.i.i16.i = fcmp olt float %_6.i.i.i12.i, %_7.i.i.i13.i
  %consume_left.i.i = xor i1 %_8.i.mux.i.i16.i, true
  %src.sroa.0.0.i.i = select i1 %_8.i.mux.i.i16.i, ptr %right.sroa.0.010.i.i, ptr %merge_state.sroa.0.2.i
  %32 = load i32, ptr %src.sroa.0.0.i.i, align 4, !alias.scope !1191, !noalias !1226
  store i32 %32, ptr %merge_state.sroa.13.3.i, align 4, !alias.scope !1186, !noalias !1227
  %count.i17.i = zext i1 %consume_left.i.i to i64
  %_20.i18.i = getelementptr inbounds nuw float, ptr %merge_state.sroa.0.2.i, i64 %count.i17.i
  %count2.i.i = zext i1 %_8.i.mux.i.i16.i to i64
  %_23.i19.i = getelementptr inbounds nuw float, ptr %right.sroa.0.010.i.i, i64 %count2.i.i
  %_25.i.i = getelementptr inbounds nuw i8, ptr %merge_state.sroa.13.3.i, i64 4
  %_7.i.i = icmp ne ptr %_20.i18.i, %_22.i46
  %_10.i.i47 = icmp ne ptr %_23.i19.i, %v_end.i
  %or.cond.i20.i = select i1 %_7.i.i, i1 %_10.i.i47, i1 false
  br i1 %or.cond.i20.i, label %bb3.i.i, label %bb16.i48

bb16.i48:                                         ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i15.i", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i.i"
  %merge_state.sroa.13.1.i = phi ptr [ %_18.i.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i.i" ], [ %_25.i.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i15.i" ]
  %merge_state.sroa.7.1.i = phi ptr [ %_21.i.i49, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i.i" ], [ %_22.i46, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i15.i" ]
  %merge_state.sroa.0.1.i = phi ptr [ %scratch.0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i.i" ], [ %_20.i18.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i15.i" ]
  %33 = ptrtoint ptr %merge_state.sroa.7.1.i to i64
  %34 = ptrtoint ptr %merge_state.sroa.0.1.i to i64
  %35 = sub nuw i64 %33, %34
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %merge_state.sroa.13.1.i, ptr align 4 %merge_state.sroa.0.1.i, i64 %35, i1 false), !alias.scope !1191, !noalias !1228
  br label %_ZN4core5slice4sort6stable5merge5merge17hb18309dad419ab3cE.exit

bb20.i:                                           ; preds = %bb6.i.i.i21.i, %bb6.i.i.i.i
  %merge_state.sroa.13.0.i = phi ptr [ %merge_state.sroa.13.2.i, %bb6.i.i.i.i ], [ %merge_state.sroa.13.3.i, %bb6.i.i.i21.i ]
  %merge_state.sroa.7.0.i = phi ptr [ %merge_state.sroa.7.2.i, %bb6.i.i.i.i ], [ %_22.i46, %bb6.i.i.i21.i ]
  %merge_state.sroa.0.0.i = phi ptr [ %scratch.0, %bb6.i.i.i.i ], [ %merge_state.sroa.0.2.i, %bb6.i.i.i21.i ]
  %36 = landingpad { ptr, i32 }
          cleanup
  %37 = ptrtoint ptr %merge_state.sroa.7.0.i to i64
  %38 = ptrtoint ptr %merge_state.sroa.0.0.i to i64
  %39 = sub nuw i64 %37, %38
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %merge_state.sroa.13.0.i, ptr nonnull align 4 %merge_state.sroa.0.0.i, i64 %39, i1 false), !alias.scope !1191, !noalias !1233
  resume { ptr, i32 } %36

_ZN4core5slice4sort6stable5merge5merge17hb18309dad419ab3cE.exit: ; preds = %bb7.i, %bb2.i, %bb16.i48
  %_39.i = shl nuw nsw i64 %merged_len, 1
  %_38.i = or disjoint i64 %_39.i, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17hea58ed17d87957acE.exit

bb16.i:                                           ; preds = %bb5.i
  %_37.i = getelementptr inbounds nuw float, ptr %_98, i64 %_50
  %self.i50 = or i64 %_51, 1
  %40 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i50, i1 true)
  %41 = trunc nuw nsw i64 %40 to i32
  %log.i51 = shl nuw nsw i32 %41, 1
  %limit.i52 = xor i32 %log.i51, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h23ee1f5ec6e131a2E(ptr noalias noundef nonnull align 4 %_37.i, i64 noundef range(i64 0, 2305843009213693952) %_51, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i52, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #21
  br label %bb7.i

_ZN4core5slice4sort6stable5drift13logical_merge17hea58ed17d87957acE.exit: ; preds = %bb9.i, %_ZN4core5slice4sort6stable5merge5merge17hb18309dad419ab3cE.exit
  %_0.sroa.0.0.i = phi i64 [ %_38.i, %_ZN4core5slice4sort6stable5merge5merge17hb18309dad419ab3cE.exit ], [ %_40.i, %bb9.i ]
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
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h23ee1f5ec6e131a2E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i55, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #21
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
define void @_ZN4core5slice4sort6stable9quicksort9quicksort17h23ee1f5ec6e131a2E(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %2, ptr noalias noundef readonly align 4 captures(address) dereferenceable_or_null(4) %3, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #2 personality ptr @rust_eh_personality {
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

bb5:                                              ; preds = %bb5.lr.ph, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hfcf5686026bf385fE.exit"
  %v.sroa.16.0196 = phi i64 [ %v.sroa.16.0.ph203, %bb5.lr.ph ], [ %state.sroa.27.2.lcssa.i, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hfcf5686026bf385fE.exit" ]
  %limit.sroa.0.0195 = phi i32 [ %limit.sroa.0.0.ph202, %bb5.lr.ph ], [ %29, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hfcf5686026bf385fE.exit" ]
  %_11 = icmp eq i32 %limit.sroa.0.0195, 0
  br i1 %_11, label %bb6, label %bb7

bb3:                                              ; preds = %bb28, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hfcf5686026bf385fE.exit", %start
  %v.sroa.0.0.ph.lcssa193 = phi ptr [ %0, %start ], [ %v.sroa.0.0.ph204, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hfcf5686026bf385fE.exit" ], [ %_54, %bb28 ]
  %v.sroa.16.0.lcssa = phi i64 [ %1, %start ], [ %state.sroa.27.2.lcssa.i, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hfcf5686026bf385fE.exit" ], [ %_63.i67, %bb28 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1238)
  call void @llvm.experimental.noalias.scope.decl(metadata !1241)
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
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h0c524828a1a47f46E(ptr noundef nonnull align 4 %v.sroa.0.0.ph.lcssa193, ptr noundef nonnull align 4 %scratch.0, ptr noundef %_16.i)
  %_18.i = getelementptr inbounds nuw float, ptr %v.sroa.0.0.ph.lcssa193, i64 %len_div_211.i
  %_19.i = getelementptr inbounds nuw float, ptr %scratch.0, i64 %len_div_211.i
  %_20.i = getelementptr inbounds nuw i8, ptr %_16.i, i64 32
; call core::slice::sort::shared::smallsort::sort8_stable
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h0c524828a1a47f46E(ptr noundef %_18.i, ptr noundef %_19.i, ptr noundef %_20.i)
  br label %bb15.i

bb10.i:                                           ; preds = %bb9.i
; call core::slice::sort::shared::smallsort::sort4_stable
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h1c3fb6f95c737a92E(ptr noundef nonnull align 4 %v.sroa.0.0.ph.lcssa193, ptr noundef nonnull align 4 %scratch.0)
  %_27.i = getelementptr inbounds nuw float, ptr %v.sroa.0.0.ph.lcssa193, i64 %len_div_211.i
  %_28.i = getelementptr inbounds nuw float, ptr %scratch.0, i64 %len_div_211.i
; call core::slice::sort::shared::smallsort::sort4_stable
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h1c3fb6f95c737a92E(ptr noundef %_27.i, ptr noundef %_28.i)
  br label %bb15.i

bb46.i:                                           ; preds = %bb9.i
  %5 = load i32, ptr %v.sroa.0.0.ph.lcssa193, align 4, !alias.scope !1238, !noalias !1243
  store i32 %5, ptr %scratch.0, align 4, !alias.scope !1241, !noalias !1245
  %_31.i = getelementptr inbounds nuw float, ptr %v.sroa.0.0.ph.lcssa193, i64 %len_div_211.i
  %6 = getelementptr inbounds nuw float, ptr %scratch.0, i64 %len_div_211.i
  %7 = load i32, ptr %_31.i, align 4, !alias.scope !1238, !noalias !1243
  store i32 %7, ptr %6, align 4, !alias.scope !1241, !noalias !1245
  br label %bb15.i

bb15.i:                                           ; preds = %bb46.i, %bb10.i, %bb6.i
  %presorted_len.sroa.0.0.i = phi i64 [ 8, %bb6.i ], [ 4, %bb10.i ], [ 1, %bb46.i ]
  %8 = sub nsw i64 %v.sroa.16.0.lcssa, %len_div_211.i
  %_8030.i = icmp samesign ult i64 %presorted_len.sroa.0.0.i, %len_div_211.i
  br i1 %_8030.i, label %bb24.preheader.i, label %bb16.loopexit.i

bb16.loopexit.i:                                  ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17he511fa7eb43a47edE.exit.i, %bb15.i
  %src5.1.i = getelementptr inbounds nuw float, ptr %v.sroa.0.0.ph.lcssa193, i64 %len_div_211.i
  %dst6.1.i = getelementptr float, ptr %scratch.0, i64 %len_div_211.i
  %_8030.1.i = icmp ult i64 %presorted_len.sroa.0.0.i, %8
  br i1 %_8030.1.i, label %bb24.preheader.1.i, label %bb16.loopexit.1.i

bb24.preheader.1.i:                               ; preds = %bb16.loopexit.i
  %iter1.sroa.0.132.1.i = add nuw nsw i64 %presorted_len.sroa.0.0.i, 1
  br label %bb24.1.i

bb24.1.i:                                         ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17he511fa7eb43a47edE.exit.1.i, %bb24.preheader.1.i
  %iter1.sroa.0.134.1.i = phi i64 [ %iter1.sroa.0.1.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17he511fa7eb43a47edE.exit.1.i ], [ %iter1.sroa.0.132.1.i, %bb24.preheader.1.i ]
  %iter1.sroa.0.033.1.i = phi i64 [ %iter1.sroa.0.134.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17he511fa7eb43a47edE.exit.1.i ], [ %presorted_len.sroa.0.0.i, %bb24.preheader.1.i ]
  %_55.1.i = getelementptr inbounds nuw float, ptr %src5.1.i, i64 %iter1.sroa.0.033.1.i
  %dst7.1.i = getelementptr inbounds nuw float, ptr %dst6.1.i, i64 %iter1.sroa.0.033.1.i
  %9 = load i32, ptr %_55.1.i, align 4, !alias.scope !1238, !noalias !1243
  store i32 %9, ptr %dst7.1.i, align 4, !alias.scope !1241, !noalias !1245
  %10 = getelementptr inbounds i8, ptr %dst7.1.i, i64 -4
  %_6.i.i.i16.cast.1.i = bitcast i32 %9 to float
  %_7.i.i.i17.1.i = load float, ptr %10, align 4, !alias.scope !1246, !noalias !1251, !noundef !18
  %brmerge.not.i.i18.1.i = fcmp uno float %_7.i.i.i17.1.i, %_6.i.i.i16.cast.1.i
  br i1 %brmerge.not.i.i18.1.i, label %bb6.i.i.i21.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i19.1.i", !prof !21

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i19.1.i": ; preds = %bb24.1.i
  %_8.i.mux.i.i20.1.i = fcmp ogt float %_7.i.i.i17.1.i, %_6.i.i.i16.cast.1.i
  br i1 %_8.i.mux.i.i20.1.i, label %bb4.i.1.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17he511fa7eb43a47edE.exit.1.i

bb4.i.1.i:                                        ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i19.1.i", %bb7.i.1.i
  %.in.i.1.i = phi float [ %_7.i.i2.i.1.i, %bb7.i.1.i ], [ %_7.i.i.i17.1.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i19.1.i" ]
  %gap_guard.sroa.5.0.i.1.i = phi ptr [ %sift.sroa.0.0.i.1.i, %bb7.i.1.i ], [ %dst7.1.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i19.1.i" ]
  %sift.sroa.0.0.i.1.i = phi ptr [ %11, %bb7.i.1.i ], [ %10, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i19.1.i" ]
  store float %.in.i.1.i, ptr %gap_guard.sroa.5.0.i.1.i, align 4, !alias.scope !1241, !noalias !1245
  %_18.i.1.i = icmp eq ptr %sift.sroa.0.0.i.1.i, %dst6.1.i
  br i1 %_18.i.1.i, label %bb10.i.1.i, label %bb6.i.1.i

bb6.i.1.i:                                        ; preds = %bb4.i.1.i
  %11 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.1.i, i64 -4
  %_7.i.i2.i.1.i = load float, ptr %11, align 4, !alias.scope !1254, !noalias !1259, !noundef !18
  %brmerge.not.i3.i.1.i = fcmp uno float %_7.i.i2.i.1.i, %_6.i.i.i16.cast.1.i
  br i1 %brmerge.not.i3.i.1.i, label %bb6.i.i5.i.i, label %bb7.i.1.i, !prof !21

bb7.i.1.i:                                        ; preds = %bb6.i.1.i
  %_8.i.mux.i4.i.1.i = fcmp ogt float %_7.i.i2.i.1.i, %_6.i.i.i16.cast.1.i
  br i1 %_8.i.mux.i4.i.1.i, label %bb4.i.1.i, label %bb10.i.1.i

bb10.i.1.i:                                       ; preds = %bb7.i.1.i, %bb4.i.1.i
  %sift.sroa.0.0.i.lcssa.1.i = phi ptr [ %sift.sroa.0.0.i.1.i, %bb7.i.1.i ], [ %dst6.1.i, %bb4.i.1.i ]
  store i32 %9, ptr %sift.sroa.0.0.i.lcssa.1.i, align 4, !alias.scope !1241, !noalias !1262
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17he511fa7eb43a47edE.exit.1.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17he511fa7eb43a47edE.exit.1.i: ; preds = %bb10.i.1.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i19.1.i"
  %_80.1.i = icmp ult i64 %iter1.sroa.0.134.1.i, %8
  %_84.1.i = zext i1 %_80.1.i to i64
  %iter1.sroa.0.1.1.i = add nuw i64 %iter1.sroa.0.134.1.i, %_84.1.i
  br i1 %_80.1.i, label %bb24.1.i, label %bb16.loopexit.1.i

bb16.loopexit.1.i:                                ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17he511fa7eb43a47edE.exit.1.i, %bb16.loopexit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1267)
  %count1.i.i = add nsw i64 %v.sroa.16.0.lcssa, -1
  %12 = getelementptr inbounds nuw float, ptr %v.sroa.0.0.ph.lcssa193, i64 %count1.i.i
  %13 = getelementptr inbounds nuw float, ptr %scratch.0, i64 %count1.i.i
  %14 = getelementptr i8, ptr %dst6.1.i, i64 -4
  br label %bb15.i.i

bb24.preheader.i:                                 ; preds = %bb15.i
  %iter1.sroa.0.132.i = add nuw nsw i64 %presorted_len.sroa.0.0.i, 1
  br label %bb24.i

bb16.i.i:                                         ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit24.i.i"
  %15 = getelementptr i8, ptr %20, i64 4
  %16 = getelementptr i8, ptr %19, i64 4
  %_44.i.i = and i64 %v.sroa.16.0.lcssa, 1
  %_22.i.i = icmp eq i64 %_44.i.i, 0
  br i1 %_22.i.i, label %bb9.i.i, label %bb5.i.i

bb15.i.i:                                         ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit24.i.i", %bb16.loopexit.1.i
  %dst.sroa.0.042.i.i = phi ptr [ %_16.i.i.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit24.i.i" ], [ %v.sroa.0.0.ph.lcssa193, %bb16.loopexit.1.i ]
  %iter.sroa.0.041.i.i = phi i64 [ %_39.i.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit24.i.i" ], [ 0, %bb16.loopexit.1.i ]
  %left.sroa.0.040.i.i = phi ptr [ %_14.i.i.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit24.i.i" ], [ %scratch.0, %bb16.loopexit.1.i ]
  %right.sroa.0.039.i.i = phi ptr [ %_12.i.i.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit24.i.i" ], [ %dst6.1.i, %bb16.loopexit.1.i ]
  %left_rev.sroa.0.038.i.i = phi ptr [ %20, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit24.i.i" ], [ %14, %bb16.loopexit.1.i ]
  %right_rev.sroa.0.037.i.i = phi ptr [ %19, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit24.i.i" ], [ %13, %bb16.loopexit.1.i ]
  %dst_rev.sroa.0.036.i.i = phi ptr [ %21, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit24.i.i" ], [ %12, %bb16.loopexit.1.i ]
  %_39.i.i = add nuw nsw i64 %iter.sroa.0.041.i.i, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !1270)
  call void @llvm.experimental.noalias.scope.decl(metadata !1273)
  call void @llvm.experimental.noalias.scope.decl(metadata !1275), !noalias !1278
  call void @llvm.experimental.noalias.scope.decl(metadata !1281), !noalias !1278
  %_6.i.i.i.i = load float, ptr %right.sroa.0.039.i.i, align 4, !alias.scope !1283, !noalias !1284, !noundef !18
  %_7.i.i.i.i = load float, ptr %left.sroa.0.040.i.i, align 4, !alias.scope !1285, !noalias !1286, !noundef !18
  %brmerge.not.i.i.i = fcmp uno float %_6.i.i.i.i, %_7.i.i.i.i
  br i1 %brmerge.not.i.i.i, label %bb6.i.i23.i.invoke.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i.i", !prof !21

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i.i": ; preds = %bb15.i.i
  %_8.i.mux.i.i.i = fcmp olt float %_6.i.i.i.i, %_7.i.i.i.i
  %..i17.i.i = select i1 %_8.i.mux.i.i.i, ptr %right.sroa.0.039.i.i, ptr %left.sroa.0.040.i.i
  %17 = load i32, ptr %..i17.i.i, align 4, !alias.scope !1287, !noalias !1288
  store i32 %17, ptr %dst.sroa.0.042.i.i, align 4, !alias.scope !1238, !noalias !1290
  call void @llvm.experimental.noalias.scope.decl(metadata !1291)
  call void @llvm.experimental.noalias.scope.decl(metadata !1294)
  call void @llvm.experimental.noalias.scope.decl(metadata !1296), !noalias !1299
  call void @llvm.experimental.noalias.scope.decl(metadata !1302), !noalias !1299
  %_6.i.i19.i.i = load float, ptr %right_rev.sroa.0.037.i.i, align 4, !alias.scope !1304, !noalias !1305, !noundef !18
  %_7.i.i20.i.i = load float, ptr %left_rev.sroa.0.038.i.i, align 4, !alias.scope !1306, !noalias !1307, !noundef !18
  %brmerge.not.i21.i.i = fcmp uno float %_6.i.i19.i.i, %_7.i.i20.i.i
  br i1 %brmerge.not.i21.i.i, label %bb6.i.i23.i.invoke.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit24.i.i", !prof !21

bb6.i.i23.i.invoke.i:                             ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i.i", %bb15.i.i
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_b0e33ba48ef5fa15e44a55a18226b5ac) #18
          to label %bb6.i.i23.i.cont.i unwind label %cleanup2.i, !noalias !1308

bb6.i.i23.i.cont.i:                               ; preds = %bb6.i.i23.i.invoke.i
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit24.i.i": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i.i"
  %_16.i.i.i = getelementptr inbounds nuw i8, ptr %dst.sroa.0.042.i.i, i64 4
  %is_l.i18.i.i = xor i1 %_8.i.mux.i.i.i, true
  %count2.i.i.i = zext i1 %is_l.i18.i.i to i64
  %_14.i.i.i = getelementptr inbounds nuw float, ptr %left.sroa.0.040.i.i, i64 %count2.i.i.i
  %count.i.i.i = zext i1 %_8.i.mux.i.i.i to i64
  %_12.i.i.i = getelementptr inbounds nuw float, ptr %right.sroa.0.039.i.i, i64 %count.i.i.i
  %_8.i.mux.i22.i.i = fcmp olt float %_6.i.i19.i.i, %_7.i.i20.i.i
  %..i.i.i = select i1 %_8.i.mux.i22.i.i, ptr %left_rev.sroa.0.038.i.i, ptr %right_rev.sroa.0.037.i.i
  %is_l.i.i.i = xor i1 %_8.i.mux.i22.i.i, true
  %18 = load i32, ptr %..i.i.i, align 4, !alias.scope !1287, !noalias !1309
  store i32 %18, ptr %dst_rev.sroa.0.036.i.i, align 4, !alias.scope !1238, !noalias !1311
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
  %22 = load i32, ptr %left.sroa.0.0.right.sroa.0.0.i.i, align 4, !alias.scope !1287, !noalias !1245
  store i32 %22, ptr %_16.i.i.i, align 4, !alias.scope !1238, !noalias !1312
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
  br i1 %or.cond.i.i, label %bb13.i.i, label %bb22, !prof !357

bb13.i.i:                                         ; preds = %bb9.i.i
; invoke core::slice::sort::shared::smallsort::panic_on_ord_violation
  invoke void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #18
          to label %.noexc14.i unwind label %cleanup2.i, !noalias !1308

.noexc14.i:                                       ; preds = %bb13.i.i
  unreachable

cleanup2.i:                                       ; preds = %bb13.i.i, %bb6.i.i23.i.invoke.i
  %23 = landingpad { ptr, i32 }
          cleanup
  %24 = shl nuw nsw i64 %v.sroa.16.0.lcssa, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.sroa.0.0.ph.lcssa193, ptr nonnull align 4 %scratch.0, i64 %24, i1 false), !alias.scope !1313, !noalias !1314
  br label %bb31.i

bb31.i:                                           ; preds = %bb14.i.i, %cleanup2.i
  %.pn.i = phi { ptr, i32 } [ %23, %cleanup2.i ], [ %28, %bb14.i.i ]
  resume { ptr, i32 } %.pn.i

bb24.i:                                           ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17he511fa7eb43a47edE.exit.i, %bb24.preheader.i
  %iter1.sroa.0.134.i = phi i64 [ %iter1.sroa.0.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17he511fa7eb43a47edE.exit.i ], [ %iter1.sroa.0.132.i, %bb24.preheader.i ]
  %iter1.sroa.0.033.i = phi i64 [ %iter1.sroa.0.134.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17he511fa7eb43a47edE.exit.i ], [ %presorted_len.sroa.0.0.i, %bb24.preheader.i ]
  %_55.i = getelementptr inbounds nuw float, ptr %v.sroa.0.0.ph.lcssa193, i64 %iter1.sroa.0.033.i
  %dst7.i = getelementptr inbounds nuw float, ptr %scratch.0, i64 %iter1.sroa.0.033.i
  %25 = load i32, ptr %_55.i, align 4, !alias.scope !1238, !noalias !1243
  store i32 %25, ptr %dst7.i, align 4, !alias.scope !1241, !noalias !1245
  %26 = getelementptr inbounds i8, ptr %dst7.i, i64 -4
  %_6.i.i.i16.cast.i = bitcast i32 %25 to float
  %_7.i.i.i17.i = load float, ptr %26, align 4, !alias.scope !1246, !noalias !1251, !noundef !18
  %brmerge.not.i.i18.i = fcmp uno float %_7.i.i.i17.i, %_6.i.i.i16.cast.i
  br i1 %brmerge.not.i.i18.i, label %bb6.i.i.i21.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i19.i", !prof !21

bb6.i.i.i21.i:                                    ; preds = %bb24.i, %bb24.1.i
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_b0e33ba48ef5fa15e44a55a18226b5ac) #18, !noalias !1308
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i19.i": ; preds = %bb24.i
  %_8.i.mux.i.i20.i = fcmp ogt float %_7.i.i.i17.i, %_6.i.i.i16.cast.i
  br i1 %_8.i.mux.i.i20.i, label %bb4.i.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17he511fa7eb43a47edE.exit.i

bb4.i.i:                                          ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i19.i", %bb7.i.i
  %.in.i.i = phi float [ %_7.i.i2.i.i, %bb7.i.i ], [ %_7.i.i.i17.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i19.i" ]
  %gap_guard.sroa.5.0.i.i = phi ptr [ %sift.sroa.0.0.i.i, %bb7.i.i ], [ %dst7.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i19.i" ]
  %sift.sroa.0.0.i.i = phi ptr [ %27, %bb7.i.i ], [ %26, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i19.i" ]
  store float %.in.i.i, ptr %gap_guard.sroa.5.0.i.i, align 4, !alias.scope !1241, !noalias !1245
  %_18.i.i = icmp eq ptr %sift.sroa.0.0.i.i, %scratch.0
  br i1 %_18.i.i, label %bb10.i.i, label %bb6.i.i

bb6.i.i:                                          ; preds = %bb4.i.i
  %27 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i, i64 -4
  %_7.i.i2.i.i = load float, ptr %27, align 4, !alias.scope !1254, !noalias !1259, !noundef !18
  %brmerge.not.i3.i.i = fcmp uno float %_7.i.i2.i.i, %_6.i.i.i16.cast.i
  br i1 %brmerge.not.i3.i.i, label %bb6.i.i5.i.i, label %bb7.i.i, !prof !21

bb6.i.i5.i.i:                                     ; preds = %bb6.i.i, %bb6.i.1.i
  %.lcssa38.i = phi i32 [ %9, %bb6.i.1.i ], [ %25, %bb6.i.i ]
  %sift.sroa.0.0.i.lcssa36.i = phi ptr [ %sift.sroa.0.0.i.1.i, %bb6.i.1.i ], [ %sift.sroa.0.0.i.i, %bb6.i.i ]
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_b0e33ba48ef5fa15e44a55a18226b5ac) #18
          to label %.noexc.i.i unwind label %bb14.i.i, !noalias !1308

.noexc.i.i:                                       ; preds = %bb6.i.i5.i.i
  unreachable

bb7.i.i:                                          ; preds = %bb6.i.i
  %_8.i.mux.i4.i.i = fcmp ogt float %_7.i.i2.i.i, %_6.i.i.i16.cast.i
  br i1 %_8.i.mux.i4.i.i, label %bb4.i.i, label %bb10.i.i

bb10.i.i:                                         ; preds = %bb7.i.i, %bb4.i.i
  %sift.sroa.0.0.i.lcssa.i = phi ptr [ %sift.sroa.0.0.i.i, %bb7.i.i ], [ %scratch.0, %bb4.i.i ]
  store i32 %25, ptr %sift.sroa.0.0.i.lcssa.i, align 4, !alias.scope !1241, !noalias !1262
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17he511fa7eb43a47edE.exit.i

bb14.i.i:                                         ; preds = %bb6.i.i5.i.i
  %28 = landingpad { ptr, i32 }
          cleanup
  store i32 %.lcssa38.i, ptr %sift.sroa.0.0.i.lcssa36.i, align 4, !alias.scope !1241, !noalias !1319
  br label %bb31.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17he511fa7eb43a47edE.exit.i: ; preds = %bb10.i.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i19.i"
  %_80.i = icmp ult i64 %iter1.sroa.0.134.i, %len_div_211.i
  %_84.i = zext i1 %_80.i to i64
  %iter1.sroa.0.1.i = add nuw i64 %iter1.sroa.0.134.i, %_84.i
  br i1 %_80.i, label %bb24.i, label %bb16.loopexit.i

bb7:                                              ; preds = %bb5
  %29 = add i32 %limit.sroa.0.0195, -1
  call void @llvm.experimental.noalias.scope.decl(metadata !1324)
  %len_div_84.i = lshr i64 %v.sroa.16.0196, 3
  %b.idx.i = shl nuw nsw i64 %len_div_84.i, 4
  %b.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph204, i64 %b.idx.i
  %c.idx.i = mul nuw nsw i64 %len_div_84.i, 28
  %c.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph204, i64 %c.idx.i
  %_12.i = icmp samesign ult i64 %v.sroa.16.0196, 64
  br i1 %_12.i, label %bb3.i23, label %bb5.i

bb5.i:                                            ; preds = %bb7
; call core::slice::sort::shared::pivot::median3_rec
  %self.i = call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h16032f23b0df01aeE(ptr noundef nonnull readonly align 4 %v.sroa.0.0.ph204, ptr noundef readonly %b.i, ptr noundef readonly %c.i, i64 noundef %len_div_84.i)
  br label %bb10

bb3.i23:                                          ; preds = %bb7
  call void @llvm.experimental.noalias.scope.decl(metadata !1327)
  call void @llvm.experimental.noalias.scope.decl(metadata !1330)
  call void @llvm.experimental.noalias.scope.decl(metadata !1332), !noalias !1335
  call void @llvm.experimental.noalias.scope.decl(metadata !1338), !noalias !1335
  %_6.i.i.i = load float, ptr %v.sroa.0.0.ph204, align 4, !alias.scope !1340, !noalias !1341, !noundef !18
  %_7.i.i.i = load float, ptr %b.i, align 4, !alias.scope !1343, !noalias !1344, !noundef !18
  %brmerge.not.i.i = fcmp uno float %_6.i.i.i, %_7.i.i.i
  br i1 %brmerge.not.i.i, label %bb6.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i", !prof !21

bb6.i.i.i:                                        ; preds = %bb3.i23
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_b0e33ba48ef5fa15e44a55a18226b5ac) #18, !noalias !1345
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i": ; preds = %bb3.i23
  %_8.i.mux.i.i = fcmp olt float %_6.i.i.i, %_7.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1346)
  call void @llvm.experimental.noalias.scope.decl(metadata !1349)
  %_7.i.i6.i = load float, ptr %c.i, align 4, !alias.scope !1352, !noalias !1353, !noundef !18
  %brmerge.not.i7.i = fcmp uno float %_6.i.i.i, %_7.i.i6.i
  br i1 %brmerge.not.i7.i, label %bb6.i.i9.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit10.i", !prof !21

bb6.i.i9.i:                                       ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i"
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_b0e33ba48ef5fa15e44a55a18226b5ac) #18, !noalias !1356
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit10.i": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i"
  %_8.i.mux.i8.i = fcmp olt float %_6.i.i.i, %_7.i.i6.i
  %30 = xor i1 %_8.i.mux.i.i, %_8.i.mux.i8.i
  br i1 %30, label %bb10, label %bb3.i.i

bb3.i.i:                                          ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit10.i"
  %brmerge.not.i13.i = fcmp uno float %_7.i.i.i, %_7.i.i6.i
  br i1 %brmerge.not.i13.i, label %bb6.i.i15.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit16.i", !prof !21

bb6.i.i15.i:                                      ; preds = %bb3.i.i
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_b0e33ba48ef5fa15e44a55a18226b5ac) #18, !noalias !1357
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit16.i": ; preds = %bb3.i.i
  %_8.i.mux.i14.i = fcmp olt float %_7.i.i.i, %_7.i.i6.i
  %_12.i.i = xor i1 %_8.i.mux.i.i, %_8.i.mux.i14.i
  %c.b.i.i = select i1 %_12.i.i, ptr %c.i, ptr %b.i
  br label %bb10

bb6:                                              ; preds = %bb5
; call core::slice::sort::stable::drift::sort
  call fastcc void @_ZN4core5slice4sort6stable5drift4sort17hf2c114673cd91d61E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph204, i64 noundef %v.sroa.16.0196, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i1 noundef zeroext true, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  br label %bb22

bb10:                                             ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit16.i", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit10.i", %bb5.i
  %_0.sroa.0.0.i.sink.i = phi ptr [ %self.i, %bb5.i ], [ %v.sroa.0.0.ph204, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit10.i" ], [ %c.b.i.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit16.i" ]
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
  call void @llvm.experimental.noalias.scope.decl(metadata !1364)
  call void @llvm.experimental.noalias.scope.decl(metadata !1367)
  %_6.i.i = load float, ptr %left_ancestor_pivot.sroa.0.0.ph201, align 4, !alias.scope !1370, !noalias !1371, !noundef !18
  %brmerge.not.i = fcmp uno float %_6.i.i, %value
  br i1 %brmerge.not.i, label %bb6.i.i24, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit", !prof !21

bb6.i.i24:                                        ; preds = %bb12
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_b0e33ba48ef5fa15e44a55a18226b5ac) #18, !noalias !1374
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit": ; preds = %bb12
  %_8.i.mux.i = fcmp olt float %_6.i.i, %value
  br i1 %_8.i.mux.i, label %bb14, label %bb17

bb14:                                             ; preds = %bb10, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit"
  call void @llvm.experimental.noalias.scope.decl(metadata !1375)
  call void @llvm.experimental.noalias.scope.decl(metadata !1378)
  %_8.i25.not = icmp samesign ult i64 %scratch.1, %v.sroa.16.0196
  br i1 %_8.i25.not, label %bb31.i26, label %bb33.i, !prof !357

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
  %_7.i.i.i31 = load float, ptr %src, align 4, !alias.scope !1380, !noalias !1385, !noundef !18
  br label %bb6.i29

bb6.i29:                                          ; preds = %bb6.i29.preheader, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit56.i"
  %state.sroa.43.1114.i = phi ptr [ %40, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit56.i" ], [ %state.sroa.43.0.i, %bb6.i29.preheader ]
  %state.sroa.9.1113.i = phi ptr [ %_9.i63.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit56.i" ], [ %state.sroa.9.0.i, %bb6.i29.preheader ]
  %state.sroa.27.1112.i = phi i64 [ %41, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit56.i" ], [ %state.sroa.27.0.i, %bb6.i29.preheader ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1388)
  call void @llvm.experimental.noalias.scope.decl(metadata !1389)
  call void @llvm.experimental.noalias.scope.decl(metadata !1390)
  call void @llvm.experimental.noalias.scope.decl(metadata !1391)
  %_6.i.i.i30 = load float, ptr %state.sroa.9.1113.i, align 4, !alias.scope !1392, !noalias !1393, !noundef !18
  %brmerge.not.i.i32 = fcmp uno float %_6.i.i.i30, %_7.i.i.i31
  br i1 %brmerge.not.i.i32, label %bb6.i.i.i36, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i33", !prof !21

bb6.i.i.i36:                                      ; preds = %bb6.i29
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_b0e33ba48ef5fa15e44a55a18226b5ac) #18, !noalias !1394
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i33": ; preds = %bb6.i29
  %_8.i.mux.i.i34 = fcmp olt float %_6.i.i.i30, %_7.i.i.i31
  %34 = getelementptr inbounds i8, ptr %state.sroa.43.1114.i, i64 -4
  %dst_base.sroa.0.0.i.i = select i1 %_8.i.mux.i.i34, ptr %scratch.0, ptr %34
  %dst.i.i = getelementptr inbounds nuw float, ptr %dst_base.sroa.0.0.i.i, i64 %state.sroa.27.1112.i
  store float %_6.i.i.i30, ptr %dst.i.i, align 4, !alias.scope !1378, !noalias !1395
  %_9.i.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.1113.i, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !1398)
  call void @llvm.experimental.noalias.scope.decl(metadata !1401)
  %_6.i.i25.i = load float, ptr %_9.i.i, align 4, !alias.scope !1404, !noalias !1405, !noundef !18
  %brmerge.not.i27.i = fcmp uno float %_6.i.i25.i, %_7.i.i.i31
  br i1 %brmerge.not.i27.i, label %bb6.i.i29.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit30.i", !prof !21

bb6.i.i29.i:                                      ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i33"
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_b0e33ba48ef5fa15e44a55a18226b5ac) #18, !noalias !1408
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit30.i": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i33"
  %_8.i.i = zext i1 %_8.i.mux.i.i34 to i64
  %35 = add i64 %state.sroa.27.1112.i, %_8.i.i
  %_8.i.mux.i28.i = fcmp olt float %_6.i.i25.i, %_7.i.i.i31
  %36 = getelementptr inbounds i8, ptr %state.sroa.43.1114.i, i64 -8
  %dst_base.sroa.0.0.i32.i = select i1 %_8.i.mux.i28.i, ptr %scratch.0, ptr %36
  %dst.i34.i = getelementptr inbounds nuw float, ptr %dst_base.sroa.0.0.i32.i, i64 %35
  store float %_6.i.i25.i, ptr %dst.i34.i, align 4, !alias.scope !1378, !noalias !1409
  %_9.i37.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.1113.i, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1412)
  call void @llvm.experimental.noalias.scope.decl(metadata !1415)
  %_6.i.i38.i = load float, ptr %_9.i37.i, align 4, !alias.scope !1418, !noalias !1419, !noundef !18
  %brmerge.not.i40.i = fcmp uno float %_6.i.i38.i, %_7.i.i.i31
  br i1 %brmerge.not.i40.i, label %bb6.i.i42.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit43.i", !prof !21

bb6.i.i42.i:                                      ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit30.i"
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_b0e33ba48ef5fa15e44a55a18226b5ac) #18, !noalias !1422
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit43.i": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit30.i"
  %_8.i36.i = zext i1 %_8.i.mux.i28.i to i64
  %37 = add i64 %35, %_8.i36.i
  %_8.i.mux.i41.i = fcmp olt float %_6.i.i38.i, %_7.i.i.i31
  %38 = getelementptr inbounds i8, ptr %state.sroa.43.1114.i, i64 -12
  %dst_base.sroa.0.0.i45.i = select i1 %_8.i.mux.i41.i, ptr %scratch.0, ptr %38
  %dst.i47.i = getelementptr inbounds nuw float, ptr %dst_base.sroa.0.0.i45.i, i64 %37
  store float %_6.i.i38.i, ptr %dst.i47.i, align 4, !alias.scope !1378, !noalias !1423
  %_9.i50.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.1113.i, i64 12
  call void @llvm.experimental.noalias.scope.decl(metadata !1426)
  call void @llvm.experimental.noalias.scope.decl(metadata !1429)
  %_6.i.i51.i = load float, ptr %_9.i50.i, align 4, !alias.scope !1432, !noalias !1433, !noundef !18
  %brmerge.not.i53.i = fcmp uno float %_6.i.i51.i, %_7.i.i.i31
  br i1 %brmerge.not.i53.i, label %bb6.i.i55.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit56.i", !prof !21

bb6.i.i55.i:                                      ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit43.i"
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_b0e33ba48ef5fa15e44a55a18226b5ac) #18, !noalias !1436
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit56.i": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit43.i"
  %_8.i49.i = zext i1 %_8.i.mux.i41.i to i64
  %39 = add i64 %37, %_8.i49.i
  %_8.i.mux.i54.i = fcmp olt float %_6.i.i51.i, %_7.i.i.i31
  %40 = getelementptr inbounds i8, ptr %state.sroa.43.1114.i, i64 -16
  %dst_base.sroa.0.0.i58.i = select i1 %_8.i.mux.i54.i, ptr %scratch.0, ptr %40
  %dst.i60.i = getelementptr inbounds nuw float, ptr %dst_base.sroa.0.0.i58.i, i64 %39
  store float %_6.i.i51.i, ptr %dst.i60.i, align 4, !alias.scope !1378, !noalias !1437
  %_8.i62.i = zext i1 %_8.i.mux.i54.i to i64
  %41 = add i64 %39, %_8.i62.i
  %_9.i63.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.1113.i, i64 16
  %_19.i35 = icmp ult ptr %_9.i63.i, %unroll_end.i
  br i1 %_19.i35, label %bb6.i29, label %bb16.i

bb16.i:                                           ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit56.i", %bb3.i27
  %state.sroa.27.1.lcssa.i = phi i64 [ %state.sroa.27.0.i, %bb3.i27 ], [ %41, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit56.i" ]
  %state.sroa.9.1.lcssa.i = phi ptr [ %state.sroa.9.0.i, %bb3.i27 ], [ %_9.i63.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit56.i" ]
  %state.sroa.43.1.lcssa.i = phi ptr [ %state.sroa.43.0.i, %bb3.i27 ], [ %40, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit56.i" ]
  %loop_end.i = getelementptr inbounds nuw float, ptr %v.sroa.0.0.ph204, i64 %pivot_pos.sroa.0.0.i
  %_47117.i = icmp ult ptr %state.sroa.9.1.lcssa.i, %loop_end.i
  br i1 %_47117.i, label %bb18.i.preheader, label %bb21.i

bb18.i.preheader:                                 ; preds = %bb16.i
  %_7.i.i65.i = load float, ptr %src, align 4, !alias.scope !1440, !noalias !1445, !noundef !18
  br label %bb18.i

bb21.i:                                           ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit69.i", %bb16.i
  %state.sroa.27.2.lcssa.i = phi i64 [ %state.sroa.27.1.lcssa.i, %bb16.i ], [ %43, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit69.i" ]
  %state.sroa.9.2.lcssa.i = phi ptr [ %state.sroa.9.1.lcssa.i, %bb16.i ], [ %_9.i76.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit69.i" ]
  %state.sroa.43.2.lcssa.i = phi ptr [ %state.sroa.43.1.lcssa.i, %bb16.i ], [ %42, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit69.i" ]
  %_55.i28 = icmp eq i64 %pivot_pos.sroa.0.0.i, %v.sroa.16.0196
  br i1 %_55.i28, label %bb22.i, label %bb23.i

bb18.i:                                           ; preds = %bb18.i.preheader, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit69.i"
  %state.sroa.43.2120.i = phi ptr [ %42, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit69.i" ], [ %state.sroa.43.1.lcssa.i, %bb18.i.preheader ]
  %state.sroa.9.2119.i = phi ptr [ %_9.i76.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit69.i" ], [ %state.sroa.9.1.lcssa.i, %bb18.i.preheader ]
  %state.sroa.27.2118.i = phi i64 [ %43, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit69.i" ], [ %state.sroa.27.1.lcssa.i, %bb18.i.preheader ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1448)
  call void @llvm.experimental.noalias.scope.decl(metadata !1449)
  call void @llvm.experimental.noalias.scope.decl(metadata !1450)
  call void @llvm.experimental.noalias.scope.decl(metadata !1451)
  %_6.i.i64.i = load float, ptr %state.sroa.9.2119.i, align 4, !alias.scope !1452, !noalias !1453, !noundef !18
  %brmerge.not.i66.i = fcmp uno float %_6.i.i64.i, %_7.i.i65.i
  br i1 %brmerge.not.i66.i, label %bb6.i.i68.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit69.i", !prof !21

bb6.i.i68.i:                                      ; preds = %bb18.i
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_b0e33ba48ef5fa15e44a55a18226b5ac) #18, !noalias !1454
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit69.i": ; preds = %bb18.i
  %_8.i.mux.i67.i = fcmp olt float %_6.i.i64.i, %_7.i.i65.i
  %42 = getelementptr inbounds i8, ptr %state.sroa.43.2120.i, i64 -4
  %dst_base.sroa.0.0.i71.i = select i1 %_8.i.mux.i67.i, ptr %scratch.0, ptr %42
  %dst.i73.i = getelementptr inbounds nuw float, ptr %dst_base.sroa.0.0.i71.i, i64 %state.sroa.27.2118.i
  store float %_6.i.i64.i, ptr %dst.i73.i, align 4, !alias.scope !1378, !noalias !1455
  %_8.i75.i = zext i1 %_8.i.mux.i67.i to i64
  %43 = add i64 %state.sroa.27.2118.i, %_8.i75.i
  %_9.i76.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.2119.i, i64 4
  %_47.i = icmp ult ptr %_9.i76.i, %loop_end.i
  br i1 %_47.i, label %bb18.i, label %bb21.i

bb23.i:                                           ; preds = %bb21.i
  %44 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa.i, i64 -4
  %dst.i80.i = getelementptr inbounds nuw float, ptr %44, i64 %state.sroa.27.2.lcssa.i
  %45 = load i32, ptr %state.sroa.9.2.lcssa.i, align 4, !alias.scope !1375, !noalias !1458
  store i32 %45, ptr %dst.i80.i, align 4, !alias.scope !1378, !noalias !1461
  %_9.i82.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.2.lcssa.i, i64 4
  br label %bb3.i27

bb22.i:                                           ; preds = %bb21.i
  %46 = shl i64 %state.sroa.27.2.lcssa.i, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.sroa.0.0.ph204, ptr nonnull align 4 %scratch.0, i64 %46, i1 false), !alias.scope !1462
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
  %wide.load512 = load <4 x i32>, ptr %51, align 4, !alias.scope !1378, !noalias !1375
  %reverse513 = shufflevector <4 x i32> %wide.load512, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %wide.load514 = load <4 x i32>, ptr %52, align 4, !alias.scope !1378, !noalias !1375
  %reverse515 = shufflevector <4 x i32> %wide.load514, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %53 = getelementptr i8, ptr %48, i64 16
  store <4 x i32> %reverse513, ptr %48, align 4, !alias.scope !1375, !noalias !1378
  store <4 x i32> %reverse515, ptr %53, align 4, !alias.scope !1375, !noalias !1378
  %index.next516 = add nuw i64 %index511, 8
  %54 = icmp eq i64 %index.next516, %n.vec509
  br i1 %54, label %middle.block517, label %vector.body510, !llvm.loop !1463

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
  %59 = load i32, ptr %58, align 4, !alias.scope !1378, !noalias !1375
  store i32 %59, ptr %56, align 4, !alias.scope !1375, !noalias !1378
  %exitcond.not.i = icmp eq i64 %55, %_63.i
  br i1 %exitcond.not.i, label %bb16, label %bb42.i, !llvm.loop !1464

bb16:                                             ; preds = %bb42.i, %middle.block517, %bb22.i
  %60 = icmp eq i64 %state.sroa.27.2.lcssa.i, 0
  br i1 %60, label %bb17, label %bb19

bb19:                                             ; preds = %bb16
  %_6.not.i = icmp ugt i64 %state.sroa.27.2.lcssa.i, %v.sroa.16.0196
  br i1 %_6.not.i, label %bb3.i37, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hfcf5686026bf385fE.exit", !prof !1465

bb3.i37:                                          ; preds = %bb19
; call core::panicking::panic_fmt
  call void @_ZN4core9panicking9panic_fmt17ha4414e4328fe24a0E(ptr noundef nonnull @alloc_d1084648e479974e70c9329824bf76f9, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_58d434a1e795f965ef82c8e9c5db822a) #18, !noalias !1466
  unreachable

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hfcf5686026bf385fE.exit": ; preds = %bb19
  %61 = getelementptr inbounds nuw float, ptr %v.sroa.0.0.ph204, i64 %state.sroa.27.2.lcssa.i
; call core::slice::sort::stable::quicksort::quicksort
  call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h23ee1f5ec6e131a2E(ptr noalias noundef nonnull align 4 %61, i64 noundef %_63.i, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef %29, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) %pivot_copy, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_8 = icmp ult i64 %state.sroa.27.2.lcssa.i, 33
  br i1 %_8, label %bb3, label %bb5

bb17:                                             ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit", %bb16
  call void @llvm.experimental.noalias.scope.decl(metadata !1470)
  call void @llvm.experimental.noalias.scope.decl(metadata !1473)
  %_8.i38.not = icmp samesign ult i64 %scratch.1, %v.sroa.16.0196
  br i1 %_8.i38.not, label %bb31.i41, label %bb33.i42, !prof !357

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
  %_6.i.i.i.i86 = load float, ptr %src, align 4, !alias.scope !1475, !noalias !1482, !noundef !18
  br label %bb6.i82

bb6.i82:                                          ; preds = %bb6.i82.preheader, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h9dd9effb4230de85E.exit56.i"
  %state.sroa.43.1114.i83 = phi ptr [ %69, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h9dd9effb4230de85E.exit56.i" ], [ %state.sroa.43.0.i48, %bb6.i82.preheader ]
  %state.sroa.9.1113.i84 = phi ptr [ %_9.i63.i105, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h9dd9effb4230de85E.exit56.i" ], [ %state.sroa.9.0.i47, %bb6.i82.preheader ]
  %state.sroa.27.1112.i85 = phi i64 [ %70, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h9dd9effb4230de85E.exit56.i" ], [ %state.sroa.27.0.i46, %bb6.i82.preheader ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1486)
  call void @llvm.experimental.noalias.scope.decl(metadata !1487)
  call void @llvm.experimental.noalias.scope.decl(metadata !1488)
  call void @llvm.experimental.noalias.scope.decl(metadata !1489)
  call void @llvm.experimental.noalias.scope.decl(metadata !1490)
  call void @llvm.experimental.noalias.scope.decl(metadata !1491)
  %_7.i.i.i.i87 = load float, ptr %state.sroa.9.1113.i84, align 4, !alias.scope !1492, !noalias !1493, !noundef !18
  %brmerge.not.i.i.i88 = fcmp uno float %_6.i.i.i.i86, %_7.i.i.i.i87
  br i1 %brmerge.not.i.i.i88, label %bb6.i.i.i.i, label %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h9dd9effb4230de85E.exit.i", !prof !21

bb6.i.i.i.i:                                      ; preds = %bb6.i82
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_b0e33ba48ef5fa15e44a55a18226b5ac) #18, !noalias !1494
  unreachable

"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h9dd9effb4230de85E.exit.i": ; preds = %bb6.i82
  %_8.i.mux.i.i.i89 = fcmp uge float %_6.i.i.i.i86, %_7.i.i.i.i87
  %63 = getelementptr inbounds i8, ptr %state.sroa.43.1114.i83, i64 -4
  %dst_base.sroa.0.0.i.i90 = select i1 %_8.i.mux.i.i.i89, ptr %scratch.0, ptr %63
  %dst.i.i91 = getelementptr inbounds nuw float, ptr %dst_base.sroa.0.0.i.i90, i64 %state.sroa.27.1112.i85
  store float %_7.i.i.i.i87, ptr %dst.i.i91, align 4, !alias.scope !1473, !noalias !1495
  %_9.i.i92 = getelementptr inbounds nuw i8, ptr %state.sroa.9.1113.i84, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !1498)
  call void @llvm.experimental.noalias.scope.decl(metadata !1501)
  call void @llvm.experimental.noalias.scope.decl(metadata !1504)
  %_7.i.i.i26.i = load float, ptr %_9.i.i92, align 4, !alias.scope !1507, !noalias !1508, !noundef !18
  %brmerge.not.i.i27.i = fcmp uno float %_6.i.i.i.i86, %_7.i.i.i26.i
  br i1 %brmerge.not.i.i27.i, label %bb6.i.i.i29.i, label %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h9dd9effb4230de85E.exit30.i", !prof !21

bb6.i.i.i29.i:                                    ; preds = %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h9dd9effb4230de85E.exit.i"
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_b0e33ba48ef5fa15e44a55a18226b5ac) #18, !noalias !1512
  unreachable

"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h9dd9effb4230de85E.exit30.i": ; preds = %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h9dd9effb4230de85E.exit.i"
  %_8.i.i93 = zext i1 %_8.i.mux.i.i.i89 to i64
  %64 = add i64 %state.sroa.27.1112.i85, %_8.i.i93
  %_8.i.mux.i.i28.i = fcmp uge float %_6.i.i.i.i86, %_7.i.i.i26.i
  %65 = getelementptr inbounds i8, ptr %state.sroa.43.1114.i83, i64 -8
  %dst_base.sroa.0.0.i32.i94 = select i1 %_8.i.mux.i.i28.i, ptr %scratch.0, ptr %65
  %dst.i34.i95 = getelementptr inbounds nuw float, ptr %dst_base.sroa.0.0.i32.i94, i64 %64
  store float %_7.i.i.i26.i, ptr %dst.i34.i95, align 4, !alias.scope !1473, !noalias !1513
  %_9.i37.i96 = getelementptr inbounds nuw i8, ptr %state.sroa.9.1113.i84, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1516)
  call void @llvm.experimental.noalias.scope.decl(metadata !1519)
  call void @llvm.experimental.noalias.scope.decl(metadata !1522)
  %_7.i.i.i39.i = load float, ptr %_9.i37.i96, align 4, !alias.scope !1525, !noalias !1526, !noundef !18
  %brmerge.not.i.i40.i = fcmp uno float %_6.i.i.i.i86, %_7.i.i.i39.i
  br i1 %brmerge.not.i.i40.i, label %bb6.i.i.i42.i, label %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h9dd9effb4230de85E.exit43.i", !prof !21

bb6.i.i.i42.i:                                    ; preds = %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h9dd9effb4230de85E.exit30.i"
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_b0e33ba48ef5fa15e44a55a18226b5ac) #18, !noalias !1530
  unreachable

"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h9dd9effb4230de85E.exit43.i": ; preds = %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h9dd9effb4230de85E.exit30.i"
  %_8.i36.i97 = zext i1 %_8.i.mux.i.i28.i to i64
  %66 = add i64 %64, %_8.i36.i97
  %_8.i.mux.i.i41.i = fcmp uge float %_6.i.i.i.i86, %_7.i.i.i39.i
  %67 = getelementptr inbounds i8, ptr %state.sroa.43.1114.i83, i64 -12
  %dst_base.sroa.0.0.i45.i98 = select i1 %_8.i.mux.i.i41.i, ptr %scratch.0, ptr %67
  %dst.i47.i99 = getelementptr inbounds nuw float, ptr %dst_base.sroa.0.0.i45.i98, i64 %66
  store float %_7.i.i.i39.i, ptr %dst.i47.i99, align 4, !alias.scope !1473, !noalias !1531
  %_9.i50.i100 = getelementptr inbounds nuw i8, ptr %state.sroa.9.1113.i84, i64 12
  call void @llvm.experimental.noalias.scope.decl(metadata !1534)
  call void @llvm.experimental.noalias.scope.decl(metadata !1537)
  call void @llvm.experimental.noalias.scope.decl(metadata !1540)
  %_7.i.i.i52.i = load float, ptr %_9.i50.i100, align 4, !alias.scope !1543, !noalias !1544, !noundef !18
  %brmerge.not.i.i53.i = fcmp uno float %_6.i.i.i.i86, %_7.i.i.i52.i
  br i1 %brmerge.not.i.i53.i, label %bb6.i.i.i55.i, label %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h9dd9effb4230de85E.exit56.i", !prof !21

bb6.i.i.i55.i:                                    ; preds = %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h9dd9effb4230de85E.exit43.i"
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_b0e33ba48ef5fa15e44a55a18226b5ac) #18, !noalias !1548
  unreachable

"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h9dd9effb4230de85E.exit56.i": ; preds = %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h9dd9effb4230de85E.exit43.i"
  %_8.i49.i101 = zext i1 %_8.i.mux.i.i41.i to i64
  %68 = add i64 %66, %_8.i49.i101
  %_8.i.mux.i.i54.i = fcmp uge float %_6.i.i.i.i86, %_7.i.i.i52.i
  %69 = getelementptr inbounds i8, ptr %state.sroa.43.1114.i83, i64 -16
  %dst_base.sroa.0.0.i58.i102 = select i1 %_8.i.mux.i.i54.i, ptr %scratch.0, ptr %69
  %dst.i60.i103 = getelementptr inbounds nuw float, ptr %dst_base.sroa.0.0.i58.i102, i64 %68
  store float %_7.i.i.i52.i, ptr %dst.i60.i103, align 4, !alias.scope !1473, !noalias !1549
  %_8.i62.i104 = zext i1 %_8.i.mux.i.i54.i to i64
  %70 = add i64 %68, %_8.i62.i104
  %_9.i63.i105 = getelementptr inbounds nuw i8, ptr %state.sroa.9.1113.i84, i64 16
  %_19.i106 = icmp ult ptr %_9.i63.i105, %unroll_end.i50
  br i1 %_19.i106, label %bb6.i82, label %bb16.i52

bb16.i52:                                         ; preds = %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h9dd9effb4230de85E.exit56.i", %bb3.i45
  %state.sroa.27.1.lcssa.i53 = phi i64 [ %state.sroa.27.0.i46, %bb3.i45 ], [ %70, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h9dd9effb4230de85E.exit56.i" ]
  %state.sroa.9.1.lcssa.i54 = phi ptr [ %state.sroa.9.0.i47, %bb3.i45 ], [ %_9.i63.i105, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h9dd9effb4230de85E.exit56.i" ]
  %state.sroa.43.1.lcssa.i55 = phi ptr [ %state.sroa.43.0.i48, %bb3.i45 ], [ %69, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h9dd9effb4230de85E.exit56.i" ]
  %loop_end.i56 = getelementptr inbounds nuw float, ptr %v.sroa.0.0.ph204, i64 %pivot_pos.sroa.0.0.i49
  %_47117.i57 = icmp ult ptr %state.sroa.9.1.lcssa.i54, %loop_end.i56
  br i1 %_47117.i57, label %bb18.i73.preheader, label %bb21.i58

bb18.i73.preheader:                               ; preds = %bb16.i52
  %_6.i.i.i64.i = load float, ptr %src, align 4, !alias.scope !1552, !noalias !1559, !noundef !18
  br label %bb18.i73

bb21.i58:                                         ; preds = %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h9dd9effb4230de85E.exit69.i", %bb16.i52
  %state.sroa.27.2.lcssa.i59 = phi i64 [ %state.sroa.27.1.lcssa.i53, %bb16.i52 ], [ %72, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h9dd9effb4230de85E.exit69.i" ]
  %state.sroa.9.2.lcssa.i60 = phi ptr [ %state.sroa.9.1.lcssa.i54, %bb16.i52 ], [ %_9.i76.i80, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h9dd9effb4230de85E.exit69.i" ]
  %state.sroa.43.2.lcssa.i61 = phi ptr [ %state.sroa.43.1.lcssa.i55, %bb16.i52 ], [ %71, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h9dd9effb4230de85E.exit69.i" ]
  %_55.i62 = icmp eq i64 %pivot_pos.sroa.0.0.i49, %v.sroa.16.0196
  br i1 %_55.i62, label %bb22.i66, label %bb23.i63

bb18.i73:                                         ; preds = %bb18.i73.preheader, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h9dd9effb4230de85E.exit69.i"
  %state.sroa.43.2120.i74 = phi ptr [ %71, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h9dd9effb4230de85E.exit69.i" ], [ %state.sroa.43.1.lcssa.i55, %bb18.i73.preheader ]
  %state.sroa.9.2119.i75 = phi ptr [ %_9.i76.i80, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h9dd9effb4230de85E.exit69.i" ], [ %state.sroa.9.1.lcssa.i54, %bb18.i73.preheader ]
  %state.sroa.27.2118.i76 = phi i64 [ %72, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h9dd9effb4230de85E.exit69.i" ], [ %state.sroa.27.1.lcssa.i53, %bb18.i73.preheader ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1563)
  call void @llvm.experimental.noalias.scope.decl(metadata !1564)
  call void @llvm.experimental.noalias.scope.decl(metadata !1565)
  call void @llvm.experimental.noalias.scope.decl(metadata !1566)
  call void @llvm.experimental.noalias.scope.decl(metadata !1567)
  call void @llvm.experimental.noalias.scope.decl(metadata !1568)
  %_7.i.i.i65.i = load float, ptr %state.sroa.9.2119.i75, align 4, !alias.scope !1569, !noalias !1570, !noundef !18
  %brmerge.not.i.i66.i = fcmp uno float %_6.i.i.i64.i, %_7.i.i.i65.i
  br i1 %brmerge.not.i.i66.i, label %bb6.i.i.i68.i, label %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h9dd9effb4230de85E.exit69.i", !prof !21

bb6.i.i.i68.i:                                    ; preds = %bb18.i73
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_b0e33ba48ef5fa15e44a55a18226b5ac) #18, !noalias !1571
  unreachable

"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h9dd9effb4230de85E.exit69.i": ; preds = %bb18.i73
  %_8.i.mux.i.i67.i = fcmp uge float %_6.i.i.i64.i, %_7.i.i.i65.i
  %71 = getelementptr inbounds i8, ptr %state.sroa.43.2120.i74, i64 -4
  %dst_base.sroa.0.0.i71.i77 = select i1 %_8.i.mux.i.i67.i, ptr %scratch.0, ptr %71
  %dst.i73.i78 = getelementptr inbounds nuw float, ptr %dst_base.sroa.0.0.i71.i77, i64 %state.sroa.27.2118.i76
  store float %_7.i.i.i65.i, ptr %dst.i73.i78, align 4, !alias.scope !1473, !noalias !1572
  %_8.i75.i79 = zext i1 %_8.i.mux.i.i67.i to i64
  %72 = add i64 %state.sroa.27.2118.i76, %_8.i75.i79
  %_9.i76.i80 = getelementptr inbounds nuw i8, ptr %state.sroa.9.2119.i75, i64 4
  %_47.i81 = icmp ult ptr %_9.i76.i80, %loop_end.i56
  br i1 %_47.i81, label %bb18.i73, label %bb21.i58

bb23.i63:                                         ; preds = %bb21.i58
  %73 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa.i61, i64 -4
  %dst.i80.i64 = getelementptr inbounds nuw float, ptr %scratch.0, i64 %state.sroa.27.2.lcssa.i59
  %74 = load i32, ptr %state.sroa.9.2.lcssa.i60, align 4, !alias.scope !1470, !noalias !1575
  store i32 %74, ptr %dst.i80.i64, align 4, !alias.scope !1473, !noalias !1578
  %75 = add i64 %state.sroa.27.2.lcssa.i59, 1
  %_9.i82.i65 = getelementptr inbounds nuw i8, ptr %state.sroa.9.2.lcssa.i60, i64 4
  br label %bb3.i45

bb22.i66:                                         ; preds = %bb21.i58
  %76 = shl i64 %state.sroa.27.2.lcssa.i59, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.sroa.0.0.ph204, ptr nonnull align 4 %scratch.0, i64 %76, i1 false), !alias.scope !1579
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
  %wide.load = load <4 x i32>, ptr %81, align 4, !alias.scope !1473, !noalias !1470
  %reverse = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %wide.load503 = load <4 x i32>, ptr %82, align 4, !alias.scope !1473, !noalias !1470
  %reverse504 = shufflevector <4 x i32> %wide.load503, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %83 = getelementptr i8, ptr %78, i64 16
  store <4 x i32> %reverse, ptr %78, align 4, !alias.scope !1470, !noalias !1473
  store <4 x i32> %reverse504, ptr %83, align 4, !alias.scope !1470, !noalias !1473
  %index.next = add nuw i64 %index, 8
  %84 = icmp eq i64 %index.next, %n.vec
  br i1 %84, label %middle.block, label %vector.body, !llvm.loop !1580

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %_63.i67, %n.vec
  br i1 %cmp.n, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17hf5b3315b4b2c5f83E.exit, label %bb42.i70.preheader

bb42.i70.preheader:                               ; preds = %bb42.lr.ph.i69, %middle.block
  %iter.sroa.0.0125.i71.ph = phi i64 [ 0, %bb42.lr.ph.i69 ], [ %n.vec, %middle.block ]
  br label %bb42.i70

bb42.i70:                                         ; preds = %bb42.i70.preheader, %bb42.i70
  %iter.sroa.0.0125.i71 = phi i64 [ %85, %bb42.i70 ], [ %iter.sroa.0.0125.i71.ph, %bb42.i70.preheader ]
  %85 = add nuw i64 %iter.sroa.0.0125.i71, 1
  %86 = getelementptr float, ptr %77, i64 %iter.sroa.0.0125.i71
  %87 = xor i64 %iter.sroa.0.0125.i71, -1
  %88 = getelementptr float, ptr %_86.i44, i64 %87
  %89 = load i32, ptr %88, align 4, !alias.scope !1473, !noalias !1470
  store i32 %89, ptr %86, align 4, !alias.scope !1470, !noalias !1473
  %exitcond.not.i72 = icmp eq i64 %85, %_63.i67
  br i1 %exitcond.not.i72, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17hf5b3315b4b2c5f83E.exit, label %bb42.i70, !llvm.loop !1581

_ZN4core5slice4sort6stable9quicksort16stable_partition17hf5b3315b4b2c5f83E.exit: ; preds = %bb42.i70, %middle.block
  %_47 = icmp ugt i64 %state.sroa.27.2.lcssa.i59, %v.sroa.16.0196
  br i1 %_47, label %bb27, label %bb28, !prof !1465

bb3.thread:                                       ; preds = %bb22.i66
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  br label %bb22

bb28:                                             ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17hf5b3315b4b2c5f83E.exit
  %_54 = getelementptr inbounds nuw float, ptr %v.sroa.0.0.ph204, i64 %state.sroa.27.2.lcssa.i59
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_8194 = icmp ult i64 %_63.i67, 33
  br i1 %_8194, label %bb3, label %bb5.lr.ph

bb27:                                             ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17hf5b3315b4b2c5f83E.exit
; call core::slice::index::slice_index_fail
  call void @_ZN4core5slice5index16slice_index_fail17h62807bcaa490c9c1E(i64 noundef %state.sroa.27.2.lcssa.i59, i64 noundef %v.sroa.16.0196, i64 noundef %v.sroa.16.0196, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_0766b232215672ee1bd2195fdb153938) #18
  unreachable

bb22:                                             ; preds = %bb3.thread, %bb9.i.i, %bb3, %bb6
  ret void
}

; core::slice::sort::stable::quicksort::quicksort
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable9quicksort9quicksort17h39c332b52467a176E(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %2, ptr noalias noundef readonly align 4 captures(address) dereferenceable_or_null(4) %3, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #2 personality ptr @rust_eh_personality {
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

bb5:                                              ; preds = %bb5.lr.ph, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hfcf5686026bf385fE.exit"
  %v.sroa.16.0196 = phi i64 [ %v.sroa.16.0.ph203, %bb5.lr.ph ], [ %state.sroa.27.2.lcssa.i, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hfcf5686026bf385fE.exit" ]
  %limit.sroa.0.0195 = phi i32 [ %limit.sroa.0.0.ph202, %bb5.lr.ph ], [ %29, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hfcf5686026bf385fE.exit" ]
  %_11 = icmp eq i32 %limit.sroa.0.0195, 0
  br i1 %_11, label %bb6, label %bb7

bb3:                                              ; preds = %bb28, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hfcf5686026bf385fE.exit", %start
  %v.sroa.0.0.ph.lcssa193 = phi ptr [ %0, %start ], [ %v.sroa.0.0.ph204, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hfcf5686026bf385fE.exit" ], [ %_54, %bb28 ]
  %v.sroa.16.0.lcssa = phi i64 [ %1, %start ], [ %state.sroa.27.2.lcssa.i, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hfcf5686026bf385fE.exit" ], [ %_63.i67, %bb28 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1582)
  call void @llvm.experimental.noalias.scope.decl(metadata !1585)
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
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h3ae107a90c900d55E(ptr noundef nonnull align 4 %v.sroa.0.0.ph.lcssa193, ptr noundef nonnull align 4 %scratch.0, ptr noundef %_16.i)
  %_18.i = getelementptr inbounds nuw float, ptr %v.sroa.0.0.ph.lcssa193, i64 %len_div_211.i
  %_19.i = getelementptr inbounds nuw float, ptr %scratch.0, i64 %len_div_211.i
  %_20.i = getelementptr inbounds nuw i8, ptr %_16.i, i64 32
; call core::slice::sort::shared::smallsort::sort8_stable
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h3ae107a90c900d55E(ptr noundef %_18.i, ptr noundef %_19.i, ptr noundef %_20.i)
  br label %bb15.i

bb10.i:                                           ; preds = %bb9.i
; call core::slice::sort::shared::smallsort::sort4_stable
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h7be21866dd44a082E(ptr noundef nonnull align 4 %v.sroa.0.0.ph.lcssa193, ptr noundef nonnull align 4 %scratch.0)
  %_27.i = getelementptr inbounds nuw float, ptr %v.sroa.0.0.ph.lcssa193, i64 %len_div_211.i
  %_28.i = getelementptr inbounds nuw float, ptr %scratch.0, i64 %len_div_211.i
; call core::slice::sort::shared::smallsort::sort4_stable
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h7be21866dd44a082E(ptr noundef %_27.i, ptr noundef %_28.i)
  br label %bb15.i

bb46.i:                                           ; preds = %bb9.i
  %5 = load i32, ptr %v.sroa.0.0.ph.lcssa193, align 4, !alias.scope !1582, !noalias !1587
  store i32 %5, ptr %scratch.0, align 4, !alias.scope !1585, !noalias !1589
  %_31.i = getelementptr inbounds nuw float, ptr %v.sroa.0.0.ph.lcssa193, i64 %len_div_211.i
  %6 = getelementptr inbounds nuw float, ptr %scratch.0, i64 %len_div_211.i
  %7 = load i32, ptr %_31.i, align 4, !alias.scope !1582, !noalias !1587
  store i32 %7, ptr %6, align 4, !alias.scope !1585, !noalias !1589
  br label %bb15.i

bb15.i:                                           ; preds = %bb46.i, %bb10.i, %bb6.i
  %presorted_len.sroa.0.0.i = phi i64 [ 8, %bb6.i ], [ 4, %bb10.i ], [ 1, %bb46.i ]
  %8 = sub nsw i64 %v.sroa.16.0.lcssa, %len_div_211.i
  %_8030.i = icmp samesign ult i64 %presorted_len.sroa.0.0.i, %len_div_211.i
  br i1 %_8030.i, label %bb24.preheader.i, label %bb16.loopexit.i

bb16.loopexit.i:                                  ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17ha468f4743064a81cE.exit.i, %bb15.i
  %src5.1.i = getelementptr inbounds nuw float, ptr %v.sroa.0.0.ph.lcssa193, i64 %len_div_211.i
  %dst6.1.i = getelementptr float, ptr %scratch.0, i64 %len_div_211.i
  %_8030.1.i = icmp ult i64 %presorted_len.sroa.0.0.i, %8
  br i1 %_8030.1.i, label %bb24.preheader.1.i, label %bb16.loopexit.1.i

bb24.preheader.1.i:                               ; preds = %bb16.loopexit.i
  %iter1.sroa.0.132.1.i = add nuw nsw i64 %presorted_len.sroa.0.0.i, 1
  br label %bb24.1.i

bb24.1.i:                                         ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17ha468f4743064a81cE.exit.1.i, %bb24.preheader.1.i
  %iter1.sroa.0.134.1.i = phi i64 [ %iter1.sroa.0.1.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17ha468f4743064a81cE.exit.1.i ], [ %iter1.sroa.0.132.1.i, %bb24.preheader.1.i ]
  %iter1.sroa.0.033.1.i = phi i64 [ %iter1.sroa.0.134.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17ha468f4743064a81cE.exit.1.i ], [ %presorted_len.sroa.0.0.i, %bb24.preheader.1.i ]
  %_55.1.i = getelementptr inbounds nuw float, ptr %src5.1.i, i64 %iter1.sroa.0.033.1.i
  %dst7.1.i = getelementptr inbounds nuw float, ptr %dst6.1.i, i64 %iter1.sroa.0.033.1.i
  %9 = load i32, ptr %_55.1.i, align 4, !alias.scope !1582, !noalias !1587
  store i32 %9, ptr %dst7.1.i, align 4, !alias.scope !1585, !noalias !1589
  %10 = getelementptr inbounds i8, ptr %dst7.1.i, i64 -4
  %_6.i.i.i16.cast.1.i = bitcast i32 %9 to float
  %_7.i.i.i17.1.i = load float, ptr %10, align 4, !alias.scope !1590, !noalias !1595, !noundef !18
  %brmerge.not.i.i18.1.i = fcmp uno float %_7.i.i.i17.1.i, %_6.i.i.i16.cast.1.i
  br i1 %brmerge.not.i.i18.1.i, label %bb6.i.i.i21.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i19.1.i", !prof !21

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i19.1.i": ; preds = %bb24.1.i
  %_8.i.mux.i.i20.1.i = fcmp ogt float %_7.i.i.i17.1.i, %_6.i.i.i16.cast.1.i
  br i1 %_8.i.mux.i.i20.1.i, label %bb4.i.1.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17ha468f4743064a81cE.exit.1.i

bb4.i.1.i:                                        ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i19.1.i", %bb7.i.1.i
  %.in.i.1.i = phi float [ %_7.i.i2.i.1.i, %bb7.i.1.i ], [ %_7.i.i.i17.1.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i19.1.i" ]
  %gap_guard.sroa.5.0.i.1.i = phi ptr [ %sift.sroa.0.0.i.1.i, %bb7.i.1.i ], [ %dst7.1.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i19.1.i" ]
  %sift.sroa.0.0.i.1.i = phi ptr [ %11, %bb7.i.1.i ], [ %10, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i19.1.i" ]
  store float %.in.i.1.i, ptr %gap_guard.sroa.5.0.i.1.i, align 4, !alias.scope !1585, !noalias !1589
  %_18.i.1.i = icmp eq ptr %sift.sroa.0.0.i.1.i, %dst6.1.i
  br i1 %_18.i.1.i, label %bb10.i.1.i, label %bb6.i.1.i

bb6.i.1.i:                                        ; preds = %bb4.i.1.i
  %11 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.1.i, i64 -4
  %_7.i.i2.i.1.i = load float, ptr %11, align 4, !alias.scope !1598, !noalias !1603, !noundef !18
  %brmerge.not.i3.i.1.i = fcmp uno float %_7.i.i2.i.1.i, %_6.i.i.i16.cast.1.i
  br i1 %brmerge.not.i3.i.1.i, label %bb6.i.i5.i.i, label %bb7.i.1.i, !prof !21

bb7.i.1.i:                                        ; preds = %bb6.i.1.i
  %_8.i.mux.i4.i.1.i = fcmp ogt float %_7.i.i2.i.1.i, %_6.i.i.i16.cast.1.i
  br i1 %_8.i.mux.i4.i.1.i, label %bb4.i.1.i, label %bb10.i.1.i

bb10.i.1.i:                                       ; preds = %bb7.i.1.i, %bb4.i.1.i
  %sift.sroa.0.0.i.lcssa.1.i = phi ptr [ %sift.sroa.0.0.i.1.i, %bb7.i.1.i ], [ %dst6.1.i, %bb4.i.1.i ]
  store i32 %9, ptr %sift.sroa.0.0.i.lcssa.1.i, align 4, !alias.scope !1585, !noalias !1606
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17ha468f4743064a81cE.exit.1.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17ha468f4743064a81cE.exit.1.i: ; preds = %bb10.i.1.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i19.1.i"
  %_80.1.i = icmp ult i64 %iter1.sroa.0.134.1.i, %8
  %_84.1.i = zext i1 %_80.1.i to i64
  %iter1.sroa.0.1.1.i = add nuw i64 %iter1.sroa.0.134.1.i, %_84.1.i
  br i1 %_80.1.i, label %bb24.1.i, label %bb16.loopexit.1.i

bb16.loopexit.1.i:                                ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17ha468f4743064a81cE.exit.1.i, %bb16.loopexit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1611)
  %count1.i.i = add nsw i64 %v.sroa.16.0.lcssa, -1
  %12 = getelementptr inbounds nuw float, ptr %v.sroa.0.0.ph.lcssa193, i64 %count1.i.i
  %13 = getelementptr inbounds nuw float, ptr %scratch.0, i64 %count1.i.i
  %14 = getelementptr i8, ptr %dst6.1.i, i64 -4
  br label %bb15.i.i

bb24.preheader.i:                                 ; preds = %bb15.i
  %iter1.sroa.0.132.i = add nuw nsw i64 %presorted_len.sroa.0.0.i, 1
  br label %bb24.i

bb16.i.i:                                         ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit24.i.i"
  %15 = getelementptr i8, ptr %20, i64 4
  %16 = getelementptr i8, ptr %19, i64 4
  %_44.i.i = and i64 %v.sroa.16.0.lcssa, 1
  %_22.i.i = icmp eq i64 %_44.i.i, 0
  br i1 %_22.i.i, label %bb9.i.i, label %bb5.i.i

bb15.i.i:                                         ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit24.i.i", %bb16.loopexit.1.i
  %dst.sroa.0.042.i.i = phi ptr [ %_16.i.i.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit24.i.i" ], [ %v.sroa.0.0.ph.lcssa193, %bb16.loopexit.1.i ]
  %iter.sroa.0.041.i.i = phi i64 [ %_39.i.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit24.i.i" ], [ 0, %bb16.loopexit.1.i ]
  %left.sroa.0.040.i.i = phi ptr [ %_14.i.i.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit24.i.i" ], [ %scratch.0, %bb16.loopexit.1.i ]
  %right.sroa.0.039.i.i = phi ptr [ %_12.i.i.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit24.i.i" ], [ %dst6.1.i, %bb16.loopexit.1.i ]
  %left_rev.sroa.0.038.i.i = phi ptr [ %20, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit24.i.i" ], [ %14, %bb16.loopexit.1.i ]
  %right_rev.sroa.0.037.i.i = phi ptr [ %19, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit24.i.i" ], [ %13, %bb16.loopexit.1.i ]
  %dst_rev.sroa.0.036.i.i = phi ptr [ %21, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit24.i.i" ], [ %12, %bb16.loopexit.1.i ]
  %_39.i.i = add nuw nsw i64 %iter.sroa.0.041.i.i, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !1614)
  call void @llvm.experimental.noalias.scope.decl(metadata !1617)
  call void @llvm.experimental.noalias.scope.decl(metadata !1619), !noalias !1622
  call void @llvm.experimental.noalias.scope.decl(metadata !1625), !noalias !1622
  %_6.i.i.i.i = load float, ptr %right.sroa.0.039.i.i, align 4, !alias.scope !1627, !noalias !1628, !noundef !18
  %_7.i.i.i.i = load float, ptr %left.sroa.0.040.i.i, align 4, !alias.scope !1629, !noalias !1630, !noundef !18
  %brmerge.not.i.i.i = fcmp uno float %_6.i.i.i.i, %_7.i.i.i.i
  br i1 %brmerge.not.i.i.i, label %bb6.i.i23.i.invoke.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i.i", !prof !21

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i.i": ; preds = %bb15.i.i
  %_8.i.mux.i.i.i = fcmp olt float %_6.i.i.i.i, %_7.i.i.i.i
  %..i17.i.i = select i1 %_8.i.mux.i.i.i, ptr %right.sroa.0.039.i.i, ptr %left.sroa.0.040.i.i
  %17 = load i32, ptr %..i17.i.i, align 4, !alias.scope !1631, !noalias !1632
  store i32 %17, ptr %dst.sroa.0.042.i.i, align 4, !alias.scope !1582, !noalias !1634
  call void @llvm.experimental.noalias.scope.decl(metadata !1635)
  call void @llvm.experimental.noalias.scope.decl(metadata !1638)
  call void @llvm.experimental.noalias.scope.decl(metadata !1640), !noalias !1643
  call void @llvm.experimental.noalias.scope.decl(metadata !1646), !noalias !1643
  %_6.i.i19.i.i = load float, ptr %right_rev.sroa.0.037.i.i, align 4, !alias.scope !1648, !noalias !1649, !noundef !18
  %_7.i.i20.i.i = load float, ptr %left_rev.sroa.0.038.i.i, align 4, !alias.scope !1650, !noalias !1651, !noundef !18
  %brmerge.not.i21.i.i = fcmp uno float %_6.i.i19.i.i, %_7.i.i20.i.i
  br i1 %brmerge.not.i21.i.i, label %bb6.i.i23.i.invoke.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit24.i.i", !prof !21

bb6.i.i23.i.invoke.i:                             ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i.i", %bb15.i.i
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_4a4e7fec44b84c1472b04d0c86f3e1b7) #18
          to label %bb6.i.i23.i.cont.i unwind label %cleanup2.i, !noalias !1652

bb6.i.i23.i.cont.i:                               ; preds = %bb6.i.i23.i.invoke.i
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit24.i.i": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i.i"
  %_16.i.i.i = getelementptr inbounds nuw i8, ptr %dst.sroa.0.042.i.i, i64 4
  %is_l.i18.i.i = xor i1 %_8.i.mux.i.i.i, true
  %count2.i.i.i = zext i1 %is_l.i18.i.i to i64
  %_14.i.i.i = getelementptr inbounds nuw float, ptr %left.sroa.0.040.i.i, i64 %count2.i.i.i
  %count.i.i.i = zext i1 %_8.i.mux.i.i.i to i64
  %_12.i.i.i = getelementptr inbounds nuw float, ptr %right.sroa.0.039.i.i, i64 %count.i.i.i
  %_8.i.mux.i22.i.i = fcmp olt float %_6.i.i19.i.i, %_7.i.i20.i.i
  %..i.i.i = select i1 %_8.i.mux.i22.i.i, ptr %left_rev.sroa.0.038.i.i, ptr %right_rev.sroa.0.037.i.i
  %is_l.i.i.i = xor i1 %_8.i.mux.i22.i.i, true
  %18 = load i32, ptr %..i.i.i, align 4, !alias.scope !1631, !noalias !1653
  store i32 %18, ptr %dst_rev.sroa.0.036.i.i, align 4, !alias.scope !1582, !noalias !1655
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
  %22 = load i32, ptr %left.sroa.0.0.right.sroa.0.0.i.i, align 4, !alias.scope !1631, !noalias !1589
  store i32 %22, ptr %_16.i.i.i, align 4, !alias.scope !1582, !noalias !1656
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
  br i1 %or.cond.i.i, label %bb13.i.i, label %bb22, !prof !357

bb13.i.i:                                         ; preds = %bb9.i.i
; invoke core::slice::sort::shared::smallsort::panic_on_ord_violation
  invoke void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #18
          to label %.noexc14.i unwind label %cleanup2.i, !noalias !1652

.noexc14.i:                                       ; preds = %bb13.i.i
  unreachable

cleanup2.i:                                       ; preds = %bb13.i.i, %bb6.i.i23.i.invoke.i
  %23 = landingpad { ptr, i32 }
          cleanup
  %24 = shl nuw nsw i64 %v.sroa.16.0.lcssa, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.sroa.0.0.ph.lcssa193, ptr nonnull align 4 %scratch.0, i64 %24, i1 false), !alias.scope !1657, !noalias !1658
  br label %bb31.i

bb31.i:                                           ; preds = %bb14.i.i, %cleanup2.i
  %.pn.i = phi { ptr, i32 } [ %23, %cleanup2.i ], [ %28, %bb14.i.i ]
  resume { ptr, i32 } %.pn.i

bb24.i:                                           ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17ha468f4743064a81cE.exit.i, %bb24.preheader.i
  %iter1.sroa.0.134.i = phi i64 [ %iter1.sroa.0.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17ha468f4743064a81cE.exit.i ], [ %iter1.sroa.0.132.i, %bb24.preheader.i ]
  %iter1.sroa.0.033.i = phi i64 [ %iter1.sroa.0.134.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17ha468f4743064a81cE.exit.i ], [ %presorted_len.sroa.0.0.i, %bb24.preheader.i ]
  %_55.i = getelementptr inbounds nuw float, ptr %v.sroa.0.0.ph.lcssa193, i64 %iter1.sroa.0.033.i
  %dst7.i = getelementptr inbounds nuw float, ptr %scratch.0, i64 %iter1.sroa.0.033.i
  %25 = load i32, ptr %_55.i, align 4, !alias.scope !1582, !noalias !1587
  store i32 %25, ptr %dst7.i, align 4, !alias.scope !1585, !noalias !1589
  %26 = getelementptr inbounds i8, ptr %dst7.i, i64 -4
  %_6.i.i.i16.cast.i = bitcast i32 %25 to float
  %_7.i.i.i17.i = load float, ptr %26, align 4, !alias.scope !1590, !noalias !1595, !noundef !18
  %brmerge.not.i.i18.i = fcmp uno float %_7.i.i.i17.i, %_6.i.i.i16.cast.i
  br i1 %brmerge.not.i.i18.i, label %bb6.i.i.i21.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i19.i", !prof !21

bb6.i.i.i21.i:                                    ; preds = %bb24.i, %bb24.1.i
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_4a4e7fec44b84c1472b04d0c86f3e1b7) #18, !noalias !1652
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i19.i": ; preds = %bb24.i
  %_8.i.mux.i.i20.i = fcmp ogt float %_7.i.i.i17.i, %_6.i.i.i16.cast.i
  br i1 %_8.i.mux.i.i20.i, label %bb4.i.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17ha468f4743064a81cE.exit.i

bb4.i.i:                                          ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i19.i", %bb7.i.i
  %.in.i.i = phi float [ %_7.i.i2.i.i, %bb7.i.i ], [ %_7.i.i.i17.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i19.i" ]
  %gap_guard.sroa.5.0.i.i = phi ptr [ %sift.sroa.0.0.i.i, %bb7.i.i ], [ %dst7.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i19.i" ]
  %sift.sroa.0.0.i.i = phi ptr [ %27, %bb7.i.i ], [ %26, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i19.i" ]
  store float %.in.i.i, ptr %gap_guard.sroa.5.0.i.i, align 4, !alias.scope !1585, !noalias !1589
  %_18.i.i = icmp eq ptr %sift.sroa.0.0.i.i, %scratch.0
  br i1 %_18.i.i, label %bb10.i.i, label %bb6.i.i

bb6.i.i:                                          ; preds = %bb4.i.i
  %27 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i, i64 -4
  %_7.i.i2.i.i = load float, ptr %27, align 4, !alias.scope !1598, !noalias !1603, !noundef !18
  %brmerge.not.i3.i.i = fcmp uno float %_7.i.i2.i.i, %_6.i.i.i16.cast.i
  br i1 %brmerge.not.i3.i.i, label %bb6.i.i5.i.i, label %bb7.i.i, !prof !21

bb6.i.i5.i.i:                                     ; preds = %bb6.i.i, %bb6.i.1.i
  %.lcssa38.i = phi i32 [ %9, %bb6.i.1.i ], [ %25, %bb6.i.i ]
  %sift.sroa.0.0.i.lcssa36.i = phi ptr [ %sift.sroa.0.0.i.1.i, %bb6.i.1.i ], [ %sift.sroa.0.0.i.i, %bb6.i.i ]
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_4a4e7fec44b84c1472b04d0c86f3e1b7) #18
          to label %.noexc.i.i unwind label %bb14.i.i, !noalias !1652

.noexc.i.i:                                       ; preds = %bb6.i.i5.i.i
  unreachable

bb7.i.i:                                          ; preds = %bb6.i.i
  %_8.i.mux.i4.i.i = fcmp ogt float %_7.i.i2.i.i, %_6.i.i.i16.cast.i
  br i1 %_8.i.mux.i4.i.i, label %bb4.i.i, label %bb10.i.i

bb10.i.i:                                         ; preds = %bb7.i.i, %bb4.i.i
  %sift.sroa.0.0.i.lcssa.i = phi ptr [ %sift.sroa.0.0.i.i, %bb7.i.i ], [ %scratch.0, %bb4.i.i ]
  store i32 %25, ptr %sift.sroa.0.0.i.lcssa.i, align 4, !alias.scope !1585, !noalias !1606
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17ha468f4743064a81cE.exit.i

bb14.i.i:                                         ; preds = %bb6.i.i5.i.i
  %28 = landingpad { ptr, i32 }
          cleanup
  store i32 %.lcssa38.i, ptr %sift.sroa.0.0.i.lcssa36.i, align 4, !alias.scope !1585, !noalias !1663
  br label %bb31.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17ha468f4743064a81cE.exit.i: ; preds = %bb10.i.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i19.i"
  %_80.i = icmp ult i64 %iter1.sroa.0.134.i, %len_div_211.i
  %_84.i = zext i1 %_80.i to i64
  %iter1.sroa.0.1.i = add nuw i64 %iter1.sroa.0.134.i, %_84.i
  br i1 %_80.i, label %bb24.i, label %bb16.loopexit.i

bb7:                                              ; preds = %bb5
  %29 = add i32 %limit.sroa.0.0195, -1
  call void @llvm.experimental.noalias.scope.decl(metadata !1668)
  %len_div_84.i = lshr i64 %v.sroa.16.0196, 3
  %b.idx.i = shl nuw nsw i64 %len_div_84.i, 4
  %b.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph204, i64 %b.idx.i
  %c.idx.i = mul nuw nsw i64 %len_div_84.i, 28
  %c.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph204, i64 %c.idx.i
  %_12.i = icmp samesign ult i64 %v.sroa.16.0196, 64
  br i1 %_12.i, label %bb3.i23, label %bb5.i

bb5.i:                                            ; preds = %bb7
; call core::slice::sort::shared::pivot::median3_rec
  %self.i = call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hff9a90d9cd780c94E(ptr noundef nonnull readonly align 4 %v.sroa.0.0.ph204, ptr noundef readonly %b.i, ptr noundef readonly %c.i, i64 noundef %len_div_84.i)
  br label %bb10

bb3.i23:                                          ; preds = %bb7
  call void @llvm.experimental.noalias.scope.decl(metadata !1671)
  call void @llvm.experimental.noalias.scope.decl(metadata !1674)
  call void @llvm.experimental.noalias.scope.decl(metadata !1676), !noalias !1679
  call void @llvm.experimental.noalias.scope.decl(metadata !1682), !noalias !1679
  %_6.i.i.i = load float, ptr %v.sroa.0.0.ph204, align 4, !alias.scope !1684, !noalias !1685, !noundef !18
  %_7.i.i.i = load float, ptr %b.i, align 4, !alias.scope !1687, !noalias !1688, !noundef !18
  %brmerge.not.i.i = fcmp uno float %_6.i.i.i, %_7.i.i.i
  br i1 %brmerge.not.i.i, label %bb6.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i", !prof !21

bb6.i.i.i:                                        ; preds = %bb3.i23
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_4a4e7fec44b84c1472b04d0c86f3e1b7) #18, !noalias !1689
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i": ; preds = %bb3.i23
  %_8.i.mux.i.i = fcmp olt float %_6.i.i.i, %_7.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1690)
  call void @llvm.experimental.noalias.scope.decl(metadata !1693)
  %_7.i.i6.i = load float, ptr %c.i, align 4, !alias.scope !1696, !noalias !1697, !noundef !18
  %brmerge.not.i7.i = fcmp uno float %_6.i.i.i, %_7.i.i6.i
  br i1 %brmerge.not.i7.i, label %bb6.i.i9.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit10.i", !prof !21

bb6.i.i9.i:                                       ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i"
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_4a4e7fec44b84c1472b04d0c86f3e1b7) #18, !noalias !1700
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit10.i": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i"
  %_8.i.mux.i8.i = fcmp olt float %_6.i.i.i, %_7.i.i6.i
  %30 = xor i1 %_8.i.mux.i.i, %_8.i.mux.i8.i
  br i1 %30, label %bb10, label %bb3.i.i

bb3.i.i:                                          ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit10.i"
  %brmerge.not.i13.i = fcmp uno float %_7.i.i.i, %_7.i.i6.i
  br i1 %brmerge.not.i13.i, label %bb6.i.i15.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit16.i", !prof !21

bb6.i.i15.i:                                      ; preds = %bb3.i.i
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_4a4e7fec44b84c1472b04d0c86f3e1b7) #18, !noalias !1701
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit16.i": ; preds = %bb3.i.i
  %_8.i.mux.i14.i = fcmp olt float %_7.i.i.i, %_7.i.i6.i
  %_12.i.i = xor i1 %_8.i.mux.i.i, %_8.i.mux.i14.i
  %c.b.i.i = select i1 %_12.i.i, ptr %c.i, ptr %b.i
  br label %bb10

bb6:                                              ; preds = %bb5
; call core::slice::sort::stable::drift::sort
  call fastcc void @_ZN4core5slice4sort6stable5drift4sort17h4e9143ba5e79da94E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph204, i64 noundef %v.sroa.16.0196, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i1 noundef zeroext true, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  br label %bb22

bb10:                                             ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit16.i", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit10.i", %bb5.i
  %_0.sroa.0.0.i.sink.i = phi ptr [ %self.i, %bb5.i ], [ %v.sroa.0.0.ph204, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit10.i" ], [ %c.b.i.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit16.i" ]
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
  call void @llvm.experimental.noalias.scope.decl(metadata !1708)
  call void @llvm.experimental.noalias.scope.decl(metadata !1711)
  %_6.i.i = load float, ptr %left_ancestor_pivot.sroa.0.0.ph201, align 4, !alias.scope !1714, !noalias !1715, !noundef !18
  %brmerge.not.i = fcmp uno float %_6.i.i, %value
  br i1 %brmerge.not.i, label %bb6.i.i24, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit", !prof !21

bb6.i.i24:                                        ; preds = %bb12
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_4a4e7fec44b84c1472b04d0c86f3e1b7) #18, !noalias !1718
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit": ; preds = %bb12
  %_8.i.mux.i = fcmp olt float %_6.i.i, %value
  br i1 %_8.i.mux.i, label %bb14, label %bb17

bb14:                                             ; preds = %bb10, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit"
  call void @llvm.experimental.noalias.scope.decl(metadata !1719)
  call void @llvm.experimental.noalias.scope.decl(metadata !1722)
  %_8.i25.not = icmp samesign ult i64 %scratch.1, %v.sroa.16.0196
  br i1 %_8.i25.not, label %bb31.i26, label %bb33.i, !prof !357

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
  %_7.i.i.i31 = load float, ptr %src, align 4, !alias.scope !1724, !noalias !1729, !noundef !18
  br label %bb6.i29

bb6.i29:                                          ; preds = %bb6.i29.preheader, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit56.i"
  %state.sroa.43.1114.i = phi ptr [ %40, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit56.i" ], [ %state.sroa.43.0.i, %bb6.i29.preheader ]
  %state.sroa.9.1113.i = phi ptr [ %_9.i63.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit56.i" ], [ %state.sroa.9.0.i, %bb6.i29.preheader ]
  %state.sroa.27.1112.i = phi i64 [ %41, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit56.i" ], [ %state.sroa.27.0.i, %bb6.i29.preheader ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1732)
  call void @llvm.experimental.noalias.scope.decl(metadata !1733)
  call void @llvm.experimental.noalias.scope.decl(metadata !1734)
  call void @llvm.experimental.noalias.scope.decl(metadata !1735)
  %_6.i.i.i30 = load float, ptr %state.sroa.9.1113.i, align 4, !alias.scope !1736, !noalias !1737, !noundef !18
  %brmerge.not.i.i32 = fcmp uno float %_6.i.i.i30, %_7.i.i.i31
  br i1 %brmerge.not.i.i32, label %bb6.i.i.i36, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i33", !prof !21

bb6.i.i.i36:                                      ; preds = %bb6.i29
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_4a4e7fec44b84c1472b04d0c86f3e1b7) #18, !noalias !1738
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i33": ; preds = %bb6.i29
  %_8.i.mux.i.i34 = fcmp olt float %_6.i.i.i30, %_7.i.i.i31
  %34 = getelementptr inbounds i8, ptr %state.sroa.43.1114.i, i64 -4
  %dst_base.sroa.0.0.i.i = select i1 %_8.i.mux.i.i34, ptr %scratch.0, ptr %34
  %dst.i.i = getelementptr inbounds nuw float, ptr %dst_base.sroa.0.0.i.i, i64 %state.sroa.27.1112.i
  store float %_6.i.i.i30, ptr %dst.i.i, align 4, !alias.scope !1722, !noalias !1739
  %_9.i.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.1113.i, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !1742)
  call void @llvm.experimental.noalias.scope.decl(metadata !1745)
  %_6.i.i25.i = load float, ptr %_9.i.i, align 4, !alias.scope !1748, !noalias !1749, !noundef !18
  %brmerge.not.i27.i = fcmp uno float %_6.i.i25.i, %_7.i.i.i31
  br i1 %brmerge.not.i27.i, label %bb6.i.i29.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit30.i", !prof !21

bb6.i.i29.i:                                      ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i33"
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_4a4e7fec44b84c1472b04d0c86f3e1b7) #18, !noalias !1752
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit30.i": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i33"
  %_8.i.i = zext i1 %_8.i.mux.i.i34 to i64
  %35 = add i64 %state.sroa.27.1112.i, %_8.i.i
  %_8.i.mux.i28.i = fcmp olt float %_6.i.i25.i, %_7.i.i.i31
  %36 = getelementptr inbounds i8, ptr %state.sroa.43.1114.i, i64 -8
  %dst_base.sroa.0.0.i32.i = select i1 %_8.i.mux.i28.i, ptr %scratch.0, ptr %36
  %dst.i34.i = getelementptr inbounds nuw float, ptr %dst_base.sroa.0.0.i32.i, i64 %35
  store float %_6.i.i25.i, ptr %dst.i34.i, align 4, !alias.scope !1722, !noalias !1753
  %_9.i37.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.1113.i, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1756)
  call void @llvm.experimental.noalias.scope.decl(metadata !1759)
  %_6.i.i38.i = load float, ptr %_9.i37.i, align 4, !alias.scope !1762, !noalias !1763, !noundef !18
  %brmerge.not.i40.i = fcmp uno float %_6.i.i38.i, %_7.i.i.i31
  br i1 %brmerge.not.i40.i, label %bb6.i.i42.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit43.i", !prof !21

bb6.i.i42.i:                                      ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit30.i"
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_4a4e7fec44b84c1472b04d0c86f3e1b7) #18, !noalias !1766
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit43.i": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit30.i"
  %_8.i36.i = zext i1 %_8.i.mux.i28.i to i64
  %37 = add i64 %35, %_8.i36.i
  %_8.i.mux.i41.i = fcmp olt float %_6.i.i38.i, %_7.i.i.i31
  %38 = getelementptr inbounds i8, ptr %state.sroa.43.1114.i, i64 -12
  %dst_base.sroa.0.0.i45.i = select i1 %_8.i.mux.i41.i, ptr %scratch.0, ptr %38
  %dst.i47.i = getelementptr inbounds nuw float, ptr %dst_base.sroa.0.0.i45.i, i64 %37
  store float %_6.i.i38.i, ptr %dst.i47.i, align 4, !alias.scope !1722, !noalias !1767
  %_9.i50.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.1113.i, i64 12
  call void @llvm.experimental.noalias.scope.decl(metadata !1770)
  call void @llvm.experimental.noalias.scope.decl(metadata !1773)
  %_6.i.i51.i = load float, ptr %_9.i50.i, align 4, !alias.scope !1776, !noalias !1777, !noundef !18
  %brmerge.not.i53.i = fcmp uno float %_6.i.i51.i, %_7.i.i.i31
  br i1 %brmerge.not.i53.i, label %bb6.i.i55.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit56.i", !prof !21

bb6.i.i55.i:                                      ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit43.i"
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_4a4e7fec44b84c1472b04d0c86f3e1b7) #18, !noalias !1780
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit56.i": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit43.i"
  %_8.i49.i = zext i1 %_8.i.mux.i41.i to i64
  %39 = add i64 %37, %_8.i49.i
  %_8.i.mux.i54.i = fcmp olt float %_6.i.i51.i, %_7.i.i.i31
  %40 = getelementptr inbounds i8, ptr %state.sroa.43.1114.i, i64 -16
  %dst_base.sroa.0.0.i58.i = select i1 %_8.i.mux.i54.i, ptr %scratch.0, ptr %40
  %dst.i60.i = getelementptr inbounds nuw float, ptr %dst_base.sroa.0.0.i58.i, i64 %39
  store float %_6.i.i51.i, ptr %dst.i60.i, align 4, !alias.scope !1722, !noalias !1781
  %_8.i62.i = zext i1 %_8.i.mux.i54.i to i64
  %41 = add i64 %39, %_8.i62.i
  %_9.i63.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.1113.i, i64 16
  %_19.i35 = icmp ult ptr %_9.i63.i, %unroll_end.i
  br i1 %_19.i35, label %bb6.i29, label %bb16.i

bb16.i:                                           ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit56.i", %bb3.i27
  %state.sroa.27.1.lcssa.i = phi i64 [ %state.sroa.27.0.i, %bb3.i27 ], [ %41, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit56.i" ]
  %state.sroa.9.1.lcssa.i = phi ptr [ %state.sroa.9.0.i, %bb3.i27 ], [ %_9.i63.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit56.i" ]
  %state.sroa.43.1.lcssa.i = phi ptr [ %state.sroa.43.0.i, %bb3.i27 ], [ %40, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit56.i" ]
  %loop_end.i = getelementptr inbounds nuw float, ptr %v.sroa.0.0.ph204, i64 %pivot_pos.sroa.0.0.i
  %_47117.i = icmp ult ptr %state.sroa.9.1.lcssa.i, %loop_end.i
  br i1 %_47117.i, label %bb18.i.preheader, label %bb21.i

bb18.i.preheader:                                 ; preds = %bb16.i
  %_7.i.i65.i = load float, ptr %src, align 4, !alias.scope !1784, !noalias !1789, !noundef !18
  br label %bb18.i

bb21.i:                                           ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit69.i", %bb16.i
  %state.sroa.27.2.lcssa.i = phi i64 [ %state.sroa.27.1.lcssa.i, %bb16.i ], [ %43, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit69.i" ]
  %state.sroa.9.2.lcssa.i = phi ptr [ %state.sroa.9.1.lcssa.i, %bb16.i ], [ %_9.i76.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit69.i" ]
  %state.sroa.43.2.lcssa.i = phi ptr [ %state.sroa.43.1.lcssa.i, %bb16.i ], [ %42, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit69.i" ]
  %_55.i28 = icmp eq i64 %pivot_pos.sroa.0.0.i, %v.sroa.16.0196
  br i1 %_55.i28, label %bb22.i, label %bb23.i

bb18.i:                                           ; preds = %bb18.i.preheader, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit69.i"
  %state.sroa.43.2120.i = phi ptr [ %42, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit69.i" ], [ %state.sroa.43.1.lcssa.i, %bb18.i.preheader ]
  %state.sroa.9.2119.i = phi ptr [ %_9.i76.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit69.i" ], [ %state.sroa.9.1.lcssa.i, %bb18.i.preheader ]
  %state.sroa.27.2118.i = phi i64 [ %43, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit69.i" ], [ %state.sroa.27.1.lcssa.i, %bb18.i.preheader ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1792)
  call void @llvm.experimental.noalias.scope.decl(metadata !1793)
  call void @llvm.experimental.noalias.scope.decl(metadata !1794)
  call void @llvm.experimental.noalias.scope.decl(metadata !1795)
  %_6.i.i64.i = load float, ptr %state.sroa.9.2119.i, align 4, !alias.scope !1796, !noalias !1797, !noundef !18
  %brmerge.not.i66.i = fcmp uno float %_6.i.i64.i, %_7.i.i65.i
  br i1 %brmerge.not.i66.i, label %bb6.i.i68.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit69.i", !prof !21

bb6.i.i68.i:                                      ; preds = %bb18.i
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_4a4e7fec44b84c1472b04d0c86f3e1b7) #18, !noalias !1798
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit69.i": ; preds = %bb18.i
  %_8.i.mux.i67.i = fcmp olt float %_6.i.i64.i, %_7.i.i65.i
  %42 = getelementptr inbounds i8, ptr %state.sroa.43.2120.i, i64 -4
  %dst_base.sroa.0.0.i71.i = select i1 %_8.i.mux.i67.i, ptr %scratch.0, ptr %42
  %dst.i73.i = getelementptr inbounds nuw float, ptr %dst_base.sroa.0.0.i71.i, i64 %state.sroa.27.2118.i
  store float %_6.i.i64.i, ptr %dst.i73.i, align 4, !alias.scope !1722, !noalias !1799
  %_8.i75.i = zext i1 %_8.i.mux.i67.i to i64
  %43 = add i64 %state.sroa.27.2118.i, %_8.i75.i
  %_9.i76.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.2119.i, i64 4
  %_47.i = icmp ult ptr %_9.i76.i, %loop_end.i
  br i1 %_47.i, label %bb18.i, label %bb21.i

bb23.i:                                           ; preds = %bb21.i
  %44 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa.i, i64 -4
  %dst.i80.i = getelementptr inbounds nuw float, ptr %44, i64 %state.sroa.27.2.lcssa.i
  %45 = load i32, ptr %state.sroa.9.2.lcssa.i, align 4, !alias.scope !1719, !noalias !1802
  store i32 %45, ptr %dst.i80.i, align 4, !alias.scope !1722, !noalias !1805
  %_9.i82.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.2.lcssa.i, i64 4
  br label %bb3.i27

bb22.i:                                           ; preds = %bb21.i
  %46 = shl i64 %state.sroa.27.2.lcssa.i, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.sroa.0.0.ph204, ptr nonnull align 4 %scratch.0, i64 %46, i1 false), !alias.scope !1806
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
  %wide.load512 = load <4 x i32>, ptr %51, align 4, !alias.scope !1722, !noalias !1719
  %reverse513 = shufflevector <4 x i32> %wide.load512, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %wide.load514 = load <4 x i32>, ptr %52, align 4, !alias.scope !1722, !noalias !1719
  %reverse515 = shufflevector <4 x i32> %wide.load514, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %53 = getelementptr i8, ptr %48, i64 16
  store <4 x i32> %reverse513, ptr %48, align 4, !alias.scope !1719, !noalias !1722
  store <4 x i32> %reverse515, ptr %53, align 4, !alias.scope !1719, !noalias !1722
  %index.next516 = add nuw i64 %index511, 8
  %54 = icmp eq i64 %index.next516, %n.vec509
  br i1 %54, label %middle.block517, label %vector.body510, !llvm.loop !1807

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
  %59 = load i32, ptr %58, align 4, !alias.scope !1722, !noalias !1719
  store i32 %59, ptr %56, align 4, !alias.scope !1719, !noalias !1722
  %exitcond.not.i = icmp eq i64 %55, %_63.i
  br i1 %exitcond.not.i, label %bb16, label %bb42.i, !llvm.loop !1808

bb16:                                             ; preds = %bb42.i, %middle.block517, %bb22.i
  %60 = icmp eq i64 %state.sroa.27.2.lcssa.i, 0
  br i1 %60, label %bb17, label %bb19

bb19:                                             ; preds = %bb16
  %_6.not.i = icmp ugt i64 %state.sroa.27.2.lcssa.i, %v.sroa.16.0196
  br i1 %_6.not.i, label %bb3.i37, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hfcf5686026bf385fE.exit", !prof !1465

bb3.i37:                                          ; preds = %bb19
; call core::panicking::panic_fmt
  call void @_ZN4core9panicking9panic_fmt17ha4414e4328fe24a0E(ptr noundef nonnull @alloc_d1084648e479974e70c9329824bf76f9, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_58d434a1e795f965ef82c8e9c5db822a) #18, !noalias !1809
  unreachable

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hfcf5686026bf385fE.exit": ; preds = %bb19
  %61 = getelementptr inbounds nuw float, ptr %v.sroa.0.0.ph204, i64 %state.sroa.27.2.lcssa.i
; call core::slice::sort::stable::quicksort::quicksort
  call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h39c332b52467a176E(ptr noalias noundef nonnull align 4 %61, i64 noundef %_63.i, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef %29, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) %pivot_copy, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_8 = icmp ult i64 %state.sroa.27.2.lcssa.i, 33
  br i1 %_8, label %bb3, label %bb5

bb17:                                             ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit", %bb16
  call void @llvm.experimental.noalias.scope.decl(metadata !1813)
  call void @llvm.experimental.noalias.scope.decl(metadata !1816)
  %_8.i38.not = icmp samesign ult i64 %scratch.1, %v.sroa.16.0196
  br i1 %_8.i38.not, label %bb31.i41, label %bb33.i42, !prof !357

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
  %_6.i.i.i.i86 = load float, ptr %src, align 4, !alias.scope !1818, !noalias !1825, !noundef !18
  br label %bb6.i82

bb6.i82:                                          ; preds = %bb6.i82.preheader, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h24759b5143996a24E.exit56.i"
  %state.sroa.43.1114.i83 = phi ptr [ %69, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h24759b5143996a24E.exit56.i" ], [ %state.sroa.43.0.i48, %bb6.i82.preheader ]
  %state.sroa.9.1113.i84 = phi ptr [ %_9.i63.i105, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h24759b5143996a24E.exit56.i" ], [ %state.sroa.9.0.i47, %bb6.i82.preheader ]
  %state.sroa.27.1112.i85 = phi i64 [ %70, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h24759b5143996a24E.exit56.i" ], [ %state.sroa.27.0.i46, %bb6.i82.preheader ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1829)
  call void @llvm.experimental.noalias.scope.decl(metadata !1830)
  call void @llvm.experimental.noalias.scope.decl(metadata !1831)
  call void @llvm.experimental.noalias.scope.decl(metadata !1832)
  call void @llvm.experimental.noalias.scope.decl(metadata !1833)
  call void @llvm.experimental.noalias.scope.decl(metadata !1834)
  %_7.i.i.i.i87 = load float, ptr %state.sroa.9.1113.i84, align 4, !alias.scope !1835, !noalias !1836, !noundef !18
  %brmerge.not.i.i.i88 = fcmp uno float %_6.i.i.i.i86, %_7.i.i.i.i87
  br i1 %brmerge.not.i.i.i88, label %bb6.i.i.i.i, label %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h24759b5143996a24E.exit.i", !prof !21

bb6.i.i.i.i:                                      ; preds = %bb6.i82
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_4a4e7fec44b84c1472b04d0c86f3e1b7) #18, !noalias !1837
  unreachable

"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h24759b5143996a24E.exit.i": ; preds = %bb6.i82
  %_8.i.mux.i.i.i89 = fcmp uge float %_6.i.i.i.i86, %_7.i.i.i.i87
  %63 = getelementptr inbounds i8, ptr %state.sroa.43.1114.i83, i64 -4
  %dst_base.sroa.0.0.i.i90 = select i1 %_8.i.mux.i.i.i89, ptr %scratch.0, ptr %63
  %dst.i.i91 = getelementptr inbounds nuw float, ptr %dst_base.sroa.0.0.i.i90, i64 %state.sroa.27.1112.i85
  store float %_7.i.i.i.i87, ptr %dst.i.i91, align 4, !alias.scope !1816, !noalias !1838
  %_9.i.i92 = getelementptr inbounds nuw i8, ptr %state.sroa.9.1113.i84, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !1841)
  call void @llvm.experimental.noalias.scope.decl(metadata !1844)
  call void @llvm.experimental.noalias.scope.decl(metadata !1847)
  %_7.i.i.i26.i = load float, ptr %_9.i.i92, align 4, !alias.scope !1850, !noalias !1851, !noundef !18
  %brmerge.not.i.i27.i = fcmp uno float %_6.i.i.i.i86, %_7.i.i.i26.i
  br i1 %brmerge.not.i.i27.i, label %bb6.i.i.i29.i, label %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h24759b5143996a24E.exit30.i", !prof !21

bb6.i.i.i29.i:                                    ; preds = %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h24759b5143996a24E.exit.i"
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_4a4e7fec44b84c1472b04d0c86f3e1b7) #18, !noalias !1855
  unreachable

"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h24759b5143996a24E.exit30.i": ; preds = %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h24759b5143996a24E.exit.i"
  %_8.i.i93 = zext i1 %_8.i.mux.i.i.i89 to i64
  %64 = add i64 %state.sroa.27.1112.i85, %_8.i.i93
  %_8.i.mux.i.i28.i = fcmp uge float %_6.i.i.i.i86, %_7.i.i.i26.i
  %65 = getelementptr inbounds i8, ptr %state.sroa.43.1114.i83, i64 -8
  %dst_base.sroa.0.0.i32.i94 = select i1 %_8.i.mux.i.i28.i, ptr %scratch.0, ptr %65
  %dst.i34.i95 = getelementptr inbounds nuw float, ptr %dst_base.sroa.0.0.i32.i94, i64 %64
  store float %_7.i.i.i26.i, ptr %dst.i34.i95, align 4, !alias.scope !1816, !noalias !1856
  %_9.i37.i96 = getelementptr inbounds nuw i8, ptr %state.sroa.9.1113.i84, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1859)
  call void @llvm.experimental.noalias.scope.decl(metadata !1862)
  call void @llvm.experimental.noalias.scope.decl(metadata !1865)
  %_7.i.i.i39.i = load float, ptr %_9.i37.i96, align 4, !alias.scope !1868, !noalias !1869, !noundef !18
  %brmerge.not.i.i40.i = fcmp uno float %_6.i.i.i.i86, %_7.i.i.i39.i
  br i1 %brmerge.not.i.i40.i, label %bb6.i.i.i42.i, label %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h24759b5143996a24E.exit43.i", !prof !21

bb6.i.i.i42.i:                                    ; preds = %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h24759b5143996a24E.exit30.i"
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_4a4e7fec44b84c1472b04d0c86f3e1b7) #18, !noalias !1873
  unreachable

"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h24759b5143996a24E.exit43.i": ; preds = %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h24759b5143996a24E.exit30.i"
  %_8.i36.i97 = zext i1 %_8.i.mux.i.i28.i to i64
  %66 = add i64 %64, %_8.i36.i97
  %_8.i.mux.i.i41.i = fcmp uge float %_6.i.i.i.i86, %_7.i.i.i39.i
  %67 = getelementptr inbounds i8, ptr %state.sroa.43.1114.i83, i64 -12
  %dst_base.sroa.0.0.i45.i98 = select i1 %_8.i.mux.i.i41.i, ptr %scratch.0, ptr %67
  %dst.i47.i99 = getelementptr inbounds nuw float, ptr %dst_base.sroa.0.0.i45.i98, i64 %66
  store float %_7.i.i.i39.i, ptr %dst.i47.i99, align 4, !alias.scope !1816, !noalias !1874
  %_9.i50.i100 = getelementptr inbounds nuw i8, ptr %state.sroa.9.1113.i84, i64 12
  call void @llvm.experimental.noalias.scope.decl(metadata !1877)
  call void @llvm.experimental.noalias.scope.decl(metadata !1880)
  call void @llvm.experimental.noalias.scope.decl(metadata !1883)
  %_7.i.i.i52.i = load float, ptr %_9.i50.i100, align 4, !alias.scope !1886, !noalias !1887, !noundef !18
  %brmerge.not.i.i53.i = fcmp uno float %_6.i.i.i.i86, %_7.i.i.i52.i
  br i1 %brmerge.not.i.i53.i, label %bb6.i.i.i55.i, label %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h24759b5143996a24E.exit56.i", !prof !21

bb6.i.i.i55.i:                                    ; preds = %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h24759b5143996a24E.exit43.i"
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_4a4e7fec44b84c1472b04d0c86f3e1b7) #18, !noalias !1891
  unreachable

"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h24759b5143996a24E.exit56.i": ; preds = %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h24759b5143996a24E.exit43.i"
  %_8.i49.i101 = zext i1 %_8.i.mux.i.i41.i to i64
  %68 = add i64 %66, %_8.i49.i101
  %_8.i.mux.i.i54.i = fcmp uge float %_6.i.i.i.i86, %_7.i.i.i52.i
  %69 = getelementptr inbounds i8, ptr %state.sroa.43.1114.i83, i64 -16
  %dst_base.sroa.0.0.i58.i102 = select i1 %_8.i.mux.i.i54.i, ptr %scratch.0, ptr %69
  %dst.i60.i103 = getelementptr inbounds nuw float, ptr %dst_base.sroa.0.0.i58.i102, i64 %68
  store float %_7.i.i.i52.i, ptr %dst.i60.i103, align 4, !alias.scope !1816, !noalias !1892
  %_8.i62.i104 = zext i1 %_8.i.mux.i.i54.i to i64
  %70 = add i64 %68, %_8.i62.i104
  %_9.i63.i105 = getelementptr inbounds nuw i8, ptr %state.sroa.9.1113.i84, i64 16
  %_19.i106 = icmp ult ptr %_9.i63.i105, %unroll_end.i50
  br i1 %_19.i106, label %bb6.i82, label %bb16.i52

bb16.i52:                                         ; preds = %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h24759b5143996a24E.exit56.i", %bb3.i45
  %state.sroa.27.1.lcssa.i53 = phi i64 [ %state.sroa.27.0.i46, %bb3.i45 ], [ %70, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h24759b5143996a24E.exit56.i" ]
  %state.sroa.9.1.lcssa.i54 = phi ptr [ %state.sroa.9.0.i47, %bb3.i45 ], [ %_9.i63.i105, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h24759b5143996a24E.exit56.i" ]
  %state.sroa.43.1.lcssa.i55 = phi ptr [ %state.sroa.43.0.i48, %bb3.i45 ], [ %69, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h24759b5143996a24E.exit56.i" ]
  %loop_end.i56 = getelementptr inbounds nuw float, ptr %v.sroa.0.0.ph204, i64 %pivot_pos.sroa.0.0.i49
  %_47117.i57 = icmp ult ptr %state.sroa.9.1.lcssa.i54, %loop_end.i56
  br i1 %_47117.i57, label %bb18.i73.preheader, label %bb21.i58

bb18.i73.preheader:                               ; preds = %bb16.i52
  %_6.i.i.i64.i = load float, ptr %src, align 4, !alias.scope !1895, !noalias !1902, !noundef !18
  br label %bb18.i73

bb21.i58:                                         ; preds = %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h24759b5143996a24E.exit69.i", %bb16.i52
  %state.sroa.27.2.lcssa.i59 = phi i64 [ %state.sroa.27.1.lcssa.i53, %bb16.i52 ], [ %72, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h24759b5143996a24E.exit69.i" ]
  %state.sroa.9.2.lcssa.i60 = phi ptr [ %state.sroa.9.1.lcssa.i54, %bb16.i52 ], [ %_9.i76.i80, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h24759b5143996a24E.exit69.i" ]
  %state.sroa.43.2.lcssa.i61 = phi ptr [ %state.sroa.43.1.lcssa.i55, %bb16.i52 ], [ %71, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h24759b5143996a24E.exit69.i" ]
  %_55.i62 = icmp eq i64 %pivot_pos.sroa.0.0.i49, %v.sroa.16.0196
  br i1 %_55.i62, label %bb22.i66, label %bb23.i63

bb18.i73:                                         ; preds = %bb18.i73.preheader, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h24759b5143996a24E.exit69.i"
  %state.sroa.43.2120.i74 = phi ptr [ %71, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h24759b5143996a24E.exit69.i" ], [ %state.sroa.43.1.lcssa.i55, %bb18.i73.preheader ]
  %state.sroa.9.2119.i75 = phi ptr [ %_9.i76.i80, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h24759b5143996a24E.exit69.i" ], [ %state.sroa.9.1.lcssa.i54, %bb18.i73.preheader ]
  %state.sroa.27.2118.i76 = phi i64 [ %72, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h24759b5143996a24E.exit69.i" ], [ %state.sroa.27.1.lcssa.i53, %bb18.i73.preheader ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1906)
  call void @llvm.experimental.noalias.scope.decl(metadata !1907)
  call void @llvm.experimental.noalias.scope.decl(metadata !1908)
  call void @llvm.experimental.noalias.scope.decl(metadata !1909)
  call void @llvm.experimental.noalias.scope.decl(metadata !1910)
  call void @llvm.experimental.noalias.scope.decl(metadata !1911)
  %_7.i.i.i65.i = load float, ptr %state.sroa.9.2119.i75, align 4, !alias.scope !1912, !noalias !1913, !noundef !18
  %brmerge.not.i.i66.i = fcmp uno float %_6.i.i.i64.i, %_7.i.i.i65.i
  br i1 %brmerge.not.i.i66.i, label %bb6.i.i.i68.i, label %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h24759b5143996a24E.exit69.i", !prof !21

bb6.i.i.i68.i:                                    ; preds = %bb18.i73
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_4a4e7fec44b84c1472b04d0c86f3e1b7) #18, !noalias !1914
  unreachable

"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h24759b5143996a24E.exit69.i": ; preds = %bb18.i73
  %_8.i.mux.i.i67.i = fcmp uge float %_6.i.i.i64.i, %_7.i.i.i65.i
  %71 = getelementptr inbounds i8, ptr %state.sroa.43.2120.i74, i64 -4
  %dst_base.sroa.0.0.i71.i77 = select i1 %_8.i.mux.i.i67.i, ptr %scratch.0, ptr %71
  %dst.i73.i78 = getelementptr inbounds nuw float, ptr %dst_base.sroa.0.0.i71.i77, i64 %state.sroa.27.2118.i76
  store float %_7.i.i.i65.i, ptr %dst.i73.i78, align 4, !alias.scope !1816, !noalias !1915
  %_8.i75.i79 = zext i1 %_8.i.mux.i.i67.i to i64
  %72 = add i64 %state.sroa.27.2118.i76, %_8.i75.i79
  %_9.i76.i80 = getelementptr inbounds nuw i8, ptr %state.sroa.9.2119.i75, i64 4
  %_47.i81 = icmp ult ptr %_9.i76.i80, %loop_end.i56
  br i1 %_47.i81, label %bb18.i73, label %bb21.i58

bb23.i63:                                         ; preds = %bb21.i58
  %73 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa.i61, i64 -4
  %dst.i80.i64 = getelementptr inbounds nuw float, ptr %scratch.0, i64 %state.sroa.27.2.lcssa.i59
  %74 = load i32, ptr %state.sroa.9.2.lcssa.i60, align 4, !alias.scope !1813, !noalias !1918
  store i32 %74, ptr %dst.i80.i64, align 4, !alias.scope !1816, !noalias !1921
  %75 = add i64 %state.sroa.27.2.lcssa.i59, 1
  %_9.i82.i65 = getelementptr inbounds nuw i8, ptr %state.sroa.9.2.lcssa.i60, i64 4
  br label %bb3.i45

bb22.i66:                                         ; preds = %bb21.i58
  %76 = shl i64 %state.sroa.27.2.lcssa.i59, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.sroa.0.0.ph204, ptr nonnull align 4 %scratch.0, i64 %76, i1 false), !alias.scope !1922
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
  %wide.load = load <4 x i32>, ptr %81, align 4, !alias.scope !1816, !noalias !1813
  %reverse = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %wide.load503 = load <4 x i32>, ptr %82, align 4, !alias.scope !1816, !noalias !1813
  %reverse504 = shufflevector <4 x i32> %wide.load503, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %83 = getelementptr i8, ptr %78, i64 16
  store <4 x i32> %reverse, ptr %78, align 4, !alias.scope !1813, !noalias !1816
  store <4 x i32> %reverse504, ptr %83, align 4, !alias.scope !1813, !noalias !1816
  %index.next = add nuw i64 %index, 8
  %84 = icmp eq i64 %index.next, %n.vec
  br i1 %84, label %middle.block, label %vector.body, !llvm.loop !1923

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %_63.i67, %n.vec
  br i1 %cmp.n, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h67bec7643deb17b9E.exit, label %bb42.i70.preheader

bb42.i70.preheader:                               ; preds = %bb42.lr.ph.i69, %middle.block
  %iter.sroa.0.0125.i71.ph = phi i64 [ 0, %bb42.lr.ph.i69 ], [ %n.vec, %middle.block ]
  br label %bb42.i70

bb42.i70:                                         ; preds = %bb42.i70.preheader, %bb42.i70
  %iter.sroa.0.0125.i71 = phi i64 [ %85, %bb42.i70 ], [ %iter.sroa.0.0125.i71.ph, %bb42.i70.preheader ]
  %85 = add nuw i64 %iter.sroa.0.0125.i71, 1
  %86 = getelementptr float, ptr %77, i64 %iter.sroa.0.0125.i71
  %87 = xor i64 %iter.sroa.0.0125.i71, -1
  %88 = getelementptr float, ptr %_86.i44, i64 %87
  %89 = load i32, ptr %88, align 4, !alias.scope !1816, !noalias !1813
  store i32 %89, ptr %86, align 4, !alias.scope !1813, !noalias !1816
  %exitcond.not.i72 = icmp eq i64 %85, %_63.i67
  br i1 %exitcond.not.i72, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h67bec7643deb17b9E.exit, label %bb42.i70, !llvm.loop !1924

_ZN4core5slice4sort6stable9quicksort16stable_partition17h67bec7643deb17b9E.exit: ; preds = %bb42.i70, %middle.block
  %_47 = icmp ugt i64 %state.sroa.27.2.lcssa.i59, %v.sroa.16.0196
  br i1 %_47, label %bb27, label %bb28, !prof !1465

bb3.thread:                                       ; preds = %bb22.i66
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  br label %bb22

bb28:                                             ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h67bec7643deb17b9E.exit
  %_54 = getelementptr inbounds nuw float, ptr %v.sroa.0.0.ph204, i64 %state.sroa.27.2.lcssa.i59
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_8194 = icmp ult i64 %_63.i67, 33
  br i1 %_8194, label %bb3, label %bb5.lr.ph

bb27:                                             ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h67bec7643deb17b9E.exit
; call core::slice::index::slice_index_fail
  call void @_ZN4core5slice5index16slice_index_fail17h62807bcaa490c9c1E(i64 noundef %state.sroa.27.2.lcssa.i59, i64 noundef %v.sroa.16.0196, i64 noundef %v.sroa.16.0196, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_0766b232215672ee1bd2195fdb153938) #18
  unreachable

bb22:                                             ; preds = %bb3.thread, %bb9.i.i, %bb3, %bb6
  ret void
}

; core::slice::sort::stable::quicksort::quicksort
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable9quicksort9quicksort17h960dc2f6c4bef9a8E(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %2, ptr noalias noundef readonly align 4 captures(address) dereferenceable_or_null(4) %3, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #2 personality ptr @rust_eh_personality {
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

bb5:                                              ; preds = %bb5.lr.ph, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hc12d825464135f3eE.exit"
  %v.sroa.16.0132 = phi i64 [ %v.sroa.16.0.ph139, %bb5.lr.ph ], [ %state.sroa.27.2.lcssa.i, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hc12d825464135f3eE.exit" ]
  %limit.sroa.0.0131 = phi i32 [ %limit.sroa.0.0.ph138, %bb5.lr.ph ], [ %48, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hc12d825464135f3eE.exit" ]
  %_11 = icmp eq i32 %limit.sroa.0.0131, 0
  br i1 %_11, label %bb6, label %bb7

bb3:                                              ; preds = %bb28, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hc12d825464135f3eE.exit", %start
  %v.sroa.0.0.ph.lcssa129 = phi ptr [ %0, %start ], [ %v.sroa.0.0.ph140, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hc12d825464135f3eE.exit" ], [ %_54, %bb28 ]
  %v.sroa.16.0.lcssa = phi i64 [ %1, %start ], [ %state.sroa.27.2.lcssa.i, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hc12d825464135f3eE.exit" ], [ %_63.i63, %bb28 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1925)
  call void @llvm.experimental.noalias.scope.decl(metadata !1928)
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
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17had7ded36d12690dcE(ptr noundef nonnull align 4 %v.sroa.0.0.ph.lcssa129, ptr noundef nonnull align 4 %scratch.0, ptr noundef %_16.i)
  %_18.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %len_div_211.i
  %_19.i = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211.i
  %_20.i = getelementptr inbounds nuw i8, ptr %_16.i, i64 32
; call core::slice::sort::shared::smallsort::sort8_stable
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17had7ded36d12690dcE(ptr noundef %_18.i, ptr noundef %_19.i, ptr noundef %_20.i)
  br label %bb15.i

bb10.i:                                           ; preds = %bb9.i
  %_7.i.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph.lcssa129, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !1930)
  call void @llvm.experimental.noalias.scope.decl(metadata !1933)
  call void @llvm.experimental.noalias.scope.decl(metadata !1935)
  call void @llvm.experimental.noalias.scope.decl(metadata !1938)
  call void @llvm.experimental.noalias.scope.decl(metadata !1940)
  call void @llvm.experimental.noalias.scope.decl(metadata !1943)
  %_3.i.i.i.i.i = load i32, ptr %_7.i.i, align 4, !alias.scope !1945, !noalias !1946, !noundef !18
  %_4.i.i.i.i.i = load i32, ptr %v.sroa.0.0.ph.lcssa129, align 4, !alias.scope !1948, !noalias !1949, !noundef !18
  %_0.i.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %_12.i.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph.lcssa129, i64 12
  %_14.i.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph.lcssa129, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1950)
  call void @llvm.experimental.noalias.scope.decl(metadata !1953)
  call void @llvm.experimental.noalias.scope.decl(metadata !1955)
  call void @llvm.experimental.noalias.scope.decl(metadata !1958)
  call void @llvm.experimental.noalias.scope.decl(metadata !1960)
  call void @llvm.experimental.noalias.scope.decl(metadata !1963)
  %_3.i.i.i7.i.i = load i32, ptr %_12.i.i, align 4, !alias.scope !1965, !noalias !1966, !noundef !18
  %_4.i.i.i8.i.i = load i32, ptr %_14.i.i, align 4, !alias.scope !1967, !noalias !1968, !noundef !18
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
  call void @llvm.experimental.noalias.scope.decl(metadata !1969)
  call void @llvm.experimental.noalias.scope.decl(metadata !1972)
  call void @llvm.experimental.noalias.scope.decl(metadata !1974)
  call void @llvm.experimental.noalias.scope.decl(metadata !1977)
  call void @llvm.experimental.noalias.scope.decl(metadata !1979)
  call void @llvm.experimental.noalias.scope.decl(metadata !1982)
  %_3.i.i.i10.i.i = load i32, ptr %c.i.i, align 4, !alias.scope !1984, !noalias !1985, !noundef !18
  %_4.i.i.i11.i.i = load i32, ptr %a.i.i, align 4, !alias.scope !1986, !noalias !1987, !noundef !18
  %_0.i12.i.i = icmp slt i32 %_3.i.i.i10.i.i, %_4.i.i.i11.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1988)
  call void @llvm.experimental.noalias.scope.decl(metadata !1991)
  call void @llvm.experimental.noalias.scope.decl(metadata !1993)
  call void @llvm.experimental.noalias.scope.decl(metadata !1996)
  call void @llvm.experimental.noalias.scope.decl(metadata !1998)
  call void @llvm.experimental.noalias.scope.decl(metadata !2001)
  %_3.i.i.i13.i.i = load i32, ptr %d.i.i, align 4, !alias.scope !2003, !noalias !2004, !noundef !18
  %_4.i.i.i14.i.i = load i32, ptr %b.i.i, align 4, !alias.scope !2005, !noalias !2006, !noundef !18
  %_0.i15.i.i = icmp slt i32 %_3.i.i.i13.i.i, %_4.i.i.i14.i.i
  %5 = call i32 @llvm.smin.i32(i32 %_3.i.i.i10.i.i, i32 %_4.i.i.i11.i.i)
  %6 = select i1 %_0.i15.i.i, ptr %c.i.i, ptr %b.i.i, !unpredictable !18
  %7 = select i1 %_0.i12.i.i, ptr %a.i.i, ptr %6, !unpredictable !18
  %8 = select i1 %_0.i12.i.i, ptr %b.i.i, ptr %c.i.i, !unpredictable !18
  %9 = select i1 %_0.i15.i.i, ptr %d.i.i, ptr %8, !unpredictable !18
  call void @llvm.experimental.noalias.scope.decl(metadata !2007)
  call void @llvm.experimental.noalias.scope.decl(metadata !2010)
  call void @llvm.experimental.noalias.scope.decl(metadata !2012)
  call void @llvm.experimental.noalias.scope.decl(metadata !2015)
  call void @llvm.experimental.noalias.scope.decl(metadata !2017)
  call void @llvm.experimental.noalias.scope.decl(metadata !2020)
  %_3.i.i.i16.i.i = load i32, ptr %9, align 4, !alias.scope !2022, !noalias !2023, !noundef !18
  %_4.i.i.i17.i.i = load i32, ptr %7, align 4, !alias.scope !2024, !noalias !2025, !noundef !18
  store i32 %5, ptr %scratch.0, align 4, !alias.scope !1928, !noalias !2026
  %dst5.i.i = getelementptr inbounds nuw i8, ptr %scratch.0, i64 4
  %10 = call i32 @llvm.smin.i32(i32 %_3.i.i.i16.i.i, i32 %_4.i.i.i17.i.i)
  store i32 %10, ptr %dst5.i.i, align 4, !alias.scope !1928, !noalias !2026
  %dst6.i.i = getelementptr inbounds nuw i8, ptr %scratch.0, i64 8
  %11 = call i32 @llvm.smax.i32(i32 %_3.i.i.i16.i.i, i32 %_4.i.i.i17.i.i)
  store i32 %11, ptr %dst6.i.i, align 4, !alias.scope !1928, !noalias !2026
  %12 = getelementptr inbounds nuw i8, ptr %scratch.0, i64 12
  %13 = call i32 @llvm.smax.i32(i32 %_3.i.i.i13.i.i, i32 %_4.i.i.i14.i.i)
  store i32 %13, ptr %12, align 4, !alias.scope !1928, !noalias !2026
  %_27.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %len_div_211.i
  %_28.i = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211.i
  %_7.i13.i = getelementptr inbounds nuw i8, ptr %_27.i, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !2027)
  call void @llvm.experimental.noalias.scope.decl(metadata !2030)
  call void @llvm.experimental.noalias.scope.decl(metadata !2032)
  call void @llvm.experimental.noalias.scope.decl(metadata !2035)
  call void @llvm.experimental.noalias.scope.decl(metadata !2037)
  call void @llvm.experimental.noalias.scope.decl(metadata !2040)
  %_3.i.i.i.i14.i = load i32, ptr %_7.i13.i, align 4, !alias.scope !2042, !noalias !2043, !noundef !18
  %_4.i.i.i.i15.i = load i32, ptr %_27.i, align 4, !alias.scope !2044, !noalias !2045, !noundef !18
  %_0.i.i16.i = icmp slt i32 %_3.i.i.i.i14.i, %_4.i.i.i.i15.i
  %_12.i17.i = getelementptr inbounds nuw i8, ptr %_27.i, i64 12
  %_14.i18.i = getelementptr inbounds nuw i8, ptr %_27.i, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !2046)
  call void @llvm.experimental.noalias.scope.decl(metadata !2049)
  call void @llvm.experimental.noalias.scope.decl(metadata !2051)
  call void @llvm.experimental.noalias.scope.decl(metadata !2054)
  call void @llvm.experimental.noalias.scope.decl(metadata !2056)
  call void @llvm.experimental.noalias.scope.decl(metadata !2059)
  %_3.i.i.i7.i19.i = load i32, ptr %_12.i17.i, align 4, !alias.scope !2061, !noalias !2062, !noundef !18
  %_4.i.i.i8.i20.i = load i32, ptr %_14.i18.i, align 4, !alias.scope !2063, !noalias !2064, !noundef !18
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
  call void @llvm.experimental.noalias.scope.decl(metadata !2065)
  call void @llvm.experimental.noalias.scope.decl(metadata !2068)
  call void @llvm.experimental.noalias.scope.decl(metadata !2070)
  call void @llvm.experimental.noalias.scope.decl(metadata !2073)
  call void @llvm.experimental.noalias.scope.decl(metadata !2075)
  call void @llvm.experimental.noalias.scope.decl(metadata !2078)
  %_3.i.i.i10.i31.i = load i32, ptr %c.i28.i, align 4, !alias.scope !2080, !noalias !2081, !noundef !18
  %_4.i.i.i11.i32.i = load i32, ptr %a.i23.i, align 4, !alias.scope !2082, !noalias !2083, !noundef !18
  %_0.i12.i33.i = icmp slt i32 %_3.i.i.i10.i31.i, %_4.i.i.i11.i32.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2084)
  call void @llvm.experimental.noalias.scope.decl(metadata !2087)
  call void @llvm.experimental.noalias.scope.decl(metadata !2089)
  call void @llvm.experimental.noalias.scope.decl(metadata !2092)
  call void @llvm.experimental.noalias.scope.decl(metadata !2094)
  call void @llvm.experimental.noalias.scope.decl(metadata !2097)
  %_3.i.i.i13.i34.i = load i32, ptr %d.i30.i, align 4, !alias.scope !2099, !noalias !2100, !noundef !18
  %_4.i.i.i14.i35.i = load i32, ptr %b.i26.i, align 4, !alias.scope !2101, !noalias !2102, !noundef !18
  %_0.i15.i36.i = icmp slt i32 %_3.i.i.i13.i34.i, %_4.i.i.i14.i35.i
  %14 = call i32 @llvm.smin.i32(i32 %_3.i.i.i10.i31.i, i32 %_4.i.i.i11.i32.i)
  %15 = select i1 %_0.i15.i36.i, ptr %c.i28.i, ptr %b.i26.i, !unpredictable !18
  %16 = select i1 %_0.i12.i33.i, ptr %a.i23.i, ptr %15, !unpredictable !18
  %17 = select i1 %_0.i12.i33.i, ptr %b.i26.i, ptr %c.i28.i, !unpredictable !18
  %18 = select i1 %_0.i15.i36.i, ptr %d.i30.i, ptr %17, !unpredictable !18
  call void @llvm.experimental.noalias.scope.decl(metadata !2103)
  call void @llvm.experimental.noalias.scope.decl(metadata !2106)
  call void @llvm.experimental.noalias.scope.decl(metadata !2108)
  call void @llvm.experimental.noalias.scope.decl(metadata !2111)
  call void @llvm.experimental.noalias.scope.decl(metadata !2113)
  call void @llvm.experimental.noalias.scope.decl(metadata !2116)
  %_3.i.i.i16.i37.i = load i32, ptr %18, align 4, !alias.scope !2118, !noalias !2119, !noundef !18
  %_4.i.i.i17.i38.i = load i32, ptr %16, align 4, !alias.scope !2120, !noalias !2121, !noundef !18
  store i32 %14, ptr %_28.i, align 4, !alias.scope !1928, !noalias !2026
  %dst5.i40.i = getelementptr inbounds nuw i8, ptr %_28.i, i64 4
  %19 = call i32 @llvm.smin.i32(i32 %_3.i.i.i16.i37.i, i32 %_4.i.i.i17.i38.i)
  store i32 %19, ptr %dst5.i40.i, align 4, !alias.scope !1928, !noalias !2026
  %dst6.i43.i = getelementptr inbounds nuw i8, ptr %_28.i, i64 8
  %20 = call i32 @llvm.smax.i32(i32 %_3.i.i.i16.i37.i, i32 %_4.i.i.i17.i38.i)
  store i32 %20, ptr %dst6.i43.i, align 4, !alias.scope !1928, !noalias !2026
  %21 = getelementptr inbounds nuw i8, ptr %_28.i, i64 12
  %22 = call i32 @llvm.smax.i32(i32 %_3.i.i.i13.i34.i, i32 %_4.i.i.i14.i35.i)
  store i32 %22, ptr %21, align 4, !alias.scope !1928, !noalias !2026
  br label %bb15.i

bb46.i:                                           ; preds = %bb9.i
  %23 = load i32, ptr %v.sroa.0.0.ph.lcssa129, align 4, !alias.scope !1925, !noalias !2122
  store i32 %23, ptr %scratch.0, align 4, !alias.scope !1928, !noalias !2026
  %_31.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %len_div_211.i
  %24 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211.i
  %25 = load i32, ptr %_31.i, align 4, !alias.scope !1925, !noalias !2122
  store i32 %25, ptr %24, align 4, !alias.scope !1928, !noalias !2026
  br label %bb15.i

bb15.i:                                           ; preds = %bb46.i, %bb10.i, %bb6.i
  %presorted_len.sroa.0.0.i = phi i64 [ 8, %bb6.i ], [ 4, %bb10.i ], [ 1, %bb46.i ]
  %26 = sub nsw i64 %v.sroa.16.0.lcssa, %len_div_211.i
  %_8061.i = icmp samesign ult i64 %presorted_len.sroa.0.0.i, %len_div_211.i
  br i1 %_8061.i, label %bb24.preheader.i, label %bb16.loopexit.i

bb16.loopexit.i:                                  ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h95ccd783a40617a3E.exit.i, %bb15.i
  %src5.1.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %len_div_211.i
  %dst6.1.i = getelementptr i32, ptr %scratch.0, i64 %len_div_211.i
  %_8061.1.i = icmp ult i64 %presorted_len.sroa.0.0.i, %26
  br i1 %_8061.1.i, label %bb24.preheader.1.i, label %bb16.loopexit.1.i

bb24.preheader.1.i:                               ; preds = %bb16.loopexit.i
  %iter1.sroa.0.163.1.i = add nuw nsw i64 %presorted_len.sroa.0.0.i, 1
  br label %bb24.1.i

bb24.1.i:                                         ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h95ccd783a40617a3E.exit.1.i, %bb24.preheader.1.i
  %iter1.sroa.0.165.1.i = phi i64 [ %iter1.sroa.0.1.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h95ccd783a40617a3E.exit.1.i ], [ %iter1.sroa.0.163.1.i, %bb24.preheader.1.i ]
  %iter1.sroa.0.064.1.i = phi i64 [ %iter1.sroa.0.165.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h95ccd783a40617a3E.exit.1.i ], [ %presorted_len.sroa.0.0.i, %bb24.preheader.1.i ]
  %_55.1.i = getelementptr inbounds nuw i32, ptr %src5.1.i, i64 %iter1.sroa.0.064.1.i
  %dst7.1.i = getelementptr inbounds nuw i32, ptr %dst6.1.i, i64 %iter1.sroa.0.064.1.i
  %27 = load i32, ptr %_55.1.i, align 4, !alias.scope !1925, !noalias !2122
  store i32 %27, ptr %dst7.1.i, align 4, !alias.scope !1928, !noalias !2026
  %28 = getelementptr inbounds i8, ptr %dst7.1.i, i64 -4
  %_4.i.i.i.i55.1.i = load i32, ptr %28, align 4, !alias.scope !2123, !noalias !2130, !noundef !18
  %_0.i.i56.1.i = icmp slt i32 %27, %_4.i.i.i.i55.1.i
  br i1 %_0.i.i56.1.i, label %bb4.i.1.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h95ccd783a40617a3E.exit.1.i

bb4.i.1.i:                                        ; preds = %bb24.1.i, %bb7.i.1.i
  %29 = phi i32 [ %_4.i.i.i2.i.1.i, %bb7.i.1.i ], [ %_4.i.i.i.i55.1.i, %bb24.1.i ]
  %gap_guard.sroa.5.0.i.1.i = phi ptr [ %sift.sroa.0.0.i.1.i, %bb7.i.1.i ], [ %dst7.1.i, %bb24.1.i ]
  %sift.sroa.0.0.i.1.i = phi ptr [ %30, %bb7.i.1.i ], [ %28, %bb24.1.i ]
  store i32 %29, ptr %gap_guard.sroa.5.0.i.1.i, align 4, !alias.scope !1928, !noalias !2026
  %_18.i.1.i = icmp eq ptr %sift.sroa.0.0.i.1.i, %dst6.1.i
  br i1 %_18.i.1.i, label %bb10.i.1.i, label %bb7.i.1.i

bb7.i.1.i:                                        ; preds = %bb4.i.1.i
  %30 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.1.i, i64 -4
  %_4.i.i.i2.i.1.i = load i32, ptr %30, align 4, !alias.scope !2134, !noalias !2141, !noundef !18
  %_0.i3.i.1.i = icmp slt i32 %27, %_4.i.i.i2.i.1.i
  br i1 %_0.i3.i.1.i, label %bb4.i.1.i, label %bb10.i.1.i

bb10.i.1.i:                                       ; preds = %bb7.i.1.i, %bb4.i.1.i
  %sift.sroa.0.0.i.lcssa.1.i = phi ptr [ %sift.sroa.0.0.i.1.i, %bb7.i.1.i ], [ %dst6.1.i, %bb4.i.1.i ]
  store i32 %27, ptr %sift.sroa.0.0.i.lcssa.1.i, align 4, !alias.scope !1928, !noalias !2145
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h95ccd783a40617a3E.exit.1.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h95ccd783a40617a3E.exit.1.i: ; preds = %bb10.i.1.i, %bb24.1.i
  %_80.1.i = icmp ult i64 %iter1.sroa.0.165.1.i, %26
  %_84.1.i = zext i1 %_80.1.i to i64
  %iter1.sroa.0.1.1.i = add nuw i64 %iter1.sroa.0.165.1.i, %_84.1.i
  br i1 %_80.1.i, label %bb24.1.i, label %bb16.loopexit.1.i

bb16.loopexit.1.i:                                ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h95ccd783a40617a3E.exit.1.i, %bb16.loopexit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2150)
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
  call void @llvm.experimental.noalias.scope.decl(metadata !2153)
  call void @llvm.experimental.noalias.scope.decl(metadata !2156)
  call void @llvm.experimental.noalias.scope.decl(metadata !2158), !noalias !2161
  call void @llvm.experimental.noalias.scope.decl(metadata !2164), !noalias !2161
  call void @llvm.experimental.noalias.scope.decl(metadata !2166), !noalias !2161
  call void @llvm.experimental.noalias.scope.decl(metadata !2169), !noalias !2161
  %_3.i.i.i.i48.i = load i32, ptr %right.sroa.0.026.i.i, align 4, !alias.scope !2171, !noalias !2172, !noundef !18
  %_4.i.i.i.i49.i = load i32, ptr %left.sroa.0.027.i.i, align 4, !alias.scope !2173, !noalias !2174, !noundef !18
  %_0.i.i50.i = icmp slt i32 %_3.i.i.i.i48.i, %_4.i.i.i.i49.i
  %is_l.i18.i.i = xor i1 %_0.i.i50.i, true
  %36 = call i32 @llvm.smin.i32(i32 %_3.i.i.i.i48.i, i32 %_4.i.i.i.i49.i)
  store i32 %36, ptr %dst.sroa.0.029.i.i, align 4, !alias.scope !1925, !noalias !2175
  %count.i.i.i = zext i1 %_0.i.i50.i to i64
  %_12.i.i.i = getelementptr inbounds nuw i32, ptr %right.sroa.0.026.i.i, i64 %count.i.i.i
  %count2.i.i.i = zext i1 %is_l.i18.i.i to i64
  %_14.i.i.i = getelementptr inbounds nuw i32, ptr %left.sroa.0.027.i.i, i64 %count2.i.i.i
  %_16.i.i.i = getelementptr inbounds nuw i8, ptr %dst.sroa.0.029.i.i, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !2177)
  call void @llvm.experimental.noalias.scope.decl(metadata !2180)
  call void @llvm.experimental.noalias.scope.decl(metadata !2182), !noalias !2185
  call void @llvm.experimental.noalias.scope.decl(metadata !2188), !noalias !2185
  call void @llvm.experimental.noalias.scope.decl(metadata !2190), !noalias !2185
  call void @llvm.experimental.noalias.scope.decl(metadata !2193), !noalias !2185
  %_3.i.i.i19.i.i = load i32, ptr %right_rev.sroa.0.024.i.i, align 4, !alias.scope !2195, !noalias !2196, !noundef !18
  %_4.i.i.i20.i.i = load i32, ptr %left_rev.sroa.0.025.i.i, align 4, !alias.scope !2197, !noalias !2198, !noundef !18
  %_0.i21.i.i = icmp slt i32 %_3.i.i.i19.i.i, %_4.i.i.i20.i.i
  %is_l.i.i.i = xor i1 %_0.i21.i.i, true
  %37 = call i32 @llvm.smax.i32(i32 %_3.i.i.i19.i.i, i32 %_4.i.i.i20.i.i)
  store i32 %37, ptr %dst_rev.sroa.0.023.i.i, align 4, !alias.scope !1925, !noalias !2199
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
  %41 = load i32, ptr %left.sroa.0.0.right.sroa.0.0.i.i, align 4, !alias.scope !2201, !noalias !2026
  store i32 %41, ptr %_16.i.i.i, align 4, !alias.scope !1925, !noalias !2202
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
  br i1 %or.cond.i.i, label %bb13.i.i, label %bb22, !prof !357

bb13.i.i:                                         ; preds = %bb9.i.i
; invoke core::slice::sort::shared::smallsort::panic_on_ord_violation
  invoke void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #18
          to label %.noexc.i unwind label %cleanup2.i, !noalias !2203

.noexc.i:                                         ; preds = %bb13.i.i
  unreachable

cleanup2.i:                                       ; preds = %bb13.i.i
  %42 = landingpad { ptr, i32 }
          cleanup
  %43 = shl nuw nsw i64 %v.sroa.16.0.lcssa, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.sroa.0.0.ph.lcssa129, ptr nonnull align 4 %scratch.0, i64 %43, i1 false), !alias.scope !2204, !noalias !2205
  resume { ptr, i32 } %42

bb24.i:                                           ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h95ccd783a40617a3E.exit.i, %bb24.preheader.i
  %iter1.sroa.0.165.i = phi i64 [ %iter1.sroa.0.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h95ccd783a40617a3E.exit.i ], [ %iter1.sroa.0.163.i, %bb24.preheader.i ]
  %iter1.sroa.0.064.i = phi i64 [ %iter1.sroa.0.165.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h95ccd783a40617a3E.exit.i ], [ %presorted_len.sroa.0.0.i, %bb24.preheader.i ]
  %_55.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %iter1.sroa.0.064.i
  %dst7.i = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %iter1.sroa.0.064.i
  %44 = load i32, ptr %_55.i, align 4, !alias.scope !1925, !noalias !2122
  store i32 %44, ptr %dst7.i, align 4, !alias.scope !1928, !noalias !2026
  %45 = getelementptr inbounds i8, ptr %dst7.i, i64 -4
  %_4.i.i.i.i55.i = load i32, ptr %45, align 4, !alias.scope !2123, !noalias !2130, !noundef !18
  %_0.i.i56.i = icmp slt i32 %44, %_4.i.i.i.i55.i
  br i1 %_0.i.i56.i, label %bb4.i.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h95ccd783a40617a3E.exit.i

bb4.i.i:                                          ; preds = %bb24.i, %bb7.i.i
  %46 = phi i32 [ %_4.i.i.i2.i.i, %bb7.i.i ], [ %_4.i.i.i.i55.i, %bb24.i ]
  %gap_guard.sroa.5.0.i.i = phi ptr [ %sift.sroa.0.0.i.i, %bb7.i.i ], [ %dst7.i, %bb24.i ]
  %sift.sroa.0.0.i.i = phi ptr [ %47, %bb7.i.i ], [ %45, %bb24.i ]
  store i32 %46, ptr %gap_guard.sroa.5.0.i.i, align 4, !alias.scope !1928, !noalias !2026
  %_18.i.i = icmp eq ptr %sift.sroa.0.0.i.i, %scratch.0
  br i1 %_18.i.i, label %bb10.i.i, label %bb7.i.i

bb7.i.i:                                          ; preds = %bb4.i.i
  %47 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i, i64 -4
  %_4.i.i.i2.i.i = load i32, ptr %47, align 4, !alias.scope !2134, !noalias !2141, !noundef !18
  %_0.i3.i.i = icmp slt i32 %44, %_4.i.i.i2.i.i
  br i1 %_0.i3.i.i, label %bb4.i.i, label %bb10.i.i

bb10.i.i:                                         ; preds = %bb7.i.i, %bb4.i.i
  %sift.sroa.0.0.i.lcssa.i = phi ptr [ %sift.sroa.0.0.i.i, %bb7.i.i ], [ %scratch.0, %bb4.i.i ]
  store i32 %44, ptr %sift.sroa.0.0.i.lcssa.i, align 4, !alias.scope !1928, !noalias !2145
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h95ccd783a40617a3E.exit.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h95ccd783a40617a3E.exit.i: ; preds = %bb10.i.i, %bb24.i
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
  %self.i = call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h48858054538ba0a9E(ptr noundef nonnull readonly align 4 %v.sroa.0.0.ph140, ptr noundef readonly %b.i, ptr noundef readonly %c.i, i64 noundef %len_div_84.i)
  br label %bb10

bb3.i23:                                          ; preds = %bb7
  call void @llvm.experimental.noalias.scope.decl(metadata !2210)
  call void @llvm.experimental.noalias.scope.decl(metadata !2213)
  call void @llvm.experimental.noalias.scope.decl(metadata !2215), !noalias !2218
  call void @llvm.experimental.noalias.scope.decl(metadata !2221), !noalias !2218
  call void @llvm.experimental.noalias.scope.decl(metadata !2223), !noalias !2218
  call void @llvm.experimental.noalias.scope.decl(metadata !2226), !noalias !2218
  %_3.i.i.i.i = load i32, ptr %v.sroa.0.0.ph140, align 4, !alias.scope !2228, !noalias !2231, !noundef !18
  %_4.i.i.i.i = load i32, ptr %b.i, align 4, !alias.scope !2233, !noalias !2234, !noundef !18
  %_0.i.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %_4.i.i.i6.i = load i32, ptr %c.i, align 4, !alias.scope !2235, !noalias !2242, !noundef !18
  %_0.i7.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i6.i
  %49 = xor i1 %_0.i.i, %_0.i7.i
  %_0.i10.i = icmp slt i32 %_4.i.i.i.i, %_4.i.i.i6.i
  %_12.i.i24 = xor i1 %_0.i.i, %_0.i10.i
  %c.b.i.i = select i1 %_12.i.i24, ptr %c.i, ptr %b.i
  %_0.sroa.0.0.i.i = select i1 %49, ptr %v.sroa.0.0.ph140, ptr %c.b.i.i
  br label %bb10

bb6:                                              ; preds = %bb5
; call core::slice::sort::stable::drift::sort
  call fastcc void @_ZN4core5slice4sort6stable5drift4sort17h077ef0bcbe90118aE(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph140, i64 noundef %v.sroa.16.0132, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i1 noundef zeroext true, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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
  %_3.i.i.i = load i32, ptr %left_ancestor_pivot.sroa.0.0.ph137, align 4, !alias.scope !2246, !noalias !2253, !noundef !18
  %_0.i = icmp slt i32 %_3.i.i.i, %value
  br i1 %_0.i, label %bb14, label %bb17

bb14:                                             ; preds = %bb10, %bb12
  call void @llvm.experimental.noalias.scope.decl(metadata !2257)
  call void @llvm.experimental.noalias.scope.decl(metadata !2260)
  %_8.i25.not = icmp samesign ult i64 %scratch.1, %v.sroa.16.0132
  br i1 %_8.i25.not, label %bb31.i, label %bb33.i, !prof !357

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
  %_4.i.i.i.i30 = load i32, ptr %src, align 4, !alias.scope !2262, !noalias !2269, !noundef !18
  br label %bb6.i28

bb6.i28:                                          ; preds = %bb6.i28.preheader, %bb6.i28
  %state.sroa.43.187.i = phi ptr [ %59, %bb6.i28 ], [ %state.sroa.43.0.i, %bb6.i28.preheader ]
  %state.sroa.9.186.i = phi ptr [ %_9.i54.i, %bb6.i28 ], [ %state.sroa.9.0.i, %bb6.i28.preheader ]
  %state.sroa.27.185.i = phi i64 [ %60, %bb6.i28 ], [ %state.sroa.27.0.i, %bb6.i28.preheader ]
  call void @llvm.experimental.noalias.scope.decl(metadata !2273)
  call void @llvm.experimental.noalias.scope.decl(metadata !2274)
  call void @llvm.experimental.noalias.scope.decl(metadata !2275)
  call void @llvm.experimental.noalias.scope.decl(metadata !2276)
  call void @llvm.experimental.noalias.scope.decl(metadata !2277)
  call void @llvm.experimental.noalias.scope.decl(metadata !2278)
  %_3.i.i.i.i29 = load i32, ptr %state.sroa.9.186.i, align 4, !alias.scope !2279, !noalias !2280, !noundef !18
  %_0.i.i31 = icmp slt i32 %_3.i.i.i.i29, %_4.i.i.i.i30
  %53 = getelementptr inbounds i8, ptr %state.sroa.43.187.i, i64 -4
  %dst_base.sroa.0.0.i.i = select i1 %_0.i.i31, ptr %scratch.0, ptr %53
  %dst.i.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i.i, i64 %state.sroa.27.185.i
  store i32 %_3.i.i.i.i29, ptr %dst.i.i, align 4, !alias.scope !2260, !noalias !2281
  %_8.i.i = zext i1 %_0.i.i31 to i64
  %54 = add i64 %state.sroa.27.185.i, %_8.i.i
  %_9.i.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i, i64 4
  %_3.i.i.i25.i = load i32, ptr %_9.i.i, align 4, !alias.scope !2284, !noalias !2291, !noundef !18
  %_0.i27.i = icmp slt i32 %_3.i.i.i25.i, %_4.i.i.i.i30
  %55 = getelementptr inbounds i8, ptr %state.sroa.43.187.i, i64 -8
  %dst_base.sroa.0.0.i29.i = select i1 %_0.i27.i, ptr %scratch.0, ptr %55
  %dst.i31.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29.i, i64 %54
  store i32 %_3.i.i.i25.i, ptr %dst.i31.i, align 4, !alias.scope !2260, !noalias !2295
  %_8.i33.i = zext i1 %_0.i27.i to i64
  %56 = add i64 %54, %_8.i33.i
  %_9.i34.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i, i64 8
  %_3.i.i.i35.i = load i32, ptr %_9.i34.i, align 4, !alias.scope !2298, !noalias !2305, !noundef !18
  %_0.i37.i = icmp slt i32 %_3.i.i.i35.i, %_4.i.i.i.i30
  %57 = getelementptr inbounds i8, ptr %state.sroa.43.187.i, i64 -12
  %dst_base.sroa.0.0.i39.i = select i1 %_0.i37.i, ptr %scratch.0, ptr %57
  %dst.i41.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39.i, i64 %56
  store i32 %_3.i.i.i35.i, ptr %dst.i41.i, align 4, !alias.scope !2260, !noalias !2309
  %_8.i43.i = zext i1 %_0.i37.i to i64
  %58 = add i64 %56, %_8.i43.i
  %_9.i44.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i, i64 12
  %_3.i.i.i45.i = load i32, ptr %_9.i44.i, align 4, !alias.scope !2312, !noalias !2319, !noundef !18
  %_0.i47.i = icmp slt i32 %_3.i.i.i45.i, %_4.i.i.i.i30
  %59 = getelementptr inbounds i8, ptr %state.sroa.43.187.i, i64 -16
  %dst_base.sroa.0.0.i49.i = select i1 %_0.i47.i, ptr %scratch.0, ptr %59
  %dst.i51.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49.i, i64 %58
  store i32 %_3.i.i.i45.i, ptr %dst.i51.i, align 4, !alias.scope !2260, !noalias !2323
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
  %_4.i.i.i56.i = load i32, ptr %src, align 4, !alias.scope !2326, !noalias !2333, !noundef !18
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
  call void @llvm.experimental.noalias.scope.decl(metadata !2337)
  call void @llvm.experimental.noalias.scope.decl(metadata !2338)
  call void @llvm.experimental.noalias.scope.decl(metadata !2339)
  call void @llvm.experimental.noalias.scope.decl(metadata !2340)
  call void @llvm.experimental.noalias.scope.decl(metadata !2341)
  call void @llvm.experimental.noalias.scope.decl(metadata !2342)
  %_3.i.i.i55.i = load i32, ptr %state.sroa.9.292.i, align 4, !alias.scope !2343, !noalias !2344, !noundef !18
  %_0.i57.i = icmp slt i32 %_3.i.i.i55.i, %_4.i.i.i56.i
  %61 = getelementptr inbounds i8, ptr %state.sroa.43.293.i, i64 -4
  %dst_base.sroa.0.0.i59.i = select i1 %_0.i57.i, ptr %scratch.0, ptr %61
  %dst.i61.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59.i, i64 %state.sroa.27.291.i
  store i32 %_3.i.i.i55.i, ptr %dst.i61.i, align 4, !alias.scope !2260, !noalias !2345
  %_8.i63.i = zext i1 %_0.i57.i to i64
  %62 = add i64 %state.sroa.27.291.i, %_8.i63.i
  %_9.i64.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.292.i, i64 4
  %_47.i = icmp ult ptr %_9.i64.i, %loop_end.i
  br i1 %_47.i, label %bb18.i, label %bb21.i

bb23.i:                                           ; preds = %bb21.i
  %63 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa.i, i64 -4
  %dst.i68.i = getelementptr inbounds nuw i32, ptr %63, i64 %state.sroa.27.2.lcssa.i
  %64 = load i32, ptr %state.sroa.9.2.lcssa.i, align 4, !alias.scope !2257, !noalias !2348
  store i32 %64, ptr %dst.i68.i, align 4, !alias.scope !2260, !noalias !2351
  %_9.i70.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.2.lcssa.i, i64 4
  br label %bb3.i26

bb22.i:                                           ; preds = %bb21.i
  %65 = shl i64 %state.sroa.27.2.lcssa.i, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.sroa.0.0.ph140, ptr nonnull align 4 %scratch.0, i64 %65, i1 false), !alias.scope !2352
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
  %wide.load271 = load <4 x i32>, ptr %70, align 4, !alias.scope !2260, !noalias !2257
  %reverse272 = shufflevector <4 x i32> %wide.load271, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %wide.load273 = load <4 x i32>, ptr %71, align 4, !alias.scope !2260, !noalias !2257
  %reverse274 = shufflevector <4 x i32> %wide.load273, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %72 = getelementptr i8, ptr %67, i64 16
  store <4 x i32> %reverse272, ptr %67, align 4, !alias.scope !2257, !noalias !2260
  store <4 x i32> %reverse274, ptr %72, align 4, !alias.scope !2257, !noalias !2260
  %index.next275 = add nuw i64 %index270, 8
  %73 = icmp eq i64 %index.next275, %n.vec268
  br i1 %73, label %middle.block276, label %vector.body269, !llvm.loop !2353

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
  %78 = load i32, ptr %77, align 4, !alias.scope !2260, !noalias !2257
  store i32 %78, ptr %75, align 4, !alias.scope !2257, !noalias !2260
  %exitcond.not.i = icmp eq i64 %74, %_63.i
  br i1 %exitcond.not.i, label %bb16, label %bb42.i, !llvm.loop !2354

bb16:                                             ; preds = %bb42.i, %middle.block276, %bb22.i
  %79 = icmp eq i64 %state.sroa.27.2.lcssa.i, 0
  br i1 %79, label %bb17, label %bb19

bb19:                                             ; preds = %bb16
  %_6.not.i = icmp ugt i64 %state.sroa.27.2.lcssa.i, %v.sroa.16.0132
  br i1 %_6.not.i, label %bb3.i33, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hc12d825464135f3eE.exit", !prof !1465

bb3.i33:                                          ; preds = %bb19
; call core::panicking::panic_fmt
  call void @_ZN4core9panicking9panic_fmt17ha4414e4328fe24a0E(ptr noundef nonnull @alloc_d1084648e479974e70c9329824bf76f9, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_58d434a1e795f965ef82c8e9c5db822a) #18, !noalias !2355
  unreachable

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hc12d825464135f3eE.exit": ; preds = %bb19
  %80 = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph140, i64 %state.sroa.27.2.lcssa.i
; call core::slice::sort::stable::quicksort::quicksort
  call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h960dc2f6c4bef9a8E(ptr noalias noundef nonnull align 4 %80, i64 noundef %_63.i, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef %48, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) %pivot_copy, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_8 = icmp ult i64 %state.sroa.27.2.lcssa.i, 33
  br i1 %_8, label %bb3, label %bb5

bb17:                                             ; preds = %bb12, %bb16
  call void @llvm.experimental.noalias.scope.decl(metadata !2359)
  call void @llvm.experimental.noalias.scope.decl(metadata !2362)
  %_8.i34.not = icmp samesign ult i64 %scratch.1, %v.sroa.16.0132
  br i1 %_8.i34.not, label %bb31.i37, label %bb33.i38, !prof !357

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
  %_3.i.i.i.i.i82 = load i32, ptr %src, align 4, !alias.scope !2364, !noalias !2373, !noundef !18
  br label %bb6.i78

bb6.i78:                                          ; preds = %bb6.i78.preheader, %bb6.i78
  %state.sroa.43.187.i79 = phi ptr [ %88, %bb6.i78 ], [ %state.sroa.43.0.i44, %bb6.i78.preheader ]
  %state.sroa.9.186.i80 = phi ptr [ %_9.i54.i100, %bb6.i78 ], [ %state.sroa.9.0.i43, %bb6.i78.preheader ]
  %state.sroa.27.185.i81 = phi i64 [ %89, %bb6.i78 ], [ %state.sroa.27.0.i42, %bb6.i78.preheader ]
  call void @llvm.experimental.noalias.scope.decl(metadata !2378)
  call void @llvm.experimental.noalias.scope.decl(metadata !2379)
  call void @llvm.experimental.noalias.scope.decl(metadata !2380)
  call void @llvm.experimental.noalias.scope.decl(metadata !2381)
  call void @llvm.experimental.noalias.scope.decl(metadata !2382)
  call void @llvm.experimental.noalias.scope.decl(metadata !2383)
  call void @llvm.experimental.noalias.scope.decl(metadata !2384)
  call void @llvm.experimental.noalias.scope.decl(metadata !2385)
  %_4.i.i.i.i.i83 = load i32, ptr %state.sroa.9.186.i80, align 4, !alias.scope !2386, !noalias !2387, !noundef !18
  %_0.i.i.i84 = icmp sge i32 %_3.i.i.i.i.i82, %_4.i.i.i.i.i83
  %82 = getelementptr inbounds i8, ptr %state.sroa.43.187.i79, i64 -4
  %dst_base.sroa.0.0.i.i85 = select i1 %_0.i.i.i84, ptr %scratch.0, ptr %82
  %dst.i.i86 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i.i85, i64 %state.sroa.27.185.i81
  store i32 %_4.i.i.i.i.i83, ptr %dst.i.i86, align 4, !alias.scope !2362, !noalias !2388
  %_8.i.i87 = zext i1 %_0.i.i.i84 to i64
  %83 = add i64 %state.sroa.27.185.i81, %_8.i.i87
  %_9.i.i88 = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i80, i64 4
  %_4.i.i.i.i26.i = load i32, ptr %_9.i.i88, align 4, !alias.scope !2391, !noalias !2400, !noundef !18
  %_0.i.i27.i = icmp sge i32 %_3.i.i.i.i.i82, %_4.i.i.i.i26.i
  %84 = getelementptr inbounds i8, ptr %state.sroa.43.187.i79, i64 -8
  %dst_base.sroa.0.0.i29.i89 = select i1 %_0.i.i27.i, ptr %scratch.0, ptr %84
  %dst.i31.i90 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29.i89, i64 %83
  store i32 %_4.i.i.i.i26.i, ptr %dst.i31.i90, align 4, !alias.scope !2362, !noalias !2405
  %_8.i33.i91 = zext i1 %_0.i.i27.i to i64
  %85 = add i64 %83, %_8.i33.i91
  %_9.i34.i92 = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i80, i64 8
  %_4.i.i.i.i36.i = load i32, ptr %_9.i34.i92, align 4, !alias.scope !2408, !noalias !2417, !noundef !18
  %_0.i.i37.i = icmp sge i32 %_3.i.i.i.i.i82, %_4.i.i.i.i36.i
  %86 = getelementptr inbounds i8, ptr %state.sroa.43.187.i79, i64 -12
  %dst_base.sroa.0.0.i39.i93 = select i1 %_0.i.i37.i, ptr %scratch.0, ptr %86
  %dst.i41.i94 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39.i93, i64 %85
  store i32 %_4.i.i.i.i36.i, ptr %dst.i41.i94, align 4, !alias.scope !2362, !noalias !2422
  %_8.i43.i95 = zext i1 %_0.i.i37.i to i64
  %87 = add i64 %85, %_8.i43.i95
  %_9.i44.i96 = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i80, i64 12
  %_4.i.i.i.i46.i = load i32, ptr %_9.i44.i96, align 4, !alias.scope !2425, !noalias !2434, !noundef !18
  %_0.i.i47.i = icmp sge i32 %_3.i.i.i.i.i82, %_4.i.i.i.i46.i
  %88 = getelementptr inbounds i8, ptr %state.sroa.43.187.i79, i64 -16
  %dst_base.sroa.0.0.i49.i97 = select i1 %_0.i.i47.i, ptr %scratch.0, ptr %88
  %dst.i51.i98 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49.i97, i64 %87
  store i32 %_4.i.i.i.i46.i, ptr %dst.i51.i98, align 4, !alias.scope !2362, !noalias !2439
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
  %_3.i.i.i.i55.i = load i32, ptr %src, align 4, !alias.scope !2442, !noalias !2451, !noundef !18
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
  call void @llvm.experimental.noalias.scope.decl(metadata !2456)
  call void @llvm.experimental.noalias.scope.decl(metadata !2457)
  call void @llvm.experimental.noalias.scope.decl(metadata !2458)
  call void @llvm.experimental.noalias.scope.decl(metadata !2459)
  call void @llvm.experimental.noalias.scope.decl(metadata !2460)
  call void @llvm.experimental.noalias.scope.decl(metadata !2461)
  call void @llvm.experimental.noalias.scope.decl(metadata !2462)
  call void @llvm.experimental.noalias.scope.decl(metadata !2463)
  %_4.i.i.i.i56.i = load i32, ptr %state.sroa.9.292.i71, align 4, !alias.scope !2464, !noalias !2465, !noundef !18
  %_0.i.i57.i = icmp sge i32 %_3.i.i.i.i55.i, %_4.i.i.i.i56.i
  %90 = getelementptr inbounds i8, ptr %state.sroa.43.293.i70, i64 -4
  %dst_base.sroa.0.0.i59.i73 = select i1 %_0.i.i57.i, ptr %scratch.0, ptr %90
  %dst.i61.i74 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59.i73, i64 %state.sroa.27.291.i72
  store i32 %_4.i.i.i.i56.i, ptr %dst.i61.i74, align 4, !alias.scope !2362, !noalias !2466
  %_8.i63.i75 = zext i1 %_0.i.i57.i to i64
  %91 = add i64 %state.sroa.27.291.i72, %_8.i63.i75
  %_9.i64.i76 = getelementptr inbounds nuw i8, ptr %state.sroa.9.292.i71, i64 4
  %_47.i77 = icmp ult ptr %_9.i64.i76, %loop_end.i52
  br i1 %_47.i77, label %bb18.i69, label %bb21.i54

bb23.i59:                                         ; preds = %bb21.i54
  %92 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa.i57, i64 -4
  %dst.i68.i60 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %state.sroa.27.2.lcssa.i55
  %93 = load i32, ptr %state.sroa.9.2.lcssa.i56, align 4, !alias.scope !2359, !noalias !2469
  store i32 %93, ptr %dst.i68.i60, align 4, !alias.scope !2362, !noalias !2472
  %94 = add i64 %state.sroa.27.2.lcssa.i55, 1
  %_9.i70.i61 = getelementptr inbounds nuw i8, ptr %state.sroa.9.2.lcssa.i56, i64 4
  br label %bb3.i41

bb22.i62:                                         ; preds = %bb21.i54
  %95 = shl i64 %state.sroa.27.2.lcssa.i55, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.sroa.0.0.ph140, ptr nonnull align 4 %scratch.0, i64 %95, i1 false), !alias.scope !2473
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
  %wide.load = load <4 x i32>, ptr %100, align 4, !alias.scope !2362, !noalias !2359
  %reverse = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %wide.load262 = load <4 x i32>, ptr %101, align 4, !alias.scope !2362, !noalias !2359
  %reverse263 = shufflevector <4 x i32> %wide.load262, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %102 = getelementptr i8, ptr %97, i64 16
  store <4 x i32> %reverse, ptr %97, align 4, !alias.scope !2359, !noalias !2362
  store <4 x i32> %reverse263, ptr %102, align 4, !alias.scope !2359, !noalias !2362
  %index.next = add nuw i64 %index, 8
  %103 = icmp eq i64 %index.next, %n.vec
  br i1 %103, label %middle.block, label %vector.body, !llvm.loop !2474

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %_63.i63, %n.vec
  br i1 %cmp.n, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h6c33e90b131fae27E.exit, label %bb42.i66.preheader

bb42.i66.preheader:                               ; preds = %bb42.lr.ph.i65, %middle.block
  %iter.sroa.0.098.i67.ph = phi i64 [ 0, %bb42.lr.ph.i65 ], [ %n.vec, %middle.block ]
  br label %bb42.i66

bb42.i66:                                         ; preds = %bb42.i66.preheader, %bb42.i66
  %iter.sroa.0.098.i67 = phi i64 [ %104, %bb42.i66 ], [ %iter.sroa.0.098.i67.ph, %bb42.i66.preheader ]
  %104 = add nuw i64 %iter.sroa.0.098.i67, 1
  %105 = getelementptr i32, ptr %96, i64 %iter.sroa.0.098.i67
  %106 = xor i64 %iter.sroa.0.098.i67, -1
  %107 = getelementptr i32, ptr %_86.i40, i64 %106
  %108 = load i32, ptr %107, align 4, !alias.scope !2362, !noalias !2359
  store i32 %108, ptr %105, align 4, !alias.scope !2359, !noalias !2362
  %exitcond.not.i68 = icmp eq i64 %104, %_63.i63
  br i1 %exitcond.not.i68, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h6c33e90b131fae27E.exit, label %bb42.i66, !llvm.loop !2475

_ZN4core5slice4sort6stable9quicksort16stable_partition17h6c33e90b131fae27E.exit: ; preds = %bb42.i66, %middle.block
  %_47 = icmp ugt i64 %state.sroa.27.2.lcssa.i55, %v.sroa.16.0132
  br i1 %_47, label %bb27, label %bb28, !prof !1465

bb3.thread:                                       ; preds = %bb22.i62
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  br label %bb22

bb28:                                             ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h6c33e90b131fae27E.exit
  %_54 = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph140, i64 %state.sroa.27.2.lcssa.i55
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_8130 = icmp ult i64 %_63.i63, 33
  br i1 %_8130, label %bb3, label %bb5.lr.ph

bb27:                                             ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h6c33e90b131fae27E.exit
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
define noundef i32 @f_gold(ptr noalias noundef nonnull align 4 %a.0, i64 noundef range(i64 0, 2305843009213693952) %a.1, ptr noalias noundef nonnull align 4 %b.0, i64 noundef range(i64 0, 2305843009213693952) %b.1, i32 noundef %n) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %compare.i5 = alloca [0 x i8], align 1
  %is_less.i.i6 = alloca [8 x i8], align 8
  %is_less.i.i = alloca [8 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %compare.i5)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !2476
  store ptr %compare.i5, ptr %is_less.i.i, align 8, !noalias !2479
  %b.i.i = icmp samesign ult i64 %a.1, 2
  br i1 %b.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hecb21546e15286f0E.exit", label %bb7.i.i, !prof !2483

bb7.i.i:                                          ; preds = %start
  %b1.i.i = icmp samesign ult i64 %a.1, 21
  br i1 %b1.i.i, label %bb9.i.i, label %bb10.i.i, !prof !2483

bb10.i.i:                                         ; preds = %bb7.i.i
; call core::slice::sort::stable::driftsort_main
  call void @_ZN4core5slice4sort6stable14driftsort_main17h54296ad700b061c7E(ptr noalias noundef nonnull align 4 %a.0, i64 noundef range(i64 0, 2305843009213693952) %a.1, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less.i.i)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hecb21546e15286f0E.exit"

bb9.i.i:                                          ; preds = %bb7.i.i
; call core::slice::sort::shared::smallsort::insertion_sort_shift_left
  call fastcc void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h8c39bce6e1229ee3E(ptr noalias noundef nonnull align 4 %a.0, i64 noundef range(i64 0, 2305843009213693952) %a.1)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hecb21546e15286f0E.exit"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hecb21546e15286f0E.exit": ; preds = %start, %bb10.i.i, %bb9.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !2476
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %compare.i5)
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %compare.i5)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %is_less.i.i6), !noalias !2484
  store ptr %compare.i5, ptr %is_less.i.i6, align 8, !noalias !2487
  %b.i.i7 = icmp samesign ult i64 %b.1, 2
  br i1 %b.i.i7, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hd7181ff24b95d99dE.exit", label %bb7.i.i8, !prof !2483

bb7.i.i8:                                         ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hecb21546e15286f0E.exit"
  %b1.i.i9 = icmp samesign ult i64 %b.1, 21
  br i1 %b1.i.i9, label %bb9.i.i11, label %bb10.i.i10, !prof !2483

bb10.i.i10:                                       ; preds = %bb7.i.i8
; call core::slice::sort::stable::driftsort_main
  call void @_ZN4core5slice4sort6stable14driftsort_main17hcb049b11f4721df8E(ptr noalias noundef nonnull align 4 %b.0, i64 noundef range(i64 0, 2305843009213693952) %b.1, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less.i.i6)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hd7181ff24b95d99dE.exit"

bb9.i.i11:                                        ; preds = %bb7.i.i8
; call core::slice::sort::shared::smallsort::insertion_sort_shift_left
  call fastcc void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h34510fd470fc988eE(ptr noalias noundef nonnull align 4 %b.0, i64 noundef range(i64 0, 2305843009213693952) %b.1)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hd7181ff24b95d99dE.exit"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hd7181ff24b95d99dE.exit": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hecb21546e15286f0E.exit", %bb10.i.i10, %bb9.i.i11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %is_less.i.i6), !noalias !2484
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %compare.i5)
  %iter1 = sext i32 %n to i64
  %_1816.not = icmp eq i32 %n, 0
  br i1 %_1816.not, label %bb7, label %bb6.preheader

bb6.preheader:                                    ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hd7181ff24b95d99dE.exit"
  %umin = call i64 @llvm.umin.i64(i64 %b.1, i64 %a.1)
  %0 = add nsw i64 %iter1, -1
  %umin23 = call i64 @llvm.umin.i64(i64 %umin, i64 %0)
  %min.iters.check = icmp samesign ult i64 %umin23, 8
  br i1 %min.iters.check, label %bb6.preheader28, label %vector.ph

vector.ph:                                        ; preds = %bb6.preheader
  %1 = add nuw nsw i64 %umin23, 1
  %n.mod.vf = and i64 %1, 7
  %2 = icmp eq i64 %n.mod.vf, 0
  %3 = select i1 %2, i64 8, i64 %n.mod.vf
  %n.vec = sub nsw i64 %1, %3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %14, %vector.body ]
  %vec.phi24 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %15, %vector.body ]
  %4 = getelementptr inbounds nuw float, ptr %a.0, i64 %index
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %wide.load = load <4 x float>, ptr %4, align 4
  %wide.load25 = load <4 x float>, ptr %5, align 4
  %6 = getelementptr inbounds nuw float, ptr %b.0, i64 %index
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %wide.load26 = load <4 x float>, ptr %6, align 4
  %wide.load27 = load <4 x float>, ptr %7, align 4
  %8 = fsub <4 x float> %wide.load, %wide.load26
  %9 = fsub <4 x float> %wide.load25, %wide.load27
  %10 = call <4 x float> @llvm.fabs.v4f32(<4 x float> %8)
  %11 = call <4 x float> @llvm.fabs.v4f32(<4 x float> %9)
  %12 = call <4 x i32> @llvm.fptosi.sat.v4i32.v4f32(<4 x float> %10)
  %13 = call <4 x i32> @llvm.fptosi.sat.v4i32.v4f32(<4 x float> %11)
  %14 = add <4 x i32> %12, %vec.phi
  %15 = add <4 x i32> %13, %vec.phi24
  %index.next = add nuw i64 %index, 8
  %16 = icmp eq i64 %index.next, %n.vec
  br i1 %16, label %middle.block, label %vector.body, !llvm.loop !2491

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %15, %14
  %17 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  br label %bb6.preheader28

bb6.preheader28:                                  ; preds = %bb6.preheader, %middle.block
  %result.sroa.0.018.ph = phi i32 [ 0, %bb6.preheader ], [ %17, %middle.block ]
  %iter.sroa.0.017.ph = phi i64 [ 0, %bb6.preheader ], [ %n.vec, %middle.block ]
  br label %bb6

bb7:                                              ; preds = %bb5, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hd7181ff24b95d99dE.exit"
  %result.sroa.0.0.lcssa = phi i32 [ 0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hd7181ff24b95d99dE.exit" ], [ %22, %bb5 ]
  ret i32 %result.sroa.0.0.lcssa

bb6:                                              ; preds = %bb6.preheader28, %bb5
  %result.sroa.0.018 = phi i32 [ %22, %bb5 ], [ %result.sroa.0.018.ph, %bb6.preheader28 ]
  %iter.sroa.0.017 = phi i64 [ %18, %bb5 ], [ %iter.sroa.0.017.ph, %bb6.preheader28 ]
  %18 = add nuw nsw i64 %iter.sroa.0.017, 1
  %exitcond.not = icmp eq i64 %iter.sroa.0.017, %a.1
  br i1 %exitcond.not, label %panic, label %bb4

bb4:                                              ; preds = %bb6
  %exitcond21.not = icmp eq i64 %iter.sroa.0.017, %b.1
  br i1 %exitcond21.not, label %panic2, label %bb5

panic:                                            ; preds = %bb6
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %a.1, i64 noundef %a.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_bb80c4294bf98485d1cae0b45be62c99) #18
  unreachable

bb5:                                              ; preds = %bb4
  %19 = getelementptr inbounds nuw float, ptr %a.0, i64 %iter.sroa.0.017
  %_12 = load float, ptr %19, align 4, !noundef !18
  %20 = getelementptr inbounds nuw float, ptr %b.0, i64 %iter.sroa.0.017
  %_15 = load float, ptr %20, align 4, !noundef !18
  %_11 = fsub float %_12, %_15
  %21 = call float @llvm.fabs.f32(float %_11)
  %_9 = call i32 @llvm.fptosi.sat.i32.f32(float %21)
  %22 = add i32 %_9, %result.sroa.0.018
  %exitcond22.not = icmp eq i64 %18, %iter1
  br i1 %exitcond22.not, label %bb7, label %bb6, !llvm.loop !2492

panic2:                                           ; preds = %bb4
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %b.1, i64 noundef %b.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_f4ef7df7705ab5192cda3ed35c9cf9c8) #18
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2493)
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %compare.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2496)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !2493
  store ptr %compare.i, ptr %is_less.i.i, align 8, !noalias !2499
  %b.i.i = icmp samesign ult i64 %arr.1, 2
  br i1 %b.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h66fdb4fea63614c6E.exit", label %bb7.i.i, !prof !2483

bb7.i.i:                                          ; preds = %start
  %b1.i.i = icmp samesign ult i64 %arr.1, 21
  br i1 %b1.i.i, label %bb9.i.i, label %bb10.i.i, !prof !2483

bb10.i.i:                                         ; preds = %bb7.i.i
; call core::slice::sort::stable::driftsort_main
  call void @_ZN4core5slice4sort6stable14driftsort_main17h0c6f5cb65c6269aaE(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less.i.i)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h66fdb4fea63614c6E.exit"

bb9.i.i:                                          ; preds = %bb7.i.i
  %v_end.idx.i.i.i = shl nuw nsw i64 %arr.1, 2
  %v_end.i.i.i = getelementptr inbounds nuw i8, ptr %arr.0, i64 %v_end.idx.i.i.i
  %tail.sroa.0.01.i.i.i = getelementptr inbounds nuw i8, ptr %arr.0, i64 4
  %0 = and i64 %arr.1, 1
  %lcmp.mod.not.not = icmp eq i64 %0, 0
  br i1 %lcmp.mod.not.not, label %bb5.i.i.i.prol, label %bb5.i.i.i.prol.loopexit

bb5.i.i.i.prol:                                   ; preds = %bb9.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2501)
  call void @llvm.experimental.noalias.scope.decl(metadata !2504)
  call void @llvm.experimental.noalias.scope.decl(metadata !2506)
  call void @llvm.experimental.noalias.scope.decl(metadata !2509)
  call void @llvm.experimental.noalias.scope.decl(metadata !2511)
  call void @llvm.experimental.noalias.scope.decl(metadata !2514)
  %_3.i.i.i.i.i.i.i.prol = load i32, ptr %tail.sroa.0.01.i.i.i, align 4, !alias.scope !2516, !noalias !2519, !noundef !18
  %_4.i.i.i.i.i.i.i.prol = load i32, ptr %arr.0, align 4, !alias.scope !2520, !noalias !2521, !noundef !18
  %_0.i.i.i.i.i.prol = icmp slt i32 %_3.i.i.i.i.i.i.i.prol, %_4.i.i.i.i.i.i.i.prol
  br i1 %_0.i.i.i.i.i.prol, label %bb4.i.i.i.i.prol, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h95ccd783a40617a3E.exit.i.i.i.prol

bb4.i.i.i.i.prol:                                 ; preds = %bb5.i.i.i.prol, %bb7.i.i.i.i.prol
  %1 = phi i32 [ %_4.i.i.i2.i.i.i.i.prol, %bb7.i.i.i.i.prol ], [ %_4.i.i.i.i.i.i.i.prol, %bb5.i.i.i.prol ]
  %gap_guard.sroa.5.0.i.i.i.i.prol = phi ptr [ %sift.sroa.0.0.i.i.i.i.prol, %bb7.i.i.i.i.prol ], [ %tail.sroa.0.01.i.i.i, %bb5.i.i.i.prol ]
  %sift.sroa.0.0.i.i.i.i.prol = phi ptr [ %2, %bb7.i.i.i.i.prol ], [ %arr.0, %bb5.i.i.i.prol ]
  store i32 %1, ptr %gap_guard.sroa.5.0.i.i.i.i.prol, align 4, !alias.scope !2522, !noalias !2523
  %_18.i.i.i.i.prol = icmp eq ptr %sift.sroa.0.0.i.i.i.i.prol, %arr.0
  br i1 %_18.i.i.i.i.prol, label %bb10.i.i.i.i.prol, label %bb7.i.i.i.i.prol

bb7.i.i.i.i.prol:                                 ; preds = %bb4.i.i.i.i.prol
  %2 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.i.prol, i64 -4
  %_4.i.i.i2.i.i.i.i.prol = load i32, ptr %2, align 4, !alias.scope !2524, !noalias !2531, !noundef !18
  %_0.i3.i.i.i.i.prol = icmp slt i32 %_3.i.i.i.i.i.i.i.prol, %_4.i.i.i2.i.i.i.i.prol
  br i1 %_0.i3.i.i.i.i.prol, label %bb4.i.i.i.i.prol, label %bb10.i.i.i.i.prol

bb10.i.i.i.i.prol:                                ; preds = %bb7.i.i.i.i.prol, %bb4.i.i.i.i.prol
  %sift.sroa.0.0.i.lcssa.i.i.i.prol = phi ptr [ %sift.sroa.0.0.i.i.i.i.prol, %bb7.i.i.i.i.prol ], [ %arr.0, %bb4.i.i.i.i.prol ]
  store i32 %_3.i.i.i.i.i.i.i.prol, ptr %sift.sroa.0.0.i.lcssa.i.i.i.prol, align 4, !alias.scope !2522, !noalias !2535
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h95ccd783a40617a3E.exit.i.i.i.prol

_ZN4core5slice4sort6shared9smallsort11insert_tail17h95ccd783a40617a3E.exit.i.i.i.prol: ; preds = %bb10.i.i.i.i.prol, %bb5.i.i.i.prol
  %tail.sroa.0.0.i.i.i.prol = getelementptr inbounds nuw i8, ptr %arr.0, i64 8
  br label %bb5.i.i.i.prol.loopexit

bb5.i.i.i.prol.loopexit:                          ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h95ccd783a40617a3E.exit.i.i.i.prol, %bb9.i.i
  %tail.sroa.0.04.i.i.i.unr = phi ptr [ %tail.sroa.0.01.i.i.i, %bb9.i.i ], [ %tail.sroa.0.0.i.i.i.prol, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h95ccd783a40617a3E.exit.i.i.i.prol ]
  %v.0.pn3.i.i.i.unr = phi ptr [ %arr.0, %bb9.i.i ], [ %tail.sroa.0.01.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h95ccd783a40617a3E.exit.i.i.i.prol ]
  %3 = icmp eq i64 %arr.1, 2
  br i1 %3, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h66fdb4fea63614c6E.exit", label %bb5.i.i.i

bb5.i.i.i:                                        ; preds = %bb5.i.i.i.prol.loopexit, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h95ccd783a40617a3E.exit.i.i.i.1
  %tail.sroa.0.04.i.i.i = phi ptr [ %tail.sroa.0.0.i.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h95ccd783a40617a3E.exit.i.i.i.1 ], [ %tail.sroa.0.04.i.i.i.unr, %bb5.i.i.i.prol.loopexit ]
  %v.0.pn3.i.i.i = phi ptr [ %tail.sroa.0.0.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h95ccd783a40617a3E.exit.i.i.i.1 ], [ %v.0.pn3.i.i.i.unr, %bb5.i.i.i.prol.loopexit ]
  call void @llvm.experimental.noalias.scope.decl(metadata !2501)
  call void @llvm.experimental.noalias.scope.decl(metadata !2504)
  call void @llvm.experimental.noalias.scope.decl(metadata !2506)
  call void @llvm.experimental.noalias.scope.decl(metadata !2509)
  call void @llvm.experimental.noalias.scope.decl(metadata !2511)
  call void @llvm.experimental.noalias.scope.decl(metadata !2514)
  %_3.i.i.i.i.i.i.i = load i32, ptr %tail.sroa.0.04.i.i.i, align 4, !alias.scope !2516, !noalias !2519, !noundef !18
  %_4.i.i.i.i.i.i.i = load i32, ptr %v.0.pn3.i.i.i, align 4, !alias.scope !2520, !noalias !2521, !noundef !18
  %_0.i.i.i.i.i = icmp slt i32 %_3.i.i.i.i.i.i.i, %_4.i.i.i.i.i.i.i
  br i1 %_0.i.i.i.i.i, label %bb4.i.i.i.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h95ccd783a40617a3E.exit.i.i.i

bb4.i.i.i.i:                                      ; preds = %bb5.i.i.i, %bb7.i.i.i.i
  %4 = phi i32 [ %_4.i.i.i2.i.i.i.i, %bb7.i.i.i.i ], [ %_4.i.i.i.i.i.i.i, %bb5.i.i.i ]
  %gap_guard.sroa.5.0.i.i.i.i = phi ptr [ %sift.sroa.0.0.i.i.i.i, %bb7.i.i.i.i ], [ %tail.sroa.0.04.i.i.i, %bb5.i.i.i ]
  %sift.sroa.0.0.i.i.i.i = phi ptr [ %5, %bb7.i.i.i.i ], [ %v.0.pn3.i.i.i, %bb5.i.i.i ]
  store i32 %4, ptr %gap_guard.sroa.5.0.i.i.i.i, align 4, !alias.scope !2522, !noalias !2523
  %_18.i.i.i.i = icmp eq ptr %sift.sroa.0.0.i.i.i.i, %arr.0
  br i1 %_18.i.i.i.i, label %bb10.i.i.i.i, label %bb7.i.i.i.i

bb7.i.i.i.i:                                      ; preds = %bb4.i.i.i.i
  %5 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.i, i64 -4
  %_4.i.i.i2.i.i.i.i = load i32, ptr %5, align 4, !alias.scope !2524, !noalias !2531, !noundef !18
  %_0.i3.i.i.i.i = icmp slt i32 %_3.i.i.i.i.i.i.i, %_4.i.i.i2.i.i.i.i
  br i1 %_0.i3.i.i.i.i, label %bb4.i.i.i.i, label %bb10.i.i.i.i

bb10.i.i.i.i:                                     ; preds = %bb7.i.i.i.i, %bb4.i.i.i.i
  %sift.sroa.0.0.i.lcssa.i.i.i = phi ptr [ %sift.sroa.0.0.i.i.i.i, %bb7.i.i.i.i ], [ %arr.0, %bb4.i.i.i.i ]
  store i32 %_3.i.i.i.i.i.i.i, ptr %sift.sroa.0.0.i.lcssa.i.i.i, align 4, !alias.scope !2522, !noalias !2535
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h95ccd783a40617a3E.exit.i.i.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h95ccd783a40617a3E.exit.i.i.i: ; preds = %bb10.i.i.i.i, %bb5.i.i.i
  %tail.sroa.0.0.i.i.i = getelementptr inbounds nuw i8, ptr %tail.sroa.0.04.i.i.i, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !2540)
  call void @llvm.experimental.noalias.scope.decl(metadata !2542)
  call void @llvm.experimental.noalias.scope.decl(metadata !2544)
  call void @llvm.experimental.noalias.scope.decl(metadata !2546)
  call void @llvm.experimental.noalias.scope.decl(metadata !2548)
  call void @llvm.experimental.noalias.scope.decl(metadata !2550)
  %_3.i.i.i.i.i.i.i.1 = load i32, ptr %tail.sroa.0.0.i.i.i, align 4, !alias.scope !2552, !noalias !2553, !noundef !18
  %_4.i.i.i.i.i.i.i.1 = load i32, ptr %tail.sroa.0.04.i.i.i, align 4, !alias.scope !2554, !noalias !2555, !noundef !18
  %_0.i.i.i.i.i.1 = icmp slt i32 %_3.i.i.i.i.i.i.i.1, %_4.i.i.i.i.i.i.i.1
  br i1 %_0.i.i.i.i.i.1, label %bb4.i.i.i.i.1, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h95ccd783a40617a3E.exit.i.i.i.1

bb4.i.i.i.i.1:                                    ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h95ccd783a40617a3E.exit.i.i.i, %bb7.i.i.i.i.1
  %6 = phi i32 [ %_4.i.i.i2.i.i.i.i.1, %bb7.i.i.i.i.1 ], [ %_4.i.i.i.i.i.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h95ccd783a40617a3E.exit.i.i.i ]
  %gap_guard.sroa.5.0.i.i.i.i.1 = phi ptr [ %sift.sroa.0.0.i.i.i.i.1, %bb7.i.i.i.i.1 ], [ %tail.sroa.0.0.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h95ccd783a40617a3E.exit.i.i.i ]
  %sift.sroa.0.0.i.i.i.i.1 = phi ptr [ %7, %bb7.i.i.i.i.1 ], [ %tail.sroa.0.04.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h95ccd783a40617a3E.exit.i.i.i ]
  store i32 %6, ptr %gap_guard.sroa.5.0.i.i.i.i.1, align 4, !alias.scope !2522, !noalias !2523
  %_18.i.i.i.i.1 = icmp eq ptr %sift.sroa.0.0.i.i.i.i.1, %arr.0
  br i1 %_18.i.i.i.i.1, label %bb10.i.i.i.i.1, label %bb7.i.i.i.i.1

bb7.i.i.i.i.1:                                    ; preds = %bb4.i.i.i.i.1
  %7 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.i.1, i64 -4
  %_4.i.i.i2.i.i.i.i.1 = load i32, ptr %7, align 4, !alias.scope !2524, !noalias !2531, !noundef !18
  %_0.i3.i.i.i.i.1 = icmp slt i32 %_3.i.i.i.i.i.i.i.1, %_4.i.i.i2.i.i.i.i.1
  br i1 %_0.i3.i.i.i.i.1, label %bb4.i.i.i.i.1, label %bb10.i.i.i.i.1

bb10.i.i.i.i.1:                                   ; preds = %bb7.i.i.i.i.1, %bb4.i.i.i.i.1
  %sift.sroa.0.0.i.lcssa.i.i.i.1 = phi ptr [ %sift.sroa.0.0.i.i.i.i.1, %bb7.i.i.i.i.1 ], [ %arr.0, %bb4.i.i.i.i.1 ]
  store i32 %_3.i.i.i.i.i.i.i.1, ptr %sift.sroa.0.0.i.lcssa.i.i.i.1, align 4, !alias.scope !2522, !noalias !2535
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h95ccd783a40617a3E.exit.i.i.i.1

_ZN4core5slice4sort6shared9smallsort11insert_tail17h95ccd783a40617a3E.exit.i.i.i.1: ; preds = %bb10.i.i.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h95ccd783a40617a3E.exit.i.i.i
  %tail.sroa.0.0.i.i.i.1 = getelementptr inbounds nuw i8, ptr %tail.sroa.0.04.i.i.i, i64 8
  %_11.not.i.i.i.1 = icmp eq ptr %tail.sroa.0.0.i.i.i.1, %v_end.i.i.i
  br i1 %_11.not.i.i.i.1, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h66fdb4fea63614c6E.exit", label %bb5.i.i.i

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h66fdb4fea63614c6E.exit": ; preds = %bb5.i.i.i.prol.loopexit, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h95ccd783a40617a3E.exit.i.i.i.1, %start, %bb10.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !2493
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
declare float @llvm.fabs.f32(float) #12

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
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.fptosi.sat.v4i32.v4f32(<4 x float>) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #17

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
!4 = distinct !{!4, !5, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %a"}
!5 = distinct !{!5, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE"}
!6 = !{!7}
!7 = distinct !{!7, !5, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %b"}
!8 = !{!9}
!9 = distinct !{!9, !10, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %a"}
!10 = distinct !{!10, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E"}
!11 = !{!12}
!12 = distinct !{!12, !13, !"_ZN4core5slice4sort6shared5pivot7median317h997f2f4aad5b9139E: %c"}
!13 = distinct !{!13, !"_ZN4core5slice4sort6shared5pivot7median317h997f2f4aad5b9139E"}
!14 = !{!15}
!15 = distinct !{!15, !10, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %b"}
!16 = !{!9, !4}
!17 = !{!15, !7, !12}
!18 = !{}
!19 = !{!15, !7}
!20 = !{!9, !4, !12}
!21 = !{!"branch_weights", i32 1, i32 4001}
!22 = !{!9, !15, !4, !7, !12}
!23 = !{!24}
!24 = distinct !{!24, !25, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %b"}
!25 = distinct !{!25, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE"}
!26 = !{!27}
!27 = distinct !{!27, !28, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %b"}
!28 = distinct !{!28, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E"}
!29 = !{!27, !24}
!30 = !{!31, !32}
!31 = distinct !{!31, !28, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %a"}
!32 = distinct !{!32, !25, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %a"}
!33 = !{!31, !27, !32, !24}
!34 = !{!35, !37, !38, !40}
!35 = distinct !{!35, !36, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %a"}
!36 = distinct !{!36, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E"}
!37 = distinct !{!37, !36, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %b"}
!38 = distinct !{!38, !39, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %a"}
!39 = distinct !{!39, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE"}
!40 = distinct !{!40, !39, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %b"}
!41 = !{!42}
!42 = distinct !{!42, !43, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!43 = distinct !{!43, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!44 = !{!45}
!45 = distinct !{!45, !43, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!46 = !{!47}
!47 = distinct !{!47, !48, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!48 = distinct !{!48, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!49 = !{!50}
!50 = distinct !{!50, !51, !"_ZN4core5slice4sort6shared5pivot7median317h65cba05cf823dac8E: %c"}
!51 = distinct !{!51, !"_ZN4core5slice4sort6shared5pivot7median317h65cba05cf823dac8E"}
!52 = !{!53}
!53 = distinct !{!53, !48, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
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
!66 = distinct !{!66, !67, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!67 = distinct !{!67, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!68 = distinct !{!68, !69, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!69 = distinct !{!69, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!70 = !{!71, !72, !73}
!71 = distinct !{!71, !65, !"cmpfunc: %a"}
!72 = distinct !{!72, !67, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!73 = distinct !{!73, !69, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!74 = !{!75}
!75 = distinct !{!75, !76, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %a"}
!76 = distinct !{!76, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE"}
!77 = !{!78}
!78 = distinct !{!78, !76, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %b"}
!79 = !{!80}
!80 = distinct !{!80, !81, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %a"}
!81 = distinct !{!81, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E"}
!82 = !{!83}
!83 = distinct !{!83, !84, !"_ZN4core5slice4sort6shared5pivot7median317hfc7ca460ee81ac1fE: %c"}
!84 = distinct !{!84, !"_ZN4core5slice4sort6shared5pivot7median317hfc7ca460ee81ac1fE"}
!85 = !{!86}
!86 = distinct !{!86, !81, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %b"}
!87 = !{!80, !75}
!88 = !{!86, !78, !83}
!89 = !{!86, !78}
!90 = !{!80, !75, !83}
!91 = !{!80, !86, !75, !78, !83}
!92 = !{!93}
!93 = distinct !{!93, !94, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %b"}
!94 = distinct !{!94, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE"}
!95 = !{!96}
!96 = distinct !{!96, !97, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %b"}
!97 = distinct !{!97, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E"}
!98 = !{!96, !93}
!99 = !{!100, !101}
!100 = distinct !{!100, !97, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %a"}
!101 = distinct !{!101, !94, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %a"}
!102 = !{!100, !96, !101, !93}
!103 = !{!104, !106, !107, !109}
!104 = distinct !{!104, !105, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %a"}
!105 = distinct !{!105, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E"}
!106 = distinct !{!106, !105, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %b"}
!107 = distinct !{!107, !108, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %a"}
!108 = distinct !{!108, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE"}
!109 = distinct !{!109, !108, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %b"}
!110 = !{!111}
!111 = distinct !{!111, !112, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %a"}
!112 = distinct !{!112, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE"}
!113 = !{!114}
!114 = distinct !{!114, !112, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %b"}
!115 = !{!116}
!116 = distinct !{!116, !117, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %a"}
!117 = distinct !{!117, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E"}
!118 = !{!119}
!119 = distinct !{!119, !117, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %b"}
!120 = !{!116, !111}
!121 = !{!119, !114}
!122 = !{!116, !119, !111, !114}
!123 = !{!124}
!124 = distinct !{!124, !125, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %a"}
!125 = distinct !{!125, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE"}
!126 = !{!127}
!127 = distinct !{!127, !125, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %b"}
!128 = !{!129}
!129 = distinct !{!129, !130, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %a"}
!130 = distinct !{!130, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E"}
!131 = !{!132}
!132 = distinct !{!132, !130, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %b"}
!133 = !{!129, !124}
!134 = !{!132, !127}
!135 = !{!129, !132, !124, !127}
!136 = !{!137}
!137 = distinct !{!137, !138, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %a"}
!138 = distinct !{!138, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE"}
!139 = !{!140}
!140 = distinct !{!140, !138, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %b"}
!141 = !{!142}
!142 = distinct !{!142, !143, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %a"}
!143 = distinct !{!143, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E"}
!144 = !{!145}
!145 = distinct !{!145, !143, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %b"}
!146 = !{!142, !137}
!147 = !{!145, !140}
!148 = !{!142, !145, !137, !140}
!149 = !{!150}
!150 = distinct !{!150, !151, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %a"}
!151 = distinct !{!151, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE"}
!152 = !{!153}
!153 = distinct !{!153, !151, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %b"}
!154 = !{!155}
!155 = distinct !{!155, !156, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %a"}
!156 = distinct !{!156, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E"}
!157 = !{!158}
!158 = distinct !{!158, !156, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %b"}
!159 = !{!155, !150}
!160 = !{!158, !153}
!161 = !{!155, !158, !150, !153}
!162 = !{!163}
!163 = distinct !{!163, !164, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %a"}
!164 = distinct !{!164, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE"}
!165 = !{!166}
!166 = distinct !{!166, !164, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %b"}
!167 = !{!168}
!168 = distinct !{!168, !169, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %a"}
!169 = distinct !{!169, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E"}
!170 = !{!171}
!171 = distinct !{!171, !169, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %b"}
!172 = !{!168, !163}
!173 = !{!171, !166}
!174 = !{!168, !171, !163, !166}
!175 = !{!176}
!176 = distinct !{!176, !177, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %a"}
!177 = distinct !{!177, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE"}
!178 = !{!179}
!179 = distinct !{!179, !177, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %b"}
!180 = !{!181}
!181 = distinct !{!181, !182, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %a"}
!182 = distinct !{!182, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E"}
!183 = !{!184}
!184 = distinct !{!184, !182, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %b"}
!185 = !{!181, !176}
!186 = !{!184, !179}
!187 = !{!181, !184, !176, !179}
!188 = !{!189}
!189 = distinct !{!189, !190, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %a"}
!190 = distinct !{!190, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE"}
!191 = !{!192}
!192 = distinct !{!192, !190, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %b"}
!193 = !{!194}
!194 = distinct !{!194, !195, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %a"}
!195 = distinct !{!195, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E"}
!196 = !{!197}
!197 = distinct !{!197, !195, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %b"}
!198 = !{!194, !189}
!199 = !{!197, !192}
!200 = !{!194, !197, !189, !192}
!201 = !{!202}
!202 = distinct !{!202, !203, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %a"}
!203 = distinct !{!203, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE"}
!204 = !{!205}
!205 = distinct !{!205, !203, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %b"}
!206 = !{!207}
!207 = distinct !{!207, !208, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %a"}
!208 = distinct !{!208, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E"}
!209 = !{!210}
!210 = distinct !{!210, !208, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %b"}
!211 = !{!207, !202}
!212 = !{!210, !205}
!213 = !{!207, !210, !202, !205}
!214 = !{!215}
!215 = distinct !{!215, !216, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %a"}
!216 = distinct !{!216, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE"}
!217 = !{!218}
!218 = distinct !{!218, !216, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %b"}
!219 = !{!220}
!220 = distinct !{!220, !221, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %a"}
!221 = distinct !{!221, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E"}
!222 = !{!223}
!223 = distinct !{!223, !221, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %b"}
!224 = !{!220, !215}
!225 = !{!223, !218}
!226 = !{!220, !223, !215, !218}
!227 = !{!228}
!228 = distinct !{!228, !229, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %a"}
!229 = distinct !{!229, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE"}
!230 = !{!231}
!231 = distinct !{!231, !229, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %b"}
!232 = !{!233}
!233 = distinct !{!233, !234, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %a"}
!234 = distinct !{!234, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E"}
!235 = !{!236}
!236 = distinct !{!236, !234, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %b"}
!237 = !{!233, !228}
!238 = !{!236, !231}
!239 = !{!233, !236, !228, !231}
!240 = !{!241}
!241 = distinct !{!241, !242, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17ha5355d97ee5c682eE: %v.0"}
!242 = distinct !{!242, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17ha5355d97ee5c682eE"}
!243 = !{!244}
!244 = distinct !{!244, !245, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %a"}
!245 = distinct !{!245, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE"}
!246 = !{!247}
!247 = distinct !{!247, !245, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %b"}
!248 = !{!249}
!249 = distinct !{!249, !250, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %a"}
!250 = distinct !{!250, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E"}
!251 = !{!252}
!252 = distinct !{!252, !253, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h40ab9d58e6caa1aeE: %_0"}
!253 = distinct !{!253, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h40ab9d58e6caa1aeE"}
!254 = !{!255}
!255 = distinct !{!255, !250, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %b"}
!256 = !{!249, !244, !241}
!257 = !{!255, !247, !252}
!258 = !{!255, !247, !241}
!259 = !{!249, !244, !252}
!260 = !{!249, !255, !244, !247, !252, !241}
!261 = !{!252, !262}
!262 = distinct !{!262, !253, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h40ab9d58e6caa1aeE: %is_less"}
!263 = !{!252, !262, !241}
!264 = !{!265}
!265 = distinct !{!265, !266, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %a"}
!266 = distinct !{!266, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE"}
!267 = !{!268}
!268 = distinct !{!268, !266, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %b"}
!269 = !{!270}
!270 = distinct !{!270, !271, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %a"}
!271 = distinct !{!271, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E"}
!272 = !{!273}
!273 = distinct !{!273, !274, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h04b86c1be3dd6e1cE: %_0"}
!274 = distinct !{!274, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h04b86c1be3dd6e1cE"}
!275 = !{!276}
!276 = distinct !{!276, !271, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %b"}
!277 = !{!270, !265, !241}
!278 = !{!276, !268, !273}
!279 = !{!276, !268, !241}
!280 = !{!270, !265, !273}
!281 = !{!270, !276, !265, !268, !273, !241}
!282 = !{!273, !283}
!283 = distinct !{!283, !274, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h04b86c1be3dd6e1cE: %is_less"}
!284 = !{!273, !283, !241}
!285 = !{!286}
!286 = distinct !{!286, !245, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %a:It1"}
!287 = !{!288}
!288 = distinct !{!288, !245, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %b:It1"}
!289 = !{!290}
!290 = distinct !{!290, !250, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %a:It1"}
!291 = !{!292}
!292 = distinct !{!292, !250, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %b:It1"}
!293 = !{!290, !286, !241}
!294 = !{!292, !288, !252}
!295 = !{!292, !288, !241}
!296 = !{!290, !286, !252}
!297 = !{!298}
!298 = distinct !{!298, !266, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %a:It1"}
!299 = !{!300}
!300 = distinct !{!300, !266, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %b:It1"}
!301 = !{!302}
!302 = distinct !{!302, !271, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %a:It1"}
!303 = !{!304}
!304 = distinct !{!304, !271, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %b:It1"}
!305 = !{!302, !298, !241}
!306 = !{!304, !300, !273}
!307 = !{!304, !300, !241}
!308 = !{!302, !298, !273}
!309 = !{!310}
!310 = distinct !{!310, !245, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %a:It2"}
!311 = !{!312}
!312 = distinct !{!312, !245, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %b:It2"}
!313 = !{!314}
!314 = distinct !{!314, !250, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %a:It2"}
!315 = !{!316}
!316 = distinct !{!316, !250, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %b:It2"}
!317 = !{!314, !310, !241}
!318 = !{!316, !312, !252}
!319 = !{!316, !312, !241}
!320 = !{!314, !310, !252}
!321 = !{!322}
!322 = distinct !{!322, !266, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %a:It2"}
!323 = !{!324}
!324 = distinct !{!324, !266, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %b:It2"}
!325 = !{!326}
!326 = distinct !{!326, !271, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %a:It2"}
!327 = !{!328}
!328 = distinct !{!328, !271, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %b:It2"}
!329 = !{!326, !322, !241}
!330 = !{!328, !324, !273}
!331 = !{!328, !324, !241}
!332 = !{!326, !322, !273}
!333 = !{!334}
!334 = distinct !{!334, !245, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %a:It3"}
!335 = !{!336}
!336 = distinct !{!336, !245, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %b:It3"}
!337 = !{!338}
!338 = distinct !{!338, !250, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %a:It3"}
!339 = !{!340}
!340 = distinct !{!340, !250, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %b:It3"}
!341 = !{!338, !334, !241}
!342 = !{!340, !336, !252}
!343 = !{!340, !336, !241}
!344 = !{!338, !334, !252}
!345 = !{!346}
!346 = distinct !{!346, !266, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %a:It3"}
!347 = !{!348}
!348 = distinct !{!348, !266, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %b:It3"}
!349 = !{!350}
!350 = distinct !{!350, !271, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %a:It3"}
!351 = !{!352}
!352 = distinct !{!352, !271, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %b:It3"}
!353 = !{!350, !346, !241}
!354 = !{!352, !348, !273}
!355 = !{!352, !348, !241}
!356 = !{!350, !346, !273}
!357 = !{!"branch_weights", i32 4001, i32 4000000}
!358 = !{!359}
!359 = distinct !{!359, !360, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h8fd5afa469382f2aE: %v.0"}
!360 = distinct !{!360, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h8fd5afa469382f2aE"}
!361 = !{!362}
!362 = distinct !{!362, !363, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %a"}
!363 = distinct !{!363, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE"}
!364 = !{!365}
!365 = distinct !{!365, !363, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %b"}
!366 = !{!367}
!367 = distinct !{!367, !368, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %a"}
!368 = distinct !{!368, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E"}
!369 = !{!370}
!370 = distinct !{!370, !371, !"_ZN4core5slice4sort6shared9smallsort8merge_up17ha5340aea9223a24cE: %_0"}
!371 = distinct !{!371, !"_ZN4core5slice4sort6shared9smallsort8merge_up17ha5340aea9223a24cE"}
!372 = !{!373}
!373 = distinct !{!373, !368, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %b"}
!374 = !{!367, !362, !359}
!375 = !{!373, !365, !370}
!376 = !{!373, !365, !359}
!377 = !{!367, !362, !370}
!378 = !{!367, !373, !362, !365, !370, !359}
!379 = !{!370, !380}
!380 = distinct !{!380, !371, !"_ZN4core5slice4sort6shared9smallsort8merge_up17ha5340aea9223a24cE: %is_less"}
!381 = !{!370, !380, !359}
!382 = !{!383}
!383 = distinct !{!383, !384, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %a"}
!384 = distinct !{!384, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE"}
!385 = !{!386}
!386 = distinct !{!386, !384, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %b"}
!387 = !{!388}
!388 = distinct !{!388, !389, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %a"}
!389 = distinct !{!389, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E"}
!390 = !{!391}
!391 = distinct !{!391, !392, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h568dd42a24d04b6bE: %_0"}
!392 = distinct !{!392, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h568dd42a24d04b6bE"}
!393 = !{!394}
!394 = distinct !{!394, !389, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %b"}
!395 = !{!388, !383, !359}
!396 = !{!394, !386, !391}
!397 = !{!394, !386, !359}
!398 = !{!388, !383, !391}
!399 = !{!388, !394, !383, !386, !391, !359}
!400 = !{!391, !401}
!401 = distinct !{!401, !392, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h568dd42a24d04b6bE: %is_less"}
!402 = !{!391, !401, !359}
!403 = !{!404}
!404 = distinct !{!404, !363, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %a:It1"}
!405 = !{!406}
!406 = distinct !{!406, !363, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %b:It1"}
!407 = !{!408}
!408 = distinct !{!408, !368, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %a:It1"}
!409 = !{!410}
!410 = distinct !{!410, !368, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %b:It1"}
!411 = !{!408, !404, !359}
!412 = !{!410, !406, !370}
!413 = !{!410, !406, !359}
!414 = !{!408, !404, !370}
!415 = !{!416}
!416 = distinct !{!416, !384, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %a:It1"}
!417 = !{!418}
!418 = distinct !{!418, !384, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %b:It1"}
!419 = !{!420}
!420 = distinct !{!420, !389, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %a:It1"}
!421 = !{!422}
!422 = distinct !{!422, !389, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %b:It1"}
!423 = !{!420, !416, !359}
!424 = !{!422, !418, !391}
!425 = !{!422, !418, !359}
!426 = !{!420, !416, !391}
!427 = !{!428}
!428 = distinct !{!428, !363, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %a:It2"}
!429 = !{!430}
!430 = distinct !{!430, !363, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %b:It2"}
!431 = !{!432}
!432 = distinct !{!432, !368, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %a:It2"}
!433 = !{!434}
!434 = distinct !{!434, !368, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %b:It2"}
!435 = !{!432, !428, !359}
!436 = !{!434, !430, !370}
!437 = !{!434, !430, !359}
!438 = !{!432, !428, !370}
!439 = !{!440}
!440 = distinct !{!440, !384, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %a:It2"}
!441 = !{!442}
!442 = distinct !{!442, !384, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %b:It2"}
!443 = !{!444}
!444 = distinct !{!444, !389, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %a:It2"}
!445 = !{!446}
!446 = distinct !{!446, !389, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %b:It2"}
!447 = !{!444, !440, !359}
!448 = !{!446, !442, !391}
!449 = !{!446, !442, !359}
!450 = !{!444, !440, !391}
!451 = !{!452}
!452 = distinct !{!452, !363, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %a:It3"}
!453 = !{!454}
!454 = distinct !{!454, !363, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %b:It3"}
!455 = !{!456}
!456 = distinct !{!456, !368, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %a:It3"}
!457 = !{!458}
!458 = distinct !{!458, !368, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %b:It3"}
!459 = !{!456, !452, !359}
!460 = !{!458, !454, !370}
!461 = !{!458, !454, !359}
!462 = !{!456, !452, !370}
!463 = !{!464}
!464 = distinct !{!464, !384, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %a:It3"}
!465 = !{!466}
!466 = distinct !{!466, !384, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %b:It3"}
!467 = !{!468}
!468 = distinct !{!468, !389, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %a:It3"}
!469 = !{!470}
!470 = distinct !{!470, !389, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %b:It3"}
!471 = !{!468, !464, !359}
!472 = !{!470, !466, !391}
!473 = !{!470, !466, !359}
!474 = !{!468, !464, !391}
!475 = !{!476}
!476 = distinct !{!476, !477, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!477 = distinct !{!477, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!478 = !{!479}
!479 = distinct !{!479, !477, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!480 = !{!481}
!481 = distinct !{!481, !482, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!482 = distinct !{!482, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!483 = !{!484}
!484 = distinct !{!484, !482, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!485 = !{!486}
!486 = distinct !{!486, !487, !"cmpfunc: %a"}
!487 = distinct !{!487, !"cmpfunc"}
!488 = !{!489}
!489 = distinct !{!489, !487, !"cmpfunc: %b"}
!490 = !{!486, !481, !476}
!491 = !{!489, !484, !479}
!492 = !{!493}
!493 = distinct !{!493, !494, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!494 = distinct !{!494, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!495 = !{!496}
!496 = distinct !{!496, !494, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!497 = !{!498}
!498 = distinct !{!498, !499, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!499 = distinct !{!499, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!500 = !{!501}
!501 = distinct !{!501, !499, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!502 = !{!503}
!503 = distinct !{!503, !504, !"cmpfunc: %a"}
!504 = distinct !{!504, !"cmpfunc"}
!505 = !{!506}
!506 = distinct !{!506, !504, !"cmpfunc: %b"}
!507 = !{!503, !498, !493}
!508 = !{!506, !501, !496}
!509 = !{!510}
!510 = distinct !{!510, !511, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!511 = distinct !{!511, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!512 = !{!513}
!513 = distinct !{!513, !511, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!514 = !{!515}
!515 = distinct !{!515, !516, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!516 = distinct !{!516, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!517 = !{!518}
!518 = distinct !{!518, !516, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!519 = !{!520}
!520 = distinct !{!520, !521, !"cmpfunc: %a"}
!521 = distinct !{!521, !"cmpfunc"}
!522 = !{!523}
!523 = distinct !{!523, !521, !"cmpfunc: %b"}
!524 = !{!520, !515, !510}
!525 = !{!523, !518, !513}
!526 = !{!527}
!527 = distinct !{!527, !528, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!528 = distinct !{!528, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!529 = !{!530}
!530 = distinct !{!530, !528, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!531 = !{!532}
!532 = distinct !{!532, !533, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!533 = distinct !{!533, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!534 = !{!535}
!535 = distinct !{!535, !533, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!536 = !{!537}
!537 = distinct !{!537, !538, !"cmpfunc: %a"}
!538 = distinct !{!538, !"cmpfunc"}
!539 = !{!540}
!540 = distinct !{!540, !538, !"cmpfunc: %b"}
!541 = !{!537, !532, !527}
!542 = !{!540, !535, !530}
!543 = !{!544}
!544 = distinct !{!544, !545, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!545 = distinct !{!545, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!546 = !{!547}
!547 = distinct !{!547, !545, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!548 = !{!549}
!549 = distinct !{!549, !550, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!550 = distinct !{!550, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!551 = !{!552}
!552 = distinct !{!552, !550, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!553 = !{!554}
!554 = distinct !{!554, !555, !"cmpfunc: %a"}
!555 = distinct !{!555, !"cmpfunc"}
!556 = !{!557}
!557 = distinct !{!557, !555, !"cmpfunc: %b"}
!558 = !{!554, !549, !544}
!559 = !{!557, !552, !547}
!560 = !{!561}
!561 = distinct !{!561, !562, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!562 = distinct !{!562, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!563 = !{!564}
!564 = distinct !{!564, !562, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!565 = !{!566}
!566 = distinct !{!566, !567, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!567 = distinct !{!567, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!568 = !{!569}
!569 = distinct !{!569, !567, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!570 = !{!571}
!571 = distinct !{!571, !572, !"cmpfunc: %a"}
!572 = distinct !{!572, !"cmpfunc"}
!573 = !{!574}
!574 = distinct !{!574, !572, !"cmpfunc: %b"}
!575 = !{!571, !566, !561}
!576 = !{!574, !569, !564}
!577 = !{!578}
!578 = distinct !{!578, !579, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!579 = distinct !{!579, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!580 = !{!581}
!581 = distinct !{!581, !579, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!582 = !{!583}
!583 = distinct !{!583, !584, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!584 = distinct !{!584, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!585 = !{!586}
!586 = distinct !{!586, !584, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!587 = !{!588}
!588 = distinct !{!588, !589, !"cmpfunc: %a"}
!589 = distinct !{!589, !"cmpfunc"}
!590 = !{!591}
!591 = distinct !{!591, !589, !"cmpfunc: %b"}
!592 = !{!588, !583, !578}
!593 = !{!591, !586, !581}
!594 = !{!595}
!595 = distinct !{!595, !596, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!596 = distinct !{!596, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!597 = !{!598}
!598 = distinct !{!598, !596, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!599 = !{!600}
!600 = distinct !{!600, !601, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!601 = distinct !{!601, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!602 = !{!603}
!603 = distinct !{!603, !601, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!604 = !{!605}
!605 = distinct !{!605, !606, !"cmpfunc: %a"}
!606 = distinct !{!606, !"cmpfunc"}
!607 = !{!608}
!608 = distinct !{!608, !606, !"cmpfunc: %b"}
!609 = !{!605, !600, !595}
!610 = !{!608, !603, !598}
!611 = !{!612}
!612 = distinct !{!612, !613, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!613 = distinct !{!613, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!614 = !{!615}
!615 = distinct !{!615, !613, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!616 = !{!617}
!617 = distinct !{!617, !618, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!618 = distinct !{!618, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!619 = !{!620}
!620 = distinct !{!620, !618, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!621 = !{!622}
!622 = distinct !{!622, !623, !"cmpfunc: %a"}
!623 = distinct !{!623, !"cmpfunc"}
!624 = !{!625}
!625 = distinct !{!625, !623, !"cmpfunc: %b"}
!626 = !{!622, !617, !612}
!627 = !{!625, !620, !615}
!628 = !{!629}
!629 = distinct !{!629, !630, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!630 = distinct !{!630, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!631 = !{!632}
!632 = distinct !{!632, !630, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!633 = !{!634}
!634 = distinct !{!634, !635, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!635 = distinct !{!635, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!636 = !{!637}
!637 = distinct !{!637, !635, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!638 = !{!639}
!639 = distinct !{!639, !640, !"cmpfunc: %a"}
!640 = distinct !{!640, !"cmpfunc"}
!641 = !{!642}
!642 = distinct !{!642, !640, !"cmpfunc: %b"}
!643 = !{!639, !634, !629}
!644 = !{!642, !637, !632}
!645 = !{!646}
!646 = distinct !{!646, !647, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h88e3c5d50b4d1a5aE: %v.0"}
!647 = distinct !{!647, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h88e3c5d50b4d1a5aE"}
!648 = !{!649, !651, !653, !646}
!649 = distinct !{!649, !650, !"cmpfunc: %b"}
!650 = distinct !{!650, !"cmpfunc"}
!651 = distinct !{!651, !652, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!652 = distinct !{!652, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!653 = distinct !{!653, !654, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!654 = distinct !{!654, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!655 = !{!656, !657, !658, !659}
!656 = distinct !{!656, !650, !"cmpfunc: %a"}
!657 = distinct !{!657, !652, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!658 = distinct !{!658, !654, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!659 = distinct !{!659, !660, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h15546792d4618da6E: %_0"}
!660 = distinct !{!660, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h15546792d4618da6E"}
!661 = !{!659, !662, !646}
!662 = distinct !{!662, !660, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h15546792d4618da6E: %is_less"}
!663 = !{!664, !666, !668, !646}
!664 = distinct !{!664, !665, !"cmpfunc: %b"}
!665 = distinct !{!665, !"cmpfunc"}
!666 = distinct !{!666, !667, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!667 = distinct !{!667, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!668 = distinct !{!668, !669, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!669 = distinct !{!669, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!670 = !{!671, !672, !673, !674}
!671 = distinct !{!671, !665, !"cmpfunc: %a"}
!672 = distinct !{!672, !667, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!673 = distinct !{!673, !669, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!674 = distinct !{!674, !675, !"_ZN4core5slice4sort6shared9smallsort10merge_down17ha9aa82fca9532922E: %_0"}
!675 = distinct !{!675, !"_ZN4core5slice4sort6shared9smallsort10merge_down17ha9aa82fca9532922E"}
!676 = !{!674, !677, !646}
!677 = distinct !{!677, !675, !"_ZN4core5slice4sort6shared9smallsort10merge_down17ha9aa82fca9532922E: %is_less"}
!678 = !{!679}
!679 = distinct !{!679, !654, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a:It1"}
!680 = !{!681}
!681 = distinct !{!681, !654, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b:It1"}
!682 = !{!683}
!683 = distinct !{!683, !652, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0:It1"}
!684 = !{!659}
!685 = !{!686}
!686 = distinct !{!686, !652, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1:It1"}
!687 = !{!688}
!688 = distinct !{!688, !650, !"cmpfunc: %a:It1"}
!689 = !{!690}
!690 = distinct !{!690, !650, !"cmpfunc: %b:It1"}
!691 = !{!688, !683, !679, !646}
!692 = !{!690, !686, !681, !659}
!693 = !{!690, !686, !681, !646}
!694 = !{!688, !683, !679, !659}
!695 = !{!696}
!696 = distinct !{!696, !669, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a:It1"}
!697 = !{!698}
!698 = distinct !{!698, !669, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b:It1"}
!699 = !{!700}
!700 = distinct !{!700, !667, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0:It1"}
!701 = !{!674}
!702 = !{!703}
!703 = distinct !{!703, !667, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1:It1"}
!704 = !{!705}
!705 = distinct !{!705, !665, !"cmpfunc: %a:It1"}
!706 = !{!707}
!707 = distinct !{!707, !665, !"cmpfunc: %b:It1"}
!708 = !{!705, !700, !696, !646}
!709 = !{!707, !703, !698, !674}
!710 = !{!707, !703, !698, !646}
!711 = !{!705, !700, !696, !674}
!712 = !{!713}
!713 = distinct !{!713, !654, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a:It2"}
!714 = !{!715}
!715 = distinct !{!715, !654, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b:It2"}
!716 = !{!717}
!717 = distinct !{!717, !652, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0:It2"}
!718 = !{!719}
!719 = distinct !{!719, !652, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1:It2"}
!720 = !{!721}
!721 = distinct !{!721, !650, !"cmpfunc: %a:It2"}
!722 = !{!723}
!723 = distinct !{!723, !650, !"cmpfunc: %b:It2"}
!724 = !{!721, !717, !713, !646}
!725 = !{!723, !719, !715, !659}
!726 = !{!723, !719, !715, !646}
!727 = !{!721, !717, !713, !659}
!728 = !{!729}
!729 = distinct !{!729, !669, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a:It2"}
!730 = !{!731}
!731 = distinct !{!731, !669, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b:It2"}
!732 = !{!733}
!733 = distinct !{!733, !667, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0:It2"}
!734 = !{!735}
!735 = distinct !{!735, !667, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1:It2"}
!736 = !{!737}
!737 = distinct !{!737, !665, !"cmpfunc: %a:It2"}
!738 = !{!739}
!739 = distinct !{!739, !665, !"cmpfunc: %b:It2"}
!740 = !{!737, !733, !729, !646}
!741 = !{!739, !735, !731, !674}
!742 = !{!739, !735, !731, !646}
!743 = !{!737, !733, !729, !674}
!744 = !{!745}
!745 = distinct !{!745, !654, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a:It3"}
!746 = !{!747}
!747 = distinct !{!747, !654, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b:It3"}
!748 = !{!749}
!749 = distinct !{!749, !652, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0:It3"}
!750 = !{!751}
!751 = distinct !{!751, !652, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1:It3"}
!752 = !{!753}
!753 = distinct !{!753, !650, !"cmpfunc: %a:It3"}
!754 = !{!755}
!755 = distinct !{!755, !650, !"cmpfunc: %b:It3"}
!756 = !{!753, !749, !745, !646}
!757 = !{!755, !751, !747, !659}
!758 = !{!755, !751, !747, !646}
!759 = !{!753, !749, !745, !659}
!760 = !{!761}
!761 = distinct !{!761, !669, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a:It3"}
!762 = !{!763}
!763 = distinct !{!763, !669, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b:It3"}
!764 = !{!765}
!765 = distinct !{!765, !667, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0:It3"}
!766 = !{!767}
!767 = distinct !{!767, !667, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1:It3"}
!768 = !{!769}
!769 = distinct !{!769, !665, !"cmpfunc: %a:It3"}
!770 = !{!771}
!771 = distinct !{!771, !665, !"cmpfunc: %b:It3"}
!772 = !{!769, !765, !761, !646}
!773 = !{!771, !767, !763, !674}
!774 = !{!771, !767, !763, !646}
!775 = !{!769, !765, !761, !674}
!776 = !{!777}
!777 = distinct !{!777, !778, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %a"}
!778 = distinct !{!778, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE"}
!779 = !{!780}
!780 = distinct !{!780, !778, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %b"}
!781 = !{!782}
!782 = distinct !{!782, !783, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %a"}
!783 = distinct !{!783, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E"}
!784 = !{!785}
!785 = distinct !{!785, !783, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %b"}
!786 = !{!782, !777}
!787 = !{!785, !780}
!788 = !{!782, !785, !777, !780}
!789 = !{!790, !792}
!790 = distinct !{!790, !791, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %b"}
!791 = distinct !{!791, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E"}
!792 = distinct !{!792, !793, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %b"}
!793 = distinct !{!793, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE"}
!794 = !{!795, !796}
!795 = distinct !{!795, !791, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %a"}
!796 = distinct !{!796, !793, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %a"}
!797 = !{!798, !800}
!798 = distinct !{!798, !799, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hafc32df0be39b4b3E: %self"}
!799 = distinct !{!799, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hafc32df0be39b4b3E"}
!800 = distinct !{!800, !801, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$f32$GT$$GT$17hd86175c6260a7107E: %_1"}
!801 = distinct !{!801, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$f32$GT$$GT$17hd86175c6260a7107E"}
!802 = !{!803, !805}
!803 = distinct !{!803, !804, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hafc32df0be39b4b3E: %self"}
!804 = distinct !{!804, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hafc32df0be39b4b3E"}
!805 = distinct !{!805, !806, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$f32$GT$$GT$17hd86175c6260a7107E: %_1"}
!806 = distinct !{!806, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$f32$GT$$GT$17hd86175c6260a7107E"}
!807 = !{!808}
!808 = distinct !{!808, !809, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %a"}
!809 = distinct !{!809, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE"}
!810 = !{!811}
!811 = distinct !{!811, !809, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %b"}
!812 = !{!813}
!813 = distinct !{!813, !814, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %a"}
!814 = distinct !{!814, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E"}
!815 = !{!816}
!816 = distinct !{!816, !814, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %b"}
!817 = !{!813, !808}
!818 = !{!816, !811}
!819 = !{!813, !816, !808, !811}
!820 = !{!821, !823}
!821 = distinct !{!821, !822, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %b"}
!822 = distinct !{!822, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E"}
!823 = distinct !{!823, !824, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %b"}
!824 = distinct !{!824, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE"}
!825 = !{!826, !827}
!826 = distinct !{!826, !822, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %a"}
!827 = distinct !{!827, !824, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %a"}
!828 = !{!829, !831}
!829 = distinct !{!829, !830, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hafc32df0be39b4b3E: %self"}
!830 = distinct !{!830, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hafc32df0be39b4b3E"}
!831 = distinct !{!831, !832, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$f32$GT$$GT$17hd86175c6260a7107E: %_1"}
!832 = distinct !{!832, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$f32$GT$$GT$17hd86175c6260a7107E"}
!833 = !{!834, !836}
!834 = distinct !{!834, !835, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hafc32df0be39b4b3E: %self"}
!835 = distinct !{!835, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hafc32df0be39b4b3E"}
!836 = distinct !{!836, !837, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$f32$GT$$GT$17hd86175c6260a7107E: %_1"}
!837 = distinct !{!837, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$f32$GT$$GT$17hd86175c6260a7107E"}
!838 = !{!"branch_weights", i32 2002, i32 2000}
!839 = !{!840, !842}
!840 = distinct !{!840, !841, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h9646500b14017274E: %_0"}
!841 = distinct !{!841, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h9646500b14017274E"}
!842 = distinct !{!842, !843, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17hecd4caf4aa0eb5ebE: %_0"}
!843 = distinct !{!843, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17hecd4caf4aa0eb5ebE"}
!844 = !{!845, !847, !849, !851}
!845 = distinct !{!845, !846, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h7fe8231662206d69E: %self"}
!846 = distinct !{!846, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h7fe8231662206d69E"}
!847 = distinct !{!847, !848, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hca82967d56898dfeE: %self"}
!848 = distinct !{!848, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hca82967d56898dfeE"}
!849 = distinct !{!849, !850, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17h3f1b60277495715eE: %_1"}
!850 = distinct !{!850, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17h3f1b60277495715eE"}
!851 = distinct !{!851, !852, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h270c3a653f656a9aE: %_1"}
!852 = distinct !{!852, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h270c3a653f656a9aE"}
!853 = !{!854, !856, !858, !860}
!854 = distinct !{!854, !855, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h7fe8231662206d69E: %self"}
!855 = distinct !{!855, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h7fe8231662206d69E"}
!856 = distinct !{!856, !857, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hca82967d56898dfeE: %self"}
!857 = distinct !{!857, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hca82967d56898dfeE"}
!858 = distinct !{!858, !859, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17h3f1b60277495715eE: %_1"}
!859 = distinct !{!859, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17h3f1b60277495715eE"}
!860 = distinct !{!860, !861, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h270c3a653f656a9aE: %_1"}
!861 = distinct !{!861, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h270c3a653f656a9aE"}
!862 = !{!863, !865}
!863 = distinct !{!863, !864, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h9646500b14017274E: %_0"}
!864 = distinct !{!864, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h9646500b14017274E"}
!865 = distinct !{!865, !866, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h8984867f4936b1d4E: %_0"}
!866 = distinct !{!866, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h8984867f4936b1d4E"}
!867 = !{!868, !870, !872, !874}
!868 = distinct !{!868, !869, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h7fe8231662206d69E: %self"}
!869 = distinct !{!869, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h7fe8231662206d69E"}
!870 = distinct !{!870, !871, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc4660ce2678abb89E: %self"}
!871 = distinct !{!871, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc4660ce2678abb89E"}
!872 = distinct !{!872, !873, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$f32$GT$$GT$17hcd240ac0a9df0b96E: %_1"}
!873 = distinct !{!873, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$f32$GT$$GT$17hcd240ac0a9df0b96E"}
!874 = distinct !{!874, !875, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17h530879f463edc4aeE: %_1"}
!875 = distinct !{!875, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17h530879f463edc4aeE"}
!876 = !{!877, !879, !881, !883}
!877 = distinct !{!877, !878, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h7fe8231662206d69E: %self"}
!878 = distinct !{!878, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h7fe8231662206d69E"}
!879 = distinct !{!879, !880, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc4660ce2678abb89E: %self"}
!880 = distinct !{!880, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc4660ce2678abb89E"}
!881 = distinct !{!881, !882, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$f32$GT$$GT$17hcd240ac0a9df0b96E: %_1"}
!882 = distinct !{!882, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$f32$GT$$GT$17hcd240ac0a9df0b96E"}
!883 = distinct !{!883, !884, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17h530879f463edc4aeE: %_1"}
!884 = distinct !{!884, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17h530879f463edc4aeE"}
!885 = !{!886, !888}
!886 = distinct !{!886, !887, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h9646500b14017274E: %_0"}
!887 = distinct !{!887, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h9646500b14017274E"}
!888 = distinct !{!888, !889, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h8984867f4936b1d4E: %_0"}
!889 = distinct !{!889, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h8984867f4936b1d4E"}
!890 = !{!891, !893, !895, !897}
!891 = distinct !{!891, !892, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h7fe8231662206d69E: %self"}
!892 = distinct !{!892, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h7fe8231662206d69E"}
!893 = distinct !{!893, !894, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc4660ce2678abb89E: %self"}
!894 = distinct !{!894, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc4660ce2678abb89E"}
!895 = distinct !{!895, !896, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$f32$GT$$GT$17hcd240ac0a9df0b96E: %_1"}
!896 = distinct !{!896, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$f32$GT$$GT$17hcd240ac0a9df0b96E"}
!897 = distinct !{!897, !898, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17h530879f463edc4aeE: %_1"}
!898 = distinct !{!898, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17h530879f463edc4aeE"}
!899 = !{!900, !902, !904, !906}
!900 = distinct !{!900, !901, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h7fe8231662206d69E: %self"}
!901 = distinct !{!901, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h7fe8231662206d69E"}
!902 = distinct !{!902, !903, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc4660ce2678abb89E: %self"}
!903 = distinct !{!903, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc4660ce2678abb89E"}
!904 = distinct !{!904, !905, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$f32$GT$$GT$17hcd240ac0a9df0b96E: %_1"}
!905 = distinct !{!905, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$f32$GT$$GT$17hcd240ac0a9df0b96E"}
!906 = distinct !{!906, !907, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17h530879f463edc4aeE: %_1"}
!907 = distinct !{!907, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17h530879f463edc4aeE"}
!908 = !{!909}
!909 = distinct !{!909, !910, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!910 = distinct !{!910, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!911 = !{!912}
!912 = distinct !{!912, !910, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!913 = !{!914}
!914 = distinct !{!914, !915, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!915 = distinct !{!915, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!916 = !{!917}
!917 = distinct !{!917, !918, !"_ZN4core5slice4sort6stable5drift10create_run17h144ae69255ff16a4E: %scratch.0"}
!918 = distinct !{!918, !"_ZN4core5slice4sort6stable5drift10create_run17h144ae69255ff16a4E"}
!919 = !{!920}
!920 = distinct !{!920, !915, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!921 = !{!922}
!922 = distinct !{!922, !923, !"cmpfunc: %a"}
!923 = distinct !{!923, !"cmpfunc"}
!924 = !{!925}
!925 = distinct !{!925, !923, !"cmpfunc: %b"}
!926 = !{!922, !914, !909}
!927 = !{!925, !920, !912, !917}
!928 = !{!925, !920, !912}
!929 = !{!922, !914, !909, !917}
!930 = !{!931, !933, !935}
!931 = distinct !{!931, !932, !"cmpfunc: %a"}
!932 = distinct !{!932, !"cmpfunc"}
!933 = distinct !{!933, !934, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!934 = distinct !{!934, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!935 = distinct !{!935, !936, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!936 = distinct !{!936, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!937 = !{!938, !939, !940, !917}
!938 = distinct !{!938, !932, !"cmpfunc: %b"}
!939 = distinct !{!939, !934, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!940 = distinct !{!940, !936, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!941 = !{!942, !944, !946}
!942 = distinct !{!942, !943, !"cmpfunc: %a"}
!943 = distinct !{!943, !"cmpfunc"}
!944 = distinct !{!944, !945, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!945 = distinct !{!945, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!946 = distinct !{!946, !947, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!947 = distinct !{!947, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!948 = !{!949, !950, !951, !917}
!949 = distinct !{!949, !943, !"cmpfunc: %b"}
!950 = distinct !{!950, !945, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!951 = distinct !{!951, !947, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!952 = !{!953}
!953 = distinct !{!953, !954, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17h27ebea7ed6a7000bE: %a.0"}
!954 = distinct !{!954, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17h27ebea7ed6a7000bE"}
!955 = !{!917, !956}
!956 = distinct !{!956, !918, !"_ZN4core5slice4sort6stable5drift10create_run17h144ae69255ff16a4E: %is_less"}
!957 = !{!958}
!958 = distinct !{!958, !954, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17h27ebea7ed6a7000bE: %b.0"}
!959 = !{!953, !960}
!960 = distinct !{!960, !961, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hdff15ccb3625ccf3E: %self.0"}
!961 = distinct !{!961, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hdff15ccb3625ccf3E"}
!962 = !{!958, !917, !956}
!963 = !{!958, !960}
!964 = !{!953, !917, !956}
!965 = distinct !{!965, !966, !967}
!966 = !{!"llvm.loop.isvectorized", i32 1}
!967 = !{!"llvm.loop.unroll.runtime.disable"}
!968 = distinct !{!968, !967, !966}
!969 = !{!970}
!970 = distinct !{!970, !971, !"_ZN4core5slice4sort6stable5merge5merge17h9f4203c273633beaE: %v.0"}
!971 = distinct !{!971, !"_ZN4core5slice4sort6stable5merge5merge17h9f4203c273633beaE"}
!972 = !{!973}
!973 = distinct !{!973, !971, !"_ZN4core5slice4sort6stable5merge5merge17h9f4203c273633beaE: %scratch.0"}
!974 = !{!970, !973}
!975 = !{!976}
!976 = distinct !{!976, !977, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!977 = distinct !{!977, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!978 = !{!979}
!979 = distinct !{!979, !977, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!980 = !{!981}
!981 = distinct !{!981, !982, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!982 = distinct !{!982, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!983 = !{!984}
!984 = distinct !{!984, !982, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!985 = !{!986}
!986 = distinct !{!986, !987, !"cmpfunc: %a"}
!987 = distinct !{!987, !"cmpfunc"}
!988 = !{!989}
!989 = distinct !{!989, !987, !"cmpfunc: %b"}
!990 = !{!986, !981, !976, !973}
!991 = !{!989, !984, !979, !992, !970}
!992 = distinct !{!992, !993, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h542e4881ffcd209aE: %self"}
!993 = distinct !{!993, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h542e4881ffcd209aE"}
!994 = !{!989, !984, !979, !970}
!995 = !{!986, !981, !976, !992, !973}
!996 = !{!992, !973}
!997 = !{!998}
!998 = distinct !{!998, !999, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!999 = distinct !{!999, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!1000 = !{!1001}
!1001 = distinct !{!1001, !999, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!1002 = !{!1003}
!1003 = distinct !{!1003, !1004, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!1004 = distinct !{!1004, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!1005 = !{!1006}
!1006 = distinct !{!1006, !1004, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!1007 = !{!1008}
!1008 = distinct !{!1008, !1009, !"cmpfunc: %a"}
!1009 = distinct !{!1009, !"cmpfunc"}
!1010 = !{!1011}
!1011 = distinct !{!1011, !1009, !"cmpfunc: %b"}
!1012 = !{!1008, !1003, !998, !970}
!1013 = !{!1011, !1006, !1001, !1014, !973}
!1014 = distinct !{!1014, !1015, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h9f773892963d8bf3E: %self"}
!1015 = distinct !{!1015, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h9f773892963d8bf3E"}
!1016 = !{!1011, !1006, !1001, !973}
!1017 = !{!1008, !1003, !998, !1014, !970}
!1018 = !{!1014, !973}
!1019 = !{!1020, !1022}
!1020 = distinct !{!1020, !1021, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2efab797e5fce30cE: %self"}
!1021 = distinct !{!1021, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2efab797e5fce30cE"}
!1022 = distinct !{!1022, !1023, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h8621131f8d35c70bE: %_1"}
!1023 = distinct !{!1023, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h8621131f8d35c70bE"}
!1024 = !{!1025}
!1025 = distinct !{!1025, !1026, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %a"}
!1026 = distinct !{!1026, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE"}
!1027 = !{!1028}
!1028 = distinct !{!1028, !1026, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %b"}
!1029 = !{!1030}
!1030 = distinct !{!1030, !1031, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %a"}
!1031 = distinct !{!1031, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E"}
!1032 = !{!1033}
!1033 = distinct !{!1033, !1034, !"_ZN4core5slice4sort6stable5drift10create_run17h4119af24d47959b6E: %scratch.0"}
!1034 = distinct !{!1034, !"_ZN4core5slice4sort6stable5drift10create_run17h4119af24d47959b6E"}
!1035 = !{!1036}
!1036 = distinct !{!1036, !1031, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %b"}
!1037 = !{!1030, !1025}
!1038 = !{!1036, !1028, !1033}
!1039 = !{!1036, !1028}
!1040 = !{!1030, !1025, !1033}
!1041 = !{!1030, !1036, !1025, !1028, !1033}
!1042 = !{!1043}
!1043 = distinct !{!1043, !1044, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %a"}
!1044 = distinct !{!1044, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE"}
!1045 = !{!1046}
!1046 = distinct !{!1046, !1047, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %a"}
!1047 = distinct !{!1047, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E"}
!1048 = !{!1046, !1043}
!1049 = !{!1050, !1051, !1033}
!1050 = distinct !{!1050, !1047, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %b"}
!1051 = distinct !{!1051, !1044, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %b"}
!1052 = !{!1046, !1050, !1043, !1051, !1033}
!1053 = !{!1054}
!1054 = distinct !{!1054, !1055, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %a"}
!1055 = distinct !{!1055, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE"}
!1056 = !{!1057}
!1057 = distinct !{!1057, !1058, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %a"}
!1058 = distinct !{!1058, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E"}
!1059 = !{!1057, !1054}
!1060 = !{!1061, !1062, !1033}
!1061 = distinct !{!1061, !1058, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %b"}
!1062 = distinct !{!1062, !1055, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %b"}
!1063 = !{!1057, !1061, !1054, !1062, !1033}
!1064 = !{!1065}
!1065 = distinct !{!1065, !1066, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17h8a3d39d026f6b542E: %a.0"}
!1066 = distinct !{!1066, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17h8a3d39d026f6b542E"}
!1067 = !{!1033, !1068}
!1068 = distinct !{!1068, !1034, !"_ZN4core5slice4sort6stable5drift10create_run17h4119af24d47959b6E: %is_less"}
!1069 = !{!1070}
!1070 = distinct !{!1070, !1066, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17h8a3d39d026f6b542E: %b.0"}
!1071 = !{!1065, !1072}
!1072 = distinct !{!1072, !1073, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h3a6acaae80669d4eE: %self.0"}
!1073 = distinct !{!1073, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h3a6acaae80669d4eE"}
!1074 = !{!1070, !1033, !1068}
!1075 = !{!1070, !1072}
!1076 = !{!1065, !1033, !1068}
!1077 = distinct !{!1077, !966, !967}
!1078 = distinct !{!1078, !967, !966}
!1079 = !{!1080}
!1080 = distinct !{!1080, !1081, !"_ZN4core5slice4sort6stable5merge5merge17hf2e29e4ca5e716cbE: %v.0"}
!1081 = distinct !{!1081, !"_ZN4core5slice4sort6stable5merge5merge17hf2e29e4ca5e716cbE"}
!1082 = !{!1083}
!1083 = distinct !{!1083, !1081, !"_ZN4core5slice4sort6stable5merge5merge17hf2e29e4ca5e716cbE: %scratch.0"}
!1084 = !{!1080, !1083}
!1085 = !{!1086}
!1086 = distinct !{!1086, !1087, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %a"}
!1087 = distinct !{!1087, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE"}
!1088 = !{!1089}
!1089 = distinct !{!1089, !1087, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %b"}
!1090 = !{!1091}
!1091 = distinct !{!1091, !1092, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %a"}
!1092 = distinct !{!1092, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E"}
!1093 = !{!1094}
!1094 = distinct !{!1094, !1092, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %b"}
!1095 = !{!1091, !1086, !1083}
!1096 = !{!1094, !1089, !1097, !1080}
!1097 = distinct !{!1097, !1098, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hd94ddbcb399da1dfE: %self"}
!1098 = distinct !{!1098, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hd94ddbcb399da1dfE"}
!1099 = !{!1094, !1089, !1080}
!1100 = !{!1091, !1086, !1097, !1083}
!1101 = !{!1097}
!1102 = !{!1097, !1083}
!1103 = !{!1104}
!1104 = distinct !{!1104, !1105, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %a"}
!1105 = distinct !{!1105, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE"}
!1106 = !{!1107}
!1107 = distinct !{!1107, !1105, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %b"}
!1108 = !{!1109}
!1109 = distinct !{!1109, !1110, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %a"}
!1110 = distinct !{!1110, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E"}
!1111 = !{!1112}
!1112 = distinct !{!1112, !1110, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %b"}
!1113 = !{!1109, !1104, !1080}
!1114 = !{!1112, !1107, !1115, !1083}
!1115 = distinct !{!1115, !1116, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h7ebf91b44de539cfE: %self"}
!1116 = distinct !{!1116, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h7ebf91b44de539cfE"}
!1117 = !{!1112, !1107, !1083}
!1118 = !{!1109, !1104, !1115, !1080}
!1119 = !{!1115}
!1120 = !{!1115, !1083}
!1121 = !{!1122, !1124}
!1122 = distinct !{!1122, !1123, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h49f32e796e534003E: %self"}
!1123 = distinct !{!1123, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h49f32e796e534003E"}
!1124 = distinct !{!1124, !1125, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$f32$GT$$GT$17h19de0c91a1d533c3E: %_1"}
!1125 = distinct !{!1125, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$f32$GT$$GT$17h19de0c91a1d533c3E"}
!1126 = !{!1127, !1129}
!1127 = distinct !{!1127, !1128, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h49f32e796e534003E: %self"}
!1128 = distinct !{!1128, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h49f32e796e534003E"}
!1129 = distinct !{!1129, !1130, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$f32$GT$$GT$17h19de0c91a1d533c3E: %_1"}
!1130 = distinct !{!1130, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$f32$GT$$GT$17h19de0c91a1d533c3E"}
!1131 = !{!1132}
!1132 = distinct !{!1132, !1133, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %a"}
!1133 = distinct !{!1133, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE"}
!1134 = !{!1135}
!1135 = distinct !{!1135, !1133, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %b"}
!1136 = !{!1137}
!1137 = distinct !{!1137, !1138, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %a"}
!1138 = distinct !{!1138, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E"}
!1139 = !{!1140}
!1140 = distinct !{!1140, !1141, !"_ZN4core5slice4sort6stable5drift10create_run17h06c467a4bb8b67c5E: %scratch.0"}
!1141 = distinct !{!1141, !"_ZN4core5slice4sort6stable5drift10create_run17h06c467a4bb8b67c5E"}
!1142 = !{!1143}
!1143 = distinct !{!1143, !1138, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %b"}
!1144 = !{!1137, !1132}
!1145 = !{!1143, !1135, !1140}
!1146 = !{!1143, !1135}
!1147 = !{!1137, !1132, !1140}
!1148 = !{!1137, !1143, !1132, !1135, !1140}
!1149 = !{!1150}
!1150 = distinct !{!1150, !1151, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %a"}
!1151 = distinct !{!1151, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE"}
!1152 = !{!1153}
!1153 = distinct !{!1153, !1154, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %a"}
!1154 = distinct !{!1154, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E"}
!1155 = !{!1153, !1150}
!1156 = !{!1157, !1158, !1140}
!1157 = distinct !{!1157, !1154, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %b"}
!1158 = distinct !{!1158, !1151, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %b"}
!1159 = !{!1153, !1157, !1150, !1158, !1140}
!1160 = !{!1161}
!1161 = distinct !{!1161, !1162, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %a"}
!1162 = distinct !{!1162, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE"}
!1163 = !{!1164}
!1164 = distinct !{!1164, !1165, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %a"}
!1165 = distinct !{!1165, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E"}
!1166 = !{!1164, !1161}
!1167 = !{!1168, !1169, !1140}
!1168 = distinct !{!1168, !1165, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %b"}
!1169 = distinct !{!1169, !1162, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %b"}
!1170 = !{!1164, !1168, !1161, !1169, !1140}
!1171 = !{!1172}
!1172 = distinct !{!1172, !1173, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17h8a3d39d026f6b542E: %a.0"}
!1173 = distinct !{!1173, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17h8a3d39d026f6b542E"}
!1174 = !{!1140, !1175}
!1175 = distinct !{!1175, !1141, !"_ZN4core5slice4sort6stable5drift10create_run17h06c467a4bb8b67c5E: %is_less"}
!1176 = !{!1177}
!1177 = distinct !{!1177, !1173, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17h8a3d39d026f6b542E: %b.0"}
!1178 = !{!1172, !1179}
!1179 = distinct !{!1179, !1180, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h3a6acaae80669d4eE: %self.0"}
!1180 = distinct !{!1180, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h3a6acaae80669d4eE"}
!1181 = !{!1177, !1140, !1175}
!1182 = !{!1177, !1179}
!1183 = !{!1172, !1140, !1175}
!1184 = distinct !{!1184, !966, !967}
!1185 = distinct !{!1185, !967, !966}
!1186 = !{!1187}
!1187 = distinct !{!1187, !1188, !"_ZN4core5slice4sort6stable5merge5merge17hb18309dad419ab3cE: %v.0"}
!1188 = distinct !{!1188, !"_ZN4core5slice4sort6stable5merge5merge17hb18309dad419ab3cE"}
!1189 = !{!1190}
!1190 = distinct !{!1190, !1188, !"_ZN4core5slice4sort6stable5merge5merge17hb18309dad419ab3cE: %scratch.0"}
!1191 = !{!1187, !1190}
!1192 = !{!1193}
!1193 = distinct !{!1193, !1194, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %a"}
!1194 = distinct !{!1194, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE"}
!1195 = !{!1196}
!1196 = distinct !{!1196, !1194, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %b"}
!1197 = !{!1198}
!1198 = distinct !{!1198, !1199, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %a"}
!1199 = distinct !{!1199, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E"}
!1200 = !{!1201}
!1201 = distinct !{!1201, !1199, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %b"}
!1202 = !{!1198, !1193, !1190}
!1203 = !{!1201, !1196, !1204, !1187}
!1204 = distinct !{!1204, !1205, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h16366ab7944e4645E: %self"}
!1205 = distinct !{!1205, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h16366ab7944e4645E"}
!1206 = !{!1201, !1196, !1187}
!1207 = !{!1198, !1193, !1204, !1190}
!1208 = !{!1204}
!1209 = !{!1204, !1190}
!1210 = !{!1211}
!1211 = distinct !{!1211, !1212, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %a"}
!1212 = distinct !{!1212, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE"}
!1213 = !{!1214}
!1214 = distinct !{!1214, !1212, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %b"}
!1215 = !{!1216}
!1216 = distinct !{!1216, !1217, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %a"}
!1217 = distinct !{!1217, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E"}
!1218 = !{!1219}
!1219 = distinct !{!1219, !1217, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %b"}
!1220 = !{!1216, !1211, !1187}
!1221 = !{!1219, !1214, !1222, !1190}
!1222 = distinct !{!1222, !1223, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h4d9850fc77e0e29aE: %self"}
!1223 = distinct !{!1223, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h4d9850fc77e0e29aE"}
!1224 = !{!1219, !1214, !1190}
!1225 = !{!1216, !1211, !1222, !1187}
!1226 = !{!1222}
!1227 = !{!1222, !1190}
!1228 = !{!1229, !1231}
!1229 = distinct !{!1229, !1230, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h49f32e796e534003E: %self"}
!1230 = distinct !{!1230, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h49f32e796e534003E"}
!1231 = distinct !{!1231, !1232, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$f32$GT$$GT$17h19de0c91a1d533c3E: %_1"}
!1232 = distinct !{!1232, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$f32$GT$$GT$17h19de0c91a1d533c3E"}
!1233 = !{!1234, !1236}
!1234 = distinct !{!1234, !1235, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h49f32e796e534003E: %self"}
!1235 = distinct !{!1235, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h49f32e796e534003E"}
!1236 = distinct !{!1236, !1237, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$f32$GT$$GT$17h19de0c91a1d533c3E: %_1"}
!1237 = distinct !{!1237, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$f32$GT$$GT$17h19de0c91a1d533c3E"}
!1238 = !{!1239}
!1239 = distinct !{!1239, !1240, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h7c018c816a9da747E: %v.0"}
!1240 = distinct !{!1240, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h7c018c816a9da747E"}
!1241 = !{!1242}
!1242 = distinct !{!1242, !1240, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h7c018c816a9da747E: %scratch.0"}
!1243 = !{!1242, !1244}
!1244 = distinct !{!1244, !1240, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h7c018c816a9da747E: %is_less"}
!1245 = !{!1239, !1244}
!1246 = !{!1247, !1249, !1242}
!1247 = distinct !{!1247, !1248, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %b"}
!1248 = distinct !{!1248, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E"}
!1249 = distinct !{!1249, !1250, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %b"}
!1250 = distinct !{!1250, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE"}
!1251 = !{!1252, !1253, !1239, !1244}
!1252 = distinct !{!1252, !1248, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %a"}
!1253 = distinct !{!1253, !1250, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %a"}
!1254 = !{!1255, !1257, !1242}
!1255 = distinct !{!1255, !1256, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %b"}
!1256 = distinct !{!1256, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E"}
!1257 = distinct !{!1257, !1258, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %b"}
!1258 = distinct !{!1258, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE"}
!1259 = !{!1260, !1261, !1239, !1244}
!1260 = distinct !{!1260, !1256, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %a"}
!1261 = distinct !{!1261, !1258, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %a"}
!1262 = !{!1263, !1265, !1239, !1244}
!1263 = distinct !{!1263, !1264, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hafc32df0be39b4b3E: %self"}
!1264 = distinct !{!1264, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hafc32df0be39b4b3E"}
!1265 = distinct !{!1265, !1266, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$f32$GT$$GT$17hd86175c6260a7107E: %_1"}
!1266 = distinct !{!1266, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$f32$GT$$GT$17hd86175c6260a7107E"}
!1267 = !{!1268}
!1268 = distinct !{!1268, !1269, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17ha5355d97ee5c682eE: %v.0"}
!1269 = distinct !{!1269, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17ha5355d97ee5c682eE"}
!1270 = !{!1271}
!1271 = distinct !{!1271, !1272, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %a"}
!1272 = distinct !{!1272, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE"}
!1273 = !{!1274}
!1274 = distinct !{!1274, !1272, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %b"}
!1275 = !{!1276}
!1276 = distinct !{!1276, !1277, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %a"}
!1277 = distinct !{!1277, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E"}
!1278 = !{!1279}
!1279 = distinct !{!1279, !1280, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h40ab9d58e6caa1aeE: %_0"}
!1280 = distinct !{!1280, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h40ab9d58e6caa1aeE"}
!1281 = !{!1282}
!1282 = distinct !{!1282, !1277, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %b"}
!1283 = !{!1276, !1271, !1268, !1242}
!1284 = !{!1282, !1274, !1279, !1239, !1244}
!1285 = !{!1282, !1274, !1268, !1242}
!1286 = !{!1276, !1271, !1279, !1239, !1244}
!1287 = !{!1268, !1242}
!1288 = !{!1279, !1289, !1239, !1244}
!1289 = distinct !{!1289, !1280, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h40ab9d58e6caa1aeE: %is_less"}
!1290 = !{!1279, !1289, !1268, !1242, !1244}
!1291 = !{!1292}
!1292 = distinct !{!1292, !1293, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %a"}
!1293 = distinct !{!1293, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE"}
!1294 = !{!1295}
!1295 = distinct !{!1295, !1293, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %b"}
!1296 = !{!1297}
!1297 = distinct !{!1297, !1298, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %a"}
!1298 = distinct !{!1298, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E"}
!1299 = !{!1300}
!1300 = distinct !{!1300, !1301, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h04b86c1be3dd6e1cE: %_0"}
!1301 = distinct !{!1301, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h04b86c1be3dd6e1cE"}
!1302 = !{!1303}
!1303 = distinct !{!1303, !1298, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %b"}
!1304 = !{!1297, !1292, !1268, !1242}
!1305 = !{!1303, !1295, !1300, !1239, !1244}
!1306 = !{!1303, !1295, !1268, !1242}
!1307 = !{!1297, !1292, !1300, !1239, !1244}
!1308 = !{!1239, !1242, !1244}
!1309 = !{!1300, !1310, !1239, !1244}
!1310 = distinct !{!1310, !1301, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h04b86c1be3dd6e1cE: %is_less"}
!1311 = !{!1300, !1310, !1268, !1242, !1244}
!1312 = !{!1268, !1242, !1244}
!1313 = !{!1239, !1242}
!1314 = !{!1315, !1317, !1244}
!1315 = distinct !{!1315, !1316, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hafc32df0be39b4b3E: %self"}
!1316 = distinct !{!1316, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hafc32df0be39b4b3E"}
!1317 = distinct !{!1317, !1318, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$f32$GT$$GT$17hd86175c6260a7107E: %_1"}
!1318 = distinct !{!1318, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$f32$GT$$GT$17hd86175c6260a7107E"}
!1319 = !{!1320, !1322, !1239, !1244}
!1320 = distinct !{!1320, !1321, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hafc32df0be39b4b3E: %self"}
!1321 = distinct !{!1321, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hafc32df0be39b4b3E"}
!1322 = distinct !{!1322, !1323, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$f32$GT$$GT$17hd86175c6260a7107E: %_1"}
!1323 = distinct !{!1323, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$f32$GT$$GT$17hd86175c6260a7107E"}
!1324 = !{!1325}
!1325 = distinct !{!1325, !1326, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h231d1789d5e62058E: %v.0"}
!1326 = distinct !{!1326, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h231d1789d5e62058E"}
!1327 = !{!1328}
!1328 = distinct !{!1328, !1329, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %a"}
!1329 = distinct !{!1329, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE"}
!1330 = !{!1331}
!1331 = distinct !{!1331, !1329, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %b"}
!1332 = !{!1333}
!1333 = distinct !{!1333, !1334, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %a"}
!1334 = distinct !{!1334, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E"}
!1335 = !{!1336}
!1336 = distinct !{!1336, !1337, !"_ZN4core5slice4sort6shared5pivot7median317h997f2f4aad5b9139E: %c"}
!1337 = distinct !{!1337, !"_ZN4core5slice4sort6shared5pivot7median317h997f2f4aad5b9139E"}
!1338 = !{!1339}
!1339 = distinct !{!1339, !1334, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %b"}
!1340 = !{!1333, !1328, !1325}
!1341 = !{!1339, !1331, !1336, !1342}
!1342 = distinct !{!1342, !1326, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h231d1789d5e62058E: %is_less"}
!1343 = !{!1339, !1331, !1325}
!1344 = !{!1333, !1328, !1336, !1342}
!1345 = !{!1333, !1339, !1328, !1331, !1336, !1325, !1342}
!1346 = !{!1347}
!1347 = distinct !{!1347, !1348, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %b"}
!1348 = distinct !{!1348, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE"}
!1349 = !{!1350}
!1350 = distinct !{!1350, !1351, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %b"}
!1351 = distinct !{!1351, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E"}
!1352 = !{!1350, !1347, !1325}
!1353 = !{!1354, !1355, !1342}
!1354 = distinct !{!1354, !1351, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %a"}
!1355 = distinct !{!1355, !1348, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %a"}
!1356 = !{!1354, !1350, !1355, !1347, !1325, !1342}
!1357 = !{!1358, !1360, !1361, !1363, !1325, !1342}
!1358 = distinct !{!1358, !1359, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %a"}
!1359 = distinct !{!1359, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E"}
!1360 = distinct !{!1360, !1359, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %b"}
!1361 = distinct !{!1361, !1362, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %a"}
!1362 = distinct !{!1362, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE"}
!1363 = distinct !{!1363, !1362, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %b"}
!1364 = !{!1365}
!1365 = distinct !{!1365, !1366, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %a"}
!1366 = distinct !{!1366, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE"}
!1367 = !{!1368}
!1368 = distinct !{!1368, !1369, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %a"}
!1369 = distinct !{!1369, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E"}
!1370 = !{!1368, !1365}
!1371 = !{!1372, !1373}
!1372 = distinct !{!1372, !1369, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %b"}
!1373 = distinct !{!1373, !1366, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %b"}
!1374 = !{!1368, !1372, !1365, !1373}
!1375 = !{!1376}
!1376 = distinct !{!1376, !1377, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h52196b1de7482264E: %v.0"}
!1377 = distinct !{!1377, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h52196b1de7482264E"}
!1378 = !{!1379}
!1379 = distinct !{!1379, !1377, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h52196b1de7482264E: %scratch.0"}
!1380 = !{!1381, !1383, !1376}
!1381 = distinct !{!1381, !1382, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %b"}
!1382 = distinct !{!1382, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E"}
!1383 = distinct !{!1383, !1384, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %b"}
!1384 = distinct !{!1384, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE"}
!1385 = !{!1386, !1387, !1379}
!1386 = distinct !{!1386, !1382, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %a"}
!1387 = distinct !{!1387, !1384, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %a"}
!1388 = !{!1387}
!1389 = !{!1383}
!1390 = !{!1386}
!1391 = !{!1381}
!1392 = !{!1386, !1387, !1376}
!1393 = !{!1381, !1383, !1379}
!1394 = !{!1386, !1381, !1387, !1383, !1376, !1379}
!1395 = !{!1396, !1376}
!1396 = distinct !{!1396, !1397, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h03adadb428352a79E: %self"}
!1397 = distinct !{!1397, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h03adadb428352a79E"}
!1398 = !{!1399}
!1399 = distinct !{!1399, !1400, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %a"}
!1400 = distinct !{!1400, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE"}
!1401 = !{!1402}
!1402 = distinct !{!1402, !1403, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %a"}
!1403 = distinct !{!1403, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E"}
!1404 = !{!1402, !1399, !1376}
!1405 = !{!1406, !1407, !1379}
!1406 = distinct !{!1406, !1403, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %b"}
!1407 = distinct !{!1407, !1400, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %b"}
!1408 = !{!1402, !1406, !1399, !1407, !1376, !1379}
!1409 = !{!1410, !1376}
!1410 = distinct !{!1410, !1411, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h03adadb428352a79E: %self"}
!1411 = distinct !{!1411, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h03adadb428352a79E"}
!1412 = !{!1413}
!1413 = distinct !{!1413, !1414, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %a"}
!1414 = distinct !{!1414, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE"}
!1415 = !{!1416}
!1416 = distinct !{!1416, !1417, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %a"}
!1417 = distinct !{!1417, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E"}
!1418 = !{!1416, !1413, !1376}
!1419 = !{!1420, !1421, !1379}
!1420 = distinct !{!1420, !1417, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %b"}
!1421 = distinct !{!1421, !1414, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %b"}
!1422 = !{!1416, !1420, !1413, !1421, !1376, !1379}
!1423 = !{!1424, !1376}
!1424 = distinct !{!1424, !1425, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h03adadb428352a79E: %self"}
!1425 = distinct !{!1425, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h03adadb428352a79E"}
!1426 = !{!1427}
!1427 = distinct !{!1427, !1428, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %a"}
!1428 = distinct !{!1428, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE"}
!1429 = !{!1430}
!1430 = distinct !{!1430, !1431, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %a"}
!1431 = distinct !{!1431, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E"}
!1432 = !{!1430, !1427, !1376}
!1433 = !{!1434, !1435, !1379}
!1434 = distinct !{!1434, !1431, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %b"}
!1435 = distinct !{!1435, !1428, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %b"}
!1436 = !{!1430, !1434, !1427, !1435, !1376, !1379}
!1437 = !{!1438, !1376}
!1438 = distinct !{!1438, !1439, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h03adadb428352a79E: %self"}
!1439 = distinct !{!1439, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h03adadb428352a79E"}
!1440 = !{!1441, !1443, !1376}
!1441 = distinct !{!1441, !1442, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %b"}
!1442 = distinct !{!1442, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E"}
!1443 = distinct !{!1443, !1444, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %b"}
!1444 = distinct !{!1444, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE"}
!1445 = !{!1446, !1447, !1379}
!1446 = distinct !{!1446, !1442, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %a"}
!1447 = distinct !{!1447, !1444, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %a"}
!1448 = !{!1447}
!1449 = !{!1443}
!1450 = !{!1446}
!1451 = !{!1441}
!1452 = !{!1446, !1447, !1376}
!1453 = !{!1441, !1443, !1379}
!1454 = !{!1446, !1441, !1447, !1443, !1376, !1379}
!1455 = !{!1456, !1376}
!1456 = distinct !{!1456, !1457, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h03adadb428352a79E: %self"}
!1457 = distinct !{!1457, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h03adadb428352a79E"}
!1458 = !{!1459, !1379}
!1459 = distinct !{!1459, !1460, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h03adadb428352a79E: %self"}
!1460 = distinct !{!1460, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h03adadb428352a79E"}
!1461 = !{!1459, !1376}
!1462 = !{!1376, !1379}
!1463 = distinct !{!1463, !966, !967}
!1464 = distinct !{!1464, !967, !966}
!1465 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!1466 = !{!1467, !1469}
!1467 = distinct !{!1467, !1468, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hfcf5686026bf385fE: %pair"}
!1468 = distinct !{!1468, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hfcf5686026bf385fE"}
!1469 = distinct !{!1469, !1468, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hfcf5686026bf385fE: %self.0"}
!1470 = !{!1471}
!1471 = distinct !{!1471, !1472, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17hf5b3315b4b2c5f83E: %v.0"}
!1472 = distinct !{!1472, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17hf5b3315b4b2c5f83E"}
!1473 = !{!1474}
!1474 = distinct !{!1474, !1472, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17hf5b3315b4b2c5f83E: %scratch.0"}
!1475 = !{!1476, !1478, !1480, !1471}
!1476 = distinct !{!1476, !1477, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %a"}
!1477 = distinct !{!1477, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E"}
!1478 = distinct !{!1478, !1479, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %a"}
!1479 = distinct !{!1479, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE"}
!1480 = distinct !{!1480, !1481, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h9dd9effb4230de85E: %b"}
!1481 = distinct !{!1481, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h9dd9effb4230de85E"}
!1482 = !{!1483, !1484, !1485, !1474}
!1483 = distinct !{!1483, !1477, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %b"}
!1484 = distinct !{!1484, !1479, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %b"}
!1485 = distinct !{!1485, !1481, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h9dd9effb4230de85E: %a"}
!1486 = !{!1485}
!1487 = !{!1480}
!1488 = !{!1478}
!1489 = !{!1484}
!1490 = !{!1476}
!1491 = !{!1483}
!1492 = !{!1483, !1484, !1485, !1471}
!1493 = !{!1476, !1478, !1480, !1474}
!1494 = !{!1476, !1483, !1478, !1484, !1485, !1480, !1471, !1474}
!1495 = !{!1496, !1471}
!1496 = distinct !{!1496, !1497, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h03adadb428352a79E: %self"}
!1497 = distinct !{!1497, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h03adadb428352a79E"}
!1498 = !{!1499}
!1499 = distinct !{!1499, !1500, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h9dd9effb4230de85E: %a"}
!1500 = distinct !{!1500, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h9dd9effb4230de85E"}
!1501 = !{!1502}
!1502 = distinct !{!1502, !1503, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %b"}
!1503 = distinct !{!1503, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE"}
!1504 = !{!1505}
!1505 = distinct !{!1505, !1506, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %b"}
!1506 = distinct !{!1506, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E"}
!1507 = !{!1505, !1502, !1499, !1471}
!1508 = !{!1509, !1510, !1511, !1474}
!1509 = distinct !{!1509, !1506, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %a"}
!1510 = distinct !{!1510, !1503, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %a"}
!1511 = distinct !{!1511, !1500, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h9dd9effb4230de85E: %b"}
!1512 = !{!1509, !1505, !1510, !1502, !1499, !1511, !1471, !1474}
!1513 = !{!1514, !1471}
!1514 = distinct !{!1514, !1515, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h03adadb428352a79E: %self"}
!1515 = distinct !{!1515, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h03adadb428352a79E"}
!1516 = !{!1517}
!1517 = distinct !{!1517, !1518, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h9dd9effb4230de85E: %a"}
!1518 = distinct !{!1518, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h9dd9effb4230de85E"}
!1519 = !{!1520}
!1520 = distinct !{!1520, !1521, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %b"}
!1521 = distinct !{!1521, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE"}
!1522 = !{!1523}
!1523 = distinct !{!1523, !1524, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %b"}
!1524 = distinct !{!1524, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E"}
!1525 = !{!1523, !1520, !1517, !1471}
!1526 = !{!1527, !1528, !1529, !1474}
!1527 = distinct !{!1527, !1524, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %a"}
!1528 = distinct !{!1528, !1521, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %a"}
!1529 = distinct !{!1529, !1518, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h9dd9effb4230de85E: %b"}
!1530 = !{!1527, !1523, !1528, !1520, !1517, !1529, !1471, !1474}
!1531 = !{!1532, !1471}
!1532 = distinct !{!1532, !1533, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h03adadb428352a79E: %self"}
!1533 = distinct !{!1533, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h03adadb428352a79E"}
!1534 = !{!1535}
!1535 = distinct !{!1535, !1536, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h9dd9effb4230de85E: %a"}
!1536 = distinct !{!1536, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h9dd9effb4230de85E"}
!1537 = !{!1538}
!1538 = distinct !{!1538, !1539, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %b"}
!1539 = distinct !{!1539, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE"}
!1540 = !{!1541}
!1541 = distinct !{!1541, !1542, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %b"}
!1542 = distinct !{!1542, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E"}
!1543 = !{!1541, !1538, !1535, !1471}
!1544 = !{!1545, !1546, !1547, !1474}
!1545 = distinct !{!1545, !1542, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %a"}
!1546 = distinct !{!1546, !1539, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %a"}
!1547 = distinct !{!1547, !1536, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h9dd9effb4230de85E: %b"}
!1548 = !{!1545, !1541, !1546, !1538, !1535, !1547, !1471, !1474}
!1549 = !{!1550, !1471}
!1550 = distinct !{!1550, !1551, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h03adadb428352a79E: %self"}
!1551 = distinct !{!1551, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h03adadb428352a79E"}
!1552 = !{!1553, !1555, !1557, !1471}
!1553 = distinct !{!1553, !1554, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %a"}
!1554 = distinct !{!1554, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E"}
!1555 = distinct !{!1555, !1556, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %a"}
!1556 = distinct !{!1556, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE"}
!1557 = distinct !{!1557, !1558, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h9dd9effb4230de85E: %b"}
!1558 = distinct !{!1558, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h9dd9effb4230de85E"}
!1559 = !{!1560, !1561, !1562, !1474}
!1560 = distinct !{!1560, !1554, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %b"}
!1561 = distinct !{!1561, !1556, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %b"}
!1562 = distinct !{!1562, !1558, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h9dd9effb4230de85E: %a"}
!1563 = !{!1562}
!1564 = !{!1557}
!1565 = !{!1555}
!1566 = !{!1561}
!1567 = !{!1553}
!1568 = !{!1560}
!1569 = !{!1560, !1561, !1562, !1471}
!1570 = !{!1553, !1555, !1557, !1474}
!1571 = !{!1553, !1560, !1555, !1561, !1562, !1557, !1471, !1474}
!1572 = !{!1573, !1471}
!1573 = distinct !{!1573, !1574, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h03adadb428352a79E: %self"}
!1574 = distinct !{!1574, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h03adadb428352a79E"}
!1575 = !{!1576, !1474}
!1576 = distinct !{!1576, !1577, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h03adadb428352a79E: %self"}
!1577 = distinct !{!1577, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h03adadb428352a79E"}
!1578 = !{!1576, !1471}
!1579 = !{!1471, !1474}
!1580 = distinct !{!1580, !966, !967}
!1581 = distinct !{!1581, !967, !966}
!1582 = !{!1583}
!1583 = distinct !{!1583, !1584, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17hf5953e2e9b96ff03E: %v.0"}
!1584 = distinct !{!1584, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17hf5953e2e9b96ff03E"}
!1585 = !{!1586}
!1586 = distinct !{!1586, !1584, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17hf5953e2e9b96ff03E: %scratch.0"}
!1587 = !{!1586, !1588}
!1588 = distinct !{!1588, !1584, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17hf5953e2e9b96ff03E: %is_less"}
!1589 = !{!1583, !1588}
!1590 = !{!1591, !1593, !1586}
!1591 = distinct !{!1591, !1592, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %b"}
!1592 = distinct !{!1592, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E"}
!1593 = distinct !{!1593, !1594, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %b"}
!1594 = distinct !{!1594, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE"}
!1595 = !{!1596, !1597, !1583, !1588}
!1596 = distinct !{!1596, !1592, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %a"}
!1597 = distinct !{!1597, !1594, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %a"}
!1598 = !{!1599, !1601, !1586}
!1599 = distinct !{!1599, !1600, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %b"}
!1600 = distinct !{!1600, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E"}
!1601 = distinct !{!1601, !1602, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %b"}
!1602 = distinct !{!1602, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE"}
!1603 = !{!1604, !1605, !1583, !1588}
!1604 = distinct !{!1604, !1600, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %a"}
!1605 = distinct !{!1605, !1602, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %a"}
!1606 = !{!1607, !1609, !1583, !1588}
!1607 = distinct !{!1607, !1608, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hafc32df0be39b4b3E: %self"}
!1608 = distinct !{!1608, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hafc32df0be39b4b3E"}
!1609 = distinct !{!1609, !1610, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$f32$GT$$GT$17hd86175c6260a7107E: %_1"}
!1610 = distinct !{!1610, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$f32$GT$$GT$17hd86175c6260a7107E"}
!1611 = !{!1612}
!1612 = distinct !{!1612, !1613, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h8fd5afa469382f2aE: %v.0"}
!1613 = distinct !{!1613, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h8fd5afa469382f2aE"}
!1614 = !{!1615}
!1615 = distinct !{!1615, !1616, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %a"}
!1616 = distinct !{!1616, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE"}
!1617 = !{!1618}
!1618 = distinct !{!1618, !1616, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %b"}
!1619 = !{!1620}
!1620 = distinct !{!1620, !1621, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %a"}
!1621 = distinct !{!1621, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E"}
!1622 = !{!1623}
!1623 = distinct !{!1623, !1624, !"_ZN4core5slice4sort6shared9smallsort8merge_up17ha5340aea9223a24cE: %_0"}
!1624 = distinct !{!1624, !"_ZN4core5slice4sort6shared9smallsort8merge_up17ha5340aea9223a24cE"}
!1625 = !{!1626}
!1626 = distinct !{!1626, !1621, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %b"}
!1627 = !{!1620, !1615, !1612, !1586}
!1628 = !{!1626, !1618, !1623, !1583, !1588}
!1629 = !{!1626, !1618, !1612, !1586}
!1630 = !{!1620, !1615, !1623, !1583, !1588}
!1631 = !{!1612, !1586}
!1632 = !{!1623, !1633, !1583, !1588}
!1633 = distinct !{!1633, !1624, !"_ZN4core5slice4sort6shared9smallsort8merge_up17ha5340aea9223a24cE: %is_less"}
!1634 = !{!1623, !1633, !1612, !1586, !1588}
!1635 = !{!1636}
!1636 = distinct !{!1636, !1637, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %a"}
!1637 = distinct !{!1637, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE"}
!1638 = !{!1639}
!1639 = distinct !{!1639, !1637, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %b"}
!1640 = !{!1641}
!1641 = distinct !{!1641, !1642, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %a"}
!1642 = distinct !{!1642, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E"}
!1643 = !{!1644}
!1644 = distinct !{!1644, !1645, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h568dd42a24d04b6bE: %_0"}
!1645 = distinct !{!1645, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h568dd42a24d04b6bE"}
!1646 = !{!1647}
!1647 = distinct !{!1647, !1642, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %b"}
!1648 = !{!1641, !1636, !1612, !1586}
!1649 = !{!1647, !1639, !1644, !1583, !1588}
!1650 = !{!1647, !1639, !1612, !1586}
!1651 = !{!1641, !1636, !1644, !1583, !1588}
!1652 = !{!1583, !1586, !1588}
!1653 = !{!1644, !1654, !1583, !1588}
!1654 = distinct !{!1654, !1645, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h568dd42a24d04b6bE: %is_less"}
!1655 = !{!1644, !1654, !1612, !1586, !1588}
!1656 = !{!1612, !1586, !1588}
!1657 = !{!1583, !1586}
!1658 = !{!1659, !1661, !1588}
!1659 = distinct !{!1659, !1660, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hafc32df0be39b4b3E: %self"}
!1660 = distinct !{!1660, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hafc32df0be39b4b3E"}
!1661 = distinct !{!1661, !1662, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$f32$GT$$GT$17hd86175c6260a7107E: %_1"}
!1662 = distinct !{!1662, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$f32$GT$$GT$17hd86175c6260a7107E"}
!1663 = !{!1664, !1666, !1583, !1588}
!1664 = distinct !{!1664, !1665, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hafc32df0be39b4b3E: %self"}
!1665 = distinct !{!1665, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hafc32df0be39b4b3E"}
!1666 = distinct !{!1666, !1667, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$f32$GT$$GT$17hd86175c6260a7107E: %_1"}
!1667 = distinct !{!1667, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$f32$GT$$GT$17hd86175c6260a7107E"}
!1668 = !{!1669}
!1669 = distinct !{!1669, !1670, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h7f796801e5248064E: %v.0"}
!1670 = distinct !{!1670, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h7f796801e5248064E"}
!1671 = !{!1672}
!1672 = distinct !{!1672, !1673, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %a"}
!1673 = distinct !{!1673, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE"}
!1674 = !{!1675}
!1675 = distinct !{!1675, !1673, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %b"}
!1676 = !{!1677}
!1677 = distinct !{!1677, !1678, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %a"}
!1678 = distinct !{!1678, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E"}
!1679 = !{!1680}
!1680 = distinct !{!1680, !1681, !"_ZN4core5slice4sort6shared5pivot7median317hfc7ca460ee81ac1fE: %c"}
!1681 = distinct !{!1681, !"_ZN4core5slice4sort6shared5pivot7median317hfc7ca460ee81ac1fE"}
!1682 = !{!1683}
!1683 = distinct !{!1683, !1678, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %b"}
!1684 = !{!1677, !1672, !1669}
!1685 = !{!1683, !1675, !1680, !1686}
!1686 = distinct !{!1686, !1670, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h7f796801e5248064E: %is_less"}
!1687 = !{!1683, !1675, !1669}
!1688 = !{!1677, !1672, !1680, !1686}
!1689 = !{!1677, !1683, !1672, !1675, !1680, !1669, !1686}
!1690 = !{!1691}
!1691 = distinct !{!1691, !1692, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %b"}
!1692 = distinct !{!1692, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE"}
!1693 = !{!1694}
!1694 = distinct !{!1694, !1695, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %b"}
!1695 = distinct !{!1695, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E"}
!1696 = !{!1694, !1691, !1669}
!1697 = !{!1698, !1699, !1686}
!1698 = distinct !{!1698, !1695, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %a"}
!1699 = distinct !{!1699, !1692, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %a"}
!1700 = !{!1698, !1694, !1699, !1691, !1669, !1686}
!1701 = !{!1702, !1704, !1705, !1707, !1669, !1686}
!1702 = distinct !{!1702, !1703, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %a"}
!1703 = distinct !{!1703, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E"}
!1704 = distinct !{!1704, !1703, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %b"}
!1705 = distinct !{!1705, !1706, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %a"}
!1706 = distinct !{!1706, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE"}
!1707 = distinct !{!1707, !1706, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %b"}
!1708 = !{!1709}
!1709 = distinct !{!1709, !1710, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %a"}
!1710 = distinct !{!1710, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE"}
!1711 = !{!1712}
!1712 = distinct !{!1712, !1713, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %a"}
!1713 = distinct !{!1713, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E"}
!1714 = !{!1712, !1709}
!1715 = !{!1716, !1717}
!1716 = distinct !{!1716, !1713, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %b"}
!1717 = distinct !{!1717, !1710, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %b"}
!1718 = !{!1712, !1716, !1709, !1717}
!1719 = !{!1720}
!1720 = distinct !{!1720, !1721, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h26d04e68c811d67bE: %v.0"}
!1721 = distinct !{!1721, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h26d04e68c811d67bE"}
!1722 = !{!1723}
!1723 = distinct !{!1723, !1721, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h26d04e68c811d67bE: %scratch.0"}
!1724 = !{!1725, !1727, !1720}
!1725 = distinct !{!1725, !1726, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %b"}
!1726 = distinct !{!1726, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E"}
!1727 = distinct !{!1727, !1728, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %b"}
!1728 = distinct !{!1728, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE"}
!1729 = !{!1730, !1731, !1723}
!1730 = distinct !{!1730, !1726, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %a"}
!1731 = distinct !{!1731, !1728, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %a"}
!1732 = !{!1731}
!1733 = !{!1727}
!1734 = !{!1730}
!1735 = !{!1725}
!1736 = !{!1730, !1731, !1720}
!1737 = !{!1725, !1727, !1723}
!1738 = !{!1730, !1725, !1731, !1727, !1720, !1723}
!1739 = !{!1740, !1720}
!1740 = distinct !{!1740, !1741, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h03adadb428352a79E: %self"}
!1741 = distinct !{!1741, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h03adadb428352a79E"}
!1742 = !{!1743}
!1743 = distinct !{!1743, !1744, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %a"}
!1744 = distinct !{!1744, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE"}
!1745 = !{!1746}
!1746 = distinct !{!1746, !1747, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %a"}
!1747 = distinct !{!1747, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E"}
!1748 = !{!1746, !1743, !1720}
!1749 = !{!1750, !1751, !1723}
!1750 = distinct !{!1750, !1747, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %b"}
!1751 = distinct !{!1751, !1744, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %b"}
!1752 = !{!1746, !1750, !1743, !1751, !1720, !1723}
!1753 = !{!1754, !1720}
!1754 = distinct !{!1754, !1755, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h03adadb428352a79E: %self"}
!1755 = distinct !{!1755, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h03adadb428352a79E"}
!1756 = !{!1757}
!1757 = distinct !{!1757, !1758, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %a"}
!1758 = distinct !{!1758, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE"}
!1759 = !{!1760}
!1760 = distinct !{!1760, !1761, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %a"}
!1761 = distinct !{!1761, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E"}
!1762 = !{!1760, !1757, !1720}
!1763 = !{!1764, !1765, !1723}
!1764 = distinct !{!1764, !1761, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %b"}
!1765 = distinct !{!1765, !1758, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %b"}
!1766 = !{!1760, !1764, !1757, !1765, !1720, !1723}
!1767 = !{!1768, !1720}
!1768 = distinct !{!1768, !1769, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h03adadb428352a79E: %self"}
!1769 = distinct !{!1769, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h03adadb428352a79E"}
!1770 = !{!1771}
!1771 = distinct !{!1771, !1772, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %a"}
!1772 = distinct !{!1772, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE"}
!1773 = !{!1774}
!1774 = distinct !{!1774, !1775, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %a"}
!1775 = distinct !{!1775, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E"}
!1776 = !{!1774, !1771, !1720}
!1777 = !{!1778, !1779, !1723}
!1778 = distinct !{!1778, !1775, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %b"}
!1779 = distinct !{!1779, !1772, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %b"}
!1780 = !{!1774, !1778, !1771, !1779, !1720, !1723}
!1781 = !{!1782, !1720}
!1782 = distinct !{!1782, !1783, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h03adadb428352a79E: %self"}
!1783 = distinct !{!1783, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h03adadb428352a79E"}
!1784 = !{!1785, !1787, !1720}
!1785 = distinct !{!1785, !1786, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %b"}
!1786 = distinct !{!1786, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E"}
!1787 = distinct !{!1787, !1788, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %b"}
!1788 = distinct !{!1788, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE"}
!1789 = !{!1790, !1791, !1723}
!1790 = distinct !{!1790, !1786, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %a"}
!1791 = distinct !{!1791, !1788, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %a"}
!1792 = !{!1791}
!1793 = !{!1787}
!1794 = !{!1790}
!1795 = !{!1785}
!1796 = !{!1790, !1791, !1720}
!1797 = !{!1785, !1787, !1723}
!1798 = !{!1790, !1785, !1791, !1787, !1720, !1723}
!1799 = !{!1800, !1720}
!1800 = distinct !{!1800, !1801, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h03adadb428352a79E: %self"}
!1801 = distinct !{!1801, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h03adadb428352a79E"}
!1802 = !{!1803, !1723}
!1803 = distinct !{!1803, !1804, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h03adadb428352a79E: %self"}
!1804 = distinct !{!1804, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h03adadb428352a79E"}
!1805 = !{!1803, !1720}
!1806 = !{!1720, !1723}
!1807 = distinct !{!1807, !966, !967}
!1808 = distinct !{!1808, !967, !966}
!1809 = !{!1810, !1812}
!1810 = distinct !{!1810, !1811, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hfcf5686026bf385fE: %pair"}
!1811 = distinct !{!1811, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hfcf5686026bf385fE"}
!1812 = distinct !{!1812, !1811, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hfcf5686026bf385fE: %self.0"}
!1813 = !{!1814}
!1814 = distinct !{!1814, !1815, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h67bec7643deb17b9E: %v.0"}
!1815 = distinct !{!1815, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h67bec7643deb17b9E"}
!1816 = !{!1817}
!1817 = distinct !{!1817, !1815, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h67bec7643deb17b9E: %scratch.0"}
!1818 = !{!1819, !1821, !1823, !1814}
!1819 = distinct !{!1819, !1820, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %a"}
!1820 = distinct !{!1820, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E"}
!1821 = distinct !{!1821, !1822, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %a"}
!1822 = distinct !{!1822, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE"}
!1823 = distinct !{!1823, !1824, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h24759b5143996a24E: %b"}
!1824 = distinct !{!1824, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h24759b5143996a24E"}
!1825 = !{!1826, !1827, !1828, !1817}
!1826 = distinct !{!1826, !1820, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %b"}
!1827 = distinct !{!1827, !1822, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %b"}
!1828 = distinct !{!1828, !1824, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h24759b5143996a24E: %a"}
!1829 = !{!1828}
!1830 = !{!1823}
!1831 = !{!1821}
!1832 = !{!1827}
!1833 = !{!1819}
!1834 = !{!1826}
!1835 = !{!1826, !1827, !1828, !1814}
!1836 = !{!1819, !1821, !1823, !1817}
!1837 = !{!1819, !1826, !1821, !1827, !1828, !1823, !1814, !1817}
!1838 = !{!1839, !1814}
!1839 = distinct !{!1839, !1840, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h03adadb428352a79E: %self"}
!1840 = distinct !{!1840, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h03adadb428352a79E"}
!1841 = !{!1842}
!1842 = distinct !{!1842, !1843, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h24759b5143996a24E: %a"}
!1843 = distinct !{!1843, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h24759b5143996a24E"}
!1844 = !{!1845}
!1845 = distinct !{!1845, !1846, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %b"}
!1846 = distinct !{!1846, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE"}
!1847 = !{!1848}
!1848 = distinct !{!1848, !1849, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %b"}
!1849 = distinct !{!1849, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E"}
!1850 = !{!1848, !1845, !1842, !1814}
!1851 = !{!1852, !1853, !1854, !1817}
!1852 = distinct !{!1852, !1849, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %a"}
!1853 = distinct !{!1853, !1846, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %a"}
!1854 = distinct !{!1854, !1843, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h24759b5143996a24E: %b"}
!1855 = !{!1852, !1848, !1853, !1845, !1842, !1854, !1814, !1817}
!1856 = !{!1857, !1814}
!1857 = distinct !{!1857, !1858, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h03adadb428352a79E: %self"}
!1858 = distinct !{!1858, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h03adadb428352a79E"}
!1859 = !{!1860}
!1860 = distinct !{!1860, !1861, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h24759b5143996a24E: %a"}
!1861 = distinct !{!1861, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h24759b5143996a24E"}
!1862 = !{!1863}
!1863 = distinct !{!1863, !1864, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %b"}
!1864 = distinct !{!1864, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE"}
!1865 = !{!1866}
!1866 = distinct !{!1866, !1867, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %b"}
!1867 = distinct !{!1867, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E"}
!1868 = !{!1866, !1863, !1860, !1814}
!1869 = !{!1870, !1871, !1872, !1817}
!1870 = distinct !{!1870, !1867, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %a"}
!1871 = distinct !{!1871, !1864, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %a"}
!1872 = distinct !{!1872, !1861, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h24759b5143996a24E: %b"}
!1873 = !{!1870, !1866, !1871, !1863, !1860, !1872, !1814, !1817}
!1874 = !{!1875, !1814}
!1875 = distinct !{!1875, !1876, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h03adadb428352a79E: %self"}
!1876 = distinct !{!1876, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h03adadb428352a79E"}
!1877 = !{!1878}
!1878 = distinct !{!1878, !1879, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h24759b5143996a24E: %a"}
!1879 = distinct !{!1879, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h24759b5143996a24E"}
!1880 = !{!1881}
!1881 = distinct !{!1881, !1882, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %b"}
!1882 = distinct !{!1882, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE"}
!1883 = !{!1884}
!1884 = distinct !{!1884, !1885, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %b"}
!1885 = distinct !{!1885, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E"}
!1886 = !{!1884, !1881, !1878, !1814}
!1887 = !{!1888, !1889, !1890, !1817}
!1888 = distinct !{!1888, !1885, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %a"}
!1889 = distinct !{!1889, !1882, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %a"}
!1890 = distinct !{!1890, !1879, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h24759b5143996a24E: %b"}
!1891 = !{!1888, !1884, !1889, !1881, !1878, !1890, !1814, !1817}
!1892 = !{!1893, !1814}
!1893 = distinct !{!1893, !1894, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h03adadb428352a79E: %self"}
!1894 = distinct !{!1894, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h03adadb428352a79E"}
!1895 = !{!1896, !1898, !1900, !1814}
!1896 = distinct !{!1896, !1897, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %a"}
!1897 = distinct !{!1897, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E"}
!1898 = distinct !{!1898, !1899, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %a"}
!1899 = distinct !{!1899, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE"}
!1900 = distinct !{!1900, !1901, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h24759b5143996a24E: %b"}
!1901 = distinct !{!1901, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h24759b5143996a24E"}
!1902 = !{!1903, !1904, !1905, !1817}
!1903 = distinct !{!1903, !1897, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %b"}
!1904 = distinct !{!1904, !1899, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %b"}
!1905 = distinct !{!1905, !1901, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h24759b5143996a24E: %a"}
!1906 = !{!1905}
!1907 = !{!1900}
!1908 = !{!1898}
!1909 = !{!1904}
!1910 = !{!1896}
!1911 = !{!1903}
!1912 = !{!1903, !1904, !1905, !1814}
!1913 = !{!1896, !1898, !1900, !1817}
!1914 = !{!1896, !1903, !1898, !1904, !1905, !1900, !1814, !1817}
!1915 = !{!1916, !1814}
!1916 = distinct !{!1916, !1917, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h03adadb428352a79E: %self"}
!1917 = distinct !{!1917, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h03adadb428352a79E"}
!1918 = !{!1919, !1817}
!1919 = distinct !{!1919, !1920, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h03adadb428352a79E: %self"}
!1920 = distinct !{!1920, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h03adadb428352a79E"}
!1921 = !{!1919, !1814}
!1922 = !{!1814, !1817}
!1923 = distinct !{!1923, !966, !967}
!1924 = distinct !{!1924, !967, !966}
!1925 = !{!1926}
!1926 = distinct !{!1926, !1927, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h1c5ee7389c23e2efE: %v.0"}
!1927 = distinct !{!1927, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h1c5ee7389c23e2efE"}
!1928 = !{!1929}
!1929 = distinct !{!1929, !1927, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h1c5ee7389c23e2efE: %scratch.0"}
!1930 = !{!1931}
!1931 = distinct !{!1931, !1932, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!1932 = distinct !{!1932, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!1933 = !{!1934}
!1934 = distinct !{!1934, !1932, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!1935 = !{!1936}
!1936 = distinct !{!1936, !1937, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!1937 = distinct !{!1937, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!1938 = !{!1939}
!1939 = distinct !{!1939, !1937, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!1940 = !{!1941}
!1941 = distinct !{!1941, !1942, !"cmpfunc: %a"}
!1942 = distinct !{!1942, !"cmpfunc"}
!1943 = !{!1944}
!1944 = distinct !{!1944, !1942, !"cmpfunc: %b"}
!1945 = !{!1941, !1936, !1931, !1926}
!1946 = !{!1944, !1939, !1934, !1929, !1947}
!1947 = distinct !{!1947, !1927, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h1c5ee7389c23e2efE: %is_less"}
!1948 = !{!1944, !1939, !1934, !1926}
!1949 = !{!1941, !1936, !1931, !1929, !1947}
!1950 = !{!1951}
!1951 = distinct !{!1951, !1952, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!1952 = distinct !{!1952, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!1953 = !{!1954}
!1954 = distinct !{!1954, !1952, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!1955 = !{!1956}
!1956 = distinct !{!1956, !1957, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!1957 = distinct !{!1957, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!1958 = !{!1959}
!1959 = distinct !{!1959, !1957, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!1960 = !{!1961}
!1961 = distinct !{!1961, !1962, !"cmpfunc: %a"}
!1962 = distinct !{!1962, !"cmpfunc"}
!1963 = !{!1964}
!1964 = distinct !{!1964, !1962, !"cmpfunc: %b"}
!1965 = !{!1961, !1956, !1951, !1926}
!1966 = !{!1964, !1959, !1954, !1929, !1947}
!1967 = !{!1964, !1959, !1954, !1926}
!1968 = !{!1961, !1956, !1951, !1929, !1947}
!1969 = !{!1970}
!1970 = distinct !{!1970, !1971, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!1971 = distinct !{!1971, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!1972 = !{!1973}
!1973 = distinct !{!1973, !1971, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!1974 = !{!1975}
!1975 = distinct !{!1975, !1976, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!1976 = distinct !{!1976, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!1977 = !{!1978}
!1978 = distinct !{!1978, !1976, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!1979 = !{!1980}
!1980 = distinct !{!1980, !1981, !"cmpfunc: %a"}
!1981 = distinct !{!1981, !"cmpfunc"}
!1982 = !{!1983}
!1983 = distinct !{!1983, !1981, !"cmpfunc: %b"}
!1984 = !{!1980, !1975, !1970, !1926}
!1985 = !{!1983, !1978, !1973, !1929, !1947}
!1986 = !{!1983, !1978, !1973, !1926}
!1987 = !{!1980, !1975, !1970, !1929, !1947}
!1988 = !{!1989}
!1989 = distinct !{!1989, !1990, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!1990 = distinct !{!1990, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!1991 = !{!1992}
!1992 = distinct !{!1992, !1990, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!1993 = !{!1994}
!1994 = distinct !{!1994, !1995, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!1995 = distinct !{!1995, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!1996 = !{!1997}
!1997 = distinct !{!1997, !1995, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!1998 = !{!1999}
!1999 = distinct !{!1999, !2000, !"cmpfunc: %a"}
!2000 = distinct !{!2000, !"cmpfunc"}
!2001 = !{!2002}
!2002 = distinct !{!2002, !2000, !"cmpfunc: %b"}
!2003 = !{!1999, !1994, !1989, !1926}
!2004 = !{!2002, !1997, !1992, !1929, !1947}
!2005 = !{!2002, !1997, !1992, !1926}
!2006 = !{!1999, !1994, !1989, !1929, !1947}
!2007 = !{!2008}
!2008 = distinct !{!2008, !2009, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!2009 = distinct !{!2009, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!2010 = !{!2011}
!2011 = distinct !{!2011, !2009, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!2012 = !{!2013}
!2013 = distinct !{!2013, !2014, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!2014 = distinct !{!2014, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!2015 = !{!2016}
!2016 = distinct !{!2016, !2014, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!2017 = !{!2018}
!2018 = distinct !{!2018, !2019, !"cmpfunc: %a"}
!2019 = distinct !{!2019, !"cmpfunc"}
!2020 = !{!2021}
!2021 = distinct !{!2021, !2019, !"cmpfunc: %b"}
!2022 = !{!2018, !2013, !2008, !1926}
!2023 = !{!2021, !2016, !2011, !1929, !1947}
!2024 = !{!2021, !2016, !2011, !1926}
!2025 = !{!2018, !2013, !2008, !1929, !1947}
!2026 = !{!1926, !1947}
!2027 = !{!2028}
!2028 = distinct !{!2028, !2029, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!2029 = distinct !{!2029, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!2030 = !{!2031}
!2031 = distinct !{!2031, !2029, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!2032 = !{!2033}
!2033 = distinct !{!2033, !2034, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!2034 = distinct !{!2034, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!2035 = !{!2036}
!2036 = distinct !{!2036, !2034, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!2037 = !{!2038}
!2038 = distinct !{!2038, !2039, !"cmpfunc: %a"}
!2039 = distinct !{!2039, !"cmpfunc"}
!2040 = !{!2041}
!2041 = distinct !{!2041, !2039, !"cmpfunc: %b"}
!2042 = !{!2038, !2033, !2028, !1926}
!2043 = !{!2041, !2036, !2031, !1929, !1947}
!2044 = !{!2041, !2036, !2031, !1926}
!2045 = !{!2038, !2033, !2028, !1929, !1947}
!2046 = !{!2047}
!2047 = distinct !{!2047, !2048, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!2048 = distinct !{!2048, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!2049 = !{!2050}
!2050 = distinct !{!2050, !2048, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!2051 = !{!2052}
!2052 = distinct !{!2052, !2053, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!2053 = distinct !{!2053, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!2054 = !{!2055}
!2055 = distinct !{!2055, !2053, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!2056 = !{!2057}
!2057 = distinct !{!2057, !2058, !"cmpfunc: %a"}
!2058 = distinct !{!2058, !"cmpfunc"}
!2059 = !{!2060}
!2060 = distinct !{!2060, !2058, !"cmpfunc: %b"}
!2061 = !{!2057, !2052, !2047, !1926}
!2062 = !{!2060, !2055, !2050, !1929, !1947}
!2063 = !{!2060, !2055, !2050, !1926}
!2064 = !{!2057, !2052, !2047, !1929, !1947}
!2065 = !{!2066}
!2066 = distinct !{!2066, !2067, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!2067 = distinct !{!2067, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!2068 = !{!2069}
!2069 = distinct !{!2069, !2067, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!2070 = !{!2071}
!2071 = distinct !{!2071, !2072, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!2072 = distinct !{!2072, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!2073 = !{!2074}
!2074 = distinct !{!2074, !2072, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!2075 = !{!2076}
!2076 = distinct !{!2076, !2077, !"cmpfunc: %a"}
!2077 = distinct !{!2077, !"cmpfunc"}
!2078 = !{!2079}
!2079 = distinct !{!2079, !2077, !"cmpfunc: %b"}
!2080 = !{!2076, !2071, !2066, !1926}
!2081 = !{!2079, !2074, !2069, !1929, !1947}
!2082 = !{!2079, !2074, !2069, !1926}
!2083 = !{!2076, !2071, !2066, !1929, !1947}
!2084 = !{!2085}
!2085 = distinct !{!2085, !2086, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!2086 = distinct !{!2086, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!2087 = !{!2088}
!2088 = distinct !{!2088, !2086, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!2089 = !{!2090}
!2090 = distinct !{!2090, !2091, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!2091 = distinct !{!2091, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!2092 = !{!2093}
!2093 = distinct !{!2093, !2091, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!2094 = !{!2095}
!2095 = distinct !{!2095, !2096, !"cmpfunc: %a"}
!2096 = distinct !{!2096, !"cmpfunc"}
!2097 = !{!2098}
!2098 = distinct !{!2098, !2096, !"cmpfunc: %b"}
!2099 = !{!2095, !2090, !2085, !1926}
!2100 = !{!2098, !2093, !2088, !1929, !1947}
!2101 = !{!2098, !2093, !2088, !1926}
!2102 = !{!2095, !2090, !2085, !1929, !1947}
!2103 = !{!2104}
!2104 = distinct !{!2104, !2105, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!2105 = distinct !{!2105, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!2106 = !{!2107}
!2107 = distinct !{!2107, !2105, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!2108 = !{!2109}
!2109 = distinct !{!2109, !2110, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!2110 = distinct !{!2110, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!2111 = !{!2112}
!2112 = distinct !{!2112, !2110, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!2113 = !{!2114}
!2114 = distinct !{!2114, !2115, !"cmpfunc: %a"}
!2115 = distinct !{!2115, !"cmpfunc"}
!2116 = !{!2117}
!2117 = distinct !{!2117, !2115, !"cmpfunc: %b"}
!2118 = !{!2114, !2109, !2104, !1926}
!2119 = !{!2117, !2112, !2107, !1929, !1947}
!2120 = !{!2117, !2112, !2107, !1926}
!2121 = !{!2114, !2109, !2104, !1929, !1947}
!2122 = !{!1929, !1947}
!2123 = !{!2124, !2126, !2128, !1929}
!2124 = distinct !{!2124, !2125, !"cmpfunc: %b"}
!2125 = distinct !{!2125, !"cmpfunc"}
!2126 = distinct !{!2126, !2127, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!2127 = distinct !{!2127, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!2128 = distinct !{!2128, !2129, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!2129 = distinct !{!2129, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!2130 = !{!2131, !2132, !2133, !1926, !1947}
!2131 = distinct !{!2131, !2125, !"cmpfunc: %a"}
!2132 = distinct !{!2132, !2127, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!2133 = distinct !{!2133, !2129, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!2134 = !{!2135, !2137, !2139, !1929}
!2135 = distinct !{!2135, !2136, !"cmpfunc: %b"}
!2136 = distinct !{!2136, !"cmpfunc"}
!2137 = distinct !{!2137, !2138, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!2138 = distinct !{!2138, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!2139 = distinct !{!2139, !2140, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!2140 = distinct !{!2140, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!2141 = !{!2142, !2143, !2144, !1926, !1947}
!2142 = distinct !{!2142, !2136, !"cmpfunc: %a"}
!2143 = distinct !{!2143, !2138, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!2144 = distinct !{!2144, !2140, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!2145 = !{!2146, !2148, !1926, !1947}
!2146 = distinct !{!2146, !2147, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0d6a433dc34646a4E: %self"}
!2147 = distinct !{!2147, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0d6a433dc34646a4E"}
!2148 = distinct !{!2148, !2149, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h91c8a89f30d81e4aE: %_1"}
!2149 = distinct !{!2149, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h91c8a89f30d81e4aE"}
!2150 = !{!2151}
!2151 = distinct !{!2151, !2152, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h88e3c5d50b4d1a5aE: %v.0"}
!2152 = distinct !{!2152, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h88e3c5d50b4d1a5aE"}
!2153 = !{!2154}
!2154 = distinct !{!2154, !2155, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!2155 = distinct !{!2155, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!2156 = !{!2157}
!2157 = distinct !{!2157, !2155, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!2158 = !{!2159}
!2159 = distinct !{!2159, !2160, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!2160 = distinct !{!2160, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!2161 = !{!2162}
!2162 = distinct !{!2162, !2163, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h15546792d4618da6E: %_0"}
!2163 = distinct !{!2163, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h15546792d4618da6E"}
!2164 = !{!2165}
!2165 = distinct !{!2165, !2160, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!2166 = !{!2167}
!2167 = distinct !{!2167, !2168, !"cmpfunc: %a"}
!2168 = distinct !{!2168, !"cmpfunc"}
!2169 = !{!2170}
!2170 = distinct !{!2170, !2168, !"cmpfunc: %b"}
!2171 = !{!2167, !2159, !2154, !2151, !1929}
!2172 = !{!2170, !2165, !2157, !2162, !1926, !1947}
!2173 = !{!2170, !2165, !2157, !2151, !1929}
!2174 = !{!2167, !2159, !2154, !2162, !1926, !1947}
!2175 = !{!2162, !2176, !2151, !1929, !1947}
!2176 = distinct !{!2176, !2163, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h15546792d4618da6E: %is_less"}
!2177 = !{!2178}
!2178 = distinct !{!2178, !2179, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!2179 = distinct !{!2179, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!2180 = !{!2181}
!2181 = distinct !{!2181, !2179, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!2182 = !{!2183}
!2183 = distinct !{!2183, !2184, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!2184 = distinct !{!2184, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!2185 = !{!2186}
!2186 = distinct !{!2186, !2187, !"_ZN4core5slice4sort6shared9smallsort10merge_down17ha9aa82fca9532922E: %_0"}
!2187 = distinct !{!2187, !"_ZN4core5slice4sort6shared9smallsort10merge_down17ha9aa82fca9532922E"}
!2188 = !{!2189}
!2189 = distinct !{!2189, !2184, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!2190 = !{!2191}
!2191 = distinct !{!2191, !2192, !"cmpfunc: %a"}
!2192 = distinct !{!2192, !"cmpfunc"}
!2193 = !{!2194}
!2194 = distinct !{!2194, !2192, !"cmpfunc: %b"}
!2195 = !{!2191, !2183, !2178, !2151, !1929}
!2196 = !{!2194, !2189, !2181, !2186, !1926, !1947}
!2197 = !{!2194, !2189, !2181, !2151, !1929}
!2198 = !{!2191, !2183, !2178, !2186, !1926, !1947}
!2199 = !{!2186, !2200, !2151, !1929, !1947}
!2200 = distinct !{!2200, !2187, !"_ZN4core5slice4sort6shared9smallsort10merge_down17ha9aa82fca9532922E: %is_less"}
!2201 = !{!2151, !1929}
!2202 = !{!2151, !1929, !1947}
!2203 = !{!1926, !1929, !1947}
!2204 = !{!1926, !1929}
!2205 = !{!2206, !2208, !1947}
!2206 = distinct !{!2206, !2207, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0d6a433dc34646a4E: %self"}
!2207 = distinct !{!2207, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0d6a433dc34646a4E"}
!2208 = distinct !{!2208, !2209, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h91c8a89f30d81e4aE: %_1"}
!2209 = distinct !{!2209, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h91c8a89f30d81e4aE"}
!2210 = !{!2211}
!2211 = distinct !{!2211, !2212, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!2212 = distinct !{!2212, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!2213 = !{!2214}
!2214 = distinct !{!2214, !2212, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!2215 = !{!2216}
!2216 = distinct !{!2216, !2217, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!2217 = distinct !{!2217, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!2218 = !{!2219}
!2219 = distinct !{!2219, !2220, !"_ZN4core5slice4sort6shared5pivot7median317h65cba05cf823dac8E: %c"}
!2220 = distinct !{!2220, !"_ZN4core5slice4sort6shared5pivot7median317h65cba05cf823dac8E"}
!2221 = !{!2222}
!2222 = distinct !{!2222, !2217, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!2223 = !{!2224}
!2224 = distinct !{!2224, !2225, !"cmpfunc: %a"}
!2225 = distinct !{!2225, !"cmpfunc"}
!2226 = !{!2227}
!2227 = distinct !{!2227, !2225, !"cmpfunc: %b"}
!2228 = !{!2224, !2216, !2211, !2229}
!2229 = distinct !{!2229, !2230, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17hbb174469a395bbb3E: %v.0"}
!2230 = distinct !{!2230, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17hbb174469a395bbb3E"}
!2231 = !{!2227, !2222, !2214, !2219, !2232}
!2232 = distinct !{!2232, !2230, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17hbb174469a395bbb3E: %is_less"}
!2233 = !{!2227, !2222, !2214, !2229}
!2234 = !{!2224, !2216, !2211, !2219, !2232}
!2235 = !{!2236, !2238, !2240, !2229}
!2236 = distinct !{!2236, !2237, !"cmpfunc: %b"}
!2237 = distinct !{!2237, !"cmpfunc"}
!2238 = distinct !{!2238, !2239, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!2239 = distinct !{!2239, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!2240 = distinct !{!2240, !2241, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!2241 = distinct !{!2241, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!2242 = !{!2243, !2244, !2245, !2232}
!2243 = distinct !{!2243, !2237, !"cmpfunc: %a"}
!2244 = distinct !{!2244, !2239, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!2245 = distinct !{!2245, !2241, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!2246 = !{!2247, !2249, !2251}
!2247 = distinct !{!2247, !2248, !"cmpfunc: %a"}
!2248 = distinct !{!2248, !"cmpfunc"}
!2249 = distinct !{!2249, !2250, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!2250 = distinct !{!2250, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!2251 = distinct !{!2251, !2252, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!2252 = distinct !{!2252, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!2253 = !{!2254, !2255, !2256}
!2254 = distinct !{!2254, !2248, !"cmpfunc: %b"}
!2255 = distinct !{!2255, !2250, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!2256 = distinct !{!2256, !2252, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!2257 = !{!2258}
!2258 = distinct !{!2258, !2259, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17hbf53dee0aa959731E: %v.0"}
!2259 = distinct !{!2259, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17hbf53dee0aa959731E"}
!2260 = !{!2261}
!2261 = distinct !{!2261, !2259, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17hbf53dee0aa959731E: %scratch.0"}
!2262 = !{!2263, !2265, !2267, !2258}
!2263 = distinct !{!2263, !2264, !"cmpfunc: %b"}
!2264 = distinct !{!2264, !"cmpfunc"}
!2265 = distinct !{!2265, !2266, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!2266 = distinct !{!2266, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!2267 = distinct !{!2267, !2268, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!2268 = distinct !{!2268, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!2269 = !{!2270, !2271, !2272, !2261}
!2270 = distinct !{!2270, !2264, !"cmpfunc: %a"}
!2271 = distinct !{!2271, !2266, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!2272 = distinct !{!2272, !2268, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!2273 = !{!2272}
!2274 = !{!2267}
!2275 = !{!2271}
!2276 = !{!2265}
!2277 = !{!2270}
!2278 = !{!2263}
!2279 = !{!2270, !2271, !2272, !2258}
!2280 = !{!2263, !2265, !2267, !2261}
!2281 = !{!2282, !2258}
!2282 = distinct !{!2282, !2283, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E: %self"}
!2283 = distinct !{!2283, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E"}
!2284 = !{!2285, !2287, !2289, !2258}
!2285 = distinct !{!2285, !2286, !"cmpfunc: %a"}
!2286 = distinct !{!2286, !"cmpfunc"}
!2287 = distinct !{!2287, !2288, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!2288 = distinct !{!2288, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!2289 = distinct !{!2289, !2290, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!2290 = distinct !{!2290, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!2291 = !{!2292, !2293, !2294, !2261}
!2292 = distinct !{!2292, !2286, !"cmpfunc: %b"}
!2293 = distinct !{!2293, !2288, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!2294 = distinct !{!2294, !2290, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!2295 = !{!2296, !2258}
!2296 = distinct !{!2296, !2297, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E: %self"}
!2297 = distinct !{!2297, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E"}
!2298 = !{!2299, !2301, !2303, !2258}
!2299 = distinct !{!2299, !2300, !"cmpfunc: %a"}
!2300 = distinct !{!2300, !"cmpfunc"}
!2301 = distinct !{!2301, !2302, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!2302 = distinct !{!2302, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!2303 = distinct !{!2303, !2304, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!2304 = distinct !{!2304, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!2305 = !{!2306, !2307, !2308, !2261}
!2306 = distinct !{!2306, !2300, !"cmpfunc: %b"}
!2307 = distinct !{!2307, !2302, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!2308 = distinct !{!2308, !2304, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!2309 = !{!2310, !2258}
!2310 = distinct !{!2310, !2311, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E: %self"}
!2311 = distinct !{!2311, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E"}
!2312 = !{!2313, !2315, !2317, !2258}
!2313 = distinct !{!2313, !2314, !"cmpfunc: %a"}
!2314 = distinct !{!2314, !"cmpfunc"}
!2315 = distinct !{!2315, !2316, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!2316 = distinct !{!2316, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!2317 = distinct !{!2317, !2318, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!2318 = distinct !{!2318, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!2319 = !{!2320, !2321, !2322, !2261}
!2320 = distinct !{!2320, !2314, !"cmpfunc: %b"}
!2321 = distinct !{!2321, !2316, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!2322 = distinct !{!2322, !2318, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!2323 = !{!2324, !2258}
!2324 = distinct !{!2324, !2325, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E: %self"}
!2325 = distinct !{!2325, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E"}
!2326 = !{!2327, !2329, !2331, !2258}
!2327 = distinct !{!2327, !2328, !"cmpfunc: %b"}
!2328 = distinct !{!2328, !"cmpfunc"}
!2329 = distinct !{!2329, !2330, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!2330 = distinct !{!2330, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!2331 = distinct !{!2331, !2332, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!2332 = distinct !{!2332, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!2333 = !{!2334, !2335, !2336, !2261}
!2334 = distinct !{!2334, !2328, !"cmpfunc: %a"}
!2335 = distinct !{!2335, !2330, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!2336 = distinct !{!2336, !2332, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!2337 = !{!2336}
!2338 = !{!2331}
!2339 = !{!2335}
!2340 = !{!2329}
!2341 = !{!2334}
!2342 = !{!2327}
!2343 = !{!2334, !2335, !2336, !2258}
!2344 = !{!2327, !2329, !2331, !2261}
!2345 = !{!2346, !2258}
!2346 = distinct !{!2346, !2347, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E: %self"}
!2347 = distinct !{!2347, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E"}
!2348 = !{!2349, !2261}
!2349 = distinct !{!2349, !2350, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E: %self"}
!2350 = distinct !{!2350, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E"}
!2351 = !{!2349, !2258}
!2352 = !{!2258, !2261}
!2353 = distinct !{!2353, !966, !967}
!2354 = distinct !{!2354, !967, !966}
!2355 = !{!2356, !2358}
!2356 = distinct !{!2356, !2357, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hc12d825464135f3eE: %pair"}
!2357 = distinct !{!2357, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hc12d825464135f3eE"}
!2358 = distinct !{!2358, !2357, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hc12d825464135f3eE: %self.0"}
!2359 = !{!2360}
!2360 = distinct !{!2360, !2361, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h6c33e90b131fae27E: %v.0"}
!2361 = distinct !{!2361, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h6c33e90b131fae27E"}
!2362 = !{!2363}
!2363 = distinct !{!2363, !2361, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h6c33e90b131fae27E: %scratch.0"}
!2364 = !{!2365, !2367, !2369, !2371, !2360}
!2365 = distinct !{!2365, !2366, !"cmpfunc: %a"}
!2366 = distinct !{!2366, !"cmpfunc"}
!2367 = distinct !{!2367, !2368, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!2368 = distinct !{!2368, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!2369 = distinct !{!2369, !2370, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!2370 = distinct !{!2370, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!2371 = distinct !{!2371, !2372, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h76184c798ac6e76dE: %b"}
!2372 = distinct !{!2372, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h76184c798ac6e76dE"}
!2373 = !{!2374, !2375, !2376, !2377, !2363}
!2374 = distinct !{!2374, !2366, !"cmpfunc: %b"}
!2375 = distinct !{!2375, !2368, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!2376 = distinct !{!2376, !2370, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!2377 = distinct !{!2377, !2372, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h76184c798ac6e76dE: %a"}
!2378 = !{!2377}
!2379 = !{!2371}
!2380 = !{!2369}
!2381 = !{!2376}
!2382 = !{!2367}
!2383 = !{!2375}
!2384 = !{!2365}
!2385 = !{!2374}
!2386 = !{!2374, !2375, !2376, !2377, !2360}
!2387 = !{!2365, !2367, !2369, !2371, !2363}
!2388 = !{!2389, !2360}
!2389 = distinct !{!2389, !2390, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E: %self"}
!2390 = distinct !{!2390, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E"}
!2391 = !{!2392, !2394, !2396, !2398, !2360}
!2392 = distinct !{!2392, !2393, !"cmpfunc: %b"}
!2393 = distinct !{!2393, !"cmpfunc"}
!2394 = distinct !{!2394, !2395, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!2395 = distinct !{!2395, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!2396 = distinct !{!2396, !2397, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!2397 = distinct !{!2397, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!2398 = distinct !{!2398, !2399, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h76184c798ac6e76dE: %a"}
!2399 = distinct !{!2399, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h76184c798ac6e76dE"}
!2400 = !{!2401, !2402, !2403, !2404, !2363}
!2401 = distinct !{!2401, !2393, !"cmpfunc: %a"}
!2402 = distinct !{!2402, !2395, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!2403 = distinct !{!2403, !2397, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!2404 = distinct !{!2404, !2399, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h76184c798ac6e76dE: %b"}
!2405 = !{!2406, !2360}
!2406 = distinct !{!2406, !2407, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E: %self"}
!2407 = distinct !{!2407, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E"}
!2408 = !{!2409, !2411, !2413, !2415, !2360}
!2409 = distinct !{!2409, !2410, !"cmpfunc: %b"}
!2410 = distinct !{!2410, !"cmpfunc"}
!2411 = distinct !{!2411, !2412, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!2412 = distinct !{!2412, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!2413 = distinct !{!2413, !2414, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!2414 = distinct !{!2414, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!2415 = distinct !{!2415, !2416, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h76184c798ac6e76dE: %a"}
!2416 = distinct !{!2416, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h76184c798ac6e76dE"}
!2417 = !{!2418, !2419, !2420, !2421, !2363}
!2418 = distinct !{!2418, !2410, !"cmpfunc: %a"}
!2419 = distinct !{!2419, !2412, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!2420 = distinct !{!2420, !2414, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!2421 = distinct !{!2421, !2416, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h76184c798ac6e76dE: %b"}
!2422 = !{!2423, !2360}
!2423 = distinct !{!2423, !2424, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E: %self"}
!2424 = distinct !{!2424, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E"}
!2425 = !{!2426, !2428, !2430, !2432, !2360}
!2426 = distinct !{!2426, !2427, !"cmpfunc: %b"}
!2427 = distinct !{!2427, !"cmpfunc"}
!2428 = distinct !{!2428, !2429, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!2429 = distinct !{!2429, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!2430 = distinct !{!2430, !2431, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!2431 = distinct !{!2431, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!2432 = distinct !{!2432, !2433, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h76184c798ac6e76dE: %a"}
!2433 = distinct !{!2433, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h76184c798ac6e76dE"}
!2434 = !{!2435, !2436, !2437, !2438, !2363}
!2435 = distinct !{!2435, !2427, !"cmpfunc: %a"}
!2436 = distinct !{!2436, !2429, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!2437 = distinct !{!2437, !2431, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!2438 = distinct !{!2438, !2433, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h76184c798ac6e76dE: %b"}
!2439 = !{!2440, !2360}
!2440 = distinct !{!2440, !2441, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E: %self"}
!2441 = distinct !{!2441, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E"}
!2442 = !{!2443, !2445, !2447, !2449, !2360}
!2443 = distinct !{!2443, !2444, !"cmpfunc: %a"}
!2444 = distinct !{!2444, !"cmpfunc"}
!2445 = distinct !{!2445, !2446, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!2446 = distinct !{!2446, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!2447 = distinct !{!2447, !2448, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!2448 = distinct !{!2448, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!2449 = distinct !{!2449, !2450, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h76184c798ac6e76dE: %b"}
!2450 = distinct !{!2450, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h76184c798ac6e76dE"}
!2451 = !{!2452, !2453, !2454, !2455, !2363}
!2452 = distinct !{!2452, !2444, !"cmpfunc: %b"}
!2453 = distinct !{!2453, !2446, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!2454 = distinct !{!2454, !2448, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!2455 = distinct !{!2455, !2450, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h76184c798ac6e76dE: %a"}
!2456 = !{!2455}
!2457 = !{!2449}
!2458 = !{!2447}
!2459 = !{!2454}
!2460 = !{!2445}
!2461 = !{!2453}
!2462 = !{!2443}
!2463 = !{!2452}
!2464 = !{!2452, !2453, !2454, !2455, !2360}
!2465 = !{!2443, !2445, !2447, !2449, !2363}
!2466 = !{!2467, !2360}
!2467 = distinct !{!2467, !2468, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E: %self"}
!2468 = distinct !{!2468, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E"}
!2469 = !{!2470, !2363}
!2470 = distinct !{!2470, !2471, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E: %self"}
!2471 = distinct !{!2471, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E"}
!2472 = !{!2470, !2360}
!2473 = !{!2360, !2363}
!2474 = distinct !{!2474, !966, !967}
!2475 = distinct !{!2475, !967, !966}
!2476 = !{!2477}
!2477 = distinct !{!2477, !2478, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hecb21546e15286f0E: %self.0"}
!2478 = distinct !{!2478, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hecb21546e15286f0E"}
!2479 = !{!2480, !2482, !2477}
!2480 = distinct !{!2480, !2481, !"_ZN5alloc5slice11stable_sort17h517e7eb8fb4f0f4aE: %v.0"}
!2481 = distinct !{!2481, !"_ZN5alloc5slice11stable_sort17h517e7eb8fb4f0f4aE"}
!2482 = distinct !{!2482, !2481, !"_ZN5alloc5slice11stable_sort17h517e7eb8fb4f0f4aE: argument 1"}
!2483 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!2484 = !{!2485}
!2485 = distinct !{!2485, !2486, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hd7181ff24b95d99dE: %self.0"}
!2486 = distinct !{!2486, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hd7181ff24b95d99dE"}
!2487 = !{!2488, !2490, !2485}
!2488 = distinct !{!2488, !2489, !"_ZN5alloc5slice11stable_sort17h4888f4841a327571E: %v.0"}
!2489 = distinct !{!2489, !"_ZN5alloc5slice11stable_sort17h4888f4841a327571E"}
!2490 = distinct !{!2490, !2489, !"_ZN5alloc5slice11stable_sort17h4888f4841a327571E: argument 1"}
!2491 = distinct !{!2491, !966, !967}
!2492 = distinct !{!2492, !967, !966}
!2493 = !{!2494}
!2494 = distinct !{!2494, !2495, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h66fdb4fea63614c6E: %self.0"}
!2495 = distinct !{!2495, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h66fdb4fea63614c6E"}
!2496 = !{!2497}
!2497 = distinct !{!2497, !2498, !"_ZN5alloc5slice11stable_sort17h1e701b3ec48083c6E: %v.0"}
!2498 = distinct !{!2498, !"_ZN5alloc5slice11stable_sort17h1e701b3ec48083c6E"}
!2499 = !{!2497, !2500, !2494}
!2500 = distinct !{!2500, !2498, !"_ZN5alloc5slice11stable_sort17h1e701b3ec48083c6E: argument 1"}
!2501 = !{!2502}
!2502 = distinct !{!2502, !2503, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!2503 = distinct !{!2503, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!2504 = !{!2505}
!2505 = distinct !{!2505, !2503, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!2506 = !{!2507}
!2507 = distinct !{!2507, !2508, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!2508 = distinct !{!2508, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!2509 = !{!2510}
!2510 = distinct !{!2510, !2508, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!2511 = !{!2512}
!2512 = distinct !{!2512, !2513, !"cmpfunc: %a"}
!2513 = distinct !{!2513, !"cmpfunc"}
!2514 = !{!2515}
!2515 = distinct !{!2515, !2513, !"cmpfunc: %b"}
!2516 = !{!2512, !2507, !2502, !2517, !2497, !2494}
!2517 = distinct !{!2517, !2518, !"_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h73d95d3ba583ee1dE: %v.0"}
!2518 = distinct !{!2518, !"_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h73d95d3ba583ee1dE"}
!2519 = !{!2515, !2510, !2505, !2500}
!2520 = !{!2515, !2510, !2505, !2517, !2497, !2494}
!2521 = !{!2512, !2507, !2502, !2500}
!2522 = !{!2517, !2497, !2494}
!2523 = !{!2500}
!2524 = !{!2525, !2527, !2529, !2517, !2497, !2494}
!2525 = distinct !{!2525, !2526, !"cmpfunc: %b"}
!2526 = distinct !{!2526, !"cmpfunc"}
!2527 = distinct !{!2527, !2528, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!2528 = distinct !{!2528, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!2529 = distinct !{!2529, !2530, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!2530 = distinct !{!2530, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!2531 = !{!2532, !2533, !2534, !2500}
!2532 = distinct !{!2532, !2526, !"cmpfunc: %a"}
!2533 = distinct !{!2533, !2528, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!2534 = distinct !{!2534, !2530, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!2535 = !{!2536, !2538, !2500}
!2536 = distinct !{!2536, !2537, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0d6a433dc34646a4E: %self"}
!2537 = distinct !{!2537, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0d6a433dc34646a4E"}
!2538 = distinct !{!2538, !2539, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h91c8a89f30d81e4aE: %_1"}
!2539 = distinct !{!2539, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h91c8a89f30d81e4aE"}
!2540 = !{!2541}
!2541 = distinct !{!2541, !2503, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a:It1"}
!2542 = !{!2543}
!2543 = distinct !{!2543, !2503, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b:It1"}
!2544 = !{!2545}
!2545 = distinct !{!2545, !2508, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0:It1"}
!2546 = !{!2547}
!2547 = distinct !{!2547, !2508, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1:It1"}
!2548 = !{!2549}
!2549 = distinct !{!2549, !2513, !"cmpfunc: %a:It1"}
!2550 = !{!2551}
!2551 = distinct !{!2551, !2513, !"cmpfunc: %b:It1"}
!2552 = !{!2549, !2545, !2541, !2517, !2497, !2494}
!2553 = !{!2551, !2547, !2543, !2500}
!2554 = !{!2551, !2547, !2543, !2517, !2497, !2494}
!2555 = !{!2549, !2545, !2541, !2500}
