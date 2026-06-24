define noundef range(i32 0, 256) i32 @f_gold(ptr noalias noundef nonnull readonly align 1 captures(address) %strA.0, i64 noundef %strA.1, ptr noalias noundef nonnull readonly align 1 captures(address) %strB.0, i64 noundef %strB.1) unnamed_addr #12 {
start:
  %_7.i = getelementptr inbounds nuw i8, ptr %strA.0, i64 %strA.1
  br label %bb3

bb3:                                              ; preds = %bb6, %start
  %iter.sroa.0.0 = phi ptr [ %strA.0, %start ], [ %iter.sroa.0.2, %bb6 ]
  %res.sroa.0.0 = phi i32 [ 0, %start ], [ %4, %bb6 ]
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
  %3 = icmp samesign ult i32 %spec.select.i, 1114112
  tail call void @llvm.assume(i1 %3)
  %4 = xor i32 %spec.select.i, %res.sroa.0.0
  br label %bb3

bb7:                                              ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb982107525a3c91E.exit"
  %_7.i8 = getelementptr inbounds nuw i8, ptr %strB.0, i64 %strB.1
  br label %bb10

bb10:                                             ; preds = %bb12, %bb7
  %iter1.sroa.0.0 = phi ptr [ %strB.0, %bb7 ], [ %iter1.sroa.0.2, %bb12 ]
  %res.sroa.0.1 = phi i32 [ %res.sroa.0.0, %bb7 ], [ %9, %bb12 ]
  %_7.i.i.i11 = icmp ne ptr %iter1.sroa.0.0, %_7.i8
  %spec.select56.idx = zext i1 %_7.i.i.i11 to i64
  %spec.select56 = getelementptr inbounds nuw i8, ptr %iter1.sroa.0.0, i64 %spec.select56.idx
  br i1 %_7.i.i.i11, label %bb14.i.i17, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb982107525a3c91E.exit54"

bb14.i.i17:                                       ; preds = %bb10
  %x.i.i18 = load i8, ptr %iter1.sroa.0.0, align 1, !noalias !1635, !noundef !37
  %_6.i.i19 = icmp sgt i8 %x.i.i18, -1
  br i1 %_6.i.i19, label %bb3.i.i52, label %bb4.i.i20

bb4.i.i20:                                        ; preds = %bb14.i.i17
  %_30.i.i21 = and i8 %x.i.i18, 31
  %init.i.i22 = zext nneg i8 %_30.i.i21 to i32
  %_7.i10.i.i24 = icmp ne ptr %spec.select56, %_7.i8
  tail call void @llvm.assume(i1 %_7.i10.i.i24)
  %_18.i12.i.i25 = getelementptr inbounds nuw i8, ptr %spec.select56, i64 1
  %y.i.i26 = load i8, ptr %spec.select56, align 1, !noalias !1635, !noundef !37
  %_34.i.i27 = shl nuw nsw i32 %init.i.i22, 6
  %_36.i.i28 = and i8 %y.i.i26, 63
  %_35.i.i29 = zext nneg i8 %_36.i.i28 to i32
  %5 = or disjoint i32 %_34.i.i27, %_35.i.i29
  %_13.i.i30 = icmp ugt i8 %x.i.i18, -33
  br i1 %_13.i.i30, label %bb6.i.i32, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb982107525a3c91E.exit54"

bb3.i.i52:                                        ; preds = %bb14.i.i17
  %_7.i.i53 = zext nneg i8 %x.i.i18 to i32
  br label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb982107525a3c91E.exit54"

bb6.i.i32:                                        ; preds = %bb4.i.i20
  %_7.i17.i.i33 = icmp ne ptr %_18.i12.i.i25, %_7.i8
  tail call void @llvm.assume(i1 %_7.i17.i.i33)
  %_18.i19.i.i34 = getelementptr inbounds nuw i8, ptr %spec.select56, i64 2
  %z.i.i35 = load i8, ptr %_18.i12.i.i25, align 1, !noalias !1635, !noundef !37
  %_40.i.i36 = shl nuw nsw i32 %_35.i.i29, 6
  %_42.i.i37 = and i8 %z.i.i35, 63
  %_41.i.i38 = zext nneg i8 %_42.i.i37 to i32
  %y_z.i.i39 = or disjoint i32 %_40.i.i36, %_41.i.i38
  %_20.i.i40 = shl nuw nsw i32 %init.i.i22, 12
  %6 = or disjoint i32 %y_z.i.i39, %_20.i.i40
  %_21.i.i41 = icmp ugt i8 %x.i.i18, -17
  br i1 %_21.i.i41, label %bb8.i.i42, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb982107525a3c91E.exit54"

bb8.i.i42:                                        ; preds = %bb6.i.i32
  %_7.i24.i.i43 = icmp ne ptr %_18.i19.i.i34, %_7.i8
  tail call void @llvm.assume(i1 %_7.i24.i.i43)
  %_18.i26.i.i44 = getelementptr inbounds nuw i8, ptr %spec.select56, i64 3
  %w.i.i45 = load i8, ptr %_18.i19.i.i34, align 1, !noalias !1635, !noundef !37
  %_26.i.i46 = shl nuw nsw i32 %init.i.i22, 18
  %_25.i.i47 = and i32 %_26.i.i46, 1835008
  %_46.i.i48 = shl nuw nsw i32 %y_z.i.i39, 6
  %_48.i.i49 = and i8 %w.i.i45, 63
  %_47.i.i50 = zext nneg i8 %_48.i.i49 to i32
  %_27.i.i51 = or disjoint i32 %_46.i.i48, %_47.i.i50
  %7 = or disjoint i32 %_27.i.i51, %_25.i.i47
  br label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb982107525a3c91E.exit54"

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb982107525a3c91E.exit54": ; preds = %bb10, %bb4.i.i20, %bb3.i.i52, %bb6.i.i32, %bb8.i.i42
  %iter1.sroa.0.2 = phi ptr [ %spec.select56, %bb10 ], [ %spec.select56, %bb3.i.i52 ], [ %_18.i26.i.i44, %bb8.i.i42 ], [ %_18.i19.i.i34, %bb6.i.i32 ], [ %_18.i12.i.i25, %bb4.i.i20 ]
  %spec.select.i31 = phi i32 [ 1114112, %bb10 ], [ %_7.i.i53, %bb3.i.i52 ], [ %7, %bb8.i.i42 ], [ %6, %bb6.i.i32 ], [ %5, %bb4.i.i20 ]
  %.not7 = icmp eq i32 %spec.select.i31, 1114112
  br i1 %.not7, label %bb13, label %bb12

bb12:                                             ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb982107525a3c91E.exit54"
  %8 = icmp samesign ult i32 %spec.select.i31, 1114112
  tail call void @llvm.assume(i1 %8)
  %9 = xor i32 %spec.select.i31, %res.sroa.0.1
  br label %bb10

bb13:                                             ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb982107525a3c91E.exit54"
  %_0 = and i32 %res.sroa.0.1, 255
  ret i32 %_0
}
