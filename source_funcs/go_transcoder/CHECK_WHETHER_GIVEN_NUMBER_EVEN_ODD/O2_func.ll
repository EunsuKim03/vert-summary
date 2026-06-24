define i1 @f_gold(i64 %n) local_unnamed_addr #9 !dbg !3021 {
entry:
    #dbg_value(i64 %n, !3026, !DIExpression(), !3027)
    #dbg_value(i64 %n, !3026, !DIExpression(), !3028)
  %0 = and i64 %n, 1, !dbg !3029
  %1 = icmp eq i64 %0, 0, !dbg !3029
  ret i1 %1, !dbg !3030
}
