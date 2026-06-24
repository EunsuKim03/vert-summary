define i64 @f_gold(i64 %x) local_unnamed_addr #9 !dbg !3105 {
entry:
    #dbg_value(i64 %x, !3110, !DIExpression(), !3111)
    #dbg_value(i64 %x, !3110, !DIExpression(), !3112)
    #dbg_value(i64 %x, !3110, !DIExpression(), !3113)
  %0 = mul i64 %x, 3, !dbg !3114
    #dbg_value(i64 %x, !3110, !DIExpression(), !3115)
  %1 = ashr i64 %x, 1, !dbg !3116
  %2 = add i64 %0, %1, !dbg !3117
  ret i64 %2, !dbg !3118
}
