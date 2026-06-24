define noundef i32 @f_gold(i32 noundef %0) unnamed_addr #12 {
start:
  %1 = and i32 %0, -2
  %or.cond = icmp eq i32 %1, 2
  br i1 %or.cond, label %bb4, label %bb6.preheader

bb6.preheader:                                    ; preds = %start
  %_77 = icmp sgt i32 %0, 4
  br i1 %_77, label %bb7, label %bb8

bb8:                                              ; preds = %bb7, %bb6.preheader
  %res.sroa.0.0.lcssa = phi i32 [ 1, %bb6.preheader ], [ %4, %bb7 ]
  %n.sroa.0.0.lcssa = phi i32 [ %0, %bb6.preheader ], [ %3, %bb7 ]
  %2 = mul i32 %n.sroa.0.0.lcssa, %res.sroa.0.0.lcssa
  br label %bb9

bb7:                                              ; preds = %bb6.preheader, %bb7
  %n.sroa.0.09 = phi i32 [ %3, %bb7 ], [ %0, %bb6.preheader ]
  %res.sroa.0.08 = phi i32 [ %4, %bb7 ], [ 1, %bb6.preheader ]
  %3 = add nsw i32 %n.sroa.0.09, -3
  %4 = mul i32 %res.sroa.0.08, 3
  %_7 = icmp sgt i32 %n.sroa.0.09, 7
  br i1 %_7, label %bb7, label %bb8

bb9:                                              ; preds = %bb4, %bb8
  %_0.sroa.0.0 = phi i32 [ %5, %bb4 ], [ %2, %bb8 ]
  ret i32 %_0.sroa.0.0

bb4:                                              ; preds = %start
  %5 = add nsw i32 %0, -1
  br label %bb9
}
