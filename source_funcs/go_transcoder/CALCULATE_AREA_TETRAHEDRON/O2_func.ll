define double @f_gold(i64 %side) local_unnamed_addr #12 !dbg !3182 {
entry:
    #dbg_value(i64 %side, !3185, !DIExpression(), !3187)
    #dbg_value(double poison, !3188, !DIExpression(), !3193)
    #dbg_value(double 3.000000e+00, !3192, !DIExpression(), !3195)
    #dbg_value(double poison, !3196, !DIExpression(), !3207)
    #dbg_value(double 3.000000e+00, !3199, !DIExpression(), !3209)
  %0 = icmp eq i64 %side, 1, !dbg !3210
  br i1 %0, label %math.Pow.exit, label %switch.next.i.i.preheader, !dbg !3210

switch.next.i.i.preheader:                        ; preds = %entry
  %1 = sitofp i64 %side to double, !dbg !3211
    #dbg_value(double %1, !3188, !DIExpression(), !3193)
    #dbg_value(double %1, !3196, !DIExpression(), !3207)
  br label %switch.next.i.i, !dbg !3210

switch.next.i.i:                                  ; preds = %switch.next.i.i.preheader, %if.then42.i.i
  %y.tr44.i = phi double [ %82, %if.then42.i.i ], [ 3.000000e+00, %switch.next.i.i.preheader ]
  %x.tr43.i = phi double [ %81, %if.then42.i.i ], [ %1, %switch.next.i.i.preheader ]
    #dbg_value(double %y.tr44.i, !3192, !DIExpression(), !3195)
    #dbg_value(double %x.tr43.i, !3188, !DIExpression(), !3193)
    #dbg_value(double %y.tr44.i, !3199, !DIExpression(), !3212)
  %2 = fcmp oeq double %y.tr44.i, 1.000000e+00, !dbg !3213
  br i1 %2, label %math.Pow.exit, label %switch.next2.i.i, !dbg !3210

switch.next2.i.i:                                 ; preds = %switch.next.i.i
    #dbg_value(double %x.tr43.i, !3196, !DIExpression(), !3214)
    #dbg_value(double %y.tr44.i, !3199, !DIExpression(), !3215)
  %or.cond26.i = fcmp uno double %x.tr43.i, %y.tr44.i, !dbg !3210
  br i1 %or.cond26.i, label %math.Pow.exit, label %switch.next5.i.i, !dbg !3210

switch.next5.i.i:                                 ; preds = %switch.next2.i.i
    #dbg_value(double %x.tr43.i, !3196, !DIExpression(), !3216)
  %3 = fcmp oeq double %x.tr43.i, 0.000000e+00, !dbg !3217
  br i1 %3, label %switch.body6.i.i, label %switch.next34.i.i, !dbg !3210

switch.body6.i.i:                                 ; preds = %switch.next5.i.i
    #dbg_value(double %y.tr44.i, !3199, !DIExpression(), !3218)
  %4 = fcmp olt double %y.tr44.i, 0.000000e+00, !dbg !3219
  br i1 %4, label %switch.body7.i.i, label %switch.next8.i.i, !dbg !3210

switch.body7.i.i:                                 ; preds = %switch.body6.i.i
    #dbg_value(double %x.tr43.i, !3196, !DIExpression(), !3220)
    #dbg_value(double %x.tr43.i, !3221, !DIExpression(), !3225)
    #dbg_value(double %x.tr43.i, !1785, !DIExpression(), !3227)
  %.cast.i.i19.i = bitcast double %x.tr43.i to i64, !dbg !3229
  %5 = icmp slt i64 %.cast.i.i19.i, 0, !dbg !3230
    #dbg_value(double %y.tr44.i, !3199, !DIExpression(), !3231)
    #dbg_value(double %y.tr44.i, !3232, !DIExpression(), !3237)
    #dbg_value(double %y.tr44.i, !3239, !DIExpression(), !3243)
  %6 = tail call double @llvm.fabs.f64(double %y.tr44.i)
  %7 = fcmp ult double %6, 0x4340000000000000
  %or.cond.i = and i1 %7, %5, !dbg !3210
  br i1 %or.cond.i, label %if.done.i10.i, label %if.done.i.i, !dbg !3210

