define i64 @f_gold(i64 %n, i64 %k) local_unnamed_addr #12 !dbg !3182 {
entry:
    #dbg_value(i64 1, !3189, !DIExpression(), !3190)
    #dbg_value(i64 %k, !3188, !DIExpression(), !3191)
    #dbg_value(i64 %n, !3187, !DIExpression(), !3192)
  %0 = add i64 %n, -1, !dbg !3193
    #dbg_value(double poison, !3194, !DIExpression(), !3199)
    #dbg_value(double poison, !3198, !DIExpression(), !3201)
    #dbg_value(double poison, !3202, !DIExpression(), !3213)
    #dbg_value(double poison, !3205, !DIExpression(), !3215)
  %1 = icmp eq i64 %k, 0, !dbg !3216
  %2 = icmp eq i64 %0, 1, !dbg !3217
  %3 = select i1 %1, i1 true, i1 %2, !dbg !3217
  br i1 %3, label %math.Pow.exit, label %switch.next.i.i.preheader, !dbg !3217

switch.next.i.i.preheader:                        ; preds = %entry
  %4 = sitofp i64 %k to double, !dbg !3218
    #dbg_value(double %4, !3198, !DIExpression(), !3201)
    #dbg_value(double %4, !3205, !DIExpression(), !3215)
  %5 = sitofp i64 %0 to double, !dbg !3219
    #dbg_value(double %5, !3194, !DIExpression(), !3199)
    #dbg_value(double %5, !3202, !DIExpression(), !3213)
  br label %switch.next.i.i, !dbg !3217

switch.next.i.i:                                  ; preds = %switch.next.i.i.preheader, %if.then42.i.i
  %y.tr44.i = phi double [ %86, %if.then42.i.i ], [ %4, %switch.next.i.i.preheader ]
  %x.tr43.i = phi double [ %85, %if.then42.i.i ], [ %5, %switch.next.i.i.preheader ]
    #dbg_value(double %y.tr44.i, !3198, !DIExpression(), !3201)
    #dbg_value(double %x.tr43.i, !3194, !DIExpression(), !3199)
    #dbg_value(double %y.tr44.i, !3205, !DIExpression(), !3220)
  %6 = fcmp oeq double %y.tr44.i, 1.000000e+00, !dbg !3221
  br i1 %6, label %math.Pow.exit, label %switch.next2.i.i, !dbg !3217

switch.next2.i.i:                                 ; preds = %switch.next.i.i
    #dbg_value(double %x.tr43.i, !3202, !DIExpression(), !3222)
    #dbg_value(double %y.tr44.i, !3205, !DIExpression(), !3223)
  %or.cond26.i = fcmp uno double %x.tr43.i, %y.tr44.i, !dbg !3217
  br i1 %or.cond26.i, label %math.Pow.exit, label %switch.next5.i.i, !dbg !3217

switch.next5.i.i:                                 ; preds = %switch.next2.i.i
    #dbg_value(double %x.tr43.i, !3202, !DIExpression(), !3224)
  %7 = fcmp oeq double %x.tr43.i, 0.000000e+00, !dbg !3225
  br i1 %7, label %switch.body6.i.i, label %switch.next34.i.i, !dbg !3217

switch.body6.i.i:                                 ; preds = %switch.next5.i.i
    #dbg_value(double %y.tr44.i, !3205, !DIExpression(), !3226)
  %8 = fcmp olt double %y.tr44.i, 0.000000e+00, !dbg !3227
  br i1 %8, label %switch.body7.i.i, label %switch.next8.i.i, !dbg !3217

switch.body7.i.i:                                 ; preds = %switch.body6.i.i
    #dbg_value(double %x.tr43.i, !3202, !DIExpression(), !3228)
    #dbg_value(double %x.tr43.i, !3229, !DIExpression(), !3233)
    #dbg_value(double %x.tr43.i, !1785, !DIExpression(), !3235)
  %.cast.i.i19.i = bitcast double %x.tr43.i to i64, !dbg !3237
  %9 = icmp slt i64 %.cast.i.i19.i, 0, !dbg !3238
    #dbg_value(double %y.tr44.i, !3205, !DIExpression(), !3239)
    #dbg_value(double %y.tr44.i, !3240, !DIExpression(), !3245)
    #dbg_value(double %y.tr44.i, !3247, !DIExpression(), !3251)
  %10 = tail call double @llvm.fabs.f64(double %y.tr44.i)
  %11 = fcmp ult double %10, 0x4340000000000000
  %or.cond.i = and i1 %11, %9, !dbg !3217
  br i1 %or.cond.i, label %if.done.i10.i, label %if.done.i.i, !dbg !3217

