define range(i64 0, 2) i64 @f_gold(ptr nocapture readonly %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n) local_unnamed_addr #4 !dbg !3109 {
entry:
    #dbg_value(ptr %arr.data, !3118, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3120)
    #dbg_value(i64 %arr.len, !3118, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3120)
    #dbg_value(i64 %arr.cap, !3118, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3120)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3120)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3121)
  %switch = icmp ult i64 %n, 2, !dbg !3122
  br i1 %switch, label %common.ret, label %if.done, !dbg !3122

common.ret:                                       ; preds = %entry, %lookup.next6, %if.done2
  %common.ret.op = phi i64 [ %7, %if.done2 ], [ 1, %entry ], [ 0, %lookup.next6 ]
  ret i64 %common.ret.op, !dbg !3122

if.done:                                          ; preds = %entry
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3123)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3124)
  %0 = add i64 %n, -1, !dbg !3125
  %.not = icmp ult i64 %0, %arr.len, !dbg !3126
  br i1 %.not, label %lookup.next, label %lookup.throw, !dbg !3126

lookup.next:                                      ; preds = %if.done
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3127)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3128)
  %1 = add i64 %n, -2, !dbg !3129
  %.not2 = icmp ult i64 %1, %arr.len, !dbg !3130
  br i1 %.not2, label %lookup.next6, label %lookup.throw5, !dbg !3130

lookup.next6:                                     ; preds = %lookup.next
  %2 = getelementptr inbounds i64, ptr %arr.data, i64 %0, !dbg !3126
  %3 = load i64, ptr %2, align 8, !dbg !3126
  %4 = getelementptr inbounds i64, ptr %arr.data, i64 %1, !dbg !3130
  %5 = load i64, ptr %4, align 8, !dbg !3130
  %6 = icmp slt i64 %3, %5, !dbg !3131
  br i1 %6, label %common.ret, label %if.done2, !dbg !3122

if.done2:                                         ; preds = %lookup.next6
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3132)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3133)
  %7 = call i64 @f_gold(ptr %arr.data, i64 %arr.len, i64 %arr.cap, i64 %0), !dbg !3134
  br label %common.ret, !dbg !3135

lookup.throw:                                     ; preds = %if.done
  call fastcc void @runtime.lookupPanic(), !dbg !3126
  unreachable, !dbg !3126

lookup.throw5:                                    ; preds = %lookup.next
  call fastcc void @runtime.lookupPanic(), !dbg !3130
  unreachable, !dbg !3130
}
