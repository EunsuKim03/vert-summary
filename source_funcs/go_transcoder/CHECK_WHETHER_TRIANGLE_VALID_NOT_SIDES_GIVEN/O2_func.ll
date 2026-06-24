define noundef i1 @f_gold(i64 %a, i64 %b, i64 %c) local_unnamed_addr #9 !dbg !3021 {
entry:
    #dbg_value(i64 %a, !3026, !DIExpression(), !3029)
    #dbg_value(i64 %b, !3027, !DIExpression(), !3029)
    #dbg_value(i64 %c, !3028, !DIExpression(), !3029)
    #dbg_value(i64 %a, !3026, !DIExpression(), !3030)
    #dbg_value(i64 %b, !3027, !DIExpression(), !3031)
  %0 = add i64 %b, %a, !dbg !3032
    #dbg_value(i64 %c, !3028, !DIExpression(), !3033)
  %.not = icmp sgt i64 %0, %c, !dbg !3034
    #dbg_value(i64 %a, !3026, !DIExpression(), !3035)
    #dbg_value(i64 %c, !3028, !DIExpression(), !3036)
  %1 = add i64 %c, %a
    #dbg_value(i64 %b, !3027, !DIExpression(), !3037)
  %.not1 = icmp sgt i64 %1, %b
  %or.cond = and i1 %.not, %.not1, !dbg !3038
    #dbg_value(i64 %b, !3027, !DIExpression(), !3039)
    #dbg_value(i64 %c, !3028, !DIExpression(), !3040)
  %2 = add i64 %c, %b
    #dbg_value(i64 %a, !3026, !DIExpression(), !3041)
  %.not2 = icmp sgt i64 %2, %a
  %or.cond3 = and i1 %.not2, %or.cond, !dbg !3038
  ret i1 %or.cond3, !dbg !3038
}
