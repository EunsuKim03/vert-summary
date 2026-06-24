define i1 @f_gold(ptr nocapture %A.data, i64 %A.len, i64 %A.cap, i64 %arr_size, i64 %sum) #0 !dbg !33163 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %A.data, 0, !dbg !33171
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %A.len, 1, !dbg !33171
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %A.cap, 2, !dbg !33171
    #dbg_value(ptr %A.data, !33165, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !33171)
    #dbg_value(i64 %A.len, !33165, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !33171)
    #dbg_value(i64 %A.cap, !33165, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !33171)
    #dbg_value(i64 %arr_size, !33166, !DIExpression(), !33171)
    #dbg_value(i64 %sum, !33167, !DIExpression(), !33171)
    #dbg_value(i64 0, !33168, !DIExpression(), !33172)
    #dbg_value(i64 0, !33169, !DIExpression(), !33173)
    #dbg_value({ ptr, i64, i64 } %2, !33165, !DIExpression(), !33174)
  %3 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !33175
  %4 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !33175
  %5 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !33175
  call void @sort.Ints(ptr %3, i64 %4, i64 %5, ptr undef), !dbg !33175
    #dbg_value(i64 0, !33170, !DIExpression(), !33176)
  br label %for.loop, !dbg !33177

for.loop:                                         ; preds = %for.done, %entry
  %6 = phi i64 [ 0, %entry ], [ %63, %for.done ], !dbg !33176
    #dbg_value(i64 %6, !33170, !DIExpression(), !33178)
    #dbg_value(i64 %arr_size, !33166, !DIExpression(), !33179)
  %7 = sub i64 %arr_size, 2, !dbg !33180
  %8 = icmp slt i64 %6, %7, !dbg !33181
  br i1 %8, label %for.body, label %for.done5, !dbg !33177

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %6, !33170, !DIExpression(), !33182)
  %9 = add i64 %6, 1, !dbg !33183
    #dbg_value(i64 %9, !33168, !DIExpression(), !33184)
    #dbg_value(i64 %arr_size, !33166, !DIExpression(), !33185)
  %10 = sub i64 %arr_size, 1, !dbg !33186
    #dbg_value(i64 %10, !33169, !DIExpression(), !33187)
  br label %for.loop1, !dbg !33177

for.loop1:                                        ; preds = %if.else4, %if.then3, %for.body
  %11 = phi i64 [ %9, %for.body ], [ %61, %if.then3 ], [ %11, %if.else4 ], !dbg !33172
  %12 = phi i64 [ %10, %for.body ], [ %12, %if.then3 ], [ %62, %if.else4 ], !dbg !33173
    #dbg_value(i64 %11, !33168, !DIExpression(), !33188)
    #dbg_value(i64 %12, !33169, !DIExpression(), !33189)
  %13 = icmp slt i64 %11, %12, !dbg !33190
  br i1 %13, label %for.body2, label %for.done, !dbg !33177

for.body2:                                        ; preds = %for.loop1
    #dbg_value({ ptr, i64, i64 } %2, !33165, !DIExpression(), !33191)
    #dbg_value(i64 %6, !33170, !DIExpression(), !33192)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !33193
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !33193
  %14 = icmp uge i64 %6, %indexaddr.len, !dbg !33193
  br i1 %14, label %lookup.throw, label %lookup.next, !dbg !33193

lookup.next:                                      ; preds = %for.body2
  %15 = getelementptr inbounds i64, ptr %indexaddr.ptr, i64 %6, !dbg !33193
  %16 = load i64, ptr %15, align 8, !dbg !33193
    #dbg_value({ ptr, i64, i64 } %2, !33165, !DIExpression(), !33194)
    #dbg_value(i64 %11, !33168, !DIExpression(), !33195)
  %indexaddr.ptr6 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !33196
  %indexaddr.len7 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !33196
  %17 = icmp uge i64 %11, %indexaddr.len7, !dbg !33196
  br i1 %17, label %lookup.throw8, label %lookup.next9, !dbg !33196

lookup.next9:                                     ; preds = %lookup.next
  %18 = getelementptr inbounds i64, ptr %indexaddr.ptr6, i64 %11, !dbg !33196
  %19 = load i64, ptr %18, align 8, !dbg !33196
  %20 = add i64 %16, %19, !dbg !33197
    #dbg_value({ ptr, i64, i64 } %2, !33165, !DIExpression(), !33198)
    #dbg_value(i64 %12, !33169, !DIExpression(), !33199)
  %indexaddr.ptr10 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !33200
  %indexaddr.len11 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !33200
  %21 = icmp uge i64 %12, %indexaddr.len11, !dbg !33200
  br i1 %21, label %lookup.throw12, label %lookup.next13, !dbg !33200

