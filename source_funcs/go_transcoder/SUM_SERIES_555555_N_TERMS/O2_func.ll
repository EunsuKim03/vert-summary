define i64 @f_gold(i64 %n) local_unnamed_addr #12 !dbg !3182 {
entry:
    #dbg_value(i64 %n, !3185, !DIExpression(), !3186)
  %0 = sitofp i64 %n to double, !dbg !3187
    #dbg_value(double 1.000000e+01, !3188, !DIExpression(), !3193)
    #dbg_value(double %0, !3192, !DIExpression(), !3195)
    #dbg_value(double 1.000000e+01, !3196, !DIExpression(), !3207)
    #dbg_value(double %0, !3199, !DIExpression(), !3209)
  switch i64 %n, label %switch.next34.i.i [
    i64 0, label %math.Pow.exit
    i64 1, label %math.Pow.exit.fold.split
  ], !dbg !3210

if.done15.i.i:                                    ; preds = %switch.next34.i.i
    #dbg_value(double 1.000000e+01, !3196, !DIExpression(), !3211)
    #dbg_value(i64 0, !1764, !DIExpression(), !3212)
    #dbg_value(double 1.000000e+01, !1760, !DIExpression(), !3214)
    #dbg_value(double %0, !3199, !DIExpression(), !3215)
    #dbg_value(double %47, !3216, !DIExpression(), !3222)
    #dbg_value(double %47, !3224, !DIExpression(), !3228)
  %1 = tail call double @llvm.trunc.f64(double %47), !dbg !3228
    #dbg_value(double %1, !3220, !DIExpression(), !3230)
  %2 = fsub double %47, %1, !dbg !3231
    #dbg_value(double %2, !1800, !DIExpression(), !3232)
    #dbg_value(double %47, !1806, !DIExpression(), !3234)
    #dbg_value(!DIArgList(double poison, double poison), !1810, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 9223372036854775808, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !3235)
  %.cast.i2.i.i.i = tail call double @llvm.fabs.f64(double %2), !dbg !3237
    #dbg_value(double %.cast.i2.i.i.i, !3221, !DIExpression(), !3238)
    #dbg_value(double %1, !3200, !DIExpression(), !3239)
    #dbg_value(double %.cast.i2.i.i.i, !3201, !DIExpression(), !3240)
  %3 = fcmp ult double %1, 0x43E0000000000000, !dbg !3241
  br i1 %3, label %if.done21.i.i, label %switch.next18.i.i, !dbg !3210

switch.next18.i.i:                                ; preds = %if.done15.i.i
    #dbg_value(double 1.000000e+01, !3196, !DIExpression(), !3242)
    #dbg_value(double %0, !3199, !DIExpression(), !3243)
  %4 = icmp slt i64 %n, 1, !dbg !3244
  %spec.select.i = select i1 %4, double 0.000000e+00, double 0x7FF0000000000000, !dbg !3210
  br label %math.Pow.exit, !dbg !3210

if.done21.i.i:                                    ; preds = %if.done15.i.i
  %5 = fcmp une double %2, 0.000000e+00, !dbg !3245
    #dbg_value(double 1.000000e+00, !3202, !DIExpression(), !3246)
    #dbg_value(i64 0, !3203, !DIExpression(), !3247)
    #dbg_value(double %.cast.i2.i.i.i, !3201, !DIExpression(), !3248)
  br i1 %5, label %if.then22.i.i, label %if.done25.i.i, !dbg !3210

if.then22.i.i:                                    ; preds = %if.done21.i.i
    #dbg_value(double %.cast.i2.i.i.i, !3201, !DIExpression(), !3249)
  %6 = fcmp ogt double %.cast.i2.i.i.i, 5.000000e-01, !dbg !3250
  %7 = fadd double %.cast.i2.i.i.i, -1.000000e+00, !dbg !3210
  %8 = fadd double %1, 1.000000e+00, !dbg !3210
  %9 = select i1 %6, double %8, double %1, !dbg !3210
  %10 = select i1 %6, double %7, double %.cast.i2.i.i.i, !dbg !3210
    #dbg_value(double %10, !3201, !DIExpression(), !3251)
    #dbg_value(double 1.000000e+01, !3196, !DIExpression(), !3252)
  %11 = fmul double %10, 0x40026BB1BBB55516, !dbg !3253
    #dbg_value(double %11, !3254, !DIExpression(), !3258)
  %12 = tail call double @llvm.exp.f64(double %11), !dbg !3258
    #dbg_value(double %12, !3202, !DIExpression(), !3260)
  br label %if.done25.i.i, !dbg !3210

