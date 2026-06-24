define i64 @f_gold(ptr nocapture readonly %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n, i64 %k) local_unnamed_addr #4 !dbg !3109 {
entry:
    #dbg_value(ptr %arr.data, !3118, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3127)
    #dbg_value(i64 %arr.len, !3118, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3127)
    #dbg_value(i64 %arr.cap, !3118, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3127)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3127)
    #dbg_value(i64 %k, !3120, !DIExpression(), !3127)
    #dbg_value(i64 %k, !3120, !DIExpression(), !3128)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3129)
  %0 = icmp sgt i64 %k, %n, !dbg !3130
  br i1 %0, label %common.ret, label %if.done, !dbg !3131

common.ret:                                       ; preds = %entry, %for.done5
  %common.ret.op = phi i64 [ %29, %for.done5 ], [ -1, %entry ]
  ret i64 %common.ret.op, !dbg !3131

if.done:                                          ; preds = %entry
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3132)
  %1 = icmp eq i64 %arr.len, 0, !dbg !3133
  br i1 %1, label %lookup.throw, label %lookup.next, !dbg !3133

lookup.next:                                      ; preds = %if.done
  %2 = load i64, ptr %arr.data, align 8, !dbg !3133
    #dbg_value(i64 %2, !3121, !DIExpression(), !3134)
    #dbg_value(i64 1, !3122, !DIExpression(), !3135)
    #dbg_value(i64 %k, !3120, !DIExpression(), !3136)
  %3 = icmp sgt i64 %k, 1, !dbg !3137
  br i1 %3, label %for.body.preheader, label %for.done, !dbg !3131

for.body.preheader:                               ; preds = %lookup.next
  %4 = add i64 %arr.len, -1, !dbg !3138
  %5 = add nsw i64 %k, -2, !dbg !3138
  %.not.not = icmp ugt i64 %4, %5, !dbg !3138
  br label %for.body, !dbg !3138

for.body:                                         ; preds = %for.body.preheader, %lookup.next9
  %6 = phi i64 [ %11, %lookup.next9 ], [ 1, %for.body.preheader ]
  %7 = phi i64 [ %10, %lookup.next9 ], [ %2, %for.body.preheader ]
    #dbg_value(i64 %6, !3122, !DIExpression(), !3139)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3140)
    #dbg_value(i64 %6, !3122, !DIExpression(), !3141)
  br i1 %.not.not, label %lookup.next9, label %lookup.throw8, !dbg !3138

lookup.next9:                                     ; preds = %for.body
  %8 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %6, !dbg !3138
  %9 = load i64, ptr %8, align 8, !dbg !3138
  %10 = add i64 %9, %7, !dbg !3142
    #dbg_value(i64 %10, !3121, !DIExpression(), !3142)
  %11 = add nuw nsw i64 %6, 1, !dbg !3143
    #dbg_value(i64 %11, !3122, !DIExpression(), !3139)
    #dbg_value(i64 %k, !3120, !DIExpression(), !3136)
  %exitcond.not = icmp eq i64 %11, %k, !dbg !3137
  br i1 %exitcond.not, label %for.done, label %for.body, !dbg !3131

for.done:                                         ; preds = %lookup.next9, %lookup.next
  %.lcssa16 = phi i64 [ %2, %lookup.next ], [ %10, %lookup.next9 ], !dbg !3134
    #dbg_value(i64 %.lcssa16, !3121, !DIExpression(), !3144)
    #dbg_value(i64 %.lcssa16, !3123, !DIExpression(), !3145)
    #dbg_value(i64 %k, !3120, !DIExpression(), !3146)
  %12 = add i64 %k, -1, !dbg !3147
    #dbg_value(i64 %12, !3124, !DIExpression(), !3148)
    #dbg_value(i64 %k, !3120, !DIExpression(), !3149)
    #dbg_value(i64 %k, !3125, !DIExpression(), !3150)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3151)
  %13 = icmp slt i64 %k, %n, !dbg !3152
  br i1 %13, label %for.body2.preheader, label %for.done5, !dbg !3131

