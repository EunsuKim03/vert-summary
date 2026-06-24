define range(i64 -1, 4611686018427387904) i64 @f_gold(ptr nocapture readonly %arr.data, i64 %arr.len, i64 %arr.cap, i64 %low, i64 %high) local_unnamed_addr #4 !dbg !3109 {
entry:
    #dbg_value(ptr %arr.data, !3118, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3122)
    #dbg_value(i64 %arr.len, !3118, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3122)
    #dbg_value(i64 %arr.cap, !3118, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3122)
    #dbg_value(i64 %low, !3119, !DIExpression(), !3122)
    #dbg_value(i64 %high, !3120, !DIExpression(), !3122)
    #dbg_value(i64 %low, !3119, !DIExpression(), !3123)
    #dbg_value(i64 %high, !3120, !DIExpression(), !3124)
  %0 = icmp sgt i64 %low, %high, !dbg !3125
  br i1 %0, label %common.ret, label %if.done, !dbg !3126

common.ret:                                       ; preds = %lookup.next12, %entry, %if.done4, %if.done3
  %common.ret.op = phi i64 [ %12, %if.done3 ], [ %13, %if.done4 ], [ -1, %entry ], [ %2, %lookup.next12 ]
  ret i64 %common.ret.op, !dbg !3126

if.done:                                          ; preds = %entry
    #dbg_value(i64 %low, !3119, !DIExpression(), !3127)
    #dbg_value(i64 %high, !3120, !DIExpression(), !3128)
  %1 = add i64 %high, %low, !dbg !3129
  %2 = sdiv i64 %1, 2, !dbg !3130
    #dbg_value(i64 %2, !3121, !DIExpression(), !3131)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3132)
    #dbg_value(i64 %2, !3121, !DIExpression(), !3133)
  %.not = icmp ult i64 %2, %arr.len, !dbg !3134
  br i1 %.not, label %lookup.next, label %lookup.throw, !dbg !3134

lookup.next:                                      ; preds = %if.done
  %3 = getelementptr inbounds i64, ptr %arr.data, i64 %2, !dbg !3134
  %4 = load i64, ptr %3, align 8, !dbg !3134
    #dbg_value(i64 %2, !3121, !DIExpression(), !3135)
  %5 = add nsw i64 %2, 1, !dbg !3136
  %.not2 = icmp eq i64 %4, %5, !dbg !3137
  br i1 %.not2, label %if.done4, label %if.then1, !dbg !3126

if.then1:                                         ; preds = %lookup.next
    #dbg_value(i64 %2, !3121, !DIExpression(), !3138)
  %6 = icmp sgt i64 %1, 1, !dbg !3139
  br i1 %6, label %lookup.next8, label %if.done3, !dbg !3126

lookup.next8:                                     ; preds = %if.then1
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3140)
    #dbg_value(i64 %2, !3121, !DIExpression(), !3141)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3142)
    #dbg_value(i64 %2, !3121, !DIExpression(), !3143)
  %7 = add nsw i64 %2, -1, !dbg !3144
  %.not4 = icmp ult i64 %7, %arr.len, !dbg !3145
  br i1 %.not4, label %lookup.next12, label %lookup.throw11, !dbg !3145

lookup.next12:                                    ; preds = %lookup.next8
  %8 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %7, !dbg !3145
  %9 = load i64, ptr %8, align 8, !dbg !3145
  %10 = icmp eq i64 %4, %9, !dbg !3146
  br i1 %10, label %common.ret, label %if.done3, !dbg !3126

if.done3:                                         ; preds = %lookup.next12, %if.then1
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3147)
    #dbg_value(i64 %low, !3119, !DIExpression(), !3148)
    #dbg_value(i64 %2, !3121, !DIExpression(), !3149)
  %11 = add nsw i64 %2, -1, !dbg !3150
  %12 = call i64 @f_gold(ptr %arr.data, i64 %arr.len, i64 %arr.cap, i64 %low, i64 %11), !dbg !3151
  br label %common.ret, !dbg !3152

if.done4:                                         ; preds = %lookup.next
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3153)
    #dbg_value(i64 %2, !3121, !DIExpression(), !3154)
    #dbg_value(i64 %high, !3120, !DIExpression(), !3155)
  %13 = call i64 @f_gold(ptr %arr.data, i64 %arr.len, i64 %arr.cap, i64 %5, i64 %high), !dbg !3156
  br label %common.ret, !dbg !3157

lookup.throw:                                     ; preds = %if.done
  call fastcc void @runtime.lookupPanic(), !dbg !3134
  unreachable, !dbg !3134

lookup.throw11:                                   ; preds = %lookup.next8
  call fastcc void @runtime.lookupPanic(), !dbg !3145
  unreachable, !dbg !3145
}
