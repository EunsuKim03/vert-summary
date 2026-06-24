define noundef i32 @f_gold(ptr noalias noundef nonnull align 4 %a.0, i64 noundef range(i64 0, 2305843009213693952) %a.1, ptr noalias noundef nonnull align 4 %b.0, i64 noundef range(i64 0, 2305843009213693952) %b.1, i32 noundef %n) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %compare.i4 = alloca [0 x i8], align 1
  %is_less.i.i5 = alloca [8 x i8], align 8
  %is_less.i.i = alloca [8 x i8], align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2369)
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %compare.i4)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2372)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !2369
  store ptr %compare.i4, ptr %is_less.i.i, align 8, !noalias !2375
  %b.i.i = icmp samesign ult i64 %a.1, 2
  br i1 %b.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h218380c8677b6fb5E.exit", label %bb7.i.i, !prof !2377

bb7.i.i:                                          ; preds = %start
  %b1.i.i = icmp samesign ult i64 %a.1, 21
  br i1 %b1.i.i, label %bb9.i.i, label %bb10.i.i, !prof !2377

bb10.i.i:                                         ; preds = %bb7.i.i
; call core::slice::sort::stable::driftsort_main
  call void @_ZN4core5slice4sort6stable14driftsort_main17h8faa72b49dcfa83aE(ptr noalias noundef nonnull align 4 %a.0, i64 noundef range(i64 0, 2305843009213693952) %a.1, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less.i.i)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h218380c8677b6fb5E.exit"

bb9.i.i:                                          ; preds = %bb7.i.i
  %v_end.idx.i.i.i = shl nuw nsw i64 %a.1, 2
  %v_end.i.i.i = getelementptr inbounds nuw i8, ptr %a.0, i64 %v_end.idx.i.i.i
  %tail.sroa.0.01.i.i.i = getelementptr inbounds nuw i8, ptr %a.0, i64 4
  %0 = and i64 %a.1, 1
  %lcmp.mod.not.not = icmp eq i64 %0, 0
  br i1 %lcmp.mod.not.not, label %bb5.i.i.i.prol, label %bb5.i.i.i.prol.loopexit

bb5.i.i.i.prol:                                   ; preds = %bb9.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2378)
  call void @llvm.experimental.noalias.scope.decl(metadata !2381)
  call void @llvm.experimental.noalias.scope.decl(metadata !2383)
  call void @llvm.experimental.noalias.scope.decl(metadata !2386)
  %_4.i.i.i.i.i.i.prol = load i32, ptr %tail.sroa.0.01.i.i.i, align 4, !alias.scope !2388, !noalias !2391, !noundef !18
  %_5.i.i.i.i.i.i.prol = load i32, ptr %a.0, align 4, !alias.scope !2392, !noalias !2393, !noundef !18
  %_0.i.i.i.i.i.prol = icmp slt i32 %_4.i.i.i.i.i.i.prol, %_5.i.i.i.i.i.i.prol
  br i1 %_0.i.i.i.i.i.prol, label %bb4.i.i.i.i.prol, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9b29be51414b643bE.exit.i.i.i.prol

bb4.i.i.i.i.prol:                                 ; preds = %bb5.i.i.i.prol, %bb7.i.i.i.i.prol
  %1 = phi i32 [ %_5.i.i2.i.i.i.i.prol, %bb7.i.i.i.i.prol ], [ %_5.i.i.i.i.i.i.prol, %bb5.i.i.i.prol ]
  %gap_guard.sroa.5.0.i.i.i.i.prol = phi ptr [ %sift.sroa.0.0.i.i.i.i.prol, %bb7.i.i.i.i.prol ], [ %tail.sroa.0.01.i.i.i, %bb5.i.i.i.prol ]
  %sift.sroa.0.0.i.i.i.i.prol = phi ptr [ %2, %bb7.i.i.i.i.prol ], [ %a.0, %bb5.i.i.i.prol ]
  store i32 %1, ptr %gap_guard.sroa.5.0.i.i.i.i.prol, align 4, !alias.scope !2394, !noalias !2395
  %_18.i.i.i.i.prol = icmp eq ptr %sift.sroa.0.0.i.i.i.i.prol, %a.0
  br i1 %_18.i.i.i.i.prol, label %bb10.i.i.i.i.prol, label %bb7.i.i.i.i.prol

