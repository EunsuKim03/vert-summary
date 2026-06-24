define noundef i32 @f_gold(ptr noalias noundef nonnull align 4 %arr1.0, i64 noundef range(i64 0, 2305843009213693952) %arr1.1, ptr noalias noundef nonnull align 4 %arr2.0, i64 noundef range(i64 0, 2305843009213693952) %arr2.1, i32 noundef %n1, i32 noundef %n2) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %compare.i2 = alloca [0 x i8], align 1
  %is_less.i.i3 = alloca [8 x i8], align 8
  %is_less.i.i = alloca [8 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %compare.i2)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !4210
  store ptr %compare.i2, ptr %is_less.i.i, align 8, !noalias !4213
  %b.i.i = icmp samesign ult i64 %arr1.1, 2
  br i1 %b.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hd7a452c23dc78710E.exit", label %bb7.i.i, !prof !4217

bb7.i.i:                                          ; preds = %start
  %b1.i.i = icmp samesign ult i64 %arr1.1, 21
  br i1 %b1.i.i, label %bb9.i.i, label %bb10.i.i, !prof !4217

bb10.i.i:                                         ; preds = %bb7.i.i
; call core::slice::sort::stable::driftsort_main
  call void @_ZN4core5slice4sort6stable14driftsort_main17h9388a405acdab576E(ptr noalias noundef nonnull align 4 %arr1.0, i64 noundef range(i64 0, 2305843009213693952) %arr1.1, ptr noalias noundef align 8 dereferenceable(8) %is_less.i.i)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hd7a452c23dc78710E.exit"

bb9.i.i:                                          ; preds = %bb7.i.i
; call core::slice::sort::shared::smallsort::insertion_sort_shift_left
  call void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h132ab36f5bb8cf1aE(ptr noalias noundef nonnull align 4 %arr1.0, i64 noundef range(i64 0, 2305843009213693952) %arr1.1, i64 noundef 1, ptr noalias align 8 poison)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hd7a452c23dc78710E.exit"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hd7a452c23dc78710E.exit": ; preds = %start, %bb10.i.i, %bb9.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !4210
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %compare.i2)
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %compare.i2)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %is_less.i.i3), !noalias !4218
  store ptr %compare.i2, ptr %is_less.i.i3, align 8, !noalias !4221
  %b.i.i4 = icmp samesign ult i64 %arr2.1, 2
  br i1 %b.i.i4, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h526bf3a5f17c7aabE.exit", label %bb7.i.i5, !prof !4217

bb7.i.i5:                                         ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hd7a452c23dc78710E.exit"
  %b1.i.i6 = icmp samesign ult i64 %arr2.1, 21
  br i1 %b1.i.i6, label %bb9.i.i8, label %bb10.i.i7, !prof !4217

bb10.i.i7:                                        ; preds = %bb7.i.i5
; call core::slice::sort::stable::driftsort_main
  call void @_ZN4core5slice4sort6stable14driftsort_main17h5442fc87e02861cdE(ptr noalias noundef nonnull align 4 %arr2.0, i64 noundef range(i64 0, 2305843009213693952) %arr2.1, ptr noalias noundef align 8 dereferenceable(8) %is_less.i.i3)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h526bf3a5f17c7aabE.exit"

bb9.i.i8:                                         ; preds = %bb7.i.i5
; call core::slice::sort::shared::smallsort::insertion_sort_shift_left
  call void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h9d2335476d459babE(ptr noalias noundef nonnull align 4 %arr2.0, i64 noundef range(i64 0, 2305843009213693952) %arr2.1, i64 noundef 1, ptr noalias align 8 poison)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h526bf3a5f17c7aabE.exit"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h526bf3a5f17c7aabE.exit": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hd7a452c23dc78710E.exit", %bb10.i.i7, %bb9.i.i8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %is_less.i.i3), !noalias !4218
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
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_8, i64 noundef %arr1.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_66c3de894cc23437f97268b1a6d4bdd4) #24
  unreachable

bb4:                                              ; preds = %bb3
  %0 = getelementptr inbounds nuw i32, ptr %arr1.0, i64 %_8
  %_7 = load i32, ptr %0, align 4, !noundef !37
  %_12 = load i32, ptr %arr2.0, align 4, !noundef !37
  %_0 = mul i32 %_12, %_7
  ret i32 %_0

panic1:                                           ; preds = %bb3
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_99a1c1dbdd6e8c0ca6baae108b218afe) #24
  unreachable
}
