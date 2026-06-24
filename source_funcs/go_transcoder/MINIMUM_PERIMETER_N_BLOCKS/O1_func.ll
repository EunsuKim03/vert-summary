define i64 @f_gold(i64 %n) local_unnamed_addr #5 !dbg !3109 {
entry:
    #dbg_value(i64 %n, !3114, !DIExpression(), !3119)
    #dbg_value(i64 %n, !3114, !DIExpression(), !3120)
  %0 = sitofp i64 %n to double, !dbg !3121
    #dbg_value(double %0, !3122, !DIExpression(), !3128)
  %1 = call double @llvm.sqrt.f64(double %0), !dbg !3128
  %abovemin = fcmp oge double %1, 0xC3E0000000000000, !dbg !3130
  %belowmax = fcmp ole double %1, 0x43DFFFFFFFFFFFFE, !dbg !3130
  %inbounds = and i1 %abovemin, %belowmax, !dbg !3130
  %saturated = select i1 %abovemin, i64 9223372036854775807, i64 -9223372036854775808, !dbg !3130
  %isnan = icmp slt i64 %n, 0, !dbg !3130
  %remapped = select i1 %isnan, i64 0, i64 %saturated, !dbg !3130
  %normal = fptosi double %1 to i64, !dbg !3130
  %2 = select i1 %inbounds, i64 %normal, i64 %remapped, !dbg !3130
    #dbg_value(i64 %2, !3115, !DIExpression(), !3131)
    #dbg_value(i64 %2, !3115, !DIExpression(), !3132)
    #dbg_value(i64 %2, !3115, !DIExpression(), !3133)
  %3 = mul i64 %2, %2, !dbg !3134
    #dbg_value(i64 %3, !3116, !DIExpression(), !3135)
    #dbg_value(i64 %3, !3116, !DIExpression(), !3136)
    #dbg_value(i64 %n, !3114, !DIExpression(), !3137)
  %4 = icmp eq i64 %3, %n, !dbg !3138
  br i1 %4, label %if.then, label %if.else, !dbg !3139

common.ret:                                       ; preds = %divbyzero.next, %if.then
  %common.ret.op = phi i64 [ %5, %if.then ], [ %20, %divbyzero.next ]
  ret i64 %common.ret.op, !dbg !3139

if.then:                                          ; preds = %entry
    #dbg_value(i64 %2, !3115, !DIExpression(), !3140)
  %5 = shl i64 %2, 2, !dbg !3141
  br label %common.ret, !dbg !3142

if.else:                                          ; preds = %entry
    #dbg_value(i64 %n, !3114, !DIExpression(), !3143)
    #dbg_value(i64 %2, !3115, !DIExpression(), !3144)
  %6 = icmp eq i64 %2, 0, !dbg !3145
  br i1 %6, label %divbyzero.throw, label %divbyzero.next, !dbg !3145

divbyzero.next:                                   ; preds = %if.else
  %7 = icmp eq i64 %2, -1, !dbg !3145
  %8 = icmp eq i64 %n, -9223372036854775808, !dbg !3145
  %9 = and i1 %8, %7, !dbg !3145
  %10 = select i1 %9, i64 1, i64 %2, !dbg !3145
  %11 = sdiv i64 %n, %10, !dbg !3145
  %12 = sitofp i64 %11 to double, !dbg !3146
    #dbg_value(double %12, !3117, !DIExpression(), !3147)
    #dbg_value(i64 %2, !3115, !DIExpression(), !3148)
    #dbg_value(double %12, !3117, !DIExpression(), !3149)
  %abovemin2 = fcmp oge double %12, 0xC3E0000000000000, !dbg !3150
  %belowmax3 = fcmp ole double %12, 0x43DFFFFFFFFFFFFE, !dbg !3150
  %normal8 = fptosi double %12 to i64, !dbg !3150
  %saturated5 = select i1 %belowmax3, i64 %normal8, i64 9223372036854775807, !dbg !3150
  %13 = select i1 %abovemin2, i64 %saturated5, i64 0, !dbg !3150
  %14 = add i64 %13, %2, !dbg !3151
  %15 = shl i64 %14, 1, !dbg !3152
  %16 = sitofp i64 %15 to double, !dbg !3153
    #dbg_value(double %16, !3118, !DIExpression(), !3154)
    #dbg_value(i64 %n, !3114, !DIExpression(), !3155)
    #dbg_value(i64 %2, !3115, !DIExpression(), !3156)
  %17 = srem i64 %n, %10, !dbg !3157
  %.not = icmp eq i64 %17, 0, !dbg !3158
  %18 = fadd double %16, 2.000000e+00, !dbg !3139
  %19 = select i1 %.not, double %16, double %18, !dbg !3139
    #dbg_value(double %19, !3118, !DIExpression(), !3159)
  %abovemin11 = fcmp oge double %19, 0xC3E0000000000000, !dbg !3160
  %belowmax12 = fcmp ole double %19, 0x43DFFFFFFFFFFFFE, !dbg !3160
  %normal17 = fptosi double %19 to i64, !dbg !3160
  %saturated14 = select i1 %belowmax12, i64 %normal17, i64 9223372036854775807, !dbg !3160
  %20 = select i1 %abovemin11, i64 %saturated14, i64 -9223372036854775808, !dbg !3160
  br label %common.ret, !dbg !3161

divbyzero.throw:                                  ; preds = %if.else
  call fastcc void @runtime.divideByZeroPanic(), !dbg !3145
  unreachable, !dbg !3145
}
