define float @f_gold(i64 %n) local_unnamed_addr #12 !dbg !3182 {
entry:
    #dbg_value(i64 %n, !3185, !DIExpression(), !3186)
    #dbg_value(double 1.000000e+01, !3187, !DIExpression(), !3192)
    #dbg_value(double poison, !3191, !DIExpression(), !3194)
    #dbg_value(double 1.000000e+01, !3195, !DIExpression(), !3206)
    #dbg_value(double poison, !3198, !DIExpression(), !3208)
  switch i64 %n, label %switch.next34.i.i [
    i64 0, label %math.Pow.exit
    i64 1, label %math.Pow.exit.fold.split
  ], !dbg !3209

if.done15.i.i:                                    ; preds = %switch.next34.i.i
    #dbg_value(double 1.000000e+01, !3195, !DIExpression(), !3210)
    #dbg_value(i64 0, !1764, !DIExpression(), !3211)
    #dbg_value(double 1.000000e+01, !1760, !DIExpression(), !3213)
    #dbg_value(double poison, !3198, !DIExpression(), !3214)
    #dbg_value(double %47, !3215, !DIExpression(), !3221)
    #dbg_value(double %47, !3223, !DIExpression(), !3227)
  %0 = tail call double @llvm.trunc.f64(double %47), !dbg !3227
    #dbg_value(double %0, !3219, !DIExpression(), !3229)
  %1 = fsub double %47, %0, !dbg !3230
    #dbg_value(double %1, !1800, !DIExpression(), !3231)
    #dbg_value(double %47, !1806, !DIExpression(), !3233)
    #dbg_value(!DIArgList(double poison, double poison), !1810, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 9223372036854775808, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !3234)
  %.cast.i2.i.i.i = tail call double @llvm.fabs.f64(double %1), !dbg !3236
    #dbg_value(double %.cast.i2.i.i.i, !3220, !DIExpression(), !3237)
    #dbg_value(double %0, !3199, !DIExpression(), !3238)
    #dbg_value(double %.cast.i2.i.i.i, !3200, !DIExpression(), !3239)
  %2 = fcmp ult double %0, 0x43E0000000000000, !dbg !3240
  br i1 %2, label %if.done21.i.i, label %switch.next18.i.i, !dbg !3209

switch.next18.i.i:                                ; preds = %if.done15.i.i
    #dbg_value(double 1.000000e+01, !3195, !DIExpression(), !3241)
    #dbg_value(double poison, !3198, !DIExpression(), !3242)
  %3 = icmp slt i64 %n, 1, !dbg !3243
  %spec.select.i = select i1 %3, double 0.000000e+00, double 0x7FF0000000000000, !dbg !3209
  br label %math.Pow.exit, !dbg !3209

if.done21.i.i:                                    ; preds = %if.done15.i.i
  %4 = fcmp une double %1, 0.000000e+00, !dbg !3244
    #dbg_value(double 1.000000e+00, !3201, !DIExpression(), !3245)
    #dbg_value(i64 0, !3202, !DIExpression(), !3246)
    #dbg_value(double %.cast.i2.i.i.i, !3200, !DIExpression(), !3247)
  br i1 %4, label %if.then22.i.i, label %if.done25.i.i, !dbg !3209

if.then22.i.i:                                    ; preds = %if.done21.i.i
    #dbg_value(double %.cast.i2.i.i.i, !3200, !DIExpression(), !3248)
  %5 = fcmp ogt double %.cast.i2.i.i.i, 5.000000e-01, !dbg !3249
  %6 = fadd double %.cast.i2.i.i.i, -1.000000e+00, !dbg !3209
  %7 = fadd double %0, 1.000000e+00, !dbg !3209
  %8 = select i1 %5, double %7, double %0, !dbg !3209
  %9 = select i1 %5, double %6, double %.cast.i2.i.i.i, !dbg !3209
    #dbg_value(double %9, !3200, !DIExpression(), !3250)
    #dbg_value(double 1.000000e+01, !3195, !DIExpression(), !3251)
  %10 = fmul double %9, 0x40026BB1BBB55516, !dbg !3252
    #dbg_value(double %10, !3253, !DIExpression(), !3257)
  %11 = tail call double @llvm.exp.f64(double %10), !dbg !3257
    #dbg_value(double %11, !3201, !DIExpression(), !3259)
  br label %if.done25.i.i, !dbg !3209

