define i1 @f_gold(ptr nocapture %arr.data, i64 %arr.len, i64 %arr.cap, i64 %i, i64 %n) #0 !dbg !4927 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %arr.data, 0, !dbg !4939
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %arr.len, 1, !dbg !4939
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %arr.cap, 2, !dbg !4939
    #dbg_value(ptr %arr.data, !4936, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4939)
    #dbg_value(i64 %arr.len, !4936, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4939)
    #dbg_value(i64 %arr.cap, !4936, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4939)
    #dbg_value(i64 %i, !4937, !DIExpression(), !4939)
    #dbg_value(i64 %n, !4938, !DIExpression(), !4939)
    #dbg_value(i64 %i, !4937, !DIExpression(), !4940)
    #dbg_value(i64 %n, !4938, !DIExpression(), !4941)
  %3 = sub i64 %n, 2, !dbg !4942
  %4 = icmp eq i64 %3, -9223372036854775808, !dbg !4943
  %5 = and i1 false, %4, !dbg !4943
  %6 = select i1 %5, i64 1, i64 2, !dbg !4943
  %7 = sdiv i64 %3, %6, !dbg !4943
  %8 = icmp sgt i64 %i, %7, !dbg !4944
  br i1 %8, label %if.then, label %if.done, !dbg !4945

if.then:                                          ; preds = %entry
  ret i1 true, !dbg !4946

if.done:                                          ; preds = %entry
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4947)
    #dbg_value(i64 %i, !4937, !DIExpression(), !4948)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4949
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4949
  %9 = icmp uge i64 %i, %indexaddr.len, !dbg !4949
  br i1 %9, label %lookup.throw, label %lookup.next, !dbg !4949

lookup.next:                                      ; preds = %if.done
  %10 = getelementptr inbounds i64, ptr %indexaddr.ptr, i64 %i, !dbg !4949
  %11 = load i64, ptr %10, align 8, !dbg !4949
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4950)
    #dbg_value(i64 %i, !4937, !DIExpression(), !4951)
  %12 = mul i64 %i, 2, !dbg !4952
  %13 = add i64 %12, 1, !dbg !4953
  %indexaddr.ptr5 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4954
  %indexaddr.len6 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4954
  %14 = icmp uge i64 %13, %indexaddr.len6, !dbg !4954
  br i1 %14, label %lookup.throw7, label %lookup.next8, !dbg !4954

lookup.next8:                                     ; preds = %lookup.next
  %15 = getelementptr inbounds i64, ptr %indexaddr.ptr5, i64 %13, !dbg !4954
  %16 = load i64, ptr %15, align 8, !dbg !4954
  %17 = icmp sge i64 %11, %16, !dbg !4955
  br i1 %17, label %cond.true, label %if.done4, !dbg !4945

cond.true:                                        ; preds = %lookup.next8
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4956)
    #dbg_value(i64 %i, !4937, !DIExpression(), !4957)
  %indexaddr.ptr9 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4958
  %indexaddr.len10 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4958
  %18 = icmp uge i64 %i, %indexaddr.len10, !dbg !4958
  br i1 %18, label %lookup.throw11, label %lookup.next12, !dbg !4958

lookup.next12:                                    ; preds = %cond.true
  %19 = getelementptr inbounds i64, ptr %indexaddr.ptr9, i64 %i, !dbg !4958
  %20 = load i64, ptr %19, align 8, !dbg !4958
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4959)
    #dbg_value(i64 %i, !4937, !DIExpression(), !4960)
  %21 = mul i64 %i, 2, !dbg !4961
  %22 = add i64 %21, 2, !dbg !4962
  %indexaddr.ptr13 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4963
  %indexaddr.len14 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4963
  %23 = icmp uge i64 %22, %indexaddr.len14, !dbg !4963
  br i1 %23, label %lookup.throw15, label %lookup.next16, !dbg !4963

lookup.next16:                                    ; preds = %lookup.next12
  %24 = getelementptr inbounds i64, ptr %indexaddr.ptr13, i64 %22, !dbg !4963
  %25 = load i64, ptr %24, align 8, !dbg !4963
  %26 = icmp sge i64 %20, %25, !dbg !4964
  br i1 %26, label %cond.true1, label %if.done4, !dbg !4945

cond.true1:                                       ; preds = %lookup.next16
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4965)
    #dbg_value(i64 %i, !4937, !DIExpression(), !4966)
  %27 = mul i64 %i, 2, !dbg !4967
  %28 = add i64 %27, 1, !dbg !4968
    #dbg_value(i64 %n, !4938, !DIExpression(), !4969)
  %29 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4970
  %30 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4970
  %31 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !4970
  %32 = call i1 @f_gold(ptr %29, i64 %30, i64 %31, i64 %28, i64 %n), !dbg !4970
  br i1 %32, label %cond.true2, label %if.done4, !dbg !4945

cond.true2:                                       ; preds = %cond.true1
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4971)
    #dbg_value(i64 %i, !4937, !DIExpression(), !4972)
  %33 = mul i64 %i, 2, !dbg !4973
  %34 = add i64 %33, 2, !dbg !4974
    #dbg_value(i64 %n, !4938, !DIExpression(), !4975)
  %35 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4976
  %36 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4976
  %37 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !4976
  %38 = call i1 @f_gold(ptr %35, i64 %36, i64 %37, i64 %34, i64 %n), !dbg !4976
  br i1 %38, label %if.then3, label %if.done4, !dbg !4945

if.then3:                                         ; preds = %cond.true2
  ret i1 true, !dbg !4977

if.done4:                                         ; preds = %cond.true2, %cond.true1, %lookup.next16, %lookup.next8
  ret i1 false, !dbg !4978

lookup.throw:                                     ; preds = %if.done
  call void @runtime.lookupPanic(ptr undef), !dbg !4949
  unreachable, !dbg !4949

lookup.throw7:                                    ; preds = %lookup.next
  call void @runtime.lookupPanic(ptr undef), !dbg !4954
  unreachable, !dbg !4954

lookup.throw11:                                   ; preds = %cond.true
  call void @runtime.lookupPanic(ptr undef), !dbg !4958
  unreachable, !dbg !4958

lookup.throw15:                                   ; preds = %lookup.next12
  call void @runtime.lookupPanic(ptr undef), !dbg !4963
  unreachable, !dbg !4963
}