if.done.i10.i:                                    ; preds = %switch.body7.i.i
    #dbg_value(double %y.tr44.i, !3232, !DIExpression(), !3245)
    #dbg_value(double %y.tr44.i, !3246, !DIExpression(), !3252)
    #dbg_value(double %y.tr44.i, !3254, !DIExpression(), !3258)
  %8 = tail call double @llvm.trunc.f64(double %y.tr44.i), !dbg !3258
    #dbg_value(double %8, !3250, !DIExpression(), !3260)
    #dbg_value(double poison, !1800, !DIExpression(), !3261)
    #dbg_value(double %y.tr44.i, !1806, !DIExpression(), !3263)
    #dbg_value(!DIArgList(double poison, double poison), !1810, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 9223372036854775808, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !3264)
    #dbg_value(double poison, !3251, !DIExpression(), !3266)
    #dbg_value(double poison, !3235, !DIExpression(), !3267)
    #dbg_value(double poison, !3236, !DIExpression(), !3268)
  %9 = fcmp oeq double %y.tr44.i, %8, !dbg !3269
  br i1 %9, label %math.isOddInt.exit18.i, label %if.done.i.i, !dbg !3270

math.isOddInt.exit18.i:                           ; preds = %if.done.i10.i
    #dbg_value(double %8, !3235, !DIExpression(), !3271)
  %abovemin.i13.i = fcmp oge double %8, 0xC3E0000000000000, !dbg !3272
  %belowmax.i14.i = fcmp ole double %8, 0x43DFFFFFFFFFFFFE, !dbg !3272
  %inbounds.i15.i = and i1 %abovemin.i13.i, %belowmax.i14.i, !dbg !3272
  %remapped.i16.i = zext i1 %abovemin.i13.i to i64, !dbg !3272
  %normal.i17.i = fptosi double %8 to i64, !dbg !3272
  %10 = select i1 %inbounds.i15.i, i64 %normal.i17.i, i64 %remapped.i16.i, !dbg !3272
  %11 = and i64 %10, 1, !dbg !3273
  %.not27.i = icmp eq i64 %11, 0, !dbg !3274
  br i1 %.not27.i, label %if.done.i.i, label %math.Pow.exit, !dbg !3210

if.done.i.i:                                      ; preds = %math.isOddInt.exit18.i, %if.done.i10.i, %switch.body7.i.i
    #dbg_value(i64 9218868437227405312, !1810, !DIExpression(), !3275)
  br label %math.Pow.exit, !dbg !3278

switch.next8.i.i:                                 ; preds = %switch.body6.i.i
    #dbg_value(double %y.tr44.i, !3199, !DIExpression(), !3279)
  %12 = fcmp ogt double %y.tr44.i, 0.000000e+00, !dbg !3280
  br i1 %12, label %switch.body9.i.i, label %switch.next8.i.switch.done.i_crit_edge.i, !dbg !3210

switch.next8.i.switch.done.i_crit_edge.i:         ; preds = %switch.next8.i.i
  %.pre.i = tail call double @llvm.fabs.f64(double %y.tr44.i), !dbg !3281
  br label %switch.done.i.i, !dbg !3210

switch.body9.i.i:                                 ; preds = %switch.next8.i.i
    #dbg_value(double %x.tr43.i, !3196, !DIExpression(), !3283)
    #dbg_value(double %x.tr43.i, !3221, !DIExpression(), !3284)
    #dbg_value(double %x.tr43.i, !1785, !DIExpression(), !3286)
  %.cast.i.i.i = bitcast double %x.tr43.i to i64, !dbg !3288
  %13 = icmp slt i64 %.cast.i.i.i, 0, !dbg !3289
    #dbg_value(double %y.tr44.i, !3199, !DIExpression(), !3290)
    #dbg_value(double %y.tr44.i, !3232, !DIExpression(), !3291)
    #dbg_value(double %y.tr44.i, !3239, !DIExpression(), !3293)
  %14 = fcmp ult double %y.tr44.i, 0x4340000000000000
  %or.cond24.i = and i1 %14, %13, !dbg !3210
  br i1 %or.cond24.i, label %if.done.i2.i, label %if.done12.i.i, !dbg !3210

