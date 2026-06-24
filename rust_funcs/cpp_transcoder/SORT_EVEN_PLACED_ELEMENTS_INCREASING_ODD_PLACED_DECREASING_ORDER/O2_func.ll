define void @f_gold(ptr noalias noundef nonnull align 4 captures(none) %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, i32 noundef %n) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %compare.i = alloca [0 x i8], align 1
  %is_less.i.i = alloca [8 x i8], align 8
  %odd_arr = alloca [24 x i8], align 8
  %even_arr = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %even_arr)
  store i64 0, ptr %even_arr, align 8
  %0 = getelementptr inbounds nuw i8, ptr %even_arr, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %0, align 8
  %1 = getelementptr inbounds nuw i8, ptr %even_arr, i64 16
  store i64 0, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %odd_arr)
  store i64 0, ptr %odd_arr, align 8
  %2 = getelementptr inbounds nuw i8, ptr %odd_arr, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %2, align 8
  %3 = getelementptr inbounds nuw i8, ptr %odd_arr, i64 16
  store i64 0, ptr %3, align 8
  %_3948 = icmp sgt i32 %n, 0
  br i1 %_3948, label %bb17.preheader, label %bb24.thread

bb24.thread:                                      ; preds = %start
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %compare.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !2612
  br label %bb7

bb17.preheader:                                   ; preds = %start
  %wide.trip.count = zext nneg i32 %n to i64
  br label %bb17

bb18:                                             ; preds = %bb6
  %_48.pre = load ptr, ptr %0, align 8
  %_47.pre = load i64, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %compare.i)
  %b.i = icmp samesign ult i64 %_47.pre, 2
  br i1 %b.i, label %bb24, label %bb7.i, !prof !2615

bb7.i:                                            ; preds = %bb18
  %b1.i = icmp samesign ult i64 %_47.pre, 21
  br i1 %b1.i, label %bb9.i, label %bb10.i, !prof !2604

bb10.i:                                           ; preds = %bb7.i
; invoke core::slice::sort::stable::driftsort_main
  invoke void @_ZN4core5slice4sort6stable14driftsort_main17h12fba252b83c9bb7E(ptr noalias noundef nonnull align 4 %_48.pre, i64 noundef range(i64 0, 2305843009213693952) %_47.pre, ptr noalias noundef nonnull align 1 %compare.i)
          to label %bb24 unwind label %cleanup.loopexit.split-lp

bb9.i:                                            ; preds = %bb7.i
  %v_end.idx.i.i = shl nuw nsw i64 %_47.pre, 2
  %v_end.i.i = getelementptr inbounds nuw i8, ptr %_48.pre, i64 %v_end.idx.i.i
  %tail.sroa.0.01.i.i = getelementptr inbounds nuw i8, ptr %_48.pre, i64 4
  %4 = and i64 %_47.pre, 1
  %lcmp.mod.not.not = icmp eq i64 %4, 0
  br i1 %lcmp.mod.not.not, label %bb5.i.i.prol, label %bb5.i.i.prol.loopexit

bb5.i.i.prol:                                     ; preds = %bb9.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2616)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2619)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2621)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2624)
  %_3.i.i.i.i.i.prol = load i32, ptr %tail.sroa.0.01.i.i, align 4, !alias.scope !2626, !noalias !2631, !noundef !18
  %_4.i.i.i.i.i.prol = load i32, ptr %_48.pre, align 4, !alias.scope !2632, !noalias !2633, !noundef !18
  %_0.i.i.i.i.i.prol = icmp slt i32 %_3.i.i.i.i.i.prol, %_4.i.i.i.i.i.prol
  br i1 %_0.i.i.i.i.i.prol, label %bb4.i.i.i.prol, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h88144fb88437f7a9E.exit.i.i.prol

bb4.i.i.i.prol:                                   ; preds = %bb5.i.i.prol, %bb7.i.i.i.prol
  %5 = phi i32 [ %_4.i.i2.i.i.i.prol, %bb7.i.i.i.prol ], [ %_4.i.i.i.i.i.prol, %bb5.i.i.prol ]
  %gap_guard.sroa.5.0.i.i.i.prol = phi ptr [ %sift.sroa.0.0.i.i.i.prol, %bb7.i.i.i.prol ], [ %tail.sroa.0.01.i.i, %bb5.i.i.prol ]
  %sift.sroa.0.0.i.i.i.prol = phi ptr [ %6, %bb7.i.i.i.prol ], [ %_48.pre, %bb5.i.i.prol ]
  store i32 %5, ptr %gap_guard.sroa.5.0.i.i.i.prol, align 4, !alias.scope !2634
  %_18.i.i.i.prol = icmp eq ptr %sift.sroa.0.0.i.i.i.prol, %_48.pre
  br i1 %_18.i.i.i.prol, label %bb10.i.i.i.prol, label %bb7.i.i.i.prol

bb7.i.i.i.prol:                                   ; preds = %bb4.i.i.i.prol
  %6 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.prol, i64 -4
  %_4.i.i2.i.i.i.prol = load i32, ptr %6, align 4, !alias.scope !2635, !noalias !2640, !noundef !18
  %_0.i.i3.i.i.i.prol = icmp slt i32 %_3.i.i.i.i.i.prol, %_4.i.i2.i.i.i.prol
  br i1 %_0.i.i3.i.i.i.prol, label %bb4.i.i.i.prol, label %bb10.i.i.i.prol

bb10.i.i.i.prol:                                  ; preds = %bb7.i.i.i.prol, %bb4.i.i.i.prol
  %sift.sroa.0.0.i.lcssa.i.i.prol = phi ptr [ %sift.sroa.0.0.i.i.i.prol, %bb7.i.i.i.prol ], [ %_48.pre, %bb4.i.i.i.prol ]
  store i32 %_3.i.i.i.i.i.prol, ptr %sift.sroa.0.0.i.lcssa.i.i.prol, align 4, !alias.scope !2634, !noalias !2643
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h88144fb88437f7a9E.exit.i.i.prol