bb7.i.i.i.i.prol:                                 ; preds = %bb4.i.i.i.i.prol
  %2 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.i.prol, i64 -4
  %_5.i.i2.i.i.i.i.prol = load i32, ptr %2, align 4, !alias.scope !2396, !noalias !2401, !noundef !18
  %_0.i3.i.i.i.i.prol = icmp slt i32 %_4.i.i.i.i.i.i.prol, %_5.i.i2.i.i.i.i.prol
  br i1 %_0.i3.i.i.i.i.prol, label %bb4.i.i.i.i.prol, label %bb10.i.i.i.i.prol

bb10.i.i.i.i.prol:                                ; preds = %bb7.i.i.i.i.prol, %bb4.i.i.i.i.prol
  %sift.sroa.0.0.i.lcssa.i.i.i.prol = phi ptr [ %sift.sroa.0.0.i.i.i.i.prol, %bb7.i.i.i.i.prol ], [ %a.0, %bb4.i.i.i.i.prol ]
  store i32 %_4.i.i.i.i.i.i.prol, ptr %sift.sroa.0.0.i.lcssa.i.i.i.prol, align 4, !alias.scope !2394, !noalias !2404
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9b29be51414b643bE.exit.i.i.i.prol

_ZN4core5slice4sort6shared9smallsort11insert_tail17h9b29be51414b643bE.exit.i.i.i.prol: ; preds = %bb10.i.i.i.i.prol, %bb5.i.i.i.prol
  %tail.sroa.0.0.i.i.i.prol = getelementptr inbounds nuw i8, ptr %a.0, i64 8
  br label %bb5.i.i.i.prol.loopexit

bb5.i.i.i.prol.loopexit:                          ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9b29be51414b643bE.exit.i.i.i.prol, %bb9.i.i
  %tail.sroa.0.04.i.i.i.unr = phi ptr [ %tail.sroa.0.01.i.i.i, %bb9.i.i ], [ %tail.sroa.0.0.i.i.i.prol, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9b29be51414b643bE.exit.i.i.i.prol ]
  %v.0.pn3.i.i.i.unr = phi ptr [ %a.0, %bb9.i.i ], [ %tail.sroa.0.01.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9b29be51414b643bE.exit.i.i.i.prol ]
  %3 = icmp eq i64 %a.1, 2
  br i1 %3, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h218380c8677b6fb5E.exit", label %bb5.i.i.i

bb5.i.i.i:                                        ; preds = %bb5.i.i.i.prol.loopexit, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9b29be51414b643bE.exit.i.i.i.1
  %tail.sroa.0.04.i.i.i = phi ptr [ %tail.sroa.0.0.i.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9b29be51414b643bE.exit.i.i.i.1 ], [ %tail.sroa.0.04.i.i.i.unr, %bb5.i.i.i.prol.loopexit ]
  %v.0.pn3.i.i.i = phi ptr [ %tail.sroa.0.0.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9b29be51414b643bE.exit.i.i.i.1 ], [ %v.0.pn3.i.i.i.unr, %bb5.i.i.i.prol.loopexit ]
  call void @llvm.experimental.noalias.scope.decl(metadata !2378)
  call void @llvm.experimental.noalias.scope.decl(metadata !2381)
  call void @llvm.experimental.noalias.scope.decl(metadata !2383)
  call void @llvm.experimental.noalias.scope.decl(metadata !2386)
  %_4.i.i.i.i.i.i = load i32, ptr %tail.sroa.0.04.i.i.i, align 4, !alias.scope !2388, !noalias !2391, !noundef !18
  %_5.i.i.i.i.i.i = load i32, ptr %v.0.pn3.i.i.i, align 4, !alias.scope !2392, !noalias !2393, !noundef !18
  %_0.i.i.i.i.i = icmp slt i32 %_4.i.i.i.i.i.i, %_5.i.i.i.i.i.i
  br i1 %_0.i.i.i.i.i, label %bb4.i.i.i.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9b29be51414b643bE.exit.i.i.i

