define i64 @f_gold(ptr nocapture %a.data, i64 %a.len, i64 %a.cap, ptr nocapture %b.data, i64 %b.len, i64 %b.cap, i64 %n, i64 %k) #1 !dbg !4952 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %a.data, 0, !dbg !4971
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %a.len, 1, !dbg !4971
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %a.cap, 2, !dbg !4971
    #dbg_value(ptr %a.data, !4961, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4971)
    #dbg_value(i64 %a.len, !4961, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4971)
    #dbg_value(i64 %a.cap, !4961, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4971)
  %3 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %b.data, 0, !dbg !4971
  %4 = insertvalue { ptr, i64, i64 } %3, i64 %b.len, 1, !dbg !4971
  %5 = insertvalue { ptr, i64, i64 } %4, i64 %b.cap, 2, !dbg !4971
    #dbg_value(ptr %b.data, !4962, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4971)
    #dbg_value(i64 %b.len, !4962, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4971)
    #dbg_value(i64 %b.cap, !4962, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4971)
    #dbg_value(i64 %n, !4963, !DIExpression(), !4971)
    #dbg_value(i64 %k, !4964, !DIExpression(), !4971)
    #dbg_value(i64 0, !4965, !DIExpression(), !4972)
    #dbg_value(i64 0, !4966, !DIExpression(), !4973)
    #dbg_value(i64 0, !4967, !DIExpression(), !4974)
    #dbg_value(i64 0, !4968, !DIExpression(), !4975)
  br label %for.loop, !dbg !4976

for.loop:                                         ; preds = %if.done2, %entry
  %6 = phi i64 [ 0, %entry ], [ %39, %if.done2 ], !dbg !4972
  %7 = phi i64 [ 0, %entry ], [ %18, %if.done2 ], !dbg !4973
  %8 = phi i64 [ 0, %entry ], [ %33, %if.done2 ], !dbg !4974
  %9 = phi i64 [ 0, %entry ], [ %40, %if.done2 ], !dbg !4975
    #dbg_value(i64 %9, !4968, !DIExpression(), !4977)
    #dbg_value(i64 %n, !4963, !DIExpression(), !4978)
  %10 = icmp slt i64 %9, %n, !dbg !4979
  br i1 %10, label %for.body, label %for.done, !dbg !4976

for.body:                                         ; preds = %for.loop
    #dbg_value({ ptr, i64, i64 } %2, !4961, !DIExpression(), !4980)
    #dbg_value(i64 %9, !4968, !DIExpression(), !4981)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4982
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4982
  %11 = icmp uge i64 %9, %indexaddr.len, !dbg !4982
  br i1 %11, label %lookup.throw, label %lookup.next, !dbg !4982

lookup.next:                                      ; preds = %for.body
  %12 = getelementptr inbounds i64, ptr %indexaddr.ptr, i64 %9, !dbg !4982
  %13 = load i64, ptr %12, align 8, !dbg !4982
    #dbg_value({ ptr, i64, i64 } %5, !4962, !DIExpression(), !4983)
    #dbg_value(i64 %9, !4968, !DIExpression(), !4984)
  %indexaddr.ptr11 = extractvalue { ptr, i64, i64 } %5, 0, !dbg !4985
  %indexaddr.len12 = extractvalue { ptr, i64, i64 } %5, 1, !dbg !4985
  %14 = icmp uge i64 %9, %indexaddr.len12, !dbg !4985
  br i1 %14, label %lookup.throw13, label %lookup.next14, !dbg !4985

lookup.next14:                                    ; preds = %lookup.next
  %15 = getelementptr inbounds i64, ptr %indexaddr.ptr11, i64 %9, !dbg !4985
  %16 = load i64, ptr %15, align 8, !dbg !4985
  %17 = mul i64 %13, %16, !dbg !4986
    #dbg_value(i64 %17, !4969, !DIExpression(), !4987)
    #dbg_value(i64 %7, !4966, !DIExpression(), !4988)
    #dbg_value(i64 %17, !4969, !DIExpression(), !4989)
  %18 = add i64 %7, %17, !dbg !4990
    #dbg_value(i64 %18, !4966, !DIExpression(), !4991)
    #dbg_value(i64 %17, !4969, !DIExpression(), !4992)
  %19 = icmp slt i64 %17, 0, !dbg !4993
  br i1 %19, label %cond.true, label %if.else, !dbg !4976

