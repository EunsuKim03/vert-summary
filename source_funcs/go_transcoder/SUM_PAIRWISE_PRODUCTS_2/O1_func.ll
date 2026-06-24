define double @f_gold(i64 %n) local_unnamed_addr #9 !dbg !3105 {
entry:
    #dbg_value(i64 %n, !3110, !DIExpression(), !3111)
    #dbg_value(i64 %n, !3110, !DIExpression(), !3112)
    #dbg_value(i64 %n, !3110, !DIExpression(), !3113)
  %0 = add i64 %n, 1, !dbg !3114
  %1 = mul i64 %0, %n, !dbg !3115
    #dbg_value(i64 %n, !3110, !DIExpression(), !3116)
  %2 = add i64 %n, 2, !dbg !3117
  %3 = mul i64 %1, %2, !dbg !3118
    #dbg_value(i64 %n, !3110, !DIExpression(), !3119)
  %4 = mul i64 %n, 3, !dbg !3120
  %5 = add i64 %4, 1, !dbg !3121
  %6 = mul i64 %3, %5, !dbg !3122
  %7 = sdiv i64 %6, 24, !dbg !3123
  %8 = sitofp i64 %7 to double, !dbg !3124
  ret double %8, !dbg !3125
}
