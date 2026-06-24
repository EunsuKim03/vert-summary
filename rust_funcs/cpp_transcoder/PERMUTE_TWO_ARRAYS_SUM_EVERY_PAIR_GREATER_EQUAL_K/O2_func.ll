define noundef range(i32 0, 2) i32 @f_gold(ptr noalias noundef nonnull align 4 %a.0, i64 noundef range(i64 0, 2305843009213693952) %a.1, ptr noalias noundef nonnull align 4 %b.0, i64 noundef range(i64 0, 2305843009213693952) %b.1, i32 noundef %n, i32 noundef %k) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %compare.i3 = alloca [0 x i8], align 1
  %is_less.i.i4 = alloca [8 x i8], align 8
  %is_less.i.i = alloca [8 x i8], align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2603)
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %compare.i3)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2606)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !2603
  store ptr %compare.i3, ptr %is_less.i.i, align 8, !noalias !2609
  %b.i.i = icmp samesign ult i64 %a.1, 2
  br i1 %b.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h12f965c5c27065caE.exit", label %bb7.i.i, !prof !2611

bb7.i.i:                                          ; preds = %start
  %b1.i.i = icmp samesign ult i64 %a.1, 21
  br i1 %b1.i.i, label %bb9.i.i, label %bb10.i.i, !prof !2611

bb10.i.i:                                         ; preds = %bb7.i.i
; call core::slice::sort::stable::driftsort_main
  call void @_ZN4core5slice4sort6stable14driftsort_main17h06065741614b238eE(ptr noalias noundef nonnull align 4 %a.0, i64 noundef range(i64 0, 2305843009213693952) %a.1, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less.i.i)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h12f965c5c27065caE.exit"

bb9.i.i:                                          ; preds = %bb7.i.i
  %v_end.idx.i.i.i = shl nuw nsw i64 %a.1, 2
  %v_end.i.i.i = getelementptr inbounds nuw i8, ptr %a.0, i64 %v_end.idx.i.i.i
  %tail.sroa.0.01.i.i.i = getelementptr inbounds nuw i8, ptr %a.0, i64 4
  %0 = and i64 %a.1, 1
  %lcmp.mod.not.not = icmp eq i64 %0, 0
  br i1 %lcmp.mod.not.not, label %bb5.i.i.i.prol, label %bb5.i.i.i.prol.loopexit

bb5.i.i.i.prol:                                   ; preds = %bb9.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2612)
  call void @llvm.experimental.noalias.scope.decl(metadata !2615)
  call void @llvm.experimental.noalias.scope.decl(metadata !2617)
  call void @llvm.experimental.noalias.scope.decl(metadata !2620)
  %_4.i.i.i.i.i.i.prol = load i32, ptr %tail.sroa.0.01.i.i.i, align 4, !alias.scope !2622, !noalias !2625, !noundef !18
  %_5.i.i.i.i.i.i.prol = load i32, ptr %a.0, align 4, !alias.scope !2626, !noalias !2627, !noundef !18
  %_0.i.i.i.i.i.prol = icmp slt i32 %_4.i.i.i.i.i.i.prol, %_5.i.i.i.i.i.i.prol
  br i1 %_0.i.i.i.i.i.prol, label %bb4.i.i.i.i.prol, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h549ae1c5c9209dffE.exit.i.i.i.prol

bb4.i.i.i.i.prol:                                 ; preds = %bb5.i.i.i.prol, %bb7.i.i.i.i.prol
  %1 = phi i32 [ %_5.i.i2.i.i.i.i.prol, %bb7.i.i.i.i.prol ], [ %_5.i.i.i.i.i.i.prol, %bb5.i.i.i.prol ]
  %gap_guard.sroa.5.0.i.i.i.i.prol = phi ptr [ %sift.sroa.0.0.i.i.i.i.prol, %bb7.i.i.i.i.prol ], [ %tail.sroa.0.01.i.i.i, %bb5.i.i.i.prol ]
  %sift.sroa.0.0.i.i.i.i.prol = phi ptr [ %2, %bb7.i.i.i.i.prol ], [ %a.0, %bb5.i.i.i.prol ]
  store i32 %1, ptr %gap_guard.sroa.5.0.i.i.i.i.prol, align 4, !alias.scope !2628, !noalias !2629
  %_18.i.i.i.i.prol = icmp eq ptr %sift.sroa.0.0.i.i.i.i.prol, %a.0
  br i1 %_18.i.i.i.i.prol, label %bb10.i.i.i.i.prol, label %bb7.i.i.i.i.prol

