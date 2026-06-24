define i64 @f_gold(i64 %n) local_unnamed_addr #12 !dbg !3182 {
entry:
    #dbg_value(i64 %n, !3185, !DIExpression(), !3186)
    #dbg_value(double poison, !3187, !DIExpression(), !3192)
    #dbg_value(double 2.000000e+00, !3191, !DIExpression(), !3194)
    #dbg_value(double poison, !3195, !DIExpression(), !3206)
    #dbg_value(double 2.000000e+00, !3198, !DIExpression(), !3208)
  %0 = icmp eq i64 %n, 1, !dbg !3209
  br i1 %0, label %math.Pow.exit, label %switch.next.i.i.preheader, !dbg !3209

switch.next.i.i.preheader:                        ; preds = %entry
  %1 = sitofp i64 %n to double, !dbg !3210
    #dbg_value(double %1, !3187, !DIExpression(), !3192)
    #dbg_value(double %1, !3195, !DIExpression(), !3206)
  br label %switch.next.i.i, !dbg !3209

switch.next.i.i:                                  ; preds = %switch.next.i.i.preheader, %if.then42.i.i
  %y.tr44.i = phi double [ %82, %if.then42.i.i ], [ 2.000000e+00, %switch.next.i.i.preheader ]
  %x.tr43.i = phi double [ %81, %if.then42.i.i ], [ %1, %switch.next.i.i.preheader ]
    #dbg_value(double %y.tr44.i, !3191, !DIExpression(), !3194)
    #dbg_value(double %x.tr43.i, !3187, !DIExpression(), !3192)
    #dbg_value(double %y.tr44.i, !3198, !DIExpression(), !3211)
  %2 = fcmp oeq double %y.tr44.i, 1.000000e+00, !dbg !3212
  br i1 %2, label %math.Pow.exit, label %switch.next2.i.i, !dbg !3209

switch.next2.i.i:                                 ; preds = %switch.next.i.i
    #dbg_value(double %x.tr43.i, !3195, !DIExpression(), !3213)
    #dbg_value(double %y.tr44.i, !3198, !DIExpression(), !3214)
  %or.cond26.i = fcmp uno double %x.tr43.i, %y.tr44.i, !dbg !3209
  br i1 %or.cond26.i, label %math.Pow.exit, label %switch.next5.i.i, !dbg !3209

switch.next5.i.i:                                 ; preds = %switch.next2.i.i
    #dbg_value(double %x.tr43.i, !3195, !DIExpression(), !3215)
  %3 = fcmp oeq double %x.tr43.i, 0.000000e+00, !dbg !3216
  br i1 %3, label %switch.body6.i.i, label %switch.next34.i.i, !dbg !3209

switch.body6.i.i:                                 ; preds = %switch.next5.i.i
    #dbg_value(double %y.tr44.i, !3198, !DIExpression(), !3217)
  %4 = fcmp olt double %y.tr44.i, 0.000000e+00, !dbg !3218
  br i1 %4, label %switch.body7.i.i, label %switch.next8.i.i, !dbg !3209

switch.body7.i.i:                                 ; preds = %switch.body6.i.i
    #dbg_value(double %x.tr43.i, !3195, !DIExpression(), !3219)
    #dbg_value(double %x.tr43.i, !3220, !DIExpression(), !3224)
    #dbg_value(double %x.tr43.i, !1785, !DIExpression(), !3226)
  %.cast.i.i19.i = bitcast double %x.tr43.i to i64, !dbg !3228
  %5 = icmp slt i64 %.cast.i.i19.i, 0, !dbg !3229
    #dbg_value(double %y.tr44.i, !3198, !DIExpression(), !3230)
    #dbg_value(double %y.tr44.i, !3231, !DIExpression(), !3236)
    #dbg_value(double %y.tr44.i, !3238, !DIExpression(), !3242)
  %6 = tail call double @llvm.fabs.f64(double %y.tr44.i)
  %7 = fcmp ult double %6, 0x4340000000000000
  %or.cond.i = and i1 %7, %5, !dbg !3209
  br i1 %or.cond.i, label %if.done.i10.i, label %if.done.i.i, !dbg !3209

