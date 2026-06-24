define i64 @f_gold(ptr nocapture readonly %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n, i64 %X) local_unnamed_addr #4 !dbg !3109 {
entry:
    #dbg_value(ptr %arr.data, !3118, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3123)
    #dbg_value(i64 %arr.len, !3118, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3123)
    #dbg_value(i64 %arr.cap, !3118, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3123)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3123)
    #dbg_value(i64 %X, !3120, !DIExpression(), !3123)
    #dbg_value(i64 %X, !3120, !DIExpression(), !3124)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3125)
  %0 = icmp eq i64 %arr.len, 0, !dbg !3126
  br i1 %0, label %lookup.throw, label %lookup.next, !dbg !3126

lookup.next:                                      ; preds = %entry
  %1 = load i64, ptr %arr.data, align 8, !dbg !3126
  %2 = icmp slt i64 %X, %1, !dbg !3127
  br i1 %2, label %common.ret, label %if.else, !dbg !3128

common.ret:                                       ; preds = %lookup.next16, %for.body4, %for.loop2.preheader, %lookup.next8, %lookup.next
  %common.ret.op = phi i64 [ 0, %lookup.next ], [ %n, %lookup.next8 ], [ %.lcssa10, %for.loop2.preheader ], [ %n, %for.body4 ], [ %16, %lookup.next16 ]
  ret i64 %common.ret.op, !dbg !3128

if.else:                                          ; preds = %lookup.next
    #dbg_value(i64 %X, !3120, !DIExpression(), !3129)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3130)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3131)
  %3 = add i64 %n, -1, !dbg !3132
  %.not = icmp ult i64 %3, %arr.len, !dbg !3133
  br i1 %.not, label %lookup.next8, label %lookup.throw7, !dbg !3133

lookup.next8:                                     ; preds = %if.else
  %4 = getelementptr inbounds i64, ptr %arr.data, i64 %3, !dbg !3133
  %5 = load i64, ptr %4, align 8, !dbg !3133
  %6 = icmp sgt i64 %X, %5, !dbg !3134
  br i1 %6, label %common.ret, label %for.loop.preheader, !dbg !3128

for.loop.preheader:                               ; preds = %lookup.next8
    #dbg_value(i64 1, !3122, !DIExpression(), !3135)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3136)
  %7 = icmp sgt i64 %n, 1, !dbg !3137
  br i1 %7, label %cond.true, label %for.loop2.preheader, !dbg !3128

for.loop:                                         ; preds = %lookup.next12
  %8 = shl i64 %10, 1, !dbg !3138
    #dbg_value(i64 %8, !3122, !DIExpression(), !3139)
    #dbg_value(i64 %8, !3122, !DIExpression(), !3135)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3136)
  %9 = icmp slt i64 %8, %n, !dbg !3137
  br i1 %9, label %cond.true, label %for.loop2.preheader, !dbg !3128

cond.true:                                        ; preds = %for.loop.preheader, %for.loop
  %10 = phi i64 [ %8, %for.loop ], [ 1, %for.loop.preheader ]
  %11 = phi i64 [ %10, %for.loop ], [ 0, %for.loop.preheader ]
    #dbg_value(i64 %10, !3122, !DIExpression(), !3135)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3140)
    #dbg_value(i64 %10, !3122, !DIExpression(), !3141)
  %.not3 = icmp ult i64 %10, %arr.len, !dbg !3142
  br i1 %.not3, label %lookup.next12, label %lookup.throw11, !dbg !3142

lookup.next12:                                    ; preds = %cond.true
  %12 = getelementptr inbounds i64, ptr %arr.data, i64 %10, !dbg !3142
  %13 = load i64, ptr %12, align 8, !dbg !3142
    #dbg_value(i64 %X, !3120, !DIExpression(), !3143)
  %14 = icmp slt i64 %13, %X, !dbg !3144
    #dbg_value(i64 %10, !3122, !DIExpression(), !3145)
    #dbg_value(i64 %10, !3121, !DIExpression(), !3146)
    #dbg_value(i64 %10, !3122, !DIExpression(), !3147)
    #dbg_value(i64 %10, !3122, !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value), !3139)
  br i1 %14, label %for.loop, label %for.loop2.preheader, !dbg !3128

for.loop2.preheader:                              ; preds = %lookup.next12, %for.loop, %for.loop.preheader
  %.lcssa10 = phi i64 [ 0, %for.loop.preheader ], [ %11, %lookup.next12 ], [ %10, %for.loop ], !dbg !3148
    #dbg_value(i64 %.lcssa10, !3121, !DIExpression(), !3149)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3150)
  %15 = icmp slt i64 %.lcssa10, %n, !dbg !3151
  br i1 %15, label %cond.true3.preheader, label %common.ret, !dbg !3128

cond.true3.preheader:                             ; preds = %for.loop2.preheader
  %umax = call i64 @llvm.umax.i64(i64 %.lcssa10, i64 %arr.len), !dbg !3152
  br label %cond.true3, !dbg !3152

cond.true3:                                       ; preds = %cond.true3.preheader, %for.body4
  %16 = phi i64 [ %20, %for.body4 ], [ %.lcssa10, %cond.true3.preheader ]
    #dbg_value(i64 %16, !3121, !DIExpression(), !3149)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3153)
    #dbg_value(i64 %16, !3121, !DIExpression(), !3154)
  %exitcond.not = icmp eq i64 %16, %umax, !dbg !3152
  br i1 %exitcond.not, label %lookup.throw15, label %lookup.next16, !dbg !3152

lookup.next16:                                    ; preds = %cond.true3
  %17 = getelementptr inbounds i64, ptr %arr.data, i64 %16, !dbg !3152
  %18 = load i64, ptr %17, align 8, !dbg !3152
    #dbg_value(i64 %X, !3120, !DIExpression(), !3155)
  %19 = icmp slt i64 %18, %X, !dbg !3156
  br i1 %19, label %for.body4, label %common.ret, !dbg !3128

for.body4:                                        ; preds = %lookup.next16
  %20 = add nsw i64 %16, 1, !dbg !3157
    #dbg_value(i64 %20, !3121, !DIExpression(), !3149)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3150)
  %exitcond15.not = icmp eq i64 %20, %n, !dbg !3151
  br i1 %exitcond15.not, label %common.ret, label %cond.true3, !dbg !3128

lookup.throw:                                     ; preds = %entry
  call fastcc void @runtime.lookupPanic(), !dbg !3126
  unreachable, !dbg !3126

lookup.throw7:                                    ; preds = %if.else
  call fastcc void @runtime.lookupPanic(), !dbg !3133
  unreachable, !dbg !3133

lookup.throw11:                                   ; preds = %cond.true
  call fastcc void @runtime.lookupPanic(), !dbg !3142
  unreachable, !dbg !3142

lookup.throw15:                                   ; preds = %cond.true3
  call fastcc void @runtime.lookupPanic(), !dbg !3152
  unreachable, !dbg !3152
}
