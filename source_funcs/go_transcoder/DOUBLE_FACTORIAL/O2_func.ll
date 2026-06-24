define i64 @f_gold(i64 %n) local_unnamed_addr #11 !dbg !3021 {
entry:
    #dbg_value(i64 %n, !3026, !DIExpression(), !3027)
  %switch1 = icmp ult i64 %n, 2, !dbg !3028
  br i1 %switch1, label %common.ret, label %if.done, !dbg !3028

common.ret:                                       ; preds = %if.done, %entry
  %accumulator.tr.lcssa = phi i64 [ 1, %entry ], [ %1, %if.done ]
  ret i64 %accumulator.tr.lcssa, !dbg !3028

if.done:                                          ; preds = %entry, %if.done
  %n.tr3 = phi i64 [ %0, %if.done ], [ %n, %entry ]
  %accumulator.tr2 = phi i64 [ %1, %if.done ], [ 1, %entry ]
    #dbg_value(i64 %n.tr3, !3026, !DIExpression(), !3029)
  %0 = add i64 %n.tr3, -2, !dbg !3030
  %1 = mul i64 %n.tr3, %accumulator.tr2, !dbg !3031
    #dbg_value(i64 %0, !3026, !DIExpression(), !3027)
  %switch = icmp ult i64 %0, 2, !dbg !3028
  br i1 %switch, label %common.ret, label %if.done, !dbg !3028
}
