define i64 @f_gold(ptr nocapture readonly %arr.data, i64 %arr.len, i64 %arr.cap, i64 %low, i64 %high, i64 %x) local_unnamed_addr #4 !dbg !3109 {
entry:
    #dbg_value(ptr %arr.data, !3118, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3123)
    #dbg_value(i64 %arr.len, !3118, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3123)
    #dbg_value(i64 %arr.cap, !3118, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3123)
    #dbg_value(i64 %low, !3119, !DIExpression(), !3123)
    #dbg_value(i64 %high, !3120, !DIExpression(), !3123)
    #dbg_value(i64 %x, !3121, !DIExpression(), !3123)
    #dbg_value(i64 0, !3122, !DIExpression(), !3124)
    #dbg_value(i64 %x, !3121, !DIExpression(), !3125)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3126)
    #dbg_value(i64 %low, !3119, !DIExpression(), !3127)
  %.not = icmp ult i64 %low, %arr.len, !dbg !3128
  br i1 %.not, label %lookup.next, label %lookup.throw, !dbg !3128

lookup.next:                                      ; preds = %entry
  %0 = getelementptr inbounds i64, ptr %arr.data, i64 %low, !dbg !3128
  %1 = load i64, ptr %0, align 8, !dbg !3128
  %.not3 = icmp sgt i64 %x, %1, !dbg !3129
  br i1 %.not3, label %if.done, label %common.ret, !dbg !3130

common.ret:                                       ; preds = %lookup.next26, %lookup.next30, %lookup.next18, %lookup.next14, %lookup.next, %if.else10, %if.else6
  %common.ret.op = phi i64 [ %15, %if.else6 ], [ %21, %if.else10 ], [ %low, %lookup.next ], [ -1, %lookup.next14 ], [ %6, %lookup.next18 ], [ %6, %lookup.next30 ], [ %11, %lookup.next26 ]
  ret i64 %common.ret.op, !dbg !3130

if.done:                                          ; preds = %lookup.next
    #dbg_value(i64 %x, !3121, !DIExpression(), !3131)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3132)
    #dbg_value(i64 %high, !3120, !DIExpression(), !3133)
  %.not4 = icmp ult i64 %high, %arr.len, !dbg !3134
  br i1 %.not4, label %lookup.next14, label %lookup.throw13, !dbg !3134

lookup.next14:                                    ; preds = %if.done
  %2 = getelementptr inbounds i64, ptr %arr.data, i64 %high, !dbg !3134
  %3 = load i64, ptr %2, align 8, !dbg !3134
  %4 = icmp sgt i64 %x, %3, !dbg !3135
  br i1 %4, label %common.ret, label %if.done2, !dbg !3130

if.done2:                                         ; preds = %lookup.next14
    #dbg_value(i64 %low, !3119, !DIExpression(), !3136)
    #dbg_value(i64 %high, !3120, !DIExpression(), !3137)
  %5 = add i64 %high, %low, !dbg !3138
  %6 = sdiv i64 %5, 2, !dbg !3139
    #dbg_value(i64 %6, !3122, !DIExpression(), !3140)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3141)
    #dbg_value(i64 %6, !3122, !DIExpression(), !3142)
  %.not5 = icmp ult i64 %6, %arr.len, !dbg !3143
  br i1 %.not5, label %lookup.next18, label %lookup.throw17, !dbg !3143

lookup.next18:                                    ; preds = %if.done2
  %7 = getelementptr inbounds i64, ptr %arr.data, i64 %6, !dbg !3143
  %8 = load i64, ptr %7, align 8, !dbg !3143
    #dbg_value(i64 %x, !3121, !DIExpression(), !3144)
  %9 = icmp eq i64 %8, %x, !dbg !3145
  br i1 %9, label %common.ret, label %lookup.next22, !dbg !3130

lookup.next22:                                    ; preds = %lookup.next18
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3146)
    #dbg_value(i64 %6, !3122, !DIExpression(), !3147)
    #dbg_value(i64 %x, !3121, !DIExpression(), !3148)
  %10 = icmp slt i64 %8, %x, !dbg !3149
  br i1 %10, label %if.then4, label %if.else7, !dbg !3130

