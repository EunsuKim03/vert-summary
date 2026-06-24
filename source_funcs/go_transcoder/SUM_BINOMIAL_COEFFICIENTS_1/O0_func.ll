define i64 @f_gold(i64 %n) #0 !dbg !4927 {
entry:
    #dbg_value(i64 %n, !4930, !DIExpression(), !4931)
    #dbg_value(i64 %n, !4930, !DIExpression(), !4932)
  %0 = icmp slt i64 %n, 0, !dbg !4933
  br i1 %0, label %shift.throw, label %shift.next, !dbg !4933

shift.next:                                       ; preds = %entry
  %shift.overflow = icmp uge i64 %n, 64, !dbg !4933
  %1 = shl i64 1, %n, !dbg !4933
  %shift.result = select i1 %shift.overflow, i64 0, i64 %1, !dbg !4933
  ret i64 %shift.result, !dbg !4934

shift.throw:                                      ; preds = %entry
  call void @runtime.negativeShiftPanic(ptr undef), !dbg !4933
  unreachable, !dbg !4933
}