if.done.i2.i:                                     ; preds = %switch.body9.i.i
    #dbg_value(double %y.tr44.i, !3232, !DIExpression(), !3295)
    #dbg_value(double %y.tr44.i, !3246, !DIExpression(), !3296)
    #dbg_value(double %y.tr44.i, !3254, !DIExpression(), !3298)
  %15 = tail call double @llvm.trunc.f64(double %y.tr44.i), !dbg !3298
    #dbg_value(double %15, !3250, !DIExpression(), !3300)
    #dbg_value(double poison, !1800, !DIExpression(), !3301)
    #dbg_value(double %y.tr44.i, !1806, !DIExpression(), !3303)
    #dbg_value(!DIArgList(double poison, double poison), !1810, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 9223372036854775808, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !3304)
    #dbg_value(double poison, !3251, !DIExpression(), !3306)
    #dbg_value(double poison, !3235, !DIExpression(), !3307)
    #dbg_value(double poison, !3236, !DIExpression(), !3308)
  %16 = fcmp oeq double %y.tr44.i, %15, !dbg !3309
  br i1 %16, label %math.isOddInt.exit.i, label %if.done12.i.i, !dbg !3310

math.isOddInt.exit.i:                             ; preds = %if.done.i2.i
    #dbg_value(double %15, !3235, !DIExpression(), !3311)
  %abovemin.i4.i = fcmp oge double %15, 0xC3E0000000000000, !dbg !3312
  %belowmax.i5.i = fcmp ole double %15, 0x43DFFFFFFFFFFFFE, !dbg !3312
  %inbounds.i6.i = and i1 %abovemin.i4.i, %belowmax.i5.i, !dbg !3312
  %remapped.i7.i = zext i1 %abovemin.i4.i to i64, !dbg !3312
  %normal.i8.i = fptosi double %15 to i64, !dbg !3312
  %17 = select i1 %inbounds.i6.i, i64 %normal.i8.i, i64 %remapped.i7.i, !dbg !3312
  %18 = and i64 %17, 1, !dbg !3313
  %.not.i = icmp eq i64 %18, 0, !dbg !3314
  br i1 %.not.i, label %if.done12.i.i, label %math.Pow.exit, !dbg !3210

if.done12.i.i:                                    ; preds = %math.isOddInt.exit.i, %if.done.i2.i, %switch.body9.i.i
  br label %math.Pow.exit, !dbg !3315

switch.done.i.i:                                  ; preds = %switch.next49.i.i, %switch.next45.i.i, %switch.next8.i.switch.done.i_crit_edge.i
  %.pre-phi.i = phi double [ %.pre.i, %switch.next8.i.switch.done.i_crit_edge.i ], [ %71, %switch.next49.i.i ], [ %71, %switch.next45.i.i ], !dbg !3281
    #dbg_value(double %y.tr44.i, !3199, !DIExpression(), !3316)
    #dbg_value(double %y.tr44.i, !3239, !DIExpression(), !3317)
    #dbg_value(double %.pre-phi.i, !3246, !DIExpression(), !3318)
    #dbg_value(double %.pre-phi.i, !3254, !DIExpression(), !3320)
  %19 = tail call double @llvm.trunc.f64(double %.pre-phi.i), !dbg !3320
    #dbg_value(double %19, !3250, !DIExpression(), !3322)
  %20 = fsub double %.pre-phi.i, %19, !dbg !3323
    #dbg_value(double %20, !1800, !DIExpression(), !3324)
    #dbg_value(double %.pre-phi.i, !1806, !DIExpression(), !3326)
    #dbg_value(!DIArgList(double poison, double poison), !1810, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 9223372036854775808, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !3327)
  %.cast.i2.i.i.i = tail call double @llvm.fabs.f64(double %20), !dbg !3329
    #dbg_value(double %.cast.i2.i.i.i, !3251, !DIExpression(), !3330)
    #dbg_value(double %19, !3200, !DIExpression(), !3331)
    #dbg_value(double %.cast.i2.i.i.i, !3201, !DIExpression(), !3332)
  %21 = fcmp une double %20, 0.000000e+00, !dbg !3333
    #dbg_value(double %x.tr43.i, !3196, !DIExpression(), !3334)
  %22 = fcmp olt double %x.tr43.i, 0.000000e+00
  %or.cond.i.i = select i1 %21, i1 %22, i1 false, !dbg !3210
  br i1 %or.cond.i.i, label %math.Pow.exit, label %if.done15.i.i, !dbg !3210

