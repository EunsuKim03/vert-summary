define i64 @f_gold(ptr nocapture %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n, i64 %x) #0 !dbg !4931 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %arr.data, 0, !dbg !4947
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %arr.len, 1, !dbg !4947
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %arr.cap, 2, !dbg !4947
    #dbg_value(ptr %arr.data, !4940, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4947)
    #dbg_value(i64 %arr.len, !4940, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4947)
    #dbg_value(i64 %arr.cap, !4940, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4947)
    #dbg_value(i64 %n, !4941, !DIExpression(), !4947)
    #dbg_value(i64 %x, !4942, !DIExpression(), !4947)
    #dbg_value(i64 0, !4943, !DIExpression(), !4948)
    #dbg_value(i64 0, !4943, !DIExpression(), !4949)
  br label %for.loop, !dbg !4950

for.loop:                                         ; preds = %if.done, %entry
  %3 = phi i64 [ 0, %entry ], [ %14, %if.done ], !dbg !4948
    #dbg_value(i64 %3, !4943, !DIExpression(), !4951)
    #dbg_value(i64 %n, !4941, !DIExpression(), !4952)
  %4 = sub i64 %n, 1, !dbg !4953
  %5 = icmp slt i64 %3, %4, !dbg !4954
  br i1 %5, label %for.body, label %for.done, !dbg !4950

for.body:                                         ; preds = %for.loop
    #dbg_value({ ptr, i64, i64 } %2, !4940, !DIExpression(), !4955)
    #dbg_value(i64 %3, !4943, !DIExpression(), !4956)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4957
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4957
  %6 = icmp uge i64 %3, %indexaddr.len, !dbg !4957
  br i1 %6, label %lookup.throw, label %lookup.next, !dbg !4957

lookup.next:                                      ; preds = %for.body
  %7 = getelementptr inbounds i64, ptr %indexaddr.ptr, i64 %3, !dbg !4957
  %8 = load i64, ptr %7, align 8, !dbg !4957
    #dbg_value({ ptr, i64, i64 } %2, !4940, !DIExpression(), !4958)
    #dbg_value(i64 %3, !4943, !DIExpression(), !4959)
  %9 = add i64 %3, 1, !dbg !4960
  %indexaddr.ptr8 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4961
  %indexaddr.len9 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4961
  %10 = icmp uge i64 %9, %indexaddr.len9, !dbg !4961
  br i1 %10, label %lookup.throw10, label %lookup.next11, !dbg !4961

lookup.next11:                                    ; preds = %lookup.next
  %11 = getelementptr inbounds i64, ptr %indexaddr.ptr8, i64 %9, !dbg !4961
  %12 = load i64, ptr %11, align 8, !dbg !4961
  %13 = icmp sgt i64 %8, %12, !dbg !4962
  br i1 %13, label %for.done, label %if.done, !dbg !4950

if.done:                                          ; preds = %lookup.next11
  %14 = add i64 %3, 1, !dbg !4963
    #dbg_value(i64 %14, !4943, !DIExpression(), !4963)
  br label %for.loop, !dbg !4950

for.done:                                         ; preds = %lookup.next11, %for.loop
    #dbg_value(i64 %3, !4943, !DIExpression(), !4964)
  %15 = add i64 %3, 1, !dbg !4965
    #dbg_value(i64 %n, !4941, !DIExpression(), !4966)
  %16 = icmp eq i64 %n, 0, !dbg !4967
  br i1 %16, label %divbyzero.throw, label %divbyzero.next, !dbg !4967

divbyzero.next:                                   ; preds = %for.done
  %17 = icmp eq i64 %n, -1, !dbg !4967
  %18 = icmp eq i64 %15, -9223372036854775808, !dbg !4967
  %19 = and i1 %17, %18, !dbg !4967
  %20 = select i1 %19, i64 1, i64 %n, !dbg !4967
  %21 = srem i64 %15, %20, !dbg !4967
    #dbg_value(i64 %21, !4944, !DIExpression(), !4968)
    #dbg_value(i64 %3, !4943, !DIExpression(), !4969)
    #dbg_value(i64 %3, !4945, !DIExpression(), !4970)
    #dbg_value(i64 0, !4946, !DIExpression(), !4971)
  br label %for.loop1, !dbg !4950

