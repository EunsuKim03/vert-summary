define i64 @f_gold(ptr nocapture %weight.data, i64 %weight.len, i64 %weight.cap, i64 %n, i64 %c) #0 !dbg !4927 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %weight.data, 0, !dbg !4942
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %weight.len, 1, !dbg !4942
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %weight.cap, 2, !dbg !4942
    #dbg_value(ptr %weight.data, !4936, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4942)
    #dbg_value(i64 %weight.len, !4936, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4942)
    #dbg_value(i64 %weight.cap, !4936, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4942)
    #dbg_value(i64 %n, !4937, !DIExpression(), !4942)
    #dbg_value(i64 %c, !4938, !DIExpression(), !4942)
    #dbg_value(i64 0, !4939, !DIExpression(), !4943)
    #dbg_value(i64 %c, !4938, !DIExpression(), !4944)
    #dbg_value(i64 %c, !4940, !DIExpression(), !4945)
    #dbg_value(i64 0, !4941, !DIExpression(), !4946)
  br label %for.loop, !dbg !4947

for.loop:                                         ; preds = %if.done, %entry
  %3 = phi i64 [ 0, %entry ], [ %16, %if.done ], !dbg !4943
  %4 = phi i64 [ %c, %entry ], [ %17, %if.done ], !dbg !4945
  %5 = phi i64 [ 0, %entry ], [ %18, %if.done ], !dbg !4946
    #dbg_value(i64 %5, !4941, !DIExpression(), !4948)
    #dbg_value(i64 %n, !4937, !DIExpression(), !4949)
  %6 = icmp slt i64 %5, %n, !dbg !4950
  br i1 %6, label %for.body, label %for.done, !dbg !4947

for.body:                                         ; preds = %for.loop
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4951)
    #dbg_value(i64 %5, !4941, !DIExpression(), !4952)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4953
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4953
  %7 = icmp uge i64 %5, %indexaddr.len, !dbg !4953
  br i1 %7, label %lookup.throw, label %lookup.next, !dbg !4953

lookup.next:                                      ; preds = %for.body
  %8 = getelementptr inbounds i64, ptr %indexaddr.ptr, i64 %5, !dbg !4953
  %9 = load i64, ptr %8, align 8, !dbg !4953
    #dbg_value(i64 %4, !4940, !DIExpression(), !4954)
  %10 = icmp sgt i64 %9, %4, !dbg !4955
  br i1 %10, label %if.then, label %if.else, !dbg !4947

if.then:                                          ; preds = %lookup.next
  %11 = add i64 %3, 1, !dbg !4956
    #dbg_value(i64 %11, !4939, !DIExpression(), !4956)
    #dbg_value(i64 %c, !4938, !DIExpression(), !4957)
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4958)
    #dbg_value(i64 %5, !4941, !DIExpression(), !4959)
  %indexaddr.ptr1 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4960
  %indexaddr.len2 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4960
  %12 = icmp uge i64 %5, %indexaddr.len2, !dbg !4960
  br i1 %12, label %lookup.throw3, label %lookup.next4, !dbg !4960

lookup.next4:                                     ; preds = %if.then
  %13 = getelementptr inbounds i64, ptr %indexaddr.ptr1, i64 %5, !dbg !4960
  %14 = load i64, ptr %13, align 8, !dbg !4960
  %15 = sub i64 %c, %14, !dbg !4961
    #dbg_value(i64 %15, !4940, !DIExpression(), !4962)
  br label %if.done, !dbg !4947

if.done:                                          ; preds = %lookup.next8, %lookup.next4
  %16 = phi i64 [ %11, %lookup.next4 ], [ %3, %lookup.next8 ], !dbg !4943
  %17 = phi i64 [ %15, %lookup.next4 ], [ %22, %lookup.next8 ], !dbg !4945
  %18 = add i64 %5, 1, !dbg !4963
    #dbg_value(i64 %18, !4941, !DIExpression(), !4963)
  br label %for.loop, !dbg !4947

if.else:                                          ; preds = %lookup.next
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4964)
    #dbg_value(i64 %5, !4941, !DIExpression(), !4965)
  %indexaddr.ptr5 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4966
  %indexaddr.len6 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4966
  %19 = icmp uge i64 %5, %indexaddr.len6, !dbg !4966
  br i1 %19, label %lookup.throw7, label %lookup.next8, !dbg !4966

lookup.next8:                                     ; preds = %if.else
  %20 = getelementptr inbounds i64, ptr %indexaddr.ptr5, i64 %5, !dbg !4966
  %21 = load i64, ptr %20, align 8, !dbg !4966
  %22 = sub i64 %4, %21, !dbg !4967
    #dbg_value(i64 %22, !4940, !DIExpression(), !4967)
  br label %if.done, !dbg !4947

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %3, !4939, !DIExpression(), !4968)
  ret i64 %3, !dbg !4969

lookup.throw:                                     ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !4953
  unreachable, !dbg !4953

lookup.throw3:                                    ; preds = %if.then
  call void @runtime.lookupPanic(ptr undef), !dbg !4960
  unreachable, !dbg !4960

lookup.throw7:                                    ; preds = %if.else
  call void @runtime.lookupPanic(ptr undef), !dbg !4966
  unreachable, !dbg !4966
}
