define noundef i32 @f_gold(ptr noalias noundef nonnull align 4 %A.0, i64 noundef range(i64 0, 2305843009213693952) %A.1, ptr noalias noundef nonnull align 4 %B.0, i64 noundef range(i64 0, 2305843009213693952) %B.1, i32 noundef %n) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %compare.i4 = alloca [0 x i8], align 1
  %is_less.i.i5 = alloca [8 x i8], align 8
  %is_less.i.i = alloca [8 x i8], align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2603)
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %compare.i4)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2606)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !2603
  store ptr %compare.i4, ptr %is_less.i.i, align 8, !noalias !2609
  %b.i.i = icmp samesign ult i64 %A.1, 2
  br i1 %b.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h134b00356443ff9dE.exit", label %bb7.i.i, !prof !2611

bb7.i.i:                                          ; preds = %start
  %b1.i.i = icmp samesign ult i64 %A.1, 21
  br i1 %b1.i.i, label %bb9.i.i, label %bb10.i.i, !prof !2611

bb10.i.i:                                         ; preds = %bb7.i.i
; call core::slice::sort::stable::driftsort_main
  call void @_ZN4core5slice4sort6stable14driftsort_main17hc2527c42e8249605E(ptr noalias noundef nonnull align 4 %A.0, i64 noundef range(i64 0, 2305843009213693952) %A.1, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less.i.i)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h134b00356443ff9dE.exit"

bb9.i.i:                                          ; preds = %bb7.i.i
  %v_end.idx.i.i.i = shl nuw nsw i64 %A.1, 2
  %v_end.i.i.i = getelementptr inbounds nuw i8, ptr %A.0, i64 %v_end.idx.i.i.i
  %tail.sroa.0.01.i.i.i = getelementptr inbounds nuw i8, ptr %A.0, i64 4
  %0 = and i64 %A.1, 1
  %lcmp.mod.not.not = icmp eq i64 %0, 0
  br i1 %lcmp.mod.not.not, label %bb5.i.i.i.prol, label %bb5.i.i.i.prol.loopexit

bb5.i.i.i.prol:                                   ; preds = %bb9.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2612)
  call void @llvm.experimental.noalias.scope.decl(metadata !2615)
  call void @llvm.experimental.noalias.scope.decl(metadata !2617)
  call void @llvm.experimental.noalias.scope.decl(metadata !2620)
  %_4.i.i.i.i.i.i.prol = load i32, ptr %tail.sroa.0.01.i.i.i, align 4, !alias.scope !2622, !noalias !2625, !noundef !23
  %_5.i.i.i.i.i.i.prol = load i32, ptr %A.0, align 4, !alias.scope !2626, !noalias !2627, !noundef !23
  %_0.i.i.i.i.i.prol = icmp slt i32 %_4.i.i.i.i.i.i.prol, %_5.i.i.i.i.i.i.prol
  br i1 %_0.i.i.i.i.i.prol, label %bb4.i.i.i.i.prol, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h015727d101d269d9E.exit.i.i.i.prol

bb4.i.i.i.i.prol:                                 ; preds = %bb5.i.i.i.prol, %bb7.i.i.i.i.prol
  %1 = phi i32 [ %_5.i.i2.i.i.i.i.prol, %bb7.i.i.i.i.prol ], [ %_5.i.i.i.i.i.i.prol, %bb5.i.i.i.prol ]
  %gap_guard.sroa.5.0.i.i.i.i.prol = phi ptr [ %sift.sroa.0.0.i.i.i.i.prol, %bb7.i.i.i.i.prol ], [ %tail.sroa.0.01.i.i.i, %bb5.i.i.i.prol ]
  %sift.sroa.0.0.i.i.i.i.prol = phi ptr [ %2, %bb7.i.i.i.i.prol ], [ %A.0, %bb5.i.i.i.prol ]
  store i32 %1, ptr %gap_guard.sroa.5.0.i.i.i.i.prol, align 4, !alias.scope !2628, !noalias !2629
  %_18.i.i.i.i.prol = icmp eq ptr %sift.sroa.0.0.i.i.i.i.prol, %A.0
  br i1 %_18.i.i.i.i.prol, label %bb10.i.i.i.i.prol, label %bb7.i.i.i.i.prol

