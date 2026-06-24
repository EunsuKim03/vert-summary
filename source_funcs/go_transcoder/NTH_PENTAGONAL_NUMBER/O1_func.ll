define range(i64 -4611686018427387904, 4611686018427387904) i64 @f_gold(i64 %n) local_unnamed_addr #9 !dbg !3105 {
entry:
    #dbg_value(i64 %n, !3110, !DIExpression(), !3111)
    #dbg_value(i64 %n, !3110, !DIExpression(), !3112)
  %0 = mul i64 %n, 3, !dbg !3113
    #dbg_value(i64 %n, !3110, !DIExpression(), !3114)
    #dbg_value(i64 %n, !3110, !DIExpression(), !3115)
  %1 = add i64 %0, -1, !dbg !3116
  %2 = mul i64 %1, %n, !dbg !3116
  %3 = sdiv i64 %2, 2, !dbg !3117
  ret i64 %3, !dbg !3118
}
