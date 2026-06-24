define i64 @f_gold(i64 %n) local_unnamed_addr #12 !dbg !3182 {
entry:
    #dbg_value(i64 %n, !3185, !DIExpression(), !3188)
  %0 = icmp eq i64 %n, 1, !dbg !3189
  br i1 %0, label %common.ret, label %if.done, !dbg !3190

common.ret:                                       ; preds = %entry, %math.Pow.exit
  %common.ret.op = phi i64 [ %102, %math.Pow.exit ], [ 1, %entry ]
  ret i64 %common.ret.op, !dbg !3190

if.done:                                          ; preds = %entry
    #dbg_value(i64 0, !3186, !DIExpression(), !3191)
    #dbg_value(float 0x4005AE1480000000, !3187, !DIExpression(), !3192)
    #dbg_value(i64 %n, !3185, !DIExpression(), !3193)
  %1 = sitofp i64 %n to double, !dbg !3194
  %2 = fmul double %1, 6.280000e+00, !dbg !3195
    #dbg_value(double %2, !3196, !DIExpression(), !3200)
  %3 = tail call double @llvm.sqrt.f64(double %2), !dbg !3200
  %4 = sitofp i64 %n to float, !dbg !3202
  %5 = fdiv float %4, 0x4005AE1480000000, !dbg !3203
    #dbg_value(double poison, !3204, !DIExpression(), !3209)
    #dbg_value(double %1, !3208, !DIExpression(), !3211)
    #dbg_value(double poison, !3212, !DIExpression(), !3223)
    #dbg_value(double %1, !3215, !DIExpression(), !3225)
  %6 = icmp eq i64 %n, 0, !dbg !3226
  %7 = fcmp oeq float %5, 1.000000e+00, !dbg !3227
  %8 = or i1 %6, %7, !dbg !3227
  br i1 %8, label %math.Pow.exit, label %switch.next.i.i.preheader, !dbg !3227

switch.next.i.i.preheader:                        ; preds = %if.done
  %9 = fpext float %5 to double, !dbg !3228
    #dbg_value(double %9, !3204, !DIExpression(), !3209)
    #dbg_value(double %9, !3212, !DIExpression(), !3223)
  br label %switch.next.i.i, !dbg !3227

switch.next.i.i:                                  ; preds = %switch.next.i.i.preheader, %if.then42.i.i
  %y.tr44.i = phi double [ %90, %if.then42.i.i ], [ %1, %switch.next.i.i.preheader ]
  %x.tr43.i = phi double [ %89, %if.then42.i.i ], [ %9, %switch.next.i.i.preheader ]
    #dbg_value(double %y.tr44.i, !3208, !DIExpression(), !3211)
    #dbg_value(double %x.tr43.i, !3204, !DIExpression(), !3209)
    #dbg_value(double %y.tr44.i, !3215, !DIExpression(), !3229)
  %10 = fcmp oeq double %y.tr44.i, 1.000000e+00, !dbg !3230
  br i1 %10, label %math.Pow.exit, label %switch.next2.i.i, !dbg !3227

switch.next2.i.i:                                 ; preds = %switch.next.i.i
    #dbg_value(double %x.tr43.i, !3212, !DIExpression(), !3231)
    #dbg_value(double %y.tr44.i, !3215, !DIExpression(), !3232)
  %or.cond26.i = fcmp uno double %x.tr43.i, %y.tr44.i, !dbg !3227
  br i1 %or.cond26.i, label %math.Pow.exit, label %switch.next5.i.i, !dbg !3227

switch.next5.i.i:                                 ; preds = %switch.next2.i.i
    #dbg_value(double %x.tr43.i, !3212, !DIExpression(), !3233)
  %11 = fcmp oeq double %x.tr43.i, 0.000000e+00, !dbg !3234
  br i1 %11, label %switch.body6.i.i, label %switch.next34.i.i, !dbg !3227

switch.body6.i.i:                                 ; preds = %switch.next5.i.i
    #dbg_value(double %y.tr44.i, !3215, !DIExpression(), !3235)
  %12 = fcmp olt double %y.tr44.i, 0.000000e+00, !dbg !3236
  br i1 %12, label %switch.body7.i.i, label %switch.next8.i.i, !dbg !3227

