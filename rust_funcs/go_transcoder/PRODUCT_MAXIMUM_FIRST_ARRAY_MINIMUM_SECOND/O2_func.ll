define noundef i32 @f_gold(ptr noalias noundef nonnull align 4 %arr1.0, i64 noundef range(i64 0, 2305843009213693952) %arr1.1, ptr noalias noundef nonnull align 4 %arr2.0, i64 noundef range(i64 0, 2305843009213693952) %arr2.1, i32 noundef %n1, i32 noundef %n2) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %compare.i2 = alloca [0 x i8], align 1
  %is_less.i.i3 = alloca [8 x i8], align 8
  %is_less.i.i = alloca [8 x i8], align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2603)
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %compare.i2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2606)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !2603
  store ptr %compare.i2, ptr %is_less.i.i, align 8, !noalias !2609
  %b.i.i = icmp samesign ult i64 %arr1.1, 2
  br i1 %b.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hd7a452c23dc78710E.exit", label %bb7.i.i, !prof !2611

bb7.i.i:                                          ; preds = %start
  %b1.i.i = icmp samesign ult i64 %arr1.1, 21
  br i1 %b1.i.i, label %bb9.i.i, label %bb10.i.i, !prof !2611

bb10.i.i:                                         ; preds = %bb7.i.i
; call core::slice::sort::stable::driftsort_main
  call void @_ZN4core5slice4sort6stable14driftsort_main17h9388a405acdab576E(ptr noalias noundef nonnull align 4 %arr1.0, i64 noundef range(i64 0, 2305843009213693952) %arr1.1, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less.i.i)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hd7a452c23dc78710E.exit"

bb9.i.i:                                          ; preds = %bb7.i.i
  %v_end.idx.i.i.i = shl nuw nsw i64 %arr1.1, 2
  %v_end.i.i.i = getelementptr inbounds nuw i8, ptr %arr1.0, i64 %v_end.idx.i.i.i
  %tail.sroa.0.01.i.i.i = getelementptr inbounds nuw i8, ptr %arr1.0, i64 4
  %0 = and i64 %arr1.1, 1
  %lcmp.mod.not.not = icmp eq i64 %0, 0
  br i1 %lcmp.mod.not.not, label %bb5.i.i.i.prol, label %bb5.i.i.i.prol.loopexit

bb5.i.i.i.prol:                                   ; preds = %bb9.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2612)
  call void @llvm.experimental.noalias.scope.decl(metadata !2615)
  call void @llvm.experimental.noalias.scope.decl(metadata !2617)
  call void @llvm.experimental.noalias.scope.decl(metadata !2620)
  %_4.i.i.i.i.i.i.prol = load i32, ptr %tail.sroa.0.01.i.i.i, align 4, !alias.scope !2622, !noalias !2625, !noundef !23
  %_5.i.i.i.i.i.i.prol = load i32, ptr %arr1.0, align 4, !alias.scope !2626, !noalias !2627, !noundef !23
  %_0.i.i.i.i.i.prol = icmp slt i32 %_4.i.i.i.i.i.i.prol, %_5.i.i.i.i.i.i.prol
  br i1 %_0.i.i.i.i.i.prol, label %bb4.i.i.i.i.prol, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17he20b6fc2915f781cE.exit.i.i.i.prol

bb4.i.i.i.i.prol:                                 ; preds = %bb5.i.i.i.prol, %bb7.i.i.i.i.prol
  %1 = phi i32 [ %_5.i.i2.i.i.i.i.prol, %bb7.i.i.i.i.prol ], [ %_5.i.i.i.i.i.i.prol, %bb5.i.i.i.prol ]
  %gap_guard.sroa.5.0.i.i.i.i.prol = phi ptr [ %sift.sroa.0.0.i.i.i.i.prol, %bb7.i.i.i.i.prol ], [ %tail.sroa.0.01.i.i.i, %bb5.i.i.i.prol ]
  %sift.sroa.0.0.i.i.i.i.prol = phi ptr [ %2, %bb7.i.i.i.i.prol ], [ %arr1.0, %bb5.i.i.i.prol ]
  store i32 %1, ptr %gap_guard.sroa.5.0.i.i.i.i.prol, align 4, !alias.scope !2628, !noalias !2629
  %_18.i.i.i.i.prol = icmp eq ptr %sift.sroa.0.0.i.i.i.i.prol, %arr1.0
  br i1 %_18.i.i.i.i.prol, label %bb10.i.i.i.i.prol, label %bb7.i.i.i.i.prol