bb7.i.i.i.i.prol:                                 ; preds = %bb4.i.i.i.i.prol
  %2 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.i.prol, i64 -4
  %_5.i.i2.i.i.i.i.prol = load i32, ptr %2, align 4, !alias.scope !2630, !noalias !2635, !noundef !18
  %_0.i3.i.i.i.i.prol = icmp slt i32 %_4.i.i.i.i.i.i.prol, %_5.i.i2.i.i.i.i.prol
  br i1 %_0.i3.i.i.i.i.prol, label %bb4.i.i.i.i.prol, label %bb10.i.i.i.i.prol

bb10.i.i.i.i.prol:                                ; preds = %bb7.i.i.i.i.prol, %bb4.i.i.i.i.prol
  %sift.sroa.0.0.i.lcssa.i.i.i.prol = phi ptr [ %sift.sroa.0.0.i.i.i.i.prol, %bb7.i.i.i.i.prol ], [ %a.0, %bb4.i.i.i.i.prol ]
  store i32 %_4.i.i.i.i.i.i.prol, ptr %sift.sroa.0.0.i.lcssa.i.i.i.prol, align 4, !alias.scope !2628, !noalias !2638
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h549ae1c5c9209dffE.exit.i.i.i.prol

_ZN4core5slice4sort6shared9smallsort11insert_tail17h549ae1c5c9209dffE.exit.i.i.i.prol: ; preds = %bb10.i.i.i.i.prol, %bb5.i.i.i.prol
  %tail.sroa.0.0.i.i.i.prol = getelementptr inbounds nuw i8, ptr %a.0, i64 8
  br label %bb5.i.i.i.prol.loopexit

bb5.i.i.i.prol.loopexit:                          ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h549ae1c5c9209dffE.exit.i.i.i.prol, %bb9.i.i
  %tail.sroa.0.04.i.i.i.unr = phi ptr [ %tail.sroa.0.01.i.i.i, %bb9.i.i ], [ %tail.sroa.0.0.i.i.i.prol, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h549ae1c5c9209dffE.exit.i.i.i.prol ]
  %v.0.pn3.i.i.i.unr = phi ptr [ %a.0, %bb9.i.i ], [ %tail.sroa.0.01.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h549ae1c5c9209dffE.exit.i.i.i.prol ]
  %3 = icmp eq i64 %a.1, 2
  br i1 %3, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h12f965c5c27065caE.exit", label %bb5.i.i.i

bb5.i.i.i:                                        ; preds = %bb5.i.i.i.prol.loopexit, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h549ae1c5c9209dffE.exit.i.i.i.1
  %tail.sroa.0.04.i.i.i = phi ptr [ %tail.sroa.0.0.i.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h549ae1c5c9209dffE.exit.i.i.i.1 ], [ %tail.sroa.0.04.i.i.i.unr, %bb5.i.i.i.prol.loopexit ]
  %v.0.pn3.i.i.i = phi ptr [ %tail.sroa.0.0.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h549ae1c5c9209dffE.exit.i.i.i.1 ], [ %v.0.pn3.i.i.i.unr, %bb5.i.i.i.prol.loopexit ]
  call void @llvm.experimental.noalias.scope.decl(metadata !2612)
  call void @llvm.experimental.noalias.scope.decl(metadata !2615)
  call void @llvm.experimental.noalias.scope.decl(metadata !2617)
  call void @llvm.experimental.noalias.scope.decl(metadata !2620)
  %_4.i.i.i.i.i.i = load i32, ptr %tail.sroa.0.04.i.i.i, align 4, !alias.scope !2622, !noalias !2625, !noundef !18
  %_5.i.i.i.i.i.i = load i32, ptr %v.0.pn3.i.i.i, align 4, !alias.scope !2626, !noalias !2627, !noundef !18
  %_0.i.i.i.i.i = icmp slt i32 %_4.i.i.i.i.i.i, %_5.i.i.i.i.i.i
  br i1 %_0.i.i.i.i.i, label %bb4.i.i.i.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h549ae1c5c9209dffE.exit.i.i.i