cond.true:                                        ; preds = %lookup.next14
    #dbg_value({ ptr, i64, i64 } %5, !4962, !DIExpression(), !4994)
    #dbg_value(i64 %9, !4968, !DIExpression(), !4995)
  %indexaddr.ptr15 = extractvalue { ptr, i64, i64 } %5, 0, !dbg !4996
  %indexaddr.len16 = extractvalue { ptr, i64, i64 } %5, 1, !dbg !4996
  %20 = icmp uge i64 %9, %indexaddr.len16, !dbg !4996
  br i1 %20, label %lookup.throw17, label %lookup.next18, !dbg !4996

lookup.next18:                                    ; preds = %cond.true
  %21 = getelementptr inbounds i64, ptr %indexaddr.ptr15, i64 %9, !dbg !4996
  %22 = load i64, ptr %21, align 8, !dbg !4996
  %23 = icmp slt i64 %22, 0, !dbg !4997
  br i1 %23, label %if.then, label %if.else, !dbg !4976

if.then:                                          ; preds = %lookup.next18
    #dbg_value({ ptr, i64, i64 } %2, !4961, !DIExpression(), !4998)
    #dbg_value(i64 %9, !4968, !DIExpression(), !4999)
  %indexaddr.ptr19 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !5000
  %indexaddr.len20 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !5000
  %24 = icmp uge i64 %9, %indexaddr.len20, !dbg !5000
  br i1 %24, label %lookup.throw21, label %lookup.next22, !dbg !5000

lookup.next22:                                    ; preds = %if.then
  %25 = getelementptr inbounds i64, ptr %indexaddr.ptr19, i64 %9, !dbg !5000
  %26 = load i64, ptr %25, align 8, !dbg !5000
    #dbg_value(i64 %k, !4964, !DIExpression(), !5001)
  %27 = mul i64 %k, 2, !dbg !5002
  %28 = add i64 %26, %27, !dbg !5003
    #dbg_value({ ptr, i64, i64 } %5, !4962, !DIExpression(), !5004)
    #dbg_value(i64 %9, !4968, !DIExpression(), !5005)
  %indexaddr.ptr23 = extractvalue { ptr, i64, i64 } %5, 0, !dbg !5006
  %indexaddr.len24 = extractvalue { ptr, i64, i64 } %5, 1, !dbg !5006
  %29 = icmp uge i64 %9, %indexaddr.len24, !dbg !5006
  br i1 %29, label %lookup.throw25, label %lookup.next26, !dbg !5006

lookup.next26:                                    ; preds = %lookup.next22
  %30 = getelementptr inbounds i64, ptr %indexaddr.ptr23, i64 %9, !dbg !5006
  %31 = load i64, ptr %30, align 8, !dbg !5006
  %32 = mul i64 %28, %31, !dbg !5007
    #dbg_value(i64 %32, !4967, !DIExpression(), !5008)
  br label %if.done, !dbg !4976

if.done:                                          ; preds = %lookup.next62, %lookup.next54, %if.else8, %lookup.next50, %lookup.next38, %lookup.next26
  %33 = phi i64 [ %32, %lookup.next26 ], [ %54, %lookup.next38 ], [ %68, %lookup.next50 ], [ %8, %if.else8 ], [ %8, %lookup.next54 ], [ %82, %lookup.next62 ], !dbg !4974
    #dbg_value(i64 %17, !4969, !DIExpression(), !5009)
    #dbg_value(i64 %33, !4967, !DIExpression(), !5010)
  %34 = sub i64 %17, %33, !dbg !5011
  %35 = sitofp i64 %34 to double, !dbg !5012
  %36 = call double @math.Abs(double %35, ptr undef), !dbg !5013
  %abovemin = fcmp ole double 0xC3E0000000000000, %36, !dbg !5014
  %belowmax = fcmp ole double %36, 0x43DFFFFFFFFFFFFE, !dbg !5014
  %inbounds = and i1 %abovemin, %belowmax, !dbg !5014
  %saturated = select i1 %abovemin, i64 9223372036854775807, i64 -9223372036854775808, !dbg !5014
  %isnan = fcmp uno double %36, %36, !dbg !5014
  %remapped = select i1 %isnan, i64 0, i64 %saturated, !dbg !5014
  %normal = fptosi double %36 to i64, !dbg !5014
  %37 = select i1 %inbounds, i64 %normal, i64 %remapped, !dbg !5014
    #dbg_value(i64 %37, !4970, !DIExpression(), !5015)
    #dbg_value(i64 %37, !4970, !DIExpression(), !5016)
    #dbg_value(i64 %6, !4965, !DIExpression(), !5017)
  %38 = icmp sgt i64 %37, %6, !dbg !5018
  br i1 %38, label %if.then1, label %if.done2, !dbg !4976

