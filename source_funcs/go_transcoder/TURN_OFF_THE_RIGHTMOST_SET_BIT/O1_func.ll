define i64 @f_gold(i64 %n) local_unnamed_addr #9 !dbg !3105 {
entry:
    #dbg_value(i64 %n, !3110, !DIExpression(), !3111)
    #dbg_value(i64 %n, !3110, !DIExpression(), !3112)
    #dbg_value(i64 %n, !3110, !DIExpression(), !3113)
  %0 = add i64 %n, -1, !dbg !3114
  %1 = and i64 %0, %n, !dbg !3115
  ret i64 %1, !dbg !3116
}