bb7.i.i.i.i.prol:                                 ; preds = %bb4.i.i.i.i.prol
  %2 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.i.prol, i64 -4
  %_5.i.i2.i.i.i.i.prol = load i32, ptr %2, align 4, !alias.scope !2630, !noalias !2635, !noundef !23
  %_0.i3.i.i.i.i.prol = icmp slt i32 %_4.i.i.i.i.i.i.prol, %_5.i.i2.i.i.i.i.prol
  br i1 %_0.i3.i.i.i.i.prol, label %bb4.i.i.i.i.prol, label %bb10.i.i.i.i.prol

bb10.i.i.i.i.prol:                                ; preds = %bb7.i.i.i.i.prol, %bb4.i.i.i.i.prol
  %sift.sroa.0.0.i.lcssa.i.i.i.prol = phi ptr [ %sift.sroa.0.0.i.i.i.i.prol, %bb7.i.i.i.i.prol ], [ %arr1.0, %bb4.i.i.i.i.prol ]
  store i32 %_4.i.i.i.i.i.i.prol, ptr %sift.sroa.0.0.i.lcssa.i.i.i.prol, align 4, !alias.scope !2628, !noalias !2638
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17he20b6fc2915f781cE.exit.i.i.i.prol

_ZN4core5slice4sort6shared9smallsort11insert_tail17he20b6fc2915f781cE.exit.i.i.i.prol: ; preds = %bb10.i.i.i.i.prol, %bb5.i.i.i.prol
  %tail.sroa.0.0.i.i.i.prol = getelementptr inbounds nuw i8, ptr %arr1.0, i64 8
  br label %bb5.i.i.i.prol.loopexit

bb5.i.i.i.prol.loopexit:                          ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17he20b6fc2915f781cE.exit.i.i.i.prol, %bb9.i.i
  %tail.sroa.0.04.i.i.i.unr = phi ptr [ %tail.sroa.0.01.i.i.i, %bb9.i.i ], [ %tail.sroa.0.0.i.i.i.prol, %_ZN4core5slice4sort6shared9smallsort11insert_tail17he20b6fc2915f781cE.exit.i.i.i.prol ]
  %v.0.pn3.i.i.i.unr = phi ptr [ %arr1.0, %bb9.i.i ], [ %tail.sroa.0.01.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17he20b6fc2915f781cE.exit.i.i.i.prol ]
  %3 = icmp eq i64 %arr1.1, 2
  br i1 %3, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hd7a452c23dc78710E.exit", label %bb5.i.i.i

bb5.i.i.i:                                        ; preds = %bb5.i.i.i.prol.loopexit, %_ZN4core5slice4sort6shared9smallsort11insert_tail17he20b6fc2915f781cE.exit.i.i.i.1
  %tail.sroa.0.04.i.i.i = phi ptr [ %tail.sroa.0.0.i.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17he20b6fc2915f781cE.exit.i.i.i.1 ], [ %tail.sroa.0.04.i.i.i.unr, %bb5.i.i.i.prol.loopexit ]
  %v.0.pn3.i.i.i = phi ptr [ %tail.sroa.0.0.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17he20b6fc2915f781cE.exit.i.i.i.1 ], [ %v.0.pn3.i.i.i.unr, %bb5.i.i.i.prol.loopexit ]
  call void @llvm.experimental.noalias.scope.decl(metadata !2612)
  call void @llvm.experimental.noalias.scope.decl(metadata !2615)
  call void @llvm.experimental.noalias.scope.decl(metadata !2617)
  call void @llvm.experimental.noalias.scope.decl(metadata !2620)
  %_4.i.i.i.i.i.i = load i32, ptr %tail.sroa.0.04.i.i.i, align 4, !alias.scope !2622, !noalias !2625, !noundef !23
  %_5.i.i.i.i.i.i = load i32, ptr %v.0.pn3.i.i.i, align 4, !alias.scope !2626, !noalias !2627, !noundef !23
  %_0.i.i.i.i.i = icmp slt i32 %_4.i.i.i.i.i.i, %_5.i.i.i.i.i.i
  br i1 %_0.i.i.i.i.i, label %bb4.i.i.i.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17he20b6fc2915f781cE.exit.i.i.i