switch.body7.i.i:                                 ; preds = %switch.body6.i.i
    #dbg_value(double %x.tr43.i, !3212, !DIExpression(), !3237)
    #dbg_value(double %x.tr43.i, !3238, !DIExpression(), !3242)
    #dbg_value(double %x.tr43.i, !1785, !DIExpression(), !3244)
  %.cast.i.i19.i = bitcast double %x.tr43.i to i64, !dbg !3246
  %13 = icmp slt i64 %.cast.i.i19.i, 0, !dbg !3247
    #dbg_value(double %y.tr44.i, !3215, !DIExpression(), !3248)
    #dbg_value(double %y.tr44.i, !3249, !DIExpression(), !3254)
    #dbg_value(double %y.tr44.i, !3256, !DIExpression(), !3260)
  %14 = tail call double @llvm.fabs.f64(double %y.tr44.i)
  %15 = fcmp ult double %14, 0x4340000000000000
  %or.cond.i = and i1 %15, %13, !dbg !3227
  br i1 %or.cond.i, label %if.done.i10.i, label %if.done.i.i, !dbg !3227

if.done.i10.i:                                    ; preds = %switch.body7.i.i
    #dbg_value(double %y.tr44.i, !3249, !DIExpression(), !3262)
    #dbg_value(double %y.tr44.i, !3263, !DIExpression(), !3269)
    #dbg_value(double %y.tr44.i, !3271, !DIExpression(), !3275)
  %16 = tail call double @llvm.trunc.f64(double %y.tr44.i), !dbg !3275
    #dbg_value(double %16, !3267, !DIExpression(), !3277)
    #dbg_value(double poison, !1800, !DIExpression(), !3278)
    #dbg_value(double %y.tr44.i, !1806, !DIExpression(), !3280)
    #dbg_value(!DIArgList(double poison, double poison), !1810, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 9223372036854775808, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !3281)
    #dbg_value(double poison, !3268, !DIExpression(), !3283)
    #dbg_value(double poison, !3252, !DIExpression(), !3284)
    #dbg_value(double poison, !3253, !DIExpression(), !3285)
  %17 = fcmp oeq double %y.tr44.i, %16, !dbg !3286
  br i1 %17, label %math.isOddInt.exit18.i, label %if.done.i.i, !dbg !3287

math.isOddInt.exit18.i:                           ; preds = %if.done.i10.i
    #dbg_value(double %16, !3252, !DIExpression(), !3288)
  %abovemin.i13.i = fcmp oge double %16, 0xC3E0000000000000, !dbg !3289
  %belowmax.i14.i = fcmp ole double %16, 0x43DFFFFFFFFFFFFE, !dbg !3289
  %inbounds.i15.i = and i1 %abovemin.i13.i, %belowmax.i14.i, !dbg !3289
  %remapped.i16.i = zext i1 %abovemin.i13.i to i64, !dbg !3289
  %normal.i17.i = fptosi double %16 to i64, !dbg !3289
  %18 = select i1 %inbounds.i15.i, i64 %normal.i17.i, i64 %remapped.i16.i, !dbg !3289
  %19 = and i64 %18, 1, !dbg !3290
  %.not27.i = icmp eq i64 %19, 0, !dbg !3291
  br i1 %.not27.i, label %if.done.i.i, label %math.Pow.exit, !dbg !3227

if.done.i.i:                                      ; preds = %math.isOddInt.exit18.i, %if.done.i10.i, %switch.body7.i.i
    #dbg_value(i64 9218868437227405312, !1810, !DIExpression(), !3292)
  br label %math.Pow.exit, !dbg !3295

switch.next8.i.i:                                 ; preds = %switch.body6.i.i
    #dbg_value(double %y.tr44.i, !3215, !DIExpression(), !3296)
  %20 = fcmp ogt double %y.tr44.i, 0.000000e+00, !dbg !3297
  br i1 %20, label %switch.body9.i.i, label %switch.next8.i.switch.done.i_crit_edge.i, !dbg !3227

switch.next8.i.switch.done.i_crit_edge.i:         ; preds = %switch.next8.i.i
  %.pre.i = tail call double @llvm.fabs.f64(double %y.tr44.i), !dbg !3298
  br label %switch.done.i.i, !dbg !3227