if.done25.i.i:                                    ; preds = %if.then22.i.i, %if.done21.i.i
  %13 = phi double [ %1, %if.done21.i.i ], [ %9, %if.then22.i.i ], !dbg !3239
  %14 = phi double [ 1.000000e+00, %if.done21.i.i ], [ %12, %if.then22.i.i ], !dbg !3246
    #dbg_value(double 1.000000e+01, !3196, !DIExpression(), !3261)
    #dbg_value(double poison, !3204, !DIExpression(), !3262)
    #dbg_value(i64 poison, !3205, !DIExpression(), !3263)
    #dbg_value(double %13, !3200, !DIExpression(), !3264)
  %abovemin.i.i = fcmp oge double %13, 0xC3E0000000000000, !dbg !3265
  %belowmax.i.i = fcmp ole double %13, 0x43DFFFFFFFFFFFFE, !dbg !3265
  %normal.i.i = fptosi double %13 to i64, !dbg !3265
  %saturated.i.i = select i1 %belowmax.i.i, i64 %normal.i.i, i64 9223372036854775807, !dbg !3265
  %15 = select i1 %abovemin.i.i, i64 %saturated.i.i, i64 -9223372036854775808, !dbg !3265
    #dbg_value(i64 %15, !3206, !DIExpression(), !3266)
  %.not.i47.i = icmp eq i64 %15, 0, !dbg !3267
  br i1 %.not.i47.i, label %for.done.i.i, label %for.body.i.preheader.i, !dbg !3210

for.body.i.preheader.i:                           ; preds = %if.done25.i.i
  %16 = tail call fastcc { double, i64 } @math.Frexp(double 1.000000e+01), !dbg !3268
  %17 = extractvalue { double, i64 } %16, 1, !dbg !3268
    #dbg_value(i64 %17, !3205, !DIExpression(), !3263)
  %18 = extractvalue { double, i64 } %16, 0, !dbg !3268
    #dbg_value(double %18, !3204, !DIExpression(), !3262)
  br label %for.body.i.i, !dbg !3210

for.body.i.i:                                     ; preds = %if.done27.i.i, %for.body.i.preheader.i
  %19 = phi i64 [ %38, %if.done27.i.i ], [ %15, %for.body.i.preheader.i ]
  %20 = phi i64 [ %37, %if.done27.i.i ], [ %17, %for.body.i.preheader.i ]
  %21 = phi double [ %35, %if.done27.i.i ], [ %18, %for.body.i.preheader.i ]
  %22 = phi i64 [ %30, %if.done27.i.i ], [ 0, %for.body.i.preheader.i ]
  %23 = phi double [ %28, %if.done27.i.i ], [ %14, %for.body.i.preheader.i ]
    #dbg_value(i64 %19, !3206, !DIExpression(), !3269)
    #dbg_value(i64 %20, !3205, !DIExpression(), !3270)
  %24 = add i64 %20, -4097, !dbg !3210
  %or.cond10.i.i = icmp ult i64 %24, -8193, !dbg !3210
  br i1 %or.cond10.i.i, label %if.then26.i.i, label %if.done27.i.i, !dbg !3210

if.then26.i.i:                                    ; preds = %for.body.i.i
    #dbg_value(i64 %20, !3205, !DIExpression(), !3271)
  %25 = add i64 %22, %20, !dbg !3272
    #dbg_value(i64 %25, !3203, !DIExpression(), !3272)
  br label %for.done.i.i, !dbg !3210

if.done27.i.i:                                    ; preds = %for.body.i.i
    #dbg_value(i64 %19, !3206, !DIExpression(), !3273)
  %26 = and i64 %19, 1, !dbg !3274
  %.not5.i.i = icmp eq i64 %26, 0, !dbg !3275
  %27 = fmul double %21, %23, !dbg !3210
  %28 = select i1 %.not5.i.i, double %23, double %27, !dbg !3210
  %29 = select i1 %.not5.i.i, i64 0, i64 %20, !dbg !3210
  %30 = add i64 %29, %22, !dbg !3210
    #dbg_value(double %21, !3204, !DIExpression(), !3276)
  %31 = fmul double %21, %21, !dbg !3277
    #dbg_value(double %31, !3204, !DIExpression(), !3277)
  %32 = shl nsw i64 %20, 1, !dbg !3278
    #dbg_value(i64 %32, !3205, !DIExpression(), !3278)
  %33 = fcmp olt double %31, 5.000000e-01, !dbg !3279
  %34 = fadd double %31, %31, !dbg !3210
  %35 = select i1 %33, double %34, double %31, !dbg !3210
  %36 = sext i1 %33 to i64, !dbg !3210
  %37 = add nsw i64 %32, %36, !dbg !3210
  %38 = ashr i64 %19, 1, !dbg !3280
    #dbg_value(i64 %38, !3206, !DIExpression(), !3269)
  %.not.i.i = icmp ult i64 %19, 2, !dbg !3267
  br i1 %.not.i.i, label %for.done.i.i, label %for.body.i.i, !dbg !3210

