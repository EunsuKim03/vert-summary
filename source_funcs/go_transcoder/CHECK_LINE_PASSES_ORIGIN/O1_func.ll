define i1 @f_gold(i64 %x1, i64 %y1, i64 %x2, i64 %y2) local_unnamed_addr #9 !dbg !3105 {
entry:
    #dbg_value(i64 %x1, !3110, !DIExpression(), !3114)
    #dbg_value(i64 %y1, !3111, !DIExpression(), !3114)
    #dbg_value(i64 %x2, !3112, !DIExpression(), !3114)
    #dbg_value(i64 %y2, !3113, !DIExpression(), !3114)
    #dbg_value(i64 %x1, !3110, !DIExpression(), !3115)
    #dbg_value(i64 %y2, !3113, !DIExpression(), !3116)
    #dbg_value(i64 %y1, !3111, !DIExpression(), !3117)
  %0 = sub i64 %y2, %y1, !dbg !3118
  %1 = mul i64 %0, %x1, !dbg !3119
    #dbg_value(i64 %y1, !3111, !DIExpression(), !3120)
    #dbg_value(i64 %x2, !3112, !DIExpression(), !3121)
    #dbg_value(i64 %x1, !3110, !DIExpression(), !3122)
  %2 = sub i64 %x2, %x1, !dbg !3123
  %3 = mul i64 %2, %y1, !dbg !3124
  %4 = icmp eq i64 %1, %3, !dbg !3125
  ret i1 %4, !dbg !3126
}
