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
  br i1 %0, label %if.then, label %if.done, !dbg !3126

if.then:                                          ; preds = %entry
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3127)
  %1 = icmp eq i64 %arr.len, 0, !dbg !3128
  br i1 %1, label %lookup.throw, label %lookup.next, !dbg !3128

common.ret:                                       ; preds = %lookup.next33, %lookup.next21, %if.done9, %if.then8, %lookup.next13, %lookup.next
  %common.ret.op = phi i64 [ %2, %lookup.next ], [ %5, %lookup.next13 ], [ %29, %if.then8 ], [ %31, %if.done9 ], [ %12, %lookup.next21 ], [ %19, %lookup.next33 ]
  ret i64 %common.ret.op, !dbg !3126

lookup.next:                                      ; preds = %if.then
  %2 = load i64, ptr %arr.data, align 8, !dbg !3128
  br label %common.ret, !dbg !3129

if.done:                                          ; preds = %entry
    #dbg_value(i64 %high, !3120, !DIExpression(), !3130)
    #dbg_value(i64 %low, !3119, !DIExpression(), !3131)
  %3 = icmp eq i64 %high, %low, !dbg !3132
  br i1 %3, label %if.then1, label %if.done2, !dbg !3126

if.then1:                                         ; preds = %if.done
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3133)
    #dbg_value(i64 %low, !3119, !DIExpression(), !3134)
  %.not11 = icmp ult i64 %low, %arr.len, !dbg !3135
  br i1 %.not11, label %lookup.next13, label %lookup.throw12, !dbg !3135

lookup.next13:                                    ; preds = %if.then1
  %4 = getelementptr inbounds i64, ptr %arr.data, i64 %low, !dbg !3135
  %5 = load i64, ptr %4, align 8, !dbg !3135
  br label %common.ret, !dbg !3136

if.done2:                                         ; preds = %if.done
    #dbg_value(i64 %low, !3119, !DIExpression(), !3137)
    #dbg_value(i64 %high, !3120, !DIExpression(), !3138)
    #dbg_value(i64 %low, !3119, !DIExpression(), !3139)
  %6 = sub i64 %high, %low, !dbg !3140
  %7 = sdiv i64 %6, 2, !dbg !3141
  %8 = add i64 %7, %low, !dbg !3142
    #dbg_value(i64 %8, !3121, !DIExpression(), !3143)
    #dbg_value(i64 %8, !3121, !DIExpression(), !3144)
    #dbg_value(i64 %high, !3120, !DIExpression(), !3145)
  %9 = icmp slt i64 %8, %high, !dbg !3146
  br i1 %9, label %cond.true, label %if.done4, !dbg !3126

cond.true:                                        ; preds = %if.done2
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3147)
    #dbg_value(i64 %8, !3121, !DIExpression(), !3148)
  %10 = add i64 %8, 1, !dbg !3149
  %.not = icmp ult i64 %10, %arr.len, !dbg !3150
  br i1 %.not, label %lookup.next17, label %lookup.throw16, !dbg !3150

lookup.next17:                                    ; preds = %cond.true
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3151)
    #dbg_value(i64 %8, !3121, !DIExpression(), !3152)
  %.not4 = icmp ult i64 %8, %arr.len, !dbg !3153
  br i1 %.not4, label %lookup.next21, label %lookup.throw20, !dbg !3153

lookup.next21:                                    ; preds = %lookup.next17
  %11 = getelementptr inbounds i64, ptr %arr.data, i64 %10, !dbg !3150
  %12 = load i64, ptr %11, align 8, !dbg !3150
  %13 = getelementptr inbounds i64, ptr %arr.data, i64 %8, !dbg !3153
  %14 = load i64, ptr %13, align 8, !dbg !3153
  %15 = icmp slt i64 %12, %14, !dbg !3154
  br i1 %15, label %common.ret, label %if.done4, !dbg !3126

if.done4:                                         ; preds = %lookup.next21, %if.done2
    #dbg_value(i64 %8, !3121, !DIExpression(), !3155)
    #dbg_value(i64 %low, !3119, !DIExpression(), !3156)
  %16 = icmp sgt i64 %8, %low, !dbg !3157
  br i1 %16, label %cond.true5, label %if.done7, !dbg !3126

cond.true5:                                       ; preds = %if.done4
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3158)
    #dbg_value(i64 %8, !3121, !DIExpression(), !3159)
  %.not5 = icmp ult i64 %8, %arr.len, !dbg !3160
  br i1 %.not5, label %lookup.next29, label %lookup.throw28, !dbg !3160

