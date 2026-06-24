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
    #dbg_value(i64 %n, !4939, !DIExpression(), !4947)
  %6 = sub i64 %n, 1, !dbg !4948
    #dbg_value(i64 %6, !4943, !DIExpression(), !4949)
  br label %for.loop, !dbg !4950

for.loop:                                         ; preds = %if.else2, %if.then1, %if.then, %entry
  %7 = phi i64 [ 0, %entry ], [ %22, %if.then ], [ %7, %if.then1 ], [ %7, %if.else2 ], !dbg !4945
  %8 = phi i64 [ 0, %entry ], [ %20, %if.then ], [ %31, %if.then1 ], [ %8, %if.else2 ], !dbg !4946
  %9 = phi i64 [ %6, %entry ], [ %21, %if.then ], [ %9, %if.then1 ], [ %32, %if.else2 ], !dbg !4949
    #dbg_value(i64 %8, !4942, !DIExpression(), !4951)
    #dbg_value(i64 %m, !4938, !DIExpression(), !4952)
  %10 = icmp slt i64 %8, %m, !dbg !4953
  br i1 %10, label %cond.true, label %for.done, !dbg !4950

cond.true:                                        ; preds = %for.loop
    #dbg_value(i64 %9, !4943, !DIExpression(), !4954)
  %11 = icmp sge i64 %9, 0, !dbg !4955
  br i1 %11, label %for.body, label %for.done, !dbg !4950

for.body:                                         ; preds = %cond.true
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4956)
    #dbg_value(i64 %8, !4942, !DIExpression(), !4957)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4958
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4958
  %12 = icmp uge i64 %8, %indexaddr.len, !dbg !4958
  br i1 %12, label %lookup.throw, label %lookup.next, !dbg !4958

lookup.next:                                      ; preds = %for.body
  %13 = getelementptr inbounds i64, ptr %indexaddr.ptr, i64 %8, !dbg !4958
  %14 = load i64, ptr %13, align 8, !dbg !4958
    #dbg_value({ ptr, i64, i64 } %5, !4937, !DIExpression(), !4959)
    #dbg_value(i64 %9, !4943, !DIExpression(), !4960)
  %indexaddr.ptr3 = extractvalue { ptr, i64, i64 } %5, 0, !dbg !4961
  %indexaddr.len4 = extractvalue { ptr, i64, i64 } %5, 1, !dbg !4961
  %15 = icmp uge i64 %9, %indexaddr.len4, !dbg !4961
  br i1 %15, label %lookup.throw5, label %lookup.next6, !dbg !4961

lookup.next6:                                     ; preds = %lookup.next
  %16 = getelementptr inbounds i64, ptr %indexaddr.ptr3, i64 %9, !dbg !4961
  %17 = load i64, ptr %16, align 8, !dbg !4961
  %18 = add i64 %14, %17, !dbg !4962
    #dbg_value(i64 %x, !4940, !DIExpression(), !4963)
  %19 = icmp eq i64 %18, %x, !dbg !4964
  br i1 %19, label %if.then, label %if.else, !dbg !4950

if.then:                                          ; preds = %lookup.next6
  %20 = add i64 %8, 1, !dbg !4965
    #dbg_value(i64 %20, !4942, !DIExpression(), !4965)
  %21 = sub i64 %9, 1, !dbg !4966
    #dbg_value(i64 %21, !4943, !DIExpression(), !4966)
  %22 = add i64 %7, 1, !dbg !4967
    #dbg_value(i64 %22, !4941, !DIExpression(), !4967)
  br label %for.loop, !dbg !4950

if.else:                                          ; preds = %lookup.next6
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4968)
    #dbg_value(i64 %8, !4942, !DIExpression(), !4969)
  %indexaddr.ptr7 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4970
  %indexaddr.len8 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4970
  %23 = icmp uge i64 %8, %indexaddr.len8, !dbg !4970
  br i1 %23, label %lookup.throw9, label %lookup.next10, !dbg !4970

lookup.next10:                                    ; preds = %if.else
  %24 = getelementptr inbounds i64, ptr %indexaddr.ptr7, i64 %8, !dbg !4970
  %25 = load i64, ptr %24, align 8, !dbg !4970
    #dbg_value({ ptr, i64, i64 } %5, !4937, !DIExpression(), !4971)
    #dbg_value(i64 %9, !4943, !DIExpression(), !4972)
  %indexaddr.ptr11 = extractvalue { ptr, i64, i64 } %5, 0, !dbg !4973
  %indexaddr.len12 = extractvalue { ptr, i64, i64 } %5, 1, !dbg !4973
  %26 = icmp uge i64 %9, %indexaddr.len12, !dbg !4973
  br i1 %26, label %lookup.throw13, label %lookup.next14, !dbg !4973

lookup.next14:                                    ; preds = %lookup.next10
  %27 = getelementptr inbounds i64, ptr %indexaddr.ptr11, i64 %9, !dbg !4973
  %28 = load i64, ptr %27, align 8, !dbg !4973
  %29 = add i64 %25, %28, !dbg !4974
    #dbg_value(i64 %x, !4940, !DIExpression(), !4975)
  %30 = icmp slt i64 %29, %x, !dbg !4976
  br i1 %30, label %if.then1, label %if.else2, !dbg !4950

if.then1:                                         ; preds = %lookup.next14
  %31 = add i64 %8, 1, !dbg !4977
    #dbg_value(i64 %31, !4942, !DIExpression(), !4977)
  br label %for.loop, !dbg !4950

if.else2:                                         ; preds = %lookup.next14
  %32 = sub i64 %9, 1, !dbg !4978
    #dbg_value(i64 %32, !4943, !DIExpression(), !4978)
  br label %for.loop, !dbg !4950

for.done:                                         ; preds = %cond.true, %for.loop
    #dbg_value(i64 %7, !4941, !DIExpression(), !4979)
  ret i64 %7, !dbg !4980

lookup.throw:                                     ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !4958
  unreachable, !dbg !4958

lookup.throw5:                                    ; preds = %lookup.next
  call void @runtime.lookupPanic(ptr undef), !dbg !4961
  unreachable, !dbg !4961

lookup.throw9:                                    ; preds = %if.else
  call void @runtime.lookupPanic(ptr undef), !dbg !4970
  unreachable, !dbg !4970

lookup.throw13:                                   ; preds = %lookup.next10
  call void @runtime.lookupPanic(ptr undef), !dbg !4973
  unreachable, !dbg !4973
}
