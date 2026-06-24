define range(i64 -6148914691236517205, 6148914691236517205) i64 @f_gold(i64 %n) local_unnamed_addr #9 !dbg !3105 {
entry:
    #dbg_value(i64 %n, !3110, !DIExpression(), !3112)
  %0 = add i64 %n, -1, !dbg !3113
    #dbg_value(i64 %0, !3110, !DIExpression(), !3113)
    #dbg_value(i64 0, !3111, !DIExpression(), !3114)
    #dbg_value(i64 %0, !3110, !DIExpression(), !3115)
    #dbg_value(i64 %0, !3110, !DIExpression(), !3116)
  %1 = mul i64 %0, %n, !dbg !3117
  %2 = sdiv i64 %1, 2, !dbg !3118
    #dbg_value(i64 %2, !3111, !DIExpression(), !3119)
    #dbg_value(i64 %0, !3110, !DIExpression(), !3120)
    #dbg_value(i64 %0, !3110, !DIExpression(), !3121)
    #dbg_value(i64 %0, !3110, !DIExpression(), !3122)
  %3 = shl i64 %0, 1, !dbg !3123
  %4 = or disjoint i64 %3, 1, !dbg !3124
  %5 = mul i64 %4, %1, !dbg !3125
  %6 = sdiv i64 %5, 6, !dbg !3126
  %7 = add nsw i64 %6, %2, !dbg !3127
    #dbg_value(i64 %7, !3111, !DIExpression(), !3127)
    #dbg_value(i64 %7, !3111, !DIExpression(), !3128)
  ret i64 %7, !dbg !3129
}
