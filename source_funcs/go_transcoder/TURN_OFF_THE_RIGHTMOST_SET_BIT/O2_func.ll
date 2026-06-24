define i64 @f_gold(i64 %n) local_unnamed_addr #9 !dbg !3021 {
entry:
    #dbg_value(i64 %n, !3026, !DIExpression(), !3027)
    #dbg_value(i64 %n, !3026, !DIExpression(), !3028)
    #dbg_value(i64 %n, !3026, !DIExpression(), !3029)
  %0 = add i64 %n, -1, !dbg !3030
  %1 = and i64 %0, %n, !dbg !3031
  ret i64 %1, !dbg !3032
}
