define i64 @f_gold(i64 %a, i64 %b) local_unnamed_addr #9 !dbg !3021 {
entry:
    #dbg_value(i64 %a, !3026, !DIExpression(), !3028)
    #dbg_value(i64 %b, !3027, !DIExpression(), !3028)
    #dbg_value(i64 %a, !3026, !DIExpression(), !3029)
  %0 = sdiv i64 %a, 2, !dbg !3030
    #dbg_value(i64 %b, !3027, !DIExpression(), !3031)
  %1 = sdiv i64 %b, 2, !dbg !3032
  %2 = add nsw i64 %1, %0, !dbg !3033
    #dbg_value(i64 %a, !3026, !DIExpression(), !3034)
  %3 = srem i64 %a, 2, !dbg !3035
    #dbg_value(i64 %b, !3027, !DIExpression(), !3036)
  %4 = srem i64 %b, 2, !dbg !3037
  %5 = add nsw i64 %4, %3, !dbg !3038
  %.lhs.trunc = trunc nsw i64 %5 to i8, !dbg !3039
  %6 = sdiv i8 %.lhs.trunc, 2, !dbg !3039
  %.sext = sext i8 %6 to i64, !dbg !3039
  %7 = add i64 %2, %.sext, !dbg !3040
  ret i64 %7, !dbg !3041
}
