define range(i64 -1537228672809129301, 1537228672809129302) i64 @f_gold(i64 %n) local_unnamed_addr #9 !dbg !3021 {
entry:
    #dbg_value(i64 %n, !3026, !DIExpression(), !3027)
    #dbg_value(i64 %n, !3026, !DIExpression(), !3028)
    #dbg_value(i64 %n, !3026, !DIExpression(), !3029)
  %0 = add i64 %n, -1, !dbg !3030
  %1 = mul i64 %0, %n, !dbg !3031
    #dbg_value(i64 %n, !3026, !DIExpression(), !3032)
  %2 = add i64 %n, -2, !dbg !3033
  %3 = mul i64 %1, %2, !dbg !3034
  %4 = sdiv i64 %3, 6, !dbg !3035
  ret i64 %4, !dbg !3036
}
