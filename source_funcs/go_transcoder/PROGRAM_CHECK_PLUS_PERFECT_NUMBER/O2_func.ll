define i1 @f_gold(i64 %x) local_unnamed_addr #12 !dbg !3021 {
entry:
    #dbg_value(i64 %x, !3026, !DIExpression(), !3030)
    #dbg_value(i64 %x, !3027, !DIExpression(), !3031)
    #dbg_value(i64 0, !3028, !DIExpression(), !3032)
  %.not44 = icmp eq i64 %x, 0, !dbg !3033
  br i1 %.not44, label %for.done3, label %for.body, !dbg !3034

for.loop1.preheader:                              ; preds = %for.body
    #dbg_value(i64 %x, !3026, !DIExpression(), !3035)
  br label %for.body2.lr.ph, !dbg !3034

for.body2.lr.ph:                                  ; preds = %for.loop1.preheader
  %0 = sitofp i64 %5 to double
  %1 = icmp eq i64 %5, 0
  br label %for.body2, !dbg !3034

for.body:                                         ; preds = %entry, %for.body
  %2 = phi i64 [ %5, %for.body ], [ 0, %entry ]
  %3 = phi i64 [ %4, %for.body ], [ %x, %entry ]
    #dbg_value(i64 %3, !3026, !DIExpression(), !3036)
  %4 = sdiv i64 %3, 10, !dbg !3037
    #dbg_value(i64 %4, !3026, !DIExpression(), !3037)
  %5 = add i64 %2, 1, !dbg !3038
    #dbg_value(i64 %5, !3028, !DIExpression(), !3038)
  %.off = add i64 %3, 9, !dbg !3033
  %.not = icmp ult i64 %.off, 19, !dbg !3033
  br i1 %.not, label %for.loop1.preheader, label %for.body, !dbg !3034

for.body2:                                        ; preds = %for.body2.lr.ph, %math.Pow.exit
  %6 = phi i64 [ 0, %for.body2.lr.ph ], [ %132, %math.Pow.exit ]
  %7 = phi i64 [ %x, %for.body2.lr.ph ], [ %133, %math.Pow.exit ]
    #dbg_value(i64 %7, !3026, !DIExpression(), !3039)
  %8 = srem i64 %7, 10, !dbg !3040
    #dbg_value(i64 poison, !3028, !DIExpression(), !3041)
    #dbg_value(double poison, !3042, !DIExpression(), !3047)
    #dbg_value(double %0, !3046, !DIExpression(), !3049)
    #dbg_value(double poison, !3050, !DIExpression(), !3061)
    #dbg_value(double %0, !3053, !DIExpression(), !3063)
  %9 = icmp eq i64 %8, 1, !dbg !3064
  %10 = or i1 %1, %9, !dbg !3064
  br i1 %10, label %math.Pow.exit, label %switch.next.i.i.preheader, !dbg !3064

switch.next.i.i.preheader:                        ; preds = %for.body2
  %11 = sitofp i64 %8 to double, !dbg !3065
    #dbg_value(double %11, !3042, !DIExpression(), !3047)
    #dbg_value(double %11, !3050, !DIExpression(), !3061)
  br label %switch.next.i.i, !dbg !3064

switch.next.i.i:                                  ; preds = %switch.next.i.i.preheader, %if.then42.i.i
  %y.tr44.i = phi double [ %120, %if.then42.i.i ], [ %0, %switch.next.i.i.preheader ]
  %x.tr43.i = phi double [ %119, %if.then42.i.i ], [ %11, %switch.next.i.i.preheader ]
    #dbg_value(double %y.tr44.i, !3046, !DIExpression(), !3049)
    #dbg_value(double %x.tr43.i, !3042, !DIExpression(), !3047)
    #dbg_value(double %y.tr44.i, !3053, !DIExpression(), !3066)
  %12 = fcmp oeq double %y.tr44.i, 1.000000e+00, !dbg !3067
  br i1 %12, label %math.Pow.exit, label %switch.next2.i.i, !dbg !3064

switch.next2.i.i:                                 ; preds = %switch.next.i.i
    #dbg_value(double %x.tr43.i, !3050, !DIExpression(), !3068)
    #dbg_value(double %y.tr44.i, !3053, !DIExpression(), !3069)
  %or.cond26.i = fcmp uno double %x.tr43.i, %y.tr44.i, !dbg !3064
  br i1 %or.cond26.i, label %math.Pow.exit, label %switch.next5.i.i, !dbg !3064

switch.next5.i.i:                                 ; preds = %switch.next2.i.i
    #dbg_value(double %x.tr43.i, !3050, !DIExpression(), !3070)
  %13 = fcmp oeq double %x.tr43.i, 0.000000e+00, !dbg !3071
  br i1 %13, label %switch.body6.i.i, label %switch.next34.i.i, !dbg !3064

switch.body6.i.i:                                 ; preds = %switch.next5.i.i
    #dbg_value(double %y.tr44.i, !3053, !DIExpression(), !3072)
  %14 = fcmp olt double %y.tr44.i, 0.000000e+00, !dbg !3073
  br i1 %14, label %switch.body7.i.i, label %switch.next8.i.i, !dbg !3064