bb7.i.i.i.i.prol:                                 ; preds = %bb4.i.i.i.i.prol
  %2 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.i.prol, i64 -4
  %_5.i.i2.i.i.i.i.prol = load i32, ptr %2, align 4, !alias.scope !2630, !noalias !2635, !noundef !23
  %_0.i3.i.i.i.i.prol = icmp slt i32 %_4.i.i.i.i.i.i.prol, %_5.i.i2.i.i.i.i.prol
  br i1 %_0.i3.i.i.i.i.prol, label %bb4.i.i.i.i.prol, label %bb10.i.i.i.i.prol

bb10.i.i.i.i.prol:                                ; preds = %bb7.i.i.i.i.prol, %bb4.i.i.i.i.prol
  %sift.sroa.0.0.i.lcssa.i.i.i.prol = phi ptr [ %sift.sroa.0.0.i.i.i.i.prol, %bb7.i.i.i.i.prol ], [ %A.0, %bb4.i.i.i.i.prol ]
  store i32 %_4.i.i.i.i.i.i.prol, ptr %sift.sroa.0.0.i.lcssa.i.i.i.prol, align 4, !alias.scope !2628, !noalias !2638
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h015727d101d269d9E.exit.i.i.i.prol

_ZN4core5slice4sort6shared9smallsort11insert_tail17h015727d101d269d9E.exit.i.i.i.prol: ; preds = %bb10.i.i.i.i.prol, %bb5.i.i.i.prol
  %tail.sroa.0.0.i.i.i.prol = getelementptr inbounds nuw i8, ptr %A.0, i64 8
  br label %bb5.i.i.i.prol.loopexit

bb5.i.i.i.prol.loopexit:                          ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h015727d101d269d9E.exit.i.i.i.prol, %bb9.i.i
  %tail.sroa.0.04.i.i.i.unr = phi ptr [ %tail.sroa.0.01.i.i.i, %bb9.i.i ], [ %tail.sroa.0.0.i.i.i.prol, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h015727d101d269d9E.exit.i.i.i.prol ]
  %v.0.pn3.i.i.i.unr = phi ptr [ %A.0, %bb9.i.i ], [ %tail.sroa.0.01.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h015727d101d269d9E.exit.i.i.i.prol ]
  %3 = icmp eq i64 %A.1, 2
  br i1 %3, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h134b00356443ff9dE.exit", label %bb5.i.i.i

bb5.i.i.i:                                        ; preds = %bb5.i.i.i.prol.loopexit, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h015727d101d269d9E.exit.i.i.i.1
  %tail.sroa.0.04.i.i.i = phi ptr [ %tail.sroa.0.0.i.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h015727d101d269d9E.exit.i.i.i.1 ], [ %tail.sroa.0.04.i.i.i.unr, %bb5.i.i.i.prol.loopexit ]
  %v.0.pn3.i.i.i = phi ptr [ %tail.sroa.0.0.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h015727d101d269d9E.exit.i.i.i.1 ], [ %v.0.pn3.i.i.i.unr, %bb5.i.i.i.prol.loopexit ]
  call void @llvm.experimental.noalias.scope.decl(metadata !2612)
  call void @llvm.experimental.noalias.scope.decl(metadata !2615)
  call void @llvm.experimental.noalias.scope.decl(metadata !2617)
  call void @llvm.experimental.noalias.scope.decl(metadata !2620)
  %_4.i.i.i.i.i.i = load i32, ptr %tail.sroa.0.04.i.i.i, align 4, !alias.scope !2622, !noalias !2625, !noundef !23
  %_5.i.i.i.i.i.i = load i32, ptr %v.0.pn3.i.i.i, align 4, !alias.scope !2626, !noalias !2627, !noundef !23
  %_0.i.i.i.i.i = icmp slt i32 %_4.i.i.i.i.i.i, %_5.i.i.i.i.i.i
  br i1 %_0.i.i.i.i.i, label %bb4.i.i.i.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h015727d101d269d9E.exit.i.i.i