bb4.i.i.i.i:                                      ; preds = %bb5.i.i.i, %bb7.i.i.i.i
  %4 = phi i32 [ %_5.i.i2.i.i.i.i, %bb7.i.i.i.i ], [ %_5.i.i.i.i.i.i, %bb5.i.i.i ]
  %gap_guard.sroa.5.0.i.i.i.i = phi ptr [ %sift.sroa.0.0.i.i.i.i, %bb7.i.i.i.i ], [ %tail.sroa.0.04.i.i.i, %bb5.i.i.i ]
  %sift.sroa.0.0.i.i.i.i = phi ptr [ %5, %bb7.i.i.i.i ], [ %v.0.pn3.i.i.i, %bb5.i.i.i ]
  store i32 %4, ptr %gap_guard.sroa.5.0.i.i.i.i, align 4, !alias.scope !2628, !noalias !2629
  %_18.i.i.i.i = icmp eq ptr %sift.sroa.0.0.i.i.i.i, %a.0
  br i1 %_18.i.i.i.i, label %bb10.i.i.i.i, label %bb7.i.i.i.i

bb7.i.i.i.i:                                      ; preds = %bb4.i.i.i.i
  %5 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.i, i64 -4
  %_5.i.i2.i.i.i.i = load i32, ptr %5, align 4, !alias.scope !2630, !noalias !2635, !noundef !18
  %_0.i3.i.i.i.i = icmp slt i32 %_4.i.i.i.i.i.i, %_5.i.i2.i.i.i.i
  br i1 %_0.i3.i.i.i.i, label %bb4.i.i.i.i, label %bb10.i.i.i.i

bb10.i.i.i.i:                                     ; preds = %bb7.i.i.i.i, %bb4.i.i.i.i
  %sift.sroa.0.0.i.lcssa.i.i.i = phi ptr [ %sift.sroa.0.0.i.i.i.i, %bb7.i.i.i.i ], [ %a.0, %bb4.i.i.i.i ]
  store i32 %_4.i.i.i.i.i.i, ptr %sift.sroa.0.0.i.lcssa.i.i.i, align 4, !alias.scope !2628, !noalias !2638
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h549ae1c5c9209dffE.exit.i.i.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h549ae1c5c9209dffE.exit.i.i.i: ; preds = %bb10.i.i.i.i, %bb5.i.i.i
  %tail.sroa.0.0.i.i.i = getelementptr inbounds nuw i8, ptr %tail.sroa.0.04.i.i.i, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !2643)
  call void @llvm.experimental.noalias.scope.decl(metadata !2645)
  call void @llvm.experimental.noalias.scope.decl(metadata !2647)
  call void @llvm.experimental.noalias.scope.decl(metadata !2649)
  %_4.i.i.i.i.i.i.1 = load i32, ptr %tail.sroa.0.0.i.i.i, align 4, !alias.scope !2651, !noalias !2652, !noundef !18
  %_5.i.i.i.i.i.i.1 = load i32, ptr %tail.sroa.0.04.i.i.i, align 4, !alias.scope !2653, !noalias !2654, !noundef !18
  %_0.i.i.i.i.i.1 = icmp slt i32 %_4.i.i.i.i.i.i.1, %_5.i.i.i.i.i.i.1
  br i1 %_0.i.i.i.i.i.1, label %bb4.i.i.i.i.1, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h549ae1c5c9209dffE.exit.i.i.i.1

