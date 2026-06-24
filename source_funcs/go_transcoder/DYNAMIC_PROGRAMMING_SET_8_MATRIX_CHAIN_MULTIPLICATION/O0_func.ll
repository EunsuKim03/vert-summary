define i64 @f_gold(ptr nocapture %p.data, i64 %p.len, i64 %p.cap, i64 %i, i64 %j) #1 !dbg !4927 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %p.data, 0, !dbg !4942
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %p.len, 1, !dbg !4942
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %p.cap, 2, !dbg !4942
    #dbg_value(ptr %p.data, !4936, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4942)
    #dbg_value(i64 %p.len, !4936, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4942)
    #dbg_value(i64 %p.cap, !4936, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4942)
    #dbg_value(i64 %i, !4937, !DIExpression(), !4942)
    #dbg_value(i64 %j, !4938, !DIExpression(), !4942)
    #dbg_value(i64 %i, !4937, !DIExpression(), !4943)
    #dbg_value(i64 %j, !4938, !DIExpression(), !4944)
  %3 = icmp eq i64 %i, %j, !dbg !4945
  br i1 %3, label %if.then, label %if.done, !dbg !4946

if.then:                                          ; preds = %entry
  ret i64 0, !dbg !4947

if.done:                                          ; preds = %entry
    #dbg_value(i64 0, !4939, !DIExpression(), !4948)
    #dbg_value(i64 9223372036854775807, !4940, !DIExpression(), !4949)
    #dbg_value(i64 0, !4941, !DIExpression(), !4950)
    #dbg_value(i64 %i, !4937, !DIExpression(), !4951)
    #dbg_value(i64 %i, !4939, !DIExpression(), !4952)
  br label %for.loop, !dbg !4946

for.loop:                                         ; preds = %if.done2, %if.done
  %4 = phi i64 [ %i, %if.done ], [ %32, %if.done2 ], !dbg !4948
  %5 = phi i64 [ 9223372036854775807, %if.done ], [ %31, %if.done2 ], !dbg !4949
    #dbg_value(i64 %4, !4939, !DIExpression(), !4953)
    #dbg_value(i64 %j, !4938, !DIExpression(), !4954)
  %6 = icmp slt i64 %4, %j, !dbg !4955
  br i1 %6, label %for.body, label %for.done, !dbg !4946

for.body:                                         ; preds = %for.loop
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4956)
    #dbg_value(i64 %i, !4937, !DIExpression(), !4957)
    #dbg_value(i64 %4, !4939, !DIExpression(), !4958)
  %7 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4959
  %8 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4959
  %9 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !4959
  %10 = call i64 @f_gold(ptr %7, i64 %8, i64 %9, i64 %i, i64 %4), !dbg !4959
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4960)
    #dbg_value(i64 %4, !4939, !DIExpression(), !4961)
  %11 = add i64 %4, 1, !dbg !4962
    #dbg_value(i64 %j, !4938, !DIExpression(), !4963)
  %12 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4964
  %13 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4964
  %14 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !4964
  %15 = call i64 @f_gold(ptr %12, i64 %13, i64 %14, i64 %11, i64 %j), !dbg !4964
  %16 = add i64 %10, %15, !dbg !4965
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4966)
    #dbg_value(i64 %i, !4937, !DIExpression(), !4967)
  %17 = sub i64 %i, 1, !dbg !4968
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4969
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4969
  %18 = icmp uge i64 %17, %indexaddr.len, !dbg !4969
  br i1 %18, label %lookup.throw, label %lookup.next, !dbg !4969

lookup.next:                                      ; preds = %for.body
  %19 = getelementptr inbounds i64, ptr %indexaddr.ptr, i64 %17, !dbg !4969
  %20 = load i64, ptr %19, align 8, !dbg !4969
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4970)
    #dbg_value(i64 %4, !4939, !DIExpression(), !4971)
  %indexaddr.ptr3 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4972
  %indexaddr.len4 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4972
  %21 = icmp uge i64 %4, %indexaddr.len4, !dbg !4972
  br i1 %21, label %lookup.throw5, label %lookup.next6, !dbg !4972

lookup.next6:                                     ; preds = %lookup.next
  %22 = getelementptr inbounds i64, ptr %indexaddr.ptr3, i64 %4, !dbg !4972
  %23 = load i64, ptr %22, align 8, !dbg !4972
  %24 = mul i64 %20, %23, !dbg !4973
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4974)
    #dbg_value(i64 %j, !4938, !DIExpression(), !4975)
  %indexaddr.ptr7 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4976
  %indexaddr.len8 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4976
  %25 = icmp uge i64 %j, %indexaddr.len8, !dbg !4976
  br i1 %25, label %lookup.throw9, label %lookup.next10, !dbg !4976

lookup.next10:                                    ; preds = %lookup.next6
  %26 = getelementptr inbounds i64, ptr %indexaddr.ptr7, i64 %j, !dbg !4976
  %27 = load i64, ptr %26, align 8, !dbg !4976
  %28 = mul i64 %24, %27, !dbg !4977
  %29 = add i64 %16, %28, !dbg !4978
    #dbg_value(i64 %29, !4941, !DIExpression(), !4979)
    #dbg_value(i64 %29, !4941, !DIExpression(), !4980)
    #dbg_value(i64 %5, !4940, !DIExpression(), !4981)
  %30 = icmp slt i64 %29, %5, !dbg !4982
  br i1 %30, label %if.then1, label %if.done2, !dbg !4946

if.then1:                                         ; preds = %lookup.next10
    #dbg_value(i64 %29, !4941, !DIExpression(), !4983)
    #dbg_value(i64 %29, !4940, !DIExpression(), !4984)
  br label %if.done2, !dbg !4946

if.done2:                                         ; preds = %if.then1, %lookup.next10
  %31 = phi i64 [ %5, %lookup.next10 ], [ %29, %if.then1 ], !dbg !4949
  %32 = add i64 %4, 1, !dbg !4985
    #dbg_value(i64 %32, !4939, !DIExpression(), !4985)
  br label %for.loop, !dbg !4946

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %5, !4940, !DIExpression(), !4986)
  ret i64 %5, !dbg !4987

lookup.throw:                                     ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !4969
  unreachable, !dbg !4969

lookup.throw5:                                    ; preds = %lookup.next
  call void @runtime.lookupPanic(ptr undef), !dbg !4972
  unreachable, !dbg !4972

lookup.throw9:                                    ; preds = %lookup.next6
  call void @runtime.lookupPanic(ptr undef), !dbg !4976
  unreachable, !dbg !4976
}
