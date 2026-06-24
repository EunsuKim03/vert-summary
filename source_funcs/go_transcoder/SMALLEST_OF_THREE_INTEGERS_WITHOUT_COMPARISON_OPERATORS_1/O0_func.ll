define i64 @f_gold(i64 %x, i64 %y, i64 %z) #0 !dbg !4931 {
entry:
    #dbg_value(i64 %x, !4936, !DIExpression(), !4939)
    #dbg_value(i64 %y, !4937, !DIExpression(), !4939)
    #dbg_value(i64 %z, !4938, !DIExpression(), !4939)
    #dbg_value(i64 %y, !4937, !DIExpression(), !4940)
    #dbg_value(i64 %x, !4936, !DIExpression(), !4941)
  %0 = icmp eq i64 %x, 0, !dbg !4942
  br i1 %0, label %divbyzero.throw, label %divbyzero.next, !dbg !4942

divbyzero.next:                                   ; preds = %entry
  %1 = icmp eq i64 %x, -1, !dbg !4942
  %2 = icmp eq i64 %y, -9223372036854775808, !dbg !4942
  %3 = and i1 %1, %2, !dbg !4942
  %4 = select i1 %3, i64 1, i64 %x, !dbg !4942
  %5 = sdiv i64 %y, %4, !dbg !4942
  %6 = icmp eq i64 %5, 0, !dbg !4943
  br i1 %6, label %if.then, label %if.done2, !dbg !4944

if.then:                                          ; preds = %divbyzero.next
    #dbg_value(i64 %y, !4937, !DIExpression(), !4945)
    #dbg_value(i64 %z, !4938, !DIExpression(), !4946)
  %7 = icmp eq i64 %z, 0, !dbg !4947
  br i1 %7, label %divbyzero.throw5, label %divbyzero.next6, !dbg !4947

divbyzero.next6:                                  ; preds = %if.then
  %8 = icmp eq i64 %z, -1, !dbg !4947
  %9 = icmp eq i64 %y, -9223372036854775808, !dbg !4947
  %10 = and i1 %8, %9, !dbg !4947
  %11 = select i1 %10, i64 1, i64 %z, !dbg !4947
  %12 = sdiv i64 %y, %11, !dbg !4947
  %13 = icmp eq i64 %12, 0, !dbg !4948
  br i1 %13, label %if.then1, label %if.done, !dbg !4944

if.then1:                                         ; preds = %divbyzero.next6
    #dbg_value(i64 %y, !4937, !DIExpression(), !4949)
  ret i64 %y, !dbg !4950

if.done:                                          ; preds = %divbyzero.next6
    #dbg_value(i64 %z, !4938, !DIExpression(), !4951)
  ret i64 %z, !dbg !4952

if.done2:                                         ; preds = %divbyzero.next
    #dbg_value(i64 %x, !4936, !DIExpression(), !4953)
    #dbg_value(i64 %z, !4938, !DIExpression(), !4954)
  %14 = icmp eq i64 %z, 0, !dbg !4955
  br i1 %14, label %divbyzero.throw7, label %divbyzero.next8, !dbg !4955

divbyzero.next8:                                  ; preds = %if.done2
  %15 = icmp eq i64 %z, -1, !dbg !4955
  %16 = icmp eq i64 %x, -9223372036854775808, !dbg !4955
  %17 = and i1 %15, %16, !dbg !4955
  %18 = select i1 %17, i64 1, i64 %z, !dbg !4955
  %19 = sdiv i64 %x, %18, !dbg !4955
  %20 = icmp eq i64 %19, 0, !dbg !4956
  br i1 %20, label %if.then3, label %if.done4, !dbg !4944

if.then3:                                         ; preds = %divbyzero.next8
    #dbg_value(i64 %x, !4936, !DIExpression(), !4957)
  ret i64 %x, !dbg !4958

if.done4:                                         ; preds = %divbyzero.next8
    #dbg_value(i64 %z, !4938, !DIExpression(), !4959)
  ret i64 %z, !dbg !4960

divbyzero.throw:                                  ; preds = %entry
  call void @runtime.divideByZeroPanic(ptr undef), !dbg !4942
  unreachable, !dbg !4942

divbyzero.throw5:                                 ; preds = %if.then
  call void @runtime.divideByZeroPanic(ptr undef), !dbg !4947
  unreachable, !dbg !4947

divbyzero.throw7:                                 ; preds = %if.done2
  call void @runtime.divideByZeroPanic(ptr undef), !dbg !4955
  unreachable, !dbg !4955
}
