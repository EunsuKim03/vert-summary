define i64 @f_gold(ptr nocapture readonly %array.data, i64 %array.len, i64 %array.cap, i64 %start, i64 %end) local_unnamed_addr #4 !dbg !3109 {
entry:
    #dbg_value(ptr %array.data, !3118, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3122)
    #dbg_value(i64 %array.len, !3118, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3122)
    #dbg_value(i64 %array.cap, !3118, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3122)
    #dbg_value(i64 %start, !3119, !DIExpression(), !3122)
    #dbg_value(i64 %end, !3120, !DIExpression(), !3122)
    #dbg_value(i64 %start, !3119, !DIExpression(), !3123)
    #dbg_value(i64 %end, !3120, !DIExpression(), !3124)
  %0 = icmp sgt i64 %start, %end, !dbg !3125
  br i1 %0, label %if.then, label %if.done, !dbg !3126

common.ret:                                       ; preds = %lookup.next, %if.done4, %if.then3, %if.then
  %common.ret.op = phi i64 [ %1, %if.then ], [ %10, %if.then3 ], [ %11, %if.done4 ], [ %start, %lookup.next ]
  ret i64 %common.ret.op, !dbg !3126

if.then:                                          ; preds = %entry
    #dbg_value(i64 %end, !3120, !DIExpression(), !3127)
  %1 = add i64 %end, 1, !dbg !3128
  br label %common.ret, !dbg !3129

if.done:                                          ; preds = %entry
    #dbg_value(i64 %start, !3119, !DIExpression(), !3130)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3131)
    #dbg_value(i64 %start, !3119, !DIExpression(), !3132)
  %.not = icmp ult i64 %start, %array.len, !dbg !3133
  br i1 %.not, label %lookup.next, label %lookup.throw, !dbg !3133

lookup.next:                                      ; preds = %if.done
  %2 = getelementptr inbounds i64, ptr %array.data, i64 %start, !dbg !3133
  %3 = load i64, ptr %2, align 8, !dbg !3133
  %.not1 = icmp eq i64 %start, %3, !dbg !3134
  br i1 %.not1, label %if.done2, label %common.ret, !dbg !3126

if.done2:                                         ; preds = %lookup.next
    #dbg_value(i64 %start, !3119, !DIExpression(), !3135)
    #dbg_value(i64 %end, !3120, !DIExpression(), !3136)
  %4 = add i64 %end, %start, !dbg !3137
  %5 = sdiv i64 %4, 2, !dbg !3138
    #dbg_value(i64 %5, !3121, !DIExpression(), !3139)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3140)
    #dbg_value(i64 %5, !3121, !DIExpression(), !3141)
  %.not2 = icmp ult i64 %5, %array.len, !dbg !3142
  br i1 %.not2, label %lookup.next8, label %lookup.throw7, !dbg !3142

lookup.next8:                                     ; preds = %if.done2
  %6 = getelementptr inbounds i64, ptr %array.data, i64 %5, !dbg !3142
  %7 = load i64, ptr %6, align 8, !dbg !3142
    #dbg_value(i64 %5, !3121, !DIExpression(), !3143)
  %8 = icmp eq i64 %7, %5, !dbg !3144
  br i1 %8, label %if.then3, label %if.done4, !dbg !3126

if.then3:                                         ; preds = %lookup.next8
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3145)
    #dbg_value(i64 %5, !3121, !DIExpression(), !3146)
  %9 = add nsw i64 %5, 1, !dbg !3147
    #dbg_value(i64 %end, !3120, !DIExpression(), !3148)
  %10 = call i64 @f_gold(ptr %array.data, i64 %array.len, i64 %array.cap, i64 %9, i64 %end), !dbg !3149
  br label %common.ret, !dbg !3150

if.done4:                                         ; preds = %lookup.next8
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3151)
    #dbg_value(i64 %start, !3119, !DIExpression(), !3152)
    #dbg_value(i64 %5, !3121, !DIExpression(), !3153)
  %11 = call i64 @f_gold(ptr %array.data, i64 %array.len, i64 %array.cap, i64 %start, i64 %5), !dbg !3154
  br label %common.ret, !dbg !3155

lookup.throw:                                     ; preds = %if.done
  call fastcc void @runtime.lookupPanic(), !dbg !3133
  unreachable, !dbg !3133

lookup.throw7:                                    ; preds = %if.done2
  call fastcc void @runtime.lookupPanic(), !dbg !3142
  unreachable, !dbg !3142
}