lookup.next13:                                    ; preds = %lookup.next9
  %22 = getelementptr inbounds i64, ptr %indexaddr.ptr10, i64 %12, !dbg !33200
  %23 = load i64, ptr %22, align 8, !dbg !33200
  %24 = add i64 %20, %23, !dbg !33201
    #dbg_value(i64 %sum, !33167, !DIExpression(), !33202)
  %25 = icmp eq i64 %24, %sum, !dbg !33203
  br i1 %25, label %if.then, label %if.else, !dbg !33177

if.then:                                          ; preds = %lookup.next13
    #dbg_value({ ptr, i64, i64 } %2, !33165, !DIExpression(), !33204)
    #dbg_value(i64 %6, !33170, !DIExpression(), !33205)
  %indexaddr.ptr14 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !33206
  %indexaddr.len15 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !33206
  %26 = icmp uge i64 %6, %indexaddr.len15, !dbg !33206
  br i1 %26, label %lookup.throw16, label %lookup.next17, !dbg !33206

lookup.next17:                                    ; preds = %if.then
  %27 = getelementptr inbounds i64, ptr %indexaddr.ptr14, i64 %6, !dbg !33206
  %28 = load i64, ptr %27, align 8, !dbg !33206
    #dbg_value({ ptr, i64, i64 } %2, !33165, !DIExpression(), !33207)
    #dbg_value(i64 %11, !33168, !DIExpression(), !33208)
  %indexaddr.ptr18 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !33209
  %indexaddr.len19 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !33209
  %29 = icmp uge i64 %11, %indexaddr.len19, !dbg !33209
  br i1 %29, label %lookup.throw20, label %lookup.next21, !dbg !33209

lookup.next21:                                    ; preds = %lookup.next17
  %30 = getelementptr inbounds i64, ptr %indexaddr.ptr18, i64 %11, !dbg !33209
  %31 = load i64, ptr %30, align 8, !dbg !33209
    #dbg_value({ ptr, i64, i64 } %2, !33165, !DIExpression(), !33210)
    #dbg_value(i64 %12, !33169, !DIExpression(), !33211)
  %indexaddr.ptr22 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !33212
  %indexaddr.len23 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !33212
  %32 = icmp uge i64 %12, %indexaddr.len23, !dbg !33212
  br i1 %32, label %lookup.throw24, label %lookup.next25, !dbg !33212

lookup.next25:                                    ; preds = %lookup.next21
  %33 = getelementptr inbounds i64, ptr %indexaddr.ptr22, i64 %12, !dbg !33212
  %34 = load i64, ptr %33, align 8, !dbg !33212
  %varargs = call align 8 ptr @runtime.alloc(i64 64, ptr inttoptr (i64 389 to ptr), ptr undef), !dbg !33213
  %35 = getelementptr inbounds [4 x { ptr, ptr }], ptr %varargs, i32 0, i64 0, !dbg !33213
  store { ptr, ptr } { ptr @"reflect/types.type:basic:string", ptr @"main$pack" }, ptr %35, align 8, !dbg !33213
  %36 = getelementptr inbounds [4 x { ptr, ptr }], ptr %varargs, i32 0, i64 1, !dbg !33213
  %pack.int = inttoptr i64 %28 to ptr, !dbg !33206
  %37 = insertvalue { ptr, ptr } { ptr @"reflect/types.type:basic:int", ptr undef }, ptr %pack.int, 1, !dbg !33206
  store { ptr, ptr } %37, ptr %36, align 8, !dbg !33206
  %38 = getelementptr inbounds [4 x { ptr, ptr }], ptr %varargs, i32 0, i64 2, !dbg !33213
  %pack.int26 = inttoptr i64 %31 to ptr, !dbg !33209
  %39 = insertvalue { ptr, ptr } { ptr @"reflect/types.type:basic:int", ptr undef }, ptr %pack.int26, 1, !dbg !33209
  store { ptr, ptr } %39, ptr %38, align 8, !dbg !33209
  %40 = getelementptr inbounds [4 x { ptr, ptr }], ptr %varargs, i32 0, i64 3, !dbg !33213
  %pack.int27 = inttoptr i64 %34 to ptr, !dbg !33212
  %41 = insertvalue { ptr, ptr } { ptr @"reflect/types.type:basic:int", ptr undef }, ptr %pack.int27, 1, !dbg !33212
  store { ptr, ptr } %41, ptr %40, align 8, !dbg !33212
  %slice.ptr = getelementptr inbounds [4 x { ptr, ptr }], ptr %varargs, i32 0, i64 0, !dbg !33213
  %42 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr, 0, !dbg !33213
  %43 = insertvalue { ptr, i64, i64 } %42, i64 4, 1, !dbg !33213
  %44 = insertvalue { ptr, i64, i64 } %43, i64 4, 2, !dbg !33213
  %45 = extractvalue { ptr, i64, i64 } %44, 0, !dbg !33214
  %46 = extractvalue { ptr, i64, i64 } %44, 1, !dbg !33214
  %47 = extractvalue { ptr, i64, i64 } %44, 2, !dbg !33214
  %48 = call { i64, { ptr, ptr } } @fmt.Print(ptr %45, i64 %46, i64 %47, ptr undef), !dbg !33214
  ret i1 true, !dbg !33215