if.done.i10.i:                                    ; preds = %switch.body7.i.i
    #dbg_value(double %y.tr44.i, !3240, !DIExpression(), !3253)
    #dbg_value(double %y.tr44.i, !3254, !DIExpression(), !3260)
    #dbg_value(double %y.tr44.i, !3262, !DIExpression(), !3266)
  %12 = tail call double @llvm.trunc.f64(double %y.tr44.i), !dbg !3266
    #dbg_value(double %12, !3258, !DIExpression(), !3268)
    #dbg_value(double poison, !1800, !DIExpression(), !3269)
    #dbg_value(double %y.tr44.i, !1806, !DIExpression(), !3271)
    #dbg_value(!DIArgList(double poison, double poison), !1810, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 9223372036854775808, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !3272)
    #dbg_value(double poison, !3259, !DIExpression(), !3274)
    #dbg_value(double poison, !3243, !DIExpression(), !3275)
    #dbg_value(double poison, !3244, !DIExpression(), !3276)
  %13 = fcmp oeq double %y.tr44.i, %12, !dbg !3277
  br i1 %13, label %math.isOddInt.exit18.i, label %if.done.i.i, !dbg !3278

math.isOddInt.exit18.i:                           ; preds = %if.done.i10.i
    #dbg_value(double %12, !3243, !DIExpression(), !3279)
  %abovemin.i13.i = fcmp oge double %12, 0xC3E0000000000000, !dbg !3280
  %belowmax.i14.i = fcmp ole double %12, 0x43DFFFFFFFFFFFFE, !dbg !3280
  %inbounds.i15.i = and i1 %abovemin.i13.i, %belowmax.i14.i, !dbg !3280
  %remapped.i16.i = zext i1 %abovemin.i13.i to i64, !dbg !3280
  %normal.i17.i = fptosi double %12 to i64, !dbg !3280
  %14 = select i1 %inbounds.i15.i, i64 %normal.i17.i, i64 %remapped.i16.i, !dbg !3280
  %15 = and i64 %14, 1, !dbg !3281
  %.not27.i = icmp eq i64 %15, 0, !dbg !3282
  br i1 %.not27.i, label %if.done.i.i, label %math.Pow.exit, !dbg !3217

if.done.i.i:                                      ; preds = %math.isOddInt.exit18.i, %if.done.i10.i, %switch.body7.i.i
    #dbg_value(i64 9218868437227405312, !1810, !DIExpression(), !3283)
  br label %math.Pow.exit, !dbg !3286

switch.next8.i.i:                                 ; preds = %switch.body6.i.i
    #dbg_value(double %y.tr44.i, !3205, !DIExpression(), !3287)
  %16 = fcmp ogt double %y.tr44.i, 0.000000e+00, !dbg !3288
  br i1 %16, label %switch.body9.i.i, label %switch.next8.i.switch.done.i_crit_edge.i, !dbg !3217

switch.next8.i.switch.done.i_crit_edge.i:         ; preds = %switch.next8.i.i
  %.pre.i = tail call double @llvm.fabs.f64(double %y.tr44.i), !dbg !3289
  br label %switch.done.i.i, !dbg !3217

switch.body9.i.i:                                 ; preds = %switch.next8.i.i
    #dbg_value(double %x.tr43.i, !3202, !DIExpression(), !3291)
    #dbg_value(double %x.tr43.i, !3229, !DIExpression(), !3292)
    #dbg_value(double %x.tr43.i, !1785, !DIExpression(), !3294)
  %.cast.i.i.i = bitcast double %x.tr43.i to i64, !dbg !3296
  %17 = icmp slt i64 %.cast.i.i.i, 0, !dbg !3297
    #dbg_value(double %y.tr44.i, !3205, !DIExpression(), !3298)
    #dbg_value(double %y.tr44.i, !3240, !DIExpression(), !3299)
    #dbg_value(double %y.tr44.i, !3247, !DIExpression(), !3301)
  %18 = fcmp ult double %y.tr44.i, 0x4340000000000000
  %or.cond24.i = and i1 %18, %17, !dbg !3217
  br i1 %or.cond24.i, label %if.done.i2.i, label %if.done12.i.i, !dbg !3217

