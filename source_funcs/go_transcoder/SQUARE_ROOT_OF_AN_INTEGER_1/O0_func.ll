define i64 @f_gold(i64 %x) #0 !dbg !4927 {
entry:
    #dbg_value(i64 %x, !4930, !DIExpression(), !4935)
    #dbg_value(i64 %x, !4930, !DIExpression(), !4936)
  %0 = icmp eq i64 %x, 0, !dbg !4937
  br i1 %0, label %if.then, label %cond.false, !dbg !4938

if.then:                                          ; preds = %cond.false, %entry
    #dbg_value(i64 %x, !4930, !DIExpression(), !4939)
  ret i64 %x, !dbg !4940

cond.false:                                       ; preds = %entry
    #dbg_value(i64 %x, !4930, !DIExpression(), !4941)
  %1 = icmp eq i64 %x, 1, !dbg !4942
  br i1 %1, label %if.then, label %if.done, !dbg !4938

if.done:                                          ; preds = %cond.false
    #dbg_value(i64 1, !4931, !DIExpression(), !4943)
    #dbg_value(i64 %x, !4930, !DIExpression(), !4944)
    #dbg_value(i64 %x, !4932, !DIExpression(), !4945)
    #dbg_value(i64 0, !4933, !DIExpression(), !4946)
  br label %for.loop, !dbg !4938

for.loop:                                         ; preds = %if.else, %if.then3, %if.done
  %2 = phi i64 [ 1, %if.done ], [ %15, %if.then3 ], [ %2, %if.else ], !dbg !4943
  %3 = phi i64 [ %x, %if.done ], [ %3, %if.then3 ], [ %16, %if.else ], !dbg !4945
  %4 = phi i64 [ 0, %if.done ], [ %10, %if.then3 ], [ %4, %if.else ], !dbg !4946
    #dbg_value(i64 %2, !4931, !DIExpression(), !4947)
    #dbg_value(i64 %3, !4932, !DIExpression(), !4948)
  %5 = icmp sle i64 %2, %3, !dbg !4949
  br i1 %5, label %for.body, label %for.done, !dbg !4938

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %2, !4931, !DIExpression(), !4950)
    #dbg_value(i64 %3, !4932, !DIExpression(), !4951)
  %6 = add i64 %2, %3, !dbg !4952
  %7 = icmp eq i64 %6, -9223372036854775808, !dbg !4953
  %8 = and i1 false, %7, !dbg !4953
  %9 = select i1 %8, i64 1, i64 2, !dbg !4953
  %10 = sdiv i64 %6, %9, !dbg !4953
    #dbg_value(i64 %10, !4934, !DIExpression(), !4954)
    #dbg_value(i64 %10, !4934, !DIExpression(), !4955)
    #dbg_value(i64 %10, !4934, !DIExpression(), !4956)
  %11 = mul i64 %10, %10, !dbg !4957
    #dbg_value(i64 %x, !4930, !DIExpression(), !4958)
  %12 = icmp eq i64 %11, %x, !dbg !4959
  br i1 %12, label %if.then1, label %if.done2, !dbg !4938

if.then1:                                         ; preds = %for.body
    #dbg_value(i64 %10, !4934, !DIExpression(), !4960)
  ret i64 %10, !dbg !4961

if.done2:                                         ; preds = %for.body
    #dbg_value(i64 %10, !4934, !DIExpression(), !4962)
    #dbg_value(i64 %10, !4934, !DIExpression(), !4963)
  %13 = mul i64 %10, %10, !dbg !4964
    #dbg_value(i64 %x, !4930, !DIExpression(), !4965)
  %14 = icmp slt i64 %13, %x, !dbg !4966
  br i1 %14, label %if.then3, label %if.else, !dbg !4938

if.then3:                                         ; preds = %if.done2
    #dbg_value(i64 %10, !4934, !DIExpression(), !4967)
  %15 = add i64 %10, 1, !dbg !4968
    #dbg_value(i64 %15, !4931, !DIExpression(), !4969)
    #dbg_value(i64 %10, !4934, !DIExpression(), !4970)
    #dbg_value(i64 %10, !4933, !DIExpression(), !4971)
  br label %for.loop, !dbg !4938

if.else:                                          ; preds = %if.done2
    #dbg_value(i64 %10, !4934, !DIExpression(), !4972)
  %16 = sub i64 %10, 1, !dbg !4973
    #dbg_value(i64 %16, !4932, !DIExpression(), !4974)
  br label %for.loop, !dbg !4938

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %4, !4933, !DIExpression(), !4975)
  ret i64 %4, !dbg !4976
}
