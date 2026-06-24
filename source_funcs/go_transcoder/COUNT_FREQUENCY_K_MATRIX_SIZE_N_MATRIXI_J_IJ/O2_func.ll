define i64 @f_gold(i64 %n, i64 %k) local_unnamed_addr #9 !dbg !3021 {
entry:
    #dbg_value(i64 %n, !3026, !DIExpression(), !3028)
    #dbg_value(i64 %k, !3027, !DIExpression(), !3028)
    #dbg_value(i64 %n, !3026, !DIExpression(), !3029)
  %0 = add i64 %n, 1, !dbg !3030
    #dbg_value(i64 %k, !3027, !DIExpression(), !3031)
  %.not = icmp slt i64 %0, %k, !dbg !3032
  %1 = add i64 %k, -1, !dbg !3033
  %2 = shl i64 %n, 1, !dbg !3033
  %3 = or disjoint i64 %2, 1, !dbg !3033
  %4 = sub i64 %3, %k, !dbg !3033
  %common.ret.op = select i1 %.not, i64 %4, i64 %1, !dbg !3033
  ret i64 %common.ret.op, !dbg !3033
}
