define i64 @f_gold(i64 %n) local_unnamed_addr #10 !dbg !3021 {
entry:
    #dbg_value(i64 %n, !3026, !DIExpression(), !3028)
    #dbg_value(i64 %n, !3026, !DIExpression(), !3029)
  %0 = sitofp i64 %n to double, !dbg !3030
    #dbg_value(double %0, !3031, !DIExpression(), !3037)
  %1 = tail call double @llvm.log.f64(double %0), !dbg !3037
  %2 = fmul double %1, 0x40009FEC13B9F128, !dbg !3039
  %3 = fadd double %2, 0x3FFAC1A47A9E2BD0, !dbg !3040
  %4 = fptrunc double %3 to float, !dbg !3041
    #dbg_value(float %4, !3027, !DIExpression(), !3042)
    #dbg_value(float %4, !3027, !DIExpression(), !3043)
  %5 = fpext float %4 to double, !dbg !3044
    #dbg_value(double %5, !3045, !DIExpression(), !3051)
    #dbg_value(double %5, !3045, !DIExpression(), !3053)
    #dbg_value(double %5, !3054, !DIExpression(), !3058)
  %.cast.i.i = bitcast double %5 to i64, !dbg !3060
    #dbg_value(i64 %.cast.i.i, !3049, !DIExpression(), !3061)
    #dbg_value(i64 %.cast.i.i, !3049, !DIExpression(), !3062)
  %6 = lshr i64 %.cast.i.i, 52, !dbg !3063
  %7 = and i64 %6, 2047, !dbg !3064
    #dbg_value(i64 %7, !3050, !DIExpression(), !3065)
    #dbg_value(i64 %7, !3050, !DIExpression(), !3066)
  %8 = icmp samesign ult i64 %7, 1023, !dbg !3067
  br i1 %8, label %if.then.i, label %if.else.i, !dbg !3068

if.then.i:                                        ; preds = %entry
  %9 = and i64 %.cast.i.i, -9223372036854775808, !dbg !3069
    #dbg_value(i64 %9, !3049, !DIExpression(), !3069)
    #dbg_value(i64 %7, !3050, !DIExpression(), !3070)
  %10 = icmp eq i64 %7, 1022, !dbg !3071
  %11 = or disjoint i64 %9, 4607182418800017408
  %spec.select.i = select i1 %10, i64 %11, i64 %9, !dbg !3068
  br label %math.Round.exit, !dbg !3068

if.else.i:                                        ; preds = %entry
    #dbg_value(i64 %7, !3050, !DIExpression(), !3072)
  %12 = icmp samesign ult i64 %7, 1075, !dbg !3073
  br i1 %12, label %if.then2.i, label %math.Round.exit, !dbg !3068

if.then2.i:                                       ; preds = %if.else.i
  %13 = add nsw i64 %7, -1023, !dbg !3074
    #dbg_value(i64 %13, !3050, !DIExpression(), !3074)
    #dbg_value(i64 %13, !3050, !DIExpression(), !3075)
  %14 = lshr i64 2251799813685248, %13, !dbg !3076
  %15 = add i64 %14, %.cast.i.i, !dbg !3077
    #dbg_value(i64 %15, !3049, !DIExpression(), !3077)
    #dbg_value(i64 %13, !3050, !DIExpression(), !3078)
  %16 = ashr i64 -4503599627370496, %13, !dbg !3079
  %17 = and i64 %15, %16, !dbg !3079
    #dbg_value(i64 %17, !3049, !DIExpression(), !3079)
  br label %math.Round.exit, !dbg !3068

math.Round.exit:                                  ; preds = %if.then.i, %if.else.i, %if.then2.i
  %18 = phi i64 [ %.cast.i.i, %if.else.i ], [ %17, %if.then2.i ], [ %spec.select.i, %if.then.i ], !dbg !3061
    #dbg_value(i64 %18, !3049, !DIExpression(), !3080)
    #dbg_value(i64 %18, !3081, !DIExpression(), !3084)
  %.cast.i1.i = bitcast i64 %18 to double, !dbg !3086
  %abovemin = fcmp oge double %.cast.i1.i, 0xC3E0000000000000, !dbg !3087
  %belowmax = fcmp ole double %.cast.i1.i, 0x43DFFFFFFFFFFFFE, !dbg !3087
  %inbounds = and i1 %abovemin, %belowmax, !dbg !3087
  %saturated = select i1 %abovemin, i64 9223372036854775807, i64 -9223372036854775808, !dbg !3087
  %isnan = fcmp uno double %.cast.i1.i, 0.000000e+00, !dbg !3087
  %remapped = select i1 %isnan, i64 0, i64 %saturated, !dbg !3087
  %normal = fptosi double %.cast.i1.i to i64, !dbg !3087
  %19 = select i1 %inbounds, i64 %normal, i64 %remapped, !dbg !3087
  ret i64 %19, !dbg !3088
}
