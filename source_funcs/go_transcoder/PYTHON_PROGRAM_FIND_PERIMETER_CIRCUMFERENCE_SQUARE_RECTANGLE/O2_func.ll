define range(i64 0, -3) i64 @f_gold(i64 %a) local_unnamed_addr #9 !dbg !3021 {
entry:
    #dbg_value(i64 %a, !3026, !DIExpression(), !3027)
    #dbg_value(i64 %a, !3026, !DIExpression(), !3028)
  %0 = shl i64 %a, 2, !dbg !3029
  ret i64 %0, !dbg !3030
}
