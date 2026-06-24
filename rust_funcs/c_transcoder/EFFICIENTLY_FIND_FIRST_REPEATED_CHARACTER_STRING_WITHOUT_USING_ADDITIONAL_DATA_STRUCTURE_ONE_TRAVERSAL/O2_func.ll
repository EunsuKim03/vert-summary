define noundef i32 @f_gold(ptr noalias noundef nonnull readonly align 1 captures(address) %str.0, i64 noundef range(i64 0, -9223372036854775808) %str.1) unnamed_addr #4 personality ptr @rust_eh_personality {
start:
  %_20 = getelementptr inbounds nuw i8, ptr %str.0, i64 %str.1
  %_7.i.i9 = icmp samesign eq i64 %str.1, 0
  br i1 %_7.i.i9, label %bb8, label %bb4

bb4:                                              ; preds = %start, %bb7
  %checker.sroa.0.012 = phi i32 [ %2, %bb7 ], [ 0, %start ]
  %iter.sroa.0.011 = phi ptr [ %_18.i.i, %bb7 ], [ %str.0, %start ]
  %iter.sroa.8.010 = phi i32 [ %_8.0.i, %bb7 ], [ 0, %start ]
  %val = load i8, ptr %iter.sroa.0.011, align 1, !noundef !23
  %val1 = add i8 %val, 31
  %0 = and i8 %val1, 31
  %1 = zext nneg i8 %0 to i32
  %_15 = shl nuw i32 1, %1
  %_13 = and i32 %_15, %checker.sroa.0.012
  %_12 = icmp sgt i32 %_13, 0
  br i1 %_12, label %bb8, label %bb7

bb8:                                              ; preds = %bb7, %bb4, %start
  %_0.sroa.0.0 = phi i32 [ -1, %start ], [ %iter.sroa.8.010, %bb4 ], [ -1, %bb7 ]
  ret i32 %_0.sroa.0.0

bb7:                                              ; preds = %bb4
  %_8.0.i = add i32 %iter.sroa.8.010, 1
  %_18.i.i = getelementptr inbounds nuw i8, ptr %iter.sroa.0.011, i64 1
  %2 = or i32 %_15, %checker.sroa.0.012
  %_7.i.i = icmp eq ptr %_18.i.i, %_20
  br i1 %_7.i.i, label %bb8, label %bb4
}
