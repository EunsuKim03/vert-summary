define i64 @f_gold(i64 %x) local_unnamed_addr #9 !dbg !3021 {
entry:
    #dbg_value(i64 %x, !3026, !DIExpression(), !3027)
    #dbg_value(i64 %x, !3026, !DIExpression(), !3028)
    #dbg_value(i64 %x, !3026, !DIExpression(), !3029)
  %0 = mul i64 %x, 3, !dbg !3030
    #dbg_value(i64 %x, !3026, !DIExpression(), !3031)
  %1 = ashr i64 %x, 1, !dbg !3032
  %2 = add i64 %0, %1, !dbg !3033
  ret i64 %2, !dbg !3034
}
