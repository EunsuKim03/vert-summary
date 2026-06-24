define noundef range(i32 0, 2) i32 @f_gold(i32 noundef %0) unnamed_addr #12 {
start:
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb16, %start
  %.tr = phi i32 [ %0, %start ], [ %_19, %bb16 ]
  %spec.select = tail call i32 @llvm.abs.i32(i32 %.tr, i1 false)
  switch i32 %spec.select, label %bb8.preheader [
    i32 0, label %bb18
    i32 1, label %bb6
  ]

bb8.preheader:                                    ; preds = %tailrecurse
  %_1111 = icmp sgt i32 %spec.select, 0
  br i1 %_1111, label %bb9, label %bb16

bb6:                                              ; preds = %tailrecurse
  br label %bb18

bb16.loopexit:                                    ; preds = %bb9
  %1 = sub i32 %spec.select10, %even_count.sroa.0.1
  br label %bb16

bb16:                                             ; preds = %bb16.loopexit, %bb8.preheader
  %_19 = phi i32 [ 0, %bb8.preheader ], [ %1, %bb16.loopexit ]
  br label %tailrecurse

bb9:                                              ; preds = %bb8.preheader, %bb9
  %n.sroa.0.114 = phi i32 [ %3, %bb9 ], [ %spec.select, %bb8.preheader ]
  %odd_count.sroa.0.013 = phi i32 [ %spec.select10, %bb9 ], [ 0, %bb8.preheader ]
  %even_count.sroa.0.012 = phi i32 [ %even_count.sroa.0.1, %bb9 ], [ 0, %bb8.preheader ]
  %_14 = and i32 %n.sroa.0.114, 1
  %spec.select10 = add i32 %_14, %odd_count.sroa.0.013
  %_17 = lshr i32 %n.sroa.0.114, 1
  %2 = and i32 %_17, 1
  %even_count.sroa.0.1 = add i32 %2, %even_count.sroa.0.012
  %3 = lshr i32 %n.sroa.0.114, 2
  %_11.not = icmp samesign ult i32 %n.sroa.0.114, 4
  br i1 %_11.not, label %bb16.loopexit, label %bb9

bb18:                                             ; preds = %tailrecurse, %bb6
  %_0.sroa.0.0 = phi i32 [ 0, %bb6 ], [ 1, %tailrecurse ]
  ret i32 %_0.sroa.0.0
}