bb4.i.i.i.i.1:                                    ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h549ae1c5c9209dffE.exit.i.i.i, %bb7.i.i.i.i.1
  %6 = phi i32 [ %_5.i.i2.i.i.i.i.1, %bb7.i.i.i.i.1 ], [ %_5.i.i.i.i.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h549ae1c5c9209dffE.exit.i.i.i ]
  %gap_guard.sroa.5.0.i.i.i.i.1 = phi ptr [ %sift.sroa.0.0.i.i.i.i.1, %bb7.i.i.i.i.1 ], [ %tail.sroa.0.0.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h549ae1c5c9209dffE.exit.i.i.i ]
  %sift.sroa.0.0.i.i.i.i.1 = phi ptr [ %7, %bb7.i.i.i.i.1 ], [ %tail.sroa.0.04.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h549ae1c5c9209dffE.exit.i.i.i ]
  store i32 %6, ptr %gap_guard.sroa.5.0.i.i.i.i.1, align 4, !alias.scope !2628, !noalias !2629
  %_18.i.i.i.i.1 = icmp eq ptr %sift.sroa.0.0.i.i.i.i.1, %a.0
  br i1 %_18.i.i.i.i.1, label %bb10.i.i.i.i.1, label %bb7.i.i.i.i.1

bb7.i.i.i.i.1:                                    ; preds = %bb4.i.i.i.i.1
  %7 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.i.1, i64 -4
  %_5.i.i2.i.i.i.i.1 = load i32, ptr %7, align 4, !alias.scope !2630, !noalias !2635, !noundef !18
  %_0.i3.i.i.i.i.1 = icmp slt i32 %_4.i.i.i.i.i.i.1, %_5.i.i2.i.i.i.i.1
  br i1 %_0.i3.i.i.i.i.1, label %bb4.i.i.i.i.1, label %bb10.i.i.i.i.1

bb10.i.i.i.i.1:                                   ; preds = %bb7.i.i.i.i.1, %bb4.i.i.i.i.1
  %sift.sroa.0.0.i.lcssa.i.i.i.1 = phi ptr [ %sift.sroa.0.0.i.i.i.i.1, %bb7.i.i.i.i.1 ], [ %a.0, %bb4.i.i.i.i.1 ]
  store i32 %_4.i.i.i.i.i.i.1, ptr %sift.sroa.0.0.i.lcssa.i.i.i.1, align 4, !alias.scope !2628, !noalias !2638
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h549ae1c5c9209dffE.exit.i.i.i.1

_ZN4core5slice4sort6shared9smallsort11insert_tail17h549ae1c5c9209dffE.exit.i.i.i.1: ; preds = %bb10.i.i.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h549ae1c5c9209dffE.exit.i.i.i
  %tail.sroa.0.0.i.i.i.1 = getelementptr inbounds nuw i8, ptr %tail.sroa.0.04.i.i.i, i64 8
  %_11.not.i.i.i.1 = icmp eq ptr %tail.sroa.0.0.i.i.i.1, %v_end.i.i.i
  br i1 %_11.not.i.i.i.1, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h12f965c5c27065caE.exit", label %bb5.i.i.i

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h12f965c5c27065caE.exit": ; preds = %bb5.i.i.i.prol.loopexit, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h549ae1c5c9209dffE.exit.i.i.i.1, %start, %bb10.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !2603
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %compare.i3)
  call void @llvm.experimental.noalias.scope.decl(metadata !2655)
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %compare.i3)
  call void @llvm.experimental.noalias.scope.decl(metadata !2658)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %is_less.i.i4), !noalias !2655
  store ptr %compare.i3, ptr %is_less.i.i4, align 8, !noalias !2661
  %b.i.i5 = icmp samesign ult i64 %b.1, 2
  br i1 %b.i.i5, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hca5733519c4067e3E.exit", label %bb7.i.i6, !prof !2611

bb7.i.i6:                                         ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h12f965c5c27065caE.exit"
  %b1.i.i7 = icmp samesign ult i64 %b.1, 21
  br i1 %b1.i.i7, label %bb9.i.i9, label %bb10.i.i8, !prof !2611

