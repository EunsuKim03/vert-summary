define i64 @f_gold(i64 %n, i64 %m) local_unnamed_addr #9 !dbg !3021 {
entry:
    #dbg_value(i64 %n, !3026, !DIExpression(), !3028)
    #dbg_value(i64 %m, !3027, !DIExpression(), !3028)
    #dbg_value(i64 %n, !3026, !DIExpression(), !3029)
    #dbg_value(i64 %m, !3027, !DIExpression(), !3030)
  %0 = icmp eq i64 %n, %m, !dbg !3031
  %n. = select i1 %0, i64 %n, i64 1, !dbg !3032
  ret i64 %n., !dbg !3032
}
