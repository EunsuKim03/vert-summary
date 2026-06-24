define i64 @f_gold(ptr nocapture %a.data, i64 %a.len, i64 %a.cap, i64 %n) #0 !dbg !4927 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %a.data, 0, !dbg !4941
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %a.len, 1, !dbg !4941
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %a.cap, 2, !dbg !4941
    #dbg_value(ptr %a.data, !4936, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4941)
    #dbg_value(i64 %a.len, !4936, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4941)
    #dbg_value(i64 %a.cap, !4936, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4941)
    #dbg_value(i64 %n, !4937, !DIExpression(), !4941)
    #dbg_value(i64 0, !4938, !DIExpression(), !4942)
    #dbg_value(i64 0, !4939, !DIExpression(), !4943)
  br label %for.loop, !dbg !4944

for.loop:                                         ; preds = %for.done, %entry
  %3 = phi i64 [ 0, %entry ], [ %7, %for.done ], !dbg !4942
  %4 = phi i64 [ 0, %entry ], [ %21, %for.done ], !dbg !4943
    #dbg_value(i64 %4, !4939, !DIExpression(), !4945)
    #dbg_value(i64 %n, !4937, !DIExpression(), !4946)
  %5 = icmp slt i64 %4, %n, !dbg !4947
  br i1 %5, label %for.body, label %for.done3, !dbg !4944

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %4, !4939, !DIExpression(), !4948)
  %6 = add i64 %4, 1, !dbg !4949
    #dbg_value(i64 %6, !4940, !DIExpression(), !4950)
  br label %for.loop1, !dbg !4944

for.loop1:                                        ; preds = %if.done, %for.body
  %7 = phi i64 [ %3, %for.body ], [ %19, %if.done ], !dbg !4942
  %8 = phi i64 [ %6, %for.body ], [ %20, %if.done ], !dbg !4950
    #dbg_value(i64 %8, !4940, !DIExpression(), !4951)
    #dbg_value(i64 %n, !4937, !DIExpression(), !4952)
  %9 = icmp slt i64 %8, %n, !dbg !4953
  br i1 %9, label %for.body2, label %for.done, !dbg !4944

for.body2:                                        ; preds = %for.loop1
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4954)
    #dbg_value(i64 %4, !4939, !DIExpression(), !4955)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4956
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4956
  %10 = icmp uge i64 %4, %indexaddr.len, !dbg !4956
  br i1 %10, label %lookup.throw, label %lookup.next, !dbg !4956

lookup.next:                                      ; preds = %for.body2
  %11 = getelementptr inbounds i64, ptr %indexaddr.ptr, i64 %4, !dbg !4956
  %12 = load i64, ptr %11, align 8, !dbg !4956
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4957)
    #dbg_value(i64 %8, !4940, !DIExpression(), !4958)
  %indexaddr.ptr4 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4959
  %indexaddr.len5 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4959
  %13 = icmp uge i64 %8, %indexaddr.len5, !dbg !4959
  br i1 %13, label %lookup.throw6, label %lookup.next7, !dbg !4959

lookup.next7:                                     ; preds = %lookup.next
  %14 = getelementptr inbounds i64, ptr %indexaddr.ptr4, i64 %8, !dbg !4959
  %15 = load i64, ptr %14, align 8, !dbg !4959
  %16 = and i64 %12, %15, !dbg !4960
  %17 = icmp eq i64 %16, 0, !dbg !4961
  br i1 %17, label %if.then, label %if.done, !dbg !4944

if.then:                                          ; preds = %lookup.next7
  %18 = add i64 %7, 2, !dbg !4962
    #dbg_value(i64 %18, !4938, !DIExpression(), !4962)
  br label %if.done, !dbg !4944

if.done:                                          ; preds = %if.then, %lookup.next7
  %19 = phi i64 [ %7, %lookup.next7 ], [ %18, %if.then ], !dbg !4942
  %20 = add i64 %8, 1, !dbg !4963
    #dbg_value(i64 %20, !4940, !DIExpression(), !4963)
  br label %for.loop1, !dbg !4944

for.done:                                         ; preds = %for.loop1
  %21 = add i64 %4, 1, !dbg !4964
    #dbg_value(i64 %21, !4939, !DIExpression(), !4964)
  br label %for.loop, !dbg !4944

for.done3:                                        ; preds = %for.loop
    #dbg_value(i64 %3, !4938, !DIExpression(), !4965)
  ret i64 %3, !dbg !4966

lookup.throw:                                     ; preds = %for.body2
  call void @runtime.lookupPanic(ptr undef), !dbg !4956
  unreachable, !dbg !4956

lookup.throw6:                                    ; preds = %lookup.next
  call void @runtime.lookupPanic(ptr undef), !dbg !4959
  unreachable, !dbg !4959
}