bb10.i.i8:                                        ; preds = %bb7.i.i6
; call core::slice::sort::stable::driftsort_main
  call void @_ZN4core5slice4sort6stable14driftsort_main17h175e6ee4efc703fbE(ptr noalias noundef nonnull align 4 %b.0, i64 noundef range(i64 0, 2305843009213693952) %b.1, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less.i.i4)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hca5733519c4067e3E.exit"

bb9.i.i9:                                         ; preds = %bb7.i.i6
  %v_end.idx.i.i.i10 = shl nuw nsw i64 %b.1, 2
  %v_end.i.i.i11 = getelementptr inbounds nuw i8, ptr %b.0, i64 %v_end.idx.i.i.i10
  %tail.sroa.0.01.i.i.i12 = getelementptr inbounds nuw i8, ptr %b.0, i64 4
  %8 = and i64 %b.1, 1
  %lcmp.mod35.not.not = icmp eq i64 %8, 0
  br i1 %lcmp.mod35.not.not, label %bb5.i.i.i13.prol, label %bb5.i.i.i13.prol.loopexit

bb5.i.i.i13.prol:                                 ; preds = %bb9.i.i9
  call void @llvm.experimental.noalias.scope.decl(metadata !2663)
  call void @llvm.experimental.noalias.scope.decl(metadata !2666)
  call void @llvm.experimental.noalias.scope.decl(metadata !2668)
  call void @llvm.experimental.noalias.scope.decl(metadata !2671)
  %_4.i.i.i.i.i.i16.prol = load i32, ptr %b.0, align 4, !alias.scope !2673, !noalias !2676, !noundef !18
  %_5.i.i.i.i.i.i17.prol = load i32, ptr %tail.sroa.0.01.i.i.i12, align 4, !alias.scope !2677, !noalias !2678, !noundef !18
  %_0.i.i.i.i.i18.prol = icmp slt i32 %_4.i.i.i.i.i.i16.prol, %_5.i.i.i.i.i.i17.prol
  br i1 %_0.i.i.i.i.i18.prol, label %bb4.i.i.i.i21.prol, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9b39e1071653ee72E.exit.i.i.i.prol

bb4.i.i.i.i21.prol:                               ; preds = %bb5.i.i.i13.prol, %bb7.i.i.i.i25.prol
  %9 = phi i32 [ %_4.i.i1.i.i.i.i.prol, %bb7.i.i.i.i25.prol ], [ %_4.i.i.i.i.i.i16.prol, %bb5.i.i.i13.prol ]
  %gap_guard.sroa.5.0.i.i.i.i22.prol = phi ptr [ %sift.sroa.0.0.i.i.i.i23.prol, %bb7.i.i.i.i25.prol ], [ %tail.sroa.0.01.i.i.i12, %bb5.i.i.i13.prol ]
  %sift.sroa.0.0.i.i.i.i23.prol = phi ptr [ %10, %bb7.i.i.i.i25.prol ], [ %b.0, %bb5.i.i.i13.prol ]
  store i32 %9, ptr %gap_guard.sroa.5.0.i.i.i.i22.prol, align 4, !alias.scope !2679, !noalias !2680
  %_18.i.i.i.i24.prol = icmp eq ptr %sift.sroa.0.0.i.i.i.i23.prol, %b.0
  br i1 %_18.i.i.i.i24.prol, label %bb10.i.i.i.i27.prol, label %bb7.i.i.i.i25.prol

bb7.i.i.i.i25.prol:                               ; preds = %bb4.i.i.i.i21.prol
  %10 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.i23.prol, i64 -4
  %_4.i.i1.i.i.i.i.prol = load i32, ptr %10, align 4, !alias.scope !2681, !noalias !2686, !noundef !18
  %_0.i3.i.i.i.i26.prol = icmp slt i32 %_4.i.i1.i.i.i.i.prol, %_5.i.i.i.i.i.i17.prol
  br i1 %_0.i3.i.i.i.i26.prol, label %bb4.i.i.i.i21.prol, label %bb10.i.i.i.i27.prol