if.done.i10.i:                                    ; preds = %switch.body7.i.i
    #dbg_value(double %y.tr44.i, !3231, !DIExpression(), !3244)
    #dbg_value(double %y.tr44.i, !3245, !DIExpression(), !3251)
    #dbg_value(double %y.tr44.i, !3253, !DIExpression(), !3257)
  %8 = tail call double @llvm.trunc.f64(double %y.tr44.i), !dbg !3257
    #dbg_value(double %8, !3249, !DIExpression(), !3259)
    #dbg_value(double poison, !1800, !DIExpression(), !3260)
    #dbg_value(double %y.tr44.i, !1806, !DIExpression(), !3262)
    #dbg_value(!DIArgList(double poison, double poison), !1810, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 9223372036854775808, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !3263)
    #dbg_value(double poison, !3250, !DIExpression(), !3265)
    #dbg_value(double poison, !3234, !DIExpression(), !3266)
    #dbg_value(double poison, !3235, !DIExpression(), !3267)
  %9 = fcmp oeq double %y.tr44.i, %8, !dbg !3268
  br i1 %9, label %math.isOddInt.exit18.i, label %if.done.i.i, !dbg !3269

math.isOddInt.exit18.i:                           ; preds = %if.done.i10.i
    #dbg_value(double %8, !3234, !DIExpression(), !3270)
  %abovemin.i13.i = fcmp oge double %8, 0xC3E0000000000000, !dbg !3271
  %belowmax.i14.i = fcmp ole double %8, 0x43DFFFFFFFFFFFFE, !dbg !3271
  %inbounds.i15.i = and i1 %abovemin.i13.i, %belowmax.i14.i, !dbg !3271
  %remapped.i16.i = zext i1 %abovemin.i13.i to i64, !dbg !3271
  %normal.i17.i = fptosi double %8 to i64, !dbg !3271
  %10 = select i1 %inbounds.i15.i, i64 %normal.i17.i, i64 %remapped.i16.i, !dbg !3271
  %11 = and i64 %10, 1, !dbg !3272
  %.not27.i = icmp eq i64 %11, 0, !dbg !3273
  br i1 %.not27.i, label %if.done.i.i, label %math.Pow.exit, !dbg !3209

if.done.i.i:                                      ; preds = %math.isOddInt.exit18.i, %if.done.i10.i, %switch.body7.i.i
    #dbg_value(i64 9218868437227405312, !1810, !DIExpression(), !3274)
  br label %math.Pow.exit, !dbg !3277

switch.next8.i.i:                                 ; preds = %switch.body6.i.i
    #dbg_value(double %y.tr44.i, !3198, !DIExpression(), !3278)
  %12 = fcmp ogt double %y.tr44.i, 0.000000e+00, !dbg !3279
  br i1 %12, label %switch.body9.i.i, label %switch.next8.i.switch.done.i_crit_edge.i, !dbg !3209

switch.next8.i.switch.done.i_crit_edge.i:         ; preds = %switch.next8.i.i
  %.pre.i = tail call double @llvm.fabs.f64(double %y.tr44.i), !dbg !3280
  br label %switch.done.i.i, !dbg !3209

switch.body9.i.i:                                 ; preds = %switch.next8.i.i
    #dbg_value(double %x.tr43.i, !3195, !DIExpression(), !3282)
    #dbg_value(double %x.tr43.i, !3220, !DIExpression(), !3283)
    #dbg_value(double %x.tr43.i, !1785, !DIExpression(), !3285)
  %.cast.i.i.i = bitcast double %x.tr43.i to i64, !dbg !3287
  %13 = icmp slt i64 %.cast.i.i.i, 0, !dbg !3288
    #dbg_value(double %y.tr44.i, !3198, !DIExpression(), !3289)
    #dbg_value(double %y.tr44.i, !3231, !DIExpression(), !3290)
    #dbg_value(double %y.tr44.i, !3238, !DIExpression(), !3292)
  %14 = fcmp ult double %y.tr44.i, 0x4340000000000000
  %or.cond24.i = and i1 %14, %13, !dbg !3209
  br i1 %or.cond24.i, label %if.done.i2.i, label %if.done12.i.i, !dbg !3209