switch.body9.i.i:                                 ; preds = %switch.next8.i.i
    #dbg_value(double %x.tr43.i, !3212, !DIExpression(), !3300)
    #dbg_value(double %x.tr43.i, !3238, !DIExpression(), !3301)
    #dbg_value(double %x.tr43.i, !1785, !DIExpression(), !3303)
  %.cast.i.i.i = bitcast double %x.tr43.i to i64, !dbg !3305
  %21 = icmp slt i64 %.cast.i.i.i, 0, !dbg !3306
    #dbg_value(double %y.tr44.i, !3215, !DIExpression(), !3307)
    #dbg_value(double %y.tr44.i, !3249, !DIExpression(), !3308)
    #dbg_value(double %y.tr44.i, !3256, !DIExpression(), !3310)
  %22 = fcmp ult double %y.tr44.i, 0x4340000000000000
  %or.cond24.i = and i1 %22, %21, !dbg !3227
  br i1 %or.cond24.i, label %if.done.i2.i, label %if.done12.i.i, !dbg !3227

if.done.i2.i:                                     ; preds = %switch.body9.i.i
    #dbg_value(double %y.tr44.i, !3249, !DIExpression(), !3312)
    #dbg_value(double %y.tr44.i, !3263, !DIExpression(), !3313)
    #dbg_value(double %y.tr44.i, !3271, !DIExpression(), !3315)
  %23 = tail call double @llvm.trunc.f64(double %y.tr44.i), !dbg !3315
    #dbg_value(double %23, !3267, !DIExpression(), !3317)
    #dbg_value(double poison, !1800, !DIExpression(), !3318)
    #dbg_value(double %y.tr44.i, !1806, !DIExpression(), !3320)
    #dbg_value(!DIArgList(double poison, double poison), !1810, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 9223372036854775808, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !3321)
    #dbg_value(double poison, !3268, !DIExpression(), !3323)
    #dbg_value(double poison, !3252, !DIExpression(), !3324)
    #dbg_value(double poison, !3253, !DIExpression(), !3325)
  %24 = fcmp oeq double %y.tr44.i, %23, !dbg !3326
  br i1 %24, label %math.isOddInt.exit.i, label %if.done12.i.i, !dbg !3327

math.isOddInt.exit.i:                             ; preds = %if.done.i2.i
    #dbg_value(double %23, !3252, !DIExpression(), !3328)
  %abovemin.i4.i = fcmp oge double %23, 0xC3E0000000000000, !dbg !3329
  %belowmax.i5.i = fcmp ole double %23, 0x43DFFFFFFFFFFFFE, !dbg !3329
  %inbounds.i6.i = and i1 %abovemin.i4.i, %belowmax.i5.i, !dbg !3329
  %remapped.i7.i = zext i1 %abovemin.i4.i to i64, !dbg !3329
  %normal.i8.i = fptosi double %23 to i64, !dbg !3329
  %25 = select i1 %inbounds.i6.i, i64 %normal.i8.i, i64 %remapped.i7.i, !dbg !3329
  %26 = and i64 %25, 1, !dbg !3330
  %.not.i = icmp eq i64 %26, 0, !dbg !3331
  br i1 %.not.i, label %if.done12.i.i, label %math.Pow.exit, !dbg !3227

if.done12.i.i:                                    ; preds = %math.isOddInt.exit.i, %if.done.i2.i, %switch.body9.i.i
  br label %math.Pow.exit, !dbg !3332