for.loop1:                                        ; preds = %divbyzero.next37, %divbyzero.next35, %divbyzero.next25, %divbyzero.next
  %22 = phi i64 [ %21, %divbyzero.next ], [ %50, %divbyzero.next25 ], [ %73, %divbyzero.next35 ], [ %22, %divbyzero.next37 ], !dbg !4968
  %23 = phi i64 [ %3, %divbyzero.next ], [ %58, %divbyzero.next25 ], [ %23, %divbyzero.next35 ], [ %81, %divbyzero.next37 ], !dbg !4970
  %24 = phi i64 [ 0, %divbyzero.next ], [ %34, %divbyzero.next25 ], [ %24, %divbyzero.next35 ], [ %24, %divbyzero.next37 ], !dbg !4971
    #dbg_value(i64 %22, !4944, !DIExpression(), !4972)
    #dbg_value(i64 %23, !4945, !DIExpression(), !4973)
  %25 = icmp ne i64 %22, %23, !dbg !4974
  br i1 %25, label %for.body2, label %for.done7, !dbg !4950

for.body2:                                        ; preds = %for.loop1
    #dbg_value({ ptr, i64, i64 } %2, !4940, !DIExpression(), !4975)
    #dbg_value(i64 %22, !4944, !DIExpression(), !4976)
  %indexaddr.ptr12 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4977
  %indexaddr.len13 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4977
  %26 = icmp uge i64 %22, %indexaddr.len13, !dbg !4977
  br i1 %26, label %lookup.throw14, label %lookup.next15, !dbg !4977

lookup.next15:                                    ; preds = %for.body2
  %27 = getelementptr inbounds i64, ptr %indexaddr.ptr12, i64 %22, !dbg !4977
  %28 = load i64, ptr %27, align 8, !dbg !4977
    #dbg_value({ ptr, i64, i64 } %2, !4940, !DIExpression(), !4978)
    #dbg_value(i64 %23, !4945, !DIExpression(), !4979)
  %indexaddr.ptr16 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4980
  %indexaddr.len17 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4980
  %29 = icmp uge i64 %23, %indexaddr.len17, !dbg !4980
  br i1 %29, label %lookup.throw18, label %lookup.next19, !dbg !4980

lookup.next19:                                    ; preds = %lookup.next15
  %30 = getelementptr inbounds i64, ptr %indexaddr.ptr16, i64 %23, !dbg !4980
  %31 = load i64, ptr %30, align 8, !dbg !4980
  %32 = add i64 %28, %31, !dbg !4981
    #dbg_value(i64 %x, !4942, !DIExpression(), !4982)
  %33 = icmp eq i64 %32, %x, !dbg !4983
  br i1 %33, label %if.then, label %if.else, !dbg !4950

if.then:                                          ; preds = %lookup.next19
  %34 = add i64 %24, 1, !dbg !4984
    #dbg_value(i64 %34, !4946, !DIExpression(), !4984)
    #dbg_value(i64 %22, !4944, !DIExpression(), !4985)
    #dbg_value(i64 %23, !4945, !DIExpression(), !4986)
  %35 = sub i64 %23, 1, !dbg !4987
    #dbg_value(i64 %n, !4941, !DIExpression(), !4988)
  %36 = add i64 %35, %n, !dbg !4989
    #dbg_value(i64 %n, !4941, !DIExpression(), !4990)
  %37 = icmp eq i64 %n, 0, !dbg !4991
  br i1 %37, label %divbyzero.throw20, label %divbyzero.next21, !dbg !4991

divbyzero.next21:                                 ; preds = %if.then
  %38 = icmp eq i64 %n, -1, !dbg !4991
  %39 = icmp eq i64 %36, -9223372036854775808, !dbg !4991
  %40 = and i1 %38, %39, !dbg !4991
  %41 = select i1 %40, i64 1, i64 %n, !dbg !4991
  %42 = srem i64 %36, %41, !dbg !4991
  %43 = icmp eq i64 %22, %42, !dbg !4992
  br i1 %43, label %if.then3, label %if.done4, !dbg !4950