if.done.i2.i:                                     ; preds = %switch.body9.i.i
    #dbg_value(double %y.tr44.i, !3231, !DIExpression(), !3294)
    #dbg_value(double %y.tr44.i, !3245, !DIExpression(), !3295)
    #dbg_value(double %y.tr44.i, !3253, !DIExpression(), !3297)
  %15 = tail call double @llvm.trunc.f64(double %y.tr44.i), !dbg !3297
    #dbg_value(double %15, !3249, !DIExpression(), !3299)
    #dbg_value(double poison, !1800, !DIExpression(), !3300)
    #dbg_value(double %y.tr44.i, !1806, !DIExpression(), !3302)
    #dbg_value(!DIArgList(double poison, double poison), !1810, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 9223372036854775808, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !3303)
    #dbg_value(double poison, !3250, !DIExpression(), !3305)
    #dbg_value(double poison, !3234, !DIExpression(), !3306)
    #dbg_value(double poison, !3235, !DIExpression(), !3307)
  %16 = fcmp oeq double %y.tr44.i, %15, !dbg !3308
  br i1 %16, label %math.isOddInt.exit.i, label %if.done12.i.i, !dbg !3309

math.isOddInt.exit.i:                             ; preds = %if.done.i2.i
    #dbg_value(double %15, !3234, !DIExpression(), !3310)
  %abovemin.i4.i = fcmp oge double %15, 0xC3E0000000000000, !dbg !3311
  %belowmax.i5.i = fcmp ole double %15, 0x43DFFFFFFFFFFFFE, !dbg !3311
  %inbounds.i6.i = and i1 %abovemin.i4.i, %belowmax.i5.i, !dbg !3311
  %remapped.i7.i = zext i1 %abovemin.i4.i to i64, !dbg !3311
  %normal.i8.i = fptosi double %15 to i64, !dbg !3311
  %17 = select i1 %inbounds.i6.i, i64 %normal.i8.i, i64 %remapped.i7.i, !dbg !3311
  %18 = and i64 %17, 1, !dbg !3312
  %.not.i = icmp eq i64 %18, 0, !dbg !3313
  br i1 %.not.i, label %if.done12.i.i, label %math.Pow.exit, !dbg !3209

if.done12.i.i:                                    ; preds = %math.isOddInt.exit.i, %if.done.i2.i, %switch.body9.i.i
  br label %math.Pow.exit, !dbg !3314

switch.done.i.i:                                  ; preds = %switch.next49.i.i, %switch.next45.i.i, %switch.next8.i.switch.done.i_crit_edge.i
  %.pre-phi.i = phi double [ %.pre.i, %switch.next8.i.switch.done.i_crit_edge.i ], [ %71, %switch.next49.i.i ], [ %71, %switch.next45.i.i ], !dbg !3280
    #dbg_value(double %y.tr44.i, !3198, !DIExpression(), !3315)
    #dbg_value(double %y.tr44.i, !3238, !DIExpression(), !3316)
    #dbg_value(double %.pre-phi.i, !3245, !DIExpression(), !3317)
    #dbg_value(double %.pre-phi.i, !3253, !DIExpression(), !3319)
  %19 = tail call double @llvm.trunc.f64(double %.pre-phi.i), !dbg !3319
    #dbg_value(double %19, !3249, !DIExpression(), !3321)
  %20 = fsub double %.pre-phi.i, %19, !dbg !3322
    #dbg_value(double %20, !1800, !DIExpression(), !3323)
    #dbg_value(double %.pre-phi.i, !1806, !DIExpression(), !3325)
    #dbg_value(!DIArgList(double poison, double poison), !1810, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 9223372036854775808, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !3326)
  %.cast.i2.i.i.i = tail call double @llvm.fabs.f64(double %20), !dbg !3328
    #dbg_value(double %.cast.i2.i.i.i, !3250, !DIExpression(), !3329)
    #dbg_value(double %19, !3199, !DIExpression(), !3330)
    #dbg_value(double %.cast.i2.i.i.i, !3200, !DIExpression(), !3331)
  %21 = fcmp une double %20, 0.000000e+00, !dbg !3332
    #dbg_value(double %x.tr43.i, !3195, !DIExpression(), !3333)
  %22 = fcmp olt double %x.tr43.i, 0.000000e+00
  %or.cond.i.i = select i1 %21, i1 %22, i1 false, !dbg !3209
  br i1 %or.cond.i.i, label %math.Pow.exit, label %if.done15.i.i, !dbg !3209

