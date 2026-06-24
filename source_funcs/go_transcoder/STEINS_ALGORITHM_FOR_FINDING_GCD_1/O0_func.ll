define i64 @f_gold(i64 %a, i64 %b) #0 !dbg !4927 {
entry:
    #dbg_value(i64 %a, !4932, !DIExpression(), !4934)
    #dbg_value(i64 %b, !4933, !DIExpression(), !4934)
    #dbg_value(i64 %a, !4932, !DIExpression(), !4935)
    #dbg_value(i64 %b, !4933, !DIExpression(), !4936)
  %0 = icmp eq i64 %a, %b, !dbg !4937
  br i1 %0, label %if.then, label %if.done, !dbg !4938

if.then:                                          ; preds = %entry
    #dbg_value(i64 %a, !4932, !DIExpression(), !4939)
  ret i64 %a, !dbg !4940

if.done:                                          ; preds = %entry
    #dbg_value(i64 %a, !4932, !DIExpression(), !4941)
  %1 = icmp eq i64 %a, 0, !dbg !4942
  br i1 %1, label %if.then1, label %if.done2, !dbg !4938

if.then1:                                         ; preds = %if.done
    #dbg_value(i64 %b, !4933, !DIExpression(), !4943)
  ret i64 %b, !dbg !4944

if.done2:                                         ; preds = %if.done
    #dbg_value(i64 %b, !4933, !DIExpression(), !4945)
  %2 = icmp eq i64 %b, 0, !dbg !4946
  br i1 %2, label %if.then3, label %if.done4, !dbg !4938

if.then3:                                         ; preds = %if.done2
    #dbg_value(i64 %a, !4932, !DIExpression(), !4947)
  ret i64 %a, !dbg !4948

if.done4:                                         ; preds = %if.done2
    #dbg_value(i64 %a, !4932, !DIExpression(), !4949)
  %3 = xor i64 %a, -1, !dbg !4950
  %4 = and i64 %3, 1, !dbg !4951
  %5 = icmp ne i64 %4, 0, !dbg !4952
  br i1 %5, label %if.then5, label %if.done7, !dbg !4938

if.then5:                                         ; preds = %if.done4
    #dbg_value(i64 %b, !4933, !DIExpression(), !4953)
  %6 = and i64 %b, 1, !dbg !4954
  %7 = icmp ne i64 %6, 0, !dbg !4955
  br i1 %7, label %if.then6, label %if.else, !dbg !4938

if.then6:                                         ; preds = %if.then5
    #dbg_value(i64 %a, !4932, !DIExpression(), !4956)
  %8 = ashr i64 %a, 1, !dbg !4957
    #dbg_value(i64 %b, !4933, !DIExpression(), !4958)
  %9 = call i64 @f_gold(i64 %8, i64 %b), !dbg !4959
  ret i64 %9, !dbg !4960

if.else:                                          ; preds = %if.then5
    #dbg_value(i64 %a, !4932, !DIExpression(), !4961)
  %10 = ashr i64 %a, 1, !dbg !4962
    #dbg_value(i64 %b, !4933, !DIExpression(), !4963)
  %11 = ashr i64 %b, 1, !dbg !4964
  %12 = call i64 @f_gold(i64 %10, i64 %11), !dbg !4965
  %13 = shl i64 %12, 1, !dbg !4966
  %shift.result = select i1 false, i64 0, i64 %13, !dbg !4966
  ret i64 %shift.result, !dbg !4967

if.done7:                                         ; preds = %if.done4
    #dbg_value(i64 %b, !4933, !DIExpression(), !4968)
  %14 = xor i64 %b, -1, !dbg !4969
  %15 = and i64 %14, 1, !dbg !4970
  %16 = icmp ne i64 %15, 0, !dbg !4971
  br i1 %16, label %if.then8, label %if.done9, !dbg !4938

if.then8:                                         ; preds = %if.done7
    #dbg_value(i64 %a, !4932, !DIExpression(), !4972)
    #dbg_value(i64 %b, !4933, !DIExpression(), !4973)
  %17 = ashr i64 %b, 1, !dbg !4974
  %18 = call i64 @f_gold(i64 %a, i64 %17), !dbg !4975
  ret i64 %18, !dbg !4976

if.done9:                                         ; preds = %if.done7
    #dbg_value(i64 %a, !4932, !DIExpression(), !4977)
    #dbg_value(i64 %b, !4933, !DIExpression(), !4978)
  %19 = icmp sgt i64 %a, %b, !dbg !4979
  br i1 %19, label %if.then10, label %if.done11, !dbg !4938

if.then10:                                        ; preds = %if.done9
    #dbg_value(i64 %a, !4932, !DIExpression(), !4980)
    #dbg_value(i64 %b, !4933, !DIExpression(), !4981)
  %20 = sub i64 %a, %b, !dbg !4982
  %21 = ashr i64 %20, 1, !dbg !4983
    #dbg_value(i64 %b, !4933, !DIExpression(), !4984)
  %22 = call i64 @f_gold(i64 %21, i64 %b), !dbg !4985
  ret i64 %22, !dbg !4986

if.done11:                                        ; preds = %if.done9
    #dbg_value(i64 %b, !4933, !DIExpression(), !4987)
    #dbg_value(i64 %a, !4932, !DIExpression(), !4988)
  %23 = sub i64 %b, %a, !dbg !4989
  %24 = ashr i64 %23, 1, !dbg !4990
    #dbg_value(i64 %a, !4932, !DIExpression(), !4991)
  %25 = call i64 @f_gold(i64 %24, i64 %a), !dbg !4992
  ret i64 %25, !dbg !4993
}
