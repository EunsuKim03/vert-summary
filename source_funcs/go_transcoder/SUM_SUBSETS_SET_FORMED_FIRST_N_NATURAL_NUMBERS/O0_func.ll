define i64 @f_gold(i64 %n) #0 !dbg !4927 {
entry:
    #dbg_value(i64 %n, !4930, !DIExpression(), !4931)
    #dbg_value(i64 %n, !4930, !DIExpression(), !4932)
    #dbg_value(i64 %n, !4930, !DIExpression(), !4933)
  %0 = add i64 %n, 1, !dbg !4934
  %1 = mul i64 %n, %0, !dbg !4935
  %2 = icmp eq i64 %1, -9223372036854775808, !dbg !4936
  %3 = and i1 false, %2, !dbg !4936
  %4 = select i1 %3, i64 1, i64 2, !dbg !4936
  %5 = sdiv i64 %1, %4, !dbg !4936
    #dbg_value(i64 %n, !4930, !DIExpression(), !4937)
  %6 = sub i64 %n, 1, !dbg !4938
  %7 = icmp slt i64 %6, 0, !dbg !4939
  br i1 %7, label %shift.throw, label %shift.next, !dbg !4939

shift.next:                                       ; preds = %entry
  %shift.overflow = icmp uge i64 %6, 64, !dbg !4939
  %8 = shl i64 1, %6, !dbg !4939
  %shift.result = select i1 %shift.overflow, i64 0, i64 %8, !dbg !4939
  %9 = mul i64 %5, %shift.result, !dbg !4940
  ret i64 %9, !dbg !4941

shift.throw:                                      ; preds = %entry
  call void @runtime.negativeShiftPanic(ptr undef), !dbg !4939
  unreachable, !dbg !4939
}