if.done15.i.i:                                    ; preds = %switch.done.i.i
    #dbg_value(double %19, !3199, !DIExpression(), !3334)
  %23 = fcmp ult double %19, 0x43E0000000000000, !dbg !3335
  br i1 %23, label %if.done21.i.i, label %if.then16.i.i, !dbg !3209

if.then16.i.i:                                    ; preds = %if.done15.i.i
    #dbg_value(double %x.tr43.i, !3195, !DIExpression(), !3336)
  %24 = fcmp oeq double %x.tr43.i, -1.000000e+00, !dbg !3337
  br i1 %24, label %math.Pow.exit, label %switch.next18.i.i, !dbg !3209

switch.next18.i.i:                                ; preds = %if.then16.i.i
    #dbg_value(double %x.tr43.i, !3195, !DIExpression(), !3338)
    #dbg_value(double %x.tr43.i, !3238, !DIExpression(), !3339)
  %25 = tail call double @llvm.fabs.f64(double %x.tr43.i), !dbg !3341
  %26 = fcmp olt double %25, 1.000000e+00, !dbg !3342
    #dbg_value(double %y.tr44.i, !3198, !DIExpression(), !3343)
  %27 = fcmp ule double %y.tr44.i, 0.000000e+00, !dbg !3344
  %28 = xor i1 %27, %26, !dbg !3344
  %spec.select.i = select i1 %28, double 0.000000e+00, double 0x7FF0000000000000, !dbg !3209
  br label %math.Pow.exit, !dbg !3209

if.done21.i.i:                                    ; preds = %if.done15.i.i
    #dbg_value(double 1.000000e+00, !3201, !DIExpression(), !3345)
    #dbg_value(i64 0, !3202, !DIExpression(), !3346)
    #dbg_value(double %.cast.i2.i.i.i, !3200, !DIExpression(), !3347)
  br i1 %21, label %if.then22.i.i, label %if.done25.i.i, !dbg !3209

if.then22.i.i:                                    ; preds = %if.done21.i.i
    #dbg_value(double %.cast.i2.i.i.i, !3200, !DIExpression(), !3348)
  %29 = fcmp ogt double %.cast.i2.i.i.i, 5.000000e-01, !dbg !3349
  %30 = fadd double %.cast.i2.i.i.i, -1.000000e+00, !dbg !3209
  %31 = fadd double %19, 1.000000e+00, !dbg !3209
  %32 = select i1 %29, double %31, double %19, !dbg !3209
  %33 = select i1 %29, double %30, double %.cast.i2.i.i.i, !dbg !3209
    #dbg_value(double %33, !3200, !DIExpression(), !3350)
    #dbg_value(double %x.tr43.i, !3195, !DIExpression(), !3351)
    #dbg_value(double %x.tr43.i, !3352, !DIExpression(), !3356)
  %34 = tail call double @llvm.log.f64(double %x.tr43.i), !dbg !3356
  %35 = fmul double %34, %33, !dbg !3358
    #dbg_value(double %35, !3359, !DIExpression(), !3363)
  %36 = tail call double @llvm.exp.f64(double %35), !dbg !3363
    #dbg_value(double %36, !3201, !DIExpression(), !3365)
  br label %if.done25.i.i, !dbg !3209

