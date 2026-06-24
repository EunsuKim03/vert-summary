define i64 @f_gold(i64 %side) local_unnamed_addr #9 !dbg !3021 {
entry:
    #dbg_value(i64 %side, !3026, !DIExpression(), !3028)
    #dbg_value(i64 %side, !3026, !DIExpression(), !3029)
    #dbg_value(i64 %side, !3026, !DIExpression(), !3030)
  %0 = mul i64 %side, %side, !dbg !3031
    #dbg_value(i64 %0, !3027, !DIExpression(), !3032)
    #dbg_value(i64 %0, !3027, !DIExpression(), !3033)
  ret i64 %0, !dbg !3034
}