bb4.i.i.i.i:                                      ; preds = %bb5.i.i.i, %bb7.i.i.i.i
  %4 = phi i32 [ %_5.i.i2.i.i.i.i, %bb7.i.i.i.i ], [ %_5.i.i.i.i.i.i, %bb5.i.i.i ]
  %gap_guard.sroa.5.0.i.i.i.i = phi ptr [ %sift.sroa.0.0.i.i.i.i, %bb7.i.i.i.i ], [ %tail.sroa.0.04.i.i.i, %bb5.i.i.i ]
  %sift.sroa.0.0.i.i.i.i = phi ptr [ %5, %bb7.i.i.i.i ], [ %v.0.pn3.i.i.i, %bb5.i.i.i ]
  store i32 %4, ptr %gap_guard.sroa.5.0.i.i.i.i, align 4, !alias.scope !2628, !noalias !2629
  %_18.i.i.i.i = icmp eq ptr %sift.sroa.0.0.i.i.i.i, %A.0
  br i1 %_18.i.i.i.i, label %bb10.i.i.i.i, label %bb7.i.i.i.i

bb7.i.i.i.i:                                      ; preds = %bb4.i.i.i.i
  %5 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.i, i64 -4
  %_5.i.i2.i.i.i.i = load i32, ptr %5, align 4, !alias.scope !2630, !noalias !2635, !noundef !23
  %_0.i3.i.i.i.i = icmp slt i32 %_4.i.i.i.i.i.i, %_5.i.i2.i.i.i.i
  br i1 %_0.i3.i.i.i.i, label %bb4.i.i.i.i, label %bb10.i.i.i.i

bb10.i.i.i.i:                                     ; preds = %bb7.i.i.i.i, %bb4.i.i.i.i
  %sift.sroa.0.0.i.lcssa.i.i.i = phi ptr [ %sift.sroa.0.0.i.i.i.i, %bb7.i.i.i.i ], [ %A.0, %bb4.i.i.i.i ]
  store i32 %_4.i.i.i.i.i.i, ptr %sift.sroa.0.0.i.lcssa.i.i.i, align 4, !alias.scope !2628, !noalias !2638
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h015727d101d269d9E.exit.i.i.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h015727d101d269d9E.exit.i.i.i: ; preds = %bb10.i.i.i.i, %bb5.i.i.i
  %tail.sroa.0.0.i.i.i = getelementptr inbounds nuw i8, ptr %tail.sroa.0.04.i.i.i, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !2643)
  call void @llvm.experimental.noalias.scope.decl(metadata !2645)
  call void @llvm.experimental.noalias.scope.decl(metadata !2647)
  call void @llvm.experimental.noalias.scope.decl(metadata !2649)
  %_4.i.i.i.i.i.i.1 = load i32, ptr %tail.sroa.0.0.i.i.i, align 4, !alias.scope !2651, !noalias !2652, !noundef !23
  %_5.i.i.i.i.i.i.1 = load i32, ptr %tail.sroa.0.04.i.i.i, align 4, !alias.scope !2653, !noalias !2654, !noundef !23
  %_0.i.i.i.i.i.1 = icmp slt i32 %_4.i.i.i.i.i.i.1, %_5.i.i.i.i.i.i.1
  br i1 %_0.i.i.i.i.i.1, label %bb4.i.i.i.i.1, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h015727d101d269d9E.exit.i.i.i.1

