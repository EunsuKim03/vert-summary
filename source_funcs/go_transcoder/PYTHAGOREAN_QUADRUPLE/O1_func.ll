define noundef i1 @f_gold(i64 %a, i64 %b, i64 %c, i64 %d) local_unnamed_addr #9 !dbg !3105 {
entry:
    #dbg_value(i64 %a, !3110, !DIExpression(), !3115)
    #dbg_value(i64 %b, !3111, !DIExpression(), !3115)
    #dbg_value(i64 %c, !3112, !DIExpression(), !3115)
    #dbg_value(i64 %d, !3113, !DIExpression(), !3115)
    #dbg_value(i64 %a, !3110, !DIExpression(), !3116)
    #dbg_value(i64 %a, !3110, !DIExpression(), !3117)
  %0 = mul i64 %a, %a, !dbg !3118
    #dbg_value(i64 %b, !3111, !DIExpression(), !3119)
    #dbg_value(i64 %b, !3111, !DIExpression(), !3120)
  %1 = mul i64 %b, %b, !dbg !3121
  %2 = add i64 %1, %0, !dbg !3122
    #dbg_value(i64 %c, !3112, !DIExpression(), !3123)
    #dbg_value(i64 %c, !3112, !DIExpression(), !3124)
  %3 = mul i64 %c, %c, !dbg !3125
  %4 = add i64 %2, %3, !dbg !3126
    #dbg_value(i64 %4, !3114, !DIExpression(), !3127)
    #dbg_value(i64 %d, !3113, !DIExpression(), !3128)
    #dbg_value(i64 %d, !3113, !DIExpression(), !3129)
  %5 = mul i64 %d, %d, !dbg !3130
    #dbg_value(i64 %4, !3114, !DIExpression(), !3131)
  %6 = icmp eq i64 %5, %4, !dbg !3132
  ret i1 %6, !dbg !3133
}