if.done25.i.i:                                    ; preds = %if.then22.i.i, %if.done21.i.i
  %37 = phi double [ %19, %if.done21.i.i ], [ %32, %if.then22.i.i ], !dbg !3330
  %38 = phi double [ 1.000000e+00, %if.done21.i.i ], [ %36, %if.then22.i.i ], !dbg !3345
    #dbg_value(double %x.tr43.i, !3195, !DIExpression(), !3366)
    #dbg_value(double poison, !3203, !DIExpression(), !3367)
    #dbg_value(i64 poison, !3204, !DIExpression(), !3368)
    #dbg_value(double %37, !3199, !DIExpression(), !3369)
  %abovemin.i.i = fcmp oge double %37, 0xC3E0000000000000, !dbg !3370
  %belowmax.i.i = fcmp ole double %37, 0x43DFFFFFFFFFFFFE, !dbg !3370
  %inbounds.i.i = and i1 %abovemin.i.i, %belowmax.i.i, !dbg !3370
  %saturated.i.i = select i1 %abovemin.i.i, i64 9223372036854775807, i64 -9223372036854775808, !dbg !3370
  %isnan.i.i = fcmp uno double %37, 0.000000e+00, !dbg !3370
  %remapped.i.i = select i1 %isnan.i.i, i64 0, i64 %saturated.i.i, !dbg !3370
  %normal.i.i = fptosi double %37 to i64, !dbg !3370
  %39 = select i1 %inbounds.i.i, i64 %normal.i.i, i64 %remapped.i.i, !dbg !3370
    #dbg_value(i64 %39, !3205, !DIExpression(), !3371)
  %.not.i47.i = icmp eq i64 %39, 0, !dbg !3372
  br i1 %.not.i47.i, label %for.done.i.i, label %for.body.i.preheader.i, !dbg !3209

for.body.i.preheader.i:                           ; preds = %if.done25.i.i
  %40 = tail call fastcc { double, i64 } @math.Frexp(double %x.tr43.i), !dbg !3373
  %41 = extractvalue { double, i64 } %40, 1, !dbg !3373
    #dbg_value(i64 %41, !3204, !DIExpression(), !3368)
  %42 = extractvalue { double, i64 } %40, 0, !dbg !3373
    #dbg_value(double %42, !3203, !DIExpression(), !3367)
  br label %for.body.i.i, !dbg !3209

for.body.i.i:                                     ; preds = %if.done27.i.i, %for.body.i.preheader.i
  %43 = phi i64 [ %62, %if.done27.i.i ], [ %39, %for.body.i.preheader.i ]
  %44 = phi i64 [ %61, %if.done27.i.i ], [ %41, %for.body.i.preheader.i ]
  %45 = phi double [ %59, %if.done27.i.i ], [ %42, %for.body.i.preheader.i ]
  %46 = phi i64 [ %54, %if.done27.i.i ], [ 0, %for.body.i.preheader.i ]
  %47 = phi double [ %52, %if.done27.i.i ], [ %38, %for.body.i.preheader.i ]
    #dbg_value(i64 %43, !3205, !DIExpression(), !3374)
    #dbg_value(i64 %44, !3204, !DIExpression(), !3375)
  %48 = add i64 %44, -4097, !dbg !3209
  %or.cond10.i.i = icmp ult i64 %48, -8193, !dbg !3209
  br i1 %or.cond10.i.i, label %if.then26.i.i, label %if.done27.i.i, !dbg !3209

if.then26.i.i:                                    ; preds = %for.body.i.i
    #dbg_value(i64 %44, !3204, !DIExpression(), !3376)
  %49 = add i64 %46, %44, !dbg !3377
    #dbg_value(i64 %49, !3202, !DIExpression(), !3377)
  br label %for.done.i.i, !dbg !3209

