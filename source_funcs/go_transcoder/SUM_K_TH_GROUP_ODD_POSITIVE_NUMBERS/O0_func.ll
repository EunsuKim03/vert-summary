define i64 @f_gold(i64 %k) #0 !dbg !4927 {
entry:
    #dbg_value(i64 %k, !4930, !DIExpression(), !4933)
  %k1 = call align 8 ptr @runtime.alloc(i64 8, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !4934
  store i64 %k, ptr %k1, align 8, !dbg !4934
  %0 = load i64, ptr %k1, align 8, !dbg !4935
    #dbg_value(i64 %0, !4930, !DIExpression(), !4935)
  %1 = load i64, ptr %k1, align 8, !dbg !4936
    #dbg_value(i64 %1, !4930, !DIExpression(), !4936)
  %2 = sub i64 %1, 1, !dbg !4937
  %3 = mul i64 %0, %2, !dbg !4938
  %4 = add i64 %3, 1, !dbg !4939
    #dbg_value(i64 %4, !4931, !DIExpression(), !4940)
    #dbg_value(i64 0, !4932, !DIExpression(), !4941)
  br label %for.loop, !dbg !4942

for.loop:                                         ; preds = %for.body, %entry
  %5 = phi i64 [ %4, %entry ], [ %13, %for.body ], !dbg !4940
  %6 = phi i64 [ 0, %entry ], [ %12, %for.body ], !dbg !4941
  %7 = insertvalue { ptr, ptr } undef, ptr %k1, 0, !dbg !4943
  %8 = insertvalue { ptr, ptr } %7, ptr @"main.f_gold$1", 1, !dbg !4943
  %9 = extractvalue { ptr, ptr } %8, 0, !dbg !4944
  %10 = call i64 @"main.f_gold$1"(ptr %9), !dbg !4944
  %11 = icmp ne i64 %10, 0, !dbg !4945
  br i1 %11, label %for.body, label %for.done, !dbg !4942

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %5, !4931, !DIExpression(), !4946)
  %12 = add i64 %6, %5, !dbg !4947
    #dbg_value(i64 %12, !4932, !DIExpression(), !4947)
  %13 = add i64 %5, 2, !dbg !4948
    #dbg_value(i64 %13, !4931, !DIExpression(), !4948)
  br label %for.loop, !dbg !4942

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %6, !4932, !DIExpression(), !4949)
  ret i64 %6, !dbg !4950
}
