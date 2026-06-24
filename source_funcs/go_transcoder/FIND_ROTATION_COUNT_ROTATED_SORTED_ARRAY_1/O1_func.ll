define i64 @f_gold(ptr nocapture readonly %arr.data, i64 %arr.len, i64 %arr.cap, i64 %low, i64 %high) local_unnamed_addr #4 !dbg !3109 {
entry:
    #dbg_value(ptr %arr.data, !3118, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3122)
    #dbg_value(i64 %arr.len, !3118, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3122)
    #dbg_value(i64 %arr.cap, !3118, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3122)
    #dbg_value(i64 %low, !3119, !DIExpression(), !3122)
    #dbg_value(i64 %high, !3120, !DIExpression(), !3122)
    #dbg_value(i64 %high, !3120, !DIExpression(), !3123)
    #dbg_value(i64 %low, !3119, !DIExpression(), !3124)
  %0 = icmp slt i64 %high, %low, !dbg !3125
  br i1 %0, label %common.ret, label %if.done, !dbg !3126

common.ret:                                       ; preds = %lookup.next13, %lookup.next21, %if.done, %entry, %if.done9, %if.then8
  %common.ret.op = phi i64 [ %25, %if.then8 ], [ %27, %if.done9 ], [ 0, %entry ], [ %low, %if.done ], [ %4, %lookup.next21 ], [ %6, %lookup.next13 ]
  ret i64 %common.ret.op, !dbg !3126

if.done:                                          ; preds = %entry
    #dbg_value(i64 %high, !3120, !DIExpression(), !3127)
    #dbg_value(i64 %low, !3119, !DIExpression(), !3128)
  %1 = icmp eq i64 %high, %low, !dbg !3129
  br i1 %1, label %common.ret, label %if.done2, !dbg !3126

if.done2:                                         ; preds = %if.done
    #dbg_value(i64 %low, !3119, !DIExpression(), !3130)
    #dbg_value(i64 %high, !3120, !DIExpression(), !3131)
    #dbg_value(i64 %low, !3119, !DIExpression(), !3132)
  %2 = sub i64 %high, %low, !dbg !3133
  %3 = sdiv i64 %2, 2, !dbg !3134
  %4 = add i64 %3, %low, !dbg !3135
    #dbg_value(i64 %4, !3121, !DIExpression(), !3136)
    #dbg_value(i64 %4, !3121, !DIExpression(), !3137)
    #dbg_value(i64 %high, !3120, !DIExpression(), !3138)
  %5 = icmp slt i64 %4, %high, !dbg !3139
  br i1 %5, label %cond.true, label %if.done4, !dbg !3126

cond.true:                                        ; preds = %if.done2
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3140)
    #dbg_value(i64 %4, !3121, !DIExpression(), !3141)
  %6 = add i64 %4, 1, !dbg !3142
  %.not = icmp ult i64 %6, %arr.len, !dbg !3143
  br i1 %.not, label %lookup.next, label %lookup.throw, !dbg !3143

lookup.next:                                      ; preds = %cond.true
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3144)
    #dbg_value(i64 %4, !3121, !DIExpression(), !3145)
  %.not3 = icmp ult i64 %4, %arr.len, !dbg !3146
  br i1 %.not3, label %lookup.next13, label %lookup.throw12, !dbg !3146

lookup.next13:                                    ; preds = %lookup.next
  %7 = getelementptr inbounds i64, ptr %arr.data, i64 %6, !dbg !3143
  %8 = load i64, ptr %7, align 8, !dbg !3143
  %9 = getelementptr inbounds i64, ptr %arr.data, i64 %4, !dbg !3146
  %10 = load i64, ptr %9, align 8, !dbg !3146
  %11 = icmp slt i64 %8, %10, !dbg !3147
  br i1 %11, label %common.ret, label %if.done4, !dbg !3126

if.done4:                                         ; preds = %lookup.next13, %if.done2
    #dbg_value(i64 %4, !3121, !DIExpression(), !3148)
    #dbg_value(i64 %low, !3119, !DIExpression(), !3149)
  %12 = icmp sgt i64 %4, %low, !dbg !3150
  br i1 %12, label %cond.true5, label %if.done7, !dbg !3126

