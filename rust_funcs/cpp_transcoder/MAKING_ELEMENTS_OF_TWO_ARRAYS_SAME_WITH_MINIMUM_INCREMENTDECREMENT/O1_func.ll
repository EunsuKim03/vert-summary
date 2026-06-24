define noundef i32 @f_gold(ptr noalias noundef nonnull align 4 %a.0, i64 noundef range(i64 0, 2305843009213693952) %a.1, ptr noalias noundef nonnull align 4 %b.0, i64 noundef range(i64 0, 2305843009213693952) %b.1, i32 noundef %n) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %compare.i4 = alloca [0 x i8], align 1
  %is_less.i.i5 = alloca [8 x i8], align 8
  %is_less.i.i = alloca [8 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %compare.i4)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !3478
  store ptr %compare.i4, ptr %is_less.i.i, align 8, !noalias !3481
  %b.i.i = icmp samesign ult i64 %a.1, 2
  br i1 %b.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hecb21546e15286f0E.exit", label %bb7.i.i, !prof !3485

bb7.i.i:                                          ; preds = %start
  %b1.i.i = icmp samesign ult i64 %a.1, 21
  br i1 %b1.i.i, label %bb9.i.i, label %bb10.i.i, !prof !3485

bb10.i.i:                                         ; preds = %bb7.i.i
; call core::slice::sort::stable::driftsort_main
  call void @_ZN4core5slice4sort6stable14driftsort_main17h54296ad700b061c7E(ptr noalias noundef nonnull align 4 %a.0, i64 noundef range(i64 0, 2305843009213693952) %a.1, ptr noalias noundef align 8 dereferenceable(8) %is_less.i.i)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hecb21546e15286f0E.exit"

bb9.i.i:                                          ; preds = %bb7.i.i
; call core::slice::sort::shared::smallsort::insertion_sort_shift_left
  call void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h8c39bce6e1229ee3E(ptr noalias noundef nonnull align 4 %a.0, i64 noundef range(i64 0, 2305843009213693952) %a.1, i64 noundef 1, ptr noalias align 8 poison)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hecb21546e15286f0E.exit"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hecb21546e15286f0E.exit": ; preds = %start, %bb10.i.i, %bb9.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !3478
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %compare.i4)
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %compare.i4)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %is_less.i.i5), !noalias !3486
  store ptr %compare.i4, ptr %is_less.i.i5, align 8, !noalias !3489
  %b.i.i6 = icmp samesign ult i64 %b.1, 2
  br i1 %b.i.i6, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hd7181ff24b95d99dE.exit", label %bb7.i.i7, !prof !3485

bb7.i.i7:                                         ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hecb21546e15286f0E.exit"
  %b1.i.i8 = icmp samesign ult i64 %b.1, 21
  br i1 %b1.i.i8, label %bb9.i.i10, label %bb10.i.i9, !prof !3485

bb10.i.i9:                                        ; preds = %bb7.i.i7
; call core::slice::sort::stable::driftsort_main
  call void @_ZN4core5slice4sort6stable14driftsort_main17hcb049b11f4721df8E(ptr noalias noundef nonnull align 4 %b.0, i64 noundef range(i64 0, 2305843009213693952) %b.1, ptr noalias noundef align 8 dereferenceable(8) %is_less.i.i5)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hd7181ff24b95d99dE.exit"

bb9.i.i10:                                        ; preds = %bb7.i.i7
; call core::slice::sort::shared::smallsort::insertion_sort_shift_left
  call void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h34510fd470fc988eE(ptr noalias noundef nonnull align 4 %b.0, i64 noundef range(i64 0, 2305843009213693952) %b.1, i64 noundef 1, ptr noalias align 8 poison)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hd7181ff24b95d99dE.exit"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hd7181ff24b95d99dE.exit": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hecb21546e15286f0E.exit", %bb10.i.i9, %bb9.i.i10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %is_less.i.i5), !noalias !3486
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %compare.i4)
  %_8 = sext i32 %n to i64
  %_0.i.i.i16.not = icmp eq i32 %n, 0
  br i1 %_0.i.i.i16.not, label %bb8, label %bb7

bb7:                                              ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hd7181ff24b95d99dE.exit", %bb10
  %spec.select20 = phi i64 [ %spec.select, %bb10 ], [ 1, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hd7181ff24b95d99dE.exit" ]
  %result.sroa.0.019 = phi i32 [ %3, %bb10 ], [ 0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hd7181ff24b95d99dE.exit" ]
  %iter.sroa.0.018 = phi i64 [ %spec.select20, %bb10 ], [ 0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hd7181ff24b95d99dE.exit" ]
  %_19 = icmp ult i64 %iter.sroa.0.018, %a.1
  br i1 %_19, label %bb9, label %panic

bb8:                                              ; preds = %bb10, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hd7181ff24b95d99dE.exit"
  %result.sroa.0.0.lcssa = phi i32 [ 0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hd7181ff24b95d99dE.exit" ], [ %3, %bb10 ]
  ret i32 %result.sroa.0.0.lcssa

bb9:                                              ; preds = %bb7
  %_22 = icmp ult i64 %iter.sroa.0.018, %b.1
  br i1 %_22, label %bb10, label %panic1

panic:                                            ; preds = %bb7
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %iter.sroa.0.018, i64 noundef %a.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_bb80c4294bf98485d1cae0b45be62c99) #24
  unreachable

bb10:                                             ; preds = %bb9
  %0 = getelementptr inbounds nuw float, ptr %a.0, i64 %iter.sroa.0.018
  %_17 = load float, ptr %0, align 4, !noundef !32
  %1 = getelementptr inbounds nuw float, ptr %b.0, i64 %iter.sroa.0.018
  %_20 = load float, ptr %1, align 4, !noundef !32
  %_16 = fsub float %_17, %_20
  %2 = call noundef float @llvm.fabs.f32(float %_16)
  %_14 = call i32 @llvm.fptosi.sat.i32.f32(float %2)
  %3 = add i32 %_14, %result.sroa.0.019
  %_0.i.i.i = icmp ult i64 %spec.select20, %_8
  %_0.i1.i.i = zext i1 %_0.i.i.i to i64
  %spec.select = add nuw i64 %spec.select20, %_0.i1.i.i
  br i1 %_0.i.i.i, label %bb7, label %bb8

panic1:                                           ; preds = %bb9
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %iter.sroa.0.018, i64 noundef %b.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_f4ef7df7705ab5192cda3ed35c9cf9c8) #24
  unreachable
}
