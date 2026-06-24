define i64 @f_gold(i64 %n) local_unnamed_addr #9 !dbg !3021 {
entry:
    #dbg_value(i64 %n, !3026, !DIExpression(), !3027)
    #dbg_value(i64 %n, !3026, !DIExpression(), !3028)
    #dbg_value(i64 %n, !3026, !DIExpression(), !3029)
    #dbg_value(i64 %n, !3026, !DIExpression(), !3030)
    #dbg_value(i64 %n, !3026, !DIExpression(), !3031)
    #dbg_value(i64 %n, !3026, !DIExpression(), !3032)
  %0 = add i64 %n, 1, !dbg !3033
  %1 = mul i64 %n, %n, !dbg !3033
  %2 = mul i64 %1, %0, !dbg !3033
  ret i64 %2, !dbg !3034
}