if.done.i2.i:                                     ; preds = %switch.body9.i.i
    #dbg_value(double %y.tr44.i, !3240, !DIExpression(), !3303)
    #dbg_value(double %y.tr44.i, !3254, !DIExpression(), !3304)
    #dbg_value(double %y.tr44.i, !3262, !DIExpression(), !3306)
  %19 = tail call double @llvm.trunc.f64(double %y.tr44.i), !dbg !3306
    #dbg_value(double %19, !3258, !DIExpression(), !3308)
    #dbg_value(double poison, !1800, !DIExpression(), !3309)
    #dbg_value(double %y.tr44.i, !1806, !DIExpression(), !3311)
    #dbg_value(!DIArgList(double poison, double poison), !1810, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 9223372036854775808, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !3312)
    #dbg_value(double poison, !3259, !DIExpression(), !3314)
    #dbg_value(double poison, !3243, !DIExpression(), !3315)
    #dbg_value(double poison, !3244, !DIExpression(), !3316)
  %20 = fcmp oeq double %y.tr44.i, %19, !dbg !3317
  br i1 %20, label %math.isOddInt.exit.i, label %if.done12.i.i, !dbg !3318

math.isOddInt.exit.i:                             ; preds = %if.done.i2.i
    #dbg_value(double %19, !3243, !DIExpression(), !3319)
  %abovemin.i4.i = fcmp oge double %19, 0xC3E0000000000000, !dbg !3320
  %belowmax.i5.i = fcmp ole double %19, 0x43DFFFFFFFFFFFFE, !dbg !3320
  %inbounds.i6.i = and i1 %abovemin.i4.i, %belowmax.i5.i, !dbg !3320
  %remapped.i7.i = zext i1 %abovemin.i4.i to i64, !dbg !3320
  %normal.i8.i = fptosi double %19 to i64, !dbg !3320
  %21 = select i1 %inbounds.i6.i, i64 %normal.i8.i, i64 %remapped.i7.i, !dbg !3320
  %22 = and i64 %21, 1, !dbg !3321
  %.not.i = icmp eq i64 %22, 0, !dbg !3322
  br i1 %.not.i, label %if.done12.i.i, label %math.Pow.exit, !dbg !3217

if.done12.i.i:                                    ; preds = %math.isOddInt.exit.i, %if.done.i2.i, %switch.body9.i.i
  br label %math.Pow.exit, !dbg !3323

switch.done.i.i:                                  ; preds = %switch.next49.i.i, %switch.next45.i.i, %switch.next8.i.switch.done.i_crit_edge.i
  %.pre-phi.i = phi double [ %.pre.i, %switch.next8.i.switch.done.i_crit_edge.i ], [ %75, %switch.next49.i.i ], [ %75, %switch.next45.i.i ], !dbg !3289
    #dbg_value(double %y.tr44.i, !3205, !DIExpression(), !3324)
    #dbg_value(double %y.tr44.i, !3247, !DIExpression(), !3325)
    #dbg_value(double %.pre-phi.i, !3254, !DIExpression(), !3326)
    #dbg_value(double %.pre-phi.i, !3262, !DIExpression(), !3328)
  %23 = tail call double @llvm.trunc.f64(double %.pre-phi.i), !dbg !3328
    #dbg_value(double %23, !3258, !DIExpression(), !3330)
  %24 = fsub double %.pre-phi.i, %23, !dbg !3331
    #dbg_value(double %24, !1800, !DIExpression(), !3332)
    #dbg_value(double %.pre-phi.i, !1806, !DIExpression(), !3334)
    #dbg_value(!DIArgList(double poison, double poison), !1810, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 9223372036854775808, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !3335)
  %.cast.i2.i.i.i = tail call double @llvm.fabs.f64(double %24), !dbg !3337
    #dbg_value(double %.cast.i2.i.i.i, !3259, !DIExpression(), !3338)
    #dbg_value(double %23, !3206, !DIExpression(), !3339)
    #dbg_value(double %.cast.i2.i.i.i, !3207, !DIExpression(), !3340)
  %25 = fcmp une double %24, 0.000000e+00, !dbg !3341
    #dbg_value(double %x.tr43.i, !3202, !DIExpression(), !3342)
  %26 = fcmp olt double %x.tr43.i, 0.000000e+00
  %or.cond.i.i = select i1 %25, i1 %26, i1 false, !dbg !3217
  br i1 %or.cond.i.i, label %math.Pow.exit, label %if.done15.i.i, !dbg !3217

