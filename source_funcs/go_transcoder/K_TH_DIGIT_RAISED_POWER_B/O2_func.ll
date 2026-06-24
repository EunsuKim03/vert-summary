define range(i64 0, 10) i64 @f_gold(i64 %a, i64 %b, i64 %k) local_unnamed_addr #12 !dbg !3182 {
entry:
    #dbg_value(i64 %k, !3189, !DIExpression(), !3193)
    #dbg_value(i64 %a, !3187, !DIExpression(), !3194)
    #dbg_value(i64 %b, !3188, !DIExpression(), !3195)
    #dbg_value(double poison, !3196, !DIExpression(), !3201)
    #dbg_value(double poison, !3200, !DIExpression(), !3203)
    #dbg_value(double poison, !3204, !DIExpression(), !3215)
    #dbg_value(double poison, !3207, !DIExpression(), !3217)
  %0 = icmp eq i64 %b, 0, !dbg !3218
  %1 = icmp eq i64 %a, 1, !dbg !3219
  %2 = select i1 %0, i1 true, i1 %1, !dbg !3219
  br i1 %2, label %math.Pow.exit, label %switch.next.i.i.preheader, !dbg !3219

switch.next.i.i.preheader:                        ; preds = %entry
  %3 = sitofp i64 %b to double, !dbg !3220
    #dbg_value(double %3, !3200, !DIExpression(), !3203)
    #dbg_value(double %3, !3207, !DIExpression(), !3217)
  %4 = sitofp i64 %a to double, !dbg !3221
    #dbg_value(double %4, !3196, !DIExpression(), !3201)
    #dbg_value(double %4, !3204, !DIExpression(), !3215)
  br label %switch.next.i.i, !dbg !3219

switch.next.i.i:                                  ; preds = %switch.next.i.i.preheader, %if.then42.i.i
  %y.tr44.i = phi double [ %85, %if.then42.i.i ], [ %3, %switch.next.i.i.preheader ]
  %x.tr43.i = phi double [ %84, %if.then42.i.i ], [ %4, %switch.next.i.i.preheader ]
    #dbg_value(double %y.tr44.i, !3200, !DIExpression(), !3203)
    #dbg_value(double %x.tr43.i, !3196, !DIExpression(), !3201)
    #dbg_value(double %y.tr44.i, !3207, !DIExpression(), !3222)
  %5 = fcmp oeq double %y.tr44.i, 1.000000e+00, !dbg !3223
  br i1 %5, label %math.Pow.exit, label %switch.next2.i.i, !dbg !3219

switch.next2.i.i:                                 ; preds = %switch.next.i.i
    #dbg_value(double %x.tr43.i, !3204, !DIExpression(), !3224)
    #dbg_value(double %y.tr44.i, !3207, !DIExpression(), !3225)
  %or.cond26.i = fcmp uno double %x.tr43.i, %y.tr44.i, !dbg !3219
  br i1 %or.cond26.i, label %math.Pow.exit, label %switch.next5.i.i, !dbg !3219

switch.next5.i.i:                                 ; preds = %switch.next2.i.i
    #dbg_value(double %x.tr43.i, !3204, !DIExpression(), !3226)
  %6 = fcmp oeq double %x.tr43.i, 0.000000e+00, !dbg !3227
  br i1 %6, label %switch.body6.i.i, label %switch.next34.i.i, !dbg !3219

switch.body6.i.i:                                 ; preds = %switch.next5.i.i
    #dbg_value(double %y.tr44.i, !3207, !DIExpression(), !3228)
  %7 = fcmp olt double %y.tr44.i, 0.000000e+00, !dbg !3229
  br i1 %7, label %switch.body7.i.i, label %switch.next8.i.i, !dbg !3219

switch.body7.i.i:                                 ; preds = %switch.body6.i.i
    #dbg_value(double %x.tr43.i, !3204, !DIExpression(), !3230)
    #dbg_value(double %x.tr43.i, !3231, !DIExpression(), !3235)
    #dbg_value(double %x.tr43.i, !1785, !DIExpression(), !3237)
  %.cast.i.i19.i = bitcast double %x.tr43.i to i64, !dbg !3239
  %8 = icmp slt i64 %.cast.i.i19.i, 0, !dbg !3240
    #dbg_value(double %y.tr44.i, !3207, !DIExpression(), !3241)
    #dbg_value(double %y.tr44.i, !3242, !DIExpression(), !3247)
    #dbg_value(double %y.tr44.i, !3249, !DIExpression(), !3253)
  %9 = tail call double @llvm.fabs.f64(double %y.tr44.i)
  %10 = fcmp ult double %9, 0x4340000000000000
  %or.cond.i = and i1 %10, %8, !dbg !3219
  br i1 %or.cond.i, label %if.done.i10.i, label %if.done.i.i, !dbg !3219

