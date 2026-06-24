define i64 @f_gold(ptr nocapture %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n) #0 !dbg !32197 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %arr.data, 0, !dbg !32208
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %arr.len, 1, !dbg !32208
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %arr.cap, 2, !dbg !32208
    #dbg_value(ptr %arr.data, !32201, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !32208)
    #dbg_value(i64 %arr.len, !32201, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !32208)
    #dbg_value(i64 %arr.cap, !32201, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !32208)
    #dbg_value(i64 %n, !32202, !DIExpression(), !32208)
    #dbg_value(i64 0, !32203, !DIExpression(), !32209)
    #dbg_value(i64 -1, !32204, !DIExpression(), !32210)
    #dbg_value(i64 0, !32205, !DIExpression(), !32211)
    #dbg_value(i64 0, !32205, !DIExpression(), !32212)
    #dbg_value(i64 0, !32206, !DIExpression(), !32213)
  br label %for.loop, !dbg !32214

for.loop:                                         ; preds = %for.done, %entry
  %3 = phi i64 [ -1, %entry ], [ %14, %for.done ], !dbg !32210
  %4 = phi i64 [ 0, %entry ], [ %32, %for.done ], !dbg !32213
    #dbg_value(i64 %4, !32206, !DIExpression(), !32215)
    #dbg_value(i64 %n, !32202, !DIExpression(), !32216)
  %5 = sub i64 %n, 1, !dbg !32217
  %6 = icmp slt i64 %4, %5, !dbg !32218
  br i1 %6, label %for.body, label %for.done8, !dbg !32214

for.body:                                         ; preds = %for.loop
    #dbg_value({ ptr, i64, i64 } %2, !32201, !DIExpression(), !32219)
    #dbg_value(i64 %4, !32206, !DIExpression(), !32220)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !32221
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !32221
  %7 = icmp uge i64 %4, %indexaddr.len, !dbg !32221
  br i1 %7, label %lookup.throw, label %lookup.next, !dbg !32221

lookup.next:                                      ; preds = %for.body
  %8 = getelementptr inbounds i64, ptr %indexaddr.ptr, i64 %4, !dbg !32221
  %9 = load i64, ptr %8, align 8, !dbg !32221
  %10 = icmp eq i64 %9, 0, !dbg !32222
  br i1 %10, label %if.then, label %if.else7, !dbg !32214

if.then:                                          ; preds = %lookup.next
    #dbg_value(i64 -1, !32203, !DIExpression(), !32223)
  br label %if.done, !dbg !32214

if.done:                                          ; preds = %if.else7, %if.then
  %11 = phi i64 [ -1, %if.then ], [ 1, %if.else7 ], !dbg !32209
    #dbg_value(i64 %4, !32206, !DIExpression(), !32224)
  %12 = add i64 %4, 1, !dbg !32225
    #dbg_value(i64 %12, !32207, !DIExpression(), !32226)
  br label %for.loop1, !dbg !32214

for.loop1:                                        ; preds = %if.done6, %if.done
  %13 = phi i64 [ %11, %if.done ], [ %22, %if.done6 ], !dbg !32209
  %14 = phi i64 [ %3, %if.done ], [ %29, %if.done6 ], !dbg !32210
  %15 = phi i64 [ %12, %if.done ], [ %30, %if.done6 ], !dbg !32226
    #dbg_value(i64 %15, !32207, !DIExpression(), !32227)
    #dbg_value(i64 %n, !32202, !DIExpression(), !32228)
  %16 = icmp slt i64 %15, %n, !dbg !32229
  br i1 %16, label %for.body2, label %for.done, !dbg !32214

for.body2:                                        ; preds = %for.loop1
    #dbg_value({ ptr, i64, i64 } %2, !32201, !DIExpression(), !32230)
    #dbg_value(i64 %15, !32207, !DIExpression(), !32231)
  %indexaddr.ptr12 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !32232
  %indexaddr.len13 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !32232
  %17 = icmp uge i64 %15, %indexaddr.len13, !dbg !32232
  br i1 %17, label %lookup.throw14, label %lookup.next15, !dbg !32232

lookup.next15:                                    ; preds = %for.body2
  %18 = getelementptr inbounds i64, ptr %indexaddr.ptr12, i64 %15, !dbg !32232
  %19 = load i64, ptr %18, align 8, !dbg !32232
  %20 = icmp eq i64 %19, 0, !dbg !32233
  br i1 %20, label %if.then3, label %if.else, !dbg !32214

if.then3:                                         ; preds = %lookup.next15
  %21 = add i64 %13, -1, !dbg !32234
    #dbg_value(i64 %21, !32203, !DIExpression(), !32234)
  br label %if.done4, !dbg !32214

if.done4:                                         ; preds = %if.else, %if.then3
  %22 = phi i64 [ %21, %if.then3 ], [ %31, %if.else ], !dbg !32209
    #dbg_value(i64 %22, !32203, !DIExpression(), !32235)
  %23 = icmp eq i64 %22, 0, !dbg !32236
  br i1 %23, label %cond.true, label %if.done6, !dbg !32214

