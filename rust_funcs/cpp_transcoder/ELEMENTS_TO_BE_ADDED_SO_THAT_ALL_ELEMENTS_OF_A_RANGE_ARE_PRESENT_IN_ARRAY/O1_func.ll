define noundef i32 @f_gold(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, i32 noundef %n) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %compare.i = alloca [0 x i8], align 1
  %is_less.i.i = alloca [8 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %compare.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !2554
  store ptr %compare.i, ptr %is_less.i.i, align 8, !noalias !2557
  %b.i.i = icmp samesign ult i64 %arr.1, 2
  br i1 %b.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h49c61478579fe639E.exit", label %bb7.i.i, !prof !2561

bb7.i.i:                                          ; preds = %start
  %b1.i.i = icmp samesign ult i64 %arr.1, 21
  br i1 %b1.i.i, label %bb9.i.i, label %bb10.i.i, !prof !2561

bb10.i.i:                                         ; preds = %bb7.i.i
; call core::slice::sort::stable::driftsort_main
  call void @_ZN4core5slice4sort6stable14driftsort_main17hd941c990cf943cf1E(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, ptr noalias noundef align 8 dereferenceable(8) %is_less.i.i)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h49c61478579fe639E.exit"

bb9.i.i:                                          ; preds = %bb7.i.i
; call core::slice::sort::shared::smallsort::insertion_sort_shift_left
  call void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h9ff766c275f64972E(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, i64 noundef 1, ptr noalias align 8 poison)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h49c61478579fe639E.exit"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h49c61478579fe639E.exit": ; preds = %start, %bb10.i.i, %bb9.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !2554
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %compare.i)
  %_7 = add i32 %n, -1
  %_6 = sext i32 %_7 to i64
  %_0.i.i.i13.not = icmp eq i32 %_7, 0
  br i1 %_0.i.i.i13.not, label %bb7, label %bb6

bb6:                                              ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h49c61478579fe639E.exit", %bb18
  %spec.select17 = phi i64 [ %spec.select, %bb18 ], [ 1, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h49c61478579fe639E.exit" ]
  %count.sroa.0.016 = phi i32 [ %count.sroa.0.1, %bb18 ], [ 0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h49c61478579fe639E.exit" ]
  %iter.sroa.0.015 = phi i64 [ %spec.select17, %bb18 ], [ 0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h49c61478579fe639E.exit" ]
  %_16 = icmp ult i64 %iter.sroa.0.015, %arr.1
  br i1 %_16, label %bb8, label %panic

bb7:                                              ; preds = %bb18, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h49c61478579fe639E.exit"
  %count.sroa.0.0.lcssa = phi i32 [ 0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h49c61478579fe639E.exit" ], [ %count.sroa.0.1, %bb18 ]
  ret i32 %count.sroa.0.0.lcssa

bb8:                                              ; preds = %bb6
  %0 = getelementptr inbounds nuw float, ptr %arr.0, i64 %iter.sroa.0.015
  %_14 = load float, ptr %0, align 4, !noundef !32
  %_18 = add nuw nsw i64 %iter.sroa.0.015, 1
  %_19 = icmp ult i64 %_18, %arr.1
  br i1 %_19, label %bb9, label %panic1

panic:                                            ; preds = %bb6
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %iter.sroa.0.015, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_c57df5a5e420aa3a935b0836c52d5722) #24
  unreachable

bb9:                                              ; preds = %bb8
  %1 = getelementptr inbounds nuw float, ptr %arr.0, i64 %_18
  %_17 = load float, ptr %1, align 4, !noundef !32
  %_13 = fcmp une float %_14, %_17
  %_22 = fadd float %_14, 1.000000e+00
  %_20 = fcmp une float %_17, %_22
  %or.cond = and i1 %_13, %_20
  br i1 %or.cond, label %bb15, label %bb18

panic1:                                           ; preds = %bb8
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_18, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_fdf0cf6cbeffe0b665e615036846c3c5) #24
  unreachable

bb18:                                             ; preds = %bb9, %bb15
  %count.sroa.0.1 = phi i32 [ %2, %bb15 ], [ %count.sroa.0.016, %bb9 ]
  %_0.i.i.i = icmp ult i64 %spec.select17, %_6
  %_0.i1.i.i = zext i1 %_0.i.i.i to i64
  %spec.select = add nuw i64 %spec.select17, %_0.i1.i.i
  br i1 %_0.i.i.i, label %bb6, label %bb7

bb15:                                             ; preds = %bb9
  %_26 = fsub float %_17, %_14
  %_25 = fadd float %_26, -1.000000e+00
  %_24 = call i32 @llvm.fptosi.sat.i32.f32(float %_25)
  %2 = add i32 %_24, %count.sroa.0.016
  br label %bb18
}