if.done15.i.i:                                    ; preds = %switch.done.i.i
    #dbg_value(double %19, !3200, !DIExpression(), !3335)
  %23 = fcmp ult double %19, 0x43E0000000000000, !dbg !3336
  br i1 %23, label %if.done21.i.i, label %if.then16.i.i, !dbg !3210

if.then16.i.i:                                    ; preds = %if.done15.i.i
    #dbg_value(double %x.tr43.i, !3196, !DIExpression(), !3337)
  %24 = fcmp oeq double %x.tr43.i, -1.000000e+00, !dbg !3338
  br i1 %24, label %math.Pow.exit, label %switch.next18.i.i, !dbg !3210

switch.next18.i.i:                                ; preds = %if.then16.i.i
    #dbg_value(double %x.tr43.i, !3196, !DIExpression(), !3339)
    #dbg_value(double %x.tr43.i, !3239, !DIExpression(), !3340)
  %25 = tail call double @llvm.fabs.f64(double %x.tr43.i), !dbg !3342
  %26 = fcmp olt double %25, 1.000000e+00, !dbg !3343
    #dbg_value(double %y.tr44.i, !3199, !DIExpression(), !3344)
  %27 = fcmp ule double %y.tr44.i, 0.000000e+00, !dbg !3345
  %28 = xor i1 %27, %26, !dbg !3345
  %spec.select.i = select i1 %28, double 0.000000e+00, double 0x7FF0000000000000, !dbg !3210
  br label %math.Pow.exit, !dbg !3210

if.done21.i.i:                                    ; preds = %if.done15.i.i
    #dbg_value(double 1.000000e+00, !3202, !DIExpression(), !3346)
    #dbg_value(i64 0, !3203, !DIExpression(), !3347)
    #dbg_value(double %.cast.i2.i.i.i, !3201, !DIExpression(), !3348)
  br i1 %21, label %if.then22.i.i, label %if.done25.i.i, !dbg !3210

if.then22.i.i:                                    ; preds = %if.done21.i.i
    #dbg_value(double %.cast.i2.i.i.i, !3201, !DIExpression(), !3349)
  %29 = fcmp ogt double %.cast.i2.i.i.i, 5.000000e-01, !dbg !3350
  %30 = fadd double %.cast.i2.i.i.i, -1.000000e+00, !dbg !3210
  %31 = fadd double %19, 1.000000e+00, !dbg !3210
  %32 = select i1 %29, double %31, double %19, !dbg !3210
  %33 = select i1 %29, double %30, double %.cast.i2.i.i.i, !dbg !3210
    #dbg_value(double %33, !3201, !DIExpression(), !3351)
    #dbg_value(double %x.tr43.i, !3196, !DIExpression(), !3352)
    #dbg_value(double %x.tr43.i, !3353, !DIExpression(), !3357)
  %34 = tail call double @llvm.log.f64(double %x.tr43.i), !dbg !3357
  %35 = fmul double %34, %33, !dbg !3359
    #dbg_value(double %35, !3360, !DIExpression(), !3364)
  %36 = tail call double @llvm.exp.f64(double %35), !dbg !3364
    #dbg_value(double %36, !3202, !DIExpression(), !3366)
  br label %if.done25.i.i, !dbg !3210

