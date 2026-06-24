define noundef i32 @f_gold(ptr noalias noundef nonnull align 4 %a.0, i64 noundef range(i64 0, 2305843009213693952) %a.1, i32 noundef %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %compare.i = alloca [0 x i8], align 1
  %is_less.i.i = alloca [8 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %compare.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !2920
  store ptr %compare.i, ptr %is_less.i.i, align 8, !noalias !2923
  %b.i.i = icmp samesign ult i64 %a.1, 2
  br i1 %b.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h62d797bd6149b9e7E.exit", label %bb7.i.i, !prof !2927

bb7.i.i:                                          ; preds = %start
  %b1.i.i = icmp samesign ult i64 %a.1, 21
  br i1 %b1.i.i, label %bb9.i.i, label %bb10.i.i, !prof !2927

bb10.i.i:                                         ; preds = %bb7.i.i
; call core::slice::sort::stable::driftsort_main
  call void @_ZN4core5slice4sort6stable14driftsort_main17h90c6126d751a3014E(ptr noalias noundef nonnull align 4 %a.0, i64 noundef range(i64 0, 2305843009213693952) %a.1, ptr noalias noundef align 8 dereferenceable(8) %is_less.i.i)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h62d797bd6149b9e7E.exit"

bb9.i.i:                                          ; preds = %bb7.i.i
; call core::slice::sort::shared::smallsort::insertion_sort_shift_left
  call void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h61a9e1fb00cfb82bE(ptr noalias noundef nonnull align 4 %a.0, i64 noundef range(i64 0, 2305843009213693952) %a.1, i64 noundef 1, ptr noalias align 8 poison)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h62d797bd6149b9e7E.exit"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h62d797bd6149b9e7E.exit": ; preds = %start, %bb10.i.i, %bb9.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !2920
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %compare.i)
  %_7 = sext i32 %n to i64
  %_0.i.i.i16 = icmp ugt i32 %n, 1
  br i1 %_0.i.i.i16, label %bb6, label %bb7

bb6:                                              ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h62d797bd6149b9e7E.exit", %bb12
  %spec.select22 = phi i64 [ %spec.select, %bb12 ], [ 2, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h62d797bd6149b9e7E.exit" ]
  %answer.sroa.0.021 = phi i32 [ %answer.sroa.0.1, %bb12 ], [ 0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h62d797bd6149b9e7E.exit" ]
  %count.sroa.0.020 = phi i32 [ %count.sroa.0.1, %bb12 ], [ 1, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h62d797bd6149b9e7E.exit" ]
  %iter.sroa.0.019 = phi i64 [ %spec.select22, %bb12 ], [ 1, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h62d797bd6149b9e7E.exit" ]
  %_16 = icmp ult i64 %iter.sroa.0.019, %a.1
  br i1 %_16, label %bb8, label %panic

bb7:                                              ; preds = %bb12, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h62d797bd6149b9e7E.exit"
  %count.sroa.0.0.lcssa = phi i32 [ 1, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h62d797bd6149b9e7E.exit" ], [ %count.sroa.0.1, %bb12 ]
  %answer.sroa.0.0.lcssa = phi i32 [ 0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h62d797bd6149b9e7E.exit" ], [ %answer.sroa.0.1, %bb12 ]
  %_27 = add i32 %count.sroa.0.0.lcssa, -1
  %_25 = mul i32 %_27, %count.sroa.0.0.lcssa
  %_24 = sdiv i32 %_25, 2
  %0 = add i32 %_24, %answer.sroa.0.0.lcssa
  ret i32 %0

bb8:                                              ; preds = %bb6
  %_18 = add nsw i64 %iter.sroa.0.019, -1
  %_19 = icmp ult i64 %_18, %a.1
  br i1 %_19, label %bb9, label %panic1

panic:                                            ; preds = %bb6
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %iter.sroa.0.019, i64 noundef %a.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_402134329005fede55a51acdc7beff3d) #24
  unreachable

bb9:                                              ; preds = %bb8
  %1 = getelementptr inbounds nuw i32, ptr %a.0, i64 %iter.sroa.0.019
  %_14 = load i32, ptr %1, align 4, !noundef !32
  %2 = getelementptr inbounds nuw i32, ptr %a.0, i64 %_18
  %_17 = load i32, ptr %2, align 4, !noundef !32
  %_13 = icmp eq i32 %_14, %_17
  br i1 %_13, label %bb10, label %bb11

panic1:                                           ; preds = %bb8
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_18, i64 noundef %a.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_bc0340d3a01cbe358fe91a6282a0b874) #24
  unreachable

bb11:                                             ; preds = %bb9
  %_23 = add i32 %count.sroa.0.020, -1
  %_21 = mul i32 %_23, %count.sroa.0.020
  %_20 = sdiv i32 %_21, 2
  %3 = add i32 %_20, %answer.sroa.0.021
  br label %bb12

bb10:                                             ; preds = %bb9
  %4 = add i32 %count.sroa.0.020, 1
  br label %bb12

bb12:                                             ; preds = %bb10, %bb11
  %count.sroa.0.1 = phi i32 [ %4, %bb10 ], [ 1, %bb11 ]
  %answer.sroa.0.1 = phi i32 [ %answer.sroa.0.021, %bb10 ], [ %3, %bb11 ]
  %_0.i.i.i = icmp ult i64 %spec.select22, %_7
  %_0.i1.i.i = zext i1 %_0.i.i.i to i64
  %spec.select = add nuw i64 %spec.select22, %_0.i1.i.i
  br i1 %_0.i.i.i, label %bb6, label %bb7
}
