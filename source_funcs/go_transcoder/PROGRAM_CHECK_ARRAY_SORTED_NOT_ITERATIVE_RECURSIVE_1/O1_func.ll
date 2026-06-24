define noundef i1 @f_gold(ptr nocapture readonly %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n) local_unnamed_addr #4 !dbg !3109 {
entry:
    #dbg_value(ptr %arr.data, !3118, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3121)
    #dbg_value(i64 %arr.len, !3118, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3121)
    #dbg_value(i64 %arr.cap, !3118, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3121)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3121)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3122)
    #dbg_value(i64 1, !3120, !DIExpression(), !3123)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3124)
  %0 = icmp sgt i64 %n, 1
  br i1 %0, label %for.body.preheader, label %common.ret, !dbg !3125

for.body.preheader:                               ; preds = %entry
  %1 = add i64 %arr.len, 1, !dbg !3126
  %umax = call i64 @llvm.umax.i64(i64 %arr.len, i64 1), !dbg !3126
  br label %for.body, !dbg !3126

common.ret:                                       ; preds = %lookup.next6, %entry
  %common.ret.op = phi i1 [ true, %entry ], [ %8, %lookup.next6 ]
  ret i1 %common.ret.op, !dbg !3125

for.body:                                         ; preds = %lookup.next6, %for.body.preheader
  %2 = phi i64 [ 1, %for.body.preheader ], [ %9, %lookup.next6 ]
    #dbg_value(i64 %2, !3120, !DIExpression(), !3123)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3127)
    #dbg_value(i64 %2, !3120, !DIExpression(), !3128)
  %exitcond.not = icmp eq i64 %2, %1, !dbg !3126
  br i1 %exitcond.not, label %lookup.throw, label %lookup.next, !dbg !3126

lookup.next:                                      ; preds = %for.body
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3129)
    #dbg_value(i64 %2, !3120, !DIExpression(), !3130)
  %exitcond6.not = icmp eq i64 %2, %umax, !dbg !3131
  br i1 %exitcond6.not, label %lookup.throw5, label %lookup.next6, !dbg !3131

lookup.next6:                                     ; preds = %lookup.next
  %3 = getelementptr i64, ptr %arr.data, i64 %2, !dbg !3126
  %4 = getelementptr i8, ptr %3, i64 -8, !dbg !3126
  %5 = load i64, ptr %4, align 8, !dbg !3126
  %6 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %2, !dbg !3131
  %7 = load i64, ptr %6, align 8, !dbg !3131
  %8 = icmp sle i64 %5, %7, !dbg !3132
    #dbg_value(i64 %2, !3120, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3133)
  %9 = add nuw nsw i64 %2, 1
    #dbg_value(i64 %9, !3120, !DIExpression(), !3133)
    #dbg_value(i64 %9, !3120, !DIExpression(), !3123)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3124)
  %exitcond7.not = icmp ne i64 %9, %n
  %or.cond.not = select i1 %8, i1 %exitcond7.not, i1 false, !dbg !3125
  br i1 %or.cond.not, label %for.body, label %common.ret, !dbg !3125

lookup.throw:                                     ; preds = %for.body
  call fastcc void @runtime.lookupPanic(), !dbg !3126
  unreachable, !dbg !3126

lookup.throw5:                                    ; preds = %lookup.next
  call fastcc void @runtime.lookupPanic(), !dbg !3131
  unreachable, !dbg !3131
}
