define i64 @f_gold(ptr nocapture %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n) #0 !dbg !4927 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %arr.data, 0, !dbg !4942
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %arr.len, 1, !dbg !4942
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %arr.cap, 2, !dbg !4942
    #dbg_value(ptr %arr.data, !4936, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4942)
    #dbg_value(i64 %arr.len, !4936, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4942)
    #dbg_value(i64 %arr.cap, !4936, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4942)
    #dbg_value(i64 %n, !4937, !DIExpression(), !4942)
    #dbg_value(i64 0, !4938, !DIExpression(), !4943)
    #dbg_value(i64 0, !4939, !DIExpression(), !4944)
  br label %for.loop, !dbg !4945

for.loop:                                         ; preds = %for.done, %entry
  %3 = phi i64 [ 0, %entry ], [ %8, %for.done ], !dbg !4943
  %4 = phi i64 [ 0, %entry ], [ %35, %for.done ], !dbg !4944
    #dbg_value(i64 %4, !4939, !DIExpression(), !4946)
    #dbg_value(i64 %n, !4937, !DIExpression(), !4947)
  %5 = sub i64 %n, 2, !dbg !4948
  %6 = icmp slt i64 %4, %5, !dbg !4949
  br i1 %6, label %for.body, label %for.done7, !dbg !4945

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %4, !4939, !DIExpression(), !4950)
  %7 = add i64 %4, 1, !dbg !4951
    #dbg_value(i64 %7, !4940, !DIExpression(), !4952)
  br label %for.loop1, !dbg !4945

for.loop1:                                        ; preds = %if.done6, %for.body
  %8 = phi i64 [ %3, %for.body ], [ %33, %if.done6 ], !dbg !4943
  %9 = phi i64 [ %7, %for.body ], [ %34, %if.done6 ], !dbg !4952
    #dbg_value(i64 %9, !4940, !DIExpression(), !4953)
    #dbg_value(i64 %n, !4937, !DIExpression(), !4954)
  %10 = sub i64 %n, 1, !dbg !4955
  %11 = icmp slt i64 %9, %10, !dbg !4956
  br i1 %11, label %for.body2, label %for.done, !dbg !4945

for.body2:                                        ; preds = %for.loop1
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4957)
    #dbg_value(i64 %4, !4939, !DIExpression(), !4958)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4959
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4959
  %12 = icmp uge i64 %4, %indexaddr.len, !dbg !4959
  br i1 %12, label %lookup.throw, label %lookup.next, !dbg !4959

lookup.next:                                      ; preds = %for.body2
  %13 = getelementptr inbounds i64, ptr %indexaddr.ptr, i64 %4, !dbg !4959
  %14 = load i64, ptr %13, align 8, !dbg !4959
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4960)
    #dbg_value(i64 %9, !4940, !DIExpression(), !4961)
  %indexaddr.ptr8 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4962
  %indexaddr.len9 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4962
  %15 = icmp uge i64 %9, %indexaddr.len9, !dbg !4962
  br i1 %15, label %lookup.throw10, label %lookup.next11, !dbg !4962

lookup.next11:                                    ; preds = %lookup.next
  %16 = getelementptr inbounds i64, ptr %indexaddr.ptr8, i64 %9, !dbg !4962
  %17 = load i64, ptr %16, align 8, !dbg !4962
  %18 = icmp sgt i64 %14, %17, !dbg !4963
  br i1 %18, label %if.then, label %if.done6, !dbg !4945

if.then:                                          ; preds = %lookup.next11
    #dbg_value(i64 %9, !4940, !DIExpression(), !4964)
  %19 = add i64 %9, 1, !dbg !4965
    #dbg_value(i64 %19, !4941, !DIExpression(), !4966)
  br label %for.loop3, !dbg !4945

for.loop3:                                        ; preds = %if.done, %if.then
  %20 = phi i64 [ %8, %if.then ], [ %31, %if.done ], !dbg !4943
  %21 = phi i64 [ %19, %if.then ], [ %32, %if.done ], !dbg !4966
    #dbg_value(i64 %21, !4941, !DIExpression(), !4967)
    #dbg_value(i64 %n, !4937, !DIExpression(), !4968)
  %22 = icmp slt i64 %21, %n, !dbg !4969
  br i1 %22, label %for.body4, label %if.done6, !dbg !4945

for.body4:                                        ; preds = %for.loop3
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4970)
    #dbg_value(i64 %9, !4940, !DIExpression(), !4971)
  %indexaddr.ptr12 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4972
  %indexaddr.len13 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4972
  %23 = icmp uge i64 %9, %indexaddr.len13, !dbg !4972
  br i1 %23, label %lookup.throw14, label %lookup.next15, !dbg !4972

lookup.next15:                                    ; preds = %for.body4
  %24 = getelementptr inbounds i64, ptr %indexaddr.ptr12, i64 %9, !dbg !4972
  %25 = load i64, ptr %24, align 8, !dbg !4972
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4973)
    #dbg_value(i64 %21, !4941, !DIExpression(), !4974)
  %indexaddr.ptr16 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4975
  %indexaddr.len17 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4975
  %26 = icmp uge i64 %21, %indexaddr.len17, !dbg !4975
  br i1 %26, label %lookup.throw18, label %lookup.next19, !dbg !4975

lookup.next19:                                    ; preds = %lookup.next15
  %27 = getelementptr inbounds i64, ptr %indexaddr.ptr16, i64 %21, !dbg !4975
  %28 = load i64, ptr %27, align 8, !dbg !4975
  %29 = icmp sgt i64 %25, %28, !dbg !4976
  br i1 %29, label %if.then5, label %if.done, !dbg !4945

if.then5:                                         ; preds = %lookup.next19
  %30 = add i64 %20, 1, !dbg !4977
    #dbg_value(i64 %30, !4938, !DIExpression(), !4977)
  br label %if.done, !dbg !4945

if.done:                                          ; preds = %if.then5, %lookup.next19
  %31 = phi i64 [ %20, %lookup.next19 ], [ %30, %if.then5 ], !dbg !4943
  %32 = add i64 %21, 1, !dbg !4978
    #dbg_value(i64 %32, !4941, !DIExpression(), !4978)
  br label %for.loop3, !dbg !4945

if.done6:                                         ; preds = %for.loop3, %lookup.next11
  %33 = phi i64 [ %8, %lookup.next11 ], [ %20, %for.loop3 ], !dbg !4943
  %34 = add i64 %9, 1, !dbg !4979
    #dbg_value(i64 %34, !4940, !DIExpression(), !4979)
  br label %for.loop1, !dbg !4945

for.done:                                         ; preds = %for.loop1
  %35 = add i64 %4, 1, !dbg !4980
    #dbg_value(i64 %35, !4939, !DIExpression(), !4980)
  br label %for.loop, !dbg !4945

for.done7:                                        ; preds = %for.loop
    #dbg_value(i64 %3, !4938, !DIExpression(), !4981)
  ret i64 %3, !dbg !4982

lookup.throw:                                     ; preds = %for.body2
  call void @runtime.lookupPanic(ptr undef), !dbg !4959
  unreachable, !dbg !4959

lookup.throw10:                                   ; preds = %lookup.next
  call void @runtime.lookupPanic(ptr undef), !dbg !4962
  unreachable, !dbg !4962

lookup.throw14:                                   ; preds = %for.body4
  call void @runtime.lookupPanic(ptr undef), !dbg !4972
  unreachable, !dbg !4972

lookup.throw18:                                   ; preds = %lookup.next15
  call void @runtime.lookupPanic(ptr undef), !dbg !4975
  unreachable, !dbg !4975
}
