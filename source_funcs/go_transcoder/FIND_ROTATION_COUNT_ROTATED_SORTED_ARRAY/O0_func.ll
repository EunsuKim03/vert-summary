define i64 @f_gold(ptr nocapture %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n) #0 !dbg !4927 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %arr.data, 0, !dbg !4941
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %arr.len, 1, !dbg !4941
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %arr.cap, 2, !dbg !4941
    #dbg_value(ptr %arr.data, !4936, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4941)
    #dbg_value(i64 %arr.len, !4936, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4941)
    #dbg_value(i64 %arr.cap, !4936, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4941)
    #dbg_value(i64 %n, !4937, !DIExpression(), !4941)
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4942)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4943
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4943
  %3 = icmp uge i64 0, %indexaddr.len, !dbg !4943
  br i1 %3, label %lookup.throw, label %lookup.next, !dbg !4943

lookup.next:                                      ; preds = %entry
  %4 = getelementptr inbounds i64, ptr %indexaddr.ptr, i64 0, !dbg !4943
  %5 = load i64, ptr %4, align 8, !dbg !4943
    #dbg_value(i64 %5, !4938, !DIExpression(), !4944)
    #dbg_value(i64 0, !4939, !DIExpression(), !4945)
    #dbg_value(i64 0, !4940, !DIExpression(), !4946)
  br label %for.loop, !dbg !4947

for.loop:                                         ; preds = %if.done, %lookup.next
  %6 = phi i64 [ %5, %lookup.next ], [ %17, %if.done ], !dbg !4944
  %7 = phi i64 [ 0, %lookup.next ], [ %18, %if.done ], !dbg !4945
  %8 = phi i64 [ 0, %lookup.next ], [ %19, %if.done ], !dbg !4946
    #dbg_value(i64 %8, !4940, !DIExpression(), !4948)
    #dbg_value(i64 %n, !4937, !DIExpression(), !4949)
  %9 = icmp slt i64 %8, %n, !dbg !4950
  br i1 %9, label %for.body, label %for.done, !dbg !4947

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %6, !4938, !DIExpression(), !4951)
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4952)
    #dbg_value(i64 %8, !4940, !DIExpression(), !4953)
  %indexaddr.ptr1 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4954
  %indexaddr.len2 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4954
  %10 = icmp uge i64 %8, %indexaddr.len2, !dbg !4954
  br i1 %10, label %lookup.throw3, label %lookup.next4, !dbg !4954

lookup.next4:                                     ; preds = %for.body
  %11 = getelementptr inbounds i64, ptr %indexaddr.ptr1, i64 %8, !dbg !4954
  %12 = load i64, ptr %11, align 8, !dbg !4954
  %13 = icmp sgt i64 %6, %12, !dbg !4955
  br i1 %13, label %if.then, label %if.done, !dbg !4947

if.then:                                          ; preds = %lookup.next4
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4956)
    #dbg_value(i64 %8, !4940, !DIExpression(), !4957)
  %indexaddr.ptr5 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4958
  %indexaddr.len6 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4958
  %14 = icmp uge i64 %8, %indexaddr.len6, !dbg !4958
  br i1 %14, label %lookup.throw7, label %lookup.next8, !dbg !4958

lookup.next8:                                     ; preds = %if.then
  %15 = getelementptr inbounds i64, ptr %indexaddr.ptr5, i64 %8, !dbg !4958
  %16 = load i64, ptr %15, align 8, !dbg !4958
    #dbg_value(i64 %16, !4938, !DIExpression(), !4959)
    #dbg_value(i64 %8, !4940, !DIExpression(), !4960)
    #dbg_value(i64 %8, !4939, !DIExpression(), !4961)
  br label %if.done, !dbg !4947

if.done:                                          ; preds = %lookup.next8, %lookup.next4
  %17 = phi i64 [ %6, %lookup.next4 ], [ %16, %lookup.next8 ], !dbg !4944
  %18 = phi i64 [ %7, %lookup.next4 ], [ %8, %lookup.next8 ], !dbg !4945
  %19 = add i64 %8, 1, !dbg !4962
    #dbg_value(i64 %19, !4940, !DIExpression(), !4962)
  br label %for.loop, !dbg !4947

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %7, !4939, !DIExpression(), !4963)
  ret i64 %7, !dbg !4964

lookup.throw:                                     ; preds = %entry
  call void @runtime.lookupPanic(ptr undef), !dbg !4943
  unreachable, !dbg !4943

lookup.throw3:                                    ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !4954
  unreachable, !dbg !4954

lookup.throw7:                                    ; preds = %if.then
  call void @runtime.lookupPanic(ptr undef), !dbg !4958
  unreachable, !dbg !4958
}
