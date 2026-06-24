define i1 @f_gold(i64 %x1, i64 %y1, i64 %x2, i64 %y2) local_unnamed_addr #9 !dbg !3021 {
entry:
    #dbg_value(i64 %x1, !3026, !DIExpression(), !3030)
    #dbg_value(i64 %y1, !3027, !DIExpression(), !3030)
    #dbg_value(i64 %x2, !3028, !DIExpression(), !3030)
    #dbg_value(i64 %y2, !3029, !DIExpression(), !3030)
    #dbg_value(i64 %x1, !3026, !DIExpression(), !3031)
    #dbg_value(i64 %y2, !3029, !DIExpression(), !3032)
    #dbg_value(i64 %y1, !3027, !DIExpression(), !3033)
  %0 = sub i64 %y2, %y1, !dbg !3034
  %1 = mul i64 %0, %x1, !dbg !3035
    #dbg_value(i64 %y1, !3027, !DIExpression(), !3036)
    #dbg_value(i64 %x2, !3028, !DIExpression(), !3037)
    #dbg_value(i64 %x1, !3026, !DIExpression(), !3038)
  %2 = sub i64 %x2, %x1, !dbg !3039
  %3 = mul i64 %2, %y1, !dbg !3040
  %4 = icmp eq i64 %1, %3, !dbg !3041
  ret i1 %4, !dbg !3042
}
