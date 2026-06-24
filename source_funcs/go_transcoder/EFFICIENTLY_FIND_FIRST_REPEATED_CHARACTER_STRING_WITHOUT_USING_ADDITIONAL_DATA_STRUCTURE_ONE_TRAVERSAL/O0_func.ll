define i64 @f_gold(ptr nocapture %str.data, i64 %str.len, i64 %str.cap) #0 !dbg !4927 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %str.data, 0, !dbg !4934
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %str.len, 1, !dbg !4934
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %str.cap, 2, !dbg !4934
    #dbg_value(ptr %str.data, !4930, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4934)
    #dbg_value(i64 %str.len, !4930, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4934)
    #dbg_value(i64 %str.cap, !4930, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4934)
    #dbg_value(i64 0, !4931, !DIExpression(), !4935)
    #dbg_value(i64 0, !4932, !DIExpression(), !4936)
  br label %for.loop, !dbg !4937

for.loop:                                         ; preds = %shift.next2, %entry
  %3 = phi i64 [ 0, %entry ], [ %17, %shift.next2 ], !dbg !4935
  %4 = phi i64 [ 0, %entry ], [ %18, %shift.next2 ], !dbg !4936
    #dbg_value(i64 %4, !4932, !DIExpression(), !4938)
    #dbg_value({ ptr, i64, i64 } %2, !4930, !DIExpression(), !4939)
  %len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4940
  %5 = icmp slt i64 %4, %len, !dbg !4941
  br i1 %5, label %for.body, label %for.done, !dbg !4937

for.body:                                         ; preds = %for.loop
    #dbg_value({ ptr, i64, i64 } %2, !4930, !DIExpression(), !4942)
    #dbg_value(i64 %4, !4932, !DIExpression(), !4943)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4944
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4944
  %6 = icmp uge i64 %4, %indexaddr.len, !dbg !4944
  br i1 %6, label %lookup.throw, label %lookup.next, !dbg !4944

lookup.next:                                      ; preds = %for.body
  %7 = getelementptr inbounds i8, ptr %indexaddr.ptr, i64 %4, !dbg !4944
  %8 = load i8, ptr %7, align 1, !dbg !4944
  %9 = sub i8 %8, 97, !dbg !4945
  %10 = zext i8 %9 to i64, !dbg !4946
    #dbg_value(i64 %10, !4933, !DIExpression(), !4947)
    #dbg_value(i64 %3, !4931, !DIExpression(), !4948)
    #dbg_value(i64 %10, !4933, !DIExpression(), !4949)
  %11 = icmp slt i64 %10, 0, !dbg !4950
  br i1 %11, label %shift.throw, label %shift.next, !dbg !4950

shift.next:                                       ; preds = %lookup.next
  %shift.overflow = icmp uge i64 %10, 64, !dbg !4950
  %12 = shl i64 1, %10, !dbg !4950
  %shift.result = select i1 %shift.overflow, i64 0, i64 %12, !dbg !4950
  %13 = and i64 %3, %shift.result, !dbg !4951
  %14 = icmp sgt i64 %13, 0, !dbg !4952
  br i1 %14, label %if.then, label %if.done, !dbg !4937

if.then:                                          ; preds = %shift.next
    #dbg_value(i64 %4, !4932, !DIExpression(), !4953)
  ret i64 %4, !dbg !4954

if.done:                                          ; preds = %shift.next
    #dbg_value(i64 %10, !4933, !DIExpression(), !4955)
  %15 = icmp slt i64 %10, 0, !dbg !4956
  br i1 %15, label %shift.throw1, label %shift.next2, !dbg !4956

shift.next2:                                      ; preds = %if.done
  %shift.overflow3 = icmp uge i64 %10, 64, !dbg !4956
  %16 = shl i64 1, %10, !dbg !4956
  %shift.result4 = select i1 %shift.overflow3, i64 0, i64 %16, !dbg !4956
  %17 = or i64 %3, %shift.result4, !dbg !4957
    #dbg_value(i64 %17, !4931, !DIExpression(), !4957)
  %18 = add i64 %4, 1, !dbg !4958
    #dbg_value(i64 %18, !4932, !DIExpression(), !4958)
  br label %for.loop, !dbg !4937

for.done:                                         ; preds = %for.loop
  ret i64 -1, !dbg !4959

lookup.throw:                                     ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !4944
  unreachable, !dbg !4944

shift.throw:                                      ; preds = %lookup.next
  call void @runtime.negativeShiftPanic(ptr undef), !dbg !4950
  unreachable, !dbg !4950

shift.throw1:                                     ; preds = %if.done
  call void @runtime.negativeShiftPanic(ptr undef), !dbg !4956
  unreachable, !dbg !4956
}
