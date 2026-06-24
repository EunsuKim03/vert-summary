define noundef i32 @f_gold(i32 noundef %n, i32 noundef %a, i32 noundef %b) unnamed_addr #4 {
start:
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb4, %start
  %n.tr = phi i32 [ %n, %start ], [ %_6, %bb4 ]
  %a.tr = phi i32 [ %a, %start ], [ %b.tr, %bb4 ]
  %b.tr = phi i32 [ %b, %start ], [ %_7, %bb4 ]
  switch i32 %n.tr, label %bb4 [
    i32 0, label %bb6.loopexit
    i32 1, label %bb6
  ]

bb4:                                              ; preds = %tailrecurse
  %_6 = add i32 %n.tr, -1
  %_7 = add i32 %b.tr, %a.tr
  br label %tailrecurse

bb6.loopexit:                                     ; preds = %tailrecurse
  br label %bb6

bb6:                                              ; preds = %tailrecurse, %bb6.loopexit
  %_0.sroa.0.0 = phi i32 [ %a.tr, %bb6.loopexit ], [ %b.tr, %tailrecurse ]
  ret i32 %_0.sroa.0.0
}
