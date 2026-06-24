define i1 @f_gold(i64 %n) local_unnamed_addr #9 !dbg !3105 {
entry:
    #dbg_value(i64 %n, !3110, !DIExpression(), !3111)
    #dbg_value(i64 %n, !3110, !DIExpression(), !3112)
    #dbg_value(i64 %n, !3110, !DIExpression(), !3113)
    #dbg_value(i64 %n, !3110, !DIExpression(), !3114)
  %0 = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %n)
  %or.cond = icmp eq i64 %0, 1, !dbg !3115
  %1 = and i64 %n, 2863311530, !dbg !3115
  %2 = icmp eq i64 %1, 0, !dbg !3115
  %3 = and i1 %or.cond, %2, !dbg !3115
  ret i1 %3, !dbg !3116
}
