define double @f_gold(i64 %n) #0 !dbg !4927 {
entry:
    #dbg_value(i64 %n, !4930, !DIExpression(), !4934)
  %i = call align 8 ptr @runtime.alloc(i64 8, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !4935
  store i64 1, ptr %i, align 8, !dbg !4935
    #dbg_value(i64 1, !4931, !DIExpression(), !4935)
    #dbg_value(double 0.000000e+00, !4932, !DIExpression(), !4936)
    #dbg_value(i1 true, !4933, !DIExpression(), !4937)
  br label %for.loop, !dbg !4938

for.loop:                                         ; preds = %if.else, %if.then, %entry
  %0 = phi i64 [ %n, %entry ], [ %4, %if.then ], [ %4, %if.else ], !dbg !4939
  %1 = phi double [ 0.000000e+00, %entry ], [ %17, %if.then ], [ %30, %if.else ], !dbg !4936
  %2 = phi i1 [ true, %entry ], [ %5, %if.then ], [ %18, %if.else ], !dbg !4937
    #dbg_value(i64 %0, !4930, !DIExpression(), !4940)
  %3 = icmp sgt i64 %0, 0, !dbg !4941
  br i1 %3, label %for.body, label %for.done, !dbg !4938

for.body:                                         ; preds = %for.loop
  %4 = sub i64 %0, 1, !dbg !4942
    #dbg_value(i64 %4, !4930, !DIExpression(), !4942)
    #dbg_value(i1 %2, !4933, !DIExpression(), !4943)
  br i1 %2, label %if.then, label %if.else, !dbg !4938

if.then:                                          ; preds = %for.body
    #dbg_value(i1 %2, !4933, !DIExpression(), !4944)
  %5 = xor i1 %2, true, !dbg !4945
    #dbg_value(i1 %5, !4933, !DIExpression(), !4946)
    #dbg_value(double %1, !4932, !DIExpression(), !4947)
  %6 = insertvalue { ptr, ptr } undef, ptr %i, 0, !dbg !4948
  %7 = insertvalue { ptr, ptr } %6, ptr @"main.f_gold$1", 1, !dbg !4948
  %8 = extractvalue { ptr, ptr } %7, 0, !dbg !4949
  %9 = call i64 @"main.f_gold$1"(ptr %8), !dbg !4949
  %10 = sitofp i64 %9 to double, !dbg !4950
  %11 = insertvalue { ptr, ptr } undef, ptr %i, 0, !dbg !4951
  %12 = insertvalue { ptr, ptr } %11, ptr @"main.f_gold$2", 1, !dbg !4951
  %13 = extractvalue { ptr, ptr } %12, 0, !dbg !4952
  %14 = call i64 @"main.f_gold$2"(ptr %13), !dbg !4952
  %15 = sitofp i64 %14 to double, !dbg !4953
  %16 = fdiv double %10, %15, !dbg !4954
  %17 = fadd double %1, %16, !dbg !4955
    #dbg_value(double %17, !4932, !DIExpression(), !4956)
  br label %for.loop, !dbg !4938

if.else:                                          ; preds = %for.body
    #dbg_value(i1 %2, !4933, !DIExpression(), !4957)
  %18 = xor i1 %2, true, !dbg !4958
    #dbg_value(i1 %18, !4933, !DIExpression(), !4959)
    #dbg_value(double %1, !4932, !DIExpression(), !4960)
  %19 = insertvalue { ptr, ptr } undef, ptr %i, 0, !dbg !4961
  %20 = insertvalue { ptr, ptr } %19, ptr @"main.f_gold$3", 1, !dbg !4961
  %21 = extractvalue { ptr, ptr } %20, 0, !dbg !4962
  %22 = call i64 @"main.f_gold$3"(ptr %21), !dbg !4962
  %23 = sitofp i64 %22 to double, !dbg !4963
  %24 = insertvalue { ptr, ptr } undef, ptr %i, 0, !dbg !4964
  %25 = insertvalue { ptr, ptr } %24, ptr @"main.f_gold$4", 1, !dbg !4964
  %26 = extractvalue { ptr, ptr } %25, 0, !dbg !4965
  %27 = call i64 @"main.f_gold$4"(ptr %26), !dbg !4965
  %28 = sitofp i64 %27 to double, !dbg !4966
  %29 = fdiv double %23, %28, !dbg !4967
  %30 = fsub double %1, %29, !dbg !4968
    #dbg_value(double %30, !4932, !DIExpression(), !4969)
  br label %for.loop, !dbg !4938

for.done:                                         ; preds = %for.loop
    #dbg_value(double %1, !4932, !DIExpression(), !4970)
  ret double %1, !dbg !4971
}
