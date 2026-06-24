define noundef i32 @f_gold(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %str, i32 noundef %l, i32 noundef %h) unnamed_addr #3 {
start:
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb14, %start
  %l.tr = phi i32 [ %l, %start ], [ %_22, %bb14 ]
  %h.tr = phi i32 [ %h, %start ], [ %_7, %bb14 ]
  %_4 = icmp sgt i32 %l.tr, %h.tr
  br i1 %_4, label %common.ret, label %bb2

bb2:                                              ; preds = %tailrecurse
  %_5 = icmp eq i32 %l.tr, %h.tr
  br i1 %_5, label %common.ret, label %bb4

bb4:                                              ; preds = %bb2
  %_7 = add i32 %h.tr, -1
  %_6 = icmp eq i32 %l.tr, %_7
  %_11 = sext i32 %l.tr to i64
  %0 = getelementptr inbounds nuw i8, ptr %str, i64 16
  br i1 %_6, label %bb5, label %bb6

bb6:                                              ; preds = %bb4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1630)
  %len.i = load i64, ptr %0, align 8, !alias.scope !1630, !noalias !1633, !noundef !37
  %_4.i.i = icmp ugt i64 %len.i, %_11
  br i1 %_4.i.i, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he1340978be29d2e9E.exit", label %panic.i.i

panic.i.i:                                        ; preds = %bb6
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef range(i64 -2147483648, 2147483648) %_11, i64 noundef range(i64 0, 2305843009213693952) %len.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_e8b16e09484438bd1b823d55118aed8e) #24, !noalias !1635
  unreachable

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he1340978be29d2e9E.exit": ; preds = %bb6
  %_21 = sext i32 %h.tr to i64
  %_4.i.i2 = icmp ugt i64 %len.i, %_21
  br i1 %_4.i.i2, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he1340978be29d2e9E.exit6", label %panic.i.i3

panic.i.i3:                                       ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he1340978be29d2e9E.exit"
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef range(i64 -2147483648, 2147483648) %_21, i64 noundef range(i64 0, 2305843009213693952) %len.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_75853844551f76c2b09e1327c677c970) #24, !noalias !1638
  unreachable

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he1340978be29d2e9E.exit6": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he1340978be29d2e9E.exit"
  %1 = getelementptr inbounds nuw i8, ptr %str, i64 8
  %_6.i = load ptr, ptr %1, align 8, !alias.scope !1630, !noalias !1633, !nonnull !37, !noundef !37
  %_0.i.i = getelementptr inbounds nuw i32, ptr %_6.i, i64 %_11
  %_16 = load i32, ptr %_0.i.i, align 4, !range !1643, !noundef !37
  %_0.i.i5 = getelementptr inbounds nuw i32, ptr %_6.i, i64 %_21
  %_19 = load i32, ptr %_0.i.i5, align 4, !range !1643, !noundef !37
  %_15 = icmp eq i32 %_16, %_19
  br i1 %_15, label %bb14, label %bb16

bb5:                                              ; preds = %bb4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1644)
  %len.i7 = load i64, ptr %0, align 8, !alias.scope !1644, !noalias !1647, !noundef !37
  %_4.i.i8 = icmp ugt i64 %len.i7, %_11
  br i1 %_4.i.i8, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he1340978be29d2e9E.exit12", label %panic.i.i9

panic.i.i9:                                       ; preds = %bb5
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef range(i64 -2147483648, 2147483648) %_11, i64 noundef range(i64 0, 2305843009213693952) %len.i7, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_c90ae470c4308e16ff141e4b409166ce) #24, !noalias !1649
  unreachable

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he1340978be29d2e9E.exit12": ; preds = %bb5
  %_14 = sext i32 %h.tr to i64
  %_4.i.i14 = icmp ugt i64 %len.i7, %_14
  br i1 %_4.i.i14, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he1340978be29d2e9E.exit18", label %panic.i.i15

panic.i.i15:                                      ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he1340978be29d2e9E.exit12"
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef range(i64 -2147483648, 2147483648) %_14, i64 noundef range(i64 0, 2305843009213693952) %len.i7, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_1fc359f214ee9a19fb274031e82cd788) #24, !noalias !1652
  unreachable

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he1340978be29d2e9E.exit18": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he1340978be29d2e9E.exit12"
  %2 = getelementptr inbounds nuw i8, ptr %str, i64 8
  %_6.i10 = load ptr, ptr %2, align 8, !alias.scope !1644, !noalias !1647, !nonnull !37, !noundef !37
  %_0.i.i11 = getelementptr inbounds nuw i32, ptr %_6.i10, i64 %_11
  %_9 = load i32, ptr %_0.i.i11, align 4, !range !1643, !noundef !37
  %_0.i.i17 = getelementptr inbounds nuw i32, ptr %_6.i10, i64 %_14
  %_12 = load i32, ptr %_0.i.i17, align 4, !range !1643, !noundef !37
  %_8 = icmp ne i32 %_9, %_12
  %. = zext i1 %_8 to i32
  br label %common.ret

common.ret:                                       ; preds = %tailrecurse, %bb2, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he1340978be29d2e9E.exit18", %bb16
  %common.ret.op = phi i32 [ %3, %bb16 ], [ 2147483647, %tailrecurse ], [ 0, %bb2 ], [ %., %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he1340978be29d2e9E.exit18" ]
  ret i32 %common.ret.op

bb16:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he1340978be29d2e9E.exit6"
  %_24 = tail call noundef i32 @f_gold(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %str, i32 noundef %l.tr, i32 noundef %_7)
  %_26 = add i32 %l.tr, 1
  %_25 = tail call noundef i32 @f_gold(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %str, i32 noundef %_26, i32 noundef %h.tr)
  %x.y.i = tail call noundef i32 @llvm.smin.i32(i32 %_24, i32 %_25)
  %3 = add i32 %x.y.i, 1
  br label %common.ret

bb14:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he1340978be29d2e9E.exit6"
  %_22 = add i32 %l.tr, 1
  br label %tailrecurse
}