if.then1:                                         ; preds = %if.done
    #dbg_value(i64 %37, !4970, !DIExpression(), !5019)
    #dbg_value(i64 %37, !4965, !DIExpression(), !5020)
  br label %if.done2, !dbg !4976

if.done2:                                         ; preds = %if.then1, %if.done
  %39 = phi i64 [ %6, %if.done ], [ %37, %if.then1 ], !dbg !4972
  %40 = add i64 %9, 1, !dbg !5021
    #dbg_value(i64 %40, !4968, !DIExpression(), !5021)
  br label %for.loop, !dbg !4976

if.else:                                          ; preds = %lookup.next18, %lookup.next14
    #dbg_value(i64 %17, !4969, !DIExpression(), !5022)
  %41 = icmp slt i64 %17, 0, !dbg !5023
  br i1 %41, label %cond.true3, label %if.else5, !dbg !4976

cond.true3:                                       ; preds = %if.else
    #dbg_value({ ptr, i64, i64 } %2, !4961, !DIExpression(), !5024)
    #dbg_value(i64 %9, !4968, !DIExpression(), !5025)
  %indexaddr.ptr27 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !5026
  %indexaddr.len28 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !5026
  %42 = icmp uge i64 %9, %indexaddr.len28, !dbg !5026
  br i1 %42, label %lookup.throw29, label %lookup.next30, !dbg !5026

lookup.next30:                                    ; preds = %cond.true3
  %43 = getelementptr inbounds i64, ptr %indexaddr.ptr27, i64 %9, !dbg !5026
  %44 = load i64, ptr %43, align 8, !dbg !5026
  %45 = icmp slt i64 %44, 0, !dbg !5027
  br i1 %45, label %if.then4, label %if.else5, !dbg !4976

if.then4:                                         ; preds = %lookup.next30
    #dbg_value({ ptr, i64, i64 } %2, !4961, !DIExpression(), !5028)
    #dbg_value(i64 %9, !4968, !DIExpression(), !5029)
  %indexaddr.ptr31 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !5030
  %indexaddr.len32 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !5030
  %46 = icmp uge i64 %9, %indexaddr.len32, !dbg !5030
  br i1 %46, label %lookup.throw33, label %lookup.next34, !dbg !5030

lookup.next34:                                    ; preds = %if.then4
  %47 = getelementptr inbounds i64, ptr %indexaddr.ptr31, i64 %9, !dbg !5030
  %48 = load i64, ptr %47, align 8, !dbg !5030
    #dbg_value(i64 %k, !4964, !DIExpression(), !5031)
  %49 = mul i64 %k, 2, !dbg !5032
  %50 = sub i64 %48, %49, !dbg !5033
    #dbg_value({ ptr, i64, i64 } %5, !4962, !DIExpression(), !5034)
    #dbg_value(i64 %9, !4968, !DIExpression(), !5035)
  %indexaddr.ptr35 = extractvalue { ptr, i64, i64 } %5, 0, !dbg !5036
  %indexaddr.len36 = extractvalue { ptr, i64, i64 } %5, 1, !dbg !5036
  %51 = icmp uge i64 %9, %indexaddr.len36, !dbg !5036
  br i1 %51, label %lookup.throw37, label %lookup.next38, !dbg !5036

lookup.next38:                                    ; preds = %lookup.next34
  %52 = getelementptr inbounds i64, ptr %indexaddr.ptr35, i64 %9, !dbg !5036
  %53 = load i64, ptr %52, align 8, !dbg !5036
  %54 = mul i64 %50, %53, !dbg !5037
    #dbg_value(i64 %54, !4967, !DIExpression(), !5038)
  br label %if.done, !dbg !4976