if.then3:                                         ; preds = %divbyzero.next21
    #dbg_value(i64 %34, !4946, !DIExpression(), !4993)
  ret i64 %34, !dbg !4994

if.done4:                                         ; preds = %divbyzero.next21
    #dbg_value(i64 %22, !4944, !DIExpression(), !4995)
  %44 = add i64 %22, 1, !dbg !4996
    #dbg_value(i64 %n, !4941, !DIExpression(), !4997)
  %45 = icmp eq i64 %n, 0, !dbg !4998
  br i1 %45, label %divbyzero.throw22, label %divbyzero.next23, !dbg !4998

divbyzero.next23:                                 ; preds = %if.done4
  %46 = icmp eq i64 %n, -1, !dbg !4998
  %47 = icmp eq i64 %44, -9223372036854775808, !dbg !4998
  %48 = and i1 %46, %47, !dbg !4998
  %49 = select i1 %48, i64 1, i64 %n, !dbg !4998
  %50 = srem i64 %44, %49, !dbg !4998
    #dbg_value(i64 %50, !4944, !DIExpression(), !4999)
    #dbg_value(i64 %23, !4945, !DIExpression(), !5000)
  %51 = sub i64 %23, 1, !dbg !5001
    #dbg_value(i64 %n, !4941, !DIExpression(), !5002)
  %52 = add i64 %51, %n, !dbg !5003
    #dbg_value(i64 %n, !4941, !DIExpression(), !5004)
  %53 = icmp eq i64 %n, 0, !dbg !5005
  br i1 %53, label %divbyzero.throw24, label %divbyzero.next25, !dbg !5005

divbyzero.next25:                                 ; preds = %divbyzero.next23
  %54 = icmp eq i64 %n, -1, !dbg !5005
  %55 = icmp eq i64 %52, -9223372036854775808, !dbg !5005
  %56 = and i1 %54, %55, !dbg !5005
  %57 = select i1 %56, i64 1, i64 %n, !dbg !5005
  %58 = srem i64 %52, %57, !dbg !5005
    #dbg_value(i64 %58, !4945, !DIExpression(), !5006)
  br label %for.loop1, !dbg !4950

if.else:                                          ; preds = %lookup.next19
    #dbg_value({ ptr, i64, i64 } %2, !4940, !DIExpression(), !5007)
    #dbg_value(i64 %22, !4944, !DIExpression(), !5008)
  %indexaddr.ptr26 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !5009
  %indexaddr.len27 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !5009
  %59 = icmp uge i64 %22, %indexaddr.len27, !dbg !5009
  br i1 %59, label %lookup.throw28, label %lookup.next29, !dbg !5009

lookup.next29:                                    ; preds = %if.else
  %60 = getelementptr inbounds i64, ptr %indexaddr.ptr26, i64 %22, !dbg !5009
  %61 = load i64, ptr %60, align 8, !dbg !5009
    #dbg_value({ ptr, i64, i64 } %2, !4940, !DIExpression(), !5010)
    #dbg_value(i64 %23, !4945, !DIExpression(), !5011)
  %indexaddr.ptr30 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !5012
  %indexaddr.len31 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !5012
  %62 = icmp uge i64 %23, %indexaddr.len31, !dbg !5012
  br i1 %62, label %lookup.throw32, label %lookup.next33, !dbg !5012

lookup.next33:                                    ; preds = %lookup.next29
  %63 = getelementptr inbounds i64, ptr %indexaddr.ptr30, i64 %23, !dbg !5012
  %64 = load i64, ptr %63, align 8, !dbg !5012
  %65 = add i64 %61, %64, !dbg !5013
    #dbg_value(i64 %x, !4942, !DIExpression(), !5014)
  %66 = icmp slt i64 %65, %x, !dbg !5015
  br i1 %66, label %if.then5, label %if.else6, !dbg !4950

