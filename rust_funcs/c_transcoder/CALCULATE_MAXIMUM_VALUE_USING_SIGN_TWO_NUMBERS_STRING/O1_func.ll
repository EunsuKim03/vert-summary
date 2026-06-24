define noundef i32 @f_gold(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %str.0, i64 noundef range(i64 0, 2305843009213693952) %str.1) unnamed_addr #3 {
start:
  %_5.not = icmp eq i64 %str.1, 0
  br i1 %_5.not, label %panic, label %bb1

bb1:                                              ; preds = %start
  %_3 = load i32, ptr %str.0, align 4, !range !1630, !noundef !37
  %0 = add nsw i32 %_3, -48
  %_6.i.i = getelementptr inbounds nuw i32, ptr %str.0, i64 %str.1
  %1 = ptrtoint ptr %_6.i.i to i64
  br label %bb5

panic:                                            ; preds = %start
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_704684259ce9fb24bcc1d35342b2e4cc) #24
  unreachable

bb5:                                              ; preds = %bb8, %bb1
  %iter.sroa.0.0 = phi ptr [ %str.0, %bb1 ], [ %iter.sroa.0.1, %bb8 ]
  %iter.sroa.10.0 = phi i64 [ 1, %bb1 ], [ %iter.sroa.10.1, %bb8 ]
  %res.sroa.0.0 = phi i32 [ %0, %bb1 ], [ %res.sroa.0.1, %bb8 ]
  %b.not.i = icmp eq i64 %iter.sroa.10.0, 0
  br i1 %b.not.i, label %bb6.i, label %bb4.i, !prof !1631

bb6.i:                                            ; preds = %bb5
  %_7.i.i = icmp eq ptr %iter.sroa.0.0, %_6.i.i
  %spec.select.idx = select i1 %_7.i.i, i64 0, i64 4
  %spec.select = getelementptr inbounds nuw i8, ptr %iter.sroa.0.0, i64 %spec.select.idx
  %spec.select4 = select i1 %_7.i.i, ptr null, ptr %iter.sroa.0.0
  br label %"_ZN100_$LT$core..iter..adapters..skip..Skip$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4056f88646650ad8E.exit"

bb4.i:                                            ; preds = %bb5
  %2 = ptrtoint ptr %iter.sroa.0.0 to i64
  %3 = sub nuw i64 %1, %2
  %4 = lshr exact i64 %3, 2
  %_3.not.i.i = icmp samesign ult i64 %iter.sroa.10.0, %4
  %_23.i.i = getelementptr inbounds nuw i32, ptr %iter.sroa.0.0, i64 %iter.sroa.10.0
  %_35.i.i = getelementptr inbounds nuw i8, ptr %_23.i.i, i64 4
  %storemerge.i.i = select i1 %_3.not.i.i, ptr %_35.i.i, ptr %_6.i.i
  %_0.sroa.0.0.i2.i = select i1 %_3.not.i.i, ptr %_23.i.i, ptr null
  br label %"_ZN100_$LT$core..iter..adapters..skip..Skip$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4056f88646650ad8E.exit"

"_ZN100_$LT$core..iter..adapters..skip..Skip$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4056f88646650ad8E.exit": ; preds = %bb6.i, %bb4.i
  %iter.sroa.0.1 = phi ptr [ %storemerge.i.i, %bb4.i ], [ %spec.select, %bb6.i ]
  %iter.sroa.10.1 = phi i64 [ 0, %bb4.i ], [ %iter.sroa.10.0, %bb6.i ]
  %_0.sroa.0.0.i = phi ptr [ %_0.sroa.0.0.i2.i, %bb4.i ], [ %spec.select4, %bb6.i ]
  %.not = icmp eq ptr %_0.sroa.0.0.i, null
  br i1 %.not, label %bb9, label %bb8

bb8:                                              ; preds = %"_ZN100_$LT$core..iter..adapters..skip..Skip$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4056f88646650ad8E.exit"
  %_15 = load i32, ptr %_0.sroa.0.0.i, align 4, !range !1630, !noundef !37
  %_15.off = add nsw i32 %_15, -48
  %switch = icmp ult i32 %_15.off, 2
  %_17 = icmp slt i32 %res.sroa.0.0, 2
  %or.cond = select i1 %switch, i1 true, i1 %_17
  %5 = add i32 %_15.off, %res.sroa.0.0
  %6 = mul i32 %_15.off, %res.sroa.0.0
  %res.sroa.0.1 = select i1 %or.cond, i32 %5, i32 %6
  br label %bb5

bb9:                                              ; preds = %"_ZN100_$LT$core..iter..adapters..skip..Skip$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4056f88646650ad8E.exit"
  ret i32 %res.sroa.0.0
}