if.done15.i.i:                                    ; preds = %switch.done.i.i
    #dbg_value(double %23, !3206, !DIExpression(), !3343)
  %27 = fcmp ult double %23, 0x43E0000000000000, !dbg !3344
  br i1 %27, label %if.done21.i.i, label %if.then16.i.i, !dbg !3217

if.then16.i.i:                                    ; preds = %if.done15.i.i
    #dbg_value(double %x.tr43.i, !3202, !DIExpression(), !3345)
  %28 = fcmp oeq double %x.tr43.i, -1.000000e+00, !dbg !3346
  br i1 %28, label %math.Pow.exit, label %switch.next18.i.i, !dbg !3217

switch.next18.i.i:                                ; preds = %if.then16.i.i
    #dbg_value(double %x.tr43.i, !3202, !DIExpression(), !3347)
    #dbg_value(double %x.tr43.i, !3247, !DIExpression(), !3348)
  %29 = tail call double @llvm.fabs.f64(double %x.tr43.i), !dbg !3350
  %30 = fcmp olt double %29, 1.000000e+00, !dbg !3351
    #dbg_value(double %y.tr44.i, !3205, !DIExpression(), !3352)
  %31 = fcmp ule double %y.tr44.i, 0.000000e+00, !dbg !3353
  %32 = xor i1 %31, %30, !dbg !3353
  %spec.select.i = select i1 %32, double 0.000000e+00, double 0x7FF0000000000000, !dbg !3217
  br label %math.Pow.exit, !dbg !3217

if.done21.i.i:                                    ; preds = %if.done15.i.i
    #dbg_value(double 1.000000e+00, !3208, !DIExpression(), !3354)
    #dbg_value(i64 0, !3209, !DIExpression(), !3355)
    #dbg_value(double %.cast.i2.i.i.i, !3207, !DIExpression(), !3356)
  br i1 %25, label %if.then22.i.i, label %if.done25.i.i, !dbg !3217

if.then22.i.i:                                    ; preds = %if.done21.i.i
    #dbg_value(double %.cast.i2.i.i.i, !3207, !DIExpression(), !3357)
  %33 = fcmp ogt double %.cast.i2.i.i.i, 5.000000e-01, !dbg !3358
  %34 = fadd double %.cast.i2.i.i.i, -1.000000e+00, !dbg !3217
  %35 = fadd double %23, 1.000000e+00, !dbg !3217
  %36 = select i1 %33, double %35, double %23, !dbg !3217
  %37 = select i1 %33, double %34, double %.cast.i2.i.i.i, !dbg !3217
    #dbg_value(double %37, !3207, !DIExpression(), !3359)
    #dbg_value(double %x.tr43.i, !3202, !DIExpression(), !3360)
    #dbg_value(double %x.tr43.i, !3361, !DIExpression(), !3365)
  %38 = tail call double @llvm.log.f64(double %x.tr43.i), !dbg !3365
  %39 = fmul double %38, %37, !dbg !3367
    #dbg_value(double %39, !3368, !DIExpression(), !3372)
  %40 = tail call double @llvm.exp.f64(double %39), !dbg !3372
    #dbg_value(double %40, !3208, !DIExpression(), !3374)
  br label %if.done25.i.i, !dbg !3217