if.done27.i.i:                                    ; preds = %for.body.i.i
    #dbg_value(i64 %43, !3205, !DIExpression(), !3378)
  %50 = and i64 %43, 1, !dbg !3379
  %.not5.i.i = icmp eq i64 %50, 0, !dbg !3380
  %51 = fmul double %45, %47, !dbg !3209
  %52 = select i1 %.not5.i.i, double %47, double %51, !dbg !3209
  %53 = select i1 %.not5.i.i, i64 0, i64 %44, !dbg !3209
  %54 = add i64 %53, %46, !dbg !3209
    #dbg_value(double %45, !3203, !DIExpression(), !3381)
  %55 = fmul double %45, %45, !dbg !3382
    #dbg_value(double %55, !3203, !DIExpression(), !3382)
  %56 = shl nsw i64 %44, 1, !dbg !3383
    #dbg_value(i64 %56, !3204, !DIExpression(), !3383)
  %57 = fcmp olt double %55, 5.000000e-01, !dbg !3384
  %58 = fadd double %55, %55, !dbg !3209
  %59 = select i1 %57, double %58, double %55, !dbg !3209
  %60 = sext i1 %57 to i64, !dbg !3209
  %61 = add nsw i64 %56, %60, !dbg !3209
  %62 = ashr i64 %43, 1, !dbg !3385
    #dbg_value(i64 %62, !3205, !DIExpression(), !3374)
  %.not.i.i = icmp ult i64 %43, 2, !dbg !3372
  br i1 %.not.i.i, label %for.done.i.i, label %for.body.i.i, !dbg !3209

for.done.i.i:                                     ; preds = %if.done27.i.i, %if.then26.i.i, %if.done25.i.i
  %63 = phi double [ %47, %if.then26.i.i ], [ %38, %if.done25.i.i ], [ %52, %if.done27.i.i ]
  %64 = phi i64 [ %49, %if.then26.i.i ], [ 0, %if.done25.i.i ], [ %54, %if.done27.i.i ], !dbg !3346
    #dbg_value(double %y.tr44.i, !3198, !DIExpression(), !3386)
  %65 = fcmp olt double %y.tr44.i, 0.000000e+00, !dbg !3387
  br i1 %65, label %if.then32.i.i, label %if.done33.i.i, !dbg !3209

if.then32.i.i:                                    ; preds = %for.done.i.i
    #dbg_value(double %63, !3201, !DIExpression(), !3388)
  %66 = fdiv double 1.000000e+00, %63, !dbg !3389
    #dbg_value(double %66, !3201, !DIExpression(), !3390)
    #dbg_value(i64 %64, !3202, !DIExpression(), !3391)
  %67 = sub i64 0, %64, !dbg !3392
    #dbg_value(i64 %67, !3202, !DIExpression(), !3393)
  br label %if.done33.i.i, !dbg !3209

if.done33.i.i:                                    ; preds = %if.then32.i.i, %for.done.i.i
  %68 = phi double [ %63, %for.done.i.i ], [ %66, %if.then32.i.i ], !dbg !3345
  %69 = phi i64 [ %64, %for.done.i.i ], [ %67, %if.then32.i.i ], !dbg !3346
    #dbg_value(double %68, !3201, !DIExpression(), !3394)
    #dbg_value(i64 %69, !3202, !DIExpression(), !3395)
  %70 = tail call fastcc double @math.Ldexp(double %68, i64 %69), !dbg !3396
  br label %math.Pow.exit, !dbg !3397

switch.next34.i.i:                                ; preds = %switch.next5.i.i
    #dbg_value(double %y.tr44.i, !3198, !DIExpression(), !3398)
    #dbg_value(double %y.tr44.i, !1760, !DIExpression(), !3399)
    #dbg_value(i64 0, !1764, !DIExpression(), !3401)
  %71 = tail call double @llvm.fabs.f64(double %y.tr44.i), !dbg !3402
    #dbg_value(double %71, !1760, !DIExpression(), !3403)
  %72 = fcmp ogt double %71, 0x7FEFFFFFFFFFFFFF, !dbg !3404
  br i1 %72, label %switch.body35.i.i, label %switch.next40.i.i, !dbg !3209

switch.body35.i.i:                                ; preds = %switch.next34.i.i
    #dbg_value(double %x.tr43.i, !3195, !DIExpression(), !3405)
  %73 = fcmp oeq double %x.tr43.i, -1.000000e+00, !dbg !3406
  br i1 %73, label %math.Pow.exit, label %switch.next37.i.i, !dbg !3209

