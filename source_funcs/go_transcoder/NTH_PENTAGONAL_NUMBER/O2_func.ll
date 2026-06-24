define range(i64 -4611686018427387904, 4611686018427387904) i64 @f_gold(i64 %n) local_unnamed_addr #9 !dbg !3021 {
entry:
    #dbg_value(i64 %n, !3026, !DIExpression(), !3027)
    #dbg_value(i64 %n, !3026, !DIExpression(), !3028)
  %0 = mul i64 %n, 3, !dbg !3029
    #dbg_value(i64 %n, !3026, !DIExpression(), !3030)
    #dbg_value(i64 %n, !3026, !DIExpression(), !3031)
  %1 = add i64 %0, -1, !dbg !3032
  %2 = mul i64 %1, %n, !dbg !3032
  %3 = sdiv i64 %2, 2, !dbg !3033
  ret i64 %3, !dbg !3034
}