if.done.i10.i:                                    ; preds = %switch.body7.i.i
    #dbg_value(double %y.tr44.i, !3242, !DIExpression(), !3255)
    #dbg_value(double %y.tr44.i, !3256, !DIExpression(), !3262)
    #dbg_value(double %y.tr44.i, !3264, !DIExpression(), !3268)
  %11 = tail call double @llvm.trunc.f64(double %y.tr44.i), !dbg !3268
    #dbg_value(double %11, !3260, !DIExpression(), !3270)
    #dbg_value(double poison, !1800, !DIExpression(), !3271)
    #dbg_value(double %y.tr44.i, !1806, !DIExpression(), !3273)
    #dbg_value(!DIArgList(double poison, double poison), !1810, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 9223372036854775808, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !3274)
    #dbg_value(double poison, !3261, !DIExpression(), !3276)
    #dbg_value(double poison, !3245, !DIExpression(), !3277)
    #dbg_value(double poison, !3246, !DIExpression(), !3278)
  %12 = fcmp oeq double %y.tr44.i, %11, !dbg !3279
  br i1 %12, label %math.isOddInt.exit18.i, label %if.done.i.i, !dbg !3280

math.isOddInt.exit18.i:                           ; preds = %if.done.i10.i
    #dbg_value(double %11, !3245, !DIExpression(), !3281)
  %abovemin.i13.i = fcmp oge double %11, 0xC3E0000000000000, !dbg !3282
  %belowmax.i14.i = fcmp ole double %11, 0x43DFFFFFFFFFFFFE, !dbg !3282
  %inbounds.i15.i = and i1 %abovemin.i13.i, %belowmax.i14.i, !dbg !3282
  %remapped.i16.i = zext i1 %abovemin.i13.i to i64, !dbg !3282
  %normal.i17.i = fptosi double %11 to i64, !dbg !3282
  %13 = select i1 %inbounds.i15.i, i64 %normal.i17.i, i64 %remapped.i16.i, !dbg !3282
  %14 = and i64 %13, 1, !dbg !3283
  %.not27.i = icmp eq i64 %14, 0, !dbg !3284
  br i1 %.not27.i, label %if.done.i.i, label %math.Pow.exit, !dbg !3219

if.done.i.i:                                      ; preds = %math.isOddInt.exit18.i, %if.done.i10.i, %switch.body7.i.i
    #dbg_value(i64 9218868437227405312, !1810, !DIExpression(), !3285)
  br label %math.Pow.exit, !dbg !3288

switch.next8.i.i:                                 ; preds = %switch.body6.i.i
    #dbg_value(double %y.tr44.i, !3207, !DIExpression(), !3289)
  %15 = fcmp ogt double %y.tr44.i, 0.000000e+00, !dbg !3290
  br i1 %15, label %switch.body9.i.i, label %switch.next8.i.switch.done.i_crit_edge.i, !dbg !3219

switch.next8.i.switch.done.i_crit_edge.i:         ; preds = %switch.next8.i.i
  %.pre.i = tail call double @llvm.fabs.f64(double %y.tr44.i), !dbg !3291
  br label %switch.done.i.i, !dbg !3219

switch.body9.i.i:                                 ; preds = %switch.next8.i.i
    #dbg_value(double %x.tr43.i, !3204, !DIExpression(), !3293)
    #dbg_value(double %x.tr43.i, !3231, !DIExpression(), !3294)
    #dbg_value(double %x.tr43.i, !1785, !DIExpression(), !3296)
  %.cast.i.i.i = bitcast double %x.tr43.i to i64, !dbg !3298
  %16 = icmp slt i64 %.cast.i.i.i, 0, !dbg !3299
    #dbg_value(double %y.tr44.i, !3207, !DIExpression(), !3300)
    #dbg_value(double %y.tr44.i, !3242, !DIExpression(), !3301)
    #dbg_value(double %y.tr44.i, !3249, !DIExpression(), !3303)
  %17 = fcmp ult double %y.tr44.i, 0x4340000000000000
  %or.cond24.i = and i1 %17, %16, !dbg !3219
  br i1 %or.cond24.i, label %if.done.i2.i, label %if.done12.i.i, !dbg !3219