_ZN4core5slice4sort6shared9smallsort11insert_tail17h88144fb88437f7a9E.exit.i.i.prol: ; preds = %bb10.i.i.i.prol, %bb5.i.i.prol
  %tail.sroa.0.0.i.i.prol = getelementptr inbounds nuw i8, ptr %_48.pre, i64 8
  br label %bb5.i.i.prol.loopexit

bb5.i.i.prol.loopexit:                            ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h88144fb88437f7a9E.exit.i.i.prol, %bb9.i
  %tail.sroa.0.04.i.i.unr = phi ptr [ %tail.sroa.0.01.i.i, %bb9.i ], [ %tail.sroa.0.0.i.i.prol, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h88144fb88437f7a9E.exit.i.i.prol ]
  %v.0.pn3.i.i.unr = phi ptr [ %_48.pre, %bb9.i ], [ %tail.sroa.0.01.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h88144fb88437f7a9E.exit.i.i.prol ]
  %7 = icmp eq i64 %_47.pre, 2
  br i1 %7, label %bb24.loopexit, label %bb5.i.i

bb5.i.i:                                          ; preds = %bb5.i.i.prol.loopexit, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h88144fb88437f7a9E.exit.i.i.1
  %tail.sroa.0.04.i.i = phi ptr [ %tail.sroa.0.0.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h88144fb88437f7a9E.exit.i.i.1 ], [ %tail.sroa.0.04.i.i.unr, %bb5.i.i.prol.loopexit ]
  %v.0.pn3.i.i = phi ptr [ %tail.sroa.0.0.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h88144fb88437f7a9E.exit.i.i.1 ], [ %v.0.pn3.i.i.unr, %bb5.i.i.prol.loopexit ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2616)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2619)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2621)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2624)
  %_3.i.i.i.i.i = load i32, ptr %tail.sroa.0.04.i.i, align 4, !alias.scope !2626, !noalias !2631, !noundef !18
  %_4.i.i.i.i.i = load i32, ptr %v.0.pn3.i.i, align 4, !alias.scope !2632, !noalias !2633, !noundef !18
  %_0.i.i.i.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  br i1 %_0.i.i.i.i.i, label %bb4.i.i.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h88144fb88437f7a9E.exit.i.i

bb4.i.i.i:                                        ; preds = %bb5.i.i, %bb7.i.i.i
  %8 = phi i32 [ %_4.i.i2.i.i.i, %bb7.i.i.i ], [ %_4.i.i.i.i.i, %bb5.i.i ]
  %gap_guard.sroa.5.0.i.i.i = phi ptr [ %sift.sroa.0.0.i.i.i, %bb7.i.i.i ], [ %tail.sroa.0.04.i.i, %bb5.i.i ]
  %sift.sroa.0.0.i.i.i = phi ptr [ %9, %bb7.i.i.i ], [ %v.0.pn3.i.i, %bb5.i.i ]
  store i32 %8, ptr %gap_guard.sroa.5.0.i.i.i, align 4, !alias.scope !2634
  %_18.i.i.i = icmp eq ptr %sift.sroa.0.0.i.i.i, %_48.pre
  br i1 %_18.i.i.i, label %bb10.i.i.i, label %bb7.i.i.i

bb7.i.i.i:                                        ; preds = %bb4.i.i.i
  %9 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i, i64 -4
  %_4.i.i2.i.i.i = load i32, ptr %9, align 4, !alias.scope !2635, !noalias !2640, !noundef !18
  %_0.i.i3.i.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i2.i.i.i
  br i1 %_0.i.i3.i.i.i, label %bb4.i.i.i, label %bb10.i.i.i

bb10.i.i.i:                                       ; preds = %bb7.i.i.i, %bb4.i.i.i
  %sift.sroa.0.0.i.lcssa.i.i = phi ptr [ %sift.sroa.0.0.i.i.i, %bb7.i.i.i ], [ %_48.pre, %bb4.i.i.i ]
  store i32 %_3.i.i.i.i.i, ptr %sift.sroa.0.0.i.lcssa.i.i, align 4, !alias.scope !2634, !noalias !2643
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h88144fb88437f7a9E.exit.i.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h88144fb88437f7a9E.exit.i.i: ; preds = %bb10.i.i.i, %bb5.i.i
  %tail.sroa.0.0.i.i = getelementptr inbounds nuw i8, ptr %tail.sroa.0.04.i.i, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2648)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2650)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2652)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2654)
  %_3.i.i.i.i.i.1 = load i32, ptr %tail.sroa.0.0.i.i, align 4, !alias.scope !2656, !noalias !2657, !noundef !18
  %_4.i.i.i.i.i.1 = load i32, ptr %tail.sroa.0.04.i.i, align 4, !alias.scope !2658, !noalias !2659, !noundef !18
  %_0.i.i.i.i.i.1 = icmp slt i32 %_3.i.i.i.i.i.1, %_4.i.i.i.i.i.1
  br i1 %_0.i.i.i.i.i.1, label %bb4.i.i.i.1, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h88144fb88437f7a9E.exit.i.i.1

