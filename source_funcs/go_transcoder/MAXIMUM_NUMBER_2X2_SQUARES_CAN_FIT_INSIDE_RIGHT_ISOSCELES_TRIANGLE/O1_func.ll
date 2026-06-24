define range(i64 -4611686018427387904, 4611686018427387904) i64 @f_gold(i64 %base) local_unnamed_addr #9 !dbg !3105 {
entry:
    #dbg_value(i64 %base, !3110, !DIExpression(), !3111)
    #dbg_value(i64 %base, !3110, !DIExpression(), !3112)
  %0 = add i64 %base, -2, !dbg !3113
    #dbg_value(i64 %0, !3110, !DIExpression(), !3114)
    #dbg_value(i64 %0, !3110, !DIExpression(), !3115)
  %1 = sdiv i64 %0, 2, !dbg !3116
    #dbg_value(i64 %1, !3110, !DIExpression(), !3117)
    #dbg_value(i64 %1, !3110, !DIExpression(), !3118)
    #dbg_value(i64 %1, !3110, !DIExpression(), !3119)
  %2 = add nsw i64 %1, 1, !dbg !3120
  %3 = mul i64 %2, %1, !dbg !3121
  %4 = sdiv i64 %3, 2, !dbg !3122
  ret i64 %4, !dbg !3123
}
