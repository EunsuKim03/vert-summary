define noundef i32 @f_gold(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, i32 noundef %n, i32 noundef %k) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %is_less.i.i = alloca [0 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %is_less.i.i), !noalias !2605
  %b.i.i = icmp samesign ult i64 %arr.1, 2
  br i1 %b.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h6c71145db03979feE.exit", label %bb7.i.i, !prof !2608

bb7.i.i:                                          ; preds = %start
  %b1.i.i = icmp samesign ult i64 %arr.1, 21
  br i1 %b1.i.i, label %bb9.i.i, label %bb10.i.i, !prof !2608

bb10.i.i:                                         ; preds = %bb7.i.i
; call core::slice::sort::stable::driftsort_main
  call void @_ZN4core5slice4sort6stable14driftsort_main17h9d6e4bdd870b56d5E(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, ptr noalias noundef nonnull align 1 %is_less.i.i)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h6c71145db03979feE.exit"

bb9.i.i:                                          ; preds = %bb7.i.i
; call core::slice::sort::shared::smallsort::insertion_sort_shift_left
  tail call void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17hd490a5d742329ebeE(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, i64 noundef 1, ptr noalias nonnull align 1 poison)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h6c71145db03979feE.exit"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h6c71145db03979feE.exit": ; preds = %start, %bb10.i.i, %bb9.i.i
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %is_less.i.i), !noalias !2605
  %_7 = sub i32 %n, %k
  %_19 = sext i32 %k to i64
  %_17 = add nsw i64 %_19, -1
  br label %bb4

bb4:                                              ; preds = %bb10, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h6c71145db03979feE.exit"
  %iter.sroa.0.0 = phi i32 [ 0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h6c71145db03979feE.exit" ], [ %iter.sroa.0.1, %bb10 ]
  %iter.sroa.7.0 = phi i8 [ 0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h6c71145db03979feE.exit" ], [ %iter.sroa.7.1, %bb10 ]
  %result.sroa.0.0 = phi i32 [ 2147483647, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h6c71145db03979feE.exit" ], [ %_0.sroa.0.0.i, %bb10 ]
  %_10.i.i = trunc nuw i8 %iter.sroa.7.0 to i1
  %_0.i.not.i.i = icmp sgt i32 %iter.sroa.0.0, %_7
  %or.cond = select i1 %_10.i.i, i1 true, i1 %_0.i.not.i.i
  br i1 %or.cond, label %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17he5c116147552491bE.exit", label %bb2.i.i

bb2.i.i:                                          ; preds = %bb4
  %_0.i3.i.i = icmp slt i32 %iter.sroa.0.0, %_7
  %0 = zext i1 %_0.i3.i.i to i32
  %spec.select = add nsw i32 %iter.sroa.0.0, %0
  %spec.select5 = select i1 %_0.i3.i.i, i8 %iter.sroa.7.0, i8 1
  %1 = sext i32 %iter.sroa.0.0 to i64
  br label %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17he5c116147552491bE.exit"

"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17he5c116147552491bE.exit": ; preds = %bb2.i.i, %bb4
  %iter.sroa.0.1 = phi i32 [ %iter.sroa.0.0, %bb4 ], [ %spec.select, %bb2.i.i ]
  %iter.sroa.7.1 = phi i8 [ %iter.sroa.7.0, %bb4 ], [ %spec.select5, %bb2.i.i ]
  %_0.sroa.3.0.i.i = phi i64 [ 0, %bb4 ], [ %1, %bb2.i.i ]
  br i1 %or.cond, label %bb8, label %bb7

bb7:                                              ; preds = %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17he5c116147552491bE.exit"
  %_16 = add nsw i64 %_17, %_0.sroa.3.0.i.i
  %_21 = icmp ult i64 %_16, %arr.1
  br i1 %_21, label %bb9, label %panic

bb8:                                              ; preds = %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17he5c116147552491bE.exit"
  ret i32 %result.sroa.0.0

bb9:                                              ; preds = %bb7
  %_23 = icmp ugt i64 %arr.1, %_0.sroa.3.0.i.i
  br i1 %_23, label %bb10, label %panic1

panic:                                            ; preds = %bb7
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_16, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_57a4bc2bdc30f95ef3c348f2b71a3037) #24
  unreachable

bb10:                                             ; preds = %bb9
  %2 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %_16
  %_15 = load i32, ptr %2, align 4, !noundef !37
  %3 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %_0.sroa.3.0.i.i
  %_22 = load i32, ptr %3, align 4, !noundef !37
  %_14 = sub i32 %_15, %_22
  %_0.sroa.0.0.i = call noundef i32 @llvm.smin.i32(i32 %_14, i32 %result.sroa.0.0)
  br label %bb4

panic1:                                           ; preds = %bb9
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_0.sroa.3.0.i.i, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_b0da599a05f5885e97e888bf4bb6f68e) #24
  unreachable
}
