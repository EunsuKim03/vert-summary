define i64 @f_gold(i64 %a, i64 %b) #0 !dbg !4931 {
entry:
    #dbg_value(i64 %a, !4936, !DIExpression(), !4938)
    #dbg_value(i64 %b, !4937, !DIExpression(), !4938)
    #dbg_value(i64 %a, !4936, !DIExpression(), !4939)
  %0 = icmp eq i64 %a, 0, !dbg !4940
  br i1 %0, label %if.then, label %if.done, !dbg !4941

if.then:                                          ; preds = %entry
    #dbg_value(i64 %b, !4937, !DIExpression(), !4942)
  ret i64 %b, !dbg !4943

if.done:                                          ; preds = %entry
    #dbg_value(i64 %b, !4937, !DIExpression(), !4944)
    #dbg_value(i64 %a, !4936, !DIExpression(), !4945)
  %1 = icmp eq i64 %a, 0, !dbg !4946
  br i1 %1, label %divbyzero.throw, label %divbyzero.next, !dbg !4946

divbyzero.next:                                   ; preds = %if.done
  %2 = icmp eq i64 %a, -1, !dbg !4946
  %3 = icmp eq i64 %b, -9223372036854775808, !dbg !4946
  %4 = and i1 %2, %3, !dbg !4946
  %5 = select i1 %4, i64 1, i64 %a, !dbg !4946
  %6 = srem i64 %b, %5, !dbg !4946
    #dbg_value(i64 %a, !4936, !DIExpression(), !4947)
  %7 = call i64 @f_gold(i64 %6, i64 %a), !dbg !4948
  ret i64 %7, !dbg !4949

divbyzero.throw:                                  ; preds = %if.done
  call void @runtime.divideByZeroPanic(ptr undef), !dbg !4946
  unreachable, !dbg !4946
}