switch.body7.i.i:                                 ; preds = %switch.body6.i.i
    #dbg_value(double %x.tr43.i, !3050, !DIExpression(), !3074)
    #dbg_value(double %x.tr43.i, !3075, !DIExpression(), !3081)
    #dbg_value(double %x.tr43.i, !3083, !DIExpression(), !3087)
  %.cast.i.i19.i = bitcast double %x.tr43.i to i64, !dbg !3089
  %15 = icmp slt i64 %.cast.i.i19.i, 0, !dbg !3090
    #dbg_value(double %y.tr44.i, !3053, !DIExpression(), !3091)
    #dbg_value(double %y.tr44.i, !3092, !DIExpression(), !3097)
    #dbg_value(double %y.tr44.i, !3099, !DIExpression(), !3103)
  %16 = tail call double @llvm.fabs.f64(double %y.tr44.i)
  %17 = fcmp ult double %16, 0x4340000000000000
  %or.cond.i = and i1 %17, %15, !dbg !3064
  br i1 %or.cond.i, label %if.done.i10.i, label %if.done.i.i, !dbg !3064

if.done.i10.i:                                    ; preds = %switch.body7.i.i
    #dbg_value(double %y.tr44.i, !3092, !DIExpression(), !3105)
    #dbg_value(double %y.tr44.i, !3106, !DIExpression(), !3112)
    #dbg_value(double %y.tr44.i, !3114, !DIExpression(), !3118)
  %18 = tail call double @llvm.trunc.f64(double %y.tr44.i), !dbg !3118
    #dbg_value(double %18, !3110, !DIExpression(), !3120)
    #dbg_value(double poison, !3121, !DIExpression(), !3126)
    #dbg_value(double %y.tr44.i, !3125, !DIExpression(), !3128)
    #dbg_value(!DIArgList(double poison, double poison), !3129, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 9223372036854775808, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !3132)
    #dbg_value(double poison, !3111, !DIExpression(), !3134)
    #dbg_value(double poison, !3095, !DIExpression(), !3135)
    #dbg_value(double poison, !3096, !DIExpression(), !3136)
  %19 = fcmp oeq double %y.tr44.i, %18, !dbg !3137
  br i1 %19, label %math.isOddInt.exit18.i, label %if.done.i.i, !dbg !3138

math.isOddInt.exit18.i:                           ; preds = %if.done.i10.i
    #dbg_value(double %18, !3095, !DIExpression(), !3139)
  %abovemin.i13.i = fcmp oge double %18, 0xC3E0000000000000, !dbg !3140
  %belowmax.i14.i = fcmp ole double %18, 0x43DFFFFFFFFFFFFE, !dbg !3140
  %inbounds.i15.i = and i1 %abovemin.i13.i, %belowmax.i14.i, !dbg !3140
  %remapped.i16.i = zext i1 %abovemin.i13.i to i64, !dbg !3140
  %normal.i17.i = fptosi double %18 to i64, !dbg !3140
  %20 = select i1 %inbounds.i15.i, i64 %normal.i17.i, i64 %remapped.i16.i, !dbg !3140
  %21 = and i64 %20, 1, !dbg !3141
  %.not27.i = icmp eq i64 %21, 0, !dbg !3142
  br i1 %.not27.i, label %if.done.i.i, label %math.Pow.exit, !dbg !3064

if.done.i.i:                                      ; preds = %math.isOddInt.exit18.i, %if.done.i10.i, %switch.body7.i.i
    #dbg_value(i64 9218868437227405312, !3129, !DIExpression(), !3143)
  br label %math.Pow.exit, !dbg !3151

switch.next8.i.i:                                 ; preds = %switch.body6.i.i
    #dbg_value(double %y.tr44.i, !3053, !DIExpression(), !3152)
  %22 = fcmp ogt double %y.tr44.i, 0.000000e+00, !dbg !3153
  br i1 %22, label %switch.body9.i.i, label %switch.next8.i.switch.done.i_crit_edge.i, !dbg !3064

switch.next8.i.switch.done.i_crit_edge.i:         ; preds = %switch.next8.i.i
  %.pre.i = tail call double @llvm.fabs.f64(double %y.tr44.i), !dbg !3154
  br label %switch.done.i.i, !dbg !3064

switch.body9.i.i:                                 ; preds = %switch.next8.i.i
    #dbg_value(double %x.tr43.i, !3050, !DIExpression(), !3156)
    #dbg_value(double %x.tr43.i, !3075, !DIExpression(), !3157)
    #dbg_value(double %x.tr43.i, !3083, !DIExpression(), !3159)
  %.cast.i.i.i = bitcast double %x.tr43.i to i64, !dbg !3161
  %23 = icmp slt i64 %.cast.i.i.i, 0, !dbg !3162
    #dbg_value(double %y.tr44.i, !3053, !DIExpression(), !3163)
    #dbg_value(double %y.tr44.i, !3092, !DIExpression(), !3164)
    #dbg_value(double %y.tr44.i, !3099, !DIExpression(), !3166)
  %24 = fcmp ult double %y.tr44.i, 0x4340000000000000
  %or.cond24.i = and i1 %24, %23, !dbg !3064
  br i1 %or.cond24.i, label %if.done.i2.i, label %if.done12.i.i, !dbg !3064

if.done.i2.i:                                     ; preds = %switch.body9.i.i
    #dbg_value(double %y.tr44.i, !3092, !DIExpression(), !3168)
    #dbg_value(double %y.tr44.i, !3106, !DIExpression(), !3169)
    #dbg_value(double %y.tr44.i, !3114, !DIExpression(), !3171)
  %25 = tail call double @llvm.trunc.f64(double %y.tr44.i), !dbg !3171
    #dbg_value(double %25, !3110, !DIExpression(), !3173)
    #dbg_value(double poison, !3121, !DIExpression(), !3174)
    #dbg_value(double %y.tr44.i, !3125, !DIExpression(), !3176)
    #dbg_value(!DIArgList(double poison, double poison), !3129, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 9223372036854775808, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !3177)
    #dbg_value(double poison, !3111, !DIExpression(), !3179)
    #dbg_value(double poison, !3095, !DIExpression(), !3180)
    #dbg_value(double poison, !3096, !DIExpression(), !3181)
  %26 = fcmp oeq double %y.tr44.i, %25, !dbg !3182
  br i1 %26, label %math.isOddInt.exit.i, label %if.done12.i.i, !dbg !3183

