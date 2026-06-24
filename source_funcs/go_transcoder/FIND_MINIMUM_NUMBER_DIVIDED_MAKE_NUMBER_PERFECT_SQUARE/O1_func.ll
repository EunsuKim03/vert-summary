define i64 @f_gold(i64 %n) local_unnamed_addr #5 !dbg !3109 {
entry:
    #dbg_value(i64 %n, !3114, !DIExpression(), !3118)
    #dbg_value(i64 0, !3115, !DIExpression(), !3119)
    #dbg_value(i64 1, !3116, !DIExpression(), !3120)
  %0 = and i64 %n, 1, !dbg !3121
  %1 = icmp eq i64 %0, 0, !dbg !3121
  br i1 %1, label %for.body, label %for.done, !dbg !3122

for.body:                                         ; preds = %entry, %for.body
  %2 = phi i64 [ %4, %for.body ], [ 0, %entry ]
  %3 = phi i64 [ %5, %for.body ], [ %n, %entry ]
    #dbg_value(i64 %3, !3114, !DIExpression(), !3123)
  %4 = add i64 %2, 1, !dbg !3124
    #dbg_value(i64 %4, !3115, !DIExpression(), !3124)
  %5 = ashr exact i64 %3, 1, !dbg !3125
    #dbg_value(i64 %5, !3114, !DIExpression(), !3123)
  %6 = and i64 %3, 2, !dbg !3121
  %7 = icmp eq i64 %6, 0, !dbg !3121
  br i1 %7, label %for.body, label %for.done.loopexit, !dbg !3122

for.done.loopexit:                                ; preds = %for.body
  %8 = and i64 %4, 1, !dbg !3126
  %9 = add nuw nsw i64 %8, 1, !dbg !3122
  br label %for.done, !dbg !3126

for.done:                                         ; preds = %for.done.loopexit, %entry
  %.lcssa13 = phi i64 [ %n, %entry ], [ %5, %for.done.loopexit ], !dbg !3127
  %.lcssa12 = phi i64 [ 1, %entry ], [ %9, %for.done.loopexit ], !dbg !3119
    #dbg_value(i64 %.lcssa12, !3115, !DIExpression(), !3128)
    #dbg_value(i64 3, !3117, !DIExpression(), !3129)
  %10 = sitofp i64 %.lcssa13 to double, !dbg !3130
  %11 = call double @llvm.sqrt.f64(double %10), !dbg !3131
  %12 = fcmp ult double %11, 3.000000e+00, !dbg !3139
  br i1 %12, label %for.done8, label %for.loop3.preheader, !dbg !3122

for.loop3.preheader:                              ; preds = %for.done, %for.done5
  %13 = phi i64 [ %29, %for.done5 ], [ 3, %for.done ]
  %14 = phi i64 [ %spec.select4, %for.done5 ], [ %.lcssa12, %for.done ]
  %15 = phi i64 [ %19, %for.done5 ], [ %.lcssa13, %for.done ]
    #dbg_value(i64 %13, !3117, !DIExpression(), !3140)
    #dbg_value(i64 %15, !3114, !DIExpression(), !3141)
  %16 = icmp eq i64 %13, 0
    #dbg_value(i64 %15, !3114, !DIExpression(), !3142)
    #dbg_value(i64 %13, !3117, !DIExpression(), !3143)
  br i1 %16, label %divbyzero.throw, label %divbyzero.next.lr.ph, !dbg !3144

divbyzero.next.lr.ph:                             ; preds = %for.loop3.preheader
  %17 = icmp eq i64 %13, -1
  br label %divbyzero.next, !dbg !3144

divbyzero.next:                                   ; preds = %divbyzero.next12, %divbyzero.next.lr.ph
  %18 = phi i64 [ 0, %divbyzero.next.lr.ph ], [ %25, %divbyzero.next12 ]
  %19 = phi i64 [ %15, %divbyzero.next.lr.ph ], [ %26, %divbyzero.next12 ]
    #dbg_value(i64 %19, !3114, !DIExpression(), !3142)
  %20 = icmp eq i64 %19, -9223372036854775808, !dbg !3144
  %21 = and i1 %17, %20, !dbg !3144
  %22 = select i1 %21, i64 1, i64 %13, !dbg !3144
  %23 = srem i64 %19, %22, !dbg !3144
  %24 = icmp eq i64 %23, 0, !dbg !3145
  br i1 %24, label %divbyzero.next12, label %for.done5, !dbg !3122

divbyzero.next12:                                 ; preds = %divbyzero.next
    #dbg_value(i64 %18, !3115, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3146)
    #dbg_value(i64 %13, !3117, !DIExpression(), !3147)
  %25 = add i64 %18, 1, !dbg !3146
    #dbg_value(i64 %25, !3115, !DIExpression(), !3146)
  %26 = sdiv i64 %19, %22, !dbg !3148
    #dbg_value(i64 %26, !3114, !DIExpression(), !3142)
  br label %divbyzero.next, !dbg !3144

for.done5:                                        ; preds = %divbyzero.next
    #dbg_value(i64 %18, !3115, !DIExpression(), !3149)
  %27 = and i64 %18, 1, !dbg !3150
  %.not2 = icmp eq i64 %27, 0, !dbg !3150
  %28 = select i1 %.not2, i64 1, i64 %13, !dbg !3122
  %spec.select4 = mul i64 %28, %14, !dbg !3122
  %29 = add i64 %13, 2, !dbg !3151
    #dbg_value(i64 %29, !3117, !DIExpression(), !3140)
  %30 = sitofp i64 %29 to double, !dbg !3152
    #dbg_value(i64 %19, !3114, !DIExpression(), !3141)
  %31 = sitofp i64 %19 to double, !dbg !3130
    #dbg_value(double %31, !3137, !DIExpression(), !3131)
  %32 = call double @llvm.sqrt.f64(double %31), !dbg !3131
  %33 = fcmp ult double %32, %30, !dbg !3139
  br i1 %33, label %for.done8, label %for.loop3.preheader, !dbg !3122

for.done8:                                        ; preds = %for.done5, %for.done
  %.lcssa10 = phi i64 [ %.lcssa13, %for.done ], [ %19, %for.done5 ], !dbg !3127
  %.lcssa = phi i64 [ %.lcssa12, %for.done ], [ %spec.select4, %for.done5 ], !dbg !3120
    #dbg_value(i64 %.lcssa10, !3114, !DIExpression(), !3153)
  %34 = icmp sgt i64 %.lcssa10, 2, !dbg !3154
  %35 = select i1 %34, i64 %.lcssa10, i64 1, !dbg !3122
  %spec.select5 = mul i64 %35, %.lcssa, !dbg !3122
    #dbg_value(i64 %spec.select5, !3116, !DIExpression(), !3155)
  ret i64 %spec.select5, !dbg !3156

divbyzero.throw:                                  ; preds = %for.loop3.preheader
  call fastcc void @runtime.divideByZeroPanic(), !dbg !3144
  unreachable, !dbg !3144
}
