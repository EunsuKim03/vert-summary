define i64 @f_gold(ptr nocapture %A.data, i64 %A.len, i64 %A.cap, ptr nocapture %B.data, i64 %B.len, i64 %B.cap, i64 %m, i64 %n) #1 !dbg !6117 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %A.data, 0, !dbg !6129
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %A.len, 1, !dbg !6129
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %A.cap, 2, !dbg !6129
    #dbg_value(ptr %A.data, !6122, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6129)
    #dbg_value(i64 %A.len, !6122, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6129)
    #dbg_value(i64 %A.cap, !6122, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6129)
  %3 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %B.data, 0, !dbg !6129
  %4 = insertvalue { ptr, i64, i64 } %3, i64 %B.len, 1, !dbg !6129
  %5 = insertvalue { ptr, i64, i64 } %4, i64 %B.cap, 2, !dbg !6129
    #dbg_value(ptr %B.data, !6123, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6129)
    #dbg_value(i64 %B.len, !6123, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6129)
    #dbg_value(i64 %B.cap, !6123, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6129)
    #dbg_value(i64 %m, !6124, !DIExpression(), !6129)
    #dbg_value(i64 %n, !6125, !DIExpression(), !6129)
    #dbg_value({ ptr, i64, i64 } %2, !6122, !DIExpression(), !6130)
  %6 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !6131
  %7 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !6131
  %8 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !6131
  call void @sort.Ints(ptr %6, i64 %7, i64 %8, ptr undef), !dbg !6131
    #dbg_value({ ptr, i64, i64 } %5, !6123, !DIExpression(), !6132)
  %9 = extractvalue { ptr, i64, i64 } %5, 0, !dbg !6133
  %10 = extractvalue { ptr, i64, i64 } %5, 1, !dbg !6133
  %11 = extractvalue { ptr, i64, i64 } %5, 2, !dbg !6133
  call void @sort.Ints(ptr %9, i64 %10, i64 %11, ptr undef), !dbg !6133
    #dbg_value(i64 0, !6126, !DIExpression(), !6134)
    #dbg_value(i64 0, !6127, !DIExpression(), !6135)
    #dbg_value(i64 9223372036854775807, !6128, !DIExpression(), !6136)
  br label %for.loop, !dbg !6137

for.loop:                                         ; preds = %if.else, %if.then1, %entry
  %12 = phi i64 [ 0, %entry ], [ %46, %if.then1 ], [ %12, %if.else ], !dbg !6134
  %13 = phi i64 [ 0, %entry ], [ %13, %if.then1 ], [ %47, %if.else ], !dbg !6135
  %14 = phi i64 [ 9223372036854775807, %entry ], [ %38, %if.then1 ], [ %38, %if.else ], !dbg !6136
    #dbg_value(i64 %12, !6126, !DIExpression(), !6138)
    #dbg_value(i64 %m, !6124, !DIExpression(), !6139)
  %15 = icmp slt i64 %12, %m, !dbg !6140
  br i1 %15, label %cond.true, label %for.done, !dbg !6137

cond.true:                                        ; preds = %for.loop
    #dbg_value(i64 %13, !6127, !DIExpression(), !6141)
    #dbg_value(i64 %n, !6125, !DIExpression(), !6142)
  %16 = icmp slt i64 %13, %n, !dbg !6143
  br i1 %16, label %for.body, label %for.done, !dbg !6137

for.body:                                         ; preds = %cond.true
    #dbg_value({ ptr, i64, i64 } %2, !6122, !DIExpression(), !6144)
    #dbg_value(i64 %12, !6126, !DIExpression(), !6145)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !6146
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !6146
  %17 = icmp uge i64 %12, %indexaddr.len, !dbg !6146
  br i1 %17, label %lookup.throw, label %lookup.next, !dbg !6146

lookup.next:                                      ; preds = %for.body
  %18 = getelementptr inbounds i64, ptr %indexaddr.ptr, i64 %12, !dbg !6146
  %19 = load i64, ptr %18, align 8, !dbg !6146
    #dbg_value({ ptr, i64, i64 } %5, !6123, !DIExpression(), !6147)
    #dbg_value(i64 %13, !6127, !DIExpression(), !6148)
  %indexaddr.ptr2 = extractvalue { ptr, i64, i64 } %5, 0, !dbg !6149
  %indexaddr.len3 = extractvalue { ptr, i64, i64 } %5, 1, !dbg !6149
  %20 = icmp uge i64 %13, %indexaddr.len3, !dbg !6149
  br i1 %20, label %lookup.throw4, label %lookup.next5, !dbg !6149

lookup.next5:                                     ; preds = %lookup.next
  %21 = getelementptr inbounds i64, ptr %indexaddr.ptr2, i64 %13, !dbg !6149
  %22 = load i64, ptr %21, align 8, !dbg !6149
  %23 = sub i64 %19, %22, !dbg !6150
  %24 = sitofp i64 %23 to double, !dbg !6151
  %25 = call double @math.Abs(double %24, ptr undef), !dbg !6152
    #dbg_value(i64 %14, !6128, !DIExpression(), !6153)
  %26 = sitofp i64 %14 to double, !dbg !6154
  %27 = fcmp olt double %25, %26, !dbg !6155
  br i1 %27, label %if.then, label %if.done, !dbg !6137

if.then:                                          ; preds = %lookup.next5
    #dbg_value({ ptr, i64, i64 } %2, !6122, !DIExpression(), !6156)
    #dbg_value(i64 %12, !6126, !DIExpression(), !6157)
  %indexaddr.ptr6 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !6158
  %indexaddr.len7 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !6158
  %28 = icmp uge i64 %12, %indexaddr.len7, !dbg !6158
  br i1 %28, label %lookup.throw8, label %lookup.next9, !dbg !6158

