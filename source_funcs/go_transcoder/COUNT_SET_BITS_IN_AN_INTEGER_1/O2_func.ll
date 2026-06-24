define i64 @f_gold(i64 %n) local_unnamed_addr #11 !dbg !3021 {
entry:
    #dbg_value(i64 %n, !3026, !DIExpression(), !3027)
  %0 = icmp eq i64 %n, 0, !dbg !3028
  br i1 %0, label %common.ret, label %if.else, !dbg !3029

common.ret:                                       ; preds = %if.else, %entry
  %accumulator.tr.lcssa = phi i64 [ 0, %entry ], [ %3, %if.else ]
  ret i64 %accumulator.tr.lcssa, !dbg !3029

if.else:                                          ; preds = %entry, %if.else
  %n.tr2 = phi i64 [ %2, %if.else ], [ %n, %entry ]
  %accumulator.tr1 = phi i64 [ %3, %if.else ], [ 0, %entry ]
    #dbg_value(i64 %n.tr2, !3026, !DIExpression(), !3030)
  %1 = and i64 %n.tr2, 1, !dbg !3031
  %2 = ashr i64 %n.tr2, 1, !dbg !3032
  %3 = add i64 %1, %accumulator.tr1, !dbg !3033
    #dbg_value(i64 %2, !3026, !DIExpression(), !3027)
  %4 = icmp ult i64 %n.tr2, 2, !dbg !3028
  br i1 %4, label %common.ret, label %if.else, !dbg !3029
}