if.done25.i.i:                                    ; preds = %if.then22.i.i, %if.done21.i.i
  %37 = phi double [ %19, %if.done21.i.i ], [ %32, %if.then22.i.i ], !dbg !3331
  %38 = phi double [ 1.000000e+00, %if.done21.i.i ], [ %36, %if.then22.i.i ], !dbg !3346
    #dbg_value(double %x.tr43.i, !3196, !DIExpression(), !3367)
    #dbg_value(double poison, !3204, !DIExpression(), !3368)
    #dbg_value(i64 poison, !3205, !DIExpression(), !3369)
    #dbg_value(double %37, !3200, !DIExpression(), !3370)
  %abovemin.i.i = fcmp oge double %37, 0xC3E0000000000000, !dbg !3371
  %belowmax.i.i = fcmp ole double %37, 0x43DFFFFFFFFFFFFE, !dbg !3371
  %inbounds.i.i = and i1 %abovemin.i.i, %belowmax.i.i, !dbg !3371
  %saturated.i.i = select i1 %abovemin.i.i, i64 9223372036854775807, i64 -9223372036854775808, !dbg !3371
  %isnan.i.i = fcmp uno double %37, 0.000000e+00, !dbg !3371
  %remapped.i.i = select i1 %isnan.i.i, i64 0, i64 %saturated.i.i, !dbg !3371
  %normal.i.i = fptosi double %37 to i64, !dbg !3371
  %39 = select i1 %inbounds.i.i, i64 %normal.i.i, i64 %remapped.i.i, !dbg !3371
    #dbg_value(i64 %39, !3206, !DIExpression(), !3372)
  %.not.i47.i = icmp eq i64 %39, 0, !dbg !3373
  br i1 %.not.i47.i, label %for.done.i.i, label %for.body.i.preheader.i, !dbg !3210

for.body.i.preheader.i:                           ; preds = %if.done25.i.i
  %40 = tail call fastcc { double, i64 } @math.Frexp(double %x.tr43.i), !dbg !3374
  %41 = extractvalue { double, i64 } %40, 1, !dbg !3374
    #dbg_value(i64 %41, !3205, !DIExpression(), !3369)
  %42 = extractvalue { double, i64 } %40, 0, !dbg !3374
    #dbg_value(double %42, !3204, !DIExpression(), !3368)
  br label %for.body.i.i, !dbg !3210

for.body.i.i:                                     ; preds = %if.done27.i.i, %for.body.i.preheader.i
  %43 = phi i64 [ %62, %if.done27.i.i ], [ %39, %for.body.i.preheader.i ]
  %44 = phi i64 [ %61, %if.done27.i.i ], [ %41, %for.body.i.preheader.i ]
  %45 = phi double [ %59, %if.done27.i.i ], [ %42, %for.body.i.preheader.i ]
  %46 = phi i64 [ %54, %if.done27.i.i ], [ 0, %for.body.i.preheader.i ]
  %47 = phi double [ %52, %if.done27.i.i ], [ %38, %for.body.i.preheader.i ]
    #dbg_value(i64 %43, !3206, !DIExpression(), !3375)
    #dbg_value(i64 %44, !3205, !DIExpression(), !3376)
  %48 = add i64 %44, -4097, !dbg !3210
  %or.cond10.i.i = icmp ult i64 %48, -8193, !dbg !3210
  br i1 %or.cond10.i.i, label %if.then26.i.i, label %if.done27.i.i, !dbg !3210

if.then26.i.i:                                    ; preds = %for.body.i.i
    #dbg_value(i64 %44, !3205, !DIExpression(), !3377)
  %49 = add i64 %46, %44, !dbg !3378
    #dbg_value(i64 %49, !3203, !DIExpression(), !3378)
  br label %for.done.i.i, !dbg !3210

