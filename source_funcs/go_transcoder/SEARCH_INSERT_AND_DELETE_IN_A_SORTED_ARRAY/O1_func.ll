define range(i64 -4611686018427387904, 4611686018427387904) i64 @f_gold(ptr nocapture readonly %arr.data, i64 %arr.len, i64 %arr.cap, i64 %low, i64 %high, i64 %key) local_unnamed_addr #4 !dbg !3109 {
entry:
    #dbg_value(ptr %arr.data, !3118, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3123)
    #dbg_value(i64 %arr.len, !3118, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3123)
    #dbg_value(i64 %arr.cap, !3118, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3123)
    #dbg_value(i64 %low, !3119, !DIExpression(), !3123)
    #dbg_value(i64 %high, !3120, !DIExpression(), !3123)
    #dbg_value(i64 %key, !3121, !DIExpression(), !3123)
    #dbg_value(i64 %high, !3120, !DIExpression(), !3124)
    #dbg_value(i64 %low, !3119, !DIExpression(), !3125)
  %0 = icmp slt i64 %high, %low, !dbg !3126
  br i1 %0, label %common.ret, label %if.done, !dbg !3127

common.ret:                                       ; preds = %lookup.next, %entry, %if.done4, %if.then3
  %common.ret.op = phi i64 [ %8, %if.then3 ], [ %10, %if.done4 ], [ -1, %entry ], [ %2, %lookup.next ]
  ret i64 %common.ret.op, !dbg !3127

if.done:                                          ; preds = %entry
    #dbg_value(i64 %low, !3119, !DIExpression(), !3128)
    #dbg_value(i64 %high, !3120, !DIExpression(), !3129)
  %1 = add i64 %high, %low, !dbg !3130
  %2 = sdiv i64 %1, 2, !dbg !3131
    #dbg_value(i64 %2, !3122, !DIExpression(), !3132)
    #dbg_value(i64 %key, !3121, !DIExpression(), !3133)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3134)
    #dbg_value(i64 %2, !3122, !DIExpression(), !3135)
  %.not = icmp ult i64 %2, %arr.len, !dbg !3136
  br i1 %.not, label %lookup.next, label %lookup.throw, !dbg !3136

lookup.next:                                      ; preds = %if.done
  %3 = getelementptr inbounds i64, ptr %arr.data, i64 %2, !dbg !3136
  %4 = load i64, ptr %3, align 8, !dbg !3136
  %5 = icmp eq i64 %key, %4, !dbg !3137
  br i1 %5, label %common.ret, label %lookup.next8, !dbg !3127

lookup.next8:                                     ; preds = %lookup.next
    #dbg_value(i64 %key, !3121, !DIExpression(), !3138)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3139)
    #dbg_value(i64 %2, !3122, !DIExpression(), !3140)
  %6 = icmp sgt i64 %key, %4, !dbg !3141
  br i1 %6, label %if.then3, label %if.done4, !dbg !3127

if.then3:                                         ; preds = %lookup.next8
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3142)
    #dbg_value(i64 %2, !3122, !DIExpression(), !3143)
  %7 = add nsw i64 %2, 1, !dbg !3144
    #dbg_value(i64 %high, !3120, !DIExpression(), !3145)
    #dbg_value(i64 %key, !3121, !DIExpression(), !3146)
  %8 = call i64 @f_gold(ptr %arr.data, i64 %arr.len, i64 %arr.cap, i64 %7, i64 %high, i64 %key), !dbg !3147
  br label %common.ret, !dbg !3148

if.done4:                                         ; preds = %lookup.next8
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3149)
    #dbg_value(i64 %low, !3119, !DIExpression(), !3150)
    #dbg_value(i64 %2, !3122, !DIExpression(), !3151)
  %9 = add nsw i64 %2, -1, !dbg !3152
    #dbg_value(i64 %key, !3121, !DIExpression(), !3153)
  %10 = call i64 @f_gold(ptr %arr.data, i64 %arr.len, i64 %arr.cap, i64 %low, i64 %9, i64 %key), !dbg !3154
  br label %common.ret, !dbg !3155

lookup.throw:                                     ; preds = %if.done
  call fastcc void @runtime.lookupPanic(), !dbg !3136
  unreachable, !dbg !3136
}
