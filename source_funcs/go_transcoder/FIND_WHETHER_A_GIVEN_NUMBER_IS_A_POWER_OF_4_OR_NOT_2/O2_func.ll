define i1 @f_gold(i64 %n) local_unnamed_addr #9 !dbg !3021 {
entry:
    #dbg_value(i64 %n, !3026, !DIExpression(), !3027)
    #dbg_value(i64 %n, !3026, !DIExpression(), !3028)
    #dbg_value(i64 %n, !3026, !DIExpression(), !3029)
    #dbg_value(i64 %n, !3026, !DIExpression(), !3030)
  %0 = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %n)
  %or.cond = icmp eq i64 %0, 1, !dbg !3031
  %1 = and i64 %n, 2863311530, !dbg !3031
  %2 = icmp eq i64 %1, 0, !dbg !3031
  %3 = and i1 %or.cond, %2, !dbg !3031
  ret i1 %3, !dbg !3032
}