bb4.i.i.i.i.1:                                    ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h015727d101d269d9E.exit.i.i.i, %bb7.i.i.i.i.1
  %6 = phi i32 [ %_5.i.i2.i.i.i.i.1, %bb7.i.i.i.i.1 ], [ %_5.i.i.i.i.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h015727d101d269d9E.exit.i.i.i ]
  %gap_guard.sroa.5.0.i.i.i.i.1 = phi ptr [ %sift.sroa.0.0.i.i.i.i.1, %bb7.i.i.i.i.1 ], [ %tail.sroa.0.0.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h015727d101d269d9E.exit.i.i.i ]
  %sift.sroa.0.0.i.i.i.i.1 = phi ptr [ %7, %bb7.i.i.i.i.1 ], [ %tail.sroa.0.04.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h015727d101d269d9E.exit.i.i.i ]
  store i32 %6, ptr %gap_guard.sroa.5.0.i.i.i.i.1, align 4, !alias.scope !2628, !noalias !2629
  %_18.i.i.i.i.1 = icmp eq ptr %sift.sroa.0.0.i.i.i.i.1, %A.0
  br i1 %_18.i.i.i.i.1, label %bb10.i.i.i.i.1, label %bb7.i.i.i.i.1

bb7.i.i.i.i.1:                                    ; preds = %bb4.i.i.i.i.1
  %7 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.i.1, i64 -4
  %_5.i.i2.i.i.i.i.1 = load i32, ptr %7, align 4, !alias.scope !2630, !noalias !2635, !noundef !23
  %_0.i3.i.i.i.i.1 = icmp slt i32 %_4.i.i.i.i.i.i.1, %_5.i.i2.i.i.i.i.1
  br i1 %_0.i3.i.i.i.i.1, label %bb4.i.i.i.i.1, label %bb10.i.i.i.i.1

bb10.i.i.i.i.1:                                   ; preds = %bb7.i.i.i.i.1, %bb4.i.i.i.i.1
  %sift.sroa.0.0.i.lcssa.i.i.i.1 = phi ptr [ %sift.sroa.0.0.i.i.i.i.1, %bb7.i.i.i.i.1 ], [ %A.0, %bb4.i.i.i.i.1 ]
  store i32 %_4.i.i.i.i.i.i.1, ptr %sift.sroa.0.0.i.lcssa.i.i.i.1, align 4, !alias.scope !2628, !noalias !2638
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h015727d101d269d9E.exit.i.i.i.1

_ZN4core5slice4sort6shared9smallsort11insert_tail17h015727d101d269d9E.exit.i.i.i.1: ; preds = %bb10.i.i.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h015727d101d269d9E.exit.i.i.i
  %tail.sroa.0.0.i.i.i.1 = getelementptr inbounds nuw i8, ptr %tail.sroa.0.04.i.i.i, i64 8
  %_11.not.i.i.i.1 = icmp eq ptr %tail.sroa.0.0.i.i.i.1, %v_end.i.i.i
  br i1 %_11.not.i.i.i.1, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h134b00356443ff9dE.exit", label %bb5.i.i.i

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h134b00356443ff9dE.exit": ; preds = %bb5.i.i.i.prol.loopexit, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h015727d101d269d9E.exit.i.i.i.1, %start, %bb10.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !2603
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %compare.i4)
  call void @llvm.experimental.noalias.scope.decl(metadata !2655)
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %compare.i4)
  call void @llvm.experimental.noalias.scope.decl(metadata !2658)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %is_less.i.i5), !noalias !2655
  store ptr %compare.i4, ptr %is_less.i.i5, align 8, !noalias !2661
  %b.i.i6 = icmp samesign ult i64 %B.1, 2
  br i1 %b.i.i6, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hab482de571b7888dE.exit", label %bb7.i.i7, !prof !2611

bb7.i.i7:                                         ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h134b00356443ff9dE.exit"
  %b1.i.i8 = icmp samesign ult i64 %B.1, 21
  br i1 %b1.i.i8, label %bb9.i.i10, label %bb10.i.i9, !prof !2611

bb10.i.i9:                                        ; preds = %bb7.i.i7
; call core::slice::sort::stable::driftsort_main
  call void @_ZN4core5slice4sort6stable14driftsort_main17hfed4a3b6b12b08f1E(ptr noalias noundef nonnull align 4 %B.0, i64 noundef range(i64 0, 2305843009213693952) %B.1, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less.i.i5)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hab482de571b7888dE.exit"

