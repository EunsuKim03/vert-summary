define i64 @f_gold(i64 %s) local_unnamed_addr #9 !dbg !3021 {
entry:
    #dbg_value(i64 %s, !3026, !DIExpression(), !3030)
    #dbg_value(i64 %s, !3026, !DIExpression(), !3031)
  %0 = sdiv i64 %s, 3, !dbg !3032
    #dbg_value(i64 %0, !3027, !DIExpression(), !3033)
    #dbg_value(i64 %0, !3027, !DIExpression(), !3034)
  %1 = sub i64 %s, %0, !dbg !3035
    #dbg_value(i64 %1, !3026, !DIExpression(), !3035)
    #dbg_value(i64 %1, !3026, !DIExpression(), !3036)
  %2 = sdiv i64 %1, 2, !dbg !3037
    #dbg_value(i64 %2, !3028, !DIExpression(), !3038)
    #dbg_value(i64 %1, !3026, !DIExpression(), !3039)
    #dbg_value(i64 %2, !3028, !DIExpression(), !3040)
  %3 = sub i64 %1, %2, !dbg !3041
    #dbg_value(i64 %3, !3029, !DIExpression(), !3042)
    #dbg_value(i64 %0, !3027, !DIExpression(), !3043)
    #dbg_value(i64 %2, !3028, !DIExpression(), !3044)
  %4 = mul i64 %2, %0, !dbg !3045
    #dbg_value(i64 %3, !3029, !DIExpression(), !3046)
  %5 = mul i64 %4, %3, !dbg !3047
  ret i64 %5, !dbg !3048
}
