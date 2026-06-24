define i64 @f_gold(i64 %s) local_unnamed_addr #9 !dbg !3105 {
entry:
    #dbg_value(i64 %s, !3110, !DIExpression(), !3114)
    #dbg_value(i64 %s, !3110, !DIExpression(), !3115)
  %0 = sdiv i64 %s, 3, !dbg !3116
    #dbg_value(i64 %0, !3111, !DIExpression(), !3117)
    #dbg_value(i64 %0, !3111, !DIExpression(), !3118)
  %1 = sub i64 %s, %0, !dbg !3119
    #dbg_value(i64 %1, !3110, !DIExpression(), !3119)
    #dbg_value(i64 %1, !3110, !DIExpression(), !3120)
  %2 = sdiv i64 %1, 2, !dbg !3121
    #dbg_value(i64 %2, !3112, !DIExpression(), !3122)
    #dbg_value(i64 %1, !3110, !DIExpression(), !3123)
    #dbg_value(i64 %2, !3112, !DIExpression(), !3124)
  %3 = sub i64 %1, %2, !dbg !3125
    #dbg_value(i64 %3, !3113, !DIExpression(), !3126)
    #dbg_value(i64 %0, !3111, !DIExpression(), !3127)
    #dbg_value(i64 %2, !3112, !DIExpression(), !3128)
  %4 = mul i64 %2, %0, !dbg !3129
    #dbg_value(i64 %3, !3113, !DIExpression(), !3130)
  %5 = mul i64 %4, %3, !dbg !3131
  ret i64 %5, !dbg !3132
}