bb4.i.i.i.i:                                      ; preds = %bb5.i.i.i, %bb7.i.i.i.i
  %4 = phi i32 [ %_5.i.i2.i.i.i.i, %bb7.i.i.i.i ], [ %_5.i.i.i.i.i.i, %bb5.i.i.i ]
  %gap_guard.sroa.5.0.i.i.i.i = phi ptr [ %sift.sroa.0.0.i.i.i.i, %bb7.i.i.i.i ], [ %tail.sroa.0.04.i.i.i, %bb5.i.i.i ]
  %sift.sroa.0.0.i.i.i.i = phi ptr [ %5, %bb7.i.i.i.i ], [ %v.0.pn3.i.i.i, %bb5.i.i.i ]
  store i32 %4, ptr %gap_guard.sroa.5.0.i.i.i.i, align 4, !alias.scope !2628, !noalias !2629
  %_18.i.i.i.i = icmp eq ptr %sift.sroa.0.0.i.i.i.i, %arr1.0
  br i1 %_18.i.i.i.i, label %bb10.i.i.i.i, label %bb7.i.i.i.i

bb7.i.i.i.i:                                      ; preds = %bb4.i.i.i.i
  %5 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.i, i64 -4
  %_5.i.i2.i.i.i.i = load i32, ptr %5, align 4, !alias.scope !2630, !noalias !2635, !noundef !23
  %_0.i3.i.i.i.i = icmp slt i32 %_4.i.i.i.i.i.i, %_5.i.i2.i.i.i.i
  br i1 %_0.i3.i.i.i.i, label %bb4.i.i.i.i, label %bb10.i.i.i.i

bb10.i.i.i.i:                                     ; preds = %bb7.i.i.i.i, %bb4.i.i.i.i
  %sift.sroa.0.0.i.lcssa.i.i.i = phi ptr [ %sift.sroa.0.0.i.i.i.i, %bb7.i.i.i.i ], [ %arr1.0, %bb4.i.i.i.i ]
  store i32 %_4.i.i.i.i.i.i, ptr %sift.sroa.0.0.i.lcssa.i.i.i, align 4, !alias.scope !2628, !noalias !2638
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17he20b6fc2915f781cE.exit.i.i.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17he20b6fc2915f781cE.exit.i.i.i: ; preds = %bb10.i.i.i.i, %bb5.i.i.i
  %tail.sroa.0.0.i.i.i = getelementptr inbounds nuw i8, ptr %tail.sroa.0.04.i.i.i, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !2643)
  call void @llvm.experimental.noalias.scope.decl(metadata !2645)
  call void @llvm.experimental.noalias.scope.decl(metadata !2647)
  call void @llvm.experimental.noalias.scope.decl(metadata !2649)
  %_4.i.i.i.i.i.i.1 = load i32, ptr %tail.sroa.0.0.i.i.i, align 4, !alias.scope !2651, !noalias !2652, !noundef !23
  %_5.i.i.i.i.i.i.1 = load i32, ptr %tail.sroa.0.04.i.i.i, align 4, !alias.scope !2653, !noalias !2654, !noundef !23
  %_0.i.i.i.i.i.1 = icmp slt i32 %_4.i.i.i.i.i.i.1, %_5.i.i.i.i.i.i.1
  br i1 %_0.i.i.i.i.i.1, label %bb4.i.i.i.i.1, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17he20b6fc2915f781cE.exit.i.i.i.1

