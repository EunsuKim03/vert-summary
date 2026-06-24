define i64 @f_gold(i64 %a, i64 %b, i64 %k) local_unnamed_addr #9 !dbg !3021 {
entry:
    #dbg_value(i64 %a, !3026, !DIExpression(), !3031)
    #dbg_value(i64 %b, !3027, !DIExpression(), !3031)
    #dbg_value(i64 %k, !3028, !DIExpression(), !3031)
    #dbg_value(i64 %b, !3027, !DIExpression(), !3032)
    #dbg_value(i64 %a, !3026, !DIExpression(), !3033)
  %0 = xor i64 %a, -1, !dbg !3034
  %1 = add i64 %b, %0, !dbg !3034
    #dbg_value(i64 %1, !3029, !DIExpression(), !3035)
    #dbg_value(i64 %k, !3028, !DIExpression(), !3036)
    #dbg_value(i64 %b, !3027, !DIExpression(), !3037)
  %2 = sub i64 %k, %b, !dbg !3038
    #dbg_value(i64 %a, !3026, !DIExpression(), !3039)
  %3 = add i64 %a, -1, !dbg !3040
  %4 = add i64 %3, %2, !dbg !3041
    #dbg_value(i64 %4, !3030, !DIExpression(), !3042)
    #dbg_value(i64 %1, !3029, !DIExpression(), !3043)
    #dbg_value(i64 %4, !3030, !DIExpression(), !3044)
  %5 = icmp eq i64 %1, %4, !dbg !3045
  %x.y.i = tail call i64 @llvm.smin.i64(i64 %1, i64 %4)
  %spec.select = select i1 %5, i64 0, i64 %x.y.i, !dbg !3046
  ret i64 %spec.select, !dbg !3046
}
