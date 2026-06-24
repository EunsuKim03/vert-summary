define noundef i32 @f_gold(i32 noundef %n, i32 noundef %k, ptr noalias noundef nonnull align 4 %a.0, i64 noundef range(i64 0, 2305843009213693952) %a.1) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %compare.i = alloca [0 x i8], align 1
  %is_less.i.i = alloca [8 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %compare.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !2920
  store ptr %compare.i, ptr %is_less.i.i, align 8, !noalias !2923
  %b.i.i = icmp samesign ult i64 %a.1, 2
  br i1 %b.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hd3b458d8fd240d30E.exit", label %bb7.i.i, !prof !2927

bb7.i.i:                                          ; preds = %start
  %b1.i.i = icmp samesign ult i64 %a.1, 21
  br i1 %b1.i.i, label %bb9.i.i, label %bb10.i.i, !prof !2927

bb10.i.i:                                         ; preds = %bb7.i.i
; call core::slice::sort::stable::driftsort_main
  call void @_ZN4core5slice4sort6stable14driftsort_main17h3a832f492565b55bE(ptr noalias noundef nonnull align 4 %a.0, i64 noundef range(i64 0, 2305843009213693952) %a.1, ptr noalias noundef align 8 dereferenceable(8) %is_less.i.i)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hd3b458d8fd240d30E.exit"

bb9.i.i:                                          ; preds = %bb7.i.i
; call core::slice::sort::shared::smallsort::insertion_sort_shift_left
  call void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17he7c308c5db11137aE(ptr noalias noundef nonnull align 4 %a.0, i64 noundef range(i64 0, 2305843009213693952) %a.1, i64 noundef 1, ptr noalias align 8 poison)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hd3b458d8fd240d30E.exit"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hd3b458d8fd240d30E.exit": ; preds = %start, %bb10.i.i, %bb9.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !2920
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %compare.i)
  %_0.i.i.i8 = icmp sgt i32 %n, 0
  br i1 %_0.i.i.i8, label %bb6.lr.ph, label %bb7

bb6.lr.ph:                                        ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hd3b458d8fd240d30E.exit"
  %_14 = icmp eq i32 %k, 0
  br i1 %_14, label %panic, label %bb6.preheader

bb6.preheader:                                    ; preds = %bb6.lr.ph
  %wide.trip.count = zext nneg i32 %n to i64
  br label %bb6

bb6:                                              ; preds = %bb6.preheader, %bb13
  %indvars.iv12 = phi i64 [ 0, %bb6.preheader ], [ %indvars.iv.next13, %bb13 ]
  %f_gold.sroa.0.010 = phi i32 [ 0, %bb6.preheader ], [ %f_gold.sroa.0.1, %bb13 ]
  %0 = trunc nuw nsw i64 %indvars.iv12 to i32
  %_13 = srem i32 %0, %k
  %_12 = icmp eq i32 %_13, 0
  br i1 %_12, label %bb10, label %bb13

bb7:                                              ; preds = %bb13, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hd3b458d8fd240d30E.exit"
  %f_gold.sroa.0.0.lcssa = phi i32 [ 0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hd3b458d8fd240d30E.exit" ], [ %f_gold.sroa.0.1, %bb13 ]
  ret i32 %f_gold.sroa.0.0.lcssa

panic:                                            ; preds = %bb6.lr.ph
; call core::panicking::panic_const::panic_const_rem_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_ec12ae67416d12940e6dd43ab2667cf8) #24
  unreachable

bb10:                                             ; preds = %bb6
  %_22 = icmp samesign ugt i64 %a.1, %indvars.iv12
  br i1 %_22, label %bb11, label %panic2

bb13:                                             ; preds = %bb6, %bb11
  %f_gold.sroa.0.1 = phi i32 [ %2, %bb11 ], [ %f_gold.sroa.0.010, %bb6 ]
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv12, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next13, %wide.trip.count
  br i1 %exitcond.not, label %bb7, label %bb6

bb11:                                             ; preds = %bb10
  %1 = getelementptr inbounds nuw i32, ptr %a.0, i64 %indvars.iv12
  %_19 = load i32, ptr %1, align 4, !noundef !37
  %_18 = shl i32 %_19, 1
  %2 = add i32 %_18, %f_gold.sroa.0.010
  br label %bb13

panic2:                                           ; preds = %bb10
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %indvars.iv12, i64 noundef %a.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_a329828532253b0b81fb05992ca61d3d) #24
  unreachable
}
