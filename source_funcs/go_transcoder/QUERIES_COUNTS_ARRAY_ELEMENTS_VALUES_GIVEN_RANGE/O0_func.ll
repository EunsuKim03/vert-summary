define i64 @f_gold(ptr nocapture %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n, i64 %x, i64 %y) #0 !dbg !4927 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %arr.data, 0, !dbg !4942
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %arr.len, 1, !dbg !4942
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %arr.cap, 2, !dbg !4942
    #dbg_value(ptr %arr.data, !4936, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4942)
    #dbg_value(i64 %arr.len, !4936, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4942)
    #dbg_value(i64 %arr.cap, !4936, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4942)
    #dbg_value(i64 %n, !4937, !DIExpression(), !4942)
    #dbg_value(i64 %x, !4938, !DIExpression(), !4942)
    #dbg_value(i64 %y, !4939, !DIExpression(), !4942)
    #dbg_value(i64 0, !4940, !DIExpression(), !4943)
    #dbg_value(i64 0, !4941, !DIExpression(), !4944)
  br label %for.loop, !dbg !4945

for.loop:                                         ; preds = %if.done, %entry
  %3 = phi i64 [ 0, %entry ], [ %15, %if.done ], !dbg !4943
  %4 = phi i64 [ 0, %entry ], [ %16, %if.done ], !dbg !4944
    #dbg_value(i64 %4, !4941, !DIExpression(), !4946)
    #dbg_value(i64 %n, !4937, !DIExpression(), !4947)
  %5 = icmp slt i64 %4, %n, !dbg !4948
  br i1 %5, label %for.body, label %for.done, !dbg !4945

for.body:                                         ; preds = %for.loop
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4949)
    #dbg_value(i64 %4, !4941, !DIExpression(), !4950)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4951
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4951
  %6 = icmp uge i64 %4, %indexaddr.len, !dbg !4951
  br i1 %6, label %lookup.throw, label %lookup.next, !dbg !4951

lookup.next:                                      ; preds = %for.body
  %7 = getelementptr inbounds i64, ptr %indexaddr.ptr, i64 %4, !dbg !4951
  %8 = load i64, ptr %7, align 8, !dbg !4951
    #dbg_value(i64 %x, !4938, !DIExpression(), !4952)
  %9 = icmp sge i64 %8, %x, !dbg !4953
  br i1 %9, label %cond.true, label %if.done, !dbg !4945

cond.true:                                        ; preds = %lookup.next
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4954)
    #dbg_value(i64 %4, !4941, !DIExpression(), !4955)
  %indexaddr.ptr1 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4956
  %indexaddr.len2 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4956
  %10 = icmp uge i64 %4, %indexaddr.len2, !dbg !4956
  br i1 %10, label %lookup.throw3, label %lookup.next4, !dbg !4956

lookup.next4:                                     ; preds = %cond.true
  %11 = getelementptr inbounds i64, ptr %indexaddr.ptr1, i64 %4, !dbg !4956
  %12 = load i64, ptr %11, align 8, !dbg !4956
    #dbg_value(i64 %y, !4939, !DIExpression(), !4957)
  %13 = icmp sle i64 %12, %y, !dbg !4958
  br i1 %13, label %if.then, label %if.done, !dbg !4945

if.then:                                          ; preds = %lookup.next4
  %14 = add i64 %3, 1, !dbg !4959
    #dbg_value(i64 %14, !4940, !DIExpression(), !4959)
  br label %if.done, !dbg !4945

if.done:                                          ; preds = %if.then, %lookup.next4, %lookup.next
  %15 = phi i64 [ %3, %lookup.next ], [ %3, %lookup.next4 ], [ %14, %if.then ], !dbg !4943
  %16 = add i64 %4, 1, !dbg !4960
    #dbg_value(i64 %16, !4941, !DIExpression(), !4960)
  br label %for.loop, !dbg !4945

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %3, !4940, !DIExpression(), !4961)
  ret i64 %3, !dbg !4962

lookup.throw:                                     ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !4951
  unreachable, !dbg !4951

lookup.throw3:                                    ; preds = %cond.true
  call void @runtime.lookupPanic(ptr undef), !dbg !4956
  unreachable, !dbg !4956
}
