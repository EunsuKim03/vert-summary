define i64 @f_gold(i64 %n) local_unnamed_addr #11 !dbg !3105 {
entry:
    #dbg_value(i64 %n, !3110, !DIExpression(), !3111)
    #dbg_value(i64 %n, !3110, !DIExpression(), !3112)
  %switch = icmp ult i64 %n, 2, !dbg !3113
  br i1 %switch, label %common.ret, label %if.done, !dbg !3113

common.ret:                                       ; preds = %entry, %if.done
  %common.ret.op = phi i64 [ %2, %if.done ], [ 1, %entry ]
  ret i64 %common.ret.op, !dbg !3113

if.done:                                          ; preds = %entry
    #dbg_value(i64 %n, !3110, !DIExpression(), !3114)
    #dbg_value(i64 %n, !3110, !DIExpression(), !3115)
  %0 = add i64 %n, -1, !dbg !3116
  %1 = call i64 @f_gold(i64 %0), !dbg !3117
  %2 = mul i64 %1, %n, !dbg !3118
  br label %common.ret, !dbg !3119
}
