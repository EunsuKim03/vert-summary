define i1 @f_gold(ptr nocapture %str.data, i64 %str.len, i64 %str.cap) #0 !dbg !4927 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %str.data, 0, !dbg !4934
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %str.len, 1, !dbg !4934
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %str.cap, 2, !dbg !4934
    #dbg_value(ptr %str.data, !4930, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4934)
    #dbg_value(i64 %str.len, !4930, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4934)
    #dbg_value(i64 %str.cap, !4930, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4934)
    #dbg_value({ ptr, i64, i64 } %2, !4930, !DIExpression(), !4935)
  %len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4936
    #dbg_value(i64 %len, !4931, !DIExpression(), !4937)
    #dbg_value(i64 %len, !4931, !DIExpression(), !4938)
  %3 = icmp eq i64 %len, 0, !dbg !4939
  br i1 %3, label %if.then, label %if.done, !dbg !4940

if.then:                                          ; preds = %entry
  ret i1 false, !dbg !4941

if.done:                                          ; preds = %entry
    #dbg_value(i64 %len, !4931, !DIExpression(), !4942)
  %4 = icmp eq i64 %len, 1, !dbg !4943
  br i1 %4, label %if.then1, label %if.done2, !dbg !4940

if.then1:                                         ; preds = %if.done
    #dbg_value({ ptr, i64, i64 } %2, !4930, !DIExpression(), !4944)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4945
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4945
  %5 = icmp uge i64 0, %indexaddr.len, !dbg !4945
  br i1 %5, label %lookup.throw, label %lookup.next, !dbg !4945

lookup.next:                                      ; preds = %if.then1
  %6 = getelementptr inbounds i8, ptr %indexaddr.ptr, i64 0, !dbg !4945
  %7 = load i8, ptr %6, align 1, !dbg !4945
  %8 = sub i8 %7, 48, !dbg !4946
  %9 = urem i8 %8, 4, !dbg !4947
  %10 = icmp eq i8 %9, 0, !dbg !4948
  ret i1 %10, !dbg !4949

if.done2:                                         ; preds = %if.done
    #dbg_value({ ptr, i64, i64 } %2, !4930, !DIExpression(), !4950)
    #dbg_value(i64 %len, !4931, !DIExpression(), !4951)
  %11 = sub i64 %len, 1, !dbg !4952
  %indexaddr.ptr3 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4953
  %indexaddr.len4 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4953
  %12 = icmp uge i64 %11, %indexaddr.len4, !dbg !4953
  br i1 %12, label %lookup.throw5, label %lookup.next6, !dbg !4953

lookup.next6:                                     ; preds = %if.done2
  %13 = getelementptr inbounds i8, ptr %indexaddr.ptr3, i64 %11, !dbg !4953
  %14 = load i8, ptr %13, align 1, !dbg !4953
  %15 = sub i8 %14, 48, !dbg !4954
  %16 = zext i8 %15 to i64, !dbg !4955
    #dbg_value(i64 %16, !4932, !DIExpression(), !4956)
    #dbg_value({ ptr, i64, i64 } %2, !4930, !DIExpression(), !4957)
    #dbg_value(i64 %len, !4931, !DIExpression(), !4958)
  %17 = sub i64 %len, 2, !dbg !4959
  %indexaddr.ptr7 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4960
  %indexaddr.len8 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4960
  %18 = icmp uge i64 %17, %indexaddr.len8, !dbg !4960
  br i1 %18, label %lookup.throw9, label %lookup.next10, !dbg !4960

lookup.next10:                                    ; preds = %lookup.next6
  %19 = getelementptr inbounds i8, ptr %indexaddr.ptr7, i64 %17, !dbg !4960
  %20 = load i8, ptr %19, align 1, !dbg !4960
  %21 = sub i8 %20, 48, !dbg !4961
  %22 = zext i8 %21 to i64, !dbg !4962
    #dbg_value(i64 %22, !4933, !DIExpression(), !4963)
    #dbg_value(i64 %22, !4933, !DIExpression(), !4964)
  %23 = mul i64 %22, 10, !dbg !4965
    #dbg_value(i64 %16, !4932, !DIExpression(), !4966)
  %24 = add i64 %23, %16, !dbg !4967
  %25 = icmp eq i64 %24, -9223372036854775808, !dbg !4968
  %26 = and i1 false, %25, !dbg !4968
  %27 = select i1 %26, i64 1, i64 4, !dbg !4968
  %28 = srem i64 %24, %27, !dbg !4968
  %29 = icmp eq i64 %28, 0, !dbg !4969
  ret i1 %29, !dbg !4970

lookup.throw:                                     ; preds = %if.then1
  call void @runtime.lookupPanic(ptr undef), !dbg !4945
  unreachable, !dbg !4945

lookup.throw5:                                    ; preds = %if.done2
  call void @runtime.lookupPanic(ptr undef), !dbg !4953
  unreachable, !dbg !4953

lookup.throw9:                                    ; preds = %lookup.next6
  call void @runtime.lookupPanic(ptr undef), !dbg !4960
  unreachable, !dbg !4960
}