bb4.i.i.i.i:                                      ; preds = %bb5.i.i.i, %bb7.i.i.i.i
  %4 = phi i32 [ %_5.i.i2.i.i.i.i, %bb7.i.i.i.i ], [ %_5.i.i.i.i.i.i, %bb5.i.i.i ]
  %gap_guard.sroa.5.0.i.i.i.i = phi ptr [ %sift.sroa.0.0.i.i.i.i, %bb7.i.i.i.i ], [ %tail.sroa.0.04.i.i.i, %bb5.i.i.i ]
  %sift.sroa.0.0.i.i.i.i = phi ptr [ %5, %bb7.i.i.i.i ], [ %v.0.pn3.i.i.i, %bb5.i.i.i ]
  store i32 %4, ptr %gap_guard.sroa.5.0.i.i.i.i, align 4, !alias.scope !2394, !noalias !2395
  %_18.i.i.i.i = icmp eq ptr %sift.sroa.0.0.i.i.i.i, %a.0
  br i1 %_18.i.i.i.i, label %bb10.i.i.i.i, label %bb7.i.i.i.i

bb7.i.i.i.i:                                      ; preds = %bb4.i.i.i.i
  %5 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.i, i64 -4
  %_5.i.i2.i.i.i.i = load i32, ptr %5, align 4, !alias.scope !2396, !noalias !2401, !noundef !18
  %_0.i3.i.i.i.i = icmp slt i32 %_4.i.i.i.i.i.i, %_5.i.i2.i.i.i.i
  br i1 %_0.i3.i.i.i.i, label %bb4.i.i.i.i, label %bb10.i.i.i.i

bb10.i.i.i.i:                                     ; preds = %bb7.i.i.i.i, %bb4.i.i.i.i
  %sift.sroa.0.0.i.lcssa.i.i.i = phi ptr [ %sift.sroa.0.0.i.i.i.i, %bb7.i.i.i.i ], [ %a.0, %bb4.i.i.i.i ]
  store i32 %_4.i.i.i.i.i.i, ptr %sift.sroa.0.0.i.lcssa.i.i.i, align 4, !alias.scope !2394, !noalias !2404
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9b29be51414b643bE.exit.i.i.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h9b29be51414b643bE.exit.i.i.i: ; preds = %bb10.i.i.i.i, %bb5.i.i.i
  %tail.sroa.0.0.i.i.i = getelementptr inbounds nuw i8, ptr %tail.sroa.0.04.i.i.i, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !2409)
  call void @llvm.experimental.noalias.scope.decl(metadata !2411)
  call void @llvm.experimental.noalias.scope.decl(metadata !2413)
  call void @llvm.experimental.noalias.scope.decl(metadata !2415)
  %_4.i.i.i.i.i.i.1 = load i32, ptr %tail.sroa.0.0.i.i.i, align 4, !alias.scope !2417, !noalias !2418, !noundef !18
  %_5.i.i.i.i.i.i.1 = load i32, ptr %tail.sroa.0.04.i.i.i, align 4, !alias.scope !2419, !noalias !2420, !noundef !18
  %_0.i.i.i.i.i.1 = icmp slt i32 %_4.i.i.i.i.i.i.1, %_5.i.i.i.i.i.i.1
  br i1 %_0.i.i.i.i.i.1, label %bb4.i.i.i.i.1, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9b29be51414b643bE.exit.i.i.i.1

bb4.i.i.i.i.1:                                    ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9b29be51414b643bE.exit.i.i.i, %bb7.i.i.i.i.1
  %6 = phi i32 [ %_5.i.i2.i.i.i.i.1, %bb7.i.i.i.i.1 ], [ %_5.i.i.i.i.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9b29be51414b643bE.exit.i.i.i ]
  %gap_guard.sroa.5.0.i.i.i.i.1 = phi ptr [ %sift.sroa.0.0.i.i.i.i.1, %bb7.i.i.i.i.1 ], [ %tail.sroa.0.0.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9b29be51414b643bE.exit.i.i.i ]
  %sift.sroa.0.0.i.i.i.i.1 = phi ptr [ %7, %bb7.i.i.i.i.1 ], [ %tail.sroa.0.04.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9b29be51414b643bE.exit.i.i.i ]
  store i32 %6, ptr %gap_guard.sroa.5.0.i.i.i.i.1, align 4, !alias.scope !2394, !noalias !2395
  %_18.i.i.i.i.1 = icmp eq ptr %sift.sroa.0.0.i.i.i.i.1, %a.0
  br i1 %_18.i.i.i.i.1, label %bb10.i.i.i.i.1, label %bb7.i.i.i.i.1

