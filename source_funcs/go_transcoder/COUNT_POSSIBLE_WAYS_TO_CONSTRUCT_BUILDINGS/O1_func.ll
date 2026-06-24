define i64 @f_gold(i64 %N) local_unnamed_addr #11 !dbg !3105 {
entry:
    #dbg_value(i64 %N, !3110, !DIExpression(), !3117)
    #dbg_value(i64 %N, !3110, !DIExpression(), !3118)
  %0 = icmp eq i64 %N, 1, !dbg !3119
  br i1 %0, label %common.ret, label %for.loop.preheader, !dbg !3120

for.loop.preheader:                               ; preds = %entry
    #dbg_value(i64 2, !3115, !DIExpression(), !3121)
    #dbg_value(i64 %N, !3110, !DIExpression(), !3122)
  %.not2 = icmp slt i64 %N, 2, !dbg !3123
  br i1 %.not2, label %for.done, label %for.body, !dbg !3120

common.ret:                                       ; preds = %entry, %for.done
  %common.ret.op = phi i64 [ %8, %for.done ], [ 4, %entry ]
  ret i64 %common.ret.op, !dbg !3120

for.body:                                         ; preds = %for.loop.preheader, %for.body
  %1 = phi i64 [ %5, %for.body ], [ 2, %for.loop.preheader ]
  %2 = phi i64 [ %4, %for.body ], [ 1, %for.loop.preheader ]
  %3 = phi i64 [ %2, %for.body ], [ 1, %for.loop.preheader ]
    #dbg_value(i64 %1, !3115, !DIExpression(), !3121)
    #dbg_value(i64 %3, !3111, !DIExpression(), !3124)
    #dbg_value(i64 %2, !3112, !DIExpression(), !3125)
    #dbg_value(i64 %3, !3113, !DIExpression(), !3126)
    #dbg_value(i64 %2, !3114, !DIExpression(), !3127)
  %4 = add i64 %2, %3, !dbg !3128
    #dbg_value(i64 %4, !3112, !DIExpression(), !3129)
    #dbg_value(i64 %2, !3111, !DIExpression(), !3130)
  %5 = add i64 %1, 1, !dbg !3131
    #dbg_value(i64 %5, !3115, !DIExpression(), !3121)
    #dbg_value(i64 %N, !3110, !DIExpression(), !3122)
  %.not = icmp sgt i64 %5, %N, !dbg !3123
  br i1 %.not, label %for.done.loopexit, label %for.body, !dbg !3120

for.done.loopexit:                                ; preds = %for.body
  %6 = add i64 %4, %2, !dbg !3132
  br label %for.done, !dbg !3132

for.done:                                         ; preds = %for.done.loopexit, %for.loop.preheader
  %7 = phi i64 [ 2, %for.loop.preheader ], [ %6, %for.done.loopexit ], !dbg !3132
    #dbg_value(i64 poison, !3112, !DIExpression(), !3133)
    #dbg_value(i64 poison, !3111, !DIExpression(), !3134)
    #dbg_value(i64 %7, !3116, !DIExpression(), !3135)
    #dbg_value(i64 %7, !3116, !DIExpression(), !3136)
    #dbg_value(i64 %7, !3116, !DIExpression(), !3137)
  %8 = mul i64 %7, %7, !dbg !3138
  br label %common.ret, !dbg !3139
}