if.done25.i.i:                                    ; preds = %if.then22.i.i, %if.done21.i.i
  %41 = phi double [ %23, %if.done21.i.i ], [ %36, %if.then22.i.i ], !dbg !3339
  %42 = phi double [ 1.000000e+00, %if.done21.i.i ], [ %40, %if.then22.i.i ], !dbg !3354
    #dbg_value(double %x.tr43.i, !3202, !DIExpression(), !3375)
    #dbg_value(double poison, !3210, !DIExpression(), !3376)
    #dbg_value(i64 poison, !3211, !DIExpression(), !3377)
    #dbg_value(double %41, !3206, !DIExpression(), !3378)
  %abovemin.i.i = fcmp oge double %41, 0xC3E0000000000000, !dbg !3379
  %belowmax.i.i = fcmp ole double %41, 0x43DFFFFFFFFFFFFE, !dbg !3379
  %inbounds.i.i = and i1 %abovemin.i.i, %belowmax.i.i, !dbg !3379
  %saturated.i.i = select i1 %abovemin.i.i, i64 9223372036854775807, i64 -9223372036854775808, !dbg !3379
  %isnan.i.i = fcmp uno double %41, 0.000000e+00, !dbg !3379
  %remapped.i.i = select i1 %isnan.i.i, i64 0, i64 %saturated.i.i, !dbg !3379
  %normal.i.i = fptosi double %41 to i64, !dbg !3379
  %43 = select i1 %inbounds.i.i, i64 %normal.i.i, i64 %remapped.i.i, !dbg !3379
    #dbg_value(i64 %43, !3212, !DIExpression(), !3380)
  %.not.i47.i = icmp eq i64 %43, 0, !dbg !3381
  br i1 %.not.i47.i, label %for.done.i.i, label %for.body.i.preheader.i, !dbg !3217

for.body.i.preheader.i:                           ; preds = %if.done25.i.i
  %44 = tail call fastcc { double, i64 } @math.Frexp(double %x.tr43.i), !dbg !3382
  %45 = extractvalue { double, i64 } %44, 1, !dbg !3382
    #dbg_value(i64 %45, !3211, !DIExpression(), !3377)
  %46 = extractvalue { double, i64 } %44, 0, !dbg !3382
    #dbg_value(double %46, !3210, !DIExpression(), !3376)
  br label %for.body.i.i, !dbg !3217

for.body.i.i:                                     ; preds = %if.done27.i.i, %for.body.i.preheader.i
  %47 = phi i64 [ %66, %if.done27.i.i ], [ %43, %for.body.i.preheader.i ]
  %48 = phi i64 [ %65, %if.done27.i.i ], [ %45, %for.body.i.preheader.i ]
  %49 = phi double [ %63, %if.done27.i.i ], [ %46, %for.body.i.preheader.i ]
  %50 = phi i64 [ %58, %if.done27.i.i ], [ 0, %for.body.i.preheader.i ]
  %51 = phi double [ %56, %if.done27.i.i ], [ %42, %for.body.i.preheader.i ]
    #dbg_value(i64 %47, !3212, !DIExpression(), !3383)
    #dbg_value(i64 %48, !3211, !DIExpression(), !3384)
  %52 = add i64 %48, -4097, !dbg !3217
  %or.cond10.i.i = icmp ult i64 %52, -8193, !dbg !3217
  br i1 %or.cond10.i.i, label %if.then26.i.i, label %if.done27.i.i, !dbg !3217

if.then26.i.i:                                    ; preds = %for.body.i.i
    #dbg_value(i64 %48, !3211, !DIExpression(), !3385)
  %53 = add i64 %50, %48, !dbg !3386
    #dbg_value(i64 %53, !3209, !DIExpression(), !3386)
  br label %for.done.i.i, !dbg !3217

