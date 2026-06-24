define noundef range(i32 0, 1114112) i32 @f_gold(ptr noalias noundef nonnull readonly align 4 captures(none) %str.0, i64 noundef range(i64 0, 2305843009213693952) %str.1) unnamed_addr #3 {
start:
  %_0.i.i.i4.not = icmp eq i64 %str.1, 0
  br i1 %_0.i.i.i4.not, label %bb12, label %bb7

bb12:                                             ; preds = %bb2.backedge, %bb7, %bb4.i, %start
  %_0.sroa.0.0 = phi i32 [ 0, %start ], [ 0, %bb2.backedge ], [ %_11, %bb7 ], [ %_11, %bb4.i ]
  ret i32 %_0.sroa.0.0

bb7:                                              ; preds = %start, %bb2.backedge
  %spec.select7 = phi i64 [ %spec.select, %bb2.backedge ], [ 1, %start ]
  %iter.sroa.0.06 = phi i64 [ %spec.select7, %bb2.backedge ], [ 0, %start ]
  %0 = getelementptr inbounds nuw i32, ptr %str.0, i64 %iter.sroa.0.06
  %_11 = load i32, ptr %0, align 4, !range !1630, !noundef !37
  %1 = add nsw i32 %_11, -65
  %or.cond.i = icmp ult i32 %1, 26
  br i1 %or.cond.i, label %bb12, label %bb1.i

bb1.i:                                            ; preds = %bb7
  %_4.i = icmp samesign ugt i32 %_11, 127
  br i1 %_4.i, label %bb4.i, label %bb2.backedge

bb4.i:                                            ; preds = %bb1.i
; call core::unicode::unicode_data::uppercase::lookup
  %2 = tail call noundef zeroext i1 @_ZN4core7unicode12unicode_data9uppercase6lookup17h357c9c1057b36eafE(i32 noundef range(i32 0, 1114112) %_11)
  br i1 %2, label %bb12, label %bb2.backedge

bb2.backedge:                                     ; preds = %bb4.i, %bb1.i
  %_0.i.i.i = icmp ult i64 %spec.select7, %str.1
  %_0.i1.i.i = zext i1 %_0.i.i.i to i64
  %spec.select = add nuw i64 %spec.select7, %_0.i1.i.i
  br i1 %_0.i.i.i, label %bb7, label %bb12
}
