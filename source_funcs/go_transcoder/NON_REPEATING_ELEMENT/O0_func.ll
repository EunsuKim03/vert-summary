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
  br label %for.loop, !dbg !4942

for.loop:                                         ; preds = %if.done3, %entry
  %3 = phi i64 [ 0, %entry ], [ %20, %if.done3 ], !dbg !4941
    #dbg_value(i64 %3, !4938, !DIExpression(), !4943)
    #dbg_value(i64 %n, !4937, !DIExpression(), !4944)
  %4 = icmp slt i64 %3, %n, !dbg !4945
  br i1 %4, label %for.body, label %for.done4, !dbg !4942

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 0, !4939, !DIExpression(), !4946)
    #dbg_value(i64 0, !4939, !DIExpression(), !4947)
  br label %for.loop1, !dbg !4942

for.loop1:                                        ; preds = %if.done, %for.body
  %5 = phi i64 [ 0, %for.body ], [ %15, %if.done ], !dbg !4946
    #dbg_value(i64 %5, !4939, !DIExpression(), !4948)
    #dbg_value(i64 %n, !4937, !DIExpression(), !4949)
  %6 = icmp slt i64 %5, %n, !dbg !4950
  br i1 %6, label %for.body2, label %for.done, !dbg !4942

for.body2:                                        ; preds = %for.loop1
    #dbg_value(i64 %3, !4938, !DIExpression(), !4951)
    #dbg_value(i64 %5, !4939, !DIExpression(), !4952)
  %7 = icmp ne i64 %3, %5, !dbg !4953
  br i1 %7, label %cond.true, label %if.done, !dbg !4942

cond.true:                                        ; preds = %for.body2
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4954)
    #dbg_value(i64 %3, !4938, !DIExpression(), !4955)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4956
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4956
  %8 = icmp uge i64 %3, %indexaddr.len, !dbg !4956
  br i1 %8, label %lookup.throw, label %lookup.next, !dbg !4956

lookup.next:                                      ; preds = %cond.true
  %9 = getelementptr inbounds i64, ptr %indexaddr.ptr, i64 %3, !dbg !4956
  %10 = load i64, ptr %9, align 8, !dbg !4956
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4957)
    #dbg_value(i64 %5, !4939, !DIExpression(), !4958)
  %indexaddr.ptr5 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4959
  %indexaddr.len6 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4959
  %11 = icmp uge i64 %5, %indexaddr.len6, !dbg !4959
  br i1 %11, label %lookup.throw7, label %lookup.next8, !dbg !4959

lookup.next8:                                     ; preds = %lookup.next
  %12 = getelementptr inbounds i64, ptr %indexaddr.ptr5, i64 %5, !dbg !4959
  %13 = load i64, ptr %12, align 8, !dbg !4959
  %14 = icmp eq i64 %10, %13, !dbg !4960
  br i1 %14, label %for.done, label %if.done, !dbg !4942

if.done:                                          ; preds = %lookup.next8, %for.body2
  %15 = add i64 %5, 1, !dbg !4961
    #dbg_value(i64 %15, !4939, !DIExpression(), !4961)
  br label %for.loop1, !dbg !4942

for.done:                                         ; preds = %lookup.next8, %for.loop1
    #dbg_value(i64 %5, !4939, !DIExpression(), !4962)
    #dbg_value(i64 %n, !4937, !DIExpression(), !4963)
  %16 = icmp eq i64 %5, %n, !dbg !4964
  br i1 %16, label %if.then, label %if.done3, !dbg !4942

if.then:                                          ; preds = %for.done
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4965)
    #dbg_value(i64 %3, !4938, !DIExpression(), !4966)
  %indexaddr.ptr9 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4967
  %indexaddr.len10 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4967
  %17 = icmp uge i64 %3, %indexaddr.len10, !dbg !4967
  br i1 %17, label %lookup.throw11, label %lookup.next12, !dbg !4967

lookup.next12:                                    ; preds = %if.then
  %18 = getelementptr inbounds i64, ptr %indexaddr.ptr9, i64 %3, !dbg !4967
  %19 = load i64, ptr %18, align 8, !dbg !4967
  ret i64 %19, !dbg !4968

if.done3:                                         ; preds = %for.done
  %20 = add i64 %3, 1, !dbg !4969
    #dbg_value(i64 %20, !4938, !DIExpression(), !4969)
  br label %for.loop, !dbg !4942

for.done4:                                        ; preds = %for.loop
  ret i64 -1, !dbg !4970

lookup.throw:                                     ; preds = %cond.true
  call void @runtime.lookupPanic(ptr undef), !dbg !4956
  unreachable, !dbg !4956

lookup.throw7:                                    ; preds = %lookup.next
  call void @runtime.lookupPanic(ptr undef), !dbg !4959
  unreachable, !dbg !4959

lookup.throw11:                                   ; preds = %if.then
  call void @runtime.lookupPanic(ptr undef), !dbg !4967
  unreachable, !dbg !4967
}
