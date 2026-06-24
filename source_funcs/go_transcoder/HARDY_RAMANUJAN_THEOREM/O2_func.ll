define i64 @f_gold(i64 %n) local_unnamed_addr #5 !dbg !3025 {
entry:
    #dbg_value(i64 0, !3031, !DIExpression(), !3033)
    #dbg_value(i64 %n, !3030, !DIExpression(), !3034)
  %0 = and i64 %n, 1, !dbg !3035
  %1 = icmp eq i64 %0, 0, !dbg !3035
  br i1 %1, label %for.loop, label %if.done, !dbg !3036

for.loop:                                         ; preds = %entry, %for.loop
  %2 = phi i64 [ %5, %for.loop ], [ %n, %entry ], !dbg !3037
    #dbg_value(i64 %2, !3030, !DIExpression(), !3038)
  %3 = and i64 %2, 1, !dbg !3039
  %4 = icmp eq i64 %3, 0, !dbg !3039
  %5 = ashr exact i64 %2, 1, !dbg !3040
    #dbg_value(i64 %5, !3030, !DIExpression(), !3041)
  br i1 %4, label %for.loop, label %if.done, !dbg !3036

if.done:                                          ; preds = %for.loop, %entry
  %6 = phi i64 [ %n, %entry ], [ %2, %for.loop ], !dbg !3037
  %7 = phi i64 [ 0, %entry ], [ 1, %for.loop ], !dbg !3033
    #dbg_value(i64 3, !3032, !DIExpression(), !3042)
  %8 = sitofp i64 %6 to double, !dbg !3043
  %9 = tail call double @llvm.sqrt.f64(double %8), !dbg !3044
  %10 = fcmp ult double %9, 3.000000e+00, !dbg !3052
  br i1 %10, label %for.done, label %for.body2, !dbg !3036

for.body2:                                        ; preds = %if.done, %if.done6
  %11 = phi i64 [ %32, %if.done6 ], [ 3, %if.done ]
  %12 = phi i64 [ %31, %if.done6 ], [ %7, %if.done ]
  %13 = phi i64 [ %30, %if.done6 ], [ %6, %if.done ]
    #dbg_value(i64 %13, !3030, !DIExpression(), !3053)
    #dbg_value(i64 %11, !3032, !DIExpression(), !3054)
  %14 = icmp eq i64 %11, 0, !dbg !3055
  br i1 %14, label %divbyzero.throw, label %divbyzero.next, !dbg !3055

divbyzero.next:                                   ; preds = %for.body2
  %15 = icmp eq i64 %11, -1, !dbg !3055
  %16 = icmp eq i64 %13, -9223372036854775808, !dbg !3055
  %17 = and i1 %16, %15, !dbg !3055
  %18 = select i1 %17, i64 1, i64 %11, !dbg !3055
  %19 = srem i64 %13, %18, !dbg !3055
  %20 = icmp eq i64 %19, 0, !dbg !3056
  br i1 %20, label %divbyzero.next12.preheader, label %if.done6, !dbg !3036

divbyzero.next12.preheader:                       ; preds = %divbyzero.next
  %21 = add i64 %12, 1, !dbg !3057
    #dbg_value(i64 %21, !3031, !DIExpression(), !3057)
    #dbg_value(i64 %13, !3030, !DIExpression(), !3058)
    #dbg_value(i64 %11, !3032, !DIExpression(), !3059)
  br label %divbyzero.next12, !dbg !3036

divbyzero.next12:                                 ; preds = %divbyzero.next12.preheader, %divbyzero.next12
  %22 = phi i64 [ %27, %divbyzero.next12 ], [ %18, %divbyzero.next12.preheader ]
  %23 = phi i64 [ %24, %divbyzero.next12 ], [ %13, %divbyzero.next12.preheader ]
    #dbg_value(i64 %23, !3030, !DIExpression(), !3060)
    #dbg_value(i64 %11, !3032, !DIExpression(), !3061)
  %24 = sdiv i64 %23, %22, !dbg !3062
    #dbg_value(i64 %24, !3030, !DIExpression(), !3058)
  %25 = icmp eq i64 %24, -9223372036854775808, !dbg !3063
  %26 = and i1 %15, %25, !dbg !3063
  %27 = select i1 %26, i64 1, i64 %11, !dbg !3063
  %28 = srem i64 %24, %27, !dbg !3063
  %29 = icmp eq i64 %28, 0, !dbg !3064
  br i1 %29, label %divbyzero.next12, label %if.done6, !dbg !3036

if.done6:                                         ; preds = %divbyzero.next12, %divbyzero.next
  %30 = phi i64 [ %13, %divbyzero.next ], [ %24, %divbyzero.next12 ], !dbg !3037
  %31 = phi i64 [ %12, %divbyzero.next ], [ %21, %divbyzero.next12 ], !dbg !3033
    #dbg_value(i64 %11, !3032, !DIExpression(), !3065)
  %32 = add i64 %11, 2, !dbg !3066
    #dbg_value(i64 %32, !3032, !DIExpression(), !3067)
  %33 = sitofp i64 %32 to double, !dbg !3068
    #dbg_value(i64 %30, !3030, !DIExpression(), !3069)
  %34 = sitofp i64 %30 to double, !dbg !3043
    #dbg_value(double %34, !3050, !DIExpression(), !3044)
  %35 = tail call double @llvm.sqrt.f64(double %34), !dbg !3044
  %36 = fcmp ult double %35, %33, !dbg !3052
  br i1 %36, label %for.done, label %for.body2, !dbg !3036

for.done:                                         ; preds = %if.done6, %if.done
  %.lcssa3 = phi i64 [ %6, %if.done ], [ %30, %if.done6 ], !dbg !3037
  %.lcssa1 = phi i64 [ %7, %if.done ], [ %31, %if.done6 ], !dbg !3033
    #dbg_value(i64 %.lcssa3, !3030, !DIExpression(), !3070)
  %37 = icmp sgt i64 %.lcssa3, 2, !dbg !3071
  %38 = zext i1 %37 to i64, !dbg !3036
  %spec.select = add i64 %.lcssa1, %38, !dbg !3036
    #dbg_value(i64 %spec.select, !3031, !DIExpression(), !3072)
  ret i64 %spec.select, !dbg !3073

divbyzero.throw:                                  ; preds = %for.body2
  tail call fastcc void @runtime.divideByZeroPanic(), !dbg !3055
  unreachable, !dbg !3055
}