bb7.i.i.i.i.1:                                    ; preds = %bb4.i.i.i.i.1
  %7 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.i.1, i64 -4
  %_5.i.i2.i.i.i.i.1 = load i32, ptr %7, align 4, !alias.scope !2396, !noalias !2401, !noundef !18
  %_0.i3.i.i.i.i.1 = icmp slt i32 %_4.i.i.i.i.i.i.1, %_5.i.i2.i.i.i.i.1
  br i1 %_0.i3.i.i.i.i.1, label %bb4.i.i.i.i.1, label %bb10.i.i.i.i.1

bb10.i.i.i.i.1:                                   ; preds = %bb7.i.i.i.i.1, %bb4.i.i.i.i.1
  %sift.sroa.0.0.i.lcssa.i.i.i.1 = phi ptr [ %sift.sroa.0.0.i.i.i.i.1, %bb7.i.i.i.i.1 ], [ %a.0, %bb4.i.i.i.i.1 ]
  store i32 %_4.i.i.i.i.i.i.1, ptr %sift.sroa.0.0.i.lcssa.i.i.i.1, align 4, !alias.scope !2394, !noalias !2404
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9b29be51414b643bE.exit.i.i.i.1

_ZN4core5slice4sort6shared9smallsort11insert_tail17h9b29be51414b643bE.exit.i.i.i.1: ; preds = %bb10.i.i.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9b29be51414b643bE.exit.i.i.i
  %tail.sroa.0.0.i.i.i.1 = getelementptr inbounds nuw i8, ptr %tail.sroa.0.04.i.i.i, i64 8
  %_11.not.i.i.i.1 = icmp eq ptr %tail.sroa.0.0.i.i.i.1, %v_end.i.i.i
  br i1 %_11.not.i.i.i.1, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h218380c8677b6fb5E.exit", label %bb5.i.i.i

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h218380c8677b6fb5E.exit": ; preds = %bb5.i.i.i.prol.loopexit, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9b29be51414b643bE.exit.i.i.i.1, %start, %bb10.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !2369
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %compare.i4)
  call void @llvm.experimental.noalias.scope.decl(metadata !2421)
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %compare.i4)
  call void @llvm.experimental.noalias.scope.decl(metadata !2424)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %is_less.i.i5), !noalias !2421
  store ptr %compare.i4, ptr %is_less.i.i5, align 8, !noalias !2427
  %b.i.i6 = icmp samesign ult i64 %b.1, 2
  br i1 %b.i.i6, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h5184eeb8f25aa50aE.exit", label %bb7.i.i7, !prof !2377

bb7.i.i7:                                         ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h218380c8677b6fb5E.exit"
  %b1.i.i8 = icmp samesign ult i64 %b.1, 21
  br i1 %b1.i.i8, label %bb9.i.i10, label %bb10.i.i9, !prof !2377

bb10.i.i9:                                        ; preds = %bb7.i.i7
; call core::slice::sort::stable::driftsort_main
  call void @_ZN4core5slice4sort6stable14driftsort_main17h5436bcb9b76deca8E(ptr noalias noundef nonnull align 4 %b.0, i64 noundef range(i64 0, 2305843009213693952) %b.1, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less.i.i5)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h5184eeb8f25aa50aE.exit"

bb9.i.i10:                                        ; preds = %bb7.i.i7
  %v_end.idx.i.i.i11 = shl nuw nsw i64 %b.1, 2
  %v_end.i.i.i12 = getelementptr inbounds nuw i8, ptr %b.0, i64 %v_end.idx.i.i.i11
  %tail.sroa.0.01.i.i.i13 = getelementptr inbounds nuw i8, ptr %b.0, i64 4
  %8 = and i64 %b.1, 1
  %lcmp.mod51.not.not = icmp eq i64 %8, 0
  br i1 %lcmp.mod51.not.not, label %bb5.i.i.i14.prol, label %bb5.i.i.i14.prol.loopexit

bb5.i.i.i14.prol:                                 ; preds = %bb9.i.i10
  call void @llvm.experimental.noalias.scope.decl(metadata !2429)
  call void @llvm.experimental.noalias.scope.decl(metadata !2432)
  call void @llvm.experimental.noalias.scope.decl(metadata !2434)
  call void @llvm.experimental.noalias.scope.decl(metadata !2437)
  %_4.i.i.i.i.i.i17.prol = load i32, ptr %tail.sroa.0.01.i.i.i13, align 4, !alias.scope !2439, !noalias !2442, !noundef !18
  %_5.i.i.i.i.i.i18.prol = load i32, ptr %b.0, align 4, !alias.scope !2443, !noalias !2444, !noundef !18
  %_0.i.i.i.i.i19.prol = icmp slt i32 %_4.i.i.i.i.i.i17.prol, %_5.i.i.i.i.i.i18.prol
  br i1 %_0.i.i.i.i.i19.prol, label %bb4.i.i.i.i22.prol, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h63b7cf15bdf9566bE.exit.i.i.i.prol

