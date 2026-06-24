define i64 @f_gold(i64 %N) local_unnamed_addr #10 !dbg !3021 {
entry:
    #dbg_value(i64 %N, !3026, !DIExpression(), !3027)
    #dbg_value(i64 %N, !3026, !DIExpression(), !3028)
  %0 = add i64 %N, 1, !dbg !3029
  %1 = sitofp i64 %0 to double, !dbg !3030
    #dbg_value(double %1, !3031, !DIExpression(), !3037)
    #dbg_value(double %1, !3031, !DIExpression(), !3039)
    #dbg_value(double %1, !3040, !DIExpression(), !3045)
    #dbg_value(double %1, !3040, !DIExpression(), !3047)
    #dbg_value(double %1, !3048, !DIExpression(), !3052)
    #dbg_value(double %1, !3048, !DIExpression(), !3054)
    #dbg_value(double %1, !3055, !DIExpression(), !3061)
    #dbg_value(double %1, !3055, !DIExpression(), !3063)
  %2 = icmp eq i64 %0, 0, !dbg !3064
  br i1 %2, label %math.Frexp.exit.i.i, label %switch.next.i.i.i.i, !dbg !3065

switch.next.i.i.i.i:                              ; preds = %entry
    #dbg_value(double %1, !3055, !DIExpression(), !3066)
    #dbg_value(double %1, !3067, !DIExpression(), !3074)
    #dbg_value(i64 0, !3073, !DIExpression(), !3074)
    #dbg_value(i64 0, !3073, !DIExpression(), !3076)
    #dbg_value(double %1, !3067, !DIExpression(), !3077)
    #dbg_value(double poison, !3067, !DIExpression(), !3078)
    #dbg_value(double %1, !3079, !DIExpression(), !3083)
    #dbg_value(double %1, !3079, !DIExpression(), !3085)
  %3 = tail call double @llvm.fabs.f64(double %1), !dbg !3086
    #dbg_value(double %3, !3067, !DIExpression(), !3078)
    #dbg_value(double %3, !3067, !DIExpression(), !3087)
  %4 = fcmp ogt double %3, 0x7FEFFFFFFFFFFFFF, !dbg !3088
    #dbg_value(double %1, !3055, !DIExpression(), !3089)
  br i1 %4, label %math.Frexp.exit.i.i, label %switch.next2.i.i.i.i, !dbg !3065

switch.next2.i.i.i.i:                             ; preds = %switch.next.i.i.i.i
    #dbg_value(double %1, !3055, !DIExpression(), !3090)
    #dbg_value(double %1, !3091, !DIExpression(), !3094)
    #dbg_value(double %1, !3091, !DIExpression(), !3096)
    #dbg_value(double %1, !3079, !DIExpression(), !3097)
    #dbg_value(double %1, !3079, !DIExpression(), !3099)
  %5 = fcmp olt double %3, 0x10000000000000, !dbg !3100
  %6 = fmul double %1, 0x4330000000000000, !dbg !3101
  %.pn3.i.i.i.i.i = select i1 %5, double %6, double %1, !dbg !3101
    #dbg_value(double %.pn3.i.i.i.i.i, !3055, !DIExpression(), !3102)
    #dbg_value(i64 poison, !3058, !DIExpression(), !3103)
    #dbg_value(double %.pn3.i.i.i.i.i, !3055, !DIExpression(), !3104)
    #dbg_value(double %.pn3.i.i.i.i.i, !3105, !DIExpression(), !3109)
  %.cast.i.i.i.i.i = bitcast double %.pn3.i.i.i.i.i to i64, !dbg !3111
    #dbg_value(i64 %.cast.i.i.i.i.i, !3059, !DIExpression(), !3112)
    #dbg_value(i64 %.cast.i.i.i.i.i, !3059, !DIExpression(), !3113)
  %7 = lshr i64 %.cast.i.i.i.i.i, 52, !dbg !3114
  %8 = and i64 %7, 2047, !dbg !3115
  %9 = select i1 %5, i64 -1074, i64 -1022, !dbg !3116
  %10 = add nsw i64 %8, %9, !dbg !3117
    #dbg_value(i64 %10, !3058, !DIExpression(), !3117)
  %11 = and i64 %.cast.i.i.i.i.i, -9218868437227405313, !dbg !3118
    #dbg_value(i64 %11, !3059, !DIExpression(), !3118)
  %12 = or disjoint i64 %11, 4602678819172646912, !dbg !3119
    #dbg_value(i64 %12, !3059, !DIExpression(), !3119)
    #dbg_value(i64 %12, !3059, !DIExpression(), !3120)
    #dbg_value(i64 %12, !3121, !DIExpression(), !3124)
  %.cast.i3.i.i.i.i = bitcast i64 %12 to double, !dbg !3126
    #dbg_value(double %.cast.i3.i.i.i.i, !3060, !DIExpression(), !3127)
  br label %math.Frexp.exit.i.i, !dbg !3128

