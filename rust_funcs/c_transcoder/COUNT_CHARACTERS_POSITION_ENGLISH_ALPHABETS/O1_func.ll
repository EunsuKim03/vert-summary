define noundef i32 @f_gold(ptr noalias noundef nonnull readonly align 1 captures(address) %str.0, i64 noundef %str.1) unnamed_addr #12 personality ptr @rust_eh_personality {
start:
  %_7.i = getelementptr inbounds nuw i8, ptr %str.0, i64 %str.1
  br label %bb4

bb4:                                              ; preds = %bb7, %start
  %iter.sroa.0.0 = phi ptr [ %str.0, %start ], [ %iter.sroa.0.2, %bb7 ]
  %iter.sroa.11.0 = phi i64 [ 0, %start ], [ %iter.sroa.11.1, %bb7 ]
  %result.sroa.0.0 = phi i32 [ 0, %start ], [ %spec.select, %bb7 ]
  %_7.i.i.i.i = icmp ne ptr %iter.sroa.0.0, %_7.i
  %spec.select4.idx = zext i1 %_7.i.i.i.i to i64
  %spec.select4 = getelementptr inbounds nuw i8, ptr %iter.sroa.0.0, i64 %spec.select4.idx
  br i1 %_7.i.i.i.i, label %bb14.i.i.i, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb982107525a3c91E.exit.i"

bb14.i.i.i:                                       ; preds = %bb4
  %x.i.i.i = load i8, ptr %iter.sroa.0.0, align 1, !noalias !1630, !noundef !37
  %_6.i.i.i = icmp sgt i8 %x.i.i.i, -1
  br i1 %_6.i.i.i, label %bb3.i.i.i, label %bb4.i.i.i

bb4.i.i.i:                                        ; preds = %bb14.i.i.i
  %_30.i.i.i = and i8 %x.i.i.i, 31
  %init.i.i.i = zext nneg i8 %_30.i.i.i to i32
  %_7.i10.i.i.i = icmp ne ptr %spec.select4, %_7.i
  tail call void @llvm.assume(i1 %_7.i10.i.i.i)
  %_18.i12.i.i.i = getelementptr inbounds nuw i8, ptr %spec.select4, i64 1
  %y.i.i.i = load i8, ptr %spec.select4, align 1, !noalias !1630, !noundef !37
  %_34.i.i.i = shl nuw nsw i32 %init.i.i.i, 6
  %_36.i.i.i = and i8 %y.i.i.i, 63
  %_35.i.i.i = zext nneg i8 %_36.i.i.i to i32
  %0 = or disjoint i32 %_34.i.i.i, %_35.i.i.i
  %_13.i.i.i = icmp ugt i8 %x.i.i.i, -33
  br i1 %_13.i.i.i, label %bb6.i.i.i, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb982107525a3c91E.exit.i"

bb3.i.i.i:                                        ; preds = %bb14.i.i.i
  %_7.i.i.i = zext nneg i8 %x.i.i.i to i32
  br label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb982107525a3c91E.exit.i"

bb6.i.i.i:                                        ; preds = %bb4.i.i.i
  %_7.i17.i.i.i = icmp ne ptr %_18.i12.i.i.i, %_7.i
  tail call void @llvm.assume(i1 %_7.i17.i.i.i)
  %_18.i19.i.i.i = getelementptr inbounds nuw i8, ptr %spec.select4, i64 2
  %z.i.i.i = load i8, ptr %_18.i12.i.i.i, align 1, !noalias !1630, !noundef !37
  %_40.i.i.i = shl nuw nsw i32 %_35.i.i.i, 6
  %_42.i.i.i = and i8 %z.i.i.i, 63
  %_41.i.i.i = zext nneg i8 %_42.i.i.i to i32
  %y_z.i.i.i = or disjoint i32 %_40.i.i.i, %_41.i.i.i
  %_20.i.i.i = shl nuw nsw i32 %init.i.i.i, 12
  %1 = or disjoint i32 %y_z.i.i.i, %_20.i.i.i
  %_21.i.i.i = icmp ugt i8 %x.i.i.i, -17
  br i1 %_21.i.i.i, label %bb8.i.i.i, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb982107525a3c91E.exit.i"

bb8.i.i.i:                                        ; preds = %bb6.i.i.i
  %_7.i24.i.i.i = icmp ne ptr %_18.i19.i.i.i, %_7.i
  tail call void @llvm.assume(i1 %_7.i24.i.i.i)
  %_18.i26.i.i.i = getelementptr inbounds nuw i8, ptr %spec.select4, i64 3
  %w.i.i.i = load i8, ptr %_18.i19.i.i.i, align 1, !noalias !1630, !noundef !37
  %_26.i.i.i = shl nuw nsw i32 %init.i.i.i, 18
  %_25.i.i.i = and i32 %_26.i.i.i, 1835008
  %_46.i.i.i = shl nuw nsw i32 %y_z.i.i.i, 6
  %_48.i.i.i = and i8 %w.i.i.i, 63
  %_47.i.i.i = zext nneg i8 %_48.i.i.i to i32
  %_27.i.i.i = or disjoint i32 %_46.i.i.i, %_47.i.i.i
  %2 = or disjoint i32 %_27.i.i.i, %_25.i.i.i
  br label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb982107525a3c91E.exit.i"

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb982107525a3c91E.exit.i": ; preds = %bb8.i.i.i, %bb6.i.i.i, %bb3.i.i.i, %bb4.i.i.i, %bb4
  %iter.sroa.0.2 = phi ptr [ %spec.select4, %bb4 ], [ %spec.select4, %bb3.i.i.i ], [ %_18.i26.i.i.i, %bb8.i.i.i ], [ %_18.i19.i.i.i, %bb6.i.i.i ], [ %_18.i12.i.i.i, %bb4.i.i.i ]
  %spec.select.i.i = phi i32 [ 1114112, %bb4 ], [ %_7.i.i.i, %bb3.i.i.i ], [ %2, %bb8.i.i.i ], [ %1, %bb6.i.i.i ], [ %0, %bb4.i.i.i ]
  %.not = icmp eq i32 %spec.select.i.i, 1114112
  br i1 %.not, label %bb8, label %bb7

bb7:                                              ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb982107525a3c91E.exit.i"
  %iter.sroa.11.1 = add i64 %iter.sroa.11.0, 1
  %3 = icmp ult i32 %spec.select.i.i, 1114112
  tail call void @llvm.assume(i1 %3)
  %_13 = zext nneg i32 %spec.select.i.i to i64
  %_12 = add nsw i64 %_13, -97
  %_11 = icmp eq i64 %iter.sroa.11.0, %_12
  %_15 = add nsw i64 %_13, -65
  %_14 = icmp eq i64 %iter.sroa.11.0, %_15
  %or.cond = or i1 %_11, %_14
  %4 = zext i1 %or.cond to i32
  %spec.select = add i32 %result.sroa.0.0, %4
  br label %bb4

bb8:                                              ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb982107525a3c91E.exit.i"
  ret i32 %result.sroa.0.0
}
