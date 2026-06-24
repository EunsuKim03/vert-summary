define i1 @f_gold(ptr nocapture %s.data, i64 %s.len, i64 %s.cap) #0 !dbg !4927 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %s.data, 0, !dbg !4933
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %s.len, 1, !dbg !4933
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %s.cap, 2, !dbg !4933
    #dbg_value(ptr %s.data, !4930, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4933)
    #dbg_value(i64 %s.len, !4930, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4933)
    #dbg_value(i64 %s.cap, !4930, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4933)
    #dbg_value({ ptr, i64, i64 } %2, !4930, !DIExpression(), !4934)
  %len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4935
    #dbg_value(i64 %len, !4931, !DIExpression(), !4936)
    #dbg_value(i64 1, !4932, !DIExpression(), !4937)
  br label %for.loop, !dbg !4938

for.loop:                                         ; preds = %if.done, %entry
  %3 = phi i64 [ 1, %entry ], [ %12, %if.done ], !dbg !4937
    #dbg_value(i64 %3, !4932, !DIExpression(), !4939)
    #dbg_value(i64 %len, !4931, !DIExpression(), !4940)
  %4 = icmp slt i64 %3, %len, !dbg !4941
  br i1 %4, label %for.body, label %for.done, !dbg !4938

for.body:                                         ; preds = %for.loop
    #dbg_value({ ptr, i64, i64 } %2, !4930, !DIExpression(), !4942)
    #dbg_value(i64 %3, !4932, !DIExpression(), !4943)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4944
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4944
  %5 = icmp uge i64 %3, %indexaddr.len, !dbg !4944
  br i1 %5, label %lookup.throw, label %lookup.next, !dbg !4944

lookup.next:                                      ; preds = %for.body
  %6 = getelementptr inbounds i8, ptr %indexaddr.ptr, i64 %3, !dbg !4944
  %7 = load i8, ptr %6, align 1, !dbg !4944
    #dbg_value({ ptr, i64, i64 } %2, !4930, !DIExpression(), !4945)
  %indexaddr.ptr1 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4946
  %indexaddr.len2 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4946
  %8 = icmp uge i64 0, %indexaddr.len2, !dbg !4946
  br i1 %8, label %lookup.throw3, label %lookup.next4, !dbg !4946

lookup.next4:                                     ; preds = %lookup.next
  %9 = getelementptr inbounds i8, ptr %indexaddr.ptr1, i64 0, !dbg !4946
  %10 = load i8, ptr %9, align 1, !dbg !4946
  %11 = icmp ne i8 %7, %10, !dbg !4947
  br i1 %11, label %if.then, label %if.done, !dbg !4938

if.then:                                          ; preds = %lookup.next4
  ret i1 false, !dbg !4948

if.done:                                          ; preds = %lookup.next4
  %12 = add i64 %3, 1, !dbg !4949
    #dbg_value(i64 %12, !4932, !DIExpression(), !4949)
  br label %for.loop, !dbg !4938

for.done:                                         ; preds = %for.loop
  ret i1 true, !dbg !4950

lookup.throw:                                     ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !4944
  unreachable, !dbg !4944

lookup.throw3:                                    ; preds = %lookup.next
  call void @runtime.lookupPanic(ptr undef), !dbg !4946
  unreachable, !dbg !4946
}
