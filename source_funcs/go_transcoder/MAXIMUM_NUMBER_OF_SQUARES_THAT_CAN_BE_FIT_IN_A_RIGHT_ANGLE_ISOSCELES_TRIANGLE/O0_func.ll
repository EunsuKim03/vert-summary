define i64 @f_gold(i64 %b, i64 %m) #0 !dbg !4931 {
entry:
    #dbg_value(i64 %b, !4936, !DIExpression(), !4938)
    #dbg_value(i64 %m, !4937, !DIExpression(), !4938)
    #dbg_value(i64 %b, !4936, !DIExpression(), !4939)
    #dbg_value(i64 %m, !4937, !DIExpression(), !4940)
  %0 = icmp eq i64 %m, 0, !dbg !4941
  br i1 %0, label %divbyzero.throw, label %divbyzero.next, !dbg !4941

divbyzero.next:                                   ; preds = %entry
  %1 = icmp eq i64 %m, -1, !dbg !4941
  %2 = icmp eq i64 %b, -9223372036854775808, !dbg !4941
  %3 = and i1 %1, %2, !dbg !4941
  %4 = select i1 %3, i64 1, i64 %m, !dbg !4941
  %5 = sdiv i64 %b, %4, !dbg !4941
  %6 = sub i64 %5, 1, !dbg !4942
    #dbg_value(i64 %b, !4936, !DIExpression(), !4943)
    #dbg_value(i64 %m, !4937, !DIExpression(), !4944)
  %7 = icmp eq i64 %m, 0, !dbg !4945
  br i1 %7, label %divbyzero.throw1, label %divbyzero.next2, !dbg !4945

divbyzero.next2:                                  ; preds = %divbyzero.next
  %8 = icmp eq i64 %m, -1, !dbg !4945
  %9 = icmp eq i64 %b, -9223372036854775808, !dbg !4945
  %10 = and i1 %8, %9, !dbg !4945
  %11 = select i1 %10, i64 1, i64 %m, !dbg !4945
  %12 = sdiv i64 %b, %11, !dbg !4945
  %13 = mul i64 %6, %12, !dbg !4946
  %14 = icmp eq i64 %13, -9223372036854775808, !dbg !4947
  %15 = and i1 false, %14, !dbg !4947
  %16 = select i1 %15, i64 1, i64 2, !dbg !4947
  %17 = sdiv i64 %13, %16, !dbg !4947
  ret i64 %17, !dbg !4948

divbyzero.throw:                                  ; preds = %entry
  call void @runtime.divideByZeroPanic(ptr undef), !dbg !4941
  unreachable, !dbg !4941

divbyzero.throw1:                                 ; preds = %divbyzero.next
  call void @runtime.divideByZeroPanic(ptr undef), !dbg !4945
  unreachable, !dbg !4945
}
