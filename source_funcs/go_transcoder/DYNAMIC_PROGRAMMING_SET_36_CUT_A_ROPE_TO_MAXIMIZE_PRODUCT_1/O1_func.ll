define i64 @f_gold(i64 %n) local_unnamed_addr #11 !dbg !3105 {
entry:
    #dbg_value(i64 %n, !3110, !DIExpression(), !3112)
    #dbg_value(i64 %n, !3110, !DIExpression(), !3113)
  %0 = and i64 %n, -2, !dbg !3114
  %switch = icmp eq i64 %0, 2, !dbg !3114
  br i1 %switch, label %if.then, label %for.loop.preheader, !dbg !3114

for.loop.preheader:                               ; preds = %entry
    #dbg_value(i64 %n, !3110, !DIExpression(), !3115)
  %1 = icmp sgt i64 %n, 4, !dbg !3116
  br i1 %1, label %for.body, label %for.done, !dbg !3114

common.ret:                                       ; preds = %for.done, %if.then
  %common.ret.op = phi i64 [ %2, %if.then ], [ %8, %for.done ]
  ret i64 %common.ret.op, !dbg !3114

if.then:                                          ; preds = %entry
    #dbg_value(i64 %n, !3110, !DIExpression(), !3117)
  %2 = add nsw i64 %n, -1, !dbg !3118
  br label %common.ret, !dbg !3119

for.body:                                         ; preds = %for.loop.preheader, %for.body
  %3 = phi i64 [ %6, %for.body ], [ 1, %for.loop.preheader ]
  %4 = phi i64 [ %5, %for.body ], [ %n, %for.loop.preheader ]
    #dbg_value(i64 %4, !3110, !DIExpression(), !3115)
  %5 = add nsw i64 %4, -3, !dbg !3120
    #dbg_value(i64 %5, !3110, !DIExpression(), !3120)
  %6 = mul i64 %3, 3, !dbg !3121
    #dbg_value(i64 %6, !3111, !DIExpression(), !3121)
  %7 = icmp sgt i64 %4, 7, !dbg !3116
  br i1 %7, label %for.body, label %for.done, !dbg !3114

for.done:                                         ; preds = %for.body, %for.loop.preheader
  %.lcssa1 = phi i64 [ %n, %for.loop.preheader ], [ %5, %for.body ], !dbg !3122
  %.lcssa = phi i64 [ 1, %for.loop.preheader ], [ %6, %for.body ], !dbg !3123
    #dbg_value(i64 %.lcssa1, !3110, !DIExpression(), !3124)
    #dbg_value(i64 %.lcssa, !3111, !DIExpression(), !3125)
  %8 = mul i64 %.lcssa, %.lcssa1, !dbg !3126
  br label %common.ret, !dbg !3127
}