bb4.i.i.i.i.1:                                    ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17he20b6fc2915f781cE.exit.i.i.i, %bb7.i.i.i.i.1
  %6 = phi i32 [ %_5.i.i2.i.i.i.i.1, %bb7.i.i.i.i.1 ], [ %_5.i.i.i.i.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17he20b6fc2915f781cE.exit.i.i.i ]
  %gap_guard.sroa.5.0.i.i.i.i.1 = phi ptr [ %sift.sroa.0.0.i.i.i.i.1, %bb7.i.i.i.i.1 ], [ %tail.sroa.0.0.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17he20b6fc2915f781cE.exit.i.i.i ]
  %sift.sroa.0.0.i.i.i.i.1 = phi ptr [ %7, %bb7.i.i.i.i.1 ], [ %tail.sroa.0.04.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17he20b6fc2915f781cE.exit.i.i.i ]
  store i32 %6, ptr %gap_guard.sroa.5.0.i.i.i.i.1, align 4, !alias.scope !2628, !noalias !2629
  %_18.i.i.i.i.1 = icmp eq ptr %sift.sroa.0.0.i.i.i.i.1, %arr1.0
  br i1 %_18.i.i.i.i.1, label %bb10.i.i.i.i.1, label %bb7.i.i.i.i.1

bb7.i.i.i.i.1:                                    ; preds = %bb4.i.i.i.i.1
  %7 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.i.1, i64 -4
  %_5.i.i2.i.i.i.i.1 = load i32, ptr %7, align 4, !alias.scope !2630, !noalias !2635, !noundef !23
  %_0.i3.i.i.i.i.1 = icmp slt i32 %_4.i.i.i.i.i.i.1, %_5.i.i2.i.i.i.i.1
  br i1 %_0.i3.i.i.i.i.1, label %bb4.i.i.i.i.1, label %bb10.i.i.i.i.1

bb10.i.i.i.i.1:                                   ; preds = %bb7.i.i.i.i.1, %bb4.i.i.i.i.1
  %sift.sroa.0.0.i.lcssa.i.i.i.1 = phi ptr [ %sift.sroa.0.0.i.i.i.i.1, %bb7.i.i.i.i.1 ], [ %arr1.0, %bb4.i.i.i.i.1 ]
  store i32 %_4.i.i.i.i.i.i.1, ptr %sift.sroa.0.0.i.lcssa.i.i.i.1, align 4, !alias.scope !2628, !noalias !2638
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17he20b6fc2915f781cE.exit.i.i.i.1

_ZN4core5slice4sort6shared9smallsort11insert_tail17he20b6fc2915f781cE.exit.i.i.i.1: ; preds = %bb10.i.i.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17he20b6fc2915f781cE.exit.i.i.i
  %tail.sroa.0.0.i.i.i.1 = getelementptr inbounds nuw i8, ptr %tail.sroa.0.04.i.i.i, i64 8
  %_11.not.i.i.i.1 = icmp eq ptr %tail.sroa.0.0.i.i.i.1, %v_end.i.i.i
  br i1 %_11.not.i.i.i.1, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hd7a452c23dc78710E.exit", label %bb5.i.i.i

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hd7a452c23dc78710E.exit": ; preds = %bb5.i.i.i.prol.loopexit, %_ZN4core5slice4sort6shared9smallsort11insert_tail17he20b6fc2915f781cE.exit.i.i.i.1, %start, %bb10.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !2603
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %compare.i2)
  call void @llvm.experimental.noalias.scope.decl(metadata !2655)
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %compare.i2)
  call void @llvm.experimental.noalias.scope.decl(metadata !2658)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %is_less.i.i3), !noalias !2655
  store ptr %compare.i2, ptr %is_less.i.i3, align 8, !noalias !2661
  %b.i.i4 = icmp samesign ult i64 %arr2.1, 2
  br i1 %b.i.i4, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h526bf3a5f17c7aabE.exit", label %bb7.i.i5, !prof !2611