bb9.i.i10:                                        ; preds = %bb7.i.i7
  %v_end.idx.i.i.i11 = shl nuw nsw i64 %B.1, 2
  %v_end.i.i.i12 = getelementptr inbounds nuw i8, ptr %B.0, i64 %v_end.idx.i.i.i11
  %tail.sroa.0.01.i.i.i13 = getelementptr inbounds nuw i8, ptr %B.0, i64 4
  %8 = and i64 %B.1, 1
  %lcmp.mod49.not.not = icmp eq i64 %8, 0
  br i1 %lcmp.mod49.not.not, label %bb5.i.i.i14.prol, label %bb5.i.i.i14.prol.loopexit

bb5.i.i.i14.prol:                                 ; preds = %bb9.i.i10
  call void @llvm.experimental.noalias.scope.decl(metadata !2663)
  call void @llvm.experimental.noalias.scope.decl(metadata !2666)
  call void @llvm.experimental.noalias.scope.decl(metadata !2668)
  call void @llvm.experimental.noalias.scope.decl(metadata !2671)
  %_4.i.i.i.i.i.i17.prol = load i32, ptr %B.0, align 4, !alias.scope !2673, !noalias !2676, !noundef !23
  %_5.i.i.i.i.i.i18.prol = load i32, ptr %tail.sroa.0.01.i.i.i13, align 4, !alias.scope !2677, !noalias !2678, !noundef !23
  %_0.i.i.i.i.i19.prol = icmp slt i32 %_4.i.i.i.i.i.i17.prol, %_5.i.i.i.i.i.i18.prol
  br i1 %_0.i.i.i.i.i19.prol, label %bb4.i.i.i.i22.prol, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h15c0e430fef2f522E.exit.i.i.i.prol

bb4.i.i.i.i22.prol:                               ; preds = %bb5.i.i.i14.prol, %bb7.i.i.i.i26.prol
  %9 = phi i32 [ %_4.i.i1.i.i.i.i.prol, %bb7.i.i.i.i26.prol ], [ %_4.i.i.i.i.i.i17.prol, %bb5.i.i.i14.prol ]
  %gap_guard.sroa.5.0.i.i.i.i23.prol = phi ptr [ %sift.sroa.0.0.i.i.i.i24.prol, %bb7.i.i.i.i26.prol ], [ %tail.sroa.0.01.i.i.i13, %bb5.i.i.i14.prol ]
  %sift.sroa.0.0.i.i.i.i24.prol = phi ptr [ %10, %bb7.i.i.i.i26.prol ], [ %B.0, %bb5.i.i.i14.prol ]
  store i32 %9, ptr %gap_guard.sroa.5.0.i.i.i.i23.prol, align 4, !alias.scope !2679, !noalias !2680
  %_18.i.i.i.i25.prol = icmp eq ptr %sift.sroa.0.0.i.i.i.i24.prol, %B.0
  br i1 %_18.i.i.i.i25.prol, label %bb10.i.i.i.i28.prol, label %bb7.i.i.i.i26.prol

bb7.i.i.i.i26.prol:                               ; preds = %bb4.i.i.i.i22.prol
  %10 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.i24.prol, i64 -4
  %_4.i.i1.i.i.i.i.prol = load i32, ptr %10, align 4, !alias.scope !2681, !noalias !2686, !noundef !23
  %_0.i3.i.i.i.i27.prol = icmp slt i32 %_4.i.i1.i.i.i.i.prol, %_5.i.i.i.i.i.i18.prol
  br i1 %_0.i3.i.i.i.i27.prol, label %bb4.i.i.i.i22.prol, label %bb10.i.i.i.i28.prol

bb10.i.i.i.i28.prol:                              ; preds = %bb7.i.i.i.i26.prol, %bb4.i.i.i.i22.prol
  %sift.sroa.0.0.i.lcssa.i.i.i29.prol = phi ptr [ %sift.sroa.0.0.i.i.i.i24.prol, %bb7.i.i.i.i26.prol ], [ %B.0, %bb4.i.i.i.i22.prol ]
  store i32 %_5.i.i.i.i.i.i18.prol, ptr %sift.sroa.0.0.i.lcssa.i.i.i29.prol, align 4, !alias.scope !2679, !noalias !2689
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h15c0e430fef2f522E.exit.i.i.i.prol

