define i64 @f_gold(ptr nocapture %a.data, i64 %a.len, i64 %a.cap, i64 %n, i64 %k) #0 !dbg !4927 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %a.data, 0, !dbg !4942
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %a.len, 1, !dbg !4942
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %a.cap, 2, !dbg !4942
    #dbg_value(ptr %a.data, !4936, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4942)
    #dbg_value(i64 %a.len, !4936, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4942)
    #dbg_value(i64 %a.cap, !4936, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4942)
    #dbg_value(i64 %n, !4937, !DIExpression(), !4942)
    #dbg_value(i64 %k, !4938, !DIExpression(), !4942)
    #dbg_value(i64 %k, !4938, !DIExpression(), !4943)
    #dbg_value(i64 %n, !4937, !DIExpression(), !4944)
  %3 = sub i64 %n, 1, !dbg !4945
  %4 = icmp sge i64 %k, %3, !dbg !4946
  br i1 %4, label %if.then, label %if.done, !dbg !4947

if.then:                                          ; preds = %entry
    #dbg_value(i64 %n, !4937, !DIExpression(), !4948)
  ret i64 %n, !dbg !4949

if.done:                                          ; preds = %entry
    #dbg_value(i64 0, !4939, !DIExpression(), !4950)
    #dbg_value(i64 0, !4940, !DIExpression(), !4951)
    #dbg_value(i64 0, !4941, !DIExpression(), !4952)
  br label %for.loop, !dbg !4947

for.loop:                                         ; preds = %if.done5, %if.done
  %5 = phi i64 [ 0, %if.done ], [ %17, %if.done5 ], !dbg !4950
  %6 = phi i64 [ 0, %if.done ], [ %18, %if.done5 ], !dbg !4951
  %7 = phi i64 [ 0, %if.done ], [ %20, %if.done5 ], !dbg !4952
    #dbg_value(i64 %7, !4941, !DIExpression(), !4953)
    #dbg_value(i64 %n, !4937, !DIExpression(), !4954)
  %8 = icmp slt i64 %7, %n, !dbg !4955
  br i1 %8, label %for.body, label %for.done, !dbg !4947

for.body:                                         ; preds = %for.loop
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4956)
    #dbg_value(i64 %7, !4941, !DIExpression(), !4957)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4958
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4958
  %9 = icmp uge i64 %7, %indexaddr.len, !dbg !4958
  br i1 %9, label %lookup.throw, label %lookup.next, !dbg !4958

lookup.next:                                      ; preds = %for.body
  %10 = getelementptr inbounds i64, ptr %indexaddr.ptr, i64 %7, !dbg !4958
  %11 = load i64, ptr %10, align 8, !dbg !4958
    #dbg_value(i64 %5, !4939, !DIExpression(), !4959)
  %12 = icmp sgt i64 %11, %5, !dbg !4960
  br i1 %12, label %if.then1, label %if.else, !dbg !4947

if.then1:                                         ; preds = %lookup.next
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4961)
    #dbg_value(i64 %7, !4941, !DIExpression(), !4962)
  %indexaddr.ptr6 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4963
  %indexaddr.len7 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4963
  %13 = icmp uge i64 %7, %indexaddr.len7, !dbg !4963
  br i1 %13, label %lookup.throw8, label %lookup.next9, !dbg !4963

lookup.next9:                                     ; preds = %if.then1
  %14 = getelementptr inbounds i64, ptr %indexaddr.ptr6, i64 %7, !dbg !4963
  %15 = load i64, ptr %14, align 8, !dbg !4963
    #dbg_value(i64 %15, !4939, !DIExpression(), !4964)
    #dbg_value(i64 %7, !4941, !DIExpression(), !4965)
  %16 = icmp ne i64 %7, 0, !dbg !4966
  br i1 %16, label %if.then2, label %if.done3, !dbg !4947

if.then2:                                         ; preds = %lookup.next9
    #dbg_value(i64 1, !4940, !DIExpression(), !4967)
  br label %if.done3, !dbg !4947

if.done3:                                         ; preds = %if.else, %if.then2, %lookup.next9
  %17 = phi i64 [ %15, %lookup.next9 ], [ %5, %if.else ], [ %15, %if.then2 ], !dbg !4950
  %18 = phi i64 [ %6, %lookup.next9 ], [ %21, %if.else ], [ 1, %if.then2 ], !dbg !4951
    #dbg_value(i64 %18, !4940, !DIExpression(), !4968)
    #dbg_value(i64 %k, !4938, !DIExpression(), !4969)
  %19 = icmp sge i64 %18, %k, !dbg !4970
  br i1 %19, label %if.then4, label %if.done5, !dbg !4947

if.then4:                                         ; preds = %if.done3
    #dbg_value(i64 %17, !4939, !DIExpression(), !4971)
  ret i64 %17, !dbg !4972

if.done5:                                         ; preds = %if.done3
  %20 = add i64 %7, 1, !dbg !4973
    #dbg_value(i64 %20, !4941, !DIExpression(), !4973)
  br label %for.loop, !dbg !4947

if.else:                                          ; preds = %lookup.next
  %21 = add i64 %6, 1, !dbg !4974
    #dbg_value(i64 %21, !4940, !DIExpression(), !4974)
  br label %if.done3, !dbg !4947

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %5, !4939, !DIExpression(), !4975)
  ret i64 %5, !dbg !4976

lookup.throw:                                     ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !4958
  unreachable, !dbg !4958

lookup.throw8:                                    ; preds = %if.then1
  call void @runtime.lookupPanic(ptr undef), !dbg !4963
  unreachable, !dbg !4963
}
