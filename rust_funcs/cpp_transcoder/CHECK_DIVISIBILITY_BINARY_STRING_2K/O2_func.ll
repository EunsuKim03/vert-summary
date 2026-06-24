define noundef range(i32 0, 2) i32 @f_gold(ptr noalias noundef nonnull readonly align 1 captures(address) %str.0, i64 noundef %str.1, i32 noundef %k) unnamed_addr #4 {
start:
  %_1415 = icmp sgt i32 %k, 0
  br i1 %_1415, label %bb9.lr.ph, label %bb10

bb9.lr.ph:                                        ; preds = %start
  %_24 = getelementptr inbounds nuw i8, ptr %str.0, i64 %str.1
  %wide.trip.count = zext nneg i32 %k to i64
  br label %bb9

bb10:                                             ; preds = %bb5, %start
  %c.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %c.sroa.0.1, %bb5 ]
  %_12 = icmp eq i32 %c.sroa.0.0.lcssa, %k
  %. = zext i1 %_12 to i32
  ret i32 %.

bb9:                                              ; preds = %bb9.lr.ph, %bb5
  %indvars.iv = phi i64 [ 0, %bb9.lr.ph ], [ %indvars.iv.next, %bb5 ]
  %c.sroa.0.017 = phi i32 [ 0, %bb9.lr.ph ], [ %c.sroa.0.1, %bb5 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %_1211.not.i = icmp eq i64 %indvars.iv, 0
  br i1 %_1211.not.i, label %bb15, label %bb9.i

bb9.i:                                            ; preds = %bb9, %bb6.i
  %_9.sroa.6.0 = phi ptr [ %_9.sroa.6.2, %bb6.i ], [ %_24, %bb9 ]
  %iter.sroa.0.012.i = phi i64 [ %_16.i, %bb6.i ], [ 0, %bb9 ]
  %.not.i.i = icmp eq ptr %str.0, %_9.sroa.6.0
  br i1 %.not.i.i, label %bb5, label %bb17.i.i.i

bb17.i.i.i:                                       ; preds = %bb9.i
  %_24.i.i.i.i = getelementptr inbounds i8, ptr %_9.sroa.6.0, i64 -1
  %w.i.i.i = load i8, ptr %_24.i.i.i.i, align 1, !noalias !1031, !noundef !23
  %_6.i.i.i = icmp sgt i8 %w.i.i.i, -1
  br i1 %_6.i.i.i, label %bb6.i, label %bb4.i.i.i

bb4.i.i.i:                                        ; preds = %bb17.i.i.i
  %0 = icmp ne ptr %str.0, %_24.i.i.i.i
  tail call void @llvm.assume(i1 %0)
  %_24.i13.i.i.i = getelementptr inbounds i8, ptr %_9.sroa.6.0, i64 -2
  %z.i.i.i = load i8, ptr %_24.i13.i.i.i, align 1, !noalias !1031, !noundef !23
  %_26.i.i.i = and i8 %z.i.i.i, 31
  %1 = zext nneg i8 %_26.i.i.i to i32
  %_12.i.i.i = icmp slt i8 %z.i.i.i, -64
  br i1 %_12.i.i.i, label %bb6.i.i.i, label %"_ZN96_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h4439ae3a79c52123E.exit.i"

bb6.i.i.i:                                        ; preds = %bb4.i.i.i
  %2 = icmp ne ptr %str.0, %_24.i13.i.i.i
  tail call void @llvm.assume(i1 %2)
  %_24.i19.i.i.i = getelementptr inbounds i8, ptr %_9.sroa.6.0, i64 -3
  %y.i.i.i = load i8, ptr %_24.i19.i.i.i, align 1, !noalias !1031, !noundef !23
  %_31.i.i.i = and i8 %y.i.i.i, 15
  %3 = zext nneg i8 %_31.i.i.i to i32
  %_16.i.i.i = icmp slt i8 %y.i.i.i, -64
  br i1 %_16.i.i.i, label %bb8.i.i.i, label %bb11.i.i.i

bb8.i.i.i:                                        ; preds = %bb6.i.i.i
  %4 = icmp ne ptr %str.0, %_24.i19.i.i.i
  tail call void @llvm.assume(i1 %4)
  %_24.i25.i.i.i = getelementptr inbounds i8, ptr %_9.sroa.6.0, i64 -4
  %x.i.i.i = load i8, ptr %_24.i25.i.i.i, align 1, !noalias !1031, !noundef !23
  %_36.i.i.i = and i8 %x.i.i.i, 7
  %5 = zext nneg i8 %_36.i.i.i to i32
  %_37.i.i.i = shl nuw nsw i32 %5, 6
  %_39.i.i.i = and i8 %y.i.i.i, 63
  %_38.i.i.i = zext nneg i8 %_39.i.i.i to i32
  %6 = or disjoint i32 %_37.i.i.i, %_38.i.i.i
  br label %bb11.i.i.i

bb11.i.i.i:                                       ; preds = %bb8.i.i.i, %bb6.i.i.i
  %_9.sroa.6.4 = phi ptr [ %_24.i25.i.i.i, %bb8.i.i.i ], [ %_24.i19.i.i.i, %bb6.i.i.i ]
  %ch.sroa.0.1.i.i.i = phi i32 [ %6, %bb8.i.i.i ], [ %3, %bb6.i.i.i ]
  %_40.i.i.i = shl nuw nsw i32 %ch.sroa.0.1.i.i.i, 6
  %_42.i.i.i = and i8 %z.i.i.i, 63
  %_41.i.i.i = zext nneg i8 %_42.i.i.i to i32
  %7 = or disjoint i32 %_40.i.i.i, %_41.i.i.i
  br label %"_ZN96_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h4439ae3a79c52123E.exit.i"

"_ZN96_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h4439ae3a79c52123E.exit.i": ; preds = %bb11.i.i.i, %bb4.i.i.i
  %_9.sroa.6.1 = phi ptr [ %_9.sroa.6.4, %bb11.i.i.i ], [ %_24.i13.i.i.i, %bb4.i.i.i ]
  %ch.sroa.0.0.i.i.i = phi i32 [ %7, %bb11.i.i.i ], [ %1, %bb4.i.i.i ]
  %_43.i.i.i = shl nuw nsw i32 %ch.sroa.0.0.i.i.i, 6
  %_45.i.i.i = and i8 %w.i.i.i, 63
  %_44.i.i.i = zext nneg i8 %_45.i.i.i to i32
  %8 = or disjoint i32 %_43.i.i.i, %_44.i.i.i
  %.not.i = icmp eq i32 %8, 1114112
  br i1 %.not.i, label %bb5, label %bb6.i

bb6.i:                                            ; preds = %"_ZN96_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h4439ae3a79c52123E.exit.i", %bb17.i.i.i
  %_9.sroa.6.2 = phi ptr [ %_24.i.i.i.i, %bb17.i.i.i ], [ %_9.sroa.6.1, %"_ZN96_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h4439ae3a79c52123E.exit.i" ]
  %_16.i = add nuw nsw i64 %iter.sroa.0.012.i, 1
  %exitcond.not.i = icmp eq i64 %_16.i, %indvars.iv
  br i1 %exitcond.not.i, label %bb15, label %bb9.i

bb15:                                             ; preds = %bb6.i, %bb9
  %_9.sroa.6.5.ph = phi ptr [ %_24, %bb9 ], [ %_9.sroa.6.2, %bb6.i ]
  %9 = icmp eq ptr %str.0, %_9.sroa.6.5.ph
  br i1 %9, label %bb5, label %bb17.i

bb17.i:                                           ; preds = %bb15
  %_24.i.i = getelementptr inbounds i8, ptr %_9.sroa.6.5.ph, i64 -1
  %w.i = load i8, ptr %_24.i.i, align 1, !noalias !1038, !noundef !23
  %_6.i = icmp sgt i8 %w.i, -1
  br i1 %_6.i, label %bb3.i, label %bb4.i4

bb4.i4:                                           ; preds = %bb17.i
  %10 = icmp ne ptr %str.0, %_24.i.i
  tail call void @llvm.assume(i1 %10)
  %_24.i13.i = getelementptr inbounds i8, ptr %_9.sroa.6.5.ph, i64 -2
  %z.i = load i8, ptr %_24.i13.i, align 1, !noalias !1038, !noundef !23
  %_26.i = and i8 %z.i, 31
  %11 = zext nneg i8 %_26.i to i32
  %_12.i = icmp slt i8 %z.i, -64
  br i1 %_12.i, label %bb6.i5, label %bb13.i

bb3.i:                                            ; preds = %bb17.i
  %_8.i = zext nneg i8 %w.i to i32
  br label %bb18

bb6.i5:                                           ; preds = %bb4.i4
  %12 = icmp ne ptr %str.0, %_24.i13.i
  tail call void @llvm.assume(i1 %12)
  %_24.i19.i = getelementptr inbounds i8, ptr %_9.sroa.6.5.ph, i64 -3
  %y.i = load i8, ptr %_24.i19.i, align 1, !noalias !1038, !noundef !23
  %_31.i = and i8 %y.i, 15
  %13 = zext nneg i8 %_31.i to i32
  %_16.i6 = icmp slt i8 %y.i, -64
  br i1 %_16.i6, label %bb8.i, label %bb11.i

bb13.i:                                           ; preds = %bb11.i, %bb4.i4
  %ch.sroa.0.0.i = phi i32 [ %18, %bb11.i ], [ %11, %bb4.i4 ]
  %_43.i = shl nuw nsw i32 %ch.sroa.0.0.i, 6
  %_45.i = and i8 %w.i, 63
  %_44.i = zext nneg i8 %_45.i to i32
  %14 = or disjoint i32 %_43.i, %_44.i
  br label %bb18

bb8.i:                                            ; preds = %bb6.i5
  %15 = icmp ne ptr %str.0, %_24.i19.i
  tail call void @llvm.assume(i1 %15)
  %_24.i25.i = getelementptr inbounds i8, ptr %_9.sroa.6.5.ph, i64 -4
  %x.i = load i8, ptr %_24.i25.i, align 1, !noalias !1038, !noundef !23
  %_36.i = and i8 %x.i, 7
  %16 = zext nneg i8 %_36.i to i32
  %_37.i = shl nuw nsw i32 %16, 6
  %_39.i = and i8 %y.i, 63
  %_38.i = zext nneg i8 %_39.i to i32
  %17 = or disjoint i32 %_37.i, %_38.i
  br label %bb11.i

bb11.i:                                           ; preds = %bb8.i, %bb6.i5
  %ch.sroa.0.1.i = phi i32 [ %17, %bb8.i ], [ %13, %bb6.i5 ]
  %_40.i = shl nuw nsw i32 %ch.sroa.0.1.i, 6
  %_42.i = and i8 %z.i, 63
  %_41.i = zext nneg i8 %_42.i to i32
  %18 = or disjoint i32 %_40.i, %_41.i
  br label %bb13.i

bb18:                                             ; preds = %bb13.i, %bb3.i
  %_0.sroa.4.1.i.ph = phi i32 [ %_8.i, %bb3.i ], [ %14, %bb13.i ]
  %19 = icmp samesign ult i32 %_0.sroa.4.1.i.ph, 1114112
  tail call void @llvm.assume(i1 %19)
  %_7 = icmp eq i32 %_0.sroa.4.1.i.ph, 48
  %20 = zext i1 %_7 to i32
  %spec.select = add i32 %c.sroa.0.017, %20
  br label %bb5

bb5:                                              ; preds = %"_ZN96_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h4439ae3a79c52123E.exit.i", %bb9.i, %bb15, %bb18
  %c.sroa.0.1 = phi i32 [ %spec.select, %bb18 ], [ %c.sroa.0.017, %bb15 ], [ %c.sroa.0.017, %bb9.i ], [ %c.sroa.0.017, %"_ZN96_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h4439ae3a79c52123E.exit.i" ]
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb10, label %bb9
}
