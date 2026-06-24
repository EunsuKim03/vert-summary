define i64 @f_gold(ptr nocapture %a.data, i64 %a.len, i64 %a.cap, i64 %n) #0 !dbg !4927 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %a.data, 0, !dbg !4942
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %a.len, 1, !dbg !4942
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %a.cap, 2, !dbg !4942
    #dbg_value(ptr %a.data, !4936, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4942)
    #dbg_value(i64 %a.len, !4936, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4942)
    #dbg_value(i64 %a.cap, !4936, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4942)
    #dbg_value(i64 %n, !4937, !DIExpression(), !4942)
    #dbg_value(i64 0, !4938, !DIExpression(), !4943)
    #dbg_value(i64 0, !4939, !DIExpression(), !4944)
    #dbg_value(i64 0, !4940, !DIExpression(), !4945)
  br label %for.loop, !dbg !4946

for.loop:                                         ; preds = %if.done2, %entry
  %3 = phi i64 [ 0, %entry ], [ %12, %if.done2 ], !dbg !4943
  %4 = phi i64 [ 0, %entry ], [ %18, %if.done2 ], !dbg !4944
  %5 = phi i64 [ 0, %entry ], [ %19, %if.done2 ], !dbg !4945
    #dbg_value(i64 %5, !4940, !DIExpression(), !4947)
    #dbg_value(i64 %n, !4937, !DIExpression(), !4948)
  %6 = icmp slt i64 %5, %n, !dbg !4949
  br i1 %6, label %for.body, label %for.done, !dbg !4946

for.body:                                         ; preds = %for.loop
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4950)
    #dbg_value(i64 %5, !4940, !DIExpression(), !4951)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4952
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4952
  %7 = icmp uge i64 %5, %indexaddr.len, !dbg !4952
  br i1 %7, label %lookup.throw, label %lookup.next, !dbg !4952

lookup.next:                                      ; preds = %for.body
  %8 = getelementptr inbounds i64, ptr %indexaddr.ptr, i64 %5, !dbg !4952
  %9 = load i64, ptr %8, align 8, !dbg !4952
  %10 = icmp eq i64 %9, 0, !dbg !4953
  br i1 %10, label %if.then, label %if.done, !dbg !4946

if.then:                                          ; preds = %lookup.next
  %11 = add i64 %3, 1, !dbg !4954
    #dbg_value(i64 %11, !4938, !DIExpression(), !4954)
  br label %if.done, !dbg !4946

if.done:                                          ; preds = %if.then, %lookup.next
  %12 = phi i64 [ %3, %lookup.next ], [ %11, %if.then ], !dbg !4943
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4955)
    #dbg_value(i64 %5, !4940, !DIExpression(), !4956)
  %indexaddr.ptr3 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4957
  %indexaddr.len4 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4957
  %13 = icmp uge i64 %5, %indexaddr.len4, !dbg !4957
  br i1 %13, label %lookup.throw5, label %lookup.next6, !dbg !4957

lookup.next6:                                     ; preds = %if.done
  %14 = getelementptr inbounds i64, ptr %indexaddr.ptr3, i64 %5, !dbg !4957
  %15 = load i64, ptr %14, align 8, !dbg !4957
  %16 = icmp eq i64 %15, 2, !dbg !4958
  br i1 %16, label %if.then1, label %if.done2, !dbg !4946

if.then1:                                         ; preds = %lookup.next6
  %17 = add i64 %4, 1, !dbg !4959
    #dbg_value(i64 %17, !4939, !DIExpression(), !4959)
  br label %if.done2, !dbg !4946

if.done2:                                         ; preds = %if.then1, %lookup.next6
  %18 = phi i64 [ %4, %lookup.next6 ], [ %17, %if.then1 ], !dbg !4944
  %19 = add i64 %5, 1, !dbg !4960
    #dbg_value(i64 %19, !4940, !DIExpression(), !4960)
  br label %for.loop, !dbg !4946

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %3, !4938, !DIExpression(), !4961)
    #dbg_value(i64 %3, !4938, !DIExpression(), !4962)
  %20 = sub i64 %3, 1, !dbg !4963
  %21 = mul i64 %3, %20, !dbg !4964
  %22 = icmp eq i64 %21, -9223372036854775808, !dbg !4965
  %23 = and i1 false, %22, !dbg !4965
  %24 = select i1 %23, i64 1, i64 2, !dbg !4965
  %25 = sdiv i64 %21, %24, !dbg !4965
    #dbg_value(i64 %4, !4939, !DIExpression(), !4966)
    #dbg_value(i64 %4, !4939, !DIExpression(), !4967)
  %26 = sub i64 %4, 1, !dbg !4968
  %27 = mul i64 %4, %26, !dbg !4969
  %28 = icmp eq i64 %27, -9223372036854775808, !dbg !4970
  %29 = and i1 false, %28, !dbg !4970
  %30 = select i1 %29, i64 1, i64 2, !dbg !4970
  %31 = sdiv i64 %27, %30, !dbg !4970
  %32 = add i64 %25, %31, !dbg !4971
    #dbg_value(i64 %32, !4941, !DIExpression(), !4972)
    #dbg_value(i64 %32, !4941, !DIExpression(), !4973)
  ret i64 %32, !dbg !4974

lookup.throw:                                     ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !4952
  unreachable, !dbg !4952

lookup.throw5:                                    ; preds = %if.done
  call void @runtime.lookupPanic(ptr undef), !dbg !4957
  unreachable, !dbg !4957
}
