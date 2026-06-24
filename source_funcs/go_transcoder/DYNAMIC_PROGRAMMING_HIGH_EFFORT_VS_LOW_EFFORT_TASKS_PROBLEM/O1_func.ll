define i64 @f_gold(ptr nocapture readonly %high.data, i64 %high.len, i64 %high.cap, ptr nocapture readonly %low.data, i64 %low.len, i64 %low.cap, i64 %n) local_unnamed_addr #4 !dbg !3109 {
entry:
    #dbg_value(ptr %high.data, !3118, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3121)
    #dbg_value(i64 %high.len, !3118, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3121)
    #dbg_value(i64 %high.cap, !3118, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3121)
    #dbg_value(ptr %low.data, !3119, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3121)
    #dbg_value(i64 %low.len, !3119, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3121)
    #dbg_value(i64 %low.cap, !3119, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3121)
    #dbg_value(i64 %n, !3120, !DIExpression(), !3121)
    #dbg_value(i64 %n, !3120, !DIExpression(), !3122)
  %0 = icmp slt i64 %n, 1, !dbg !3123
  br i1 %0, label %common.ret, label %if.done, !dbg !3124

common.ret:                                       ; preds = %entry, %lookup.next4
  %common.ret.op = phi i64 [ %x.y.i, %lookup.next4 ], [ 0, %entry ]
  ret i64 %common.ret.op, !dbg !3124

if.done:                                          ; preds = %entry
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3125)
    #dbg_value(i64 %n, !3120, !DIExpression(), !3126)
  %1 = add nsw i64 %n, -1, !dbg !3127
  %.not = icmp ult i64 %1, %high.len, !dbg !3128
  br i1 %.not, label %lookup.next, label %lookup.throw, !dbg !3128

lookup.next:                                      ; preds = %if.done
  %2 = getelementptr inbounds nuw i64, ptr %high.data, i64 %1, !dbg !3128
  %3 = load i64, ptr %2, align 8, !dbg !3128
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3129)
    #dbg_value({ ptr, i64, i64 } poison, !3119, !DIExpression(), !3130)
    #dbg_value(i64 %n, !3120, !DIExpression(), !3131)
  %4 = add nsw i64 %n, -2, !dbg !3132
  %5 = call i64 @f_gold(ptr %high.data, i64 %high.len, i64 %high.cap, ptr %low.data, i64 %low.len, i64 %low.cap, i64 %4), !dbg !3133
    #dbg_value({ ptr, i64, i64 } poison, !3119, !DIExpression(), !3134)
    #dbg_value(i64 %n, !3120, !DIExpression(), !3135)
  %.not2 = icmp ult i64 %1, %low.len, !dbg !3136
  br i1 %.not2, label %lookup.next4, label %lookup.throw3, !dbg !3136

lookup.next4:                                     ; preds = %lookup.next
  %6 = add i64 %5, %3, !dbg !3137
  %7 = getelementptr inbounds nuw i64, ptr %low.data, i64 %1, !dbg !3136
  %8 = load i64, ptr %7, align 8, !dbg !3136
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3138)
    #dbg_value({ ptr, i64, i64 } poison, !3119, !DIExpression(), !3139)
    #dbg_value(i64 %n, !3120, !DIExpression(), !3140)
  %9 = call i64 @f_gold(ptr %high.data, i64 %high.len, i64 %high.cap, ptr %low.data, i64 %low.len, i64 %low.cap, i64 %1), !dbg !3141
  %10 = add i64 %9, %8, !dbg !3142
    #dbg_value(i64 %6, !3143, !DIExpression(), !3149)
    #dbg_value(i64 %10, !3148, !DIExpression(), !3149)
    #dbg_value(i64 %6, !3143, !DIExpression(), !3151)
    #dbg_value(i64 %10, !3148, !DIExpression(), !3152)
  %x.y.i = call i64 @llvm.smax.i64(i64 %6, i64 %10), !dbg !3153
  br label %common.ret, !dbg !3154

lookup.throw:                                     ; preds = %if.done
  call fastcc void @runtime.lookupPanic(), !dbg !3128
  unreachable, !dbg !3128

lookup.throw3:                                    ; preds = %lookup.next
  call fastcc void @runtime.lookupPanic(), !dbg !3136
  unreachable, !dbg !3136
}
