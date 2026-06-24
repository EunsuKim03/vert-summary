define i64 @f_gold(i64 %n, i64 %d) local_unnamed_addr #9 !dbg !3105 {
entry:
    #dbg_value(i64 %n, !3110, !DIExpression(), !3112)
    #dbg_value(i64 %d, !3111, !DIExpression(), !3112)
    #dbg_value(i64 %n, !3110, !DIExpression(), !3113)
    #dbg_value(i64 %d, !3111, !DIExpression(), !3114)
  %0 = add i64 %d, -1, !dbg !3115
  %1 = and i64 %0, %n, !dbg !3116
  ret i64 %1, !dbg !3117
}
