define i1 @f_gold(ptr nocapture %str.data, i64 %str.len, i64 %str.cap) #0 !dbg !4927 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %str.data, 0, !dbg !4933
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %str.len, 1, !dbg !4933
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %str.cap, 2, !dbg !4933
    #dbg_value(ptr %str.data, !4930, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4933)
    #dbg_value(i64 %str.len, !4930, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4933)
    #dbg_value(i64 %str.cap, !4930, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4933)
    #dbg_value(i64 0, !4931, !DIExpression(), !4934)
    #dbg_value({ ptr, i64, i64 } %2, !4930, !DIExpression(), !4935)
  %len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4936
  %3 = sub i64 %len, 1, !dbg !4937
    #dbg_value(i64 %3, !4932, !DIExpression(), !4938)
  br label %for.loop, !dbg !4939

for.loop:                                         ; preds = %if.done, %entry
  %4 = phi i64 [ 0, %entry ], [ %14, %if.done ], !dbg !4934
  %5 = phi i64 [ %3, %entry ], [ %15, %if.done ], !dbg !4938
    #dbg_value(i64 %4, !4931, !DIExpression(), !4940)
    #dbg_value(i64 %5, !4932, !DIExpression(), !4941)
  %6 = icmp slt i64 %4, %5, !dbg !4942
  br i1 %6, label %for.body, label %for.done, !dbg !4939

for.body:                                         ; preds = %for.loop
    #dbg_value({ ptr, i64, i64 } %2, !4930, !DIExpression(), !4943)
    #dbg_value(i64 %4, !4931, !DIExpression(), !4944)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4945
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4945
  %7 = icmp uge i64 %4, %indexaddr.len, !dbg !4945
  br i1 %7, label %lookup.throw, label %lookup.next, !dbg !4945

lookup.next:                                      ; preds = %for.body
  %8 = getelementptr inbounds i8, ptr %indexaddr.ptr, i64 %4, !dbg !4945
  %9 = load i8, ptr %8, align 1, !dbg !4945
    #dbg_value({ ptr, i64, i64 } %2, !4930, !DIExpression(), !4946)
    #dbg_value(i64 %5, !4932, !DIExpression(), !4947)
  %indexaddr.ptr1 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4948
  %indexaddr.len2 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4948
  %10 = icmp uge i64 %5, %indexaddr.len2, !dbg !4948
  br i1 %10, label %lookup.throw3, label %lookup.next4, !dbg !4948

lookup.next4:                                     ; preds = %lookup.next
  %11 = getelementptr inbounds i8, ptr %indexaddr.ptr1, i64 %5, !dbg !4948
  %12 = load i8, ptr %11, align 1, !dbg !4948
  %13 = icmp ne i8 %9, %12, !dbg !4949
  br i1 %13, label %if.then, label %if.done, !dbg !4939

if.then:                                          ; preds = %lookup.next4
  ret i1 false, !dbg !4950

if.done:                                          ; preds = %lookup.next4
  %14 = add i64 %4, 1, !dbg !4951
    #dbg_value(i64 %14, !4931, !DIExpression(), !4951)
  %15 = sub i64 %5, 1, !dbg !4952
    #dbg_value(i64 %15, !4932, !DIExpression(), !4952)
  br label %for.loop, !dbg !4939

for.done:                                         ; preds = %for.loop
  ret i1 true, !dbg !4953

lookup.throw:                                     ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !4945
  unreachable, !dbg !4945

lookup.throw3:                                    ; preds = %lookup.next
  call void @runtime.lookupPanic(ptr undef), !dbg !4948
  unreachable, !dbg !4948
}
