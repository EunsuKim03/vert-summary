define i64 @f_gold(i64 %n) #0 !dbg !4927 {
entry:
    #dbg_value(i64 %n, !4930, !DIExpression(), !4931)
    #dbg_value(i64 %n, !4930, !DIExpression(), !4932)
  %0 = sub i64 %n, 1, !dbg !4933
  %1 = icmp slt i64 %0, 0, !dbg !4934
  br i1 %1, label %shift.throw, label %shift.next, !dbg !4934

shift.next:                                       ; preds = %entry
  %shift.overflow = icmp uge i64 %0, 64, !dbg !4934
  %2 = shl i64 1, %0, !dbg !4934
  %shift.result = select i1 %shift.overflow, i64 0, i64 %2, !dbg !4934
  ret i64 %shift.result, !dbg !4935

shift.throw:                                      ; preds = %entry
  call void @runtime.negativeShiftPanic(ptr undef), !dbg !4934
  unreachable, !dbg !4934
}
