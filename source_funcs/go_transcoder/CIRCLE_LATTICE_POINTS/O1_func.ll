define i64 @f_gold(i64 %r) local_unnamed_addr #12 !dbg !3105 {
entry:
    #dbg_value(i64 %r, !3110, !DIExpression(), !3115)
    #dbg_value(i64 %r, !3110, !DIExpression(), !3116)
  %0 = icmp slt i64 %r, 1, !dbg !3117
  br i1 %0, label %common.ret, label %for.loop.preheader, !dbg !3118

for.loop.preheader:                               ; preds = %entry
    #dbg_value(i64 1, !3112, !DIExpression(), !3119)
    #dbg_value(i64 %r, !3110, !DIExpression(), !3120)
  %.not = icmp eq i64 %r, 1, !dbg !3121
  br i1 %.not, label %common.ret, label %for.body, !dbg !3118

common.ret:                                       ; preds = %for.body, %for.loop.preheader, %entry
  %common.ret.op = phi i64 [ 0, %entry ], [ 4, %for.loop.preheader ], [ %spec.select, %for.body ]
  ret i64 %common.ret.op, !dbg !3118

for.body:                                         ; preds = %for.loop.preheader, %for.body
  %1 = phi i64 [ %10, %for.body ], [ 1, %for.loop.preheader ]
  %2 = phi i64 [ %spec.select, %for.body ], [ 4, %for.loop.preheader ]
    #dbg_value(i64 %r, !3110, !DIExpression(), !3122)
    #dbg_value(i64 %1, !3112, !DIExpression(), !3123)
  %add = add nuw i64 %1, %r, !dbg !3124
  %sub = sub nsw i64 %r, %1, !dbg !3124
  %3 = mul i64 %add, %sub, !dbg !3124
    #dbg_value(i64 %3, !3113, !DIExpression(), !3125)
  %4 = sitofp i64 %3 to double, !dbg !3126
    #dbg_value(double %4, !3127, !DIExpression(), !3133)
  %5 = call double @llvm.sqrt.f64(double %4), !dbg !3133
  %abovemin = fcmp oge double %5, 0xC3E0000000000000, !dbg !3135
  %belowmax = fcmp ole double %5, 0x43DFFFFFFFFFFFFE, !dbg !3135
  %inbounds = and i1 %abovemin, %belowmax, !dbg !3135
  %saturated = select i1 %abovemin, i64 9223372036854775807, i64 -9223372036854775808, !dbg !3135
  %isnan = icmp slt i64 %3, 0, !dbg !3135
  %remapped = select i1 %isnan, i64 0, i64 %saturated, !dbg !3135
  %normal = fptosi double %5 to i64, !dbg !3135
  %6 = select i1 %inbounds, i64 %normal, i64 %remapped, !dbg !3135
    #dbg_value(i64 %6, !3114, !DIExpression(), !3136)
  %7 = mul i64 %6, %6, !dbg !3137
  %8 = icmp eq i64 %7, %3, !dbg !3138
  %9 = add i64 %2, 4
  %spec.select = select i1 %8, i64 %9, i64 %2, !dbg !3118
  %10 = add nuw nsw i64 %1, 1, !dbg !3139
    #dbg_value(i64 %10, !3112, !DIExpression(), !3119)
  %exitcond.not = icmp eq i64 %10, %r, !dbg !3121
  br i1 %exitcond.not, label %common.ret, label %for.body, !dbg !3118
}