math.isOddInt.exit.i:                             ; preds = %if.done.i2.i
    #dbg_value(double %25, !3095, !DIExpression(), !3184)
  %abovemin.i4.i = fcmp oge double %25, 0xC3E0000000000000, !dbg !3185
  %belowmax.i5.i = fcmp ole double %25, 0x43DFFFFFFFFFFFFE, !dbg !3185
  %inbounds.i6.i = and i1 %abovemin.i4.i, %belowmax.i5.i, !dbg !3185
  %remapped.i7.i = zext i1 %abovemin.i4.i to i64, !dbg !3185
  %normal.i8.i = fptosi double %25 to i64, !dbg !3185
  %27 = select i1 %inbounds.i6.i, i64 %normal.i8.i, i64 %remapped.i7.i, !dbg !3185
  %28 = and i64 %27, 1, !dbg !3186
  %.not.i = icmp eq i64 %28, 0, !dbg !3187
  br i1 %.not.i, label %if.done12.i.i, label %math.Pow.exit, !dbg !3064

if.done12.i.i:                                    ; preds = %math.isOddInt.exit.i, %if.done.i2.i, %switch.body9.i.i
  br label %math.Pow.exit, !dbg !3188

switch.done.i.i:                                  ; preds = %switch.next49.i.i, %switch.next45.i.i, %switch.next8.i.switch.done.i_crit_edge.i
  %.pre-phi.i = phi double [ %.pre.i, %switch.next8.i.switch.done.i_crit_edge.i ], [ %109, %switch.next49.i.i ], [ %109, %switch.next45.i.i ], !dbg !3154
    #dbg_value(double %y.tr44.i, !3053, !DIExpression(), !3189)
    #dbg_value(double %y.tr44.i, !3099, !DIExpression(), !3190)
    #dbg_value(double %.pre-phi.i, !3106, !DIExpression(), !3191)
    #dbg_value(double %.pre-phi.i, !3114, !DIExpression(), !3193)
  %29 = tail call double @llvm.trunc.f64(double %.pre-phi.i), !dbg !3193
    #dbg_value(double %29, !3110, !DIExpression(), !3195)
  %30 = fsub double %.pre-phi.i, %29, !dbg !3196
    #dbg_value(double %30, !3121, !DIExpression(), !3197)
    #dbg_value(double %.pre-phi.i, !3125, !DIExpression(), !3199)
    #dbg_value(!DIArgList(double poison, double poison), !3129, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 9223372036854775808, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !3200)
  %.cast.i2.i.i.i = tail call double @llvm.fabs.f64(double %30), !dbg !3202
    #dbg_value(double %.cast.i2.i.i.i, !3111, !DIExpression(), !3203)
    #dbg_value(double %29, !3054, !DIExpression(), !3204)
    #dbg_value(double %.cast.i2.i.i.i, !3055, !DIExpression(), !3205)
  %31 = fcmp une double %30, 0.000000e+00, !dbg !3206
    #dbg_value(double %x.tr43.i, !3050, !DIExpression(), !3207)
  %32 = fcmp olt double %x.tr43.i, 0.000000e+00
  %or.cond.i.i = select i1 %31, i1 %32, i1 false, !dbg !3064
  br i1 %or.cond.i.i, label %math.Pow.exit, label %if.done15.i.i, !dbg !3064

if.done15.i.i:                                    ; preds = %switch.done.i.i
    #dbg_value(double %29, !3054, !DIExpression(), !3208)
  %33 = fcmp ult double %29, 0x43E0000000000000, !dbg !3209
  br i1 %33, label %if.done21.i.i, label %if.then16.i.i, !dbg !3064

if.then16.i.i:                                    ; preds = %if.done15.i.i
    #dbg_value(double %x.tr43.i, !3050, !DIExpression(), !3210)
  %34 = fcmp oeq double %x.tr43.i, -1.000000e+00, !dbg !3211
  br i1 %34, label %math.Pow.exit, label %switch.next18.i.i, !dbg !3064

switch.next18.i.i:                                ; preds = %if.then16.i.i
    #dbg_value(double %x.tr43.i, !3050, !DIExpression(), !3212)
    #dbg_value(double %x.tr43.i, !3099, !DIExpression(), !3213)
  %35 = tail call double @llvm.fabs.f64(double %x.tr43.i), !dbg !3215
  %36 = fcmp olt double %35, 1.000000e+00, !dbg !3216
    #dbg_value(double %y.tr44.i, !3053, !DIExpression(), !3217)
  %37 = fcmp ule double %y.tr44.i, 0.000000e+00, !dbg !3218
  %38 = xor i1 %37, %36, !dbg !3218
  %spec.select.i = select i1 %38, double 0.000000e+00, double 0x7FF0000000000000, !dbg !3064
  br label %math.Pow.exit, !dbg !3064

if.done21.i.i:                                    ; preds = %if.done15.i.i
    #dbg_value(double 1.000000e+00, !3056, !DIExpression(), !3219)
    #dbg_value(i64 0, !3057, !DIExpression(), !3220)
    #dbg_value(double %.cast.i2.i.i.i, !3055, !DIExpression(), !3221)
  br i1 %31, label %if.then22.i.i, label %if.done25.i.i, !dbg !3064

