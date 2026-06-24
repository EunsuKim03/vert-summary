define i64 @f_gold(i64 %s) local_unnamed_addr #11 !dbg !3105 {
entry:
    #dbg_value(i64 %s, !3110, !DIExpression(), !3113)
    #dbg_value(i64 0, !3111, !DIExpression(), !3114)
    #dbg_value(i64 1, !3112, !DIExpression(), !3115)
  %0 = icmp sgt i64 %s, 0, !dbg !3116
  br i1 %0, label %for.body, label %common.ret, !dbg !3117

for.body:                                         ; preds = %entry, %if.done
  %1 = phi i64 [ %7, %if.done ], [ 1, %entry ]
  %2 = phi i64 [ %5, %if.done ], [ 0, %entry ]
    #dbg_value(i64 %2, !3111, !DIExpression(), !3118)
    #dbg_value(i64 %1, !3112, !DIExpression(), !3119)
    #dbg_value(i64 %1, !3112, !DIExpression(), !3120)
  %3 = mul i64 %1, %1, !dbg !3121
    #dbg_value(i64 %1, !3112, !DIExpression(), !3122)
  %4 = mul i64 %3, %1, !dbg !3123
  %5 = add i64 %4, %2, !dbg !3124
    #dbg_value(i64 %5, !3111, !DIExpression(), !3124)
    #dbg_value(i64 %5, !3111, !DIExpression(), !3125)
    #dbg_value(i64 %s, !3110, !DIExpression(), !3126)
  %6 = icmp eq i64 %5, %s, !dbg !3127
  br i1 %6, label %common.ret, label %if.done, !dbg !3117

common.ret:                                       ; preds = %for.body, %if.done, %entry
  %common.ret.op = phi i64 [ -1, %entry ], [ %1, %for.body ], [ -1, %if.done ]
  ret i64 %common.ret.op, !dbg !3117

if.done:                                          ; preds = %for.body
  %7 = add i64 %1, 1, !dbg !3128
    #dbg_value(i64 %7, !3112, !DIExpression(), !3128)
    #dbg_value(i64 %5, !3111, !DIExpression(), !3118)
    #dbg_value(i64 %s, !3110, !DIExpression(), !3129)
  %8 = icmp slt i64 %5, %s, !dbg !3116
  br i1 %8, label %for.body, label %common.ret, !dbg !3117
}
