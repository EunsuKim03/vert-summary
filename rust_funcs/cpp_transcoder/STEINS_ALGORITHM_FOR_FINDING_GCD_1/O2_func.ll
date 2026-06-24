define noundef i32 @f_gold(i32 noundef %a, i32 noundef %b) unnamed_addr #4 {
start:
  %_349 = icmp eq i32 %a, %b
  br i1 %_349, label %common.ret45, label %bb2.lr.ph

bb2.lr.ph:                                        ; preds = %start, %tailrecurse.outer.backedge
  %b.tr.ph11 = phi i32 [ %b.tr.ph.be, %tailrecurse.outer.backedge ], [ %b, %start ]
  %a.tr.ph10 = phi i32 [ %a.tr.ph.be, %tailrecurse.outer.backedge ], [ %a, %start ]
  %_4 = icmp eq i32 %a.tr.ph10, 0
  %_7 = and i32 %a.tr.ph10, 1
  %_6 = icmp eq i32 %_7, 0
  br label %bb2

bb2:                                              ; preds = %bb2.lr.ph, %bb13
  %b.tr5 = phi i32 [ %b.tr.ph11, %bb2.lr.ph ], [ %_16, %bb13 ]
  br i1 %_4, label %common.ret45, label %bb4

bb4:                                              ; preds = %bb2
  %_5 = icmp eq i32 %b.tr5, 0
  br i1 %_5, label %common.ret45, label %bb6

bb6:                                              ; preds = %bb4
  br i1 %_6, label %bb7, label %bb8

bb8:                                              ; preds = %bb6
  %_15 = and i32 %b.tr5, 1
  %_14 = icmp eq i32 %_15, 0
  br i1 %_14, label %bb13, label %bb14

bb7:                                              ; preds = %bb6
  %_9 = and i32 %b.tr.ph11, 1
  %_8.not = icmp eq i32 %_9, 0
  br i1 %_8.not, label %bb11, label %tailrecurse.outer.backedge

bb14:                                             ; preds = %bb8
  %_17 = icmp sgt i32 %a.tr.ph10, %b.tr5
  br i1 %_17, label %bb16, label %bb17

bb13:                                             ; preds = %bb8
  %_16 = ashr exact i32 %b.tr5, 1
  %_3 = icmp eq i32 %a.tr.ph10, %_16
  br i1 %_3, label %common.ret45, label %bb2

bb17:                                             ; preds = %bb14
  %_21 = sub i32 %b.tr5, %a.tr.ph10
  br label %tailrecurse.outer.backedge

tailrecurse.outer.backedge:                       ; preds = %bb7, %bb17, %bb16
  %a.tr.ph.be.in = phi i32 [ %_19, %bb16 ], [ %_21, %bb17 ], [ %a.tr.ph10, %bb7 ]
  %b.tr.ph.be = phi i32 [ %b.tr5, %bb16 ], [ %a.tr.ph10, %bb17 ], [ %b.tr.ph11, %bb7 ]
  %a.tr.ph.be = ashr exact i32 %a.tr.ph.be.in, 1
  %_34 = icmp eq i32 %a.tr.ph.be, %b.tr.ph.be
  br i1 %_34, label %common.ret45, label %bb2.lr.ph

bb16:                                             ; preds = %bb14
  %_19 = sub i32 %a.tr.ph10, %b.tr5
  br label %tailrecurse.outer.backedge

common.ret45:                                     ; preds = %start, %bb13, %bb2, %bb4, %tailrecurse.outer.backedge, %bb11
  %common.ret45.op = phi i32 [ %0, %bb11 ], [ %a, %start ], [ %a.tr.ph10, %bb4 ], [ %b.tr.ph11, %bb2 ], [ %a.tr.ph10, %bb13 ], [ %b.tr.ph.be, %tailrecurse.outer.backedge ]
  ret i32 %common.ret45.op

bb11:                                             ; preds = %bb7
  %_12 = ashr exact i32 %a.tr.ph10, 1
  %_13 = ashr exact i32 %b.tr.ph11, 1
  %_11 = tail call noundef i32 @f_gold(i32 noundef %_12, i32 noundef %_13)
  %0 = shl i32 %_11, 1
  br label %common.ret45
}
