define i64 @f_gold(i64 %n) local_unnamed_addr #5 !dbg !3109 {
entry:
    #dbg_value(i64 %n, !3114, !DIExpression(), !3117)
    #dbg_value(i64 0, !3115, !DIExpression(), !3118)
    #dbg_value(i64 %n, !3114, !DIExpression(), !3119)
  %0 = and i64 %n, 1, !dbg !3120
  %1 = icmp eq i64 %0, 0, !dbg !3120
  br i1 %1, label %for.loop, label %if.done, !dbg !3121

for.loop:                                         ; preds = %entry, %for.loop
  %2 = phi i64 [ %5, %for.loop ], [ %n, %entry ], !dbg !3122
    #dbg_value(i64 %2, !3114, !DIExpression(), !3123)
  %3 = and i64 %2, 1, !dbg !3124
  %4 = icmp eq i64 %3, 0, !dbg !3124
    #dbg_value(i64 %2, !3114, !DIExpression(), !3125)
  %5 = ashr exact i64 %2, 1, !dbg !3126
    #dbg_value(i64 %5, !3114, !DIExpression(), !3127)
  br i1 %4, label %for.loop, label %if.done, !dbg !3121

if.done:                                          ; preds = %for.loop, %entry
  %6 = phi i64 [ %n, %entry ], [ %2, %for.loop ], !dbg !3122
  %7 = phi i64 [ 0, %entry ], [ 1, %for.loop ], !dbg !3118
    #dbg_value(i64 3, !3116, !DIExpression(), !3128)
  %8 = sitofp i64 %6 to double, !dbg !3129
  %9 = call double @llvm.sqrt.f64(double %8), !dbg !3130
  %10 = fcmp ult double %9, 3.000000e+00, !dbg !3138
  br i1 %10, label %for.done, label %for.body2, !dbg !3121

for.body2:                                        ; preds = %if.done, %if.done6
  %11 = phi i64 [ %37, %if.done6 ], [ 3, %if.done ]
  %12 = phi i64 [ %36, %if.done6 ], [ %7, %if.done ]
  %13 = phi i64 [ %35, %if.done6 ], [ %6, %if.done ]
    #dbg_value(i64 %11, !3116, !DIExpression(), !3139)
    #dbg_value(i64 %13, !3114, !DIExpression(), !3140)
    #dbg_value(i64 %13, !3114, !DIExpression(), !3141)
    #dbg_value(i64 %11, !3116, !DIExpression(), !3142)
  %14 = icmp eq i64 %11, 0, !dbg !3143
  br i1 %14, label %divbyzero.throw, label %divbyzero.next, !dbg !3143

divbyzero.next:                                   ; preds = %for.body2
  %15 = icmp eq i64 %11, -1, !dbg !3143
  %16 = icmp eq i64 %13, -9223372036854775808, !dbg !3143
  %17 = and i1 %16, %15, !dbg !3143
  %18 = select i1 %17, i64 1, i64 %11, !dbg !3143
  %19 = srem i64 %13, %18, !dbg !3143
  %20 = icmp eq i64 %19, 0, !dbg !3144
  br i1 %20, label %if.then3, label %if.done6, !dbg !3121

if.then3:                                         ; preds = %divbyzero.next
  %21 = add i64 %12, 1, !dbg !3145
    #dbg_value(i64 %21, !3115, !DIExpression(), !3145)
    #dbg_value(i64 %13, !3114, !DIExpression(), !3146)
    #dbg_value(i64 %11, !3116, !DIExpression(), !3147)
  %22 = icmp eq i64 %13, -9223372036854775808, !dbg !3148
  %23 = and i1 %15, %22, !dbg !3148
  %24 = select i1 %23, i64 1, i64 %11, !dbg !3148
  %25 = srem i64 %13, %24, !dbg !3148
  %26 = icmp eq i64 %25, 0, !dbg !3149
  br i1 %26, label %divbyzero.next12, label %if.done6, !dbg !3121

divbyzero.next12:                                 ; preds = %if.then3, %divbyzero.next12
  %27 = phi i64 [ %32, %divbyzero.next12 ], [ %24, %if.then3 ]
  %28 = phi i64 [ %29, %divbyzero.next12 ], [ %13, %if.then3 ]
    #dbg_value(i64 %28, !3114, !DIExpression(), !3150)
    #dbg_value(i64 %11, !3116, !DIExpression(), !3151)
  %29 = sdiv i64 %28, %27, !dbg !3152
    #dbg_value(i64 %29, !3114, !DIExpression(), !3146)
  %30 = icmp eq i64 %29, -9223372036854775808, !dbg !3148
  %31 = and i1 %15, %30, !dbg !3148
  %32 = select i1 %31, i64 1, i64 %11, !dbg !3148
  %33 = srem i64 %29, %32, !dbg !3148
  %34 = icmp eq i64 %33, 0, !dbg !3149
  br i1 %34, label %divbyzero.next12, label %if.done6, !dbg !3121

if.done6:                                         ; preds = %divbyzero.next12, %if.then3, %divbyzero.next
  %35 = phi i64 [ %13, %divbyzero.next ], [ %13, %if.then3 ], [ %29, %divbyzero.next12 ], !dbg !3122
  %36 = phi i64 [ %12, %divbyzero.next ], [ %21, %if.then3 ], [ %21, %divbyzero.next12 ], !dbg !3118
    #dbg_value(i64 %11, !3116, !DIExpression(), !3153)
  %37 = add i64 %11, 2, !dbg !3154
    #dbg_value(i64 %37, !3116, !DIExpression(), !3139)
  %38 = sitofp i64 %37 to double, !dbg !3155
    #dbg_value(i64 %35, !3114, !DIExpression(), !3140)
  %39 = sitofp i64 %35 to double, !dbg !3129
    #dbg_value(double %39, !3136, !DIExpression(), !3130)
  %40 = call double @llvm.sqrt.f64(double %39), !dbg !3130
  %41 = fcmp ult double %40, %38, !dbg !3138
  br i1 %41, label %for.done, label %for.body2, !dbg !3121

for.done:                                         ; preds = %if.done6, %if.done
  %.lcssa3 = phi i64 [ %6, %if.done ], [ %35, %if.done6 ], !dbg !3122
  %.lcssa1 = phi i64 [ %7, %if.done ], [ %36, %if.done6 ], !dbg !3118
    #dbg_value(i64 %.lcssa3, !3114, !DIExpression(), !3156)
  %42 = icmp sgt i64 %.lcssa3, 2, !dbg !3157
  %43 = zext i1 %42 to i64, !dbg !3121
  %spec.select = add i64 %.lcssa1, %43, !dbg !3121
    #dbg_value(i64 %spec.select, !3115, !DIExpression(), !3158)
  ret i64 %spec.select, !dbg !3159

divbyzero.throw:                                  ; preds = %for.body2
  call fastcc void @runtime.divideByZeroPanic(), !dbg !3143
  unreachable, !dbg !3143
}