if.done27.i.i:                                    ; preds = %for.body.i.i
    #dbg_value(i64 %47, !3212, !DIExpression(), !3387)
  %54 = and i64 %47, 1, !dbg !3388
  %.not5.i.i = icmp eq i64 %54, 0, !dbg !3389
  %55 = fmul double %49, %51, !dbg !3217
  %56 = select i1 %.not5.i.i, double %51, double %55, !dbg !3217
  %57 = select i1 %.not5.i.i, i64 0, i64 %48, !dbg !3217
  %58 = add i64 %57, %50, !dbg !3217
    #dbg_value(double %49, !3210, !DIExpression(), !3390)
  %59 = fmul double %49, %49, !dbg !3391
    #dbg_value(double %59, !3210, !DIExpression(), !3391)
  %60 = shl nsw i64 %48, 1, !dbg !3392
    #dbg_value(i64 %60, !3211, !DIExpression(), !3392)
  %61 = fcmp olt double %59, 5.000000e-01, !dbg !3393
  %62 = fadd double %59, %59, !dbg !3217
  %63 = select i1 %61, double %62, double %59, !dbg !3217
  %64 = sext i1 %61 to i64, !dbg !3217
  %65 = add nsw i64 %60, %64, !dbg !3217
  %66 = ashr i64 %47, 1, !dbg !3394
    #dbg_value(i64 %66, !3212, !DIExpression(), !3383)
  %.not.i.i = icmp ult i64 %47, 2, !dbg !3381
  br i1 %.not.i.i, label %for.done.i.i, label %for.body.i.i, !dbg !3217

for.done.i.i:                                     ; preds = %if.done27.i.i, %if.then26.i.i, %if.done25.i.i
  %67 = phi double [ %51, %if.then26.i.i ], [ %42, %if.done25.i.i ], [ %56, %if.done27.i.i ]
  %68 = phi i64 [ %53, %if.then26.i.i ], [ 0, %if.done25.i.i ], [ %58, %if.done27.i.i ], !dbg !3355
    #dbg_value(double %y.tr44.i, !3205, !DIExpression(), !3395)
  %69 = fcmp olt double %y.tr44.i, 0.000000e+00, !dbg !3396
  br i1 %69, label %if.then32.i.i, label %if.done33.i.i, !dbg !3217

if.then32.i.i:                                    ; preds = %for.done.i.i
    #dbg_value(double %67, !3208, !DIExpression(), !3397)
  %70 = fdiv double 1.000000e+00, %67, !dbg !3398
    #dbg_value(double %70, !3208, !DIExpression(), !3399)
    #dbg_value(i64 %68, !3209, !DIExpression(), !3400)
  %71 = sub i64 0, %68, !dbg !3401
    #dbg_value(i64 %71, !3209, !DIExpression(), !3402)
  br label %if.done33.i.i, !dbg !3217

if.done33.i.i:                                    ; preds = %if.then32.i.i, %for.done.i.i
  %72 = phi double [ %67, %for.done.i.i ], [ %70, %if.then32.i.i ], !dbg !3354
  %73 = phi i64 [ %68, %for.done.i.i ], [ %71, %if.then32.i.i ], !dbg !3355
    #dbg_value(double %72, !3208, !DIExpression(), !3403)
    #dbg_value(i64 %73, !3209, !DIExpression(), !3404)
  %74 = tail call fastcc double @math.Ldexp(double %72, i64 %73), !dbg !3405
  br label %math.Pow.exit, !dbg !3406

switch.next34.i.i:                                ; preds = %switch.next5.i.i
    #dbg_value(double %y.tr44.i, !3205, !DIExpression(), !3407)
    #dbg_value(double %y.tr44.i, !1760, !DIExpression(), !3408)
    #dbg_value(i64 0, !1764, !DIExpression(), !3410)
  %75 = tail call double @llvm.fabs.f64(double %y.tr44.i), !dbg !3411
    #dbg_value(double %75, !1760, !DIExpression(), !3412)
  %76 = fcmp ogt double %75, 0x7FEFFFFFFFFFFFFF, !dbg !3413
  br i1 %76, label %switch.body35.i.i, label %switch.next40.i.i, !dbg !3217

switch.body35.i.i:                                ; preds = %switch.next34.i.i
    #dbg_value(double %x.tr43.i, !3202, !DIExpression(), !3414)
  %77 = fcmp oeq double %x.tr43.i, -1.000000e+00, !dbg !3415
  br i1 %77, label %math.Pow.exit, label %switch.next37.i.i, !dbg !3217