if.done.i2.i:                                     ; preds = %switch.body9.i.i
    #dbg_value(double %y.tr44.i, !3242, !DIExpression(), !3305)
    #dbg_value(double %y.tr44.i, !3256, !DIExpression(), !3306)
    #dbg_value(double %y.tr44.i, !3264, !DIExpression(), !3308)
  %18 = tail call double @llvm.trunc.f64(double %y.tr44.i), !dbg !3308
    #dbg_value(double %18, !3260, !DIExpression(), !3310)
    #dbg_value(double poison, !1800, !DIExpression(), !3311)
    #dbg_value(double %y.tr44.i, !1806, !DIExpression(), !3313)
    #dbg_value(!DIArgList(double poison, double poison), !1810, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 9223372036854775808, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !3314)
    #dbg_value(double poison, !3261, !DIExpression(), !3316)
    #dbg_value(double poison, !3245, !DIExpression(), !3317)
    #dbg_value(double poison, !3246, !DIExpression(), !3318)
  %19 = fcmp oeq double %y.tr44.i, %18, !dbg !3319
  br i1 %19, label %math.isOddInt.exit.i, label %if.done12.i.i, !dbg !3320

math.isOddInt.exit.i:                             ; preds = %if.done.i2.i
    #dbg_value(double %18, !3245, !DIExpression(), !3321)
  %abovemin.i4.i = fcmp oge double %18, 0xC3E0000000000000, !dbg !3322
  %belowmax.i5.i = fcmp ole double %18, 0x43DFFFFFFFFFFFFE, !dbg !3322
  %inbounds.i6.i = and i1 %abovemin.i4.i, %belowmax.i5.i, !dbg !3322
  %remapped.i7.i = zext i1 %abovemin.i4.i to i64, !dbg !3322
  %normal.i8.i = fptosi double %18 to i64, !dbg !3322
  %20 = select i1 %inbounds.i6.i, i64 %normal.i8.i, i64 %remapped.i7.i, !dbg !3322
  %21 = and i64 %20, 1, !dbg !3323
  %.not.i = icmp eq i64 %21, 0, !dbg !3324
  br i1 %.not.i, label %if.done12.i.i, label %math.Pow.exit, !dbg !3219

if.done12.i.i:                                    ; preds = %math.isOddInt.exit.i, %if.done.i2.i, %switch.body9.i.i
  br label %math.Pow.exit, !dbg !3325

switch.done.i.i:                                  ; preds = %switch.next49.i.i, %switch.next45.i.i, %switch.next8.i.switch.done.i_crit_edge.i
  %.pre-phi.i = phi double [ %.pre.i, %switch.next8.i.switch.done.i_crit_edge.i ], [ %74, %switch.next49.i.i ], [ %74, %switch.next45.i.i ], !dbg !3291
    #dbg_value(double %y.tr44.i, !3207, !DIExpression(), !3326)
    #dbg_value(double %y.tr44.i, !3249, !DIExpression(), !3327)
    #dbg_value(double %.pre-phi.i, !3256, !DIExpression(), !3328)
    #dbg_value(double %.pre-phi.i, !3264, !DIExpression(), !3330)
  %22 = tail call double @llvm.trunc.f64(double %.pre-phi.i), !dbg !3330
    #dbg_value(double %22, !3260, !DIExpression(), !3332)
  %23 = fsub double %.pre-phi.i, %22, !dbg !3333
    #dbg_value(double %23, !1800, !DIExpression(), !3334)
    #dbg_value(double %.pre-phi.i, !1806, !DIExpression(), !3336)
    #dbg_value(!DIArgList(double poison, double poison), !1810, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 9223372036854775808, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !3337)
  %.cast.i2.i.i.i = tail call double @llvm.fabs.f64(double %23), !dbg !3339
    #dbg_value(double %.cast.i2.i.i.i, !3261, !DIExpression(), !3340)
    #dbg_value(double %22, !3208, !DIExpression(), !3341)
    #dbg_value(double %.cast.i2.i.i.i, !3209, !DIExpression(), !3342)
  %24 = fcmp une double %23, 0.000000e+00, !dbg !3343
    #dbg_value(double %x.tr43.i, !3204, !DIExpression(), !3344)
  %25 = fcmp olt double %x.tr43.i, 0.000000e+00
  %or.cond.i.i = select i1 %24, i1 %25, i1 false, !dbg !3219
  br i1 %or.cond.i.i, label %math.Pow.exit, label %if.done15.i.i, !dbg !3219

