define i1 @f_gold(ptr nocapture %a.data, i64 %a.len, i64 %a.cap, i64 %n) #0 !dbg !4927 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %a.data, 0, !dbg !4941
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %a.len, 1, !dbg !4941
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %a.cap, 2, !dbg !4941
    #dbg_value(ptr %a.data, !4936, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4941)
    #dbg_value(i64 %a.len, !4936, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4941)
    #dbg_value(i64 %a.cap, !4936, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4941)
    #dbg_value(i64 %n, !4937, !DIExpression(), !4941)
    #dbg_value(i64 0, !4938, !DIExpression(), !4942)
    #dbg_value(i64 0, !4939, !DIExpression(), !4943)
    #dbg_value(i64 0, !4940, !DIExpression(), !4944)
  br label %for.loop, !dbg !4945

for.loop:                                         ; preds = %if.done, %entry
  %3 = phi i64 [ 0, %entry ], [ %13, %if.done ], !dbg !4942
  %4 = phi i64 [ 0, %entry ], [ %14, %if.done ], !dbg !4943
  %5 = phi i64 [ 0, %entry ], [ %15, %if.done ], !dbg !4944
    #dbg_value(i64 %5, !4940, !DIExpression(), !4946)
    #dbg_value(i64 %n, !4937, !DIExpression(), !4947)
  %6 = icmp slt i64 %5, %n, !dbg !4948
  br i1 %6, label %for.body, label %for.done, !dbg !4945

for.body:                                         ; preds = %for.loop
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4949)
    #dbg_value(i64 %5, !4940, !DIExpression(), !4950)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4951
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4951
  %7 = icmp uge i64 %5, %indexaddr.len, !dbg !4951
  br i1 %7, label %lookup.throw, label %lookup.next, !dbg !4951

lookup.next:                                      ; preds = %for.body
  %8 = getelementptr inbounds i64, ptr %indexaddr.ptr, i64 %5, !dbg !4951
  %9 = load i64, ptr %8, align 8, !dbg !4951
  %10 = and i64 %9, 1, !dbg !4952
  %11 = icmp ne i64 %10, 0, !dbg !4953
  br i1 %11, label %if.then, label %if.else, !dbg !4945

if.then:                                          ; preds = %lookup.next
  %12 = add i64 %3, 1, !dbg !4954
    #dbg_value(i64 %12, !4938, !DIExpression(), !4954)
  br label %if.done, !dbg !4945

if.done:                                          ; preds = %if.else, %if.then
  %13 = phi i64 [ %12, %if.then ], [ %3, %if.else ], !dbg !4942
  %14 = phi i64 [ %4, %if.then ], [ %16, %if.else ], !dbg !4943
  %15 = add i64 %5, 1, !dbg !4955
    #dbg_value(i64 %15, !4940, !DIExpression(), !4955)
  br label %for.loop, !dbg !4945

if.else:                                          ; preds = %lookup.next
  %16 = add i64 %4, 1, !dbg !4956
    #dbg_value(i64 %16, !4939, !DIExpression(), !4956)
  br label %if.done, !dbg !4945

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %3, !4938, !DIExpression(), !4957)
  %17 = icmp eq i64 %3, -9223372036854775808, !dbg !4958
  %18 = and i1 false, %17, !dbg !4958
  %19 = select i1 %18, i64 1, i64 2, !dbg !4958
  %20 = srem i64 %3, %19, !dbg !4958
  %21 = icmp ne i64 %20, 0, !dbg !4959
  br i1 %21, label %cond.true, label %if.else2, !dbg !4945

cond.true:                                        ; preds = %for.done
    #dbg_value(i64 %4, !4939, !DIExpression(), !4960)
  %22 = icmp eq i64 %4, -9223372036854775808, !dbg !4961
  %23 = and i1 false, %22, !dbg !4961
  %24 = select i1 %23, i64 1, i64 2, !dbg !4961
  %25 = srem i64 %4, %24, !dbg !4961
  %26 = icmp ne i64 %25, 0, !dbg !4962
  br i1 %26, label %if.then1, label %if.else2, !dbg !4945

if.then1:                                         ; preds = %cond.true
  ret i1 false, !dbg !4963

if.else2:                                         ; preds = %cond.true, %for.done
  ret i1 true, !dbg !4964

lookup.throw:                                     ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !4951
  unreachable, !dbg !4951
}