if.done25.i.i:                                    ; preds = %if.then22.i.i, %if.done21.i.i
  %12 = phi double [ %0, %if.done21.i.i ], [ %8, %if.then22.i.i ], !dbg !3238
  %13 = phi double [ 1.000000e+00, %if.done21.i.i ], [ %11, %if.then22.i.i ], !dbg !3245
    #dbg_value(double 1.000000e+01, !3195, !DIExpression(), !3260)
    #dbg_value(double poison, !3203, !DIExpression(), !3261)
    #dbg_value(i64 poison, !3204, !DIExpression(), !3262)
    #dbg_value(double %12, !3199, !DIExpression(), !3263)
  %abovemin.i.i = fcmp oge double %12, 0xC3E0000000000000, !dbg !3264
  %belowmax.i.i = fcmp ole double %12, 0x43DFFFFFFFFFFFFE, !dbg !3264
  %normal.i.i = fptosi double %12 to i64, !dbg !3264
  %saturated.i.i = select i1 %belowmax.i.i, i64 %normal.i.i, i64 9223372036854775807, !dbg !3264
  %14 = select i1 %abovemin.i.i, i64 %saturated.i.i, i64 -9223372036854775808, !dbg !3264
    #dbg_value(i64 %14, !3205, !DIExpression(), !3265)
  %.not.i47.i = icmp eq i64 %14, 0, !dbg !3266
  br i1 %.not.i47.i, label %for.done.i.i, label %for.body.i.preheader.i, !dbg !3209

for.body.i.preheader.i:                           ; preds = %if.done25.i.i
  %15 = tail call fastcc { double, i64 } @math.Frexp(double 1.000000e+01), !dbg !3267
  %16 = extractvalue { double, i64 } %15, 1, !dbg !3267
    #dbg_value(i64 %16, !3204, !DIExpression(), !3262)
  %17 = extractvalue { double, i64 } %15, 0, !dbg !3267
    #dbg_value(double %17, !3203, !DIExpression(), !3261)
  br label %for.body.i.i, !dbg !3209

for.body.i.i:                                     ; preds = %if.done27.i.i, %for.body.i.preheader.i
  %18 = phi i64 [ %37, %if.done27.i.i ], [ %14, %for.body.i.preheader.i ]
  %19 = phi i64 [ %36, %if.done27.i.i ], [ %16, %for.body.i.preheader.i ]
  %20 = phi double [ %34, %if.done27.i.i ], [ %17, %for.body.i.preheader.i ]
  %21 = phi i64 [ %29, %if.done27.i.i ], [ 0, %for.body.i.preheader.i ]
  %22 = phi double [ %27, %if.done27.i.i ], [ %13, %for.body.i.preheader.i ]
    #dbg_value(i64 %18, !3205, !DIExpression(), !3268)
    #dbg_value(i64 %19, !3204, !DIExpression(), !3269)
  %23 = add i64 %19, -4097, !dbg !3209
  %or.cond10.i.i = icmp ult i64 %23, -8193, !dbg !3209
  br i1 %or.cond10.i.i, label %if.then26.i.i, label %if.done27.i.i, !dbg !3209

if.then26.i.i:                                    ; preds = %for.body.i.i
    #dbg_value(i64 %19, !3204, !DIExpression(), !3270)
  %24 = add i64 %21, %19, !dbg !3271
    #dbg_value(i64 %24, !3202, !DIExpression(), !3271)
  br label %for.done.i.i, !dbg !3209

if.done27.i.i:                                    ; preds = %for.body.i.i
    #dbg_value(i64 %18, !3205, !DIExpression(), !3272)
  %25 = and i64 %18, 1, !dbg !3273
  %.not5.i.i = icmp eq i64 %25, 0, !dbg !3274
  %26 = fmul double %20, %22, !dbg !3209
  %27 = select i1 %.not5.i.i, double %22, double %26, !dbg !3209
  %28 = select i1 %.not5.i.i, i64 0, i64 %19, !dbg !3209
  %29 = add i64 %28, %21, !dbg !3209
    #dbg_value(double %20, !3203, !DIExpression(), !3275)
  %30 = fmul double %20, %20, !dbg !3276
    #dbg_value(double %30, !3203, !DIExpression(), !3276)
  %31 = shl nsw i64 %19, 1, !dbg !3277
    #dbg_value(i64 %31, !3204, !DIExpression(), !3277)
  %32 = fcmp olt double %30, 5.000000e-01, !dbg !3278
  %33 = fadd double %30, %30, !dbg !3209
  %34 = select i1 %32, double %33, double %30, !dbg !3209
  %35 = sext i1 %32 to i64, !dbg !3209
  %36 = add nsw i64 %31, %35, !dbg !3209
  %37 = ashr i64 %18, 1, !dbg !3279
    #dbg_value(i64 %37, !3205, !DIExpression(), !3268)
  %.not.i.i = icmp ult i64 %18, 2, !dbg !3266
  br i1 %.not.i.i, label %for.done.i.i, label %for.body.i.i, !dbg !3209

