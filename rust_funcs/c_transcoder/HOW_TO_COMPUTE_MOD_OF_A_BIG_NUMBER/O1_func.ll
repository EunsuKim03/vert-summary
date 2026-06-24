define noundef range(i32 -2147483647, -2147483648) i32 @f_gold(ptr noalias noundef nonnull readonly align 1 captures(address) %num.0, i64 noundef %num.1, i32 noundef %a) unnamed_addr #3 {
start:
  %_7.i = getelementptr inbounds nuw i8, ptr %num.0, i64 %num.1
  %_15 = icmp eq i32 %a, 0
  %_16 = icmp eq i32 %a, -1
  br label %bb3

bb3:                                              ; preds = %bb11, %start
  %iter.sroa.0.0 = phi ptr [ %num.0, %start ], [ %iter.sroa.0.2, %bb11 ]
  %res.sroa.0.0 = phi i32 [ 0, %start ], [ %4, %bb11 ]
  %_7.i.i.i = icmp ne ptr %iter.sroa.0.0, %_7.i
  %spec.select.idx = zext i1 %_7.i.i.i to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %iter.sroa.0.0, i64 %spec.select.idx
  br i1 %_7.i.i.i, label %bb14.i.i, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb982107525a3c91E.exit"

bb14.i.i:                                         ; preds = %bb3
  %x.i.i = load i8, ptr %iter.sroa.0.0, align 1, !noalias !1630, !noundef !37
  %_6.i.i = icmp sgt i8 %x.i.i, -1
  br i1 %_6.i.i, label %bb3.i.i, label %bb4.i.i

bb4.i.i:                                          ; preds = %bb14.i.i
  %_30.i.i = and i8 %x.i.i, 31
  %init.i.i = zext nneg i8 %_30.i.i to i32
  %_7.i10.i.i = icmp ne ptr %spec.select, %_7.i
  tail call void @llvm.assume(i1 %_7.i10.i.i)
  %_18.i12.i.i = getelementptr inbounds nuw i8, ptr %spec.select, i64 1
  %y.i.i = load i8, ptr %spec.select, align 1, !noalias !1630, !noundef !37
  %_34.i.i = shl nuw nsw i32 %init.i.i, 6
  %_36.i.i = and i8 %y.i.i, 63
  %_35.i.i = zext nneg i8 %_36.i.i to i32
  %0 = or disjoint i32 %_34.i.i, %_35.i.i
  %_13.i.i = icmp ugt i8 %x.i.i, -33
  br i1 %_13.i.i, label %bb6.i.i, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb982107525a3c91E.exit"

bb3.i.i:                                          ; preds = %bb14.i.i
  %_7.i.i = zext nneg i8 %x.i.i to i32
  br label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb982107525a3c91E.exit"

bb6.i.i:                                          ; preds = %bb4.i.i
  %_7.i17.i.i = icmp ne ptr %_18.i12.i.i, %_7.i
  tail call void @llvm.assume(i1 %_7.i17.i.i)
  %_18.i19.i.i = getelementptr inbounds nuw i8, ptr %spec.select, i64 2
  %z.i.i = load i8, ptr %_18.i12.i.i, align 1, !noalias !1630, !noundef !37
  %_40.i.i = shl nuw nsw i32 %_35.i.i, 6
  %_42.i.i = and i8 %z.i.i, 63
  %_41.i.i = zext nneg i8 %_42.i.i to i32
  %y_z.i.i = or disjoint i32 %_40.i.i, %_41.i.i
  %_20.i.i = shl nuw nsw i32 %init.i.i, 12
  %1 = or disjoint i32 %y_z.i.i, %_20.i.i
  %_21.i.i = icmp ugt i8 %x.i.i, -17
  br i1 %_21.i.i, label %bb8.i.i, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb982107525a3c91E.exit"

bb8.i.i:                                          ; preds = %bb6.i.i
  %_7.i24.i.i = icmp ne ptr %_18.i19.i.i, %_7.i
  tail call void @llvm.assume(i1 %_7.i24.i.i)
  %_18.i26.i.i = getelementptr inbounds nuw i8, ptr %spec.select, i64 3
  %w.i.i = load i8, ptr %_18.i19.i.i, align 1, !noalias !1630, !noundef !37
  %_26.i.i = shl nuw nsw i32 %init.i.i, 18
  %_25.i.i = and i32 %_26.i.i, 1835008
  %_46.i.i = shl nuw nsw i32 %y_z.i.i, 6
  %_48.i.i = and i8 %w.i.i, 63
  %_47.i.i = zext nneg i8 %_48.i.i to i32
  %_27.i.i = or disjoint i32 %_46.i.i, %_47.i.i
  %2 = or disjoint i32 %_27.i.i, %_25.i.i
  br label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb982107525a3c91E.exit"

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb982107525a3c91E.exit": ; preds = %bb3, %bb4.i.i, %bb3.i.i, %bb6.i.i, %bb8.i.i
  %iter.sroa.0.2 = phi ptr [ %spec.select, %bb3 ], [ %spec.select, %bb3.i.i ], [ %_18.i26.i.i, %bb8.i.i ], [ %_18.i19.i.i, %bb6.i.i ], [ %_18.i12.i.i, %bb4.i.i ]
  %spec.select.i = phi i32 [ 1114112, %bb3 ], [ %_7.i.i, %bb3.i.i ], [ %2, %bb8.i.i ], [ %1, %bb6.i.i ], [ %0, %bb4.i.i ]
  %.not = icmp eq i32 %spec.select.i, 1114112
  br i1 %.not, label %bb7, label %bb6

bb6:                                              ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb982107525a3c91E.exit"
  %3 = add nsw i32 %spec.select.i, -48
  %_14.i = icmp ult i32 %3, 10
  br i1 %_14.i, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17h19211f8047f8a7c9E.exit", label %bb2.i, !prof !1635

bb2.i:                                            ; preds = %bb6
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_64773157b488c4d1b1f7b80c23025b7b) #23
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17h19211f8047f8a7c9E.exit": ; preds = %bb6
  %_11 = mul i32 %res.sroa.0.0, 10
  %_10 = add i32 %3, %_11
  br i1 %_15, label %panic, label %bb10

bb7:                                              ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb982107525a3c91E.exit"
  ret i32 %res.sroa.0.0

bb10:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h19211f8047f8a7c9E.exit"
  %_17 = icmp eq i32 %_10, -2147483648
  %_18 = and i1 %_16, %_17
  br i1 %_18, label %panic1, label %bb11

panic:                                            ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h19211f8047f8a7c9E.exit"
; call core::panicking::panic_const::panic_const_rem_by_zero
  tail call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_9391b4d297a9c755399a77babf439c63) #23
  unreachable

bb11:                                             ; preds = %bb10
  %4 = srem i32 %_10, %a
  br label %bb3

panic1:                                           ; preds = %bb10
; call core::panicking::panic_const::panic_const_rem_overflow
  tail call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_9391b4d297a9c755399a77babf439c63) #23
  unreachable
}
