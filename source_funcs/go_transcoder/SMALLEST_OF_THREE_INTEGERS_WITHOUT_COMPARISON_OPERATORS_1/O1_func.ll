define i64 @f_gold(i64 %x, i64 %y, i64 %z) local_unnamed_addr #4 !dbg !3109 {
entry:
    #dbg_value(i64 %x, !3114, !DIExpression(), !3117)
    #dbg_value(i64 %y, !3115, !DIExpression(), !3117)
    #dbg_value(i64 %z, !3116, !DIExpression(), !3117)
    #dbg_value(i64 %y, !3115, !DIExpression(), !3118)
    #dbg_value(i64 %x, !3114, !DIExpression(), !3119)
  %0 = icmp eq i64 %x, 0, !dbg !3120
  br i1 %0, label %divbyzero.throw, label %divbyzero.next, !dbg !3120

divbyzero.next:                                   ; preds = %entry
  %1 = icmp eq i64 %x, -1, !dbg !3120
  %2 = icmp eq i64 %y, -9223372036854775808, !dbg !3120
  %3 = and i1 %1, %2, !dbg !3120
  %4 = select i1 %3, i64 1, i64 %x, !dbg !3120
  %5 = sdiv i64 %y, %4, !dbg !3120
  %6 = icmp eq i64 %5, 0, !dbg !3121
  br i1 %6, label %if.then, label %if.done2, !dbg !3122

if.then:                                          ; preds = %divbyzero.next
    #dbg_value(i64 %y, !3115, !DIExpression(), !3123)
    #dbg_value(i64 %z, !3116, !DIExpression(), !3124)
  %7 = icmp eq i64 %z, 0, !dbg !3125
  br i1 %7, label %divbyzero.throw5, label %divbyzero.next6, !dbg !3125

divbyzero.next6:                                  ; preds = %if.then
  %8 = icmp eq i64 %z, -1, !dbg !3125
  %9 = and i1 %2, %8, !dbg !3125
  %10 = select i1 %9, i64 1, i64 %z, !dbg !3125
  %11 = sdiv i64 %y, %10, !dbg !3125
  %12 = icmp eq i64 %11, 0, !dbg !3126
  %y.z = select i1 %12, i64 %y, i64 %z, !dbg !3122
  br label %common.ret, !dbg !3122

common.ret:                                       ; preds = %divbyzero.next8, %divbyzero.next6
  %common.ret.op = phi i64 [ %y.z, %divbyzero.next6 ], [ %x.z, %divbyzero.next8 ]
  ret i64 %common.ret.op, !dbg !3122

if.done2:                                         ; preds = %divbyzero.next
    #dbg_value(i64 %x, !3114, !DIExpression(), !3127)
    #dbg_value(i64 %z, !3116, !DIExpression(), !3128)
  %13 = icmp eq i64 %z, 0, !dbg !3129
  br i1 %13, label %divbyzero.throw7, label %divbyzero.next8, !dbg !3129

divbyzero.next8:                                  ; preds = %if.done2
  %14 = icmp eq i64 %z, -1, !dbg !3129
  %15 = icmp eq i64 %x, -9223372036854775808, !dbg !3129
  %16 = and i1 %15, %14, !dbg !3129
  %17 = select i1 %16, i64 1, i64 %z, !dbg !3129
  %18 = sdiv i64 %x, %17, !dbg !3129
  %19 = icmp eq i64 %18, 0, !dbg !3130
  %x.z = select i1 %19, i64 %x, i64 %z, !dbg !3122
  br label %common.ret, !dbg !3122

divbyzero.throw:                                  ; preds = %entry
  call fastcc void @runtime.divideByZeroPanic(), !dbg !3120
  unreachable, !dbg !3120

divbyzero.throw5:                                 ; preds = %if.then
  call fastcc void @runtime.divideByZeroPanic(), !dbg !3125
  unreachable, !dbg !3125

divbyzero.throw7:                                 ; preds = %if.done2
  call fastcc void @runtime.divideByZeroPanic(), !dbg !3129
  unreachable, !dbg !3129
}
