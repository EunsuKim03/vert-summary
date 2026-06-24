define noundef range(i32 0, 2) i32 @f_gold(ptr noalias noundef nonnull readonly align 4 captures(none) %notes.0, i64 noundef range(i64 0, 2305843009213693952) %notes.1, i32 noundef %n) unnamed_addr #3 {
start:
  %_0.i.i.i12 = icmp sgt i32 %n, 0
  br i1 %_0.i.i.i12, label %bb5, label %bb26

bb5:                                              ; preds = %start, %bb24
  %spec.select16 = phi i32 [ %spec.select, %bb24 ], [ 1, %start ]
  %five_count.sroa.0.015 = phi i32 [ %five_count.sroa.0.1, %bb24 ], [ 0, %start ]
  %ten_count.sroa.0.014 = phi i32 [ %ten_count.sroa.0.1, %bb24 ], [ 0, %start ]
  %iter.sroa.0.013 = phi i32 [ %spec.select16, %bb24 ], [ 0, %start ]
  %_14 = zext nneg i32 %iter.sroa.0.013 to i64
  %_16 = icmp samesign ugt i64 %notes.1, %_14
  br i1 %_16, label %bb7, label %panic

bb26:                                             ; preds = %bb24, %bb11, %bb19, %start
  %_0.sroa.0.0 = phi i32 [ 1, %start ], [ 1, %bb24 ], [ 0, %bb11 ], [ 0, %bb19 ]
  ret i32 %_0.sroa.0.0

bb7:                                              ; preds = %bb5
  %0 = getelementptr inbounds nuw i32, ptr %notes.0, i64 %_14
  %_13 = load i32, ptr %0, align 4, !noundef !37
  switch i32 %_13, label %bb14 [
    i32 5, label %bb8
    i32 10, label %bb11
  ]

panic:                                            ; preds = %bb5
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_14, i64 noundef %notes.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_dfb2db53cc790c2bb335379f8501213a) #24
  unreachable

bb8:                                              ; preds = %bb7
  %1 = add i32 %five_count.sroa.0.015, 1
  br label %bb24

bb14:                                             ; preds = %bb7
  %_21 = icmp sgt i32 %five_count.sroa.0.015, 0
  %_23 = icmp sgt i32 %ten_count.sroa.0.014, 0
  %or.cond = select i1 %_21, i1 %_23, i1 false
  br i1 %or.cond, label %bb16, label %bb19

bb11:                                             ; preds = %bb7
  %_19 = icmp sgt i32 %five_count.sroa.0.015, 0
  br i1 %_19, label %bb12, label %bb26

bb19:                                             ; preds = %bb14
  %_25 = icmp sgt i32 %five_count.sroa.0.015, 2
  br i1 %_25, label %bb20, label %bb26

bb16:                                             ; preds = %bb14
  %2 = add nsw i32 %five_count.sroa.0.015, -1
  %3 = add nsw i32 %ten_count.sroa.0.014, -1
  br label %bb24

bb20:                                             ; preds = %bb19
  %4 = add nsw i32 %five_count.sroa.0.015, -3
  br label %bb24

bb12:                                             ; preds = %bb11
  %5 = add nsw i32 %five_count.sroa.0.015, -1
  %6 = add i32 %ten_count.sroa.0.014, 1
  br label %bb24

bb24:                                             ; preds = %bb12, %bb16, %bb20, %bb8
  %ten_count.sroa.0.1 = phi i32 [ %ten_count.sroa.0.014, %bb8 ], [ %6, %bb12 ], [ %3, %bb16 ], [ %ten_count.sroa.0.014, %bb20 ]
  %five_count.sroa.0.1 = phi i32 [ %1, %bb8 ], [ %5, %bb12 ], [ %2, %bb16 ], [ %4, %bb20 ]
  %_0.i.i.i = icmp slt i32 %spec.select16, %n
  %7 = zext i1 %_0.i.i.i to i32
  %spec.select = add nuw nsw i32 %spec.select16, %7
  br i1 %_0.i.i.i, label %bb5, label %bb26
}
