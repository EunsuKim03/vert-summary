define range(i64 -6148914691236517205, 6148914691236517205) i64 @f_gold(i64 %n) local_unnamed_addr #9 !dbg !3021 {
entry:
    #dbg_value(i64 %n, !3026, !DIExpression(), !3028)
  %0 = add i64 %n, -1, !dbg !3029
    #dbg_value(i64 %0, !3026, !DIExpression(), !3029)
    #dbg_value(i64 0, !3027, !DIExpression(), !3030)
    #dbg_value(i64 %0, !3026, !DIExpression(), !3031)
    #dbg_value(i64 %0, !3026, !DIExpression(), !3032)
  %1 = mul i64 %0, %n, !dbg !3033
  %2 = sdiv i64 %1, 2, !dbg !3034
    #dbg_value(i64 %2, !3027, !DIExpression(), !3035)
    #dbg_value(i64 %0, !3026, !DIExpression(), !3036)
    #dbg_value(i64 %0, !3026, !DIExpression(), !3037)
    #dbg_value(i64 %0, !3026, !DIExpression(), !3038)
  %3 = shl i64 %0, 1, !dbg !3039
  %4 = or disjoint i64 %3, 1, !dbg !3040
  %5 = mul i64 %4, %1, !dbg !3041
  %6 = sdiv i64 %5, 6, !dbg !3042
  %7 = add nsw i64 %6, %2, !dbg !3043
    #dbg_value(i64 %7, !3027, !DIExpression(), !3043)
    #dbg_value(i64 %7, !3027, !DIExpression(), !3044)
  ret i64 %7, !dbg !3045
}
