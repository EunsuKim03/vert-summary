define i64 @f_gold(i64 %num, i64 %divisor) local_unnamed_addr #4 !dbg !3109 {
entry:
    #dbg_value(i64 %num, !3114, !DIExpression(), !3116)
    #dbg_value(i64 %divisor, !3115, !DIExpression(), !3116)
    #dbg_value(i64 %num, !3114, !DIExpression(), !3117)
    #dbg_value(i64 %divisor, !3115, !DIExpression(), !3118)
    #dbg_value(i64 %num, !3114, !DIExpression(), !3119)
    #dbg_value(i64 %divisor, !3115, !DIExpression(), !3120)
  %0 = icmp eq i64 %divisor, 0, !dbg !3121
  br i1 %0, label %divbyzero.throw, label %divbyzero.next, !dbg !3121

divbyzero.next:                                   ; preds = %entry
  %1 = icmp eq i64 %divisor, -1, !dbg !3121
  %2 = icmp eq i64 %num, -9223372036854775808, !dbg !3121
  %3 = and i1 %2, %1, !dbg !3121
  %4 = select i1 %3, i64 1, i64 %divisor, !dbg !3121
  %5 = sdiv i64 %num, %4, !dbg !3121
  %6 = mul i64 %5, %divisor, !dbg !3122
  %7 = sub i64 %num, %6, !dbg !3123
  ret i64 %7, !dbg !3124

divbyzero.throw:                                  ; preds = %entry
  call fastcc void @runtime.divideByZeroPanic(), !dbg !3121
  unreachable, !dbg !3121
}