bb4.i.i.i.1:                                      ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h88144fb88437f7a9E.exit.i.i, %bb7.i.i.i.1
  %10 = phi i32 [ %_4.i.i2.i.i.i.1, %bb7.i.i.i.1 ], [ %_4.i.i.i.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h88144fb88437f7a9E.exit.i.i ]
  %gap_guard.sroa.5.0.i.i.i.1 = phi ptr [ %sift.sroa.0.0.i.i.i.1, %bb7.i.i.i.1 ], [ %tail.sroa.0.0.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h88144fb88437f7a9E.exit.i.i ]
  %sift.sroa.0.0.i.i.i.1 = phi ptr [ %11, %bb7.i.i.i.1 ], [ %tail.sroa.0.04.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h88144fb88437f7a9E.exit.i.i ]
  store i32 %10, ptr %gap_guard.sroa.5.0.i.i.i.1, align 4, !alias.scope !2634
  %_18.i.i.i.1 = icmp eq ptr %sift.sroa.0.0.i.i.i.1, %_48.pre
  br i1 %_18.i.i.i.1, label %bb10.i.i.i.1, label %bb7.i.i.i.1

bb7.i.i.i.1:                                      ; preds = %bb4.i.i.i.1
  %11 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.1, i64 -4
  %_4.i.i2.i.i.i.1 = load i32, ptr %11, align 4, !alias.scope !2635, !noalias !2640, !noundef !18
  %_0.i.i3.i.i.i.1 = icmp slt i32 %_3.i.i.i.i.i.1, %_4.i.i2.i.i.i.1
  br i1 %_0.i.i3.i.i.i.1, label %bb4.i.i.i.1, label %bb10.i.i.i.1

bb10.i.i.i.1:                                     ; preds = %bb7.i.i.i.1, %bb4.i.i.i.1
  %sift.sroa.0.0.i.lcssa.i.i.1 = phi ptr [ %sift.sroa.0.0.i.i.i.1, %bb7.i.i.i.1 ], [ %_48.pre, %bb4.i.i.i.1 ]
  store i32 %_3.i.i.i.i.i.1, ptr %sift.sroa.0.0.i.lcssa.i.i.1, align 4, !alias.scope !2634, !noalias !2643
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h88144fb88437f7a9E.exit.i.i.1

_ZN4core5slice4sort6shared9smallsort11insert_tail17h88144fb88437f7a9E.exit.i.i.1: ; preds = %bb10.i.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h88144fb88437f7a9E.exit.i.i
  %tail.sroa.0.0.i.i.1 = getelementptr inbounds nuw i8, ptr %tail.sroa.0.04.i.i, i64 8
  %_11.not.i.i.1 = icmp eq ptr %tail.sroa.0.0.i.i.1, %v_end.i.i
  br i1 %_11.not.i.i.1, label %bb24.loopexit, label %bb5.i.i

bb17:                                             ; preds = %bb17.preheader, %bb6
  %_15.i64 = phi ptr [ inttoptr (i64 4 to ptr), %bb17.preheader ], [ %_15.i65, %bb6 ]
  %len.i = phi i64 [ 0, %bb17.preheader ], [ %len.i63, %bb6 ]
  %indvars.iv = phi i64 [ 0, %bb17.preheader ], [ %indvars.iv.next, %bb6 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %_871 = and i64 %indvars.iv, 1
  %_7 = icmp eq i64 %_871, 0
  %_13 = icmp samesign ugt i64 %arr.1, %indvars.iv
  br i1 %_7, label %bb2, label %bb4

cleanup.loopexit:                                 ; preds = %bb1.i, %bb1.i43
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %cleanup

cleanup.loopexit.split-lp:                        ; preds = %panic6.invoke, %bb10.i, %bb10.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit.split-lp, %cleanup.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %cleanup.loopexit ], [ %lpad.loopexit.split-lp, %cleanup.loopexit.split-lp ]
  call void @llvm.experimental.noalias.scope.decl(metadata !2660)
  call void @llvm.experimental.noalias.scope.decl(metadata !2663)
  call void @llvm.experimental.noalias.scope.decl(metadata !2666)
  call void @llvm.experimental.noalias.scope.decl(metadata !2669)
  %self1.i.i.i.i1.i = load i64, ptr %odd_arr, align 8, !range !2603, !alias.scope !2672, !noalias !2675, !noundef !18
  %_6.i.i.i.i2.i = icmp eq i64 %self1.i.i.i.i1.i, 0
  br i1 %_6.i.i.i.i2.i, label %bb15, label %bb2.i.i.i3.i

bb2.i.i.i3.i:                                     ; preds = %cleanup
  %12 = shl nuw i64 %self1.i.i.i.i1.i, 2
  %self3.i.i.i.i4.i = load ptr, ptr %2, align 8, !alias.scope !2672, !noalias !2675, !nonnull !18, !noundef !18
; call __rustc::__rust_dealloc
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i, i64 noundef %12, i64 noundef range(i64 1, -9223372036854775807) 4) #22, !noalias !2677
  br label %bb15

bb24.loopexit:                                    ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h88144fb88437f7a9E.exit.i.i.1, %bb5.i.i.prol.loopexit
  %_54.pre = load i64, ptr %3, align 8
  br label %bb24

bb24:                                             ; preds = %bb24.loopexit, %bb18, %bb10.i
  %_54 = phi i64 [ %_54.pre, %bb24.loopexit ], [ %len.i63, %bb18 ], [ %len.i63, %bb10.i ]
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %compare.i)
  %_55 = load ptr, ptr %2, align 8, !nonnull !18, !noundef !18
  call void @llvm.experimental.noalias.scope.decl(metadata !2678)
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %compare.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !2680)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !2678
  store ptr %compare.i, ptr %is_less.i.i, align 8, !noalias !2683
  %b.i.i = icmp samesign ult i64 %_54, 2
  br i1 %b.i.i, label %bb7, label %bb7.i.i, !prof !2615

bb7.i.i:                                          ; preds = %bb24
  %b1.i.i = icmp samesign ult i64 %_54, 21
  br i1 %b1.i.i, label %bb9.i.i, label %bb10.i.i, !prof !2604

