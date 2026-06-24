define i64 @f_gold(i64 %n) local_unnamed_addr #9 !dbg !3021 {
entry:
    #dbg_value(i64 %n, !3026, !DIExpression(), !3027)
    #dbg_value(i64 %n, !3026, !DIExpression(), !3028)
  %0 = shl i64 %n, 1, !dbg !3029
  %1 = or disjoint i64 %0, 1, !dbg !3030
    #dbg_value(i64 %n, !3026, !DIExpression(), !3031)
    #dbg_value(i64 %n, !3026, !DIExpression(), !3032)
    #dbg_value(i64 %n, !3026, !DIExpression(), !3033)
  %2 = mul i64 %n, %n, !dbg !3034
  %3 = add i64 %2, -1, !dbg !3035
  %4 = mul i64 %3, %n, !dbg !3036
  %5 = sdiv i64 %4, 2, !dbg !3037
  %6 = add i64 %1, %5, !dbg !3038
  ret i64 %6, !dbg !3039
}
