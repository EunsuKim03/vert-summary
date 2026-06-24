define i64 @f_gold(i64 %n) local_unnamed_addr #9 !dbg !3021 {
entry:
    #dbg_value(i64 %n, !3026, !DIExpression(), !3027)
  %0 = add i64 %n, -1, !dbg !3028
    #dbg_value(i64 %0, !3026, !DIExpression(), !3028)
    #dbg_value(i64 %0, !3026, !DIExpression(), !3029)
  %1 = lshr i64 %0, 1, !dbg !3030
  %2 = or i64 %1, %0, !dbg !3031
    #dbg_value(i64 %2, !3026, !DIExpression(), !3031)
    #dbg_value(i64 %2, !3026, !DIExpression(), !3032)
  %3 = lshr i64 %2, 2, !dbg !3033
  %4 = or i64 %3, %2, !dbg !3034
    #dbg_value(i64 %4, !3026, !DIExpression(), !3034)
    #dbg_value(i64 %4, !3026, !DIExpression(), !3035)
  %5 = lshr i64 %4, 4, !dbg !3036
  %6 = or i64 %5, %4, !dbg !3037
    #dbg_value(i64 %6, !3026, !DIExpression(), !3037)
    #dbg_value(i64 %6, !3026, !DIExpression(), !3038)
  %7 = lshr i64 %6, 8, !dbg !3039
  %8 = or i64 %7, %6, !dbg !3040
    #dbg_value(i64 %8, !3026, !DIExpression(), !3040)
    #dbg_value(i64 %8, !3026, !DIExpression(), !3041)
  %9 = lshr i64 %8, 16, !dbg !3042
  %10 = or i64 %9, %8, !dbg !3043
    #dbg_value(i64 %10, !3026, !DIExpression(), !3043)
  %11 = add i64 %10, 1, !dbg !3044
    #dbg_value(i64 %11, !3026, !DIExpression(), !3044)
    #dbg_value(i64 %11, !3026, !DIExpression(), !3045)
  ret i64 %11, !dbg !3046
}