bb10.i.i:                                         ; preds = %bb7.i.i
; invoke core::slice::sort::stable::driftsort_main
  invoke void @_ZN4core5slice4sort6stable14driftsort_main17haeaae89998e12910E(ptr noalias noundef nonnull align 4 %_55, i64 noundef range(i64 0, 2305843009213693952) %_54, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less.i.i)
          to label %bb7 unwind label %cleanup.loopexit.split-lp

bb9.i.i:                                          ; preds = %bb7.i.i
  %v_end.idx.i.i.i = shl nuw nsw i64 %_54, 2
  %v_end.i.i.i = getelementptr inbounds nuw i8, ptr %_55, i64 %v_end.idx.i.i.i
  %tail.sroa.0.01.i.i.i = getelementptr inbounds nuw i8, ptr %_55, i64 4
  %13 = and i64 %_54, 1
  %lcmp.mod109.not.not = icmp eq i64 %13, 0
  br i1 %lcmp.mod109.not.not, label %bb5.i.i.i.prol, label %bb5.i.i.i.prol.loopexit

bb5.i.i.i.prol:                                   ; preds = %bb9.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2685)
  call void @llvm.experimental.noalias.scope.decl(metadata !2688)
  call void @llvm.experimental.noalias.scope.decl(metadata !2690)
  call void @llvm.experimental.noalias.scope.decl(metadata !2693)
  %_4.i.i.i.i.i.i.prol = load i32, ptr %_55, align 4, !alias.scope !2695, !noalias !2698, !noundef !18
  %_5.i.i.i.i.i.i.prol = load i32, ptr %tail.sroa.0.01.i.i.i, align 4, !alias.scope !2699, !noalias !2700, !noundef !18
  %_0.i.i.i.i.i20.prol = icmp slt i32 %_4.i.i.i.i.i.i.prol, %_5.i.i.i.i.i.i.prol
  br i1 %_0.i.i.i.i.i20.prol, label %bb4.i.i.i.i.prol, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0eb996dc453a227bE.exit.i.i.i.prol

bb4.i.i.i.i.prol:                                 ; preds = %bb5.i.i.i.prol, %bb7.i.i.i.i.prol
  %14 = phi i32 [ %_4.i.i1.i.i.i.i.prol, %bb7.i.i.i.i.prol ], [ %_4.i.i.i.i.i.i.prol, %bb5.i.i.i.prol ]
  %gap_guard.sroa.5.0.i.i.i.i.prol = phi ptr [ %sift.sroa.0.0.i.i.i.i.prol, %bb7.i.i.i.i.prol ], [ %tail.sroa.0.01.i.i.i, %bb5.i.i.i.prol ]
  %sift.sroa.0.0.i.i.i.i.prol = phi ptr [ %15, %bb7.i.i.i.i.prol ], [ %_55, %bb5.i.i.i.prol ]
  store i32 %14, ptr %gap_guard.sroa.5.0.i.i.i.i.prol, align 4, !alias.scope !2701, !noalias !2702
  %_18.i.i.i.i.prol = icmp eq ptr %sift.sroa.0.0.i.i.i.i.prol, %_55
  br i1 %_18.i.i.i.i.prol, label %bb10.i.i.i.i.prol, label %bb7.i.i.i.i.prol

bb7.i.i.i.i.prol:                                 ; preds = %bb4.i.i.i.i.prol
  %15 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.i.prol, i64 -4
  %_4.i.i1.i.i.i.i.prol = load i32, ptr %15, align 4, !alias.scope !2703, !noalias !2708, !noundef !18
  %_0.i3.i.i.i.i.prol = icmp slt i32 %_4.i.i1.i.i.i.i.prol, %_5.i.i.i.i.i.i.prol
  br i1 %_0.i3.i.i.i.i.prol, label %bb4.i.i.i.i.prol, label %bb10.i.i.i.i.prol

bb10.i.i.i.i.prol:                                ; preds = %bb7.i.i.i.i.prol, %bb4.i.i.i.i.prol
  %sift.sroa.0.0.i.lcssa.i.i.i.prol = phi ptr [ %sift.sroa.0.0.i.i.i.i.prol, %bb7.i.i.i.i.prol ], [ %_55, %bb4.i.i.i.i.prol ]
  store i32 %_5.i.i.i.i.i.i.prol, ptr %sift.sroa.0.0.i.lcssa.i.i.i.prol, align 4, !alias.scope !2701, !noalias !2711
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0eb996dc453a227bE.exit.i.i.i.prol

_ZN4core5slice4sort6shared9smallsort11insert_tail17h0eb996dc453a227bE.exit.i.i.i.prol: ; preds = %bb10.i.i.i.i.prol, %bb5.i.i.i.prol
  %tail.sroa.0.0.i.i.i.prol = getelementptr inbounds nuw i8, ptr %_55, i64 8
  br label %bb5.i.i.i.prol.loopexit

bb5.i.i.i.prol.loopexit:                          ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0eb996dc453a227bE.exit.i.i.i.prol, %bb9.i.i
  %tail.sroa.0.04.i.i.i.unr = phi ptr [ %tail.sroa.0.01.i.i.i, %bb9.i.i ], [ %tail.sroa.0.0.i.i.i.prol, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0eb996dc453a227bE.exit.i.i.i.prol ]
  %v.0.pn3.i.i.i.unr = phi ptr [ %_55, %bb9.i.i ], [ %tail.sroa.0.01.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0eb996dc453a227bE.exit.i.i.i.prol ]
  %16 = icmp eq i64 %_54, 2
  br i1 %16, label %bb7, label %bb5.i.i.i

