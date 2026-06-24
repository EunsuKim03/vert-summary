define i64 @f_gold(ptr nocapture %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n) #1 !dbg !4952 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %arr.data, 0, !dbg !4968
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %arr.len, 1, !dbg !4968
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %arr.cap, 2, !dbg !4968
    #dbg_value(ptr %arr.data, !4961, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4968)
    #dbg_value(i64 %arr.len, !4961, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4968)
    #dbg_value(i64 %arr.cap, !4961, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4968)
    #dbg_value(i64 %n, !4962, !DIExpression(), !4968)
  %arr = call align 8 ptr @runtime.alloc(i64 24, ptr inttoptr (i64 135 to ptr), ptr undef), !dbg !4969
  store { ptr, i64, i64 } %2, ptr %arr, align 8, !dbg !4969
    #dbg_value(i64 0, !4963, !DIExpression(), !4970)
    #dbg_value(i64 0, !4964, !DIExpression(), !4971)
    #dbg_value(i64 0, !4965, !DIExpression(), !4972)
  br label %for.loop, !dbg !4973

for.loop:                                         ; preds = %if.done5, %entry
  %3 = phi i64 [ 0, %entry ], [ %55, %if.done5 ], !dbg !4970
  %4 = phi i64 [ 0, %entry ], [ %56, %if.done5 ], !dbg !4971
  %5 = phi i64 [ 0, %entry ], [ %57, %if.done5 ], !dbg !4972
    #dbg_value(i64 %5, !4965, !DIExpression(), !4974)
    #dbg_value(i64 %n, !4962, !DIExpression(), !4975)
  %6 = sub i64 %n, 1, !dbg !4976
  %7 = icmp sle i64 %5, %6, !dbg !4977
  br i1 %7, label %for.body, label %for.done6, !dbg !4973

