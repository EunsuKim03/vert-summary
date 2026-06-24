define i64 @f_gold(ptr nocapture %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n, i64 %k) #0 !dbg !4927 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %arr.data, 0, !dbg !4945
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %arr.len, 1, !dbg !4945
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %arr.cap, 2, !dbg !4945
    #dbg_value(ptr %arr.data, !4936, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4945)
    #dbg_value(i64 %arr.len, !4936, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4945)
    #dbg_value(i64 %arr.cap, !4936, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4945)
    #dbg_value(i64 %n, !4937, !DIExpression(), !4945)
    #dbg_value(i64 %k, !4938, !DIExpression(), !4945)
    #dbg_value(i64 %k, !4938, !DIExpression(), !4946)
    #dbg_value(i64 %n, !4937, !DIExpression(), !4947)
  %3 = icmp sgt i64 %k, %n, !dbg !4948
  br i1 %3, label %if.then, label %if.done, !dbg !4949

if.then:                                          ; preds = %entry
  ret i64 -1, !dbg !4950

if.done:                                          ; preds = %entry
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4951)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4952
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4952
  %4 = icmp uge i64 0, %indexaddr.len, !dbg !4952
  br i1 %4, label %lookup.throw, label %lookup.next, !dbg !4952

lookup.next:                                      ; preds = %if.done
  %5 = getelementptr inbounds i64, ptr %indexaddr.ptr, i64 0, !dbg !4952
  %6 = load i64, ptr %5, align 8, !dbg !4952
    #dbg_value(i64 %6, !4939, !DIExpression(), !4953)
    #dbg_value(i64 1, !4940, !DIExpression(), !4954)
  br label %for.loop, !dbg !4949

for.loop:                                         ; preds = %lookup.next9, %lookup.next
  %7 = phi i64 [ %6, %lookup.next ], [ %13, %lookup.next9 ], !dbg !4953
  %8 = phi i64 [ 1, %lookup.next ], [ %14, %lookup.next9 ], !dbg !4954
    #dbg_value(i64 %8, !4940, !DIExpression(), !4955)
    #dbg_value(i64 %k, !4938, !DIExpression(), !4956)
  %9 = icmp slt i64 %8, %k, !dbg !4957
  br i1 %9, label %for.body, label %for.done, !dbg !4949

for.body:                                         ; preds = %for.loop
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4958)
    #dbg_value(i64 %8, !4940, !DIExpression(), !4959)
  %indexaddr.ptr6 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4960
  %indexaddr.len7 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4960
  %10 = icmp uge i64 %8, %indexaddr.len7, !dbg !4960
  br i1 %10, label %lookup.throw8, label %lookup.next9, !dbg !4960

lookup.next9:                                     ; preds = %for.body
  %11 = getelementptr inbounds i64, ptr %indexaddr.ptr6, i64 %8, !dbg !4960
  %12 = load i64, ptr %11, align 8, !dbg !4960
  %13 = add i64 %7, %12, !dbg !4961
    #dbg_value(i64 %13, !4939, !DIExpression(), !4961)
  %14 = add i64 %8, 1, !dbg !4962
    #dbg_value(i64 %14, !4940, !DIExpression(), !4962)
  br label %for.loop, !dbg !4949

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %7, !4939, !DIExpression(), !4963)
    #dbg_value(i64 %7, !4941, !DIExpression(), !4964)
    #dbg_value(i64 %k, !4938, !DIExpression(), !4965)
  %15 = sub i64 %k, 1, !dbg !4966
    #dbg_value(i64 %15, !4942, !DIExpression(), !4967)
    #dbg_value(i64 %k, !4938, !DIExpression(), !4968)
    #dbg_value(i64 %k, !4943, !DIExpression(), !4969)
  br label %for.loop1, !dbg !4949

