define i64 @f_gold(i64 %n) local_unnamed_addr #11 !dbg !3105 {
entry:
    #dbg_value(i64 %n, !3110, !DIExpression(), !3111)
    #dbg_value(i64 %n, !3110, !DIExpression(), !3112)
  %0 = icmp eq i64 %n, 0, !dbg !3113
  br i1 %0, label %common.ret, label %if.done, !dbg !3114

common.ret:                                       ; preds = %entry, %if.done
  %common.ret.op = phi i64 [ %3, %if.done ], [ 1, %entry ]
  ret i64 %common.ret.op, !dbg !3114

if.done:                                          ; preds = %entry
    #dbg_value(i64 %n, !3110, !DIExpression(), !3115)
    #dbg_value(i64 %n, !3110, !DIExpression(), !3116)
  %1 = add i64 %n, -1, !dbg !3117
  %2 = call i64 @f_gold(i64 %1), !dbg !3118
  %3 = mul i64 %2, %n, !dbg !3119
  br label %common.ret, !dbg !3120
}
