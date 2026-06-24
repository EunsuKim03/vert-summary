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
