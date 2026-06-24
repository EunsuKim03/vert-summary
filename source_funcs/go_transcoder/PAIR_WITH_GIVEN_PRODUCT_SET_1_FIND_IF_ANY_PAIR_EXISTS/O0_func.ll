define i1 @f_gold(ptr nocapture %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n, i64 %x) #0 !dbg !4927 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %arr.data, 0, !dbg !4941
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %arr.len, 1, !dbg !4941
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %arr.cap, 2, !dbg !4941
    #dbg_value(ptr %arr.data, !4936, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4941)
    #dbg_value(i64 %arr.len, !4936, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4941)
    #dbg_value(i64 %arr.cap, !4936, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4941)
    #dbg_value(i64 %n, !4937, !DIExpression(), !4941)
    #dbg_value(i64 %x, !4938, !DIExpression(), !4941)
    #dbg_value(i64 0, !4939, !DIExpression(), !4942)
  br label %for.loop, !dbg !4943

for.loop:                                         ; preds = %for.done, %entry
  %3 = phi i64 [ 0, %entry ], [ %18, %for.done ], !dbg !4942
    #dbg_value(i64 %3, !4939, !DIExpression(), !4944)
    #dbg_value(i64 %n, !4937, !DIExpression(), !4945)
  %4 = sub i64 %n, 1, !dbg !4946
  %5 = icmp slt i64 %3, %4, !dbg !4947
  br i1 %5, label %for.body, label %for.done3, !dbg !4943

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %3, !4939, !DIExpression(), !4948)
  %6 = add i64 %3, 1, !dbg !4949
    #dbg_value(i64 %6, !4940, !DIExpression(), !4950)
  br label %for.loop1, !dbg !4943

for.loop1:                                        ; preds = %if.done, %for.body
  %7 = phi i64 [ %3, %for.body ], [ %17, %if.done ], !dbg !4942
    #dbg_value(i64 %7, !4939, !DIExpression(), !4951)
    #dbg_value(i64 %n, !4937, !DIExpression(), !4952)
  %8 = icmp slt i64 %7, %n, !dbg !4953
  br i1 %8, label %for.body2, label %for.done, !dbg !4943

for.body2:                                        ; preds = %for.loop1
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4954)
    #dbg_value(i64 %7, !4939, !DIExpression(), !4955)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4956
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4956
  %9 = icmp uge i64 %7, %indexaddr.len, !dbg !4956
  br i1 %9, label %lookup.throw, label %lookup.next, !dbg !4956

lookup.next:                                      ; preds = %for.body2
  %10 = getelementptr inbounds i64, ptr %indexaddr.ptr, i64 %7, !dbg !4956
  %11 = load i64, ptr %10, align 8, !dbg !4956
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4957)
    #dbg_value(i64 %6, !4940, !DIExpression(), !4958)
  %indexaddr.ptr4 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4959
  %indexaddr.len5 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4959
  %12 = icmp uge i64 %6, %indexaddr.len5, !dbg !4959
  br i1 %12, label %lookup.throw6, label %lookup.next7, !dbg !4959

lookup.next7:                                     ; preds = %lookup.next
  %13 = getelementptr inbounds i64, ptr %indexaddr.ptr4, i64 %6, !dbg !4959
  %14 = load i64, ptr %13, align 8, !dbg !4959
  %15 = mul i64 %11, %14, !dbg !4960
    #dbg_value(i64 %x, !4938, !DIExpression(), !4961)
  %16 = icmp eq i64 %15, %x, !dbg !4962
  br i1 %16, label %if.then, label %if.done, !dbg !4943

if.then:                                          ; preds = %lookup.next7
  ret i1 true, !dbg !4963

if.done:                                          ; preds = %lookup.next7
  %17 = add i64 %7, 1, !dbg !4964
    #dbg_value(i64 %17, !4939, !DIExpression(), !4964)
  br label %for.loop1, !dbg !4943

for.done:                                         ; preds = %for.loop1
  %18 = add i64 %7, 1, !dbg !4965
    #dbg_value(i64 %18, !4939, !DIExpression(), !4965)
  br label %for.loop, !dbg !4943

for.done3:                                        ; preds = %for.loop
  ret i1 false, !dbg !4966

lookup.throw:                                     ; preds = %for.body2
  call void @runtime.lookupPanic(ptr undef), !dbg !4956
  unreachable, !dbg !4956

lookup.throw6:                                    ; preds = %lookup.next
  call void @runtime.lookupPanic(ptr undef), !dbg !4959
  unreachable, !dbg !4959
}
