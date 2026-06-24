define i1 @f_gold(ptr nocapture %s.data, i64 %s.len, i64 %s.cap) #0 !dbg !4927 {
entry:
  %j = alloca i64, align 8, !dbg !4935
  %i = alloca i64, align 8, !dbg !4935
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %s.data, 0, !dbg !4935
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %s.len, 1, !dbg !4935
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %s.cap, 2, !dbg !4935
    #dbg_value(ptr %s.data, !4930, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4935)
    #dbg_value(i64 %s.len, !4930, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4935)
    #dbg_value(i64 %s.cap, !4930, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4935)
    #dbg_value({ ptr, i64, i64 } %2, !4930, !DIExpression(), !4936)
  %len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4937
    #dbg_value(i64 %len, !4931, !DIExpression(), !4938)
    #dbg_value(i64 0, !4932, !DIExpression(), !4939)
    #dbg_value(i64 0, !4932, !DIExpression(), !4940)
  store i64 0, ptr %i, align 8, !dbg !4935
  store i64 0, ptr %j, align 8, !dbg !4935
    #dbg_value(i64 %len, !4931, !DIExpression(), !4941)
  %3 = sub i64 %len, 1, !dbg !4942
  store i64 0, ptr %i, align 8, !dbg !4943
    #dbg_value(i64 0, !4933, !DIExpression(), !4943)
  store i64 %3, ptr %j, align 8, !dbg !4944
    #dbg_value(i64 %3, !4934, !DIExpression(), !4944)
  br label %for.loop, !dbg !4945

for.loop:                                         ; preds = %deref.next15, %entry
  %4 = phi ptr [ %i, %entry ], [ %i13, %deref.next15 ], !dbg !4943
  %5 = phi ptr [ %j, %entry ], [ %j16, %deref.next15 ], !dbg !4944
  %6 = icmp eq ptr %4, null, !dbg !4946
  br i1 %6, label %deref.throw, label %deref.next, !dbg !4946

deref.next:                                       ; preds = %for.loop
  %7 = load i64, ptr %4, align 8, !dbg !4946
    #dbg_value(i64 %7, !4933, !DIExpression(), !4946)
  %8 = icmp eq ptr %5, null, !dbg !4947
  br i1 %8, label %deref.throw1, label %deref.next2, !dbg !4947

deref.next2:                                      ; preds = %deref.next
  %9 = load i64, ptr %5, align 8, !dbg !4947
    #dbg_value(i64 %9, !4934, !DIExpression(), !4947)
  %10 = icmp sle i64 %7, %9, !dbg !4948
  br i1 %10, label %for.body, label %for.done, !dbg !4945

for.body:                                         ; preds = %deref.next2
    #dbg_value({ ptr, i64, i64 } %2, !4930, !DIExpression(), !4949)
  %11 = icmp eq ptr %4, null, !dbg !4950
  br i1 %11, label %deref.throw3, label %deref.next4, !dbg !4950

deref.next4:                                      ; preds = %for.body
  %12 = load i64, ptr %4, align 8, !dbg !4950
    #dbg_value(i64 %12, !4933, !DIExpression(), !4950)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4951
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4951
  %13 = icmp uge i64 %12, %indexaddr.len, !dbg !4951
  br i1 %13, label %lookup.throw, label %lookup.next, !dbg !4951

lookup.next:                                      ; preds = %deref.next4
  %14 = getelementptr inbounds i8, ptr %indexaddr.ptr, i64 %12, !dbg !4951
  %15 = load i8, ptr %14, align 1, !dbg !4951
    #dbg_value({ ptr, i64, i64 } %2, !4930, !DIExpression(), !4952)
  %16 = icmp eq ptr %5, null, !dbg !4953
  br i1 %16, label %deref.throw5, label %deref.next6, !dbg !4953