cond.true5:                                       ; preds = %if.done4
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3151)
    #dbg_value(i64 %4, !3121, !DIExpression(), !3152)
  %.not4 = icmp ult i64 %4, %arr.len, !dbg !3153
  br i1 %.not4, label %lookup.next17, label %lookup.throw16, !dbg !3153

lookup.next17:                                    ; preds = %cond.true5
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3154)
    #dbg_value(i64 %4, !3121, !DIExpression(), !3155)
  %13 = add i64 %4, -1, !dbg !3156
  %.not5 = icmp ult i64 %13, %arr.len, !dbg !3157
  br i1 %.not5, label %lookup.next21, label %lookup.throw20, !dbg !3157

lookup.next21:                                    ; preds = %lookup.next17
  %14 = getelementptr inbounds i64, ptr %arr.data, i64 %4, !dbg !3153
  %15 = load i64, ptr %14, align 8, !dbg !3153
  %16 = getelementptr inbounds i64, ptr %arr.data, i64 %13, !dbg !3157
  %17 = load i64, ptr %16, align 8, !dbg !3157
  %18 = icmp slt i64 %15, %17, !dbg !3158
  br i1 %18, label %common.ret, label %if.done7, !dbg !3126

if.done7:                                         ; preds = %lookup.next21, %if.done4
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3159)
    #dbg_value(i64 %high, !3120, !DIExpression(), !3160)
  %.not6 = icmp ult i64 %high, %arr.len, !dbg !3161
  br i1 %.not6, label %lookup.next25, label %lookup.throw24, !dbg !3161

lookup.next25:                                    ; preds = %if.done7
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3162)
    #dbg_value(i64 %4, !3121, !DIExpression(), !3163)
  %.not7 = icmp ult i64 %4, %arr.len, !dbg !3164
  br i1 %.not7, label %lookup.next29, label %lookup.throw28, !dbg !3164

lookup.next29:                                    ; preds = %lookup.next25
  %19 = getelementptr inbounds i64, ptr %arr.data, i64 %high, !dbg !3161
  %20 = load i64, ptr %19, align 8, !dbg !3161
  %21 = getelementptr inbounds i64, ptr %arr.data, i64 %4, !dbg !3164
  %22 = load i64, ptr %21, align 8, !dbg !3164
  %23 = icmp sgt i64 %20, %22, !dbg !3165
  br i1 %23, label %if.then8, label %if.done9, !dbg !3126

if.then8:                                         ; preds = %lookup.next29
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3166)
    #dbg_value(i64 %low, !3119, !DIExpression(), !3167)
    #dbg_value(i64 %4, !3121, !DIExpression(), !3168)
  %24 = add i64 %4, -1, !dbg !3169
  %25 = call i64 @f_gold(ptr %arr.data, i64 %arr.len, i64 %arr.cap, i64 %low, i64 %24), !dbg !3170
  br label %common.ret, !dbg !3171

if.done9:                                         ; preds = %lookup.next29
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3172)
    #dbg_value(i64 %4, !3121, !DIExpression(), !3173)
  %26 = add i64 %4, 1, !dbg !3174
    #dbg_value(i64 %high, !3120, !DIExpression(), !3175)
  %27 = call i64 @f_gold(ptr %arr.data, i64 %arr.len, i64 %arr.cap, i64 %26, i64 %high), !dbg !3176
  br label %common.ret, !dbg !3177

lookup.throw:                                     ; preds = %cond.true
  call fastcc void @runtime.lookupPanic(), !dbg !3143
  unreachable, !dbg !3143

lookup.throw12:                                   ; preds = %lookup.next
  call fastcc void @runtime.lookupPanic(), !dbg !3146
  unreachable, !dbg !3146

lookup.throw16:                                   ; preds = %cond.true5
  call fastcc void @runtime.lookupPanic(), !dbg !3153
  unreachable, !dbg !3153

lookup.throw20:                                   ; preds = %lookup.next17
  call fastcc void @runtime.lookupPanic(), !dbg !3157
  unreachable, !dbg !3157

lookup.throw24:                                   ; preds = %if.done7
  call fastcc void @runtime.lookupPanic(), !dbg !3161
  unreachable, !dbg !3161

lookup.throw28:                                   ; preds = %lookup.next25
  call fastcc void @runtime.lookupPanic(), !dbg !3164
  unreachable, !dbg !3164
}
