define noundef i1 @f_gold(i64 %n) local_unnamed_addr #4 !dbg !3109 {
entry:
    #dbg_value(i64 %n, !3114, !DIExpression(), !3116)
    #dbg_value(i64 %n, !3114, !DIExpression(), !3117)
  %0 = icmp slt i64 %n, 2, !dbg !3118
  br i1 %0, label %common.ret, label %if.done, !dbg !3119

common.ret:                                       ; preds = %divbyzero.next9, %divbyzero.next, %for.loop, %for.loop.preheader, %if.done2, %if.done, %entry
  %common.ret.op = phi i1 [ false, %entry ], [ true, %if.done ], [ false, %if.done2 ], [ true, %for.loop.preheader ], [ true, %for.loop ], [ false, %divbyzero.next ], [ false, %divbyzero.next9 ]
  ret i1 %common.ret.op, !dbg !3119

if.done:                                          ; preds = %entry
    #dbg_value(i64 %n, !3114, !DIExpression(), !3120)
  %1 = icmp slt i64 %n, 4, !dbg !3121
  br i1 %1, label %common.ret, label %if.done2, !dbg !3119

if.done2:                                         ; preds = %if.done
    #dbg_value(i64 %n, !3114, !DIExpression(), !3122)
  %2 = and i64 %n, 1, !dbg !3123
  %3 = icmp eq i64 %2, 0, !dbg !3124
    #dbg_value(i64 %n, !3114, !DIExpression(), !3125)
  %4 = urem i64 %n, 3
  %5 = icmp eq i64 %4, 0
  %or.cond = or i1 %3, %5, !dbg !3119
  br i1 %or.cond, label %common.ret, label %for.loop.preheader, !dbg !3119

for.loop.preheader:                               ; preds = %if.done2
    #dbg_value(i64 5, !3115, !DIExpression(), !3126)
    #dbg_value(i64 5, !3115, !DIExpression(), !3127)
  %.not5 = icmp slt i64 %n, 25, !dbg !3128
  br i1 %.not5, label %common.ret, label %for.body, !dbg !3119

for.loop:                                         ; preds = %divbyzero.next9
  %6 = add i64 %8, 6, !dbg !3129
    #dbg_value(i64 %6, !3115, !DIExpression(), !3130)
    #dbg_value(i64 %6, !3115, !DIExpression(), !3126)
    #dbg_value(i64 %6, !3115, !DIExpression(), !3127)
  %7 = mul i64 %6, %6, !dbg !3131
    #dbg_value(i64 %n, !3114, !DIExpression(), !3132)
  %.not = icmp sgt i64 %7, %n, !dbg !3128
  br i1 %.not, label %common.ret, label %for.body, !dbg !3119

for.body:                                         ; preds = %for.loop.preheader, %for.loop
  %8 = phi i64 [ %6, %for.loop ], [ 5, %for.loop.preheader ]
    #dbg_value(i64 %8, !3115, !DIExpression(), !3126)
    #dbg_value(i64 %n, !3114, !DIExpression(), !3133)
    #dbg_value(i64 %8, !3115, !DIExpression(), !3134)
  %9 = icmp eq i64 %8, 0, !dbg !3135
  br i1 %9, label %divbyzero.throw, label %divbyzero.next, !dbg !3135

divbyzero.next:                                   ; preds = %for.body
  %10 = srem i64 %n, %8, !dbg !3135
  %11 = icmp eq i64 %10, 0, !dbg !3136
  br i1 %11, label %common.ret, label %cond.false6, !dbg !3119

cond.false6:                                      ; preds = %divbyzero.next
    #dbg_value(i64 %n, !3114, !DIExpression(), !3137)
    #dbg_value(i64 %8, !3115, !DIExpression(), !3138)
  %12 = add i64 %8, 2, !dbg !3139
  %13 = icmp eq i64 %12, 0, !dbg !3140
  br i1 %13, label %divbyzero.throw8, label %divbyzero.next9, !dbg !3140

divbyzero.next9:                                  ; preds = %cond.false6
  %14 = srem i64 %n, %12, !dbg !3140
  %15 = icmp eq i64 %14, 0, !dbg !3141
    #dbg_value(i64 %8, !3115, !DIExpression(), !3142)
    #dbg_value(i64 %8, !3115, !DIExpression(DW_OP_plus_uconst, 6, DW_OP_stack_value), !3130)
  br i1 %15, label %common.ret, label %for.loop, !dbg !3119

divbyzero.throw:                                  ; preds = %for.body
  call fastcc void @runtime.divideByZeroPanic(), !dbg !3135
  unreachable, !dbg !3135

divbyzero.throw8:                                 ; preds = %cond.false6
  call fastcc void @runtime.divideByZeroPanic(), !dbg !3140
  unreachable, !dbg !3140
}
