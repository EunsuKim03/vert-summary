define range(i64 -4611686018427387904, 4611686018427387904) i64 @f_gold(ptr nocapture readonly %ar1.data, i64 %ar1.len, i64 %ar1.cap, ptr nocapture readonly %ar2.data, i64 %ar2.len, i64 %ar2.cap, i64 %n) local_unnamed_addr #4 !dbg !3109 {
entry:
    #dbg_value(ptr %ar1.data, !3118, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3126)
    #dbg_value(i64 %ar1.len, !3118, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3126)
    #dbg_value(i64 %ar1.cap, !3118, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3126)
    #dbg_value(ptr %ar2.data, !3119, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3126)
    #dbg_value(i64 %ar2.len, !3119, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3126)
    #dbg_value(i64 %ar2.cap, !3119, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3126)
    #dbg_value(i64 %n, !3120, !DIExpression(), !3126)
    #dbg_value(i64 0, !3121, !DIExpression(), !3127)
    #dbg_value(i64 0, !3122, !DIExpression(), !3128)
    #dbg_value(i64 0, !3123, !DIExpression(), !3129)
    #dbg_value(i64 -1, !3124, !DIExpression(), !3130)
    #dbg_value(i64 -1, !3125, !DIExpression(), !3131)
    #dbg_value(i64 0, !3123, !DIExpression(), !3132)
  %.not21 = icmp slt i64 %n, 0, !dbg !3133
  br i1 %.not21, label %for.done, label %for.body, !dbg !3134

for.body:                                         ; preds = %entry, %lookup.next16
  %0 = phi i64 [ %19, %lookup.next16 ], [ -1, %entry ]
  %1 = phi i64 [ %20, %lookup.next16 ], [ 0, %entry ]
  %2 = phi i64 [ %18, %lookup.next16 ], [ 0, %entry ]
  %3 = phi i64 [ %16, %lookup.next16 ], [ 0, %entry ]
    #dbg_value(i64 %1, !3123, !DIExpression(), !3135)
    #dbg_value(i64 %3, !3121, !DIExpression(), !3136)
    #dbg_value(i64 %n, !3120, !DIExpression(), !3137)
  %4 = icmp eq i64 %3, %n, !dbg !3138
  br i1 %4, label %if.then, label %if.else, !dbg !3134

if.then:                                          ; preds = %for.body
    #dbg_value(i64 %0, !3125, !DIExpression(), !3139)
    #dbg_value(i64 %0, !3124, !DIExpression(), !3140)
    #dbg_value({ ptr, i64, i64 } poison, !3119, !DIExpression(), !3141)
  %5 = icmp eq i64 %ar2.len, 0, !dbg !3142
  br i1 %5, label %lookup.throw, label %lookup.next, !dbg !3142

lookup.next:                                      ; preds = %if.then
  %6 = load i64, ptr %ar2.data, align 8, !dbg !3142
    #dbg_value(i64 %6, !3125, !DIExpression(), !3143)
  br label %for.done, !dbg !3134

if.else:                                          ; preds = %for.body
    #dbg_value(i64 %2, !3122, !DIExpression(), !3144)
    #dbg_value(i64 %n, !3120, !DIExpression(), !3145)
  %7 = icmp eq i64 %2, %n, !dbg !3146
  br i1 %7, label %if.then1, label %if.done, !dbg !3134

if.then1:                                         ; preds = %if.else
    #dbg_value(i64 %0, !3125, !DIExpression(), !3147)
    #dbg_value(i64 %0, !3124, !DIExpression(), !3148)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3149)
  %8 = icmp eq i64 %ar1.len, 0, !dbg !3150
  br i1 %8, label %lookup.throw7, label %lookup.next8, !dbg !3150

lookup.next8:                                     ; preds = %if.then1
  %9 = load i64, ptr %ar1.data, align 8, !dbg !3150
    #dbg_value(i64 %9, !3125, !DIExpression(), !3151)
  br label %for.done, !dbg !3134

if.done:                                          ; preds = %if.else
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3152)
    #dbg_value(i64 %3, !3121, !DIExpression(), !3153)
  %.not3 = icmp ult i64 %3, %ar1.len, !dbg !3154
  br i1 %.not3, label %lookup.next12, label %lookup.throw11, !dbg !3154

lookup.next12:                                    ; preds = %if.done
    #dbg_value({ ptr, i64, i64 } poison, !3119, !DIExpression(), !3155)
    #dbg_value(i64 %2, !3122, !DIExpression(), !3156)
  %.not4 = icmp ult i64 %2, %ar2.len, !dbg !3157
  br i1 %.not4, label %lookup.next16, label %lookup.throw15, !dbg !3157

lookup.next16:                                    ; preds = %lookup.next12
  %10 = getelementptr inbounds i64, ptr %ar1.data, i64 %3, !dbg !3154
  %11 = load i64, ptr %10, align 8, !dbg !3154
  %12 = getelementptr inbounds i64, ptr %ar2.data, i64 %2, !dbg !3157
  %13 = load i64, ptr %12, align 8, !dbg !3157
  %14 = icmp slt i64 %11, %13, !dbg !3158
  %15 = zext i1 %14 to i64, !dbg !3134
  %16 = add i64 %3, %15, !dbg !3134
  %not. = xor i1 %14, true, !dbg !3134
  %17 = zext i1 %not. to i64, !dbg !3134
  %18 = add i64 %2, %17, !dbg !3134
  %.val = load i64, ptr %10, align 8, !dbg !3134
  %.val11 = load i64, ptr %12, align 8, !dbg !3134
  %19 = select i1 %14, i64 %.val, i64 %.val11, !dbg !3134
  %20 = add i64 %1, 1, !dbg !3159
    #dbg_value(i64 %20, !3123, !DIExpression(), !3135)
    #dbg_value(i64 %n, !3120, !DIExpression(), !3160)
  %.not = icmp sgt i64 %20, %n, !dbg !3133
  br i1 %.not, label %for.done, label %for.body, !dbg !3134

for.done:                                         ; preds = %lookup.next16, %entry, %lookup.next8, %lookup.next
  %21 = phi i64 [ %0, %lookup.next ], [ %0, %lookup.next8 ], [ -1, %entry ], [ %0, %lookup.next16 ], !dbg !3130
  %22 = phi i64 [ %6, %lookup.next ], [ %9, %lookup.next8 ], [ -1, %entry ], [ %19, %lookup.next16 ], !dbg !3131
    #dbg_value(i64 %21, !3124, !DIExpression(), !3161)
    #dbg_value(i64 %22, !3125, !DIExpression(), !3162)
  %23 = add i64 %22, %21, !dbg !3163
  %24 = sdiv i64 %23, 2, !dbg !3164
  ret i64 %24, !dbg !3165

lookup.throw:                                     ; preds = %if.then
  call fastcc void @runtime.lookupPanic(), !dbg !3142
  unreachable, !dbg !3142

lookup.throw7:                                    ; preds = %if.then1
  call fastcc void @runtime.lookupPanic(), !dbg !3150
  unreachable, !dbg !3150

lookup.throw11:                                   ; preds = %if.done
  call fastcc void @runtime.lookupPanic(), !dbg !3154
  unreachable, !dbg !3154

lookup.throw15:                                   ; preds = %lookup.next12
  call fastcc void @runtime.lookupPanic(), !dbg !3157
  unreachable, !dbg !3157
}