for.done.i.i:                                     ; preds = %if.done27.i.i, %if.then26.i.i, %if.done25.i.i
  %39 = phi double [ %23, %if.then26.i.i ], [ %14, %if.done25.i.i ], [ %28, %if.done27.i.i ]
  %40 = phi i64 [ %25, %if.then26.i.i ], [ 0, %if.done25.i.i ], [ %30, %if.done27.i.i ], !dbg !3247
    #dbg_value(double %0, !3199, !DIExpression(), !3281)
  %41 = icmp slt i64 %n, 0, !dbg !3282
  br i1 %41, label %if.then32.i.i, label %if.done33.i.i, !dbg !3210

if.then32.i.i:                                    ; preds = %for.done.i.i
    #dbg_value(double %39, !3202, !DIExpression(), !3283)
  %42 = fdiv double 1.000000e+00, %39, !dbg !3284
    #dbg_value(double %42, !3202, !DIExpression(), !3285)
    #dbg_value(i64 %40, !3203, !DIExpression(), !3286)
  %43 = sub i64 0, %40, !dbg !3287
    #dbg_value(i64 %43, !3203, !DIExpression(), !3288)
  br label %if.done33.i.i, !dbg !3210

if.done33.i.i:                                    ; preds = %if.then32.i.i, %for.done.i.i
  %44 = phi double [ %39, %for.done.i.i ], [ %42, %if.then32.i.i ], !dbg !3246
  %45 = phi i64 [ %40, %for.done.i.i ], [ %43, %if.then32.i.i ], !dbg !3247
    #dbg_value(double %44, !3202, !DIExpression(), !3289)
    #dbg_value(i64 %45, !3203, !DIExpression(), !3290)
  %46 = tail call fastcc double @math.Ldexp(double %44, i64 %45), !dbg !3291
  br label %math.Pow.exit, !dbg !3292

switch.next34.i.i:                                ; preds = %entry
    #dbg_value(double 1.000000e+01, !3196, !DIExpression(), !3293)
    #dbg_value(double %0, !3199, !DIExpression(), !3294)
    #dbg_value(double %0, !1760, !DIExpression(), !3295)
    #dbg_value(i64 0, !1764, !DIExpression(), !3297)
  %47 = tail call double @llvm.fabs.f64(double %0), !dbg !3298
    #dbg_value(double %47, !1760, !DIExpression(), !3299)
  %48 = fcmp ogt double %47, 0x7FEFFFFFFFFFFFFF, !dbg !3300
  br i1 %48, label %math.Pow.exit, label %if.done15.i.i, !dbg !3210

math.Pow.exit.fold.split:                         ; preds = %entry
  br label %math.Pow.exit, !dbg !3301

math.Pow.exit:                                    ; preds = %entry, %math.Pow.exit.fold.split, %switch.next34.i.i, %switch.next18.i.i, %if.done33.i.i
  %common.ret.op.i.i = phi double [ %46, %if.done33.i.i ], [ %spec.select.i, %switch.next18.i.i ], [ 1.000000e+00, %entry ], [ 0.000000e+00, %switch.next34.i.i ], [ 1.000000e+01, %math.Pow.exit.fold.split ]
  %49 = fadd double %common.ret.op.i.i, -1.000000e+00, !dbg !3301
  %50 = fmul double %49, 6.172000e-01, !dbg !3302
    #dbg_value(i64 %n, !3185, !DIExpression(), !3303)
  %51 = fmul double %0, 5.500000e-01, !dbg !3304
  %52 = fsub double %50, %51, !dbg !3305
  %abovemin = fcmp oge double %52, 0xC3E0000000000000, !dbg !3306
  %belowmax = fcmp ole double %52, 0x43DFFFFFFFFFFFFE, !dbg !3306
  %inbounds = and i1 %abovemin, %belowmax, !dbg !3306
  %saturated = select i1 %abovemin, i64 9223372036854775807, i64 -9223372036854775808, !dbg !3306
  %isnan = fcmp uno double %52, 0.000000e+00, !dbg !3306
  %remapped = select i1 %isnan, i64 0, i64 %saturated, !dbg !3306
  %normal = fptosi double %52 to i64, !dbg !3306
  %53 = select i1 %inbounds, i64 %normal, i64 %remapped, !dbg !3306
  ret i64 %53, !dbg !3307
}
