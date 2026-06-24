define i64 @f_gold(ptr nocapture readonly %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n, i64 %x) local_unnamed_addr #4 !dbg !3113 {
entry:
    #dbg_value(ptr %arr.data, !3122, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3129)
    #dbg_value(i64 %arr.len, !3122, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3129)
    #dbg_value(i64 %arr.cap, !3122, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3129)
    #dbg_value(i64 %n, !3123, !DIExpression(), !3129)
    #dbg_value(i64 %x, !3124, !DIExpression(), !3129)
    #dbg_value(i64 0, !3125, !DIExpression(), !3130)
    #dbg_value(i64 0, !3125, !DIExpression(), !3131)
  %0 = add i64 %n, -1
  %smax = call i64 @llvm.smax.i64(i64 %0, i64 0), !dbg !3132
  %1 = call i64 @llvm.usub.sat.i64(i64 %arr.len, i64 1), !dbg !3132
  br label %for.loop, !dbg !3132

for.loop:                                         ; preds = %lookup.next11, %entry
  %2 = phi i64 [ 0, %entry ], [ %3, %lookup.next11 ], !dbg !3130
    #dbg_value(i64 %2, !3125, !DIExpression(), !3133)
    #dbg_value(i64 %n, !3123, !DIExpression(), !3134)
  %exitcond.not = icmp eq i64 %2, %smax, !dbg !3135
  br i1 %exitcond.not, label %for.done, label %for.body, !dbg !3132

for.body:                                         ; preds = %for.loop
    #dbg_value({ ptr, i64, i64 } poison, !3122, !DIExpression(), !3136)
    #dbg_value(i64 %2, !3125, !DIExpression(), !3137)
  %exitcond62.not = icmp eq i64 %2, %arr.len, !dbg !3138
  br i1 %exitcond62.not, label %lookup.throw, label %lookup.next, !dbg !3138

lookup.next:                                      ; preds = %for.body
    #dbg_value({ ptr, i64, i64 } poison, !3122, !DIExpression(), !3139)
    #dbg_value(i64 %2, !3125, !DIExpression(), !3140)
  %exitcond63.not = icmp eq i64 %2, %1, !dbg !3141
  br i1 %exitcond63.not, label %lookup.throw10, label %lookup.next11, !dbg !3141

lookup.next11:                                    ; preds = %lookup.next
  %3 = add nuw i64 %2, 1, !dbg !3142
  %4 = getelementptr inbounds i64, ptr %arr.data, i64 %2, !dbg !3138
  %5 = load i64, ptr %4, align 8, !dbg !3138
  %6 = getelementptr inbounds i64, ptr %arr.data, i64 %3, !dbg !3141
  %7 = load i64, ptr %6, align 8, !dbg !3141
  %8 = icmp sgt i64 %5, %7, !dbg !3143
  br i1 %8, label %for.done, label %for.loop, !dbg !3132

for.done:                                         ; preds = %lookup.next11, %for.loop
  %.lcssa59 = phi i64 [ %2, %lookup.next11 ], [ %smax, %for.loop ], !dbg !3130
    #dbg_value(i64 %.lcssa59, !3125, !DIExpression(), !3144)
    #dbg_value(i64 %n, !3123, !DIExpression(), !3145)
  %9 = icmp eq i64 %n, 0, !dbg !3146
  br i1 %9, label %divbyzero.throw, label %divbyzero.next, !dbg !3146

divbyzero.next:                                   ; preds = %for.done
  %10 = add i64 %.lcssa59, 1, !dbg !3147
  %11 = icmp eq i64 %n, -1, !dbg !3146
  %12 = icmp eq i64 %10, -9223372036854775808, !dbg !3146
  %13 = and i1 %11, %12, !dbg !3146
  %14 = select i1 %13, i64 1, i64 %n, !dbg !3146
  %15 = srem i64 %10, %14, !dbg !3146
    #dbg_value(i64 %15, !3126, !DIExpression(), !3148)
    #dbg_value(i64 %.lcssa59, !3125, !DIExpression(), !3149)
    #dbg_value(i64 %.lcssa59, !3127, !DIExpression(), !3150)
    #dbg_value(i64 0, !3128, !DIExpression(), !3151)
  %.not5343641 = icmp eq i64 %15, %.lcssa59, !dbg !3152
  br i1 %.not5343641, label %common.ret, label %for.body2.lr.ph.lr.ph.lr.ph, !dbg !3132

for.body2.lr.ph.lr.ph.lr.ph:                      ; preds = %divbyzero.next
  %16 = add i64 %n, -1
  %17 = add i64 %n, -1
  br label %for.body2.lr.ph.lr.ph, !dbg !3132

