define i64 @f_gold(double %h, double %m) #0 !dbg !32233 {
entry:
    #dbg_value(double %h, !32235, !DIExpression(), !32240)
    #dbg_value(double %m, !32236, !DIExpression(), !32240)
    #dbg_value(double %h, !32235, !DIExpression(), !32241)
  %0 = fcmp olt double %h, 0.000000e+00, !dbg !32242
  br i1 %0, label %if.then, label %cond.false, !dbg !32243

if.then:                                          ; preds = %cond.false6, %cond.false5, %cond.false, %entry
  %varargs = call align 8 ptr @runtime.alloc(i64 16, ptr inttoptr (i64 389 to ptr), ptr undef), !dbg !32244
  %1 = getelementptr inbounds [1 x { ptr, ptr }], ptr %varargs, i32 0, i64 0, !dbg !32244
  store { ptr, ptr } { ptr @"reflect/types.type:basic:string", ptr @"main$pack" }, ptr %1, align 8, !dbg !32244
  %slice.ptr = getelementptr inbounds [1 x { ptr, ptr }], ptr %varargs, i32 0, i64 0, !dbg !32244
  %2 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr, 0, !dbg !32244
  %3 = insertvalue { ptr, i64, i64 } %2, i64 1, 1, !dbg !32244
  %4 = insertvalue { ptr, i64, i64 } %3, i64 1, 2, !dbg !32244
  %5 = extractvalue { ptr, i64, i64 } %4, 0, !dbg !32245
  %6 = extractvalue { ptr, i64, i64 } %4, 1, !dbg !32245
  %7 = extractvalue { ptr, i64, i64 } %4, 2, !dbg !32245
  %8 = call { i64, { ptr, ptr } } @fmt.Print(ptr %5, i64 %6, i64 %7, ptr undef), !dbg !32245
  br label %if.done, !dbg !32243

if.done:                                          ; preds = %cond.false6, %if.then
    #dbg_value(double %h, !32235, !DIExpression(), !32246)
  %9 = fcmp oeq double %h, 1.200000e+01, !dbg !32247
  br i1 %9, label %if.then1, label %if.done2, !dbg !32243

if.then1:                                         ; preds = %if.done
    #dbg_value(double 0.000000e+00, !32235, !DIExpression(), !32248)
  br label %if.done2, !dbg !32243

if.done2:                                         ; preds = %if.then1, %if.done
  %10 = phi double [ %h, %if.done ], [ 0.000000e+00, %if.then1 ], !dbg !32249
    #dbg_value(double %m, !32236, !DIExpression(), !32250)
  %11 = fcmp oeq double %m, 6.000000e+01, !dbg !32251
  br i1 %11, label %if.then3, label %if.done4, !dbg !32243

if.then3:                                         ; preds = %if.done2
    #dbg_value(double 0.000000e+00, !32236, !DIExpression(), !32252)
  br label %if.done4, !dbg !32243

