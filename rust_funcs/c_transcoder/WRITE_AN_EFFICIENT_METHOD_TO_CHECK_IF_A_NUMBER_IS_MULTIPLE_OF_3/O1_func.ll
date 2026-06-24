define noundef range(i32 0, 2) i32 @f_gold(i32 noundef %0) unnamed_addr #12 {
start:
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb16, %start
  %.tr = phi i32 [ %0, %start ], [ %_19, %bb16 ]
  %spec.select = tail call i32 @llvm.abs.i32(i32 %.tr, i1 false)
  switch i32 %spec.select, label %bb9 [
    i32 0, label %bb19
    i32 1, label %bb6
  ]

bb6:                                              ; preds = %tailrecurse
  br label %bb19

bb16:                                             ; preds = %bb9
  %_19 = sub i32 %spec.select10, %even_count.sroa.0.1
  br label %tailrecurse

bb9:                                              ; preds = %tailrecurse, %bb9
  %n.sroa.0.114 = phi i32 [ %2, %bb9 ], [ %spec.select, %tailrecurse ]
  %odd_count.sroa.0.013 = phi i32 [ %spec.select10, %bb9 ], [ 0, %tailrecurse ]
  %even_count.sroa.0.012 = phi i32 [ %even_count.sroa.0.1, %bb9 ], [ 0, %tailrecurse ]
  %_14 = and i32 %n.sroa.0.114, 1
  %spec.select10 = add i32 %_14, %odd_count.sroa.0.013
  %_17 = lshr i32 %n.sroa.0.114, 1
  %1 = and i32 %_17, 1
  %even_count.sroa.0.1 = add i32 %1, %even_count.sroa.0.012
  %2 = ashr i32 %n.sroa.0.114, 2
  %_11.not = icmp ult i32 %n.sroa.0.114, 4
  br i1 %_11.not, label %bb16, label %bb9

bb19:                                             ; preds = %tailrecurse, %bb6
  %_0.sroa.0.0 = phi i32 [ 0, %bb6 ], [ 1, %tailrecurse ]
  ret i32 %_0.sroa.0.0
}