if.done15.i.i:                                    ; preds = %switch.done.i.i
    #dbg_value(double %22, !3208, !DIExpression(), !3345)
  %26 = fcmp ult double %22, 0x43E0000000000000, !dbg !3346
  br i1 %26, label %if.done21.i.i, label %if.then16.i.i, !dbg !3219

if.then16.i.i:                                    ; preds = %if.done15.i.i
    #dbg_value(double %x.tr43.i, !3204, !DIExpression(), !3347)
  %27 = fcmp oeq double %x.tr43.i, -1.000000e+00, !dbg !3348
  br i1 %27, label %math.Pow.exit, label %switch.next18.i.i, !dbg !3219

switch.next18.i.i:                                ; preds = %if.then16.i.i
    #dbg_value(double %x.tr43.i, !3204, !DIExpression(), !3349)
    #dbg_value(double %x.tr43.i, !3249, !DIExpression(), !3350)
  %28 = tail call double @llvm.fabs.f64(double %x.tr43.i), !dbg !3352
  %29 = fcmp olt double %28, 1.000000e+00, !dbg !3353
    #dbg_value(double %y.tr44.i, !3207, !DIExpression(), !3354)
  %30 = fcmp ule double %y.tr44.i, 0.000000e+00, !dbg !3355
  %31 = xor i1 %30, %29, !dbg !3355
  %spec.select.i = select i1 %31, double 0.000000e+00, double 0x7FF0000000000000, !dbg !3219
  br label %math.Pow.exit, !dbg !3219

if.done21.i.i:                                    ; preds = %if.done15.i.i
    #dbg_value(double 1.000000e+00, !3210, !DIExpression(), !3356)
    #dbg_value(i64 0, !3211, !DIExpression(), !3357)
    #dbg_value(double %.cast.i2.i.i.i, !3209, !DIExpression(), !3358)
  br i1 %24, label %if.then22.i.i, label %if.done25.i.i, !dbg !3219

if.then22.i.i:                                    ; preds = %if.done21.i.i
    #dbg_value(double %.cast.i2.i.i.i, !3209, !DIExpression(), !3359)
  %32 = fcmp ogt double %.cast.i2.i.i.i, 5.000000e-01, !dbg !3360
  %33 = fadd double %.cast.i2.i.i.i, -1.000000e+00, !dbg !3219
  %34 = fadd double %22, 1.000000e+00, !dbg !3219
  %35 = select i1 %32, double %34, double %22, !dbg !3219
  %36 = select i1 %32, double %33, double %.cast.i2.i.i.i, !dbg !3219
    #dbg_value(double %36, !3209, !DIExpression(), !3361)
    #dbg_value(double %x.tr43.i, !3204, !DIExpression(), !3362)
    #dbg_value(double %x.tr43.i, !3363, !DIExpression(), !3367)
  %37 = tail call double @llvm.log.f64(double %x.tr43.i), !dbg !3367
  %38 = fmul double %37, %36, !dbg !3369
    #dbg_value(double %38, !3370, !DIExpression(), !3374)
  %39 = tail call double @llvm.exp.f64(double %38), !dbg !3374
    #dbg_value(double %39, !3210, !DIExpression(), !3376)
  br label %if.done25.i.i, !dbg !3219

if.done25.i.i:                                    ; preds = %if.then22.i.i, %if.done21.i.i
  %40 = phi double [ %22, %if.done21.i.i ], [ %35, %if.then22.i.i ], !dbg !3341
  %41 = phi double [ 1.000000e+00, %if.done21.i.i ], [ %39, %if.then22.i.i ], !dbg !3356
    #dbg_value(double %x.tr43.i, !3204, !DIExpression(), !3377)
    #dbg_value(double poison, !3212, !DIExpression(), !3378)
    #dbg_value(i64 poison, !3213, !DIExpression(), !3379)
    #dbg_value(double %40, !3208, !DIExpression(), !3380)
  %abovemin.i.i = fcmp oge double %40, 0xC3E0000000000000, !dbg !3381
  %belowmax.i.i = fcmp ole double %40, 0x43DFFFFFFFFFFFFE, !dbg !3381
  %inbounds.i.i = and i1 %abovemin.i.i, %belowmax.i.i, !dbg !3381
  %saturated.i.i = select i1 %abovemin.i.i, i64 9223372036854775807, i64 -9223372036854775808, !dbg !3381
  %isnan.i.i = fcmp uno double %40, 0.000000e+00, !dbg !3381
  %remapped.i.i = select i1 %isnan.i.i, i64 0, i64 %saturated.i.i, !dbg !3381
  %normal.i.i = fptosi double %40 to i64, !dbg !3381
  %42 = select i1 %inbounds.i.i, i64 %normal.i.i, i64 %remapped.i.i, !dbg !3381
    #dbg_value(i64 %42, !3214, !DIExpression(), !3382)
  %.not.i47.i = icmp eq i64 %42, 0, !dbg !3383
  br i1 %.not.i47.i, label %for.done.i.i, label %for.body.i.preheader.i, !dbg !3219

