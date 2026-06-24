define i64 @f_gold(i64 %x) local_unnamed_addr #9 !dbg !3105 {
entry:
    #dbg_value(i64 %x, !3110, !DIExpression(), !3111)
    #dbg_value(i64 %x, !3110, !DIExpression(), !3112)
  %.neg = add i64 %x, 1, !dbg !3113
  ret i64 %.neg, !dbg !3114
}
