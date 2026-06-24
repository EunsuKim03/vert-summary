define i64 @f_gold(i64 %n, i64 %k) local_unnamed_addr #5 !dbg !3109 {
entry:
    #dbg_value(i64 %n, !3114, !DIExpression(), !3117)
    #dbg_value(i64 %k, !3115, !DIExpression(), !3117)
  br label %for.loop, !dbg !3118

for.loop:                                         ; preds = %for.body, %entry
  %0 = phi i64 [ %n, %entry ], [ %8, %for.body ], !dbg !3119
  %1 = phi i64 [ %k, %entry ], [ %7, %for.body ], !dbg !3120
    #dbg_value(i64 %0, !3114, !DIExpression(), !3121)
  %2 = and i64 %0, 1, !dbg !3122
  %3 = icmp eq i64 %2, 0, !dbg !3122
  br i1 %3, label %for.body, label %for.loop1.preheader, !dbg !3118

for.loop1.preheader:                              ; preds = %for.loop
    #dbg_value(i64 3, !3116, !DIExpression(), !3123)
  %4 = sitofp i64 %0 to double, !dbg !3124
  %5 = call double @llvm.sqrt.f64(double %4), !dbg !3125
  %6 = fcmp ult double %5, 3.000000e+00, !dbg !3133
  br i1 %6, label %for.done6, label %for.loop2.preheader, !dbg !3118

for.body:                                         ; preds = %for.loop
  %7 = add i64 %1, -1, !dbg !3134
    #dbg_value(i64 %7, !3115, !DIExpression(), !3134)
    #dbg_value(i64 %0, !3114, !DIExpression(), !3135)
  %8 = ashr exact i64 %0, 1, !dbg !3136
    #dbg_value(i64 %8, !3114, !DIExpression(), !3137)
    #dbg_value(i64 %7, !3115, !DIExpression(), !3138)
  %9 = icmp eq i64 %7, 0, !dbg !3139
  br i1 %9, label %common.ret, label %for.loop, !dbg !3118

common.ret:                                       ; preds = %for.body, %for.body3, %for.done6
  %common.ret.op = phi i64 [ %spec.select, %for.done6 ], [ %10, %for.body3 ], [ 2, %for.body ]
  ret i64 %common.ret.op, !dbg !3118

for.loop2.preheader:                              ; preds = %for.loop1.preheader, %for.done5
  %10 = phi i64 [ %25, %for.done5 ], [ 3, %for.loop1.preheader ]
  %11 = phi i64 [ %15, %for.done5 ], [ %1, %for.loop1.preheader ]
  %12 = phi i64 [ %16, %for.done5 ], [ %0, %for.loop1.preheader ]
    #dbg_value(i64 %10, !3116, !DIExpression(), !3123)
    #dbg_value(i64 %12, !3114, !DIExpression(), !3140)
  %13 = icmp eq i64 %10, 0
    #dbg_value(i64 %12, !3114, !DIExpression(), !3141)
    #dbg_value(i64 %10, !3116, !DIExpression(), !3142)
  br i1 %13, label %divbyzero.throw, label %divbyzero.next.lr.ph, !dbg !3143

divbyzero.next.lr.ph:                             ; preds = %for.loop2.preheader
  %14 = icmp eq i64 %10, -1
  br label %divbyzero.next, !dbg !3143

divbyzero.next:                                   ; preds = %divbyzero.next10, %divbyzero.next.lr.ph
  %15 = phi i64 [ %11, %divbyzero.next.lr.ph ], [ %23, %divbyzero.next10 ]
  %16 = phi i64 [ %12, %divbyzero.next.lr.ph ], [ %24, %divbyzero.next10 ]
    #dbg_value(i64 %16, !3114, !DIExpression(), !3141)
  %17 = icmp eq i64 %16, -9223372036854775808, !dbg !3143
  %18 = and i1 %14, %17, !dbg !3143
  %19 = select i1 %18, i64 1, i64 %10, !dbg !3143
  %20 = srem i64 %16, %19, !dbg !3143
  %21 = icmp eq i64 %20, 0, !dbg !3144
  br i1 %21, label %for.body3, label %for.done5, !dbg !3118

for.body3:                                        ; preds = %divbyzero.next
    #dbg_value(i64 %15, !3115, !DIExpression(), !3145)
  %22 = icmp eq i64 %15, 1, !dbg !3146
  br i1 %22, label %common.ret, label %divbyzero.next10, !dbg !3118

divbyzero.next10:                                 ; preds = %for.body3
    #dbg_value(i64 %15, !3115, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !3147)
    #dbg_value(i64 %16, !3114, !DIExpression(), !3148)
    #dbg_value(i64 %10, !3116, !DIExpression(), !3149)
  %23 = add i64 %15, -1, !dbg !3147
    #dbg_value(i64 %23, !3115, !DIExpression(), !3147)
  %24 = sdiv i64 %16, %19, !dbg !3150
    #dbg_value(i64 %24, !3114, !DIExpression(), !3141)
  br label %divbyzero.next, !dbg !3143

for.done5:                                        ; preds = %divbyzero.next
    #dbg_value(i64 %10, !3116, !DIExpression(), !3151)
  %25 = add i64 %10, 2, !dbg !3152
    #dbg_value(i64 %25, !3116, !DIExpression(), !3123)
  %26 = sitofp i64 %25 to double, !dbg !3153
    #dbg_value(i64 %16, !3114, !DIExpression(), !3140)
  %27 = sitofp i64 %16 to double, !dbg !3124
    #dbg_value(double %27, !3131, !DIExpression(), !3125)
  %28 = call double @llvm.sqrt.f64(double %27), !dbg !3125
  %29 = fcmp ult double %28, %26, !dbg !3133
  br i1 %29, label %for.done6, label %for.loop2.preheader, !dbg !3118

for.done6:                                        ; preds = %for.done5, %for.loop1.preheader
  %.lcssa20 = phi i64 [ %0, %for.loop1.preheader ], [ %16, %for.done5 ], !dbg !3119
  %.lcssa17 = phi i64 [ %1, %for.loop1.preheader ], [ %15, %for.done5 ], !dbg !3120
    #dbg_value(i64 %.lcssa20, !3114, !DIExpression(), !3154)
  %30 = icmp sgt i64 %.lcssa20, 2, !dbg !3155
    #dbg_value(i64 %.lcssa17, !3115, !DIExpression(), !3156)
  %31 = icmp eq i64 %.lcssa17, 1
  %or.cond = select i1 %30, i1 %31, i1 false, !dbg !3118
  %spec.select = select i1 %or.cond, i64 %.lcssa20, i64 -1, !dbg !3118
  br label %common.ret, !dbg !3118

divbyzero.throw:                                  ; preds = %for.loop2.preheader
  call fastcc void @runtime.divideByZeroPanic(), !dbg !3143
  unreachable, !dbg !3143
}