if.then22.i.i:                                    ; preds = %if.done21.i.i
    #dbg_value(double %.cast.i2.i.i.i, !3055, !DIExpression(), !3222)
  %39 = fcmp ogt double %.cast.i2.i.i.i, 5.000000e-01, !dbg !3223
  %40 = fadd double %.cast.i2.i.i.i, -1.000000e+00, !dbg !3064
  %41 = fadd double %29, 1.000000e+00, !dbg !3064
  %42 = select i1 %39, double %41, double %29, !dbg !3064
  %43 = select i1 %39, double %40, double %.cast.i2.i.i.i, !dbg !3064
    #dbg_value(double %43, !3055, !DIExpression(), !3224)
    #dbg_value(double %x.tr43.i, !3050, !DIExpression(), !3225)
    #dbg_value(double %x.tr43.i, !3226, !DIExpression(), !3230)
  %44 = tail call double @llvm.log.f64(double %x.tr43.i), !dbg !3230
  %45 = fmul double %44, %43, !dbg !3232
    #dbg_value(double %45, !3233, !DIExpression(), !3237)
  %46 = tail call double @llvm.exp.f64(double %45), !dbg !3237
    #dbg_value(double %46, !3056, !DIExpression(), !3239)
  br label %if.done25.i.i, !dbg !3064

if.done25.i.i:                                    ; preds = %if.then22.i.i, %if.done21.i.i
  %47 = phi double [ %29, %if.done21.i.i ], [ %42, %if.then22.i.i ], !dbg !3204
  %48 = phi double [ 1.000000e+00, %if.done21.i.i ], [ %46, %if.then22.i.i ], !dbg !3219
    #dbg_value(double %x.tr43.i, !3050, !DIExpression(), !3240)
    #dbg_value(double poison, !3058, !DIExpression(), !3241)
    #dbg_value(i64 poison, !3059, !DIExpression(), !3242)
    #dbg_value(double %47, !3054, !DIExpression(), !3243)
  %abovemin.i.i = fcmp oge double %47, 0xC3E0000000000000, !dbg !3244
  %belowmax.i.i = fcmp ole double %47, 0x43DFFFFFFFFFFFFE, !dbg !3244
  %inbounds.i.i = and i1 %abovemin.i.i, %belowmax.i.i, !dbg !3244
  %saturated.i.i = select i1 %abovemin.i.i, i64 9223372036854775807, i64 -9223372036854775808, !dbg !3244
  %isnan.i.i = fcmp uno double %47, 0.000000e+00, !dbg !3244
  %remapped.i.i = select i1 %isnan.i.i, i64 0, i64 %saturated.i.i, !dbg !3244
  %normal.i.i = fptosi double %47 to i64, !dbg !3244
  %49 = select i1 %inbounds.i.i, i64 %normal.i.i, i64 %remapped.i.i, !dbg !3244
    #dbg_value(i64 %49, !3060, !DIExpression(), !3245)
  %.not.i47.i = icmp eq i64 %49, 0, !dbg !3246
  br i1 %.not.i47.i, label %for.done.i.i, label %for.body.i.preheader.i, !dbg !3064

for.body.i.preheader.i:                           ; preds = %if.done25.i.i
    #dbg_value(double %x.tr43.i, !3247, !DIExpression(), !3251)
    #dbg_value(double %x.tr43.i, !3253, !DIExpression(), !3259)
  br i1 %13, label %math.Frexp.exit, label %switch.next.i.i12, !dbg !3261

switch.next.i.i12:                                ; preds = %for.body.i.preheader.i
    #dbg_value(double %x.tr43.i, !3253, !DIExpression(), !3262)
    #dbg_value(double %x.tr43.i, !3263, !DIExpression(), !3269)
    #dbg_value(i64 0, !3268, !DIExpression(), !3271)
  %50 = tail call double @llvm.fabs.f64(double %x.tr43.i), !dbg !3272
    #dbg_value(double %50, !3263, !DIExpression(), !3273)
  %51 = fcmp ogt double %50, 0x7FEFFFFFFFFFFFFF, !dbg !3274
  br i1 %51, label %math.Frexp.exit, label %switch.next2.i.i14, !dbg !3261

switch.next2.i.i14:                               ; preds = %switch.next.i.i12
    #dbg_value(double %x.tr43.i, !3253, !DIExpression(), !3275)
    #dbg_value(double %x.tr43.i, !3276, !DIExpression(), !3279)
  %52 = fcmp olt double %50, 0x10000000000000, !dbg !3281
  %53 = fmul double %x.tr43.i, 0x4330000000000000, !dbg !3282
  %.pn3.i.i.i15 = select i1 %52, double %53, double %x.tr43.i, !dbg !3282
    #dbg_value(i64 poison, !3256, !DIExpression(), !3283)
    #dbg_value(double %.pn3.i.i.i15, !3253, !DIExpression(), !3284)
    #dbg_value(double %.pn3.i.i.i15, !3083, !DIExpression(), !3285)
  %.cast.i.i.i16 = bitcast double %.pn3.i.i.i15 to i64, !dbg !3287
    #dbg_value(i64 %.cast.i.i.i16, !3257, !DIExpression(), !3288)
  %54 = lshr i64 %.cast.i.i.i16, 52, !dbg !3289
  %55 = and i64 %54, 2047, !dbg !3290
  %56 = select i1 %52, i64 -1074, i64 -1022, !dbg !3291
  %57 = add nsw i64 %55, %56, !dbg !3292
    #dbg_value(i64 %57, !3256, !DIExpression(), !3292)
  %58 = and i64 %.cast.i.i.i16, -9218868437227405313, !dbg !3293
    #dbg_value(i64 %58, !3257, !DIExpression(), !3293)
  %59 = or disjoint i64 %58, 4602678819172646912, !dbg !3294
    #dbg_value(i64 %59, !3257, !DIExpression(), !3295)
    #dbg_value(i64 %59, !3129, !DIExpression(), !3296)
  %.cast.i3.i.i = bitcast i64 %59 to double, !dbg !3298
    #dbg_value(double %.cast.i3.i.i, !3258, !DIExpression(), !3299)
  br label %math.Frexp.exit, !dbg !3300

