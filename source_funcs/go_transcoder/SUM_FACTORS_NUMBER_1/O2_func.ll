define i64 @f_gold(i64 %n) local_unnamed_addr #5 !dbg !3025 {
entry:
    #dbg_value(i64 %n, !3030, !DIExpression(), !3035)
    #dbg_value(i64 1, !3031, !DIExpression(), !3036)
    #dbg_value(i64 2, !3032, !DIExpression(), !3037)
  %0 = sitofp i64 %n to double, !dbg !3038
  %1 = tail call double @llvm.sqrt.f64(double %0), !dbg !3039
  %2 = fcmp ult double %1, 2.000000e+00, !dbg !3047
  br i1 %2, label %for.done3, label %for.loop1.preheader, !dbg !3048

for.loop1.preheader:                              ; preds = %entry, %for.done
  %3 = phi i64 [ %20, %for.done ], [ 2, %entry ]
  %4 = phi i64 [ %19, %for.done ], [ 1, %entry ]
  %5 = phi i64 [ %10, %for.done ], [ %n, %entry ]
    #dbg_value(i64 %3, !3032, !DIExpression(), !3049)
    #dbg_value(i64 %5, !3030, !DIExpression(), !3050)
  %6 = icmp eq i64 %3, 0
  br i1 %6, label %divbyzero.throw, label %divbyzero.next.lr.ph, !dbg !3051

divbyzero.next.lr.ph:                             ; preds = %for.loop1.preheader
  %7 = icmp eq i64 %3, -1
  br label %divbyzero.next, !dbg !3051

divbyzero.next:                                   ; preds = %divbyzero.next5, %divbyzero.next.lr.ph
  %8 = phi i64 [ 1, %divbyzero.next.lr.ph ], [ %17, %divbyzero.next5 ]
  %9 = phi i64 [ 1, %divbyzero.next.lr.ph ], [ %18, %divbyzero.next5 ]
  %10 = phi i64 [ %5, %divbyzero.next.lr.ph ], [ %16, %divbyzero.next5 ]
    #dbg_value(i64 %10, !3030, !DIExpression(), !3052)
  %11 = icmp eq i64 %10, -9223372036854775808, !dbg !3051
  %12 = and i1 %7, %11, !dbg !3051
  %13 = select i1 %12, i64 1, i64 %3, !dbg !3051
  %14 = srem i64 %10, %13, !dbg !3051
  %15 = icmp eq i64 %14, 0, !dbg !3053
  br i1 %15, label %divbyzero.next5, label %for.done, !dbg !3048

divbyzero.next5:                                  ; preds = %divbyzero.next
    #dbg_value(i64 %10, !3030, !DIExpression(), !3054)
    #dbg_value(i64 %3, !3032, !DIExpression(), !3055)
  %16 = sdiv i64 %10, %13, !dbg !3056
    #dbg_value(i64 %16, !3030, !DIExpression(), !3057)
  %17 = mul i64 %8, %3, !dbg !3058
    #dbg_value(i64 %17, !3034, !DIExpression(), !3059)
  %18 = add i64 %17, %9, !dbg !3060
    #dbg_value(i64 %18, !3033, !DIExpression(), !3060)
  br label %divbyzero.next, !dbg !3051

for.done:                                         ; preds = %divbyzero.next
    #dbg_value(i64 %9, !3033, !DIExpression(), !3061)
  %19 = mul i64 %9, %4, !dbg !3062
    #dbg_value(i64 %19, !3031, !DIExpression(), !3062)
  %20 = add i64 %3, 1, !dbg !3063
    #dbg_value(i64 %20, !3032, !DIExpression(), !3049)
  %21 = sitofp i64 %20 to double, !dbg !3064
    #dbg_value(i64 %10, !3030, !DIExpression(), !3050)
  %22 = sitofp i64 %10 to double, !dbg !3038
    #dbg_value(double %22, !3045, !DIExpression(), !3039)
  %23 = tail call double @llvm.sqrt.f64(double %22), !dbg !3039
  %24 = fcmp ult double %23, %21, !dbg !3047
  br i1 %24, label %for.done3, label %for.loop1.preheader, !dbg !3048

for.done3:                                        ; preds = %for.done, %entry
  %.lcssa7 = phi i64 [ %n, %entry ], [ %10, %for.done ], !dbg !3065
  %.lcssa = phi i64 [ 1, %entry ], [ %19, %for.done ], !dbg !3036
    #dbg_value(i64 %.lcssa7, !3030, !DIExpression(), !3066)
  %25 = icmp sgt i64 %.lcssa7, 1, !dbg !3067
  %26 = add nuw i64 %.lcssa7, 1, !dbg !3048
  %27 = select i1 %25, i64 %26, i64 1, !dbg !3048
  %28 = mul i64 %27, %.lcssa, !dbg !3048
    #dbg_value(i64 %28, !3031, !DIExpression(), !3068)
  ret i64 %28, !dbg !3069

divbyzero.throw:                                  ; preds = %for.loop1.preheader
  tail call fastcc void @runtime.divideByZeroPanic(), !dbg !3051
  unreachable, !dbg !3051
}
