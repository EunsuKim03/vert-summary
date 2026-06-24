define noundef i32 @f_gold(ptr noalias noundef nonnull align 4 %a.0, i64 noundef range(i64 0, 2305843009213693952) %a.1, i32 noundef %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %compare.i = alloca [0 x i8], align 1
  %is_less.i.i = alloca [8 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %compare.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !2920
  store ptr %compare.i, ptr %is_less.i.i, align 8, !noalias !2923
  %b.i.i = icmp samesign ult i64 %a.1, 2
  br i1 %b.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h6a0164226d671befE.exit", label %bb7.i.i, !prof !2927

bb7.i.i:                                          ; preds = %start
  %b1.i.i = icmp samesign ult i64 %a.1, 21
  br i1 %b1.i.i, label %bb9.i.i, label %bb10.i.i, !prof !2927

bb10.i.i:                                         ; preds = %bb7.i.i
; call core::slice::sort::stable::driftsort_main
  call void @_ZN4core5slice4sort6stable14driftsort_main17h8afcbd005fc7584aE(ptr noalias noundef nonnull align 4 %a.0, i64 noundef range(i64 0, 2305843009213693952) %a.1, ptr noalias noundef align 8 dereferenceable(8) %is_less.i.i)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h6a0164226d671befE.exit"

bb9.i.i:                                          ; preds = %bb7.i.i
; call core::slice::sort::shared::smallsort::insertion_sort_shift_left
  call void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17heba270f41190bbb9E(ptr noalias noundef nonnull align 4 %a.0, i64 noundef range(i64 0, 2305843009213693952) %a.1, i64 noundef 1, ptr noalias align 8 poison)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h6a0164226d671befE.exit"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h6a0164226d671befE.exit": ; preds = %start, %bb10.i.i, %bb9.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !2920
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %compare.i)
  %_0.i.i.i10 = icmp sgt i32 %n, 0
  br i1 %_0.i.i.i10, label %bb6, label %bb7

bb6:                                              ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h6a0164226d671befE.exit", %bb12
  %spec.select14 = phi i32 [ %spec.select, %bb12 ], [ 1, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h6a0164226d671befE.exit" ]
  %num1.sroa.0.013 = phi i32 [ %num1.sroa.0.1, %bb12 ], [ 0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h6a0164226d671befE.exit" ]
  %num2.sroa.0.012 = phi i32 [ %num2.sroa.0.1, %bb12 ], [ 0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h6a0164226d671befE.exit" ]
  %iter.sroa.0.011 = phi i32 [ %spec.select14, %bb12 ], [ 0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h6a0164226d671befE.exit" ]
  %0 = and i32 %iter.sroa.0.011, 1
  %_13 = icmp eq i32 %0, 0
  %_17 = zext nneg i32 %iter.sroa.0.011 to i64
  %_19 = icmp samesign ugt i64 %a.1, %_17
  br i1 %_13, label %bb8, label %bb10

bb7.loopexit:                                     ; preds = %bb12
  %1 = add i32 %num1.sroa.0.1, %num2.sroa.0.1
  br label %bb7

bb7:                                              ; preds = %bb7.loopexit, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h6a0164226d671befE.exit"
  %_0 = phi i32 [ 0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h6a0164226d671befE.exit" ], [ %1, %bb7.loopexit ]
  ret i32 %_0

bb10:                                             ; preds = %bb6
  br i1 %_19, label %bb11, label %panic

bb8:                                              ; preds = %bb6
  br i1 %_19, label %bb9, label %panic1

bb11:                                             ; preds = %bb10
  %_20 = mul i32 %num2.sroa.0.012, 10
  %2 = getelementptr inbounds nuw i32, ptr %a.0, i64 %_17
  %_21 = load i32, ptr %2, align 4, !noundef !37
  %3 = add i32 %_21, %_20
  br label %bb12

panic:                                            ; preds = %bb10
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_17, i64 noundef %a.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_7b228c90b80b621fb514b635ed87e9c1) #24
  unreachable

bb12:                                             ; preds = %bb9, %bb11
  %num2.sroa.0.1 = phi i32 [ %num2.sroa.0.012, %bb9 ], [ %3, %bb11 ]
  %num1.sroa.0.1 = phi i32 [ %6, %bb9 ], [ %num1.sroa.0.013, %bb11 ]
  %_0.i.i.i = icmp slt i32 %spec.select14, %n
  %4 = zext i1 %_0.i.i.i to i32
  %spec.select = add nuw nsw i32 %spec.select14, %4
  br i1 %_0.i.i.i, label %bb6, label %bb7.loopexit

bb9:                                              ; preds = %bb8
  %_15 = mul i32 %num1.sroa.0.013, 10
  %5 = getelementptr inbounds nuw i32, ptr %a.0, i64 %_17
  %_16 = load i32, ptr %5, align 4, !noundef !37
  %6 = add i32 %_16, %_15
  br label %bb12

panic1:                                           ; preds = %bb8
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_17, i64 noundef %a.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_5fe2aef6a41e144108e36fc49a021af7) #24
  unreachable
}
