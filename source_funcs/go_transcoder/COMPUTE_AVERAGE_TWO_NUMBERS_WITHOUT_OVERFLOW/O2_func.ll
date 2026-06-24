define range(i64 -4611686018427387904, 4611686018427387904) i64 @f_gold(i64 %a, i64 %b) local_unnamed_addr #9 !dbg !3021 {
entry:
    #dbg_value(i64 %a, !3026, !DIExpression(), !3028)
    #dbg_value(i64 %b, !3027, !DIExpression(), !3028)
    #dbg_value(i64 %a, !3026, !DIExpression(), !3029)
    #dbg_value(i64 %b, !3027, !DIExpression(), !3030)
  %0 = add i64 %b, %a, !dbg !3031
  %1 = sdiv i64 %0, 2, !dbg !3032
  ret i64 %1, !dbg !3033
}
