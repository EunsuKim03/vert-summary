define noundef i1 @f_gold(ptr nocapture readonly %str.data, i64 %str.len, i64 %str.cap) local_unnamed_addr #4 !dbg !3109 {
entry:
    #dbg_value(ptr %str.data, !3118, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3121)
    #dbg_value(i64 %str.len, !3118, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3121)
    #dbg_value(i64 %str.cap, !3118, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3121)
    #dbg_value(i64 0, !3119, !DIExpression(), !3122)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3123)
    #dbg_value(i64 %str.len, !3120, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !3124)
  %0 = add i64 %str.len, -1, !dbg !3125
  %1 = icmp slt i64 %0, 1, !dbg !3126
  br i1 %1, label %common.ret, label %for.body, !dbg !3125

for.loop:                                         ; preds = %lookup.next4
  %2 = add nuw nsw i64 %5, 1, !dbg !3127
    #dbg_value(i64 %2, !3119, !DIExpression(), !3127)
  %3 = add nsw i64 %4, -1, !dbg !3125
    #dbg_value(i64 %2, !3119, !DIExpression(), !3128)
    #dbg_value(i64 %3, !3120, !DIExpression(), !3129)
  %.not9 = icmp slt i64 %2, %3, !dbg !3126
  br i1 %.not9, label %for.body, label %common.ret, !dbg !3125

for.body:                                         ; preds = %entry, %for.loop
  %4 = phi i64 [ %3, %for.loop ], [ %0, %entry ]
  %5 = phi i64 [ %2, %for.loop ], [ 0, %entry ]
    #dbg_value(i64 %5, !3119, !DIExpression(), !3128)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3130)
    #dbg_value(i64 %5, !3119, !DIExpression(), !3131)
  %exitcond.not = icmp eq i64 %5, %str.len, !dbg !3132
  br i1 %exitcond.not, label %lookup.throw, label %lookup.next, !dbg !3132

lookup.next:                                      ; preds = %for.body
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3133)
    #dbg_value(i64 %4, !3120, !DIExpression(), !3134)
  %.not2 = icmp ult i64 %4, %str.len, !dbg !3135
  br i1 %.not2, label %lookup.next4, label %lookup.throw3, !dbg !3135

lookup.next4:                                     ; preds = %lookup.next
  %6 = getelementptr inbounds nuw i8, ptr %str.data, i64 %5, !dbg !3132
  %7 = load i8, ptr %6, align 1, !dbg !3132
  %8 = getelementptr inbounds i8, ptr %str.data, i64 %4, !dbg !3135
  %9 = load i8, ptr %8, align 1, !dbg !3135
  %.not3 = icmp eq i8 %7, %9, !dbg !3136
    #dbg_value(i64 %5, !3119, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3127)
    #dbg_value(i64 %4, !3120, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !3137)
  br i1 %.not3, label %for.loop, label %common.ret, !dbg !3125

common.ret:                                       ; preds = %lookup.next4, %for.loop, %entry
  %.lcssa = phi i1 [ true, %entry ], [ true, %for.loop ], [ false, %lookup.next4 ], !dbg !3126
  ret i1 %.lcssa, !dbg !3125

lookup.throw:                                     ; preds = %for.body
  call fastcc void @runtime.lookupPanic(), !dbg !3132
  unreachable, !dbg !3132

lookup.throw3:                                    ; preds = %lookup.next
  call fastcc void @runtime.lookupPanic(), !dbg !3135
  unreachable, !dbg !3135
}