_ZN4core5slice4sort6shared9smallsort11insert_tail17h15c0e430fef2f522E.exit.i.i.i.prol: ; preds = %bb10.i.i.i.i28.prol, %bb5.i.i.i14.prol
  %tail.sroa.0.0.i.i.i20.prol = getelementptr inbounds nuw i8, ptr %B.0, i64 8
  br label %bb5.i.i.i14.prol.loopexit

bb5.i.i.i14.prol.loopexit:                        ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h15c0e430fef2f522E.exit.i.i.i.prol, %bb9.i.i10
  %tail.sroa.0.04.i.i.i15.unr = phi ptr [ %tail.sroa.0.01.i.i.i13, %bb9.i.i10 ], [ %tail.sroa.0.0.i.i.i20.prol, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h15c0e430fef2f522E.exit.i.i.i.prol ]
  %v.0.pn3.i.i.i16.unr = phi ptr [ %B.0, %bb9.i.i10 ], [ %tail.sroa.0.01.i.i.i13, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h15c0e430fef2f522E.exit.i.i.i.prol ]
  %11 = icmp eq i64 %B.1, 2
  br i1 %11, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hab482de571b7888dE.exit", label %bb5.i.i.i14

bb5.i.i.i14:                                      ; preds = %bb5.i.i.i14.prol.loopexit, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h15c0e430fef2f522E.exit.i.i.i.1
  %tail.sroa.0.04.i.i.i15 = phi ptr [ %tail.sroa.0.0.i.i.i20.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h15c0e430fef2f522E.exit.i.i.i.1 ], [ %tail.sroa.0.04.i.i.i15.unr, %bb5.i.i.i14.prol.loopexit ]
  %v.0.pn3.i.i.i16 = phi ptr [ %tail.sroa.0.0.i.i.i20, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h15c0e430fef2f522E.exit.i.i.i.1 ], [ %v.0.pn3.i.i.i16.unr, %bb5.i.i.i14.prol.loopexit ]
  call void @llvm.experimental.noalias.scope.decl(metadata !2663)
  call void @llvm.experimental.noalias.scope.decl(metadata !2666)
  call void @llvm.experimental.noalias.scope.decl(metadata !2668)
  call void @llvm.experimental.noalias.scope.decl(metadata !2671)
  %_4.i.i.i.i.i.i17 = load i32, ptr %v.0.pn3.i.i.i16, align 4, !alias.scope !2673, !noalias !2676, !noundef !23
  %_5.i.i.i.i.i.i18 = load i32, ptr %tail.sroa.0.04.i.i.i15, align 4, !alias.scope !2677, !noalias !2678, !noundef !23
  %_0.i.i.i.i.i19 = icmp slt i32 %_4.i.i.i.i.i.i17, %_5.i.i.i.i.i.i18
  br i1 %_0.i.i.i.i.i19, label %bb4.i.i.i.i22, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h15c0e430fef2f522E.exit.i.i.i

bb4.i.i.i.i22:                                    ; preds = %bb5.i.i.i14, %bb7.i.i.i.i26
  %12 = phi i32 [ %_4.i.i1.i.i.i.i, %bb7.i.i.i.i26 ], [ %_4.i.i.i.i.i.i17, %bb5.i.i.i14 ]
  %gap_guard.sroa.5.0.i.i.i.i23 = phi ptr [ %sift.sroa.0.0.i.i.i.i24, %bb7.i.i.i.i26 ], [ %tail.sroa.0.04.i.i.i15, %bb5.i.i.i14 ]
  %sift.sroa.0.0.i.i.i.i24 = phi ptr [ %13, %bb7.i.i.i.i26 ], [ %v.0.pn3.i.i.i16, %bb5.i.i.i14 ]
  store i32 %12, ptr %gap_guard.sroa.5.0.i.i.i.i23, align 4, !alias.scope !2679, !noalias !2680
  %_18.i.i.i.i25 = icmp eq ptr %sift.sroa.0.0.i.i.i.i24, %B.0
  br i1 %_18.i.i.i.i25, label %bb10.i.i.i.i28, label %bb7.i.i.i.i26

