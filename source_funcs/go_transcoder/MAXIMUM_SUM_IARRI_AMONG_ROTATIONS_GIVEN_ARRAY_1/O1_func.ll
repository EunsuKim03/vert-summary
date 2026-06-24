define i64 @f_gold(ptr nocapture readonly %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n) local_unnamed_addr #4 !dbg !3109 {
entry:
    #dbg_value(ptr %arr.data, !3118, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3127)
    #dbg_value(i64 %arr.len, !3118, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3127)
    #dbg_value(i64 %arr.cap, !3118, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3127)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3127)
    #dbg_value(i64 0, !3120, !DIExpression(), !3128)
    #dbg_value(i64 0, !3121, !DIExpression(), !3129)
  %0 = icmp sgt i64 %n, 0, !dbg !3130
  br i1 %0, label %for.body.preheader, label %for.loop1.preheader, !dbg !3131

for.body.preheader:                               ; preds = %entry
  %1 = add nsw i64 %n, -1, !dbg !3132
  %.not.not = icmp ugt i64 %arr.len, %1, !dbg !3132
  br label %for.body, !dbg !3132

for.loop1.preheader:                              ; preds = %lookup.next, %entry
  %.lcssa19 = phi i64 [ 0, %entry ], [ %8, %lookup.next ], !dbg !3128
    #dbg_value(i64 0, !3123, !DIExpression(), !3133)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3134)
  %2 = icmp sgt i64 %n, 0, !dbg !3135
  br i1 %2, label %for.body2.preheader, label %for.loop4.preheader, !dbg !3131

for.body2.preheader:                              ; preds = %for.loop1.preheader
  %3 = add nsw i64 %n, -1, !dbg !3136
  %.not.not29 = icmp ugt i64 %arr.len, %3, !dbg !3136
  br label %for.body2, !dbg !3136

for.body:                                         ; preds = %for.body.preheader, %lookup.next
  %4 = phi i64 [ %9, %lookup.next ], [ 0, %for.body.preheader ]
  %5 = phi i64 [ %8, %lookup.next ], [ 0, %for.body.preheader ]
    #dbg_value(i64 %4, !3121, !DIExpression(), !3137)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3138)
    #dbg_value(i64 %4, !3121, !DIExpression(), !3139)
  br i1 %.not.not, label %lookup.next, label %lookup.throw, !dbg !3132

lookup.next:                                      ; preds = %for.body
  %6 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %4, !dbg !3132
  %7 = load i64, ptr %6, align 8, !dbg !3132
  %8 = add i64 %7, %5, !dbg !3140
    #dbg_value(i64 %8, !3120, !DIExpression(), !3140)
  %9 = add nuw nsw i64 %4, 1, !dbg !3141
    #dbg_value(i64 %9, !3121, !DIExpression(), !3137)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3142)
  %exitcond.not = icmp eq i64 %9, %n, !dbg !3130
  br i1 %exitcond.not, label %for.loop1.preheader, label %for.body, !dbg !3131

for.loop4.preheader:                              ; preds = %lookup.next10, %for.loop1.preheader
  %.lcssa17 = phi i64 [ 0, %for.loop1.preheader ], [ %18, %lookup.next10 ], !dbg !3143
    #dbg_value(i64 1, !3125, !DIExpression(), !3144)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3145)
  %10 = icmp sgt i64 %n, 1, !dbg !3146
  br i1 %10, label %for.body5.lr.ph, label %for.done6, !dbg !3131

for.body5.lr.ph:                                  ; preds = %for.loop4.preheader
  %11 = add nsw i64 %n, -1
  %12 = add nsw i64 %n, -2, !dbg !3131
  %.not.not30 = icmp ugt i64 %arr.len, %12, !dbg !3131
  br label %for.body5, !dbg !3131

for.body2:                                        ; preds = %for.body2.preheader, %lookup.next10
  %13 = phi i64 [ %19, %lookup.next10 ], [ 0, %for.body2.preheader ]
  %14 = phi i64 [ %18, %lookup.next10 ], [ 0, %for.body2.preheader ]
    #dbg_value(i64 %13, !3123, !DIExpression(), !3133)
    #dbg_value(i64 %13, !3123, !DIExpression(), !3147)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3148)
    #dbg_value(i64 %13, !3123, !DIExpression(), !3149)
  br i1 %.not.not29, label %lookup.next10, label %lookup.throw9, !dbg !3136

