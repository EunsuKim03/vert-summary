define i64 @f_gold(i64 %num, i64 %divisor) #0 !dbg !4931 {
entry:
    #dbg_value(i64 %num, !4936, !DIExpression(), !4938)
    #dbg_value(i64 %divisor, !4937, !DIExpression(), !4938)
    #dbg_value(i64 %num, !4936, !DIExpression(), !4939)
    #dbg_value(i64 %divisor, !4937, !DIExpression(), !4940)
    #dbg_value(i64 %num, !4936, !DIExpression(), !4941)
    #dbg_value(i64 %divisor, !4937, !DIExpression(), !4942)
  %0 = icmp eq i64 %divisor, 0, !dbg !4943
  br i1 %0, label %divbyzero.throw, label %divbyzero.next, !dbg !4943

divbyzero.next:                                   ; preds = %entry
  %1 = icmp eq i64 %divisor, -1, !dbg !4943
  %2 = icmp eq i64 %num, -9223372036854775808, !dbg !4943
  %3 = and i1 %1, %2, !dbg !4943
  %4 = select i1 %3, i64 1, i64 %divisor, !dbg !4943
  %5 = sdiv i64 %num, %4, !dbg !4943
  %6 = mul i64 %divisor, %5, !dbg !4944
  %7 = sub i64 %num, %6, !dbg !4945
  ret i64 %7, !dbg !4946

divbyzero.throw:                                  ; preds = %entry
  call void @runtime.divideByZeroPanic(ptr undef), !dbg !4943
  unreachable, !dbg !4943
}