for.loop1:                                        ; preds = %if.done4, %for.done
  %16 = phi i64 [ %7, %for.done ], [ %30, %if.done4 ], !dbg !4964
  %17 = phi i64 [ %15, %for.done ], [ %31, %if.done4 ], !dbg !4967
  %18 = phi i64 [ %k, %for.done ], [ %32, %if.done4 ], !dbg !4969
    #dbg_value(i64 %18, !4943, !DIExpression(), !4970)
    #dbg_value(i64 %n, !4937, !DIExpression(), !4971)
  %19 = icmp slt i64 %18, %n, !dbg !4972
  br i1 %19, label %for.body2, label %for.done5, !dbg !4949

for.body2:                                        ; preds = %for.loop1
    #dbg_value(i64 %7, !4939, !DIExpression(), !4973)
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4974)
    #dbg_value(i64 %18, !4943, !DIExpression(), !4975)
  %indexaddr.ptr10 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4976
  %indexaddr.len11 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4976
  %20 = icmp uge i64 %18, %indexaddr.len11, !dbg !4976
  br i1 %20, label %lookup.throw12, label %lookup.next13, !dbg !4976

lookup.next13:                                    ; preds = %for.body2
  %21 = getelementptr inbounds i64, ptr %indexaddr.ptr10, i64 %18, !dbg !4976
  %22 = load i64, ptr %21, align 8, !dbg !4976
  %23 = add i64 %7, %22, !dbg !4977
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4978)
    #dbg_value(i64 %18, !4943, !DIExpression(), !4979)
    #dbg_value(i64 %k, !4938, !DIExpression(), !4980)
  %24 = sub i64 %18, %k, !dbg !4981
  %indexaddr.ptr14 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4982
  %indexaddr.len15 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4982
  %25 = icmp uge i64 %24, %indexaddr.len15, !dbg !4982
  br i1 %25, label %lookup.throw16, label %lookup.next17, !dbg !4982

lookup.next17:                                    ; preds = %lookup.next13
  %26 = getelementptr inbounds i64, ptr %indexaddr.ptr14, i64 %24, !dbg !4982
  %27 = load i64, ptr %26, align 8, !dbg !4982
  %28 = sub i64 %23, %27, !dbg !4983
    #dbg_value(i64 %28, !4944, !DIExpression(), !4984)
    #dbg_value(i64 %28, !4944, !DIExpression(), !4985)
    #dbg_value(i64 %16, !4941, !DIExpression(), !4986)
  %29 = icmp sgt i64 %28, %16, !dbg !4987
  br i1 %29, label %if.then3, label %if.done4, !dbg !4949

if.then3:                                         ; preds = %lookup.next17
    #dbg_value(i64 %28, !4944, !DIExpression(), !4988)
    #dbg_value(i64 %28, !4941, !DIExpression(), !4989)
    #dbg_value(i64 %18, !4943, !DIExpression(), !4990)
    #dbg_value(i64 %18, !4942, !DIExpression(), !4991)
  br label %if.done4, !dbg !4949

if.done4:                                         ; preds = %if.then3, %lookup.next17
  %30 = phi i64 [ %16, %lookup.next17 ], [ %28, %if.then3 ], !dbg !4964
  %31 = phi i64 [ %17, %lookup.next17 ], [ %18, %if.then3 ], !dbg !4967
  %32 = add i64 %18, 1, !dbg !4992
    #dbg_value(i64 %32, !4943, !DIExpression(), !4992)
  br label %for.loop1, !dbg !4949

for.done5:                                        ; preds = %for.loop1
    #dbg_value(i64 %17, !4942, !DIExpression(), !4993)
    #dbg_value(i64 %k, !4938, !DIExpression(), !4994)
  %33 = sub i64 %17, %k, !dbg !4995
  %34 = add i64 %33, 1, !dbg !4996
  ret i64 %34, !dbg !4997

lookup.throw:                                     ; preds = %if.done
  call void @runtime.lookupPanic(ptr undef), !dbg !4952
  unreachable, !dbg !4952

lookup.throw8:                                    ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !4960
  unreachable, !dbg !4960

lookup.throw12:                                   ; preds = %for.body2
  call void @runtime.lookupPanic(ptr undef), !dbg !4976
  unreachable, !dbg !4976

lookup.throw16:                                   ; preds = %lookup.next13
  call void @runtime.lookupPanic(ptr undef), !dbg !4982
  unreachable, !dbg !4982
}
