define i64 @f_gold(ptr nocapture %arr1.data, i64 %arr1.len, i64 %arr1.cap, ptr nocapture %arr2.data, i64 %arr2.len, i64 %arr2.cap, i64 %m, i64 %n, i64 %x) #0 !dbg !4927 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %arr1.data, 0, !dbg !4944
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %arr1.len, 1, !dbg !4944
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %arr1.cap, 2, !dbg !4944
    #dbg_value(ptr %arr1.data, !4936, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4944)
    #dbg_value(i64 %arr1.len, !4936, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4944)
    #dbg_value(i64 %arr1.cap, !4936, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4944)
  %3 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %arr2.data, 0, !dbg !4944
  %4 = insertvalue { ptr, i64, i64 } %3, i64 %arr2.len, 1, !dbg !4944
  %5 = insertvalue { ptr, i64, i64 } %4, i64 %arr2.cap, 2, !dbg !4944
    #dbg_value(ptr %arr2.data, !4937, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4944)
    #dbg_value(i64 %arr2.len, !4937, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4944)
    #dbg_value(i64 %arr2.cap, !4937, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4944)
    #dbg_value(i64 %m, !4938, !DIExpression(), !4944)
    #dbg_value(i64 %n, !4939, !DIExpression(), !4944)
    #dbg_value(i64 %x, !4940, !DIExpression(), !4944)
    #dbg_value(i64 0, !4941, !DIExpression(), !4945)
    #dbg_value(i64 0, !4942, !DIExpression(), !4946)
  br label %for.loop, !dbg !4947

for.loop:                                         ; preds = %for.done, %entry
  %6 = phi i64 [ 0, %entry ], [ %9, %for.done ], !dbg !4945
  %7 = phi i64 [ 0, %entry ], [ %23, %for.done ], !dbg !4946
    #dbg_value(i64 %7, !4942, !DIExpression(), !4948)
    #dbg_value(i64 %m, !4938, !DIExpression(), !4949)
  %8 = icmp slt i64 %7, %m, !dbg !4950
  br i1 %8, label %for.body, label %for.done3, !dbg !4947

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 0, !4943, !DIExpression(), !4951)
  br label %for.loop1, !dbg !4947

for.loop1:                                        ; preds = %if.done, %for.body
  %9 = phi i64 [ %6, %for.body ], [ %21, %if.done ], !dbg !4945
  %10 = phi i64 [ 0, %for.body ], [ %22, %if.done ], !dbg !4951
    #dbg_value(i64 %10, !4943, !DIExpression(), !4952)
    #dbg_value(i64 %n, !4939, !DIExpression(), !4953)
  %11 = icmp slt i64 %10, %n, !dbg !4954
  br i1 %11, label %for.body2, label %for.done, !dbg !4947

for.body2:                                        ; preds = %for.loop1
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4955)
    #dbg_value(i64 %7, !4942, !DIExpression(), !4956)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4957
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4957
  %12 = icmp uge i64 %7, %indexaddr.len, !dbg !4957
  br i1 %12, label %lookup.throw, label %lookup.next, !dbg !4957

lookup.next:                                      ; preds = %for.body2
  %13 = getelementptr inbounds i64, ptr %indexaddr.ptr, i64 %7, !dbg !4957
  %14 = load i64, ptr %13, align 8, !dbg !4957
    #dbg_value({ ptr, i64, i64 } %5, !4937, !DIExpression(), !4958)
    #dbg_value(i64 %10, !4943, !DIExpression(), !4959)
  %indexaddr.ptr4 = extractvalue { ptr, i64, i64 } %5, 0, !dbg !4960
  %indexaddr.len5 = extractvalue { ptr, i64, i64 } %5, 1, !dbg !4960
  %15 = icmp uge i64 %10, %indexaddr.len5, !dbg !4960
  br i1 %15, label %lookup.throw6, label %lookup.next7, !dbg !4960

lookup.next7:                                     ; preds = %lookup.next
  %16 = getelementptr inbounds i64, ptr %indexaddr.ptr4, i64 %10, !dbg !4960
  %17 = load i64, ptr %16, align 8, !dbg !4960
  %18 = add i64 %14, %17, !dbg !4961
    #dbg_value(i64 %x, !4940, !DIExpression(), !4962)
  %19 = icmp eq i64 %18, %x, !dbg !4963
  br i1 %19, label %if.then, label %if.done, !dbg !4947

if.then:                                          ; preds = %lookup.next7
  %20 = add i64 %9, 1, !dbg !4964
    #dbg_value(i64 %20, !4941, !DIExpression(), !4964)
  br label %if.done, !dbg !4947

if.done:                                          ; preds = %if.then, %lookup.next7
  %21 = phi i64 [ %9, %lookup.next7 ], [ %20, %if.then ], !dbg !4945
  %22 = add i64 %10, 1, !dbg !4965
    #dbg_value(i64 %22, !4943, !DIExpression(), !4965)
  br label %for.loop1, !dbg !4947

for.done:                                         ; preds = %for.loop1
  %23 = add i64 %7, 1, !dbg !4966
    #dbg_value(i64 %23, !4942, !DIExpression(), !4966)
  br label %for.loop, !dbg !4947

for.done3:                                        ; preds = %for.loop
    #dbg_value(i64 %6, !4941, !DIExpression(), !4967)
  ret i64 %6, !dbg !4968

lookup.throw:                                     ; preds = %for.body2
  call void @runtime.lookupPanic(ptr undef), !dbg !4957
  unreachable, !dbg !4957

lookup.throw6:                                    ; preds = %lookup.next
  call void @runtime.lookupPanic(ptr undef), !dbg !4960
  unreachable, !dbg !4960
}
