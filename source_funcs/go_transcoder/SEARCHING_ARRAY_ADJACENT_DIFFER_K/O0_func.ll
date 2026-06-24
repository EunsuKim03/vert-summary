define i64 @f_gold(ptr nocapture %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n, i64 %x, i64 %k) #0 !dbg !32233 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %arr.data, 0, !dbg !32242
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %arr.len, 1, !dbg !32242
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %arr.cap, 2, !dbg !32242
    #dbg_value(ptr %arr.data, !32237, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !32242)
    #dbg_value(i64 %arr.len, !32237, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !32242)
    #dbg_value(i64 %arr.cap, !32237, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !32242)
    #dbg_value(i64 %n, !32238, !DIExpression(), !32242)
    #dbg_value(i64 %x, !32239, !DIExpression(), !32242)
    #dbg_value(i64 %k, !32240, !DIExpression(), !32242)
    #dbg_value(i64 0, !32241, !DIExpression(), !32243)
  br label %for.loop, !dbg !32244

for.loop:                                         ; preds = %lookup.next4, %entry
  %3 = phi i64 [ 0, %entry ], [ %19, %lookup.next4 ], !dbg !32243
    #dbg_value(i64 %3, !32241, !DIExpression(), !32245)
    #dbg_value(i64 %n, !32238, !DIExpression(), !32246)
  %4 = icmp slt i64 %3, %n, !dbg !32247
  br i1 %4, label %for.body, label %for.done, !dbg !32244

for.body:                                         ; preds = %for.loop
    #dbg_value({ ptr, i64, i64 } %2, !32237, !DIExpression(), !32248)
    #dbg_value(i64 %3, !32241, !DIExpression(), !32249)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !32250
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !32250
  %5 = icmp uge i64 %3, %indexaddr.len, !dbg !32250
  br i1 %5, label %lookup.throw, label %lookup.next, !dbg !32250

lookup.next:                                      ; preds = %for.body
  %6 = getelementptr inbounds i64, ptr %indexaddr.ptr, i64 %3, !dbg !32250
  %7 = load i64, ptr %6, align 8, !dbg !32250
    #dbg_value(i64 %x, !32239, !DIExpression(), !32251)
  %8 = icmp eq i64 %7, %x, !dbg !32252
  br i1 %8, label %if.then, label %if.done, !dbg !32244

if.then:                                          ; preds = %lookup.next
    #dbg_value(i64 %3, !32241, !DIExpression(), !32253)
  ret i64 %3, !dbg !32254

if.done:                                          ; preds = %lookup.next
    #dbg_value(i64 %3, !32241, !DIExpression(), !32255)
    #dbg_value({ ptr, i64, i64 } %2, !32237, !DIExpression(), !32256)
    #dbg_value(i64 %3, !32241, !DIExpression(), !32257)
  %indexaddr.ptr1 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !32258
  %indexaddr.len2 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !32258
  %9 = icmp uge i64 %3, %indexaddr.len2, !dbg !32258
  br i1 %9, label %lookup.throw3, label %lookup.next4, !dbg !32258

lookup.next4:                                     ; preds = %if.done
  %10 = getelementptr inbounds i64, ptr %indexaddr.ptr1, i64 %3, !dbg !32258
  %11 = load i64, ptr %10, align 8, !dbg !32258
    #dbg_value(i64 %x, !32239, !DIExpression(), !32259)
  %12 = sub i64 %11, %x, !dbg !32260
  %13 = sitofp i64 %12 to double, !dbg !32261
  %14 = call double @math.Abs(double %13, ptr undef), !dbg !32262
    #dbg_value(i64 %k, !32240, !DIExpression(), !32263)
  %15 = sitofp i64 %k to double, !dbg !32264
  %16 = fdiv double %14, %15, !dbg !32265
  %abovemin = fcmp ole double 0xC3E0000000000000, %16, !dbg !32266
  %belowmax = fcmp ole double %16, 0x43DFFFFFFFFFFFFE, !dbg !32266
  %inbounds = and i1 %abovemin, %belowmax, !dbg !32266
  %saturated = select i1 %abovemin, i64 9223372036854775807, i64 -9223372036854775808, !dbg !32266
  %isnan = fcmp uno double %16, %16, !dbg !32266
  %remapped = select i1 %isnan, i64 0, i64 %saturated, !dbg !32266
  %normal = fptosi double %16 to i64, !dbg !32266
  %17 = select i1 %inbounds, i64 %normal, i64 %remapped, !dbg !32266
  %18 = call i64 @main.max(i64 1, i64 %17, ptr undef), !dbg !32267
  %19 = add i64 %3, %18, !dbg !32268
    #dbg_value(i64 %19, !32241, !DIExpression(), !32269)
  br label %for.loop, !dbg !32244

for.done:                                         ; preds = %for.loop
  %varargs = call align 8 ptr @runtime.alloc(i64 16, ptr inttoptr (i64 389 to ptr), ptr undef), !dbg !32270
  %20 = getelementptr inbounds [1 x { ptr, ptr }], ptr %varargs, i32 0, i64 0, !dbg !32270
  store { ptr, ptr } { ptr @"reflect/types.type:basic:string", ptr @"main$pack" }, ptr %20, align 8, !dbg !32270
  %slice.ptr = getelementptr inbounds [1 x { ptr, ptr }], ptr %varargs, i32 0, i64 0, !dbg !32270
  %21 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr, 0, !dbg !32270
  %22 = insertvalue { ptr, i64, i64 } %21, i64 1, 1, !dbg !32270
  %23 = insertvalue { ptr, i64, i64 } %22, i64 1, 2, !dbg !32270
  %24 = extractvalue { ptr, i64, i64 } %23, 0, !dbg !32271
  %25 = extractvalue { ptr, i64, i64 } %23, 1, !dbg !32271
  %26 = extractvalue { ptr, i64, i64 } %23, 2, !dbg !32271
  %27 = call { i64, { ptr, ptr } } @fmt.Print(ptr %24, i64 %25, i64 %26, ptr undef), !dbg !32271
  ret i64 -1, !dbg !32272

lookup.throw:                                     ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !32250
  unreachable, !dbg !32250

lookup.throw3:                                    ; preds = %if.done
  call void @runtime.lookupPanic(ptr undef), !dbg !32258
  unreachable, !dbg !32258
}
