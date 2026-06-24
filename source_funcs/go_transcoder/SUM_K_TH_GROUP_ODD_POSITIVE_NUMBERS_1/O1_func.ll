define i64 @f_gold(i64 %k) local_unnamed_addr #9 !dbg !3105 {
entry:
    #dbg_value(i64 %k, !3110, !DIExpression(), !3111)
    #dbg_value(i64 %k, !3110, !DIExpression(), !3112)
    #dbg_value(i64 %k, !3110, !DIExpression(), !3113)
  %0 = mul i64 %k, %k, !dbg !3114
    #dbg_value(i64 %k, !3110, !DIExpression(), !3115)
  %1 = mul i64 %0, %k, !dbg !3116
  ret i64 %1, !dbg !3117
}
