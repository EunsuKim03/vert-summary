define i64 @f_gold(i64 %n) local_unnamed_addr #11 !dbg !3105 {
entry:
    #dbg_value(i64 %n, !3110, !DIExpression(), !3111)
    #dbg_value(i64 %n, !3110, !DIExpression(), !3112)
  %0 = icmp eq i64 %n, 0, !dbg !3113
  br i1 %0, label %common.ret, label %if.else, !dbg !3114

common.ret:                                       ; preds = %entry, %if.else
  %common.ret.op = phi i64 [ %4, %if.else ], [ 0, %entry ]
  ret i64 %common.ret.op, !dbg !3114

if.else:                                          ; preds = %entry
    #dbg_value(i64 %n, !3110, !DIExpression(), !3115)
  %1 = and i64 %n, 1, !dbg !3116
    #dbg_value(i64 %n, !3110, !DIExpression(), !3117)
  %2 = ashr i64 %n, 1, !dbg !3118
  %3 = call i64 @f_gold(i64 %2), !dbg !3119
  %4 = add i64 %3, %1, !dbg !3120
  br label %common.ret, !dbg !3121
}
