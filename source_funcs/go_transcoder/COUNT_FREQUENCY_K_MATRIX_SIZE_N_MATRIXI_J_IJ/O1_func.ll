define i64 @f_gold(i64 %n, i64 %k) local_unnamed_addr #9 !dbg !3105 {
entry:
    #dbg_value(i64 %n, !3110, !DIExpression(), !3112)
    #dbg_value(i64 %k, !3111, !DIExpression(), !3112)
    #dbg_value(i64 %n, !3110, !DIExpression(), !3113)
  %0 = add i64 %n, 1, !dbg !3114
    #dbg_value(i64 %k, !3111, !DIExpression(), !3115)
  %.not = icmp slt i64 %0, %k, !dbg !3116
  %1 = add i64 %k, -1, !dbg !3117
  %2 = shl i64 %n, 1, !dbg !3117
  %3 = or disjoint i64 %2, 1, !dbg !3117
  %4 = sub i64 %3, %k, !dbg !3117
  %common.ret.op = select i1 %.not, i64 %4, i64 %1, !dbg !3117
  ret i64 %common.ret.op, !dbg !3117
}