switch.done.i.i:                                  ; preds = %switch.next49.i.i, %switch.next45.i.i, %switch.next8.i.switch.done.i_crit_edge.i
  %.pre-phi.i = phi double [ %.pre.i, %switch.next8.i.switch.done.i_crit_edge.i ], [ %79, %switch.next49.i.i ], [ %79, %switch.next45.i.i ], !dbg !3298
    #dbg_value(double %y.tr44.i, !3215, !DIExpression(), !3333)
    #dbg_value(double %y.tr44.i, !3256, !DIExpression(), !3334)
    #dbg_value(double %.pre-phi.i, !3263, !DIExpression(), !3335)
    #dbg_value(double %.pre-phi.i, !3271, !DIExpression(), !3337)
  %27 = tail call double @llvm.trunc.f64(double %.pre-phi.i), !dbg !3337
    #dbg_value(double %27, !3267, !DIExpression(), !3339)
  %28 = fsub double %.pre-phi.i, %27, !dbg !3340
    #dbg_value(double %28, !1800, !DIExpression(), !3341)
    #dbg_value(double %.pre-phi.i, !1806, !DIExpression(), !3343)
    #dbg_value(!DIArgList(double poison, double poison), !1810, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 9223372036854775808, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !3344)
  %.cast.i2.i.i.i = tail call double @llvm.fabs.f64(double %28), !dbg !3346
    #dbg_value(double %.cast.i2.i.i.i, !3268, !DIExpression(), !3347)
    #dbg_value(double %27, !3216, !DIExpression(), !3348)
    #dbg_value(double %.cast.i2.i.i.i, !3217, !DIExpression(), !3349)
  %29 = fcmp une double %28, 0.000000e+00, !dbg !3350
    #dbg_value(double %x.tr43.i, !3212, !DIExpression(), !3351)
  %30 = fcmp olt double %x.tr43.i, 0.000000e+00
  %or.cond.i.i = select i1 %29, i1 %30, i1 false, !dbg !3227
  br i1 %or.cond.i.i, label %math.Pow.exit, label %if.done15.i.i, !dbg !3227

if.done15.i.i:                                    ; preds = %switch.done.i.i
    #dbg_value(double %27, !3216, !DIExpression(), !3352)
  %31 = fcmp ult double %27, 0x43E0000000000000, !dbg !3353
  br i1 %31, label %if.done21.i.i, label %if.then16.i.i, !dbg !3227

if.then16.i.i:                                    ; preds = %if.done15.i.i
    #dbg_value(double %x.tr43.i, !3212, !DIExpression(), !3354)
  %32 = fcmp oeq double %x.tr43.i, -1.000000e+00, !dbg !3355
  br i1 %32, label %math.Pow.exit, label %switch.next18.i.i, !dbg !3227

switch.next18.i.i:                                ; preds = %if.then16.i.i
    #dbg_value(double %x.tr43.i, !3212, !DIExpression(), !3356)
    #dbg_value(double %x.tr43.i, !3256, !DIExpression(), !3357)
  %33 = tail call double @llvm.fabs.f64(double %x.tr43.i), !dbg !3359
  %34 = fcmp olt double %33, 1.000000e+00, !dbg !3360
    #dbg_value(double %y.tr44.i, !3215, !DIExpression(), !3361)
  %35 = fcmp ule double %y.tr44.i, 0.000000e+00, !dbg !3362
  %36 = xor i1 %35, %34, !dbg !3362
  %spec.select.i = select i1 %36, double 0.000000e+00, double 0x7FF0000000000000, !dbg !3227
  br label %math.Pow.exit, !dbg !3227

if.done21.i.i:                                    ; preds = %if.done15.i.i
    #dbg_value(double 1.000000e+00, !3218, !DIExpression(), !3363)
    #dbg_value(i64 0, !3219, !DIExpression(), !3364)
    #dbg_value(double %.cast.i2.i.i.i, !3217, !DIExpression(), !3365)
  br i1 %29, label %if.then22.i.i, label %if.done25.i.i, !dbg !3227

if.then22.i.i:                                    ; preds = %if.done21.i.i
    #dbg_value(double %.cast.i2.i.i.i, !3217, !DIExpression(), !3366)
  %37 = fcmp ogt double %.cast.i2.i.i.i, 5.000000e-01, !dbg !3367
  %38 = fadd double %.cast.i2.i.i.i, -1.000000e+00, !dbg !3227
  %39 = fadd double %27, 1.000000e+00, !dbg !3227
  %40 = select i1 %37, double %39, double %27, !dbg !3227
  %41 = select i1 %37, double %38, double %.cast.i2.i.i.i, !dbg !3227
    #dbg_value(double %41, !3217, !DIExpression(), !3368)
    #dbg_value(double %x.tr43.i, !3212, !DIExpression(), !3369)
    #dbg_value(double %x.tr43.i, !3370, !DIExpression(), !3374)
  %42 = tail call double @llvm.log.f64(double %x.tr43.i), !dbg !3374
  %43 = fmul double %42, %41, !dbg !3376
    #dbg_value(double %43, !3377, !DIExpression(), !3381)
  %44 = tail call double @llvm.exp.f64(double %43), !dbg !3381
    #dbg_value(double %44, !3218, !DIExpression(), !3383)
  br label %if.done25.i.i, !dbg !3227