bb7.i.i5:                                         ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hd7a452c23dc78710E.exit"
  %b1.i.i6 = icmp samesign ult i64 %arr2.1, 21
  br i1 %b1.i.i6, label %bb9.i.i8, label %bb10.i.i7, !prof !2611

bb10.i.i7:                                        ; preds = %bb7.i.i5
; call core::slice::sort::stable::driftsort_main
  call void @_ZN4core5slice4sort6stable14driftsort_main17h5442fc87e02861cdE(ptr noalias noundef nonnull align 4 %arr2.0, i64 noundef range(i64 0, 2305843009213693952) %arr2.1, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less.i.i3)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h526bf3a5f17c7aabE.exit"

bb9.i.i8:                                         ; preds = %bb7.i.i5
  %v_end.idx.i.i.i9 = shl nuw nsw i64 %arr2.1, 2
  %v_end.i.i.i10 = getelementptr inbounds nuw i8, ptr %arr2.0, i64 %v_end.idx.i.i.i9
  %tail.sroa.0.01.i.i.i11 = getelementptr inbounds nuw i8, ptr %arr2.0, i64 4
  %8 = and i64 %arr2.1, 1
  %lcmp.mod29.not.not = icmp eq i64 %8, 0
  br i1 %lcmp.mod29.not.not, label %bb5.i.i.i12.prol, label %bb5.i.i.i12.prol.loopexit

bb5.i.i.i12.prol:                                 ; preds = %bb9.i.i8
  call void @llvm.experimental.noalias.scope.decl(metadata !2663)
  call void @llvm.experimental.noalias.scope.decl(metadata !2666)
  call void @llvm.experimental.noalias.scope.decl(metadata !2668)
  call void @llvm.experimental.noalias.scope.decl(metadata !2671)
  %_4.i.i.i.i.i.i15.prol = load i32, ptr %arr2.0, align 4, !alias.scope !2673, !noalias !2676, !noundef !23
  %_5.i.i.i.i.i.i16.prol = load i32, ptr %tail.sroa.0.01.i.i.i11, align 4, !alias.scope !2677, !noalias !2678, !noundef !23
  %_0.i.i.i.i.i17.prol = icmp slt i32 %_4.i.i.i.i.i.i15.prol, %_5.i.i.i.i.i.i16.prol
  br i1 %_0.i.i.i.i.i17.prol, label %bb4.i.i.i.i20.prol, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h608ac98aa8ad81b2E.exit.i.i.i.prol

bb4.i.i.i.i20.prol:                               ; preds = %bb5.i.i.i12.prol, %bb7.i.i.i.i24.prol
  %9 = phi i32 [ %_4.i.i1.i.i.i.i.prol, %bb7.i.i.i.i24.prol ], [ %_4.i.i.i.i.i.i15.prol, %bb5.i.i.i12.prol ]
  %gap_guard.sroa.5.0.i.i.i.i21.prol = phi ptr [ %sift.sroa.0.0.i.i.i.i22.prol, %bb7.i.i.i.i24.prol ], [ %tail.sroa.0.01.i.i.i11, %bb5.i.i.i12.prol ]
  %sift.sroa.0.0.i.i.i.i22.prol = phi ptr [ %10, %bb7.i.i.i.i24.prol ], [ %arr2.0, %bb5.i.i.i12.prol ]
  store i32 %9, ptr %gap_guard.sroa.5.0.i.i.i.i21.prol, align 4, !alias.scope !2679, !noalias !2680
  %_18.i.i.i.i23.prol = icmp eq ptr %sift.sroa.0.0.i.i.i.i22.prol, %arr2.0
  br i1 %_18.i.i.i.i23.prol, label %bb10.i.i.i.i26.prol, label %bb7.i.i.i.i24.prol

bb7.i.i.i.i24.prol:                               ; preds = %bb4.i.i.i.i20.prol
  %10 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.i22.prol, i64 -4
  %_4.i.i1.i.i.i.i.prol = load i32, ptr %10, align 4, !alias.scope !2681, !noalias !2686, !noundef !23
  %_0.i3.i.i.i.i25.prol = icmp slt i32 %_4.i.i1.i.i.i.i.prol, %_5.i.i.i.i.i.i16.prol
  br i1 %_0.i3.i.i.i.i25.prol, label %bb4.i.i.i.i20.prol, label %bb10.i.i.i.i26.prol

