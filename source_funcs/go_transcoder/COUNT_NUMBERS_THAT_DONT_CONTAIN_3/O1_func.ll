define i64 @f_gold(i64 %n) local_unnamed_addr #4 !dbg !3109 {
entry:
    #dbg_value(i64 %n, !3114, !DIExpression(), !3117)
    #dbg_value(i64 %n, !3114, !DIExpression(), !3118)
  %0 = icmp slt i64 %n, 3, !dbg !3119
  br i1 %0, label %common.ret, label %cond.true, !dbg !3120

common.ret:                                       ; preds = %entry, %if.else, %if.then3, %if.then1
  %common.ret.op = phi i64 [ %2, %if.then1 ], [ %16, %if.then3 ], [ %19, %if.else ], [ %n, %entry ]
  ret i64 %common.ret.op, !dbg !3120

cond.true:                                        ; preds = %entry
    #dbg_value(i64 %n, !3114, !DIExpression(), !3121)
    #dbg_value(i64 %n, !3114, !DIExpression(), !3122)
  %1 = icmp slt i64 %n, 10, !dbg !3123
  br i1 %1, label %if.then1, label %divbyzero.next, !dbg !3120

if.then1:                                         ; preds = %cond.true
    #dbg_value(i64 %n, !3114, !DIExpression(), !3124)
  %2 = add nsw i64 %n, -1, !dbg !3125
  br label %common.ret, !dbg !3126

divbyzero.next:                                   ; preds = %cond.true, %for.body
  %3 = phi i64 [ %6, %for.body ], [ 1, %cond.true ]
    #dbg_value(i64 %3, !3115, !DIExpression(), !3127)
  %4 = sdiv i64 %n, %3, !dbg !3128
  %5 = icmp sgt i64 %4, 9, !dbg !3129
  br i1 %5, label %for.body, label %divbyzero.next5, !dbg !3120

for.body:                                         ; preds = %divbyzero.next
    #dbg_value(i64 %3, !3115, !DIExpression(), !3130)
  %6 = mul i64 %3, 10, !dbg !3131
    #dbg_value(i64 %n, !3114, !DIExpression(), !3132)
    #dbg_value(i64 %6, !3115, !DIExpression(), !3127)
  %7 = icmp eq i64 %6, 0, !dbg !3128
  br i1 %7, label %divbyzero.throw, label %divbyzero.next, !dbg !3128

divbyzero.next5:                                  ; preds = %divbyzero.next
    #dbg_value(i64 %n, !3114, !DIExpression(), !3133)
    #dbg_value(i64 %3, !3115, !DIExpression(), !3134)
    #dbg_value(i64 %4, !3116, !DIExpression(), !3135)
    #dbg_value(i64 %4, !3116, !DIExpression(), !3136)
  %.not = icmp eq i64 %4, 3, !dbg !3137
  br i1 %.not, label %if.else, label %if.then3, !dbg !3120

if.then3:                                         ; preds = %divbyzero.next5
    #dbg_value(i64 %4, !3116, !DIExpression(), !3138)
  %8 = call i64 @f_gold(i64 %4), !dbg !3139
    #dbg_value(i64 %3, !3115, !DIExpression(), !3140)
  %9 = add i64 %3, -1, !dbg !3141
  %10 = call i64 @f_gold(i64 %9), !dbg !3142
    #dbg_value(i64 %4, !3116, !DIExpression(), !3143)
  %11 = call i64 @f_gold(i64 %4), !dbg !3144
    #dbg_value(i64 %n, !3114, !DIExpression(), !3145)
    #dbg_value(i64 %3, !3115, !DIExpression(), !3146)
  %12 = mul i64 %10, %8, !dbg !3147
  %13 = add i64 %12, %11, !dbg !3148
  %14 = srem i64 %n, %3, !dbg !3149
  %15 = call i64 @f_gold(i64 %14), !dbg !3150
  %16 = add i64 %13, %15, !dbg !3151
  br label %common.ret, !dbg !3152

if.else:                                          ; preds = %divbyzero.next5
    #dbg_value(i64 %4, !3116, !DIExpression(), !3153)
    #dbg_value(i64 %3, !3115, !DIExpression(), !3154)
  %17 = mul i64 %3, 3, !dbg !3155
  %18 = add i64 %17, -1, !dbg !3156
  %19 = call i64 @f_gold(i64 %18), !dbg !3157
  br label %common.ret, !dbg !3158

divbyzero.throw:                                  ; preds = %for.body
  call fastcc void @runtime.divideByZeroPanic(), !dbg !3128
  unreachable, !dbg !3128
}