if.then4:                                         ; preds = %lookup.next22
    #dbg_value(i64 %6, !3122, !DIExpression(), !3150)
    #dbg_value(i64 %high, !3120, !DIExpression(), !3151)
  %.not9.not = icmp slt i64 %6, %high, !dbg !3152
  br i1 %.not9.not, label %cond.true, label %if.else6, !dbg !3130

cond.true:                                        ; preds = %if.then4
    #dbg_value(i64 %x, !3121, !DIExpression(), !3153)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3154)
    #dbg_value(i64 %6, !3122, !DIExpression(), !3155)
  %11 = add nsw i64 %6, 1, !dbg !3156
  %.not10 = icmp ult i64 %11, %arr.len, !dbg !3157
  br i1 %.not10, label %lookup.next26, label %lookup.throw25, !dbg !3157

lookup.next26:                                    ; preds = %cond.true
  %12 = getelementptr inbounds i64, ptr %arr.data, i64 %11, !dbg !3157
  %13 = load i64, ptr %12, align 8, !dbg !3157
  %.not11 = icmp sgt i64 %x, %13, !dbg !3158
  br i1 %.not11, label %if.else6, label %common.ret, !dbg !3130

if.else6:                                         ; preds = %lookup.next26, %if.then4
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3126)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3159)
    #dbg_value(i64 %6, !3122, !DIExpression(), !3160)
  %14 = add nsw i64 %6, 1, !dbg !3161
    #dbg_value(i64 %high, !3120, !DIExpression(), !3162)
    #dbg_value(i64 %x, !3121, !DIExpression(), !3163)
  %15 = call i64 @f_gold(ptr %arr.data, i64 %arr.len, i64 %arr.cap, i64 %14, i64 %high, i64 %x), !dbg !3164
  br label %common.ret, !dbg !3165

if.else7:                                         ; preds = %lookup.next22
    #dbg_value(i64 %6, !3122, !DIExpression(), !3166)
    #dbg_value(i64 %low, !3119, !DIExpression(), !3167)
  %.not7.not = icmp sgt i64 %6, %low, !dbg !3168
  br i1 %.not7.not, label %cond.true8, label %if.else10, !dbg !3130

cond.true8:                                       ; preds = %if.else7
    #dbg_value(i64 %x, !3121, !DIExpression(), !3169)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3170)
    #dbg_value(i64 %6, !3122, !DIExpression(), !3171)
  %16 = add nsw i64 %6, -1, !dbg !3172
  %.not8 = icmp ult i64 %16, %arr.len, !dbg !3173
  br i1 %.not8, label %lookup.next30, label %lookup.throw29, !dbg !3173

lookup.next30:                                    ; preds = %cond.true8
  %17 = getelementptr inbounds i64, ptr %arr.data, i64 %16, !dbg !3173
  %18 = load i64, ptr %17, align 8, !dbg !3173
  %19 = icmp sgt i64 %x, %18, !dbg !3174
  br i1 %19, label %common.ret, label %if.else10, !dbg !3130

if.else10:                                        ; preds = %lookup.next30, %if.else7
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3175)
    #dbg_value(i64 %low, !3119, !DIExpression(), !3176)
    #dbg_value(i64 %6, !3122, !DIExpression(), !3177)
  %20 = add nsw i64 %6, -1, !dbg !3178
    #dbg_value(i64 %x, !3121, !DIExpression(), !3179)
  %21 = call i64 @f_gold(ptr %arr.data, i64 %arr.len, i64 %arr.cap, i64 %low, i64 %20, i64 %x), !dbg !3180
  br label %common.ret, !dbg !3181

lookup.throw:                                     ; preds = %entry
  call fastcc void @runtime.lookupPanic(), !dbg !3128
  unreachable, !dbg !3128

lookup.throw13:                                   ; preds = %if.done
  call fastcc void @runtime.lookupPanic(), !dbg !3134
  unreachable, !dbg !3134

lookup.throw17:                                   ; preds = %if.done2
  call fastcc void @runtime.lookupPanic(), !dbg !3143
  unreachable, !dbg !3143

lookup.throw25:                                   ; preds = %cond.true
  call fastcc void @runtime.lookupPanic(), !dbg !3157
  unreachable, !dbg !3157

lookup.throw29:                                   ; preds = %cond.true8
  call fastcc void @runtime.lookupPanic(), !dbg !3173
  unreachable, !dbg !3173
}
