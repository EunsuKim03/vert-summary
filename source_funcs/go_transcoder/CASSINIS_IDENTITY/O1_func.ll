define noundef range(i64 -1, 2) i64 @f_gold(i64 %n) local_unnamed_addr #9 !dbg !3105 {
entry:
    #dbg_value(i64 %n, !3110, !DIExpression(), !3111)
    #dbg_value(i64 %n, !3110, !DIExpression(), !3112)
  %0 = and i64 %n, 1, !dbg !3113
  %.not = icmp eq i64 %0, 0, !dbg !3114
  %. = select i1 %.not, i64 1, i64 -1, !dbg !3115
  ret i64 %., !dbg !3115
}
