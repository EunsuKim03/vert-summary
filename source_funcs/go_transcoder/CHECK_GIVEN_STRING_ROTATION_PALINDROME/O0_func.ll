define i1 @f_gold(ptr nocapture %str.data, i64 %str.len, i64 %str.cap) #0 !dbg !4927 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %str.data, 0, !dbg !4933
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %str.len, 1, !dbg !4933
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %str.cap, 2, !dbg !4933
    #dbg_value(ptr %str.data, !4930, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4933)
    #dbg_value(i64 %str.len, !4930, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4933)
    #dbg_value(i64 %str.cap, !4930, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4933)
  %l = call align 8 ptr @runtime.alloc(i64 8, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !4934
  store i64 0, ptr %l, align 8, !dbg !4934
    #dbg_value(i64 0, !4931, !DIExpression(), !4934)
  %h = call align 8 ptr @runtime.alloc(i64 8, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !4935
    #dbg_value({ ptr, i64, i64 } %2, !4930, !DIExpression(), !4936)
  %len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4937
  %3 = sub i64 %len, 1, !dbg !4938
  store i64 %3, ptr %h, align 8, !dbg !4935
    #dbg_value(i64 %3, !4932, !DIExpression(), !4935)
  br label %for.loop, !dbg !4939

for.loop:                                         ; preds = %lookup.next4, %entry
  %4 = load i64, ptr %h, align 8, !dbg !4940
    #dbg_value(i64 %4, !4932, !DIExpression(), !4940)
  %5 = load i64, ptr %l, align 8, !dbg !4941
    #dbg_value(i64 %5, !4931, !DIExpression(), !4941)
  %6 = icmp sgt i64 %4, %5, !dbg !4942
  br i1 %6, label %for.body, label %for.done, !dbg !4939

for.body:                                         ; preds = %for.loop
    #dbg_value({ ptr, i64, i64 } %2, !4930, !DIExpression(), !4943)
  %7 = insertvalue { ptr, ptr } undef, ptr %l, 0, !dbg !4944
  %8 = insertvalue { ptr, ptr } %7, ptr @"main.f_gold$1", 1, !dbg !4944
  %9 = extractvalue { ptr, ptr } %8, 0, !dbg !4945
  %10 = call i64 @"main.f_gold$1"(ptr %9), !dbg !4945
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4946
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4946
  %11 = icmp uge i64 %10, %indexaddr.len, !dbg !4946
  br i1 %11, label %lookup.throw, label %lookup.next, !dbg !4946

lookup.next:                                      ; preds = %for.body
  %12 = getelementptr inbounds i8, ptr %indexaddr.ptr, i64 %10, !dbg !4946
  %13 = load i8, ptr %12, align 1, !dbg !4946
    #dbg_value({ ptr, i64, i64 } %2, !4930, !DIExpression(), !4947)
  %14 = insertvalue { ptr, ptr } undef, ptr %h, 0, !dbg !4948
  %15 = insertvalue { ptr, ptr } %14, ptr @"main.f_gold$2", 1, !dbg !4948
  %16 = extractvalue { ptr, ptr } %15, 0, !dbg !4949
  %17 = call i64 @"main.f_gold$2"(ptr %16), !dbg !4949
  %indexaddr.ptr1 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4950
  %indexaddr.len2 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4950
  %18 = icmp uge i64 %17, %indexaddr.len2, !dbg !4950
  br i1 %18, label %lookup.throw3, label %lookup.next4, !dbg !4950

lookup.next4:                                     ; preds = %lookup.next
  %19 = getelementptr inbounds i8, ptr %indexaddr.ptr1, i64 %17, !dbg !4950
  %20 = load i8, ptr %19, align 1, !dbg !4950
  %21 = icmp ne i8 %13, %20, !dbg !4951
  br i1 %21, label %if.then, label %for.loop, !dbg !4939

if.then:                                          ; preds = %lookup.next4
  ret i1 false, !dbg !4952

for.done:                                         ; preds = %for.loop
  ret i1 true, !dbg !4953

lookup.throw:                                     ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !4946
  unreachable, !dbg !4946

lookup.throw3:                                    ; preds = %lookup.next
  call void @runtime.lookupPanic(ptr undef), !dbg !4950
  unreachable, !dbg !4950
}
