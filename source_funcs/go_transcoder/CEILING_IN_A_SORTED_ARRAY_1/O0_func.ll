define i64 @f_gold(ptr nocapture %arr.data, i64 %arr.len, i64 %arr.cap, i64 %low, i64 %high, i64 %x) #0 !dbg !4927 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %arr.data, 0, !dbg !4941
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %arr.len, 1, !dbg !4941
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %arr.cap, 2, !dbg !4941
    #dbg_value(ptr %arr.data, !4936, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4941)
    #dbg_value(i64 %arr.len, !4936, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4941)
    #dbg_value(i64 %arr.cap, !4936, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4941)
    #dbg_value(i64 %low, !4937, !DIExpression(), !4941)
    #dbg_value(i64 %high, !4938, !DIExpression(), !4941)
    #dbg_value(i64 %x, !4939, !DIExpression(), !4941)
    #dbg_value(i64 0, !4940, !DIExpression(), !4942)
    #dbg_value(i64 %x, !4939, !DIExpression(), !4943)
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4944)
    #dbg_value(i64 %low, !4937, !DIExpression(), !4945)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4946
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4946
  %3 = icmp uge i64 %low, %indexaddr.len, !dbg !4946
  br i1 %3, label %lookup.throw, label %lookup.next, !dbg !4946

lookup.next:                                      ; preds = %entry
  %4 = getelementptr inbounds i64, ptr %indexaddr.ptr, i64 %low, !dbg !4946
  %5 = load i64, ptr %4, align 8, !dbg !4946
  %6 = icmp sle i64 %x, %5, !dbg !4947
  br i1 %6, label %if.then, label %if.done, !dbg !4948

if.then:                                          ; preds = %lookup.next
    #dbg_value(i64 %low, !4937, !DIExpression(), !4949)
  ret i64 %low, !dbg !4950

if.done:                                          ; preds = %lookup.next
    #dbg_value(i64 %x, !4939, !DIExpression(), !4951)
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4952)
    #dbg_value(i64 %high, !4938, !DIExpression(), !4953)
  %indexaddr.ptr11 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4954
  %indexaddr.len12 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4954
  %7 = icmp uge i64 %high, %indexaddr.len12, !dbg !4954
  br i1 %7, label %lookup.throw13, label %lookup.next14, !dbg !4954

lookup.next14:                                    ; preds = %if.done
  %8 = getelementptr inbounds i64, ptr %indexaddr.ptr11, i64 %high, !dbg !4954
  %9 = load i64, ptr %8, align 8, !dbg !4954
  %10 = icmp sgt i64 %x, %9, !dbg !4955
  br i1 %10, label %if.then1, label %if.done2, !dbg !4948

if.then1:                                         ; preds = %lookup.next14
  ret i64 -1, !dbg !4956

if.done2:                                         ; preds = %lookup.next14
    #dbg_value(i64 %low, !4937, !DIExpression(), !4957)
    #dbg_value(i64 %high, !4938, !DIExpression(), !4958)
  %11 = add i64 %low, %high, !dbg !4959
  %12 = icmp eq i64 %11, -9223372036854775808, !dbg !4960
  %13 = and i1 false, %12, !dbg !4960
  %14 = select i1 %13, i64 1, i64 2, !dbg !4960
  %15 = sdiv i64 %11, %14, !dbg !4960
    #dbg_value(i64 %15, !4940, !DIExpression(), !4961)
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4962)
    #dbg_value(i64 %15, !4940, !DIExpression(), !4963)
  %indexaddr.ptr15 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4964
  %indexaddr.len16 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4964
  %16 = icmp uge i64 %15, %indexaddr.len16, !dbg !4964
  br i1 %16, label %lookup.throw17, label %lookup.next18, !dbg !4964

lookup.next18:                                    ; preds = %if.done2
  %17 = getelementptr inbounds i64, ptr %indexaddr.ptr15, i64 %15, !dbg !4964
  %18 = load i64, ptr %17, align 8, !dbg !4964
    #dbg_value(i64 %x, !4939, !DIExpression(), !4965)
  %19 = icmp eq i64 %18, %x, !dbg !4966
  br i1 %19, label %if.then3, label %if.else, !dbg !4948

if.then3:                                         ; preds = %lookup.next18
    #dbg_value(i64 %15, !4940, !DIExpression(), !4967)
  ret i64 %15, !dbg !4968

if.else:                                          ; preds = %lookup.next18
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4969)
    #dbg_value(i64 %15, !4940, !DIExpression(), !4970)
  %indexaddr.ptr19 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4971
  %indexaddr.len20 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4971
  %20 = icmp uge i64 %15, %indexaddr.len20, !dbg !4971
  br i1 %20, label %lookup.throw21, label %lookup.next22, !dbg !4971

lookup.next22:                                    ; preds = %if.else
  %21 = getelementptr inbounds i64, ptr %indexaddr.ptr19, i64 %15, !dbg !4971
  %22 = load i64, ptr %21, align 8, !dbg !4971
    #dbg_value(i64 %x, !4939, !DIExpression(), !4972)
  %23 = icmp slt i64 %22, %x, !dbg !4973
  br i1 %23, label %if.then4, label %if.else7, !dbg !4948

