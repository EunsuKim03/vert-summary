define range(i64 -4611686018427387903, 4611686018427387905) i64 @f_gold(i64 %n) local_unnamed_addr #9 !dbg !3021 {
entry:
    #dbg_value(i64 %n, !3026, !DIExpression(), !3027)
    #dbg_value(i64 %n, !3026, !DIExpression(), !3028)
    #dbg_value(i64 %n, !3026, !DIExpression(), !3029)
  %0 = add i64 %n, 1, !dbg !3030
  %1 = mul i64 %0, %n, !dbg !3031
  %2 = sdiv i64 %1, 2, !dbg !3032
  %3 = add nsw i64 %2, 1, !dbg !3033
  ret i64 %3, !dbg !3034
}