for.body.i.preheader.i:                           ; preds = %if.done25.i.i
  %43 = tail call fastcc { double, i64 } @math.Frexp(double %x.tr43.i), !dbg !3384
  %44 = extractvalue { double, i64 } %43, 1, !dbg !3384
    #dbg_value(i64 %44, !3213, !DIExpression(), !3379)
  %45 = extractvalue { double, i64 } %43, 0, !dbg !3384
    #dbg_value(double %45, !3212, !DIExpression(), !3378)
  br label %for.body.i.i, !dbg !3219

for.body.i.i:                                     ; preds = %if.done27.i.i, %for.body.i.preheader.i
  %46 = phi i64 [ %65, %if.done27.i.i ], [ %42, %for.body.i.preheader.i ]
  %47 = phi i64 [ %64, %if.done27.i.i ], [ %44, %for.body.i.preheader.i ]
  %48 = phi double [ %62, %if.done27.i.i ], [ %45, %for.body.i.preheader.i ]
  %49 = phi i64 [ %57, %if.done27.i.i ], [ 0, %for.body.i.preheader.i ]
  %50 = phi double [ %55, %if.done27.i.i ], [ %41, %for.body.i.preheader.i ]
    #dbg_value(i64 %46, !3214, !DIExpression(), !3385)
    #dbg_value(i64 %47, !3213, !DIExpression(), !3386)
  %51 = add i64 %47, -4097, !dbg !3219
  %or.cond10.i.i = icmp ult i64 %51, -8193, !dbg !3219
  br i1 %or.cond10.i.i, label %if.then26.i.i, label %if.done27.i.i, !dbg !3219

if.then26.i.i:                                    ; preds = %for.body.i.i
    #dbg_value(i64 %47, !3213, !DIExpression(), !3387)
  %52 = add i64 %49, %47, !dbg !3388
    #dbg_value(i64 %52, !3211, !DIExpression(), !3388)
  br label %for.done.i.i, !dbg !3219

if.done27.i.i:                                    ; preds = %for.body.i.i
    #dbg_value(i64 %46, !3214, !DIExpression(), !3389)
  %53 = and i64 %46, 1, !dbg !3390
  %.not5.i.i = icmp eq i64 %53, 0, !dbg !3391
  %54 = fmul double %48, %50, !dbg !3219
  %55 = select i1 %.not5.i.i, double %50, double %54, !dbg !3219
  %56 = select i1 %.not5.i.i, i64 0, i64 %47, !dbg !3219
  %57 = add i64 %56, %49, !dbg !3219
    #dbg_value(double %48, !3212, !DIExpression(), !3392)
  %58 = fmul double %48, %48, !dbg !3393
    #dbg_value(double %58, !3212, !DIExpression(), !3393)
  %59 = shl nsw i64 %47, 1, !dbg !3394
    #dbg_value(i64 %59, !3213, !DIExpression(), !3394)
  %60 = fcmp olt double %58, 5.000000e-01, !dbg !3395
  %61 = fadd double %58, %58, !dbg !3219
  %62 = select i1 %60, double %61, double %58, !dbg !3219
  %63 = sext i1 %60 to i64, !dbg !3219
  %64 = add nsw i64 %59, %63, !dbg !3219
  %65 = ashr i64 %46, 1, !dbg !3396
    #dbg_value(i64 %65, !3214, !DIExpression(), !3385)
  %.not.i.i = icmp ult i64 %46, 2, !dbg !3383
  br i1 %.not.i.i, label %for.done.i.i, label %for.body.i.i, !dbg !3219

