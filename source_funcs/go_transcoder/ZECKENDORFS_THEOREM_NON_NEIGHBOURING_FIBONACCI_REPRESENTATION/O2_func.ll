define i64 @f_gold(i64 %n) local_unnamed_addr #11 !dbg !3021 {
entry:
    #dbg_value(i64 %n, !3026, !DIExpression(), !3030)
  %switch = icmp ult i64 %n, 2, !dbg !3031
  br i1 %switch, label %common.ret, label %for.loop, !dbg !3031

common.ret:                                       ; preds = %for.loop, %entry
  %common.ret.op = phi i64 [ %n, %entry ], [ %0, %for.loop ]
  ret i64 %common.ret.op, !dbg !3031

for.loop:                                         ; preds = %entry, %for.loop
  %0 = phi i64 [ %1, %for.loop ], [ 1, %entry ], !dbg !3032
  %1 = phi i64 [ %2, %for.loop ], [ 1, %entry ], !dbg !3033
    #dbg_value(i64 %1, !3029, !DIExpression(), !3034)
    #dbg_value(i64 %n, !3026, !DIExpression(), !3035)
  %.not = icmp sgt i64 %1, %n, !dbg !3036
    #dbg_value(i64 %0, !3027, !DIExpression(), !3037)
    #dbg_value(i64 %1, !3028, !DIExpression(), !3038)
  %2 = add i64 %1, %0, !dbg !3039
    #dbg_value(i64 %2, !3029, !DIExpression(), !3040)
  br i1 %.not, label %common.ret, label %for.loop, !dbg !3031
}
