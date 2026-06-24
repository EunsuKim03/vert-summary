define noundef i32 @f_gold(ptr noalias noundef nonnull readonly align 1 captures(address) %s.0, i64 noundef %s.1) unnamed_addr #4 {
start:
  %_18 = getelementptr inbounds nuw i8, ptr %s.0, i64 %s.1
  %_7.i.i10 = icmp samesign eq i64 %s.1, 0
  br i1 %_7.i.i10, label %bb8, label %bb14.i

bb14.i:                                           ; preds = %start, %bb6
  %c_count.sroa.0.014 = phi i32 [ %c_count.sroa.0.1, %bb6 ], [ 0, %start ]
  %a_count.sroa.0.013 = phi i32 [ %a_count.sroa.0.1, %bb6 ], [ 0, %start ]
  %b_count.sroa.0.012 = phi i32 [ %b_count.sroa.0.1, %bb6 ], [ 0, %start ]
  %iter.sroa.0.011 = phi ptr [ %iter.sroa.0.1.ph, %bb6 ], [ %s.0, %start ]
  %_18.i.i = getelementptr inbounds nuw i8, ptr %iter.sroa.0.011, i64 1
  %x.i = load i8, ptr %iter.sroa.0.011, align 1, !noalias !1031, !noundef !23
  %_6.i = icmp sgt i8 %x.i, -1
  br i1 %_6.i, label %bb3.i, label %bb4.i

bb4.i:                                            ; preds = %bb14.i
  %_30.i = and i8 %x.i, 31
  %init.i = zext nneg i8 %_30.i to i32
  %_7.i10.i = icmp ne ptr %_18.i.i, %_18
  tail call void @llvm.assume(i1 %_7.i10.i)
  %_18.i12.i = getelementptr inbounds nuw i8, ptr %iter.sroa.0.011, i64 2
  %y.i = load i8, ptr %_18.i.i, align 1, !noalias !1031, !noundef !23
  %_34.i = shl nuw nsw i32 %init.i, 6
  %_36.i = and i8 %y.i, 63
  %_35.i = zext nneg i8 %_36.i to i32
  %0 = or disjoint i32 %_34.i, %_35.i
  %_13.i = icmp samesign ugt i8 %x.i, -33
  br i1 %_13.i, label %bb6.i, label %bb9

bb3.i:                                            ; preds = %bb14.i
  %_7.i = zext nneg i8 %x.i to i32
  br label %bb9

bb6.i:                                            ; preds = %bb4.i
  %_7.i17.i = icmp ne ptr %_18.i12.i, %_18
  tail call void @llvm.assume(i1 %_7.i17.i)
  %_18.i19.i = getelementptr inbounds nuw i8, ptr %iter.sroa.0.011, i64 3
  %z.i = load i8, ptr %_18.i12.i, align 1, !noalias !1031, !noundef !23
  %_40.i = shl nuw nsw i32 %_35.i, 6
  %_42.i = and i8 %z.i, 63
  %_41.i = zext nneg i8 %_42.i to i32
  %y_z.i = or disjoint i32 %_40.i, %_41.i
  %_20.i = shl nuw nsw i32 %init.i, 12
  %1 = or disjoint i32 %y_z.i, %_20.i
  %_21.i = icmp samesign ugt i8 %x.i, -17
  br i1 %_21.i, label %bb8.i, label %bb9

bb8.i:                                            ; preds = %bb6.i
  %_7.i24.i = icmp ne ptr %_18.i19.i, %_18
  tail call void @llvm.assume(i1 %_7.i24.i)
  %_18.i26.i = getelementptr inbounds nuw i8, ptr %iter.sroa.0.011, i64 4
  %w.i = load i8, ptr %_18.i19.i, align 1, !noalias !1031, !noundef !23
  %_26.i = shl nuw nsw i32 %init.i, 18
  %_25.i = and i32 %_26.i, 1835008
  %_46.i = shl nuw nsw i32 %y_z.i, 6
  %_48.i = and i8 %w.i, 63
  %_47.i = zext nneg i8 %_48.i to i32
  %_27.i = or disjoint i32 %_46.i, %_47.i
  %2 = or disjoint i32 %_27.i, %_25.i
  br label %bb9

bb9:                                              ; preds = %bb3.i, %bb8.i, %bb6.i, %bb4.i
  %iter.sroa.0.1.ph = phi ptr [ %_18.i12.i, %bb4.i ], [ %_18.i19.i, %bb6.i ], [ %_18.i26.i, %bb8.i ], [ %_18.i.i, %bb3.i ]
  %_0.sroa.4.0.i.ph = phi i32 [ %0, %bb4.i ], [ %1, %bb6.i ], [ %2, %bb8.i ], [ %_7.i, %bb3.i ]
  %3 = icmp samesign ult i32 %_0.sroa.4.0.i.ph, 1114112
  tail call void @llvm.assume(i1 %3)
  switch i32 %_0.sroa.4.0.i.ph, label %bb6 [
    i32 97, label %bb5
    i32 98, label %bb4
    i32 99, label %bb3
  ]

bb8:                                              ; preds = %bb6, %start
  %c_count.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %c_count.sroa.0.1, %bb6 ]
  ret i32 %c_count.sroa.0.0.lcssa

bb6:                                              ; preds = %bb3, %bb4, %bb5, %bb9
  %b_count.sroa.0.1 = phi i32 [ %b_count.sroa.0.012, %bb9 ], [ %b_count.sroa.0.012, %bb5 ], [ %5, %bb4 ], [ %b_count.sroa.0.012, %bb3 ]
  %a_count.sroa.0.1 = phi i32 [ %a_count.sroa.0.013, %bb9 ], [ %4, %bb5 ], [ %a_count.sroa.0.013, %bb4 ], [ %a_count.sroa.0.013, %bb3 ]
  %c_count.sroa.0.1 = phi i32 [ %c_count.sroa.0.014, %bb9 ], [ %c_count.sroa.0.014, %bb5 ], [ %c_count.sroa.0.014, %bb4 ], [ %6, %bb3 ]
  %_7.i.i = icmp eq ptr %iter.sroa.0.1.ph, %_18
  br i1 %_7.i.i, label %bb8, label %bb14.i

bb5:                                              ; preds = %bb9
  %_8 = shl i32 %a_count.sroa.0.013, 1
  %4 = or disjoint i32 %_8, 1
  br label %bb6

bb4:                                              ; preds = %bb9
  %_10 = shl i32 %b_count.sroa.0.012, 1
  %5 = add i32 %a_count.sroa.0.013, %_10
  br label %bb6

bb3:                                              ; preds = %bb9
  %_12 = shl i32 %c_count.sroa.0.014, 1
  %6 = add i32 %_12, %b_count.sroa.0.012
  br label %bb6
}
