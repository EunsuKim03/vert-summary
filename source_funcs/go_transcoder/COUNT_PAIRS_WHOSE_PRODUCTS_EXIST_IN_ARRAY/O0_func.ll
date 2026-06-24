define i64 @f_gold(ptr nocapture %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n) #0 !dbg !4927 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %arr.data, 0, !dbg !4943
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %arr.len, 1, !dbg !4943
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %arr.cap, 2, !dbg !4943
    #dbg_value(ptr %arr.data, !4936, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4943)
    #dbg_value(i64 %arr.len, !4936, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4943)
    #dbg_value(i64 %arr.cap, !4936, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4943)
    #dbg_value(i64 %n, !4937, !DIExpression(), !4943)
    #dbg_value(i64 0, !4938, !DIExpression(), !4944)
    #dbg_value(i64 0, !4939, !DIExpression(), !4945)
  br label %for.loop, !dbg !4946

for.loop:                                         ; preds = %for.done5, %entry
  %3 = phi i64 [ 0, %entry ], [ %7, %for.done5 ], !dbg !4944
  %4 = phi i64 [ 0, %entry ], [ %27, %for.done5 ], !dbg !4945
    #dbg_value(i64 %4, !4939, !DIExpression(), !4947)
    #dbg_value(i64 %n, !4937, !DIExpression(), !4948)
  %5 = icmp slt i64 %4, %n, !dbg !4949
  br i1 %5, label %for.body, label %for.done6, !dbg !4946

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %4, !4939, !DIExpression(), !4950)
  %6 = add i64 %4, 1, !dbg !4951
    #dbg_value(i64 %6, !4940, !DIExpression(), !4952)
  br label %for.loop1, !dbg !4946

for.loop1:                                        ; preds = %for.done, %for.body
  %7 = phi i64 [ %3, %for.body ], [ %25, %for.done ], !dbg !4944
  %8 = phi i64 [ %6, %for.body ], [ %26, %for.done ], !dbg !4952
    #dbg_value(i64 %8, !4940, !DIExpression(), !4953)
    #dbg_value(i64 %n, !4937, !DIExpression(), !4954)
  %9 = icmp slt i64 %8, %n, !dbg !4955
  br i1 %9, label %for.body2, label %for.done5, !dbg !4946

for.body2:                                        ; preds = %for.loop1
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4956)
    #dbg_value(i64 %4, !4939, !DIExpression(), !4957)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4958
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4958
  %10 = icmp uge i64 %4, %indexaddr.len, !dbg !4958
  br i1 %10, label %lookup.throw, label %lookup.next, !dbg !4958

lookup.next:                                      ; preds = %for.body2
  %11 = getelementptr inbounds i64, ptr %indexaddr.ptr, i64 %4, !dbg !4958
  %12 = load i64, ptr %11, align 8, !dbg !4958
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4959)
    #dbg_value(i64 %8, !4940, !DIExpression(), !4960)
  %indexaddr.ptr7 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4961
  %indexaddr.len8 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4961
  %13 = icmp uge i64 %8, %indexaddr.len8, !dbg !4961
  br i1 %13, label %lookup.throw9, label %lookup.next10, !dbg !4961

lookup.next10:                                    ; preds = %lookup.next
  %14 = getelementptr inbounds i64, ptr %indexaddr.ptr7, i64 %8, !dbg !4961
  %15 = load i64, ptr %14, align 8, !dbg !4961
  %16 = mul i64 %12, %15, !dbg !4962
    #dbg_value(i64 %16, !4941, !DIExpression(), !4963)
    #dbg_value(i64 0, !4942, !DIExpression(), !4964)
  br label %for.loop3, !dbg !4946

for.loop3:                                        ; preds = %if.done, %lookup.next10
  %17 = phi i64 [ 0, %lookup.next10 ], [ %24, %if.done ], !dbg !4964
    #dbg_value(i64 %17, !4942, !DIExpression(), !4965)
    #dbg_value(i64 %n, !4937, !DIExpression(), !4966)
  %18 = icmp slt i64 %17, %n, !dbg !4967
  br i1 %18, label %for.body4, label %for.done, !dbg !4946

for.body4:                                        ; preds = %for.loop3
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4968)
    #dbg_value(i64 %17, !4942, !DIExpression(), !4969)
  %indexaddr.ptr11 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4970
  %indexaddr.len12 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4970
  %19 = icmp uge i64 %17, %indexaddr.len12, !dbg !4970
  br i1 %19, label %lookup.throw13, label %lookup.next14, !dbg !4970

lookup.next14:                                    ; preds = %for.body4
  %20 = getelementptr inbounds i64, ptr %indexaddr.ptr11, i64 %17, !dbg !4970
  %21 = load i64, ptr %20, align 8, !dbg !4970
    #dbg_value(i64 %16, !4941, !DIExpression(), !4971)
  %22 = icmp eq i64 %21, %16, !dbg !4972
  br i1 %22, label %if.then, label %if.done, !dbg !4946

if.then:                                          ; preds = %lookup.next14
  %23 = add i64 %7, 1, !dbg !4973
    #dbg_value(i64 %23, !4938, !DIExpression(), !4973)
  br label %for.done, !dbg !4946

if.done:                                          ; preds = %lookup.next14
  %24 = add i64 %17, 1, !dbg !4974
    #dbg_value(i64 %24, !4942, !DIExpression(), !4974)
  br label %for.loop3, !dbg !4946

for.done:                                         ; preds = %if.then, %for.loop3
  %25 = phi i64 [ %7, %for.loop3 ], [ %23, %if.then ], !dbg !4944
  %26 = add i64 %8, 1, !dbg !4975
    #dbg_value(i64 %26, !4940, !DIExpression(), !4975)
  br label %for.loop1, !dbg !4946

for.done5:                                        ; preds = %for.loop1
  %27 = add i64 %4, 1, !dbg !4976
    #dbg_value(i64 %27, !4939, !DIExpression(), !4976)
  br label %for.loop, !dbg !4946

for.done6:                                        ; preds = %for.loop
    #dbg_value(i64 %3, !4938, !DIExpression(), !4977)
  ret i64 %3, !dbg !4978

lookup.throw:                                     ; preds = %for.body2
  call void @runtime.lookupPanic(ptr undef), !dbg !4958
  unreachable, !dbg !4958

lookup.throw9:                                    ; preds = %lookup.next
  call void @runtime.lookupPanic(ptr undef), !dbg !4961
  unreachable, !dbg !4961

lookup.throw13:                                   ; preds = %for.body4
  call void @runtime.lookupPanic(ptr undef), !dbg !4970
  unreachable, !dbg !4970
}