for.done.i.i:                                     ; preds = %if.done27.i.i, %if.then26.i.i, %if.done25.i.i
  %66 = phi double [ %50, %if.then26.i.i ], [ %41, %if.done25.i.i ], [ %55, %if.done27.i.i ]
  %67 = phi i64 [ %52, %if.then26.i.i ], [ 0, %if.done25.i.i ], [ %57, %if.done27.i.i ], !dbg !3357
    #dbg_value(double %y.tr44.i, !3207, !DIExpression(), !3397)
  %68 = fcmp olt double %y.tr44.i, 0.000000e+00, !dbg !3398
  br i1 %68, label %if.then32.i.i, label %if.done33.i.i, !dbg !3219

if.then32.i.i:                                    ; preds = %for.done.i.i
    #dbg_value(double %66, !3210, !DIExpression(), !3399)
  %69 = fdiv double 1.000000e+00, %66, !dbg !3400
    #dbg_value(double %69, !3210, !DIExpression(), !3401)
    #dbg_value(i64 %67, !3211, !DIExpression(), !3402)
  %70 = sub i64 0, %67, !dbg !3403
    #dbg_value(i64 %70, !3211, !DIExpression(), !3404)
  br label %if.done33.i.i, !dbg !3219

if.done33.i.i:                                    ; preds = %if.then32.i.i, %for.done.i.i
  %71 = phi double [ %66, %for.done.i.i ], [ %69, %if.then32.i.i ], !dbg !3356
  %72 = phi i64 [ %67, %for.done.i.i ], [ %70, %if.then32.i.i ], !dbg !3357
    #dbg_value(double %71, !3210, !DIExpression(), !3405)
    #dbg_value(i64 %72, !3211, !DIExpression(), !3406)
  %73 = tail call fastcc double @math.Ldexp(double %71, i64 %72), !dbg !3407
  br label %math.Pow.exit, !dbg !3408

switch.next34.i.i:                                ; preds = %switch.next5.i.i
    #dbg_value(double %y.tr44.i, !3207, !DIExpression(), !3409)
    #dbg_value(double %y.tr44.i, !1760, !DIExpression(), !3410)
    #dbg_value(i64 0, !1764, !DIExpression(), !3412)
  %74 = tail call double @llvm.fabs.f64(double %y.tr44.i), !dbg !3413
    #dbg_value(double %74, !1760, !DIExpression(), !3414)
  %75 = fcmp ogt double %74, 0x7FEFFFFFFFFFFFFF, !dbg !3415
  br i1 %75, label %switch.body35.i.i, label %switch.next40.i.i, !dbg !3219

switch.body35.i.i:                                ; preds = %switch.next34.i.i
    #dbg_value(double %x.tr43.i, !3204, !DIExpression(), !3416)
  %76 = fcmp oeq double %x.tr43.i, -1.000000e+00, !dbg !3417
  br i1 %76, label %math.Pow.exit, label %switch.next37.i.i, !dbg !3219

switch.next37.i.i:                                ; preds = %switch.body35.i.i
    #dbg_value(double %x.tr43.i, !3204, !DIExpression(), !3418)
    #dbg_value(double %x.tr43.i, !3249, !DIExpression(), !3419)
  %77 = tail call double @llvm.fabs.f64(double %x.tr43.i), !dbg !3421
    #dbg_value(double %y.tr44.i, !3207, !DIExpression(), !3422)
    #dbg_value(i64 1, !1764, !DIExpression(), !3423)
    #dbg_value(double %y.tr44.i, !1760, !DIExpression(), !3425)
  %78 = fcmp ogt double %y.tr44.i, 0x7FEFFFFFFFFFFFFF, !dbg !3426
  %79 = fcmp uge double %77, 1.000000e+00, !dbg !3427
  %80 = xor i1 %78, %79, !dbg !3427
  %spec.select25.i = select i1 %80, double 0.000000e+00, double 0x7FF0000000000000, !dbg !3219
  br label %math.Pow.exit, !dbg !3219

switch.next40.i.i:                                ; preds = %switch.next34.i.i
    #dbg_value(double %x.tr43.i, !3204, !DIExpression(), !3428)
    #dbg_value(double %x.tr43.i, !1760, !DIExpression(), !3429)
    #dbg_value(i64 0, !1764, !DIExpression(), !3431)
  %81 = tail call double @llvm.fabs.f64(double %x.tr43.i), !dbg !3432
    #dbg_value(double %81, !1760, !DIExpression(), !3433)
  %82 = fcmp ogt double %81, 0x7FEFFFFFFFFFFFFF, !dbg !3434
  br i1 %82, label %switch.body41.i.i, label %switch.next47.i.i, !dbg !3219

