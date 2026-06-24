define i1 @f_gold(i64 %n) local_unnamed_addr #11 !dbg !3105 {
entry:
    #dbg_value(i64 %n, !3110, !DIExpression(), !3111)
    #dbg_value(i64 %n, !3110, !DIExpression(), !3112)
  switch i64 %n, label %if.done [
    i64 0, label %common.ret
    i64 9, label %common.ret
  ], !dbg !3113

common.ret:                                       ; preds = %if.done, %entry, %entry, %if.done2
  %common.ret.op = phi i1 [ %4, %if.done2 ], [ true, %entry ], [ true, %entry ], [ false, %if.done ]
  ret i1 %common.ret.op, !dbg !3113

if.done:                                          ; preds = %entry
    #dbg_value(i64 %n, !3110, !DIExpression(), !3114)
  %0 = icmp slt i64 %n, 9, !dbg !3115
  br i1 %0, label %common.ret, label %if.done2, !dbg !3113

if.done2:                                         ; preds = %if.done
    #dbg_value(i64 %n, !3110, !DIExpression(), !3116)
  %1 = lshr i64 %n, 3, !dbg !3117
    #dbg_value(i64 %n, !3110, !DIExpression(), !3118)
  %2 = and i64 %n, 7, !dbg !3119
  %3 = sub nsw i64 %1, %2, !dbg !3120
  %4 = call i1 @f_gold(i64 %3), !dbg !3121
  br label %common.ret, !dbg !3122
}
