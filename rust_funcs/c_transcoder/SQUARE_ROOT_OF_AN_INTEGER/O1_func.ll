define noundef i32 @f_gold(i32 noundef %x) unnamed_addr #12 {
start:
  %switch = icmp ult i32 %x, 2
  br i1 %switch, label %bb7, label %bb4.preheader

bb4.preheader:                                    ; preds = %start
  %_6.not4 = icmp slt i32 %x, 1
  br i1 %_6.not4, label %bb7, label %bb5

bb5:                                              ; preds = %bb4.preheader, %bb5
  %i.sroa.0.05 = phi i32 [ %0, %bb5 ], [ 1, %bb4.preheader ]
  %0 = add i32 %i.sroa.0.05, 1
  %1 = mul i32 %0, %0
  %_6.not = icmp sgt i32 %1, %x
  br i1 %_6.not, label %bb7, label %bb5

bb7:                                              ; preds = %bb5, %bb4.preheader, %start
  %_0.sroa.0.0 = phi i32 [ %x, %start ], [ 0, %bb4.preheader ], [ %i.sroa.0.05, %bb5 ]
  ret i32 %_0.sroa.0.0
}