bb7.i.i.i.i26:                                    ; preds = %bb4.i.i.i.i22
  %13 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.i24, i64 -4
  %_4.i.i1.i.i.i.i = load i32, ptr %13, align 4, !alias.scope !2681, !noalias !2686, !noundef !23
  %_0.i3.i.i.i.i27 = icmp slt i32 %_4.i.i1.i.i.i.i, %_5.i.i.i.i.i.i18
  br i1 %_0.i3.i.i.i.i27, label %bb4.i.i.i.i22, label %bb10.i.i.i.i28

bb10.i.i.i.i28:                                   ; preds = %bb7.i.i.i.i26, %bb4.i.i.i.i22
  %sift.sroa.0.0.i.lcssa.i.i.i29 = phi ptr [ %sift.sroa.0.0.i.i.i.i24, %bb7.i.i.i.i26 ], [ %B.0, %bb4.i.i.i.i22 ]
  store i32 %_5.i.i.i.i.i.i18, ptr %sift.sroa.0.0.i.lcssa.i.i.i29, align 4, !alias.scope !2679, !noalias !2689
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h15c0e430fef2f522E.exit.i.i.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h15c0e430fef2f522E.exit.i.i.i: ; preds = %bb10.i.i.i.i28, %bb5.i.i.i14
  %tail.sroa.0.0.i.i.i20 = getelementptr inbounds nuw i8, ptr %tail.sroa.0.04.i.i.i15, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !2694)
  call void @llvm.experimental.noalias.scope.decl(metadata !2696)
  call void @llvm.experimental.noalias.scope.decl(metadata !2698)
  call void @llvm.experimental.noalias.scope.decl(metadata !2700)
  %_4.i.i.i.i.i.i17.1 = load i32, ptr %tail.sroa.0.04.i.i.i15, align 4, !alias.scope !2702, !noalias !2703, !noundef !23
  %_5.i.i.i.i.i.i18.1 = load i32, ptr %tail.sroa.0.0.i.i.i20, align 4, !alias.scope !2704, !noalias !2705, !noundef !23
  %_0.i.i.i.i.i19.1 = icmp slt i32 %_4.i.i.i.i.i.i17.1, %_5.i.i.i.i.i.i18.1
  br i1 %_0.i.i.i.i.i19.1, label %bb4.i.i.i.i22.1, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h15c0e430fef2f522E.exit.i.i.i.1

bb4.i.i.i.i22.1:                                  ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h15c0e430fef2f522E.exit.i.i.i, %bb7.i.i.i.i26.1
  %14 = phi i32 [ %_4.i.i1.i.i.i.i.1, %bb7.i.i.i.i26.1 ], [ %_4.i.i.i.i.i.i17.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h15c0e430fef2f522E.exit.i.i.i ]
  %gap_guard.sroa.5.0.i.i.i.i23.1 = phi ptr [ %sift.sroa.0.0.i.i.i.i24.1, %bb7.i.i.i.i26.1 ], [ %tail.sroa.0.0.i.i.i20, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h15c0e430fef2f522E.exit.i.i.i ]
  %sift.sroa.0.0.i.i.i.i24.1 = phi ptr [ %15, %bb7.i.i.i.i26.1 ], [ %tail.sroa.0.04.i.i.i15, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h15c0e430fef2f522E.exit.i.i.i ]
  store i32 %14, ptr %gap_guard.sroa.5.0.i.i.i.i23.1, align 4, !alias.scope !2679, !noalias !2680
  %_18.i.i.i.i25.1 = icmp eq ptr %sift.sroa.0.0.i.i.i.i24.1, %B.0
  br i1 %_18.i.i.i.i25.1, label %bb10.i.i.i.i28.1, label %bb7.i.i.i.i26.1

