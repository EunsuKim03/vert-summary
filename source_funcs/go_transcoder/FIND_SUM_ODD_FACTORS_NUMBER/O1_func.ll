define i64 @f_gold(i64 %n) local_unnamed_addr #5 !dbg !3109 {
entry:
    #dbg_value(i64 %n, !3114, !DIExpression(), !3120)
    #dbg_value(i64 1, !3115, !DIExpression(), !3121)
  br label %for.loop, !dbg !3122

for.loop:                                         ; preds = %for.loop, %entry
  %0 = phi i64 [ %n, %entry ], [ %3, %for.loop ], !dbg !3123
    #dbg_value(i64 %0, !3114, !DIExpression(), !3124)
  %1 = and i64 %0, 1, !dbg !3125
  %2 = icmp eq i64 %1, 0, !dbg !3125
    #dbg_value(i64 %0, !3114, !DIExpression(), !3126)
  %3 = ashr exact i64 %0, 1, !dbg !3127
    #dbg_value(i64 %3, !3114, !DIExpression(), !3128)
  br i1 %2, label %for.loop, label %for.loop1.preheader, !dbg !3122

for.loop1.preheader:                              ; preds = %for.loop
    #dbg_value(i64 3, !3116, !DIExpression(), !3129)
  %4 = sitofp i64 %0 to double, !dbg !3130
  %5 = call double @llvm.sqrt.f64(double %4), !dbg !3131
  %6 = fcmp ult double %5, 3.000000e+00, !dbg !3139
  br i1 %6, label %for.done6, label %for.loop3.preheader, !dbg !3122

for.loop3.preheader:                              ; preds = %for.loop1.preheader, %for.done5
  %7 = phi i64 [ %24, %for.done5 ], [ 3, %for.loop1.preheader ]
  %8 = phi i64 [ %23, %for.done5 ], [ 1, %for.loop1.preheader ]
  %9 = phi i64 [ %14, %for.done5 ], [ %0, %for.loop1.preheader ]
    #dbg_value(i64 %7, !3116, !DIExpression(), !3129)
    #dbg_value(i64 %9, !3114, !DIExpression(), !3140)
  %10 = icmp eq i64 %7, 0
    #dbg_value(i64 %9, !3114, !DIExpression(), !3141)
    #dbg_value(i64 %7, !3116, !DIExpression(), !3142)
  br i1 %10, label %divbyzero.throw, label %divbyzero.next.lr.ph, !dbg !3143

divbyzero.next.lr.ph:                             ; preds = %for.loop3.preheader
  %11 = icmp eq i64 %7, -1
  br label %divbyzero.next, !dbg !3143

divbyzero.next:                                   ; preds = %divbyzero.next8, %divbyzero.next.lr.ph
  %12 = phi i64 [ 1, %divbyzero.next.lr.ph ], [ %21, %divbyzero.next8 ]
  %13 = phi i64 [ 1, %divbyzero.next.lr.ph ], [ %22, %divbyzero.next8 ]
  %14 = phi i64 [ %9, %divbyzero.next.lr.ph ], [ %20, %divbyzero.next8 ]
    #dbg_value(i64 %14, !3114, !DIExpression(), !3141)
  %15 = icmp eq i64 %14, -9223372036854775808, !dbg !3143
  %16 = and i1 %11, %15, !dbg !3143
  %17 = select i1 %16, i64 1, i64 %7, !dbg !3143
  %18 = srem i64 %14, %17, !dbg !3143
  %19 = icmp eq i64 %18, 0, !dbg !3144
  br i1 %19, label %divbyzero.next8, label %for.done5, !dbg !3122

divbyzero.next8:                                  ; preds = %divbyzero.next
    #dbg_value(i64 poison, !3117, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3145)
    #dbg_value(i64 %14, !3114, !DIExpression(), !3146)
    #dbg_value(i64 %7, !3116, !DIExpression(), !3147)
  %20 = sdiv i64 %14, %17, !dbg !3148
    #dbg_value(i64 %20, !3114, !DIExpression(), !3149)
  %21 = mul i64 %12, %7, !dbg !3150
    #dbg_value(i64 %21, !3119, !DIExpression(), !3151)
  %22 = add i64 %21, %13, !dbg !3152
    #dbg_value(i64 %22, !3118, !DIExpression(), !3152)
  br label %divbyzero.next, !dbg !3143

for.done5:                                        ; preds = %divbyzero.next
    #dbg_value(i64 %13, !3118, !DIExpression(), !3153)
  %23 = mul i64 %13, %8, !dbg !3154
    #dbg_value(i64 %23, !3115, !DIExpression(), !3154)
  %24 = add i64 %7, 1, !dbg !3155
    #dbg_value(i64 %24, !3116, !DIExpression(), !3129)
  %25 = sitofp i64 %24 to double, !dbg !3156
    #dbg_value(i64 %14, !3114, !DIExpression(), !3140)
  %26 = sitofp i64 %14 to double, !dbg !3130
    #dbg_value(double %26, !3137, !DIExpression(), !3131)
  %27 = call double @llvm.sqrt.f64(double %26), !dbg !3131
  %28 = fcmp ult double %27, %25, !dbg !3139
  br i1 %28, label %for.done6, label %for.loop3.preheader, !dbg !3122

for.done6:                                        ; preds = %for.done5, %for.loop1.preheader
  %.lcssa7 = phi i64 [ %0, %for.loop1.preheader ], [ %14, %for.done5 ], !dbg !3123
  %.lcssa = phi i64 [ 1, %for.loop1.preheader ], [ %23, %for.done5 ], !dbg !3121
    #dbg_value(i64 %.lcssa7, !3114, !DIExpression(), !3157)
  %29 = icmp sgt i64 %.lcssa7, 1, !dbg !3158
  %30 = add nuw i64 %.lcssa7, 1, !dbg !3122
  %31 = select i1 %29, i64 %30, i64 1, !dbg !3122
  %32 = mul i64 %31, %.lcssa, !dbg !3122
    #dbg_value(i64 %32, !3115, !DIExpression(), !3159)
  ret i64 %32, !dbg !3160

divbyzero.throw:                                  ; preds = %for.loop3.preheader
  call fastcc void @runtime.divideByZeroPanic(), !dbg !3143
  unreachable, !dbg !3143
}
