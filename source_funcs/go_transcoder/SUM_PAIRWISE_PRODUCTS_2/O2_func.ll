define double @f_gold(i64 %n) local_unnamed_addr #9 !dbg !3021 {
entry:
    #dbg_value(i64 %n, !3026, !DIExpression(), !3027)
    #dbg_value(i64 %n, !3026, !DIExpression(), !3028)
    #dbg_value(i64 %n, !3026, !DIExpression(), !3029)
  %0 = add i64 %n, 1, !dbg !3030
  %1 = mul i64 %0, %n, !dbg !3031
    #dbg_value(i64 %n, !3026, !DIExpression(), !3032)
  %2 = add i64 %n, 2, !dbg !3033
  %3 = mul i64 %1, %2, !dbg !3034
    #dbg_value(i64 %n, !3026, !DIExpression(), !3035)
  %4 = mul i64 %n, 3, !dbg !3036
  %5 = add i64 %4, 1, !dbg !3037
  %6 = mul i64 %3, %5, !dbg !3038
  %7 = sdiv i64 %6, 24, !dbg !3039
  %8 = sitofp i64 %7 to double, !dbg !3040
  ret double %8, !dbg !3041
}
