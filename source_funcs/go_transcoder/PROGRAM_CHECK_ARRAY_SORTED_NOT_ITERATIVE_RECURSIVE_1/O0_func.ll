define i1 @f_gold(ptr nocapture %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n) #0 !dbg !4927 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %arr.data, 0, !dbg !4939
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %arr.len, 1, !dbg !4939
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %arr.cap, 2, !dbg !4939
    #dbg_value(ptr %arr.data, !4936, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4939)
    #dbg_value(i64 %arr.len, !4936, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4939)
    #dbg_value(i64 %arr.cap, !4936, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4939)
    #dbg_value(i64 %n, !4937, !DIExpression(), !4939)
    #dbg_value(i64 %n, !4937, !DIExpression(), !4940)
  %3 = icmp eq i64 %n, 0, !dbg !4941
  br i1 %3, label %if.then, label %cond.false, !dbg !4942

if.then:                                          ; preds = %cond.false, %entry
  ret i1 true, !dbg !4943

cond.false:                                       ; preds = %entry
    #dbg_value(i64 %n, !4937, !DIExpression(), !4944)
  %4 = icmp eq i64 %n, 1, !dbg !4945
  br i1 %4, label %if.then, label %if.done, !dbg !4942

if.done:                                          ; preds = %cond.false
    #dbg_value(i64 1, !4938, !DIExpression(), !4946)
  br label %for.loop, !dbg !4942

for.loop:                                         ; preds = %if.done2, %if.done
  %5 = phi i64 [ 1, %if.done ], [ %15, %if.done2 ], !dbg !4946
    #dbg_value(i64 %5, !4938, !DIExpression(), !4947)
    #dbg_value(i64 %n, !4937, !DIExpression(), !4948)
  %6 = icmp slt i64 %5, %n, !dbg !4949
  br i1 %6, label %for.body, label %for.done, !dbg !4942

for.body:                                         ; preds = %for.loop
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4950)
    #dbg_value(i64 %5, !4938, !DIExpression(), !4951)
  %7 = sub i64 %5, 1, !dbg !4952
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4953
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4953
  %8 = icmp uge i64 %7, %indexaddr.len, !dbg !4953
  br i1 %8, label %lookup.throw, label %lookup.next, !dbg !4953

lookup.next:                                      ; preds = %for.body
  %9 = getelementptr inbounds i64, ptr %indexaddr.ptr, i64 %7, !dbg !4953
  %10 = load i64, ptr %9, align 8, !dbg !4953
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4954)
    #dbg_value(i64 %5, !4938, !DIExpression(), !4955)
  %indexaddr.ptr3 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4956
  %indexaddr.len4 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4956
  %11 = icmp uge i64 %5, %indexaddr.len4, !dbg !4956
  br i1 %11, label %lookup.throw5, label %lookup.next6, !dbg !4956

lookup.next6:                                     ; preds = %lookup.next
  %12 = getelementptr inbounds i64, ptr %indexaddr.ptr3, i64 %5, !dbg !4956
  %13 = load i64, ptr %12, align 8, !dbg !4956
  %14 = icmp sgt i64 %10, %13, !dbg !4957
  br i1 %14, label %if.then1, label %if.done2, !dbg !4942

if.then1:                                         ; preds = %lookup.next6
  ret i1 false, !dbg !4958

if.done2:                                         ; preds = %lookup.next6
  %15 = add i64 %5, 1, !dbg !4959
    #dbg_value(i64 %15, !4938, !DIExpression(), !4959)
  br label %for.loop, !dbg !4942

for.done:                                         ; preds = %for.loop
  ret i1 true, !dbg !4960

lookup.throw:                                     ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !4953
  unreachable, !dbg !4953

lookup.throw5:                                    ; preds = %lookup.next
  call void @runtime.lookupPanic(ptr undef), !dbg !4956
  unreachable, !dbg !4956
}