if.done27.i.i:                                    ; preds = %for.body.i.i
    #dbg_value(i64 %43, !3206, !DIExpression(), !3379)
  %50 = and i64 %43, 1, !dbg !3380
  %.not5.i.i = icmp eq i64 %50, 0, !dbg !3381
  %51 = fmul double %45, %47, !dbg !3210
  %52 = select i1 %.not5.i.i, double %47, double %51, !dbg !3210
  %53 = select i1 %.not5.i.i, i64 0, i64 %44, !dbg !3210
  %54 = add i64 %53, %46, !dbg !3210
    #dbg_value(double %45, !3204, !DIExpression(), !3382)
  %55 = fmul double %45, %45, !dbg !3383
    #dbg_value(double %55, !3204, !DIExpression(), !3383)
  %56 = shl nsw i64 %44, 1, !dbg !3384
    #dbg_value(i64 %56, !3205, !DIExpression(), !3384)
  %57 = fcmp olt double %55, 5.000000e-01, !dbg !3385
  %58 = fadd double %55, %55, !dbg !3210
  %59 = select i1 %57, double %58, double %55, !dbg !3210
  %60 = sext i1 %57 to i64, !dbg !3210
  %61 = add nsw i64 %56, %60, !dbg !3210
  %62 = ashr i64 %43, 1, !dbg !3386
    #dbg_value(i64 %62, !3206, !DIExpression(), !3375)
  %.not.i.i = icmp ult i64 %43, 2, !dbg !3373
  br i1 %.not.i.i, label %for.done.i.i, label %for.body.i.i, !dbg !3210

for.done.i.i:                                     ; preds = %if.done27.i.i, %if.then26.i.i, %if.done25.i.i
  %63 = phi double [ %47, %if.then26.i.i ], [ %38, %if.done25.i.i ], [ %52, %if.done27.i.i ]
  %64 = phi i64 [ %49, %if.then26.i.i ], [ 0, %if.done25.i.i ], [ %54, %if.done27.i.i ], !dbg !3347
    #dbg_value(double %y.tr44.i, !3199, !DIExpression(), !3387)
  %65 = fcmp olt double %y.tr44.i, 0.000000e+00, !dbg !3388
  br i1 %65, label %if.then32.i.i, label %if.done33.i.i, !dbg !3210

if.then32.i.i:                                    ; preds = %for.done.i.i
    #dbg_value(double %63, !3202, !DIExpression(), !3389)
  %66 = fdiv double 1.000000e+00, %63, !dbg !3390
    #dbg_value(double %66, !3202, !DIExpression(), !3391)
    #dbg_value(i64 %64, !3203, !DIExpression(), !3392)
  %67 = sub i64 0, %64, !dbg !3393
    #dbg_value(i64 %67, !3203, !DIExpression(), !3394)
  br label %if.done33.i.i, !dbg !3210

if.done33.i.i:                                    ; preds = %if.then32.i.i, %for.done.i.i
  %68 = phi double [ %63, %for.done.i.i ], [ %66, %if.then32.i.i ], !dbg !3346
  %69 = phi i64 [ %64, %for.done.i.i ], [ %67, %if.then32.i.i ], !dbg !3347
    #dbg_value(double %68, !3202, !DIExpression(), !3395)
    #dbg_value(i64 %69, !3203, !DIExpression(), !3396)
  %70 = tail call fastcc double @math.Ldexp(double %68, i64 %69), !dbg !3397
  br label %math.Pow.exit, !dbg !3398

switch.next34.i.i:                                ; preds = %switch.next5.i.i
    #dbg_value(double %y.tr44.i, !3199, !DIExpression(), !3399)
    #dbg_value(double %y.tr44.i, !1760, !DIExpression(), !3400)
    #dbg_value(i64 0, !1764, !DIExpression(), !3402)
  %71 = tail call double @llvm.fabs.f64(double %y.tr44.i), !dbg !3403
    #dbg_value(double %71, !1760, !DIExpression(), !3404)
  %72 = fcmp ogt double %71, 0x7FEFFFFFFFFFFFFF, !dbg !3405
  br i1 %72, label %switch.body35.i.i, label %switch.next40.i.i, !dbg !3210

