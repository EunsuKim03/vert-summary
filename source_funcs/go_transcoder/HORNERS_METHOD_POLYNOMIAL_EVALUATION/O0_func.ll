define i64 @f_gold(ptr nocapture %poly.data, i64 %poly.len, i64 %poly.cap, i64 %n, i64 %x) #0 !dbg !4927 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %poly.data, 0, !dbg !4941
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %poly.len, 1, !dbg !4941
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %poly.cap, 2, !dbg !4941
    #dbg_value(ptr %poly.data, !4936, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4941)
    #dbg_value(i64 %poly.len, !4936, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4941)
    #dbg_value(i64 %poly.cap, !4936, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4941)
    #dbg_value(i64 %n, !4937, !DIExpression(), !4941)
    #dbg_value(i64 %x, !4938, !DIExpression(), !4941)
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4942)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4943
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4943
  %3 = icmp uge i64 0, %indexaddr.len, !dbg !4943
  br i1 %3, label %lookup.throw, label %lookup.next, !dbg !4943

lookup.next:                                      ; preds = %entry
  %4 = getelementptr inbounds i64, ptr %indexaddr.ptr, i64 0, !dbg !4943
  %5 = load i64, ptr %4, align 8, !dbg !4943
    #dbg_value(i64 %5, !4939, !DIExpression(), !4944)
    #dbg_value(i64 1, !4940, !DIExpression(), !4945)
  br label %for.loop, !dbg !4946

for.loop:                                         ; preds = %lookup.next4, %lookup.next
  %6 = phi i64 [ %5, %lookup.next ], [ %13, %lookup.next4 ], !dbg !4944
  %7 = phi i64 [ 1, %lookup.next ], [ %14, %lookup.next4 ], !dbg !4945
    #dbg_value(i64 %7, !4940, !DIExpression(), !4947)
    #dbg_value(i64 %n, !4937, !DIExpression(), !4948)
  %8 = icmp slt i64 %7, %n, !dbg !4949
  br i1 %8, label %for.body, label %for.done, !dbg !4946

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %6, !4939, !DIExpression(), !4950)
    #dbg_value(i64 %x, !4938, !DIExpression(), !4951)
  %9 = mul i64 %6, %x, !dbg !4952
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4953)
    #dbg_value(i64 %7, !4940, !DIExpression(), !4954)
  %indexaddr.ptr1 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4955
  %indexaddr.len2 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4955
  %10 = icmp uge i64 %7, %indexaddr.len2, !dbg !4955
  br i1 %10, label %lookup.throw3, label %lookup.next4, !dbg !4955

lookup.next4:                                     ; preds = %for.body
  %11 = getelementptr inbounds i64, ptr %indexaddr.ptr1, i64 %7, !dbg !4955
  %12 = load i64, ptr %11, align 8, !dbg !4955
  %13 = add i64 %9, %12, !dbg !4956
    #dbg_value(i64 %13, !4939, !DIExpression(), !4957)
  %14 = add i64 %7, 1, !dbg !4958
    #dbg_value(i64 %14, !4940, !DIExpression(), !4958)
  br label %for.loop, !dbg !4946

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %6, !4939, !DIExpression(), !4959)
  ret i64 %6, !dbg !4960

lookup.throw:                                     ; preds = %entry
  call void @runtime.lookupPanic(ptr undef), !dbg !4943
  unreachable, !dbg !4943

lookup.throw3:                                    ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !4955
  unreachable, !dbg !4955
}
