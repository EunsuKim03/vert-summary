define i64 @f_gold(i64 %side) local_unnamed_addr #9 !dbg !3105 {
entry:
    #dbg_value(i64 %side, !3110, !DIExpression(), !3112)
    #dbg_value(i64 %side, !3110, !DIExpression(), !3113)
    #dbg_value(i64 %side, !3110, !DIExpression(), !3114)
  %0 = mul i64 %side, %side, !dbg !3115
    #dbg_value(i64 %0, !3111, !DIExpression(), !3116)
    #dbg_value(i64 %0, !3111, !DIExpression(), !3117)
  ret i64 %0, !dbg !3118
}