math.Frexp.exit:                                  ; preds = %for.body.i.preheader.i, %switch.next.i.i12, %switch.next2.i.i14
  %f.pn.i.i = phi double [ %.cast.i3.i.i, %switch.next2.i.i14 ], [ %x.tr43.i, %for.body.i.preheader.i ], [ %x.tr43.i, %switch.next.i.i12 ]
  %.pn1.i.i = phi i64 [ %57, %switch.next2.i.i14 ], [ 0, %for.body.i.preheader.i ], [ 0, %switch.next.i.i12 ]
    #dbg_value(i64 %.pn1.i.i, !3059, !DIExpression(), !3242)
    #dbg_value(double %f.pn.i.i, !3058, !DIExpression(), !3241)
  br label %for.body.i.i, !dbg !3064

for.body.i.i:                                     ; preds = %if.done27.i.i, %math.Frexp.exit
  %60 = phi i64 [ %79, %if.done27.i.i ], [ %49, %math.Frexp.exit ]
  %61 = phi i64 [ %78, %if.done27.i.i ], [ %.pn1.i.i, %math.Frexp.exit ]
  %62 = phi double [ %76, %if.done27.i.i ], [ %f.pn.i.i, %math.Frexp.exit ]
  %63 = phi i64 [ %71, %if.done27.i.i ], [ 0, %math.Frexp.exit ]
  %64 = phi double [ %69, %if.done27.i.i ], [ %48, %math.Frexp.exit ]
    #dbg_value(i64 %60, !3060, !DIExpression(), !3301)
    #dbg_value(i64 %61, !3059, !DIExpression(), !3302)
  %65 = add nsw i64 %61, -4097, !dbg !3064
  %or.cond10.i.i = icmp ult i64 %65, -8193, !dbg !3064
  br i1 %or.cond10.i.i, label %if.then26.i.i, label %if.done27.i.i, !dbg !3064

if.then26.i.i:                                    ; preds = %for.body.i.i
    #dbg_value(i64 %61, !3059, !DIExpression(), !3303)
  %66 = add i64 %63, %61, !dbg !3304
    #dbg_value(i64 %66, !3057, !DIExpression(), !3304)
  br label %for.done.i.i, !dbg !3064

if.done27.i.i:                                    ; preds = %for.body.i.i
    #dbg_value(i64 %60, !3060, !DIExpression(), !3305)
  %67 = and i64 %60, 1, !dbg !3306
  %.not5.i.i = icmp eq i64 %67, 0, !dbg !3307
  %68 = fmul double %62, %64, !dbg !3064
  %69 = select i1 %.not5.i.i, double %64, double %68, !dbg !3064
  %70 = select i1 %.not5.i.i, i64 0, i64 %61, !dbg !3064
  %71 = add i64 %70, %63, !dbg !3064
    #dbg_value(double %62, !3058, !DIExpression(), !3308)
  %72 = fmul double %62, %62, !dbg !3309
    #dbg_value(double %72, !3058, !DIExpression(), !3309)
  %73 = shl nsw i64 %61, 1, !dbg !3310
    #dbg_value(i64 %73, !3059, !DIExpression(), !3310)
  %74 = fcmp olt double %72, 5.000000e-01, !dbg !3311
  %75 = fadd double %72, %72, !dbg !3064
  %76 = select i1 %74, double %75, double %72, !dbg !3064
  %77 = sext i1 %74 to i64, !dbg !3064
  %78 = add nsw i64 %73, %77, !dbg !3064
  %79 = ashr i64 %60, 1, !dbg !3312
    #dbg_value(i64 %79, !3060, !DIExpression(), !3301)
  %.not.i.i = icmp ult i64 %60, 2, !dbg !3246
  br i1 %.not.i.i, label %for.done.i.i, label %for.body.i.i, !dbg !3064

for.done.i.i:                                     ; preds = %if.done27.i.i, %if.then26.i.i, %if.done25.i.i
  %80 = phi double [ %64, %if.then26.i.i ], [ %48, %if.done25.i.i ], [ %69, %if.done27.i.i ]
  %81 = phi i64 [ %66, %if.then26.i.i ], [ 0, %if.done25.i.i ], [ %71, %if.done27.i.i ], !dbg !3220
    #dbg_value(double %y.tr44.i, !3053, !DIExpression(), !3313)
  %82 = fcmp olt double %y.tr44.i, 0.000000e+00, !dbg !3314
  br i1 %82, label %if.then32.i.i, label %if.done33.i.i, !dbg !3064

if.then32.i.i:                                    ; preds = %for.done.i.i
    #dbg_value(double %80, !3056, !DIExpression(), !3315)
  %83 = fdiv double 1.000000e+00, %80, !dbg !3316
    #dbg_value(double %83, !3056, !DIExpression(), !3317)
    #dbg_value(i64 %81, !3057, !DIExpression(), !3318)
  %84 = sub i64 0, %81, !dbg !3319
    #dbg_value(i64 %84, !3057, !DIExpression(), !3320)
  br label %if.done33.i.i, !dbg !3064

