define noundef i32 @f_gold(ptr noalias noundef nonnull readonly align 1 captures(address) %s.0, i64 noundef %s.1) unnamed_addr #12 {
start:
  %_7.i = getelementptr inbounds nuw i8, ptr %s.0, i64 %s.1
  br label %bb3.outer

bb3.outer:                                        ; preds = %bb9, %start
  %iter.sroa.0.0.ph = phi ptr [ %iter.sroa.0.2, %bb9 ], [ %s.0, %start ]
  %b_count.sroa.0.0.ph = phi i32 [ %4, %bb9 ], [ 0, %start ]
  %a_count.sroa.0.0.ph = phi i32 [ %a_count.sroa.0.0.ph9, %bb9 ], [ 0, %start ]
  %c_count.sroa.0.0.ph = phi i32 [ %c_count.sroa.0.0.ph13, %bb9 ], [ 0, %start ]
  br label %bb3.outer7

bb3.outer7:                                       ; preds = %bb3.outer, %bb10
  %iter.sroa.0.0.ph8 = phi ptr [ %iter.sroa.0.0.ph, %bb3.outer ], [ %iter.sroa.0.2, %bb10 ]
  %a_count.sroa.0.0.ph9 = phi i32 [ %a_count.sroa.0.0.ph, %bb3.outer ], [ %3, %bb10 ]
  %c_count.sroa.0.0.ph10 = phi i32 [ %c_count.sroa.0.0.ph, %bb3.outer ], [ %c_count.sroa.0.0.ph13, %bb10 ]
  br label %bb3.outer11

bb3.outer11:                                      ; preds = %bb3.outer7, %bb8
  %iter.sroa.0.0.ph12 = phi ptr [ %iter.sroa.0.0.ph8, %bb3.outer7 ], [ %iter.sroa.0.2, %bb8 ]
  %c_count.sroa.0.0.ph13 = phi i32 [ %c_count.sroa.0.0.ph10, %bb3.outer7 ], [ %5, %bb8 ]
  br label %bb3

bb3:                                              ; preds = %bb3.outer11, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb982107525a3c91E.exit"
  %iter.sroa.0.0 = phi ptr [ %iter.sroa.0.2, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb982107525a3c91E.exit" ], [ %iter.sroa.0.0.ph12, %bb3.outer11 ]
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
  switch i32 %spec.select.i, label %bb3 [
    i32 1114112, label %bb7
    i32 97, label %bb10
    i32 98, label %bb9
    i32 99, label %bb8
  ]

bb7:                                              ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb982107525a3c91E.exit"
  ret i32 %c_count.sroa.0.0.ph13

bb10:                                             ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb982107525a3c91E.exit"
  %_11 = shl i32 %a_count.sroa.0.0.ph9, 1
  %3 = or disjoint i32 %_11, 1
  br label %bb3.outer7

bb9:                                              ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb982107525a3c91E.exit"
  %_13 = shl i32 %b_count.sroa.0.0.ph, 1
  %4 = add i32 %a_count.sroa.0.0.ph9, %_13
  br label %bb3.outer

bb8:                                              ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb982107525a3c91E.exit"
  %_15 = shl i32 %c_count.sroa.0.0.ph13, 1
  %5 = add i32 %_15, %b_count.sroa.0.0.ph
  br label %bb3.outer11
}
