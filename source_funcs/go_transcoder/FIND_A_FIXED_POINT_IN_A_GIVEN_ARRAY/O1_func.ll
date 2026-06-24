define i64 @f_gold(ptr nocapture readonly %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n) local_unnamed_addr #4 !dbg !3109 {
entry:
    #dbg_value(ptr %arr.data, !3118, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3121)
    #dbg_value(i64 %arr.len, !3118, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3121)
    #dbg_value(i64 %arr.cap, !3118, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3121)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3121)
    #dbg_value(i64 0, !3120, !DIExpression(), !3122)
    #dbg_value(i64 0, !3120, !DIExpression(), !3123)
  %0 = icmp sgt i64 %n, 0, !dbg !3124
  br i1 %0, label %for.body, label %common.ret, !dbg !3125

for.body:                                         ; preds = %entry, %if.done
  %1 = phi i64 [ %5, %if.done ], [ 0, %entry ]
    #dbg_value(i64 %1, !3120, !DIExpression(), !3126)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3127)
    #dbg_value(i64 %1, !3120, !DIExpression(), !3128)
  %exitcond.not = icmp eq i64 %1, %arr.len, !dbg !3129
  br i1 %exitcond.not, label %lookup.throw, label %lookup.next, !dbg !3129

lookup.next:                                      ; preds = %for.body
  %2 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %1, !dbg !3129
  %3 = load i64, ptr %2, align 8, !dbg !3129
    #dbg_value(i64 %1, !3120, !DIExpression(), !3130)
  %4 = icmp eq i64 %3, %1, !dbg !3131
  br i1 %4, label %common.ret, label %if.done, !dbg !3125

common.ret:                                       ; preds = %lookup.next, %if.done, %entry
  %common.ret.op = phi i64 [ -1, %entry ], [ %1, %lookup.next ], [ -1, %if.done ]
  ret i64 %common.ret.op, !dbg !3125

if.done:                                          ; preds = %lookup.next
  %5 = add nuw nsw i64 %1, 1, !dbg !3132
    #dbg_value(i64 %5, !3120, !DIExpression(), !3126)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3133)
  %exitcond2.not = icmp eq i64 %5, %n, !dbg !3124
  br i1 %exitcond2.not, label %common.ret, label %for.body, !dbg !3125

lookup.throw:                                     ; preds = %for.body
  call fastcc void @runtime.lookupPanic(), !dbg !3129
  unreachable, !dbg !3129
}