if.done4:                                         ; preds = %if.then3, %if.done2
  %12 = phi double [ %m, %if.done2 ], [ 0.000000e+00, %if.then3 ], !dbg !32253
    #dbg_value(double %10, !32235, !DIExpression(), !32254)
  %13 = fmul double %10, 6.000000e+01, !dbg !32255
    #dbg_value(double %12, !32236, !DIExpression(), !32256)
  %14 = fadd double %13, %12, !dbg !32257
  %15 = fmul double %14, 5.000000e-01, !dbg !32258
  %abovemin = fcmp ole double 0xC3E0000000000000, %15, !dbg !32259
  %belowmax = fcmp ole double %15, 0x43DFFFFFFFFFFFFE, !dbg !32259
  %inbounds = and i1 %abovemin, %belowmax, !dbg !32259
  %saturated = select i1 %abovemin, i64 9223372036854775807, i64 -9223372036854775808, !dbg !32259
  %isnan = fcmp uno double %15, %15, !dbg !32259
  %remapped = select i1 %isnan, i64 0, i64 %saturated, !dbg !32259
  %normal = fptosi double %15 to i64, !dbg !32259
  %16 = select i1 %inbounds, i64 %normal, i64 %remapped, !dbg !32259
    #dbg_value(i64 %16, !32237, !DIExpression(), !32260)
    #dbg_value(double %12, !32236, !DIExpression(), !32261)
  %17 = fmul double %12, 6.000000e+00, !dbg !32262
  %abovemin7 = fcmp ole double 0xC3E0000000000000, %17, !dbg !32263
  %belowmax8 = fcmp ole double %17, 0x43DFFFFFFFFFFFFE, !dbg !32263
  %inbounds9 = and i1 %abovemin7, %belowmax8, !dbg !32263
  %saturated10 = select i1 %abovemin7, i64 9223372036854775807, i64 -9223372036854775808, !dbg !32263
  %isnan11 = fcmp uno double %17, %17, !dbg !32263
  %remapped12 = select i1 %isnan11, i64 0, i64 %saturated10, !dbg !32263
  %normal13 = fptosi double %17 to i64, !dbg !32263
  %18 = select i1 %inbounds9, i64 %normal13, i64 %remapped12, !dbg !32263
    #dbg_value(i64 %18, !32238, !DIExpression(), !32264)
    #dbg_value(i64 %16, !32237, !DIExpression(), !32265)
    #dbg_value(i64 %18, !32238, !DIExpression(), !32266)
  %19 = sub i64 %16, %18, !dbg !32267
  %20 = sitofp i64 %19 to double, !dbg !32268
  %21 = call double @math.Abs(double %20, ptr undef), !dbg !32269
  %abovemin14 = fcmp ole double 0xC3E0000000000000, %21, !dbg !32270
  %belowmax15 = fcmp ole double %21, 0x43DFFFFFFFFFFFFE, !dbg !32270
  %inbounds16 = and i1 %abovemin14, %belowmax15, !dbg !32270
  %saturated17 = select i1 %abovemin14, i64 9223372036854775807, i64 -9223372036854775808, !dbg !32270
  %isnan18 = fcmp uno double %21, %21, !dbg !32270
  %remapped19 = select i1 %isnan18, i64 0, i64 %saturated17, !dbg !32270
  %normal20 = fptosi double %21 to i64, !dbg !32270
  %22 = select i1 %inbounds16, i64 %normal20, i64 %remapped19, !dbg !32270
    #dbg_value(i64 %22, !32239, !DIExpression(), !32271)
    #dbg_value(i64 %22, !32239, !DIExpression(), !32272)
  %23 = sub i64 360, %22, !dbg !32273
    #dbg_value(i64 %22, !32239, !DIExpression(), !32274)
  %24 = call i64 @main.min(i64 %23, i64 %22, ptr undef), !dbg !32275
    #dbg_value(i64 %24, !32239, !DIExpression(), !32276)
    #dbg_value(i64 %24, !32239, !DIExpression(), !32277)
  ret i64 %24, !dbg !32278

cond.false:                                       ; preds = %entry
    #dbg_value(double %m, !32236, !DIExpression(), !32279)
  %25 = fcmp olt double %m, 0.000000e+00, !dbg !32280
  br i1 %25, label %if.then, label %cond.false5, !dbg !32243

cond.false5:                                      ; preds = %cond.false
    #dbg_value(double %h, !32235, !DIExpression(), !32281)
  %26 = fcmp ogt double %h, 1.200000e+01, !dbg !32282
  br i1 %26, label %if.then, label %cond.false6, !dbg !32243

cond.false6:                                      ; preds = %cond.false5
    #dbg_value(double %m, !32236, !DIExpression(), !32283)
  %27 = fcmp ogt double %m, 6.000000e+01, !dbg !32284
  br i1 %27, label %if.then, label %if.done, !dbg !32243
}
