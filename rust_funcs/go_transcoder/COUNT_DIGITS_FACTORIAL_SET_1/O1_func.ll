define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #12 {
start:
  %_2 = icmp slt i32 %n, 0
  br i1 %_2, label %bb14, label %bb2

bb2:                                              ; preds = %start
  %_3 = icmp slt i32 %n, 2
  br i1 %_3, label %bb14, label %bb7

bb7:                                              ; preds = %bb2, %bb10
  %iter.sroa.0.0 = phi i32 [ %iter.sroa.0.1, %bb10 ], [ 2, %bb2 ]
  %iter.sroa.7.0 = phi i8 [ %iter.sroa.7.1, %bb10 ], [ 0, %bb2 ]
  %digits.sroa.0.0 = phi float [ %3, %bb10 ], [ 0.000000e+00, %bb2 ]
  %_10.i.i = trunc nuw i8 %iter.sroa.7.0 to i1
  %_0.i.not.i.i = icmp sgt i32 %iter.sroa.0.0, %n
  %or.cond = select i1 %_10.i.i, i1 true, i1 %_0.i.not.i.i
  br i1 %or.cond, label %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17ha060c5f48e61b770E.exit", label %bb2.i.i

bb2.i.i:                                          ; preds = %bb7
  %_0.i3.i.i = icmp slt i32 %iter.sroa.0.0, %n
  %0 = zext i1 %_0.i3.i.i to i32
  %spec.select = add nsw i32 %iter.sroa.0.0, %0
  %spec.select3 = select i1 %_0.i3.i.i, i8 %iter.sroa.7.0, i8 1
  %1 = sitofp i32 %iter.sroa.0.0 to float
  br label %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17ha060c5f48e61b770E.exit"

"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17ha060c5f48e61b770E.exit": ; preds = %bb2.i.i, %bb7
  %iter.sroa.0.1 = phi i32 [ %iter.sroa.0.0, %bb7 ], [ %spec.select, %bb2.i.i ]
  %iter.sroa.7.1 = phi i8 [ %iter.sroa.7.0, %bb7 ], [ %spec.select3, %bb2.i.i ]
  %_0.sroa.3.0.i.i = phi float [ 0.000000e+00, %bb7 ], [ %1, %bb2.i.i ]
  br i1 %or.cond, label %bb11, label %bb10

bb10:                                             ; preds = %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17ha060c5f48e61b770E.exit"
  %2 = tail call noundef float @llvm.log10.f32(float %_0.sroa.3.0.i.i)
  %3 = fadd float %digits.sroa.0.0, %2
  br label %bb7

bb11:                                             ; preds = %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17ha060c5f48e61b770E.exit"
  %4 = tail call noundef float @llvm.floor.f32(float %digits.sroa.0.0)
  %_14 = tail call i32 @llvm.fptosi.sat.i32.f32(float %4)
  %5 = add i32 %_14, 1
  br label %bb14

bb14:                                             ; preds = %bb2, %start, %bb11
  %_0.sroa.0.0 = phi i32 [ %5, %bb11 ], [ 0, %start ], [ 1, %bb2 ]
  ret i32 %_0.sroa.0.0
}
