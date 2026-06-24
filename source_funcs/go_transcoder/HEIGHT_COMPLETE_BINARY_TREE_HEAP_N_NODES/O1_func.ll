define i64 @f_gold(i64 %N) local_unnamed_addr #10 !dbg !3105 {
entry:
    #dbg_value(i64 %N, !3110, !DIExpression(), !3111)
    #dbg_value(i64 %N, !3110, !DIExpression(), !3112)
  %0 = add i64 %N, 1, !dbg !3113
  %1 = sitofp i64 %0 to double, !dbg !3114
    #dbg_value(double %1, !3115, !DIExpression(), !3121)
    #dbg_value(double %1, !3115, !DIExpression(), !3123)
    #dbg_value(double %1, !3124, !DIExpression(), !3129)
    #dbg_value(double %1, !3124, !DIExpression(), !3131)
    #dbg_value(double %1, !3132, !DIExpression(), !3136)
    #dbg_value(double %1, !3132, !DIExpression(), !3138)
    #dbg_value(double %1, !3139, !DIExpression(), !3145)
    #dbg_value(double %1, !3139, !DIExpression(), !3147)
  %2 = icmp eq i64 %0, 0, !dbg !3148
  br i1 %2, label %math.Frexp.exit.i.i, label %switch.next.i.i.i.i, !dbg !3149

switch.next.i.i.i.i:                              ; preds = %entry
    #dbg_value(double %1, !3139, !DIExpression(), !3150)
    #dbg_value(double %1, !3151, !DIExpression(), !3158)
    #dbg_value(i64 0, !3157, !DIExpression(), !3158)
    #dbg_value(i64 0, !3157, !DIExpression(), !3160)
    #dbg_value(double %1, !3151, !DIExpression(), !3161)
    #dbg_value(double poison, !3151, !DIExpression(), !3162)
    #dbg_value(double %1, !3163, !DIExpression(), !3167)
    #dbg_value(double %1, !3163, !DIExpression(), !3169)
  %3 = call double @llvm.fabs.f64(double %1), !dbg !3170
    #dbg_value(double %3, !3151, !DIExpression(), !3162)
    #dbg_value(double %3, !3151, !DIExpression(), !3171)
  %4 = fcmp ogt double %3, 0x7FEFFFFFFFFFFFFF, !dbg !3172
    #dbg_value(double %1, !3139, !DIExpression(), !3173)
  br i1 %4, label %math.Frexp.exit.i.i, label %switch.next2.i.i.i.i, !dbg !3149

switch.next2.i.i.i.i:                             ; preds = %switch.next.i.i.i.i
    #dbg_value(double %1, !3139, !DIExpression(), !3174)
    #dbg_value(double %1, !3175, !DIExpression(), !3178)
    #dbg_value(double %1, !3175, !DIExpression(), !3180)
    #dbg_value(double %1, !3163, !DIExpression(), !3181)
    #dbg_value(double %1, !3163, !DIExpression(), !3183)
  %5 = fcmp olt double %3, 0x10000000000000, !dbg !3184
  %6 = fmul double %1, 0x4330000000000000, !dbg !3185
  %.pn3.i.i.i.i.i = select i1 %5, double %6, double %1, !dbg !3185
    #dbg_value(double %.pn3.i.i.i.i.i, !3139, !DIExpression(), !3186)
    #dbg_value(i64 poison, !3142, !DIExpression(), !3187)
    #dbg_value(double %.pn3.i.i.i.i.i, !3139, !DIExpression(), !3188)
    #dbg_value(double %.pn3.i.i.i.i.i, !3189, !DIExpression(), !3193)
  %.cast.i.i.i.i.i = bitcast double %.pn3.i.i.i.i.i to i64, !dbg !3195
    #dbg_value(i64 %.cast.i.i.i.i.i, !3143, !DIExpression(), !3196)
    #dbg_value(i64 %.cast.i.i.i.i.i, !3143, !DIExpression(), !3197)
  %7 = lshr i64 %.cast.i.i.i.i.i, 52, !dbg !3198
  %8 = and i64 %7, 2047, !dbg !3199
  %9 = select i1 %5, i64 -1074, i64 -1022, !dbg !3200
  %10 = add nsw i64 %8, %9, !dbg !3201
    #dbg_value(i64 %10, !3142, !DIExpression(), !3201)
  %11 = and i64 %.cast.i.i.i.i.i, -9218868437227405313, !dbg !3202
    #dbg_value(i64 %11, !3143, !DIExpression(), !3202)
  %12 = or disjoint i64 %11, 4602678819172646912, !dbg !3203
    #dbg_value(i64 %12, !3143, !DIExpression(), !3203)
    #dbg_value(i64 %12, !3143, !DIExpression(), !3204)
    #dbg_value(i64 %12, !3205, !DIExpression(), !3208)
  %.cast.i3.i.i.i.i = bitcast i64 %12 to double, !dbg !3210
    #dbg_value(double %.cast.i3.i.i.i.i, !3144, !DIExpression(), !3211)
  br label %math.Frexp.exit.i.i, !dbg !3212

