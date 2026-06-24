define i64 @f_gold(ptr nocapture readonly %arr1.data, i64 %arr1.len, i64 %arr1.cap, ptr nocapture readonly %arr2.data, i64 %arr2.len, i64 %arr2.cap, i64 %n) local_unnamed_addr #4 !dbg !3109 {
entry:
    #dbg_value(ptr %arr1.data, !3118, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3122)
    #dbg_value(i64 %arr1.len, !3118, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3122)
    #dbg_value(i64 %arr1.cap, !3118, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3122)
    #dbg_value(ptr %arr2.data, !3119, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3122)
    #dbg_value(i64 %arr2.len, !3119, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3122)
    #dbg_value(i64 %arr2.cap, !3119, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3122)
    #dbg_value(i64 %n, !3120, !DIExpression(), !3122)
    #dbg_value(i64 0, !3121, !DIExpression(), !3123)
  %0 = icmp sgt i64 %n, 0, !dbg !3124
  br i1 %0, label %for.body, label %common.ret, !dbg !3125

for.body:                                         ; preds = %entry, %if.done
  %1 = phi i64 [ %6, %if.done ], [ 0, %entry ]
    #dbg_value(i64 %1, !3121, !DIExpression(), !3126)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3127)
    #dbg_value(i64 %1, !3121, !DIExpression(), !3128)
  %exitcond.not = icmp eq i64 %1, %arr1.len, !dbg !3129
  br i1 %exitcond.not, label %lookup.throw, label %lookup.next, !dbg !3129

lookup.next:                                      ; preds = %for.body
    #dbg_value({ ptr, i64, i64 } poison, !3119, !DIExpression(), !3130)
    #dbg_value(i64 %1, !3121, !DIExpression(), !3131)
  %exitcond4.not = icmp eq i64 %1, %arr2.len, !dbg !3132
  br i1 %exitcond4.not, label %lookup.throw3, label %lookup.next4, !dbg !3132

lookup.next4:                                     ; preds = %lookup.next
  %2 = getelementptr inbounds nuw i64, ptr %arr1.data, i64 %1, !dbg !3129
  %3 = load i64, ptr %2, align 8, !dbg !3129
  %4 = getelementptr inbounds nuw i64, ptr %arr2.data, i64 %1, !dbg !3132
  %5 = load i64, ptr %4, align 8, !dbg !3132
  %.not2 = icmp eq i64 %3, %5, !dbg !3133
  br i1 %.not2, label %if.done, label %common.ret, !dbg !3125

common.ret:                                       ; preds = %lookup.next4, %if.done, %entry
  %common.ret.op = phi i64 [ %n, %entry ], [ %1, %lookup.next4 ], [ %n, %if.done ]
  ret i64 %common.ret.op, !dbg !3125

if.done:                                          ; preds = %lookup.next4
  %6 = add nuw nsw i64 %1, 1, !dbg !3134
    #dbg_value(i64 %6, !3121, !DIExpression(), !3126)
    #dbg_value(i64 %n, !3120, !DIExpression(), !3135)
  %exitcond5.not = icmp eq i64 %6, %n, !dbg !3124
  br i1 %exitcond5.not, label %common.ret, label %for.body, !dbg !3125

lookup.throw:                                     ; preds = %for.body
  call fastcc void @runtime.lookupPanic(), !dbg !3129
  unreachable, !dbg !3129

lookup.throw3:                                    ; preds = %lookup.next
  call fastcc void @runtime.lookupPanic(), !dbg !3132
  unreachable, !dbg !3132
}
