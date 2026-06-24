define noundef i32 @f_gold(i32 noundef %x) unnamed_addr #12 {
start:
  %switch = icmp ult i32 %x, 2
  br i1 %switch, label %bb12, label %bb4.preheader

bb4.preheader:                                    ; preds = %start
  %_7.not9 = icmp slt i32 %x, 1
  br i1 %_7.not9, label %bb12, label %bb5

bb5:                                              ; preds = %bb4.preheader, %bb7
  %start1.sroa.0.012 = phi i32 [ %start1.sroa.0.1, %bb7 ], [ 1, %bb4.preheader ]
  %end.sroa.0.011 = phi i32 [ %end.sroa.0.1, %bb7 ], [ %x, %bb4.preheader ]
  %ans.sroa.0.010 = phi i32 [ %ans.sroa.0.1, %bb7 ], [ 0, %bb4.preheader ]
  %_10 = add i32 %start1.sroa.0.012, %end.sroa.0.011
  %0 = sdiv i32 %_10, 2
  %_14 = mul i32 %0, %0
  %_13 = icmp eq i32 %_14, %x
  br i1 %_13, label %bb12, label %bb7

bb12:                                             ; preds = %bb7, %bb5, %bb4.preheader, %start
  %mid.sroa.0.0 = phi i32 [ %x, %start ], [ 0, %bb4.preheader ], [ %0, %bb5 ], [ %ans.sroa.0.1, %bb7 ]
  ret i32 %mid.sroa.0.0

bb7:                                              ; preds = %bb5
  %_15 = icmp slt i32 %_14, %x
  %1 = add nsw i32 %0, 1
  %2 = add nsw i32 %0, -1
  %ans.sroa.0.1 = select i1 %_15, i32 %0, i32 %ans.sroa.0.010
  %end.sroa.0.1 = select i1 %_15, i32 %end.sroa.0.011, i32 %2
  %start1.sroa.0.1 = select i1 %_15, i32 %1, i32 %start1.sroa.0.012
  %_7.not = icmp sgt i32 %start1.sroa.0.1, %end.sroa.0.1
  br i1 %_7.not, label %bb12, label %bb5
}