if.else5:                                         ; preds = %lookup.next30, %if.else
    #dbg_value(i64 %17, !4969, !DIExpression(), !5039)
  %55 = icmp sgt i64 %17, 0, !dbg !5040
  br i1 %55, label %cond.true6, label %if.else8, !dbg !4976

cond.true6:                                       ; preds = %if.else5
    #dbg_value({ ptr, i64, i64 } %2, !4961, !DIExpression(), !5041)
    #dbg_value(i64 %9, !4968, !DIExpression(), !5042)
  %indexaddr.ptr39 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !5043
  %indexaddr.len40 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !5043
  %56 = icmp uge i64 %9, %indexaddr.len40, !dbg !5043
  br i1 %56, label %lookup.throw41, label %lookup.next42, !dbg !5043

lookup.next42:                                    ; preds = %cond.true6
  %57 = getelementptr inbounds i64, ptr %indexaddr.ptr39, i64 %9, !dbg !5043
  %58 = load i64, ptr %57, align 8, !dbg !5043
  %59 = icmp slt i64 %58, 0, !dbg !5044
  br i1 %59, label %if.then7, label %if.else8, !dbg !4976

if.then7:                                         ; preds = %lookup.next42
    #dbg_value({ ptr, i64, i64 } %2, !4961, !DIExpression(), !5045)
    #dbg_value(i64 %9, !4968, !DIExpression(), !5046)
  %indexaddr.ptr43 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !5047
  %indexaddr.len44 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !5047
  %60 = icmp uge i64 %9, %indexaddr.len44, !dbg !5047
  br i1 %60, label %lookup.throw45, label %lookup.next46, !dbg !5047

lookup.next46:                                    ; preds = %if.then7
  %61 = getelementptr inbounds i64, ptr %indexaddr.ptr43, i64 %9, !dbg !5047
  %62 = load i64, ptr %61, align 8, !dbg !5047
    #dbg_value(i64 %k, !4964, !DIExpression(), !5048)
  %63 = mul i64 %k, 2, !dbg !5049
  %64 = add i64 %62, %63, !dbg !5050
    #dbg_value({ ptr, i64, i64 } %5, !4962, !DIExpression(), !5051)
    #dbg_value(i64 %9, !4968, !DIExpression(), !5052)
  %indexaddr.ptr47 = extractvalue { ptr, i64, i64 } %5, 0, !dbg !5053
  %indexaddr.len48 = extractvalue { ptr, i64, i64 } %5, 1, !dbg !5053
  %65 = icmp uge i64 %9, %indexaddr.len48, !dbg !5053
  br i1 %65, label %lookup.throw49, label %lookup.next50, !dbg !5053

lookup.next50:                                    ; preds = %lookup.next46
  %66 = getelementptr inbounds i64, ptr %indexaddr.ptr47, i64 %9, !dbg !5053
  %67 = load i64, ptr %66, align 8, !dbg !5053
  %68 = mul i64 %64, %67, !dbg !5054
    #dbg_value(i64 %68, !4967, !DIExpression(), !5055)
  br label %if.done, !dbg !4976

if.else8:                                         ; preds = %lookup.next42, %if.else5
    #dbg_value(i64 %17, !4969, !DIExpression(), !5056)
  %69 = icmp sgt i64 %17, 0, !dbg !5057
  br i1 %69, label %cond.true9, label %if.done, !dbg !4976

cond.true9:                                       ; preds = %if.else8
    #dbg_value({ ptr, i64, i64 } %2, !4961, !DIExpression(), !5058)
    #dbg_value(i64 %9, !4968, !DIExpression(), !5059)
  %indexaddr.ptr51 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !5060
  %indexaddr.len52 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !5060
  %70 = icmp uge i64 %9, %indexaddr.len52, !dbg !5060
  br i1 %70, label %lookup.throw53, label %lookup.next54, !dbg !5060

lookup.next54:                                    ; preds = %cond.true9
  %71 = getelementptr inbounds i64, ptr %indexaddr.ptr51, i64 %9, !dbg !5060
  %72 = load i64, ptr %71, align 8, !dbg !5060
  %73 = icmp sgt i64 %72, 0, !dbg !5061
  br i1 %73, label %if.then10, label %if.done, !dbg !4976

