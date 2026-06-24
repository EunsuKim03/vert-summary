define range(i64 0, -3) i64 @f_gold(i64 %a) local_unnamed_addr #9 !dbg !3105 {
entry:
    #dbg_value(i64 %a, !3110, !DIExpression(), !3111)
    #dbg_value(i64 %a, !3110, !DIExpression(), !3112)
  %0 = shl i64 %a, 2, !dbg !3113
  ret i64 %0, !dbg !3114
}