switch.body35.i.i:                                ; preds = %switch.next34.i.i
    #dbg_value(double %x.tr43.i, !3196, !DIExpression(), !3406)
  %73 = fcmp oeq double %x.tr43.i, -1.000000e+00, !dbg !3407
  br i1 %73, label %math.Pow.exit, label %switch.next37.i.i, !dbg !3210

switch.next37.i.i:                                ; preds = %switch.body35.i.i
    #dbg_value(double %x.tr43.i, !3196, !DIExpression(), !3408)
    #dbg_value(double %x.tr43.i, !3239, !DIExpression(), !3409)
  %74 = tail call double @llvm.fabs.f64(double %x.tr43.i), !dbg !3411
    #dbg_value(double %y.tr44.i, !3199, !DIExpression(), !3412)
    #dbg_value(i64 1, !1764, !DIExpression(), !3413)
    #dbg_value(double %y.tr44.i, !1760, !DIExpression(), !3415)
  %75 = fcmp ogt double %y.tr44.i, 0x7FEFFFFFFFFFFFFF, !dbg !3416
  %76 = fcmp uge double %74, 1.000000e+00, !dbg !3417
  %77 = xor i1 %75, %76, !dbg !3417
  %spec.select25.i = select i1 %77, double 0.000000e+00, double 0x7FF0000000000000, !dbg !3210
  br label %math.Pow.exit, !dbg !3210

switch.next40.i.i:                                ; preds = %switch.next34.i.i
    #dbg_value(double %x.tr43.i, !3196, !DIExpression(), !3418)
    #dbg_value(double %x.tr43.i, !1760, !DIExpression(), !3419)
    #dbg_value(i64 0, !1764, !DIExpression(), !3421)
  %78 = tail call double @llvm.fabs.f64(double %x.tr43.i), !dbg !3422
    #dbg_value(double %78, !1760, !DIExpression(), !3423)
  %79 = fcmp ogt double %78, 0x7FEFFFFFFFFFFFFF, !dbg !3424
  br i1 %79, label %switch.body41.i.i, label %switch.next47.i.i, !dbg !3210

switch.body41.i.i:                                ; preds = %switch.next40.i.i
    #dbg_value(double %x.tr43.i, !3196, !DIExpression(), !3425)
    #dbg_value(i64 -1, !1764, !DIExpression(), !3426)
    #dbg_value(double poison, !1760, !DIExpression(), !3428)
  %80 = fcmp olt double %x.tr43.i, 0xFFEFFFFFFFFFFFFF, !dbg !3429
  br i1 %80, label %if.then42.i.i, label %if.done43.i.i, !dbg !3210

if.then42.i.i:                                    ; preds = %switch.body41.i.i
    #dbg_value(double %x.tr43.i, !3196, !DIExpression(), !3430)
  %81 = fdiv double 1.000000e+00, %x.tr43.i, !dbg !3431
    #dbg_value(double %y.tr44.i, !3199, !DIExpression(), !3432)
  %82 = fneg double %y.tr44.i, !dbg !3433
    #dbg_value(double %81, !3188, !DIExpression(), !3193)
    #dbg_value(double %82, !3192, !DIExpression(), !3195)
    #dbg_value(double %81, !3196, !DIExpression(), !3207)
    #dbg_value(double %82, !3199, !DIExpression(), !3209)
  %83 = fcmp oeq double %y.tr44.i, 0.000000e+00, !dbg !3434
  %84 = fcmp oeq double %81, 1.000000e+00, !dbg !3210
  %85 = select i1 %83, i1 true, i1 %84, !dbg !3210
  br i1 %85, label %math.Pow.exit, label %switch.next.i.i, !dbg !3210

if.done43.i.i:                                    ; preds = %switch.body41.i.i
    #dbg_value(double %y.tr44.i, !3199, !DIExpression(), !3435)
  %86 = fcmp olt double %y.tr44.i, 0.000000e+00, !dbg !3436
  br i1 %86, label %math.Pow.exit, label %switch.next45.i.i, !dbg !3210