switch.body41.i.i:                                ; preds = %switch.next40.i.i
    #dbg_value(double %x.tr43.i, !3204, !DIExpression(), !3435)
    #dbg_value(i64 -1, !1764, !DIExpression(), !3436)
    #dbg_value(double poison, !1760, !DIExpression(), !3438)
  %83 = fcmp olt double %x.tr43.i, 0xFFEFFFFFFFFFFFFF, !dbg !3439
  br i1 %83, label %if.then42.i.i, label %if.done43.i.i, !dbg !3219

if.then42.i.i:                                    ; preds = %switch.body41.i.i
    #dbg_value(double %x.tr43.i, !3204, !DIExpression(), !3440)
  %84 = fdiv double 1.000000e+00, %x.tr43.i, !dbg !3441
    #dbg_value(double %y.tr44.i, !3207, !DIExpression(), !3442)
  %85 = fneg double %y.tr44.i, !dbg !3443
    #dbg_value(double %84, !3196, !DIExpression(), !3201)
    #dbg_value(double %85, !3200, !DIExpression(), !3203)
    #dbg_value(double %84, !3204, !DIExpression(), !3215)
    #dbg_value(double %85, !3207, !DIExpression(), !3217)
  %86 = fcmp oeq double %y.tr44.i, 0.000000e+00, !dbg !3218
  %87 = fcmp oeq double %84, 1.000000e+00, !dbg !3219
  %88 = select i1 %86, i1 true, i1 %87, !dbg !3219
  br i1 %88, label %math.Pow.exit, label %switch.next.i.i, !dbg !3219

if.done43.i.i:                                    ; preds = %switch.body41.i.i
    #dbg_value(double %y.tr44.i, !3207, !DIExpression(), !3444)
  %89 = fcmp olt double %y.tr44.i, 0.000000e+00, !dbg !3445
  br i1 %89, label %math.Pow.exit, label %switch.next45.i.i, !dbg !3219

switch.next45.i.i:                                ; preds = %if.done43.i.i
    #dbg_value(double %y.tr44.i, !3207, !DIExpression(), !3446)
  %90 = fcmp ogt double %y.tr44.i, 0.000000e+00, !dbg !3447
  br i1 %90, label %math.Pow.exit, label %switch.done.i.i, !dbg !3219

switch.next47.i.i:                                ; preds = %switch.next40.i.i
    #dbg_value(double %y.tr44.i, !3207, !DIExpression(), !3448)
  %91 = fcmp oeq double %y.tr44.i, 5.000000e-01, !dbg !3449
  br i1 %91, label %switch.body48.i.i, label %switch.next49.i.i, !dbg !3219

switch.body48.i.i:                                ; preds = %switch.next47.i.i
    #dbg_value(double %x.tr43.i, !3204, !DIExpression(), !3450)
    #dbg_value(double %x.tr43.i, !3451, !DIExpression(), !3455)
  %92 = tail call double @llvm.sqrt.f64(double %x.tr43.i), !dbg !3455
  br label %math.Pow.exit, !dbg !3457

switch.next49.i.i:                                ; preds = %switch.next47.i.i
    #dbg_value(double %y.tr44.i, !3207, !DIExpression(), !3458)
  %93 = fcmp oeq double %y.tr44.i, -5.000000e-01, !dbg !3459
  br i1 %93, label %switch.body50.i.i, label %switch.done.i.i, !dbg !3219

switch.body50.i.i:                                ; preds = %switch.next49.i.i
    #dbg_value(double %x.tr43.i, !3204, !DIExpression(), !3460)
    #dbg_value(double %x.tr43.i, !3451, !DIExpression(), !3461)
  %94 = tail call double @llvm.sqrt.f64(double %x.tr43.i), !dbg !3461
  %95 = fdiv double 1.000000e+00, %94, !dbg !3463
  br label %math.Pow.exit, !dbg !3464