if.else:                                          ; preds = %lookup.next13
    #dbg_value({ ptr, i64, i64 } %2, !33165, !DIExpression(), !33216)
    #dbg_value(i64 %6, !33170, !DIExpression(), !33217)
  %indexaddr.ptr28 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !33218
  %indexaddr.len29 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !33218
  %49 = icmp uge i64 %6, %indexaddr.len29, !dbg !33218
  br i1 %49, label %lookup.throw30, label %lookup.next31, !dbg !33218

lookup.next31:                                    ; preds = %if.else
  %50 = getelementptr inbounds i64, ptr %indexaddr.ptr28, i64 %6, !dbg !33218
  %51 = load i64, ptr %50, align 8, !dbg !33218
    #dbg_value({ ptr, i64, i64 } %2, !33165, !DIExpression(), !33219)
    #dbg_value(i64 %11, !33168, !DIExpression(), !33220)
  %indexaddr.ptr32 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !33221
  %indexaddr.len33 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !33221
  %52 = icmp uge i64 %11, %indexaddr.len33, !dbg !33221
  br i1 %52, label %lookup.throw34, label %lookup.next35, !dbg !33221

lookup.next35:                                    ; preds = %lookup.next31
  %53 = getelementptr inbounds i64, ptr %indexaddr.ptr32, i64 %11, !dbg !33221
  %54 = load i64, ptr %53, align 8, !dbg !33221
  %55 = add i64 %51, %54, !dbg !33222
    #dbg_value({ ptr, i64, i64 } %2, !33165, !DIExpression(), !33223)
    #dbg_value(i64 %12, !33169, !DIExpression(), !33224)
  %indexaddr.ptr36 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !33225
  %indexaddr.len37 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !33225
  %56 = icmp uge i64 %12, %indexaddr.len37, !dbg !33225
  br i1 %56, label %lookup.throw38, label %lookup.next39, !dbg !33225

lookup.next39:                                    ; preds = %lookup.next35
  %57 = getelementptr inbounds i64, ptr %indexaddr.ptr36, i64 %12, !dbg !33225
  %58 = load i64, ptr %57, align 8, !dbg !33225
  %59 = add i64 %55, %58, !dbg !33226
    #dbg_value(i64 %sum, !33167, !DIExpression(), !33227)
  %60 = icmp slt i64 %59, %sum, !dbg !33228
  br i1 %60, label %if.then3, label %if.else4, !dbg !33177

if.then3:                                         ; preds = %lookup.next39
  %61 = add i64 %11, 1, !dbg !33229
    #dbg_value(i64 %61, !33168, !DIExpression(), !33229)
  br label %for.loop1, !dbg !33177

if.else4:                                         ; preds = %lookup.next39
  %62 = sub i64 %12, 1, !dbg !33230
    #dbg_value(i64 %62, !33169, !DIExpression(), !33230)
  br label %for.loop1, !dbg !33177

for.done:                                         ; preds = %for.loop1
  %63 = add i64 %6, 1, !dbg !33231
    #dbg_value(i64 %63, !33170, !DIExpression(), !33231)
  br label %for.loop, !dbg !33177

for.done5:                                        ; preds = %for.loop
  ret i1 false, !dbg !33232

lookup.throw:                                     ; preds = %for.body2
  call void @runtime.lookupPanic(ptr undef), !dbg !33193
  unreachable, !dbg !33193

lookup.throw8:                                    ; preds = %lookup.next
  call void @runtime.lookupPanic(ptr undef), !dbg !33196
  unreachable, !dbg !33196

lookup.throw12:                                   ; preds = %lookup.next9
  call void @runtime.lookupPanic(ptr undef), !dbg !33200
  unreachable, !dbg !33200

lookup.throw16:                                   ; preds = %if.then
  call void @runtime.lookupPanic(ptr undef), !dbg !33206
  unreachable, !dbg !33206

lookup.throw20:                                   ; preds = %lookup.next17
  call void @runtime.lookupPanic(ptr undef), !dbg !33209
  unreachable, !dbg !33209

lookup.throw24:                                   ; preds = %lookup.next21
  call void @runtime.lookupPanic(ptr undef), !dbg !33212
  unreachable, !dbg !33212

lookup.throw30:                                   ; preds = %if.else
  call void @runtime.lookupPanic(ptr undef), !dbg !33218
  unreachable, !dbg !33218

lookup.throw34:                                   ; preds = %lookup.next31
  call void @runtime.lookupPanic(ptr undef), !dbg !33221
  unreachable, !dbg !33221

lookup.throw38:                                   ; preds = %lookup.next35
  call void @runtime.lookupPanic(ptr undef), !dbg !33225
  unreachable, !dbg !33225
}