for.body:                                         ; preds = %for.loop
    #dbg_value(i1 true, !4966, !DIExpression(), !4978)
  %j = call align 8 ptr @runtime.alloc(i64 8, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !4979
    #dbg_value(i64 %5, !4965, !DIExpression(), !4980)
  %8 = add i64 %5, 1, !dbg !4981
  store i64 %8, ptr %j, align 8, !dbg !4979
    #dbg_value(i64 %8, !4967, !DIExpression(), !4979)
  br label %for.loop1, !dbg !4973

for.loop1:                                        ; preds = %deref.next18, %for.body
  %9 = phi ptr [ %j, %for.body ], [ %j19, %deref.next18 ], !dbg !4979
  %10 = icmp eq ptr %9, null, !dbg !4982
  br i1 %10, label %deref.throw, label %deref.next, !dbg !4982

deref.next:                                       ; preds = %for.loop1
  %11 = load i64, ptr %9, align 8, !dbg !4982
    #dbg_value(i64 %11, !4967, !DIExpression(), !4982)
    #dbg_value(i64 %n, !4962, !DIExpression(), !4983)
  %12 = sub i64 %n, 1, !dbg !4984
  %13 = icmp sle i64 %11, %12, !dbg !4985
  br i1 %13, label %for.body2, label %for.done, !dbg !4973

for.body2:                                        ; preds = %deref.next
  %14 = load { ptr, i64, i64 }, ptr %arr, align 8, !dbg !4986
    #dbg_value({ ptr, i64, i64 } %14, !4961, !DIExpression(), !4986)
    #dbg_value(i64 %5, !4965, !DIExpression(), !4987)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %14, 0, !dbg !4988
  %indexaddr.len = extractvalue { ptr, i64, i64 } %14, 1, !dbg !4988
  %15 = icmp uge i64 %5, %indexaddr.len, !dbg !4988
  br i1 %15, label %lookup.throw, label %lookup.next, !dbg !4988

lookup.next:                                      ; preds = %for.body2
  %16 = getelementptr inbounds i64, ptr %indexaddr.ptr, i64 %5, !dbg !4988
  %17 = load i64, ptr %16, align 8, !dbg !4988
  %18 = load { ptr, i64, i64 }, ptr %arr, align 8, !dbg !4989
    #dbg_value({ ptr, i64, i64 } %18, !4961, !DIExpression(), !4989)
  %19 = icmp eq ptr %9, null, !dbg !4990
  br i1 %19, label %deref.throw7, label %deref.next8, !dbg !4990

deref.next8:                                      ; preds = %lookup.next
  %20 = load i64, ptr %9, align 8, !dbg !4990
    #dbg_value(i64 %20, !4967, !DIExpression(), !4990)
  %indexaddr.ptr9 = extractvalue { ptr, i64, i64 } %18, 0, !dbg !4991
  %indexaddr.len10 = extractvalue { ptr, i64, i64 } %18, 1, !dbg !4991
  %21 = icmp uge i64 %20, %indexaddr.len10, !dbg !4991
  br i1 %21, label %lookup.throw11, label %lookup.next12, !dbg !4991

lookup.next12:                                    ; preds = %deref.next8
  %22 = getelementptr inbounds i64, ptr %indexaddr.ptr9, i64 %20, !dbg !4991
  %23 = load i64, ptr %22, align 8, !dbg !4991
  %24 = icmp eq i64 %17, %23, !dbg !4992
  br i1 %24, label %if.then, label %if.done, !dbg !4973

if.then:                                          ; preds = %lookup.next12
    #dbg_value(i1 false, !4966, !DIExpression(), !4993)
  %25 = load { ptr, i64, i64 }, ptr %arr, align 8, !dbg !4994
    #dbg_value({ ptr, i64, i64 } %25, !4961, !DIExpression(), !4994)
    #dbg_value(i64 %5, !4965, !DIExpression(), !4995)
  %26 = call align 8 ptr @runtime.alloc(i64 16, ptr null, ptr undef), !dbg !4996
  %27 = getelementptr inbounds { ptr, ptr }, ptr %26, i32 0, i32 0, !dbg !4996
  store ptr %arr, ptr %27, align 8, !dbg !4996
  %28 = getelementptr inbounds { ptr, ptr }, ptr %26, i32 0, i32 1, !dbg !4996
  store ptr %9, ptr %28, align 8, !dbg !4996
  %29 = insertvalue { ptr, ptr } undef, ptr %26, 0, !dbg !4996
  %30 = insertvalue { ptr, ptr } %29, ptr @"main.f_gold$1", 1, !dbg !4996
  %31 = extractvalue { ptr, ptr } %30, 0, !dbg !4997
  %32 = call i64 @"main.f_gold$1"(ptr %31), !dbg !4997
  %indexaddr.ptr13 = extractvalue { ptr, i64, i64 } %25, 0, !dbg !4998
  %indexaddr.len14 = extractvalue { ptr, i64, i64 } %25, 1, !dbg !4998
  %33 = icmp uge i64 %5, %indexaddr.len14, !dbg !4998
  br i1 %33, label %lookup.throw15, label %lookup.next16, !dbg !4998

lookup.next16:                                    ; preds = %if.then
  %34 = getelementptr inbounds i64, ptr %indexaddr.ptr13, i64 %5, !dbg !4998
  store i64 %32, ptr %34, align 8, !dbg !4998
  br label %for.done, !dbg !4973

if.done:                                          ; preds = %lookup.next12
  %35 = icmp eq ptr %9, null, !dbg !4973
  br i1 %35, label %deref.throw17, label %deref.next18, !dbg !4973

deref.next18:                                     ; preds = %if.done
  %36 = load i64, ptr %9, align 8, !dbg !4973
  %j19 = call align 8 ptr @runtime.alloc(i64 8, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !4979
  store i64 %36, ptr %j19, align 8, !dbg !4979
  %37 = load i64, ptr %j19, align 8, !dbg !4999
  %38 = add i64 %37, 1, !dbg !4999
  store i64 %38, ptr %j19, align 8, !dbg !4999
    #dbg_value(i64 %38, !4967, !DIExpression(), !4999)
  br label %for.loop1, !dbg !4973

for.done:                                         ; preds = %lookup.next16, %deref.next
  %39 = phi i1 [ true, %deref.next ], [ false, %lookup.next16 ], !dbg !4978
    #dbg_value(i1 %39, !4966, !DIExpression(), !5000)
  br i1 %39, label %if.then3, label %if.done5, !dbg !4973

if.then3:                                         ; preds = %for.done
  %40 = load { ptr, i64, i64 }, ptr %arr, align 8, !dbg !5001
    #dbg_value({ ptr, i64, i64 } %40, !4961, !DIExpression(), !5001)
    #dbg_value(i64 %5, !4965, !DIExpression(), !5002)
  %indexaddr.ptr20 = extractvalue { ptr, i64, i64 } %40, 0, !dbg !5003
  %indexaddr.len21 = extractvalue { ptr, i64, i64 } %40, 1, !dbg !5003
  %41 = icmp uge i64 %5, %indexaddr.len21, !dbg !5003
  br i1 %41, label %lookup.throw22, label %lookup.next23, !dbg !5003

lookup.next23:                                    ; preds = %if.then3
  %42 = getelementptr inbounds i64, ptr %indexaddr.ptr20, i64 %5, !dbg !5003
  %43 = load i64, ptr %42, align 8, !dbg !5003
  %44 = icmp sgt i64 %43, 0, !dbg !5004
  br i1 %44, label %if.then4, label %if.else, !dbg !4973

if.then4:                                         ; preds = %lookup.next23
  %45 = load { ptr, i64, i64 }, ptr %arr, align 8, !dbg !5005
    #dbg_value({ ptr, i64, i64 } %45, !4961, !DIExpression(), !5005)
    #dbg_value(i64 %5, !4965, !DIExpression(), !5006)
  %indexaddr.ptr24 = extractvalue { ptr, i64, i64 } %45, 0, !dbg !5007
  %indexaddr.len25 = extractvalue { ptr, i64, i64 } %45, 1, !dbg !5007
  %46 = icmp uge i64 %5, %indexaddr.len25, !dbg !5007
  br i1 %46, label %lookup.throw26, label %lookup.next27, !dbg !5007

lookup.next27:                                    ; preds = %if.then4
  %47 = getelementptr inbounds i64, ptr %indexaddr.ptr24, i64 %5, !dbg !5007
  %48 = load i64, ptr %47, align 8, !dbg !5007
  %49 = add i64 %3, %48, !dbg !5008
    #dbg_value(i64 %49, !4963, !DIExpression(), !5008)
  br label %if.done5, !dbg !4973

if.else:                                          ; preds = %lookup.next23
  %50 = load { ptr, i64, i64 }, ptr %arr, align 8, !dbg !5009
    #dbg_value({ ptr, i64, i64 } %50, !4961, !DIExpression(), !5009)
    #dbg_value(i64 %5, !4965, !DIExpression(), !5010)
  %indexaddr.ptr28 = extractvalue { ptr, i64, i64 } %50, 0, !dbg !5011
  %indexaddr.len29 = extractvalue { ptr, i64, i64 } %50, 1, !dbg !5011
  %51 = icmp uge i64 %5, %indexaddr.len29, !dbg !5011
  br i1 %51, label %lookup.throw30, label %lookup.next31, !dbg !5011

lookup.next31:                                    ; preds = %if.else
  %52 = getelementptr inbounds i64, ptr %indexaddr.ptr28, i64 %5, !dbg !5011
  %53 = load i64, ptr %52, align 8, !dbg !5011
  %54 = add i64 %4, %53, !dbg !5012
    #dbg_value(i64 %54, !4964, !DIExpression(), !5012)
  br label %if.done5, !dbg !4973

if.done5:                                         ; preds = %lookup.next31, %lookup.next27, %for.done
  %55 = phi i64 [ %3, %for.done ], [ %49, %lookup.next27 ], [ %3, %lookup.next31 ], !dbg !4970
  %56 = phi i64 [ %4, %for.done ], [ %4, %lookup.next27 ], [ %54, %lookup.next31 ], !dbg !4971
  %57 = add i64 %5, 1, !dbg !5013
    #dbg_value(i64 %57, !4965, !DIExpression(), !5013)
  br label %for.loop, !dbg !4973

for.done6:                                        ; preds = %for.loop
    #dbg_value(i64 %3, !4963, !DIExpression(), !5014)
    #dbg_value(i64 %4, !4964, !DIExpression(), !5015)
  %58 = sub i64 %3, %4, !dbg !5016
  %59 = sitofp i64 %58 to double, !dbg !5017
  %60 = call double @math.Abs(double %59, ptr undef), !dbg !5018
  %abovemin = fcmp ole double 0xC3E0000000000000, %60, !dbg !5019
  %belowmax = fcmp ole double %60, 0x43DFFFFFFFFFFFFE, !dbg !5019
  %inbounds = and i1 %abovemin, %belowmax, !dbg !5019
  %saturated = select i1 %abovemin, i64 9223372036854775807, i64 -9223372036854775808, !dbg !5019
  %isnan = fcmp uno double %60, %60, !dbg !5019
  %remapped = select i1 %isnan, i64 0, i64 %saturated, !dbg !5019
  %normal = fptosi double %60 to i64, !dbg !5019
  %61 = select i1 %inbounds, i64 %normal, i64 %remapped, !dbg !5019
  ret i64 %61, !dbg !5020

deref.throw:                                      ; preds = %for.loop1
  call void @runtime.nilPanic(ptr undef), !dbg !4982
  unreachable, !dbg !4982

lookup.throw:                                     ; preds = %for.body2
  call void @runtime.lookupPanic(ptr undef), !dbg !4988
  unreachable, !dbg !4988

deref.throw7:                                     ; preds = %lookup.next
  call void @runtime.nilPanic(ptr undef), !dbg !4990
  unreachable, !dbg !4990

lookup.throw11:                                   ; preds = %deref.next8
  call void @runtime.lookupPanic(ptr undef), !dbg !4991
  unreachable, !dbg !4991

lookup.throw15:                                   ; preds = %if.then
  call void @runtime.lookupPanic(ptr undef), !dbg !4998
  unreachable, !dbg !4998

deref.throw17:                                    ; preds = %if.done
  call void @runtime.nilPanic(ptr undef), !dbg !4973
  unreachable, !dbg !4973

lookup.throw22:                                   ; preds = %if.then3
  call void @runtime.lookupPanic(ptr undef), !dbg !5003
  unreachable, !dbg !5003

lookup.throw26:                                   ; preds = %if.then4
  call void @runtime.lookupPanic(ptr undef), !dbg !5007
  unreachable, !dbg !5007

lookup.throw30:                                   ; preds = %if.else
  call void @runtime.lookupPanic(ptr undef), !dbg !5011
  unreachable, !dbg !5011
}
