define noundef range(i32 0, 2) i32 @f_gold(i32 noundef %0) unnamed_addr #4 {
start:
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse.backedge, %start
  %.tr = phi i32 [ %0, %start ], [ %.tr.be, %tailrecurse.backedge ]
  %spec.select = tail call i32 @llvm.abs.i32(i32 %.tr, i1 false)
  switch i32 %spec.select, label %bb8.preheader [
    i32 0, label %bb18.loopexit
    i32 1, label %bb18
  ]

bb8.preheader:                                    ; preds = %tailrecurse
  %_1111 = icmp sgt i32 %spec.select, 0
  br i1 %_1111, label %bb9, label %tailrecurse.backedge

bb16.loopexit:                                    ; preds = %bb9
  %1 = sub i32 %spec.select10, %even_count.sroa.0.1
  br label %tailrecurse.backedge

tailrecurse.backedge:                             ; preds = %bb16.loopexit, %bb8.preheader
  %.tr.be = phi i32 [ 0, %bb8.preheader ], [ %1, %bb16.loopexit ]
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

bb18.loopexit:                                    ; preds = %tailrecurse
  br label %bb18

bb18:                                             ; preds = %tailrecurse, %bb18.loopexit
  %_0.sroa.0.0 = phi i32 [ 1, %bb18.loopexit ], [ 0, %tailrecurse ]
  ret i32 %_0.sroa.0.0
}
