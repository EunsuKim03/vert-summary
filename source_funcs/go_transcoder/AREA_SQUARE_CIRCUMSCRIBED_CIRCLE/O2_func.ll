define i64 @f_gold(i64 %r) local_unnamed_addr #9 !dbg !3021 {
entry:
    #dbg_value(i64 %r, !3026, !DIExpression(), !3027)
    #dbg_value(i64 %r, !3026, !DIExpression(), !3028)
  %0 = shl i64 %r, 1, !dbg !3029
    #dbg_value(i64 %r, !3026, !DIExpression(), !3030)
  %1 = mul i64 %0, %r, !dbg !3031
  ret i64 %1, !dbg !3032
}