switch.next37.i.i:                                ; preds = %switch.body35.i.i
    #dbg_value(double %x.tr43.i, !3195, !DIExpression(), !3407)
    #dbg_value(double %x.tr43.i, !3238, !DIExpression(), !3408)
  %74 = tail call double @llvm.fabs.f64(double %x.tr43.i), !dbg !3410
    #dbg_value(double %y.tr44.i, !3198, !DIExpression(), !3411)
    #dbg_value(i64 1, !1764, !DIExpression(), !3412)
    #dbg_value(double %y.tr44.i, !1760, !DIExpression(), !3414)
  %75 = fcmp ogt double %y.tr44.i, 0x7FEFFFFFFFFFFFFF, !dbg !3415
  %76 = fcmp uge double %74, 1.000000e+00, !dbg !3416
  %77 = xor i1 %75, %76, !dbg !3416
  %spec.select25.i = select i1 %77, double 0.000000e+00, double 0x7FF0000000000000, !dbg !3209
  br label %math.Pow.exit, !dbg !3209

switch.next40.i.i:                                ; preds = %switch.next34.i.i
    #dbg_value(double %x.tr43.i, !3195, !DIExpression(), !3417)
    #dbg_value(double %x.tr43.i, !1760, !DIExpression(), !3418)
    #dbg_value(i64 0, !1764, !DIExpression(), !3420)
  %78 = tail call double @llvm.fabs.f64(double %x.tr43.i), !dbg !3421
    #dbg_value(double %78, !1760, !DIExpression(), !3422)
  %79 = fcmp ogt double %78, 0x7FEFFFFFFFFFFFFF, !dbg !3423
  br i1 %79, label %switch.body41.i.i, label %switch.next47.i.i, !dbg !3209

switch.body41.i.i:                                ; preds = %switch.next40.i.i
    #dbg_value(double %x.tr43.i, !3195, !DIExpression(), !3424)
    #dbg_value(i64 -1, !1764, !DIExpression(), !3425)
    #dbg_value(double poison, !1760, !DIExpression(), !3427)
  %80 = fcmp olt double %x.tr43.i, 0xFFEFFFFFFFFFFFFF, !dbg !3428
  br i1 %80, label %if.then42.i.i, label %if.done43.i.i, !dbg !3209

if.then42.i.i:                                    ; preds = %switch.body41.i.i
    #dbg_value(double %x.tr43.i, !3195, !DIExpression(), !3429)
  %81 = fdiv double 1.000000e+00, %x.tr43.i, !dbg !3430
    #dbg_value(double %y.tr44.i, !3198, !DIExpression(), !3431)
  %82 = fneg double %y.tr44.i, !dbg !3432
    #dbg_value(double %81, !3187, !DIExpression(), !3192)
    #dbg_value(double %82, !3191, !DIExpression(), !3194)
    #dbg_value(double %81, !3195, !DIExpression(), !3206)
    #dbg_value(double %82, !3198, !DIExpression(), !3208)
  %83 = fcmp oeq double %y.tr44.i, 0.000000e+00, !dbg !3433
  %84 = fcmp oeq double %81, 1.000000e+00, !dbg !3209
  %85 = select i1 %83, i1 true, i1 %84, !dbg !3209
  br i1 %85, label %math.Pow.exit, label %switch.next.i.i, !dbg !3209

if.done43.i.i:                                    ; preds = %switch.body41.i.i
    #dbg_value(double %y.tr44.i, !3198, !DIExpression(), !3434)
  %86 = fcmp olt double %y.tr44.i, 0.000000e+00, !dbg !3435
  br i1 %86, label %math.Pow.exit, label %switch.next45.i.i, !dbg !3209

switch.next45.i.i:                                ; preds = %if.done43.i.i
    #dbg_value(double %y.tr44.i, !3198, !DIExpression(), !3436)
  %87 = fcmp ogt double %y.tr44.i, 0.000000e+00, !dbg !3437
  br i1 %87, label %math.Pow.exit, label %switch.done.i.i, !dbg !3209

