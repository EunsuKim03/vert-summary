define i64 @f_gold(i64 %n) local_unnamed_addr #5 !dbg !3109 {
entry:
    #dbg_value(i64 %n, !3114, !DIExpression(), !3120)
    #dbg_value(i64 %n, !3114, !DIExpression(), !3121)
  %0 = and i64 %n, 1, !dbg !3122
  %.not = icmp eq i64 %0, 0, !dbg !3122
  br i1 %.not, label %for.loop.preheader, label %common.ret, !dbg !3123

for.loop.preheader:                               ; preds = %entry
    #dbg_value(i64 2, !3116, !DIExpression(), !3124)
  %1 = sitofp i64 %n to double, !dbg !3125
  %2 = call double @llvm.sqrt.f64(double %1), !dbg !3126
  %3 = fcmp ult double %2, 2.000000e+00, !dbg !3134
  br i1 %3, label %for.done5, label %for.loop1.preheader, !dbg !3123

common.ret:                                       ; preds = %entry, %for.done5
  %common.ret.op = phi i64 [ %34, %for.done5 ], [ 0, %entry ]
  ret i64 %common.ret.op, !dbg !3123

for.loop1.preheader:                              ; preds = %for.loop.preheader, %for.done
  %4 = phi i64 [ %26, %for.done ], [ 2, %for.loop.preheader ]
  %5 = phi i64 [ %25, %for.done ], [ 1, %for.loop.preheader ]
  %6 = phi i64 [ %13, %for.done ], [ %n, %for.loop.preheader ]
    #dbg_value(i64 %4, !3116, !DIExpression(), !3124)
    #dbg_value(i64 %6, !3114, !DIExpression(), !3135)
  %7 = icmp eq i64 %4, 0
    #dbg_value(i64 %6, !3114, !DIExpression(), !3136)
    #dbg_value(i64 %4, !3116, !DIExpression(), !3137)
  br i1 %7, label %divbyzero.throw, label %divbyzero.next.lr.ph, !dbg !3138

divbyzero.next.lr.ph:                             ; preds = %for.loop1.preheader
  %8 = icmp eq i64 %4, -1
  %9 = icmp eq i64 %4, 2
  br label %divbyzero.next, !dbg !3138

divbyzero.next:                                   ; preds = %for.body2, %divbyzero.next.lr.ph
  %10 = phi i64 [ 1, %divbyzero.next.lr.ph ], [ %23, %for.body2 ]
  %11 = phi i64 [ 1, %divbyzero.next.lr.ph ], [ %24, %for.body2 ]
  %12 = phi i64 [ 0, %divbyzero.next.lr.ph ], [ %19, %for.body2 ]
  %13 = phi i64 [ %6, %divbyzero.next.lr.ph ], [ %20, %for.body2 ]
    #dbg_value(i64 %13, !3114, !DIExpression(), !3136)
  %14 = icmp eq i64 %13, -9223372036854775808, !dbg !3138
  %15 = and i1 %8, %14, !dbg !3138
  %16 = select i1 %15, i64 1, i64 %4, !dbg !3138
  %17 = srem i64 %13, %16, !dbg !3138
  %18 = icmp eq i64 %17, 0, !dbg !3139
  br i1 %18, label %for.body2, label %for.done, !dbg !3123

for.body2:                                        ; preds = %divbyzero.next
  %19 = add i64 %12, 1, !dbg !3140
    #dbg_value(i64 %19, !3117, !DIExpression(), !3140)
    #dbg_value(i64 %13, !3114, !DIExpression(), !3141)
    #dbg_value(i64 %4, !3116, !DIExpression(), !3142)
  %20 = sdiv i64 %13, %16, !dbg !3143
    #dbg_value(i64 %20, !3114, !DIExpression(), !3144)
  %21 = icmp eq i64 %12, 0
  %or.cond = select i1 %9, i1 %21, i1 false, !dbg !3123
  %22 = select i1 %or.cond, i64 0, i64 %11, !dbg !3123
  %23 = mul i64 %10, %4, !dbg !3145
    #dbg_value(i64 %23, !3119, !DIExpression(), !3146)
  %24 = add i64 %22, %23, !dbg !3147
    #dbg_value(i64 %24, !3118, !DIExpression(), !3147)
  br label %divbyzero.next, !dbg !3138

for.done:                                         ; preds = %divbyzero.next
    #dbg_value(i64 %11, !3118, !DIExpression(), !3148)
  %25 = mul i64 %11, %5, !dbg !3149
    #dbg_value(i64 %25, !3115, !DIExpression(), !3149)
  %26 = add i64 %4, 1, !dbg !3150
    #dbg_value(i64 %26, !3116, !DIExpression(), !3124)
  %27 = sitofp i64 %26 to double, !dbg !3151
    #dbg_value(i64 %13, !3114, !DIExpression(), !3135)
  %28 = sitofp i64 %13 to double, !dbg !3125
    #dbg_value(double %28, !3132, !DIExpression(), !3126)
  %29 = call double @llvm.sqrt.f64(double %28), !dbg !3126
  %30 = fcmp ult double %29, %27, !dbg !3134
  br i1 %30, label %for.done5, label %for.loop1.preheader, !dbg !3123

for.done5:                                        ; preds = %for.done, %for.loop.preheader
  %.lcssa7 = phi i64 [ %n, %for.loop.preheader ], [ %13, %for.done ], !dbg !3152
  %.lcssa = phi i64 [ 1, %for.loop.preheader ], [ %25, %for.done ], !dbg !3153
    #dbg_value(i64 %.lcssa7, !3114, !DIExpression(), !3154)
  %31 = icmp sgt i64 %.lcssa7, 1, !dbg !3155
  %32 = add nuw i64 %.lcssa7, 1, !dbg !3123
  %33 = select i1 %31, i64 %32, i64 1, !dbg !3123
  %34 = mul i64 %33, %.lcssa, !dbg !3123
    #dbg_value(i64 %34, !3115, !DIExpression(), !3156)
  br label %common.ret, !dbg !3157

divbyzero.throw:                                  ; preds = %for.loop1.preheader
  call fastcc void @runtime.divideByZeroPanic(), !dbg !3138
  unreachable, !dbg !3138
}
