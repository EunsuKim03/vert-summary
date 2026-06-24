define i64 @f_gold(ptr nocapture %a.data, i64 %a.len, i64 %a.cap, i64 %n, i64 %l, i64 %r) #0 !dbg !4927 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %a.data, 0, !dbg !4942
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %a.len, 1, !dbg !4942
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %a.cap, 2, !dbg !4942
    #dbg_value(ptr %a.data, !4936, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4942)
    #dbg_value(i64 %a.len, !4936, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4942)
    #dbg_value(i64 %a.cap, !4936, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4942)
    #dbg_value(i64 %n, !4937, !DIExpression(), !4942)
    #dbg_value(i64 %l, !4938, !DIExpression(), !4942)
    #dbg_value(i64 %r, !4939, !DIExpression(), !4942)
    #dbg_value(i64 0, !4940, !DIExpression(), !4943)
    #dbg_value(i64 %l, !4938, !DIExpression(), !4944)
    #dbg_value(i64 %l, !4941, !DIExpression(), !4945)
  br label %for.loop, !dbg !4946

for.loop:                                         ; preds = %if.done, %entry
  %3 = phi i64 [ 0, %entry ], [ %15, %if.done ], !dbg !4943
  %4 = phi i64 [ %l, %entry ], [ %16, %if.done ], !dbg !4945
    #dbg_value(i64 %4, !4941, !DIExpression(), !4947)
    #dbg_value(i64 %r, !4939, !DIExpression(), !4948)
  %5 = icmp slt i64 %4, %r, !dbg !4949
  br i1 %5, label %for.body, label %for.done, !dbg !4946

for.body:                                         ; preds = %for.loop
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4950)
    #dbg_value(i64 %4, !4941, !DIExpression(), !4951)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4952
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4952
  %6 = icmp uge i64 %4, %indexaddr.len, !dbg !4952
  br i1 %6, label %lookup.throw, label %lookup.next, !dbg !4952

lookup.next:                                      ; preds = %for.body
  %7 = getelementptr inbounds i64, ptr %indexaddr.ptr, i64 %4, !dbg !4952
  %8 = load i64, ptr %7, align 8, !dbg !4952
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4953)
    #dbg_value(i64 %4, !4941, !DIExpression(), !4954)
  %9 = add i64 %4, 1, !dbg !4955
  %indexaddr.ptr1 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4956
  %indexaddr.len2 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4956
  %10 = icmp uge i64 %9, %indexaddr.len2, !dbg !4956
  br i1 %10, label %lookup.throw3, label %lookup.next4, !dbg !4956

lookup.next4:                                     ; preds = %lookup.next
  %11 = getelementptr inbounds i64, ptr %indexaddr.ptr1, i64 %9, !dbg !4956
  %12 = load i64, ptr %11, align 8, !dbg !4956
  %13 = icmp eq i64 %8, %12, !dbg !4957
  br i1 %13, label %if.then, label %if.done, !dbg !4946

if.then:                                          ; preds = %lookup.next4
  %14 = add i64 %3, 1, !dbg !4958
    #dbg_value(i64 %14, !4940, !DIExpression(), !4958)
  br label %if.done, !dbg !4946

if.done:                                          ; preds = %if.then, %lookup.next4
  %15 = phi i64 [ %3, %lookup.next4 ], [ %14, %if.then ], !dbg !4943
  %16 = add i64 %4, 1, !dbg !4959
    #dbg_value(i64 %16, !4941, !DIExpression(), !4959)
  br label %for.loop, !dbg !4946

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %3, !4940, !DIExpression(), !4960)
  ret i64 %3, !dbg !4961

lookup.throw:                                     ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !4952
  unreachable, !dbg !4952

lookup.throw3:                                    ; preds = %lookup.next
  call void @runtime.lookupPanic(ptr undef), !dbg !4956
  unreachable, !dbg !4956
}
