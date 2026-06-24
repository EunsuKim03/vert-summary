define i64 @f_gold(i64 %a, i64 %b, i64 %d) local_unnamed_addr #4 !dbg !3109 {
entry:
    #dbg_value(i64 %a, !3114, !DIExpression(), !3118)
    #dbg_value(i64 %b, !3115, !DIExpression(), !3118)
    #dbg_value(i64 %d, !3116, !DIExpression(), !3118)
    #dbg_value(i64 %a, !3114, !DIExpression(), !3119)
    #dbg_value(i64 %a, !3117, !DIExpression(), !3120)
    #dbg_value(i64 %a, !3114, !DIExpression(), !3121)
    #dbg_value(i64 %b, !3115, !DIExpression(), !3122)
    #dbg_value(i64 %a, !3123, !DIExpression(), !3129)
    #dbg_value(i64 %b, !3128, !DIExpression(), !3129)
    #dbg_value(i64 %a, !3123, !DIExpression(), !3131)
    #dbg_value(i64 %b, !3128, !DIExpression(), !3132)
  %x.y.i = call i64 @llvm.smin.i64(i64 %a, i64 %b), !dbg !3133
    #dbg_value(i64 %x.y.i, !3114, !DIExpression(), !3134)
    #dbg_value(i64 %a, !3117, !DIExpression(), !3135)
    #dbg_value(i64 %b, !3115, !DIExpression(), !3136)
    #dbg_value(i64 %a, !3137, !DIExpression(), !3141)
    #dbg_value(i64 %b, !3140, !DIExpression(), !3141)
    #dbg_value(i64 %a, !3137, !DIExpression(), !3143)
    #dbg_value(i64 %b, !3140, !DIExpression(), !3144)
  %x.y.i1 = call i64 @llvm.smax.i64(i64 %a, i64 %b), !dbg !3145
    #dbg_value(i64 %x.y.i1, !3115, !DIExpression(), !3146)
    #dbg_value(i64 %d, !3116, !DIExpression(), !3147)
    #dbg_value(i64 %x.y.i1, !3115, !DIExpression(), !3148)
  %.not = icmp slt i64 %d, %x.y.i1, !dbg !3149
  br i1 %.not, label %if.done, label %if.then, !dbg !3150

if.then:                                          ; preds = %entry
    #dbg_value(i64 %d, !3116, !DIExpression(), !3151)
    #dbg_value(i64 %x.y.i1, !3115, !DIExpression(), !3152)
    #dbg_value(i64 %x.y.i1, !3115, !DIExpression(), !3153)
  %0 = icmp eq i64 %x.y.i1, 0, !dbg !3154
  br i1 %0, label %divbyzero.throw, label %divbyzero.next, !dbg !3154

common.ret:                                       ; preds = %if.done2, %if.done, %divbyzero.next
  %common.ret.op = phi i64 [ %7, %divbyzero.next ], [ 0, %if.done ], [ %., %if.done2 ]
  ret i64 %common.ret.op, !dbg !3150

divbyzero.next:                                   ; preds = %if.then
  %1 = add i64 %x.y.i1, -1, !dbg !3155
  %2 = add i64 %1, %d, !dbg !3156
  %3 = icmp eq i64 %x.y.i1, -1, !dbg !3154
  %4 = icmp eq i64 %2, -9223372036854775808, !dbg !3154
  %5 = and i1 %3, %4, !dbg !3154
  %6 = select i1 %5, i64 1, i64 %x.y.i1, !dbg !3154
  %7 = sdiv i64 %2, %6, !dbg !3154
  br label %common.ret, !dbg !3157

if.done:                                          ; preds = %entry
    #dbg_value(i64 %d, !3116, !DIExpression(), !3158)
  %8 = icmp eq i64 %d, 0, !dbg !3159
  br i1 %8, label %common.ret, label %if.done2, !dbg !3150

if.done2:                                         ; preds = %if.done
    #dbg_value(i64 %d, !3116, !DIExpression(), !3160)
    #dbg_value(i64 %x.y.i, !3114, !DIExpression(), !3161)
  %9 = icmp eq i64 %d, %x.y.i, !dbg !3162
  %. = select i1 %9, i64 1, i64 2, !dbg !3150
  br label %common.ret, !dbg !3150

divbyzero.throw:                                  ; preds = %if.then
  call fastcc void @runtime.divideByZeroPanic(), !dbg !3154
  unreachable, !dbg !3154
}
