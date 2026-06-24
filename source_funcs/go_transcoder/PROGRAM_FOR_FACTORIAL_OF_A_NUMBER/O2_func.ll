define i64 @f_gold(i64 %n) local_unnamed_addr #11 !dbg !3021 {
entry:
    #dbg_value(i64 %n, !3026, !DIExpression(), !3027)
  %0 = icmp eq i64 %n, 0, !dbg !3028
  br i1 %0, label %common.ret, label %if.done, !dbg !3029

common.ret:                                       ; preds = %if.done, %entry
  %accumulator.tr.lcssa = phi i64 [ 1, %entry ], [ %2, %if.done ]
  ret i64 %accumulator.tr.lcssa, !dbg !3029

if.done:                                          ; preds = %entry, %if.done
  %n.tr2 = phi i64 [ %1, %if.done ], [ %n, %entry ]
  %accumulator.tr1 = phi i64 [ %2, %if.done ], [ 1, %entry ]
    #dbg_value(i64 %n.tr2, !3026, !DIExpression(), !3030)
  %1 = add i64 %n.tr2, -1, !dbg !3031
  %2 = mul i64 %n.tr2, %accumulator.tr1, !dbg !3032
    #dbg_value(i64 %1, !3026, !DIExpression(), !3027)
  %3 = icmp eq i64 %1, 0, !dbg !3028
  br i1 %3, label %common.ret, label %if.done, !dbg !3029
}
