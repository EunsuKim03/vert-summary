define noundef i32 @f_gold(i32 noundef %a, i32 noundef %b) unnamed_addr #12 {
start:
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb7, %bb16, %bb17, %bb13, %start
  %a.tr = phi i32 [ %a, %start ], [ %a.tr, %bb13 ], [ %_20, %bb17 ], [ %_18, %bb16 ], [ %_12, %bb7 ]
  %b.tr = phi i32 [ %b, %start ], [ %_16, %bb13 ], [ %a.tr, %bb17 ], [ %b.tr, %bb16 ], [ %b.tr, %bb7 ]
  %_3 = icmp eq i32 %a.tr, %b.tr
  br i1 %_3, label %common.ret, label %bb2

bb2:                                              ; preds = %tailrecurse
  %_4 = icmp eq i32 %a.tr, 0
  br i1 %_4, label %common.ret, label %bb4

bb4:                                              ; preds = %bb2
  %_5 = icmp eq i32 %b.tr, 0
  br i1 %_5, label %common.ret, label %bb6

bb6:                                              ; preds = %bb4
  %_7 = and i32 %a.tr, 1
  %_6 = icmp eq i32 %_7, 0
  %_9 = and i32 %b.tr, 1
  %_8.not = icmp eq i32 %_9, 0
  br i1 %_6, label %bb7, label %bb8

bb8:                                              ; preds = %bb6
  br i1 %_8.not, label %bb13, label %bb14

bb7:                                              ; preds = %bb6
  %_12 = ashr exact i32 %a.tr, 1
  br i1 %_8.not, label %bb11, label %tailrecurse

bb14:                                             ; preds = %bb8
  %_17 = icmp sgt i32 %a.tr, %b.tr
  br i1 %_17, label %bb16, label %bb17

bb13:                                             ; preds = %bb8
  %_16 = ashr exact i32 %b.tr, 1
  br label %tailrecurse

bb17:                                             ; preds = %bb14
  %_21 = sub i32 %b.tr, %a.tr
  %_20 = ashr exact i32 %_21, 1
  br label %tailrecurse

bb16:                                             ; preds = %bb14
  %_19 = sub i32 %a.tr, %b.tr
  %_18 = ashr exact i32 %_19, 1
  br label %tailrecurse

common.ret:                                       ; preds = %tailrecurse, %bb2, %bb4, %bb11
  %common.ret.op = phi i32 [ %0, %bb11 ], [ %a.tr, %tailrecurse ], [ %b.tr, %bb2 ], [ %a.tr, %bb4 ]
  ret i32 %common.ret.op

bb11:                                             ; preds = %bb7
  %_13 = ashr exact i32 %b.tr, 1
  %_11 = tail call noundef i32 @f_gold(i32 noundef %_12, i32 noundef %_13)
  %0 = shl i32 %_11, 1
  br label %common.ret
}
