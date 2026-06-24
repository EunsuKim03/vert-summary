define i64 @f_gold(i64 %n) local_unnamed_addr #5 !dbg !3025 {
entry:
    #dbg_value(i64 %n, !3030, !DIExpression(), !3033)
    #dbg_value(i64 0, !3031, !DIExpression(), !3034)
    #dbg_value(i64 2, !3032, !DIExpression(), !3035)
  %0 = sitofp i64 %n to double
  %1 = tail call double @llvm.sqrt.f64(double %0)
  %2 = fcmp ult double %1, 2.000000e+00, !dbg !3036
  br i1 %2, label %for.done, label %for.body.lr.ph, !dbg !3037

for.body.lr.ph:                                   ; preds = %entry
  %3 = icmp eq i64 %n, -9223372036854775808
  br label %for.body, !dbg !3037

for.body:                                         ; preds = %for.body.lr.ph, %if.done
  %4 = phi i64 [ 2, %for.body.lr.ph ], [ %17, %if.done ]
  %5 = phi i64 [ 0, %for.body.lr.ph ], [ %16, %if.done ]
    #dbg_value(i64 %n, !3030, !DIExpression(), !3038)
    #dbg_value(i64 %4, !3032, !DIExpression(), !3039)
  %6 = icmp eq i64 %4, 0, !dbg !3040
  br i1 %6, label %divbyzero.throw, label %divbyzero.next, !dbg !3040

divbyzero.next:                                   ; preds = %for.body
  %7 = icmp eq i64 %4, -1, !dbg !3040
  %8 = and i1 %3, %7, !dbg !3040
  %9 = select i1 %8, i64 1, i64 %4, !dbg !3040
  %10 = srem i64 %n, %9, !dbg !3040
  %11 = icmp eq i64 %10, 0, !dbg !3041
  br i1 %11, label %divbyzero.next3, label %if.done, !dbg !3037

divbyzero.next3:                                  ; preds = %divbyzero.next
    #dbg_value(i64 %n, !3030, !DIExpression(), !3042)
    #dbg_value(i64 %4, !3032, !DIExpression(), !3043)
  %12 = sdiv i64 %n, %9, !dbg !3044
  %13 = icmp eq i64 %4, %12, !dbg !3045
  %14 = add i64 %4, %5, !dbg !3037
  %15 = select i1 %13, i64 0, i64 %12, !dbg !3037
  %spec.select = add i64 %14, %15, !dbg !3037
  br label %if.done, !dbg !3037

if.done:                                          ; preds = %divbyzero.next3, %divbyzero.next
  %16 = phi i64 [ %5, %divbyzero.next ], [ %spec.select, %divbyzero.next3 ], !dbg !3034
  %17 = add i64 %4, 1, !dbg !3046
    #dbg_value(i64 %17, !3032, !DIExpression(), !3047)
  %18 = sitofp i64 %17 to double, !dbg !3048
    #dbg_value(i64 %n, !3030, !DIExpression(), !3049)
  %19 = fcmp ult double %1, %18, !dbg !3036
  br i1 %19, label %for.done, label %for.body, !dbg !3037

for.done:                                         ; preds = %if.done, %entry
  %.lcssa = phi i64 [ 0, %entry ], [ %16, %if.done ], !dbg !3034
    #dbg_value(i64 %.lcssa, !3031, !DIExpression(), !3050)
    #dbg_value(i64 %n, !3030, !DIExpression(), !3051)
  %20 = add i64 %n, 1, !dbg !3052
  %21 = add i64 %20, %.lcssa, !dbg !3053
  ret i64 %21, !dbg !3054

divbyzero.throw:                                  ; preds = %for.body
  tail call fastcc void @runtime.divideByZeroPanic(), !dbg !3040
  unreachable, !dbg !3040
}
