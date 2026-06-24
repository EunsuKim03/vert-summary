define i64 @f_gold(i64 %a, i64 %b) local_unnamed_addr #9 !dbg !3105 {
entry:
    #dbg_value(i64 %a, !3110, !DIExpression(), !3112)
    #dbg_value(i64 %b, !3111, !DIExpression(), !3112)
    #dbg_value(i64 %a, !3110, !DIExpression(), !3113)
  %0 = sdiv i64 %a, 2, !dbg !3114
    #dbg_value(i64 %b, !3111, !DIExpression(), !3115)
  %1 = sdiv i64 %b, 2, !dbg !3116
  %2 = add nsw i64 %1, %0, !dbg !3117
    #dbg_value(i64 %a, !3110, !DIExpression(), !3118)
  %3 = srem i64 %a, 2, !dbg !3119
    #dbg_value(i64 %b, !3111, !DIExpression(), !3120)
  %4 = srem i64 %b, 2, !dbg !3121
  %5 = add nsw i64 %4, %3, !dbg !3122
  %6 = sdiv i64 %5, 2, !dbg !3123
  %7 = add i64 %2, %6, !dbg !3124
  ret i64 %7, !dbg !3125
}