if.then10:                                        ; preds = %lookup.next54
    #dbg_value({ ptr, i64, i64 } %2, !4961, !DIExpression(), !5062)
    #dbg_value(i64 %9, !4968, !DIExpression(), !5063)
  %indexaddr.ptr55 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !5064
  %indexaddr.len56 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !5064
  %74 = icmp uge i64 %9, %indexaddr.len56, !dbg !5064
  br i1 %74, label %lookup.throw57, label %lookup.next58, !dbg !5064

lookup.next58:                                    ; preds = %if.then10
  %75 = getelementptr inbounds i64, ptr %indexaddr.ptr55, i64 %9, !dbg !5064
  %76 = load i64, ptr %75, align 8, !dbg !5064
    #dbg_value(i64 %k, !4964, !DIExpression(), !5065)
  %77 = mul i64 %k, 2, !dbg !5066
  %78 = sub i64 %76, %77, !dbg !5067
    #dbg_value({ ptr, i64, i64 } %5, !4962, !DIExpression(), !5068)
    #dbg_value(i64 %9, !4968, !DIExpression(), !5069)
  %indexaddr.ptr59 = extractvalue { ptr, i64, i64 } %5, 0, !dbg !5070
  %indexaddr.len60 = extractvalue { ptr, i64, i64 } %5, 1, !dbg !5070
  %79 = icmp uge i64 %9, %indexaddr.len60, !dbg !5070
  br i1 %79, label %lookup.throw61, label %lookup.next62, !dbg !5070

lookup.next62:                                    ; preds = %lookup.next58
  %80 = getelementptr inbounds i64, ptr %indexaddr.ptr59, i64 %9, !dbg !5070
  %81 = load i64, ptr %80, align 8, !dbg !5070
  %82 = mul i64 %78, %81, !dbg !5071
    #dbg_value(i64 %82, !4967, !DIExpression(), !5072)
  br label %if.done, !dbg !4976

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %7, !4966, !DIExpression(), !5073)
    #dbg_value(i64 %6, !4965, !DIExpression(), !5074)
  %83 = sub i64 %7, %6, !dbg !5075
  ret i64 %83, !dbg !5076

lookup.throw:                                     ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !4982
  unreachable, !dbg !4982

lookup.throw13:                                   ; preds = %lookup.next
  call void @runtime.lookupPanic(ptr undef), !dbg !4985
  unreachable, !dbg !4985

lookup.throw17:                                   ; preds = %cond.true
  call void @runtime.lookupPanic(ptr undef), !dbg !4996
  unreachable, !dbg !4996

lookup.throw21:                                   ; preds = %if.then
  call void @runtime.lookupPanic(ptr undef), !dbg !5000
  unreachable, !dbg !5000

lookup.throw25:                                   ; preds = %lookup.next22
  call void @runtime.lookupPanic(ptr undef), !dbg !5006
  unreachable, !dbg !5006

lookup.throw29:                                   ; preds = %cond.true3
  call void @runtime.lookupPanic(ptr undef), !dbg !5026
  unreachable, !dbg !5026

lookup.throw33:                                   ; preds = %if.then4
  call void @runtime.lookupPanic(ptr undef), !dbg !5030
  unreachable, !dbg !5030

lookup.throw37:                                   ; preds = %lookup.next34
  call void @runtime.lookupPanic(ptr undef), !dbg !5036
  unreachable, !dbg !5036

lookup.throw41:                                   ; preds = %cond.true6
  call void @runtime.lookupPanic(ptr undef), !dbg !5043
  unreachable, !dbg !5043

lookup.throw45:                                   ; preds = %if.then7
  call void @runtime.lookupPanic(ptr undef), !dbg !5047
  unreachable, !dbg !5047

lookup.throw49:                                   ; preds = %lookup.next46
  call void @runtime.lookupPanic(ptr undef), !dbg !5053
  unreachable, !dbg !5053

lookup.throw53:                                   ; preds = %cond.true9
  call void @runtime.lookupPanic(ptr undef), !dbg !5060
  unreachable, !dbg !5060

lookup.throw57:                                   ; preds = %if.then10
  call void @runtime.lookupPanic(ptr undef), !dbg !5064
  unreachable, !dbg !5064

lookup.throw61:                                   ; preds = %lookup.next58
  call void @runtime.lookupPanic(ptr undef), !dbg !5070
  unreachable, !dbg !5070
}
