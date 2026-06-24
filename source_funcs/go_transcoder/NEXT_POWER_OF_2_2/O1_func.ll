define i64 @f_gold(i64 %n) local_unnamed_addr #9 !dbg !3105 {
entry:
    #dbg_value(i64 %n, !3110, !DIExpression(), !3111)
  %0 = add i64 %n, -1, !dbg !3112
    #dbg_value(i64 %0, !3110, !DIExpression(), !3112)
    #dbg_value(i64 %0, !3110, !DIExpression(), !3113)
  %1 = lshr i64 %0, 1, !dbg !3114
  %2 = or i64 %1, %0, !dbg !3115
    #dbg_value(i64 %2, !3110, !DIExpression(), !3115)
    #dbg_value(i64 %2, !3110, !DIExpression(), !3116)
  %3 = lshr i64 %2, 2, !dbg !3117
  %4 = or i64 %3, %2, !dbg !3118
    #dbg_value(i64 %4, !3110, !DIExpression(), !3118)
    #dbg_value(i64 %4, !3110, !DIExpression(), !3119)
  %5 = lshr i64 %4, 4, !dbg !3120
  %6 = or i64 %5, %4, !dbg !3121
    #dbg_value(i64 %6, !3110, !DIExpression(), !3121)
    #dbg_value(i64 %6, !3110, !DIExpression(), !3122)
  %7 = lshr i64 %6, 8, !dbg !3123
  %8 = or i64 %7, %6, !dbg !3124
    #dbg_value(i64 %8, !3110, !DIExpression(), !3124)
    #dbg_value(i64 %8, !3110, !DIExpression(), !3125)
  %9 = lshr i64 %8, 16, !dbg !3126
  %10 = or i64 %9, %8, !dbg !3127
    #dbg_value(i64 %10, !3110, !DIExpression(), !3127)
  %11 = add i64 %10, 1, !dbg !3128
    #dbg_value(i64 %11, !3110, !DIExpression(), !3128)
    #dbg_value(i64 %11, !3110, !DIExpression(), !3129)
  ret i64 %11, !dbg !3130
}
