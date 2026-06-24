define i64 @f_gold(i64 %n, i64 %m) local_unnamed_addr #9 !dbg !3105 {
entry:
    #dbg_value(i64 %n, !3110, !DIExpression(), !3112)
    #dbg_value(i64 %m, !3111, !DIExpression(), !3112)
    #dbg_value(i64 %n, !3110, !DIExpression(), !3113)
    #dbg_value(i64 %m, !3111, !DIExpression(), !3114)
  %0 = icmp eq i64 %n, %m, !dbg !3115
  %n. = select i1 %0, i64 %n, i64 1, !dbg !3116
  ret i64 %n., !dbg !3116
}
