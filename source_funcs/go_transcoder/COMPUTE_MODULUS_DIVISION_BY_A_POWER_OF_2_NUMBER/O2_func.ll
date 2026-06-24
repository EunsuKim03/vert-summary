define i64 @f_gold(i64 %n, i64 %d) local_unnamed_addr #9 !dbg !3021 {
entry:
    #dbg_value(i64 %n, !3026, !DIExpression(), !3028)
    #dbg_value(i64 %d, !3027, !DIExpression(), !3028)
    #dbg_value(i64 %n, !3026, !DIExpression(), !3029)
    #dbg_value(i64 %d, !3027, !DIExpression(), !3030)
  %0 = add i64 %d, -1, !dbg !3031
  %1 = and i64 %0, %n, !dbg !3032
  ret i64 %1, !dbg !3033
}
