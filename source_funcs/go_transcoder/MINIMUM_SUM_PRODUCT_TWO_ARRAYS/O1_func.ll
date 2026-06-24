define i64 @f_gold(ptr nocapture readonly %a.data, i64 %a.len, i64 %a.cap, ptr nocapture readonly %b.data, i64 %b.len, i64 %b.cap, i64 %n, i64 %k) local_unnamed_addr #4 !dbg !3109 {
entry:
    #dbg_value(ptr %a.data, !3118, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3128)
    #dbg_value(i64 %a.len, !3118, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3128)
    #dbg_value(i64 %a.cap, !3118, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3128)
    #dbg_value(ptr %b.data, !3119, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3128)
    #dbg_value(i64 %b.len, !3119, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3128)
    #dbg_value(i64 %b.cap, !3119, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3128)
    #dbg_value(i64 %n, !3120, !DIExpression(), !3128)
    #dbg_value(i64 %k, !3121, !DIExpression(), !3128)
    #dbg_value(i64 0, !3122, !DIExpression(), !3129)
    #dbg_value(i64 0, !3123, !DIExpression(), !3130)
    #dbg_value(i64 0, !3124, !DIExpression(), !3131)
    #dbg_value(i64 0, !3125, !DIExpression(), !3132)
  %0 = icmp sgt i64 %n, 0, !dbg !3133
  br i1 %0, label %for.body.lr.ph, label %for.done, !dbg !3134

for.body.lr.ph:                                   ; preds = %entry
  %1 = shl i64 %k, 1
  %2 = shl i64 %k, 1
  %3 = shl i64 %k, 1
  %4 = shl i64 %k, 1
  %5 = add nsw i64 %n, -1, !dbg !3134
  %umin = call i64 @llvm.umin.i64(i64 %b.len, i64 %5), !dbg !3134
  %6 = freeze i64 %umin, !dbg !3134
  %umin31 = call i64 @llvm.umin.i64(i64 %6, i64 %a.len), !dbg !3134
  %.not.not = icmp ugt i64 %a.len, %6, !dbg !3134
  %.not = icmp eq i64 %b.len, %umin31, !dbg !3134
  br label %for.body, !dbg !3134

for.body:                                         ; preds = %for.body.lr.ph, %if.done
  %7 = phi i64 [ 0, %for.body.lr.ph ], [ %25, %if.done ]
  %8 = phi i64 [ 0, %for.body.lr.ph ], [ %20, %if.done ]
  %9 = phi i64 [ 0, %for.body.lr.ph ], [ %16, %if.done ]
  %10 = phi i64 [ 0, %for.body.lr.ph ], [ %spec.select, %if.done ]
    #dbg_value(i64 %7, !3125, !DIExpression(), !3135)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3136)
    #dbg_value(i64 %7, !3125, !DIExpression(), !3137)
  br i1 %.not.not, label %lookup.next, label %lookup.throw, !dbg !3138

lookup.next:                                      ; preds = %for.body
    #dbg_value({ ptr, i64, i64 } poison, !3119, !DIExpression(), !3139)
    #dbg_value(i64 %7, !3125, !DIExpression(), !3140)
  br i1 %.not, label %lookup.throw13, label %lookup.next14, !dbg !3141

lookup.next14:                                    ; preds = %lookup.next
  %11 = getelementptr inbounds nuw i64, ptr %a.data, i64 %7, !dbg !3138
  %12 = load i64, ptr %11, align 8, !dbg !3138
  %13 = getelementptr inbounds nuw i64, ptr %b.data, i64 %7, !dbg !3141
  %14 = load i64, ptr %13, align 8, !dbg !3141
  %15 = mul i64 %14, %12, !dbg !3142
    #dbg_value(i64 %15, !3126, !DIExpression(), !3143)
    #dbg_value(i64 %9, !3123, !DIExpression(), !3144)
    #dbg_value(i64 %15, !3126, !DIExpression(), !3145)
  %16 = add i64 %15, %9, !dbg !3146
    #dbg_value(i64 %16, !3123, !DIExpression(), !3147)
    #dbg_value(i64 %15, !3126, !DIExpression(), !3148)
    #dbg_value({ ptr, i64, i64 } poison, !3119, !DIExpression(), !3149)
    #dbg_value(i64 %7, !3125, !DIExpression(), !3150)
  %17 = and i64 %15, %14, !dbg !3134
  %or.cond.not = icmp sgt i64 %17, -1, !dbg !3134
  br i1 %or.cond.not, label %if.else, label %lookup.next26, !dbg !3134

lookup.next26:                                    ; preds = %lookup.next14
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3151)
    #dbg_value(i64 %7, !3125, !DIExpression(), !3152)
    #dbg_value(i64 %k, !3121, !DIExpression(), !3153)
    #dbg_value({ ptr, i64, i64 } poison, !3119, !DIExpression(), !3154)
    #dbg_value(i64 %7, !3125, !DIExpression(), !3155)
  %18 = add i64 %12, %1, !dbg !3156
  %19 = mul i64 %18, %14, !dbg !3157
    #dbg_value(i64 %19, !3124, !DIExpression(), !3158)
  br label %if.done, !dbg !3134

