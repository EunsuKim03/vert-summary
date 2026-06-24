define range(i64 -4611686018427387904, 4611686018427387904) i64 @f_gold(i64 %a, i64 %b) local_unnamed_addr #9 !dbg !3105 {
entry:
    #dbg_value(i64 %a, !3110, !DIExpression(), !3112)
    #dbg_value(i64 %b, !3111, !DIExpression(), !3112)
    #dbg_value(i64 %a, !3110, !DIExpression(), !3113)
    #dbg_value(i64 %b, !3111, !DIExpression(), !3114)
  %0 = add i64 %b, %a, !dbg !3115
  %1 = sdiv i64 %0, 2, !dbg !3116
  ret i64 %1, !dbg !3117
}