bb5.i.i.i:                                        ; preds = %bb5.i.i.i.prol.loopexit, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0eb996dc453a227bE.exit.i.i.i.1
  %tail.sroa.0.04.i.i.i = phi ptr [ %tail.sroa.0.0.i.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0eb996dc453a227bE.exit.i.i.i.1 ], [ %tail.sroa.0.04.i.i.i.unr, %bb5.i.i.i.prol.loopexit ]
  %v.0.pn3.i.i.i = phi ptr [ %tail.sroa.0.0.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0eb996dc453a227bE.exit.i.i.i.1 ], [ %v.0.pn3.i.i.i.unr, %bb5.i.i.i.prol.loopexit ]
  call void @llvm.experimental.noalias.scope.decl(metadata !2685)
  call void @llvm.experimental.noalias.scope.decl(metadata !2688)
  call void @llvm.experimental.noalias.scope.decl(metadata !2690)
  call void @llvm.experimental.noalias.scope.decl(metadata !2693)
  %_4.i.i.i.i.i.i = load i32, ptr %v.0.pn3.i.i.i, align 4, !alias.scope !2695, !noalias !2698, !noundef !18
  %_5.i.i.i.i.i.i = load i32, ptr %tail.sroa.0.04.i.i.i, align 4, !alias.scope !2699, !noalias !2700, !noundef !18
  %_0.i.i.i.i.i20 = icmp slt i32 %_4.i.i.i.i.i.i, %_5.i.i.i.i.i.i
  br i1 %_0.i.i.i.i.i20, label %bb4.i.i.i.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0eb996dc453a227bE.exit.i.i.i

bb4.i.i.i.i:                                      ; preds = %bb5.i.i.i, %bb7.i.i.i.i
  %17 = phi i32 [ %_4.i.i1.i.i.i.i, %bb7.i.i.i.i ], [ %_4.i.i.i.i.i.i, %bb5.i.i.i ]
  %gap_guard.sroa.5.0.i.i.i.i = phi ptr [ %sift.sroa.0.0.i.i.i.i, %bb7.i.i.i.i ], [ %tail.sroa.0.04.i.i.i, %bb5.i.i.i ]
  %sift.sroa.0.0.i.i.i.i = phi ptr [ %18, %bb7.i.i.i.i ], [ %v.0.pn3.i.i.i, %bb5.i.i.i ]
  store i32 %17, ptr %gap_guard.sroa.5.0.i.i.i.i, align 4, !alias.scope !2701, !noalias !2702
  %_18.i.i.i.i = icmp eq ptr %sift.sroa.0.0.i.i.i.i, %_55
  br i1 %_18.i.i.i.i, label %bb10.i.i.i.i, label %bb7.i.i.i.i

bb7.i.i.i.i:                                      ; preds = %bb4.i.i.i.i
  %18 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.i, i64 -4
  %_4.i.i1.i.i.i.i = load i32, ptr %18, align 4, !alias.scope !2703, !noalias !2708, !noundef !18
  %_0.i3.i.i.i.i = icmp slt i32 %_4.i.i1.i.i.i.i, %_5.i.i.i.i.i.i
  br i1 %_0.i3.i.i.i.i, label %bb4.i.i.i.i, label %bb10.i.i.i.i

bb10.i.i.i.i:                                     ; preds = %bb7.i.i.i.i, %bb4.i.i.i.i
  %sift.sroa.0.0.i.lcssa.i.i.i = phi ptr [ %sift.sroa.0.0.i.i.i.i, %bb7.i.i.i.i ], [ %_55, %bb4.i.i.i.i ]
  store i32 %_5.i.i.i.i.i.i, ptr %sift.sroa.0.0.i.lcssa.i.i.i, align 4, !alias.scope !2701, !noalias !2711
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0eb996dc453a227bE.exit.i.i.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h0eb996dc453a227bE.exit.i.i.i: ; preds = %bb10.i.i.i.i, %bb5.i.i.i
  %tail.sroa.0.0.i.i.i = getelementptr inbounds nuw i8, ptr %tail.sroa.0.04.i.i.i, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !2716)
  call void @llvm.experimental.noalias.scope.decl(metadata !2718)
  call void @llvm.experimental.noalias.scope.decl(metadata !2720)
  call void @llvm.experimental.noalias.scope.decl(metadata !2722)
  %_4.i.i.i.i.i.i.1 = load i32, ptr %tail.sroa.0.04.i.i.i, align 4, !alias.scope !2724, !noalias !2725, !noundef !18
  %_5.i.i.i.i.i.i.1 = load i32, ptr %tail.sroa.0.0.i.i.i, align 4, !alias.scope !2726, !noalias !2727, !noundef !18
  %_0.i.i.i.i.i20.1 = icmp slt i32 %_4.i.i.i.i.i.i.1, %_5.i.i.i.i.i.i.1
  br i1 %_0.i.i.i.i.i20.1, label %bb4.i.i.i.i.1, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0eb996dc453a227bE.exit.i.i.i.1

bb4.i.i.i.i.1:                                    ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0eb996dc453a227bE.exit.i.i.i, %bb7.i.i.i.i.1
  %19 = phi i32 [ %_4.i.i1.i.i.i.i.1, %bb7.i.i.i.i.1 ], [ %_4.i.i.i.i.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0eb996dc453a227bE.exit.i.i.i ]
  %gap_guard.sroa.5.0.i.i.i.i.1 = phi ptr [ %sift.sroa.0.0.i.i.i.i.1, %bb7.i.i.i.i.1 ], [ %tail.sroa.0.0.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0eb996dc453a227bE.exit.i.i.i ]
  %sift.sroa.0.0.i.i.i.i.1 = phi ptr [ %20, %bb7.i.i.i.i.1 ], [ %tail.sroa.0.04.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0eb996dc453a227bE.exit.i.i.i ]
  store i32 %19, ptr %gap_guard.sroa.5.0.i.i.i.i.1, align 4, !alias.scope !2701, !noalias !2702
  %_18.i.i.i.i.1 = icmp eq ptr %sift.sroa.0.0.i.i.i.i.1, %_55
  br i1 %_18.i.i.i.i.1, label %bb10.i.i.i.i.1, label %bb7.i.i.i.i.1