bb4.i.i.i.i22.prol:                               ; preds = %bb5.i.i.i14.prol, %bb7.i.i.i.i26.prol
  %9 = phi i32 [ %_5.i.i2.i.i.i.i27.prol, %bb7.i.i.i.i26.prol ], [ %_5.i.i.i.i.i.i18.prol, %bb5.i.i.i14.prol ]
  %gap_guard.sroa.5.0.i.i.i.i23.prol = phi ptr [ %sift.sroa.0.0.i.i.i.i24.prol, %bb7.i.i.i.i26.prol ], [ %tail.sroa.0.01.i.i.i13, %bb5.i.i.i14.prol ]
  %sift.sroa.0.0.i.i.i.i24.prol = phi ptr [ %10, %bb7.i.i.i.i26.prol ], [ %b.0, %bb5.i.i.i14.prol ]
  store i32 %9, ptr %gap_guard.sroa.5.0.i.i.i.i23.prol, align 4, !alias.scope !2445, !noalias !2446
  %_18.i.i.i.i25.prol = icmp eq ptr %sift.sroa.0.0.i.i.i.i24.prol, %b.0
  br i1 %_18.i.i.i.i25.prol, label %bb10.i.i.i.i29.prol, label %bb7.i.i.i.i26.prol

bb7.i.i.i.i26.prol:                               ; preds = %bb4.i.i.i.i22.prol
  %10 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.i24.prol, i64 -4
  %_5.i.i2.i.i.i.i27.prol = load i32, ptr %10, align 4, !alias.scope !2447, !noalias !2452, !noundef !18
  %_0.i3.i.i.i.i28.prol = icmp slt i32 %_4.i.i.i.i.i.i17.prol, %_5.i.i2.i.i.i.i27.prol
  br i1 %_0.i3.i.i.i.i28.prol, label %bb4.i.i.i.i22.prol, label %bb10.i.i.i.i29.prol

bb10.i.i.i.i29.prol:                              ; preds = %bb7.i.i.i.i26.prol, %bb4.i.i.i.i22.prol
  %sift.sroa.0.0.i.lcssa.i.i.i30.prol = phi ptr [ %sift.sroa.0.0.i.i.i.i24.prol, %bb7.i.i.i.i26.prol ], [ %b.0, %bb4.i.i.i.i22.prol ]
  store i32 %_4.i.i.i.i.i.i17.prol, ptr %sift.sroa.0.0.i.lcssa.i.i.i30.prol, align 4, !alias.scope !2445, !noalias !2455
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h63b7cf15bdf9566bE.exit.i.i.i.prol

_ZN4core5slice4sort6shared9smallsort11insert_tail17h63b7cf15bdf9566bE.exit.i.i.i.prol: ; preds = %bb10.i.i.i.i29.prol, %bb5.i.i.i14.prol
  %tail.sroa.0.0.i.i.i20.prol = getelementptr inbounds nuw i8, ptr %b.0, i64 8
  br label %bb5.i.i.i14.prol.loopexit

bb5.i.i.i14.prol.loopexit:                        ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h63b7cf15bdf9566bE.exit.i.i.i.prol, %bb9.i.i10
  %tail.sroa.0.04.i.i.i15.unr = phi ptr [ %tail.sroa.0.01.i.i.i13, %bb9.i.i10 ], [ %tail.sroa.0.0.i.i.i20.prol, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h63b7cf15bdf9566bE.exit.i.i.i.prol ]
  %v.0.pn3.i.i.i16.unr = phi ptr [ %b.0, %bb9.i.i10 ], [ %tail.sroa.0.01.i.i.i13, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h63b7cf15bdf9566bE.exit.i.i.i.prol ]
  %11 = icmp eq i64 %b.1, 2
  br i1 %11, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h5184eeb8f25aa50aE.exit", label %bb5.i.i.i14