switch.next47.i.i:                                ; preds = %switch.next40.i.i
    #dbg_value(double %y.tr44.i, !3198, !DIExpression(), !3438)
  %88 = fcmp oeq double %y.tr44.i, 5.000000e-01, !dbg !3439
  br i1 %88, label %switch.body48.i.i, label %switch.next49.i.i, !dbg !3209

switch.body48.i.i:                                ; preds = %switch.next47.i.i
    #dbg_value(double %x.tr43.i, !3195, !DIExpression(), !3440)
    #dbg_value(double %x.tr43.i, !3441, !DIExpression(), !3445)
  %89 = tail call double @llvm.sqrt.f64(double %x.tr43.i), !dbg !3445
  br label %math.Pow.exit, !dbg !3447

switch.next49.i.i:                                ; preds = %switch.next47.i.i
    #dbg_value(double %y.tr44.i, !3198, !DIExpression(), !3448)
  %90 = fcmp oeq double %y.tr44.i, -5.000000e-01, !dbg !3449
  br i1 %90, label %switch.body50.i.i, label %switch.done.i.i, !dbg !3209

switch.body50.i.i:                                ; preds = %switch.next49.i.i
    #dbg_value(double %x.tr43.i, !3195, !DIExpression(), !3450)
    #dbg_value(double %x.tr43.i, !3441, !DIExpression(), !3451)
  %91 = tail call double @llvm.sqrt.f64(double %x.tr43.i), !dbg !3451
  %92 = fdiv double 1.000000e+00, %91, !dbg !3453
  br label %math.Pow.exit, !dbg !3454

math.Pow.exit:                                    ; preds = %switch.next.i.i, %switch.next2.i.i, %if.then42.i.i, %entry, %math.isOddInt.exit18.i, %if.done.i.i, %math.isOddInt.exit.i, %if.done12.i.i, %switch.done.i.i, %if.then16.i.i, %switch.next18.i.i, %if.done33.i.i, %switch.body35.i.i, %switch.next37.i.i, %if.done43.i.i, %switch.next45.i.i, %switch.body48.i.i, %switch.body50.i.i
  %common.ret.op.i.i = phi double [ 0x7FF0000000000000, %if.done.i.i ], [ 0.000000e+00, %if.done12.i.i ], [ %70, %if.done33.i.i ], [ %89, %switch.body48.i.i ], [ %92, %switch.body50.i.i ], [ %x.tr43.i, %math.isOddInt.exit.i ], [ 1.000000e+00, %if.then16.i.i ], [ 1.000000e+00, %switch.body35.i.i ], [ 0.000000e+00, %if.done43.i.i ], [ 0xFFF0000000000000, %math.isOddInt.exit18.i ], [ 0x7FF8000000000001, %switch.done.i.i ], [ 0x7FF0000000000000, %switch.next45.i.i ], [ %spec.select.i, %switch.next18.i.i ], [ %spec.select25.i, %switch.next37.i.i ], [ 1.000000e+00, %entry ], [ 0x7FF8000000000001, %switch.next2.i.i ], [ 1.000000e+00, %if.then42.i.i ], [ %x.tr43.i, %switch.next.i.i ]
  %abovemin = fcmp oge double %common.ret.op.i.i, 0xC3E0000000000000, !dbg !3455
  %belowmax = fcmp ole double %common.ret.op.i.i, 0x43DFFFFFFFFFFFFE, !dbg !3455
  %inbounds = and i1 %abovemin, %belowmax, !dbg !3455
  %saturated = select i1 %abovemin, i64 9223372036854775807, i64 -9223372036854775808, !dbg !3455
  %isnan = fcmp uno double %common.ret.op.i.i, 0.000000e+00, !dbg !3455
  %remapped = select i1 %isnan, i64 0, i64 %saturated, !dbg !3455
  %normal = fptosi double %common.ret.op.i.i to i64, !dbg !3455
  %93 = select i1 %inbounds, i64 %normal, i64 %remapped, !dbg !3455
  ret i64 %93, !dbg !3456
}