bb7.i.i.i.i.1:                                    ; preds = %bb4.i.i.i.i.1
  %20 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.i.1, i64 -4
  %_4.i.i1.i.i.i.i.1 = load i32, ptr %20, align 4, !alias.scope !2703, !noalias !2708, !noundef !18
  %_0.i3.i.i.i.i.1 = icmp slt i32 %_4.i.i1.i.i.i.i.1, %_5.i.i.i.i.i.i.1
  br i1 %_0.i3.i.i.i.i.1, label %bb4.i.i.i.i.1, label %bb10.i.i.i.i.1

bb10.i.i.i.i.1:                                   ; preds = %bb7.i.i.i.i.1, %bb4.i.i.i.i.1
  %sift.sroa.0.0.i.lcssa.i.i.i.1 = phi ptr [ %sift.sroa.0.0.i.i.i.i.1, %bb7.i.i.i.i.1 ], [ %_55, %bb4.i.i.i.i.1 ]
  store i32 %_5.i.i.i.i.i.i.1, ptr %sift.sroa.0.0.i.lcssa.i.i.i.1, align 4, !alias.scope !2701, !noalias !2711
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0eb996dc453a227bE.exit.i.i.i.1

_ZN4core5slice4sort6shared9smallsort11insert_tail17h0eb996dc453a227bE.exit.i.i.i.1: ; preds = %bb10.i.i.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0eb996dc453a227bE.exit.i.i.i
  %tail.sroa.0.0.i.i.i.1 = getelementptr inbounds nuw i8, ptr %tail.sroa.0.04.i.i.i, i64 8
  %_11.not.i.i.i.1 = icmp eq ptr %tail.sroa.0.0.i.i.i.1, %v_end.i.i.i
  br i1 %_11.not.i.i.i.1, label %bb7, label %bb5.i.i.i

bb7:                                              ; preds = %bb5.i.i.i.prol.loopexit, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0eb996dc453a227bE.exit.i.i.i.1, %bb24.thread, %bb24, %bb10.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !2678
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %compare.i)
  %iter3 = load i64, ptr %1, align 8, !noundef !18
  %_57 = icmp ult i64 %iter3, 2305843009213693952
  call void @llvm.assume(i1 %_57)
  %_5850.not = icmp eq i64 %iter3, 0
  br i1 %_5850.not, label %bb26, label %bb27.lr.ph

bb27.lr.ph:                                       ; preds = %bb7
  %_64 = load ptr, ptr %0, align 8, !nonnull !18
  %21 = add nsw i64 %iter3, -1
  %umin = call i64 @llvm.umin.i64(i64 %arr.1, i64 %21)
  %min.iters.check = icmp samesign ult i64 %umin, 8
  br i1 %min.iters.check, label %bb27.preheader, label %vector.ph

bb27.preheader:                                   ; preds = %vector.body, %bb27.lr.ph
  %i.sroa.0.052.ph = phi i64 [ 0, %bb27.lr.ph ], [ %n.vec, %vector.body ]
  br label %bb27

vector.ph:                                        ; preds = %bb27.lr.ph
  %22 = add nuw nsw i64 %umin, 1
  %n.mod.vf = and i64 %22, 7
  %23 = icmp eq i64 %n.mod.vf, 0
  %24 = select i1 %23, i64 8, i64 %n.mod.vf
  %n.vec = sub nsw i64 %22, %24
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %25 = getelementptr inbounds nuw i32, ptr %_64, i64 %index
  %26 = getelementptr inbounds nuw i8, ptr %25, i64 16
  %wide.load = load <4 x i32>, ptr %25, align 4
  %wide.load88 = load <4 x i32>, ptr %26, align 4
  %27 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %index
  %28 = getelementptr inbounds nuw i8, ptr %27, i64 16
  store <4 x i32> %wide.load, ptr %27, align 4
  store <4 x i32> %wide.load88, ptr %28, align 4
  %index.next = add nuw i64 %index, 8
  %29 = icmp eq i64 %index.next, %n.vec
  br i1 %29, label %bb27.preheader, label %vector.body, !llvm.loop !2728

bb26:                                             ; preds = %bb9, %bb7
  %iter4 = load i64, ptr %3, align 8, !noundef !18
  %_67 = icmp ult i64 %iter4, 2305843009213693952
  call void @llvm.assume(i1 %_67)
  %_6853.not = icmp eq i64 %iter4, 0
  br i1 %_6853.not, label %bb29, label %bb30.lr.ph

bb30.lr.ph:                                       ; preds = %bb26
  %_74 = load ptr, ptr %2, align 8, !nonnull !18
  %30 = call i64 @llvm.usub.sat.i64(i64 %arr.1, i64 %iter3)
  %31 = add nsw i64 %iter4, -1
  %umin89 = call i64 @llvm.umin.i64(i64 %30, i64 %31)
  %min.iters.check91 = icmp samesign ult i64 %umin89, 8
  br i1 %min.iters.check91, label %bb30.preheader, label %vector.ph92

bb30.preheader:                                   ; preds = %vector.body95, %bb30.lr.ph
  %i.sroa.0.155.ph = phi i64 [ %iter3, %bb30.lr.ph ], [ %35, %vector.body95 ]
  %iter2.sroa.0.054.ph = phi i64 [ 0, %bb30.lr.ph ], [ %n.vec94, %vector.body95 ]
  br label %bb30

vector.ph92:                                      ; preds = %bb30.lr.ph
  %32 = add nuw nsw i64 %umin89, 1
  %n.mod.vf93 = and i64 %32, 7
  %33 = icmp eq i64 %n.mod.vf93, 0
  %34 = select i1 %33, i64 8, i64 %n.mod.vf93
  %n.vec94 = sub nsw i64 %32, %34
  %35 = add i64 %iter3, %n.vec94
  %36 = getelementptr i32, ptr %arr.0, i64 %iter3
  br label %vector.body95

