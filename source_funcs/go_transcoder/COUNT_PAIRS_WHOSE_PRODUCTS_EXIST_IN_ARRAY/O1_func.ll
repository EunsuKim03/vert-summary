define i64 @f_gold(ptr nocapture readonly %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n) local_unnamed_addr #4 !dbg !3109 {
entry:
    #dbg_value(ptr %arr.data, !3118, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3125)
    #dbg_value(i64 %arr.len, !3118, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3125)
    #dbg_value(i64 %arr.cap, !3118, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3125)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3125)
    #dbg_value(i64 0, !3120, !DIExpression(), !3126)
    #dbg_value(i64 0, !3121, !DIExpression(), !3127)
  %0 = icmp sgt i64 %n, 0, !dbg !3128
  br i1 %0, label %for.loop1.preheader, label %for.done6, !dbg !3129

for.loop1.preheader:                              ; preds = %entry, %for.done5
  %1 = phi i64 [ %20, %for.done5 ], [ 0, %entry ]
  %2 = phi i64 [ %.lcssa, %for.done5 ], [ 0, %entry ]
    #dbg_value(i64 %1, !3121, !DIExpression(), !3130)
  %3 = add nuw nsw i64 %1, 1, !dbg !3131
  %4 = icmp slt i64 %3, %n, !dbg !3132
  br i1 %4, label %for.body2.lr.ph, label %for.done5, !dbg !3129

for.body2.lr.ph:                                  ; preds = %for.loop1.preheader
  %.not = icmp ult i64 %1, %arr.len
  %5 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %1
  br i1 %.not, label %for.body2, label %lookup.throw, !dbg !3133

for.body2:                                        ; preds = %for.body2.lr.ph, %for.done
  %6 = phi i64 [ %19, %for.done ], [ %3, %for.body2.lr.ph ]
  %7 = phi i64 [ %18, %for.done ], [ %2, %for.body2.lr.ph ]
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3134)
    #dbg_value(i64 %1, !3121, !DIExpression(), !3135)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3136)
    #dbg_value(i64 %6, !3122, !DIExpression(), !3137)
  %exitcond19.not = icmp eq i64 %6, %arr.len, !dbg !3138
  br i1 %exitcond19.not, label %lookup.throw9, label %lookup.next10, !dbg !3138

lookup.next10:                                    ; preds = %for.body2
  %8 = load i64, ptr %5, align 8, !dbg !3133
  %9 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %6, !dbg !3138
  %10 = load i64, ptr %9, align 8, !dbg !3138
  %11 = mul i64 %10, %8, !dbg !3139
    #dbg_value(i64 %11, !3123, !DIExpression(), !3140)
    #dbg_value(i64 0, !3124, !DIExpression(), !3141)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3142)
  br label %for.body4, !dbg !3143

for.loop3:                                        ; preds = %lookup.next14
  %12 = add nuw nsw i64 %13, 1, !dbg !3144
    #dbg_value(i64 %12, !3124, !DIExpression(), !3144)
    #dbg_value(i64 poison, !3124, !DIExpression(), !3145)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3142)
  %exitcond18.not = icmp eq i64 %12, %n, !dbg !3146
  br i1 %exitcond18.not, label %for.done, label %for.body4, !dbg !3129

for.body4:                                        ; preds = %lookup.next10, %for.loop3
  %13 = phi i64 [ %12, %for.loop3 ], [ 0, %lookup.next10 ]
    #dbg_value(i64 %13, !3124, !DIExpression(), !3145)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3147)
    #dbg_value(i64 %13, !3124, !DIExpression(), !3148)
  %exitcond.not = icmp eq i64 %13, %arr.len, !dbg !3143
  br i1 %exitcond.not, label %lookup.throw13, label %lookup.next14, !dbg !3143

lookup.next14:                                    ; preds = %for.body4
  %14 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %13, !dbg !3143
  %15 = load i64, ptr %14, align 8, !dbg !3143
    #dbg_value(i64 %11, !3123, !DIExpression(), !3149)
  %16 = icmp eq i64 %15, %11, !dbg !3150
    #dbg_value(i64 %13, !3124, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3144)
  br i1 %16, label %if.then, label %for.loop3, !dbg !3129

if.then:                                          ; preds = %lookup.next14
  %17 = add i64 %7, 1, !dbg !3151
    #dbg_value(i64 %17, !3120, !DIExpression(), !3151)
  br label %for.done, !dbg !3129

for.done:                                         ; preds = %for.loop3, %if.then
  %18 = phi i64 [ %17, %if.then ], [ %7, %for.loop3 ], !dbg !3126
    #dbg_value(i64 %6, !3122, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3152)
  %19 = add nuw nsw i64 %6, 1, !dbg !3131
    #dbg_value(i64 %19, !3122, !DIExpression(), !3153)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3154)
  %exitcond20.not = icmp eq i64 %19, %n, !dbg !3132
  br i1 %exitcond20.not, label %for.done5, label %for.body2, !dbg !3129

for.done5:                                        ; preds = %for.done, %for.loop1.preheader
  %.lcssa = phi i64 [ %2, %for.loop1.preheader ], [ %18, %for.done ], !dbg !3126
  %20 = add nuw nsw i64 %1, 1, !dbg !3155
    #dbg_value(i64 %20, !3121, !DIExpression(), !3130)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3156)
  %exitcond21.not = icmp eq i64 %20, %n, !dbg !3128
  br i1 %exitcond21.not, label %for.done6, label %for.loop1.preheader, !dbg !3129

for.done6:                                        ; preds = %for.done5, %entry
  %.lcssa12 = phi i64 [ 0, %entry ], [ %.lcssa, %for.done5 ], !dbg !3126
    #dbg_value(i64 %.lcssa12, !3120, !DIExpression(), !3157)
  ret i64 %.lcssa12, !dbg !3158

lookup.throw:                                     ; preds = %for.body2.lr.ph
  call fastcc void @runtime.lookupPanic(), !dbg !3133
  unreachable, !dbg !3133

lookup.throw9:                                    ; preds = %for.body2
  call fastcc void @runtime.lookupPanic(), !dbg !3138
  unreachable, !dbg !3138

lookup.throw13:                                   ; preds = %for.body4
  call fastcc void @runtime.lookupPanic(), !dbg !3143
  unreachable, !dbg !3143
}
