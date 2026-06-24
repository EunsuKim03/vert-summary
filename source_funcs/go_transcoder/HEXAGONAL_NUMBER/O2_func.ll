define i64 @f_gold(i64 %n) local_unnamed_addr #9 !dbg !3021 {
entry:
    #dbg_value(i64 %n, !3026, !DIExpression(), !3027)
    #dbg_value(i64 %n, !3026, !DIExpression(), !3028)
    #dbg_value(i64 %n, !3026, !DIExpression(), !3029)
  %0 = shl i64 %n, 1, !dbg !3030
  %1 = add i64 %0, -1, !dbg !3031
  %2 = mul i64 %1, %n, !dbg !3032
  ret i64 %2, !dbg !3033
}
