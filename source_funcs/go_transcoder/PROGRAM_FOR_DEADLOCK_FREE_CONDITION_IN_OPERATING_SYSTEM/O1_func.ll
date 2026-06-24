define i64 @f_gold(i64 %process, i64 %need) local_unnamed_addr #9 !dbg !3105 {
entry:
    #dbg_value(i64 %process, !3110, !DIExpression(), !3113)
    #dbg_value(i64 %need, !3111, !DIExpression(), !3113)
    #dbg_value(i64 0, !3112, !DIExpression(), !3114)
    #dbg_value(i64 %process, !3110, !DIExpression(), !3115)
    #dbg_value(i64 %need, !3111, !DIExpression(), !3116)
  %0 = add i64 %need, -1, !dbg !3117
  %1 = mul i64 %0, %process, !dbg !3118
  %2 = add i64 %1, 1, !dbg !3119
    #dbg_value(i64 %2, !3112, !DIExpression(), !3120)
    #dbg_value(i64 %2, !3112, !DIExpression(), !3121)
  ret i64 %2, !dbg !3122
}
