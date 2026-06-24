define noundef i32 @f_gold(ptr noalias noundef nonnull readonly align 1 captures(address) %str.0, i64 noundef range(i64 0, -9223372036854775808) %str.1) unnamed_addr #12 personality ptr @rust_eh_personality {
start:
  %_6.i.i = getelementptr inbounds nuw i8, ptr %str.0, i64 %str.1
  %_7.i.i6.not = icmp samesign eq i64 %str.1, 0
  br i1 %_7.i.i6.not, label %bb11, label %bb7.preheader

bb7.preheader:                                    ; preds = %start
  %val17 = load i8, ptr %str.0, align 1, !noundef !37
  %val118 = add i8 %val17, 31
  %0 = and i8 %val118, 31
  %1 = zext nneg i8 %0 to i32
  %_1619 = shl nuw i32 1, %1
  br label %bb4

bb4:                                              ; preds = %bb7.preheader, %bb7
  %_1623 = phi i32 [ %_1619, %bb7.preheader ], [ %_16, %bb7 ]
  %checker.sroa.0.01222 = phi i32 [ 0, %bb7.preheader ], [ %2, %bb7 ]
  %str.0.pn = phi ptr [ %str.0, %bb7.preheader ], [ %spec.select1321, %bb7 ]
  %iter.sroa.8.11420 = phi i64 [ 1, %bb7.preheader ], [ %iter.sroa.8.1, %bb7 ]
  %spec.select1321 = getelementptr inbounds nuw i8, ptr %str.0.pn, i64 1
  %_7.i.i.not = icmp eq ptr %spec.select1321, %_6.i.i
  br i1 %_7.i.i.not, label %bb11, label %bb7

bb7:                                              ; preds = %bb4
  %2 = or i32 %_1623, %checker.sroa.0.01222
  %iter.sroa.8.1 = add i64 %iter.sroa.8.11420, 1
  %val = load i8, ptr %spec.select1321, align 1, !noundef !37
  %val1 = add i8 %val, 31
  %3 = and i8 %val1, 31
  %4 = zext nneg i8 %3 to i32
  %_16 = shl nuw i32 1, %4
  %_14 = and i32 %_16, %2
  %_13 = icmp sgt i32 %_14, 0
  br i1 %_13, label %bb9, label %bb4

bb11:                                             ; preds = %bb4, %start, %bb9
  %_0.sroa.0.0 = phi i32 [ %5, %bb9 ], [ -1, %start ], [ -1, %bb4 ]
  ret i32 %_0.sroa.0.0

bb9:                                              ; preds = %bb7
  %5 = trunc i64 %iter.sroa.8.11420 to i32
  br label %bb11
}
