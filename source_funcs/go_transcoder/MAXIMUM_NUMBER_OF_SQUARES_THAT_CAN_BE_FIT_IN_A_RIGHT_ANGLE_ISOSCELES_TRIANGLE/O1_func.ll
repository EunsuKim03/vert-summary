define range(i64 -4611686018427387904, 4611686018427387904) i64 @f_gold(i64 %b, i64 %m) local_unnamed_addr #4 !dbg !3109 {
entry:
    #dbg_value(i64 %b, !3114, !DIExpression(), !3116)
    #dbg_value(i64 %m, !3115, !DIExpression(), !3116)
    #dbg_value(i64 %b, !3114, !DIExpression(), !3117)
    #dbg_value(i64 %m, !3115, !DIExpression(), !3118)
  %0 = icmp eq i64 %m, 0, !dbg !3119
  br i1 %0, label %divbyzero.throw, label %divbyzero.next2, !dbg !3119

divbyzero.next2:                                  ; preds = %entry
    #dbg_value(i64 %b, !3114, !DIExpression(), !3120)
    #dbg_value(i64 %m, !3115, !DIExpression(), !3121)
  %1 = icmp eq i64 %m, -1, !dbg !3119
  %2 = icmp eq i64 %b, -9223372036854775808, !dbg !3119
  %3 = and i1 %2, %1, !dbg !3119
  %4 = select i1 %3, i64 1, i64 %m, !dbg !3119
  %5 = sdiv i64 %b, %4, !dbg !3119
  %6 = add i64 %5, -1, !dbg !3122
  %7 = mul i64 %6, %5, !dbg !3123
  %8 = sdiv i64 %7, 2, !dbg !3124
  ret i64 %8, !dbg !3125

divbyzero.throw:                                  ; preds = %entry
  call fastcc void @runtime.divideByZeroPanic(), !dbg !3119
  unreachable, !dbg !3119
}
