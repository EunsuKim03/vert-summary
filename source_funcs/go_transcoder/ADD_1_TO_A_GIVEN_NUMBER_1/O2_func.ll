define i64 @f_gold(i64 %x) local_unnamed_addr #9 !dbg !3021 {
entry:
    #dbg_value(i64 %x, !3026, !DIExpression(), !3027)
    #dbg_value(i64 %x, !3026, !DIExpression(), !3028)
  %.neg = add i64 %x, 1, !dbg !3029
  ret i64 %.neg, !dbg !3030
}
