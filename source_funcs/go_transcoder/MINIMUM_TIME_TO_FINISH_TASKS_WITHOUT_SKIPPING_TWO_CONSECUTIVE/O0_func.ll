define i64 @f_gold(ptr nocapture %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n) #0 !dbg !4943 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %arr.data, 0, !dbg !4958
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %arr.len, 1, !dbg !4958
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %arr.cap, 2, !dbg !4958
    #dbg_value(ptr %arr.data, !4951, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4958)
    #dbg_value(i64 %arr.len, !4951, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4958)
    #dbg_value(i64 %arr.cap, !4951, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4958)
    #dbg_value(i64 %n, !4952, !DIExpression(), !4958)
    #dbg_value(i64 %n, !4952, !DIExpression(), !4959)
  %3 = icmp sle i64 %n, 0, !dbg !4960
  br i1 %3, label %if.then, label %if.done, !dbg !4961

if.then:                                          ; preds = %entry
  ret i64 0, !dbg !4962

if.done:                                          ; preds = %entry
    #dbg_value({ ptr, i64, i64 } %2, !4951, !DIExpression(), !4963)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4964
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4964
  %4 = icmp uge i64 0, %indexaddr.len, !dbg !4964
  br i1 %4, label %lookup.throw, label %lookup.next, !dbg !4964

lookup.next:                                      ; preds = %if.done
  %5 = getelementptr inbounds i64, ptr %indexaddr.ptr, i64 0, !dbg !4964
  %6 = load i64, ptr %5, align 8, !dbg !4964
    #dbg_value(i64 %6, !4953, !DIExpression(), !4965)
    #dbg_value(i64 0, !4954, !DIExpression(), !4966)
    #dbg_value(i64 1, !4955, !DIExpression(), !4967)
  br label %for.loop, !dbg !4961

for.loop:                                         ; preds = %lookup.next4, %lookup.next
  %7 = phi i64 [ %6, %lookup.next ], [ %15, %lookup.next4 ], !dbg !4965
  %8 = phi i64 [ 0, %lookup.next ], [ %7, %lookup.next4 ], !dbg !4966
  %9 = phi i64 [ 1, %lookup.next ], [ %16, %lookup.next4 ], !dbg !4967
    #dbg_value(i64 %9, !4955, !DIExpression(), !4968)
    #dbg_value(i64 %n, !4952, !DIExpression(), !4969)
  %10 = icmp slt i64 %9, %n, !dbg !4970
  br i1 %10, label %for.body, label %for.done, !dbg !4961

for.body:                                         ; preds = %for.loop
    #dbg_value({ ptr, i64, i64 } %2, !4951, !DIExpression(), !4971)
    #dbg_value(i64 %9, !4955, !DIExpression(), !4972)
  %indexaddr.ptr1 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4973
  %indexaddr.len2 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4973
  %11 = icmp uge i64 %9, %indexaddr.len2, !dbg !4973
  br i1 %11, label %lookup.throw3, label %lookup.next4, !dbg !4973

lookup.next4:                                     ; preds = %for.body
  %12 = getelementptr inbounds i64, ptr %indexaddr.ptr1, i64 %9, !dbg !4973
  %13 = load i64, ptr %12, align 8, !dbg !4973
    #dbg_value(i64 %8, !4954, !DIExpression(), !4974)
    #dbg_value(i64 %7, !4953, !DIExpression(), !4975)
  %14 = call i64 @main.min(i64 %8, i64 %7, ptr undef), !dbg !4976
  %15 = add i64 %13, %14, !dbg !4977
    #dbg_value(i64 %15, !4956, !DIExpression(), !4978)
    #dbg_value(i64 %7, !4953, !DIExpression(), !4979)
    #dbg_value(i64 %7, !4957, !DIExpression(), !4980)
    #dbg_value(i64 %15, !4956, !DIExpression(), !4981)
    #dbg_value(i64 %15, !4953, !DIExpression(), !4982)
    #dbg_value(i64 %7, !4957, !DIExpression(), !4983)
    #dbg_value(i64 %7, !4954, !DIExpression(), !4984)
  %16 = add i64 %9, 1, !dbg !4985
    #dbg_value(i64 %16, !4955, !DIExpression(), !4985)
  br label %for.loop, !dbg !4961

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %7, !4953, !DIExpression(), !4986)
    #dbg_value(i64 %8, !4954, !DIExpression(), !4987)
  %17 = call i64 @main.min(i64 %7, i64 %8, ptr undef), !dbg !4988
  ret i64 %17, !dbg !4989

lookup.throw:                                     ; preds = %if.done
  call void @runtime.lookupPanic(ptr undef), !dbg !4964
  unreachable, !dbg !4964

lookup.throw3:                                    ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !4973
  unreachable, !dbg !4973
}
