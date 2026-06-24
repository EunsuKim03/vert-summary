define i64 @f_gold(ptr nocapture %arr.data, i64 %arr.len, i64 %arr.cap, i64 %arr_size) #0 !dbg !4927 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %arr.data, 0, !dbg !4941
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %arr.len, 1, !dbg !4941
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %arr.cap, 2, !dbg !4941
    #dbg_value(ptr %arr.data, !4936, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4941)
    #dbg_value(i64 %arr.len, !4936, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4941)
    #dbg_value(i64 %arr.cap, !4936, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4941)
    #dbg_value(i64 %arr_size, !4937, !DIExpression(), !4941)
    #dbg_value(i64 0, !4938, !DIExpression(), !4942)
  br label %for.loop, !dbg !4943

for.loop:                                         ; preds = %if.done4, %entry
  %3 = phi i64 [ 0, %entry ], [ %26, %if.done4 ], !dbg !4942
    #dbg_value(i64 %3, !4938, !DIExpression(), !4944)
    #dbg_value(i64 %arr_size, !4937, !DIExpression(), !4945)
  %4 = icmp slt i64 %3, %arr_size, !dbg !4946
  br i1 %4, label %for.body, label %for.done5, !dbg !4943

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 0, !4939, !DIExpression(), !4947)
    #dbg_value(i64 0, !4940, !DIExpression(), !4948)
  br label %for.loop1, !dbg !4943

for.loop1:                                        ; preds = %if.done, %for.body
  %5 = phi i64 [ 0, %for.body ], [ %16, %if.done ], !dbg !4947
  %6 = phi i64 [ 0, %for.body ], [ %17, %if.done ], !dbg !4948
    #dbg_value(i64 %6, !4940, !DIExpression(), !4949)
    #dbg_value(i64 %arr_size, !4937, !DIExpression(), !4950)
  %7 = icmp slt i64 %6, %arr_size, !dbg !4951
  br i1 %7, label %for.body2, label %for.done, !dbg !4943

for.body2:                                        ; preds = %for.loop1
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4952)
    #dbg_value(i64 %3, !4938, !DIExpression(), !4953)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4954
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4954
  %8 = icmp uge i64 %3, %indexaddr.len, !dbg !4954
  br i1 %8, label %lookup.throw, label %lookup.next, !dbg !4954

lookup.next:                                      ; preds = %for.body2
  %9 = getelementptr inbounds i64, ptr %indexaddr.ptr, i64 %3, !dbg !4954
  %10 = load i64, ptr %9, align 8, !dbg !4954
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4955)
    #dbg_value(i64 %6, !4940, !DIExpression(), !4956)
  %indexaddr.ptr6 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4957
  %indexaddr.len7 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4957
  %11 = icmp uge i64 %6, %indexaddr.len7, !dbg !4957
  br i1 %11, label %lookup.throw8, label %lookup.next9, !dbg !4957

lookup.next9:                                     ; preds = %lookup.next
  %12 = getelementptr inbounds i64, ptr %indexaddr.ptr6, i64 %6, !dbg !4957
  %13 = load i64, ptr %12, align 8, !dbg !4957
  %14 = icmp eq i64 %10, %13, !dbg !4958
  br i1 %14, label %if.then, label %if.done, !dbg !4943

if.then:                                          ; preds = %lookup.next9
  %15 = add i64 %5, 1, !dbg !4959
    #dbg_value(i64 %15, !4939, !DIExpression(), !4959)
  br label %if.done, !dbg !4943

if.done:                                          ; preds = %if.then, %lookup.next9
  %16 = phi i64 [ %5, %lookup.next9 ], [ %15, %if.then ], !dbg !4947
  %17 = add i64 %6, 1, !dbg !4960
    #dbg_value(i64 %17, !4940, !DIExpression(), !4960)
  br label %for.loop1, !dbg !4943

for.done:                                         ; preds = %for.loop1
    #dbg_value(i64 %5, !4939, !DIExpression(), !4961)
  %18 = icmp eq i64 %5, -9223372036854775808, !dbg !4962
  %19 = and i1 false, %18, !dbg !4962
  %20 = select i1 %19, i64 1, i64 2, !dbg !4962
  %21 = srem i64 %5, %20, !dbg !4962
  %22 = icmp ne i64 %21, 0, !dbg !4963
  br i1 %22, label %if.then3, label %if.done4, !dbg !4943

if.then3:                                         ; preds = %for.done
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4964)
    #dbg_value(i64 %3, !4938, !DIExpression(), !4965)
  %indexaddr.ptr10 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4966
  %indexaddr.len11 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4966
  %23 = icmp uge i64 %3, %indexaddr.len11, !dbg !4966
  br i1 %23, label %lookup.throw12, label %lookup.next13, !dbg !4966

lookup.next13:                                    ; preds = %if.then3
  %24 = getelementptr inbounds i64, ptr %indexaddr.ptr10, i64 %3, !dbg !4966
  %25 = load i64, ptr %24, align 8, !dbg !4966
  ret i64 %25, !dbg !4967

if.done4:                                         ; preds = %for.done
  %26 = add i64 %3, 1, !dbg !4968
    #dbg_value(i64 %26, !4938, !DIExpression(), !4968)
  br label %for.loop, !dbg !4943

for.done5:                                        ; preds = %for.loop
  ret i64 -1, !dbg !4969

lookup.throw:                                     ; preds = %for.body2
  call void @runtime.lookupPanic(ptr undef), !dbg !4954
  unreachable, !dbg !4954

lookup.throw8:                                    ; preds = %lookup.next
  call void @runtime.lookupPanic(ptr undef), !dbg !4957
  unreachable, !dbg !4957

lookup.throw12:                                   ; preds = %if.then3
  call void @runtime.lookupPanic(ptr undef), !dbg !4966
  unreachable, !dbg !4966
}