math.Frexp.exit.i.i:                              ; preds = %switch.next2.i.i.i.i, %switch.next.i.i.i.i, %entry
  %f.pn.i.i.i.i = phi double [ %.cast.i3.i.i.i.i, %switch.next2.i.i.i.i ], [ %1, %entry ], [ %1, %switch.next.i.i.i.i ]
  %.pn1.i.i.i.i = phi i64 [ %10, %switch.next2.i.i.i.i ], [ 0, %entry ], [ 0, %switch.next.i.i.i.i ]
    #dbg_value(double %f.pn.i.i.i.i, !3043, !DIExpression(), !3129)
    #dbg_value(i64 %.pn1.i.i.i.i, !3044, !DIExpression(), !3130)
    #dbg_value(double %f.pn.i.i.i.i, !3043, !DIExpression(), !3131)
  %13 = fcmp oeq double %f.pn.i.i.i.i, 5.000000e-01, !dbg !3132
  br i1 %13, label %if.then.i.i, label %if.done.i.i, !dbg !3133

if.then.i.i:                                      ; preds = %math.Frexp.exit.i.i
    #dbg_value(i64 %.pn1.i.i.i.i, !3044, !DIExpression(), !3134)
  %14 = add nsw i64 %.pn1.i.i.i.i, -1, !dbg !3135
  %15 = sitofp i64 %14 to double, !dbg !3136
  br label %math.Log2.exit, !dbg !3137

if.done.i.i:                                      ; preds = %math.Frexp.exit.i.i
    #dbg_value(double %f.pn.i.i.i.i, !3043, !DIExpression(), !3138)
    #dbg_value(double %f.pn.i.i.i.i, !3139, !DIExpression(), !3143)
  %16 = tail call double @llvm.log.f64(double %f.pn.i.i.i.i), !dbg !3143
  %17 = fmul double %16, 0x3FF71547652B82FE, !dbg !3145
    #dbg_value(i64 %.pn1.i.i.i.i, !3044, !DIExpression(), !3146)
  %18 = sitofp i64 %.pn1.i.i.i.i to double, !dbg !3147
  %19 = fadd double %17, %18, !dbg !3148
  br label %math.Log2.exit, !dbg !3149

math.Log2.exit:                                   ; preds = %if.then.i.i, %if.done.i.i
  %common.ret.op.i.i = phi double [ %15, %if.then.i.i ], [ %19, %if.done.i.i ]
    #dbg_value(double %common.ret.op.i.i, !3150, !DIExpression(), !3154)
  %20 = tail call double @llvm.ceil.f64(double %common.ret.op.i.i), !dbg !3154
  %21 = fadd double %20, -1.000000e+00, !dbg !3156
  %abovemin = fcmp oge double %21, 0xC3E0000000000000, !dbg !3157
  %belowmax = fcmp ole double %21, 0x43DFFFFFFFFFFFFE, !dbg !3157
  %inbounds = and i1 %abovemin, %belowmax, !dbg !3157
  %saturated = select i1 %abovemin, i64 9223372036854775807, i64 -9223372036854775808, !dbg !3157
  %isnan = fcmp uno double %21, 0.000000e+00, !dbg !3157
  %remapped = select i1 %isnan, i64 0, i64 %saturated, !dbg !3157
  %normal = fptosi double %21 to i64, !dbg !3157
  %22 = select i1 %inbounds, i64 %normal, i64 %remapped, !dbg !3157
  ret i64 %22, !dbg !3158
}
