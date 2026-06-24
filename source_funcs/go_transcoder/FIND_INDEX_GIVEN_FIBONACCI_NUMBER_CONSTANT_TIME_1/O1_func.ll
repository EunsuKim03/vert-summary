define i64 @f_gold(i64 %n) local_unnamed_addr #10 !dbg !3105 {
entry:
    #dbg_value(i64 %n, !3110, !DIExpression(), !3112)
    #dbg_value(i64 %n, !3110, !DIExpression(), !3113)
  %0 = sitofp i64 %n to double, !dbg !3114
    #dbg_value(double %0, !3115, !DIExpression(), !3121)
  %1 = call double @llvm.log.f64(double %0), !dbg !3121
  %2 = fmul double %1, 0x40009FEC13B9F128, !dbg !3123
  %3 = fadd double %2, 0x3FFAC1A47A9E2BD0, !dbg !3124
  %4 = fptrunc double %3 to float, !dbg !3125
    #dbg_value(float %4, !3111, !DIExpression(), !3126)
    #dbg_value(float %4, !3111, !DIExpression(), !3127)
  %5 = fpext float %4 to double, !dbg !3128
    #dbg_value(double %5, !3129, !DIExpression(), !3135)
    #dbg_value(double %5, !3129, !DIExpression(), !3137)
    #dbg_value(double %5, !3138, !DIExpression(), !3142)
  %.cast.i.i = bitcast double %5 to i64, !dbg !3144
    #dbg_value(i64 %.cast.i.i, !3133, !DIExpression(), !3145)
    #dbg_value(i64 %.cast.i.i, !3133, !DIExpression(), !3146)
  %6 = lshr i64 %.cast.i.i, 52, !dbg !3147
  %7 = and i64 %6, 2047, !dbg !3148
    #dbg_value(i64 %7, !3134, !DIExpression(), !3149)
    #dbg_value(i64 %7, !3134, !DIExpression(), !3150)
  %8 = icmp samesign ult i64 %7, 1023, !dbg !3151
  br i1 %8, label %if.then.i, label %if.else.i, !dbg !3152

if.then.i:                                        ; preds = %entry
  %9 = and i64 %.cast.i.i, -9223372036854775808, !dbg !3153
    #dbg_value(i64 %9, !3133, !DIExpression(), !3153)
    #dbg_value(i64 %7, !3134, !DIExpression(), !3154)
  %10 = icmp eq i64 %7, 1022, !dbg !3155
  %11 = or disjoint i64 %9, 4607182418800017408
  %spec.select.i = select i1 %10, i64 %11, i64 %9, !dbg !3152
  br label %math.Round.exit, !dbg !3152

if.else.i:                                        ; preds = %entry
    #dbg_value(i64 %7, !3134, !DIExpression(), !3156)
  %12 = icmp samesign ult i64 %7, 1075, !dbg !3157
  br i1 %12, label %if.then2.i, label %math.Round.exit, !dbg !3152

if.then2.i:                                       ; preds = %if.else.i
  %13 = add nsw i64 %7, -1023, !dbg !3158
    #dbg_value(i64 %13, !3134, !DIExpression(), !3158)
    #dbg_value(i64 %13, !3134, !DIExpression(), !3159)
  %14 = lshr i64 2251799813685248, %13, !dbg !3160
  %15 = add i64 %14, %.cast.i.i, !dbg !3161
    #dbg_value(i64 %15, !3133, !DIExpression(), !3161)
    #dbg_value(i64 %13, !3134, !DIExpression(), !3162)
  %16 = ashr i64 -4503599627370496, %13, !dbg !3163
  %17 = and i64 %15, %16, !dbg !3163
    #dbg_value(i64 %17, !3133, !DIExpression(), !3163)
  br label %math.Round.exit, !dbg !3152

math.Round.exit:                                  ; preds = %if.then.i, %if.else.i, %if.then2.i
  %18 = phi i64 [ %.cast.i.i, %if.else.i ], [ %17, %if.then2.i ], [ %spec.select.i, %if.then.i ], !dbg !3145
    #dbg_value(i64 %18, !3133, !DIExpression(), !3164)
    #dbg_value(i64 %18, !3165, !DIExpression(), !3168)
  %.cast.i1.i = bitcast i64 %18 to double, !dbg !3170
  %abovemin = fcmp oge double %.cast.i1.i, 0xC3E0000000000000, !dbg !3171
  %belowmax = fcmp ole double %.cast.i1.i, 0x43DFFFFFFFFFFFFE, !dbg !3171
  %inbounds = and i1 %abovemin, %belowmax, !dbg !3171
  %saturated = select i1 %abovemin, i64 9223372036854775807, i64 -9223372036854775808, !dbg !3171
  %isnan = fcmp uno double %.cast.i1.i, 0.000000e+00, !dbg !3171
  %remapped = select i1 %isnan, i64 0, i64 %saturated, !dbg !3171
  %normal = fptosi double %.cast.i1.i to i64, !dbg !3171
  %19 = select i1 %inbounds, i64 %normal, i64 %remapped, !dbg !3171
  ret i64 %19, !dbg !3172
}
