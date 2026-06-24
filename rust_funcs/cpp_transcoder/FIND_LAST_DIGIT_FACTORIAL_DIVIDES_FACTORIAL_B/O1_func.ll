define noundef range(i32 -9, 10) i32 @f_gold(i32 noundef %A, i32 noundef %B) unnamed_addr #12 {
start:
  %_4 = icmp eq i32 %A, %B
  br i1 %_4, label %bb13, label %bb2

bb2:                                              ; preds = %start
  %_6 = sub i32 %B, %A
  %_5 = icmp sgt i32 %_6, 4
  br i1 %_5, label %bb13, label %bb4

bb4:                                              ; preds = %bb2
  %_9 = add i32 %A, 1
  br label %bb7

bb7:                                              ; preds = %bb10, %bb4
  %iter.sroa.0.0 = phi i32 [ %_9, %bb4 ], [ %iter.sroa.0.1, %bb10 ]
  %iter.sroa.7.0 = phi i8 [ 0, %bb4 ], [ %iter.sroa.7.1, %bb10 ]
  %variable.sroa.0.0 = phi i32 [ 1, %bb4 ], [ %2, %bb10 ]
  %_10.i.i = trunc nuw i8 %iter.sroa.7.0 to i1
  %_0.i.not.i.i = icmp sgt i32 %iter.sroa.0.0, %B
  %or.cond = select i1 %_10.i.i, i1 true, i1 %_0.i.not.i.i
  br i1 %or.cond, label %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h2502258db369aa72E.exit", label %bb2.i.i

bb2.i.i:                                          ; preds = %bb7
  %_0.i3.i.i = icmp slt i32 %iter.sroa.0.0, %B
  %0 = zext i1 %_0.i3.i.i to i32
  %spec.select = add nsw i32 %iter.sroa.0.0, %0
  %spec.select3 = select i1 %_0.i3.i.i, i8 %iter.sroa.7.0, i8 1
  %1 = sitofp i32 %iter.sroa.0.0 to float
  br label %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h2502258db369aa72E.exit"

"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h2502258db369aa72E.exit": ; preds = %bb2.i.i, %bb7
  %iter.sroa.0.1 = phi i32 [ %iter.sroa.0.0, %bb7 ], [ %spec.select, %bb2.i.i ]
  %iter.sroa.7.1 = phi i8 [ %iter.sroa.7.0, %bb7 ], [ %spec.select3, %bb2.i.i ]
  %_0.sroa.3.0.i.i = phi float [ 0.000000e+00, %bb7 ], [ %1, %bb2.i.i ]
  br i1 %or.cond, label %bb13, label %bb10

bb10:                                             ; preds = %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h2502258db369aa72E.exit"
  %_17 = frem float %_0.sroa.3.0.i.i, 1.000000e+01
  %_16 = tail call i32 @llvm.fptosi.sat.i32.f32(float %_17)
  %_15 = mul i32 %_16, %variable.sroa.0.0
  %2 = srem i32 %_15, 10
  br label %bb7

bb13:                                             ; preds = %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h2502258db369aa72E.exit", %bb2, %start
  %_0.sroa.0.0 = phi i32 [ 1, %start ], [ 0, %bb2 ], [ %variable.sroa.0.0, %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h2502258db369aa72E.exit" ]
  ret i32 %_0.sroa.0.0
}
