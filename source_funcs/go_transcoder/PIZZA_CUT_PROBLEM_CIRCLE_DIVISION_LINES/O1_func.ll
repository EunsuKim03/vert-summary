define range(i64 -4611686018427387903, 4611686018427387905) i64 @f_gold(i64 %n) local_unnamed_addr #9 !dbg !3105 {
entry:
    #dbg_value(i64 %n, !3110, !DIExpression(), !3111)
    #dbg_value(i64 %n, !3110, !DIExpression(), !3112)
    #dbg_value(i64 %n, !3110, !DIExpression(), !3113)
  %0 = add i64 %n, 1, !dbg !3114
  %1 = mul i64 %0, %n, !dbg !3115
  %2 = sdiv i64 %1, 2, !dbg !3116
  %3 = add nsw i64 %2, 1, !dbg !3117
  ret i64 %3, !dbg !3118
}
