define noundef range(i32 0, 2) i32 @f_gold(ptr noalias noundef nonnull readonly align 4 captures(none) %notes.0, i64 noundef range(i64 0, 2305843009213693952) %notes.1, i32 noundef %n) unnamed_addr #1 {
start:
  %_2211 = icmp sgt i32 %n, 0
  br i1 %_2211, label %bb22.preheader, label %bb21

bb22.preheader:                                   ; preds = %start
  %wide.trip.count = zext nneg i32 %n to i64
  br label %bb22

bb22:                                             ; preds = %bb22.preheader, %bb19
  %indvars.iv = phi i64 [ 0, %bb22.preheader ], [ %indvars.iv.next, %bb19 ]
  %five_count.sroa.0.014 = phi i32 [ 0, %bb22.preheader ], [ %five_count.sroa.0.1, %bb19 ]
  %ten_count.sroa.0.013 = phi i32 [ 0, %bb22.preheader ], [ %ten_count.sroa.0.1, %bb19 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv, %notes.1
  br i1 %exitcond.not, label %panic, label %bb2

bb21:                                             ; preds = %bb19, %bb14, %bb6, %start
  %_0.sroa.0.0 = phi i32 [ 1, %start ], [ 0, %bb6 ], [ 0, %bb14 ], [ 1, %bb19 ]
  ret i32 %_0.sroa.0.0

bb2:                                              ; preds = %bb22
  %0 = getelementptr inbounds nuw i32, ptr %notes.0, i64 %indvars.iv
  %_8 = load i32, ptr %0, align 4, !noundef !23
  switch i32 %_8, label %bb9 [
    i32 5, label %bb3
    i32 10, label %bb6
  ]

panic:                                            ; preds = %bb22
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %notes.1, i64 noundef %notes.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_dfb2db53cc790c2bb335379f8501213a) #18
  unreachable

bb3:                                              ; preds = %bb2
  %1 = add i32 %five_count.sroa.0.014, 1
  br label %bb19

bb9:                                              ; preds = %bb2
  %_16 = icmp sgt i32 %five_count.sroa.0.014, 0
  %_18 = icmp sgt i32 %ten_count.sroa.0.013, 0
  %or.cond = select i1 %_16, i1 %_18, i1 false
  br i1 %or.cond, label %bb11, label %bb14

bb6:                                              ; preds = %bb2
  %_14 = icmp sgt i32 %five_count.sroa.0.014, 0
  br i1 %_14, label %bb7, label %bb21

bb14:                                             ; preds = %bb9
  %_20 = icmp sgt i32 %five_count.sroa.0.014, 2
  br i1 %_20, label %bb15, label %bb21

bb11:                                             ; preds = %bb9
  %2 = add nsw i32 %five_count.sroa.0.014, -1
  %3 = add nsw i32 %ten_count.sroa.0.013, -1
  br label %bb19

bb15:                                             ; preds = %bb14
  %4 = add nsw i32 %five_count.sroa.0.014, -3
  br label %bb19

bb7:                                              ; preds = %bb6
  %5 = add nsw i32 %five_count.sroa.0.014, -1
  %6 = add i32 %ten_count.sroa.0.013, 1
  br label %bb19

bb19:                                             ; preds = %bb7, %bb11, %bb15, %bb3
  %ten_count.sroa.0.1 = phi i32 [ %ten_count.sroa.0.013, %bb3 ], [ %6, %bb7 ], [ %3, %bb11 ], [ %ten_count.sroa.0.013, %bb15 ]
  %five_count.sroa.0.1 = phi i32 [ %1, %bb3 ], [ %5, %bb7 ], [ %2, %bb11 ], [ %4, %bb15 ]
  %exitcond19.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond19.not, label %bb21, label %bb22
}
