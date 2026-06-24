define range(i64 0, -9223372036854775808) i64 @f_gold(i64 %W, ptr nocapture readonly %wt.data, i64 %wt.len, i64 %wt.cap, ptr nocapture readonly %val.data, i64 %val.len, i64 %val.cap, i64 %n) local_unnamed_addr #4 !dbg !3109 {
entry:
    #dbg_value(i64 %W, !3118, !DIExpression(), !3122)
    #dbg_value(ptr %wt.data, !3119, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3122)
    #dbg_value(i64 %wt.len, !3119, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3122)
    #dbg_value(i64 %wt.cap, !3119, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3122)
    #dbg_value(ptr %val.data, !3120, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3122)
    #dbg_value(i64 %val.len, !3120, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3122)
    #dbg_value(i64 %val.cap, !3120, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3122)
    #dbg_value(i64 %n, !3121, !DIExpression(), !3122)
    #dbg_value(i64 %n, !3121, !DIExpression(), !3123)
  %0 = icmp eq i64 %n, 0, !dbg !3124
    #dbg_value(i64 %W, !3118, !DIExpression(), !3125)
  %1 = icmp eq i64 %W, 0
  %or.cond = select i1 %0, i1 true, i1 %1, !dbg !3126
  br i1 %or.cond, label %common.ret, label %if.done, !dbg !3126

common.ret:                                       ; preds = %entry, %lookup.next9, %if.then1
  %common.ret.op = phi i64 [ %6, %if.then1 ], [ %x.y.i, %lookup.next9 ], [ 0, %entry ]
  ret i64 %common.ret.op, !dbg !3126

if.done:                                          ; preds = %entry
    #dbg_value({ ptr, i64, i64 } poison, !3119, !DIExpression(), !3127)
    #dbg_value(i64 %n, !3121, !DIExpression(), !3128)
  %2 = add i64 %n, -1, !dbg !3129
  %.not = icmp ult i64 %2, %wt.len, !dbg !3130
  br i1 %.not, label %lookup.next, label %lookup.throw, !dbg !3130

lookup.next:                                      ; preds = %if.done
  %3 = getelementptr inbounds i64, ptr %wt.data, i64 %2, !dbg !3130
  %4 = load i64, ptr %3, align 8, !dbg !3130
    #dbg_value(i64 %W, !3118, !DIExpression(), !3131)
  %5 = icmp sgt i64 %4, %W, !dbg !3132
  br i1 %5, label %if.then1, label %if.else, !dbg !3126

if.then1:                                         ; preds = %lookup.next
    #dbg_value(i64 %W, !3118, !DIExpression(), !3133)
    #dbg_value({ ptr, i64, i64 } poison, !3119, !DIExpression(), !3134)
    #dbg_value({ ptr, i64, i64 } poison, !3120, !DIExpression(), !3135)
    #dbg_value(i64 %n, !3121, !DIExpression(), !3136)
  %6 = call i64 @f_gold(i64 %W, ptr %wt.data, i64 %wt.len, i64 %wt.cap, ptr %val.data, i64 %val.len, i64 %val.cap, i64 %2), !dbg !3137
  br label %common.ret, !dbg !3138

if.else:                                          ; preds = %lookup.next
    #dbg_value({ ptr, i64, i64 } poison, !3120, !DIExpression(), !3139)
    #dbg_value(i64 %n, !3121, !DIExpression(), !3140)
  %.not3 = icmp ult i64 %2, %val.len, !dbg !3141
  br i1 %.not3, label %lookup.next9, label %lookup.throw4, !dbg !3141

lookup.next9:                                     ; preds = %if.else
    #dbg_value(i64 %W, !3118, !DIExpression(), !3142)
    #dbg_value({ ptr, i64, i64 } poison, !3119, !DIExpression(), !3143)
    #dbg_value(i64 %n, !3121, !DIExpression(), !3144)
  %7 = getelementptr inbounds i64, ptr %val.data, i64 %2, !dbg !3141
  %8 = load i64, ptr %7, align 8, !dbg !3141
  %9 = sub i64 %W, %4, !dbg !3145
    #dbg_value({ ptr, i64, i64 } poison, !3119, !DIExpression(), !3146)
    #dbg_value({ ptr, i64, i64 } poison, !3120, !DIExpression(), !3147)
    #dbg_value(i64 %n, !3121, !DIExpression(), !3148)
  %10 = call i64 @f_gold(i64 %9, ptr %wt.data, i64 %wt.len, i64 %wt.cap, ptr %val.data, i64 %val.len, i64 %val.cap, i64 %2), !dbg !3149
  %11 = add i64 %10, %8, !dbg !3150
    #dbg_value(i64 %W, !3118, !DIExpression(), !3151)
    #dbg_value({ ptr, i64, i64 } poison, !3119, !DIExpression(), !3152)
    #dbg_value({ ptr, i64, i64 } poison, !3120, !DIExpression(), !3153)
    #dbg_value(i64 %n, !3121, !DIExpression(), !3154)
  %12 = call i64 @f_gold(i64 %W, ptr %wt.data, i64 %wt.len, i64 %wt.cap, ptr %val.data, i64 %val.len, i64 %val.cap, i64 %2), !dbg !3155
    #dbg_value(i64 %11, !3156, !DIExpression(), !3162)
    #dbg_value(i64 %12, !3161, !DIExpression(), !3162)
    #dbg_value(i64 %11, !3156, !DIExpression(), !3164)
    #dbg_value(i64 %12, !3161, !DIExpression(), !3165)
  %x.y.i = call range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %11, i64 range(i64 0, -9223372036854775808) %12), !dbg !3166
  br label %common.ret, !dbg !3167

lookup.throw:                                     ; preds = %if.done
  call fastcc void @runtime.lookupPanic(), !dbg !3130
  unreachable, !dbg !3130

lookup.throw4:                                    ; preds = %if.else
  call fastcc void @runtime.lookupPanic(), !dbg !3141
  unreachable, !dbg !3141
}
