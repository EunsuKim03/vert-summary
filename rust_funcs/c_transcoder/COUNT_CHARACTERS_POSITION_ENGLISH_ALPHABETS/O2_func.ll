define noundef i32 @f_gold(ptr noalias noundef nonnull readonly align 1 captures(address) %str.0, i64 noundef %str.1) unnamed_addr #4 personality ptr @rust_eh_personality {
start:
  %_20 = getelementptr inbounds nuw i8, ptr %str.0, i64 %str.1
  %_7.i.i.not.i.i18 = icmp samesign eq i64 %str.1, 0
  br i1 %_7.i.i.not.i.i18, label %bb5, label %bb14.i.i.i

bb14.i.i.i:                                       ; preds = %start, %bb4
  %result.sroa.0.021 = phi i32 [ %spec.select, %bb4 ], [ 0, %start ]
  %iter.sroa.0.020 = phi ptr [ %iter.sroa.0.115, %bb4 ], [ %str.0, %start ]
  %iter.sroa.10.019 = phi i64 [ %_8.0.i17, %bb4 ], [ 0, %start ]
  %_18.i.i.i.i = getelementptr inbounds nuw i8, ptr %iter.sroa.0.020, i64 1
  %x.i.i.i = load i8, ptr %iter.sroa.0.020, align 1, !noalias !1031, !noundef !23
  %_6.i.i.i = icmp sgt i8 %x.i.i.i, -1
  br i1 %_6.i.i.i, label %bb3.i.i.i, label %bb4.i.i.i

bb4.i.i.i:                                        ; preds = %bb14.i.i.i
  %_30.i.i.i = and i8 %x.i.i.i, 31
  %init.i.i.i = zext nneg i8 %_30.i.i.i to i32
  %_7.i10.i.i.i = icmp ne ptr %_18.i.i.i.i, %_20
  tail call void @llvm.assume(i1 %_7.i10.i.i.i)
  %_18.i12.i.i.i = getelementptr inbounds nuw i8, ptr %iter.sroa.0.020, i64 2
  %y.i.i.i = load i8, ptr %_18.i.i.i.i, align 1, !noalias !1031, !noundef !23
  %_34.i.i.i = shl nuw nsw i32 %init.i.i.i, 6
  %_36.i.i.i = and i8 %y.i.i.i, 63
  %_35.i.i.i = zext nneg i8 %_36.i.i.i to i32
  %0 = or disjoint i32 %_34.i.i.i, %_35.i.i.i
  %_13.i.i.i = icmp samesign ugt i8 %x.i.i.i, -33
  br i1 %_13.i.i.i, label %bb6.i.i.i, label %bb4

bb3.i.i.i:                                        ; preds = %bb14.i.i.i
  %_7.i.i.i = zext nneg i8 %x.i.i.i to i32
  br label %bb4

bb6.i.i.i:                                        ; preds = %bb4.i.i.i
  %_7.i17.i.i.i = icmp ne ptr %_18.i12.i.i.i, %_20
  tail call void @llvm.assume(i1 %_7.i17.i.i.i)
  %_18.i19.i.i.i = getelementptr inbounds nuw i8, ptr %iter.sroa.0.020, i64 3
  %z.i.i.i = load i8, ptr %_18.i12.i.i.i, align 1, !noalias !1031, !noundef !23
  %_40.i.i.i = shl nuw nsw i32 %_35.i.i.i, 6
  %_42.i.i.i = and i8 %z.i.i.i, 63
  %_41.i.i.i = zext nneg i8 %_42.i.i.i to i32
  %y_z.i.i.i = or disjoint i32 %_40.i.i.i, %_41.i.i.i
  %_20.i.i.i = shl nuw nsw i32 %init.i.i.i, 12
  %1 = or disjoint i32 %y_z.i.i.i, %_20.i.i.i
  %_21.i.i.i = icmp samesign ugt i8 %x.i.i.i, -17
  br i1 %_21.i.i.i, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb982107525a3c91E.exit.i", label %bb4

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb982107525a3c91E.exit.i": ; preds = %bb6.i.i.i
  %_7.i24.i.i.i = icmp ne ptr %_18.i19.i.i.i, %_20
  tail call void @llvm.assume(i1 %_7.i24.i.i.i)
  %w.i.i.i = load i8, ptr %_18.i19.i.i.i, align 1, !noalias !1031, !noundef !23
  %_26.i.i.i = shl nuw nsw i32 %init.i.i.i, 18
  %_25.i.i.i = and i32 %_26.i.i.i, 1835008
  %_46.i.i.i = shl nuw nsw i32 %y_z.i.i.i, 6
  %_48.i.i.i = and i8 %w.i.i.i, 63
  %_47.i.i.i = zext nneg i8 %_48.i.i.i to i32
  %_27.i.i.i = or disjoint i32 %_46.i.i.i, %_47.i.i.i
  %2 = or disjoint i32 %_27.i.i.i, %_25.i.i.i
  %.not.i = icmp eq i32 %2, 1114112
  br i1 %.not.i, label %bb5, label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7d64c43426d12229E.exit"

"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7d64c43426d12229E.exit": ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb982107525a3c91E.exit.i"
  %_18.i26.i.i.i = getelementptr inbounds nuw i8, ptr %iter.sroa.0.020, i64 4
  br label %bb4

bb4:                                              ; preds = %bb3.i.i.i, %bb6.i.i.i, %bb4.i.i.i, %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7d64c43426d12229E.exit"
  %spec.select.i5.i16 = phi i32 [ %2, %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7d64c43426d12229E.exit" ], [ %0, %bb4.i.i.i ], [ %1, %bb6.i.i.i ], [ %_7.i.i.i, %bb3.i.i.i ]
  %iter.sroa.0.115 = phi ptr [ %_18.i26.i.i.i, %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7d64c43426d12229E.exit" ], [ %_18.i12.i.i.i, %bb4.i.i.i ], [ %_18.i19.i.i.i, %bb6.i.i.i ], [ %_18.i.i.i.i, %bb3.i.i.i ]
  %_8.0.i17 = add i64 %iter.sroa.10.019, 1
  %3 = icmp samesign ult i32 %spec.select.i5.i16, 1114112
  tail call void @llvm.assume(i1 %3)
  %_12 = zext nneg i32 %spec.select.i5.i16 to i64
  %_11 = add nsw i64 %_12, -97
  %_10 = icmp eq i64 %iter.sroa.10.019, %_11
  %_14 = add nsw i64 %_12, -65
  %_13 = icmp eq i64 %iter.sroa.10.019, %_14
  %or.cond = or i1 %_10, %_13
  %4 = zext i1 %or.cond to i32
  %spec.select = add i32 %result.sroa.0.021, %4
  %_7.i.i.not.i.i = icmp eq ptr %iter.sroa.0.115, %_20
  br i1 %_7.i.i.not.i.i, label %bb5, label %bb14.i.i.i

bb5:                                              ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb982107525a3c91E.exit.i", %bb4, %start
  %result.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %spec.select, %bb4 ], [ %result.sroa.0.021, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb982107525a3c91E.exit.i" ]
  ret i32 %result.sroa.0.0.lcssa
}