bb10.i.i.i.i27.prol:                              ; preds = %bb7.i.i.i.i25.prol, %bb4.i.i.i.i21.prol
  %sift.sroa.0.0.i.lcssa.i.i.i28.prol = phi ptr [ %sift.sroa.0.0.i.i.i.i23.prol, %bb7.i.i.i.i25.prol ], [ %b.0, %bb4.i.i.i.i21.prol ]
  store i32 %_5.i.i.i.i.i.i17.prol, ptr %sift.sroa.0.0.i.lcssa.i.i.i28.prol, align 4, !alias.scope !2679, !noalias !2689
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9b39e1071653ee72E.exit.i.i.i.prol

_ZN4core5slice4sort6shared9smallsort11insert_tail17h9b39e1071653ee72E.exit.i.i.i.prol: ; preds = %bb10.i.i.i.i27.prol, %bb5.i.i.i13.prol
  %tail.sroa.0.0.i.i.i19.prol = getelementptr inbounds nuw i8, ptr %b.0, i64 8
  br label %bb5.i.i.i13.prol.loopexit

bb5.i.i.i13.prol.loopexit:                        ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9b39e1071653ee72E.exit.i.i.i.prol, %bb9.i.i9
  %tail.sroa.0.04.i.i.i14.unr = phi ptr [ %tail.sroa.0.01.i.i.i12, %bb9.i.i9 ], [ %tail.sroa.0.0.i.i.i19.prol, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9b39e1071653ee72E.exit.i.i.i.prol ]
  %v.0.pn3.i.i.i15.unr = phi ptr [ %b.0, %bb9.i.i9 ], [ %tail.sroa.0.01.i.i.i12, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9b39e1071653ee72E.exit.i.i.i.prol ]
  %11 = icmp eq i64 %b.1, 2
  br i1 %11, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hca5733519c4067e3E.exit", label %bb5.i.i.i13

bb5.i.i.i13:                                      ; preds = %bb5.i.i.i13.prol.loopexit, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9b39e1071653ee72E.exit.i.i.i.1
  %tail.sroa.0.04.i.i.i14 = phi ptr [ %tail.sroa.0.0.i.i.i19.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9b39e1071653ee72E.exit.i.i.i.1 ], [ %tail.sroa.0.04.i.i.i14.unr, %bb5.i.i.i13.prol.loopexit ]
  %v.0.pn3.i.i.i15 = phi ptr [ %tail.sroa.0.0.i.i.i19, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9b39e1071653ee72E.exit.i.i.i.1 ], [ %v.0.pn3.i.i.i15.unr, %bb5.i.i.i13.prol.loopexit ]
  call void @llvm.experimental.noalias.scope.decl(metadata !2663)
  call void @llvm.experimental.noalias.scope.decl(metadata !2666)
  call void @llvm.experimental.noalias.scope.decl(metadata !2668)
  call void @llvm.experimental.noalias.scope.decl(metadata !2671)
  %_4.i.i.i.i.i.i16 = load i32, ptr %v.0.pn3.i.i.i15, align 4, !alias.scope !2673, !noalias !2676, !noundef !18
  %_5.i.i.i.i.i.i17 = load i32, ptr %tail.sroa.0.04.i.i.i14, align 4, !alias.scope !2677, !noalias !2678, !noundef !18
  %_0.i.i.i.i.i18 = icmp slt i32 %_4.i.i.i.i.i.i16, %_5.i.i.i.i.i.i17
  br i1 %_0.i.i.i.i.i18, label %bb4.i.i.i.i21, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9b39e1071653ee72E.exit.i.i.i

bb4.i.i.i.i21:                                    ; preds = %bb5.i.i.i13, %bb7.i.i.i.i25
  %12 = phi i32 [ %_4.i.i1.i.i.i.i, %bb7.i.i.i.i25 ], [ %_4.i.i.i.i.i.i16, %bb5.i.i.i13 ]
  %gap_guard.sroa.5.0.i.i.i.i22 = phi ptr [ %sift.sroa.0.0.i.i.i.i23, %bb7.i.i.i.i25 ], [ %tail.sroa.0.04.i.i.i14, %bb5.i.i.i13 ]
  %sift.sroa.0.0.i.i.i.i23 = phi ptr [ %13, %bb7.i.i.i.i25 ], [ %v.0.pn3.i.i.i15, %bb5.i.i.i13 ]
  store i32 %12, ptr %gap_guard.sroa.5.0.i.i.i.i22, align 4, !alias.scope !2679, !noalias !2680
  %_18.i.i.i.i24 = icmp eq ptr %sift.sroa.0.0.i.i.i.i23, %b.0
  br i1 %_18.i.i.i.i24, label %bb10.i.i.i.i27, label %bb7.i.i.i.i25

