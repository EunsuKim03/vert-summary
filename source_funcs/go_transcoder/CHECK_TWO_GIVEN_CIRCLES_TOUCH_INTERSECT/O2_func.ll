define noundef range(i64 -1, 2) i64 @f_gold(i64 %x1, i64 %y1, i64 %x2, i64 %y2, i64 %r1, i64 %r2) local_unnamed_addr #9 !dbg !3021 {
entry:
    #dbg_value(i64 %x1, !3026, !DIExpression(), !3034)
    #dbg_value(i64 %y1, !3027, !DIExpression(), !3034)
    #dbg_value(i64 %x2, !3028, !DIExpression(), !3034)
    #dbg_value(i64 %y2, !3029, !DIExpression(), !3034)
    #dbg_value(i64 %r1, !3030, !DIExpression(), !3034)
    #dbg_value(i64 %r2, !3031, !DIExpression(), !3034)
    #dbg_value(i64 %x1, !3026, !DIExpression(), !3035)
    #dbg_value(i64 %x2, !3028, !DIExpression(), !3036)
  %0 = sub i64 %x1, %x2, !dbg !3037
    #dbg_value(i64 %x1, !3026, !DIExpression(), !3038)
    #dbg_value(i64 %x2, !3028, !DIExpression(), !3039)
  %1 = mul i64 %0, %0, !dbg !3040
    #dbg_value(i64 %y1, !3027, !DIExpression(), !3041)
    #dbg_value(i64 %y2, !3029, !DIExpression(), !3042)
  %2 = sub i64 %y1, %y2, !dbg !3043
    #dbg_value(i64 %y1, !3027, !DIExpression(), !3044)
    #dbg_value(i64 %y2, !3029, !DIExpression(), !3045)
  %3 = mul i64 %2, %2, !dbg !3046
  %4 = add i64 %3, %1, !dbg !3047
    #dbg_value(i64 %4, !3032, !DIExpression(), !3048)
    #dbg_value(i64 %r1, !3030, !DIExpression(), !3049)
    #dbg_value(i64 %r2, !3031, !DIExpression(), !3050)
  %5 = add i64 %r2, %r1, !dbg !3051
    #dbg_value(i64 %r1, !3030, !DIExpression(), !3052)
    #dbg_value(i64 %r2, !3031, !DIExpression(), !3053)
  %6 = mul i64 %5, %5, !dbg !3054
    #dbg_value(i64 %6, !3033, !DIExpression(), !3055)
    #dbg_value(i64 %4, !3032, !DIExpression(), !3056)
    #dbg_value(i64 %6, !3033, !DIExpression(), !3057)
  %7 = icmp eq i64 %4, %6, !dbg !3058
  %8 = icmp sgt i64 %4, %6, !dbg !3059
  %. = sext i1 %8 to i64, !dbg !3059
  %common.ret.op = select i1 %7, i64 1, i64 %., !dbg !3059
  ret i64 %common.ret.op, !dbg !3059
}
