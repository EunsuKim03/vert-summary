define i64 @f_gold(i64 %x) local_unnamed_addr #11 !dbg !3105 {
entry:
    #dbg_value(i64 %x, !3110, !DIExpression(), !3113)
    #dbg_value(i64 %x, !3110, !DIExpression(), !3114)
  %switch = icmp ult i64 %x, 2, !dbg !3115
  br i1 %switch, label %common.ret, label %for.loop.preheader, !dbg !3115

for.loop.preheader:                               ; preds = %entry
    #dbg_value(i64 1, !3112, !DIExpression(), !3116)
    #dbg_value(i64 %x, !3110, !DIExpression(), !3117)
  %.not1 = icmp slt i64 %x, 1, !dbg !3118
  br i1 %.not1, label %common.ret, label %for.body, !dbg !3115

common.ret:                                       ; preds = %for.loop.preheader, %for.body, %entry
  %common.ret.op = phi i64 [ %x, %entry ], [ 0, %for.loop.preheader ], [ %0, %for.body ]
  ret i64 %common.ret.op, !dbg !3115

for.body:                                         ; preds = %for.loop.preheader, %for.body
  %0 = phi i64 [ %1, %for.body ], [ 1, %for.loop.preheader ]
  %1 = add i64 %0, 1, !dbg !3119
    #dbg_value(i64 %1, !3111, !DIExpression(), !3120)
  %2 = mul i64 %1, %1, !dbg !3121
    #dbg_value(i64 %2, !3112, !DIExpression(), !3116)
    #dbg_value(i64 %x, !3110, !DIExpression(), !3117)
  %.not = icmp sgt i64 %2, %x, !dbg !3118
  br i1 %.not, label %common.ret, label %for.body, !dbg !3115
}
