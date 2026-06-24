define i64 @f_gold(i64 %n) local_unnamed_addr #5 !dbg !3109 {
entry:
    #dbg_value(i64 %n, !3114, !DIExpression(), !3119)
    #dbg_value(i64 1, !3115, !DIExpression(), !3120)
    #dbg_value(i64 2, !3116, !DIExpression(), !3121)
  %0 = sitofp i64 %n to double, !dbg !3122
  %1 = call double @llvm.sqrt.f64(double %0), !dbg !3123
  %2 = fcmp ult double %1, 2.000000e+00, !dbg !3131
  br i1 %2, label %for.done3, label %for.loop1.preheader, !dbg !3132

for.loop1.preheader:                              ; preds = %entry, %for.done
  %3 = phi i64 [ %20, %for.done ], [ 2, %entry ]
  %4 = phi i64 [ %19, %for.done ], [ 1, %entry ]
  %5 = phi i64 [ %10, %for.done ], [ %n, %entry ]
    #dbg_value(i64 %3, !3116, !DIExpression(), !3133)
    #dbg_value(i64 %5, !3114, !DIExpression(), !3134)
  %6 = icmp eq i64 %3, 0
    #dbg_value(i64 %5, !3114, !DIExpression(), !3135)
    #dbg_value(i64 %3, !3116, !DIExpression(), !3136)
  br i1 %6, label %divbyzero.throw, label %divbyzero.next.lr.ph, !dbg !3137

divbyzero.next.lr.ph:                             ; preds = %for.loop1.preheader
  %7 = icmp eq i64 %3, -1
  br label %divbyzero.next, !dbg !3137

divbyzero.next:                                   ; preds = %divbyzero.next5, %divbyzero.next.lr.ph
  %8 = phi i64 [ 1, %divbyzero.next.lr.ph ], [ %17, %divbyzero.next5 ]
  %9 = phi i64 [ 1, %divbyzero.next.lr.ph ], [ %18, %divbyzero.next5 ]
  %10 = phi i64 [ %5, %divbyzero.next.lr.ph ], [ %16, %divbyzero.next5 ]
    #dbg_value(i64 %10, !3114, !DIExpression(), !3135)
  %11 = icmp eq i64 %10, -9223372036854775808, !dbg !3137
  %12 = and i1 %7, %11, !dbg !3137
  %13 = select i1 %12, i64 1, i64 %3, !dbg !3137
  %14 = srem i64 %10, %13, !dbg !3137
  %15 = icmp eq i64 %14, 0, !dbg !3138
  br i1 %15, label %divbyzero.next5, label %for.done, !dbg !3132

divbyzero.next5:                                  ; preds = %divbyzero.next
    #dbg_value(i64 %10, !3114, !DIExpression(), !3139)
    #dbg_value(i64 %3, !3116, !DIExpression(), !3140)
  %16 = sdiv i64 %10, %13, !dbg !3141
    #dbg_value(i64 %16, !3114, !DIExpression(), !3142)
  %17 = mul i64 %8, %3, !dbg !3143
    #dbg_value(i64 %17, !3118, !DIExpression(), !3144)
  %18 = add i64 %17, %9, !dbg !3145
    #dbg_value(i64 %18, !3117, !DIExpression(), !3145)
  br label %divbyzero.next, !dbg !3137

for.done:                                         ; preds = %divbyzero.next
    #dbg_value(i64 %9, !3117, !DIExpression(), !3146)
  %19 = mul i64 %9, %4, !dbg !3147
    #dbg_value(i64 %19, !3115, !DIExpression(), !3147)
  %20 = add i64 %3, 1, !dbg !3148
    #dbg_value(i64 %20, !3116, !DIExpression(), !3133)
  %21 = sitofp i64 %20 to double, !dbg !3149
    #dbg_value(i64 %10, !3114, !DIExpression(), !3134)
  %22 = sitofp i64 %10 to double, !dbg !3122
    #dbg_value(double %22, !3129, !DIExpression(), !3123)
  %23 = call double @llvm.sqrt.f64(double %22), !dbg !3123
  %24 = fcmp ult double %23, %21, !dbg !3131
  br i1 %24, label %for.done3, label %for.loop1.preheader, !dbg !3132

for.done3:                                        ; preds = %for.done, %entry
  %.lcssa7 = phi i64 [ %n, %entry ], [ %10, %for.done ], !dbg !3150
  %.lcssa = phi i64 [ 1, %entry ], [ %19, %for.done ], !dbg !3120
    #dbg_value(i64 %.lcssa7, !3114, !DIExpression(), !3151)
  %25 = icmp sgt i64 %.lcssa7, 1, !dbg !3152
  %26 = add nuw i64 %.lcssa7, 1, !dbg !3132
  %27 = select i1 %25, i64 %26, i64 1, !dbg !3132
  %28 = mul i64 %27, %.lcssa, !dbg !3132
    #dbg_value(i64 %28, !3115, !DIExpression(), !3153)
  ret i64 %28, !dbg !3154

divbyzero.throw:                                  ; preds = %for.loop1.preheader
  call fastcc void @runtime.divideByZeroPanic(), !dbg !3137
  unreachable, !dbg !3137
}