if.done25.i.i:                                    ; preds = %if.then22.i.i, %if.done21.i.i
  %45 = phi double [ %27, %if.done21.i.i ], [ %40, %if.then22.i.i ], !dbg !3348
  %46 = phi double [ 1.000000e+00, %if.done21.i.i ], [ %44, %if.then22.i.i ], !dbg !3363
    #dbg_value(double %x.tr43.i, !3212, !DIExpression(), !3384)
    #dbg_value(double poison, !3220, !DIExpression(), !3385)
    #dbg_value(i64 poison, !3221, !DIExpression(), !3386)
    #dbg_value(double %45, !3216, !DIExpression(), !3387)
  %abovemin.i.i = fcmp oge double %45, 0xC3E0000000000000, !dbg !3388
  %belowmax.i.i = fcmp ole double %45, 0x43DFFFFFFFFFFFFE, !dbg !3388
  %inbounds.i.i = and i1 %abovemin.i.i, %belowmax.i.i, !dbg !3388
  %saturated.i.i = select i1 %abovemin.i.i, i64 9223372036854775807, i64 -9223372036854775808, !dbg !3388
  %isnan.i.i = fcmp uno double %45, 0.000000e+00, !dbg !3388
  %remapped.i.i = select i1 %isnan.i.i, i64 0, i64 %saturated.i.i, !dbg !3388
  %normal.i.i = fptosi double %45 to i64, !dbg !3388
  %47 = select i1 %inbounds.i.i, i64 %normal.i.i, i64 %remapped.i.i, !dbg !3388
    #dbg_value(i64 %47, !3222, !DIExpression(), !3389)
  %.not.i47.i = icmp eq i64 %47, 0, !dbg !3390
  br i1 %.not.i47.i, label %for.done.i.i, label %for.body.i.preheader.i, !dbg !3227

for.body.i.preheader.i:                           ; preds = %if.done25.i.i
  %48 = tail call fastcc { double, i64 } @math.Frexp(double %x.tr43.i), !dbg !3391
  %49 = extractvalue { double, i64 } %48, 1, !dbg !3391
    #dbg_value(i64 %49, !3221, !DIExpression(), !3386)
  %50 = extractvalue { double, i64 } %48, 0, !dbg !3391
    #dbg_value(double %50, !3220, !DIExpression(), !3385)
  br label %for.body.i.i, !dbg !3227

for.body.i.i:                                     ; preds = %if.done27.i.i, %for.body.i.preheader.i
  %51 = phi i64 [ %70, %if.done27.i.i ], [ %47, %for.body.i.preheader.i ]
  %52 = phi i64 [ %69, %if.done27.i.i ], [ %49, %for.body.i.preheader.i ]
  %53 = phi double [ %67, %if.done27.i.i ], [ %50, %for.body.i.preheader.i ]
  %54 = phi i64 [ %62, %if.done27.i.i ], [ 0, %for.body.i.preheader.i ]
  %55 = phi double [ %60, %if.done27.i.i ], [ %46, %for.body.i.preheader.i ]
    #dbg_value(i64 %51, !3222, !DIExpression(), !3392)
    #dbg_value(i64 %52, !3221, !DIExpression(), !3393)
  %56 = add i64 %52, -4097, !dbg !3227
  %or.cond10.i.i = icmp ult i64 %56, -8193, !dbg !3227
  br i1 %or.cond10.i.i, label %if.then26.i.i, label %if.done27.i.i, !dbg !3227

if.then26.i.i:                                    ; preds = %for.body.i.i
    #dbg_value(i64 %52, !3221, !DIExpression(), !3394)
  %57 = add i64 %54, %52, !dbg !3395
    #dbg_value(i64 %57, !3219, !DIExpression(), !3395)
  br label %for.done.i.i, !dbg !3227