lookup.next10:                                    ; preds = %for.body2
  %15 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %13, !dbg !3136
  %16 = load i64, ptr %15, align 8, !dbg !3136
  %17 = mul i64 %16, %13, !dbg !3150
  %18 = add i64 %17, %14, !dbg !3151
    #dbg_value(i64 %18, !3122, !DIExpression(), !3151)
  %19 = add nuw nsw i64 %13, 1, !dbg !3152
    #dbg_value(i64 %19, !3123, !DIExpression(), !3133)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3134)
  %exitcond26.not = icmp eq i64 %19, %n, !dbg !3135
  br i1 %exitcond26.not, label %for.loop4.preheader, label %for.body2, !dbg !3131

for.body5:                                        ; preds = %for.body5.lr.ph, %lookup.next18
  %20 = phi i64 [ 1, %for.body5.lr.ph ], [ %29, %lookup.next18 ]
  %21 = phi i64 [ %.lcssa17, %for.body5.lr.ph ], [ %x.y.i, %lookup.next18 ]
  %22 = phi i64 [ %.lcssa17, %for.body5.lr.ph ], [ %28, %lookup.next18 ]
    #dbg_value(i64 %20, !3125, !DIExpression(), !3144)
    #dbg_value(i64 %22, !3122, !DIExpression(), !3153)
    #dbg_value(i64 %.lcssa19, !3120, !DIExpression(), !3154)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3155)
    #dbg_value(i64 %20, !3125, !DIExpression(), !3156)
  br i1 %.not.not30, label %lookup.next18, label %lookup.throw13, !dbg !3157

lookup.next18:                                    ; preds = %for.body5
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3158)
    #dbg_value(i64 %20, !3125, !DIExpression(), !3159)
  %23 = getelementptr i64, ptr %arr.data, i64 %20, !dbg !3157
  %24 = getelementptr i8, ptr %23, i64 -8, !dbg !3157
  %25 = load i64, ptr %24, align 8, !dbg !3157
    #dbg_value(i64 %n, !3119, !DIExpression(), !3160)
  %26 = mul i64 %25, %11, !dbg !3161
  %.neg = sub i64 %22, %.lcssa19, !dbg !3162
  %27 = add i64 %.neg, %25, !dbg !3163
  %28 = add i64 %27, %26, !dbg !3164
    #dbg_value(i64 %28, !3122, !DIExpression(), !3165)
    #dbg_value(i64 %21, !3124, !DIExpression(), !3166)
    #dbg_value(i64 %28, !3126, !DIExpression(), !3167)
    #dbg_value(i64 %21, !3168, !DIExpression(), !3174)
    #dbg_value(i64 %28, !3173, !DIExpression(), !3176)
  %x.y.i = call i64 @llvm.smax.i64(i64 %21, i64 %28), !dbg !3177
    #dbg_value(i64 %x.y.i, !3124, !DIExpression(), !3178)
  %29 = add nuw nsw i64 %20, 1, !dbg !3179
    #dbg_value(i64 %29, !3125, !DIExpression(), !3144)
  %exitcond28.not = icmp eq i64 %29, %n, !dbg !3146
  br i1 %exitcond28.not, label %for.done6, label %for.body5, !dbg !3131

for.done6:                                        ; preds = %lookup.next18, %for.loop4.preheader
  %.lcssa = phi i64 [ %.lcssa17, %for.loop4.preheader ], [ %x.y.i, %lookup.next18 ], !dbg !3180
    #dbg_value(i64 %.lcssa, !3124, !DIExpression(), !3181)
  ret i64 %.lcssa, !dbg !3182

lookup.throw:                                     ; preds = %for.body
  call fastcc void @runtime.lookupPanic(), !dbg !3132
  unreachable, !dbg !3132

lookup.throw9:                                    ; preds = %for.body2
  call fastcc void @runtime.lookupPanic(), !dbg !3136
  unreachable, !dbg !3136

lookup.throw13:                                   ; preds = %for.body5
  call fastcc void @runtime.lookupPanic(), !dbg !3157
  unreachable, !dbg !3157
}
