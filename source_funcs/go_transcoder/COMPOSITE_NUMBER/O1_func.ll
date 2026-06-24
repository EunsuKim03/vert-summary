define noundef i1 @f_gold(i64 %n) local_unnamed_addr #4 !dbg !3109 {
entry:
    #dbg_value(i64 %n, !3114, !DIExpression(), !3116)
    #dbg_value(i64 %n, !3114, !DIExpression(), !3117)
    #dbg_value(i64 %n, !3114, !DIExpression(), !3118)
  %0 = icmp slt i64 %n, 4
  br i1 %0, label %common.ret, label %if.done2, !dbg !3119

common.ret:                                       ; preds = %divbyzero.next9, %divbyzero.next, %for.loop, %for.loop.preheader, %if.done2, %entry
  %common.ret.op = phi i1 [ false, %entry ], [ true, %if.done2 ], [ false, %for.loop.preheader ], [ false, %for.loop ], [ true, %divbyzero.next ], [ true, %divbyzero.next9 ]
  ret i1 %common.ret.op, !dbg !3119

if.done2:                                         ; preds = %entry
    #dbg_value(i64 %n, !3114, !DIExpression(), !3120)
  %1 = and i64 %n, 1, !dbg !3121
  %2 = icmp eq i64 %1, 0, !dbg !3122
    #dbg_value(i64 %n, !3114, !DIExpression(), !3123)
  %3 = urem i64 %n, 3
  %4 = icmp eq i64 %3, 0
  %or.cond = or i1 %2, %4, !dbg !3119
  br i1 %or.cond, label %common.ret, label %for.loop.preheader, !dbg !3119

for.loop.preheader:                               ; preds = %if.done2
    #dbg_value(i64 5, !3115, !DIExpression(), !3124)
    #dbg_value(i64 5, !3115, !DIExpression(), !3125)
  %.not6 = icmp slt i64 %n, 25, !dbg !3126
  br i1 %.not6, label %common.ret, label %for.body, !dbg !3119

for.loop:                                         ; preds = %divbyzero.next9
  %5 = add i64 %7, 6, !dbg !3127
    #dbg_value(i64 %5, !3115, !DIExpression(), !3128)
    #dbg_value(i64 %5, !3115, !DIExpression(), !3124)
    #dbg_value(i64 %5, !3115, !DIExpression(), !3125)
  %6 = mul i64 %5, %5, !dbg !3129
    #dbg_value(i64 %n, !3114, !DIExpression(), !3130)
  %.not = icmp sgt i64 %6, %n, !dbg !3126
  br i1 %.not, label %common.ret, label %for.body, !dbg !3119

for.body:                                         ; preds = %for.loop.preheader, %for.loop
  %7 = phi i64 [ %5, %for.loop ], [ 5, %for.loop.preheader ]
    #dbg_value(i64 %7, !3115, !DIExpression(), !3124)
    #dbg_value(i64 %n, !3114, !DIExpression(), !3131)
    #dbg_value(i64 %7, !3115, !DIExpression(), !3132)
  %8 = icmp eq i64 %7, 0, !dbg !3133
  br i1 %8, label %divbyzero.throw, label %divbyzero.next, !dbg !3133

divbyzero.next:                                   ; preds = %for.body
  %9 = srem i64 %n, %7, !dbg !3133
  %10 = icmp eq i64 %9, 0, !dbg !3134
  br i1 %10, label %common.ret, label %cond.false6, !dbg !3119

cond.false6:                                      ; preds = %divbyzero.next
    #dbg_value(i64 %n, !3114, !DIExpression(), !3135)
    #dbg_value(i64 %7, !3115, !DIExpression(), !3136)
  %11 = add i64 %7, 2, !dbg !3137
  %12 = icmp eq i64 %11, 0, !dbg !3138
  br i1 %12, label %divbyzero.throw8, label %divbyzero.next9, !dbg !3138

divbyzero.next9:                                  ; preds = %cond.false6
  %13 = srem i64 %n, %11, !dbg !3138
  %14 = icmp eq i64 %13, 0, !dbg !3139
    #dbg_value(i64 %7, !3115, !DIExpression(), !3140)
    #dbg_value(i64 %7, !3115, !DIExpression(DW_OP_plus_uconst, 6, DW_OP_stack_value), !3128)
  br i1 %14, label %common.ret, label %for.loop, !dbg !3119

divbyzero.throw:                                  ; preds = %for.body
  call fastcc void @runtime.divideByZeroPanic(), !dbg !3133
  unreachable, !dbg !3133

divbyzero.throw8:                                 ; preds = %cond.false6
  call fastcc void @runtime.divideByZeroPanic(), !dbg !3138
  unreachable, !dbg !3138
}
