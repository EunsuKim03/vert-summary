define i64 @f_gold(ptr nocapture readonly %arr.data, i64 %arr.len, i64 %arr.cap, i64 %l, i64 %r, i64 %x) local_unnamed_addr #4 !dbg !3109 {
entry:
    #dbg_value(ptr %arr.data, !3118, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3123)
    #dbg_value(i64 %arr.len, !3118, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3123)
    #dbg_value(i64 %arr.cap, !3118, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3123)
    #dbg_value(i64 %l, !3119, !DIExpression(), !3123)
    #dbg_value(i64 %r, !3120, !DIExpression(), !3123)
    #dbg_value(i64 %x, !3121, !DIExpression(), !3123)
    #dbg_value(i64 %r, !3120, !DIExpression(), !3124)
    #dbg_value(i64 %l, !3119, !DIExpression(), !3125)
  %.not = icmp slt i64 %r, %l, !dbg !3126
  br i1 %.not, label %common.ret, label %if.then, !dbg !3127

if.then:                                          ; preds = %entry
    #dbg_value(i64 %l, !3119, !DIExpression(), !3128)
    #dbg_value(i64 %r, !3120, !DIExpression(), !3129)
    #dbg_value(i64 %l, !3119, !DIExpression(), !3130)
  %0 = sub i64 %r, %l, !dbg !3131
  %1 = sdiv i64 %0, 2, !dbg !3132
  %2 = add i64 %1, %l, !dbg !3133
    #dbg_value(i64 %2, !3122, !DIExpression(), !3134)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3135)
    #dbg_value(i64 %2, !3122, !DIExpression(), !3136)
  %.not1 = icmp ult i64 %2, %arr.len, !dbg !3137
  br i1 %.not1, label %lookup.next, label %lookup.throw, !dbg !3137

lookup.next:                                      ; preds = %if.then
  %3 = getelementptr inbounds i64, ptr %arr.data, i64 %2, !dbg !3137
  %4 = load i64, ptr %3, align 8, !dbg !3137
    #dbg_value(i64 %x, !3121, !DIExpression(), !3138)
  %5 = icmp eq i64 %4, %x, !dbg !3139
  br i1 %5, label %common.ret, label %lookup.next8, !dbg !3127

common.ret:                                       ; preds = %entry, %lookup.next, %if.done3, %if.then2
  %common.ret.op = phi i64 [ %8, %if.then2 ], [ %10, %if.done3 ], [ %2, %lookup.next ], [ -1, %entry ]
  ret i64 %common.ret.op, !dbg !3127

lookup.next8:                                     ; preds = %lookup.next
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3140)
    #dbg_value(i64 %2, !3122, !DIExpression(), !3141)
    #dbg_value(i64 %x, !3121, !DIExpression(), !3142)
  %6 = icmp sgt i64 %4, %x, !dbg !3143
  br i1 %6, label %if.then2, label %if.done3, !dbg !3127

if.then2:                                         ; preds = %lookup.next8
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3144)
    #dbg_value(i64 %l, !3119, !DIExpression(), !3145)
    #dbg_value(i64 %2, !3122, !DIExpression(), !3146)
  %7 = add i64 %2, -1, !dbg !3147
    #dbg_value(i64 %x, !3121, !DIExpression(), !3148)
  %8 = call i64 @f_gold(ptr %arr.data, i64 %arr.len, i64 %arr.cap, i64 %l, i64 %7, i64 %x), !dbg !3149
  br label %common.ret, !dbg !3150

if.done3:                                         ; preds = %lookup.next8
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3151)
    #dbg_value(i64 %2, !3122, !DIExpression(), !3152)
  %9 = add i64 %2, 1, !dbg !3153
    #dbg_value(i64 %r, !3120, !DIExpression(), !3154)
    #dbg_value(i64 %x, !3121, !DIExpression(), !3155)
  %10 = call i64 @f_gold(ptr %arr.data, i64 %arr.len, i64 %arr.cap, i64 %9, i64 %r, i64 %x), !dbg !3156
  br label %common.ret, !dbg !3157

lookup.throw:                                     ; preds = %if.then
  call fastcc void @runtime.lookupPanic(), !dbg !3137
  unreachable, !dbg !3137
}
