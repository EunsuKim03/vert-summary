define noundef i1 @f_gold(ptr nocapture readonly %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n, i64 %x) local_unnamed_addr #4 !dbg !3109 {
entry:
    #dbg_value(ptr %arr.data, !3118, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3123)
    #dbg_value(i64 %arr.len, !3118, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3123)
    #dbg_value(i64 %arr.cap, !3118, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3123)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3123)
    #dbg_value(i64 %x, !3120, !DIExpression(), !3123)
    #dbg_value(i64 0, !3121, !DIExpression(), !3124)
  %0 = add i64 %n, -1
    #dbg_value(i64 0, !3121, !DIExpression(), !3125)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3126)
  %1 = icmp sgt i64 %0, 0, !dbg !3127
  br i1 %1, label %for.body, label %common.ret, !dbg !3128

for.body:                                         ; preds = %entry, %for.done
  %2 = phi i64 [ %14, %for.done ], [ 0, %entry ]
    #dbg_value(i64 %2, !3121, !DIExpression(), !3125)
    #dbg_value(i64 %2, !3121, !DIExpression(), !3129)
    #dbg_value(i64 %2, !3122, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3130)
    #dbg_value(i64 %2, !3121, !DIExpression(), !3131)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3132)
  %3 = icmp slt i64 %2, %n, !dbg !3133
  br i1 %3, label %for.body2.lr.ph, label %for.done, !dbg !3128

for.body2.lr.ph:                                  ; preds = %for.body
  %4 = add nsw i64 %2, 1, !dbg !3134
    #dbg_value(i64 %4, !3122, !DIExpression(), !3130)
  %.not3 = icmp ult i64 %4, %arr.len
  %5 = getelementptr inbounds i64, ptr %arr.data, i64 %4
  %umax = call i64 @llvm.umax.i64(i64 %2, i64 %arr.len), !dbg !3128
  br label %for.body2, !dbg !3128

for.body2:                                        ; preds = %for.body2.lr.ph, %if.done
  %6 = phi i64 [ %2, %for.body2.lr.ph ], [ %13, %if.done ]
    #dbg_value(i64 %6, !3121, !DIExpression(), !3131)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3135)
    #dbg_value(i64 %6, !3121, !DIExpression(), !3136)
  %exitcond.not = icmp eq i64 %6, %umax, !dbg !3137
  br i1 %exitcond.not, label %lookup.throw, label %lookup.next, !dbg !3137

lookup.next:                                      ; preds = %for.body2
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3138)
    #dbg_value(i64 %2, !3122, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3139)
  br i1 %.not3, label %lookup.next7, label %lookup.throw6, !dbg !3140

lookup.next7:                                     ; preds = %lookup.next
  %7 = getelementptr inbounds i64, ptr %arr.data, i64 %6, !dbg !3137
  %8 = load i64, ptr %7, align 8, !dbg !3137
  %9 = load i64, ptr %5, align 8, !dbg !3140
  %10 = mul i64 %9, %8, !dbg !3141
    #dbg_value(i64 %x, !3120, !DIExpression(), !3142)
  %11 = icmp eq i64 %10, %x, !dbg !3143
  br i1 %11, label %common.ret, label %if.done, !dbg !3128

common.ret:                                       ; preds = %for.done, %lookup.next7, %entry
  %12 = phi i1 [ false, %entry ], [ true, %lookup.next7 ], [ false, %for.done ]
  ret i1 %12, !dbg !3128

if.done:                                          ; preds = %lookup.next7
  %13 = add nsw i64 %6, 1, !dbg !3144
    #dbg_value(i64 %13, !3121, !DIExpression(), !3131)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3132)
  %exitcond19.not = icmp eq i64 %13, %n, !dbg !3133
  br i1 %exitcond19.not, label %for.done, label %for.body2, !dbg !3128

for.done:                                         ; preds = %if.done, %for.body
  %.lcssa = phi i64 [ %2, %for.body ], [ %n, %if.done ], !dbg !3124
  %14 = add i64 %.lcssa, 1, !dbg !3145
    #dbg_value(i64 %14, !3121, !DIExpression(), !3125)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3126)
  %15 = icmp slt i64 %14, %0, !dbg !3127
  br i1 %15, label %for.body, label %common.ret, !dbg !3128

lookup.throw:                                     ; preds = %for.body2
  call fastcc void @runtime.lookupPanic(), !dbg !3137
  unreachable, !dbg !3137

lookup.throw6:                                    ; preds = %lookup.next
  call fastcc void @runtime.lookupPanic(), !dbg !3140
  unreachable, !dbg !3140
}