lookup.next29:                                    ; preds = %cond.true5
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3161)
    #dbg_value(i64 %8, !3121, !DIExpression(), !3162)
  %17 = add i64 %8, -1, !dbg !3163
  %.not6 = icmp ult i64 %17, %arr.len, !dbg !3164
  br i1 %.not6, label %lookup.next33, label %lookup.throw32, !dbg !3164

lookup.next33:                                    ; preds = %lookup.next29
  %18 = getelementptr inbounds i64, ptr %arr.data, i64 %8, !dbg !3160
  %19 = load i64, ptr %18, align 8, !dbg !3160
  %20 = getelementptr inbounds i64, ptr %arr.data, i64 %17, !dbg !3164
  %21 = load i64, ptr %20, align 8, !dbg !3164
  %22 = icmp slt i64 %19, %21, !dbg !3165
  br i1 %22, label %common.ret, label %if.done7, !dbg !3126

if.done7:                                         ; preds = %lookup.next33, %if.done4
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3166)
    #dbg_value(i64 %high, !3120, !DIExpression(), !3167)
  %.not7 = icmp ult i64 %high, %arr.len, !dbg !3168
  br i1 %.not7, label %lookup.next41, label %lookup.throw40, !dbg !3168

lookup.next41:                                    ; preds = %if.done7
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3169)
    #dbg_value(i64 %8, !3121, !DIExpression(), !3170)
  %.not8 = icmp ult i64 %8, %arr.len, !dbg !3171
  br i1 %.not8, label %lookup.next45, label %lookup.throw44, !dbg !3171

lookup.next45:                                    ; preds = %lookup.next41
  %23 = getelementptr inbounds i64, ptr %arr.data, i64 %high, !dbg !3168
  %24 = load i64, ptr %23, align 8, !dbg !3168
  %25 = getelementptr inbounds i64, ptr %arr.data, i64 %8, !dbg !3171
  %26 = load i64, ptr %25, align 8, !dbg !3171
  %27 = icmp sgt i64 %24, %26, !dbg !3172
  br i1 %27, label %if.then8, label %if.done9, !dbg !3126

if.then8:                                         ; preds = %lookup.next45
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3173)
    #dbg_value(i64 %low, !3119, !DIExpression(), !3174)
    #dbg_value(i64 %8, !3121, !DIExpression(), !3175)
  %28 = add i64 %8, -1, !dbg !3176
  %29 = call i64 @f_gold(ptr %arr.data, i64 %arr.len, i64 %arr.cap, i64 %low, i64 %28), !dbg !3177
  br label %common.ret, !dbg !3178

if.done9:                                         ; preds = %lookup.next45
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3179)
    #dbg_value(i64 %8, !3121, !DIExpression(), !3180)
  %30 = add i64 %8, 1, !dbg !3181
    #dbg_value(i64 %high, !3120, !DIExpression(), !3182)
  %31 = call i64 @f_gold(ptr %arr.data, i64 %arr.len, i64 %arr.cap, i64 %30, i64 %high), !dbg !3183
  br label %common.ret, !dbg !3184

lookup.throw:                                     ; preds = %if.then
  call fastcc void @runtime.lookupPanic(), !dbg !3128
  unreachable, !dbg !3128

lookup.throw12:                                   ; preds = %if.then1
  call fastcc void @runtime.lookupPanic(), !dbg !3135
  unreachable, !dbg !3135

lookup.throw16:                                   ; preds = %cond.true
  call fastcc void @runtime.lookupPanic(), !dbg !3150
  unreachable, !dbg !3150

lookup.throw20:                                   ; preds = %lookup.next17
  call fastcc void @runtime.lookupPanic(), !dbg !3153
  unreachable, !dbg !3153

lookup.throw28:                                   ; preds = %cond.true5
  call fastcc void @runtime.lookupPanic(), !dbg !3160
  unreachable, !dbg !3160

lookup.throw32:                                   ; preds = %lookup.next29
  call fastcc void @runtime.lookupPanic(), !dbg !3164
  unreachable, !dbg !3164

lookup.throw40:                                   ; preds = %if.done7
  call fastcc void @runtime.lookupPanic(), !dbg !3168
  unreachable, !dbg !3168

lookup.throw44:                                   ; preds = %lookup.next41
  call fastcc void @runtime.lookupPanic(), !dbg !3171
  unreachable, !dbg !3171
}