if.done27.i.i:                                    ; preds = %for.body.i.i
    #dbg_value(i64 %51, !3222, !DIExpression(), !3396)
  %58 = and i64 %51, 1, !dbg !3397
  %.not5.i.i = icmp eq i64 %58, 0, !dbg !3398
  %59 = fmul double %53, %55, !dbg !3227
  %60 = select i1 %.not5.i.i, double %55, double %59, !dbg !3227
  %61 = select i1 %.not5.i.i, i64 0, i64 %52, !dbg !3227
  %62 = add i64 %61, %54, !dbg !3227
    #dbg_value(double %53, !3220, !DIExpression(), !3399)
  %63 = fmul double %53, %53, !dbg !3400
    #dbg_value(double %63, !3220, !DIExpression(), !3400)
  %64 = shl nsw i64 %52, 1, !dbg !3401
    #dbg_value(i64 %64, !3221, !DIExpression(), !3401)
  %65 = fcmp olt double %63, 5.000000e-01, !dbg !3402
  %66 = fadd double %63, %63, !dbg !3227
  %67 = select i1 %65, double %66, double %63, !dbg !3227
  %68 = sext i1 %65 to i64, !dbg !3227
  %69 = add nsw i64 %64, %68, !dbg !3227
  %70 = ashr i64 %51, 1, !dbg !3403
    #dbg_value(i64 %70, !3222, !DIExpression(), !3392)
  %.not.i.i = icmp ult i64 %51, 2, !dbg !3390
  br i1 %.not.i.i, label %for.done.i.i, label %for.body.i.i, !dbg !3227

for.done.i.i:                                     ; preds = %if.done27.i.i, %if.then26.i.i, %if.done25.i.i
  %71 = phi double [ %55, %if.then26.i.i ], [ %46, %if.done25.i.i ], [ %60, %if.done27.i.i ]
  %72 = phi i64 [ %57, %if.then26.i.i ], [ 0, %if.done25.i.i ], [ %62, %if.done27.i.i ], !dbg !3364
    #dbg_value(double %y.tr44.i, !3215, !DIExpression(), !3404)
  %73 = fcmp olt double %y.tr44.i, 0.000000e+00, !dbg !3405
  br i1 %73, label %if.then32.i.i, label %if.done33.i.i, !dbg !3227

if.then32.i.i:                                    ; preds = %for.done.i.i
    #dbg_value(double %71, !3218, !DIExpression(), !3406)
  %74 = fdiv double 1.000000e+00, %71, !dbg !3407
    #dbg_value(double %74, !3218, !DIExpression(), !3408)
    #dbg_value(i64 %72, !3219, !DIExpression(), !3409)
  %75 = sub i64 0, %72, !dbg !3410
    #dbg_value(i64 %75, !3219, !DIExpression(), !3411)
  br label %if.done33.i.i, !dbg !3227

if.done33.i.i:                                    ; preds = %if.then32.i.i, %for.done.i.i
  %76 = phi double [ %71, %for.done.i.i ], [ %74, %if.then32.i.i ], !dbg !3363
  %77 = phi i64 [ %72, %for.done.i.i ], [ %75, %if.then32.i.i ], !dbg !3364
    #dbg_value(double %76, !3218, !DIExpression(), !3412)
    #dbg_value(i64 %77, !3219, !DIExpression(), !3413)
  %78 = tail call fastcc double @math.Ldexp(double %76, i64 %77), !dbg !3414
  br label %math.Pow.exit, !dbg !3415

switch.next34.i.i:                                ; preds = %switch.next5.i.i
    #dbg_value(double %y.tr44.i, !3215, !DIExpression(), !3416)
    #dbg_value(double %y.tr44.i, !1760, !DIExpression(), !3417)
    #dbg_value(i64 0, !1764, !DIExpression(), !3419)
  %79 = tail call double @llvm.fabs.f64(double %y.tr44.i), !dbg !3420
    #dbg_value(double %79, !1760, !DIExpression(), !3421)
  %80 = fcmp ogt double %79, 0x7FEFFFFFFFFFFFFF, !dbg !3422
  br i1 %80, label %switch.body35.i.i, label %switch.next40.i.i, !dbg !3227

