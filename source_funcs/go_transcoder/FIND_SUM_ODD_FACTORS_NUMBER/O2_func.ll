define i64 @f_gold(i64 %n) local_unnamed_addr #5 !dbg !3025 {
entry:
    #dbg_value(i64 %n, !3030, !DIExpression(), !3036)
    #dbg_value(i64 1, !3031, !DIExpression(), !3037)
  br label %for.loop, !dbg !3038

for.loop:                                         ; preds = %for.loop, %entry
  %0 = phi i64 [ %n, %entry ], [ %3, %for.loop ], !dbg !3039
    #dbg_value(i64 %0, !3030, !DIExpression(), !3040)
  %1 = and i64 %0, 1, !dbg !3041
  %2 = icmp eq i64 %1, 0, !dbg !3041
  %3 = ashr exact i64 %0, 1, !dbg !3042
    #dbg_value(i64 %3, !3030, !DIExpression(), !3043)
  br i1 %2, label %for.loop, label %for.loop1.preheader, !dbg !3038

for.loop1.preheader:                              ; preds = %for.loop
    #dbg_value(i64 3, !3032, !DIExpression(), !3044)
  %4 = sitofp i64 %0 to double, !dbg !3045
  %5 = tail call double @llvm.sqrt.f64(double %4), !dbg !3046
  %6 = fcmp ult double %5, 3.000000e+00, !dbg !3054
  br i1 %6, label %for.done6, label %for.loop3.preheader, !dbg !3038

for.loop3.preheader:                              ; preds = %for.loop1.preheader, %for.done5
  %7 = phi i64 [ %24, %for.done5 ], [ 3, %for.loop1.preheader ]
  %8 = phi i64 [ %23, %for.done5 ], [ 1, %for.loop1.preheader ]
  %9 = phi i64 [ %14, %for.done5 ], [ %0, %for.loop1.preheader ]
    #dbg_value(i64 %7, !3032, !DIExpression(), !3044)
    #dbg_value(i64 %9, !3030, !DIExpression(), !3055)
  %10 = icmp eq i64 %7, 0
  br i1 %10, label %divbyzero.throw, label %divbyzero.next.lr.ph, !dbg !3056

divbyzero.next.lr.ph:                             ; preds = %for.loop3.preheader
  %11 = icmp eq i64 %7, -1
  br label %divbyzero.next, !dbg !3056

divbyzero.next:                                   ; preds = %divbyzero.next8, %divbyzero.next.lr.ph
  %12 = phi i64 [ 1, %divbyzero.next.lr.ph ], [ %21, %divbyzero.next8 ]
  %13 = phi i64 [ 1, %divbyzero.next.lr.ph ], [ %22, %divbyzero.next8 ]
  %14 = phi i64 [ %9, %divbyzero.next.lr.ph ], [ %20, %divbyzero.next8 ]
    #dbg_value(i64 %14, !3030, !DIExpression(), !3057)
  %15 = icmp eq i64 %14, -9223372036854775808, !dbg !3056
  %16 = and i1 %11, %15, !dbg !3056
  %17 = select i1 %16, i64 1, i64 %7, !dbg !3056
  %18 = srem i64 %14, %17, !dbg !3056
  %19 = icmp eq i64 %18, 0, !dbg !3058
  br i1 %19, label %divbyzero.next8, label %for.done5, !dbg !3038

divbyzero.next8:                                  ; preds = %divbyzero.next
    #dbg_value(i64 poison, !3033, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3059)
    #dbg_value(i64 %14, !3030, !DIExpression(), !3060)
    #dbg_value(i64 %7, !3032, !DIExpression(), !3061)
  %20 = sdiv i64 %14, %17, !dbg !3062
    #dbg_value(i64 %20, !3030, !DIExpression(), !3063)
  %21 = mul i64 %12, %7, !dbg !3064
    #dbg_value(i64 %21, !3035, !DIExpression(), !3065)
  %22 = add i64 %21, %13, !dbg !3066
    #dbg_value(i64 %22, !3034, !DIExpression(), !3066)
  br label %divbyzero.next, !dbg !3056

for.done5:                                        ; preds = %divbyzero.next
    #dbg_value(i64 %13, !3034, !DIExpression(), !3067)
  %23 = mul i64 %13, %8, !dbg !3068
    #dbg_value(i64 %23, !3031, !DIExpression(), !3068)
  %24 = add i64 %7, 1, !dbg !3069
    #dbg_value(i64 %24, !3032, !DIExpression(), !3044)
  %25 = sitofp i64 %24 to double, !dbg !3070
    #dbg_value(i64 %14, !3030, !DIExpression(), !3055)
  %26 = sitofp i64 %14 to double, !dbg !3045
    #dbg_value(double %26, !3052, !DIExpression(), !3046)
  %27 = tail call double @llvm.sqrt.f64(double %26), !dbg !3046
  %28 = fcmp ult double %27, %25, !dbg !3054
  br i1 %28, label %for.done6, label %for.loop3.preheader, !dbg !3038

for.done6:                                        ; preds = %for.done5, %for.loop1.preheader
  %.lcssa7 = phi i64 [ %0, %for.loop1.preheader ], [ %14, %for.done5 ], !dbg !3039
  %.lcssa = phi i64 [ 1, %for.loop1.preheader ], [ %23, %for.done5 ], !dbg !3037
    #dbg_value(i64 %.lcssa7, !3030, !DIExpression(), !3071)
  %29 = icmp sgt i64 %.lcssa7, 1, !dbg !3072
  %30 = add nuw i64 %.lcssa7, 1, !dbg !3038
  %31 = select i1 %29, i64 %30, i64 1, !dbg !3038
  %32 = mul i64 %31, %.lcssa, !dbg !3038
    #dbg_value(i64 %32, !3031, !DIExpression(), !3073)
  ret i64 %32, !dbg !3074

divbyzero.throw:                                  ; preds = %for.loop3.preheader
  tail call fastcc void @runtime.divideByZeroPanic(), !dbg !3056
  unreachable, !dbg !3056
}
