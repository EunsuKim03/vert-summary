define i1 @f_gold(ptr nocapture %str.data, i64 %str.len, i64 %str.cap) #0 !dbg !4927 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %str.data, 0, !dbg !4934
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %str.len, 1, !dbg !4934
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %str.cap, 2, !dbg !4934
    #dbg_value(ptr %str.data, !4930, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4934)
    #dbg_value(i64 %str.len, !4930, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4934)
    #dbg_value(i64 %str.cap, !4930, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4934)
    #dbg_value({ ptr, i64, i64 } %2, !4930, !DIExpression(), !4935)
  %len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4936
    #dbg_value(i64 %len, !4931, !DIExpression(), !4937)
    #dbg_value(i64 0, !4932, !DIExpression(), !4938)
    #dbg_value(i64 0, !4932, !DIExpression(), !4939)
  br label %for.loop, !dbg !4940

for.loop:                                         ; preds = %if.done, %entry
  %3 = phi i64 [ 0, %entry ], [ %9, %if.done ], !dbg !4938
    #dbg_value(i64 %3, !4932, !DIExpression(), !4941)
    #dbg_value(i64 %len, !4931, !DIExpression(), !4942)
  %4 = icmp slt i64 %3, %len, !dbg !4943
  br i1 %4, label %for.body, label %for.done, !dbg !4940

for.body:                                         ; preds = %for.loop
    #dbg_value({ ptr, i64, i64 } %2, !4930, !DIExpression(), !4944)
    #dbg_value(i64 %3, !4932, !DIExpression(), !4945)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4946
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4946
  %5 = icmp uge i64 %3, %indexaddr.len, !dbg !4946
  br i1 %5, label %lookup.throw, label %lookup.next, !dbg !4946

lookup.next:                                      ; preds = %for.body
  %6 = getelementptr inbounds i8, ptr %indexaddr.ptr, i64 %3, !dbg !4946
  %7 = load i8, ptr %6, align 1, !dbg !4946
  %8 = icmp ne i8 %7, 97, !dbg !4947
  br i1 %8, label %for.done, label %if.done, !dbg !4940

if.done:                                          ; preds = %lookup.next
  %9 = add i64 %3, 1, !dbg !4948
    #dbg_value(i64 %9, !4932, !DIExpression(), !4948)
  br label %for.loop, !dbg !4940

for.done:                                         ; preds = %lookup.next, %for.loop
    #dbg_value(i64 %3, !4932, !DIExpression(), !4949)
  %10 = mul i64 %3, 2, !dbg !4950
    #dbg_value(i64 %len, !4931, !DIExpression(), !4951)
  %11 = icmp ne i64 %10, %len, !dbg !4952
  br i1 %11, label %if.then, label %if.done1, !dbg !4940

if.then:                                          ; preds = %for.done
  ret i1 false, !dbg !4953

if.done1:                                         ; preds = %for.done
    #dbg_value(i64 0, !4933, !DIExpression(), !4954)
    #dbg_value(i64 %3, !4932, !DIExpression(), !4955)
    #dbg_value(i64 %3, !4933, !DIExpression(), !4956)
  br label %for.loop2, !dbg !4940

for.loop2:                                        ; preds = %if.done5, %if.done1
  %12 = phi i64 [ %3, %if.done1 ], [ %18, %if.done5 ], !dbg !4954
    #dbg_value(i64 %12, !4933, !DIExpression(), !4957)
    #dbg_value(i64 %len, !4931, !DIExpression(), !4958)
  %13 = icmp slt i64 %12, %len, !dbg !4959
  br i1 %13, label %for.body3, label %for.done6, !dbg !4940

for.body3:                                        ; preds = %for.loop2
    #dbg_value({ ptr, i64, i64 } %2, !4930, !DIExpression(), !4960)
    #dbg_value(i64 %12, !4933, !DIExpression(), !4961)
  %indexaddr.ptr7 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4962
  %indexaddr.len8 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4962
  %14 = icmp uge i64 %12, %indexaddr.len8, !dbg !4962
  br i1 %14, label %lookup.throw9, label %lookup.next10, !dbg !4962

lookup.next10:                                    ; preds = %for.body3
  %15 = getelementptr inbounds i8, ptr %indexaddr.ptr7, i64 %12, !dbg !4962
  %16 = load i8, ptr %15, align 1, !dbg !4962
  %17 = icmp ne i8 %16, 98, !dbg !4963
  br i1 %17, label %if.then4, label %if.done5, !dbg !4940

if.then4:                                         ; preds = %lookup.next10
  ret i1 false, !dbg !4964

if.done5:                                         ; preds = %lookup.next10
  %18 = add i64 %12, 1, !dbg !4965
    #dbg_value(i64 %18, !4933, !DIExpression(), !4965)
  br label %for.loop2, !dbg !4940

for.done6:                                        ; preds = %for.loop2
  ret i1 true, !dbg !4966

lookup.throw:                                     ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !4946
  unreachable, !dbg !4946

lookup.throw9:                                    ; preds = %for.body3
  call void @runtime.lookupPanic(ptr undef), !dbg !4962
  unreachable, !dbg !4962
}
