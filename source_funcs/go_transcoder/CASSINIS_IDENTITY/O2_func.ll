define noundef range(i64 -1, 2) i64 @f_gold(i64 %n) local_unnamed_addr #9 !dbg !3021 {
entry:
    #dbg_value(i64 %n, !3026, !DIExpression(), !3027)
    #dbg_value(i64 %n, !3026, !DIExpression(), !3028)
  %0 = and i64 %n, 1, !dbg !3029
  %.not = icmp eq i64 %0, 0, !dbg !3030
  %. = select i1 %.not, i64 1, i64 -1, !dbg !3031
  ret i64 %., !dbg !3031
}