switch.body35.i.i:                                ; preds = %switch.next34.i.i
    #dbg_value(double %x.tr43.i, !3212, !DIExpression(), !3423)
  %81 = fcmp oeq double %x.tr43.i, -1.000000e+00, !dbg !3424
  br i1 %81, label %math.Pow.exit, label %switch.next37.i.i, !dbg !3227

switch.next37.i.i:                                ; preds = %switch.body35.i.i
    #dbg_value(double %x.tr43.i, !3212, !DIExpression(), !3425)
    #dbg_value(double %x.tr43.i, !3256, !DIExpression(), !3426)
  %82 = tail call double @llvm.fabs.f64(double %x.tr43.i), !dbg !3428
    #dbg_value(double %y.tr44.i, !3215, !DIExpression(), !3429)
    #dbg_value(i64 1, !1764, !DIExpression(), !3430)
    #dbg_value(double %y.tr44.i, !1760, !DIExpression(), !3432)
  %83 = fcmp ogt double %y.tr44.i, 0x7FEFFFFFFFFFFFFF, !dbg !3433
  %84 = fcmp uge double %82, 1.000000e+00, !dbg !3434
  %85 = xor i1 %83, %84, !dbg !3434
  %spec.select25.i = select i1 %85, double 0.000000e+00, double 0x7FF0000000000000, !dbg !3227
  br label %math.Pow.exit, !dbg !3227

switch.next40.i.i:                                ; preds = %switch.next34.i.i
    #dbg_value(double %x.tr43.i, !3212, !DIExpression(), !3435)
    #dbg_value(double %x.tr43.i, !1760, !DIExpression(), !3436)
    #dbg_value(i64 0, !1764, !DIExpression(), !3438)
  %86 = tail call double @llvm.fabs.f64(double %x.tr43.i), !dbg !3439
    #dbg_value(double %86, !1760, !DIExpression(), !3440)
  %87 = fcmp ogt double %86, 0x7FEFFFFFFFFFFFFF, !dbg !3441
  br i1 %87, label %switch.body41.i.i, label %switch.next47.i.i, !dbg !3227

switch.body41.i.i:                                ; preds = %switch.next40.i.i
    #dbg_value(double %x.tr43.i, !3212, !DIExpression(), !3442)
    #dbg_value(i64 -1, !1764, !DIExpression(), !3443)
    #dbg_value(double poison, !1760, !DIExpression(), !3445)
  %88 = fcmp olt double %x.tr43.i, 0xFFEFFFFFFFFFFFFF, !dbg !3446
  br i1 %88, label %if.then42.i.i, label %if.done43.i.i, !dbg !3227

if.then42.i.i:                                    ; preds = %switch.body41.i.i
    #dbg_value(double %x.tr43.i, !3212, !DIExpression(), !3447)
  %89 = fdiv double 1.000000e+00, %x.tr43.i, !dbg !3448
    #dbg_value(double %y.tr44.i, !3215, !DIExpression(), !3449)
  %90 = fneg double %y.tr44.i, !dbg !3450
    #dbg_value(double %89, !3204, !DIExpression(), !3209)
    #dbg_value(double %90, !3208, !DIExpression(), !3211)
    #dbg_value(double %89, !3212, !DIExpression(), !3223)
    #dbg_value(double %90, !3215, !DIExpression(), !3225)
  %91 = fcmp oeq double %y.tr44.i, 0.000000e+00, !dbg !3226
  %92 = fcmp oeq double %89, 1.000000e+00, !dbg !3227
  %93 = select i1 %91, i1 true, i1 %92, !dbg !3227
  br i1 %93, label %math.Pow.exit, label %switch.next.i.i, !dbg !3227

if.done43.i.i:                                    ; preds = %switch.body41.i.i
    #dbg_value(double %y.tr44.i, !3215, !DIExpression(), !3451)
  %94 = fcmp olt double %y.tr44.i, 0.000000e+00, !dbg !3452
  br i1 %94, label %math.Pow.exit, label %switch.next45.i.i, !dbg !3227

switch.next45.i.i:                                ; preds = %if.done43.i.i
    #dbg_value(double %y.tr44.i, !3215, !DIExpression(), !3453)
  %95 = fcmp ogt double %y.tr44.i, 0.000000e+00, !dbg !3454
  br i1 %95, label %math.Pow.exit, label %switch.done.i.i, !dbg !3227

