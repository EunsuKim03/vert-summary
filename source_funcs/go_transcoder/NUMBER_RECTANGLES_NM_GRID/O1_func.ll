define range(i64 -2305843009213693952, 2305843009213693952) i64 @f_gold(i64 %n, i64 %m) local_unnamed_addr #9 !dbg !3105 {
entry:
    #dbg_value(i64 %n, !3110, !DIExpression(), !3112)
    #dbg_value(i64 %m, !3111, !DIExpression(), !3112)
    #dbg_value(i64 %m, !3111, !DIExpression(), !3113)
    #dbg_value(i64 %n, !3110, !DIExpression(), !3114)
  %0 = mul i64 %m, %n, !dbg !3115
    #dbg_value(i64 %n, !3110, !DIExpression(), !3116)
  %1 = add i64 %n, 1, !dbg !3117
  %2 = mul i64 %0, %1, !dbg !3118
    #dbg_value(i64 %m, !3111, !DIExpression(), !3119)
  %3 = add i64 %m, 1, !dbg !3120
  %4 = mul i64 %2, %3, !dbg !3121
  %5 = sdiv i64 %4, 4, !dbg !3122
  ret i64 %5, !dbg !3123
}