math.Pow.exit:                                    ; preds = %switch.next.i.i, %switch.next2.i.i, %if.then42.i.i, %entry, %math.isOddInt.exit18.i, %if.done.i.i, %math.isOddInt.exit.i, %if.done12.i.i, %switch.done.i.i, %if.then16.i.i, %switch.next18.i.i, %if.done33.i.i, %switch.body35.i.i, %switch.next37.i.i, %if.done43.i.i, %switch.next45.i.i, %switch.body48.i.i, %switch.body50.i.i
  %common.ret.op.i.i = phi double [ 0x7FF0000000000000, %if.done.i.i ], [ 0.000000e+00, %if.done12.i.i ], [ %73, %if.done33.i.i ], [ %92, %switch.body48.i.i ], [ %95, %switch.body50.i.i ], [ %x.tr43.i, %math.isOddInt.exit.i ], [ 1.000000e+00, %if.then16.i.i ], [ 1.000000e+00, %switch.body35.i.i ], [ 0.000000e+00, %if.done43.i.i ], [ 0xFFF0000000000000, %math.isOddInt.exit18.i ], [ 0x7FF8000000000001, %switch.done.i.i ], [ 0x7FF0000000000000, %switch.next45.i.i ], [ %spec.select.i, %switch.next18.i.i ], [ %spec.select25.i, %switch.next37.i.i ], [ 1.000000e+00, %entry ], [ 0x7FF8000000000001, %switch.next2.i.i ], [ 1.000000e+00, %if.then42.i.i ], [ %x.tr43.i, %switch.next.i.i ]
  %abovemin = fcmp oge double %common.ret.op.i.i, 0xC3E0000000000000, !dbg !3465
  %belowmax = fcmp ole double %common.ret.op.i.i, 0x43DFFFFFFFFFFFFE, !dbg !3465
  %inbounds = and i1 %abovemin, %belowmax, !dbg !3465
  %saturated = select i1 %abovemin, i64 9223372036854775807, i64 -9223372036854775808, !dbg !3465
  %isnan = fcmp uno double %common.ret.op.i.i, 0.000000e+00, !dbg !3465
  %remapped = select i1 %isnan, i64 0, i64 %saturated, !dbg !3465
  %normal = fptosi double %common.ret.op.i.i to i64, !dbg !3465
  %96 = select i1 %inbounds, i64 %normal, i64 %remapped, !dbg !3465
    #dbg_value(i64 %96, !3190, !DIExpression(), !3466)
    #dbg_value(i64 0, !3191, !DIExpression(), !3467)
  %97 = icmp sgt i64 %96, 0, !dbg !3468
  %98 = icmp sgt i64 %k, 0
  %or.cond28 = select i1 %97, i1 %98, i1 false, !dbg !3469
  br i1 %or.cond28, label %for.body, label %common.ret, !dbg !3469

for.body:                                         ; preds = %math.Pow.exit, %if.done
  %99 = phi i64 [ %101, %if.done ], [ 0, %math.Pow.exit ]
  %100 = phi i64 [ %104, %if.done ], [ %96, %math.Pow.exit ]
    #dbg_value(i64 %99, !3191, !DIExpression(), !3470)
    #dbg_value(i64 %100, !3190, !DIExpression(), !3471)
    #dbg_value(i64 poison, !3192, !DIExpression(), !3472)
  %101 = add nuw nsw i64 %99, 1, !dbg !3473
    #dbg_value(i64 %101, !3191, !DIExpression(), !3474)
    #dbg_value(i64 %k, !3189, !DIExpression(), !3475)
  %102 = icmp eq i64 %101, %k, !dbg !3476
  br i1 %102, label %if.then, label %if.done, !dbg !3469

common.ret:                                       ; preds = %if.done, %math.Pow.exit, %if.then
  %common.ret.op = phi i64 [ %103, %if.then ], [ 0, %math.Pow.exit ], [ 0, %if.done ]
  ret i64 %common.ret.op, !dbg !3469

if.then:                                          ; preds = %for.body
  %103 = urem i64 %100, 10, !dbg !3477
    #dbg_value(i64 %103, !3192, !DIExpression(), !3478)
  br label %common.ret, !dbg !3479

if.done:                                          ; preds = %for.body
    #dbg_value(i64 %100, !3190, !DIExpression(), !3480)
  %104 = udiv i64 %100, 10, !dbg !3481
    #dbg_value(i64 %104, !3190, !DIExpression(), !3482)
  %105 = icmp ugt i64 %100, 9, !dbg !3468
    #dbg_value(i64 %101, !3191, !DIExpression(), !3470)
    #dbg_value(i64 %k, !3189, !DIExpression(), !3483)
  %106 = icmp slt i64 %101, %k
  %or.cond = select i1 %105, i1 %106, i1 false, !dbg !3469
  br i1 %or.cond, label %for.body, label %common.ret, !dbg !3469
}
