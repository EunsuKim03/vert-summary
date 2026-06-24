define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #12 {
start:
  br label %bb3

bb3:                                              ; preds = %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h666fc806c94141c7E.exit", %start
  %iter.sroa.0.0 = phi i32 [ 1, %start ], [ %iter.sroa.0.1, %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h666fc806c94141c7E.exit" ]
  %iter.sroa.7.0 = phi i8 [ 0, %start ], [ %iter.sroa.7.1, %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h666fc806c94141c7E.exit" ]
  %s.sroa.0.0 = phi i32 [ 0, %start ], [ %3, %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h666fc806c94141c7E.exit" ]
  %_10.i.i = trunc nuw i8 %iter.sroa.7.0 to i1
  %_0.i.not.i.i = icmp sgt i32 %iter.sroa.0.0, %n
  %or.cond = select i1 %_10.i.i, i1 true, i1 %_0.i.not.i.i
  br i1 %or.cond, label %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h666fc806c94141c7E.exit", label %bb2.i.i

bb2.i.i:                                          ; preds = %bb3
  %_0.i3.i.i = icmp slt i32 %iter.sroa.0.0, %n
  %0 = zext i1 %_0.i3.i.i to i32
  %spec.select = add nsw i32 %iter.sroa.0.0, %0
  %spec.select3 = select i1 %_0.i3.i.i, i8 %iter.sroa.7.0, i8 1
  %1 = shl i32 %iter.sroa.0.0, 1
  %2 = add i32 %1, -1
  br label %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h666fc806c94141c7E.exit"

"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h666fc806c94141c7E.exit": ; preds = %bb2.i.i, %bb3
  %iter.sroa.0.1 = phi i32 [ %iter.sroa.0.0, %bb3 ], [ %spec.select, %bb2.i.i ]
  %iter.sroa.7.1 = phi i8 [ %iter.sroa.7.0, %bb3 ], [ %spec.select3, %bb2.i.i ]
  %_0.sroa.3.0.i.i = phi i32 [ -1, %bb3 ], [ %2, %bb2.i.i ]
  %3 = add i32 %_0.sroa.3.0.i.i, %s.sroa.0.0
  br i1 %or.cond, label %bb7, label %bb3

bb7:                                              ; preds = %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h666fc806c94141c7E.exit"
  ret i32 %s.sroa.0.0
}
