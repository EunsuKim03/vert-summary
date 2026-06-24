define i1 @f_gold(ptr nocapture %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n) #0 !dbg !4927 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %arr.data, 0, !dbg !4939
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %arr.len, 1, !dbg !4939
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %arr.cap, 2, !dbg !4939
    #dbg_value(ptr %arr.data, !4936, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4939)
    #dbg_value(i64 %arr.len, !4936, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4939)
    #dbg_value(i64 %arr.cap, !4936, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4939)
    #dbg_value(i64 %n, !4937, !DIExpression(), !4939)
    #dbg_value(i64 0, !4938, !DIExpression(), !4940)
  br label %for.loop, !dbg !4941

for.loop:                                         ; preds = %if.done2, %entry
  %3 = phi i64 [ 0, %entry ], [ %31, %if.done2 ], !dbg !4940
    #dbg_value(i64 %3, !4938, !DIExpression(), !4942)
    #dbg_value(i64 %n, !4937, !DIExpression(), !4943)
  %4 = sub i64 %n, 2, !dbg !4944
  %5 = icmp eq i64 %4, -9223372036854775808, !dbg !4945
  %6 = and i1 false, %5, !dbg !4945
  %7 = select i1 %6, i64 1, i64 2, !dbg !4945
  %8 = sdiv i64 %4, %7, !dbg !4945
  %9 = icmp sle i64 %3, %8, !dbg !4946
  br i1 %9, label %for.body, label %for.done, !dbg !4941

for.body:                                         ; preds = %for.loop
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4947)
    #dbg_value(i64 %3, !4938, !DIExpression(), !4948)
  %10 = mul i64 %3, 2, !dbg !4949
  %11 = add i64 %10, 1, !dbg !4950
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4951
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4951
  %12 = icmp uge i64 %11, %indexaddr.len, !dbg !4951
  br i1 %12, label %lookup.throw, label %lookup.next, !dbg !4951

lookup.next:                                      ; preds = %for.body
  %13 = getelementptr inbounds i64, ptr %indexaddr.ptr, i64 %11, !dbg !4951
  %14 = load i64, ptr %13, align 8, !dbg !4951
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4952)
    #dbg_value(i64 %3, !4938, !DIExpression(), !4953)
  %indexaddr.ptr3 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4954
  %indexaddr.len4 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4954
  %15 = icmp uge i64 %3, %indexaddr.len4, !dbg !4954
  br i1 %15, label %lookup.throw5, label %lookup.next6, !dbg !4954

lookup.next6:                                     ; preds = %lookup.next
  %16 = getelementptr inbounds i64, ptr %indexaddr.ptr3, i64 %3, !dbg !4954
  %17 = load i64, ptr %16, align 8, !dbg !4954
  %18 = icmp sgt i64 %14, %17, !dbg !4955
  br i1 %18, label %if.then, label %if.done, !dbg !4941

if.then:                                          ; preds = %lookup.next6
  ret i1 false, !dbg !4956

if.done:                                          ; preds = %lookup.next6
    #dbg_value(i64 %3, !4938, !DIExpression(), !4957)
  %19 = mul i64 %3, 2, !dbg !4958
  %20 = add i64 %19, 2, !dbg !4959
    #dbg_value(i64 %n, !4937, !DIExpression(), !4960)
  %21 = icmp slt i64 %20, %n, !dbg !4961
  br i1 %21, label %cond.true, label %if.done2, !dbg !4941

cond.true:                                        ; preds = %if.done
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4962)
    #dbg_value(i64 %3, !4938, !DIExpression(), !4963)
  %22 = mul i64 %3, 2, !dbg !4964
  %23 = add i64 %22, 2, !dbg !4965
  %indexaddr.ptr7 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4966
  %indexaddr.len8 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4966
  %24 = icmp uge i64 %23, %indexaddr.len8, !dbg !4966
  br i1 %24, label %lookup.throw9, label %lookup.next10, !dbg !4966

lookup.next10:                                    ; preds = %cond.true
  %25 = getelementptr inbounds i64, ptr %indexaddr.ptr7, i64 %23, !dbg !4966
  %26 = load i64, ptr %25, align 8, !dbg !4966
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4967)
    #dbg_value(i64 %3, !4938, !DIExpression(), !4968)
  %indexaddr.ptr11 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4969
  %indexaddr.len12 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4969
  %27 = icmp uge i64 %3, %indexaddr.len12, !dbg !4969
  br i1 %27, label %lookup.throw13, label %lookup.next14, !dbg !4969

lookup.next14:                                    ; preds = %lookup.next10
  %28 = getelementptr inbounds i64, ptr %indexaddr.ptr11, i64 %3, !dbg !4969
  %29 = load i64, ptr %28, align 8, !dbg !4969
  %30 = icmp sgt i64 %26, %29, !dbg !4970
  br i1 %30, label %if.then1, label %if.done2, !dbg !4941

if.then1:                                         ; preds = %lookup.next14
  ret i1 false, !dbg !4971

if.done2:                                         ; preds = %lookup.next14, %if.done
  %31 = add i64 %3, 1, !dbg !4972
    #dbg_value(i64 %31, !4938, !DIExpression(), !4972)
  br label %for.loop, !dbg !4941

for.done:                                         ; preds = %for.loop
  ret i1 true, !dbg !4973

lookup.throw:                                     ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !4951
  unreachable, !dbg !4951

lookup.throw5:                                    ; preds = %lookup.next
  call void @runtime.lookupPanic(ptr undef), !dbg !4954
  unreachable, !dbg !4954

lookup.throw9:                                    ; preds = %cond.true
  call void @runtime.lookupPanic(ptr undef), !dbg !4966
  unreachable, !dbg !4966

lookup.throw13:                                   ; preds = %lookup.next10
  call void @runtime.lookupPanic(ptr undef), !dbg !4969
  unreachable, !dbg !4969
}