switch.next37.i.i:                                ; preds = %switch.body35.i.i
    #dbg_value(double %x.tr43.i, !3202, !DIExpression(), !3416)
    #dbg_value(double %x.tr43.i, !3247, !DIExpression(), !3417)
  %78 = tail call double @llvm.fabs.f64(double %x.tr43.i), !dbg !3419
    #dbg_value(double %y.tr44.i, !3205, !DIExpression(), !3420)
    #dbg_value(i64 1, !1764, !DIExpression(), !3421)
    #dbg_value(double %y.tr44.i, !1760, !DIExpression(), !3423)
  %79 = fcmp ogt double %y.tr44.i, 0x7FEFFFFFFFFFFFFF, !dbg !3424
  %80 = fcmp uge double %78, 1.000000e+00, !dbg !3425
  %81 = xor i1 %79, %80, !dbg !3425
  %spec.select25.i = select i1 %81, double 0.000000e+00, double 0x7FF0000000000000, !dbg !3217
  br label %math.Pow.exit, !dbg !3217

switch.next40.i.i:                                ; preds = %switch.next34.i.i
    #dbg_value(double %x.tr43.i, !3202, !DIExpression(), !3426)
    #dbg_value(double %x.tr43.i, !1760, !DIExpression(), !3427)
    #dbg_value(i64 0, !1764, !DIExpression(), !3429)
  %82 = tail call double @llvm.fabs.f64(double %x.tr43.i), !dbg !3430
    #dbg_value(double %82, !1760, !DIExpression(), !3431)
  %83 = fcmp ogt double %82, 0x7FEFFFFFFFFFFFFF, !dbg !3432
  br i1 %83, label %switch.body41.i.i, label %switch.next47.i.i, !dbg !3217

switch.body41.i.i:                                ; preds = %switch.next40.i.i
    #dbg_value(double %x.tr43.i, !3202, !DIExpression(), !3433)
    #dbg_value(i64 -1, !1764, !DIExpression(), !3434)
    #dbg_value(double poison, !1760, !DIExpression(), !3436)
  %84 = fcmp olt double %x.tr43.i, 0xFFEFFFFFFFFFFFFF, !dbg !3437
  br i1 %84, label %if.then42.i.i, label %if.done43.i.i, !dbg !3217

if.then42.i.i:                                    ; preds = %switch.body41.i.i
    #dbg_value(double %x.tr43.i, !3202, !DIExpression(), !3438)
  %85 = fdiv double 1.000000e+00, %x.tr43.i, !dbg !3439
    #dbg_value(double %y.tr44.i, !3205, !DIExpression(), !3440)
  %86 = fneg double %y.tr44.i, !dbg !3441
    #dbg_value(double %85, !3194, !DIExpression(), !3199)
    #dbg_value(double %86, !3198, !DIExpression(), !3201)
    #dbg_value(double %85, !3202, !DIExpression(), !3213)
    #dbg_value(double %86, !3205, !DIExpression(), !3215)
  %87 = fcmp oeq double %y.tr44.i, 0.000000e+00, !dbg !3216
  %88 = fcmp oeq double %85, 1.000000e+00, !dbg !3217
  %89 = select i1 %87, i1 true, i1 %88, !dbg !3217
  br i1 %89, label %math.Pow.exit, label %switch.next.i.i, !dbg !3217

if.done43.i.i:                                    ; preds = %switch.body41.i.i
    #dbg_value(double %y.tr44.i, !3205, !DIExpression(), !3442)
  %90 = fcmp olt double %y.tr44.i, 0.000000e+00, !dbg !3443
  br i1 %90, label %math.Pow.exit, label %switch.next45.i.i, !dbg !3217

switch.next45.i.i:                                ; preds = %if.done43.i.i
    #dbg_value(double %y.tr44.i, !3205, !DIExpression(), !3444)
  %91 = fcmp ogt double %y.tr44.i, 0.000000e+00, !dbg !3445
  br i1 %91, label %math.Pow.exit, label %switch.done.i.i, !dbg !3217

switch.next47.i.i:                                ; preds = %switch.next40.i.i
    #dbg_value(double %y.tr44.i, !3205, !DIExpression(), !3446)
  %92 = fcmp oeq double %y.tr44.i, 5.000000e-01, !dbg !3447
  br i1 %92, label %switch.body48.i.i, label %switch.next49.i.i, !dbg !3217

