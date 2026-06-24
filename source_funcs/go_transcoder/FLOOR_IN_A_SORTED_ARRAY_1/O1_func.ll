define i64 @f_gold(ptr nocapture readonly %arr.data, i64 %arr.len, i64 %arr.cap, i64 %low, i64 %high, i64 %x) local_unnamed_addr #4 !dbg !3109 {
entry:
    #dbg_value(ptr %arr.data, !3118, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3123)
    #dbg_value(i64 %arr.len, !3118, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3123)
    #dbg_value(i64 %arr.cap, !3118, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3123)
    #dbg_value(i64 %low, !3119, !DIExpression(), !3123)
    #dbg_value(i64 %high, !3120, !DIExpression(), !3123)
    #dbg_value(i64 %x, !3121, !DIExpression(), !3123)
    #dbg_value(i64 %low, !3119, !DIExpression(), !3124)
    #dbg_value(i64 %high, !3120, !DIExpression(), !3125)
  %0 = icmp sgt i64 %low, %high, !dbg !3126
  br i1 %0, label %common.ret, label %if.done, !dbg !3127

common.ret:                                       ; preds = %lookup.next17, %lookup.next13, %lookup.next, %entry, %if.done9, %if.then8
  %common.ret.op = phi i64 [ %15, %if.then8 ], [ %17, %if.done9 ], [ -1, %entry ], [ %high, %lookup.next ], [ %4, %lookup.next13 ], [ %9, %lookup.next17 ]
  ret i64 %common.ret.op, !dbg !3127

if.done:                                          ; preds = %entry
    #dbg_value(i64 %x, !3121, !DIExpression(), !3128)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3129)
    #dbg_value(i64 %high, !3120, !DIExpression(), !3130)
  %.not = icmp ult i64 %high, %arr.len, !dbg !3131
  br i1 %.not, label %lookup.next, label %lookup.throw, !dbg !3131

lookup.next:                                      ; preds = %if.done
  %1 = getelementptr inbounds i64, ptr %arr.data, i64 %high, !dbg !3131
  %2 = load i64, ptr %1, align 8, !dbg !3131
  %.not2 = icmp slt i64 %x, %2, !dbg !3132
  br i1 %.not2, label %if.done2, label %common.ret, !dbg !3127

if.done2:                                         ; preds = %lookup.next
    #dbg_value(i64 %low, !3119, !DIExpression(), !3133)
    #dbg_value(i64 %high, !3120, !DIExpression(), !3134)
  %3 = add i64 %high, %low, !dbg !3135
  %4 = sdiv i64 %3, 2, !dbg !3136
    #dbg_value(i64 %4, !3122, !DIExpression(), !3137)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3138)
    #dbg_value(i64 %4, !3122, !DIExpression(), !3139)
  %.not3 = icmp ult i64 %4, %arr.len, !dbg !3140
  br i1 %.not3, label %lookup.next13, label %lookup.throw12, !dbg !3140

lookup.next13:                                    ; preds = %if.done2
  %5 = getelementptr inbounds i64, ptr %arr.data, i64 %4, !dbg !3140
  %6 = load i64, ptr %5, align 8, !dbg !3140
    #dbg_value(i64 %x, !3121, !DIExpression(), !3141)
  %7 = icmp eq i64 %6, %x, !dbg !3142
  br i1 %7, label %common.ret, label %if.done4, !dbg !3127

if.done4:                                         ; preds = %lookup.next13
    #dbg_value(i64 %4, !3122, !DIExpression(), !3143)
  %8 = icmp sgt i64 %3, 1, !dbg !3144
  br i1 %8, label %cond.true, label %lookup.next25, !dbg !3127

cond.true:                                        ; preds = %if.done4
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3145)
    #dbg_value(i64 %4, !3122, !DIExpression(), !3146)
  %9 = add nsw i64 %4, -1, !dbg !3147
  %.not4 = icmp ult i64 %9, %arr.len, !dbg !3148
  br i1 %.not4, label %lookup.next17, label %lookup.throw16, !dbg !3148

lookup.next17:                                    ; preds = %cond.true
  %10 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %9, !dbg !3148
  %11 = load i64, ptr %10, align 8, !dbg !3148
    #dbg_value(i64 %x, !3121, !DIExpression(), !3149)
  %.not5 = icmp sle i64 %11, %x, !dbg !3150
    #dbg_value(i64 %x, !3121, !DIExpression(), !3151)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3152)
    #dbg_value(i64 %4, !3122, !DIExpression(), !3153)
  %12 = icmp slt i64 %x, %6
  %or.cond = and i1 %12, %.not5, !dbg !3127
  br i1 %or.cond, label %common.ret, label %lookup.next25, !dbg !3127

lookup.next25:                                    ; preds = %if.done4, %lookup.next17
    #dbg_value(i64 %x, !3121, !DIExpression(), !3154)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3155)
    #dbg_value(i64 %4, !3122, !DIExpression(), !3156)
  %13 = icmp slt i64 %x, %6, !dbg !3157
  br i1 %13, label %if.then8, label %if.done9, !dbg !3127

if.then8:                                         ; preds = %lookup.next25
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3158)
    #dbg_value(i64 %low, !3119, !DIExpression(), !3159)
    #dbg_value(i64 %4, !3122, !DIExpression(), !3160)
  %14 = add nsw i64 %4, -1, !dbg !3161
    #dbg_value(i64 %x, !3121, !DIExpression(), !3162)
  %15 = call i64 @f_gold(ptr %arr.data, i64 %arr.len, i64 %arr.cap, i64 %low, i64 %14, i64 %x), !dbg !3163
  br label %common.ret, !dbg !3164

if.done9:                                         ; preds = %lookup.next25
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3165)
    #dbg_value(i64 %4, !3122, !DIExpression(), !3166)
  %16 = add nsw i64 %4, 1, !dbg !3167
    #dbg_value(i64 %high, !3120, !DIExpression(), !3168)
    #dbg_value(i64 %x, !3121, !DIExpression(), !3169)
  %17 = call i64 @f_gold(ptr %arr.data, i64 %arr.len, i64 %arr.cap, i64 %16, i64 %high, i64 %x), !dbg !3170
  br label %common.ret, !dbg !3171

lookup.throw:                                     ; preds = %if.done
  call fastcc void @runtime.lookupPanic(), !dbg !3131
  unreachable, !dbg !3131

lookup.throw12:                                   ; preds = %if.done2
  call fastcc void @runtime.lookupPanic(), !dbg !3140
  unreachable, !dbg !3140

lookup.throw16:                                   ; preds = %cond.true
  call fastcc void @runtime.lookupPanic(), !dbg !3148
  unreachable, !dbg !3148
}