for.body2.lr.ph.lr.ph:                            ; preds = %for.body2.lr.ph.lr.ph.lr.ph, %divbyzero.next25
  %.ph19.ph44 = phi i64 [ 0, %for.body2.lr.ph.lr.ph.lr.ph ], [ %25, %divbyzero.next25 ]
  %.ph18.ph43 = phi i64 [ %.lcssa59, %for.body2.lr.ph.lr.ph.lr.ph ], [ %30, %divbyzero.next25 ]
  %.ph.ph42 = phi i64 [ %15, %for.body2.lr.ph.lr.ph.lr.ph ], [ %36, %divbyzero.next25 ]
    #dbg_value(i64 %.ph18.ph43, !3127, !DIExpression(), !3153)
    #dbg_value(i64 %.ph.ph42, !3126, !DIExpression(), !3154)
  br label %for.body2.lr.ph, !dbg !3132

for.body2.lr.ph:                                  ; preds = %for.body2.lr.ph.lr.ph, %divbyzero.next35
  %.ph1838 = phi i64 [ %.ph18.ph43, %for.body2.lr.ph.lr.ph ], [ %19, %divbyzero.next35 ]
  %.ph37 = phi i64 [ %.ph.ph42, %for.body2.lr.ph.lr.ph ], [ %42, %divbyzero.next35 ]
    #dbg_value(i64 %.ph1838, !3127, !DIExpression(), !3153)
    #dbg_value(i64 %.ph37, !3126, !DIExpression(), !3154)
  %.not6 = icmp ult i64 %.ph37, %arr.len
  %18 = getelementptr inbounds i64, ptr %arr.data, i64 %.ph37
  br i1 %.not6, label %for.body2, label %lookup.throw14, !dbg !3155

for.body2:                                        ; preds = %for.body2.lr.ph, %divbyzero.next37
  %19 = phi i64 [ %47, %divbyzero.next37 ], [ %.ph1838, %for.body2.lr.ph ]
    #dbg_value(i64 %19, !3127, !DIExpression(), !3153)
    #dbg_value({ ptr, i64, i64 } poison, !3122, !DIExpression(), !3156)
    #dbg_value(i64 %.ph37, !3126, !DIExpression(), !3157)
    #dbg_value({ ptr, i64, i64 } poison, !3122, !DIExpression(), !3158)
    #dbg_value(i64 %19, !3127, !DIExpression(), !3159)
  %.not7 = icmp ult i64 %19, %arr.len, !dbg !3160
  br i1 %.not7, label %lookup.next19, label %lookup.throw18, !dbg !3160

lookup.next19:                                    ; preds = %for.body2
  %20 = load i64, ptr %18, align 8, !dbg !3155
  %21 = getelementptr inbounds i64, ptr %arr.data, i64 %19, !dbg !3160
  %22 = load i64, ptr %21, align 8, !dbg !3160
  %23 = add i64 %22, %20, !dbg !3161
    #dbg_value(i64 %x, !3124, !DIExpression(), !3162)
  %24 = icmp eq i64 %23, %x, !dbg !3163
  br i1 %24, label %if.then, label %lookup.next33, !dbg !3132

if.then:                                          ; preds = %lookup.next19
  %25 = add i64 %.ph19.ph44, 1, !dbg !3164
    #dbg_value(i64 %25, !3128, !DIExpression(), !3164)
    #dbg_value(i64 %.ph37, !3126, !DIExpression(), !3165)
    #dbg_value(i64 %19, !3127, !DIExpression(), !3166)
    #dbg_value(i64 %n, !3123, !DIExpression(), !3167)
    #dbg_value(i64 %n, !3123, !DIExpression(), !3168)
  %26 = add i64 %17, %19, !dbg !3169
  %27 = icmp eq i64 %26, -9223372036854775808, !dbg !3170
  %28 = and i1 %11, %27, !dbg !3170
  %29 = select i1 %28, i64 1, i64 %n, !dbg !3170
  %30 = srem i64 %26, %29, !dbg !3170
  %31 = icmp eq i64 %.ph37, %30, !dbg !3171
  br i1 %31, label %common.ret, label %divbyzero.next25, !dbg !3132

common.ret:                                       ; preds = %if.then, %divbyzero.next25, %divbyzero.next35, %divbyzero.next37, %divbyzero.next
  %common.ret.op = phi i64 [ 0, %divbyzero.next ], [ %.ph19.ph44, %divbyzero.next37 ], [ %.ph19.ph44, %divbyzero.next35 ], [ %25, %divbyzero.next25 ], [ %25, %if.then ]
  ret i64 %common.ret.op, !dbg !3132

