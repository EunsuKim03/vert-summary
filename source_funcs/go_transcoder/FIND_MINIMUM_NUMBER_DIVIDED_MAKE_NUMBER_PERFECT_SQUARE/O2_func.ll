define i64 @f_gold(i64 %n) local_unnamed_addr #5 !dbg !3025 {
entry:
    #dbg_value(i64 %n, !3030, !DIExpression(), !3034)
    #dbg_value(i64 0, !3031, !DIExpression(), !3035)
    #dbg_value(i64 1, !3032, !DIExpression(), !3036)
  %0 = and i64 %n, 1, !dbg !3037
  %1 = icmp eq i64 %0, 0, !dbg !3037
  br i1 %1, label %for.body, label %for.done, !dbg !3038

for.body:                                         ; preds = %entry, %for.body
  %2 = phi i64 [ %4, %for.body ], [ 0, %entry ]
  %3 = phi i64 [ %5, %for.body ], [ %n, %entry ]
    #dbg_value(i64 %3, !3030, !DIExpression(), !3039)
  %4 = add i64 %2, 1, !dbg !3040
    #dbg_value(i64 %4, !3031, !DIExpression(), !3040)
  %5 = ashr exact i64 %3, 1, !dbg !3041
    #dbg_value(i64 %5, !3030, !DIExpression(), !3039)
  %6 = and i64 %3, 2, !dbg !3037
  %7 = icmp eq i64 %6, 0, !dbg !3037
  br i1 %7, label %for.body, label %for.done.loopexit, !dbg !3038

for.done.loopexit:                                ; preds = %for.body
  %8 = and i64 %4, 1, !dbg !3042
  %9 = add nuw nsw i64 %8, 1, !dbg !3038
  br label %for.done, !dbg !3042

for.done:                                         ; preds = %for.done.loopexit, %entry
  %.lcssa13 = phi i64 [ %n, %entry ], [ %5, %for.done.loopexit ], !dbg !3043
  %.lcssa12 = phi i64 [ 1, %entry ], [ %9, %for.done.loopexit ], !dbg !3035
    #dbg_value(i64 %.lcssa12, !3031, !DIExpression(), !3044)
    #dbg_value(i64 3, !3033, !DIExpression(), !3045)
  %10 = sitofp i64 %.lcssa13 to double, !dbg !3046
  %11 = tail call double @llvm.sqrt.f64(double %10), !dbg !3047
  %12 = fcmp ult double %11, 3.000000e+00, !dbg !3055
  br i1 %12, label %for.done8, label %for.loop3.preheader, !dbg !3038

for.loop3.preheader:                              ; preds = %for.done, %for.done5
  %13 = phi i64 [ %29, %for.done5 ], [ 3, %for.done ]
  %14 = phi i64 [ %spec.select4, %for.done5 ], [ %.lcssa12, %for.done ]
  %15 = phi i64 [ %19, %for.done5 ], [ %.lcssa13, %for.done ]
    #dbg_value(i64 %13, !3033, !DIExpression(), !3056)
    #dbg_value(i64 %15, !3030, !DIExpression(), !3057)
  %16 = icmp eq i64 %13, 0
  br i1 %16, label %divbyzero.throw, label %divbyzero.next.lr.ph, !dbg !3058

divbyzero.next.lr.ph:                             ; preds = %for.loop3.preheader
  %17 = icmp eq i64 %13, -1
  br label %divbyzero.next, !dbg !3058

divbyzero.next:                                   ; preds = %divbyzero.next12, %divbyzero.next.lr.ph
  %18 = phi i64 [ 0, %divbyzero.next.lr.ph ], [ %25, %divbyzero.next12 ]
  %19 = phi i64 [ %15, %divbyzero.next.lr.ph ], [ %26, %divbyzero.next12 ]
    #dbg_value(i64 %19, !3030, !DIExpression(), !3059)
  %20 = icmp eq i64 %19, -9223372036854775808, !dbg !3058
  %21 = and i1 %17, %20, !dbg !3058
  %22 = select i1 %21, i64 1, i64 %13, !dbg !3058
  %23 = srem i64 %19, %22, !dbg !3058
  %24 = icmp eq i64 %23, 0, !dbg !3060
  br i1 %24, label %divbyzero.next12, label %for.done5, !dbg !3038

divbyzero.next12:                                 ; preds = %divbyzero.next
    #dbg_value(i64 %18, !3031, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3061)
    #dbg_value(i64 %13, !3033, !DIExpression(), !3062)
  %25 = add i64 %18, 1, !dbg !3061
    #dbg_value(i64 %25, !3031, !DIExpression(), !3061)
  %26 = sdiv i64 %19, %22, !dbg !3063
    #dbg_value(i64 %26, !3030, !DIExpression(), !3059)
  br label %divbyzero.next, !dbg !3058

for.done5:                                        ; preds = %divbyzero.next
    #dbg_value(i64 %18, !3031, !DIExpression(), !3064)
  %27 = and i64 %18, 1, !dbg !3065
  %.not2 = icmp eq i64 %27, 0, !dbg !3065
  %28 = select i1 %.not2, i64 1, i64 %13, !dbg !3038
  %spec.select4 = mul i64 %28, %14, !dbg !3038
  %29 = add i64 %13, 2, !dbg !3066
    #dbg_value(i64 %29, !3033, !DIExpression(), !3056)
  %30 = sitofp i64 %29 to double, !dbg !3067
    #dbg_value(i64 %19, !3030, !DIExpression(), !3057)
  %31 = sitofp i64 %19 to double, !dbg !3046
    #dbg_value(double %31, !3053, !DIExpression(), !3047)
  %32 = tail call double @llvm.sqrt.f64(double %31), !dbg !3047
  %33 = fcmp ult double %32, %30, !dbg !3055
  br i1 %33, label %for.done8, label %for.loop3.preheader, !dbg !3038

for.done8:                                        ; preds = %for.done5, %for.done
  %.lcssa10 = phi i64 [ %.lcssa13, %for.done ], [ %19, %for.done5 ], !dbg !3043
  %.lcssa = phi i64 [ %.lcssa12, %for.done ], [ %spec.select4, %for.done5 ], !dbg !3036
    #dbg_value(i64 %.lcssa10, !3030, !DIExpression(), !3068)
  %34 = icmp sgt i64 %.lcssa10, 2, !dbg !3069
  %35 = select i1 %34, i64 %.lcssa10, i64 1, !dbg !3038
  %spec.select5 = mul i64 %35, %.lcssa, !dbg !3038
    #dbg_value(i64 %spec.select5, !3032, !DIExpression(), !3070)
  ret i64 %spec.select5, !dbg !3071

divbyzero.throw:                                  ; preds = %for.loop3.preheader
  tail call fastcc void @runtime.divideByZeroPanic(), !dbg !3058
  unreachable, !dbg !3058
}
