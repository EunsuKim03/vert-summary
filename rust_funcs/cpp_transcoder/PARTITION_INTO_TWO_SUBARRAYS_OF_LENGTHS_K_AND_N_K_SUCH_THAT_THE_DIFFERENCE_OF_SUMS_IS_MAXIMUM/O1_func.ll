define noundef i32 @f_gold(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, i32 noundef %N, i32 noundef %k) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %compare.i = alloca [0 x i8], align 1
  %is_less.i.i = alloca [8 x i8], align 8
  %_5 = sub i32 %N, %k
  %_0.sroa.0.0.i.i = tail call noundef i32 @llvm.smax.i32(i32 %_5, i32 %k)
  %_0.i.i.i21 = icmp sgt i32 %N, 0
  br i1 %_0.i.i.i21, label %bb6, label %bb7

bb6:                                              ; preds = %start, %bb8
  %spec.select24 = phi i32 [ %spec.select, %bb8 ], [ 1, %start ]
  %S.sroa.0.023 = phi float [ %5, %bb8 ], [ 0.000000e+00, %start ]
  %iter.sroa.0.022 = phi i32 [ %spec.select24, %bb8 ], [ 0, %start ]
  %_16 = zext nneg i32 %iter.sroa.0.022 to i64
  %_18 = icmp samesign ugt i64 %arr.1, %_16
  br i1 %_18, label %bb8, label %panic3

bb7:                                              ; preds = %bb8, %start
  %S.sroa.0.0.lcssa = phi float [ 0.000000e+00, %start ], [ %5, %bb8 ]
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %compare.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !2554
  store ptr %compare.i, ptr %is_less.i.i, align 8, !noalias !2557
  %b.i.i = icmp samesign ult i64 %arr.1, 2
  br i1 %b.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17he39955fc0a7662c8E.exit", label %bb7.i.i, !prof !2561

bb7.i.i:                                          ; preds = %bb7
  %b1.i.i = icmp samesign ult i64 %arr.1, 21
  br i1 %b1.i.i, label %bb9.i.i, label %bb10.i.i, !prof !2561

bb10.i.i:                                         ; preds = %bb7.i.i
; call core::slice::sort::stable::driftsort_main
  call void @_ZN4core5slice4sort6stable14driftsort_main17hbb4268273d719db1E(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, ptr noalias noundef align 8 dereferenceable(8) %is_less.i.i)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17he39955fc0a7662c8E.exit"

bb9.i.i:                                          ; preds = %bb7.i.i
; call core::slice::sort::shared::smallsort::insertion_sort_shift_left
  call void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17ha80044342790034cE(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, i64 noundef 1, ptr noalias align 8 poison)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17he39955fc0a7662c8E.exit"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17he39955fc0a7662c8E.exit": ; preds = %bb7, %bb10.i.i, %bb9.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !2554
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %compare.i)
  %_0.i.i.i1225 = icmp sgt i32 %_0.sroa.0.0.i.i, 0
  br i1 %_0.i.i.i1225, label %bb13, label %bb14

bb13:                                             ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17he39955fc0a7662c8E.exit", %bb15
  %spec.select1728 = phi i32 [ %spec.select17, %bb15 ], [ 1, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17he39955fc0a7662c8E.exit" ]
  %S1.sroa.0.027 = phi float [ %2, %bb15 ], [ 0.000000e+00, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17he39955fc0a7662c8E.exit" ]
  %iter1.sroa.0.026 = phi i32 [ %spec.select1728, %bb15 ], [ 0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17he39955fc0a7662c8E.exit" ]
  %_28 = zext nneg i32 %iter1.sroa.0.026 to i64
  %_30 = icmp samesign ugt i64 %arr.1, %_28
  br i1 %_30, label %bb15, label %panic

bb14:                                             ; preds = %bb15, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17he39955fc0a7662c8E.exit"
  %S1.sroa.0.0.lcssa = phi float [ 0.000000e+00, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17he39955fc0a7662c8E.exit" ], [ %2, %bb15 ]
  %_33 = fsub float %S.sroa.0.0.lcssa, %S1.sroa.0.0.lcssa
  %_31 = fsub float %S1.sroa.0.0.lcssa, %_33
  %0 = call i32 @llvm.fptosi.sat.i32.f32(float %_31)
  ret i32 %0

bb15:                                             ; preds = %bb13
  %1 = getelementptr inbounds nuw float, ptr %arr.0, i64 %_28
  %_27 = load float, ptr %1, align 4, !noundef !32
  %2 = fadd float %S1.sroa.0.027, %_27
  %_0.i.i.i12 = icmp slt i32 %spec.select1728, %_0.sroa.0.0.i.i
  %3 = zext i1 %_0.i.i.i12 to i32
  %spec.select17 = add nuw nsw i32 %spec.select1728, %3
  br i1 %_0.i.i.i12, label %bb13, label %bb14

panic:                                            ; preds = %bb13
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_28, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_117f6413013c78a66771675fa13b2731) #24
  unreachable

bb8:                                              ; preds = %bb6
  %4 = getelementptr inbounds nuw float, ptr %arr.0, i64 %_16
  %_15 = load float, ptr %4, align 4, !noundef !32
  %5 = fadd float %S.sroa.0.023, %_15
  %_0.i.i.i = icmp slt i32 %spec.select24, %N
  %6 = zext i1 %_0.i.i.i to i32
  %spec.select = add nuw nsw i32 %spec.select24, %6
  br i1 %_0.i.i.i, label %bb6, label %bb7

panic3:                                           ; preds = %bb6
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_16, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_2cb5dadc0b04dc9bcc03e7e4580cdc48) #24
  unreachable
}