for.body2.preheader:                              ; preds = %for.done
  %14 = call i64 @llvm.usub.sat.i64(i64 %arr.len, i64 %k), !dbg !3153
  %15 = xor i64 %k, -1, !dbg !3153
  %16 = add i64 %n, %15, !dbg !3153
  %.not.not23 = icmp ult i64 %16, %14, !dbg !3153
  br label %for.body2, !dbg !3153

for.body2:                                        ; preds = %for.body2.preheader, %lookup.next17
  %17 = phi i64 [ %28, %lookup.next17 ], [ %k, %for.body2.preheader ]
  %18 = phi i64 [ %spec.select11, %lookup.next17 ], [ %12, %for.body2.preheader ]
  %19 = phi i64 [ %spec.select, %lookup.next17 ], [ %.lcssa16, %for.body2.preheader ]
    #dbg_value(i64 %17, !3125, !DIExpression(), !3154)
    #dbg_value(i64 %.lcssa16, !3121, !DIExpression(), !3155)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3156)
    #dbg_value(i64 %17, !3125, !DIExpression(), !3157)
  br i1 %.not.not23, label %lookup.next17, label %lookup.throw12, !dbg !3153

lookup.next17:                                    ; preds = %for.body2
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3158)
    #dbg_value(i64 %17, !3125, !DIExpression(), !3159)
    #dbg_value(i64 %k, !3120, !DIExpression(), !3160)
  %20 = sub nuw i64 %17, %k, !dbg !3161
  %21 = getelementptr inbounds i64, ptr %arr.data, i64 %17, !dbg !3153
  %22 = load i64, ptr %21, align 8, !dbg !3153
  %23 = add i64 %22, %.lcssa16, !dbg !3162
  %24 = getelementptr inbounds i64, ptr %arr.data, i64 %20, !dbg !3163
  %25 = load i64, ptr %24, align 8, !dbg !3163
  %26 = sub i64 %23, %25, !dbg !3164
    #dbg_value(i64 %26, !3126, !DIExpression(), !3165)
    #dbg_value(i64 %19, !3123, !DIExpression(), !3166)
  %27 = icmp sgt i64 %26, %19, !dbg !3167
  %spec.select = call i64 @llvm.smax.i64(i64 %26, i64 %19), !dbg !3131
  %spec.select11 = select i1 %27, i64 %17, i64 %18, !dbg !3131
  %28 = add nsw i64 %17, 1, !dbg !3168
    #dbg_value(i64 %28, !3125, !DIExpression(), !3154)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3151)
  %exitcond22.not = icmp eq i64 %28, %n, !dbg !3152
  br i1 %exitcond22.not, label %for.done5, label %for.body2, !dbg !3131

for.done5:                                        ; preds = %lookup.next17, %for.done
  %.lcssa = phi i64 [ %12, %for.done ], [ %spec.select11, %lookup.next17 ], !dbg !3148
    #dbg_value(i64 %.lcssa, !3124, !DIExpression(), !3169)
    #dbg_value(i64 %k, !3120, !DIExpression(), !3170)
  %reass.sub = sub i64 %.lcssa, %k, !dbg !3171
  %29 = add i64 %reass.sub, 1, !dbg !3171
  br label %common.ret, !dbg !3172

lookup.throw:                                     ; preds = %if.done
  call fastcc void @runtime.lookupPanic(), !dbg !3133
  unreachable, !dbg !3133

lookup.throw8:                                    ; preds = %for.body
  call fastcc void @runtime.lookupPanic(), !dbg !3138
  unreachable, !dbg !3138

lookup.throw12:                                   ; preds = %for.body2
  call fastcc void @runtime.lookupPanic(), !dbg !3153
  unreachable, !dbg !3153
}
