define i1 @f_gold(i64 %n) #0 !dbg !4931 {
entry:
    #dbg_value(i64 %n, !4934, !DIExpression(), !4935)
    #dbg_value(i64 %n, !4934, !DIExpression(), !4936)
  %0 = icmp eq i64 %n, 0, !dbg !4937
  br i1 %0, label %divbyzero.throw, label %divbyzero.next, !dbg !4937

divbyzero.next:                                   ; preds = %entry
  %1 = icmp eq i64 %n, -1, !dbg !4937
  %2 = and i1 %1, false, !dbg !4937
  %3 = select i1 %2, i64 1, i64 %n, !dbg !4937
  %4 = srem i64 1162261467, %3, !dbg !4937
  %5 = icmp eq i64 %4, 0, !dbg !4938
  ret i1 %5, !dbg !4939

divbyzero.throw:                                  ; preds = %entry
  call void @runtime.divideByZeroPanic(ptr undef), !dbg !4937
  unreachable, !dbg !4937
}
