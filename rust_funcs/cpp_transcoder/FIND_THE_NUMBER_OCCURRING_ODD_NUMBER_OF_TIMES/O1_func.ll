define noundef i32 @f_gold(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %arr, i32 noundef %arr_size) unnamed_addr #3 {
start:
  %_0.i.i.i836 = icmp sgt i32 %arr_size, 0
  %0 = zext i1 %_0.i.i.i836 to i32
  %1 = getelementptr inbounds nuw i8, ptr %arr, i64 16
  %len.i = load i64, ptr %1, align 8
  %2 = getelementptr inbounds nuw i8, ptr %arr, i64 8
  %_6.i = load ptr, ptr %2, align 8, !nonnull !37
  %_0.i.i.i51 = icmp sgt i32 %arr_size, 0
  br i1 %_0.i.i.i51, label %bb8.preheader, label %bb20

bb8.preheader:                                    ; preds = %start, %bb2.backedge
  %spec.select2553 = phi i32 [ %spec.select25, %bb2.backedge ], [ 1, %start ]
  %iter.sroa.0.052 = phi i32 [ %spec.select2553, %bb2.backedge ], [ 0, %start ]
  br i1 %_0.i.i.i836, label %bb10.lr.ph, label %bb2.backedge

bb10.lr.ph:                                       ; preds = %bb8.preheader
  %_21 = zext nneg i32 %iter.sroa.0.052 to i64
  %_4.i.i12 = icmp ugt i64 %len.i, %_21
  %_0.i.i = getelementptr inbounds nuw i32, ptr %_6.i, i64 %_21
  br label %bb10

bb20:                                             ; preds = %bb2.backedge, %start, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h120a8f5a6a9d1490E.exit24"
  %_0.sroa.0.0 = phi i32 [ %10, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h120a8f5a6a9d1490E.exit24" ], [ -1, %start ], [ -1, %bb2.backedge ]
  ret i32 %_0.sroa.0.0

bb10:                                             ; preds = %bb10.lr.ph, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h120a8f5a6a9d1490E.exit18"
  %spec.select2739 = phi i32 [ %0, %bb10.lr.ph ], [ %spec.select27, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h120a8f5a6a9d1490E.exit18" ]
  %count.sroa.0.038 = phi i32 [ 0, %bb10.lr.ph ], [ %spec.select, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h120a8f5a6a9d1490E.exit18" ]
  %iter1.sroa.0.037 = phi i32 [ 0, %bb10.lr.ph ], [ %spec.select2739, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h120a8f5a6a9d1490E.exit18" ]
  br i1 %_4.i.i12, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h120a8f5a6a9d1490E.exit", label %panic.i.i

panic.i.i:                                        ; preds = %bb10
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef range(i64 -2147483648, 2147483648) %_21, i64 noundef range(i64 0, 2305843009213693952) %len.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_518d6d969c4fd08a83059de5c672e33e) #24, !noalias !1630
  unreachable

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h120a8f5a6a9d1490E.exit": ; preds = %bb10
  %_25 = zext nneg i32 %iter1.sroa.0.037 to i64
  %_4.i.i14 = icmp ugt i64 %len.i, %_25
  br i1 %_4.i.i14, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h120a8f5a6a9d1490E.exit18", label %panic.i.i15

panic.i.i15:                                      ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h120a8f5a6a9d1490E.exit"
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef range(i64 -2147483648, 2147483648) %_25, i64 noundef range(i64 0, 2305843009213693952) %len.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_ef444f7e4ac00cef7fd2becfc020a6ef) #24, !noalias !1635
  unreachable

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h120a8f5a6a9d1490E.exit18": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h120a8f5a6a9d1490E.exit"
  %_18 = load i32, ptr %_0.i.i, align 4, !noundef !37
  %_0.i.i17 = getelementptr inbounds nuw i32, ptr %_6.i, i64 %_25
  %_22 = load i32, ptr %_0.i.i17, align 4, !noundef !37
  %_17 = icmp eq i32 %_18, %_22
  %3 = zext i1 %_17 to i32
  %spec.select = add i32 %count.sroa.0.038, %3
  %_0.i.i.i8 = icmp slt i32 %spec.select2739, %arr_size
  %4 = zext i1 %_0.i.i.i8 to i32
  %spec.select27 = add nuw nsw i32 %spec.select2739, %4
  br i1 %_0.i.i.i8, label %bb10, label %bb11.loopexit

bb11.loopexit:                                    ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h120a8f5a6a9d1490E.exit18"
  %5 = and i32 %spec.select, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %bb2.backedge, label %bb17

bb2.backedge:                                     ; preds = %bb11.loopexit, %bb8.preheader
  %_0.i.i.i = icmp slt i32 %spec.select2553, %arr_size
  %7 = zext i1 %_0.i.i.i to i32
  %spec.select25 = add nuw nsw i32 %spec.select2553, %7
  br i1 %_0.i.i.i, label %bb8.preheader, label %bb20

bb17:                                             ; preds = %bb11.loopexit
  %_30 = zext nneg i32 %iter.sroa.0.052 to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1640)
  %8 = getelementptr inbounds nuw i8, ptr %arr, i64 16
  %len.i19 = load i64, ptr %8, align 8, !alias.scope !1640, !noalias !1643, !noundef !37
  %_4.i.i20 = icmp ugt i64 %len.i19, %_30
  br i1 %_4.i.i20, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h120a8f5a6a9d1490E.exit24", label %panic.i.i21

panic.i.i21:                                      ; preds = %bb17
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef range(i64 -2147483648, 2147483648) %_30, i64 noundef range(i64 0, 2305843009213693952) %len.i19, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_6c9868ef4c5b02a03fd29763e7621d24) #24, !noalias !1645
  unreachable

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h120a8f5a6a9d1490E.exit24": ; preds = %bb17
  %9 = getelementptr inbounds nuw i8, ptr %arr, i64 8
  %_6.i22 = load ptr, ptr %9, align 8, !alias.scope !1640, !noalias !1643, !nonnull !37, !noundef !37
  %_0.i.i23 = getelementptr inbounds nuw i32, ptr %_6.i22, i64 %_30
  %10 = load i32, ptr %_0.i.i23, align 4, !noundef !37
  br label %bb20
}