switch.next47.i.i:                                ; preds = %switch.next40.i.i
    #dbg_value(double %y.tr44.i, !3215, !DIExpression(), !3455)
  %96 = fcmp oeq double %y.tr44.i, 5.000000e-01, !dbg !3456
  br i1 %96, label %switch.body48.i.i, label %switch.next49.i.i, !dbg !3227

switch.body48.i.i:                                ; preds = %switch.next47.i.i
    #dbg_value(double %x.tr43.i, !3212, !DIExpression(), !3457)
    #dbg_value(double %x.tr43.i, !3196, !DIExpression(), !3458)
  %97 = tail call double @llvm.sqrt.f64(double %x.tr43.i), !dbg !3458
  br label %math.Pow.exit, !dbg !3460

switch.next49.i.i:                                ; preds = %switch.next47.i.i
    #dbg_value(double %y.tr44.i, !3215, !DIExpression(), !3461)
  %98 = fcmp oeq double %y.tr44.i, -5.000000e-01, !dbg !3462
  br i1 %98, label %switch.body50.i.i, label %switch.done.i.i, !dbg !3227

switch.body50.i.i:                                ; preds = %switch.next49.i.i
    #dbg_value(double %x.tr43.i, !3212, !DIExpression(), !3463)
    #dbg_value(double %x.tr43.i, !3196, !DIExpression(), !3464)
  %99 = tail call double @llvm.sqrt.f64(double %x.tr43.i), !dbg !3464
  %100 = fdiv double 1.000000e+00, %99, !dbg !3466
  br label %math.Pow.exit, !dbg !3467

math.Pow.exit:                                    ; preds = %switch.next.i.i, %switch.next2.i.i, %if.then42.i.i, %if.done, %math.isOddInt.exit18.i, %if.done.i.i, %math.isOddInt.exit.i, %if.done12.i.i, %switch.done.i.i, %if.then16.i.i, %switch.next18.i.i, %if.done33.i.i, %switch.body35.i.i, %switch.next37.i.i, %if.done43.i.i, %switch.next45.i.i, %switch.body48.i.i, %switch.body50.i.i
  %common.ret.op.i.i = phi double [ 0x7FF0000000000000, %if.done.i.i ], [ 0.000000e+00, %if.done12.i.i ], [ %78, %if.done33.i.i ], [ %97, %switch.body48.i.i ], [ %100, %switch.body50.i.i ], [ %x.tr43.i, %math.isOddInt.exit.i ], [ 1.000000e+00, %if.then16.i.i ], [ 1.000000e+00, %switch.body35.i.i ], [ 0.000000e+00, %if.done43.i.i ], [ 0xFFF0000000000000, %math.isOddInt.exit18.i ], [ 0x7FF8000000000001, %switch.done.i.i ], [ 0x7FF0000000000000, %switch.next45.i.i ], [ %spec.select.i, %switch.next18.i.i ], [ %spec.select25.i, %switch.next37.i.i ], [ 1.000000e+00, %if.done ], [ 0x7FF8000000000001, %switch.next2.i.i ], [ 1.000000e+00, %if.then42.i.i ], [ %x.tr43.i, %switch.next.i.i ]
  %101 = fmul double %3, %common.ret.op.i.i, !dbg !3468
  %abovemin = fcmp oge double %101, 0xC3E0000000000000, !dbg !3469
  %belowmax = fcmp ole double %101, 0x43DFFFFFFFFFFFFE, !dbg !3469
  %inbounds = and i1 %abovemin, %belowmax, !dbg !3469
  %saturated = select i1 %abovemin, i64 9223372036854775807, i64 -9223372036854775808, !dbg !3469
  %isnan = fcmp uno double %101, 0.000000e+00, !dbg !3469
  %remapped = select i1 %isnan, i64 0, i64 %saturated, !dbg !3469
  %normal = fptosi double %101 to i64, !dbg !3469
  %102 = select i1 %inbounds, i64 %normal, i64 %remapped, !dbg !3469
    #dbg_value(i64 %102, !3186, !DIExpression(), !3470)
  br label %common.ret, !dbg !3471
}
