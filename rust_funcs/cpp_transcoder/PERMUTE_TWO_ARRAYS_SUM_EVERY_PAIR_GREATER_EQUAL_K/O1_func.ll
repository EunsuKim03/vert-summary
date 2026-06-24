define noundef range(i32 0, 2) i32 @f_gold(ptr noalias noundef nonnull align 4 %a.0, i64 noundef range(i64 0, 2305843009213693952) %a.1, ptr noalias noundef nonnull align 4 %b.0, i64 noundef range(i64 0, 2305843009213693952) %b.1, i32 noundef %n, i32 noundef %k) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %compare.i3 = alloca [0 x i8], align 1
  %is_less.i.i4 = alloca [8 x i8], align 8
  %is_less.i.i = alloca [8 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %compare.i3)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !4210
  store ptr %compare.i3, ptr %is_less.i.i, align 8, !noalias !4213
  %b.i.i = icmp samesign ult i64 %a.1, 2
  br i1 %b.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h12f965c5c27065caE.exit", label %bb7.i.i, !prof !4217

bb7.i.i:                                          ; preds = %start
  %b1.i.i = icmp samesign ult i64 %a.1, 21
  br i1 %b1.i.i, label %bb9.i.i, label %bb10.i.i, !prof !4217

bb10.i.i:                                         ; preds = %bb7.i.i
; call core::slice::sort::stable::driftsort_main
  call void @_ZN4core5slice4sort6stable14driftsort_main17h06065741614b238eE(ptr noalias noundef nonnull align 4 %a.0, i64 noundef range(i64 0, 2305843009213693952) %a.1, ptr noalias noundef align 8 dereferenceable(8) %is_less.i.i)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h12f965c5c27065caE.exit"

bb9.i.i:                                          ; preds = %bb7.i.i
; call core::slice::sort::shared::smallsort::insertion_sort_shift_left
  call void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17ha533cb9131a33215E(ptr noalias noundef nonnull align 4 %a.0, i64 noundef range(i64 0, 2305843009213693952) %a.1, i64 noundef 1, ptr noalias align 8 poison)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h12f965c5c27065caE.exit"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h12f965c5c27065caE.exit": ; preds = %start, %bb10.i.i, %bb9.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !4210
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %compare.i3)
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %compare.i3)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %is_less.i.i4), !noalias !4218
  store ptr %compare.i3, ptr %is_less.i.i4, align 8, !noalias !4221
  %b.i.i5 = icmp samesign ult i64 %b.1, 2
  br i1 %b.i.i5, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hca5733519c4067e3E.exit", label %bb7.i.i6, !prof !4217

bb7.i.i6:                                         ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h12f965c5c27065caE.exit"
  %b1.i.i7 = icmp samesign ult i64 %b.1, 21
  br i1 %b1.i.i7, label %bb9.i.i9, label %bb10.i.i8, !prof !4217

bb10.i.i8:                                        ; preds = %bb7.i.i6
; call core::slice::sort::stable::driftsort_main
  call void @_ZN4core5slice4sort6stable14driftsort_main17h175e6ee4efc703fbE(ptr noalias noundef nonnull align 4 %b.0, i64 noundef range(i64 0, 2305843009213693952) %b.1, ptr noalias noundef align 8 dereferenceable(8) %is_less.i.i4)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hca5733519c4067e3E.exit"

bb9.i.i9:                                         ; preds = %bb7.i.i6
; call core::slice::sort::shared::smallsort::insertion_sort_shift_left
  call void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17hbae5b258618e419fE(ptr noalias noundef nonnull align 4 %b.0, i64 noundef range(i64 0, 2305843009213693952) %b.1, i64 noundef 1, ptr noalias align 8 poison)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hca5733519c4067e3E.exit"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hca5733519c4067e3E.exit": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h12f965c5c27065caE.exit", %bb10.i.i8, %bb9.i.i9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %is_less.i.i4), !noalias !4218
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %compare.i3)
  br label %bb4

bb4:                                              ; preds = %bb10, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hca5733519c4067e3E.exit"
  %iter.sroa.0.0 = phi i32 [ 0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hca5733519c4067e3E.exit" ], [ %spec.select, %bb10 ]
  %_0.i.i.i = icmp slt i32 %iter.sroa.0.0, %n
  %0 = zext i1 %_0.i.i.i to i32
  %spec.select = add nuw nsw i32 %iter.sroa.0.0, %0
  br i1 %_0.i.i.i, label %bb7, label %bb13

bb7:                                              ; preds = %bb4
  %_17 = zext nneg i32 %iter.sroa.0.0 to i64
  %_19 = icmp samesign ugt i64 %a.1, %_17
  br i1 %_19, label %bb9, label %panic

bb13:                                             ; preds = %bb10, %bb4
  %_0.sroa.0.0 = phi i32 [ 1, %bb4 ], [ 0, %bb10 ]
  ret i32 %_0.sroa.0.0

bb9:                                              ; preds = %bb7
  %_22 = icmp samesign ugt i64 %b.1, %_17
  br i1 %_22, label %bb10, label %panic1

panic:                                            ; preds = %bb7
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_17, i64 noundef %a.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_1a2ee0b019ed70f55536196ba492661d) #24
  unreachable

bb10:                                             ; preds = %bb9
  %1 = getelementptr inbounds nuw i32, ptr %a.0, i64 %_17
  %_16 = load i32, ptr %1, align 4, !noundef !32
  %2 = getelementptr inbounds nuw i32, ptr %b.0, i64 %_17
  %_20 = load i32, ptr %2, align 4, !noundef !32
  %_15 = add i32 %_20, %_16
  %_14 = icmp slt i32 %_15, %k
  br i1 %_14, label %bb13, label %bb4

panic1:                                           ; preds = %bb9
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_17, i64 noundef %b.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_6eb7515f2e20320b75b916ddc6ae64cb) #24
  unreachable
}
