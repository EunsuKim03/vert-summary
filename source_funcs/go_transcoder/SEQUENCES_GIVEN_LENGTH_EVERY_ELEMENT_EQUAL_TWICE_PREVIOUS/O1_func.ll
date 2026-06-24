define i64 @f_gold(i64 %m, i64 %n) local_unnamed_addr #11 !dbg !3105 {
entry:
    #dbg_value(i64 %m, !3110, !DIExpression(), !3112)
    #dbg_value(i64 %n, !3111, !DIExpression(), !3112)
    #dbg_value(i64 %m, !3110, !DIExpression(), !3113)
    #dbg_value(i64 %n, !3111, !DIExpression(), !3114)
  %0 = icmp slt i64 %m, %n, !dbg !3115
  br i1 %0, label %common.ret, label %if.done, !dbg !3116

common.ret:                                       ; preds = %if.done, %entry, %if.done2
  %common.ret.op = phi i64 [ %7, %if.done2 ], [ 0, %entry ], [ 1, %if.done ]
  ret i64 %common.ret.op, !dbg !3116

if.done:                                          ; preds = %entry
    #dbg_value(i64 %n, !3111, !DIExpression(), !3117)
  %1 = icmp eq i64 %n, 0, !dbg !3118
  br i1 %1, label %common.ret, label %if.done2, !dbg !3116

if.done2:                                         ; preds = %if.done
    #dbg_value(i64 %m, !3110, !DIExpression(), !3119)
  %2 = add i64 %m, -1, !dbg !3120
    #dbg_value(i64 %n, !3111, !DIExpression(), !3121)
  %3 = call i64 @f_gold(i64 %2, i64 %n), !dbg !3122
    #dbg_value(i64 %m, !3110, !DIExpression(), !3123)
  %4 = sdiv i64 %m, 2, !dbg !3124
    #dbg_value(i64 %n, !3111, !DIExpression(), !3125)
  %5 = add i64 %n, -1, !dbg !3126
  %6 = call i64 @f_gold(i64 %4, i64 %5), !dbg !3127
  %7 = add i64 %6, %3, !dbg !3128
  br label %common.ret, !dbg !3129
}
