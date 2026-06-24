define range(i64 -2305843009213693952, 2305843009213693952) i64 @f_gold(i64 %n, i64 %m) local_unnamed_addr #9 !dbg !3021 {
entry:
    #dbg_value(i64 %n, !3026, !DIExpression(), !3028)
    #dbg_value(i64 %m, !3027, !DIExpression(), !3028)
    #dbg_value(i64 %m, !3027, !DIExpression(), !3029)
    #dbg_value(i64 %n, !3026, !DIExpression(), !3030)
  %0 = mul i64 %m, %n, !dbg !3031
    #dbg_value(i64 %n, !3026, !DIExpression(), !3032)
  %1 = add i64 %n, 1, !dbg !3033
  %2 = mul i64 %0, %1, !dbg !3034
    #dbg_value(i64 %m, !3027, !DIExpression(), !3035)
  %3 = add i64 %m, 1, !dbg !3036
  %4 = mul i64 %2, %3, !dbg !3037
  %5 = sdiv i64 %4, 4, !dbg !3038
  ret i64 %5, !dbg !3039
}
