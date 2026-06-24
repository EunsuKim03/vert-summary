define i64 @f_gold(ptr nocapture %str.data, i64 %str.len, i64 %str.cap) #0 !dbg !4927 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %str.data, 0, !dbg !4935
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %str.len, 1, !dbg !4935
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %str.cap, 2, !dbg !4935
    #dbg_value(ptr %str.data, !4930, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4935)
    #dbg_value(i64 %str.len, !4930, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4935)
    #dbg_value(i64 %str.cap, !4930, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4935)
    #dbg_value(i64 0, !4931, !DIExpression(), !4936)
    #dbg_value(i64 0, !4932, !DIExpression(), !4937)
    #dbg_value({ ptr, i64, i64 } %2, !4930, !DIExpression(), !4938)
  %len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4939
    #dbg_value(i64 %len, !4933, !DIExpression(), !4940)
    #dbg_value(i64 0, !4934, !DIExpression(), !4941)
  br label %for.loop, !dbg !4942

for.loop:                                         ; preds = %if.done, %entry
  %3 = phi i64 [ 0, %entry ], [ %12, %if.done ], !dbg !4936
  %4 = phi i64 [ 0, %entry ], [ %13, %if.done ], !dbg !4937
  %5 = phi i64 [ 0, %entry ], [ %14, %if.done ], !dbg !4941
    #dbg_value(i64 %5, !4934, !DIExpression(), !4943)
    #dbg_value(i64 %len, !4933, !DIExpression(), !4944)
  %6 = icmp slt i64 %5, %len, !dbg !4945
  br i1 %6, label %for.body, label %for.done, !dbg !4942

for.body:                                         ; preds = %for.loop
    #dbg_value({ ptr, i64, i64 } %2, !4930, !DIExpression(), !4946)
    #dbg_value(i64 %5, !4934, !DIExpression(), !4947)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4948
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4948
  %7 = icmp uge i64 %5, %indexaddr.len, !dbg !4948
  br i1 %7, label %lookup.throw, label %lookup.next, !dbg !4948

lookup.next:                                      ; preds = %for.body
  %8 = getelementptr inbounds i8, ptr %indexaddr.ptr, i64 %5, !dbg !4948
  %9 = load i8, ptr %8, align 1, !dbg !4948
  %10 = icmp eq i8 %9, 49, !dbg !4949
  br i1 %10, label %if.then, label %if.else, !dbg !4942

if.then:                                          ; preds = %lookup.next
  %11 = add i64 %3, 1, !dbg !4950
    #dbg_value(i64 %11, !4931, !DIExpression(), !4950)
  br label %if.done, !dbg !4942

if.done:                                          ; preds = %if.else, %if.then
  %12 = phi i64 [ %11, %if.then ], [ %3, %if.else ], !dbg !4936
  %13 = phi i64 [ %4, %if.then ], [ %15, %if.else ], !dbg !4937
  %14 = add i64 %5, 1, !dbg !4951
    #dbg_value(i64 %14, !4934, !DIExpression(), !4951)
  br label %for.loop, !dbg !4942

if.else:                                          ; preds = %lookup.next
  %15 = add i64 %4, 1, !dbg !4952
    #dbg_value(i64 %15, !4932, !DIExpression(), !4952)
  br label %if.done, !dbg !4942

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %3, !4931, !DIExpression(), !4953)
  %16 = icmp eq i64 %3, -9223372036854775808, !dbg !4954
  %17 = and i1 false, %16, !dbg !4954
  %18 = select i1 %17, i64 1, i64 2, !dbg !4954
  %19 = srem i64 %3, %18, !dbg !4954
  %20 = icmp eq i64 %19, 0, !dbg !4955
  br i1 %20, label %if.then1, label %if.done2, !dbg !4942

if.then1:                                         ; preds = %for.done
    #dbg_value(i64 %4, !4932, !DIExpression(), !4956)
  ret i64 %4, !dbg !4957

if.done2:                                         ; preds = %for.done
    #dbg_value(i64 %3, !4931, !DIExpression(), !4958)
  ret i64 %3, !dbg !4959

lookup.throw:                                     ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !4948
  unreachable, !dbg !4948
}
