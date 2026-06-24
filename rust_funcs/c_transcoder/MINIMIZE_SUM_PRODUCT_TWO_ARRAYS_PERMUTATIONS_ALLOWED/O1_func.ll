define noundef i32 @f_gold(ptr noalias noundef nonnull align 4 %A.0, i64 noundef range(i64 0, 2305843009213693952) %A.1, ptr noalias noundef nonnull align 4 %B.0, i64 noundef range(i64 0, 2305843009213693952) %B.1, i32 noundef %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %compare.i4 = alloca [0 x i8], align 1
  %is_less.i.i5 = alloca [8 x i8], align 8
  %is_less.i.i = alloca [8 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %compare.i4)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !4210
  store ptr %compare.i4, ptr %is_less.i.i, align 8, !noalias !4213
  %b.i.i = icmp samesign ult i64 %A.1, 2
  br i1 %b.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h134b00356443ff9dE.exit", label %bb7.i.i, !prof !4217

bb7.i.i:                                          ; preds = %start
  %b1.i.i = icmp samesign ult i64 %A.1, 21
  br i1 %b1.i.i, label %bb9.i.i, label %bb10.i.i, !prof !4217

bb10.i.i:                                         ; preds = %bb7.i.i
; call core::slice::sort::stable::driftsort_main
  call void @_ZN4core5slice4sort6stable14driftsort_main17hc2527c42e8249605E(ptr noalias noundef nonnull align 4 %A.0, i64 noundef range(i64 0, 2305843009213693952) %A.1, ptr noalias noundef align 8 dereferenceable(8) %is_less.i.i)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h134b00356443ff9dE.exit"

bb9.i.i:                                          ; preds = %bb7.i.i
; call core::slice::sort::shared::smallsort::insertion_sort_shift_left
  call void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17he4589bf084543de7E(ptr noalias noundef nonnull align 4 %A.0, i64 noundef range(i64 0, 2305843009213693952) %A.1, i64 noundef 1, ptr noalias align 8 poison)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h134b00356443ff9dE.exit"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h134b00356443ff9dE.exit": ; preds = %start, %bb10.i.i, %bb9.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !4210
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %compare.i4)
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %compare.i4)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %is_less.i.i5), !noalias !4218
  store ptr %compare.i4, ptr %is_less.i.i5, align 8, !noalias !4221
  %b.i.i6 = icmp samesign ult i64 %B.1, 2
  br i1 %b.i.i6, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hab482de571b7888dE.exit", label %bb7.i.i7, !prof !4217

bb7.i.i7:                                         ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h134b00356443ff9dE.exit"
  %b1.i.i8 = icmp samesign ult i64 %B.1, 21
  br i1 %b1.i.i8, label %bb9.i.i10, label %bb10.i.i9, !prof !4217

bb10.i.i9:                                        ; preds = %bb7.i.i7
; call core::slice::sort::stable::driftsort_main
  call void @_ZN4core5slice4sort6stable14driftsort_main17hfed4a3b6b12b08f1E(ptr noalias noundef nonnull align 4 %B.0, i64 noundef range(i64 0, 2305843009213693952) %B.1, ptr noalias noundef align 8 dereferenceable(8) %is_less.i.i5)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hab482de571b7888dE.exit"

bb9.i.i10:                                        ; preds = %bb7.i.i7
; call core::slice::sort::shared::smallsort::insertion_sort_shift_left
  call void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h5478c093f613346bE(ptr noalias noundef nonnull align 4 %B.0, i64 noundef range(i64 0, 2305843009213693952) %B.1, i64 noundef 1, ptr noalias align 8 poison)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hab482de571b7888dE.exit"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hab482de571b7888dE.exit": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h134b00356443ff9dE.exit", %bb10.i.i9, %bb9.i.i10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %is_less.i.i5), !noalias !4218
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %compare.i4)
  %_0.i.i.i15 = icmp sgt i32 %n, 0
  br i1 %_0.i.i.i15, label %bb7, label %bb8

bb7:                                              ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hab482de571b7888dE.exit", %bb10
  %spec.select18 = phi i32 [ %spec.select, %bb10 ], [ 1, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hab482de571b7888dE.exit" ]
  %result.sroa.0.017 = phi i32 [ %3, %bb10 ], [ 0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hab482de571b7888dE.exit" ]
  %iter.sroa.0.016 = phi i32 [ %spec.select18, %bb10 ], [ 0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hab482de571b7888dE.exit" ]
  %_15 = zext nneg i32 %iter.sroa.0.016 to i64
  %_17 = icmp samesign ugt i64 %A.1, %_15
  br i1 %_17, label %bb9, label %panic

bb8:                                              ; preds = %bb10, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hab482de571b7888dE.exit"
  %result.sroa.0.0.lcssa = phi i32 [ 0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hab482de571b7888dE.exit" ], [ %3, %bb10 ]
  ret i32 %result.sroa.0.0.lcssa

bb9:                                              ; preds = %bb7
  %0 = xor i32 %iter.sroa.0.016, -1
  %_20 = add i32 %n, %0
  %_19 = sext i32 %_20 to i64
  %_23 = icmp ugt i64 %B.1, %_19
  br i1 %_23, label %bb10, label %panic1

panic:                                            ; preds = %bb7
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_15, i64 noundef %A.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_9dbbc1b3917a432ac8aa67473d8df4f1) #24
  unreachable

bb10:                                             ; preds = %bb9
  %1 = getelementptr inbounds nuw i32, ptr %A.0, i64 %_15
  %_14 = load i32, ptr %1, align 4, !noundef !37
  %2 = getelementptr inbounds nuw i32, ptr %B.0, i64 %_19
  %_18 = load i32, ptr %2, align 4, !noundef !37
  %_13 = mul i32 %_18, %_14
  %3 = add i32 %_13, %result.sroa.0.017
  %_0.i.i.i = icmp slt i32 %spec.select18, %n
  %4 = zext i1 %_0.i.i.i to i32
  %spec.select = add nuw nsw i32 %spec.select18, %4
  br i1 %_0.i.i.i, label %bb7, label %bb8

panic1:                                           ; preds = %bb9
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_19, i64 noundef %B.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_8e3b7585622117faa3e59bbcf352d341) #24
  unreachable
}
