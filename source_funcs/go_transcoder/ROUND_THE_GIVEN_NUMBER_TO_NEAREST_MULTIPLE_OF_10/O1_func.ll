define range(i64 -9223372036854775800, -9223372036854775805) i64 @f_gold(i64 %n) local_unnamed_addr #9 !dbg !3105 {
entry:
    #dbg_value(i64 %n, !3110, !DIExpression(), !3113)
    #dbg_value(i64 %n, !3110, !DIExpression(), !3114)
  %n.fr = freeze i64 %n, !dbg !3115
  %0 = srem i64 %n.fr, 10, !dbg !3115
  %1 = sub nsw i64 %n.fr, %0, !dbg !3115
    #dbg_value(i64 %1, !3111, !DIExpression(), !3116)
    #dbg_value(i64 %1, !3111, !DIExpression(), !3117)
  %2 = add i64 %1, 10, !dbg !3118
    #dbg_value(i64 %2, !3112, !DIExpression(), !3119)
    #dbg_value(i64 %n, !3110, !DIExpression(), !3120)
    #dbg_value(i64 %1, !3111, !DIExpression(), !3121)
    #dbg_value(i64 %2, !3112, !DIExpression(), !3122)
    #dbg_value(i64 %n, !3110, !DIExpression(), !3123)
  %3 = sub i64 %2, %n.fr, !dbg !3124
  %4 = icmp sgt i64 %0, %3, !dbg !3125
  %. = select i1 %4, i64 %2, i64 %1, !dbg !3126
  ret i64 %., !dbg !3126
}
