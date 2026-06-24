define noundef range(i32 0, 1114112) i32 @f_gold(ptr noalias noundef nonnull readonly align 4 captures(none) %str.0, i64 noundef range(i64 0, 2305843009213693952) %str.1) unnamed_addr #1 {
start:
  %_83.not = icmp eq i64 %str.1, 0
  br i1 %_83.not, label %bb6, label %bb7

bb7:                                              ; preds = %start, %bb5
  %iter.sroa.0.04 = phi i64 [ %0, %bb5 ], [ 0, %start ]
  %0 = add nuw nsw i64 %iter.sroa.0.04, 1
  %1 = getelementptr inbounds nuw i32, ptr %str.0, i64 %iter.sroa.0.04
  %_6 = load i32, ptr %1, align 4, !range !1031, !noundef !23
  %2 = add nsw i32 %_6, -65
  %or.cond = icmp ult i32 %2, 26
  br i1 %or.cond, label %bb6, label %bb9

bb6:                                              ; preds = %bb5, %bb12, %bb7, %start
  %_0.sroa.0.0 = phi i32 [ 0, %start ], [ %_6, %bb7 ], [ %_6, %bb12 ], [ 0, %bb5 ]
  ret i32 %_0.sroa.0.0

bb9:                                              ; preds = %bb7
  %_14 = icmp samesign ugt i32 %_6, 127
  br i1 %_14, label %bb12, label %bb5

bb12:                                             ; preds = %bb9
; call core::unicode::unicode_data::uppercase::lookup
  %_5 = tail call noundef zeroext i1 @_ZN4core7unicode12unicode_data9uppercase6lookup17h357c9c1057b36eafE(i32 noundef %_6)
  br i1 %_5, label %bb6, label %bb5

bb5:                                              ; preds = %bb9, %bb12
  %exitcond.not = icmp eq i64 %0, %str.1
  br i1 %exitcond.not, label %bb6, label %bb7
}
