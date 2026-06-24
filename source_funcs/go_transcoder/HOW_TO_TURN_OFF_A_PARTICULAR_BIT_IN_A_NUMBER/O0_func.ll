define i64 @f_gold(i64 %n, i64 %k) #0 !dbg !4927 {
entry:
    #dbg_value(i64 %n, !4932, !DIExpression(), !4934)
    #dbg_value(i64 %k, !4933, !DIExpression(), !4934)
    #dbg_value(i64 %k, !4933, !DIExpression(), !4935)
  %0 = icmp sle i64 %k, 0, !dbg !4936
  br i1 %0, label %if.then, label %if.done, !dbg !4937

if.then:                                          ; preds = %entry
    #dbg_value(i64 %n, !4932, !DIExpression(), !4938)
  ret i64 %n, !dbg !4939

if.done:                                          ; preds = %entry
    #dbg_value(i64 %n, !4932, !DIExpression(), !4940)
    #dbg_value(i64 %k, !4933, !DIExpression(), !4941)
  %1 = sub i64 %k, 1, !dbg !4942
  %2 = icmp slt i64 %1, 0, !dbg !4943
  br i1 %2, label %shift.throw, label %shift.next, !dbg !4943

shift.next:                                       ; preds = %if.done
  %shift.overflow = icmp uge i64 %1, 64, !dbg !4943
  %3 = shl i64 1, %1, !dbg !4943
  %shift.result = select i1 %shift.overflow, i64 0, i64 %3, !dbg !4943
  %4 = xor i64 %shift.result, -1, !dbg !4944
  %5 = and i64 %n, %4, !dbg !4945
  ret i64 %5, !dbg !4946

shift.throw:                                      ; preds = %if.done
  call void @runtime.negativeShiftPanic(ptr undef), !dbg !4943
  unreachable, !dbg !4943
}
