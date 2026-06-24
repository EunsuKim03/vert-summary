define i1 @f_gold(ptr nocapture %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n, i64 %k) #0 !dbg !4927 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %arr.data, 0, !dbg !4942
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %arr.len, 1, !dbg !4942
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %arr.cap, 2, !dbg !4942
    #dbg_value(ptr %arr.data, !4936, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4942)
    #dbg_value(i64 %arr.len, !4936, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4942)
    #dbg_value(i64 %arr.cap, !4936, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4942)
    #dbg_value(i64 %n, !4937, !DIExpression(), !4942)
    #dbg_value(i64 %k, !4938, !DIExpression(), !4942)
    #dbg_value(i64 0, !4939, !DIExpression(), !4943)
    #dbg_value(i64 0, !4940, !DIExpression(), !4944)
  br label %for.loop, !dbg !4945

for.loop:                                         ; preds = %for.done, %entry
  %3 = phi i64 [ 0, %entry ], [ %20, %for.done ], !dbg !4944
    #dbg_value(i64 %3, !4940, !DIExpression(), !4946)
    #dbg_value(i64 %n, !4937, !DIExpression(), !4947)
  %4 = icmp slt i64 %3, %n, !dbg !4948
  br i1 %4, label %for.body, label %for.done5, !dbg !4945

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 0, !4939, !DIExpression(), !4949)
    #dbg_value(i64 0, !4941, !DIExpression(), !4950)
  br label %for.loop1, !dbg !4945

for.loop1:                                        ; preds = %if.done4, %for.body
  %5 = phi i64 [ 0, %for.body ], [ %16, %if.done4 ], !dbg !4943
  %6 = phi i64 [ 0, %for.body ], [ %19, %if.done4 ], !dbg !4950
    #dbg_value(i64 %6, !4941, !DIExpression(), !4951)
    #dbg_value(i64 %n, !4937, !DIExpression(), !4952)
  %7 = icmp slt i64 %6, %n, !dbg !4953
  br i1 %7, label %for.body2, label %for.done, !dbg !4945

for.body2:                                        ; preds = %for.loop1
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4954)
    #dbg_value(i64 %6, !4941, !DIExpression(), !4955)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4956
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4956
  %8 = icmp uge i64 %6, %indexaddr.len, !dbg !4956
  br i1 %8, label %lookup.throw, label %lookup.next, !dbg !4956

lookup.next:                                      ; preds = %for.body2
  %9 = getelementptr inbounds i64, ptr %indexaddr.ptr, i64 %6, !dbg !4956
  %10 = load i64, ptr %9, align 8, !dbg !4956
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4957)
    #dbg_value(i64 %3, !4940, !DIExpression(), !4958)
  %indexaddr.ptr6 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4959
  %indexaddr.len7 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4959
  %11 = icmp uge i64 %3, %indexaddr.len7, !dbg !4959
  br i1 %11, label %lookup.throw8, label %lookup.next9, !dbg !4959

lookup.next9:                                     ; preds = %lookup.next
  %12 = getelementptr inbounds i64, ptr %indexaddr.ptr6, i64 %3, !dbg !4959
  %13 = load i64, ptr %12, align 8, !dbg !4959
  %14 = icmp eq i64 %10, %13, !dbg !4960
  br i1 %14, label %if.then, label %if.done, !dbg !4945

if.then:                                          ; preds = %lookup.next9
  %15 = add i64 %5, 1, !dbg !4961
    #dbg_value(i64 %15, !4939, !DIExpression(), !4961)
  br label %if.done, !dbg !4945

if.done:                                          ; preds = %if.then, %lookup.next9
  %16 = phi i64 [ %5, %lookup.next9 ], [ %15, %if.then ], !dbg !4943
    #dbg_value(i64 %16, !4939, !DIExpression(), !4962)
    #dbg_value(i64 %k, !4938, !DIExpression(), !4963)
  %17 = mul i64 %k, 2, !dbg !4964
  %18 = icmp sgt i64 %16, %17, !dbg !4965
  br i1 %18, label %if.then3, label %if.done4, !dbg !4945

if.then3:                                         ; preds = %if.done
  ret i1 false, !dbg !4966

if.done4:                                         ; preds = %if.done
  %19 = add i64 %6, 1, !dbg !4967
    #dbg_value(i64 %19, !4941, !DIExpression(), !4967)
  br label %for.loop1, !dbg !4945

for.done:                                         ; preds = %for.loop1
  %20 = add i64 %3, 1, !dbg !4968
    #dbg_value(i64 %20, !4940, !DIExpression(), !4968)
  br label %for.loop, !dbg !4945

for.done5:                                        ; preds = %for.loop
  ret i1 true, !dbg !4969

lookup.throw:                                     ; preds = %for.body2
  call void @runtime.lookupPanic(ptr undef), !dbg !4956
  unreachable, !dbg !4956

lookup.throw8:                                    ; preds = %lookup.next
  call void @runtime.lookupPanic(ptr undef), !dbg !4959
  unreachable, !dbg !4959
}
