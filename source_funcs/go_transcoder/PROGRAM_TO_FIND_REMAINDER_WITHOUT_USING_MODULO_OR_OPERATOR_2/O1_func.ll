define i64 @f_gold(i64 %num, i64 %divisor) local_unnamed_addr #11 !dbg !3105 {
entry:
    #dbg_value(i64 %num, !3110, !DIExpression(), !3112)
    #dbg_value(i64 %divisor, !3111, !DIExpression(), !3112)
  br label %for.loop, !dbg !3113

for.loop:                                         ; preds = %for.loop, %entry
  %0 = phi i64 [ %num, %entry ], [ %1, %for.loop ], !dbg !3114
    #dbg_value(i64 %0, !3110, !DIExpression(), !3115)
    #dbg_value(i64 %divisor, !3111, !DIExpression(), !3116)
  %.not = icmp slt i64 %0, %divisor, !dbg !3117
    #dbg_value(i64 %divisor, !3111, !DIExpression(), !3118)
  %1 = sub i64 %0, %divisor, !dbg !3119
    #dbg_value(i64 %1, !3110, !DIExpression(), !3119)
  br i1 %.not, label %for.done, label %for.loop, !dbg !3113

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %0, !3110, !DIExpression(), !3120)
  ret i64 %0, !dbg !3121
}