for.done.i.i:                                     ; preds = %if.done27.i.i, %if.then26.i.i, %if.done25.i.i
  %38 = phi double [ %22, %if.then26.i.i ], [ %13, %if.done25.i.i ], [ %27, %if.done27.i.i ]
  %39 = phi i64 [ %24, %if.then26.i.i ], [ 0, %if.done25.i.i ], [ %29, %if.done27.i.i ], !dbg !3246
    #dbg_value(double poison, !3198, !DIExpression(), !3280)
  %40 = icmp slt i64 %n, 0, !dbg !3281
  br i1 %40, label %if.then32.i.i, label %if.done33.i.i, !dbg !3209

if.then32.i.i:                                    ; preds = %for.done.i.i
    #dbg_value(double %38, !3201, !DIExpression(), !3282)
  %41 = fdiv double 1.000000e+00, %38, !dbg !3283
    #dbg_value(double %41, !3201, !DIExpression(), !3284)
    #dbg_value(i64 %39, !3202, !DIExpression(), !3285)
  %42 = sub i64 0, %39, !dbg !3286
    #dbg_value(i64 %42, !3202, !DIExpression(), !3287)
  br label %if.done33.i.i, !dbg !3209

if.done33.i.i:                                    ; preds = %if.then32.i.i, %for.done.i.i
  %43 = phi double [ %38, %for.done.i.i ], [ %41, %if.then32.i.i ], !dbg !3245
  %44 = phi i64 [ %39, %for.done.i.i ], [ %42, %if.then32.i.i ], !dbg !3246
    #dbg_value(double %43, !3201, !DIExpression(), !3288)
    #dbg_value(i64 %44, !3202, !DIExpression(), !3289)
  %45 = tail call fastcc double @math.Ldexp(double %43, i64 %44), !dbg !3290
  br label %math.Pow.exit, !dbg !3291

switch.next34.i.i:                                ; preds = %entry
  %46 = sitofp i64 %n to double, !dbg !3292
    #dbg_value(double %46, !3191, !DIExpression(), !3194)
    #dbg_value(double %46, !3198, !DIExpression(), !3208)
    #dbg_value(double 1.000000e+01, !3195, !DIExpression(), !3293)
    #dbg_value(double %46, !3198, !DIExpression(), !3294)
    #dbg_value(double %46, !1760, !DIExpression(), !3295)
    #dbg_value(i64 0, !1764, !DIExpression(), !3297)
  %47 = tail call double @llvm.fabs.f64(double %46), !dbg !3298
    #dbg_value(double %47, !1760, !DIExpression(), !3299)
  %48 = fcmp ogt double %47, 0x7FEFFFFFFFFFFFFF, !dbg !3300
  br i1 %48, label %math.Pow.exit, label %if.done15.i.i, !dbg !3209

math.Pow.exit.fold.split:                         ; preds = %entry
  br label %math.Pow.exit, !dbg !3301

math.Pow.exit:                                    ; preds = %entry, %math.Pow.exit.fold.split, %switch.next34.i.i, %switch.next18.i.i, %if.done33.i.i
  %common.ret.op.i.i = phi double [ %45, %if.done33.i.i ], [ %spec.select.i, %switch.next18.i.i ], [ 1.000000e+00, %entry ], [ 0.000000e+00, %switch.next34.i.i ], [ 1.000000e+01, %math.Pow.exit.fold.split ]
  %49 = fdiv double 1.000000e+00, %common.ret.op.i.i, !dbg !3301
  %50 = fsub double 1.000000e+00, %49, !dbg !3302
  %51 = fmul double %50, 6.660000e-01, !dbg !3303
  %52 = fptrunc double %51 to float, !dbg !3304
  ret float %52, !dbg !3305
}