vector.body95:                                    ; preds = %vector.body95, %vector.ph92
  %index96 = phi i64 [ 0, %vector.ph92 ], [ %index.next99, %vector.body95 ]
  %37 = getelementptr inbounds nuw i32, ptr %_74, i64 %index96
  %38 = getelementptr inbounds nuw i8, ptr %37, i64 16
  %wide.load97 = load <4 x i32>, ptr %37, align 4
  %wide.load98 = load <4 x i32>, ptr %38, align 4
  %39 = getelementptr i32, ptr %36, i64 %index96
  %40 = getelementptr inbounds nuw i8, ptr %39, i64 16
  store <4 x i32> %wide.load97, ptr %39, align 4
  store <4 x i32> %wide.load98, ptr %40, align 4
  %index.next99 = add nuw i64 %index96, 8
  %41 = icmp eq i64 %index.next99, %n.vec94
  br i1 %41, label %bb30.preheader, label %vector.body95, !llvm.loop !2729

bb29:                                             ; preds = %bb11, %bb26
  call void @llvm.experimental.noalias.scope.decl(metadata !2730)
  call void @llvm.experimental.noalias.scope.decl(metadata !2733)
  call void @llvm.experimental.noalias.scope.decl(metadata !2736)
  call void @llvm.experimental.noalias.scope.decl(metadata !2739)
  %self1.i.i.i.i1.i22 = load i64, ptr %odd_arr, align 8, !range !2603, !alias.scope !2742, !noalias !2745, !noundef !18
  %_6.i.i.i.i2.i23 = icmp eq i64 %self1.i.i.i.i1.i22, 0
  br i1 %_6.i.i.i.i2.i23, label %bb12, label %bb2.i.i.i3.i24

bb2.i.i.i3.i24:                                   ; preds = %bb29
  %42 = shl nuw i64 %self1.i.i.i.i1.i22, 2
  %self3.i.i.i.i4.i25 = load ptr, ptr %2, align 8, !alias.scope !2742, !noalias !2745, !nonnull !18, !noundef !18
; call __rustc::__rust_dealloc
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i25, i64 noundef %42, i64 noundef range(i64 1, -9223372036854775807) 4) #22, !noalias !2747
  br label %bb12

bb15:                                             ; preds = %bb2.i.i.i3.i, %cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !2748)
  call void @llvm.experimental.noalias.scope.decl(metadata !2751)
  call void @llvm.experimental.noalias.scope.decl(metadata !2754)
  call void @llvm.experimental.noalias.scope.decl(metadata !2757)
  %self1.i.i.i.i1.i27 = load i64, ptr %even_arr, align 8, !range !2603, !alias.scope !2760, !noalias !2763, !noundef !18
  %_6.i.i.i.i2.i28 = icmp eq i64 %self1.i.i.i.i1.i27, 0
  br i1 %_6.i.i.i.i2.i28, label %bb16, label %bb2.i.i.i3.i29

bb2.i.i.i3.i29:                                   ; preds = %bb15
  %43 = shl nuw i64 %self1.i.i.i.i1.i27, 2
  %self3.i.i.i.i4.i30 = load ptr, ptr %0, align 8, !alias.scope !2760, !noalias !2763, !nonnull !18, !noundef !18
; call __rustc::__rust_dealloc
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i30, i64 noundef %43, i64 noundef range(i64 1, -9223372036854775807) 4) #22, !noalias !2765
  br label %bb16

bb12:                                             ; preds = %bb2.i.i.i3.i24, %bb29
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %odd_arr)
  call void @llvm.experimental.noalias.scope.decl(metadata !2766)
  call void @llvm.experimental.noalias.scope.decl(metadata !2769)
  call void @llvm.experimental.noalias.scope.decl(metadata !2772)
  call void @llvm.experimental.noalias.scope.decl(metadata !2775)
  %self1.i.i.i.i1.i32 = load i64, ptr %even_arr, align 8, !range !2603, !alias.scope !2778, !noalias !2781, !noundef !18
  %_6.i.i.i.i2.i33 = icmp eq i64 %self1.i.i.i.i1.i32, 0
  br i1 %_6.i.i.i.i2.i33, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h92344b4954b76255E.exit36", label %bb2.i.i.i3.i34

bb2.i.i.i3.i34:                                   ; preds = %bb12
  %44 = shl nuw i64 %self1.i.i.i.i1.i32, 2
  %self3.i.i.i.i4.i35 = load ptr, ptr %0, align 8, !alias.scope !2778, !noalias !2781, !nonnull !18, !noundef !18
; call __rustc::__rust_dealloc
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i35, i64 noundef %44, i64 noundef range(i64 1, -9223372036854775807) 4) #22, !noalias !2783
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h92344b4954b76255E.exit36"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h92344b4954b76255E.exit36": ; preds = %bb12, %bb2.i.i.i3.i34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %even_arr)
  ret void

bb30:                                             ; preds = %bb30.preheader, %bb11
  %i.sroa.0.155 = phi i64 [ %47, %bb11 ], [ %i.sroa.0.155.ph, %bb30.preheader ]
  %iter2.sroa.0.054 = phi i64 [ %45, %bb11 ], [ %iter2.sroa.0.054.ph, %bb30.preheader ]
  %_38 = icmp samesign ult i64 %i.sroa.0.155, %arr.1
  br i1 %_38, label %bb11, label %panic6.invoke

bb11:                                             ; preds = %bb30
  %45 = add nuw nsw i64 %iter2.sroa.0.054, 1
  %_35 = getelementptr inbounds nuw i32, ptr %_74, i64 %iter2.sroa.0.054
  %_34 = load i32, ptr %_35, align 4, !noundef !18
  %46 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %i.sroa.0.155
  store i32 %_34, ptr %46, align 4
  %47 = add nuw nsw i64 %i.sroa.0.155, 1
  %exitcond61.not = icmp eq i64 %45, %iter4
  br i1 %exitcond61.not, label %bb29, label %bb30, !llvm.loop !2784

