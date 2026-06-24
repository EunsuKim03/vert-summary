define i64 @f_gold(i64 %a, i64 %b, i64 %d) #0 !dbg !4960 {
entry:
    #dbg_value(i64 %a, !4964, !DIExpression(), !4968)
    #dbg_value(i64 %b, !4965, !DIExpression(), !4968)
    #dbg_value(i64 %d, !4966, !DIExpression(), !4968)
    #dbg_value(i64 %a, !4964, !DIExpression(), !4969)
    #dbg_value(i64 %a, !4967, !DIExpression(), !4970)
    #dbg_value(i64 %a, !4964, !DIExpression(), !4971)
    #dbg_value(i64 %b, !4965, !DIExpression(), !4972)
  %0 = call i64 @main.min(i64 %a, i64 %b, ptr undef), !dbg !4973
    #dbg_value(i64 %0, !4964, !DIExpression(), !4974)
    #dbg_value(i64 %a, !4967, !DIExpression(), !4975)
    #dbg_value(i64 %b, !4965, !DIExpression(), !4976)
  %1 = call i64 @main.max(i64 %a, i64 %b, ptr undef), !dbg !4977
    #dbg_value(i64 %1, !4965, !DIExpression(), !4978)
    #dbg_value(i64 %d, !4966, !DIExpression(), !4979)
    #dbg_value(i64 %1, !4965, !DIExpression(), !4980)
  %2 = icmp sge i64 %d, %1, !dbg !4981
  br i1 %2, label %if.then, label %if.done, !dbg !4982

if.then:                                          ; preds = %entry
    #dbg_value(i64 %d, !4966, !DIExpression(), !4983)
    #dbg_value(i64 %1, !4965, !DIExpression(), !4984)
  %3 = add i64 %d, %1, !dbg !4985
  %4 = sub i64 %3, 1, !dbg !4986
    #dbg_value(i64 %1, !4965, !DIExpression(), !4987)
  %5 = icmp eq i64 %1, 0, !dbg !4988
  br i1 %5, label %divbyzero.throw, label %divbyzero.next, !dbg !4988

divbyzero.next:                                   ; preds = %if.then
  %6 = icmp eq i64 %1, -1, !dbg !4988
  %7 = icmp eq i64 %4, -9223372036854775808, !dbg !4988
  %8 = and i1 %6, %7, !dbg !4988
  %9 = select i1 %8, i64 1, i64 %1, !dbg !4988
  %10 = sdiv i64 %4, %9, !dbg !4988
  ret i64 %10, !dbg !4989

if.done:                                          ; preds = %entry
    #dbg_value(i64 %d, !4966, !DIExpression(), !4990)
  %11 = icmp eq i64 %d, 0, !dbg !4991
  br i1 %11, label %if.then1, label %if.done2, !dbg !4982

if.then1:                                         ; preds = %if.done
  ret i64 0, !dbg !4992

if.done2:                                         ; preds = %if.done
    #dbg_value(i64 %d, !4966, !DIExpression(), !4993)
    #dbg_value(i64 %0, !4964, !DIExpression(), !4994)
  %12 = icmp eq i64 %d, %0, !dbg !4995
  br i1 %12, label %if.then3, label %if.done4, !dbg !4982

if.then3:                                         ; preds = %if.done2
  ret i64 1, !dbg !4996

if.done4:                                         ; preds = %if.done2
  ret i64 2, !dbg !4997

divbyzero.throw:                                  ; preds = %if.then
  call void @runtime.divideByZeroPanic(ptr undef), !dbg !4988
  unreachable, !dbg !4988
}
