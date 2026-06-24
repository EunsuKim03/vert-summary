define i64 @f_gold(i64 %n) local_unnamed_addr #9 !dbg !3105 {
entry:
    #dbg_value(i64 %n, !3110, !DIExpression(), !3111)
    #dbg_value(i64 %n, !3110, !DIExpression(), !3112)
    #dbg_value(i64 %n, !3110, !DIExpression(), !3113)
  %0 = shl i64 %n, 1, !dbg !3114
  %1 = add i64 %0, -1, !dbg !3115
  %2 = mul i64 %1, %n, !dbg !3116
  ret i64 %2, !dbg !3117
}