if.then5:                                         ; preds = %lookup.next33
    #dbg_value(i64 %22, !4944, !DIExpression(), !5016)
  %67 = add i64 %22, 1, !dbg !5017
    #dbg_value(i64 %n, !4941, !DIExpression(), !5018)
  %68 = icmp eq i64 %n, 0, !dbg !5019
  br i1 %68, label %divbyzero.throw34, label %divbyzero.next35, !dbg !5019

divbyzero.next35:                                 ; preds = %if.then5
  %69 = icmp eq i64 %n, -1, !dbg !5019
  %70 = icmp eq i64 %67, -9223372036854775808, !dbg !5019
  %71 = and i1 %69, %70, !dbg !5019
  %72 = select i1 %71, i64 1, i64 %n, !dbg !5019
  %73 = srem i64 %67, %72, !dbg !5019
    #dbg_value(i64 %73, !4944, !DIExpression(), !5020)
  br label %for.loop1, !dbg !4950

if.else6:                                         ; preds = %lookup.next33
    #dbg_value(i64 %n, !4941, !DIExpression(), !5021)
    #dbg_value(i64 %23, !4945, !DIExpression(), !5022)
  %74 = add i64 %n, %23, !dbg !5023
  %75 = sub i64 %74, 1, !dbg !5024
    #dbg_value(i64 %n, !4941, !DIExpression(), !5025)
  %76 = icmp eq i64 %n, 0, !dbg !5026
  br i1 %76, label %divbyzero.throw36, label %divbyzero.next37, !dbg !5026

divbyzero.next37:                                 ; preds = %if.else6
  %77 = icmp eq i64 %n, -1, !dbg !5026
  %78 = icmp eq i64 %75, -9223372036854775808, !dbg !5026
  %79 = and i1 %77, %78, !dbg !5026
  %80 = select i1 %79, i64 1, i64 %n, !dbg !5026
  %81 = srem i64 %75, %80, !dbg !5026
    #dbg_value(i64 %81, !4945, !DIExpression(), !5027)
  br label %for.loop1, !dbg !4950

for.done7:                                        ; preds = %for.loop1
    #dbg_value(i64 %24, !4946, !DIExpression(), !5028)
  ret i64 %24, !dbg !5029

lookup.throw:                                     ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !4957
  unreachable, !dbg !4957

lookup.throw10:                                   ; preds = %lookup.next
  call void @runtime.lookupPanic(ptr undef), !dbg !4961
  unreachable, !dbg !4961

divbyzero.throw:                                  ; preds = %for.done
  call void @runtime.divideByZeroPanic(ptr undef), !dbg !4967
  unreachable, !dbg !4967

lookup.throw14:                                   ; preds = %for.body2
  call void @runtime.lookupPanic(ptr undef), !dbg !4977
  unreachable, !dbg !4977

lookup.throw18:                                   ; preds = %lookup.next15
  call void @runtime.lookupPanic(ptr undef), !dbg !4980
  unreachable, !dbg !4980

divbyzero.throw20:                                ; preds = %if.then
  call void @runtime.divideByZeroPanic(ptr undef), !dbg !4991
  unreachable, !dbg !4991

divbyzero.throw22:                                ; preds = %if.done4
  call void @runtime.divideByZeroPanic(ptr undef), !dbg !4998
  unreachable, !dbg !4998

divbyzero.throw24:                                ; preds = %divbyzero.next23
  call void @runtime.divideByZeroPanic(ptr undef), !dbg !5005
  unreachable, !dbg !5005

lookup.throw28:                                   ; preds = %if.else
  call void @runtime.lookupPanic(ptr undef), !dbg !5009
  unreachable, !dbg !5009

lookup.throw32:                                   ; preds = %lookup.next29
  call void @runtime.lookupPanic(ptr undef), !dbg !5012
  unreachable, !dbg !5012

divbyzero.throw34:                                ; preds = %if.then5
  call void @runtime.divideByZeroPanic(ptr undef), !dbg !5019
  unreachable, !dbg !5019

divbyzero.throw36:                                ; preds = %if.else6
  call void @runtime.divideByZeroPanic(ptr undef), !dbg !5026
  unreachable, !dbg !5026
}