bb5.i.i.i14:                                      ; preds = %bb5.i.i.i14.prol.loopexit, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h63b7cf15bdf9566bE.exit.i.i.i.1
  %tail.sroa.0.04.i.i.i15 = phi ptr [ %tail.sroa.0.0.i.i.i20.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h63b7cf15bdf9566bE.exit.i.i.i.1 ], [ %tail.sroa.0.04.i.i.i15.unr, %bb5.i.i.i14.prol.loopexit ]
  %v.0.pn3.i.i.i16 = phi ptr [ %tail.sroa.0.0.i.i.i20, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h63b7cf15bdf9566bE.exit.i.i.i.1 ], [ %v.0.pn3.i.i.i16.unr, %bb5.i.i.i14.prol.loopexit ]
  call void @llvm.experimental.noalias.scope.decl(metadata !2429)
  call void @llvm.experimental.noalias.scope.decl(metadata !2432)
  call void @llvm.experimental.noalias.scope.decl(metadata !2434)
  call void @llvm.experimental.noalias.scope.decl(metadata !2437)
  %_4.i.i.i.i.i.i17 = load i32, ptr %tail.sroa.0.04.i.i.i15, align 4, !alias.scope !2439, !noalias !2442, !noundef !18
  %_5.i.i.i.i.i.i18 = load i32, ptr %v.0.pn3.i.i.i16, align 4, !alias.scope !2443, !noalias !2444, !noundef !18
  %_0.i.i.i.i.i19 = icmp slt i32 %_4.i.i.i.i.i.i17, %_5.i.i.i.i.i.i18
  br i1 %_0.i.i.i.i.i19, label %bb4.i.i.i.i22, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h63b7cf15bdf9566bE.exit.i.i.i

bb4.i.i.i.i22:                                    ; preds = %bb5.i.i.i14, %bb7.i.i.i.i26
  %12 = phi i32 [ %_5.i.i2.i.i.i.i27, %bb7.i.i.i.i26 ], [ %_5.i.i.i.i.i.i18, %bb5.i.i.i14 ]
  %gap_guard.sroa.5.0.i.i.i.i23 = phi ptr [ %sift.sroa.0.0.i.i.i.i24, %bb7.i.i.i.i26 ], [ %tail.sroa.0.04.i.i.i15, %bb5.i.i.i14 ]
  %sift.sroa.0.0.i.i.i.i24 = phi ptr [ %13, %bb7.i.i.i.i26 ], [ %v.0.pn3.i.i.i16, %bb5.i.i.i14 ]
  store i32 %12, ptr %gap_guard.sroa.5.0.i.i.i.i23, align 4, !alias.scope !2445, !noalias !2446
  %_18.i.i.i.i25 = icmp eq ptr %sift.sroa.0.0.i.i.i.i24, %b.0
  br i1 %_18.i.i.i.i25, label %bb10.i.i.i.i29, label %bb7.i.i.i.i26

bb7.i.i.i.i26:                                    ; preds = %bb4.i.i.i.i22
  %13 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.i24, i64 -4
  %_5.i.i2.i.i.i.i27 = load i32, ptr %13, align 4, !alias.scope !2447, !noalias !2452, !noundef !18
  %_0.i3.i.i.i.i28 = icmp slt i32 %_4.i.i.i.i.i.i17, %_5.i.i2.i.i.i.i27
  br i1 %_0.i3.i.i.i.i28, label %bb4.i.i.i.i22, label %bb10.i.i.i.i29

bb10.i.i.i.i29:                                   ; preds = %bb7.i.i.i.i26, %bb4.i.i.i.i22
  %sift.sroa.0.0.i.lcssa.i.i.i30 = phi ptr [ %sift.sroa.0.0.i.i.i.i24, %bb7.i.i.i.i26 ], [ %b.0, %bb4.i.i.i.i22 ]
  store i32 %_4.i.i.i.i.i.i17, ptr %sift.sroa.0.0.i.lcssa.i.i.i30, align 4, !alias.scope !2445, !noalias !2455
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h63b7cf15bdf9566bE.exit.i.i.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h63b7cf15bdf9566bE.exit.i.i.i: ; preds = %bb10.i.i.i.i29, %bb5.i.i.i14
  %tail.sroa.0.0.i.i.i20 = getelementptr inbounds nuw i8, ptr %tail.sroa.0.04.i.i.i15, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !2460)
  call void @llvm.experimental.noalias.scope.decl(metadata !2462)
  call void @llvm.experimental.noalias.scope.decl(metadata !2464)
  call void @llvm.experimental.noalias.scope.decl(metadata !2466)
  %_4.i.i.i.i.i.i17.1 = load i32, ptr %tail.sroa.0.0.i.i.i20, align 4, !alias.scope !2468, !noalias !2469, !noundef !18
  %_5.i.i.i.i.i.i18.1 = load i32, ptr %tail.sroa.0.04.i.i.i15, align 4, !alias.scope !2470, !noalias !2471, !noundef !18
  %_0.i.i.i.i.i19.1 = icmp slt i32 %_4.i.i.i.i.i.i17.1, %_5.i.i.i.i.i.i18.1
  br i1 %_0.i.i.i.i.i19.1, label %bb4.i.i.i.i22.1, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h63b7cf15bdf9566bE.exit.i.i.i.1

