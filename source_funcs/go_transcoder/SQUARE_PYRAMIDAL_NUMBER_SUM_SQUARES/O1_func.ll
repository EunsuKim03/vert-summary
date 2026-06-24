define i64 @f_gold(i64 %s) local_unnamed_addr #11 !dbg !3105 {
entry:
    #dbg_value(i64 %s, !3110, !DIExpression(), !3113)
    #dbg_value(i64 0, !3111, !DIExpression(), !3114)
    #dbg_value(i64 1, !3112, !DIExpression(), !3115)
  %0 = icmp sgt i64 %s, 0, !dbg !3116
  br i1 %0, label %for.body, label %common.ret, !dbg !3117

for.body:                                         ; preds = %entry, %if.done
  %1 = phi i64 [ %6, %if.done ], [ 1, %entry ]
  %2 = phi i64 [ %4, %if.done ], [ 0, %entry ]
    #dbg_value(i64 %2, !3111, !DIExpression(), !3118)
    #dbg_value(i64 %1, !3112, !DIExpression(), !3119)
    #dbg_value(i64 %1, !3112, !DIExpression(), !3120)
  %3 = mul i64 %1, %1, !dbg !3121
  %4 = add i64 %3, %2, !dbg !3122
    #dbg_value(i64 %4, !3111, !DIExpression(), !3122)
    #dbg_value(i64 %4, !3111, !DIExpression(), !3123)
    #dbg_value(i64 %s, !3110, !DIExpression(), !3124)
  %5 = icmp eq i64 %4, %s, !dbg !3125
  br i1 %5, label %common.ret, label %if.done, !dbg !3117

common.ret:                                       ; preds = %for.body, %if.done, %entry
  %common.ret.op = phi i64 [ -1, %entry ], [ %1, %for.body ], [ -1, %if.done ]
  ret i64 %common.ret.op, !dbg !3117

if.done:                                          ; preds = %for.body
  %6 = add i64 %1, 1, !dbg !3126
    #dbg_value(i64 %6, !3112, !DIExpression(), !3126)
    #dbg_value(i64 %4, !3111, !DIExpression(), !3118)
    #dbg_value(i64 %s, !3110, !DIExpression(), !3127)
  %7 = icmp slt i64 %4, %s, !dbg !3116
  br i1 %7, label %for.body, label %common.ret, !dbg !3117
}
