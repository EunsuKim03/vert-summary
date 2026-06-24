define i64 @f_gold(i64 %n) #0 !dbg !4927 {
entry:
    #dbg_value(i64 %n, !4930, !DIExpression(), !4935)
    #dbg_value(i64 0, !4931, !DIExpression(), !4936)
    #dbg_value(i64 1, !4932, !DIExpression(), !4937)
  br label %for.loop, !dbg !4938

for.loop:                                         ; preds = %if.done3, %entry
  %0 = phi i64 [ 0, %entry ], [ %16, %if.done3 ], !dbg !4936
  %1 = phi i64 [ 1, %entry ], [ %18, %if.done3 ], !dbg !4937
    #dbg_value(i64 0, !4933, !DIExpression(), !4939)
    #dbg_value(i64 %1, !4932, !DIExpression(), !4940)
    #dbg_value(i64 %1, !4934, !DIExpression(), !4941)
  br label %for.loop1, !dbg !4938

for.loop1:                                        ; preds = %for.body, %for.loop
  %2 = phi i64 [ 0, %for.loop ], [ %9, %for.body ], !dbg !4939
  %3 = phi i64 [ %1, %for.loop ], [ %13, %for.body ], !dbg !4941
    #dbg_value(i64 %3, !4934, !DIExpression(), !4942)
  %4 = icmp sgt i64 %3, 0, !dbg !4943
  br i1 %4, label %for.body, label %for.done, !dbg !4938

for.body:                                         ; preds = %for.loop1
    #dbg_value(i64 %2, !4933, !DIExpression(), !4944)
    #dbg_value(i64 %3, !4934, !DIExpression(), !4945)
  %5 = icmp eq i64 %3, -9223372036854775808, !dbg !4946
  %6 = and i1 false, %5, !dbg !4946
  %7 = select i1 %6, i64 1, i64 10, !dbg !4946
  %8 = srem i64 %3, %7, !dbg !4946
  %9 = add i64 %2, %8, !dbg !4947
    #dbg_value(i64 %9, !4933, !DIExpression(), !4948)
    #dbg_value(i64 %3, !4934, !DIExpression(), !4949)
  %10 = icmp eq i64 %3, -9223372036854775808, !dbg !4950
  %11 = and i1 false, %10, !dbg !4950
  %12 = select i1 %11, i64 1, i64 10, !dbg !4950
  %13 = sdiv i64 %3, %12, !dbg !4950
    #dbg_value(i64 %13, !4934, !DIExpression(), !4951)
  br label %for.loop1, !dbg !4938

for.done:                                         ; preds = %for.loop1
    #dbg_value(i64 %2, !4933, !DIExpression(), !4952)
  %14 = icmp eq i64 %2, 10, !dbg !4953
  br i1 %14, label %if.then, label %if.done, !dbg !4938

if.then:                                          ; preds = %for.done
  %15 = add i64 %0, 1, !dbg !4954
    #dbg_value(i64 %15, !4931, !DIExpression(), !4954)
  br label %if.done, !dbg !4938

if.done:                                          ; preds = %if.then, %for.done
  %16 = phi i64 [ %0, %for.done ], [ %15, %if.then ], !dbg !4936
    #dbg_value(i64 %16, !4931, !DIExpression(), !4955)
    #dbg_value(i64 %n, !4930, !DIExpression(), !4956)
  %17 = icmp eq i64 %16, %n, !dbg !4957
  br i1 %17, label %if.then2, label %if.done3, !dbg !4938

if.then2:                                         ; preds = %if.done
    #dbg_value(i64 %1, !4932, !DIExpression(), !4958)
  ret i64 %1, !dbg !4959

if.done3:                                         ; preds = %if.done
  %18 = add i64 %1, 1, !dbg !4960
    #dbg_value(i64 %18, !4932, !DIExpression(), !4960)
  br label %for.loop, !dbg !4938
}
