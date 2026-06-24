define i64 @f_gold(i64 %n) local_unnamed_addr #11 !dbg !3105 {
entry:
    #dbg_value(i64 %n, !3110, !DIExpression(), !3115)
    #dbg_value(i64 %n, !3110, !DIExpression(), !3116)
  %0 = icmp slt i64 %n, 2, !dbg !3117
  br i1 %0, label %common.ret, label %for.body, !dbg !3118

common.ret:                                       ; preds = %for.body, %entry
  %common.ret.op = phi i64 [ %n, %entry ], [ %5, %for.body ]
  ret i64 %common.ret.op, !dbg !3118

for.body:                                         ; preds = %entry, %for.body
  %1 = phi i64 [ %5, %for.body ], [ 1, %entry ]
  %2 = phi i64 [ %4, %for.body ], [ 1, %entry ]
  %3 = phi i64 [ %2, %for.body ], [ 0, %entry ]
    #dbg_value(i64 %2, !3113, !DIExpression(), !3119)
    #dbg_value(i64 %3, !3111, !DIExpression(), !3120)
    #dbg_value(i64 %2, !3112, !DIExpression(), !3121)
  %4 = add i64 %2, %3, !dbg !3122
    #dbg_value(i64 %4, !3113, !DIExpression(), !3123)
  %5 = add i64 %1, 1, !dbg !3124
    #dbg_value(i64 %5, !3114, !DIExpression(), !3124)
    #dbg_value(i64 %2, !3111, !DIExpression(), !3125)
    #dbg_value(i64 %4, !3112, !DIExpression(), !3126)
    #dbg_value(i64 %n, !3110, !DIExpression(), !3127)
  %6 = icmp slt i64 %4, %n, !dbg !3128
  br i1 %6, label %for.body, label %common.ret, !dbg !3118
}