switch.body48.i.i:                                ; preds = %switch.next47.i.i
    #dbg_value(double %x.tr43.i, !3202, !DIExpression(), !3448)
    #dbg_value(double %x.tr43.i, !3449, !DIExpression(), !3453)
  %93 = tail call double @llvm.sqrt.f64(double %x.tr43.i), !dbg !3453
  br label %math.Pow.exit, !dbg !3455

switch.next49.i.i:                                ; preds = %switch.next47.i.i
    #dbg_value(double %y.tr44.i, !3205, !DIExpression(), !3456)
  %94 = fcmp oeq double %y.tr44.i, -5.000000e-01, !dbg !3457
  br i1 %94, label %switch.body50.i.i, label %switch.done.i.i, !dbg !3217

switch.body50.i.i:                                ; preds = %switch.next49.i.i
    #dbg_value(double %x.tr43.i, !3202, !DIExpression(), !3458)
    #dbg_value(double %x.tr43.i, !3449, !DIExpression(), !3459)
  %95 = tail call double @llvm.sqrt.f64(double %x.tr43.i), !dbg !3459
  %96 = fdiv double 1.000000e+00, %95, !dbg !3461
  br label %math.Pow.exit, !dbg !3462

math.Pow.exit:                                    ; preds = %switch.next.i.i, %switch.next2.i.i, %if.then42.i.i, %entry, %math.isOddInt.exit18.i, %if.done.i.i, %math.isOddInt.exit.i, %if.done12.i.i, %switch.done.i.i, %if.then16.i.i, %switch.next18.i.i, %if.done33.i.i, %switch.body35.i.i, %switch.next37.i.i, %if.done43.i.i, %switch.next45.i.i, %switch.body48.i.i, %switch.body50.i.i
  %common.ret.op.i.i = phi double [ 0x7FF0000000000000, %if.done.i.i ], [ 0.000000e+00, %if.done12.i.i ], [ %74, %if.done33.i.i ], [ %93, %switch.body48.i.i ], [ %96, %switch.body50.i.i ], [ %x.tr43.i, %math.isOddInt.exit.i ], [ 1.000000e+00, %if.then16.i.i ], [ 1.000000e+00, %switch.body35.i.i ], [ 0.000000e+00, %if.done43.i.i ], [ 0xFFF0000000000000, %math.isOddInt.exit18.i ], [ 0x7FF8000000000001, %switch.done.i.i ], [ 0x7FF0000000000000, %switch.next45.i.i ], [ %spec.select.i, %switch.next18.i.i ], [ %spec.select25.i, %switch.next37.i.i ], [ 1.000000e+00, %entry ], [ 0x7FF8000000000001, %switch.next2.i.i ], [ 1.000000e+00, %if.then42.i.i ], [ %x.tr43.i, %switch.next.i.i ]
  %97 = and i64 %k, 1, !dbg !3463
  %.not = icmp eq i64 %97, 0, !dbg !3463
    #dbg_value(i64 poison, !3189, !DIExpression(), !3464)
    #dbg_value(i64 %n, !3187, !DIExpression(), !3465)
  %98 = sub i64 1, %n, !dbg !3466
  %99 = select i1 %.not, i64 %0, i64 %98, !dbg !3466
  %100 = sitofp i64 %99 to double, !dbg !3467
  %101 = fadd double %common.ret.op.i.i, %100, !dbg !3468
  %102 = sitofp i64 %n to double, !dbg !3469
  %103 = fdiv double %101, %102, !dbg !3470
  %abovemin = fcmp oge double %103, 0xC3E0000000000000, !dbg !3471
  %belowmax = fcmp ole double %103, 0x43DFFFFFFFFFFFFE, !dbg !3471
  %inbounds = and i1 %abovemin, %belowmax, !dbg !3471
  %saturated = select i1 %abovemin, i64 9223372036854775807, i64 -9223372036854775808, !dbg !3471
  %isnan = fcmp uno double %103, 0.000000e+00, !dbg !3471
  %remapped = select i1 %isnan, i64 0, i64 %saturated, !dbg !3471
  %normal = fptosi double %103 to i64, !dbg !3471
  %104 = select i1 %inbounds, i64 %normal, i64 %remapped, !dbg !3471
  ret i64 %104, !dbg !3472
}