lookup.next9:                                     ; preds = %if.then
  %29 = getelementptr inbounds i64, ptr %indexaddr.ptr6, i64 %12, !dbg !6158
  %30 = load i64, ptr %29, align 8, !dbg !6158
    #dbg_value({ ptr, i64, i64 } %5, !6123, !DIExpression(), !6159)
    #dbg_value(i64 %13, !6127, !DIExpression(), !6160)
  %indexaddr.ptr10 = extractvalue { ptr, i64, i64 } %5, 0, !dbg !6161
  %indexaddr.len11 = extractvalue { ptr, i64, i64 } %5, 1, !dbg !6161
  %31 = icmp uge i64 %13, %indexaddr.len11, !dbg !6161
  br i1 %31, label %lookup.throw12, label %lookup.next13, !dbg !6161

lookup.next13:                                    ; preds = %lookup.next9
  %32 = getelementptr inbounds i64, ptr %indexaddr.ptr10, i64 %13, !dbg !6161
  %33 = load i64, ptr %32, align 8, !dbg !6161
  %34 = sub i64 %30, %33, !dbg !6162
  %35 = sitofp i64 %34 to double, !dbg !6163
  %36 = call double @math.Abs(double %35, ptr undef), !dbg !6164
  %abovemin = fcmp ole double 0xC3E0000000000000, %36, !dbg !6165
  %belowmax = fcmp ole double %36, 0x43DFFFFFFFFFFFFE, !dbg !6165
  %inbounds = and i1 %abovemin, %belowmax, !dbg !6165
  %saturated = select i1 %abovemin, i64 9223372036854775807, i64 -9223372036854775808, !dbg !6165
  %isnan = fcmp uno double %36, %36, !dbg !6165
  %remapped = select i1 %isnan, i64 0, i64 %saturated, !dbg !6165
  %normal = fptosi double %36 to i64, !dbg !6165
  %37 = select i1 %inbounds, i64 %normal, i64 %remapped, !dbg !6165
    #dbg_value(i64 %37, !6128, !DIExpression(), !6166)
  br label %if.done, !dbg !6137

if.done:                                          ; preds = %lookup.next13, %lookup.next5
  %38 = phi i64 [ %14, %lookup.next5 ], [ %37, %lookup.next13 ], !dbg !6136
    #dbg_value({ ptr, i64, i64 } %2, !6122, !DIExpression(), !6167)
    #dbg_value(i64 %12, !6126, !DIExpression(), !6168)
  %indexaddr.ptr14 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !6169
  %indexaddr.len15 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !6169
  %39 = icmp uge i64 %12, %indexaddr.len15, !dbg !6169
  br i1 %39, label %lookup.throw16, label %lookup.next17, !dbg !6169

lookup.next17:                                    ; preds = %if.done
  %40 = getelementptr inbounds i64, ptr %indexaddr.ptr14, i64 %12, !dbg !6169
  %41 = load i64, ptr %40, align 8, !dbg !6169
    #dbg_value({ ptr, i64, i64 } %5, !6123, !DIExpression(), !6170)
    #dbg_value(i64 %13, !6127, !DIExpression(), !6171)
  %indexaddr.ptr18 = extractvalue { ptr, i64, i64 } %5, 0, !dbg !6172
  %indexaddr.len19 = extractvalue { ptr, i64, i64 } %5, 1, !dbg !6172
  %42 = icmp uge i64 %13, %indexaddr.len19, !dbg !6172
  br i1 %42, label %lookup.throw20, label %lookup.next21, !dbg !6172

lookup.next21:                                    ; preds = %lookup.next17
  %43 = getelementptr inbounds i64, ptr %indexaddr.ptr18, i64 %13, !dbg !6172
  %44 = load i64, ptr %43, align 8, !dbg !6172
  %45 = icmp slt i64 %41, %44, !dbg !6173
  br i1 %45, label %if.then1, label %if.else, !dbg !6137

if.then1:                                         ; preds = %lookup.next21
  %46 = add i64 %12, 1, !dbg !6174
    #dbg_value(i64 %46, !6126, !DIExpression(), !6174)
  br label %for.loop, !dbg !6137

if.else:                                          ; preds = %lookup.next21
  %47 = add i64 %13, 1, !dbg !6175
    #dbg_value(i64 %47, !6127, !DIExpression(), !6175)
  br label %for.loop, !dbg !6137

for.done:                                         ; preds = %cond.true, %for.loop
    #dbg_value(i64 %14, !6128, !DIExpression(), !6176)
  ret i64 %14, !dbg !6177

lookup.throw:                                     ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !6146
  unreachable, !dbg !6146

lookup.throw4:                                    ; preds = %lookup.next
  call void @runtime.lookupPanic(ptr undef), !dbg !6149
  unreachable, !dbg !6149

lookup.throw8:                                    ; preds = %if.then
  call void @runtime.lookupPanic(ptr undef), !dbg !6158
  unreachable, !dbg !6158

lookup.throw12:                                   ; preds = %lookup.next9
  call void @runtime.lookupPanic(ptr undef), !dbg !6161
  unreachable, !dbg !6161

lookup.throw16:                                   ; preds = %if.done
  call void @runtime.lookupPanic(ptr undef), !dbg !6169
  unreachable, !dbg !6169

lookup.throw20:                                   ; preds = %lookup.next17
  call void @runtime.lookupPanic(ptr undef), !dbg !6172
  unreachable, !dbg !6172
}