deref.next6:                                      ; preds = %lookup.next
  %17 = load i64, ptr %5, align 8, !dbg !4953
    #dbg_value(i64 %17, !4934, !DIExpression(), !4953)
  %indexaddr.ptr7 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4954
  %indexaddr.len8 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4954
  %18 = icmp uge i64 %17, %indexaddr.len8, !dbg !4954
  br i1 %18, label %lookup.throw9, label %lookup.next10, !dbg !4954

lookup.next10:                                    ; preds = %deref.next6
  %19 = getelementptr inbounds i8, ptr %indexaddr.ptr7, i64 %17, !dbg !4954
  %20 = load i8, ptr %19, align 1, !dbg !4954
  %21 = icmp ne i8 %15, %20, !dbg !4955
  br i1 %21, label %if.then, label %if.done, !dbg !4945

if.then:                                          ; preds = %lookup.next10
  ret i1 false, !dbg !4956

if.done:                                          ; preds = %lookup.next10
  %22 = icmp eq ptr %4, null, !dbg !4945
  br i1 %22, label %deref.throw11, label %deref.next12, !dbg !4945

deref.next12:                                     ; preds = %if.done
  %23 = load i64, ptr %4, align 8, !dbg !4945
  %i13 = call align 8 ptr @runtime.alloc(i64 8, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !4943
  store i64 %23, ptr %i13, align 8, !dbg !4943
  %24 = icmp eq ptr %5, null, !dbg !4945
  br i1 %24, label %deref.throw14, label %deref.next15, !dbg !4945

deref.next15:                                     ; preds = %deref.next12
  %25 = load i64, ptr %5, align 8, !dbg !4945
  %j16 = call align 8 ptr @runtime.alloc(i64 8, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !4944
  store i64 %25, ptr %j16, align 8, !dbg !4944
  %26 = call align 8 ptr @runtime.alloc(i64 16, ptr null, ptr undef), !dbg !4957
  %27 = getelementptr inbounds { ptr, ptr }, ptr %26, i32 0, i32 0, !dbg !4957
  store ptr %i13, ptr %27, align 8, !dbg !4957
  %28 = getelementptr inbounds { ptr, ptr }, ptr %26, i32 0, i32 1, !dbg !4957
  store ptr %j16, ptr %28, align 8, !dbg !4957
  %29 = insertvalue { ptr, ptr } undef, ptr %26, 0, !dbg !4957
  %30 = insertvalue { ptr, ptr } %29, ptr @"main.f_gold$1", 1, !dbg !4957
  %31 = extractvalue { ptr, ptr } %30, 0, !dbg !4958
  %32 = call i64 @"main.f_gold$1"(ptr %31), !dbg !4958
  br label %for.loop, !dbg !4945

for.done:                                         ; preds = %deref.next2
  ret i1 true, !dbg !4959

deref.throw:                                      ; preds = %for.loop
  call void @runtime.nilPanic(ptr undef), !dbg !4946
  unreachable, !dbg !4946

deref.throw1:                                     ; preds = %deref.next
  call void @runtime.nilPanic(ptr undef), !dbg !4947
  unreachable, !dbg !4947

deref.throw3:                                     ; preds = %for.body
  call void @runtime.nilPanic(ptr undef), !dbg !4950
  unreachable, !dbg !4950

lookup.throw:                                     ; preds = %deref.next4
  call void @runtime.lookupPanic(ptr undef), !dbg !4951
  unreachable, !dbg !4951

deref.throw5:                                     ; preds = %lookup.next
  call void @runtime.nilPanic(ptr undef), !dbg !4953
  unreachable, !dbg !4953

lookup.throw9:                                    ; preds = %deref.next6
  call void @runtime.lookupPanic(ptr undef), !dbg !4954
  unreachable, !dbg !4954

deref.throw11:                                    ; preds = %if.done
  call void @runtime.nilPanic(ptr undef), !dbg !4945
  unreachable, !dbg !4945

deref.throw14:                                    ; preds = %deref.next12
  call void @runtime.nilPanic(ptr undef), !dbg !4945
  unreachable, !dbg !4945
}
