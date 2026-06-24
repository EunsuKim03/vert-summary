define i64 @f_gold(ptr nocapture %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n) #0 !dbg !4927 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %arr.data, 0, !dbg !4940
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %arr.len, 1, !dbg !4940
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %arr.cap, 2, !dbg !4940
    #dbg_value(ptr %arr.data, !4936, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4940)
    #dbg_value(i64 %arr.len, !4936, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4940)
    #dbg_value(i64 %arr.cap, !4936, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4940)
    #dbg_value(i64 %n, !4937, !DIExpression(), !4940)
    #dbg_value(i64 0, !4938, !DIExpression(), !4941)
    #dbg_value(i64 0, !4939, !DIExpression(), !4942)
  br label %for.loop, !dbg !4943

for.loop:                                         ; preds = %lookup.next, %entry
  %3 = phi i64 [ 0, %entry ], [ %12, %lookup.next ], !dbg !4941
  %4 = phi i64 [ 0, %entry ], [ %13, %lookup.next ], !dbg !4942
    #dbg_value(i64 %4, !4939, !DIExpression(), !4944)
    #dbg_value(i64 %n, !4937, !DIExpression(), !4945)
  %5 = sub i64 %n, 1, !dbg !4946
  %6 = icmp slt i64 %4, %5, !dbg !4947
  br i1 %6, label %for.body, label %for.done, !dbg !4943

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %3, !4938, !DIExpression(), !4948)
    #dbg_value(i64 %4, !4939, !DIExpression(), !4949)
  %7 = add i64 %4, 1, !dbg !4950
  %8 = xor i64 %3, %7, !dbg !4951
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4952)
    #dbg_value(i64 %4, !4939, !DIExpression(), !4953)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4954
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4954
  %9 = icmp uge i64 %4, %indexaddr.len, !dbg !4954
  br i1 %9, label %lookup.throw, label %lookup.next, !dbg !4954

lookup.next:                                      ; preds = %for.body
  %10 = getelementptr inbounds i64, ptr %indexaddr.ptr, i64 %4, !dbg !4954
  %11 = load i64, ptr %10, align 8, !dbg !4954
  %12 = xor i64 %8, %11, !dbg !4955
    #dbg_value(i64 %12, !4938, !DIExpression(), !4956)
  %13 = add i64 %4, 1, !dbg !4957
    #dbg_value(i64 %13, !4939, !DIExpression(), !4957)
  br label %for.loop, !dbg !4943

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %3, !4938, !DIExpression(), !4958)
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4959)
    #dbg_value(i64 %n, !4937, !DIExpression(), !4960)
  %14 = sub i64 %n, 1, !dbg !4961
  %indexaddr.ptr1 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4962
  %indexaddr.len2 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4962
  %15 = icmp uge i64 %14, %indexaddr.len2, !dbg !4962
  br i1 %15, label %lookup.throw3, label %lookup.next4, !dbg !4962

lookup.next4:                                     ; preds = %for.done
  %16 = getelementptr inbounds i64, ptr %indexaddr.ptr1, i64 %14, !dbg !4962
  %17 = load i64, ptr %16, align 8, !dbg !4962
  %18 = xor i64 %3, %17, !dbg !4963
    #dbg_value(i64 %18, !4938, !DIExpression(), !4964)
    #dbg_value(i64 %18, !4938, !DIExpression(), !4965)
  ret i64 %18, !dbg !4966

lookup.throw:                                     ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !4954
  unreachable, !dbg !4954

lookup.throw3:                                    ; preds = %for.done
  call void @runtime.lookupPanic(ptr undef), !dbg !4962
  unreachable, !dbg !4962
}
