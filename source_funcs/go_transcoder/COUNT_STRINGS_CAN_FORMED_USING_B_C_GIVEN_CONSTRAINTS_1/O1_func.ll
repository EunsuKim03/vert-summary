define i64 @f_gold(i64 %n) local_unnamed_addr #9 !dbg !3105 {
entry:
    #dbg_value(i64 %n, !3110, !DIExpression(), !3111)
    #dbg_value(i64 %n, !3110, !DIExpression(), !3112)
  %0 = shl i64 %n, 1, !dbg !3113
  %1 = or disjoint i64 %0, 1, !dbg !3114
    #dbg_value(i64 %n, !3110, !DIExpression(), !3115)
    #dbg_value(i64 %n, !3110, !DIExpression(), !3116)
    #dbg_value(i64 %n, !3110, !DIExpression(), !3117)
  %2 = mul i64 %n, %n, !dbg !3118
  %3 = add i64 %2, -1, !dbg !3119
  %4 = mul i64 %3, %n, !dbg !3120
  %5 = sdiv i64 %4, 2, !dbg !3121
  %6 = add i64 %1, %5, !dbg !3122
  ret i64 %6, !dbg !3123
}
