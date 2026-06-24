define noundef i1 @f_gold(i64 %n) local_unnamed_addr #11 !dbg !3021 {
entry:
  br label %tailrecurse

tailrecurse:                                      ; preds = %if.done2, %entry
  %n.tr = phi i64 [ %n, %entry ], [ %3, %if.done2 ]
    #dbg_value(i64 %n.tr, !3026, !DIExpression(), !3027)
    #dbg_value(i64 %n.tr, !3026, !DIExpression(), !3028)
  switch i64 %n.tr, label %if.done [
    i64 0, label %common.ret
    i64 9, label %common.ret
  ], !dbg !3029

common.ret:                                       ; preds = %if.done, %tailrecurse, %tailrecurse
  %common.ret.op = phi i1 [ true, %tailrecurse ], [ true, %tailrecurse ], [ false, %if.done ]
  ret i1 %common.ret.op, !dbg !3029

if.done:                                          ; preds = %tailrecurse
    #dbg_value(i64 %n.tr, !3026, !DIExpression(), !3030)
  %0 = icmp slt i64 %n.tr, 9, !dbg !3031
  br i1 %0, label %common.ret, label %if.done2, !dbg !3029

if.done2:                                         ; preds = %if.done
    #dbg_value(i64 %n.tr, !3026, !DIExpression(), !3032)
  %1 = lshr i64 %n.tr, 3, !dbg !3033
    #dbg_value(i64 %n.tr, !3026, !DIExpression(), !3034)
  %2 = and i64 %n.tr, 7, !dbg !3035
  %3 = sub nsw i64 %1, %2, !dbg !3036
  br label %tailrecurse, !dbg !3037
}