bb7.i.i.i.i25:                                    ; preds = %bb4.i.i.i.i21
  %13 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.i23, i64 -4
  %_4.i.i1.i.i.i.i = load i32, ptr %13, align 4, !alias.scope !2681, !noalias !2686, !noundef !18
  %_0.i3.i.i.i.i26 = icmp slt i32 %_4.i.i1.i.i.i.i, %_5.i.i.i.i.i.i17
  br i1 %_0.i3.i.i.i.i26, label %bb4.i.i.i.i21, label %bb10.i.i.i.i27

bb10.i.i.i.i27:                                   ; preds = %bb7.i.i.i.i25, %bb4.i.i.i.i21
  %sift.sroa.0.0.i.lcssa.i.i.i28 = phi ptr [ %sift.sroa.0.0.i.i.i.i23, %bb7.i.i.i.i25 ], [ %b.0, %bb4.i.i.i.i21 ]
  store i32 %_5.i.i.i.i.i.i17, ptr %sift.sroa.0.0.i.lcssa.i.i.i28, align 4, !alias.scope !2679, !noalias !2689
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9b39e1071653ee72E.exit.i.i.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h9b39e1071653ee72E.exit.i.i.i: ; preds = %bb10.i.i.i.i27, %bb5.i.i.i13
  %tail.sroa.0.0.i.i.i19 = getelementptr inbounds nuw i8, ptr %tail.sroa.0.04.i.i.i14, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !2694)
  call void @llvm.experimental.noalias.scope.decl(metadata !2696)
  call void @llvm.experimental.noalias.scope.decl(metadata !2698)
  call void @llvm.experimental.noalias.scope.decl(metadata !2700)
  %_4.i.i.i.i.i.i16.1 = load i32, ptr %tail.sroa.0.04.i.i.i14, align 4, !alias.scope !2702, !noalias !2703, !noundef !18
  %_5.i.i.i.i.i.i17.1 = load i32, ptr %tail.sroa.0.0.i.i.i19, align 4, !alias.scope !2704, !noalias !2705, !noundef !18
  %_0.i.i.i.i.i18.1 = icmp slt i32 %_4.i.i.i.i.i.i16.1, %_5.i.i.i.i.i.i17.1
  br i1 %_0.i.i.i.i.i18.1, label %bb4.i.i.i.i21.1, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9b39e1071653ee72E.exit.i.i.i.1

bb4.i.i.i.i21.1:                                  ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9b39e1071653ee72E.exit.i.i.i, %bb7.i.i.i.i25.1
  %14 = phi i32 [ %_4.i.i1.i.i.i.i.1, %bb7.i.i.i.i25.1 ], [ %_4.i.i.i.i.i.i16.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9b39e1071653ee72E.exit.i.i.i ]
  %gap_guard.sroa.5.0.i.i.i.i22.1 = phi ptr [ %sift.sroa.0.0.i.i.i.i23.1, %bb7.i.i.i.i25.1 ], [ %tail.sroa.0.0.i.i.i19, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9b39e1071653ee72E.exit.i.i.i ]
  %sift.sroa.0.0.i.i.i.i23.1 = phi ptr [ %15, %bb7.i.i.i.i25.1 ], [ %tail.sroa.0.04.i.i.i14, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9b39e1071653ee72E.exit.i.i.i ]
  store i32 %14, ptr %gap_guard.sroa.5.0.i.i.i.i22.1, align 4, !alias.scope !2679, !noalias !2680
  %_18.i.i.i.i24.1 = icmp eq ptr %sift.sroa.0.0.i.i.i.i23.1, %b.0
  br i1 %_18.i.i.i.i24.1, label %bb10.i.i.i.i27.1, label %bb7.i.i.i.i25.1