bb10.i.i.i.i26.prol:                              ; preds = %bb7.i.i.i.i24.prol, %bb4.i.i.i.i20.prol
  %sift.sroa.0.0.i.lcssa.i.i.i27.prol = phi ptr [ %sift.sroa.0.0.i.i.i.i22.prol, %bb7.i.i.i.i24.prol ], [ %arr2.0, %bb4.i.i.i.i20.prol ]
  store i32 %_5.i.i.i.i.i.i16.prol, ptr %sift.sroa.0.0.i.lcssa.i.i.i27.prol, align 4, !alias.scope !2679, !noalias !2689
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h608ac98aa8ad81b2E.exit.i.i.i.prol

_ZN4core5slice4sort6shared9smallsort11insert_tail17h608ac98aa8ad81b2E.exit.i.i.i.prol: ; preds = %bb10.i.i.i.i26.prol, %bb5.i.i.i12.prol
  %tail.sroa.0.0.i.i.i18.prol = getelementptr inbounds nuw i8, ptr %arr2.0, i64 8
  br label %bb5.i.i.i12.prol.loopexit

bb5.i.i.i12.prol.loopexit:                        ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h608ac98aa8ad81b2E.exit.i.i.i.prol, %bb9.i.i8
  %tail.sroa.0.04.i.i.i13.unr = phi ptr [ %tail.sroa.0.01.i.i.i11, %bb9.i.i8 ], [ %tail.sroa.0.0.i.i.i18.prol, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h608ac98aa8ad81b2E.exit.i.i.i.prol ]
  %v.0.pn3.i.i.i14.unr = phi ptr [ %arr2.0, %bb9.i.i8 ], [ %tail.sroa.0.01.i.i.i11, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h608ac98aa8ad81b2E.exit.i.i.i.prol ]
  %11 = icmp eq i64 %arr2.1, 2
  br i1 %11, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h526bf3a5f17c7aabE.exit", label %bb5.i.i.i12

bb5.i.i.i12:                                      ; preds = %bb5.i.i.i12.prol.loopexit, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h608ac98aa8ad81b2E.exit.i.i.i.1
  %tail.sroa.0.04.i.i.i13 = phi ptr [ %tail.sroa.0.0.i.i.i18.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h608ac98aa8ad81b2E.exit.i.i.i.1 ], [ %tail.sroa.0.04.i.i.i13.unr, %bb5.i.i.i12.prol.loopexit ]
  %v.0.pn3.i.i.i14 = phi ptr [ %tail.sroa.0.0.i.i.i18, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h608ac98aa8ad81b2E.exit.i.i.i.1 ], [ %v.0.pn3.i.i.i14.unr, %bb5.i.i.i12.prol.loopexit ]
  call void @llvm.experimental.noalias.scope.decl(metadata !2663)
  call void @llvm.experimental.noalias.scope.decl(metadata !2666)
  call void @llvm.experimental.noalias.scope.decl(metadata !2668)
  call void @llvm.experimental.noalias.scope.decl(metadata !2671)
  %_4.i.i.i.i.i.i15 = load i32, ptr %v.0.pn3.i.i.i14, align 4, !alias.scope !2673, !noalias !2676, !noundef !23
  %_5.i.i.i.i.i.i16 = load i32, ptr %tail.sroa.0.04.i.i.i13, align 4, !alias.scope !2677, !noalias !2678, !noundef !23
  %_0.i.i.i.i.i17 = icmp slt i32 %_4.i.i.i.i.i.i15, %_5.i.i.i.i.i.i16
  br i1 %_0.i.i.i.i.i17, label %bb4.i.i.i.i20, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h608ac98aa8ad81b2E.exit.i.i.i

