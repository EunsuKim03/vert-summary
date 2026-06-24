define i64 @f_gold(i64 %n) local_unnamed_addr #5 !dbg !3025 {
entry:
    #dbg_value(i64 %n, !3030, !DIExpression(), !3035)
    #dbg_value(i64 %n, !3030, !DIExpression(), !3036)
  %0 = sitofp i64 %n to double, !dbg !3037
    #dbg_value(double %0, !3038, !DIExpression(), !3044)
  %1 = tail call double @llvm.sqrt.f64(double %0), !dbg !3044
  %abovemin = fcmp oge double %1, 0xC3E0000000000000, !dbg !3046
  %belowmax = fcmp ole double %1, 0x43DFFFFFFFFFFFFE, !dbg !3046
  %inbounds = and i1 %abovemin, %belowmax, !dbg !3046
  %saturated = select i1 %abovemin, i64 9223372036854775807, i64 -9223372036854775808, !dbg !3046
  %isnan = icmp slt i64 %n, 0, !dbg !3046
  %remapped = select i1 %isnan, i64 0, i64 %saturated, !dbg !3046
  %normal = fptosi double %1 to i64, !dbg !3046
  %2 = select i1 %inbounds, i64 %normal, i64 %remapped, !dbg !3046
    #dbg_value(i64 %2, !3031, !DIExpression(), !3047)
    #dbg_value(i64 %2, !3031, !DIExpression(), !3048)
    #dbg_value(i64 %2, !3031, !DIExpression(), !3049)
  %3 = mul i64 %2, %2, !dbg !3050
    #dbg_value(i64 %3, !3032, !DIExpression(), !3051)
    #dbg_value(i64 %3, !3032, !DIExpression(), !3052)
    #dbg_value(i64 %n, !3030, !DIExpression(), !3053)
  %4 = icmp eq i64 %3, %n, !dbg !3054
  br i1 %4, label %if.then, label %if.else, !dbg !3055

common.ret:                                       ; preds = %divbyzero.next, %if.then
  %common.ret.op = phi i64 [ %5, %if.then ], [ %20, %divbyzero.next ]
  ret i64 %common.ret.op, !dbg !3055

if.then:                                          ; preds = %entry
    #dbg_value(i64 %2, !3031, !DIExpression(), !3056)
  %5 = shl i64 %2, 2, !dbg !3057
  br label %common.ret, !dbg !3058

if.else:                                          ; preds = %entry
    #dbg_value(i64 %n, !3030, !DIExpression(), !3059)
    #dbg_value(i64 %2, !3031, !DIExpression(), !3060)
  %6 = icmp eq i64 %2, 0, !dbg !3061
  br i1 %6, label %divbyzero.throw, label %divbyzero.next, !dbg !3061

divbyzero.next:                                   ; preds = %if.else
  %7 = icmp eq i64 %2, -1, !dbg !3061
  %8 = icmp eq i64 %n, -9223372036854775808, !dbg !3061
  %9 = and i1 %8, %7, !dbg !3061
  %10 = select i1 %9, i64 1, i64 %2, !dbg !3061
  %11 = sdiv i64 %n, %10, !dbg !3061
  %12 = sitofp i64 %11 to double, !dbg !3062
    #dbg_value(double %12, !3033, !DIExpression(), !3063)
    #dbg_value(i64 %2, !3031, !DIExpression(), !3064)
    #dbg_value(double %12, !3033, !DIExpression(), !3065)
  %abovemin2 = fcmp oge double %12, 0xC3E0000000000000, !dbg !3066
  %belowmax3 = fcmp ole double %12, 0x43DFFFFFFFFFFFFE, !dbg !3066
  %normal8 = fptosi double %12 to i64, !dbg !3066
  %saturated5 = select i1 %belowmax3, i64 %normal8, i64 9223372036854775807, !dbg !3066
  %13 = select i1 %abovemin2, i64 %saturated5, i64 0, !dbg !3066
  %14 = add i64 %13, %2, !dbg !3067
  %15 = shl i64 %14, 1, !dbg !3068
  %16 = sitofp i64 %15 to double, !dbg !3069
    #dbg_value(double %16, !3034, !DIExpression(), !3070)
    #dbg_value(i64 %n, !3030, !DIExpression(), !3071)
    #dbg_value(i64 %2, !3031, !DIExpression(), !3072)
  %17 = srem i64 %n, %10, !dbg !3073
  %.not = icmp eq i64 %17, 0, !dbg !3074
  %18 = fadd double %16, 2.000000e+00, !dbg !3055
  %19 = select i1 %.not, double %16, double %18, !dbg !3055
    #dbg_value(double %19, !3034, !DIExpression(), !3075)
  %abovemin11 = fcmp oge double %19, 0xC3E0000000000000, !dbg !3076
  %belowmax12 = fcmp ole double %19, 0x43DFFFFFFFFFFFFE, !dbg !3076
  %normal17 = fptosi double %19 to i64, !dbg !3076
  %saturated14 = select i1 %belowmax12, i64 %normal17, i64 9223372036854775807, !dbg !3076
  %20 = select i1 %abovemin11, i64 %saturated14, i64 -9223372036854775808, !dbg !3076
  br label %common.ret, !dbg !3077

divbyzero.throw:                                  ; preds = %if.else
  tail call fastcc void @runtime.divideByZeroPanic(), !dbg !3061
  unreachable, !dbg !3061
}