if.done:                                          ; preds = %if.else5, %lookup.next62, %lookup.next54, %lookup.next50, %lookup.next38, %lookup.next26
  %20 = phi i64 [ %19, %lookup.next26 ], [ %28, %lookup.next38 ], [ %32, %lookup.next50 ], [ %8, %lookup.next54 ], [ %34, %lookup.next62 ], [ %8, %if.else5 ], !dbg !3131
    #dbg_value(i64 %15, !3126, !DIExpression(), !3159)
    #dbg_value(i64 %20, !3124, !DIExpression(), !3160)
  %21 = sub i64 %15, %20, !dbg !3161
  %22 = sitofp i64 %21 to double, !dbg !3162
    #dbg_value(double %22, !3163, !DIExpression(), !3169)
  %23 = call double @llvm.fabs.f64(double %22), !dbg !3171
  %belowmax = fcmp ole double %23, 0x43DFFFFFFFFFFFFE, !dbg !3172
  %normal = fptosi double %23 to i64, !dbg !3172
    #dbg_value(i64 poison, !3127, !DIExpression(), !3173)
    #dbg_value(i64 %10, !3122, !DIExpression(), !3174)
  %24 = call i64 @llvm.smax.i64(i64 %normal, i64 %10), !dbg !3134
  %spec.select = select i1 %belowmax, i64 %24, i64 9223372036854775807, !dbg !3172
  %25 = add nuw nsw i64 %7, 1, !dbg !3175
    #dbg_value(i64 %25, !3125, !DIExpression(), !3135)
    #dbg_value(i64 %n, !3120, !DIExpression(), !3176)
  %exitcond.not = icmp eq i64 %25, %n, !dbg !3133
  br i1 %exitcond.not, label %for.done.loopexit, label %for.body, !dbg !3134

if.else:                                          ; preds = %lookup.next14
    #dbg_value(i64 %15, !3126, !DIExpression(), !3177)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3178)
    #dbg_value(i64 %7, !3125, !DIExpression(), !3179)
  %26 = and i64 %15, %12, !dbg !3134
  %or.cond22.not = icmp sgt i64 %26, -1, !dbg !3134
  br i1 %or.cond22.not, label %if.else5, label %lookup.next38, !dbg !3134

lookup.next38:                                    ; preds = %if.else
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3180)
    #dbg_value(i64 %7, !3125, !DIExpression(), !3181)
    #dbg_value(i64 %k, !3121, !DIExpression(), !3182)
    #dbg_value({ ptr, i64, i64 } poison, !3119, !DIExpression(), !3183)
    #dbg_value(i64 %7, !3125, !DIExpression(), !3184)
  %27 = sub i64 %12, %2, !dbg !3185
  %28 = mul i64 %27, %14, !dbg !3186
    #dbg_value(i64 %28, !3124, !DIExpression(), !3187)
  br label %if.done, !dbg !3134

if.else5:                                         ; preds = %if.else
    #dbg_value(i64 %15, !3126, !DIExpression(), !3188)
  %29 = icmp sgt i64 %15, 0, !dbg !3189
  br i1 %29, label %lookup.next42, label %if.done, !dbg !3134

lookup.next42:                                    ; preds = %if.else5
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3190)
    #dbg_value(i64 %7, !3125, !DIExpression(), !3191)
  %30 = icmp slt i64 %12, 0, !dbg !3192
  br i1 %30, label %lookup.next50, label %lookup.next54, !dbg !3134

lookup.next50:                                    ; preds = %lookup.next42
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3193)
    #dbg_value(i64 %7, !3125, !DIExpression(), !3194)
    #dbg_value(i64 %k, !3121, !DIExpression(), !3195)
    #dbg_value({ ptr, i64, i64 } poison, !3119, !DIExpression(), !3196)
    #dbg_value(i64 %7, !3125, !DIExpression(), !3197)
  %31 = add i64 %12, %4, !dbg !3198
  %32 = mul i64 %31, %14, !dbg !3199
    #dbg_value(i64 %32, !3124, !DIExpression(), !3200)
  br label %if.done, !dbg !3134

lookup.next54:                                    ; preds = %lookup.next42
    #dbg_value(i64 %15, !3126, !DIExpression(), !3201)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3202)
    #dbg_value(i64 %7, !3125, !DIExpression(), !3203)
  %.not23 = icmp eq i64 %12, 0, !dbg !3204
  br i1 %.not23, label %if.done, label %lookup.next62, !dbg !3134

lookup.next62:                                    ; preds = %lookup.next54
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3205)
    #dbg_value(i64 %7, !3125, !DIExpression(), !3206)
    #dbg_value(i64 %k, !3121, !DIExpression(), !3207)
    #dbg_value({ ptr, i64, i64 } poison, !3119, !DIExpression(), !3208)
    #dbg_value(i64 %7, !3125, !DIExpression(), !3209)
  %33 = sub i64 %12, %3, !dbg !3210
  %34 = mul i64 %33, %14, !dbg !3211
    #dbg_value(i64 %34, !3124, !DIExpression(), !3212)
  br label %if.done, !dbg !3134

for.done.loopexit:                                ; preds = %if.done
  %35 = sub i64 %16, %spec.select, !dbg !3213
  br label %for.done, !dbg !3213

for.done:                                         ; preds = %for.done.loopexit, %entry
  %36 = phi i64 [ 0, %entry ], [ %35, %for.done.loopexit ], !dbg !3213
    #dbg_value(i64 poison, !3123, !DIExpression(), !3214)
    #dbg_value(i64 poison, !3122, !DIExpression(), !3215)
  ret i64 %36, !dbg !3216

lookup.throw:                                     ; preds = %for.body
  call fastcc void @runtime.lookupPanic(), !dbg !3138
  unreachable, !dbg !3138

lookup.throw13:                                   ; preds = %lookup.next
  call fastcc void @runtime.lookupPanic(), !dbg !3141
  unreachable, !dbg !3141
}
