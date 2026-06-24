define i64 @f_gold(i64 %num, i64 %divisor) local_unnamed_addr #4 !dbg !3025 {
entry:
    #dbg_value(i64 %num, !3030, !DIExpression(), !3032)
    #dbg_value(i64 %divisor, !3031, !DIExpression(), !3032)
    #dbg_value(i64 %num, !3030, !DIExpression(), !3033)
    #dbg_value(i64 %divisor, !3031, !DIExpression(), !3034)
    #dbg_value(i64 %num, !3030, !DIExpression(), !3035)
    #dbg_value(i64 %divisor, !3031, !DIExpression(), !3036)
  %0 = icmp eq i64 %divisor, 0, !dbg !3037
  br i1 %0, label %divbyzero.throw, label %divbyzero.next, !dbg !3037

divbyzero.next:                                   ; preds = %entry
  %1 = icmp eq i64 %divisor, -1, !dbg !3037
  %2 = icmp eq i64 %num, -9223372036854775808, !dbg !3037
  %3 = and i1 %2, %1, !dbg !3037
  %4 = select i1 %3, i64 1, i64 %divisor, !dbg !3037
  %5 = sdiv i64 %num, %4, !dbg !3037
  %6 = mul i64 %5, %divisor, !dbg !3038
  %7 = sub i64 %num, %6, !dbg !3039
  ret i64 %7, !dbg !3040

divbyzero.throw:                                  ; preds = %entry
  tail call fastcc void @runtime.divideByZeroPanic(), !dbg !3037
  unreachable, !dbg !3037
}