math.Frexp.exit.i.i:                              ; preds = %switch.next2.i.i.i.i, %switch.next.i.i.i.i, %entry
  %f.pn.i.i.i.i = phi double [ %.cast.i3.i.i.i.i, %switch.next2.i.i.i.i ], [ %1, %entry ], [ %1, %switch.next.i.i.i.i ]
  %.pn1.i.i.i.i = phi i64 [ %10, %switch.next2.i.i.i.i ], [ 0, %entry ], [ 0, %switch.next.i.i.i.i ]
    #dbg_value(double %f.pn.i.i.i.i, !3127, !DIExpression(), !3213)
    #dbg_value(i64 %.pn1.i.i.i.i, !3128, !DIExpression(), !3214)
    #dbg_value(double %f.pn.i.i.i.i, !3127, !DIExpression(), !3215)
  %13 = fcmp oeq double %f.pn.i.i.i.i, 5.000000e-01, !dbg !3216
  br i1 %13, label %if.then.i.i, label %if.done.i.i, !dbg !3217

if.then.i.i:                                      ; preds = %math.Frexp.exit.i.i
    #dbg_value(i64 %.pn1.i.i.i.i, !3128, !DIExpression(), !3218)
  %14 = add nsw i64 %.pn1.i.i.i.i, -1, !dbg !3219
  %15 = sitofp i64 %14 to double, !dbg !3220
  br label %math.Log2.exit, !dbg !3221

if.done.i.i:                                      ; preds = %math.Frexp.exit.i.i
    #dbg_value(double %f.pn.i.i.i.i, !3127, !DIExpression(), !3222)
    #dbg_value(double %f.pn.i.i.i.i, !3223, !DIExpression(), !3227)
  %16 = call double @llvm.log.f64(double %f.pn.i.i.i.i), !dbg !3227
  %17 = fmul double %16, 0x3FF71547652B82FE, !dbg !3229
    #dbg_value(i64 %.pn1.i.i.i.i, !3128, !DIExpression(), !3230)
  %18 = sitofp i64 %.pn1.i.i.i.i to double, !dbg !3231
  %19 = fadd double %17, %18, !dbg !3232
  br label %math.Log2.exit, !dbg !3233

math.Log2.exit:                                   ; preds = %if.then.i.i, %if.done.i.i
  %common.ret.op.i.i = phi double [ %15, %if.then.i.i ], [ %19, %if.done.i.i ]
    #dbg_value(double %common.ret.op.i.i, !3234, !DIExpression(), !3238)
  %20 = call double @llvm.ceil.f64(double %common.ret.op.i.i), !dbg !3238
  %21 = fadd double %20, -1.000000e+00, !dbg !3240
  %abovemin = fcmp oge double %21, 0xC3E0000000000000, !dbg !3241
  %belowmax = fcmp ole double %21, 0x43DFFFFFFFFFFFFE, !dbg !3241
  %inbounds = and i1 %abovemin, %belowmax, !dbg !3241
  %saturated = select i1 %abovemin, i64 9223372036854775807, i64 -9223372036854775808, !dbg !3241
  %isnan = fcmp uno double %21, 0.000000e+00, !dbg !3241
  %remapped = select i1 %isnan, i64 0, i64 %saturated, !dbg !3241
  %normal = fptosi double %21 to i64, !dbg !3241
  %22 = select i1 %inbounds, i64 %normal, i64 %remapped, !dbg !3241
  ret i64 %22, !dbg !3242
}