if.then4:                                         ; preds = %lookup.next22
    #dbg_value(i64 %15, !4940, !DIExpression(), !4974)
  %24 = add i64 %15, 1, !dbg !4975
    #dbg_value(i64 %high, !4938, !DIExpression(), !4976)
  %25 = icmp sle i64 %24, %high, !dbg !4977
  br i1 %25, label %cond.true, label %if.else6, !dbg !4948

cond.true:                                        ; preds = %if.then4
    #dbg_value(i64 %x, !4939, !DIExpression(), !4978)
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4979)
    #dbg_value(i64 %15, !4940, !DIExpression(), !4980)
  %26 = add i64 %15, 1, !dbg !4981
  %indexaddr.ptr23 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4982
  %indexaddr.len24 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4982
  %27 = icmp uge i64 %26, %indexaddr.len24, !dbg !4982
  br i1 %27, label %lookup.throw25, label %lookup.next26, !dbg !4982

lookup.next26:                                    ; preds = %cond.true
  %28 = getelementptr inbounds i64, ptr %indexaddr.ptr23, i64 %26, !dbg !4982
  %29 = load i64, ptr %28, align 8, !dbg !4982
  %30 = icmp sle i64 %x, %29, !dbg !4983
  br i1 %30, label %if.then5, label %if.else6, !dbg !4948

if.then5:                                         ; preds = %lookup.next26
    #dbg_value(i64 %15, !4940, !DIExpression(), !4984)
  %31 = add i64 %15, 1, !dbg !4985
  ret i64 %31, !dbg !4986

if.else6:                                         ; preds = %lookup.next26, %if.then4
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4987)
    #dbg_value(i64 %15, !4940, !DIExpression(), !4988)
  %32 = add i64 %15, 1, !dbg !4989
    #dbg_value(i64 %high, !4938, !DIExpression(), !4990)
    #dbg_value(i64 %x, !4939, !DIExpression(), !4991)
  %33 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4992
  %34 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4992
  %35 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !4992
  %36 = call i64 @f_gold(ptr %33, i64 %34, i64 %35, i64 %32, i64 %high, i64 %x), !dbg !4992
  ret i64 %36, !dbg !4993

if.else7:                                         ; preds = %lookup.next22
    #dbg_value(i64 %15, !4940, !DIExpression(), !4994)
  %37 = sub i64 %15, 1, !dbg !4995
    #dbg_value(i64 %low, !4937, !DIExpression(), !4996)
  %38 = icmp sge i64 %37, %low, !dbg !4997
  br i1 %38, label %cond.true8, label %if.else10, !dbg !4948

cond.true8:                                       ; preds = %if.else7
    #dbg_value(i64 %x, !4939, !DIExpression(), !4998)
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4999)
    #dbg_value(i64 %15, !4940, !DIExpression(), !5000)
  %39 = sub i64 %15, 1, !dbg !5001
  %indexaddr.ptr27 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !5002
  %indexaddr.len28 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !5002
  %40 = icmp uge i64 %39, %indexaddr.len28, !dbg !5002
  br i1 %40, label %lookup.throw29, label %lookup.next30, !dbg !5002

lookup.next30:                                    ; preds = %cond.true8
  %41 = getelementptr inbounds i64, ptr %indexaddr.ptr27, i64 %39, !dbg !5002
  %42 = load i64, ptr %41, align 8, !dbg !5002
  %43 = icmp sgt i64 %x, %42, !dbg !5003
  br i1 %43, label %if.then9, label %if.else10, !dbg !4948

if.then9:                                         ; preds = %lookup.next30
    #dbg_value(i64 %15, !4940, !DIExpression(), !5004)
  ret i64 %15, !dbg !5005

if.else10:                                        ; preds = %lookup.next30, %if.else7
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !5006)
    #dbg_value(i64 %low, !4937, !DIExpression(), !5007)
    #dbg_value(i64 %15, !4940, !DIExpression(), !5008)
  %44 = sub i64 %15, 1, !dbg !5009
    #dbg_value(i64 %x, !4939, !DIExpression(), !5010)
  %45 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !5011
  %46 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !5011
  %47 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !5011
  %48 = call i64 @f_gold(ptr %45, i64 %46, i64 %47, i64 %low, i64 %44, i64 %x), !dbg !5011
  ret i64 %48, !dbg !5012

lookup.throw:                                     ; preds = %entry
  call void @runtime.lookupPanic(ptr undef), !dbg !4946
  unreachable, !dbg !4946

lookup.throw13:                                   ; preds = %if.done
  call void @runtime.lookupPanic(ptr undef), !dbg !4954
  unreachable, !dbg !4954

lookup.throw17:                                   ; preds = %if.done2
  call void @runtime.lookupPanic(ptr undef), !dbg !4964
  unreachable, !dbg !4964

lookup.throw21:                                   ; preds = %if.else
  call void @runtime.lookupPanic(ptr undef), !dbg !4971
  unreachable, !dbg !4971

lookup.throw25:                                   ; preds = %cond.true
  call void @runtime.lookupPanic(ptr undef), !dbg !4982
  unreachable, !dbg !4982

lookup.throw29:                                   ; preds = %cond.true8
  call void @runtime.lookupPanic(ptr undef), !dbg !5002
  unreachable, !dbg !5002
}