bb4.i.i.i.i22.1:                                  ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h63b7cf15bdf9566bE.exit.i.i.i, %bb7.i.i.i.i26.1
  %14 = phi i32 [ %_5.i.i2.i.i.i.i27.1, %bb7.i.i.i.i26.1 ], [ %_5.i.i.i.i.i.i18.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h63b7cf15bdf9566bE.exit.i.i.i ]
  %gap_guard.sroa.5.0.i.i.i.i23.1 = phi ptr [ %sift.sroa.0.0.i.i.i.i24.1, %bb7.i.i.i.i26.1 ], [ %tail.sroa.0.0.i.i.i20, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h63b7cf15bdf9566bE.exit.i.i.i ]
  %sift.sroa.0.0.i.i.i.i24.1 = phi ptr [ %15, %bb7.i.i.i.i26.1 ], [ %tail.sroa.0.04.i.i.i15, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h63b7cf15bdf9566bE.exit.i.i.i ]
  store i32 %14, ptr %gap_guard.sroa.5.0.i.i.i.i23.1, align 4, !alias.scope !2445, !noalias !2446
  %_18.i.i.i.i25.1 = icmp eq ptr %sift.sroa.0.0.i.i.i.i24.1, %b.0
  br i1 %_18.i.i.i.i25.1, label %bb10.i.i.i.i29.1, label %bb7.i.i.i.i26.1

bb7.i.i.i.i26.1:                                  ; preds = %bb4.i.i.i.i22.1
  %15 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.i24.1, i64 -4
  %_5.i.i2.i.i.i.i27.1 = load i32, ptr %15, align 4, !alias.scope !2447, !noalias !2452, !noundef !18
  %_0.i3.i.i.i.i28.1 = icmp slt i32 %_4.i.i.i.i.i.i17.1, %_5.i.i2.i.i.i.i27.1
  br i1 %_0.i3.i.i.i.i28.1, label %bb4.i.i.i.i22.1, label %bb10.i.i.i.i29.1

bb10.i.i.i.i29.1:                                 ; preds = %bb7.i.i.i.i26.1, %bb4.i.i.i.i22.1
  %sift.sroa.0.0.i.lcssa.i.i.i30.1 = phi ptr [ %sift.sroa.0.0.i.i.i.i24.1, %bb7.i.i.i.i26.1 ], [ %b.0, %bb4.i.i.i.i22.1 ]
  store i32 %_4.i.i.i.i.i.i17.1, ptr %sift.sroa.0.0.i.lcssa.i.i.i30.1, align 4, !alias.scope !2445, !noalias !2455
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h63b7cf15bdf9566bE.exit.i.i.i.1

_ZN4core5slice4sort6shared9smallsort11insert_tail17h63b7cf15bdf9566bE.exit.i.i.i.1: ; preds = %bb10.i.i.i.i29.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h63b7cf15bdf9566bE.exit.i.i.i
  %tail.sroa.0.0.i.i.i20.1 = getelementptr inbounds nuw i8, ptr %tail.sroa.0.04.i.i.i15, i64 8
  %_11.not.i.i.i21.1 = icmp eq ptr %tail.sroa.0.0.i.i.i20.1, %v_end.i.i.i12
  br i1 %_11.not.i.i.i21.1, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h5184eeb8f25aa50aE.exit", label %bb5.i.i.i14

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h5184eeb8f25aa50aE.exit": ; preds = %bb5.i.i.i14.prol.loopexit, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h63b7cf15bdf9566bE.exit.i.i.i.1, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h218380c8677b6fb5E.exit", %bb10.i.i9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %is_less.i.i5), !noalias !2421
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %compare.i4)
  %_1734 = icmp sgt i32 %n, 0
  br i1 %_1734, label %bb6.preheader, label %bb7

