define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #12 {
start:
  %_3 = icmp slt i32 %n, 3
  br i1 %_3, label %bb10, label %bb5

bb5:                                              ; preds = %start, %bb8
  %iter.sroa.0.0 = phi i32 [ %iter.sroa.0.1, %bb8 ], [ 3, %start ]
  %iter.sroa.7.0 = phi i8 [ %iter.sroa.7.1, %bb8 ], [ 0, %start ]
  %b.sroa.0.0 = phi i32 [ %2, %bb8 ], [ 2, %start ]
  %a.sroa.0.0 = phi i32 [ %b.sroa.0.0, %bb8 ], [ 1, %start ]
  %c.sroa.0.0 = phi i32 [ %2, %bb8 ], [ 0, %start ]
  %_10.i.i = trunc nuw i8 %iter.sroa.7.0 to i1
  %_0.i.not.i.i = icmp sgt i32 %iter.sroa.0.0, %n
  %or.cond = select i1 %_10.i.i, i1 true, i1 %_0.i.not.i.i
  br i1 %or.cond, label %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17hea1d573433fd1598E.exit", label %bb2.i.i

bb2.i.i:                                          ; preds = %bb5
  %_0.i3.i.i = icmp slt i32 %iter.sroa.0.0, %n
  %0 = zext i1 %_0.i3.i.i to i32
  %spec.select = add nsw i32 %iter.sroa.0.0, %0
  %spec.select4 = select i1 %_0.i3.i.i, i8 %iter.sroa.7.0, i8 1
  %1 = add i32 %iter.sroa.0.0, -1
  br label %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17hea1d573433fd1598E.exit"

"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17hea1d573433fd1598E.exit": ; preds = %bb2.i.i, %bb5
  %iter.sroa.0.1 = phi i32 [ %iter.sroa.0.0, %bb5 ], [ %spec.select, %bb2.i.i ]
  %iter.sroa.7.1 = phi i8 [ %iter.sroa.7.0, %bb5 ], [ %spec.select4, %bb2.i.i ]
  %_0.sroa.3.0.i.i = phi i32 [ undef, %bb5 ], [ %1, %bb2.i.i ]
  br i1 %or.cond, label %bb10, label %bb8

bb8:                                              ; preds = %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17hea1d573433fd1598E.exit"
  %_12 = mul i32 %_0.sroa.3.0.i.i, %a.sroa.0.0
  %2 = add i32 %_12, %b.sroa.0.0
  br label %bb5

bb10:                                             ; preds = %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17hea1d573433fd1598E.exit", %start
  %c.sroa.0.1 = phi i32 [ %n, %start ], [ %c.sroa.0.0, %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17hea1d573433fd1598E.exit" ]
  ret i32 %c.sroa.0.1
}
