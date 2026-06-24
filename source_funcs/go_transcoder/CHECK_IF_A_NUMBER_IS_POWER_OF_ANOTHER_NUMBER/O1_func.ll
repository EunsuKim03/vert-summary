define i1 @f_gold(i64 %x, i64 %y) local_unnamed_addr #11 !dbg !3105 {
entry:
    #dbg_value(i64 %x, !3110, !DIExpression(), !3113)
    #dbg_value(i64 %y, !3111, !DIExpression(), !3113)
    #dbg_value(i64 %x, !3110, !DIExpression(), !3114)
  %0 = icmp eq i64 %x, 1, !dbg !3115
  br i1 %0, label %if.then, label %for.loop.preheader, !dbg !3116

for.loop.preheader:                               ; preds = %entry
    #dbg_value(i64 1, !3112, !DIExpression(), !3117)
    #dbg_value(i64 %y, !3111, !DIExpression(), !3118)
  %1 = icmp sgt i64 %y, 1, !dbg !3119
  br i1 %1, label %for.body, label %for.done, !dbg !3116

common.ret:                                       ; preds = %for.done, %if.then
  %common.ret.op = phi i1 [ %2, %if.then ], [ %6, %for.done ]
  ret i1 %common.ret.op, !dbg !3116

if.then:                                          ; preds = %entry
    #dbg_value(i64 %y, !3111, !DIExpression(), !3120)
  %2 = icmp eq i64 %y, 1, !dbg !3121
  br label %common.ret, !dbg !3122

for.body:                                         ; preds = %for.loop.preheader, %for.body
  %3 = phi i64 [ %4, %for.body ], [ 1, %for.loop.preheader ]
    #dbg_value(i64 %3, !3112, !DIExpression(), !3117)
    #dbg_value(i64 %x, !3110, !DIExpression(), !3123)
  %4 = mul i64 %3, %x, !dbg !3124
    #dbg_value(i64 %4, !3112, !DIExpression(), !3117)
    #dbg_value(i64 %y, !3111, !DIExpression(), !3118)
  %5 = icmp slt i64 %4, %y, !dbg !3119
  br i1 %5, label %for.body, label %for.done, !dbg !3116

for.done:                                         ; preds = %for.body, %for.loop.preheader
  %.lcssa = phi i64 [ 1, %for.loop.preheader ], [ %4, %for.body ], !dbg !3125
    #dbg_value(i64 %.lcssa, !3112, !DIExpression(), !3126)
    #dbg_value(i64 %y, !3111, !DIExpression(), !3127)
  %6 = icmp eq i64 %.lcssa, %y, !dbg !3128
  br label %common.ret, !dbg !3129
}
