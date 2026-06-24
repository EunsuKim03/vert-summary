define i1 @f_gold(i64 %n) local_unnamed_addr #9 !dbg !3105 {
entry:
    #dbg_value(i64 %n, !3110, !DIExpression(), !3111)
    #dbg_value(i64 %n, !3110, !DIExpression(), !3112)
  %0 = and i64 %n, 1, !dbg !3113
  %1 = icmp eq i64 %0, 0, !dbg !3113
  ret i1 %1, !dbg !3114
}
