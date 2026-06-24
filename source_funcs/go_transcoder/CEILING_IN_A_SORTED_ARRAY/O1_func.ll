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
  %.not2 = icmp sgt i64 %x, %1, !dbg !3129
  br i1 %.not2, label %for.loop.preheader, label %common.ret, !dbg !3130

for.loop.preheader:                               ; preds = %lookup.next
    #dbg_value(i64 %low, !3122, !DIExpression(), !3131)
    #dbg_value(i64 %high, !3120, !DIExpression(), !3132)
  %2 = icmp slt i64 %low, %high, !dbg !3133
  br i1 %2, label %for.body.preheader, label %common.ret, !dbg !3130

for.body.preheader:                               ; preds = %for.loop.preheader
  %umax = call i64 @llvm.umax.i64(i64 %low, i64 %arr.len), !dbg !3134
  br label %for.body, !dbg !3134

common.ret:                                       ; preds = %lookup.next8, %if.done4, %lookup.next16, %for.loop.preheader, %lookup.next
  %common.ret.op = phi i64 [ %low, %lookup.next ], [ -1, %for.loop.preheader ], [ %8, %lookup.next16 ], [ -1, %if.done4 ], [ %3, %lookup.next8 ]
  ret i64 %common.ret.op, !dbg !3130

for.body:                                         ; preds = %for.body.preheader, %if.done4
  %3 = phi i64 [ %11, %if.done4 ], [ %low, %for.body.preheader ]
    #dbg_value(i64 %3, !3122, !DIExpression(), !3131)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3135)
    #dbg_value(i64 %3, !3122, !DIExpression(), !3136)
  %exitcond.not = icmp eq i64 %3, %umax, !dbg !3134
  br i1 %exitcond.not, label %lookup.throw7, label %lookup.next8, !dbg !3134

lookup.next8:                                     ; preds = %for.body
  %4 = getelementptr inbounds i64, ptr %arr.data, i64 %3, !dbg !3134
  %5 = load i64, ptr %4, align 8, !dbg !3134
    #dbg_value(i64 %x, !3121, !DIExpression(), !3137)
  %6 = icmp eq i64 %5, %x, !dbg !3138
  br i1 %6, label %common.ret, label %lookup.next12, !dbg !3130

lookup.next12:                                    ; preds = %lookup.next8
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3139)
    #dbg_value(i64 %3, !3122, !DIExpression(), !3140)
    #dbg_value(i64 %x, !3121, !DIExpression(), !3141)
  %7 = icmp slt i64 %5, %x, !dbg !3142
  br i1 %7, label %cond.true, label %if.done4, !dbg !3130

cond.true:                                        ; preds = %lookup.next12
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3143)
    #dbg_value(i64 %3, !3122, !DIExpression(), !3144)
  %8 = add nuw nsw i64 %3, 1, !dbg !3145
  %.not5 = icmp ult i64 %8, %arr.len, !dbg !3146
  br i1 %.not5, label %lookup.next16, label %lookup.throw15, !dbg !3146

lookup.next16:                                    ; preds = %cond.true
  %9 = getelementptr inbounds i64, ptr %arr.data, i64 %8, !dbg !3146
  %10 = load i64, ptr %9, align 8, !dbg !3146
    #dbg_value(i64 %x, !3121, !DIExpression(), !3147)
  %.not6 = icmp slt i64 %10, %x, !dbg !3148
  br i1 %.not6, label %if.done4, label %common.ret, !dbg !3130

if.done4:                                         ; preds = %lookup.next16, %lookup.next12
  %11 = add nsw i64 %3, 1, !dbg !3149
    #dbg_value(i64 %11, !3122, !DIExpression(), !3131)
    #dbg_value(i64 %high, !3120, !DIExpression(), !3132)
  %exitcond12.not = icmp eq i64 %11, %high, !dbg !3133
  br i1 %exitcond12.not, label %common.ret, label %for.body, !dbg !3130

lookup.throw:                                     ; preds = %entry
  call fastcc void @runtime.lookupPanic(), !dbg !3128
  unreachable, !dbg !3128

lookup.throw7:                                    ; preds = %for.body
  call fastcc void @runtime.lookupPanic(), !dbg !3134
  unreachable, !dbg !3134

lookup.throw15:                                   ; preds = %cond.true
  call fastcc void @runtime.lookupPanic(), !dbg !3146
  unreachable, !dbg !3146
}