divbyzero.next25:                                 ; preds = %if.then
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3126, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mod, DW_OP_stack_value), !3172)
    #dbg_value(i64 poison, !3127, !DIExpression(), !3173)
    #dbg_value(i64 %n, !3123, !DIExpression(), !3174)
  %32 = add i64 %.ph37, 1, !dbg !3175
  %33 = icmp eq i64 %32, -9223372036854775808, !dbg !3176
  %34 = and i1 %11, %33, !dbg !3176
  %35 = select i1 %34, i64 1, i64 %n, !dbg !3176
    #dbg_value(!DIArgList(i64 %32, i64 %35), !3126, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mod, DW_OP_stack_value), !3172)
  %36 = srem i64 %32, %35, !dbg !3176
    #dbg_value(i64 %36, !3126, !DIExpression(), !3154)
    #dbg_value(i64 %30, !3127, !DIExpression(), !3153)
  %.not53436 = icmp eq i64 %36, %30, !dbg !3152
  br i1 %.not53436, label %common.ret, label %for.body2.lr.ph.lr.ph, !dbg !3132

lookup.next33:                                    ; preds = %lookup.next19
    #dbg_value({ ptr, i64, i64 } poison, !3122, !DIExpression(), !3177)
    #dbg_value(i64 %.ph37, !3126, !DIExpression(), !3178)
    #dbg_value({ ptr, i64, i64 } poison, !3122, !DIExpression(), !3179)
    #dbg_value(i64 %19, !3127, !DIExpression(), !3180)
    #dbg_value(i64 %x, !3124, !DIExpression(), !3181)
  %37 = icmp slt i64 %23, %x, !dbg !3182
  br i1 %37, label %divbyzero.next35, label %divbyzero.next37, !dbg !3132

divbyzero.next35:                                 ; preds = %lookup.next33
    #dbg_value(i64 %.ph37, !3126, !DIExpression(), !3183)
    #dbg_value(i64 %n, !3123, !DIExpression(), !3184)
  %38 = add nuw i64 %.ph37, 1, !dbg !3185
  %39 = icmp eq i64 %38, -9223372036854775808, !dbg !3186
  %40 = and i1 %11, %39, !dbg !3186
  %41 = select i1 %40, i64 1, i64 %n, !dbg !3186
  %42 = srem i64 %38, %41, !dbg !3186
    #dbg_value(i64 %42, !3126, !DIExpression(), !3154)
    #dbg_value(i64 %19, !3127, !DIExpression(), !3153)
  %.not534 = icmp eq i64 %42, %19, !dbg !3152
  br i1 %.not534, label %common.ret, label %for.body2.lr.ph, !dbg !3132

divbyzero.next37:                                 ; preds = %lookup.next33
    #dbg_value(i64 %19, !3127, !DIExpression(), !3187)
    #dbg_value(i64 %n, !3123, !DIExpression(), !3188)
  %43 = add i64 %16, %19, !dbg !3189
  %44 = icmp eq i64 %43, -9223372036854775808, !dbg !3190
  %45 = and i1 %11, %44, !dbg !3190
  %46 = select i1 %45, i64 1, i64 %n, !dbg !3190
  %47 = srem i64 %43, %46, !dbg !3190
    #dbg_value(i64 %.ph37, !3126, !DIExpression(), !3154)
    #dbg_value(i64 %47, !3127, !DIExpression(), !3153)
  %.not5 = icmp eq i64 %.ph37, %47, !dbg !3152
  br i1 %.not5, label %common.ret, label %for.body2, !dbg !3132

lookup.throw:                                     ; preds = %for.body
  call fastcc void @runtime.lookupPanic(), !dbg !3138
  unreachable, !dbg !3138

lookup.throw10:                                   ; preds = %lookup.next
  call fastcc void @runtime.lookupPanic(), !dbg !3141
  unreachable, !dbg !3141

divbyzero.throw:                                  ; preds = %for.done
  call fastcc void @runtime.divideByZeroPanic(), !dbg !3146
  unreachable, !dbg !3146

lookup.throw14:                                   ; preds = %for.body2.lr.ph
  call fastcc void @runtime.lookupPanic(), !dbg !3155
  unreachable, !dbg !3155

lookup.throw18:                                   ; preds = %for.body2
  call fastcc void @runtime.lookupPanic(), !dbg !3160
  unreachable, !dbg !3160
}
