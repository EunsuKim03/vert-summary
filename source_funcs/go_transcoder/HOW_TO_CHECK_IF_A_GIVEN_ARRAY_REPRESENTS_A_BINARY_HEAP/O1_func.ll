define noundef i1 @f_gold(ptr nocapture readonly %arr.data, i64 %arr.len, i64 %arr.cap, i64 %i, i64 %n) local_unnamed_addr #4 !dbg !3109 {
entry:
    #dbg_value(ptr %arr.data, !3118, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3121)
    #dbg_value(i64 %arr.len, !3118, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3121)
    #dbg_value(i64 %arr.cap, !3118, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3121)
    #dbg_value(i64 %i, !3119, !DIExpression(), !3121)
    #dbg_value(i64 %n, !3120, !DIExpression(), !3121)
    #dbg_value(i64 %i, !3119, !DIExpression(), !3122)
    #dbg_value(i64 %n, !3120, !DIExpression(), !3123)
  %0 = add i64 %n, -2, !dbg !3124
  %1 = sdiv i64 %0, 2, !dbg !3125
  %2 = icmp sgt i64 %i, %1, !dbg !3126
  br i1 %2, label %common.ret, label %if.done, !dbg !3127

common.ret:                                       ; preds = %cond.true2, %entry, %if.done4
  %common.ret.op = phi i1 [ false, %if.done4 ], [ true, %entry ], [ true, %cond.true2 ]
  ret i1 %common.ret.op, !dbg !3127

if.done:                                          ; preds = %entry
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3128)
    #dbg_value(i64 %i, !3119, !DIExpression(), !3129)
  %.not = icmp ult i64 %i, %arr.len, !dbg !3130
  br i1 %.not, label %lookup.next, label %lookup.throw, !dbg !3130

lookup.next:                                      ; preds = %if.done
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3131)
    #dbg_value(i64 %i, !3119, !DIExpression(), !3132)
  %3 = shl i64 %i, 1, !dbg !3133
  %4 = or disjoint i64 %3, 1, !dbg !3134
  %.not2 = icmp ult i64 %4, %arr.len, !dbg !3135
  br i1 %.not2, label %lookup.next8, label %lookup.throw7, !dbg !3135

lookup.next8:                                     ; preds = %lookup.next
  %5 = getelementptr inbounds i64, ptr %arr.data, i64 %i, !dbg !3130
  %6 = load i64, ptr %5, align 8, !dbg !3130
  %7 = getelementptr inbounds i64, ptr %arr.data, i64 %4, !dbg !3135
  %8 = load i64, ptr %7, align 8, !dbg !3135
  %.not3 = icmp slt i64 %6, %8, !dbg !3136
  br i1 %.not3, label %if.done4, label %lookup.next12, !dbg !3127

lookup.next12:                                    ; preds = %lookup.next8
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3137)
    #dbg_value(i64 %i, !3119, !DIExpression(), !3138)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3139)
    #dbg_value(i64 %i, !3119, !DIExpression(), !3140)
  %9 = add i64 %3, 2, !dbg !3141
  %.not5 = icmp ult i64 %9, %arr.len, !dbg !3142
  br i1 %.not5, label %lookup.next16, label %lookup.throw15, !dbg !3142

lookup.next16:                                    ; preds = %lookup.next12
  %10 = getelementptr inbounds i64, ptr %arr.data, i64 %9, !dbg !3142
  %11 = load i64, ptr %10, align 8, !dbg !3142
  %.not6 = icmp slt i64 %6, %11, !dbg !3143
  br i1 %.not6, label %if.done4, label %cond.true1, !dbg !3127

cond.true1:                                       ; preds = %lookup.next16
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3144)
    #dbg_value(i64 %i, !3119, !DIExpression(), !3145)
    #dbg_value(i64 %n, !3120, !DIExpression(), !3146)
  %12 = call i1 @f_gold(ptr %arr.data, i64 %arr.len, i64 %arr.cap, i64 %4, i64 %n), !dbg !3147
  br i1 %12, label %cond.true2, label %if.done4, !dbg !3127

cond.true2:                                       ; preds = %cond.true1
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3148)
    #dbg_value(i64 %i, !3119, !DIExpression(), !3149)
    #dbg_value(i64 %n, !3120, !DIExpression(), !3150)
  %13 = call i1 @f_gold(ptr %arr.data, i64 %arr.len, i64 %arr.cap, i64 %9, i64 %n), !dbg !3151
  br i1 %13, label %common.ret, label %if.done4, !dbg !3127

if.done4:                                         ; preds = %cond.true2, %cond.true1, %lookup.next16, %lookup.next8
  br label %common.ret, !dbg !3152

lookup.throw:                                     ; preds = %if.done
  call fastcc void @runtime.lookupPanic(), !dbg !3130
  unreachable, !dbg !3130

lookup.throw7:                                    ; preds = %lookup.next
  call fastcc void @runtime.lookupPanic(), !dbg !3135
  unreachable, !dbg !3135

lookup.throw15:                                   ; preds = %lookup.next12
  call fastcc void @runtime.lookupPanic(), !dbg !3142
  unreachable, !dbg !3142
}