bb7.i.i.i.i25.1:                                  ; preds = %bb4.i.i.i.i21.1
  %15 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.i23.1, i64 -4
  %_4.i.i1.i.i.i.i.1 = load i32, ptr %15, align 4, !alias.scope !2681, !noalias !2686, !noundef !18
  %_0.i3.i.i.i.i26.1 = icmp slt i32 %_4.i.i1.i.i.i.i.1, %_5.i.i.i.i.i.i17.1
  br i1 %_0.i3.i.i.i.i26.1, label %bb4.i.i.i.i21.1, label %bb10.i.i.i.i27.1

bb10.i.i.i.i27.1:                                 ; preds = %bb7.i.i.i.i25.1, %bb4.i.i.i.i21.1
  %sift.sroa.0.0.i.lcssa.i.i.i28.1 = phi ptr [ %sift.sroa.0.0.i.i.i.i23.1, %bb7.i.i.i.i25.1 ], [ %b.0, %bb4.i.i.i.i21.1 ]
  store i32 %_5.i.i.i.i.i.i17.1, ptr %sift.sroa.0.0.i.lcssa.i.i.i28.1, align 4, !alias.scope !2679, !noalias !2689
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9b39e1071653ee72E.exit.i.i.i.1

_ZN4core5slice4sort6shared9smallsort11insert_tail17h9b39e1071653ee72E.exit.i.i.i.1: ; preds = %bb10.i.i.i.i27.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9b39e1071653ee72E.exit.i.i.i
  %tail.sroa.0.0.i.i.i19.1 = getelementptr inbounds nuw i8, ptr %tail.sroa.0.04.i.i.i14, i64 8
  %_11.not.i.i.i20.1 = icmp eq ptr %tail.sroa.0.0.i.i.i19.1, %v_end.i.i.i11
  br i1 %_11.not.i.i.i20.1, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hca5733519c4067e3E.exit", label %bb5.i.i.i13

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hca5733519c4067e3E.exit": ; preds = %bb5.i.i.i13.prol.loopexit, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9b39e1071653ee72E.exit.i.i.i.1, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h12f965c5c27065caE.exit", %bb10.i.i8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %is_less.i.i4), !noalias !2655
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %compare.i3)
  %smax = call i32 @llvm.smax.i32(i32 %n, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %bb3

bb3:                                              ; preds = %bb5, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hca5733519c4067e3E.exit"
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb5 ], [ 0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hca5733519c4067e3E.exit" ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %bb8, label %bb9

bb9:                                              ; preds = %bb3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond32.not = icmp eq i64 %indvars.iv, %a.1
  br i1 %exitcond32.not, label %panic, label %bb4

bb8:                                              ; preds = %bb5, %bb3
  %_0.sroa.0.0 = phi i32 [ 1, %bb3 ], [ 0, %bb5 ]
  ret i32 %_0.sroa.0.0

bb4:                                              ; preds = %bb9
  %exitcond33.not = icmp eq i64 %indvars.iv, %b.1
  br i1 %exitcond33.not, label %panic1, label %bb5

panic:                                            ; preds = %bb9
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %a.1, i64 noundef %a.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_1a2ee0b019ed70f55536196ba492661d) #18
  unreachable

bb5:                                              ; preds = %bb4
  %16 = getelementptr inbounds nuw i32, ptr %a.0, i64 %indvars.iv
  %_11 = load i32, ptr %16, align 4, !noundef !18
  %17 = getelementptr inbounds nuw i32, ptr %b.0, i64 %indvars.iv
  %_15 = load i32, ptr %17, align 4, !noundef !18
  %_10 = add i32 %_15, %_11
  %_9 = icmp slt i32 %_10, %k
  br i1 %_9, label %bb8, label %bb3

panic1:                                           ; preds = %bb4
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %b.1, i64 noundef %b.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_6eb7515f2e20320b75b916ddc6ae64cb) #18
  unreachable
}
