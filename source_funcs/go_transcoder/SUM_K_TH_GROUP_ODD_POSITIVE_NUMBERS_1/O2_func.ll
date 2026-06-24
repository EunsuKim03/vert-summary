define i64 @f_gold(i64 %k) local_unnamed_addr #9 !dbg !3021 {
entry:
    #dbg_value(i64 %k, !3026, !DIExpression(), !3027)
    #dbg_value(i64 %k, !3026, !DIExpression(), !3028)
    #dbg_value(i64 %k, !3026, !DIExpression(), !3029)
  %0 = mul i64 %k, %k, !dbg !3030
    #dbg_value(i64 %k, !3026, !DIExpression(), !3031)
  %1 = mul i64 %0, %k, !dbg !3032
  ret i64 %1, !dbg !3033
}