cond.true:                                        ; preds = %if.done4
    #dbg_value(i64 %14, !32204, !DIExpression(), !32237)
    #dbg_value(i64 %15, !32207, !DIExpression(), !32238)
    #dbg_value(i64 %4, !32206, !DIExpression(), !32239)
  %24 = sub i64 %15, %4, !dbg !32240
  %25 = add i64 %24, 1, !dbg !32241
  %26 = icmp slt i64 %14, %25, !dbg !32242
  br i1 %26, label %if.then5, label %if.done6, !dbg !32214

if.then5:                                         ; preds = %cond.true
    #dbg_value(i64 %15, !32207, !DIExpression(), !32243)
    #dbg_value(i64 %4, !32206, !DIExpression(), !32244)
  %27 = sub i64 %15, %4, !dbg !32245
  %28 = add i64 %27, 1, !dbg !32246
    #dbg_value(i64 %28, !32204, !DIExpression(), !32247)
    #dbg_value(i64 %4, !32206, !DIExpression(), !32248)
    #dbg_value(i64 %4, !32205, !DIExpression(), !32249)
  br label %if.done6, !dbg !32214

if.done6:                                         ; preds = %if.then5, %cond.true, %if.done4
  %29 = phi i64 [ %14, %if.done4 ], [ %14, %cond.true ], [ %28, %if.then5 ], !dbg !32210
  %30 = add i64 %15, 1, !dbg !32250
    #dbg_value(i64 %30, !32207, !DIExpression(), !32250)
  br label %for.loop1, !dbg !32214

if.else:                                          ; preds = %lookup.next15
  %31 = add i64 %13, 1, !dbg !32251
    #dbg_value(i64 %31, !32203, !DIExpression(), !32251)
  br label %if.done4, !dbg !32214

for.done:                                         ; preds = %for.loop1
  %32 = add i64 %4, 1, !dbg !32252
    #dbg_value(i64 %32, !32206, !DIExpression(), !32252)
  br label %for.loop, !dbg !32214

if.else7:                                         ; preds = %lookup.next
    #dbg_value(i64 1, !32203, !DIExpression(), !32253)
  br label %if.done, !dbg !32214

for.done8:                                        ; preds = %for.loop
    #dbg_value(i64 %3, !32204, !DIExpression(), !32254)
  %33 = icmp eq i64 %3, -1, !dbg !32255
  br i1 %33, label %if.then9, label %if.else11, !dbg !32214

if.then9:                                         ; preds = %for.done8
  %varargs = call align 8 ptr @runtime.alloc(i64 16, ptr inttoptr (i64 389 to ptr), ptr undef), !dbg !32256
  %34 = getelementptr inbounds [1 x { ptr, ptr }], ptr %varargs, i32 0, i64 0, !dbg !32256
  store { ptr, ptr } { ptr @"reflect/types.type:basic:string", ptr @"main$pack" }, ptr %34, align 8, !dbg !32256
  %slice.ptr = getelementptr inbounds [1 x { ptr, ptr }], ptr %varargs, i32 0, i64 0, !dbg !32256
  %35 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr, 0, !dbg !32256
  %36 = insertvalue { ptr, i64, i64 } %35, i64 1, 1, !dbg !32256
  %37 = insertvalue { ptr, i64, i64 } %36, i64 1, 2, !dbg !32256
  %38 = extractvalue { ptr, i64, i64 } %37, 0, !dbg !32257
  %39 = extractvalue { ptr, i64, i64 } %37, 1, !dbg !32257
  %40 = extractvalue { ptr, i64, i64 } %37, 2, !dbg !32257
  %41 = call { i64, { ptr, ptr } } @fmt.Print(ptr %38, i64 %39, i64 %40, ptr undef), !dbg !32257
  br label %if.done10, !dbg !32214

if.done10:                                        ; preds = %if.else11, %if.then9
    #dbg_value(i64 %3, !32204, !DIExpression(), !32258)
  ret i64 %3, !dbg !32259

if.else11:                                        ; preds = %for.done8
  %varargs16 = call align 8 ptr @runtime.alloc(i64 16, ptr inttoptr (i64 389 to ptr), ptr undef), !dbg !32260
  %42 = getelementptr inbounds [1 x { ptr, ptr }], ptr %varargs16, i32 0, i64 0, !dbg !32260
  store { ptr, ptr } { ptr @"reflect/types.type:basic:string", ptr @"main$pack.2" }, ptr %42, align 8, !dbg !32260
  %slice.ptr17 = getelementptr inbounds [1 x { ptr, ptr }], ptr %varargs16, i32 0, i64 0, !dbg !32260
  %43 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr17, 0, !dbg !32260
  %44 = insertvalue { ptr, i64, i64 } %43, i64 1, 1, !dbg !32260
  %45 = insertvalue { ptr, i64, i64 } %44, i64 1, 2, !dbg !32260
  %46 = extractvalue { ptr, i64, i64 } %45, 0, !dbg !32261
  %47 = extractvalue { ptr, i64, i64 } %45, 1, !dbg !32261
  %48 = extractvalue { ptr, i64, i64 } %45, 2, !dbg !32261
  %49 = call { i64, { ptr, ptr } } @fmt.Print(ptr %46, i64 %47, i64 %48, ptr undef), !dbg !32261
  br label %if.done10, !dbg !32214

lookup.throw:                                     ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !32221
  unreachable, !dbg !32221

lookup.throw14:                                   ; preds = %for.body2
  call void @runtime.lookupPanic(ptr undef), !dbg !32232
  unreachable, !dbg !32232
}
