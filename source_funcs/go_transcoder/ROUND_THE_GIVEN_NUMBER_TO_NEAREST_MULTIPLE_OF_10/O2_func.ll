define range(i64 -9223372036854775800, -9223372036854775805) i64 @f_gold(i64 %n) local_unnamed_addr #9 !dbg !3021 {
entry:
    #dbg_value(i64 %n, !3026, !DIExpression(), !3029)
    #dbg_value(i64 %n, !3026, !DIExpression(), !3030)
  %n.fr = freeze i64 %n, !dbg !3031
  %0 = srem i64 %n.fr, 10, !dbg !3031
  %1 = sub nsw i64 %n.fr, %0, !dbg !3031
    #dbg_value(i64 %1, !3027, !DIExpression(), !3032)
    #dbg_value(i64 %1, !3027, !DIExpression(), !3033)
  %2 = add i64 %1, 10, !dbg !3034
    #dbg_value(i64 %2, !3028, !DIExpression(), !3035)
    #dbg_value(i64 %n, !3026, !DIExpression(), !3036)
    #dbg_value(i64 %1, !3027, !DIExpression(), !3037)
    #dbg_value(i64 %2, !3028, !DIExpression(), !3038)
    #dbg_value(i64 %n, !3026, !DIExpression(), !3039)
  %3 = sub i64 %2, %n.fr, !dbg !3040
  %4 = icmp sgt i64 %0, %3, !dbg !3041
  %. = select i1 %4, i64 %2, i64 %1, !dbg !3042
  ret i64 %., !dbg !3042
}