if.done33.i.i:                                    ; preds = %if.then32.i.i, %for.done.i.i
  %85 = phi double [ %80, %for.done.i.i ], [ %83, %if.then32.i.i ], !dbg !3219
  %86 = phi i64 [ %81, %for.done.i.i ], [ %84, %if.then32.i.i ], !dbg !3220
    #dbg_value(double %85, !3056, !DIExpression(), !3321)
    #dbg_value(i64 %86, !3057, !DIExpression(), !3322)
    #dbg_value(double %85, !3323, !DIExpression(), !3328)
    #dbg_value(i64 %86, !3327, !DIExpression(), !3330)
    #dbg_value(i64 %86, !3331, !DIExpression(), !3338)
    #dbg_value(double %85, !3334, !DIExpression(), !3340)
  %87 = fcmp oeq double %85, 0.000000e+00, !dbg !3341
  br i1 %87, label %math.Pow.exit, label %switch.next.i.i5, !dbg !3342

switch.next.i.i5:                                 ; preds = %if.done33.i.i
    #dbg_value(double %85, !3334, !DIExpression(), !3343)
    #dbg_value(double %85, !3263, !DIExpression(), !3344)
    #dbg_value(i64 0, !3268, !DIExpression(), !3346)
  %88 = tail call double @llvm.fabs.f64(double %85), !dbg !3347
    #dbg_value(double %88, !3263, !DIExpression(), !3348)
  %89 = fcmp ogt double %88, 0x7FEFFFFFFFFFFFFF, !dbg !3349
  %90 = fcmp uno double %85, 0.000000e+00
  %or.cond.i.i6 = or i1 %90, %89, !dbg !3342
  br i1 %or.cond.i.i6, label %math.Pow.exit, label %switch.next2.i.i7, !dbg !3342

switch.next2.i.i7:                                ; preds = %switch.next.i.i5
    #dbg_value(double %85, !3334, !DIExpression(), !3350)
    #dbg_value(double %85, !3276, !DIExpression(), !3351)
  %91 = fcmp olt double %88, 0x10000000000000, !dbg !3353
  %92 = fmul double %85, 0x4330000000000000, !dbg !3354
  %.pn3.i.i.i = select i1 %91, double %92, double %85, !dbg !3354
  %.pn1.i.i.i = select i1 %91, i64 -52, i64 0, !dbg !3354
    #dbg_value(double %.pn3.i.i.i, !3334, !DIExpression(), !3355)
    #dbg_value(i64 %.pn1.i.i.i, !3335, !DIExpression(), !3356)
    #dbg_value(i64 poison, !3331, !DIExpression(), !3357)
    #dbg_value(double %.pn3.i.i.i, !3083, !DIExpression(), !3358)
  %.cast.i.i.i8 = bitcast double %.pn3.i.i.i to i64, !dbg !3360
    #dbg_value(i64 %.cast.i.i.i8, !3336, !DIExpression(), !3361)
  %93 = lshr i64 %.cast.i.i.i8, 52, !dbg !3362
  %94 = and i64 %93, 2047, !dbg !3363
  %95 = add i64 %86, -1023, !dbg !3364
  %96 = add i64 %95, %.pn1.i.i.i, !dbg !3357
  %97 = add i64 %96, %94, !dbg !3365
    #dbg_value(i64 %97, !3331, !DIExpression(), !3366)
  %98 = icmp slt i64 %97, -1075, !dbg !3367
  br i1 %98, label %if.then.i.i, label %if.done.i.i9, !dbg !3342

if.then.i.i:                                      ; preds = %switch.next2.i.i7
    #dbg_value(double %.pn3.i.i.i, !3334, !DIExpression(), !3368)
    #dbg_value(double 0.000000e+00, !3121, !DIExpression(), !3369)
    #dbg_value(double %.pn3.i.i.i, !3125, !DIExpression(), !3371)
    #dbg_value(!DIArgList(double poison, double poison), !3129, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 9223372036854775808, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !3372)
  %.cast.i2.i.i.i11 = tail call double @llvm.copysign.f64(double 0.000000e+00, double %.pn3.i.i.i), !dbg !3374
  br label %math.Pow.exit, !dbg !3375

if.done.i.i9:                                     ; preds = %switch.next2.i.i7
    #dbg_value(i64 %97, !3331, !DIExpression(), !3376)
  %99 = icmp sgt i64 %97, 1023, !dbg !3377
  br i1 %99, label %if.then3.i.i, label %if.done6.i.i, !dbg !3342

if.then3.i.i:                                     ; preds = %if.done.i.i9
    #dbg_value(double %.pn3.i.i.i, !3334, !DIExpression(), !3378)
  %100 = fcmp olt double %.pn3.i.i.i, 0.000000e+00, !dbg !3379
  br i1 %100, label %math.Pow.exit, label %if.done5.i.i, !dbg !3342

if.done5.i.i:                                     ; preds = %if.then3.i.i
    #dbg_value(i64 9218868437227405312, !3129, !DIExpression(), !3380)
  br label %math.Pow.exit, !dbg !3383

