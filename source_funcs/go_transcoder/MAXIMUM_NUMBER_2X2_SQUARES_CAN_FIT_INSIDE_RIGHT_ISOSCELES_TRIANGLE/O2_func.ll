define range(i64 -4611686018427387904, 4611686018427387904) i64 @f_gold(i64 %base) local_unnamed_addr #9 !dbg !3021 {
entry:
    #dbg_value(i64 %base, !3026, !DIExpression(), !3027)
    #dbg_value(i64 %base, !3026, !DIExpression(), !3028)
  %0 = add i64 %base, -2, !dbg !3029
    #dbg_value(i64 %0, !3026, !DIExpression(), !3030)
    #dbg_value(i64 %0, !3026, !DIExpression(), !3031)
  %1 = sdiv i64 %0, 2, !dbg !3032
    #dbg_value(i64 %1, !3026, !DIExpression(), !3033)
    #dbg_value(i64 %1, !3026, !DIExpression(), !3034)
    #dbg_value(i64 %1, !3026, !DIExpression(), !3035)
  %2 = add nsw i64 %1, 1, !dbg !3036
  %3 = mul i64 %2, %1, !dbg !3037
  %4 = sdiv i64 %3, 2, !dbg !3038
  ret i64 %4, !dbg !3039
}