panic6.invoke:                                    ; preds = %bb2, %bb4, %bb27, %bb30
  %48 = phi i64 [ %i.sroa.0.155, %bb30 ], [ %arr.1, %bb27 ], [ %indvars.iv, %bb4 ], [ %indvars.iv, %bb2 ]
  %49 = phi ptr [ @alloc_8ff914f1831e33925cf29190c60b0739, %bb30 ], [ @alloc_743f2cefaccb6d94c89870124217d1ff, %bb27 ], [ @alloc_82fa06a248ba2287581da2665aa4e248, %bb2 ], [ @alloc_e63ffa31ad6e0404fd60d280d854c254, %bb4 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %48, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %49) #23
          to label %panic6.cont unwind label %cleanup.loopexit.split-lp

panic6.cont:                                      ; preds = %panic6.invoke
  unreachable

bb27:                                             ; preds = %bb27.preheader, %bb9
  %i.sroa.0.052 = phi i64 [ %50, %bb9 ], [ %i.sroa.0.052.ph, %bb27.preheader ]
  %exitcond59.not = icmp eq i64 %i.sroa.0.052, %arr.1
  br i1 %exitcond59.not, label %panic6.invoke, label %bb9

bb9:                                              ; preds = %bb27
  %50 = add nuw nsw i64 %i.sroa.0.052, 1
  %_27 = getelementptr inbounds nuw i32, ptr %_64, i64 %i.sroa.0.052
  %_26 = load i32, ptr %_27, align 4, !noundef !18
  %51 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %i.sroa.0.052
  store i32 %_26, ptr %51, align 4
  %exitcond60.not = icmp eq i64 %50, %iter3
  br i1 %exitcond60.not, label %bb26, label %bb27, !llvm.loop !2785

bb4:                                              ; preds = %bb17
  br i1 %_13, label %bb5, label %panic6.invoke

bb2:                                              ; preds = %bb17
  br i1 %_13, label %bb3, label %panic6.invoke

bb5:                                              ; preds = %bb4
  %52 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %indvars.iv
  %_15 = load i32, ptr %52, align 4, !noundef !18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2786)
  %self1.i = load i64, ptr %odd_arr, align 8, !range !2603, !alias.scope !2786, !noundef !18
  %_4.i = icmp eq i64 %len.i, %self1.i
  br i1 %_4.i, label %bb1.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h9caeb0fbed21bc14E.exit"

bb1.i:                                            ; preds = %bb5
; invoke alloc::raw_vec::RawVec<T,A>::grow_one
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h539a5665f9650300E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %odd_arr)
          to label %"bb1.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h9caeb0fbed21bc14E.exit_crit_edge" unwind label %cleanup.loopexit

"bb1.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h9caeb0fbed21bc14E.exit_crit_edge": ; preds = %bb1.i
  %_15.i.pre = load ptr, ptr %2, align 8, !alias.scope !2786
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h9caeb0fbed21bc14E.exit"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h9caeb0fbed21bc14E.exit": ; preds = %"bb1.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h9caeb0fbed21bc14E.exit_crit_edge", %bb5
  %_15.i = phi ptr [ %_15.i.pre, %"bb1.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h9caeb0fbed21bc14E.exit_crit_edge" ], [ %_15.i64, %bb5 ]
  %end.i = getelementptr inbounds nuw i32, ptr %_15.i, i64 %len.i
  store i32 %_15, ptr %end.i, align 4, !noalias !2786
  %53 = add i64 %len.i, 1
  store i64 %53, ptr %3, align 8, !alias.scope !2786
  br label %bb6

bb6:                                              ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h9caeb0fbed21bc14E.exit45", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h9caeb0fbed21bc14E.exit"
  %_15.i65 = phi ptr [ %_15.i64, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h9caeb0fbed21bc14E.exit45" ], [ %_15.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h9caeb0fbed21bc14E.exit" ]
  %len.i63 = phi i64 [ %len.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h9caeb0fbed21bc14E.exit45" ], [ %53, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h9caeb0fbed21bc14E.exit" ]
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb18, label %bb17

bb3:                                              ; preds = %bb2
  %54 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %indvars.iv
  %_10 = load i32, ptr %54, align 4, !noundef !18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2789)
  %len.i38 = load i64, ptr %1, align 8, !alias.scope !2789, !noundef !18
  %self1.i39 = load i64, ptr %even_arr, align 8, !range !2603, !alias.scope !2789, !noundef !18
  %_4.i40 = icmp eq i64 %len.i38, %self1.i39
  br i1 %_4.i40, label %bb1.i43, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h9caeb0fbed21bc14E.exit45"

bb1.i43:                                          ; preds = %bb3
; invoke alloc::raw_vec::RawVec<T,A>::grow_one
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h539a5665f9650300E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %even_arr)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h9caeb0fbed21bc14E.exit45" unwind label %cleanup.loopexit

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h9caeb0fbed21bc14E.exit45": ; preds = %bb1.i43, %bb3
  %_15.i41 = load ptr, ptr %0, align 8, !alias.scope !2789, !nonnull !18, !noundef !18
  %end.i42 = getelementptr inbounds nuw i32, ptr %_15.i41, i64 %len.i38
  store i32 %_10, ptr %end.i42, align 4, !noalias !2789
  %55 = add i64 %len.i38, 1
  store i64 %55, ptr %1, align 8, !alias.scope !2789
  br label %bb6

bb16:                                             ; preds = %bb2.i.i.i3.i29, %bb15
  resume { ptr, i32 } %lpad.phi
}
