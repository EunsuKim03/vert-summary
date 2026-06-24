define range(i64 0, -1) i64 @f_gold(i64 %diameter, i64 %height) local_unnamed_addr #9 !dbg !3105 {
entry:
    #dbg_value(i64 %diameter, !3110, !DIExpression(), !3112)
    #dbg_value(i64 %height, !3111, !DIExpression(), !3112)
    #dbg_value(i64 %diameter, !3110, !DIExpression(), !3113)
    #dbg_value(i64 %height, !3111, !DIExpression(), !3114)
  %0 = add i64 %height, %diameter, !dbg !3115
  %1 = shl i64 %0, 1, !dbg !3116
  ret i64 %1, !dbg !3117
}