if.done6.i.i:                                     ; preds = %if.done.i.i9
    #dbg_value(double 1.000000e+00, !3337, !DIExpression(), !3384)
    #dbg_value(i64 %97, !3331, !DIExpression(), !3385)
  %101 = icmp slt i64 %97, -1022, !dbg !3386
  %spec.select1.i.i = select i1 %101, double 0x3CA0000000000000, double 1.000000e+00, !dbg !3342
  %102 = and i64 %.cast.i.i.i8, -9218868437227405313, !dbg !3387
    #dbg_value(i64 %102, !3336, !DIExpression(), !3387)
    #dbg_value(i64 poison, !3331, !DIExpression(), !3388)
  %103 = shl nsw i64 %97, 52, !dbg !3389
  %104 = add nsw i64 %103, 238690780250636288, !dbg !3389
  %105 = select i1 %101, i64 %104, i64 %103, !dbg !3389
  %106 = add i64 %105, 4607182418800017408, !dbg !3389
  %107 = or i64 %106, %102, !dbg !3390
    #dbg_value(double %spec.select1.i.i, !3337, !DIExpression(), !3391)
    #dbg_value(i64 %107, !3336, !DIExpression(), !3392)
    #dbg_value(i64 %107, !3129, !DIExpression(), !3393)
  %.cast.i2.i.i = bitcast i64 %107 to double, !dbg !3395
  %108 = fmul double %spec.select1.i.i, %.cast.i2.i.i, !dbg !3396
  br label %math.Pow.exit, !dbg !3397

switch.next34.i.i:                                ; preds = %switch.next5.i.i
    #dbg_value(double %y.tr44.i, !3053, !DIExpression(), !3398)
    #dbg_value(double %y.tr44.i, !3263, !DIExpression(), !3399)
    #dbg_value(i64 0, !3268, !DIExpression(), !3401)
  %109 = tail call double @llvm.fabs.f64(double %y.tr44.i), !dbg !3402
    #dbg_value(double %109, !3263, !DIExpression(), !3403)
  %110 = fcmp ogt double %109, 0x7FEFFFFFFFFFFFFF, !dbg !3404
  br i1 %110, label %switch.body35.i.i, label %switch.next40.i.i, !dbg !3064

switch.body35.i.i:                                ; preds = %switch.next34.i.i
    #dbg_value(double %x.tr43.i, !3050, !DIExpression(), !3405)
  %111 = fcmp oeq double %x.tr43.i, -1.000000e+00, !dbg !3406
  br i1 %111, label %math.Pow.exit, label %switch.next37.i.i, !dbg !3064

switch.next37.i.i:                                ; preds = %switch.body35.i.i
    #dbg_value(double %x.tr43.i, !3050, !DIExpression(), !3407)
    #dbg_value(double %x.tr43.i, !3099, !DIExpression(), !3408)
  %112 = tail call double @llvm.fabs.f64(double %x.tr43.i), !dbg !3410
    #dbg_value(double %y.tr44.i, !3053, !DIExpression(), !3411)
    #dbg_value(i64 1, !3268, !DIExpression(), !3412)
    #dbg_value(double %y.tr44.i, !3263, !DIExpression(), !3414)
  %113 = fcmp ogt double %y.tr44.i, 0x7FEFFFFFFFFFFFFF, !dbg !3415
  %114 = fcmp uge double %112, 1.000000e+00, !dbg !3416
  %115 = xor i1 %113, %114, !dbg !3416
  %spec.select25.i = select i1 %115, double 0.000000e+00, double 0x7FF0000000000000, !dbg !3064
  br label %math.Pow.exit, !dbg !3064

switch.next40.i.i:                                ; preds = %switch.next34.i.i
    #dbg_value(double %x.tr43.i, !3050, !DIExpression(), !3417)
    #dbg_value(double %x.tr43.i, !3263, !DIExpression(), !3418)
    #dbg_value(i64 0, !3268, !DIExpression(), !3420)
  %116 = tail call double @llvm.fabs.f64(double %x.tr43.i), !dbg !3421
    #dbg_value(double %116, !3263, !DIExpression(), !3422)
  %117 = fcmp ogt double %116, 0x7FEFFFFFFFFFFFFF, !dbg !3423
  br i1 %117, label %switch.body41.i.i, label %switch.next47.i.i, !dbg !3064

switch.body41.i.i:                                ; preds = %switch.next40.i.i
    #dbg_value(double %x.tr43.i, !3050, !DIExpression(), !3424)
    #dbg_value(i64 -1, !3268, !DIExpression(), !3425)
    #dbg_value(double poison, !3263, !DIExpression(), !3427)
  %118 = fcmp olt double %x.tr43.i, 0xFFEFFFFFFFFFFFFF, !dbg !3428
  br i1 %118, label %if.then42.i.i, label %if.done43.i.i, !dbg !3064

if.then42.i.i:                                    ; preds = %switch.body41.i.i
    #dbg_value(double %x.tr43.i, !3050, !DIExpression(), !3429)
  %119 = fdiv double 1.000000e+00, %x.tr43.i, !dbg !3430
    #dbg_value(double %y.tr44.i, !3053, !DIExpression(), !3431)
  %120 = fneg double %y.tr44.i, !dbg !3432
    #dbg_value(double %119, !3042, !DIExpression(), !3047)
    #dbg_value(double %120, !3046, !DIExpression(), !3049)
    #dbg_value(double %119, !3050, !DIExpression(), !3061)
    #dbg_value(double %120, !3053, !DIExpression(), !3063)
  %121 = fcmp oeq double %y.tr44.i, 0.000000e+00, !dbg !3433
  %122 = fcmp oeq double %119, 1.000000e+00, !dbg !3064
  %123 = select i1 %121, i1 true, i1 %122, !dbg !3064
  br i1 %123, label %math.Pow.exit, label %switch.next.i.i, !dbg !3064

if.done43.i.i:                                    ; preds = %switch.body41.i.i
    #dbg_value(double %y.tr44.i, !3053, !DIExpression(), !3434)
  %124 = fcmp olt double %y.tr44.i, 0.000000e+00, !dbg !3435
  br i1 %124, label %math.Pow.exit, label %switch.next45.i.i, !dbg !3064

