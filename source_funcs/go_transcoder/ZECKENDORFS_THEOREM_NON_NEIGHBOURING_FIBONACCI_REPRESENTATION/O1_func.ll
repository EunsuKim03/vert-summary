define i64 @f_gold(i64 %n) local_unnamed_addr #11 !dbg !3105 {
entry:
    #dbg_value(i64 %n, !3110, !DIExpression(), !3114)
    #dbg_value(i64 %n, !3110, !DIExpression(), !3115)
  %switch = icmp ult i64 %n, 2, !dbg !3116
  br i1 %switch, label %common.ret, label %for.loop, !dbg !3116

common.ret:                                       ; preds = %for.loop, %entry
  %common.ret.op = phi i64 [ %n, %entry ], [ %0, %for.loop ]
  ret i64 %common.ret.op, !dbg !3116

for.loop:                                         ; preds = %entry, %for.loop
  %0 = phi i64 [ %1, %for.loop ], [ 1, %entry ], !dbg !3117
  %1 = phi i64 [ %2, %for.loop ], [ 1, %entry ], !dbg !3118
    #dbg_value(i64 %1, !3113, !DIExpression(), !3119)
    #dbg_value(i64 %n, !3110, !DIExpression(), !3120)
  %.not = icmp sgt i64 %1, %n, !dbg !3121
    #dbg_value(i64 %0, !3112, !DIExpression(), !3122)
    #dbg_value(i64 %0, !3111, !DIExpression(), !3123)
    #dbg_value(i64 %1, !3113, !DIExpression(), !3124)
    #dbg_value(i64 %1, !3112, !DIExpression(), !3125)
    #dbg_value(i64 %0, !3111, !DIExpression(), !3126)
    #dbg_value(i64 %1, !3112, !DIExpression(), !3127)
  %2 = add i64 %1, %0, !dbg !3128
    #dbg_value(i64 %2, !3113, !DIExpression(), !3129)
  br i1 %.not, label %common.ret, label %for.loop, !dbg !3116
}