bb6.preheader:                                    ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h5184eeb8f25aa50aE.exit"
  %wide.trip.count = zext nneg i32 %n to i64
  %umin = call i64 @llvm.umin.i64(i64 %b.1, i64 %a.1)
  %16 = add nsw i64 %wide.trip.count, -1
  %umin42 = call i64 @llvm.umin.i64(i64 %umin, i64 %16)
  %min.iters.check = icmp samesign ult i64 %umin42, 8
  br i1 %min.iters.check, label %bb6.preheader47, label %vector.ph

vector.ph:                                        ; preds = %bb6.preheader
  %17 = add nuw nsw i64 %umin42, 1
  %n.mod.vf = and i64 %17, 7
  %18 = icmp eq i64 %n.mod.vf, 0
  %19 = select i1 %18, i64 8, i64 %n.mod.vf
  %n.vec = sub nsw i64 %17, %19
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %28, %vector.body ]
  %vec.phi43 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %29, %vector.body ]
  %20 = getelementptr inbounds nuw i32, ptr %a.0, i64 %index
  %21 = getelementptr inbounds nuw i8, ptr %20, i64 16
  %wide.load = load <4 x i32>, ptr %20, align 4
  %wide.load44 = load <4 x i32>, ptr %21, align 4
  %22 = getelementptr inbounds nuw i32, ptr %b.0, i64 %index
  %23 = getelementptr inbounds nuw i8, ptr %22, i64 16
  %wide.load45 = load <4 x i32>, ptr %22, align 4
  %wide.load46 = load <4 x i32>, ptr %23, align 4
  %24 = sub <4 x i32> %wide.load, %wide.load45
  %25 = sub <4 x i32> %wide.load44, %wide.load46
  %26 = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %24, i1 false)
  %27 = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %25, i1 false)
  %28 = add <4 x i32> %26, %vec.phi
  %29 = add <4 x i32> %27, %vec.phi43
  %index.next = add nuw i64 %index, 8
  %30 = icmp eq i64 %index.next, %n.vec
  br i1 %30, label %middle.block, label %vector.body, !llvm.loop !2472

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %29, %28
  %31 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  br label %bb6.preheader47

bb6.preheader47:                                  ; preds = %bb6.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %bb6.preheader ], [ %n.vec, %middle.block ]
  %result.sroa.0.036.ph = phi i32 [ 0, %bb6.preheader ], [ %31, %middle.block ]
  br label %bb6

bb7:                                              ; preds = %bb5, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h5184eeb8f25aa50aE.exit"
  %result.sroa.0.0.lcssa = phi i32 [ 0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h5184eeb8f25aa50aE.exit" ], [ %34, %bb5 ]
  ret i32 %result.sroa.0.0.lcssa

bb6:                                              ; preds = %bb6.preheader47, %bb5
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb5 ], [ %indvars.iv.ph, %bb6.preheader47 ]
  %result.sroa.0.036 = phi i32 [ %34, %bb5 ], [ %result.sroa.0.036.ph, %bb6.preheader47 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv, %a.1
  br i1 %exitcond.not, label %panic, label %bb4

bb4:                                              ; preds = %bb6
  %exitcond40.not = icmp eq i64 %indvars.iv, %b.1
  br i1 %exitcond40.not, label %panic1, label %bb5

panic:                                            ; preds = %bb6
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %a.1, i64 noundef %a.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_65666827395734502cae8ee7b2e4a1c0) #18
  unreachable

bb5:                                              ; preds = %bb4
  %32 = getelementptr inbounds nuw i32, ptr %a.0, i64 %indvars.iv
  %_10 = load i32, ptr %32, align 4, !noundef !18
  %33 = getelementptr inbounds nuw i32, ptr %b.0, i64 %indvars.iv
  %_14 = load i32, ptr %33, align 4, !noundef !18
  %_9 = sub i32 %_10, %_14
  %_8.sroa.0.0 = call i32 @llvm.abs.i32(i32 %_9, i1 false)
  %34 = add i32 %_8.sroa.0.0, %result.sroa.0.036
  %exitcond41.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond41.not, label %bb7, label %bb6, !llvm.loop !2473

panic1:                                           ; preds = %bb4
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %b.1, i64 noundef %b.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_e393816fd9e35d37e9e92871c97089d9) #18
  unreachable
}
