define i64 @f_gold(ptr nocapture %arr1.data, i64 %arr1.len, i64 %arr1.cap, ptr nocapture %arr2.data, i64 %arr2.len, i64 %arr2.cap, i64 %n) #0 !dbg !4927 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %arr1.data, 0, !dbg !4940
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %arr1.len, 1, !dbg !4940
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %arr1.cap, 2, !dbg !4940
    #dbg_value(ptr %arr1.data, !4936, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4940)
    #dbg_value(i64 %arr1.len, !4936, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4940)
    #dbg_value(i64 %arr1.cap, !4936, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4940)
  %3 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %arr2.data, 0, !dbg !4940
  %4 = insertvalue { ptr, i64, i64 } %3, i64 %arr2.len, 1, !dbg !4940
  %5 = insertvalue { ptr, i64, i64 } %4, i64 %arr2.cap, 2, !dbg !4940
    #dbg_value(ptr %arr2.data, !4937, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4940)
    #dbg_value(i64 %arr2.len, !4937, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4940)
    #dbg_value(i64 %arr2.cap, !4937, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4940)
    #dbg_value(i64 %n, !4938, !DIExpression(), !4940)
    #dbg_value(i64 0, !4939, !DIExpression(), !4941)
  br label %for.loop, !dbg !4942

for.loop:                                         ; preds = %if.done, %entry
  %6 = phi i64 [ 0, %entry ], [ %15, %if.done ], !dbg !4941
    #dbg_value(i64 %6, !4939, !DIExpression(), !4943)
    #dbg_value(i64 %n, !4938, !DIExpression(), !4944)
  %7 = icmp slt i64 %6, %n, !dbg !4945
  br i1 %7, label %for.body, label %for.done, !dbg !4942

for.body:                                         ; preds = %for.loop
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4946)
    #dbg_value(i64 %6, !4939, !DIExpression(), !4947)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4948
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4948
  %8 = icmp uge i64 %6, %indexaddr.len, !dbg !4948
  br i1 %8, label %lookup.throw, label %lookup.next, !dbg !4948

lookup.next:                                      ; preds = %for.body
  %9 = getelementptr inbounds i64, ptr %indexaddr.ptr, i64 %6, !dbg !4948
  %10 = load i64, ptr %9, align 8, !dbg !4948
    #dbg_value({ ptr, i64, i64 } %5, !4937, !DIExpression(), !4949)
    #dbg_value(i64 %6, !4939, !DIExpression(), !4950)
  %indexaddr.ptr1 = extractvalue { ptr, i64, i64 } %5, 0, !dbg !4951
  %indexaddr.len2 = extractvalue { ptr, i64, i64 } %5, 1, !dbg !4951
  %11 = icmp uge i64 %6, %indexaddr.len2, !dbg !4951
  br i1 %11, label %lookup.throw3, label %lookup.next4, !dbg !4951

lookup.next4:                                     ; preds = %lookup.next
  %12 = getelementptr inbounds i64, ptr %indexaddr.ptr1, i64 %6, !dbg !4951
  %13 = load i64, ptr %12, align 8, !dbg !4951
  %14 = icmp ne i64 %10, %13, !dbg !4952
  br i1 %14, label %if.then, label %if.done, !dbg !4942

if.then:                                          ; preds = %lookup.next4
    #dbg_value(i64 %6, !4939, !DIExpression(), !4953)
  ret i64 %6, !dbg !4954

if.done:                                          ; preds = %lookup.next4
  %15 = add i64 %6, 1, !dbg !4955
    #dbg_value(i64 %15, !4939, !DIExpression(), !4955)
  br label %for.loop, !dbg !4942

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %n, !4938, !DIExpression(), !4956)
  ret i64 %n, !dbg !4957

lookup.throw:                                     ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !4948
  unreachable, !dbg !4948

lookup.throw3:                                    ; preds = %lookup.next
  call void @runtime.lookupPanic(ptr undef), !dbg !4951
  unreachable, !dbg !4951
}
