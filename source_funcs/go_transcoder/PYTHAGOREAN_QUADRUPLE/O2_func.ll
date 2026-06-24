define noundef i1 @f_gold(i64 %a, i64 %b, i64 %c, i64 %d) local_unnamed_addr #9 !dbg !3021 {
entry:
    #dbg_value(i64 %a, !3026, !DIExpression(), !3031)
    #dbg_value(i64 %b, !3027, !DIExpression(), !3031)
    #dbg_value(i64 %c, !3028, !DIExpression(), !3031)
    #dbg_value(i64 %d, !3029, !DIExpression(), !3031)
    #dbg_value(i64 %a, !3026, !DIExpression(), !3032)
    #dbg_value(i64 %a, !3026, !DIExpression(), !3033)
  %0 = mul i64 %a, %a, !dbg !3034
    #dbg_value(i64 %b, !3027, !DIExpression(), !3035)
    #dbg_value(i64 %b, !3027, !DIExpression(), !3036)
  %1 = mul i64 %b, %b, !dbg !3037
  %2 = add i64 %1, %0, !dbg !3038
    #dbg_value(i64 %c, !3028, !DIExpression(), !3039)
    #dbg_value(i64 %c, !3028, !DIExpression(), !3040)
  %3 = mul i64 %c, %c, !dbg !3041
  %4 = add i64 %2, %3, !dbg !3042
    #dbg_value(i64 %4, !3030, !DIExpression(), !3043)
    #dbg_value(i64 %d, !3029, !DIExpression(), !3044)
    #dbg_value(i64 %d, !3029, !DIExpression(), !3045)
  %5 = mul i64 %d, %d, !dbg !3046
    #dbg_value(i64 %4, !3030, !DIExpression(), !3047)
  %6 = icmp eq i64 %5, %4, !dbg !3048
  ret i1 %6, !dbg !3049
}
