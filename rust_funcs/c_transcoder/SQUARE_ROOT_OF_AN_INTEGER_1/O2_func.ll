define noundef range(i32 -1073741824, 1073741824) i32 @f_gold(i32 noundef %x) unnamed_addr #4 {
start:
  %switch = icmp ult i32 %x, 2
  br i1 %switch, label %bb10, label %bb4.preheader

bb4.preheader:                                    ; preds = %start
  %_66 = add i32 %x, 1
  %0 = sdiv i32 %_66, 2
  %_107 = mul i32 %0, %0
  %_98 = icmp eq i32 %_107, %x
  br i1 %_98, label %bb10, label %bb6

bb6:                                              ; preds = %bb4.preheader, %bb6
  %_1011 = phi i32 [ %_10, %bb6 ], [ %_107, %bb4.preheader ]
  %1 = phi i32 [ %4, %bb6 ], [ %0, %bb4.preheader ]
  %start1.sroa.0.010 = phi i32 [ %start1.sroa.0.1, %bb6 ], [ 1, %bb4.preheader ]
  %end.sroa.0.09 = phi i32 [ %end.sroa.0.1, %bb6 ], [ %x, %bb4.preheader ]
  %_11 = icmp slt i32 %_1011, %x
  %2 = add nsw i32 %1, 1
  %3 = add nsw i32 %1, -1
  %end.sroa.0.1 = select i1 %_11, i32 %end.sroa.0.09, i32 %3
  %start1.sroa.0.1 = select i1 %_11, i32 %2, i32 %start1.sroa.0.010
  %_6 = add i32 %start1.sroa.0.1, %end.sroa.0.1
  %4 = sdiv i32 %_6, 2
  %_10 = mul i32 %4, %4
  %_9 = icmp eq i32 %_10, %x
  br i1 %_9, label %bb10, label %bb6

bb10:                                             ; preds = %bb6, %bb4.preheader, %start
  %ans.sroa.0.0 = phi i32 [ %x, %start ], [ %0, %bb4.preheader ], [ %4, %bb6 ]
  ret i32 %ans.sroa.0.0
}