switch.next45.i.i:                                ; preds = %if.done43.i.i
    #dbg_value(double %y.tr44.i, !3053, !DIExpression(), !3436)
  %125 = fcmp ogt double %y.tr44.i, 0.000000e+00, !dbg !3437
  br i1 %125, label %math.Pow.exit, label %switch.done.i.i, !dbg !3064

switch.next47.i.i:                                ; preds = %switch.next40.i.i
    #dbg_value(double %y.tr44.i, !3053, !DIExpression(), !3438)
  %126 = fcmp oeq double %y.tr44.i, 5.000000e-01, !dbg !3439
  br i1 %126, label %switch.body48.i.i, label %switch.next49.i.i, !dbg !3064

switch.body48.i.i:                                ; preds = %switch.next47.i.i
    #dbg_value(double %x.tr43.i, !3050, !DIExpression(), !3440)
    #dbg_value(double %x.tr43.i, !3441, !DIExpression(), !3445)
  %127 = tail call double @llvm.sqrt.f64(double %x.tr43.i), !dbg !3445
  br label %math.Pow.exit, !dbg !3447

switch.next49.i.i:                                ; preds = %switch.next47.i.i
    #dbg_value(double %y.tr44.i, !3053, !DIExpression(), !3448)
  %128 = fcmp oeq double %y.tr44.i, -5.000000e-01, !dbg !3449
  br i1 %128, label %switch.body50.i.i, label %switch.done.i.i, !dbg !3064

switch.body50.i.i:                                ; preds = %switch.next49.i.i
    #dbg_value(double %x.tr43.i, !3050, !DIExpression(), !3450)
    #dbg_value(double %x.tr43.i, !3441, !DIExpression(), !3451)
  %129 = tail call double @llvm.sqrt.f64(double %x.tr43.i), !dbg !3451
  %130 = fdiv double 1.000000e+00, %129, !dbg !3453
  br label %math.Pow.exit, !dbg !3454

math.Pow.exit:                                    ; preds = %switch.next.i.i, %switch.next2.i.i, %if.then42.i.i, %if.done6.i.i, %if.done5.i.i, %if.then3.i.i, %if.then.i.i, %switch.next.i.i5, %if.done33.i.i, %for.body2, %math.isOddInt.exit18.i, %if.done.i.i, %math.isOddInt.exit.i, %if.done12.i.i, %switch.done.i.i, %if.then16.i.i, %switch.next18.i.i, %switch.body35.i.i, %switch.next37.i.i, %if.done43.i.i, %switch.next45.i.i, %switch.body48.i.i, %switch.body50.i.i
  %common.ret.op.i.i = phi double [ 0x7FF0000000000000, %if.done.i.i ], [ 0.000000e+00, %if.done12.i.i ], [ %127, %switch.body48.i.i ], [ %130, %switch.body50.i.i ], [ %x.tr43.i, %math.isOddInt.exit.i ], [ 1.000000e+00, %if.then16.i.i ], [ 1.000000e+00, %switch.body35.i.i ], [ 0.000000e+00, %if.done43.i.i ], [ 0xFFF0000000000000, %math.isOddInt.exit18.i ], [ 0x7FF8000000000001, %switch.done.i.i ], [ 0x7FF0000000000000, %switch.next45.i.i ], [ %spec.select.i, %switch.next18.i.i ], [ %spec.select25.i, %switch.next37.i.i ], [ 1.000000e+00, %for.body2 ], [ %.cast.i2.i.i.i11, %if.then.i.i ], [ 0x7FF0000000000000, %if.done5.i.i ], [ %108, %if.done6.i.i ], [ %85, %if.done33.i.i ], [ %85, %switch.next.i.i5 ], [ 0xFFF0000000000000, %if.then3.i.i ], [ 0x7FF8000000000001, %switch.next2.i.i ], [ 1.000000e+00, %if.then42.i.i ], [ %x.tr43.i, %switch.next.i.i ]
  %abovemin = fcmp oge double %common.ret.op.i.i, 0xC3E0000000000000, !dbg !3455
  %belowmax = fcmp ole double %common.ret.op.i.i, 0x43DFFFFFFFFFFFFE, !dbg !3455
  %inbounds = and i1 %abovemin, %belowmax, !dbg !3455
  %saturated = select i1 %abovemin, i64 9223372036854775807, i64 -9223372036854775808, !dbg !3455
  %isnan = fcmp uno double %common.ret.op.i.i, 0.000000e+00, !dbg !3455
  %remapped = select i1 %isnan, i64 0, i64 %saturated, !dbg !3455
  %normal = fptosi double %common.ret.op.i.i to i64, !dbg !3455
  %131 = select i1 %inbounds, i64 %normal, i64 %remapped, !dbg !3455
  %132 = add i64 %131, %6, !dbg !3456
    #dbg_value(i64 %132, !3029, !DIExpression(), !3456)
  %133 = sdiv i64 %7, 10, !dbg !3457
    #dbg_value(i64 %133, !3026, !DIExpression(), !3035)
  %.off47 = add i64 %7, 9, !dbg !3458
  %.not2 = icmp ult i64 %.off47, 19, !dbg !3458
  br i1 %.not2, label %for.done3, label %for.body2, !dbg !3034

for.done3:                                        ; preds = %math.Pow.exit, %entry
  %.lcssa42 = phi i64 [ 0, %entry ], [ %132, %math.Pow.exit ], !dbg !3459
    #dbg_value(i64 %.lcssa42, !3029, !DIExpression(), !3460)
    #dbg_value(i64 %x, !3027, !DIExpression(), !3461)
  %134 = icmp eq i64 %.lcssa42, %x, !dbg !3462
  ret i1 %134, !dbg !3463
}
