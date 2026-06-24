define range(i64 0, -1) i64 @f_gold(i64 %l, i64 %w) local_unnamed_addr #9 !dbg !3021 {
entry:
    #dbg_value(i64 %l, !3026, !DIExpression(), !3028)
    #dbg_value(i64 %w, !3027, !DIExpression(), !3028)
    #dbg_value(i64 %l, !3026, !DIExpression(), !3029)
    #dbg_value(i64 %w, !3027, !DIExpression(), !3030)
  %0 = add i64 %w, %l, !dbg !3031
  %1 = shl i64 %0, 1, !dbg !3032
  ret i64 %1, !dbg !3033
}
