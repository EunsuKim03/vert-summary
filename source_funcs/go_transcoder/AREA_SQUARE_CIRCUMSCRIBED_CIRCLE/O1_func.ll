define i64 @f_gold(i64 %r) local_unnamed_addr #9 !dbg !3105 {
entry:
    #dbg_value(i64 %r, !3110, !DIExpression(), !3111)
    #dbg_value(i64 %r, !3110, !DIExpression(), !3112)
  %0 = shl i64 %r, 1, !dbg !3113
    #dbg_value(i64 %r, !3110, !DIExpression(), !3114)
  %1 = mul i64 %0, %r, !dbg !3115
  ret i64 %1, !dbg !3116
}
