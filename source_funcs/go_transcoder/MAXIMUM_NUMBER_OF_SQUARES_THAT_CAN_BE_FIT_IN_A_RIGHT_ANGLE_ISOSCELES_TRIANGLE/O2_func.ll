define range(i64 -4611686018427387904, 4611686018427387904) i64 @f_gold(i64 %b, i64 %m) local_unnamed_addr #4 !dbg !3025 {
entry:
    #dbg_value(i64 %b, !3030, !DIExpression(), !3032)
    #dbg_value(i64 %m, !3031, !DIExpression(), !3032)
    #dbg_value(i64 %b, !3030, !DIExpression(), !3033)
    #dbg_value(i64 %m, !3031, !DIExpression(), !3034)
  %0 = icmp eq i64 %m, 0, !dbg !3035
  br i1 %0, label %divbyzero.throw, label %divbyzero.next2, !dbg !3035

divbyzero.next2:                                  ; preds = %entry
    #dbg_value(i64 %b, !3030, !DIExpression(), !3036)
    #dbg_value(i64 %m, !3031, !DIExpression(), !3037)
  %1 = icmp eq i64 %m, -1, !dbg !3035
  %2 = icmp eq i64 %b, -9223372036854775808, !dbg !3035
  %3 = and i1 %2, %1, !dbg !3035
  %4 = select i1 %3, i64 1, i64 %m, !dbg !3035
  %5 = sdiv i64 %b, %4, !dbg !3035
  %6 = add i64 %5, -1, !dbg !3038
  %7 = mul i64 %6, %5, !dbg !3039
  %8 = sdiv i64 %7, 2, !dbg !3040
  ret i64 %8, !dbg !3041

divbyzero.throw:                                  ; preds = %entry
  tail call fastcc void @runtime.divideByZeroPanic(), !dbg !3035
  unreachable, !dbg !3035
}