bb4.i.i.i.i20:                                    ; preds = %bb5.i.i.i12, %bb7.i.i.i.i24
  %12 = phi i32 [ %_4.i.i1.i.i.i.i, %bb7.i.i.i.i24 ], [ %_4.i.i.i.i.i.i15, %bb5.i.i.i12 ]
  %gap_guard.sroa.5.0.i.i.i.i21 = phi ptr [ %sift.sroa.0.0.i.i.i.i22, %bb7.i.i.i.i24 ], [ %tail.sroa.0.04.i.i.i13, %bb5.i.i.i12 ]
  %sift.sroa.0.0.i.i.i.i22 = phi ptr [ %13, %bb7.i.i.i.i24 ], [ %v.0.pn3.i.i.i14, %bb5.i.i.i12 ]
  store i32 %12, ptr %gap_guard.sroa.5.0.i.i.i.i21, align 4, !alias.scope !2679, !noalias !2680
  %_18.i.i.i.i23 = icmp eq ptr %sift.sroa.0.0.i.i.i.i22, %arr2.0
  br i1 %_18.i.i.i.i23, label %bb10.i.i.i.i26, label %bb7.i.i.i.i24

bb7.i.i.i.i24:                                    ; preds = %bb4.i.i.i.i20
  %13 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.i22, i64 -4
  %_4.i.i1.i.i.i.i = load i32, ptr %13, align 4, !alias.scope !2681, !noalias !2686, !noundef !23
  %_0.i3.i.i.i.i25 = icmp slt i32 %_4.i.i1.i.i.i.i, %_5.i.i.i.i.i.i16
  br i1 %_0.i3.i.i.i.i25, label %bb4.i.i.i.i20, label %bb10.i.i.i.i26

bb10.i.i.i.i26:                                   ; preds = %bb7.i.i.i.i24, %bb4.i.i.i.i20
  %sift.sroa.0.0.i.lcssa.i.i.i27 = phi ptr [ %sift.sroa.0.0.i.i.i.i22, %bb7.i.i.i.i24 ], [ %arr2.0, %bb4.i.i.i.i20 ]
  store i32 %_5.i.i.i.i.i.i16, ptr %sift.sroa.0.0.i.lcssa.i.i.i27, align 4, !alias.scope !2679, !noalias !2689
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h608ac98aa8ad81b2E.exit.i.i.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h608ac98aa8ad81b2E.exit.i.i.i: ; preds = %bb10.i.i.i.i26, %bb5.i.i.i12
  %tail.sroa.0.0.i.i.i18 = getelementptr inbounds nuw i8, ptr %tail.sroa.0.04.i.i.i13, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !2694)
  call void @llvm.experimental.noalias.scope.decl(metadata !2696)
  call void @llvm.experimental.noalias.scope.decl(metadata !2698)
  call void @llvm.experimental.noalias.scope.decl(metadata !2700)
  %_4.i.i.i.i.i.i15.1 = load i32, ptr %tail.sroa.0.04.i.i.i13, align 4, !alias.scope !2702, !noalias !2703, !noundef !23
  %_5.i.i.i.i.i.i16.1 = load i32, ptr %tail.sroa.0.0.i.i.i18, align 4, !alias.scope !2704, !noalias !2705, !noundef !23
  %_0.i.i.i.i.i17.1 = icmp slt i32 %_4.i.i.i.i.i.i15.1, %_5.i.i.i.i.i.i16.1
  br i1 %_0.i.i.i.i.i17.1, label %bb4.i.i.i.i20.1, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h608ac98aa8ad81b2E.exit.i.i.i.1

