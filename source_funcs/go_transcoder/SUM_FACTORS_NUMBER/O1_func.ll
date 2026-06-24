define i64 @f_gold(i64 %n) local_unnamed_addr #5 !dbg !3109 {
entry:
    #dbg_value(i64 %n, !3114, !DIExpression(), !3117)
    #dbg_value(i64 0, !3115, !DIExpression(), !3118)
    #dbg_value(i64 2, !3116, !DIExpression(), !3119)
  %0 = sitofp i64 %n to double
  %1 = call double @llvm.sqrt.f64(double %0)
    #dbg_value(i64 2, !3116, !DIExpression(), !3120)
  %2 = fcmp ult double %1, 2.000000e+00, !dbg !3121
  br i1 %2, label %for.done, label %for.body.lr.ph, !dbg !3122

for.body.lr.ph:                                   ; preds = %entry
  %3 = icmp eq i64 %n, -9223372036854775808
  br label %for.body, !dbg !3122

for.body:                                         ; preds = %for.body.lr.ph, %if.done
  %4 = phi i64 [ 2, %for.body.lr.ph ], [ %18, %if.done ]
  %5 = phi i64 [ 0, %for.body.lr.ph ], [ %17, %if.done ]
    #dbg_value(i64 %4, !3116, !DIExpression(), !3120)
    #dbg_value(i64 %n, !3114, !DIExpression(), !3123)
    #dbg_value(i64 %4, !3116, !DIExpression(), !3124)
  %6 = icmp eq i64 %4, 0, !dbg !3125
  br i1 %6, label %divbyzero.throw, label %divbyzero.next, !dbg !3125

divbyzero.next:                                   ; preds = %for.body
  %7 = icmp eq i64 %4, -1, !dbg !3125
  %8 = and i1 %3, %7, !dbg !3125
  %9 = select i1 %8, i64 1, i64 %4, !dbg !3125
  %10 = srem i64 %n, %9, !dbg !3125
  %11 = icmp eq i64 %10, 0, !dbg !3126
  br i1 %11, label %divbyzero.next3, label %if.done, !dbg !3122

divbyzero.next3:                                  ; preds = %divbyzero.next
    #dbg_value(i64 %4, !3116, !DIExpression(), !3127)
    #dbg_value(i64 %n, !3114, !DIExpression(), !3128)
    #dbg_value(i64 %4, !3116, !DIExpression(), !3129)
  %12 = sdiv i64 %n, %9, !dbg !3130
  %13 = icmp eq i64 %4, %12, !dbg !3131
  br i1 %13, label %if.then1, label %divbyzero.next5, !dbg !3122

if.then1:                                         ; preds = %divbyzero.next3
    #dbg_value(i64 %4, !3116, !DIExpression(), !3132)
  %14 = add i64 %4, %5, !dbg !3133
    #dbg_value(i64 %14, !3115, !DIExpression(), !3133)
  br label %if.done, !dbg !3122

divbyzero.next5:                                  ; preds = %divbyzero.next3
    #dbg_value(i64 %4, !3116, !DIExpression(), !3134)
    #dbg_value(i64 %n, !3114, !DIExpression(), !3135)
    #dbg_value(i64 %4, !3116, !DIExpression(), !3136)
  %15 = add i64 %4, %5, !dbg !3137
  %16 = add i64 %15, %12, !dbg !3138
    #dbg_value(i64 %16, !3115, !DIExpression(), !3138)
  br label %if.done, !dbg !3122

if.done:                                          ; preds = %divbyzero.next5, %if.then1, %divbyzero.next
  %17 = phi i64 [ %5, %divbyzero.next ], [ %14, %if.then1 ], [ %16, %divbyzero.next5 ], !dbg !3118
  %18 = add i64 %4, 1, !dbg !3139
    #dbg_value(i64 %18, !3116, !DIExpression(), !3120)
  %19 = sitofp i64 %18 to double, !dbg !3140
    #dbg_value(i64 %n, !3114, !DIExpression(), !3141)
  %20 = fcmp ult double %1, %19, !dbg !3121
  br i1 %20, label %for.done, label %for.body, !dbg !3122

for.done:                                         ; preds = %if.done, %entry
  %.lcssa = phi i64 [ 0, %entry ], [ %17, %if.done ], !dbg !3118
    #dbg_value(i64 %.lcssa, !3115, !DIExpression(), !3142)
    #dbg_value(i64 %n, !3114, !DIExpression(), !3143)
  %21 = add i64 %n, 1, !dbg !3144
  %22 = add i64 %21, %.lcssa, !dbg !3145
  ret i64 %22, !dbg !3146

divbyzero.throw:                                  ; preds = %for.body
  call fastcc void @runtime.divideByZeroPanic(), !dbg !3125
  unreachable, !dbg !3125
}