switch.next45.i.i:                                ; preds = %if.done43.i.i
    #dbg_value(double %y.tr44.i, !3199, !DIExpression(), !3437)
  %87 = fcmp ogt double %y.tr44.i, 0.000000e+00, !dbg !3438
  br i1 %87, label %math.Pow.exit, label %switch.done.i.i, !dbg !3210

switch.next47.i.i:                                ; preds = %switch.next40.i.i
    #dbg_value(double %y.tr44.i, !3199, !DIExpression(), !3439)
  %88 = fcmp oeq double %y.tr44.i, 5.000000e-01, !dbg !3440
  br i1 %88, label %switch.body48.i.i, label %switch.next49.i.i, !dbg !3210

switch.body48.i.i:                                ; preds = %switch.next47.i.i
    #dbg_value(double %x.tr43.i, !3196, !DIExpression(), !3441)
    #dbg_value(double %x.tr43.i, !3442, !DIExpression(), !3446)
  %89 = tail call double @llvm.sqrt.f64(double %x.tr43.i), !dbg !3446
  br label %math.Pow.exit, !dbg !3448

switch.next49.i.i:                                ; preds = %switch.next47.i.i
    #dbg_value(double %y.tr44.i, !3199, !DIExpression(), !3449)
  %90 = fcmp oeq double %y.tr44.i, -5.000000e-01, !dbg !3450
  br i1 %90, label %switch.body50.i.i, label %switch.done.i.i, !dbg !3210

switch.body50.i.i:                                ; preds = %switch.next49.i.i
    #dbg_value(double %x.tr43.i, !3196, !DIExpression(), !3451)
    #dbg_value(double %x.tr43.i, !3442, !DIExpression(), !3452)
  %91 = tail call double @llvm.sqrt.f64(double %x.tr43.i), !dbg !3452
  %92 = fdiv double 1.000000e+00, %91, !dbg !3454
  br label %math.Pow.exit, !dbg !3455

math.Pow.exit:                                    ; preds = %switch.next.i.i, %switch.next2.i.i, %if.then42.i.i, %entry, %math.isOddInt.exit18.i, %if.done.i.i, %math.isOddInt.exit.i, %if.done12.i.i, %switch.done.i.i, %if.then16.i.i, %switch.next18.i.i, %if.done33.i.i, %switch.body35.i.i, %switch.next37.i.i, %if.done43.i.i, %switch.next45.i.i, %switch.body48.i.i, %switch.body50.i.i
  %common.ret.op.i.i = phi double [ 0x7FF0000000000000, %if.done.i.i ], [ 0.000000e+00, %if.done12.i.i ], [ %70, %if.done33.i.i ], [ %89, %switch.body48.i.i ], [ %92, %switch.body50.i.i ], [ %x.tr43.i, %math.isOddInt.exit.i ], [ 1.000000e+00, %if.then16.i.i ], [ 1.000000e+00, %switch.body35.i.i ], [ 0.000000e+00, %if.done43.i.i ], [ 0xFFF0000000000000, %math.isOddInt.exit18.i ], [ 0x7FF8000000000001, %switch.done.i.i ], [ 0x7FF0000000000000, %switch.next45.i.i ], [ %spec.select.i, %switch.next18.i.i ], [ %spec.select25.i, %switch.next37.i.i ], [ 1.000000e+00, %entry ], [ 0x7FF8000000000001, %switch.next2.i.i ], [ 1.000000e+00, %if.then42.i.i ], [ %x.tr43.i, %switch.next.i.i ]
    #dbg_value(double 2.000000e+00, !3442, !DIExpression(), !3456)
  %93 = fdiv double %common.ret.op.i.i, 0x4020F876CCDF6CDA, !dbg !3458
    #dbg_value(double %93, !3186, !DIExpression(), !3459)
  ret double %93, !dbg !3460
}