bb4.i.i.i.i20.1:                                  ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h608ac98aa8ad81b2E.exit.i.i.i, %bb7.i.i.i.i24.1
  %14 = phi i32 [ %_4.i.i1.i.i.i.i.1, %bb7.i.i.i.i24.1 ], [ %_4.i.i.i.i.i.i15.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h608ac98aa8ad81b2E.exit.i.i.i ]
  %gap_guard.sroa.5.0.i.i.i.i21.1 = phi ptr [ %sift.sroa.0.0.i.i.i.i22.1, %bb7.i.i.i.i24.1 ], [ %tail.sroa.0.0.i.i.i18, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h608ac98aa8ad81b2E.exit.i.i.i ]
  %sift.sroa.0.0.i.i.i.i22.1 = phi ptr [ %15, %bb7.i.i.i.i24.1 ], [ %tail.sroa.0.04.i.i.i13, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h608ac98aa8ad81b2E.exit.i.i.i ]
  store i32 %14, ptr %gap_guard.sroa.5.0.i.i.i.i21.1, align 4, !alias.scope !2679, !noalias !2680
  %_18.i.i.i.i23.1 = icmp eq ptr %sift.sroa.0.0.i.i.i.i22.1, %arr2.0
  br i1 %_18.i.i.i.i23.1, label %bb10.i.i.i.i26.1, label %bb7.i.i.i.i24.1

bb7.i.i.i.i24.1:                                  ; preds = %bb4.i.i.i.i20.1
  %15 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.i22.1, i64 -4
  %_4.i.i1.i.i.i.i.1 = load i32, ptr %15, align 4, !alias.scope !2681, !noalias !2686, !noundef !23
  %_0.i3.i.i.i.i25.1 = icmp slt i32 %_4.i.i1.i.i.i.i.1, %_5.i.i.i.i.i.i16.1
  br i1 %_0.i3.i.i.i.i25.1, label %bb4.i.i.i.i20.1, label %bb10.i.i.i.i26.1

bb10.i.i.i.i26.1:                                 ; preds = %bb7.i.i.i.i24.1, %bb4.i.i.i.i20.1
  %sift.sroa.0.0.i.lcssa.i.i.i27.1 = phi ptr [ %sift.sroa.0.0.i.i.i.i22.1, %bb7.i.i.i.i24.1 ], [ %arr2.0, %bb4.i.i.i.i20.1 ]
  store i32 %_5.i.i.i.i.i.i16.1, ptr %sift.sroa.0.0.i.lcssa.i.i.i27.1, align 4, !alias.scope !2679, !noalias !2689
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h608ac98aa8ad81b2E.exit.i.i.i.1

_ZN4core5slice4sort6shared9smallsort11insert_tail17h608ac98aa8ad81b2E.exit.i.i.i.1: ; preds = %bb10.i.i.i.i26.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h608ac98aa8ad81b2E.exit.i.i.i
  %tail.sroa.0.0.i.i.i18.1 = getelementptr inbounds nuw i8, ptr %tail.sroa.0.04.i.i.i13, i64 8
  %_11.not.i.i.i19.1 = icmp eq ptr %tail.sroa.0.0.i.i.i18.1, %v_end.i.i.i10
  br i1 %_11.not.i.i.i19.1, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h526bf3a5f17c7aabE.exit", label %bb5.i.i.i12

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h526bf3a5f17c7aabE.exit": ; preds = %bb5.i.i.i12.prol.loopexit, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h608ac98aa8ad81b2E.exit.i.i.i.1, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hd7a452c23dc78710E.exit", %bb10.i.i7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %is_less.i.i3), !noalias !2655
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %compare.i2)
  %_9 = sext i32 %n1 to i64
  %_8 = add nsw i64 %_9, -1
  %_11 = icmp ult i64 %_8, %arr1.1
  br i1 %_11, label %bb3, label %panic

bb3:                                              ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h526bf3a5f17c7aabE.exit"
  %_14.not = icmp eq i64 %arr2.1, 0
  br i1 %_14.not, label %panic1, label %bb4

panic:                                            ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h526bf3a5f17c7aabE.exit"
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_8, i64 noundef %arr1.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_66c3de894cc23437f97268b1a6d4bdd4) #18
  unreachable

bb4:                                              ; preds = %bb3
  %16 = getelementptr inbounds nuw i32, ptr %arr1.0, i64 %_8
  %_7 = load i32, ptr %16, align 4, !noundef !23
  %_12 = load i32, ptr %arr2.0, align 4, !noundef !23
  %_0 = mul i32 %_12, %_7
  ret i32 %_0

panic1:                                           ; preds = %bb3
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_99a1c1dbdd6e8c0ca6baae108b218afe) #18
  unreachable
}
