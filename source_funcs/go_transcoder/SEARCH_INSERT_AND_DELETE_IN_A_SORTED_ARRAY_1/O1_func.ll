define i64 @f_gold(ptr nocapture %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n, i64 %key, i64 %capacity) local_unnamed_addr #4 !dbg !3109 {
entry:
    #dbg_value(ptr %arr.data, !3118, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3123)
    #dbg_value(i64 %arr.len, !3118, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3123)
    #dbg_value(i64 %arr.cap, !3118, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3123)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3123)
    #dbg_value(i64 %key, !3120, !DIExpression(), !3123)
    #dbg_value(i64 %capacity, !3121, !DIExpression(), !3123)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3124)
    #dbg_value(i64 %capacity, !3121, !DIExpression(), !3125)
  %.not = icmp slt i64 %n, %capacity, !dbg !3126
  br i1 %.not, label %for.loop.preheader, label %common.ret, !dbg !3127

for.loop.preheader:                               ; preds = %entry
  %0 = add i64 %n, -1, !dbg !3128
  %1 = icmp sgt i64 %0, -1, !dbg !3129
  br i1 %1, label %cond.true.preheader, label %for.done, !dbg !3127

cond.true.preheader:                              ; preds = %for.loop.preheader
  %.not3.first_iter = icmp ult i64 %0, %arr.len, !dbg !3130
  br label %cond.true, !dbg !3130

common.ret:                                       ; preds = %entry, %lookup.next12
  %common.ret.op = phi i64 [ %10, %lookup.next12 ], [ %n, %entry ]
  ret i64 %common.ret.op, !dbg !3127

cond.true:                                        ; preds = %cond.true.preheader, %lookup.next8
  %2 = phi i64 [ %7, %lookup.next8 ], [ %0, %cond.true.preheader ]
  %.in10 = phi i64 [ %2, %lookup.next8 ], [ %n, %cond.true.preheader ]
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3131)
    #dbg_value(i64 %2, !3122, !DIExpression(), !3132)
  br i1 %.not3.first_iter, label %lookup.next, label %lookup.throw, !dbg !3130

lookup.next:                                      ; preds = %cond.true
  %3 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %2, !dbg !3130
  %4 = load i64, ptr %3, align 8, !dbg !3130
    #dbg_value(i64 %key, !3120, !DIExpression(), !3133)
  %5 = icmp sgt i64 %4, %key, !dbg !3134
  br i1 %5, label %lookup.next4, label %for.done, !dbg !3127

lookup.next4:                                     ; preds = %lookup.next
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3135)
    #dbg_value(i64 %2, !3122, !DIExpression(), !3136)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3137)
    #dbg_value(i64 %2, !3122, !DIExpression(), !3138)
  %.not6 = icmp ult i64 %.in10, %arr.len, !dbg !3139
  br i1 %.not6, label %lookup.next8, label %lookup.throw7, !dbg !3139

lookup.next8:                                     ; preds = %lookup.next4
  %6 = getelementptr inbounds i64, ptr %arr.data, i64 %.in10, !dbg !3139
  store i64 %4, ptr %6, align 8, !dbg !3139
    #dbg_value(i64 %2, !3122, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !3140)
  %7 = add nsw i64 %2, -1, !dbg !3128
    #dbg_value(i64 %7, !3122, !DIExpression(), !3141)
  %8 = icmp sgt i64 %2, 0, !dbg !3129
  br i1 %8, label %cond.true, label %for.done, !dbg !3127

for.done:                                         ; preds = %lookup.next8, %lookup.next, %for.loop.preheader
  %.in.lcssa = phi i64 [ %n, %for.loop.preheader ], [ 0, %lookup.next8 ], [ %.in10, %lookup.next ]
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3142)
    #dbg_value(i64 poison, !3122, !DIExpression(), !3143)
    #dbg_value(i64 %key, !3120, !DIExpression(), !3144)
  %.not4 = icmp ult i64 %.in.lcssa, %arr.len, !dbg !3145
  br i1 %.not4, label %lookup.next12, label %lookup.throw11, !dbg !3145

lookup.next12:                                    ; preds = %for.done
  %9 = getelementptr inbounds i64, ptr %arr.data, i64 %.in.lcssa, !dbg !3145
  store i64 %key, ptr %9, align 8, !dbg !3145
    #dbg_value(i64 %n, !3119, !DIExpression(), !3146)
  %10 = add i64 %n, 1, !dbg !3147
  br label %common.ret, !dbg !3148

lookup.throw:                                     ; preds = %cond.true
  call fastcc void @runtime.lookupPanic(), !dbg !3130
  unreachable, !dbg !3130

lookup.throw7:                                    ; preds = %lookup.next4
  call fastcc void @runtime.lookupPanic(), !dbg !3139
  unreachable, !dbg !3139

lookup.throw11:                                   ; preds = %for.done
  call fastcc void @runtime.lookupPanic(), !dbg !3145
  unreachable, !dbg !3145
}
