define i64 @f_gold(i64 %process, i64 %need) local_unnamed_addr #9 !dbg !3021 {
entry:
    #dbg_value(i64 %process, !3026, !DIExpression(), !3029)
    #dbg_value(i64 %need, !3027, !DIExpression(), !3029)
    #dbg_value(i64 0, !3028, !DIExpression(), !3030)
    #dbg_value(i64 %process, !3026, !DIExpression(), !3031)
    #dbg_value(i64 %need, !3027, !DIExpression(), !3032)
  %0 = add i64 %need, -1, !dbg !3033
  %1 = mul i64 %0, %process, !dbg !3034
  %2 = add i64 %1, 1, !dbg !3035
    #dbg_value(i64 %2, !3028, !DIExpression(), !3036)
    #dbg_value(i64 %2, !3028, !DIExpression(), !3037)
  ret i64 %2, !dbg !3038
}
