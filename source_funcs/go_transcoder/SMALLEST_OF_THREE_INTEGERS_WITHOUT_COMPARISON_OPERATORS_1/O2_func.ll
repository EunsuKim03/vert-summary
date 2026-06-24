define i64 @f_gold(i64 %x, i64 %y, i64 %z) local_unnamed_addr #4 !dbg !3025 {
entry:
    #dbg_value(i64 %x, !3030, !DIExpression(), !3033)
    #dbg_value(i64 %y, !3031, !DIExpression(), !3033)
    #dbg_value(i64 %z, !3032, !DIExpression(), !3033)
    #dbg_value(i64 %y, !3031, !DIExpression(), !3034)
    #dbg_value(i64 %x, !3030, !DIExpression(), !3035)
  %0 = icmp eq i64 %x, 0, !dbg !3036
  br i1 %0, label %divbyzero.throw, label %divbyzero.next, !dbg !3036

divbyzero.next:                                   ; preds = %entry
  %1 = icmp eq i64 %x, -1, !dbg !3036
  %2 = icmp eq i64 %y, -9223372036854775808, !dbg !3036
  %3 = and i1 %1, %2, !dbg !3036
  %4 = select i1 %3, i64 1, i64 %x, !dbg !3036
  %5 = sdiv i64 %y, %4, !dbg !3036
  %6 = icmp eq i64 %5, 0, !dbg !3037
    #dbg_value(i64 %z, !3032, !DIExpression(), !3038)
    #dbg_value(i64 %z, !3032, !DIExpression(), !3039)
  %7 = icmp eq i64 %z, 0, !dbg !3040
  br i1 %6, label %if.then, label %if.done2, !dbg !3040

if.then:                                          ; preds = %divbyzero.next
    #dbg_value(i64 %y, !3031, !DIExpression(), !3041)
  br i1 %7, label %divbyzero.throw5, label %divbyzero.next6, !dbg !3042

divbyzero.next6:                                  ; preds = %if.then
  %8 = icmp eq i64 %z, -1, !dbg !3042
  %9 = and i1 %2, %8, !dbg !3042
  br label %common.ret, !dbg !3040

common.ret:                                       ; preds = %divbyzero.next8, %divbyzero.next6
  %.sink3 = phi i1 [ %15, %divbyzero.next8 ], [ %9, %divbyzero.next6 ]
  %x.sink2 = phi i64 [ %x, %divbyzero.next8 ], [ %y, %divbyzero.next6 ]
  %10 = select i1 %.sink3, i64 1, i64 %z, !dbg !3040
  %11 = sdiv i64 %x.sink2, %10, !dbg !3040
  %12 = icmp eq i64 %11, 0, !dbg !3040
  %x.z = select i1 %12, i64 %x.sink2, i64 %z, !dbg !3040
  ret i64 %x.z, !dbg !3040

if.done2:                                         ; preds = %divbyzero.next
    #dbg_value(i64 %x, !3030, !DIExpression(), !3043)
  br i1 %7, label %divbyzero.throw7, label %divbyzero.next8, !dbg !3044

divbyzero.next8:                                  ; preds = %if.done2
  %13 = icmp eq i64 %z, -1, !dbg !3044
  %14 = icmp eq i64 %x, -9223372036854775808, !dbg !3044
  %15 = and i1 %14, %13, !dbg !3044
  br label %common.ret, !dbg !3040

divbyzero.throw:                                  ; preds = %entry
  tail call fastcc void @runtime.divideByZeroPanic(), !dbg !3036
  unreachable, !dbg !3036

divbyzero.throw5:                                 ; preds = %if.then
  tail call fastcc void @runtime.divideByZeroPanic(), !dbg !3042
  unreachable, !dbg !3042

divbyzero.throw7:                                 ; preds = %if.done2
  tail call fastcc void @runtime.divideByZeroPanic(), !dbg !3044
  unreachable, !dbg !3044
}