bb7.i.i.i.i26.1:                                  ; preds = %bb4.i.i.i.i22.1
  %15 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.i24.1, i64 -4
  %_4.i.i1.i.i.i.i.1 = load i32, ptr %15, align 4, !alias.scope !2681, !noalias !2686, !noundef !23
  %_0.i3.i.i.i.i27.1 = icmp slt i32 %_4.i.i1.i.i.i.i.1, %_5.i.i.i.i.i.i18.1
  br i1 %_0.i3.i.i.i.i27.1, label %bb4.i.i.i.i22.1, label %bb10.i.i.i.i28.1

bb10.i.i.i.i28.1:                                 ; preds = %bb7.i.i.i.i26.1, %bb4.i.i.i.i22.1
  %sift.sroa.0.0.i.lcssa.i.i.i29.1 = phi ptr [ %sift.sroa.0.0.i.i.i.i24.1, %bb7.i.i.i.i26.1 ], [ %B.0, %bb4.i.i.i.i22.1 ]
  store i32 %_5.i.i.i.i.i.i18.1, ptr %sift.sroa.0.0.i.lcssa.i.i.i29.1, align 4, !alias.scope !2679, !noalias !2689
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h15c0e430fef2f522E.exit.i.i.i.1

_ZN4core5slice4sort6shared9smallsort11insert_tail17h15c0e430fef2f522E.exit.i.i.i.1: ; preds = %bb10.i.i.i.i28.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h15c0e430fef2f522E.exit.i.i.i
  %tail.sroa.0.0.i.i.i20.1 = getelementptr inbounds nuw i8, ptr %tail.sroa.0.04.i.i.i15, i64 8
  %_11.not.i.i.i21.1 = icmp eq ptr %tail.sroa.0.0.i.i.i20.1, %v_end.i.i.i12
  br i1 %_11.not.i.i.i21.1, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hab482de571b7888dE.exit", label %bb5.i.i.i14

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hab482de571b7888dE.exit": ; preds = %bb5.i.i.i14.prol.loopexit, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h15c0e430fef2f522E.exit.i.i.i.1, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h134b00356443ff9dE.exit", %bb10.i.i9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %is_less.i.i5), !noalias !2655
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %compare.i4)
  %_1933 = icmp sgt i32 %n, 0
  br i1 %_1933, label %bb6.preheader, label %bb7

bb6.preheader:                                    ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hab482de571b7888dE.exit"
  %16 = zext nneg i32 %n to i64
  %wide.trip.count = zext nneg i32 %n to i64
  br label %bb6

bb7:                                              ; preds = %bb5, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hab482de571b7888dE.exit"
  %result.sroa.0.0.lcssa = phi i32 [ 0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hab482de571b7888dE.exit" ], [ %21, %bb5 ]
  ret i32 %result.sroa.0.0.lcssa

bb6:                                              ; preds = %bb6.preheader, %bb5
  %indvars.iv = phi i64 [ 0, %bb6.preheader ], [ %indvars.iv.next, %bb5 ]
  %result.sroa.0.035 = phi i32 [ 0, %bb6.preheader ], [ %21, %bb5 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv, %A.1
  br i1 %exitcond.not, label %panic, label %bb4

bb4:                                              ; preds = %bb6
  %17 = xor i64 %indvars.iv, -1
  %18 = add nsw i64 %16, %17
  %_18 = icmp ugt i64 %B.1, %18
  br i1 %_18, label %bb5, label %panic1

panic:                                            ; preds = %bb6
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %A.1, i64 noundef %A.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_9dbbc1b3917a432ac8aa67473d8df4f1) #18
  unreachable

bb5:                                              ; preds = %bb4
  %19 = getelementptr inbounds nuw i32, ptr %A.0, i64 %indvars.iv
  %_9 = load i32, ptr %19, align 4, !noundef !23
  %20 = getelementptr inbounds nuw i32, ptr %B.0, i64 %18
  %_13 = load i32, ptr %20, align 4, !noundef !23
  %_8 = mul i32 %_13, %_9
  %21 = add i32 %_8, %result.sroa.0.035
  %exitcond41.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond41.not, label %bb7, label %bb6

panic1:                                           ; preds = %bb4
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %18, i64 noundef %B.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_8e3b7585622117faa3e59bbcf352d341) #18
  unreachable
}
